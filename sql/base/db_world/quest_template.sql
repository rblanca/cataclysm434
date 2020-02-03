
DROP TABLE IF EXISTS `quest_template`;

CREATE TABLE IF NOT EXISTS `quest_template` (
  `Id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Method` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `Note` varchar(255) DEFAULT NULL,
  `Status` enum('Untested','Tempfix','Fixed') NOT NULL DEFAULT 'Untested',
  `Level` smallint(3) NOT NULL DEFAULT '1',
  `MinLevel` smallint(6) NOT NULL DEFAULT '0',
  `MaxLevel` smallint(6) NOT NULL DEFAULT '0',
  `ZoneOrSort` smallint(6) NOT NULL DEFAULT '0',
  `Type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SuggestedPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LimitTime` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredClasses` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredRaces` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillPoints` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionId1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionId2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionValue1` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredFactionValue2` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredMaxRepValue` mediumint(8) NOT NULL DEFAULT '0',
  `PrevQuestId` mediumint(8) NOT NULL DEFAULT '0',
  `NextQuestId` mediumint(8) NOT NULL DEFAULT '0',
  `ExclusiveGroup` mediumint(8) NOT NULL DEFAULT '0',
  `NextQuestIdChain` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardXPId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardOrRequiredMoney` int(11) NOT NULL DEFAULT '0',
  `RewardMoneyMaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardSpellCast` int(11) NOT NULL DEFAULT '0',
  `RewardHonor` int(11) NOT NULL DEFAULT '0',
  `RewardHonorMultiplier` float NOT NULL DEFAULT '1',
  `RewardMailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardMailDelay` int(11) unsigned NOT NULL DEFAULT '0',
  `SourceItemId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SourceItemCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SourceSpellId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `SpecialFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinimapTargetMark` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardTitleId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredPlayerKills` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardTalents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardArenaPoints` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardSkillId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardSkillPoints` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardReputationMask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `QuestGiverPortrait` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `QuestTurnInPortrait` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardFactionId1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionId2` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionId3` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionId4` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionId5` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewardFactionValueId1` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId2` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId3` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId4` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId5` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride1` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride2` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride3` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride4` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride5` int(11) NOT NULL DEFAULT '0',
  `PointMapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PointX` float NOT NULL DEFAULT '0',
  `PointY` float NOT NULL DEFAULT '0',
  `PointOption` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` text,
  `Objectives` text,
  `Details` text,
  `EndText` text,
  `OfferRewardText` text,
  `RequestItemsText` text,
  `CompletedText` text,
  `RequiredNpcOrGo1` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGo2` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGo3` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGo4` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredNpcOrGoCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemId6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSpellCast1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSpellCast2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSpellCast3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredSpellCast4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ObjectiveText1` text,
  `ObjectiveText2` text,
  `ObjectiveText3` text,
  `ObjectiveText4` text,
  `RewardCurrencyId1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyId2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyId3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyId4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyId1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyId2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyId3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyId4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `QuestGiverTextWindow` text,
  `QuestGiverTargetName` text,
  `QuestTurnTextWindow` text,
  `QuestTurnTargetName` text,
  `SoundAccept` smallint(5) unsigned NOT NULL DEFAULT '890',
  `SoundTurnIn` smallint(5) unsigned NOT NULL DEFAULT '878',
  `DetailsEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteOnIncomplete` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EmoteOnComplete` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `StartScript` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `CompleteScript` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `WDBVerified` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest System';
