import 'package:gsheets/gsheets.dart';

class Gsheets {
  static const _credentials =
      // r'''
      //   {
      //     "type": "service_account",
      //     "project_id": "api-test-365600",
      //     "private_key_id": "0df419a04c2d18fa092a2e9e223cc2ca2667a41c",
      //     "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCMyFsiyMxkrxHV\n/wyJd4jhp0fRFvDs1P6E9fi2zUuFub28WGnJVkNXhXVbDARO7I6BE6g6yrowMxMP\nNi87KgF/gVVHahpXMJQwIdj6wc4SKrbMI/Njf7QAE0MLG/G+2/upYDxnUAVKcxWZ\nnJorMyud1673Nd6sw0G51LOf1Gcl1KN7k9fEslD/KZrjp2lGt0INkPypAGiWNoey\nU2iREQDfgHEMgJ1Ap7x2dE+LupxcIlvFa01xMKplwD6UwW2b1lrjG9+5Iwr9DKuH\nttyz7MuFFoB1cxzsMI78o9QlrF7g5AtOAc8r2FyAYn8UI8IYCLw6kiON8Y5+fHUg\nQx3zJ95RAgMBAAECggEACzotPnRqDHuDvh+1db8RLQHEsfGU7CY+WAcvuxBbPgJm\nlb8tTI+zFidACS9Hpq2p3bReHbYuLAresb9d++dpMCx1yxi0mhB3OPFyFule0EcU\nxen2DpDQH5NprNihKlnr04Gnv4t7qIjOB66cAub1SwS44OEsbXWy56mFW7E6OqOA\nzgLmx/QUS+7OHKrK0gqm7EZUWn7s/0VjdZNl5r/Qmo48PAjmJ0iAoWetqnJBsADz\nJps+N5YW2tmwgHzAI1LhVA9nbrB6opBrRkIlV9r0WaTmWeWRxfqc4keskA6DU1ZP\nYzXfLWOjY4kDTHmOLS5TcbhU8iOjULCg2f3su6VrOwKBgQDCtAsYtvPXJ6eTjFOu\nddrAj/EFI90J6ZeLods72V4F0xepYuDuvywxy+zSeiAFau6100obMpI5K9trC9GO\nS/AT6KJFaCD65IFDr3pS6aFJdr8EK6yQ2E+wksojdD6ZpigjdDKen912UUR+b5FU\n+4db+U1WHRQSLAokuLCKDSZj3wKBgQC5Gp7fGC8SRUULgYEpDlvI+3g2Xxcyxw1N\nqy7y7+T5HrxzNLL+2bbpOpFUjiRqgOfd5263s74Ju1+Uj5xN6G0KnLBwBEJJKCR0\nhah82/Al6uqG85jdKeBivcbXFT+pEpZZwWdttiMsK2yHBfQi3mvwy8xmEUyA70l2\nNk75BD6DzwKBgQCWVscqsjneLDRs7bG/yCi8/2gve921RbVKkBPkRpcfEDv5AuyD\n7QGHAds/OiV3iXYA18Ek9wuJMaAfK+UHZwNdnAeQaDLvB3n4dYqScuui+hnMcpyw\nyxXdVbrXXW7o3S+pEJP1f6NVNLManbMuV3nRPtLEZ3eUAIVkjWdjcXvvKQKBgQCC\nBmUbKY3HM8lwb6QfBusKnzquVtWg4ZpCuMDd/g3FwQV3l8k0pBKMeouj7cU+2xYF\nFpD7kdMoWuqlHMwbHe2ayr5VsWguo3gYMdtM+eITgJUF/w+eK9BnDBAk/dQeG+Rp\nYCYbNxo16LrvjgsUg1EncME/4V7wIyZjV3raCVUwmQKBgQCVWb01S0Zo3HQVm7wK\nGJ2pWykC8A3RuxtOjrcUQDCGOXYc9fdEF1dV4VHTV5PfHyWd8bC2thd6Y9YWBoNA\nUZmJYRuSAKtcX1ppH6sUvCwki+U3lzBxJC1cXvYTPTNTuBEonWRKktCPDjU0bKBL\n5avO6sWgtXymTslCSngCTMxSqg==\n-----END PRIVATE KEY-----\n",
      //     "client_email": "api-test@api-test-365600.iam.gserviceaccount.com",
      //     "client_id": "112878996401063644368",
      //     "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      //     "token_uri": "https://oauth2.googleapis.com/token",
      //     "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
      //     "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/api-test%40api-test-365600.iam.gserviceaccount.com"
      //   }
      // ''';
      {
    "type": "service_account",
    "project_id": "charismatic-tea-372917",
    "private_key_id": "33066c6c4c49506423a06f6e1cc94f7bd75dbc08",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDA1euoKW0ll0Bc\nRNTRkVSewdt4ikdwkuo8RGx5Ko6aUC8t6tBJiP4EPEa0gwHctRZLikegEqQtyUEu\n5fGGDNmHVmZkX5UP7XnJ1Y26El9awSv5RQD+TPW8/cBzDZu9eyU3oxhUkIogUyOC\nBUnwgJN5zN9zRSlJwakQ9asWDxEbszJDyFWsgIGSw6z8aoL4ZU79NZ0X35u6DI4J\nTN3ffB5sJDlVGo9cpPFEqySYsq1koFp4qylDt+OOcsbXPR22JbmCKAcNS/jgRDYZ\nDn3mPFLGERKvtMnHnmS9I6YghirK4tWIUgq9ssWNSJ0858FdeeheSCJ73Rmr1XqP\n+X71Lh8JAgMBAAECggEACEDfrjnfrw0zNv/HMBUNTyIy94zLk/jlx6CSF/mHUvl9\nm3SCZ7NSU/IUgKNe0Ah8JM2NVT+XAVKs1IoI9VjVcqJzDXa91YmvfcEDKOSiair8\na9XVPg0jM2yU8RezA8AijqgPYYcyMkH8shLx4DZQmZT4N2HNa5e7Wbt6EB6i99F3\nmr+Ns0NDyZ5hJA4CHxadJzafvhe0GPMbo+7b6v4CkKFNEaGHnzT9N5WH6u95Sj5w\nU21sJ30Cgp7YilmMGdvkKtIVJv9+j14RCAnXdbZ3aSVdopiMc9EQyytUBIh+Dke9\nxq563HLp6P9SVlEMMk/pp94OhfJlxCeX2ZCWKjw0gQKBgQDoBqE64U1Rymqg6kXI\nCfgaZ7I/cq96hHKuIoprutqUxKgk4qDJwFMwMGr/Xa16DSY09N6tL+jRwraiUWAX\n2YLPoIdFBOVKi509mR76d2ojpNsgqe8ecCvIwkbR6wONuSawccnNP/7iA6FkxOSU\nyPTnDtJwNTSfK2F2tgDFHzRFcQKBgQDUwqjvRt42urvo5Ny0oA24NG1IlroyfX/m\nvhnM90dRAtqRNqRer+K8jgWZL8JIRG1om3WjVGjxhYTpjCcW5DZOHgXh9+oNcSlC\n9oBOcsCO/nV8edhf1OP/KgkqvdCAKKk/bNiYfURUWaBYWn+dE+qWL0TsxuS9cLkC\n7KQlumFHGQKBgFBJAv8RuKRlixHVHoJCWNQiL35e27NkIx54Gzd9t2akyZ3BwWsu\nHlrdVhi4vG8wH5lRZb+9hS0X2ARAbiSygd4AKO5L7F8oAievVRXLvjFJOP2Lb48z\ntyLHfqPiUx92ApopNW/NBhAEu5LXwlRtWLie21gyQNwWsanW/ls3GeoxAoGAXDU9\nJ+5r0gZd+BJwAKw5JfM6xbHlYop3ixYqcmVc+CQne7XVyN+rgZJ/pKNJLS7Sx/pQ\nIogrrzjxoJJIQqiHTJXAcO2T911qx4Wzl8wt3gsz+c2I1AedBHJAZNC88z4sE7vl\npzjrCy+IyaH3GqmOCqbT1VZhviSDWlway+sZy8kCgYEA15p/8epdbXWbR80ytO/R\ne873c/bkysZq+ij5lVtD0vFbzWM2YaVixPVc81TefkSyR365EPubXyYKEbDJDWo2\nfItWvnXCg+tQsNTRNH96EDGrx1q2kZS4K6JuqQi+wquXVYdXS0bvXO7AwvWe4gc5\nOMGn73ToEEs98ax5MeGMhxs=\n-----END PRIVATE KEY-----\n",
    "client_email": "ryan-854@charismatic-tea-372917.iam.gserviceaccount.com",
    "client_id": "113638125781245469189",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/ryan-854%40charismatic-tea-372917.iam.gserviceaccount.com"
  };
  
  static const _spreadsheetId = '1H2-pTjD6l0yXzs99hVKce1u5Tsd9ACok5nXUDXAvp7s';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _matchesSheet;

  static Future init() async {
    final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);
    _matchesSheet = await _getWorkSheet(spreadsheet, title: "Raw Data");
  }
  static Future addRow(List<dynamic> matchData) async {
    if (_matchesSheet == null || matchData.isEmpty) return;
    _matchesSheet!.values.appendRow(matchData);
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }
}