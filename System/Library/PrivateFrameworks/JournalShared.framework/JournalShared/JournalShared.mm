id sub_255662ED4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_255662F34()
{
  result = sub_255662F54();
  qword_27F7BF9F8 = result;
  return result;
}

id sub_255662F54()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_255750180();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA08, &qword_25575CBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25575CBA0;
  *(inited + 32) = 0xD000000000000012;
  v4 = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000255752010;
  *(inited + 48) = 21;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x8000000255751F20;
  v5 = MEMORY[0x277D839B0];
  *(inited + 96) = 0;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000002557520F0;
  *(inited + 144) = 1;
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000255751FB0;
  v6 = sub_2556A04B8(0xD000000000000033, 0x80000002557535A0);
  *(inited + 216) = MEMORY[0x277CC9318];
  *(inited + 192) = v6;
  *(inited + 200) = v7;
  sub_255663164(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF438, &qword_25575B100);
  swift_arrayDestroy();
  v8 = sub_255750070();

  [v2 registerDefaults_];

  return v2;
}

unint64_t sub_255663164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF430, &qword_25575B0F8);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, &v13, &qword_27F7BF438, &qword_25575B100);
      v5 = v13;
      v6 = v14;
      result = sub_2556632FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255663374(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255663294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2556632FC(uint64_t a1, uint64_t a2)
{
  sub_255750F80();
  sub_2557501F0();
  v4 = sub_255750FD0();

  return sub_255663384(a1, a2, v4);
}

_OWORD *sub_255663374(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_255663384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_255750EB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_255663460(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

void sub_2556634A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_2557501B0();
    v4 = v3;

    if (v2 == 0xD000000000000011 && 0x8000000255752430 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_255750EB0();
    }
  }

  byte_27F7BFE48 = v1 & 1;
}

uint64_t sub_2556635C8()
{
  result = sub_255750180();
  qword_27F7BE850 = result;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255663658(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2556636A0(uint64_t a1)
{
  sub_255739A7C(319, &qword_27F7C0100, sub_2556D4CDC, &type metadata for MergeableTitleAttributeScope);
  if (v1 <= 0x3F)
  {
    sub_255739A7C(319, &qword_27F7C0108, sub_25566464C, &type metadata for MergeableTextAttributeScope);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MergeableEntryAssetsPlacement(319);
      if (v3 <= 0x3F)
      {
        sub_255663DDC(319);
        if (v4 <= 0x3F)
        {
          sub_25574F860();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t static ProtectedData.shared.getter()
{
  if (qword_27F7BD730 != -1)
  {
    swift_once();
  }
}

uint64_t *sub_255663810()
{
  type metadata accessor for ProtectedData();
  swift_allocObject();
  result = sub_25566384C();
  qword_27F7BE858 = result;
  return result;
}

uint64_t *sub_25566384C()
{
  v1 = v0;
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  *(v0 + 4) = 0;
  v0[3] = MEMORY[0x277D84F98];
  out_token = -1;
  sub_255663A1C();
  v3 = sub_255750830();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v7[4] = sub_2556C63B4;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2556C5530;
  v7[3] = &block_descriptor_0;
  v5 = _Block_copy(v7);

  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v3, v5);
  _Block_release(v5);

  return v1;
}

uint64_t sub_2556639B4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE888, &unk_2557580E0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2556639E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_255663A1C()
{
  result = qword_27F7BE890;
  if (!qword_27F7BE890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE890);
  }

  return result;
}

uint64_t JournalFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for JournalFeatureFlags;
  v4[4] = sub_255663AC0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_255663AC0()
{
  result = qword_27F7BE7A8;
  if (!qword_27F7BE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE7A8);
  }

  return result;
}

const char *JournalFeatureFlags.feature.getter()
{
  result = "Debug";
  switch(*v0)
  {
    case 1:
      result = "iPadOS";
      break;
    case 2:
      result = "macOS";
      break;
    case 3:
      result = "search";
      break;
    case 4:
      result = "recentlyDeleted";
      break;
    case 5:
      result = "statefulNavigation";
      break;
    case 6:
      result = "richCanvas";
      break;
    case 7:
      result = "MultipleJournals";
      break;
    case 8:
      result = "EnhancedSync";
      break;
    case 9:
      result = "FullScreenViewer";
      break;
    case 0xA:
      result = "Location";
      break;
    case 0xB:
      result = "InsightsHighlights";
      break;
    case 0xC:
      result = "CanvasPush";
      break;
    case 0xD:
      result = "SuggestionsAPI";
      break;
    case 0xE:
      result = "FollowupPrompts";
      break;
    case 0xF:
      result = "PortraitAssetGrid";
      break;
    case 0x10:
      result = "MapViewPhotos";
      break;
    case 0x11:
      result = "InspectorColumn";
      break;
    case 0x12:
      result = "MapViewWorkouts";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_255663D60()
{
  result = qword_27F7BEDA8;
  if (!qword_27F7BEDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F7BED20, &unk_2557551D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDA8);
  }

  return result;
}

void sub_255663DDC(uint64_t a1)
{
  if (!qword_27F7BF5D0)
  {
    sub_25574F0D0();
    sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_25574FD20();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BF5D0);
    }
  }
}

unint64_t sub_255663E98()
{
  result = qword_27F7BEDC8;
  if (!qword_27F7BEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDC8);
  }

  return result;
}

uint64_t sub_255663F00(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_255663F5C(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25574EF10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 1;
  v7 = [objc_opt_self() defaultManager];
  sub_25574EED0();
  v8 = sub_255750180();

  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v32];

  if (v9)
  {
    v10 = sub_25574EE80();
    v11 = sub_255750480();
    if (*MEMORY[0x277CBECB0])
    {
      sub_2557501B0();
      v12 = sub_255750180();

      v33[0] = 0;
      v13 = [v10 setResourceValue:v11 forKey:v12 error:v33];

      v14 = v33[0];
      if (!v13)
      {
LABEL_11:
        v30 = v14;
        sub_25574ED90();

        swift_willThrow();
        return;
      }

      v15 = v33[0];
      v16 = sub_255750480();
      if (*MEMORY[0x277CBECB8])
      {
        sub_2557501B0();
        v17 = sub_255750180();

        v33[0] = 0;
        v18 = [v10 setResourceValue:v16 forKey:v17 error:v33];

        v14 = v33[0];
        if (v18)
        {
          v19 = v33[0];

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v20 = sub_25574F2C0();
    __swift_project_value_buffer(v20, qword_27F7BFDD8);
    (*(v4 + 16))(v6, a1, v3);
    v21 = sub_25574F2A0();
    v22 = sub_2557507A0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v1;
      v25 = v24;
      v33[0] = v24;
      *v23 = 136315138;
      sub_255725B90();
      v26 = sub_255750E60();
      v28 = v27;
      (*(v4 + 8))(v6, v3);
      v29 = sub_2556E474C(v26, v28, v33);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_255661000, v21, v22, "excludeFromBackupSafely directory %s doesn't exists, ignoring.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x259C3F520](v25, -1, -1);
      MEMORY[0x259C3F520](v23, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_255664358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_25574EE20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25574EF10();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileStoreConfiguration(0);
  if (*(v3 + *(v14 + 24)) == 1)
  {
    v22 = v11;
    v23 = v10;
    v24 = a3;
    v25 = a2;
    v17 = &unk_286789420;
LABEL_8:
    v21[1] = v17;
    v18 = *MEMORY[0x277CC91D8];
    v19 = *(v7 + 104);
    v19(v9, v18, v6);
    sub_255663E98();
    sub_25574EEF0();
    v20 = *(v7 + 8);
    v20(v9, v6);
    v19(v9, v18, v6);
    sub_25574EEF0();
    v20(v9, v6);
    return (*(v22 + 8))(v13, v23);
  }

  if (*(v3 + *(v14 + 24)))
  {
    v22 = v11;
    v23 = v10;
    v24 = a3;
    v25 = a2;
    v17 = &unk_2867893F0;
    goto LABEL_8;
  }

  v15 = v25;

  return v15();
}

uint64_t sub_2556645E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileStoreConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25566464C()
{
  result = qword_27F7BE8C0;
  if (!qword_27F7BE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE8C0);
  }

  return result;
}

void sub_2556646C0(uint64_t a1)
{
  sub_2556648CC(319, &qword_27F7BF5C0, MEMORY[0x277CFB568]);
  if (v1 <= 0x3F)
  {
    sub_255664970(319);
    if (v2 <= 0x3F)
    {
      sub_2556648CC(319, &qword_27F7BF5D0, MEMORY[0x277CFB6F0]);
      if (v3 <= 0x3F)
      {
        sub_25574F860();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2556647AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556647F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25566483C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255664884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2556648CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25574F0D0();
    v7 = sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v8 = a3(a1, v6, MEMORY[0x277CFB490], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_255664970(uint64_t a1)
{
  if (!qword_27F7BF5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F7BED20, &unk_2557551D0);
    sub_255663D60();
    v1 = sub_25574F4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BF5C8);
    }
  }
}

uint64_t sub_2556649F0()
{
  sub_2557501E0();
  has_internal_ui = os_variant_has_internal_ui();

  byte_27F7BFE4A = has_internal_ui;
  return result;
}

void static Runtime.Environment.current.getter(unsigned __int8 *a1@<X8>)
{
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A == 1)
  {
    if (qword_27F7BD7C8 != -1)
    {
      swift_once();
    }

    v2 = qword_27F7BF9F8;
    v3 = sub_255750180();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v6 = sub_255750180();
      v5 = [v2 BOOLForKey_];
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t type metadata accessor for FileStoreConfiguration(uint64_t a1)
{
  result = qword_27F7BFE20;
  if (!qword_27F7BFE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255664BF4(uint64_t a1)
{
  type metadata accessor for URLFileProtection(319);
  if (v1 <= 0x3F)
  {
    sub_25574EF10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255664C80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static FileStoreConfiguration.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7BD7F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FileStoreConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27F7BFDF0);

  return sub_2556645E8(v3, a1);
}

uint64_t sub_255664D44()
{
  v0 = type metadata accessor for FileStoreConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27F7BFDF0);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFDF0);
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A != 1)
  {
    goto LABEL_10;
  }

  if (qword_27F7BD7C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27F7BF9F8;
  v3 = sub_255750180();
  LOBYTE(v2) = [v2 BOOLForKey_];

  if ((v2 & 1) == 0)
  {
    v5 = qword_27F7BF9F8;
    v6 = sub_255750180();
    LODWORD(v5) = [v5 BOOLForKey_];

    if (v5)
    {
      v4 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v4 = 2;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  v8 = v4;
  return FileStoreConfiguration.init(location:fileProtectionClass:)(&v8, *MEMORY[0x277CBE7E8], v1);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FileStoreConfiguration.init(location:fileProtectionClass:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v9 = sub_25574EF10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v14 = type metadata accessor for FileStoreConfiguration(0);
  *(a3 + *(v14 + 24)) = v13;
  *a3 = a2;
  v18 = v13;
  sub_2556651A8(&v18, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_255674B20(v8, &qword_27F7BE270, &unk_25575A3F0);
    result = sub_255750C40();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(a3 + *(v14 + 20), v12, v9);
    v17 = v13;
    sub_255665410(&v17);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_2556651A8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if (*a1)
  {
    v7 = [objc_opt_self() defaultManager];
    v8 = sub_255750180();
    v9 = [v7 containerURLForSecurityApplicationGroupIdentifier_];

    if (v9)
    {
      sub_25574EEC0();

      v10 = sub_25574EF10();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_25574EF10();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_2556653A0(v6, a2);
  }

  else
  {
    sub_25574EE30();
    v11 = sub_25574EF10();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 0, 1, v11);
  }
}

uint64_t sub_2556653A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255665410(unsigned __int8 *a1)
{
  v169 = *MEMORY[0x277D85DE8];
  v164 = sub_25574EE20();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v3 = &v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_25574EF10();
  v165 = *(v161 - 8);
  v4 = MEMORY[0x28223BE20](v161);
  v6 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v152 = &v146 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v149 = &v146 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v150 = &v146 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v156 = &v146 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v146 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v157 = &v146 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v146 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v146 = &v146 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v147 = &v146 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v146 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v146 - v29;
  v31 = *a1;
  if (qword_27F7BD7F0 != -1)
  {
    swift_once();
  }

  v32 = sub_25574F2C0();
  v158 = __swift_project_value_buffer(v32, qword_27F7BFDD8);
  v33 = sub_25574F2A0();
  v34 = sub_255750770();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_255661000, v33, v34, "Creating file system layout", v35, 2u);
    MEMORY[0x259C3F520](v35, -1, -1);
  }

  v151 = v6;
  v155 = v21;
  if (v31 == 1)
  {
    v36 = sub_25574F2A0();
    v37 = sub_255750770();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_255661000, v36, v37, "Creating Staging home directory", v38, 2u);
      MEMORY[0x259C3F520](v38, -1, -1);
    }

    v39 = [objc_opt_self() defaultManager];
    type metadata accessor for FileStoreConfiguration(0);
    v40 = sub_25574EE80();
    v167 = 0;
    v41 = [v39 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:&v167];

    if (v41)
    {
      v42 = v167;
    }

    else
    {
      v64 = v167;
      v65 = sub_25574ED90();

      swift_willThrow();
      v66 = v65;
      v67 = sub_25574F2A0();
      v68 = sub_255750790();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        v71 = v65;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 4) = v72;
        *v70 = v72;
        _os_log_impl(&dword_255661000, v67, v68, "Failed to create Staging home directory: %@", v69, 0xCu);
        sub_255674B20(v70, &qword_27F7BEC80, &qword_255757E90);
        MEMORY[0x259C3F520](v70, -1, -1);
        MEMORY[0x259C3F520](v69, -1, -1);
      }

      else
      {
      }
    }
  }

  v43 = objc_opt_self();
  v44 = [v43 defaultManager];
  v45 = type metadata accessor for FileStoreConfiguration(0);
  v160 = *(v45 + 24);
  v46 = *(v166 + v160);
  v159 = v45;
  if (v46)
  {
    v47 = v162;
    v48 = v164;
    (*(v162 + 104))(v3, *MEMORY[0x277CC91D8], v164);
    sub_255663E98();
    sub_25574EEF0();
    (*(v47 + 8))(v3, v48);
  }

  else
  {
    sub_25574EE70();
  }

  v49 = v165;
  v50 = v28;
  v51 = v161;
  v153 = *(v165 + 32);
  v154 = v165 + 32;
  v153(v30, v50, v161);
  v52 = sub_25574EE80();
  v53 = *(v49 + 8);
  v165 = v49 + 8;
  v163 = v53;
  v53(v30, v51);
  v167 = 0;
  v54 = [v44 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:&v167];

  v55 = v167;
  if (v54)
  {
    v56 = v166;
    if (*(v166 + v160))
    {
      v57 = v162;
      v58 = v164;
      (*(v162 + 104))(v3, *MEMORY[0x277CC91D8], v164);
      sub_255663E98();
      v59 = v55;
      v60 = v146;
      sub_25574EEF0();
      v61 = v58;
      v56 = v166;
      (*(v57 + 8))(v3, v61);
    }

    else
    {
      v73 = v167;
      v60 = v146;
      sub_25574EE70();
    }

    v74 = v147;
    v75 = v155;
    v153(v147, v60, v51);
    sub_2556673F4(v74);
    v163(v74, v51);
    if (*(v56 + v160))
    {
      v76 = v162;
      v77 = v164;
      (*(v162 + 104))(v3, *MEMORY[0x277CC91D8], v164);
      sub_255663E98();
      sub_25574EEF0();
      (*(v76 + 8))(v3, v77);
    }

    else
    {
      sub_25574EE50();
    }

    sub_255663F5C(v75);
    v163(v75, v51);
  }

  else
  {
    v62 = v167;
    v63 = sub_25574ED90();

    swift_willThrow();
    v56 = v166;
    v78 = v63;
    v79 = sub_25574F2A0();
    v80 = sub_255750790();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      v83 = v63;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v84;
      *v82 = v84;
      _os_log_impl(&dword_255661000, v79, v80, "Filed to create temp directory: %@", v81, 0xCu);
      sub_255674B20(v82, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v82, -1, -1);
      MEMORY[0x259C3F520](v81, -1, -1);
    }

    else
    {
    }
  }

  v85 = [v43 defaultManager];
  v86 = v157;
  FileStoreConfiguration.cachesDirectoryURL.getter(v157);
  v87 = sub_25574EE80();
  v163(v86, v51);
  v167 = 0;
  v88 = [v85 createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:&v167];

  v89 = v162;
  if (v88)
  {
    v90 = v167;
    v91 = v156;
  }

  else
  {
    v92 = v167;
    v93 = sub_25574ED90();

    swift_willThrow();
    v94 = v93;
    v95 = sub_25574F2A0();
    v96 = sub_255750790();

    v97 = os_log_type_enabled(v95, v96);
    v91 = v156;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v98 = 138412290;
      v100 = v93;
      v101 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 4) = v101;
      *v99 = v101;
      _os_log_impl(&dword_255661000, v95, v96, "Failed to create cache directory: %@", v98, 0xCu);
      sub_255674B20(v99, &qword_27F7BEC80, &qword_255757E90);
      v102 = v99;
      v56 = v166;
      MEMORY[0x259C3F520](v102, -1, -1);
      MEMORY[0x259C3F520](v98, -1, -1);
    }

    else
    {
    }
  }

  v103 = [v43 defaultManager];
  if (*(v56 + v160))
  {
    v104 = *(v89 + 104);
    v105 = v164;
    v104(v3, *MEMORY[0x277CC91D8], v164);
    sub_255663E98();
    sub_25574EEF0();
    (*(v89 + 8))(v3, v105);
  }

  else
  {
    sub_25574EE50();
    v104 = *(v89 + 104);
  }

  v167 = 0x656D686361747441;
  v168 = 0xEB0000000073746ELL;
  LODWORD(v147) = *MEMORY[0x277CC91C0];
  v106 = v164;
  v155 = v104;
  (v104)(v3);
  sub_255663E98();
  v107 = v148;
  sub_25574EF00();
  v108 = *(v89 + 8);
  v162 = v89 + 8;
  v156 = v108;
  (v108)(v3, v106);
  v109 = v161;
  v110 = v163;
  v163(v91, v161);
  v111 = sub_25574EE80();
  v110(v107, v109);
  v167 = 0;
  v112 = [v103 createDirectoryAtURL:v111 withIntermediateDirectories:1 attributes:0 error:&v167];

  if (v112)
  {
    v113 = v167;
  }

  else
  {
    v114 = v167;
    v115 = sub_25574ED90();

    swift_willThrow();
    v116 = v115;
    v117 = sub_25574F2A0();
    v118 = sub_255750780();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138412290;
      v121 = v115;
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v119 + 4) = v122;
      *v120 = v122;
      _os_log_impl(&dword_255661000, v117, v118, "Filed to create attachments directory: %@", v119, 0xCu);
      sub_255674B20(v120, &qword_27F7BEC80, &qword_255757E90);
      v123 = v166;
      MEMORY[0x259C3F520](v120, -1, -1);
      MEMORY[0x259C3F520](v119, -1, -1);

      goto LABEL_42;
    }
  }

  v123 = v166;
LABEL_42:
  v124 = v156;
  if (*(v123 + v160))
  {
    v125 = v164;
    v155(v3, *MEMORY[0x277CC91D8], v164);
    v126 = v149;
    sub_25574EEF0();
    v127 = v3;
    v124(v3, v125);
  }

  else
  {
    v127 = v3;
    v126 = v149;
    sub_25574EE70();
  }

  v128 = v150;
  v129 = v126;
  v130 = v161;
  v153(v150, v129, v161);
  v131 = *v123;
  URL.setProtectionClass(protectionClass:)(*v123);
  v132 = v163;
  v163(v128, v130);
  v133 = v157;
  FileStoreConfiguration.cachesDirectoryURL.getter(v157);
  URL.setProtectionClass(protectionClass:)(v131);
  v132(v133, v130);
  if (*(v166 + v160))
  {
    v134 = v127;
    v135 = v155;
    v136 = v164;
    v155(v134, *MEMORY[0x277CC91D8], v164);
    v137 = v151;
    sub_25574EEF0();
    v138 = v136;
    v139 = v137;
    v140 = v156;
    (v156)(v134, v138);
  }

  else
  {
    v139 = v151;
    sub_25574EE50();
    v134 = v127;
    v135 = v155;
    v140 = v156;
  }

  v167 = 0x656D686361747441;
  v168 = 0xEB0000000073746ELL;
  v141 = v164;
  v135(v134, v147, v164);
  v142 = v152;
  sub_25574EF00();
  v140(v134, v141);
  v143 = v161;
  v144 = v163;
  v163(v139, v161);
  URL.setProtectionClass(protectionClass:)(v131);
  return v144(v142, v143);
}

uint64_t sub_25566662C()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BFDD8);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFDD8);
  if (qword_27F7BD5D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556666F4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C04F8);
  __swift_project_value_buffer(v0, qword_27F7C04F8);
  return sub_25574F2B0();
}

id sub_255666800()
{
  type metadata accessor for ForModuleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F7C05A0 = result;
  return result;
}

unint64_t sub_255666858()
{
  result = qword_27F7BE198;
  if (!qword_27F7BE198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE198);
  }

  return result;
}

uint64_t FileStoreConfiguration.libraryDirectoryURL.getter()
{
  v1 = sub_25574EE20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for FileStoreConfiguration(0) + 24)))
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
    sub_255663E98();
    sub_25574EEF0();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {

    return sub_25574EE50();
  }
}

uint64_t sub_255666A78()
{
  result = sub_255750180();
  qword_27F7BE848 = result;
  return result;
}

void sub_255666B08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755040;
  if (qword_27F7BD648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCE8;
  *(v0 + 32) = qword_27F7BDCE8;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD6A0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD40;
  *(v0 + 48) = qword_27F7BDD40;
  v8 = qword_27F7BD608;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDCA8;
  *(v0 + 56) = qword_27F7BDCA8;
  v11 = qword_27F7BD620;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_27F7BDCC0;
  *(v0 + 64) = qword_27F7BDCC0;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v14 = v13;
  v15 = sub_255750370();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  qword_27F7BDCF0 = v16;
}

void sub_255666D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755030;
  if (qword_27F7BD628 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCC8;
  *(v0 + 32) = qword_27F7BDCC8;
  v2 = qword_27F7BD630;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDCD0;
  *(v0 + 40) = qword_27F7BDCD0;
  v5 = qword_27F7BD638;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDCD8;
  *(v0 + 48) = qword_27F7BDCD8;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v8 = v7;
  v9 = sub_255750370();

  v10 = [objc_opt_self() orPredicateWithSubpredicates_];

  qword_27F7BDCE8 = v10;
}

uint64_t sub_255666E80()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0x737465737361;
  *(v0 + 40) = 0xE600000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x6E65646469487369;
  *(v0 + 80) = 0xE800000000000000;
  result = sub_255750750();
  qword_27F7BDCC8 = result;
  return result;
}

unint64_t sub_255666F5C()
{
  result = qword_27F7BED90;
  if (!qword_27F7BED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BED90);
  }

  return result;
}

uint64_t sub_255666FB0()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0x676E654C74786574;
  *(v0 + 40) = 0xEA00000000006874;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x676E654C74786574;
  *(v0 + 80) = 0xEA00000000006874;
  result = sub_255750750();
  qword_27F7BDCD0 = result;
  return result;
}

uint64_t static JournalDataUtilities.getRecentlyDeletedEntriesCount(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  if (qword_27F7BD6B0 != -1)
  {
    swift_once();
  }

  [v2 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v3 = sub_2557508B0();

  return v3;
}

uint64_t sub_2556671F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_25574F860();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_2556673F4(uint64_t a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25574EF10();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - v7;
  v8 = sub_25574ED80();
  v40 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v43 = 1;
  v14 = [objc_opt_self() defaultManager];
  sub_25574EED0();
  v15 = sub_255750180();

  v16 = [v14 fileExistsAtPath:v15 isDirectory:&v43];

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB78, &unk_25575DF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255755060;
    v18 = *MEMORY[0x277CBE878];
    *(inited + 32) = *MEMORY[0x277CBE878];
    v19 = v18;
    sub_255668820(inited, &qword_27F7BFE30, &qword_25575E028);
    swift_setDeallocating();
    sub_255725BE8(inited + 32, type metadata accessor for URLResourceKey);
    sub_25574EE40();

    if (!v1)
    {
      v20 = sub_25574ED40();
      v21 = *(v40 + 8);
      v21(v13, v8);
      if (v20 != 2 && (v20 & 1) == 0)
      {
        sub_25574ED70();
        sub_25574ED50();
        v22 = v41;
        v23 = v39;
        v24 = a1;
        v25 = v42;
        (*(v41 + 16))(v39, v24, v42);
        sub_25574EE60();
        (*(v22 + 8))(v23, v25);
        v21(v11, v8);
      }
    }
  }

  else
  {
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v26 = sub_25574F2C0();
    __swift_project_value_buffer(v26, qword_27F7BFDD8);
    v27 = v41;
    v28 = v42;
    (*(v41 + 16))(v6, a1, v42);
    v29 = sub_25574F2A0();
    v30 = sub_2557507A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136315138;
      sub_255725B90();
      v33 = sub_255750E60();
      v34 = v27;
      v35 = v33;
      v37 = v36;
      (*(v34 + 8))(v6, v28);
      v38 = sub_2556E474C(v35, v37, v44);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_255661000, v29, v30, "excludeFromBackupFully directory %s doesn't exists, ignoring.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x259C3F520](v32, -1, -1);
      MEMORY[0x259C3F520](v31, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v6, v28);
    }
  }
}

void sub_255667978()
{
  v0 = sub_255750180();
  v1 = objc_opt_self();
  type metadata accessor for MergeableEntryAttributesTransformer(0);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setValueTransformer:v2 forName:v0];

  v3 = sub_255750180();
  type metadata accessor for MergeableJournalAttributesTransformer(0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setValueTransformer:v4 forName:v3];

  v5 = sub_255750180();
  type metadata accessor for MergeableAppStorageTransformer(0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setValueTransformer:v6 forName:v5];

  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755E40;
  if (qword_27F7BD7B0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F7C05A0;
  *(v8 + 32) = qword_27F7C05A0;
  sub_255666858();
  v10 = v9;
  v11 = sub_255750370();

  v12 = [v7 mergedModelFromBundles_];

  if (!v12)
  {
    __break(1u);
  }
}

uint64_t sub_255667BB8(uint64_t a1)
{
  result = type metadata accessor for MergeableEntryAttributes(319);
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

id sub_255667DEC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MergeableEntryAttributesTransformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_255667E54()
{
  v1 = type metadata accessor for MergeableDataValueTransformer(0, *((*MEMORY[0x277D85000] & *v0) + 0x50), *((*MEMORY[0x277D85000] & *v0) + 0x58), *((*MEMORY[0x277D85000] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_255667F38(uint64_t a1)
{
  result = type metadata accessor for MergeableJournalAttributes(319);
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

void sub_255667FC8(uint64_t a1)
{
  sub_25566807C();
  if (v1 <= 0x3F)
  {
    sub_2556680D4(319);
    if (v2 <= 0x3F)
    {
      sub_2556683F0(319);
      if (v3 <= 0x3F)
      {
        sub_25574F860();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25566807C()
{
  if (!qword_27F7BDF58)
  {
    v0 = sub_25574F4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BDF58);
    }
  }
}

void sub_2556680D4(uint64_t a1)
{
  if (!qword_27F7BDF60)
  {
    type metadata accessor for MergeableColor(255);
    sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor, &protocol conformance descriptor for MergeableColor);
    v1 = sub_25574F4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BDF60);
    }
  }
}

void sub_2556681A8(uint64_t a1)
{
  type metadata accessor for SRGBColor(319);
  if (v1 <= 0x3F)
  {
    sub_2556AA940(319);
    if (v2 <= 0x3F)
    {
      sub_2556682B0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_255668230(uint64_t a1)
{
  result = sub_25574FB30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2556682B0(uint64_t a1)
{
  if (!qword_27F7BDFF8)
  {
    sub_25574F320();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7BDFF8);
    }
  }
}

uint64_t sub_255668318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255668360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2556683F0(uint64_t a1)
{
  if (!qword_27F7BDF68)
  {
    type metadata accessor for MergeableJournalAttributes.Icon(255);
    sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon, &protocol conformance descriptor for MergeableJournalAttributes.Icon);
    v1 = sub_25574F4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BDF68);
    }
  }
}

id sub_255668634(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MergeableJournalAttributesTransformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_255668698(uint64_t a1)
{
  type metadata accessor for SidebarPreferences(319);
  if (v1 <= 0x3F)
  {
    sub_255669014(319);
    if (v2 <= 0x3F)
    {
      sub_25574F860();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255668734(uint64_t a1)
{
  sub_2557239BC(319, &qword_27F7BFCE8, MEMORY[0x277CFB6F0]);
  if (v1 <= 0x3F)
  {
    sub_2557239BC(319, &qword_27F7BFCF0, MEMORY[0x277CFB568]);
    if (v2 <= 0x3F)
    {
      sub_255723AA0(319);
      if (v3 <= 0x3F)
      {
        sub_25574F860();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_255668820(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_255750AE0();
    v6 = 0;
    v7 = v5 + 56;
    v27 = v3;
    v28 = a1 + 32;
    v8 = v3;
    while (1)
    {
      v9 = *(v28 + 8 * v6);
      sub_2557501B0();
      sub_255750F80();
      v29 = v9;
      sub_2557501F0();
      v10 = sub_255750FD0();

      v12 = -1 << *(v5 + 32);
      v13 = v10 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v7 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) == 0)
      {
        goto LABEL_15;
      }

      v17 = ~v12;
      do
      {
        v18 = sub_2557501B0();
        v20 = v19;
        if (v18 == sub_2557501B0() && v20 == v21)
        {

LABEL_4:
          v8 = v27;
          goto LABEL_5;
        }

        v23 = sub_255750EB0();

        if (v23)
        {

          goto LABEL_4;
        }

        v13 = (v13 + 1) & v17;
        v14 = v13 >> 6;
        v15 = *(v7 + 8 * (v13 >> 6));
        v16 = 1 << v13;
      }

      while (((1 << v13) & v15) != 0);
      v8 = v27;
LABEL_15:
      *(v7 + 8 * v14) = v16 | v15;
      *(*(v5 + 48) + 8 * v13) = v29;
      v24 = *(v5 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v5 + 16) = v26;
LABEL_5:
      if (++v6 == v8)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

Swift::Void __swiftcall URL.setProtectionClass(protectionClass:)(NSURLFileProtectionType protectionClass)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25574EF10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25574EE80();
  v8 = *MEMORY[0x277CBE7F8];
  v27[0] = 0;
  LODWORD(protectionClass) = [v7 setResourceValue:protectionClass forKey:v8 error:v27];

  v9 = v27[0];
  if (protectionClass)
  {

    v10 = v9;
  }

  else
  {
    v26 = v27[0];
    v11 = v27[0];
    v12 = sub_25574ED90();

    swift_willThrow();
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v13 = sub_25574F2C0();
    __swift_project_value_buffer(v13, qword_27F7BFDD8);
    (*(v4 + 16))(v6, v1, v3);
    v14 = v12;
    v15 = sub_25574F2A0();
    v16 = sub_255750780();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v17 = 136315394;
      sub_255725B90();
      v19 = sub_255750E60();
      v21 = v20;
      (*(v4 + 8))(v6, v3);
      v22 = sub_2556E474C(v19, v21, v27);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      v23 = v12;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v24;
      *v18 = v24;
      _os_log_impl(&dword_255661000, v15, v16, "Error setting file protection for %s %@", v17, 0x16u);
      sub_255674B20(v18, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v18, -1, -1);
      v25 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x259C3F520](v25, -1, -1);
      MEMORY[0x259C3F520](v17, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

id static NSManagedObjectModel.shared.getter()
{
  if (qword_27F7BD6D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BE188;

  return v1;
}

void sub_255668EB8(uint64_t a1)
{
  sub_2556682B0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_255668F64(uint64_t a1)
{
  result = type metadata accessor for MergeableAppStorage(319);
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

void sub_255669014(uint64_t a1)
{
  if (!qword_27F7BFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA80, &qword_255758AE8);
    sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8, MEMORY[0x277CFB528]);
    v1 = sub_25574F4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BFD68);
    }
  }
}

uint64_t sub_2556690B8()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDC90 = result;
  return result;
}

uint64_t sub_25566911C()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCA8 = result;
  return result;
}

uint64_t sub_255669180()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCC0 = result;
  return result;
}

uint64_t EntriesSortOrder.getSortDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755E40;
  sub_2556692F4();
  swift_getKeyPath();
  *(v0 + 32) = sub_2557507B0();
  return v0;
}

unint64_t sub_2556692F4()
{
  result = qword_27F7BE228;
  if (!qword_27F7BE228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE228);
  }

  return result;
}

unint64_t SettingsKey.rawValue.getter()
{
  result = 0x5F4F545F45564153;
  switch(*v0)
  {
    case 1:
    case 0xC:
    case 0xE:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x52544E455F444441;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD00000000000001DLL;
      break;
    case 0x10:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
      result = 0xD000000000000019;
      break;
    case 0x12:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2556695CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  if (qword_27F7BD648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCE8;
  *(v0 + 32) = qword_27F7BDCE8;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD6A8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD48;
  *(v0 + 48) = qword_27F7BDD48;
  v8 = qword_27F7BD620;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDCC0;
  *(v0 + 56) = qword_27F7BDCC0;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v11 = v10;
  v12 = sub_255750370();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  qword_27F7BDD50 = v13;
}

uint64_t sub_255669798(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_255669870(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MergeableAppStorageTransformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t ProtectedData.state.getter@<X0>(char *a1@<X8>)
{
  result = MKBGetDeviceLockState();
  v3 = result == 2;
  if (result == 1)
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

void static EntriesSortOrder.timeline.getter(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_255750180();
  v4 = [v2 stringForKey_];

  v6 = 0;
  if (v4)
  {
    sub_2557501B0();

    v5 = sub_255750CD0();

    if (v5 == 1)
    {
      v6 = 1;
    }
  }

  *a1 = v6;
}

id static JournalEntryMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_255669A88(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_255669AEC()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  strcpy((v0 + 32), "deletedOnDate");
  *(v0 + 46) = -4864;
  result = sub_255750750();
  qword_27F7BDD40 = result;
  return result;
}

void sub_255669BF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_255750180();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27F7BFA00 = v2;
}

id static JournalEntryAssetMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t type metadata accessor for PhotoLibraryAssetMetadata(uint64_t a1)
{
  result = qword_27F7BE528;
  if (!qword_27F7BE528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255669DC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_25574F860();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t MergeableEntryAttributes.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v139 = a1;
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  MEMORY[0x28223BE20](v3 - 8);
  v114 = (&v106 - v4);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v110 = *(v113 - 8);
  v5 = MEMORY[0x28223BE20](v113);
  v108 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v134 = *(v8 - 8);
  v135 = v8;
  MEMORY[0x28223BE20](v8);
  v112 = &v106 - v9;
  v10 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v117 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v118 = *(v119 - 8);
  v13 = MEMORY[0x28223BE20](v119);
  v121 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v116 = &v106 - v16;
  MEMORY[0x28223BE20](v15);
  v111 = &v106 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v124 = *(v123 - 8);
  v18 = MEMORY[0x28223BE20](v123);
  v122 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v106 - v21;
  MEMORY[0x28223BE20](v20);
  v115 = &v106 - v22;
  v138 = sub_25574F860();
  v140 = *(v138 - 8);
  v23 = MEMORY[0x28223BE20](v138);
  v109 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v130 = (&v106 - v25);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v141 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v126 = (&v106 - v26);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v27 = MEMORY[0x28223BE20](v142);
  v129 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v106 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v106 - v32;
  v128 = (&v106 - v32);
  v137 = type metadata accessor for MergeableEntryAttributes(0);
  v34 = &a2[v137[6]];
  v35 = sub_25574F0D0();
  v36 = *(*(v35 - 8) + 56);
  v36(v33, 1, 1, v35);
  v136 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  sub_25574FD10();
  sub_25574FD10();
  sub_25574F850();
  v37 = *(v11 + 28);
  v36(v31, 1, 1, v35);
  v38 = v129;
  sub_255663294(v31, v129, &unk_27F7BED20, &unk_2557551D0);
  v125 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v31, &unk_27F7BED20, &unk_2557551D0);
  v127 = *(v11 + 40);
  sub_25574F850();
  v39 = v126;
  v40 = v131;
  (*(v141 + 16))(v34, v126, v131);
  v41 = v128;
  sub_255663294(v128, v31, &unk_27F7BED20, &unk_2557551D0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v42 - 8) + 8))(&v34[v37], v42);
  sub_255663294(v31, v38, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  v43 = v31;
  v44 = v138;
  sub_255674B20(v43, &unk_27F7BED20, &unk_2557551D0);
  (*(v141 + 8))(v39, v40);
  sub_255674B20(v41, &unk_27F7BED20, &unk_2557551D0);
  v46 = v140 + 40;
  v45 = *(v140 + 40);
  v133 = v34;
  v45(&v34[v127], v130, v44);
  v47 = v137;
  v142 = v137[7];
  sub_25574FD10();
  v48 = v47[8];
  sub_25574F850();
  v49 = v132;
  v50 = sub_25574FE90();
  if (v49)
  {

    v51 = v133;
    v53 = v142;
    v52 = v143;
  }

  else
  {
    v130 = v45;
    v131 = v35;
    v129 = v46;
    v132 = v48;
    v54 = v124;
    v141 = v50;
    if (sub_25574FED0())
    {
      sub_2556D4CDC();
      v55 = v122;
      sub_25574F9B0();
      v56 = v143;
      (*(v54 + 32))(v143, v55, v123);
      v57 = v133;
    }

    else
    {
      sub_2556D4CDC();
      v58 = v120;
      sub_25574F8B0();
      v59 = *(v54 + 32);
      v60 = v115;
      v61 = v123;
      v59(v115, v58, v123);
      v56 = v143;
      v62 = v61;
      v57 = v133;
      v59(v143, v60, v62);
    }

    v63 = sub_25574FED0();
    v64 = v121;
    if (v63)
    {
      sub_25566464C();
      sub_25574F9B0();
      (*(v118 + 32))(&v56[v137[5]], v64, v119);
    }

    else
    {
      sub_25566464C();
      v65 = v116;
      sub_25574F8B0();
      v66 = *(v118 + 32);
      v67 = v111;
      v68 = v65;
      v69 = v119;
      v66(v111, v68, v119);
      v66(&v56[v137[5]], v67, v69);
    }

    v53 = v142;
    v70 = sub_25574FED0();
    v71 = v117;
    if (v70)
    {
      MergeableEntryAssetsPlacement.init(from:)(v70, v117);
      sub_255677F7C(v71, v57);
    }

    if (sub_25574FED0())
    {
      v72 = v112;
      sub_25574FC10();
      (*(v134 + 40))(&v56[v53], v72, v135);
    }

    v73 = sub_25574FEC0();
    v136 = 0;
    v75 = sub_2556771A4(v73);

    v145 = v75;
    sub_2556775F8(0x656C746974, 0xE500000000000000);

    sub_2556775F8(1954047348, 0xE400000000000000);

    sub_2556775F8(0x616C507465737361, 0xEE00746E656D6563);

    sub_2556775F8(0xD000000000000014, 0x80000002557538E0);

    v76 = v145;
    v77 = v145 + 56;
    v78 = 1 << *(v145 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & *(v145 + 56);
    v81 = (v78 + 63) >> 6;
    v128 = (v110 + 56);

    v82 = 0;
    v126 = MEMORY[0x277D84F90];
    v127 = v81;
    v131 = v77;
    while (2)
    {
      v83 = v82;
      if (!v80)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v82 = v83;
LABEL_24:
        v84 = __clz(__rbit64(v80));
        v80 &= v80 - 1;
        v85 = (*(v76 + 48) + ((v82 << 10) | (16 * v84)));
        v87 = *v85;
        v86 = v85[1];

        if (sub_25574FED0())
        {
          break;
        }

        v88 = v114;
        (*v128)(v114, 1, 1, v113);
        sub_255674B20(v88, &qword_27F7BDEE0, &unk_2557552C0);
        v83 = v82;
        v77 = v131;
        v81 = v127;
        if (!v80)
        {
          while (1)
          {
LABEL_21:
            v82 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              __break(1u);
              goto LABEL_40;
            }

            if (v82 >= v81)
            {
              break;
            }

            v80 = *(v77 + 8 * v82);
            ++v83;
            if (v80)
            {
              goto LABEL_24;
            }
          }

          v99 = v126;
          if (v126[2])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
            v100 = sub_255750C90();
          }

          else
          {
            v100 = MEMORY[0x277D84F98];
          }

          v52 = v143;
          v101 = v138;
          v102 = v123;
          v144 = v100;
          v103 = v136;
          sub_25567805C(v99, 1, &v144);
          if (v103)
          {

            v104 = v102;
            v53 = v142;
            goto LABEL_14;
          }

          v105 = v109;
          sub_25574F870();

          return v130(&v52[v132], v105, v101);
        }
      }

      v89 = v113;
      v90 = v114;
      *v114 = v87;
      v90[1] = v86;
      v91 = v90;

      v92 = v136;
      sub_25574FDA0();
      v136 = v92;
      if (!v92)
      {

        (*v128)(v91, 0, 1, v89);
        v93 = v107;
        sub_255675060(v91, v107, &qword_27F7BDEE8, &unk_25575B4D0);
        sub_255675060(v93, v108, &qword_27F7BDEE8, &unk_25575B4D0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_255698728(0, v126[2] + 1, 1, v126);
        }

        v94 = v110;
        v57 = v133;
        v96 = v126[2];
        v95 = v126[3];
        if (v96 >= v95 >> 1)
        {
          v98 = sub_255698728((v95 > 1), v96 + 1, 1, v126);
          v94 = v110;
          v126 = v98;
        }

        v97 = v126;
        v126[2] = v96 + 1;
        sub_255675060(v108, v97 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v96, &qword_27F7BDEE8, &unk_25575B4D0);
        v77 = v131;
        v81 = v127;
        continue;
      }

      break;
    }

LABEL_40:

    swift_bridgeObjectRelease_n();
    v52 = v143;
    v104 = v123;
    v57 = v133;
LABEL_14:
    (*(v54 + 8))(v52, v104);
    (*(v118 + 8))(&v52[v137[5]], v119);
    v44 = v138;
    v48 = v132;
    v51 = v57;
  }

  sub_25573439C(v51, type metadata accessor for MergeableEntryAssetsPlacement);
  (*(v134 + 8))(&v52[v53], v135);
  return (*(v140 + 8))(&v52[v48], v44);
}

uint64_t sub_25566B0F0()
{
  if (qword_27F7BD740 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25566B14C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA28, &qword_255758A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255758240;
  *(inited + 32) = 0x6E696C7265646E75;
  *(inited + 40) = 0xE900000000000065;
  v1 = sub_25566B388();
  *(inited + 48) = &type metadata for MergeableTextAttributeScope.UnderlineAttribute;
  *(inited + 56) = v1;
  strcpy((inited + 64), "strikethrough");
  *(inited + 78) = -4864;
  v2 = sub_25566B3DC();
  *(inited + 80) = &type metadata for MergeableTextAttributeScope.StrikethroughAttribute;
  *(inited + 88) = v2;
  *(inited + 96) = 0x726F6C6F63;
  *(inited + 104) = 0xE500000000000000;
  v3 = sub_25566B430();
  *(inited + 112) = &type metadata for MergeableTextAttributeScope.ColorAttribute;
  *(inited + 120) = v3;
  *(inited + 128) = 1953394534;
  *(inited + 136) = 0xE400000000000000;
  v4 = sub_25566B484();
  *(inited + 144) = &type metadata for MergeableTextAttributeScope.FontAttribute;
  *(inited + 152) = v4;
  *(inited + 160) = 0x6F75516B636F6C62;
  *(inited + 168) = 0xEA00000000006574;
  v5 = sub_25566B4D8();
  *(inited + 176) = &type metadata for MergeableTextAttributeScope.BlockQuoteAttribute;
  *(inited + 184) = v5;
  *(inited + 192) = 0x7473694C74786574;
  *(inited + 200) = 0xE900000000000073;
  v6 = sub_25566B52C();
  *(inited + 208) = &type metadata for MergeableTextAttributeScope.TextListsAttribute;
  *(inited + 216) = v6;
  *(inited + 224) = 0x6F69746365726964;
  *(inited + 232) = 0xE90000000000006ELL;
  v7 = sub_25566B580();
  *(inited + 240) = &type metadata for MergeableTextAttributeScope.WritingDirectionAttribute;
  *(inited + 248) = v7;
  *(inited + 256) = 0x6E656D6E67696C61;
  *(inited + 264) = 0xE900000000000074;
  v8 = sub_25566B5D4();
  *(inited + 272) = &type metadata for MergeableTextAttributeScope.AlignmentAttribute;
  *(inited + 280) = v8;
  *(inited + 288) = 0xD000000000000013;
  *(inited + 296) = 0x8000000255752AB0;
  v9 = sub_25566B628();
  *(inited + 304) = &type metadata for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = 0x8000000255752A90;
  v10 = sub_25566B67C();
  *(inited + 336) = &type metadata for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
  *(inited + 344) = v10;
  v11 = sub_25566BAC8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA30, &qword_255758A88);
  result = swift_arrayDestroy();
  qword_27F7BE8E0 = v11;
  return result;
}

unint64_t sub_25566B388()
{
  result = qword_27F7BE950;
  if (!qword_27F7BE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE950);
  }

  return result;
}

unint64_t sub_25566B3DC()
{
  result = qword_27F7BE960;
  if (!qword_27F7BE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE960);
  }

  return result;
}

unint64_t sub_25566B430()
{
  result = qword_27F7BE970;
  if (!qword_27F7BE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE970);
  }

  return result;
}

unint64_t sub_25566B484()
{
  result = qword_27F7BE930;
  if (!qword_27F7BE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE930);
  }

  return result;
}

unint64_t sub_25566B4D8()
{
  result = qword_27F7BE988;
  if (!qword_27F7BE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE988);
  }

  return result;
}

unint64_t sub_25566B52C()
{
  result = qword_27F7BE998;
  if (!qword_27F7BE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE998);
  }

  return result;
}

unint64_t sub_25566B580()
{
  result = qword_27F7BE9B8;
  if (!qword_27F7BE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9B8);
  }

  return result;
}

unint64_t sub_25566B5D4()
{
  result = qword_27F7BE9E0;
  if (!qword_27F7BE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9E0);
  }

  return result;
}

unint64_t sub_25566B628()
{
  result = qword_27F7BE910;
  if (!qword_27F7BE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE910);
  }

  return result;
}

unint64_t sub_25566B67C()
{
  result = qword_27F7BE8F0;
  if (!qword_27F7BE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE8F0);
  }

  return result;
}

uint64_t JournalEntryMO.displayDate.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25574F020();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v30[-v15];
  static EntriesSortOrder.timeline.getter(&v31);
  if (v31)
  {
    v17 = [v2 momentDateForSorting];
    if (v17)
    {
      v18 = v17;
      sub_25574EFF0();

      v19 = *(v5 + 32);
      v19(v14, v7, v4);
      (*(v5 + 56))(v14, 0, 1, v4);
      return (v19)(a1, v14, v4);
    }

    v24 = *(v5 + 56);
    v24(v14, 1, 1, v4);
    v25 = [v2 entryDate];
    if (v25)
    {
      v26 = v25;
      sub_25574EFF0();

      v27 = *(v5 + 32);
      v27(v11, v7, v4);
      v24(v11, 0, 1, v4);
      v27(a1, v11, v4);
      result = (*(v5 + 48))(v14, 1, v4);
    }

    else
    {
      v24(v11, 1, 1, v4);
      sub_25574F010();
      v29 = *(v5 + 48);
      if (v29(v11, 1, v4) != 1)
      {
        sub_255687634(v11);
      }

      result = (v29)(v14, 1, v4);
    }

    if (result != 1)
    {
      v28 = v14;
      return sub_255687634(v28);
    }
  }

  else
  {
    v21 = [v2 entryDate];
    if (v21)
    {
      v22 = v21;
      sub_25574EFF0();

      v23 = *(v5 + 32);
      v23(v16, v7, v4);
      (*(v5 + 56))(v16, 0, 1, v4);
      return (v23)(a1, v16, v4);
    }

    (*(v5 + 56))(v16, 1, 1, v4);
    sub_25574F010();
    result = (*(v5 + 48))(v16, 1, v4);
    if (result != 1)
    {
      v28 = v16;
      return sub_255687634(v28);
    }
  }

  return result;
}

unint64_t sub_25566BAC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF440, &qword_25575B108);
    v3 = sub_255750C90();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2556632FC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25566BC28()
{
  result = qword_27F7BE9D8;
  if (!qword_27F7BE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9D8);
  }

  return result;
}

uint64_t sub_25566BD2C()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0x6F7250736465656ELL;
  *(v0 + 40) = 0xEF676E6973736563;
  result = sub_255750750();
  qword_27F7BDD08 = result;
  return result;
}

void sub_25566BE94(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25566C048(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEBF0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_25566C048(319, &qword_27F7BE540, type metadata accessor for CGSize);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25566BFA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25566BFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25566C048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25566C09C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

NSAttributedString_optional __swiftcall Data.getAttributedString()()
{
  v2 = v1;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF3F8, &qword_25575B0D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v5 = *MEMORY[0x277D74098];
  *(inited + 32) = *MEMORY[0x277D74098];
  v6 = *MEMORY[0x277D74130];
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v7;
  *(inited + 40) = v6;
  v8 = v5;
  v9 = v6;
  v10 = sub_2556746D8(inited);
  swift_setDeallocating();
  sub_255674B20(inited + 32, &qword_27F7BF400, &qword_25575B0D8);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  sub_255674F54(v3, v2);
  v12 = sub_25566C818(v3, v2, v10, 0);
  sub_2556755A8(v3, v2);
  v14 = v12;
  result.value.super.isa = v14;
  result.is_nil = v13;
  return result;
}

id sub_25566C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = sub_25574EF80();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_25566CD08(&qword_27F7BDAE8, type metadata accessor for DocumentReadingOptionKey, &unk_2557548D0);
  v8 = sub_255750070();

  v13[0] = 0;
  v9 = [v5 initWithData:v7 options:v8 documentAttributes:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_25574ED90();

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_25566C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255755060;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_255666F5C();
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  result = sub_255750750();
  *a4 = result;
  return result;
}

uint64_t sub_25566CA68(uint64_t a1)
{
  v1 = sub_25574F0D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390, MEMORY[0x277CFB590]);
  sub_255750670();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_255750650();
  sub_2557506B0();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_255750710();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_2556CC0AC(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    LOBYTE(v8) = sub_255750100();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_2557506C0();
    sub_2557506B0();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_25566CD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25566CD50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25566CDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE250, &qword_255756600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MergeableEntryAssetsPlacement.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v125 = a2;
  v126 = a1;
  v2 = sub_25574F860();
  v116 = *(v2 - 8);
  v117 = v2;
  MEMORY[0x28223BE20](v2);
  v100 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  MEMORY[0x28223BE20](v4 - 8);
  v104 = (&v95 - v5);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v101 = *(v103 - 8);
  v6 = MEMORY[0x28223BE20](v103);
  v99 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v119 = *(v9 - 8);
  v120 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v105 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v95 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v109 = &v95 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v106 = &v95 - v19;
  MEMORY[0x28223BE20](v18);
  v110 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v122 = *(v21 - 8);
  v123 = v21;
  MEMORY[0x28223BE20](v21);
  v115 = &v95 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v112 = *(v23 - 8);
  v113 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v114 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v111 = &v95 - v27;
  MEMORY[0x28223BE20](v26);
  v108 = &v95 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v95 - v33;
  v35 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v36 = *(v35 + 20);
  v37 = sub_25574F0D0();
  (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
  sub_255663294(v34, v32, &unk_27F7BED20, &unk_2557551D0);
  v38 = sub_255663D60();
  v121 = v36;
  v39 = v125;
  sub_25574F340();
  sub_255674B20(v34, &unk_27F7BED20, &unk_2557551D0);
  v124 = v35;
  v40 = *(v35 + 32);
  sub_25574F850();
  v41 = v118;
  v42 = sub_25574FE90();
  if (v41)
  {

    v43 = 0;
    v44 = 0;
    v46 = v119;
    v45 = v120;
LABEL_3:
    (*(v122 + 8))(&v39[v121], v123);
    if (v43)
    {
      (*(v46 + 8))(&v39[*(v124 + 24)], v45);
    }

    if (v44)
    {
      (*(v46 + 8))(&v39[*(v124 + 28)], v45);
    }

    return (*(v116 + 8))(&v39[v40], v117);
  }

  else
  {
    v48 = v42;
    v97 = v38;
    v49 = v114;
    v50 = v115;
    v118 = v37;
    if (sub_25574FED0())
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v51 = v49;
      sub_25574F640();
      v52 = v120;
      v96 = v40;
      v95 = v29;
      (*(v112 + 32))(v39, v51, v113);
    }

    else
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v53 = v111;
      sub_25574F560();
      v96 = v40;
      v95 = v29;
      v54 = v113;
      v55 = *(v112 + 32);
      v56 = v108;
      v55(v108, v53, v113);
      v55(v39, v56, v54);
      v52 = v120;
    }

    if (sub_25574FED0())
    {
      sub_25574F420();
      v57 = v48;
      (*(v122 + 40))(&v39[v121], v50, v123);
    }

    else
    {
      v57 = v48;
    }

    v58 = v119;
    v59 = v96;
    v60 = sub_25574FED0();
    v61 = v110;
    if (v60)
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v61 = v109;
      sub_25574FC10();
      v62 = *(v58 + 32);
    }

    else
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v63 = v106;
      sub_25574FB80();
      v62 = *(v58 + 32);
      v62(v61, v63, v52);
    }

    v62(&v39[*(v124 + 24)], v61, v52);
    v64 = sub_25574FED0();
    v65 = v107;
    if (v64)
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v65 = v105;
      sub_25574FC10();
    }

    else
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v66 = v102;
      sub_25574FB80();
      v62(v65, v66, v52);
    }

    v62(&v125[*(v124 + 28)], v65, v52);
    v67 = sub_25574FEC0();
    v118 = v57;
    v68 = sub_2556771A4(v67);

    v128 = v68;
    sub_2556775F8(0x6573734164697267, 0xEC00000073444974);

    sub_2556775F8(0x657373416D696C73, 0xEB00000000444974);

    sub_2556775F8(0x73416E6564646968, 0xEE00734449746573);

    sub_2556775F8(0x73417361766E6163, 0xEE00734449746573);

    v69 = v128 + 56;
    v70 = 1 << v128[32];
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v128 + 7);
    v73 = (v70 + 63) >> 6;
    v114 = (v101 + 56);
    v115 = v128;

    v74 = 0;
    v111 = MEMORY[0x277D84F90];
    while (1)
    {
      v75 = v74;
      if (!v72)
      {
        break;
      }

LABEL_27:
      v76 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v77 = (*(v115 + 6) + ((v74 << 10) | (16 * v76)));
      v79 = *v77;
      v78 = v77[1];

      if (sub_25574FED0())
      {
        v81 = v103;
        v110 = *(v103 + 48);
        v82 = v104;
        *v104 = v79;
        v82[1] = v78;
        v83 = v82;

        sub_25574FDA0();

        (*v114)(v83, 0, 1, v81);
        v84 = v98;
        sub_25569AA68(v83, v98);
        sub_25569AA68(v84, v99);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_255698728(0, *(v111 + 2) + 1, 1, v111);
        }

        v85 = v101;
        v87 = *(v111 + 2);
        v86 = *(v111 + 3);
        v88 = v99;
        if (v87 >= v86 >> 1)
        {
          v90 = sub_255698728((v86 > 1), v87 + 1, 1, v111);
          v85 = v101;
          v111 = v90;
          v88 = v99;
        }

        v89 = v111;
        *(v111 + 2) = v87 + 1;
        sub_25569AA68(v88, v89 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v87);
      }

      else
      {

        v80 = v104;
        (*v114)(v104, 1, 1, v103);
        sub_255674B20(v80, &qword_27F7BDEE0, &unk_2557552C0);
      }
    }

    while (1)
    {
      v74 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        v39 = v125;
        v46 = v119;
        v45 = v120;
        v40 = v59;
        v43 = 1;
        v44 = 1;
        (*(v112 + 8))(v125, v113);
        goto LABEL_3;
      }

      if (v74 >= v73)
      {
        break;
      }

      v72 = *&v69[8 * v74];
      ++v75;
      if (v72)
      {
        goto LABEL_27;
      }
    }

    v91 = v111;
    if (*(v111 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
      v92 = sub_255750C90();
    }

    else
    {
      v92 = MEMORY[0x277D84F98];
    }

    v93 = v125;
    v94 = v100;
    v127 = v92;
    sub_25567797C(v91, 1, &v127);
    sub_25574F870();

    return (*(v116 + 40))(&v93[v59], v94, v117);
  }
}

uint64_t JournalEntryMO.assetsArray.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE828, &qword_255757FE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22[-1] - v2;
  v4 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = &type metadata for JournalFeatureFlags;
  v22[4] = sub_255663AC0();
  LOBYTE(v22[0]) = 8;
  v8 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (v8)
  {
    JournalEntryMO.mergeableAssetPlacement.getter(v3);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_255678A44(v3, v7);
      v18 = JournalEntryMO.assetsArrayUnsorted.getter();
      MEMORY[0x28223BE20](v18);
      *(&v21 - 2) = v7;

      v22[0] = sub_255678FD8(v19);
      sub_255678F28(sub_2556794E0, (&v21 - 4));

      v20 = v22[0];
      sub_25567906C(v7);
      return v20;
    }

    sub_255674B20(v3, &qword_27F7BE828, &qword_255757FE0);
  }

  JournalEntryMO.assetsArrayUnsorted.getter();
  v9 = [v0 assetOrdering];
  v10 = MEMORY[0x277D84F98];
  if (v9)
  {
    v11 = v9;
    v12 = sub_25574EF90();
    v14 = v13;

    v15 = sub_25567A554(v12, v14);
    sub_2556755A8(v12, v14);
    if (v15)
    {
      v10 = v15;
    }
  }

  v22[0] = sub_255678FD8(v16);
  sub_25567A7F8(v22, v10);

  swift_bridgeObjectRelease_n();
  return v22[0];
}

uint64_t JournalEntryMO.mergeableAssetPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = [v2 mergeableAttributes];
  if (v11)
  {
    v12 = v11;
    sub_255678960(v11 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v10, type metadata accessor for MergeableEntryAttributes);

    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_255674B20(v10, &qword_27F7BE7E8, &unk_255757F00);
    v13 = 1;
  }

  else
  {
    sub_255678960(v10, v7, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v10, &qword_27F7BE7E8, &unk_255757F00);
    sub_255678960(&v7[*(v4 + 24)], a1, type metadata accessor for MergeableEntryAssetsPlacement);
    sub_2556C0F6C(v7, type metadata accessor for MergeableEntryAttributes);
    v13 = 0;
  }

  v14 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

void sub_25566E4A4(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BEBF0, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_25566E80C(319);
      if (v3 <= 0x3F)
      {
        sub_25566BFA8(319, &qword_27F7BEC00, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_25566E73C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id static JournalEntryAssetFileAttachmentMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_25566E664()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  strcpy((v0 + 32), "isBeingEdited");
  *(v0 + 46) = -4864;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  strcpy((v0 + 72), "isBeingEdited");
  *(v0 + 86) = -4864;
  result = sub_255750750();
  qword_27F7BDD18 = result;
  return result;
}

void sub_25566E73C(uint64_t a1)
{
  if (!qword_27F7BEC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEB60, &qword_255758B70);
    v1 = sub_255750950();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BEC08);
    }
  }
}

id static SyncDataMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_25566E80C(uint64_t a1)
{
  if (!qword_27F7BDC68)
  {
    sub_25574F020();
    v1 = sub_255750950();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BDC68);
    }
  }
}

uint64_t sub_25566E864(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25566E8D0()
{
  result = qword_27F7BE9B0;
  if (!qword_27F7BE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9B0);
  }

  return result;
}

uint64_t sub_25566EA00@<X0>(uint64_t *a1@<X8>)
{
  result = AssetSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssetSource.rawValue.getter()
{
  result = 0x6974736567677573;
  switch(*v0)
  {
    case 1:
      v2 = 0x50616964656DLL;
      goto LABEL_8;
    case 2:
      v2 = 0x506567616D69;
      goto LABEL_8;
    case 3:
      return 0x69506172656D6163;
    case 4:
      v2 = 0x506F69647561;
LABEL_8:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6369000000000000;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x6568536572616873;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6C616E7265747865;
      break;
    case 0xA:
      result = 0x6E776F6E6B6E75;
      break;
    case 0xB:
      result = 0x43676E6977617264;
      break;
    case 0xC:
      result = 0x6974616D6F747561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AssetType.rawValue.getter()
{
  result = 0x6F746F6870;
  switch(*v0)
  {
    case 1:
      result = 0x746F68506576696CLL;
      break;
    case 2:
      result = 0x6F65646976;
      break;
    case 3:
      result = 0x636973756DLL;
      break;
    case 4:
      result = 0x74736163646F70;
      break;
    case 5:
      result = 1802465122;
      break;
    case 6:
      result = 0x6F69647561;
      break;
    case 7:
      result = 0x7469736976;
      break;
    case 8:
      result = 0x6E695069746C756DLL;
      break;
    case 9:
      result = 0x4D636972656E6567;
      break;
    case 0xA:
      result = 1802398060;
      break;
    case 0xB:
      result = 0x746361746E6F63;
      break;
    case 0xC:
      result = 0x4974756F6B726F77;
      break;
    case 0xD:
      result = 0x5274756F6B726F77;
      break;
    case 0xE:
      result = 0x697463656C666572;
      break;
    case 0xF:
      result = 0x4D664F6574617473;
      break;
    case 0x10:
      result = 0x63416E6F69746F6DLL;
      break;
    case 0x11:
      result = 0x7261506472696874;
      break;
    case 0x12:
      result = 0x6C6F686563616C70;
      break;
    case 0x13:
      result = 0x76456B6165727473;
      break;
    case 0x14:
      result = 0x676E6977617264;
      break;
    case 0x15:
      result = 0x69747465666E6F63;
      break;
    case 0x16:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for EntrySource(uint64_t a1)
{
  result = qword_27F7BECE0;
  if (!qword_27F7BECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25566EF10(uint64_t a1)
{
  sub_25566EF68(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_25566EF68(uint64_t a1)
{
  if (!qword_27F7BECF0)
  {
    sub_25574F0D0();
    sub_25574F020();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7BECF0);
    }
  }
}

uint64_t sub_25566F090()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCB0 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for AssetPlacement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25566F1AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25566F25C@<X0>(uint64_t *a1@<X8>)
{
  result = AssetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25566F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t Data.asObject<A>(of:)@<X0>(uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  sub_25574EB00();
  swift_allocObject();
  sub_25574EAF0();
  sub_25574EAE0();

  v7 = *(*(a3 - 8) + 56);

  return v7(a5, 0, 1, a3);
}

unint64_t sub_25566F59C()
{
  result = qword_27F7BE968;
  if (!qword_27F7BE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE968);
  }

  return result;
}

uint64_t sub_25566F63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SRGBColor.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v70 = sub_25574FB30();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for SRGBColor(0) + 32);
  v71 = a2;
  v69 = v17;
  sub_25574FB20();
  v18 = sub_25574FEE0();
  if (v2)
  {

    v24 = v68;
    v25 = v69;
    v26 = v70;
    return (*(v24 + 8))(&v71[v25], v26);
  }

  else
  {
    v19 = v18;
    v66 = v9;
    v67 = a1;
    v64 = v14;
    v65 = v12;
    v20 = v8;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *v71 = v21;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *(v71 + 1) = v22;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *(v71 + 2) = v23;
    v28 = sub_25574FF00();
    v62 = v7;
    if (v28)
    {
      sub_255750550();
      v59 = v16;
    }

    else
    {
      v59 = v16;
      sub_255750540();
    }

    *(v71 + 3) = v29;
    v63 = v19;
    v30 = sub_25574FEF0();
    v31 = sub_255676334(v30);

    v73 = v31;
    sub_255676690(1);
    sub_255676690(2);
    sub_255676690(3);
    sub_255676690(4);
    v32 = v73 + 56;
    v33 = 1 << *(v73 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v73 + 56);
    v36 = (v33 + 63) >> 6;
    v61 = (v66 + 56);
    v37 = v73;

    v38 = 0;
    v60 = MEMORY[0x277D84F90];
    while (1)
    {
      v39 = v38;
      if (!v35)
      {
        break;
      }

LABEL_23:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = *(*(v37 + 48) + ((v38 << 9) | (8 * v40)));
      if (sub_25574FF00())
      {
        v58 = v20;
        v43 = v62;
        *v62 = v41;
        sub_25574F310();
        (*v61)(v43, 0, 1, v58);
        v44 = v43;
        v45 = v64;
        sub_2556AA69C(v44, v64);
        sub_2556AA69C(v45, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_25569874C(0, v60[2] + 1, 1, v60);
        }

        v46 = v65;
        v47 = v66;
        v49 = v60[2];
        v48 = v60[3];
        if (v49 >= v48 >> 1)
        {
          v60 = sub_25569874C((v48 > 1), v49 + 1, 1, v60);
          v46 = v65;
          v47 = v66;
        }

        v50 = v60;
        v60[2] = v49 + 1;
        sub_2556AA69C(v46, v50 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v49);
      }

      else
      {
        v42 = v62;
        (*v61)(v62, 1, 1, v20);
        sub_255674B20(v42, &qword_27F7BE3F8, &qword_25575C9F0);
      }
    }

    while (1)
    {
      v38 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);

        v25 = v69;
        v26 = v70;
        v24 = v68;
        return (*(v24 + 8))(&v71[v25], v26);
      }

      if (v38 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v38);
      ++v39;
      if (v35)
      {
        goto LABEL_23;
      }
    }

    v51 = v60;
    if (v60[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v52 = sub_255750C90();
    }

    else
    {
      v52 = MEMORY[0x277D84F98];
    }

    v54 = v69;
    v53 = v70;
    v55 = v68;
    v72 = v52;
    sub_255676780(v51, 1, &v72);
    v56 = v59;
    sub_25574FB40();

    return (*(v55 + 40))(&v71[v54], v56, v53);
  }
}

uint64_t SRGBColor.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v4);
  v5 = v1[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v5);
  type metadata accessor for SRGBColor(0);
  sub_25574FB30();
  sub_255668360(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

void sub_25566FE44(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_255750E50();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for JournalEntryAssetMO();
        v9 = sub_2557503E0();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_255746010(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_25566FF58(0, v5, 1, a1);
  }
}

void sub_25566FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t PhotoLibraryAssetMetadata.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhotoLibraryAssetMetadata(0) + 20);

  return sub_2556700F4(v3, a1);
}

uint64_t sub_2556700F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255670178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_255670254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25567031C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t getEnumTagSinglePayload for AssetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

JournalShared::AssetType_optional JournalEntryAssetMO.type.getter()
{
  v1 = [v0 assetType];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2557501B0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = v3;
  v7 = v5;

  return AssetType.init(rawValue:)(*&v6);
}

JournalShared::AssetType_optional __swiftcall AssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750ED0();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

JournalShared::AssetSource_optional __swiftcall AssetSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetCatalogColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t FileStoreConfiguration.assetStorageDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574EE20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25574EF10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for FileStoreConfiguration(0) + 24)))
  {
    v13[1] = a1;
    v11 = *(v4 + 104);
    v11(v6, *MEMORY[0x277CC91D8], v3);
    sub_255663E98();
    sub_25574EEF0();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_25574EE50();
    v11 = *(v4 + 104);
  }

  v13[2] = 0x656D686361747441;
  v13[3] = 0xEB0000000073746ELL;
  v11(v6, *MEMORY[0x277CC91C0], v3);
  sub_255663E98();
  sub_25574EF00();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2556709F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255670AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_255670B14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_25574F860();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_255670D1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_255670F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PhotoLibraryAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE508, &qword_255757040);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for PhotoLibraryAssetMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_25567159C();
  v14 = v9;
  sub_255750FE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    v15 = v6;
    v17 = v43;
    v16 = v44;
    LOBYTE(v46) = 0;
    v18 = v14;
    *v12 = sub_255750D00();
    v12[1] = v19;
    sub_25574F020();
    LOBYTE(v46) = 1;
    sub_255671778(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_255750D40();
    sub_2556719B8(v15, v12 + v10[5]);
    LOBYTE(v46) = 2;
    v20 = sub_255750D00();
    v21 = (v12 + v10[6]);
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v46) = 3;
    v23 = sub_255750D20();
    v24 = v12 + v10[7];
    *v24 = v23;
    v24[8] = v25 & 1;
    LOBYTE(v46) = 4;
    v26 = sub_255750D20();
    v27 = v12 + v10[8];
    *v27 = v26;
    v27[8] = v28 & 1;
    type metadata accessor for CGSize(0);
    v48 = 5;
    sub_255671778(&qword_27F7BE510, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_255750D40();
    v29 = v47;
    v30 = v12 + v10[9];
    *v30 = v46;
    v30[16] = v29;
    LOBYTE(v46) = 6;
    v31 = sub_255750D00();
    v32 = (v12 + v10[10]);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v46) = 7;
    v34 = sub_255750D00();
    v35 = (v12 + v10[11]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v46) = 8;
    v37 = sub_255750D00();
    v39 = v38;
    (*(v17 + 8))(v18, v16);
    v40 = (v12 + v10[12]);
    *v40 = v37;
    v40[1] = v39;
    sub_255671A3C(v12, v42);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_255671AF4(v12);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25567159C()
{
  result = qword_27F7BE4F8;
  if (!qword_27F7BE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE4F8);
  }

  return result;
}

uint64_t sub_2556715F8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6564497465737361;
    v6 = 0x6D614E6563616C70;
    if (a1 != 2)
    {
      v6 = 0x656475746974616CLL;
    }

    if (a1)
    {
      v5 = 1702125924;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7243657261757173;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x64757469676E6F6CLL;
    if (a1 != 4)
    {
      v3 = 1702521203;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_255671730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255671778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556717C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255671808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255671850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255671898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556718E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255671928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255671970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2556719B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255671A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255671AA0()
{
  result = qword_27F7BE550;
  if (!qword_27F7BE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE550);
  }

  return result;
}

uint64_t sub_255671AF4(uint64_t a1)
{
  v2 = type metadata accessor for PhotoLibraryAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotoLibraryAssetMetadata.placeName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhotoLibraryAssetMetadata(0) + 24));

  return v1;
}

unint64_t sub_255671B94()
{
  result = qword_27F7BE558;
  if (!qword_27F7BE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE558);
  }

  return result;
}

uint64_t sub_255671C40()
{
  v0 = AssetType.rawValue.getter();
  v2 = v1;
  if (v0 == AssetType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_255750EB0();
  }

  return v5 & 1;
}

uint64_t MergeableEntryAttributes.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAttributes(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MergeableFollowUpPromptAttachment(uint64_t a1)
{
  result = qword_27F7BF9E8;
  if (!qword_27F7BF9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255671E40(uint64_t a1)
{
  sub_25566BFA8(319, &qword_27F7BE538, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25566C09C(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEBF0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_25566BFA8(319, &unk_27F7BEC28, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BEEA0, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_25566BFA8(319, &qword_27F7C0320, &type metadata for AssetSource);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_255672020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MergeableFont.Traits(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25574FB30();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t MultiPinMapAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02B0, &qword_25575ECA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255672BD8();
  sub_255750FE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0298, &qword_25575ECA0);
    v22 = 0;
    sub_255672E04(&qword_27F7C02B8, &qword_27F7C02C0, &protocol conformance descriptor for VisitAssetMetadata, MEMORY[0x277D83978]);
    sub_255750D40();
    v18 = v19;
    v22 = 1;
    sub_255675208();
    sub_255750D40();
    v11 = v19;
    v10 = v20;
    sub_2556A15B8(0, 0xF000000000000000);
    LOBYTE(v19) = 2;
    v21 = sub_255750D10();
    LOBYTE(v19) = 3;
    v14 = sub_255750D30();
    v15 = *(v6 + 8);
    HIDWORD(v17) = v16;
    v15(v8, v5);
    *a2 = v18;
    *(a2 + 8) = v11;
    *(a2 + 16) = v10;
    *(a2 + 24) = v21;
    *(a2 + 32) = v14;
    *(a2 + 40) = BYTE4(v17) & 1;

    sub_25567625C(v11, v10);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v12 = v11;
    v13 = v10;
  }

  return sub_2556A15B8(v12, v13);
}

void sub_255672464(uint64_t a1)
{
  sub_255672778();
  if (v1 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFEF8, &qword_27F7BFE68, &qword_25575E0E0);
    if (v2 <= 0x3F)
    {
      sub_25566E80C(319);
      if (v3 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BFF00, &qword_27F7BFE80, &qword_25575E0E8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25567255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_255672600(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_255750950();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_255672688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MergeableFont.Traits(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25574FB30();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void sub_255672778()
{
  if (!qword_27F7BEBF0)
  {
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BEBF0);
    }
  }
}

uint64_t sub_255672800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_25574FB30();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_255672878()
{
  result = qword_27F7C0368;
  if (!qword_27F7C0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0368);
  }

  return result;
}

uint64_t sub_2556728E0(uint64_t a1)
{
  result = sub_25574F0D0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for LinkAssetMetadata(uint64_t a1)
{
  result = qword_27F7BDC58;
  if (!qword_27F7BDC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2556729B4()
{
  result = qword_27F7C0370;
  if (!qword_27F7C0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0370);
  }

  return result;
}

void sub_255672A08(uint64_t a1)
{
  sub_25566BFF4(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_25566BFF4(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_255672AD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE078, &qword_255755C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_255672BD8()
{
  result = qword_27F7C0290;
  if (!qword_27F7C0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0290);
  }

  return result;
}

CGColorRef SRGBColor.cgColor.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v20 = MEMORY[0x277D84F90];
  sub_255672DE4(0, 4, 0);
  v5 = v20;
  v7 = *(v20 + 16);
  v6 = *(v20 + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    sub_255672DE4((v6 > 1), v7 + 1, 1);
    v5 = v20;
    v6 = *(v20 + 24);
    v8 = v6 >> 1;
  }

  *(v5 + 16) = v9;
  *(v5 + 8 * v7 + 32) = v2;
  v10 = v7 + 2;
  if (v8 < v10)
  {
    sub_255672DE4((v6 > 1), v10, 1);
    v5 = v20;
  }

  *(v5 + 16) = v10;
  *(v5 + 8 * v9 + 32) = v1;
  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    sub_255672DE4((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  *(v20 + 8 * v12 + 32) = v4;
  v15 = *(v20 + 24);
  v16 = v12 + 2;
  if (v16 > (v15 >> 1))
  {
    sub_255672DE4((v15 > 1), v16, 1);
    v14 = v20;
  }

  *(v14 + 16) = v16;
  v17 = (v14 + 32);
  *(v14 + 32 + 8 * v13) = v3;
  if (qword_27F7BD6E0 != -1)
  {
    swift_once();
    v17 = (v14 + 32);
  }

  v18 = CGColorCreate(qword_27F7BE3A0, v17);

  return v18;
}

char *sub_255672DE4(char *a1, int64_t a2, char a3)
{
  result = sub_255672AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_255672E04(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C0298, &qword_25575ECA0);
    sub_255671970(a2, type metadata accessor for VisitAssetMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255672EA0()
{
  v1 = 0x6144737469736976;
  v2 = 0x6D696C537369;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697369766572;
  }

  if (*v0)
  {
    v1 = 0x72656D614370616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _s13JournalShared14MergeableColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_25574F320();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v47 - v6;
  v7 = type metadata accessor for SRGBColor(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MergeableColor(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v47 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C8, &unk_255756A40);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v47 - v21;
  v23 = &v47 + *(v20 + 56) - v21;
  sub_25567352C(a1, &v47 - v21, type metadata accessor for MergeableColor);
  sub_25567352C(v52, v23, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25567352C(v22, v18, type metadata accessor for MergeableColor);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_255673758(v18, type metadata accessor for SRGBColor);
LABEL_13:
      sub_255674B20(v22, &qword_27F7BE3C8, &unk_255756A40);
LABEL_24:
      v31 = 0;
      return v31 & 1;
    }

    sub_255673644(v23, v9, type metadata accessor for SRGBColor);
    if (*v18 == *v9 && v18[1] == v9[1] && v18[2] == v9[2] && v18[3] == v9[3])
    {
      v44 = sub_25574FAF0();
      sub_255673758(v9, type metadata accessor for SRGBColor);
      if (v44)
      {
        sub_255673758(v18, type metadata accessor for SRGBColor);
        sub_255673758(v22, type metadata accessor for MergeableColor);
        v31 = 1;
        return v31 & 1;
      }
    }

    else
    {
      sub_255673758(v9, type metadata accessor for SRGBColor);
    }

    sub_255673758(v18, type metadata accessor for SRGBColor);
LABEL_23:
    sub_255673758(v22, type metadata accessor for MergeableColor);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25567352C(v22, v13, type metadata accessor for MergeableColor);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v50 + 8))(&v13[v32], v51);
      goto LABEL_13;
    }

    v33 = *v13;
    v34 = *v23;
    v36 = v50;
    v35 = v51;
    v37 = *(v50 + 32);
    v38 = &v13[v32];
    v39 = v49;
    v37(v49, v38, v51);
    v40 = &v23[v32];
    v41 = v48;
    v37(v48, v40, v35);
    if (v33 == v34)
    {
      v42 = v39;
      v31 = sub_25574F2F0();
      v43 = *(v36 + 8);
      v43(v41, v35);
      v43(v42, v35);
      goto LABEL_10;
    }

    v45 = *(v36 + 8);
    v45(v41, v35);
    v45(v39, v35);
    goto LABEL_23;
  }

  sub_25567352C(v22, v16, type metadata accessor for MergeableColor);
  v26 = *v16;
  v25 = *(v16 + 1);
  v27 = v16[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2556AA66C(v26, v25, v27);
    goto LABEL_13;
  }

  v28 = *v23;
  v29 = *(v23 + 1);
  v30 = v23[16];
  v56 = v26;
  v57 = v25;
  v58 = v27;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  sub_2556AA9BC();
  v31 = sub_25574F520();
  sub_2556AA66C(v28, v29, v30);
  sub_2556AA66C(v26, v25, v27);
LABEL_10:
  sub_255673758(v22, type metadata accessor for MergeableColor);
  return v31 & 1;
}

uint64_t sub_25567352C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t storeEnumTagSinglePayload for LinkAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255673644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for LinkAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_255673758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t VisitAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v59 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v59 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0278, &qword_25575EC90);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = v59 - v12;
  v14 = type metadata accessor for VisitAssetMetadata(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_255674878();
  v65 = v13;
  v18 = v67;
  sub_255750FE0();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v20 = v64;
  v19 = v65;
  v62 = v14;
  v67 = v16;
  LOBYTE(v69) = 0;
  v21 = v66;
  v22 = sub_255750D00();
  v24 = v67;
  *v67 = v22;
  v24[1] = v25;
  LOBYTE(v69) = 1;
  v24[2] = sub_255750D00();
  v24[3] = v26;
  LOBYTE(v69) = 2;
  v60 = 0;
  v27 = sub_255750D00();
  v61 = 0;
  v28 = v62;
  v24[4] = v27;
  v24[5] = v29;
  v59[2] = sub_25574F020();
  LOBYTE(v69) = 3;
  v59[1] = sub_255671970(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v30 = v61;
  sub_255750D40();
  v61 = v30;
  if (v30)
  {
    (*(v20 + 8))(v19, v21);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
LABEL_8:
    v36 = v24;
    goto LABEL_9;
  }

  sub_255675060(v11, v24 + v28[7], &qword_27F7BEB40, &unk_255754E40);
  LOBYTE(v69) = 4;
  v35 = v61;
  sub_255750D40();
  v61 = v35;
  if (v35)
  {
    (*(v20 + 8))(v19, v21);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 1;
    goto LABEL_8;
  }

  sub_255675060(v9, v24 + v28[8], &qword_27F7BEB40, &unk_255754E40);
  LOBYTE(v69) = 5;
  v39 = v61;
  sub_255750D40();
  v61 = v39;
  v36 = v24;
  if (v39)
  {
    (*(v20 + 8))(v19, v21);
    v33 = 0;
    v34 = 0;
    v31 = 1;
    v32 = 1;
    goto LABEL_9;
  }

  sub_255675060(v6, v24 + v28[9], &qword_27F7BEB40, &unk_255754E40);
  LOBYTE(v69) = 6;
  v40 = v61;
  v41 = sub_255750D20();
  if (v40)
  {
    v61 = v40;
LABEL_28:
    (*(v20 + 8))(v19, v21);
    v34 = 0;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    goto LABEL_9;
  }

  v43 = v24 + v28[10];
  *v43 = v41;
  v43[8] = v42 & 1;
  LOBYTE(v69) = 7;
  v44 = sub_255750D20();
  v61 = 0;
  v45 = v24 + v28[11];
  *v45 = v44;
  v45[8] = v46 & 1;
  v70 = 8;
  sub_255675208();
  v47 = v61;
  sub_255750D40();
  v61 = v47;
  if (v47)
  {
    goto LABEL_28;
  }

  *(v24 + v28[12]) = v69;
  v70 = 9;
  v48 = v61;
  sub_255750D40();
  v61 = v48;
  if (!v48)
  {
    *(v67 + v62[13]) = v69;
    LOBYTE(v69) = 10;
    v49 = sub_255750D10();
    v61 = 0;
    *(v67 + v62[14]) = v49;
    LOBYTE(v69) = 11;
    v50 = sub_255750D20();
    v61 = 0;
    v51 = v67 + v62[15];
    *v51 = v50;
    v51[8] = v52 & 1;
    LOBYTE(v69) = 12;
    v53 = sub_255750D20();
    v61 = 0;
    v54 = v67 + v62[16];
    *v54 = v53;
    v54[8] = v55 & 1;
    v70 = 13;
    sub_255675264();
    v56 = v61;
    sub_255750D40();
    v61 = v56;
    if (!v56)
    {
      (*(v20 + 8))(v65, v66);
      v57 = v63;
      v58 = v67;
      *(v67 + v62[17]) = v69;
      sub_255675414(v58, v57);
      __swift_destroy_boxed_opaque_existential_1(v68);
      return sub_2556754BC(v58);
    }

    (*(v20 + 8))(v65, v66);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v36 = v67;

    v28 = v62;
    sub_255674B20(v36 + v62[7], &qword_27F7BEB40, &unk_255754E40);
    sub_255674B20(v36 + v28[8], &qword_27F7BEB40, &unk_255754E40);
    sub_255674B20(v36 + v28[9], &qword_27F7BEB40, &unk_255754E40);
    v38 = 1;
    goto LABEL_20;
  }

  (*(v20 + 8))(v65, v66);
  v31 = 1;
  v32 = 1;
  v33 = 1;
  v34 = 1;
  v36 = v67;
  v28 = v62;
LABEL_9:
  v37 = v60;
  __swift_destroy_boxed_opaque_existential_1(v68);

  if (!v37)
  {
  }

  if (v31)
  {
    result = sub_255674B20(v36 + v28[7], &qword_27F7BEB40, &unk_255754E40);
    if (v32)
    {
LABEL_13:
      result = sub_255674B20(v36 + v28[8], &qword_27F7BEB40, &unk_255754E40);
      if ((v33 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      result = sub_255674B20(v36 + v28[9], &qword_27F7BEB40, &unk_255754E40);
      if ((v34 & 1) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else if (v32)
  {
    goto LABEL_13;
  }

  if (v33)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v34)
  {
    return result;
  }

LABEL_19:
  v38 = 0;
LABEL_20:
  result = sub_2556A15B8(*(v36 + v28[12]), *(v36 + v28[12] + 8));
  if (v38)
  {
    return sub_2556A15B8(*(v36 + v28[13]), *(v36 + v28[13] + 8));
  }

  return result;
}

uint64_t sub_2556740EC(uint64_t a1)
{
  v2 = type metadata accessor for MergeableEntryAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25567415C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for MergeableSize(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_25574FB30();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2556742E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t storeEnumTagSinglePayload for CloudKitSyncError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255674414()
{
  result = qword_27F7C0378;
  if (!qword_27F7C0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0378);
  }

  return result;
}

JournalShared::EntryDateSource_optional __swiftcall EntryDateSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2556744D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MergeableSize(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_25574FB30();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_255674660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_25574FB30();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_2556746D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF418, &qword_25575B0E0);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, &v11, &qword_27F7BF400, &qword_25575B0D8);
      v5 = v11;
      result = sub_255674870(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_255663374(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25567481C()
{
  result = qword_27F7C0380;
  if (!qword_27F7C0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0380);
  }

  return result;
}

unint64_t sub_255674878()
{
  result = qword_27F7C0260;
  if (!qword_27F7C0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0260);
  }

  return result;
}

uint64_t sub_2556748E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25574FB30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_255674984(uint64_t a1)
{
  v2 = sub_255750A80();

  return sub_255745334(a1, v2);
}

unint64_t sub_2556749C8(uint64_t a1)
{
  sub_2557501B0();
  sub_255750F80();
  sub_2557501F0();
  v2 = sub_255750FD0();

  return sub_255674DA0(a1, v2);
}

uint64_t sub_255674A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25574FB30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255674B20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_255674B9C(char a1)
{
  result = 0x6D614E6563616C70;
  switch(a1)
  {
    case 1:
      result = 2037672291;
      break;
    case 2:
      result = 0x6C50664F65707974;
      break;
    case 3:
      result = 0x6174537469736976;
      break;
    case 4:
      result = 0x646E457469736976;
      break;
    case 5:
      result = 0x4464657461657263;
      break;
    case 6:
      result = 0x656475746974616CLL;
      break;
    case 7:
      result = 0x64757469676E6F6CLL;
      break;
    case 8:
      result = 0x746144656C797473;
      break;
    case 9:
      result = 0x446D65744970616DLL;
      break;
    case 10:
      result = 0x6B726F577369;
      break;
    case 11:
      result = 0x6E656469666E6F63;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x756F537465737361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_255674DA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2557501B0();
      v8 = v7;
      if (v6 == sub_2557501B0() && v8 == v9)
      {
        break;
      }

      v11 = sub_255750EB0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for TokenTypeIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255674F54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_255674FBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25574FB30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255675060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2556750DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25574FB30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255675188()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C0540);
  __swift_project_value_buffer(v0, qword_27F7C0540);
  return sub_25574F2B0();
}

unint64_t sub_255675208()
{
  result = qword_27F7BDC30;
  if (!qword_27F7BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC30);
  }

  return result;
}

unint64_t sub_255675264()
{
  result = qword_27F7C0280;
  if (!qword_27F7C0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0280);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AssetCatalogColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2556753A0(uint64_t a1)
{
  sub_2557501B0();
  sub_255750F80();
  sub_2557501F0();
  v1 = sub_255750FD0();

  return v1;
}

uint64_t sub_255675414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255675478@<X0>(uint64_t *a2@<X8>)
{
  sub_2557501B0();
  v3 = sub_255750180();

  *a2 = v3;
  return result;
}

uint64_t sub_2556754BC(uint64_t a1)
{
  v2 = type metadata accessor for VisitAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255675520(void *a1, uint64_t *a2)
{
  v2 = sub_2557501B0();
  v4 = v3;
  if (v2 == sub_2557501B0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255750EB0();
  }

  return v7 & 1;
}

uint64_t sub_2556755A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t MergeableProvider.unwrappedMergeableAttributes.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 32))())
  {
    swift_getAssociatedTypeWitness();
    v4 = *(swift_getAssociatedConformanceWitness() + 24);
    swift_checkMetadataState();
    v4();
    swift_unknownObjectRelease();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = 0;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = 1;
  }

  v7 = *(*(AssociatedTypeWitness - 8) + 56);

  return v7(a3, v6, 1);
}

uint64_t VisitAssetMetadata.placeName.getter()
{
  v1 = *v0;

  return v1;
}

id sub_2556757D0()
{
  v1 = [v0 mergeableAttributes];

  return v1;
}

id sub_255675808(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_255750980();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v7 = a1;
  }

  a4(v16, v15);

  sub_255674B20(v15, &qword_27F7BE250, &qword_255756600);
  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_255750EA0();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

double sub_255675998@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v24[3] = *MEMORY[0x277D85000] & *v2;
  v6 = sub_25574F2C0();
  v24[1] = *(v6 - 8);
  v24[2] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v5 & v4) + 0x58);
  v10 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  sub_25566CDF8(a1, v28);
  if (v29)
  {
    if (swift_dynamicCast())
    {
      v24[0] = v8;
      v18 = v26;
      v19 = v27;
      sub_255674F54(v26, v27);
      sub_25574F4C0();
      (*(v12 + 16))(v15, v17, AssociatedTypeWitness);
      v20 = (*(v9 + 16))(v15, v10, v9);
      v21 = v25;
      v25[3] = v10;
      sub_2556755A8(v18, v19);
      *v21 = v20;
      (*(v12 + 8))(v17, AssociatedTypeWitness);
      return result;
    }
  }

  else
  {
    sub_255674B20(v28, &qword_27F7BE250, &qword_255756600);
  }

  result = 0.0;
  v23 = v25;
  *v25 = 0u;
  *(v23 + 1) = 0u;
  return result;
}

JournalShared::MergeableTextAlignment_optional __swiftcall MergeableTextAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for CloudKitSyncError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t VisitAssetMetadata.mapItemData.getter()
{
  v1 = v0 + *(type metadata accessor for VisitAssetMetadata(0) + 52);
  v2 = *v1;
  sub_25567625C(*v1, *(v1 + 8));
  return v2;
}

uint64_t MergeableColor.init(from:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MergeableColor(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_25574FEA0();
  if (v2)
  {
  }

  v21 = a2;
  v13 = sub_25574FEB0();
  v15 = v14;

  if (v13 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
    sub_255669798(&qword_27F7BE3D0, &qword_27F7BE3C0, &unk_255756A30, MEMORY[0x277CFB528]);
    sub_255669798(&qword_27F7BE3F0, &qword_27F7BE3C0, &unk_255756A30, MEMORY[0x277CFB548]);
    sub_25574FDF0();

    v18 = v20;
    *v10 = v19;
    v10[16] = v18;
    swift_storeEnumTagMultiPayload();
    v17 = v10;
  }

  else if (v13 == 1)
  {
    SRGBColor.init(from:)(v15, v12);

    swift_storeEnumTagMultiPayload();
    v17 = v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
    *v7 = v13;
    sub_25574F310();

    swift_storeEnumTagMultiPayload();
    v17 = v7;
  }

  return sub_255673644(v17, v21, type metadata accessor for MergeableColor);
}

uint64_t sub_25567625C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255674F54(result, a2);
  }

  return result;
}

uint64_t sub_255676284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255676334(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C3E270](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2556763A8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2556763A8(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_255750F70();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_255676570(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25567649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_255676570(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_255700348(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_255701580();
      a2 = v7;
      goto LABEL_12;
    }

    sub_255701FB4(v5 + 1);
  }

  v8 = *v3;
  result = sub_255750F70();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_255750F00();
  __break(1u);
  return result;
}

uint64_t sub_255676690(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_255750F70();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_255701580();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_255676D4C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void sub_255676780(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_255668360(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000023;
    v31[1] = 0x80000002557528E0;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

unint64_t sub_255676D4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2557509C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_255750F70() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t MergeableColor.hash(into:)(uint64_t a1)
{
  v3 = sub_25574F320();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SRGBColor(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v1, v12, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = v12[16];
      MEMORY[0x259C3EC60](1);
      v20[1] = v14;
      v20[2] = v15;
      v21 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
      sub_25574F530();
      return sub_2556AA66C(v14, v15, v16);
    }

    else
    {
      v18 = *v12;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      (*(v4 + 32))(v6, &v12[*(v19 + 48)], v3);
      MEMORY[0x259C3EC60](2);
      MEMORY[0x259C3EC60](v18);
      sub_255668360(&qword_27F7BDE38, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4C0]);
      sub_2557500A0();
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_255673644(v12, v9, type metadata accessor for SRGBColor);
    MEMORY[0x259C3EC60](0);
    SRGBColor.hash(into:)(a1);
    return sub_255673758(v9, type metadata accessor for SRGBColor);
  }
}

uint64_t sub_2556771A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C3E270](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2556772D0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25567723C(uint64_t a1)
{
  result = sub_25574FB30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2556772D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_255750F80();
  sub_2557501F0();
  v8 = sub_255750FD0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_255750EB0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_255677420(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_255677420(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2557000E8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_255701424();
      goto LABEL_16;
    }

    sub_255701D7C(v8 + 1);
  }

  v10 = *v4;
  sub_255750F80();
  sub_2557501F0();
  result = sub_255750FD0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_255750EB0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_255750F00();
  __break(1u);
  return result;
}

void sub_2556775A0(uint64_t a1)
{
  if (!qword_27F7BF288)
  {
    type metadata accessor for MergeableTextList(255);
    v1 = sub_255750470();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BF288);
    }
  }
}

uint64_t sub_2556775F8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_255750F80();
  sub_2557501F0();
  v6 = sub_255750FD0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_255750EB0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_255701424();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_255677734(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_255677734(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2557509C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_255750F80();

        sub_2557501F0();
        v10 = sub_255750FD0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2556778F8(uint64_t a1)
{
  sub_2556775A0(319);
  if (v1 <= 0x3F)
  {
    sub_25574FB30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25567797C(uint64_t a1, char a2, void *a3)
{
  v61 = sub_25574FDB0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v58 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  sub_255663294(v54, v11, &qword_27F7BDEE8, &unk_25575B4D0);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = sub_2556632FC(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v23, a2 & 1);
  v25 = sub_2556632FC(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          sub_255663294(v54 + *(v58 + 72) * v36, v11, &qword_27F7BDEE8, &unk_25575B4D0);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = sub_2556632FC(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_255743928(v45, 1);
            v41 = sub_2556632FC(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = sub_25574F750();
    sub_2556647F4(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000037;
    v29[1] = 0x8000000255753340;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277CFB5A8], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_255677F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255677FE0(uint64_t a1)
{
  result = sub_25574FB30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25567805C(uint64_t a1, char a2, void *a3)
{
  v61 = sub_25574FDB0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v58 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  sub_255663294(v54, v11, &qword_27F7BDEE8, &unk_25575B4D0);
  v16 = v11[1];
  v64 = *v11;
  v15 = v64;
  v65 = v16;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = sub_2556632FC(v15, v16);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v23, a2 & 1);
  v25 = sub_2556632FC(v15, v16);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v31 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v32 = (v31[6] + 16 * v20);
      *v32 = v15;
      v32[1] = v16;
      v53((v31[7] + *(v59 + 72) * v20), v60, v61);
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v56 != 1)
      {
        v36 = 1;
        while (v36 < *(v57 + 16))
        {
          sub_255663294(v54 + *(v58 + 72) * v36, v11, &qword_27F7BDEE8, &unk_25575B4D0);
          v38 = v11[1];
          v64 = *v11;
          v37 = v64;
          v65 = v38;
          v39 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v40 = *a3;
          v41 = sub_2556632FC(v37, v38);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v34 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v34)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_255743928(v45, 1);
            v41 = sub_2556632FC(v37, v38);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = (v48[6] + 16 * v41);
          *v49 = v37;
          v49[1] = v38;
          v39((v48[7] + *(v59 + 72) * v41), v60, v61);
          v50 = v48[2];
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v48[2] = v51;
          if (v56 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = sub_25574F750();
    sub_255664884(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v28 = swift_allocError();
    *v29 = 0xD000000000000032;
    v29[1] = 0x8000000255753900;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277CFB5A8], v27);
    swift_willThrow();
    v66 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

id sub_25567865C(uint64_t a1)
{
  v2 = type metadata accessor for WrappedMergeableEntryAttributes(0);
  v3 = objc_allocWithZone(v2);
  sub_255678764(a1, v3 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556740EC(a1);
  return v4;
}

uint64_t sub_2556786D8(uint64_t a1)
{
  result = sub_25574FB30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255678764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2556787DC(uint64_t a1)
{
  sub_25574F0D0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MergeableSize(319);
    if (v2 <= 0x3F)
    {
      sub_255678890(319);
      if (v3 <= 0x3F)
      {
        sub_25574FB30();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255678890(uint64_t a1)
{
  if (!qword_27F7BEFD0)
  {
    sub_25567890C();
    v1 = sub_25574F540();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BEFD0);
    }
  }
}

unint64_t sub_25567890C()
{
  result = qword_27F7BEF60;
  if (!qword_27F7BEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEF60);
  }

  return result;
}

uint64_t sub_255678960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556789C8(uint64_t a1)
{
  result = sub_25574FB30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255678A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JournalEntryMO.assetsArrayUnsorted.getter()
{
  v1 = [v0 assets];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_255750380(), v3, v5 = sub_255678D4C(v4), , !v5))
  {
    if (qword_27F7BD838 == -1)
    {
LABEL_17:
      v12 = sub_25574F2C0();
      __swift_project_value_buffer(v12, qword_27F7C03B8);
      v13 = sub_25574F2A0();
      v14 = sub_255750780();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_255661000, v13, v14, "WARNING: JournalEntryMO assets is nil", v15, 2u);
        MEMORY[0x259C3F520](v15, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v18 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    v6 = sub_255750A30();
    if (v6)
    {
LABEL_5:
      v7 = 0;
      v8 = &property descriptor for JournalMO.isUploadedToCloud;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x259C3E830](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v9 isRemovedFromCloud] & 1) != 0 || (objc_msgSend(v10, v8[249]))
        {
        }

        else
        {
          sub_255750BB0();
          sub_255750BE0();
          sub_255750BF0();
          sub_255750BC0();
          v8 = &property descriptor for JournalMO.isUploadedToCloud;
        }

        ++v7;
        if (v11 == v6)
        {
          v16 = v18;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_26:

  return v16;
}

uint64_t sub_255678D4C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_255750BD0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_255678EBC(i, v5);
    type metadata accessor for JournalEntryAssetMO();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_255750BB0();
    sub_255750BE0();
    sub_255750BF0();
    sub_255750BC0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_255678E38(uint64_t a1)
{
  result = type metadata accessor for MergeableFont.Traits(319);
  if (v2 <= 0x3F)
  {
    result = sub_25574FB30();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_255678EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255678F28(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_255678FC4(v6);
  }

  sub_25566FE44(a1, a2);
  return sub_255750BC0();
}

void *sub_255678FD8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_255750A30();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_255742608(v3, 0);
  sub_2557480CC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25567906C(uint64_t a1)
{
  v2 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2556790D8()
{
  v0 = *MEMORY[0x277CBF430];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_27F7BE3A0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_255679174(id *a1, void **a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v38 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = *a2;
  v19 = [*a1 id];
  if (!v19)
  {
    goto LABEL_22;
  }

  v40 = v12;
  v20 = v19;
  sub_25574F080();

  v21 = *(v6 + 32);
  v21(v17, v15, v5);
  v22 = [v18 id];
  if (v22)
  {
    v39 = v6;
    v23 = v22;
    sub_25574F080();

    v24 = v40;
    v21(v40, v9, v5);
    v25 = v24;
    MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)(v17, &v42);
    v26 = v42;
    v27 = v43;
    v28 = v44;
    MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)(v24, &v42);
    v29 = v42;
    v30 = v43;
    v31 = v44;
    if ((v28 & 1) == 0 && (v27 & 1) == 0)
    {
      v35 = *(v39 + 8);
      v35(v25, v5);
      v35(v17, v5);
      if ((v31 & 1) == 0)
      {
        v33 = v30 | (v26 < v29);
        return v33 & 1;
      }

      goto LABEL_22;
    }

    if (v44)
    {
LABEL_6:
      if (v28)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    if (v43)
    {
      if (v42 < 2)
      {
        goto LABEL_6;
      }

      if ((v28 & 1) == 0)
      {
        if ((v27 & 1) != 0 && v26 >= 2)
        {
          goto LABEL_24;
        }

LABEL_7:
        if ((v27 & 1) != 0 && v26 >= 2)
        {
          v32 = *(v39 + 8);
          v32(v25, v5);
          v32(v17, v5);
LABEL_22:
          v33 = 1;
          return v33 & 1;
        }

LABEL_17:
        if ((v44 & 1) == 0 && (v43 & 1) != 0 && v42 >= 2)
        {
          goto LABEL_20;
        }

LABEL_24:
        v33 = MEMORY[0x259C3CD30](v17, v25);
        v37 = *(v39 + 8);
        v37(v25, v5);
        v37(v17, v5);
        return v33 & 1;
      }
    }

LABEL_20:
    v34 = *(v39 + 8);
    v34(v25, v5);
    v34(v17, v5);
    v33 = 0;
    return v33 & 1;
  }

  (*(v6 + 8))(v17, v5);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_255679528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PhotoLibraryAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

JournalShared::MergeableWritingDirection_optional __swiftcall MergeableWritingDirection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for PhotoLibraryAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t SRGBColor.init(red:green:blue:alpha:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  type metadata accessor for SRGBColor(0);
  result = sub_25574FB20();
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_2556797C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_255679858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_25574FB30();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t MergeableEntryAssetsPlacement.init(fromLegacyOrderingFieldsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = sub_25574F860();
  v4 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v105 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v94 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v113 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v112 = v91 - v9;
  v10 = sub_25574F0D0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v91 - v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v104 = *(v111 - 8);
  v17 = MEMORY[0x28223BE20](v111);
  v106 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v91 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v91 - v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v24 = MEMORY[0x28223BE20](v99);
  v97 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v91 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v103 = v91 - v30;
  MEMORY[0x28223BE20](v29);
  v114 = v11;
  v31 = *(v11 + 56);
  v110 = v91 - v32;
  v107 = v31;
  v108 = v11 + 56;
  v31();
  v96 = sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25574F720();
  v33 = JournalEntryMO.assetsArrayUnsorted.getter();
  if (v33 >> 62)
  {
    v34 = sub_255750A30();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = v10;
  v101 = v4;
  v100 = a1;
  v109 = v23;
  v98 = v28;
  if (v34 < 1)
  {
    v93 = v21;

    v57 = [a1 assetOrdering];
    v58 = MEMORY[0x277D84F98];
    if (v57)
    {
      v59 = v57;
      v60 = sub_25574EF90();
      v62 = v61;

      v63 = sub_25567A554(v60, v62);
      v64 = v60;
      v10 = v115;
      sub_2556755A8(v64, v62);
      if (v63)
      {
        v58 = v63;
      }
    }

    v44 = *(v58 + 16);
    v65 = MEMORY[0x277D84F90];
    v95 = a2;
    if (v44)
    {
      v65 = sub_255742690(v44, 0);
      v92 = sub_255745938(v116, v65 + ((*(v94 + 80) + 32) & ~*(v94 + 80)), v44, v58);
      v66 = v116[0];
      v91[2] = v116[3];
      v91[1] = v116[4];

      sub_25568B1C8(v66);
      if (v92 != v44)
      {
        goto LABEL_42;
      }

      v10 = v115;
      a2 = v95;
    }

    v116[0] = v65;
    sub_255745BBC(v116);

    v67 = v116[0];
    v68 = *(v116[0] + 16);
    if (v68)
    {
      v116[0] = MEMORY[0x277D84F90];
      sub_2556A9D38(0, v68, 0);
      v69 = v116[0];
      v70 = *(v94 + 80);
      v115 = v67;
      v71 = v67 + ((v70 + 32) & ~v70);
      v72 = *(v94 + 72);
      v73 = (v114 + 32);
      do
      {
        v74 = v112;
        sub_255663294(v71, v112, &qword_27F7BE4A8, &unk_255756FF0);
        v75 = v74;
        v76 = v113;
        sub_255748E38(v75, v113);
        v77 = *v73;
        (*v73)(v14, v76, v10);
        v116[0] = v69;
        v79 = *(v69 + 16);
        v78 = *(v69 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_2556A9D38((v78 > 1), v79 + 1, 1);
          v69 = v116[0];
        }

        *(v69 + 16) = v79 + 1;
        v77((v69 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v79), v14, v10);
        v71 += v72;
        --v68;
      }

      while (v68);

      a2 = v95;
      v23 = v109;
    }

    else
    {

      v69 = MEMORY[0x277D84F90];
    }

    v116[0] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
    sub_255669798(&qword_27F7C0198, &qword_27F7BEB38, &qword_25575EA60, MEMORY[0x277D83970]);
    v80 = v93;
    sub_25574F740();
    v56 = v104;
    v55 = v111;
    (*(v104 + 8))(v23, v111);
    (*(v56 + 32))(v23, v80, v55);
    v81 = v10;
    v54 = a2;
    goto LABEL_40;
  }

  v35 = [a1 assetOrdering];
  v36 = MEMORY[0x277D84F98];
  if (v35)
  {
    v37 = v35;
    v38 = sub_25574EF90();
    v40 = v39;

    v41 = sub_25567A554(v38, v40);
    sub_2556755A8(v38, v40);
    if (v41)
    {
      v36 = v41;
    }
  }

  v116[0] = sub_255678FD8(v42);
  sub_25567A7F8(v116, v36);

  swift_bridgeObjectRelease_n();
  v43 = v116[0];
  if (v116[0] < 0 || (v116[0] & 0x4000000000000000) != 0)
  {
    v44 = sub_255750A30();
    if (v44)
    {
      goto LABEL_10;
    }

LABEL_38:

    v54 = a2;
    v55 = v111;
    v56 = v104;
LABEL_39:
    v81 = v115;
LABEL_40:
    v114 = *(v56 + 16);
    (v114)(v106, v23, v55);
    sub_255663294(v110, v103, &unk_27F7BED20, &unk_2557551D0);
    v82 = type metadata accessor for MergeableEntryAssetsPlacement(0);
    sub_25574FD10();
    sub_25574FD10();
    sub_25574F850();
    v83 = *(v82 + 20);
    v84 = v98;
    (v107)(v98, 1, 1, v81);
    v85 = v97;
    sub_255663294(v84, v97, &unk_27F7BED20, &unk_2557551D0);
    sub_255663D60();
    sub_25574F340();
    sub_255674B20(v84, &unk_27F7BED20, &unk_2557551D0);
    v115 = *(v82 + 32);
    sub_25574F850();
    v86 = v111;
    (v114)(v54, v106, v111);
    v87 = v103;
    sub_255663294(v103, v84, &unk_27F7BED20, &unk_2557551D0);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
    (*(*(v88 - 8) + 8))(v54 + v83, v88);
    sub_255663294(v84, v85, &unk_27F7BED20, &unk_2557551D0);
    sub_25574F340();

    sub_255674B20(v84, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v87, &unk_27F7BED20, &unk_2557551D0);
    v89 = *(v104 + 8);
    v89(v106, v86);
    v89(v109, v86);
    sub_255674B20(v110, &unk_27F7BED20, &unk_2557551D0);
    return (*(v101 + 40))(v54 + v115, v105, v102);
  }

  v44 = *(v116[0] + 16);
  if (!v44)
  {
    goto LABEL_38;
  }

LABEL_10:
  if (v44 >= 1)
  {
    v95 = a2;
    v45 = 0;
    v46 = (v114 + 8);
    v47 = (v114 + 32);
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x259C3E830](v45, v43);
      }

      else
      {
        v48 = *(v43 + 8 * v45 + 32);
      }

      v49 = v48;
      v50 = [v48 id];
      if (v50)
      {
        v51 = v50;
        sub_25574F080();

        if ([v49 isSlim])
        {
          v52 = v110;
          sub_255674B20(v110, &unk_27F7BED20, &unk_2557551D0);

          v53 = v115;
          (*v47)(v52, v16, v115);
          (v107)(v52, 0, 1, v53);
        }

        else
        {
          sub_25574F6B0();

          (*v46)(v16, v115);
        }
      }

      else
      {
      }

      ++v45;
    }

    while (v44 != v45);

    v54 = v95;
    v55 = v111;
    v56 = v104;
    v23 = v109;
    goto LABEL_39;
  }

  __break(1u);
LABEL_42:
  __break(1u);

  __break(1u);
  return result;
}