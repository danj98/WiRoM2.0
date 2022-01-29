/*
 * generated by Xtext 2.25.0
 */
grammar InternalRobotgenerator;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.gunnarkleiven.robotgenerator.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.gunnarkleiven.robotgenerator.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.gunnarkleiven.robotgenerator.services.RobotgeneratorGrammarAccess;

}

@parser::members {

 	private RobotgeneratorGrammarAccess grammarAccess;

    public InternalRobotgeneratorParser(TokenStream input, RobotgeneratorGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected RobotgeneratorGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getCommandsCommandParserRuleCall_0());
			}
			lv_commands_0_0=ruleCommand
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"commands",
					lv_commands_0_0,
					"org.gunnarkleiven.robotgenerator.Robotgenerator.Command");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleCommand
entryRuleCommand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCommandRule()); }
	iv_ruleCommand=ruleCommand
	{ $current=$iv_ruleCommand.current; }
	EOF;

// Rule Command
ruleCommand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getCommandAccess().getCommandTypeCommandTypeParserRuleCall_0_0());
				}
				lv_commandType_0_0=ruleCommandType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCommandRule());
					}
					set(
						$current,
						"commandType",
						lv_commandType_0_0,
						"org.gunnarkleiven.robotgenerator.Robotgenerator.CommandType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getCommandAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCommandAccess().getRobotTypeRobotTypeEnumRuleCall_2_0());
				}
				lv_robotType_2_0=ruleRobotType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCommandRule());
					}
					set(
						$current,
						"robotType",
						lv_robotType_2_0,
						"org.gunnarkleiven.robotgenerator.Robotgenerator.RobotType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=','
		{
			newLeafNode(otherlv_3, grammarAccess.getCommandAccess().getCommaKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCommandAccess().getRobotNameRobotNameParserRuleCall_4_0());
				}
				lv_robotName_4_0=ruleRobotName
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCommandRule());
					}
					set(
						$current,
						"robotName",
						lv_robotName_4_0,
						"org.gunnarkleiven.robotgenerator.Robotgenerator.RobotName");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_5=','
		{
			newLeafNode(otherlv_5, grammarAccess.getCommandAccess().getCommaKeyword_5());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCommandAccess().getXValuePositionValueParserRuleCall_6_0());
				}
				lv_xValue_6_0=rulePositionValue
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCommandRule());
					}
					set(
						$current,
						"xValue",
						lv_xValue_6_0,
						"org.gunnarkleiven.robotgenerator.Robotgenerator.PositionValue");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_7=','
		{
			newLeafNode(otherlv_7, grammarAccess.getCommandAccess().getCommaKeyword_7());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCommandAccess().getYValuePositionValueParserRuleCall_8_0());
				}
				lv_yValue_8_0=rulePositionValue
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCommandRule());
					}
					set(
						$current,
						"yValue",
						lv_yValue_8_0,
						"org.gunnarkleiven.robotgenerator.Robotgenerator.PositionValue");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_9=')'
		{
			newLeafNode(otherlv_9, grammarAccess.getCommandAccess().getRightParenthesisKeyword_9());
		}
		otherlv_10=';'
		{
			newLeafNode(otherlv_10, grammarAccess.getCommandAccess().getSemicolonKeyword_10());
		}
	)
;

// Entry rule entryRuleRobotName
entryRuleRobotName returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRobotNameRule()); }
	iv_ruleRobotName=ruleRobotName
	{ $current=$iv_ruleRobotName.current; }
	EOF;

// Rule RobotName
ruleRobotName returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getRobotNameAccess().getRobotNameAction_0(),
					$current);
			}
		)
		(
			(
				lv_value_1_0=RULE_STRING
				{
					newLeafNode(lv_value_1_0, grammarAccess.getRobotNameAccess().getValueSTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRobotNameRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_1_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

// Entry rule entryRulePositionValue
entryRulePositionValue returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPositionValueRule()); }
	iv_rulePositionValue=rulePositionValue
	{ $current=$iv_rulePositionValue.current; }
	EOF;

// Rule PositionValue
rulePositionValue returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getPositionValueAccess().getPositionValueAction_0(),
					$current);
			}
		)
		(
			(
				lv_value_1_0=RULE_INT
				{
					newLeafNode(lv_value_1_0, grammarAccess.getPositionValueAccess().getValueINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPositionValueRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
	)
;

// Entry rule entryRuleCommandType
entryRuleCommandType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCommandTypeRule()); }
	iv_ruleCommandType=ruleCommandType
	{ $current=$iv_ruleCommandType.current; }
	EOF;

// Rule CommandType
ruleCommandType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getCommandTypeAccess().getAddRobotAction_0_0(),
						$current);
				}
			)
			(
				(
					lv_value_1_0='addRobot'
					{
						newLeafNode(lv_value_1_0, grammarAccess.getCommandTypeAccess().getValueAddRobotKeyword_0_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getCommandTypeRule());
						}
						setWithLastConsumed($current, "value", lv_value_1_0, "addRobot");
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getCommandTypeAccess().getRemoveRobotAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_value_3_0='removeRobot'
					{
						newLeafNode(lv_value_3_0, grammarAccess.getCommandTypeAccess().getValueRemoveRobotKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getCommandTypeRule());
						}
						setWithLastConsumed($current, "value", lv_value_3_0, "removeRobot");
					}
				)
			)
		)
	)
;

// Rule RobotType
ruleRobotType returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='moose'
			{
				$current = grammarAccess.getRobotTypeAccess().getMOOSEEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getRobotTypeAccess().getMOOSEEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='mavic2pro'
			{
				$current = grammarAccess.getRobotTypeAccess().getMAVIC2PROEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getRobotTypeAccess().getMAVIC2PROEnumLiteralDeclaration_1());
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
