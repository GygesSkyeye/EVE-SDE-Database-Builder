USE [Ascension_1.0]
GO
/****** Object:  Table [dbo].[agtAgents]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agtAgents](
	[agentID] [int] NOT NULL,
	[divisionID] [tinyint] NULL,
	[corporationID] [int] NULL,
	[locationID] [int] NULL,
	[level] [tinyint] NULL,
	[quality] [smallint] NULL,
	[agentTypeID] [int] NULL,
	[isLocator] [bit] NULL,
 CONSTRAINT [agtAgents_PK] PRIMARY KEY CLUSTERED 
(
	[agentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[agtAgentTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[agtAgentTypes](
	[agentTypeID] [int] NOT NULL,
	[agentType] [varchar](50) NULL,
 CONSTRAINT [agtAgentTypes_PK] PRIMARY KEY CLUSTERED 
(
	[agentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[agtResearchAgents]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agtResearchAgents](
	[agentID] [int] NOT NULL,
	[typeID] [int] NOT NULL,
 CONSTRAINT [agtResearchAgents_PK] PRIMARY KEY CLUSTERED 
(
	[agentID] ASC,
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chrAncestries]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chrAncestries](
	[ancestryID] [tinyint] NOT NULL,
	[ancestryName] [nvarchar](100) NULL,
	[bloodlineID] [tinyint] NULL,
	[description] [nvarchar](1000) NULL,
	[perception] [tinyint] NULL,
	[willpower] [tinyint] NULL,
	[charisma] [tinyint] NULL,
	[memory] [tinyint] NULL,
	[intelligence] [tinyint] NULL,
	[iconID] [int] NULL,
	[shortDescription] [nvarchar](500) NULL,
 CONSTRAINT [chrAncestries_PK] PRIMARY KEY CLUSTERED 
(
	[ancestryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chrAttributes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chrAttributes](
	[attributeID] [tinyint] NOT NULL,
	[attributeName] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[iconID] [int] NULL,
	[shortDescription] [nvarchar](500) NULL,
	[notes] [nvarchar](500) NULL,
 CONSTRAINT [chrAttributes_PK] PRIMARY KEY CLUSTERED 
(
	[attributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chrBloodlines]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chrBloodlines](
	[bloodlineID] [tinyint] NOT NULL,
	[bloodlineName] [nvarchar](100) NULL,
	[raceID] [tinyint] NULL,
	[description] [nvarchar](1000) NULL,
	[maleDescription] [nvarchar](1000) NULL,
	[femaleDescription] [nvarchar](1000) NULL,
	[shipTypeID] [int] NULL,
	[corporationID] [int] NULL,
	[perception] [tinyint] NULL,
	[willpower] [tinyint] NULL,
	[charisma] [tinyint] NULL,
	[memory] [tinyint] NULL,
	[intelligence] [tinyint] NULL,
	[iconID] [int] NULL,
	[shortDescription] [nvarchar](500) NULL,
	[shortMaleDescription] [nvarchar](500) NULL,
	[shortFemaleDescription] [nvarchar](500) NULL,
 CONSTRAINT [chrBloodlines_PK] PRIMARY KEY CLUSTERED 
(
	[bloodlineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chrFactions]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chrFactions](
	[factionID] [int] NOT NULL,
	[factionName] [varchar](1000) NULL,
	[description] [varchar](1500) NULL,
	[raceIDs] [int] NULL,
	[solarSystemID] [int] NULL,
	[corporationID] [int] NULL,
	[sizeFactor] [float] NULL,
	[stationCount] [smallint] NULL,
	[stationSystemCount] [smallint] NULL,
	[militiaCorporationID] [int] NULL,
	[iconID] [int] NULL,
 CONSTRAINT [chrFactions_PK] PRIMARY KEY CLUSTERED 
(
	[factionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chrRaces]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chrRaces](
	[raceID] [tinyint] NULL,
	[raceName] [varchar](1000) NULL,
	[description] [varchar](1000) NULL,
	[iconID] [int] NULL,
	[shortDescription] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[crpActivities]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crpActivities](
	[activityID] [tinyint] NOT NULL,
	[activityName] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [crpActivities_PK] PRIMARY KEY CLUSTERED 
(
	[activityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[crpNPCCorporationDivisions]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crpNPCCorporationDivisions](
	[corporationID] [int] NOT NULL,
	[divisionID] [tinyint] NOT NULL,
	[size] [tinyint] NULL,
 CONSTRAINT [crpNPCCorporationDivisions_PK] PRIMARY KEY CLUSTERED 
(
	[corporationID] ASC,
	[divisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[crpNPCCorporationResearchFields]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crpNPCCorporationResearchFields](
	[skillID] [int] NOT NULL,
	[corporationID] [int] NOT NULL,
 CONSTRAINT [crpNPCCorporationResearchFields_PK] PRIMARY KEY CLUSTERED 
(
	[skillID] ASC,
	[corporationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[crpNPCCorporations]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[crpNPCCorporations](
	[corporationID] [int] NOT NULL,
	[size] [char](1) NULL,
	[extent] [char](1) NULL,
	[solarSystemID] [int] NULL,
	[investorID1] [int] NULL,
	[investorShares1] [tinyint] NULL,
	[investorID2] [int] NULL,
	[investorShares2] [tinyint] NULL,
	[investorID3] [int] NULL,
	[investorShares3] [tinyint] NULL,
	[investorID4] [int] NULL,
	[investorShares4] [tinyint] NULL,
	[friendID] [int] NULL,
	[enemyID] [int] NULL,
	[publicShares] [bigint] NULL,
	[initialPrice] [int] NULL,
	[minSecurity] [float] NULL,
	[scattered] [bit] NULL,
	[fringe] [tinyint] NULL,
	[corridor] [tinyint] NULL,
	[hub] [tinyint] NULL,
	[border] [tinyint] NULL,
	[factionID] [int] NULL,
	[sizeFactor] [float] NULL,
	[stationCount] [smallint] NULL,
	[stationSystemCount] [smallint] NULL,
	[description] [nvarchar](4000) NULL,
	[iconID] [int] NULL,
 CONSTRAINT [crpNPCCorporations_PK] PRIMARY KEY CLUSTERED 
(
	[corporationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[crpNPCCorporationTrades]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crpNPCCorporationTrades](
	[corporationID] [int] NOT NULL,
	[typeID] [int] NOT NULL,
 CONSTRAINT [crpNPCCorporationTrades_PK] PRIMARY KEY CLUSTERED 
(
	[corporationID] ASC,
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[crpNPCDivisions]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crpNPCDivisions](
	[divisionID] [tinyint] NOT NULL,
	[divisionName] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[leaderType] [nvarchar](100) NULL,
 CONSTRAINT [crpNPCDivisions_PK] PRIMARY KEY CLUSTERED 
(
	[divisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[crtCertificates]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[crtCertificates](
	[certificateID] [int] NOT NULL,
	[groupID] [int] NULL,
	[name] [varchar](100) NULL,
	[description] [text] NULL,
 CONSTRAINT [crtCertificates_PK] PRIMARY KEY CLUSTERED 
(
	[certificateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[crtCertificateSkills]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[crtCertificateSkills](
	[certificateID] [int] NULL,
	[masteryLevel] [tinyint] NULL,
	[masteryText] [varchar](10) NULL,
	[skillTypeID] [int] NULL,
	[requiredSkillLevel] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[crtMasteries]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crtMasteries](
	[typeID] [int] NULL,
	[masteryLevel] [tinyint] NULL,
	[masteryRecommendedTypeID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[crtRecommendedTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[crtRecommendedTypes](
	[certificateID] [int] NULL,
	[typeID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dgmAttributeCategories]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dgmAttributeCategories](
	[categoryID] [tinyint] NOT NULL,
	[categoryName] [nvarchar](50) NULL,
	[categoryDescription] [nvarchar](200) NULL,
 CONSTRAINT [dgmAttributeCategories_PK] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dgmAttributeTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dgmAttributeTypes](
	[attributeID] [smallint] NOT NULL,
	[attributeName] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[iconID] [int] NULL,
	[defaultValue] [float] NULL,
	[published] [bit] NULL,
	[displayName] [varchar](1000) NULL,
	[unitID] [tinyint] NULL,
	[stackable] [bit] NULL,
	[highIsGood] [bit] NULL,
	[categoryID] [tinyint] NULL,
 CONSTRAINT [dgmAttributeTypes_PK] PRIMARY KEY CLUSTERED 
(
	[attributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dgmEffects]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dgmEffects](
	[effectID] [smallint] NOT NULL,
	[effectName] [varchar](400) NULL,
	[effectCategory] [smallint] NULL,
	[preExpression] [int] NULL,
	[postExpression] [int] NULL,
	[description] [varchar](1000) NULL,
	[guid] [varchar](60) NULL,
	[iconID] [int] NULL,
	[isOffensive] [bit] NULL,
	[isAssistance] [bit] NULL,
	[durationAttributeID] [smallint] NULL,
	[trackingSpeedAttributeID] [smallint] NULL,
	[dischargeAttributeID] [smallint] NULL,
	[rangeAttributeID] [smallint] NULL,
	[falloffAttributeID] [smallint] NULL,
	[disallowAutoRepeat] [bit] NULL,
	[published] [bit] NULL,
	[displayName] [varchar](100) NULL,
	[isWarpSafe] [bit] NULL,
	[rangeChance] [bit] NULL,
	[electronicChance] [bit] NULL,
	[propulsionChance] [bit] NULL,
	[distribution] [tinyint] NULL,
	[sfxName] [varchar](20) NULL,
	[npcUsageChanceAttributeID] [smallint] NULL,
	[npcActivationChanceAttributeID] [smallint] NULL,
	[fittingUsageChanceAttributeID] [smallint] NULL,
	[modifierInfo] [varchar](max) NULL,
 CONSTRAINT [dgmEffects_PK] PRIMARY KEY CLUSTERED 
(
	[effectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dgmExpressions]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dgmExpressions](
	[expressionID] [int] NOT NULL,
	[operandID] [int] NULL,
	[arg1] [int] NULL,
	[arg2] [int] NULL,
	[expressionValue] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[expressionName] [varchar](500) NULL,
	[expressionTypeID] [int] NULL,
	[expressionGroupID] [smallint] NULL,
	[expressionAttributeID] [smallint] NULL,
 CONSTRAINT [dgmExpressions_PK] PRIMARY KEY CLUSTERED 
(
	[expressionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dgmTypeAttributes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dgmTypeAttributes](
	[typeID] [int] NOT NULL,
	[attributeID] [smallint] NOT NULL,
	[valueInt] [int] NULL,
	[valueFloat] [float] NULL,
 CONSTRAINT [dgmTypeAttributes_PK] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC,
	[attributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dgmTypeEffects]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dgmTypeEffects](
	[typeID] [int] NOT NULL,
	[effectID] [smallint] NOT NULL,
	[isDefault] [bit] NULL,
 CONSTRAINT [dgmTypeEffects_PK] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC,
	[effectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eveGraphics]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eveGraphics](
	[graphicID] [int] NOT NULL,
	[graphicFile] [varchar](100) NULL,
	[iconFolder] [varchar](100) NULL,
	[sofFactionName] [varchar](100) NULL,
	[sofHullName] [varchar](100) NULL,
	[sofRaceName] [varchar](100) NULL,
	[description] [text] NULL,
 CONSTRAINT [eveGraphics_PK] PRIMARY KEY CLUSTERED 
(
	[graphicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eveIcons]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eveIcons](
	[iconID] [int] NOT NULL,
	[iconFile] [varchar](500) NULL,
	[description] [text] NULL,
 CONSTRAINT [eveIcons_PK] PRIMARY KEY CLUSTERED 
(
	[iconID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eveUnits]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eveUnits](
	[unitID] [tinyint] NULL,
	[unitName] [varchar](100) NULL,
	[displayName] [varchar](50) NULL,
	[description] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[industryActivities]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[industryActivities](
	[blueprintTypeID] [int] NOT NULL,
	[activityID] [tinyint] NOT NULL,
	[time] [int] NULL,
 CONSTRAINT [industryActivities_PK] PRIMARY KEY CLUSTERED 
(
	[blueprintTypeID] ASC,
	[activityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[industryActivityMaterials]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[industryActivityMaterials](
	[blueprintTypeID] [int] NULL,
	[activityID] [tinyint] NULL,
	[materialTypeID] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[industryActivityProducts]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[industryActivityProducts](
	[blueprintTypeID] [int] NULL,
	[activityID] [tinyint] NULL,
	[productTypeID] [int] NULL,
	[quantity] [int] NULL,
	[probability] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[industryActivitySkills]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[industryActivitySkills](
	[blueprintTypeID] [int] NULL,
	[activityID] [tinyint] NULL,
	[skillID] [int] NULL,
	[level] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[industryBlueprints]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[industryBlueprints](
	[blueprintTypeID] [int] NOT NULL,
	[maxProductionLimit] [int] NULL,
 CONSTRAINT [industryBlueprints_PK] PRIMARY KEY CLUSTERED 
(
	[blueprintTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invCategories]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invCategories](
	[categoryID] [int] NOT NULL,
	[categoryName] [nvarchar](500) NULL,
	[published] [bit] NULL,
	[iconID] [int] NULL,
 CONSTRAINT [invCategories_PK] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invContrabandTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invContrabandTypes](
	[factionID] [int] NOT NULL,
	[typeID] [int] NOT NULL,
	[standingLoss] [float] NULL,
	[confiscateMinSec] [float] NULL,
	[fineByValue] [float] NULL,
	[attackMinSec] [float] NULL,
 CONSTRAINT [invContrabandTypes_PK] PRIMARY KEY CLUSTERED 
(
	[factionID] ASC,
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invControlTowerResourcePurposes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[invControlTowerResourcePurposes](
	[purpose] [tinyint] NOT NULL,
	[purposeText] [varchar](100) NULL,
 CONSTRAINT [invControlTowerResourcePurposes_PK] PRIMARY KEY CLUSTERED 
(
	[purpose] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[invControlTowerResources]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invControlTowerResources](
	[controlTowerTypeID] [int] NOT NULL,
	[resourceTypeID] [int] NOT NULL,
	[purpose] [tinyint] NULL,
	[quantity] [int] NULL,
	[minSecurityLevel] [float] NULL,
	[factionID] [int] NULL,
 CONSTRAINT [invControlTowerResources_PK] PRIMARY KEY CLUSTERED 
(
	[controlTowerTypeID] ASC,
	[resourceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invFlags]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[invFlags](
	[flagID] [smallint] NOT NULL,
	[flagName] [varchar](200) NULL,
	[flagText] [varchar](100) NULL,
	[orderID] [int] NULL,
 CONSTRAINT [invFlags_PK] PRIMARY KEY CLUSTERED 
(
	[flagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[invGroups]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invGroups](
	[groupID] [int] NOT NULL,
	[categoryID] [int] NULL,
	[groupName] [nvarchar](100) NULL,
	[published] [bit] NULL,
	[anchorable] [bit] NULL,
	[anchored] [bit] NULL,
	[fittableNonSingleton] [bit] NULL,
	[useBasePrice] [bit] NULL,
	[iconID] [int] NULL,
 CONSTRAINT [invGroups_PK] PRIMARY KEY CLUSTERED 
(
	[groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invItems]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invItems](
	[itemID] [bigint] NOT NULL,
	[typeID] [int] NULL,
	[ownerID] [int] NULL,
	[locationID] [bigint] NULL,
	[flagID] [smallint] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [invItems_PK] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invMarketGroups]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invMarketGroups](
	[marketGroupID] [int] NOT NULL,
	[parentGroupID] [int] NULL,
	[marketGroupName] [nvarchar](100) NULL,
	[description] [nvarchar](3000) NULL,
	[iconID] [int] NULL,
	[hasTypes] [bit] NULL,
 CONSTRAINT [invMarketGroups_PK] PRIMARY KEY CLUSTERED 
(
	[marketGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invMetaGroups]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invMetaGroups](
	[metaGroupID] [smallint] NOT NULL,
	[metaGroupName] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[iconID] [int] NULL,
 CONSTRAINT [invMetaGroups_PK] PRIMARY KEY CLUSTERED 
(
	[metaGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invMetaTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invMetaTypes](
	[typeID] [int] NOT NULL,
	[parentTypeID] [int] NULL,
	[metaGroupID] [smallint] NULL,
 CONSTRAINT [invMetaTypes_PK] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invNames]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invNames](
	[itemID] [bigint] NOT NULL,
	[itemName] [nvarchar](200) NULL,
 CONSTRAINT [invNames_PK] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invPositions]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invPositions](
	[itemID] [bigint] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[yaw] [real] NULL,
	[pitch] [real] NULL,
	[roll] [real] NULL,
 CONSTRAINT [invPositions_PK] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invTraits]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invTraits](
	[bonusID] [int] NULL,
	[typeID] [int] NULL,
	[skilltypeID] [int] NULL,
	[bonus] [float] NULL,
	[bonusText] [text] NULL,
	[importance] [int] NULL,
	[nameID] [int] NULL,
	[unitID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invTypeMaterials]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invTypeMaterials](
	[typeID] [int] NOT NULL,
	[materialTypeID] [int] NOT NULL,
	[quantity] [int] NULL,
 CONSTRAINT [invTypeMaterials_PK] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC,
	[materialTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invTypeReactions]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invTypeReactions](
	[reactionTypeID] [int] NOT NULL,
	[input] [bit] NOT NULL,
	[typeID] [int] NOT NULL,
	[quantity] [smallint] NULL,
 CONSTRAINT [invTypeReactions_PK] PRIMARY KEY CLUSTERED 
(
	[reactionTypeID] ASC,
	[input] ASC,
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invTypes](
	[typeID] [int] NOT NULL,
	[groupID] [int] NULL,
	[typeName] [nvarchar](100) NULL,
	[description] [text] NULL,
	[mass] [float] NULL,
	[volume] [float] NULL,
	[packagedVolume] [float] NULL,
	[capacity] [float] NULL,
	[portionSize] [int] NULL,
	[factionID] [int] NULL,
	[raceID] [tinyint] NULL,
	[basePrice] [float] NULL,
	[published] [bit] NULL,
	[marketGroupID] [int] NULL,
	[graphicID] [int] NULL,
	[radius] [float] NULL,
	[iconID] [int] NULL,
	[soundID] [int] NULL,
	[sofFactionName] [nvarchar](100) NULL,
	[sofMaterialSetID] [int] NULL,
 CONSTRAINT [invTypes_PK] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[invUniqueNames]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invUniqueNames](
	[itemID] [int] NOT NULL,
	[itemName] [nvarchar](200) NULL,
	[groupID] [int] NULL,
 CONSTRAINT [invUniqueNames_PK] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapCelestialStatistics]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mapCelestialStatistics](
	[celestialID] [int] NOT NULL,
	[temperature] [real] NULL,
	[spectralClass] [varchar](10) NULL,
	[luminosity] [real] NULL,
	[age] [real] NULL,
	[life] [real] NULL,
	[orbitRadius] [real] NULL,
	[eccentricity] [real] NULL,
	[massDust] [real] NULL,
	[massGas] [real] NULL,
	[fragmented] [bit] NULL,
	[density] [real] NULL,
	[surfaceGravity] [real] NULL,
	[escapeVelocity] [real] NULL,
	[orbitPeriod] [real] NULL,
	[rotationRate] [real] NULL,
	[locked] [bit] NULL,
	[pressure] [real] NULL,
	[radius] [real] NULL,
	[heightMap1] [int] NULL,
	[heightMap2] [int] NULL,
	[population] [bit] NULL,
	[shaderPreset] [int] NULL,
 CONSTRAINT [mapCelestialStatistics_PK] PRIMARY KEY CLUSTERED 
(
	[celestialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mapConstellationJumps]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapConstellationJumps](
	[fromRegionID] [int] NULL,
	[fromConstellationID] [int] NOT NULL,
	[toConstellationID] [int] NOT NULL,
	[toRegionID] [int] NULL,
 CONSTRAINT [mapConstellationJumps_PK] PRIMARY KEY CLUSTERED 
(
	[fromConstellationID] ASC,
	[toConstellationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapConstellations]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mapConstellations](
	[constellationID] [int] NOT NULL,
	[constellationName] [varchar](100) NULL,
	[regionID] [int] NULL,
	[x] [real] NULL,
	[y] [real] NULL,
	[z] [real] NULL,
	[x_Min] [real] NULL,
	[x_Max] [real] NULL,
	[y_Min] [real] NULL,
	[y_Max] [real] NULL,
	[z_Min] [real] NULL,
	[z_Max] [real] NULL,
	[radius] [real] NULL,
	[factionID] [int] NULL,
 CONSTRAINT [mapConstellations_PK] PRIMARY KEY CLUSTERED 
(
	[constellationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mapDenormalize]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mapDenormalize](
	[itemID] [int] NOT NULL,
	[typeID] [int] NULL,
	[solarSystemID] [int] NULL,
	[constellationID] [int] NULL,
	[regionID] [int] NULL,
	[orbitID] [int] NULL,
	[x] [real] NULL,
	[y] [real] NULL,
	[z] [real] NULL,
	[radius] [real] NULL,
	[nameID] [int] NULL,
	[itemName] [varchar](100) NULL,
	[security] [real] NULL,
	[celestialIndex] [int] NULL,
	[orbitIndex] [int] NULL,
 CONSTRAINT [mapDenormalize_PK] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mapDisallowedAnchorCategories]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapDisallowedAnchorCategories](
	[solarSystemID] [int] NOT NULL,
	[categoryID] [int] NULL,
 CONSTRAINT [mapDisallowedAnchorCategories_PK] PRIMARY KEY CLUSTERED 
(
	[solarSystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapDisallowedAnchorGroups]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapDisallowedAnchorGroups](
	[solarSystemID] [int] NOT NULL,
	[groupID] [int] NULL,
 CONSTRAINT [mapDisallowedAnchorGroups_PK] PRIMARY KEY CLUSTERED 
(
	[solarSystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapItemEffectBeacons]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapItemEffectBeacons](
	[itemID] [int] NOT NULL,
	[effectBeaconTypeID] [int] NULL,
 CONSTRAINT [mapItemEffectBeacons_PK] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapJumps]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapJumps](
	[stargateID] [int] NOT NULL,
	[destinationID] [int] NULL,
	[x] [real] NULL,
	[y] [real] NULL,
	[z] [real] NULL,
	[typeID] [int] NULL,
 CONSTRAINT [mapJumps_PK] PRIMARY KEY CLUSTERED 
(
	[stargateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapLandmarks]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapLandmarks](
	[landmarkID] [int] NOT NULL,
	[descriptionID] [int] NULL,
	[description] [text] NULL,
	[landmarkNameID] [int] NULL,
	[landmarkName] [nvarchar](100) NULL,
	[locationID] [int] NULL,
	[x] [float] NULL,
	[y] [float] NULL,
	[z] [float] NULL,
	[iconID] [int] NULL,
 CONSTRAINT [mapLandmarks_PK] PRIMARY KEY CLUSTERED 
(
	[landmarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapLocationScenes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapLocationScenes](
	[locationID] [int] NOT NULL,
	[graphicID] [int] NULL,
 CONSTRAINT [mapLocationScenes_PK] PRIMARY KEY CLUSTERED 
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapLocationWormholeClasses]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapLocationWormholeClasses](
	[locationID] [int] NOT NULL,
	[wormholeClassID] [int] NULL,
 CONSTRAINT [mapLocationWormholeClasses_PK] PRIMARY KEY CLUSTERED 
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapRegionJumps]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapRegionJumps](
	[fromRegionID] [int] NOT NULL,
	[toRegionID] [int] NOT NULL,
 CONSTRAINT [mapRegionJumps_PK] PRIMARY KEY CLUSTERED 
(
	[fromRegionID] ASC,
	[toRegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapRegions]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mapRegions](
	[regionID] [int] NOT NULL,
	[regionName] [varchar](100) NULL,
	[x] [real] NULL,
	[y] [real] NULL,
	[z] [real] NULL,
	[x_Min] [real] NULL,
	[x_Max] [real] NULL,
	[y_Min] [real] NULL,
	[y_Max] [real] NULL,
	[z_Min] [real] NULL,
	[z_Max] [real] NULL,
	[factionID] [int] NULL,
	[nameID] [int] NULL,
	[descriptionID] [int] NULL,
 CONSTRAINT [mapRegions_PK] PRIMARY KEY CLUSTERED 
(
	[regionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mapSolarSystemJumps]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mapSolarSystemJumps](
	[fromRegionID] [int] NULL,
	[fromConstellationID] [int] NULL,
	[fromSolarSystemID] [int] NOT NULL,
	[toSolarSystemID] [int] NOT NULL,
	[toConstellationID] [int] NULL,
	[toRegionID] [int] NULL,
 CONSTRAINT [mapSolarSystemJumps_PK] PRIMARY KEY CLUSTERED 
(
	[fromSolarSystemID] ASC,
	[toSolarSystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mapSolarSystems]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mapSolarSystems](
	[solarSystemID] [int] NOT NULL,
	[solarSystemName] [varchar](100) NULL,
	[regionID] [int] NULL,
	[constellationID] [int] NULL,
	[x] [real] NULL,
	[y] [real] NULL,
	[z] [real] NULL,
	[x_Min] [real] NULL,
	[x_Max] [real] NULL,
	[y_Min] [real] NULL,
	[y_Max] [real] NULL,
	[z_Min] [real] NULL,
	[z_Max] [real] NULL,
	[luminosity] [real] NULL,
	[border] [bit] NULL,
	[corridor] [bit] NULL,
	[fringe] [bit] NULL,
	[hub] [bit] NULL,
	[international] [bit] NULL,
	[regional] [bit] NULL,
	[security] [real] NULL,
	[factionID] [int] NULL,
	[radius] [real] NULL,
	[sunTypeID] [int] NULL,
	[securityClass] [varchar](2) NULL,
	[solarSystemNameID] [int] NULL,
	[visualEffect] [varchar](50) NULL,
	[descriptionID] [int] NULL,
 CONSTRAINT [mapSolarSystems_PK] PRIMARY KEY CLUSTERED 
(
	[solarSystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mapUniverse]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mapUniverse](
	[universeID] [int] NOT NULL,
	[universeName] [varchar](100) NULL,
	[x] [float] NULL,
	[y] [float] NULL,
	[z] [float] NULL,
	[x_Min] [float] NULL,
	[x_Max] [float] NULL,
	[y_Min] [float] NULL,
	[y_Max] [float] NULL,
	[z_Min] [float] NULL,
	[z_Max] [float] NULL,
	[radius] [float] NULL,
 CONSTRAINT [mapUniverse_PK] PRIMARY KEY CLUSTERED 
(
	[universeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[planetSchematics]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planetSchematics](
	[schematicID] [smallint] NOT NULL,
	[schematicName] [nvarchar](255) NULL,
	[cycleTime] [int] NULL,
 CONSTRAINT [planetSchematics_PK] PRIMARY KEY CLUSTERED 
(
	[schematicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[planetSchematicsPinMap]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planetSchematicsPinMap](
	[schematicID] [smallint] NOT NULL,
	[pinTypeID] [int] NOT NULL,
 CONSTRAINT [planetSchematicsPinMap_PK] PRIMARY KEY CLUSTERED 
(
	[schematicID] ASC,
	[pinTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[planetSchematicsTypeMap]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planetSchematicsTypeMap](
	[schematicID] [smallint] NOT NULL,
	[typeID] [int] NOT NULL,
	[quantity] [smallint] NULL,
	[isInput] [bit] NULL,
 CONSTRAINT [planetSchematicsTypeMap_PK] PRIMARY KEY CLUSTERED 
(
	[schematicID] ASC,
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ramActivities]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ramActivities](
	[activityID] [tinyint] NOT NULL,
	[activityName] [nvarchar](100) NULL,
	[iconNo] [varchar](5) NULL,
	[description] [nvarchar](1000) NULL,
	[published] [bit] NULL,
 CONSTRAINT [ramActivities_PK] PRIMARY KEY CLUSTERED 
(
	[activityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ramAssemblyLineStations]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ramAssemblyLineStations](
	[stationID] [int] NOT NULL,
	[assemblyLineTypeID] [tinyint] NOT NULL,
	[quantity] [tinyint] NULL,
	[stationTypeID] [int] NULL,
	[ownerID] [int] NULL,
	[solarSystemID] [int] NULL,
	[regionID] [int] NULL,
 CONSTRAINT [ramAssemblyLineStations_PK] PRIMARY KEY CLUSTERED 
(
	[stationID] ASC,
	[assemblyLineTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ramAssemblyLineTypeDetailPerCategory]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ramAssemblyLineTypeDetailPerCategory](
	[assemblyLineTypeID] [tinyint] NOT NULL,
	[categoryID] [int] NOT NULL,
	[timeMultiplier] [float] NULL,
	[materialMultiplier] [float] NULL,
	[costMultiplier] [float] NULL,
 CONSTRAINT [ramAssemblyLineTypeDetailPerCategory_PK] PRIMARY KEY CLUSTERED 
(
	[assemblyLineTypeID] ASC,
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ramAssemblyLineTypeDetailPerGroup]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ramAssemblyLineTypeDetailPerGroup](
	[assemblyLineTypeID] [tinyint] NOT NULL,
	[groupID] [int] NOT NULL,
	[timeMultiplier] [float] NULL,
	[materialMultiplier] [float] NULL,
	[costMultiplier] [float] NULL,
 CONSTRAINT [ramAssemblyLineTypeDetailPerGroup_PK] PRIMARY KEY CLUSTERED 
(
	[assemblyLineTypeID] ASC,
	[groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ramAssemblyLineTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ramAssemblyLineTypes](
	[assemblyLineTypeID] [tinyint] NOT NULL,
	[assemblyLineTypeName] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[baseTimeMultiplier] [float] NULL,
	[baseMaterialMultiplier] [float] NULL,
	[baseCostMultiplier] [float] NULL,
	[volume] [float] NULL,
	[activityID] [tinyint] NULL,
	[minCostPerHour] [float] NULL,
 CONSTRAINT [ramAssemblyLineTypes_PK] PRIMARY KEY CLUSTERED 
(
	[assemblyLineTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ramInstallationTypeContents]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ramInstallationTypeContents](
	[installationTypeID] [int] NOT NULL,
	[assemblyLineTypeID] [tinyint] NOT NULL,
	[quantity] [tinyint] NULL,
 CONSTRAINT [ramInstallationTypeContents_PK] PRIMARY KEY CLUSTERED 
(
	[installationTypeID] ASC,
	[assemblyLineTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[skinLicenses]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skinLicenses](
	[licenseTypeID] [int] NOT NULL,
	[duration] [int] NULL,
	[skinID] [int] NULL,
 CONSTRAINT [skinLicenses_PK] PRIMARY KEY CLUSTERED 
(
	[licenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[skinMaterials]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skinMaterials](
	[skinMaterialID] [int] NOT NULL,
	[displayNameID] [int] NULL,
	[materialSetID] [int] NULL,
 CONSTRAINT [skinMaterials_PK] PRIMARY KEY CLUSTERED 
(
	[skinMaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[skins]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[skins](
	[skinID] [int] NULL,
	[internalName] [varchar](100) NULL,
	[skinMaterialID] [int] NULL,
	[typeID] [int] NULL,
	[allowCCPDevs] [bit] NULL,
	[visibleSerenity] [bit] NULL,
	[visibleTranquility] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[staOperations]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staOperations](
	[activityID] [tinyint] NULL,
	[operationID] [tinyint] NOT NULL,
	[operationName] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
	[fringe] [tinyint] NULL,
	[corridor] [tinyint] NULL,
	[hub] [tinyint] NULL,
	[border] [tinyint] NULL,
	[ratio] [tinyint] NULL,
	[caldariStationTypeID] [int] NULL,
	[minmatarStationTypeID] [int] NULL,
	[amarrStationTypeID] [int] NULL,
	[gallenteStationTypeID] [int] NULL,
	[joveStationTypeID] [int] NULL,
 CONSTRAINT [staOperations_PK] PRIMARY KEY CLUSTERED 
(
	[operationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staOperationServices]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staOperationServices](
	[operationID] [tinyint] NOT NULL,
	[serviceID] [int] NOT NULL,
 CONSTRAINT [staOperationServices_PK] PRIMARY KEY CLUSTERED 
(
	[operationID] ASC,
	[serviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staServices]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staServices](
	[serviceID] [int] NOT NULL,
	[serviceName] [nvarchar](100) NULL,
	[description] [nvarchar](1000) NULL,
 CONSTRAINT [staServices_PK] PRIMARY KEY CLUSTERED 
(
	[serviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staStations]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staStations](
	[stationID] [int] NOT NULL,
	[security] [float] NULL,
	[dockingCostPerVolume] [float] NULL,
	[maxShipVolumeDockable] [float] NULL,
	[officeRentalCost] [int] NULL,
	[operationID] [tinyint] NULL,
	[stationTypeID] [int] NULL,
	[corporationID] [int] NULL,
	[solarSystemID] [int] NULL,
	[constellationID] [int] NULL,
	[regionID] [int] NULL,
	[stationName] [nvarchar](100) NULL,
	[x] [float] NULL,
	[y] [float] NULL,
	[z] [float] NULL,
	[reprocessingEfficiency] [float] NULL,
	[reprocessingStationsTake] [float] NULL,
	[reprocessingHangarFlag] [tinyint] NULL,
 CONSTRAINT [staStations_PK] PRIMARY KEY CLUSTERED 
(
	[stationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staStationTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staStationTypes](
	[stationTypeID] [int] NULL,
	[dockEntryX] [float] NULL,
	[dockEntryY] [float] NULL,
	[dockEntryZ] [float] NULL,
	[dockOrientationX] [float] NULL,
	[dockOrientationY] [float] NULL,
	[dockOrientationZ] [float] NULL,
	[operationID] [tinyint] NULL,
	[officeSlots] [tinyint] NULL,
	[reprocessingEfficiency] [float] NULL,
	[conquerable] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tntTournamentBannedGroups]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tntTournamentBannedGroups](
	[ruleSetID] [varchar](100) NULL,
	[groupID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tntTournamentBannedTypes]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tntTournamentBannedTypes](
	[ruleSetID] [varchar](100) NULL,
	[typeID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tntTournamentGroupPoints]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tntTournamentGroupPoints](
	[ruleSetID] [varchar](100) NULL,
	[groupID] [int] NULL,
	[points] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tntTournaments]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tntTournaments](
	[ruleSetID] [varchar](100) NOT NULL,
	[ruleSetName] [varchar](100) NULL,
	[maximumPointsMatch] [int] NULL,
	[maximumPilotsMatch] [int] NULL,
 CONSTRAINT [tntTournaments_PK] PRIMARY KEY CLUSTERED 
(
	[ruleSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tntTournamentTypePoints]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tntTournamentTypePoints](
	[ruleSetID] [varchar](100) NULL,
	[typeID] [int] NULL,
	[points] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trnTranslationColumns]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trnTranslationColumns](
	[columnName] [nvarchar](128) NULL,
	[masterID] [nvarchar](128) NULL,
	[tableName] [nvarchar](256) NULL,
	[tcGroupID] [smallint] NULL,
	[tcID] [smallint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[trnTranslationLanguages]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trnTranslationLanguages](
	[numericLanguageID] [int] NOT NULL,
	[languageID] [varchar](50) NULL,
	[languageName] [nvarchar](200) NULL,
 CONSTRAINT [trnTranslationLanguages_PK] PRIMARY KEY CLUSTERED 
(
	[numericLanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trnTranslations]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trnTranslations](
	[keyID] [int] NULL,
	[languageID] [varchar](50) NULL,
	[tcID] [smallint] NULL,
	[text] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[warCombatZones]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warCombatZones](
	[combatZoneID] [int] NOT NULL,
	[combatZoneName] [nvarchar](100) NULL,
	[factionID] [int] NULL,
	[centerSystemID] [int] NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [warCombatZones_PK] PRIMARY KEY CLUSTERED 
(
	[combatZoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[warCombatZoneSystems]    Script Date: 11/15/2016 9:17:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warCombatZoneSystems](
	[solarSystemID] [int] NOT NULL,
	[combatZoneID] [int] NULL,
 CONSTRAINT [warCombatZoneSystems_PK] PRIMARY KEY CLUSTERED 
(
	[solarSystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
