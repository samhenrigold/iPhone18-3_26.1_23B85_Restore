@interface GKGameActivityDefinition
+ (void)loadGameActivityDefinitionsWithCompletionHandler:(id)handler;
+ (void)loadGameActivityDefinitionsWithIDs:(id)ds completionHandler:(id)handler;
- (BOOL)supportsUnlimitedPlayers;
- (GKGameActivityDefinition)init;
- (GKGameActivityDefinition)initWithIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier title:(id)title details:(id)details supportPartyCode:(BOOL)code fallbackURL:(id)l maxPlayers:(id)players minPlayers:(id)self0 defaultProperties:(id)self1 imageURL:(id)self2 releaseState:(unint64_t)self3 playStyle:(int64_t)self4 associatedLeaderboardIDs:(id)self5 associatedAchievementDescriptionIDs:(id)self6 language:(id)self7 partyStartURL:(id)self8;
- (NSDictionary)defaultProperties;
- (NSNumber)maxPlayers;
- (NSNumber)minPlayers;
- (NSURL)fallbackURL;
- (void)setMinPlayers:(id)players;
@end

@implementation GKGameActivityDefinition

+ (void)loadGameActivityDefinitionsWithCompletionHandler:(id)handler
{
  v4 = +[_TtC7GameKit31GKGameActivityDefinitionSupport shared];

  [(GKGameActivityDefinitionSupport *)v4 loadGameActivityDefinitionsWithCompletionHandler:handler];
}

+ (void)loadGameActivityDefinitionsWithIDs:(id)ds completionHandler:(id)handler
{
  v6 = +[_TtC7GameKit31GKGameActivityDefinitionSupport shared];

  [(GKGameActivityDefinitionSupport *)v6 loadGameActivityDefinitionsWith:ds completionHandler:handler];
}

- (NSURL)fallbackURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_2186A8A5C(v5);

  v7 = sub_2186B6FAC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2186B6F8C();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (NSNumber)maxPlayers
{
  selfCopy = self;
  internalMaxPlayers = [(GKGameActivityDefinition *)selfCopy internalMaxPlayers];
  if (!internalMaxPlayers || (v4 = internalMaxPlayers, v5 = [(NSNumber *)internalMaxPlayers integerValue], selfCopy, v6 = v4, selfCopy = v4, v5 == -1))
  {

    v6 = 0;
  }

  return v6;
}

- (NSNumber)minPlayers
{
  v3 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMinPlayers:(id)players
{
  v5 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = players;
  playersCopy = players;
}

- (NSDictionary)defaultProperties
{

  v2 = sub_2186B79AC();

  return v2;
}

- (BOOL)supportsUnlimitedPlayers
{
  selfCopy = self;
  v3 = sub_2186A90D0();

  return v3 & 1;
}

- (GKGameActivityDefinition)initWithIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier title:(id)title details:(id)details supportPartyCode:(BOOL)code fallbackURL:(id)l maxPlayers:(id)players minPlayers:(id)self0 defaultProperties:(id)self1 imageURL:(id)self2 releaseState:(unint64_t)self3 playStyle:(int64_t)self4 associatedLeaderboardIDs:(id)self5 associatedAchievementDescriptionIDs:(id)self6 language:(id)self7 partyStartURL:(id)self8
{
  codeCopy = code;
  selfCopy = self;
  v21 = sub_2186B6FAC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v69 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v57 - v25;
  v27 = sub_2186B7A0C();
  v67 = v28;
  v68 = v27;
  if (groupIdentifier)
  {
    v29 = sub_2186B7A0C();
    v65 = v30;
    v66 = v29;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  iDsCopy = iDs;
  v57[1] = ds;
  v31 = sub_2186B7A0C();
  v63 = v32;
  v64 = v31;
  if (details)
  {
    v33 = sub_2186B7A0C();
    v61 = v34;
    v62 = v33;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  stateCopy = state;
  styleCopy = style;
  rLCopy = rL;
  if (l)
  {
    sub_2186B6F9C();
    v35 = *(v22 + 56);
    playersCopy = players;
    minPlayersCopy = minPlayers;
    v38 = rLCopy;
    languageCopy = language;
    uRLCopy = uRL;
    v35(v26, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(v26, 1, 1, v21);
    playersCopy2 = players;
    minPlayersCopy2 = minPlayers;
    v43 = rLCopy;
    languageCopy2 = language;
    uRLCopy2 = uRL;
  }

  v46 = sub_2186B79BC();
  v47 = sub_2186B7AAC();
  v48 = sub_2186B7AAC();
  v49 = sub_2186B7A0C();
  v51 = v50;

  v52 = v69;
  sub_2186B6F9C();

  v56 = v48;
  v53 = rLCopy;
  v54 = sub_2186AE444(v68, v67, v66, v65, v64, v63, v62, v61, codeCopy, v26, players, minPlayers, v46, rLCopy, stateCopy, styleCopy, v47, v56, v49, v51, v52);

  return v54;
}

- (GKGameActivityDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end