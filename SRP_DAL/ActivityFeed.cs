﻿using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace SRP_DAL {
    public class ActivityFeed {
        private static string conn = GRA.SRP.Core.Utilities.GlobalUtilities.SRPDB;

        private const string query = "SELECT TOP 5" +
            " p.[AvatarID], p.[Username], bl.ListName, bl.[BLID], b.[UserName] as BadgeName, pp.[PPID], pp.[AwardDate], pp.[AwardReasonCd], pp.[BadgeId]" +
            " FROM [PatronPoints] pp" +
            " INNER JOIN [Patron] p ON pp.[PID] = p.[PID]" +
            " LEFT OUTER JOIN [Badge] b on pp.[BadgeId] = b.[BID]" +
            " LEFT OUTER JOIN [BookList] bl on pp.[BookListId] = bl.[BLID]" +
            " WHERE ((pp.[AwardReasonCD] = 1 AND pp.[BadgeId] > 0)" +
            " OR (pp.[AwardReasonCd] = 2)) AND pp.[PPID] > @after" +
            " ORDER BY pp.[PPID] DESC";

        // re issue #35: WHERE [PID] IN (SELECT [PID] FROM [Patron] WHERE [TenId] = 1)

        public DataTable Latest(int after) {
            var parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("after", after));

            return SqlHelper.ExecuteDataTable(conn,
                                              System.Data.CommandType.Text,
                                              query,
                                              parameters.ToArray());
        }
    }
}
