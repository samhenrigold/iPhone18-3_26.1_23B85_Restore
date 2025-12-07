uint64_t CoachingEventType.init(type:intensity:range:shouldShowPlus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v13 = a1 == 0x52656E696C636E69 && a2 == 0xEA00000000006E75;
  if (v13 || (sub_22766D190() & 1) != 0)
  {

    if (a7)
    {
      return 0;
    }
  }

  else
  {
    if (a1 == 0x57656E696C636E69 && a2 == 0xEB000000006B6C61 || (sub_22766D190() & 1) != 0)
    {

      if ((a7 & 1) == 0)
      {
        return a5;
      }

      return 0;
    }

    if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079 || (sub_22766D190() & 1) != 0)
    {

      if (a4)
      {
        return a3;
      }

      return 0;
    }

    if (a1 == 7172210 && a2 == 0xE300000000000000 || (sub_22766D190() & 1) != 0)
    {

      if ((a7 & 1) != 0 || a8 == 2)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 7172211 && a2 == 0xE300000000000000)
      {

        if ((a7 & 1) == 0)
        {
          return a5;
        }

        return 0;
      }

      v17 = sub_22766D190();

      if (v17 & 1) == 0 || (a7)
      {
        return 0;
      }
    }
  }

  return a5;
}

uint64_t CoachingEventType.rawValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  v4 = 0x52656E696C636E69;
  v5 = 0x7469736E65746E69;
  v6 = 7172210;
  if (v3 != 3)
  {
    v6 = 7172211;
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  if (a3 >> 5)
  {
    v4 = 0x57656E696C636E69;
  }

  if ((a3 >> 5) <= 1u)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

double sub_2274BEB48(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

id sub_2274BEBCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScriptConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2274BEC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  (*(a3 + 24))(&v15, a2, a3);
  PersistenceEntityName.rawValue.getter();
  v8 = sub_22766BFD0();

  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCastUnknownClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274BEDC0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanTemplate();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F1DD6C(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2274BEF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  (*(a3 + 24))(&v13, a2, a3);
  PersistenceEntityName.rawValue.getter();
  v7 = sub_22766BFD0();

  v8 = [v6 entityForName:v7 inManagedObjectContext:a1];

  if (v8)
  {
    v9 = [v8 relationshipsByName];

    sub_2274CBD54();
    v10 = sub_22766BEB0();

    return v10;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];

    return sub_2271480A0(v12);
  }
}

void *sub_2274BF03C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F5C16C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF17C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F5D3A8(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF2D8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCoachingEvent();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_226F5EA8C(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274BF408(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitWorkout();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F79544(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF54C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedAchievementEnvironmentCache();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F94E58(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF690(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogPreview();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F9789C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274BF7D0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogFilterPropertyType();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274BF93C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedPlaylist();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FADA50(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFAC4(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedAchievementNotificationRecord();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FC0170(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFC04(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetBundle();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FC3278(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFD44(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSocialMediaHandle();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FC4998(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFE84(uint64_t a1)
{
  v3 = *v1;
  v4 = objc_opt_self();
  v5 = sub_22766BFD0();
  v6 = [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitActivityType();
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
    if (v3 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v3;
    }

    [v7 setValue_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void sub_2274BFFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x22AA99A00]();
  sub_2274C45CC(a1, a2, a3, a4, &v10, &v11);
  objc_autoreleasePoolPop(v9);

  if (!v4)
  {
    sub_22766C3D0();
    swift_getWitnessTable();
    sub_22766C740();
  }
}

void *sub_2274C00BC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedPlaylistItem();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227000224(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C01FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCommentaryEvent();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2270654E0(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C032C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedModalityIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C0480(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTipReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22706E864(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C05C4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedContributorIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C0718(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedProgramCompletion();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227070680(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C0858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedPrivacyAcknowledgement();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C09C4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C0B18(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_2274C0C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C0DD8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedContributor();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2270A7BF0(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C0F1C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSessionScores();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227105770(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C105C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedPlaybackVoucher();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_227106070(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C118C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTipJournal();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22711A154(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C12EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedConfiguration();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C1474(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogWorkoutMetadata();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2271515C4(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C15B8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanScheduledItem();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227159074(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C16FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedScoreSummary();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_22717DDCC(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C182C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetResumableLoad();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2271E10FC(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C195C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedLanguageDisclaimer();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2271E3C64(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C1AC0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedSkillLevelIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C1C14(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedArchivedSession();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272187F4(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C1D74(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C1EC8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSkillLevel();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272B897C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2008(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedOnboardingModalityIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C215C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedBodyFocusIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C22B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedEquipmentIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C2420(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogModalityMetadata();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272C4068(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2564(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetLoadFailure();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2272CD478(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C2694(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedOnboardingSurveyResult();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272D6D20(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C27D8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerEvent();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2272F2A5C(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C292C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedBookmark();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22732D7B8(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2274C2A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_opt_self();
  v7 = sub_22766BFD0();
  v8 = [v6 entityForName:v7 inManagedObjectContext:a1];

  if (v8)
  {
    v9 = [v8 relationshipsByName];

    sub_2274CBD54();
    v10 = sub_22766BEB0();

    return v10;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];

    return sub_2271480A0(v12);
  }
}

void *sub_2274C2B88(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogModalityReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227335928(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2CE8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogThemeCategory();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227338AA4(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2E2C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetEntry();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_227339B04(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2274C2F5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogModalityFeature();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C3100(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedEngagementBadge();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22736D340(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3240(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2273944F8(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C338C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetRequestKeyMetadata();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_22739B3A4(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C34BC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C3610(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    sub_2273A7390(v10, v5, v4, v6);
    if (v2)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C3788(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetRequestReference();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2273F9784(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C38B8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogWorkoutReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2273F99AC(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C39FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogWorkoutTrait();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C3B84(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedUpNextQueueItem();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227445B48(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3CC4(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedBurnBarDisplayPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227446784(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3E04(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedProgressDisplayPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227447310(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3F44(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSyncEncryptionKey();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22745B470(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4084(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanModalityPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22747F688(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C41C8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedMediaMoment();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274B3C0C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4324(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTipCategoryIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C4478(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedThemeIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C45CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v15[2] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  swift_getAssociatedTypeWitness();
  v10 = sub_22766C3D0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  WitnessTable = swift_getWitnessTable();
  result = sub_2274F47D0(sub_2274CC580, v14, v10, a2, v11, WitnessTable, MEMORY[0x277D84950], v15);
  if (v6)
  {
    *a5 = v15[0];
  }

  else
  {
    *a6 = result;
  }

  return result;
}

void *sub_2274C46F8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSyncOperation();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274CF66C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4838(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedPersonalizationPrivacyPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274EBA10(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4978(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedMusicGenreIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_2274C4ACC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedRecommendation();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274F8D04(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4C0C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedRecentSearchTerm();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274F9870(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4D68(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerMetadata();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22750A3AC(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4EAC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22750B934(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C5024(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAlternativeActivityType();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C5190(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogProgramReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227535488(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C52D4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogAccessibilityFeature();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C545C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedArchivedWorkoutPlanSession();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275A45E0(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C55A0(uint64_t a1)
{
  v3 = *v1;
  v4 = objc_opt_self();
  v5 = sub_22766BFD0();
  v6 = [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:a1];

  type metadata accessor for ManagedUserAccountNotification();
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
    [v7 setShownState_];
  }

  else
  {

    v9 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51000], v9);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C56FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetBundleLoadFailure();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2275BC7B0(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C582C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedMusicTrack();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275D53A4(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C596C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitMindfulSession();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275D7AC0(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5AAC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogSyncAnchor();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275E18B0(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5C08(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedMetricsDisplayPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275E59B4(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5D48(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlan();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275EEB10(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5E8C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22764CD64(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2274C5FD0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C60CC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C61C8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C62C4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C63C0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C64BC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C65B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C66B4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C67B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C68AC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C69A8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6AA4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6BA0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6C9C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6D98(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6E94(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6F90(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C708C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7188(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7284(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7380(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C747C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7578(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7674(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7770(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C786C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7968(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7A64(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7B60(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7C5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7D58(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7E54(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7F50(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C804C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8148(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8244(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8340(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C843C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8538(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8634(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8730(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C882C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8928(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8A24(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8B20(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8C1C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8D18(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8E14(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8F10(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C900C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9108(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9204(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9300(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C93FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C94F8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C95F4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C96F0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C97EC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C98E8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C99E4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9AE0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9BDC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9CD8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9DD4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9ED0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9FCC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA0C8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA1C4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA2C0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA3BC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA4B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA5B4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA6B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA7AC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA8A8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA9A4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAAA0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAB9C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAC98(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAD94(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAE90(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAF8C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB088(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB184(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB280(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB37C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB478(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB574(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB670(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB76C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB868(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB964(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBA60(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBB5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBC58(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBD54()
{
  result = qword_281398A78;
  if (!qword_281398A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A78);
  }

  return result;
}

unint64_t sub_2274CBDA0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBE9C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBF98(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC094(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC190(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC28C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC388(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC484(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

uint64_t sub_2274CC580(id *a1, void *a2)
{
  result = (*(*(v2 + 24) + 48))(*a1, *(v2 + 16), *(v2 + 24));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_2274CC600(BOOL *a2@<X8>)
{
  v3 = sub_22766D030();

  *a2 = v3 != 0;
}

unint64_t sub_2274CC654()
{
  v0 = sub_22714BCB0(MEMORY[0x277D84F90]);
  sub_227664EC0();
  sub_22714F81C();
  sub_22766D270();
  v1 = sub_22766C750();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_22736C1E8(v1, isUniquelyReferenced_nonNull_native);
  v3 = sub_22722CFA0(v0);

  if (v3[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v4 = sub_22766D010();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v7 = v4;

  sub_22722D490(v5, 1, &v7);

  return v7;
}

uint64_t type metadata accessor for CreateScaffoldFailureAnalyticsEvent(uint64_t a1)
{
  result = qword_27D7BE070;
  if (!qword_27D7BE070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2274CC814()
{
  result = qword_27D7BE080;
  if (!qword_27D7BE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE080);
  }

  return result;
}

void sub_2274CC8D8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = a1;
  v7(a2, a3);
  v15[5] = v8;
  v9 = swift_readAtKeyPath();
  v12 = *v10;
  v11 = v10[1];

  v9(v15, 0);

  if (v11)
  {
    v15[0] = v12;
    v15[1] = v11;
    sub_227663AE0();
  }

  else
  {
    v13 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();
  }
}

uint64_t sub_2274CCA90(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_2274CCAE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = a1;
  v5(v4, a3);
  sub_227663AD0();
  swift_setAtReferenceWritableKeyPath();

  return result;
}

uint64_t getEnumTagSinglePayload for AssetDeviceScreen(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetDeviceScreen(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_2274CCC00(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_2276694E0();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = [a1 action];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  sub_22766C000();

  v15 = sub_2276640E0();
  if (v15 == 2)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v17 = [a1 zoneName];
  if (!v17)
  {
    goto LABEL_10;
  }

  v25 = v16;
  v18 = v17;
  sub_22766C000();

  sub_2276694B0();
  v19 = v27;
  if ((*(v27 + 48))(v5, 1, v6) == 1)
  {
    sub_226E97D1C(v5, &qword_27D7B8460, qword_2276709E0);
LABEL_10:
    v22 = sub_227664DD0();
    sub_2274CF5B4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51028], v22);
    swift_willThrow();

    return;
  }

  (*(v19 + 32))(v12, v5, v6);
  v20 = [a1 syncIdentifier];
  if (!v20)
  {
    (*(v19 + 8))(v12, v6);
    goto LABEL_10;
  }

  v21 = v20;
  v24 = sub_22766C000();

  [a1 domain];
  if (sub_2276633B0() == 2)
  {
    (*(v19 + 8))(v12, v6);

    goto LABEL_10;
  }

  [a1 timestamp];
  (*(v19 + 16))(v8, v12, v6);
  sub_227664100();

  (*(v19 + 8))(v12, v6);
}

void *static SyncOperation.representativeSamples()()
{
  v29 = sub_2276694E0();
  v0 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE088, &qword_227688528);
  v31 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = v21 - v2;
  v26 = sub_227664140();
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766C090();
  v5 = sub_22766C330();

  sub_226F5D274();
  v6 = sub_22766BE70();
  v7 = sub_2276694D0();
  v8 = *(v7 + 16);
  v22 = v0;
  if (v8)
  {
    v9 = sub_226EB734C(v8, 0, &qword_27D7BAED8, &qword_227679968, MEMORY[0x277D53DA0]);
    sub_226EB7470(v48, &v9[(*(v0 + 80) + 32) & ~*(v0 + 80)], v8, v7, MEMORY[0x277D53DA0]);
    v11 = v10;
    sub_226EBB21C(v48[0]);
    if (v11 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:
  v46 = &unk_283A954C8;
  v47 = &unk_283A954A0;
  v48[0] = &v47;
  v48[1] = &v46;
  v44 = v6;
  v45 = v5;
  v48[2] = &v45;
  v48[3] = &v44;
  v43 = v9;
  v48[4] = &v43;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE090, &qword_227688530);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE098, &qword_227688538);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v33 = sub_226F5BF60(&qword_27D7BE0A0, &qword_27D7BE090, &qword_227688530);
  v34 = sub_226F5BF60(&qword_27D7BE0A8, &qword_27D7BE098, &qword_227688538);
  v35 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v36 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v37 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_226F1F0F0(0, v13, 0);
    v15 = 0;
    v16 = v32;
    v23 = v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v22 += 2;
    v21[1] = v30 + 32;
    v24 = v12;
    v21[0] = v13;
    v17 = v25;
    while (v15 < *(v12 + 16))
    {
      sub_226E93170(v23 + *(v31 + 72) * v15, v17, &qword_27D7BE088, &qword_227688528);
      v18 = v4;
      (*v22)(v28, v17 + *(v27 + 96), v29);

      sub_227664100();
      sub_226E97D1C(v17, &qword_27D7BE088, &qword_227688528);
      v32 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226F1F0F0((v19 > 1), v20 + 1, 1);
        v16 = v32;
      }

      ++v15;
      *(v16 + 16) = v20 + 1;
      result = (*(v30 + 32))(v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v20, v18, v26);
      v4 = v18;
      v12 = v24;
      if (v21[0] == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_2274CD6BC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2274CD894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_2274CD91C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE98, &qword_227679910);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2274CDA60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_2274CDBA4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB0, &qword_2276795A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_2274CDC28(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2274CDDB0(uint64_t a1)
{
  result = sub_2274CF5B4(&qword_28139B9B0, MEMORY[0x277D506C0], &protocol conformance descriptor for SyncOperation);
  *(a1 + 8) = result;
  return result;
}

void *sub_2274CDE20(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CDF90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_2274CE12C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_2274CE3EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CE540(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2274CE694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(v3 + 1);
  v8 = *(v3 + 2);
  v9 = *(v3 + 24);
  v10 = v3[1];
  v35 = *v3;
  v36 = v10;
  v37 = v3[2];
  LOBYTE(v38) = *(v3 + 48);
  v34 = v9;
  if (!a2)
  {
LABEL_23:
    v12 = 0;
    v16 = result;
    v15 = v8;
LABEL_28:
    v28 = v34;
    v29 = v36;
    *a1 = v35;
    *(a1 + 16) = v29;
    *(a1 + 32) = v37;
    *(a1 + 48) = v38;
    *(a1 + 56) = v16;
    *(a1 + 64) = v15;
    *(a1 + 72) = v28;
    sub_22732CD14(result, v8, v9);
    return v12;
  }

  if (!a3)
  {
    v16 = result;
    v15 = v8;
    v12 = 0;
    goto LABEL_28;
  }

  v11 = *v3;
  v39 = v3[2];
  v40 = *(v3 + 48);
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v8;
    v32 = result;
    v14 = 1;
    v31 = v8;
    v15 = v8;
    v16 = result;
    v30 = v9;
    v17 = v9;
    while (1)
    {
      if (v17 & 1) != 0 || (v40)
      {
        goto LABEL_34;
      }

      if (DWORD2(v39) != v15)
      {
        break;
      }

      if (v16 == v39)
      {
        v34 = 0;
LABEL_27:
        v8 = v31;
        result = v32;
        v9 = v30;
        goto LABEL_28;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v18 = 1 << *(v11 + 32);
      if (v16 >= v18)
      {
        goto LABEL_30;
      }

      v19 = v16 >> 6;
      v20 = *(v11 + 64 + 8 * (v16 >> 6));
      if (((v20 >> v16) & 1) == 0)
      {
        goto LABEL_31;
      }

      if (*(v11 + 36) != v15)
      {
        goto LABEL_32;
      }

      v21 = v20 & (-2 << (v16 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (v11 + 72 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            v18 = __clz(__rbit64(v25)) + v22;
            break;
          }
        }
      }

      *a2 = v16;
      *(a2 + 8) = v15;
      *(a2 + 16) = 0;
      if (v14 == a3)
      {
        v34 = 0;
        sub_226E93170(&v39, v33, &qword_27D7BE0B0, qword_227688588);
        v16 = v18;
        v15 = v13;
        v12 = a3;
        goto LABEL_27;
      }

      a2 += 24;
      result = sub_226E93170(&v39, v33, &qword_27D7BE0B0, qword_227688588);
      v17 = 0;
      v15 = v13;
      v16 = v18;
      v12 = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_2274CE900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v35 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v35;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v35 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v38 = -1 << *(a4 + 32);
    v39 = a1;
    v15 = 0;
    a1 = ((63 - v12) >> 6);
    v16 = 1;
    v40 = a3;
    while (v14)
    {
      v46 = a2;
LABEL_15:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v45 = v15;
      v20 = v19 | (v15 << 6);
      v21 = *(a4 + 56);
      v22 = a4;
      v23 = *(a4 + 48) + 24 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = sub_227668240();
      v28 = *(v27 - 8);
      v29 = v21 + *(v28 + 72) * v20;
      v30 = v43;
      (*(v28 + 16))(&v43[*(v44 + 48)], v29, v27);
      *v30 = v24;
      *(v30 + 1) = v25;
      v30[16] = v26;
      v31 = v30;
      v32 = v42;
      sub_2274CF5FC(v31, v42);
      v33 = v46;
      sub_2274CF5FC(v32, v46);
      if (v16 == v40)
      {
        sub_226EB396C(v24, v25, v26);
        v12 = v38;
        a1 = v39;
        a4 = v22;
        v35 = v45;
        goto LABEL_25;
      }

      a2 = v33 + *(v41 + 72);
      sub_226EB396C(v24, v25, v26);
      v34 = __OFADD__(v16++, 1);
      a4 = v22;
      v15 = v45;
      if (v34)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v17 = v15;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= a1)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v46 = a2;
        v15 = v18;
        goto LABEL_15;
      }
    }

    v14 = 0;
    if (a1 <= v15 + 1)
    {
      v36 = (v15 + 1);
    }

    else
    {
      v36 = a1;
    }

    v35 = v36 - 1;
    v12 = v38;
    a1 = v39;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_2274CEBD4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_226EB396C(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_226EB396C(v19, v20, v21);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CED34(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2274CEE68(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_2274CF04C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_2274CF2F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      v24 = v21;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        sub_226F5E0B4(v24, *(&v24 + 1));
        goto LABEL_24;
      }

      v11 += 32;

      sub_226F5E0B4(v24, *(&v24 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CF49C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2274CF5B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2274CF5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2274CF66C(void *a1)
{
  v2 = sub_2276694E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664110();
  sub_2276640F0();
  v6 = sub_22766BFD0();

  [a1 setAction_];

  sub_2276640D0();
  sub_2276694C0();
  (*(v3 + 8))(v5, v2);
  v7 = sub_22766BFD0();

  [a1 setZoneName_];

  sub_2276640C0();
  v8 = sub_22766BFD0();

  [a1 setSyncIdentifier_];

  sub_227664130();
  [a1 setTimestamp_];
  sub_227664120();
  return [a1 setDomain_];
}

uint64_t sub_2274CF840@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CE0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2274CF8C0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227664C40();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2274CF8E8(uint64_t a1)
{
  *(a1 + 24) = sub_2274CF950(&qword_2813A5778, &unk_227672878);
  result = sub_2274CF950(&qword_2813A5770, MEMORY[0x277D50EA0]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2274CF950(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227664CA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2274CF994(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22766CD20();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_226E9BF4C(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      v3 = sub_22766CCD0();
    }

    else
    {
      v3 = sub_22766CC90();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_2274DD7F0(v34, v35, v36, v1, &qword_28139D238, 0x277CBE4E0);
        v13 = v12;
        v14 = sub_22706FA40();

        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_226E9BF4C((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE0B8, &unk_2276886F0);
          v6 = sub_22766C6A0();
          sub_22766CD70();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_226EB526C(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_226EB526C(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_226EB526C(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

int64_t sub_2274CFCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_2274CFDA4(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2274CFEB4(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

void sub_2274CFFC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227665F20();
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v46 = &v39 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  if (v19)
  {
    v39 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v13[9];
    v27 = *(a1 + 48) + v26 * v21;
    v28 = v13[2];
    v40 = v13;
    v41 = v28;
    v42 = v13 + 2;
    v43 = v26;
    (v28)(v11, v27, v4, v14);
    v30 = v40 + 4;
    v29 = v40[4];
    v29(v46, v11, v4);
    v45 = a1;

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v31 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v31 >= v23)
      {

        v37 = v39;
        v29(v39, v46, v4);
        (v40[7])(v37, 0, 1, v4);
        return;
      }

      v22 = *(v16 + 8 * v31);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v33 = v44;
          v41(v44, *(v45 + 48) + (v32 | (v31 << 6)) * v43, v4);
          v29(v8, v33, v4);
          sub_226E9946C(&qword_27D7BC1D0, MEMORY[0x277D51FE0], MEMORY[0x277D51FF0]);
          v34 = v46;
          v35 = sub_22766BF80();
          v36 = *(v30 - 3);
          if (v35)
          {
            v36(v34, v4);
            v29(v34, v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v36(v8, v4);
            v20 = v31;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v39 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v38 = v13[7];

    v38(a2, 1, 1, v4, v14);
  }
}

uint64_t sub_2274D03A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 4;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 33);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (sub_227669C10())
      {
        v2 = v5;
      }

      else
      {
        v2 = v2;
      }

      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_2274D0410()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 112) persistentStoreCoordinator];
  v2 = [v1 persistentStores];
  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v5 = 0;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    v21 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v21)
      {
        v13 = MEMORY[0x22AA991A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_14;
        }

        v13 = *(v3 + 8 * v5 + 32);
      }

      v14 = v13;
      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v22[0] = 0;
      if ([v1 removePersistentStore:v13 error:v22])
      {
        v16 = v22[0];
      }

      else
      {
        v7 = i;
        v8 = v3;
        v9 = v1;
        v10 = v22[0];
        v11 = sub_2276622C0();

        v1 = v9;
        v3 = v8;
        i = v7;
        swift_willThrow();

        v12 = v11;
        v6 = v20;
      }

      ++v5;
      if (v15 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v17 = OBJC_IVAR____TtC15SeymourServices24PersistenceStoreDelegate_lock;
  v18 = sub_22766A9D0();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2274D0678()
{
  sub_2274D0410();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2274D06AC(uint64_t a1)
{
  result = sub_22766A9D0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2274D0774()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2274D07E0()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

id sub_2274D0868(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12[1] = *MEMORY[0x277D85DE8];
  result = a1(a3, a4, a5, a6);
  if (!v8)
  {
    v12[0] = 0;
    if ([a8 save_])
    {
      return v12[0];
    }

    else
    {
      v11 = v12[0];
      sub_2276622C0();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2274D094C(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 80) = a1;
  v3 = sub_22766B390();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274D0A10, v1, 0);
}

uint64_t sub_2274D0A10()
{
  sub_226E9D1B4();
  if (sub_227669C10())
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    v2 = type metadata accessor for PersistenceStoreDelegate(0);
    v3 = sub_226E9946C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate, &unk_227688670);
    *v1 = v0;
    v1[1] = sub_2274D0B64;
    v4 = v0[5];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v3, &unk_227678448, v4, v2, v5, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

void sub_2274D0B64()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_2274D0C98, v3, 0);
  }
}

uint64_t sub_2274D0C98()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 216);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_22766CD20();

    if (v3)
    {
      goto LABEL_8;
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_8;
  }

  sub_22766A770();
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "Ending Monitoring", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[5];
  v9 = v0[6];

  (*(v8 + 8))(v7, v9);
  __swift_project_boxed_opaque_existential_0((v10 + 120), *(v10 + 144));
  sub_22766AC50();
LABEL_8:

  v11 = v0[1];

  return v11();
}

uint64_t sub_2274D0E1C()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_2274D0F2C, v1, 0);
}

uint64_t sub_2274D0F2C()
{
  v32 = v0;
  v1 = [*(v0 + 176) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    v5 = sub_22766CD20();

    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      *(v0 + 200) = *(*(v0 + 112) + 160);

      return MEMORY[0x2822009F8](sub_2274D1370, 0, 0);
    }
  }

  sub_22766A770();
  v6 = sub_22766B380();
  v7 = sub_22766C890();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v6, v7, "Aborting monitor startup due to no loaded stores.", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);

  v9(v10, v11);
  v12 = sub_227664DD0();
  sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  v13 = swift_allocError();
  (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D51020], v12);
  swift_willThrow();
  v15 = v13;
  sub_22766A770();
  v16 = v13;
  v17 = sub_22766B380();
  v18 = sub_22766C890();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 184);
  v21 = *(v0 + 136);
  v22 = *(v0 + 120);
  if (v19)
  {
    v30 = *(v0 + 136);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v25 = MEMORY[0x22AA995D0](*(v0 + 88), *(v0 + 96));
    v27 = sub_226E97AE8(v25, v26, &v31);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_226E8E000, v17, v18, "Got error while executing monitor transaction: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v23, -1, -1);

    v20(v30, v22);
  }

  else
  {

    v20(v21, v22);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2274D1370()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  v0[26] = v2;
  if (v2)
  {
    v0[27] = 0;
    sub_226E91B50(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
    v9 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[28] = v5;
    *v5 = v0;
    v5[1] = sub_2274D1548;
    v6 = v0[14];

    return v9(&unk_2276886E8, v6, v3, v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2274D1548()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_2274D164C, 0, 0);
}

uint64_t sub_2274D164C()
{
  v1 = v0[27] + 1;
  if (v1 == v0[26])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[27] = v1;
    sub_226E91B50(v0[25] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v4);
    v8 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[28] = v6;
    *v6 = v0;
    v6[1] = sub_2274D1548;
    v7 = v0[14];

    return v8(&unk_2276886E8, v7, v4, v5);
  }
}

uint64_t sub_2274D1830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2274D1854, a3, 0);
}

uint64_t sub_2274D1854()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(v2 + 112);
  v5 = sub_226E9D1B4();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = swift_allocObject();
  v0[6] = v7;
  *(v7 + 16) = sub_2274DD634;
  *(v7 + 24) = v6;

  v8 = [v4 newBackgroundContext];
  v0[7] = v8;
  [v8 setMergePolicy_];
  *(swift_task_alloc() + 16) = v8;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v9 = v8;
  sub_22766C9C0();

  v10 = v0[2];
  v0[8] = v10;
  v11 = *(v2 + 160);
  v0[9] = v11;
  v12 = swift_allocObject();
  v0[10] = v12;
  *(v12 + 16) = sub_2274DD650;
  *(v12 + 24) = v7;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v5;
  *(v12 + 56) = v11;
  *(v12 + 64) = v10;
  *(v12 + 72) = v9;
  v13 = v9;
  v14 = v10;
  v15 = v13;
  v16 = v14;
  swift_bridgeObjectRetain_n();
  v17 = v15;
  v18 = v16;

  return MEMORY[0x2822009F8](sub_2274D1A5C, 0, 0);
}

uint64_t sub_2274D1A5C()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v2[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v2[2].i64[0] = sub_2274DD678;
  v2[2].i64[1] = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_2274D1B68;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22708FE24, v2, v4);
}

uint64_t sub_2274D1B68()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2274D1D24;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 40);

    v3 = sub_2274D1C98;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2274D1C98()
{
  v1 = v0[8];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2274D1D24()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2274D1D98, v1, 0);
}

uint64_t sub_2274D1D98()
{
  v1 = v0[8];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2274D1E20(void *a1, void *a2, char a3, uint64_t a4, void (*a5)(void *, __n128))
{
  v14[3] = &type metadata for PersistenceHandle;
  v14[4] = &off_283A9AF78;
  v10 = swift_allocObject();
  v14[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = a1;
  v12 = a2;

  (a5)(v14);
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_2274D1EE0(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 184) = a1;
  v3 = sub_227669890();
  *(v2 + 136) = v3;
  *(v2 + 144) = *(v3 - 8);
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274D1FA4, v1, 0);
}

uint64_t sub_2274D1FA4(uint64_t a1)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  v5 = *(v1 + 128);
  v4 = *(v1 + 136);
  v6 = *(v1 + 184);
  sub_22766A830();
  sub_226E9DD3C("PersistenceStoreDelegate.loadStoresCurrentDataProtection", 56, 2, &dword_226E8E000, 1, (v1 + 16));
  (*(v3 + 8))(v2, v4);
  v7 = swift_allocObject();
  *(v1 + 160) = v7;
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v5;

  sub_2274D8030(v6, sub_2274DE68C, v9);

  swift_beginAccess();
  v10 = *(v5 + 216);
  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = sub_22766CD20();

    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v10 + 16))
  {
LABEL_3:
    __swift_project_boxed_opaque_existential_0((*(v1 + 128) + 120), *(*(v1 + 128) + 144));
    sub_22766AC60();
  }

LABEL_4:
  swift_beginAccess();
  if (*v8 == 1)
  {
    v12 = swift_task_alloc();
    *(v1 + 168) = v12;
    *v12 = v1;
    v12[1] = sub_2274D2224;
    v13 = *(v1 + 184);

    return sub_2274D96A0(v13);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v1 + 176) = v15;
    *v15 = v1;
    v15[1] = sub_2274D2538;

    return sub_2274D2860();
  }
}

uint64_t sub_2274D2224()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_2274D2334, v1, 0);
}

uint64_t sub_2274D2334()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 184);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  sub_2274D8030(v2, sub_2274DE6D4, v4);

  swift_beginAccess();
  v5 = *(v3 + 16);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  if (v5 < 1)
  {
    sub_227669930();
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D51020], v6);
    sub_227669920();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2274D2538()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_2274D2648, v1, 0);
}

uint64_t sub_2274D2648()
{
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

void sub_2274D26DC(void *a1, void *a2, uint64_t a3)
{
  swift_getErrorValue();
  if (sub_22766D270() == 134100)
  {
    swift_getErrorValue();
    v6 = sub_22766D280();
    v8 = v7;
    if (v6 == sub_22766C000() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_22766D190();
    }
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  *(a3 + 16) = v11 & 1;
  sub_2274D88B0(a2, a1);
}

uint64_t sub_2274D27FC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2274D88B0(a2, a1);
  result = swift_beginAccess();
  v6 = *(a4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t sub_2274D2860()
{
  v1[5] = v0;
  v2 = sub_22766B390();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274D2990, v0, 0);
}

uint64_t sub_2274D2990()
{
  v194 = v0;
  v193[2] = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 112) = v1;
  v2 = &selRef_setFetchBatchSize_;
  v3 = [v1 persistentStoreCoordinator];
  v4 = [v3 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v5 = sub_22766C2C0();
  *(v0 + 120) = v5;

  if (v5 >> 62)
  {
LABEL_69:
    v177 = sub_22766CD20();
    *(v0 + 128) = v177;
    if (v177)
    {
      goto LABEL_3;
    }

LABEL_52:

    v133 = *(v0 + 8);

    return v133();
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 128) = v6;
  if (!v6)
  {
    goto LABEL_52;
  }

LABEL_3:
  v7 = 0;
  *(v0 + 200) = *MEMORY[0x277D50FF8];
  v8 = &unk_2813B2000;
  while (1)
  {
    v10 = *(v0 + 120);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AA991A0](v7);
    }

    else
    {
      if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v11 = *(v10 + 8 * v7 + 32);
    }

    v12 = v11;
    *(v0 + 136) = v11;
    *(v0 + 144) = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v13 = [*(v0 + 112) managedObjectModel];
    v14 = sub_2274EF600();
    v16 = v15;

    v17 = sub_2274E3964(v14, v16);
    if (qword_2813A2140 != -1)
    {
      v132 = v17;
      swift_once();
      v17 = v132;
    }

    v35 = word_2813B2670;
    *(v0 + 208) = word_2813B2670;
    v36 = sub_2274E2FEC(v17);
    v38 = v37;
    if (v36 == sub_2274E2FEC(v35) && v38 == v39)
    {
    }

    else
    {
      v41 = sub_22766D190();

      if ((v41 & 1) == 0)
      {
        sub_22766A770();
        v42 = v12;
        v43 = sub_22766B380();
        v44 = sub_22766C890();

        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v0 + 104);
        v48 = *(v0 + 48);
        v47 = *(v0 + 56);
        if (v45)
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v193[0] = v50;
          *v49 = 136446210;
          v51 = [v42 configurationName];
          v52 = sub_22766C000();
          v184 = v46;
          v54 = v53;

          v55 = v52;
          v2 = &selRef_setFetchBatchSize_;
          v56 = sub_226E97AE8(v55, v54, v193);

          *(v49 + 4) = v56;
          _os_log_impl(&dword_226E8E000, v43, v44, "Trying to update %{public}s without having loaded it on the current schema.", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          v57 = v50;
          v8 = &unk_2813B2000;
          MEMORY[0x22AA9A450](v57, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);

          (*(v47 + 8))(v184, v48);
        }

        else
        {

          (*(v47 + 8))(v46, v48);
        }

        v103 = *(v0 + 200);
        v104 = sub_227664DD0();
        sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v105 = swift_allocError();
        (*(*(v104 - 8) + 104))(v106, v103, v104);
        swift_willThrow();
        v107 = v105;
        v18 = *(v0 + 136);
        sub_22766A770();
        v19 = v18;
        v20 = sub_22766B380();
        v21 = sub_22766C8B0();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = *(v0 + 136);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138412290;
          *(v23 + 4) = v22;
          *v24 = v22;
          v25 = v22;
          _os_log_impl(&dword_226E8E000, v20, v21, "Got unrecoverable error while trying to update %@", v23, 0xCu);
          sub_226E97D1C(v24, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v24, -1, -1);
          MEMORY[0x22AA9A450](v23, -1, -1);
        }

        v26 = *(v0 + 136);
        v27 = *(v0 + 112);
        v29 = *(v0 + 56);
        v28 = *(v0 + 64);
        v30 = *(v0 + 48);

        (*(v29 + 8))(v28, v30);
        v31 = [v27 v2[67]];
        *(v0 + 32) = 0;
        LODWORD(v26) = [v31 removePersistentStore:v26 error:v0 + 32];

        v32 = *(v0 + 32);
        v33 = *(v0 + 136);
        if (!v26)
        {
          v135 = v32;
          sub_2276622C0();

          swift_willThrow();
          v193[0] = 0;
          v193[1] = 0xE000000000000000;
          sub_22766CE20();
          MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
          v136 = [v33 description];
          v137 = sub_22766C000();
          v139 = v138;

          MEMORY[0x22AA98450](v137, v139);

          MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
          return sub_22766CFB0();
        }

        v34 = v32;

        goto LABEL_5;
      }
    }

    v58 = sub_2274EEF88(v12);
    if (v58 == 56)
    {
      break;
    }

    v59 = v58;
    v60 = v8[1649];
    *(v0 + 210) = v60;
    v61 = *(v0 + 208);
    v62 = sub_2274E2FEC(v61);
    v64 = v63;
    if (v62 == sub_2274E2FEC(v61) && v64 == v65)
    {

LABEL_31:
      v67 = sub_2275E0328(v59);
      v69 = v68;
      if (v67 == sub_2275E0328(v60) && v69 == v70)
      {
        v9 = *(v0 + 136);

        goto LABEL_5;
      }

      v71 = sub_22766D190();

      if (v71)
      {

        goto LABEL_5;
      }

      goto LABEL_35;
    }

    v66 = sub_22766D190();

    if (v66)
    {
      goto LABEL_31;
    }

LABEL_35:
    v72 = *(v0 + 136);
    sub_22766A770();
    v73 = v72;
    v74 = sub_22766B380();
    v75 = sub_22766C8B0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 136);
      v179 = *(v0 + 56);
      v181 = *(v0 + 48);
      v185 = *(v0 + 88);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v193[0] = v78;
      *v77 = 136446466;
      v79 = [v76 configurationName];
      v80 = sub_22766C000();
      v82 = v81;

      v83 = sub_226E97AE8(v80, v82, v193);

      *(v77 + 4) = v83;
      *(v77 + 12) = 2082;
      v84 = sub_22709BF40();
      v86 = sub_226E97AE8(v84, v85, v193);

      *(v77 + 14) = v86;
      _os_log_impl(&dword_226E8E000, v74, v75, "Updating %{public}s to current version %{public}s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v78, -1, -1);
      v87 = v77;
      v8 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v87, -1, -1);

      v88 = *(v179 + 8);
      v88(v185, v181);
    }

    else
    {
      v89 = *(v0 + 88);
      v90 = *(v0 + 48);
      v91 = *(v0 + 56);

      v88 = *(v91 + 8);
      v88(v89, v90);
    }

    *(v0 + 168) = v88;
    v92 = *(v0 + 208);
    v93 = sub_2274E2FEC(*(v0 + 208));
    v95 = v94;
    v2 = &selRef_setFetchBatchSize_;
    if (v93 == sub_2274E2FEC(v92) && v95 == v96)
    {
    }

    else
    {
      v97 = sub_22766D190();

      if ((v97 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v98 = *(v0 + 210);
    v99 = sub_2275E0328(v59);
    v101 = v100;
    if (v99 == sub_2275E0328(v98) && v101 == v102)
    {
    }

    else
    {
      v108 = sub_22766D190();

      if ((v108 & 1) == 0)
      {
LABEL_50:
        v128 = sub_2274DDF0C(v92 | (v59 << 8));
        *(v0 + 204) = v128;
        *(v0 + 176) = v129;
        v190 = v162;
        v192 = v128;
        v163 = v129;

        sub_22766A770();

        v164 = sub_22766B380();
        v165 = sub_22766C8B0();
        v166 = v163;

        if (os_log_type_enabled(v164, v165))
        {
          v183 = *(v0 + 80);
          v188 = *(v0 + 168);
          v180 = *(v0 + 48);
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          v193[0] = v169;
          *v168 = 136446210;
          *(v0 + 16) = 0x2870657453;
          *(v0 + 24) = 0xE500000000000000;

          v170 = sub_22709BF40();
          MEMORY[0x22AA98450](v170);

          MEMORY[0x22AA98450](540945696, 0xE400000000000000);
          v171 = sub_22709BF40();
          MEMORY[0x22AA98450](v171);

          MEMORY[0x22AA98450](41, 0xE100000000000000);

          v172 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v193);

          *(v168 + 4) = v172;
          _os_log_impl(&dword_226E8E000, v164, v165, "Executing %{public}s.", v168, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v169);
          MEMORY[0x22AA9A450](v169, -1, -1);
          MEMORY[0x22AA9A450](v168, -1, -1);

          v188(v183, v180);
        }

        else
        {
          v173 = *(v0 + 168);
          v174 = *(v0 + 80);
          v175 = *(v0 + 48);

          v173(v174, v175);
        }

        v176 = swift_task_alloc();
        *(v0 + 184) = v176;
        *v176 = v0;
        v176[1] = sub_2274D4CD8;
        v161 = *(v0 + 136);
        v157 = *(v0 + 112);
        v159 = v192;
        v158 = v190;
        v160 = v166;
        goto LABEL_60;
      }
    }

    v109 = *(v0 + 136);
    sub_22766A770();
    v110 = v109;
    v111 = sub_22766B380();
    v112 = sub_22766C8B0();

    v113 = os_log_type_enabled(v111, v112);
    v114 = *(v0 + 168);
    if (v113)
    {
      v115 = *(v0 + 136);
      v182 = *(v0 + 48);
      v186 = *(v0 + 72);
      v178 = v115;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v193[0] = v117;
      *v116 = 136446466;
      v118 = [v115 configurationName];
      v119 = sub_22766C000();
      v121 = v120;

      v122 = sub_226E97AE8(v119, v121, v193);

      *(v116 + 4) = v122;
      *(v116 + 12) = 2082;
      v123 = sub_22709BF40();
      v125 = sub_226E97AE8(v123, v124, v193);

      *(v116 + 14) = v125;
      _os_log_impl(&dword_226E8E000, v111, v112, "Updated %{public}s to current version %{public}s", v116, 0x16u);
      swift_arrayDestroy();
      v126 = v117;
      v8 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v126, -1, -1);
      v127 = v116;
      v2 = &selRef_setFetchBatchSize_;
      MEMORY[0x22AA9A450](v127, -1, -1);

      v114(v186, v182);
    }

    else
    {
      v130 = *(v0 + 72);
      v131 = *(v0 + 48);

      v114(v130, v131);
    }

LABEL_5:
    v7 = *(v0 + 144);
    if (v7 == *(v0 + 128))
    {
      goto LABEL_52;
    }
  }

  sub_22766A770();
  v140 = v12;
  v141 = sub_22766B380();
  v142 = sub_22766C8B0();

  v143 = os_log_type_enabled(v141, v142);
  v144 = *(v0 + 96);
  v146 = *(v0 + 48);
  v145 = *(v0 + 56);
  v191 = v140;
  if (v143)
  {
    v189 = *(v0 + 48);
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v193[0] = v148;
    *v147 = 136446210;
    v149 = [v140 configurationName];
    v150 = sub_22766C000();
    v187 = v144;
    v152 = v151;

    v153 = sub_226E97AE8(v150, v152, v193);

    *(v147 + 4) = v153;
    _os_log_impl(&dword_226E8E000, v141, v142, "Got nil Data Version for %{public}s. Forcing to most recent.", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v148);
    v154 = v148;
    v8 = &unk_2813B2000;
    MEMORY[0x22AA9A450](v154, -1, -1);
    MEMORY[0x22AA9A450](v147, -1, -1);

    (*(v145 + 8))(v187, v189);
  }

  else
  {

    (*(v145 + 8))(v144, v146);
  }

  v155 = v8[1649];
  *(v0 + 209) = v155;
  v156 = swift_task_alloc();
  *(v0 + 152) = v156;
  *v156 = v0;
  v156[1] = sub_2274D3AE0;
  v157 = *(v0 + 112);
  v158 = nullsub_1;
  v159 = (v155 << 8) | (v35 << 16) | (v155 << 24) | v35;
  v160 = 0;
  v161 = v191;
LABEL_60:

  return sub_2274DCD0C(v159, v158, v160, v157, v161);
}

uint64_t sub_2274D3AE0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2274D5F10;
  }

  else
  {
    v4 = sub_2274D3C38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2274D3C38()
{
  v185 = v0;
  v1 = &unk_2813B2000;
  v2 = &selRef_setFetchBatchSize_;
  v184[2] = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 160);
  v4 = *(v0 + 209);
  while (1)
  {
    v5 = v1[1649];
    *(v0 + 210) = v5;
    v6 = *(v0 + 208);
    v7 = sub_2274E2FEC(v6);
    v9 = v8;
    if (v7 == sub_2274E2FEC(v6) && v9 == v10)
    {
    }

    else
    {
      v12 = sub_22766D190();

      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v13 = sub_2275E0328(v4);
    v15 = v14;
    if (v13 == sub_2275E0328(v5) && v15 == v16)
    {
      v17 = *(v0 + 136);

      goto LABEL_32;
    }

    v18 = sub_22766D190();

    if (v18)
    {

      goto LABEL_32;
    }

LABEL_16:
    v19 = *(v0 + 136);
    sub_22766A770();
    v20 = v19;
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 136);
      v170 = *(v0 + 56);
      v172 = *(v0 + 48);
      v175 = *(v0 + 88);
      v24 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v184[0] = v169;
      *v24 = 136446466;
      v25 = [v23 configurationName];
      v26 = sub_22766C000();
      v28 = v27;

      v29 = sub_226E97AE8(v26, v28, v184);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      v30 = sub_22709BF40();
      v32 = sub_226E97AE8(v30, v31, v184);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_226E8E000, v21, v22, "Updating %{public}s to current version %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v169, -1, -1);
      v33 = v24;
      v1 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v33, -1, -1);

      v34 = *(v170 + 8);
      v34(v175, v172);
    }

    else
    {
      v35 = *(v0 + 88);
      v36 = *(v0 + 48);
      v37 = *(v0 + 56);

      v34 = *(v37 + 8);
      v34(v35, v36);
    }

    *(v0 + 168) = v34;
    v38 = *(v0 + 208);
    v39 = sub_2274E2FEC(*(v0 + 208));
    v41 = v40;
    v2 = &selRef_setFetchBatchSize_;
    if (v39 == sub_2274E2FEC(v38) && v41 == v42)
    {
    }

    else
    {
      v43 = sub_22766D190();

      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v44 = *(v0 + 210);
    v45 = sub_2275E0328(v4);
    v47 = v46;
    if (v45 == sub_2275E0328(v44) && v47 == v48)
    {

LABEL_27:
      v50 = *(v0 + 136);
      sub_22766A770();
      v51 = v50;
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();

      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 168);
      if (v54)
      {
        v56 = *(v0 + 136);
        v168 = v56;
        v173 = *(v0 + 48);
        v176 = *(v0 + 72);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v184[0] = v58;
        *v57 = 136446466;
        v59 = [v56 configurationName];
        v60 = sub_22766C000();
        v62 = v61;

        v63 = sub_226E97AE8(v60, v62, v184);

        *(v57 + 4) = v63;
        *(v57 + 12) = 2082;
        v64 = sub_22709BF40();
        v66 = sub_226E97AE8(v64, v65, v184);

        *(v57 + 14) = v66;
        _os_log_impl(&dword_226E8E000, v52, v53, "Updated %{public}s to current version %{public}s", v57, 0x16u);
        swift_arrayDestroy();
        v67 = v58;
        v1 = &unk_2813B2000;
        MEMORY[0x22AA9A450](v67, -1, -1);
        v68 = v57;
        v2 = &selRef_setFetchBatchSize_;
        MEMORY[0x22AA9A450](v68, -1, -1);

        v55(v176, v173);
      }

      else
      {
        v72 = *(v0 + 72);
        v73 = *(v0 + 48);

        v55(v72, v73);
      }

      goto LABEL_32;
    }

    v49 = sub_22766D190();

    if (v49)
    {
      goto LABEL_27;
    }

LABEL_29:
    v69 = sub_2274DDF0C(v38 | (v4 << 8));
    *(v0 + 204) = v69;
    *(v0 + 176) = v71;
    if (!v3)
    {
      break;
    }

    while (1)
    {
      do
      {
        v83 = *(v0 + 136);
        sub_22766A770();
        v84 = v83;
        v85 = sub_22766B380();
        v86 = sub_22766C8B0();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = *(v0 + 136);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *v88 = 138412290;
          *(v88 + 4) = v87;
          *v89 = v87;
          v90 = v87;
          _os_log_impl(&dword_226E8E000, v85, v86, "Got unrecoverable error while trying to update %@", v88, 0xCu);
          sub_226E97D1C(v89, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v89, -1, -1);
          MEMORY[0x22AA9A450](v88, -1, -1);
        }

        v91 = *(v0 + 136);
        v92 = *(v0 + 112);
        v94 = *(v0 + 56);
        v93 = *(v0 + 64);
        v95 = *(v0 + 48);

        (*(v94 + 8))(v93, v95);
        v96 = [v92 persistentStoreCoordinator];
        *(v0 + 32) = 0;
        LODWORD(v92) = [v96 removePersistentStore:v91 error:v0 + 32];

        v97 = *(v0 + 32);
        v98 = *(v0 + 136);
        if (!v92)
        {
          v128 = v97;
          sub_2276622C0();

          swift_willThrow();
          v184[0] = 0;
          v184[1] = 0xE000000000000000;
          sub_22766CE20();
          MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
          v129 = [v98 description];
          v130 = sub_22766C000();
          v132 = v131;

          MEMORY[0x22AA98450](v130, v132);

          MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
          return sub_22766CFB0();
        }

        v99 = v97;

        v3 = 0;
LABEL_32:
        v74 = *(v0 + 144);
        v75 = *(v0 + 120);
        if (v74 == *(v0 + 128))
        {

          v126 = *(v0 + 8);

          return v126();
        }

        if ((v75 & 0xC000000000000001) != 0)
        {
          v76 = MEMORY[0x22AA991A0](*(v0 + 144));
        }

        else
        {
          if (v74 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v76 = *(v75 + 8 * v74 + 32);
        }

        v77 = v76;
        *(v0 + 136) = v76;
        *(v0 + 144) = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          __break(1u);
LABEL_68:
          __break(1u);
        }

        v78 = [*(v0 + 112) v2[66]];
        v79 = sub_2274EF600();
        v81 = v80;

        v82 = sub_2274E3964(v79, v81);
      }

      while (v3);
      if (qword_2813A2140 != -1)
      {
        v125 = v82;
        swift_once();
        v82 = v125;
      }

      v100 = word_2813B2670;
      *(v0 + 208) = word_2813B2670;
      v101 = sub_2274E2FEC(v82);
      v103 = v102;
      if (v101 == sub_2274E2FEC(v100) && v103 == v104)
      {
        break;
      }

      v105 = sub_22766D190();

      if (v105)
      {
        goto LABEL_3;
      }

      sub_22766A770();
      v106 = v77;
      v107 = sub_22766B380();
      v108 = sub_22766C890();

      v109 = os_log_type_enabled(v107, v108);
      v110 = *(v0 + 104);
      v112 = *(v0 + 48);
      v111 = *(v0 + 56);
      if (v109)
      {
        v177 = *(v0 + 104);
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v184[0] = v114;
        *v113 = 136446210;
        v115 = [v106 configurationName];
        v116 = sub_22766C000();
        v118 = v117;

        v119 = v116;
        v2 = &selRef_setFetchBatchSize_;
        v120 = sub_226E97AE8(v119, v118, v184);
        v1 = &unk_2813B2000;

        *(v113 + 4) = v120;
        _os_log_impl(&dword_226E8E000, v107, v108, "Trying to update %{public}s without having loaded it on the current schema.", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v114);
        MEMORY[0x22AA9A450](v114, -1, -1);
        MEMORY[0x22AA9A450](v113, -1, -1);

        (*(v111 + 8))(v177, v112);
      }

      else
      {

        (*(v111 + 8))(v110, v112);
      }

      v121 = *(v0 + 200);
      v122 = sub_227664DD0();
      sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v123 = swift_allocError();
      (*(*(v122 - 8) + 104))(v124, v121, v122);
      swift_willThrow();
      v3 = v123;
    }

LABEL_3:
    v4 = sub_2274EEF88(v77);
    v3 = 0;
    if (v4 == 56)
    {
      sub_22766A770();
      v133 = v77;
      v134 = sub_22766B380();
      v135 = sub_22766C8B0();

      v136 = os_log_type_enabled(v134, v135);
      v137 = *(v0 + 96);
      v139 = *(v0 + 48);
      v138 = *(v0 + 56);
      v182 = v133;
      if (v136)
      {
        v180 = *(v0 + 48);
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v184[0] = v141;
        *v140 = 136446210;
        v142 = [v133 configurationName];
        v143 = sub_22766C000();
        v178 = v137;
        v145 = v144;

        v1 = &unk_2813B2000;
        v146 = sub_226E97AE8(v143, v145, v184);

        *(v140 + 4) = v146;
        _os_log_impl(&dword_226E8E000, v134, v135, "Got nil Data Version for %{public}s. Forcing to most recent.", v140, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v141);
        MEMORY[0x22AA9A450](v141, -1, -1);
        MEMORY[0x22AA9A450](v140, -1, -1);

        (*(v138 + 8))(v178, v180);
      }

      else
      {

        (*(v138 + 8))(v137, v139);
      }

      v147 = v1[1649];
      *(v0 + 209) = v147;
      v148 = swift_task_alloc();
      *(v0 + 152) = v148;
      *v148 = v0;
      v148[1] = sub_2274D3AE0;
      v149 = *(v0 + 112);
      v150 = nullsub_1;
      v151 = (v147 << 8) | (v100 << 16) | (v147 << 24) | v100;
      v152 = 0;
      v153 = v182;
      goto LABEL_60;
    }
  }

  v181 = v70;
  v183 = v69;
  v154 = v71;

  sub_22766A770();

  v155 = sub_22766B380();
  v156 = sub_22766C8B0();
  v157 = v154;

  if (os_log_type_enabled(v155, v156))
  {
    v174 = *(v0 + 80);
    v179 = *(v0 + 168);
    v171 = *(v0 + 48);
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v184[0] = v160;
    *v159 = 136446210;
    *(v0 + 16) = 0x2870657453;
    *(v0 + 24) = 0xE500000000000000;

    v161 = sub_22709BF40();
    MEMORY[0x22AA98450](v161);

    MEMORY[0x22AA98450](540945696, 0xE400000000000000);
    v162 = sub_22709BF40();
    MEMORY[0x22AA98450](v162);

    MEMORY[0x22AA98450](41, 0xE100000000000000);

    v163 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v184);

    *(v159 + 4) = v163;
    _os_log_impl(&dword_226E8E000, v155, v156, "Executing %{public}s.", v159, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v160);
    MEMORY[0x22AA9A450](v160, -1, -1);
    MEMORY[0x22AA9A450](v159, -1, -1);

    v179(v174, v171);
  }

  else
  {
    v164 = *(v0 + 168);
    v165 = *(v0 + 80);
    v166 = *(v0 + 48);

    v164(v165, v166);
  }

  v167 = swift_task_alloc();
  *(v0 + 184) = v167;
  *v167 = v0;
  v167[1] = sub_2274D4CD8;
  v153 = *(v0 + 136);
  v149 = *(v0 + 112);
  v151 = v183;
  v150 = v181;
  v152 = v157;
LABEL_60:

  return sub_2274DCD0C(v151, v150, v152, v149, v153);
}