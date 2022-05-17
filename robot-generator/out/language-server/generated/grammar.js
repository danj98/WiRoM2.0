"use strict";
/******************************************************************************
 * This file was generated by langium-cli 0.3.0.
 * DO NOT EDIT MANUALLY!
 ******************************************************************************/
Object.defineProperty(exports, "__esModule", { value: true });
exports.RobotGeneratorGrammar = void 0;
const langium_1 = require("langium");
let loadedRobotGeneratorGrammar;
const RobotGeneratorGrammar = () => loadedRobotGeneratorGrammar || (loadedRobotGeneratorGrammar = (0, langium_1.loadGrammar)(`{
  "$type": "Grammar",
  "usedGrammars": [],
  "hiddenTokens": [],
  "imports": [],
  "rules": [
    {
      "$type": "ParserRule",
      "parameters": [],
      "name": "Model",
      "hiddenTokens": [],
      "entry": true,
      "alternatives": {
        "$type": "Assignment",
        "feature": "dslCommands",
        "operator": "+=",
        "terminal": {
          "$type": "RuleCall",
          "arguments": [],
          "rule": {
            "$refText": "DslCommand"
          }
        },
        "elements": [],
        "cardinality": "*"
      }
    },
    {
      "$type": "ParserRule",
      "parameters": [],
      "name": "RobotType",
      "hiddenTokens": [],
      "alternatives": {
        "$type": "Assignment",
        "feature": "value",
        "operator": "=",
        "terminal": {
          "$type": "Alternatives",
          "elements": [
            {
              "$type": "Keyword",
              "value": "moose",
              "elements": []
            },
            {
              "$type": "Keyword",
              "value": "mavic2pro"
            },
            {
              "$type": "Keyword",
              "value": "op2"
            },
            {
              "$type": "Keyword",
              "value": "bb8"
            },
            {
              "$type": "Keyword",
              "value": "pr2"
            }
          ]
        },
        "elements": []
      }
    },
    {
      "$type": "ParserRule",
      "parameters": [],
      "name": "PositionValue",
      "hiddenTokens": [],
      "alternatives": {
        "$type": "Assignment",
        "feature": "positionValue",
        "operator": "=",
        "terminal": {
          "$type": "RuleCall",
          "arguments": [],
          "rule": {
            "$refText": "INT"
          }
        },
        "elements": []
      }
    },
    {
      "$type": "ParserRule",
      "parameters": [],
      "name": "RobotName",
      "hiddenTokens": [],
      "alternatives": {
        "$type": "Assignment",
        "feature": "name",
        "operator": "=",
        "terminal": {
          "$type": "RuleCall",
          "arguments": [],
          "rule": {
            "$refText": "STRING"
          }
        },
        "elements": []
      }
    },
    {
      "$type": "ParserRule",
      "parameters": [],
      "name": "CommandType",
      "hiddenTokens": [],
      "alternatives": {
        "$type": "Assignment",
        "feature": "value",
        "operator": "=",
        "terminal": {
          "$type": "Alternatives",
          "elements": [
            {
              "$type": "Keyword",
              "value": "addRobot",
              "elements": []
            },
            {
              "$type": "Keyword",
              "value": "removeRobot"
            }
          ]
        },
        "elements": []
      }
    },
    {
      "$type": "ParserRule",
      "parameters": [],
      "name": "DslCommand",
      "hiddenTokens": [],
      "alternatives": {
        "$type": "Group",
        "elements": [
          {
            "$type": "Assignment",
            "feature": "commandType",
            "operator": "=",
            "terminal": {
              "$type": "RuleCall",
              "arguments": [],
              "rule": {
                "$refText": "CommandType"
              }
            },
            "elements": []
          },
          {
            "$type": "Keyword",
            "value": "("
          },
          {
            "$type": "Assignment",
            "feature": "robotType",
            "operator": "=",
            "terminal": {
              "$type": "RuleCall",
              "arguments": [],
              "rule": {
                "$refText": "RobotType"
              }
            }
          },
          {
            "$type": "Keyword",
            "value": ","
          },
          {
            "$type": "Assignment",
            "feature": "robotName",
            "operator": "=",
            "terminal": {
              "$type": "RuleCall",
              "arguments": [],
              "rule": {
                "$refText": "RobotName"
              }
            },
            "cardinality": "?"
          },
          {
            "$type": "Keyword",
            "value": ","
          },
          {
            "$type": "Assignment",
            "feature": "xValue",
            "operator": "=",
            "terminal": {
              "$type": "RuleCall",
              "arguments": [],
              "rule": {
                "$refText": "PositionValue"
              }
            },
            "cardinality": "?"
          },
          {
            "$type": "Keyword",
            "value": ","
          },
          {
            "$type": "Assignment",
            "feature": "yValue",
            "operator": "=",
            "terminal": {
              "$type": "RuleCall",
              "arguments": [],
              "rule": {
                "$refText": "PositionValue"
              }
            },
            "cardinality": "?"
          },
          {
            "$type": "Keyword",
            "value": ")"
          },
          {
            "$type": "Keyword",
            "value": ";"
          }
        ]
      }
    },
    {
      "$type": "TerminalRule",
      "hidden": true,
      "name": "WS",
      "terminal": {
        "$type": "RegexToken",
        "regex": "\\\\s+",
        "elements": []
      }
    },
    {
      "$type": "TerminalRule",
      "name": "ID",
      "terminal": {
        "$type": "RegexToken",
        "regex": "[_a-zA-Z][\\\\w_]*",
        "elements": []
      }
    },
    {
      "$type": "TerminalRule",
      "name": "INT",
      "type": {
        "$type": "ReturnType",
        "name": "number"
      },
      "terminal": {
        "$type": "RegexToken",
        "regex": "[0-9]+",
        "elements": []
      }
    },
    {
      "$type": "TerminalRule",
      "name": "STRING",
      "terminal": {
        "$type": "RegexToken",
        "regex": "\\"[^\\"]*\\"|'[^']*'",
        "elements": []
      }
    },
    {
      "$type": "TerminalRule",
      "hidden": true,
      "name": "ML_COMMENT",
      "terminal": {
        "$type": "RegexToken",
        "regex": "\\\\/\\\\*[\\\\s\\\\S]*?\\\\*\\\\/",
        "elements": []
      }
    },
    {
      "$type": "TerminalRule",
      "hidden": true,
      "name": "SL_COMMENT",
      "terminal": {
        "$type": "RegexToken",
        "regex": "\\\\/\\\\/[^\\\\n\\\\r]*",
        "elements": []
      }
    }
  ],
  "interfaces": [],
  "types": [],
  "isDeclared": true,
  "name": "RobotGenerator"
}`));
exports.RobotGeneratorGrammar = RobotGeneratorGrammar;
//# sourceMappingURL=grammar.js.map