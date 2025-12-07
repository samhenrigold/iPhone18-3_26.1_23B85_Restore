@interface GKGameActivity
+ (BOOL)isValidPartyCode:(id)code;
+ (NSArray)validPartyCodeAlphabet;
+ (id)startWithDefinition:(id)definition error:(id *)error;
+ (id)startWithDefinition:(id)definition partyCode:(id)code error:(id *)error;
+ (void)checkPendingGameActivityExistenceWithCompletionHandler:(id)handler;
+ (void)createFromGameActivityInstance:(id)instance completionHandler:(id)handler;
- (GKGameActivity)init;
- (GKGameActivity)initWithIdentifier:(id)identifier activityDefinition:(id)definition properties:(id)properties state:(unint64_t)state partyCode:(id)code creationDate:(id)date startDate:(id)startDate lastResumeDate:(id)self0 endDate:(id)self1 duration:(double)self2 achievements:(id)self3 leaderboardScores:(id)self4 creator:(id)self5 initiatedByApple:(BOOL)self6 referralLeaderboard:(id)self7 referralAchievement:(id)self8 participants:(id)self9 participantStates:(id)states shortGroupID:(id)d consumptionState:(id)consumptionState support:(id)support error:(id *)error;
- (NSDate)creationDate;
- (NSDictionary)participantStates;
- (NSDictionary)properties;
- (NSSet)participants;
- (NSString)partyCode;
- (NSString)shortGroupID;
- (NSURL)partyURL;
- (OS_dispatch_source_timer)gsTimer;
- (double)duration;
- (double)getProgressOnAchievement:(id)achievement;
- (id)fallbackPartyURL;
- (id)getScoreOnLeaderboard:(id)leaderboard;
- (id)makeMatchRequest;
- (unint64_t)state;
- (void)end;
- (void)findMatchWithCompletionHandler:(id)handler;
- (void)findPlayersForHostedMatchWithCompletionHandler:(id)handler;
- (void)markAsProcessed;
- (void)pause;
- (void)removeAchievements:(id)achievements;
- (void)removeScoresFromLeaderboards:(id)leaderboards;
- (void)resume;
- (void)setGsTimer:(id)timer;
- (void)setLastUpdateTime:(id)time;
- (void)setProgressOnAchievement:(id)achievement toPercentComplete:(double)complete;
- (void)setProperties:(id)properties;
- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score;
- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score context:(int64_t)context;
- (void)setupUpdateSubscription;
- (void)start;
@end

@implementation GKGameActivity

+ (void)checkPendingGameActivityExistenceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2186B7B7C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2186B9398;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B93A0;
  v12[5] = v11;
  sub_2186A12F8(0, 0, v7, &unk_2186B93A8, v12);
}

- (OS_dispatch_source_timer)gsTimer
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setGsTimer:(id)timer
{
  *(self + OBJC_IVAR___GKGameActivity_gsTimer) = timer;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSDictionary)properties
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_2186B70BC();
  os_unfair_lock_unlock((v2 + v3));

  v5 = sub_2186B79AC();

  return v5;
}

- (void)setProperties:(id)properties
{
  sub_2186B79BC();
  v4 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v5 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v4 + v5));
  sub_2186A8744();
  os_unfair_lock_unlock((v4 + v5));
}

- (unint64_t)state
{
  v3 = sub_2186B709C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v8 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v7 + v8));
  sub_2186B71FC();
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == *MEMORY[0x277D0CA40])
  {
    v11 = 1;
  }

  else if (v10 == *MEMORY[0x277D0CA48])
  {
    v11 = 2;
  }

  else if (v10 == *MEMORY[0x277D0CA38])
  {
    v11 = 4;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v11 = 0;
  }

  os_unfair_lock_unlock((v7 + v8));

  return v11;
}

- (NSString)partyCode
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_2186A86EC(v8);
  os_unfair_lock_unlock((v2 + v3));
  v5 = v8[1];

  if (v5)
  {
    v6 = sub_2186B79FC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSURL)partyURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  selfCopy = self;
  v7 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy2 = self;
  os_unfair_lock_lock((v6 + v7));
  sub_2186A86D4(v5);
  os_unfair_lock_unlock((v6 + v7));

  v9 = sub_2186B6FAC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2186B6F8C();
    (*(v10 + 8))(v5, v9);
    v12 = v13;
  }

  return v12;
}

- (NSDate)creationDate
{
  v3 = sub_2186B701C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v8 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v7 + v8));
  sub_2186B70DC();
  os_unfair_lock_unlock((v7 + v8));

  v10 = sub_2186B6FEC();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (double)duration
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_2186B725C();
  sub_2186B7EDC();
  v6 = v5;
  os_unfair_lock_unlock((v2 + v3));

  return v6;
}

+ (NSArray)validPartyCodeAlphabet
{
  sub_2186B765C();
  v2 = sub_2186B7A9C();

  return v2;
}

- (NSSet)participants
{

  v2 = sub_2186B7B8C();

  return v2;
}

- (NSDictionary)participantStates
{

  v2 = sub_2186B79AC();

  return v2;
}

- (NSString)shortGroupID
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_2186B711C();
  os_unfair_lock_unlock((v2 + v3));

  v5 = sub_2186B79FC();

  return v5;
}

- (GKGameActivity)initWithIdentifier:(id)identifier activityDefinition:(id)definition properties:(id)properties state:(unint64_t)state partyCode:(id)code creationDate:(id)date startDate:(id)startDate lastResumeDate:(id)self0 endDate:(id)self1 duration:(double)self2 achievements:(id)self3 leaderboardScores:(id)self4 creator:(id)self5 initiatedByApple:(BOOL)self6 referralLeaderboard:(id)self7 referralAchievement:(id)self8 participants:(id)self9 participantStates:(id)states shortGroupID:(id)d consumptionState:(id)consumptionState support:(id)support error:(id *)error
{
  stateCopy = state;
  selfCopy = self;
  definitionCopy = definition;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v105 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v94 - v30;
  MEMORY[0x28223BE20](v29);
  v117 = &v94 - v31;
  v32 = sub_2186B701C();
  v108 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v109 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v94 - v35;
  v37 = sub_2186B7A0C();
  v102 = v38;
  v103 = v37;
  v101 = sub_2186B79BC();
  if (code)
  {
    v100 = sub_2186B7A0C();
    v99 = v39;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  dCopy = d;
  consumptionStateCopy = consumptionState;
  participantsCopy = participants;
  statesCopy = states;
  achievementsCopy = achievements;
  scoresCopy = scores;
  sub_2186B6FFC();
  v40 = v117;
  v104 = v36;
  if (startDate)
  {
    v41 = v109;
    sub_2186B6FFC();
    v42 = v108;
    (*(v108 + 32))(v40, v41, v32);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v108;
  }

  supportCopy = support;
  v44 = *(v42 + 56);
  v44(v40, v43, 1, v32);
  creatorCopy = creator;
  if (resumeDate)
  {
    v45 = v109;
    sub_2186B6FFC();
    v95 = *(v42 + 32);
    v46 = definitionCopy;
    endDateCopy = endDate;
    v48 = achievementsCopy;
    v49 = scoresCopy;
    creatorCopy2 = creator;
    leaderboardCopy = leaderboard;
    achievementCopy3 = achievement;
    achievementCopy2 = achievement;
    v54 = participantsCopy;
    v55 = statesCopy;
    v56 = dCopy;
    v57 = consumptionStateCopy;
    v58 = supportCopy;
    v59 = v118;
    v95(v118, v45, v32);
    v44(v59, 0, 1, v32);
  }

  else
  {
    v44(v118, 1, 1, v32);
    v60 = definitionCopy;
    endDateCopy2 = endDate;
    v62 = achievementsCopy;
    v63 = scoresCopy;
    creatorCopy3 = creator;
    leaderboardCopy2 = leaderboard;
    achievementCopy3 = achievement;
    achievementCopy4 = achievement;
    v67 = participantsCopy;
    v68 = statesCopy;
    v69 = dCopy;
    v70 = consumptionStateCopy;
    v71 = supportCopy;
  }

  v72 = v105;
  LODWORD(v105) = apple;
  leaderboardCopy3 = leaderboard;
  v96 = achievementCopy3;
  if (endDate)
  {
    v73 = v109;
    sub_2186B6FFC();

    (*(v108 + 32))(v72, v73, v32);
    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  v44(v72, v74, 1, v32);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v75 = MEMORY[0x277D85378];
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v76 = achievementsCopy;
  v77 = sub_2186B7B9C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, v75);
  v78 = scoresCopy;
  v79 = sub_2186B7B9C();

  v80 = participantsCopy;
  v81 = sub_2186B7B9C();

  v82 = statesCopy;
  v83 = v72;
  v84 = sub_2186B79BC();

  v85 = dCopy;
  v86 = sub_2186B7A0C();
  v88 = v87;

  v89 = consumptionStateCopy;
  v90 = sub_2186B7A0C();
  v92 = v91;

  return sub_218688454(v103, v102, definitionCopy, v101, stateCopy, v100, v99, v104, duration, v117, v118, v83, v77, v79, creatorCopy, v105, leaderboardCopy3, v96, v81, v84, v86, v88, v90, v92, supportCopy);
}

- (void)setLastUpdateTime:(id)time
{
  v4 = *(self + OBJC_IVAR___GKGameActivity_lastUpdateTime);
  *(self + OBJC_IVAR___GKGameActivity_lastUpdateTime) = time;
  timeCopy = time;
}

- (void)setupUpdateSubscription
{
  selfCopy = self;
  sub_21868B22C();
}

+ (id)startWithDefinition:(id)definition partyCode:(id)code error:(id *)error
{
  sub_2186B7A0C();
  v6 = qword_2811ED5E0;
  definitionCopy = definition;
  v8 = definitionCopy;
  if (v6 != -1)
  {
    definitionCopy = swift_once();
  }

  v9 = MEMORY[0x28223BE20](definitionCopy);
  type metadata accessor for GKGameActivity(v9);
  sub_2186832AC(sub_2186A8670);

  return v11;
}

+ (id)startWithDefinition:(id)definition error:(id *)error
{
  v4 = qword_2811ED5E0;
  definitionCopy = definition;
  v6 = definitionCopy;
  if (v4 != -1)
  {
    definitionCopy = swift_once();
  }

  v7 = MEMORY[0x28223BE20](definitionCopy);
  type metadata accessor for GKGameActivity(v7);
  sub_2186832AC(sub_2186A8670);

  return v9;
}

+ (BOOL)isValidPartyCode:(id)code
{
  sub_2186B7A0C();
  valid = _sSo14GKGameActivityC7GameKitE16isValidPartyCodeySbSSFZ_0();

  return valid & 1;
}

- (void)start
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_2186A86BC();
  os_unfair_lock_unlock((v2 + v3));
}

- (void)pause
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  sub_2186A86A4(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

- (void)resume
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_2186A868C();
  os_unfair_lock_unlock((v2 + v3));
}

- (void)end
{
  selfCopy = self;
  GKGameActivity.end()();
}

- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score context:(int64_t)context
{
  leaderboardCopy = leaderboard;
  selfCopy = self;
  GKGameActivity.setScore(on:to:context:)(leaderboardCopy, score, context);
}

- (void)setScoreOnLeaderboard:(id)leaderboard toScore:(int64_t)score
{
  leaderboardCopy = leaderboard;
  selfCopy = self;
  GKGameActivity.setScore(on:to:)(leaderboardCopy, score);
}

- (id)getScoreOnLeaderboard:(id)leaderboard
{
  leaderboardCopy = leaderboard;
  selfCopy = self;
  v6 = GKGameActivity.score(on:)(leaderboardCopy);

  return v6;
}

- (void)removeScoresFromLeaderboards:(id)leaderboards
{
  sub_2186804FC(0, &qword_27CC06FD8, &off_278236540);
  v4 = sub_2186B7AAC();
  selfCopy = self;
  GKGameActivity.removeScores(from:)(v4);
}

- (void)setProgressOnAchievement:(id)achievement toPercentComplete:(double)complete
{
  achievementCopy = achievement;
  selfCopy = self;
  GKGameActivity.setProgress(on:to:)(achievementCopy, complete);
}

- (double)getProgressOnAchievement:(id)achievement
{
  achievementCopy = achievement;
  selfCopy = self;
  v6 = GKGameActivity.progress(on:)(achievementCopy);

  return v6;
}

- (void)removeAchievements:(id)achievements
{
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_2186B7AAC();
  v4 = *(self + OBJC_IVAR___GKGameActivity__achievements);
  selfCopy = self;
  os_unfair_lock_lock((v4 + 24));
  sub_2186A875C((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
}

- (id)makeMatchRequest
{
  selfCopy = self;
  v3 = sub_2186921A0();

  return v3;
}

- (void)findMatchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2186B7B7C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2186B92F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B92F8;
  v12[5] = v11;
  selfCopy = self;
  sub_2186A12F8(0, 0, v7, &unk_2186B9300, v12);
}

- (void)findPlayersForHostedMatchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2186B7B7C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2186B92B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2186B92B8;
  v12[5] = v11;
  selfCopy = self;
  sub_2186A12F8(0, 0, v7, &unk_2186B92C0, v12);
}

- (GKGameActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)createFromGameActivityInstance:(id)instance completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = instance;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2186B7B7C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2186B9278;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2186B9280;
  v14[5] = v13;
  swift_unknownObjectRetain();
  sub_2186A12F8(0, 0, v9, &unk_2186B9288, v14);
}

- (void)markAsProcessed
{
  v2 = *(self + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_2186A79D4();
  os_unfair_lock_unlock((v2 + v3));
}

- (id)fallbackPartyURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_21869ADCC(v5);

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

@end