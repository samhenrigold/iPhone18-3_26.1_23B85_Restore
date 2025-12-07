uint64_t sub_1D5104E50(void *a1, void *a2)
{
  v66 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0178, &qword_1D5636228);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F0180, &unk_1D5636230);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v28 = *a1 == *a2 && a1[1] == a2[1];
  if (!v28 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_26;
  }

  v61 = v7;
  v62 = v11;
  v29 = _s21EntryPropertyProviderVMa(0);
  v30 = a2;
  v31 = *(v29 + 20);
  v32 = *(v24 + 48);
  v63 = v29;
  v64 = a1;
  sub_1D4F1C460(a1 + v31, v27, &qword_1EC7F0140, &qword_1D5636130);
  sub_1D4F1C460(v30 + v31, &v27[v32], &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(v27, 1, v15);
  if (v28)
  {
    OUTLINED_FUNCTION_57(&v27[v32], 1, v15);
    if (v28)
    {
      sub_1D4E50004(v27, &qword_1EC7F0140, &qword_1D5636130);
      goto LABEL_16;
    }

LABEL_14:
    v35 = &unk_1EC7F0180;
    v36 = &unk_1D5636230;
    v37 = v27;
LABEL_25:
    sub_1D4E50004(v37, v35, v36);
    goto LABEL_26;
  }

  sub_1D4F1C460(v27, v23, &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(&v27[v32], 1, v15);
  if (v33)
  {
    OUTLINED_FUNCTION_2_73();
    sub_1D5105720(v23, v34);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_82();
  sub_1D5105778(&v27[v32], v19, v38);
  static InternalMusicPlayer.Queue.Entry.Item.== infix(_:_:)();
  v40 = v39;
  sub_1D5105720(v19, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
  sub_1D5105720(v23, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
  sub_1D4E50004(v27, &qword_1EC7F0140, &qword_1D5636130);
  if ((v40 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v42 = v63;
  v41 = v64;
  v43 = *(v63 + 24);
  v44 = *(v65 + 48);
  sub_1D4F1C460(v64 + v43, v14, &unk_1EC7F1280, &qword_1D5636138);
  sub_1D4F1C460(v30 + v43, &v14[v44], &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v14, 1, v66);
  if (!v28)
  {
    v45 = v62;
    sub_1D4F1C460(v14, v62, &unk_1EC7F1280, &qword_1D5636138);
    OUTLINED_FUNCTION_5_1(&v14[v44]);
    if (!v46)
    {
      OUTLINED_FUNCTION_10_56();
      v50 = &v14[v44];
      v51 = v61;
      sub_1D5105778(v50, v61, v52);
      static InternalMusicPlayer.Queue.Entry.Container.== infix(_:_:)();
      v54 = v53;
      sub_1D5105720(v51, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      sub_1D5105720(v45, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      sub_1D4E50004(v14, &unk_1EC7F1280, &qword_1D5636138);
      if ((v54 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_0_89();
    sub_1D5105720(v45, v47);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_5_1(&v14[v44]);
  if (!v28)
  {
LABEL_24:
    v35 = &qword_1EC7F0178;
    v36 = &qword_1D5636228;
    v37 = v14;
    goto LABEL_25;
  }

  sub_1D4E50004(v14, &unk_1EC7F1280, &qword_1D5636138);
LABEL_29:
  OUTLINED_FUNCTION_15_44();
  if (v55)
  {
    if (!v48)
    {
      return v48 & 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v56)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_15_44();
  if (v57)
  {
    if (!v48)
    {
      return v48 & 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v58)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_15_44();
  if (v59)
  {
    if (!v48)
    {
      return v48 & 1;
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_52_0();
  if ((v60 & 1) == 0)
  {
LABEL_41:
    if (*(v41 + *(v42 + 64)) == *(v30 + *(v42 + 64)))
    {
      LOBYTE(v48) = *(v41 + *(v42 + 68)) ^ *(v30 + *(v42 + 68)) ^ 1;
      return v48 & 1;
    }
  }

LABEL_26:
  LOBYTE(v48) = 0;
  return v48 & 1;
}

uint64_t sub_1D5105370(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  sub_1D5614E28();
  v20 = _s21EntryPropertyProviderVMa(0);
  sub_1D4F1C460(v2 + *(v20 + 20), v19, &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(v19, 1, v11);
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_1_82();
    sub_1D5105778(v19, v15, v22);
    sub_1D56162F8();
    InternalMusicPlayer.Queue.Entry.Item.hash(into:)();
    OUTLINED_FUNCTION_2_73();
    sub_1D5105720(v15, v23);
  }

  sub_1D4F1C460(v2 + *(v20 + 24), v10, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v10, 1, v31);
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_10_56();
    sub_1D5105778(v10, v6, v24);
    sub_1D56162F8();
    InternalMusicPlayer.Queue.Entry.Container.hash(into:)();
    OUTLINED_FUNCTION_0_89();
    sub_1D5105720(v6, v25);
  }

  OUTLINED_FUNCTION_157();
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v6;
    }

    else
    {
      v26 = 0;
    }

    MEMORY[0x1DA6EC100](v26);
  }

  OUTLINED_FUNCTION_157();
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v6;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1DA6EC100](v27);
  }

  OUTLINED_FUNCTION_157();
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v28 = v6;
    }

    else
    {
      v28 = 0;
    }

    MEMORY[0x1DA6EC100](v28);
  }

  sub_1D56162F8();
  return sub_1D56162F8();
}

uint64_t sub_1D510563C()
{
  sub_1D56162D8();
  sub_1D5105370(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5105688(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5105370(v2);
  return sub_1D5616328();
}

unint64_t sub_1D51056C8()
{
  result = qword_1EC7F0150;
  if (!qword_1EC7F0150)
  {
    _s21EntryPropertyProviderVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0150);
  }

  return result;
}

uint64_t sub_1D5105720(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D5105778(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D51057D8()
{
  OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_38_23();
  if (v2)
  {

    v3 = OUTLINED_FUNCTION_15_45();
    sub_1D5107970(v3, v4, v5, v6);
    v8 = v7;
    v9 = v0;
    v10 = OUTLINED_FUNCTION_24_7();
  }

  else
  {
    v12 = *(v1 + 16);
    v13 = OUTLINED_FUNCTION_55_15();
    sub_1D4F48F74(v13, v14);
    v15 = v12;
    v16 = OUTLINED_FUNCTION_9_55();
    v8 = sub_1D5105B4C(v16, v17, v18, v19);
    v9 = v0;

    v10 = OUTLINED_FUNCTION_55_15();
  }

  sub_1D4F48F14(v10, v11);
  if (!v9 && v8 == 2)
  {
    v20 = sub_1D4F48F20();
    v21 = OUTLINED_FUNCTION_121_0(&type metadata for Bag.Error, v20);
    OUTLINED_FUNCTION_44_19(v21, v22);
  }

  return v8 & 1;
}

id sub_1D510588C()
{
  OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_38_23();
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_15_45();
    sub_1D5108560(v4, v5, v6);
    if (v1)
    {
      v9 = OUTLINED_FUNCTION_24_7();
LABEL_5:
      sub_1D4F48F14(v9, v10);
      return v0;
    }

    v0 = v7;
    v20 = v8;
    v9 = OUTLINED_FUNCTION_24_7();
  }

  else
  {
    v11 = *(v2 + 16);
    v12 = OUTLINED_FUNCTION_55_15();
    sub_1D4F48F74(v12, v13);
    v14 = v11;
    v15 = OUTLINED_FUNCTION_9_55();
    v0 = sub_1D5106F94(v15, v16, v17, v18);
    v20 = v19;

    v9 = OUTLINED_FUNCTION_55_15();
    if (v1)
    {
      goto LABEL_5;
    }
  }

  sub_1D4F48F14(v9, v10);
  if (v20)
  {
    v21 = sub_1D4F48F20();
    v22 = OUTLINED_FUNCTION_121_0(&type metadata for Bag.Error, v21);
    OUTLINED_FUNCTION_44_19(v22, v23);
  }

  return v0;
}

id sub_1D5105950()
{
  OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_38_23();
  if (v2)
  {

    v3 = OUTLINED_FUNCTION_15_45();
    sub_1D5107FB0(v3, v4, v5, v6, v7, v8, v9);
    v11 = v10;
    v12 = v0;
    v13 = OUTLINED_FUNCTION_24_7();
  }

  else
  {
    v15 = *(v1 + 16);
    v16 = OUTLINED_FUNCTION_55_15();
    sub_1D4F48F74(v16, v17);
    v18 = v15;
    v19 = OUTLINED_FUNCTION_9_55();
    v11 = sub_1D51067F4(v19, v20, v21, v22);
    v12 = v0;

    v13 = OUTLINED_FUNCTION_55_15();
  }

  sub_1D4F48F14(v13, v14);
  if (!v12 && !v11)
  {
    v24 = sub_1D4F48F20();
    v25 = OUTLINED_FUNCTION_121_0(&type metadata for Bag.Error, v24);
    OUTLINED_FUNCTION_44_19(v25, v26);
  }

  return v11;
}

id sub_1D5105A28(NSObject *a1, unint64_t a2)
{
  v6 = v2 + *(type metadata accessor for Bag(0) + 20);
  v7 = *v6;
  if (*(v6 + 8))
  {

    sub_1D5108A98(a1, a2, v7);
    v9 = v8;
    v11 = v10;
    v12 = v7;
    v13 = 1;
  }

  else
  {
    v14 = *(v7 + 16);
    sub_1D4F48F74(v7, 0);
    v15 = v14;
    v9 = sub_1D5107508(a1, a2, v15, 0);
    v11 = v16;

    v12 = v7;
    v13 = 0;
  }

  sub_1D4F48F14(v12, v13);
  if (!v3 && !v11)
  {
    sub_1D4F48F20();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1D5105B4C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v38[0] = 46;
  v38[1] = 0xE100000000000000;
  v40 = v38;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v39, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (v17)
    {
      sub_1D5614BB8();

      v18 = objc_opt_self();
      v19 = sub_1D5614BA8();

      v38[0] = 0;
      v20 = [v18 dataWithJSONObject:v19 options:0 error:v38];

      v21 = v38[0];
      if (v20)
      {
        v22 = sub_1D560C198();
        v24 = v23;

        if (a4)
        {
          v25 = a4;
        }

        else
        {
          sub_1D560B9C8();
          swift_allocObject();
          v25 = sub_1D560B9B8();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
        sub_1D4F31CF4();

        v20 = v25;
        sub_1D560B948();
        if (v11)
        {

          sub_1D4E55E1C(v22, v24);
        }

        else
        {
          if (v10[2] < 2uLL)
          {
            __break(1u);
          }

          v37 = v38[0];
          v28 = v10[8];
          v29 = v10[9];
          v31 = v10[10];
          v30 = v10[11];

          v32 = MEMORY[0x1DA6EABE0](v28, v29, v31, v30);
          v34 = v33;

          sub_1D5107970(v32, v34, v37, v25);
          v20 = v36;

          sub_1D4E55E1C(v22, v24);
        }
      }

      else
      {
        v27 = v21;

        sub_1D560BE98();

        swift_willThrow();
      }
    }

    else
    {

      return 2;
    }
  }

  else
  {

    v26 = sub_1D5614D38();
    v20 = [a3 BOOLValueForBagKey_];
  }

  return v20;
}

id sub_1D5105F48(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v76 = *MEMORY[0x1E69E9840];
  *&v72 = 46;
  *(&v72 + 1) = 0xE100000000000000;
  v71 = &v72;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v70, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (!v17)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_74_0();
    sub_1D5614BB8();

    v18 = objc_opt_self();
    v19 = sub_1D5614BA8();

    *&v72 = 0;
    v17 = [v18 dataWithJSONObject:v19 options:0 error:&v72];

    v20 = v72;
    if (v17)
    {
      sub_1D560C198();

      if (a4)
      {
        v21 = a4;
      }

      else
      {
        sub_1D560B9C8();
        swift_allocObject();
        v21 = sub_1D560B9B8();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
      sub_1D4F31CF4();

      v17 = v21;
      sub_1D560B948();
      if (v11)
      {

        v40 = OUTLINED_FUNCTION_66();
        sub_1D4E55E1C(v40, v41);
LABEL_27:

        return v17;
      }

      v69 = 0;
      if (v10[2] >= 2uLL)
      {
        v68 = v72;
        v42 = v10[8];
        v43 = v10[9];
        v45 = v10[10];
        v44 = v10[11];

        v46 = MEMORY[0x1DA6EABE0](v42, v43, v45, v44);
        v48 = v47;

        OUTLINED_FUNCTION_22_36();
        sub_1D5107FB0(v46, v48, v68, v21, v49, v50, v51);
        v17 = v62;

        v63 = OUTLINED_FUNCTION_66();
        sub_1D4E55E1C(v63, v64);

        return v17;
      }

      __break(1u);
      goto LABEL_43;
    }

    v37 = v20;

    sub_1D560BE98();

LABEL_17:
    swift_willThrow();
    return v17;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01A8, &unk_1D5636290);
  v23 = dynamic_cast_existential_1_conditional(v22, v22, MEMORY[0x1E69E6D68]);
  if (!v23)
  {
    if (!dynamic_cast_existential_1_conditional(v22, v22, MEMORY[0x1E69E5D50]))
    {
      if (v22 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780) && v22 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40))
      {
        if (qword_1EC7E90A8 == -1)
        {
LABEL_31:
          v52 = sub_1D560C758();
          __swift_project_value_buffer(v52, qword_1EC87C2B8);

          v53 = sub_1D560C738();
          v54 = sub_1D56156C8();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *&v72 = swift_slowAlloc();
            *v55 = 136315394;
            v56 = OUTLINED_FUNCTION_66();
            *(v55 + 4) = sub_1D4E6835C(v56, v57, v58);
            *(v55 + 12) = 2080;
            *(v55 + 14) = sub_1D4E6835C(0xD00000000000003DLL, 0x80000001D56848C0, &v72);
            _os_log_impl(&dword_1D4E3F000, v53, v54, "Failed fetching bag value for key %s. Requested value type %s is not supported.", v55, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
          }

          return 0;
        }

LABEL_43:
        OUTLINED_FUNCTION_34_26(&qword_1EC7E90A8);
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_66();
      v60 = sub_1D5614D38();
      v17 = [a3 arrayForBagKey_];

      if (v17)
      {
        v61 = sub_1D5615168();
      }

      else
      {
        v61 = 0;
      }

      *&v72 = v61;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC398, &qword_1D5620C48);
      if (OUTLINED_FUNCTION_76_8(v65))
      {
        return v75;
      }

      v66 = sub_1D4F48F20();
      OUTLINED_FUNCTION_121_0(&type metadata for Bag.Error, v66);
      *v67 = 2;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_66();
    v34 = sub_1D5614D38();
    v35 = [a3 numberForBagKey_];

    if (v35)
    {
      MEMORY[0x1EEE9AC00](v36);
      [v35 doubleValue];
      OUTLINED_FUNCTION_85_0();
      sub_1D5614B98();

      if (swift_dynamicCast())
      {
        return v72;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v25 = v23;
  v26 = v24;
  OUTLINED_FUNCTION_66();
  v27 = sub_1D5614D38();
  v28 = [a3 numberForBagKey_];

  if (!v28)
  {
    return 0;
  }

  v69 = v4;
  v75 = [v28 longLongValue];
  sub_1D56158D8();
  v68 = &v68;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v68 - v30;
  sub_1D4F5A37C();
  sub_1D56155E8();
  if (__swift_getEnumTagSinglePayload(v31, 1, v25) == 1)
  {

    v32 = OUTLINED_FUNCTION_66();
    v33(v32);
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
  }

  else
  {
    *(&v73 + 1) = v25;
    v74 = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v72);
    (*(*(v25 - 8) + 32))(boxed_opaque_existential_0, v31, v25);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
  if (OUTLINED_FUNCTION_76_8(v39))
  {
    return v75;
  }

  else
  {
    return 0;
  }
}

id sub_1D51067F4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  *&v58 = 46;
  *(&v58 + 1) = 0xE100000000000000;
  v57 = &v58;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v56, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] != 2)
  {

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    v26 = dynamic_cast_existential_1_conditional(v25, v25, MEMORY[0x1E69E6D68]);
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = sub_1D5614D38();
      v31 = [a3 numberForBagKey_];

      if (v31)
      {
        v55 = v4;
        v61 = [v31 longLongValue];
        v32 = sub_1D56158D8();
        v54 = &v54;
        v33 = *(v32 - 8);
        MEMORY[0x1EEE9AC00](v32);
        v35 = &v54 - v34;
        sub_1D4F5A37C();
        sub_1D56155E8();
        if (__swift_getEnumTagSinglePayload(v35, 1, v28) == 1)
        {

          (*(v33 + 8))(v35, v32);
          v58 = 0u;
          v59 = 0u;
          v60 = 0;
        }

        else
        {
          *(&v59 + 1) = v28;
          v60 = v29;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v58);
          (*(*(v28 - 8) + 32))(boxed_opaque_existential_0, v35, v28);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
        if (swift_dynamicCast())
        {
          return v61;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v36 = dynamic_cast_existential_1_conditional(v25, v25, MEMORY[0x1E69E5D50]);
      v37 = sub_1D5614D38();
      if (!v36)
      {
        v17 = [a3 arrayForBagKey_];

        if (v17)
        {
          v50 = sub_1D5615168();
        }

        else
        {
          v50 = 0;
        }

        *&v58 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC398, &qword_1D5620C48);
        if (swift_dynamicCast())
        {
          return v61;
        }

        sub_1D4F48F20();
        swift_allocError();
        *v52 = 2;
LABEL_34:
        swift_willThrow();
        return v17;
      }

      v38 = [a3 numberForBagKey_];

      if (v38)
      {
        MEMORY[0x1EEE9AC00](v39);
        [v38 doubleValue];
        sub_1D5614B98();

        if (swift_dynamicCast())
        {
          return v58;
        }

        else
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = v9[4];
  v13 = v9[5];
  v14 = v9[6];
  v15 = v9[7];

  MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

  v16 = sub_1D5614D38();

  v17 = [a3 dictionaryForBagKey_];

  if (!v17)
  {
    goto LABEL_27;
  }

  sub_1D5614BB8();

  v18 = objc_opt_self();
  v19 = sub_1D5614BA8();

  *&v58 = 0;
  v17 = [v18 dataWithJSONObject:v19 options:0 error:&v58];

  v20 = v58;
  if (!v17)
  {
    v40 = v20;

    sub_1D560BE98();

    goto LABEL_34;
  }

  v21 = sub_1D560C198();
  v23 = v22;

  if (a4)
  {
    v24 = a4;
  }

  else
  {
    sub_1D560B9C8();
    swift_allocObject();
    v24 = sub_1D560B9B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  sub_1D4F31CF4();

  v17 = v24;
  sub_1D560B948();
  if (v11)
  {

    sub_1D4E55E1C(v21, v23);
LABEL_27:

    return v17;
  }

  v54 = v23;
  v55 = 0;
  if (v10[2] < 2uLL)
  {
    __break(1u);
  }

  v42 = v58;
  v43 = v10[8];
  v44 = v10[9];
  v45 = v10[10];
  v46 = v10[11];

  v47 = MEMORY[0x1DA6EABE0](v43, v44, v45, v46);
  v49 = v48;

  sub_1D5107FB0(v47, v49, v42, v24, &qword_1EC7EBFA0, &qword_1D5620C40, sub_1D510E374);
  v17 = v51;

  sub_1D4E55E1C(v21, v54);

  return v17;
}

id sub_1D5106F94(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  *&v50 = 46;
  *(&v50 + 1) = 0xE100000000000000;
  v48 = &v50;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v47, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (v17)
    {
      sub_1D5614BB8();

      v18 = objc_opt_self();
      v19 = sub_1D5614BA8();

      *&v50 = 0;
      v17 = [v18 dataWithJSONObject:v19 options:0 error:&v50];

      v20 = v50;
      if (v17)
      {
        v21 = sub_1D560C198();
        v23 = v22;

        if (a4)
        {
          v24 = a4;
        }

        else
        {
          sub_1D560B9C8();
          swift_allocObject();
          v24 = sub_1D560B9B8();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
        sub_1D4F31CF4();

        v17 = v24;
        sub_1D560B948();
        if (v11)
        {

          sub_1D4E55E1C(v21, v23);
        }

        else
        {
          v45 = v21;
          v46 = v23;
          if (v10[2] < 2uLL)
          {
            __break(1u);
          }

          v35 = v50;
          v36 = v10[8];
          v37 = v10[9];
          v38 = v10[10];
          v39 = v10[11];

          v40 = MEMORY[0x1DA6EABE0](v36, v37, v38, v39);
          v42 = v41;

          sub_1D5108560(v40, v42, v35);
          v17 = v44;

          sub_1D4E55E1C(v45, v46);
        }
      }

      else
      {
        v34 = v20;

        sub_1D560BE98();

        swift_willThrow();
      }
    }

    else
    {
    }
  }

  else
  {

    v25 = sub_1D4EC44F0();
    v26 = sub_1D5614D38();
    v17 = [a3 numberForBagKey_];

    if (v17)
    {
      v27 = [v17 longLongValue];
      v28 = MEMORY[0x1E69E6530];
      v29 = sub_1D56158D8();
      v30 = *(v29 - 8);
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v45 - v31;
      *v32 = v27;
      v32[8] = 0;
      if (__swift_getEnumTagSinglePayload(&v45 - v31, 1, v28) == 1)
      {

        (*(v30 + 8))(v32, v29);
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
      }

      else
      {
        *(&v51 + 1) = v28;
        v52 = v25;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v50);
        (*(*(v28 - 8) + 32))(boxed_opaque_existential_0, v32, v28);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
      if (swift_dynamicCast())
      {
        return v49;
      }

      else
      {
        return 0;
      }
    }
  }

  return v17;
}

id sub_1D5107508(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 46;
  v47 = 0xE100000000000000;
  v44 = &v46;

  v9 = sub_1D510DDD4(1, 1, sub_1D4F5A35C, v43, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (!v17)
    {
      goto LABEL_19;
    }

    sub_1D5614BB8();

    v18 = objc_opt_self();
    v19 = sub_1D5614BA8();

    v46 = 0;
    v17 = [v18 dataWithJSONObject:v19 options:0 error:&v46];

    v20 = v46;
    if (v17)
    {
      v21 = sub_1D560C198();
      v23 = v22;

      if (a4)
      {
        v24 = a4;
      }

      else
      {
        sub_1D560B9C8();
        swift_allocObject();
        v24 = sub_1D560B9B8();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
      sub_1D4F31CF4();

      v17 = v24;
      sub_1D560B948();
      if (v11)
      {

        sub_1D4E55E1C(v21, v23);
LABEL_19:

        return v17;
      }

      v41 = v21;
      v42 = v23;
      if (v10[2] < 2uLL)
      {
        __break(1u);
      }

      v31 = v46;
      v32 = v10[8];
      v33 = v10[9];
      v34 = v10[10];
      v35 = v10[11];

      v36 = MEMORY[0x1DA6EABE0](v32, v33, v34, v35);
      v38 = v37;

      sub_1D5108A98(v36, v38, v31);
      v17 = v40;

      sub_1D4E55E1C(v41, v42);
    }

    else
    {
      v30 = v20;

      sub_1D560BE98();

      swift_willThrow();
    }
  }

  else
  {

    v25 = sub_1D5614D38();
    v26 = [a3 stringForBagKey_];

    if (v26)
    {
      v27 = sub_1D5614D68();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v46 = v27;
    v47 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    if (swift_dynamicCast())
    {
      return v45;
    }

    else
    {
      return 0;
    }
  }

  return v17;
}

void sub_1D5107970(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5615C18();
  v46 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E6370], MEMORY[0x1E69E6370], MEMORY[0x1E6976660]))
  {
    sub_1D5614C58();
    if (!v4)
    {
      return;
    }

    v41 = a1;
    v20 = v4;
  }

  else
  {
    v40 = v7;
    v43 = v17;
    type metadata accessor for MusicRequestConfiguration(0);
    sub_1D510E32C(&qword_1EDD5B4E8, type metadata accessor for MusicRequestConfiguration, &protocol conformance descriptor for MusicRequestConfiguration);
    v41 = a1;
    sub_1D5614C08();
    if (!v4)
    {
      return;
    }

    v20 = v4;
    v17 = v43;
    v7 = v40;
  }

  v48 = v20;
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v22 = swift_dynamicCast();
  v23 = v46;
  if (v22)
  {

    (*(v23 + 32))(v17, v19, v7);
    v24 = *(v23 + 16);
    v24(v14, v17, v7);
    if ((*(v23 + 88))(v14, v7) != *MEMORY[0x1E69E6AF8])
    {
      v38 = *(v23 + 8);
      v38(v17, v7);
      v38(v14, v7);

      return;
    }

    v43 = v17;
    (*(v23 + 96))(v14, v7);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    v26 = sub_1D5615C08();
    (*(*(v26 - 8) + 8))(&v14[v25], v26);
    if (qword_1EC7E90A8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D560C758();
    __swift_project_value_buffer(v27, qword_1EC87C2B8);
    v28 = v44;
    v24(v44, v43, v7);

    v29 = sub_1D560C738();
    v30 = sub_1D56156C8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v31 = 136315394;
      *(v31 + 4) = sub_1D4E6835C(v41, a2, &v47);
      *(v31 + 12) = 2080;
      v24(v42, v28, v7);
      v32 = sub_1D5614DB8();
      v34 = v33;
      LODWORD(v42) = v30;
      v35 = *(v23 + 8);
      v35(v28, v7);
      v36 = sub_1D4E6835C(v32, v34, &v47);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_1D4E3F000, v29, v42, "Type mismatch for bag key %s: %s.", v31, 0x16u);
      v37 = v45;
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v37, -1, -1);
      MEMORY[0x1DA6ED200](v31, -1, -1);
    }

    else
    {

      v35 = *(v23 + 8);
      v35(v28, v7);
    }

    sub_1D4F48F20();
    swift_allocError();
    *v39 = 2;
    swift_willThrow();
    v35(v43, v7);
  }
}

void sub_1D5107FB0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v61 = a4;
  v64 = sub_1D5615C18();
  OUTLINED_FUNCTION_4();
  v60 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v58 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v59 = &v58 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v58 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v63 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v58 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (dynamic_cast_existential_1_conditional(v26, v26, MEMORY[0x1E6976660]))
  {
    sub_1D5614C58();
    if (!v7)
    {
      return;
    }

    v62 = a1;
    v27 = v7;
  }

  else
  {
    type metadata accessor for MusicRequestConfiguration(0);
    a7();
    sub_1D510E32C(&qword_1EDD5B4E8, type metadata accessor for MusicRequestConfiguration, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D5614C08();
    if (!v7)
    {
      return;
    }

    v62 = a1;
    v27 = v7;
  }

  v66 = v27;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v29 = v64;
  if (swift_dynamicCast())
  {

    v30 = v63;
    v31 = v25;
    v32 = v60;
    (*(v60 + 32))(v63, v31, v29);
    v33 = *(v32 + 16);
    v33(v21, v30, v29);
    if ((*(v32 + 88))(v21, v29) != *MEMORY[0x1E69E6AF8])
    {
      v53 = *(v32 + 8);
      v54 = OUTLINED_FUNCTION_85_0();
      v53(v54);
      (v53)(v21, v29);

      return;
    }

    (*(v32 + 96))(v21, v29);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    sub_1D5615C08();
    OUTLINED_FUNCTION_4_0();
    (*(v35 + 8))(&v21[v34]);
    if (qword_1EC7E90A8 != -1)
    {
      OUTLINED_FUNCTION_34_26(&qword_1EC7E90A8);
    }

    v36 = sub_1D560C758();
    __swift_project_value_buffer(v36, qword_1EC87C2B8);
    v37 = v59;
    v33(v59, v63, v29);

    v38 = sub_1D560C738();
    sub_1D56156C8();

    v39 = OUTLINED_FUNCTION_90_10();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_1D4E6835C(v62, a2, &v65);
      *(v41 + 12) = 2080;
      a2 = v58;
      v33(v58, v37, v64);
      v42 = sub_1D5614DB8();
      v44 = v43;
      v45 = OUTLINED_FUNCTION_87_9();
      a2(v45, v64);
      v46 = sub_1D4E6835C(v42, v44, &v65);

      *(v41 + 14) = v46;
      OUTLINED_FUNCTION_27_31();
      _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
      swift_arrayDestroy();
      v29 = v64;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v52 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v52);
    }

    else
    {

      v55 = OUTLINED_FUNCTION_87_9();
      a2(v55, v29);
    }

    v56 = sub_1D4F48F20();
    OUTLINED_FUNCTION_121_0(&type metadata for Bag.Error, v56);
    *v57 = 2;
    swift_willThrow();
    a2(v63, v29);
  }
}

void sub_1D5108560(NSObject *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D5615C18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v42 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v39[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39[-v18];
  v43 = a1;
  sub_1D5614C58();
  if (v3)
  {
    v45 = v3;
    v20 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      (*(v7 + 32))(v17, v19, v6);
      v21 = *(v7 + 16);
      v21(v14, v17, v6);
      if ((*(v7 + 88))(v14, v6) != *MEMORY[0x1E69E6AF8])
      {
        v37 = *(v7 + 8);
        v37(v17, v6);
        v37(v14, v6);

        return;
      }

      (*(v7 + 96))(v14, v6);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
      v23 = sub_1D5615C08();
      (*(*(v23 - 8) + 8))(&v14[v22], v23);
      if (qword_1EC7E90A8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D560C758();
      __swift_project_value_buffer(v24, qword_1EC87C2B8);
      v25 = v44;
      v21(v44, v17, v6);

      v26 = sub_1D560C738();
      v27 = sub_1D56156C8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v40 = v27;
        v29 = v28;
        v41 = swift_slowAlloc();
        v46 = v41;
        *v29 = 136315394;
        *(v29 + 4) = sub_1D4E6835C(v43, a2, &v46);
        *(v29 + 12) = 2080;
        v43 = v26;
        v21(v42, v25, v6);
        v30 = sub_1D5614DB8();
        v32 = v31;
        v33 = *(v7 + 8);
        v33(v25, v6);
        v34 = sub_1D4E6835C(v30, v32, &v46);

        *(v29 + 14) = v34;
        v35 = v43;
        _os_log_impl(&dword_1D4E3F000, v43, v40, "Type mismatch for bag key %s: %s.", v29, 0x16u);
        v36 = v41;
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v36, -1, -1);
        MEMORY[0x1DA6ED200](v29, -1, -1);
      }

      else
      {

        v33 = *(v7 + 8);
        v33(v25, v6);
      }

      sub_1D4F48F20();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();
      v33(v17, v6);
    }
  }
}

void sub_1D5108A98(NSObject *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D5615C18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v42 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v39[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39[-v18];
  v43 = a1;
  sub_1D5614C58();
  if (v3)
  {
    v45 = v3;
    v20 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      (*(v7 + 32))(v17, v19, v6);
      v21 = *(v7 + 16);
      v21(v14, v17, v6);
      if ((*(v7 + 88))(v14, v6) != *MEMORY[0x1E69E6AF8])
      {
        v37 = *(v7 + 8);
        v37(v17, v6);
        v37(v14, v6);

        return;
      }

      (*(v7 + 96))(v14, v6);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
      v23 = sub_1D5615C08();
      (*(*(v23 - 8) + 8))(&v14[v22], v23);
      if (qword_1EC7E90A8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D560C758();
      __swift_project_value_buffer(v24, qword_1EC87C2B8);
      v25 = v44;
      v21(v44, v17, v6);

      v26 = sub_1D560C738();
      v27 = sub_1D56156C8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v40 = v27;
        v29 = v28;
        v41 = swift_slowAlloc();
        v46 = v41;
        *v29 = 136315394;
        *(v29 + 4) = sub_1D4E6835C(v43, a2, &v46);
        *(v29 + 12) = 2080;
        v43 = v26;
        v21(v42, v25, v6);
        v30 = sub_1D5614DB8();
        v32 = v31;
        v33 = *(v7 + 8);
        v33(v25, v6);
        v34 = sub_1D4E6835C(v30, v32, &v46);

        *(v29 + 14) = v34;
        v35 = v43;
        _os_log_impl(&dword_1D4E3F000, v43, v40, "Type mismatch for bag key %s: %s.", v29, 0x16u);
        v36 = v41;
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v36, -1, -1);
        MEMORY[0x1DA6ED200](v29, -1, -1);
      }

      else
      {

        v33 = *(v7 + 8);
        v33(v25, v6);
      }

      sub_1D4F48F20();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();
      v33(v17, v6);
    }
  }
}

uint64_t sub_1D5108FCC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for MusicRequestConfiguration(0);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for Bag(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5109098, 0, 0);
}

uint64_t sub_1D5109098()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v1 + 64) + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_configuration;
  v3 = *v2;
  *(v1 + 104) = *v2;
  v4 = *(v2 + 8);
  *(v1 + 112) = v4;
  v5 = *(v2 + 16);
  *(v1 + 224) = v5;
  if (v5 == 255)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v11 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v11, qword_1EDD76A90);
    v12 = sub_1D560C738();
    v13 = sub_1D56156C8();
    if (OUTLINED_FUNCTION_58_12(v13))
    {
      v14 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_86_10(v14);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v15, v16, v17, v18, v0, 2u);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v19 = *(v1 + 56);

    *(v19 + 64) = 0;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *v19 = 0u;
    *(v19 + 16) = 0u;

    OUTLINED_FUNCTION_55();

    return v20();
  }

  else
  {
    v6 = *(v1 + 72);
    sub_1D4E58128(v3, v4, v5);
    sub_1D502EF3C();
    v7 = *(v6 + 17);
    *(v1 + 225) = v7;
    if (v7 == 1)
    {
      v8 = swift_task_alloc();
      *(v1 + 120) = v8;
      *v8 = v1;
      v9 = OUTLINED_FUNCTION_82_10(v8);

      return sub_1D4F56EB4(v9);
    }

    else
    {
      v21 = swift_task_alloc();
      *(v1 + 136) = v21;
      *v21 = v1;
      OUTLINED_FUNCTION_82_10(v21);

      return sub_1D4F573D4();
    }
  }
}

uint64_t sub_1D51092C0()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51093CC()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51094D8()
{
  v1 = *(v0 + 152);
  type metadata accessor for Bag.UnderlyingBagWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 128);
  v4 = *(v0 + 225);
  v5 = *(v0 + 88);
  v6 = v5 + *(*(v0 + 80) + 20);
  *v6 = v2;
  *(v6 + 8) = (v4 & 1) == 0;
  OUTLINED_FUNCTION_24_31();
  sub_1D510E130(v8, v5, v7);
  OUTLINED_FUNCTION_25_36();
  sub_1D5109F14(v0 + 16);
  if (v3)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v9 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v9, qword_1EDD76A90);
    v10 = v3;
    v11 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_97_9();
    if (OUTLINED_FUNCTION_165_0())
    {
      OUTLINED_FUNCTION_142();
      v12 = OUTLINED_FUNCTION_38_12();
      OUTLINED_FUNCTION_98_8(5.8381e-34);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_1(v13);
      sub_1D4E765C8(v12, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v16 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v16);
    }

    *&v20 = OUTLINED_FUNCTION_51_19();
  }

  else
  {
    v17 = *(v0 + 16);
    v20 = *(v0 + 24);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
  }

  *(v0 + 184) = v19;
  *(v0 + 192) = v18;
  *(v0 + 168) = v20;
  *(v0 + 226) = v17;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_17_39(v21);

  return sub_1D52CCB58();
}

uint64_t sub_1D51096A0()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_30_28();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156C8();

  v6 = OUTLINED_FUNCTION_90_10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  if (v8)
  {
    OUTLINED_FUNCTION_142();
    v10 = OUTLINED_FUNCTION_71_11();
    *v1 = 138543362;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v13, v14, "Eligibility: Unable to check eligibility because we are unable to get the bag: %{public}@.");
    sub_1D4E765C8(v10, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v15 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v15, v16, v9);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v17, v18, v9);
  }

  OUTLINED_FUNCTION_48_16();

  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t sub_1D5109834()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 225);
  v3 = *(v0 + 88);
  v4 = v3 + *(*(v0 + 80) + 20);
  *v4 = *(v0 + 160);
  *(v4 + 8) = (v2 & 1) == 0;
  OUTLINED_FUNCTION_24_31();
  sub_1D510E130(v5, v3, v6);
  OUTLINED_FUNCTION_25_36();
  sub_1D5109F14(v0 + 16);
  if (v1)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v7 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v7, qword_1EDD76A90);
    v8 = v1;
    v9 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_97_9();
    if (OUTLINED_FUNCTION_165_0())
    {
      OUTLINED_FUNCTION_142();
      v10 = OUTLINED_FUNCTION_38_12();
      OUTLINED_FUNCTION_98_8(5.8381e-34);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_1(v11);
      sub_1D4E765C8(v10, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v14 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v14);
    }

    *&v18 = OUTLINED_FUNCTION_51_19();
  }

  else
  {
    v15 = *(v0 + 16);
    v18 = *(v0 + 24);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
  }

  *(v0 + 184) = v17;
  *(v0 + 192) = v16;
  *(v0 + 168) = v18;
  *(v0 + 226) = v15;
  v19 = swift_task_alloc();
  *(v0 + 200) = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_17_39(v19);

  return sub_1D52CCB58();
}

uint64_t sub_1D51099E0()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_30_28();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156C8();

  v6 = OUTLINED_FUNCTION_90_10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  if (v8)
  {
    OUTLINED_FUNCTION_142();
    v10 = OUTLINED_FUNCTION_71_11();
    *v1 = 138543362;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v13, v14, "Eligibility: Unable to check eligibility because we are unable to get the bag: %{public}@.");
    sub_1D4E765C8(v10, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v15 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v15, v16, v9);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v17, v18, v9);
  }

  OUTLINED_FUNCTION_48_16();

  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t sub_1D5109B74()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 208) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5109C88()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v11 = *(v0 + 168);
  v4 = *(v0 + 226);
  v5 = *(v0 + 224);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 56);
  OUTLINED_FUNCTION_37_23(*(v0 + 96));
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  *(v8 + 32) = v4;
  *(v8 + 40) = v11;
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D5109D5C()
{
  OUTLINED_FUNCTION_160();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v2 = *(v0 + 208);
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156C8();

  v6 = OUTLINED_FUNCTION_90_10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 224);
  if (v8)
  {
    OUTLINED_FUNCTION_142();
    v11 = OUTLINED_FUNCTION_71_11();
    *v1 = 138543362;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v14, v15, "Eligibility: Unable to check eligibility because the database is unavailable, which may be needed to determine eligibility: %{public}@.");
    sub_1D4E765C8(v11, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v16 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v16, v17, v10);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v18, v19, v10);
  }

  v20 = *(v0 + 56);
  OUTLINED_FUNCTION_37_23(*(v0 + 96));
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0;

  OUTLINED_FUNCTION_55();

  return v21();
}

uint64_t sub_1D5109F14@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D51057D8();
  if (!v1)
  {
    v4 = result;
    v5 = sub_1D510588C();
    v6 = sub_1D510588C();
    result = sub_1D5105A28(0xD000000000000021, 0x80000001D5684890);
    *a1 = v4 & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = result;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D5109FD4()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_1D510A060;

  return sub_1D5108FCC(v0 + 88);
}

uint64_t sub_1D510A060()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D510A144()
{
  OUTLINED_FUNCTION_80();
  memcpy((v1 + 16), (v1 + 88), 0x48uLL);
  *(v1 + 272) = *(v1 + 88);
  *(v1 + 288) = *(v1 + 104);
  v2 = *(v1 + 40);
  *(v1 + 232) = *(v1 + 120);
  *(v1 + 248) = *(v1 + 136);
  *(v1 + 264) = *(v1 + 152);
  if (v2)
  {
    *(v1 + 160) = *(v1 + 272);
    *(v1 + 176) = *(v1 + 288);
    *(v1 + 184) = v2;
    v3 = *(v1 + 248);
    *(v1 + 192) = *(v1 + 232);
    *(v1 + 208) = v3;
    *(v1 + 224) = *(v1 + 264);
    v4 = swift_task_alloc();
    *(v1 + 304) = v4;
    *v4 = v1;
    v4[1] = sub_1D510A2F4;

    return sub_1D510A450();
  }

  else
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v6 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v6, qword_1EDD76A90);
    v7 = sub_1D560C738();
    v8 = sub_1D56156C8();
    if (OUTLINED_FUNCTION_58_12(v8))
    {
      v9 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_86_10(v9);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v10, v11, v12, v13, v0, 2u);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    OUTLINED_FUNCTION_50();

    return v14(0);
  }
}

uint64_t sub_1D510A2F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  *(v1 + 312) = v0;

  v2 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D510A3E4()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(v0 + 16, &qword_1EC7F0190, &unk_1D5636258);
  OUTLINED_FUNCTION_50();

  return v1();
}

uint64_t sub_1D510A450()
{
  OUTLINED_FUNCTION_80();
  v2 = sub_1D560C298();
  *(v1 + 104) = v2;
  OUTLINED_FUNCTION_69(v2);
  *(v1 + 112) = v3;
  *(v1 + 120) = OUTLINED_FUNCTION_127();
  v4 = sub_1D560C328();
  *(v1 + 128) = v4;
  OUTLINED_FUNCTION_69(v4);
  *(v1 + 136) = v5;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v6);
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = *v0;
  *(v1 + 287) = *(v0 + 16);
  *(v1 + 273) = *(v0 + 17);
  *(v1 + 276) = *(v0 + 20);
  *(v1 + 208) = *(v0 + 24);
  v7 = *(v0 + 32);
  *(v1 + 288) = v7;
  *(v1 + 272) = v7;
  *(v1 + 280) = *(v0 + 33);
  *(v1 + 283) = *(v0 + 36);
  *(v1 + 216) = *(v0 + 40);
  *(v1 + 88) = *(v0 + 56);
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D510A60C()
{
  OUTLINED_FUNCTION_160();
  sub_1D510E1C4();
  v2 = sub_1D52FE2A4();
  if (v2)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v3 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
    v4 = sub_1D560C738();
    v5 = sub_1D56156E8();
    if (!OUTLINED_FUNCTION_58_12(v5))
    {
      goto LABEL_15;
    }

    v6 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_86_10(v6);
    v7 = "Eligibility: Overridden to true.";
LABEL_14:
    _os_log_impl(&dword_1D4E3F000, v4, v5, v7, v0, 2u);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
LABEL_15:

    OUTLINED_FUNCTION_78_9();

    OUTLINED_FUNCTION_50();

    return v11(v2 & 1);
  }

  if ((*(v1 + 288) & 1) == 0)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v9 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v9, qword_1EDD76A90);
    v4 = sub_1D560C738();
    v5 = sub_1D56156C8();
    if (!OUTLINED_FUNCTION_58_12(v5))
    {
      goto LABEL_15;
    }

    v10 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_86_10(v10);
    v7 = "Eligibility: The bag has disabled backfill.";
    goto LABEL_14;
  }

  v8 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D510A804, v8, 0);
}

uint64_t sub_1D510A804()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[26];
  v0[29] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[30] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[31] = v2;
  *v2 = v3;
  v2[1] = sub_1D510A8E0;
  OUTLINED_FUNCTION_56_14();

  return sub_1D535C70C(v4, v5, v6, v7, v8);
}

uint64_t sub_1D510A8E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D510A9E8()
{
  v100 = v0;
  sub_1D510E208(v0[22], v0[23]);
  v3 = v0[32];
  v4 = v0[21];
  v5 = v0[16];
  sub_1D5032A50(v0[23], v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E765C8(v0[21], &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v6 = v0[19];
    v4 = v0[20];
    v7 = OUTLINED_FUNCTION_52_16();
    v8(v7);
    sub_1D560C2F8();
    sub_1D560C308();
    v10 = v9;
    v11 = *(v2 + 8);
    v11(v6, v1);
    if (v10 < 0.0)
    {
      if (qword_1EDD54478 != -1)
      {
        OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
      }

      v12 = v0[20];
      v14 = v0[17];
      v13 = v0[18];
      v15 = v0[16];
      v16 = sub_1D560C758();
      v17 = __swift_project_value_buffer(v16, qword_1EDD76A90);
      v19 = *(v14 + 16);
      v18 = v14 + 16;
      v19(v13, v12, v15);
      v20 = sub_1D560C738();
      v21 = sub_1D56156C8();
      os_log_type_enabled(v20, v21);
      OUTLINED_FUNCTION_85_5();
      if (v22)
      {
        v23 = v0[15];
        v96 = v18;
        v24 = OUTLINED_FUNCTION_142();
        v25 = OUTLINED_FUNCTION_138_0();
        v98[0] = v25;
        *v24 = 136446210;
        sub_1D510D36C(v23);
        sub_1D560C228();
        v26 = OUTLINED_FUNCTION_49_13();
        v27(v26);
        v11(v17, v96);
        v28 = sub_1D4E6835C(v95, v13, v98);

        *(v24 + 4) = v28;
        OUTLINED_FUNCTION_59_13();
        _os_log_impl(v29, v30, v31, v32, v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();

        v11(v17, v96);
        v33 = v97;
LABEL_92:
        sub_1D4E765C8(v33, &qword_1EC7EA3B8, &unk_1D561E370);
        goto LABEL_93;
      }

      v11(v17, v18);
      v11(v17, v18);
LABEL_91:
      v33 = v13;
      goto LABEL_92;
    }

    v11(v0[20], v0[16]);
  }

  OUTLINED_FUNCTION_66_10();
  sub_1D53701B8();
  if (v3)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v34 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v34, qword_1EDD76A90);
    v35 = v3;
    v36 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_97_9();
    if (OUTLINED_FUNCTION_165_0())
    {
      OUTLINED_FUNCTION_142();
      v37 = OUTLINED_FUNCTION_38_12();
      OUTLINED_FUNCTION_98_8(5.8381e-34);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_1(v38);
      OUTLINED_FUNCTION_26_35(&dword_1D4E3F000, v39, v40, "Eligibility: Assuming user is ineligible because unable to get account ID due to %{public}@.");
      sub_1D4E765C8(v37, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v41 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v41);
    }

    else
    {
    }

    v33 = v0[23];
    goto LABEL_92;
  }

  OUTLINED_FUNCTION_65_16();
  if (!v44)
  {

LABEL_86:
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v65 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v65, qword_1EDD76A90);
    v66 = sub_1D560C738();
    v67 = sub_1D56156C8();
    v68 = OUTLINED_FUNCTION_54_13(v67);
    v13 = v0[23];
    if (v68)
    {
      v69 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_81_12(v69);
      OUTLINED_FUNCTION_27_31();
      _os_log_impl(v70, v71, v72, v73, v74, 2u);
      v75 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v75);
    }

    goto LABEL_91;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v47 = sub_1D5341FA0();
    v64 = v94;
    goto LABEL_85;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    OUTLINED_FUNCTION_93_9();
    if (v79)
    {
      if (v52)
      {
        if (v52 != 1)
        {
          OUTLINED_FUNCTION_39_20();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v79 & v48)
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (!v79)
            {
              break;
            }

            v47 = v59 + v58;
            if (__OFADD__(v59, v58))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v79)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

LABEL_118:
      __break(1u);
      return;
    }

    if (v53 != 45)
    {
      if (v52)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v79 & v48)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v79)
          {
            break;
          }

          v47 = v63 + v62;
          if (__OFADD__(v63, v62))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v79)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v52)
    {
      if (v52 != 1)
      {
        OUTLINED_FUNCTION_39_20();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v79 & v48)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v79)
          {
            break;
          }

          v47 = v55 - v54;
          if (__OFSUB__(v55, v54))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v79)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if ((v42 & 0x1000000000000000) == 0)
  {
    goto LABEL_112;
  }

  for (i = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1D5615C58())
  {
    v46 = *i;
    if (v46 == 43)
    {
      if (v43 < 1)
      {
        goto LABEL_117;
      }

      if (v43 == 1)
      {
        goto LABEL_83;
      }

      v47 = 0;
      if (i)
      {
        OUTLINED_FUNCTION_80_7();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v79 & v48)
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v79)
          {
            goto LABEL_83;
          }

          v47 = v57 + v56;
          if (__OFADD__(v57, v56))
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_40_0();
          if (v79)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_74;
    }

    if (v46 == 45)
    {
      if (v43 >= 1)
      {
        if (v43 == 1)
        {
          goto LABEL_83;
        }

        v47 = 0;
        if (i)
        {
          OUTLINED_FUNCTION_80_7();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v79 & v48)
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (!v79)
            {
              break;
            }

            v47 = v50 - v49;
            if (__OFSUB__(v50, v49))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v79)
            {
              goto LABEL_84;
            }
          }

LABEL_83:
          v47 = 0;
          v51 = 1;
          goto LABEL_84;
        }

        goto LABEL_74;
      }

      __break(1u);
      goto LABEL_116;
    }

    if (!v43)
    {
      goto LABEL_83;
    }

    v47 = 0;
    if (i)
    {
      do
      {
        v60 = *i - 48;
        if (v60 > 9)
        {
          goto LABEL_83;
        }

        v61 = 10 * v47;
        if ((v47 * 10) >> 64 != (10 * v47) >> 63)
        {
          goto LABEL_83;
        }

        v47 = v61 + v60;
        if (__OFADD__(v61, v60))
        {
          goto LABEL_83;
        }

        ++i;
      }

      while (--v43);
    }

LABEL_74:
    v51 = 0;
LABEL_84:
    v99 = v51;
    v64 = v51;
LABEL_85:

    if (v64)
    {
      goto LABEL_86;
    }

    v78 = v0[28];
    if (v78)
    {
      break;
    }

    __break(1u);
LABEL_112:
    ;
  }

  v79 = v47 == 0x8000000000000000 && v78 == -1;
  if (v79)
  {
    __break(1u);
    goto LABEL_114;
  }

  if (v0[27] >= v47 % v78)
  {
    if (qword_1EDD54478 == -1)
    {
LABEL_106:
      v82 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v82, qword_1EDD76A90);
      v83 = sub_1D560C738();
      v84 = sub_1D56156E8();
      v85 = OUTLINED_FUNCTION_54_13(v84);
      v86 = v0[23];
      if (v85)
      {
        v87 = OUTLINED_FUNCTION_63_12();
        OUTLINED_FUNCTION_81_12(v87);
        OUTLINED_FUNCTION_27_31();
        _os_log_impl(v88, v89, v90, v91, v92, 2u);
        v93 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v93);
      }

      sub_1D4E765C8(v86, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_93:
      OUTLINED_FUNCTION_78_9();

      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_43_16();

      __asm { BRAA            X2, X16 }
    }

LABEL_114:
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    goto LABEL_106;
  }

  OUTLINED_FUNCTION_13_40(v78);
  v80 = swift_task_alloc();
  v0[33] = v80;
  *v80 = v0;
  OUTLINED_FUNCTION_18_42(v80);
  OUTLINED_FUNCTION_43_16();

  sub_1D510C060();
}

void sub_1D510B1C4()
{
  v108 = v0;

  OUTLINED_FUNCTION_68_11();
  if (!v88)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v2 = v0[32];
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (v7)
  {
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_38_12();
    v10 = OUTLINED_FUNCTION_138_0();
    v106[0] = v10;
    *v1 = 136315394;
    *(v1 + 4) = sub_1D4E6835C(0xD000000000000027, 0x80000001D5684740, v106);
    *(v1 + 12) = 2114;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 14) = v12;
    *v9 = v12;
    OUTLINED_FUNCTION_27_31();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    sub_1D4E765C8(v9, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v18 = OUTLINED_FUNCTION_3_1();
    MEMORY[0x1DA6ED200](v18);
  }

  else
  {
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = v0[21];
  v24 = v0[16];
  sub_1D5032A50(v0[23], v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1D4E765C8(v0[21], &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v25 = v0[19];
    v23 = v0[20];
    v26 = OUTLINED_FUNCTION_52_16();
    v27(v26);
    sub_1D560C2F8();
    sub_1D560C308();
    v29 = v28;
    v30 = *(v6 + 8);
    v30(v25, v1);
    if (v29 < 0.0)
    {
      OUTLINED_FUNCTION_68_11();
      if (!v88)
      {
        OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
      }

      v31 = v0[20];
      v33 = v0[17];
      v32 = v0[18];
      v34 = v0[16];
      v35 = __swift_project_value_buffer(v3, qword_1EDD76A90);
      v37 = *(v33 + 16);
      v36 = v33 + 16;
      v37(v32, v31, v34);
      v38 = sub_1D560C738();
      v39 = sub_1D56156C8();
      os_log_type_enabled(v38, v39);
      OUTLINED_FUNCTION_85_5();
      if (v40)
      {
        v41 = v0[15];
        v104 = v36;
        v42 = OUTLINED_FUNCTION_142();
        v43 = OUTLINED_FUNCTION_138_0();
        v106[0] = v43;
        *v42 = 136446210;
        sub_1D510D36C(v41);
        sub_1D560C228();
        v44 = OUTLINED_FUNCTION_49_13();
        v45(v44);
        v30(v35, v104);
        v46 = sub_1D4E6835C(v103, v35, v106);

        *(v42 + 4) = v46;
        OUTLINED_FUNCTION_59_13();
        _os_log_impl(v47, v48, v49, v50, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();

        v30(v34, v104);
        v51 = v105;
LABEL_90:
        sub_1D4E765C8(v51, &qword_1EC7EA3B8, &unk_1D561E370);
        goto LABEL_91;
      }

      v30(v35, v36);
      v30(v34, v36);
LABEL_89:
      v51 = v35;
      goto LABEL_90;
    }

    v30(v0[20], v0[16]);
  }

  OUTLINED_FUNCTION_66_10();
  sub_1D53701B8();
  OUTLINED_FUNCTION_65_16();
  if (!v54)
  {

LABEL_84:
    OUTLINED_FUNCTION_68_11();
    if (!v88)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
    v75 = sub_1D560C738();
    v76 = sub_1D56156C8();
    v77 = OUTLINED_FUNCTION_54_13(v76);
    v35 = v0[23];
    if (v77)
    {
      v78 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_81_12(v78);
      OUTLINED_FUNCTION_27_31();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      v84 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v84);
    }

    goto LABEL_89;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v57 = sub_1D5341FA0();
    v74 = v102;
    goto LABEL_83;
  }

  if ((v23 & 0x2000000000000000) != 0)
  {
    OUTLINED_FUNCTION_93_9();
    if (v88)
    {
      if (v62)
      {
        if (v62 != 1)
        {
          OUTLINED_FUNCTION_39_20();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v88 & v58)
            {
              break;
            }

            OUTLINED_FUNCTION_5_63();
            if (!v88)
            {
              break;
            }

            v57 = v69 + v68;
            if (__OFADD__(v69, v68))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v88)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_81;
      }

LABEL_117:
      __break(1u);
      return;
    }

    if (v63 != 45)
    {
      if (v62)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v88 & v58)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v88)
          {
            break;
          }

          v57 = v73 + v72;
          if (__OFADD__(v73, v72))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v88)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v62)
    {
      if (v62 != 1)
      {
        OUTLINED_FUNCTION_39_20();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v88 & v58)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v88)
          {
            break;
          }

          v57 = v65 - v64;
          if (__OFSUB__(v65, v64))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v88)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if ((v52 & 0x1000000000000000) == 0)
  {
    goto LABEL_111;
  }

  for (i = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1D5615C58())
  {
    v56 = *i;
    if (v56 == 43)
    {
      if (v53 < 1)
      {
        goto LABEL_116;
      }

      if (v53 == 1)
      {
        goto LABEL_81;
      }

      v57 = 0;
      if (i)
      {
        OUTLINED_FUNCTION_80_7();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v88 & v58)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v88)
          {
            goto LABEL_81;
          }

          v57 = v67 + v66;
          if (__OFADD__(v67, v66))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_40_0();
          if (v88)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_72;
    }

    if (v56 == 45)
    {
      if (v53 >= 1)
      {
        if (v53 == 1)
        {
          goto LABEL_81;
        }

        v57 = 0;
        if (i)
        {
          OUTLINED_FUNCTION_80_7();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v88 & v58)
            {
              break;
            }

            OUTLINED_FUNCTION_5_63();
            if (!v88)
            {
              break;
            }

            v57 = v60 - v59;
            if (__OFSUB__(v60, v59))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v88)
            {
              goto LABEL_82;
            }
          }

LABEL_81:
          v57 = 0;
          v61 = 1;
          goto LABEL_82;
        }

        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_115;
    }

    if (!v53)
    {
      goto LABEL_81;
    }

    v57 = 0;
    if (i)
    {
      do
      {
        v70 = *i - 48;
        if (v70 > 9)
        {
          goto LABEL_81;
        }

        v71 = 10 * v57;
        if ((v57 * 10) >> 64 != (10 * v57) >> 63)
        {
          goto LABEL_81;
        }

        v57 = v71 + v70;
        if (__OFADD__(v71, v70))
        {
          goto LABEL_81;
        }

        ++i;
      }

      while (--v53);
    }

LABEL_72:
    v61 = 0;
LABEL_82:
    v107 = v61;
    v74 = v61;
LABEL_83:

    if (v74)
    {
      goto LABEL_84;
    }

    v87 = v0[28];
    if (v87)
    {
      break;
    }

    __break(1u);
LABEL_111:
    ;
  }

  v88 = v57 == 0x8000000000000000 && v87 == -1;
  if (v88)
  {
    __break(1u);
    goto LABEL_113;
  }

  if (v0[27] >= v57 % v87)
  {
    OUTLINED_FUNCTION_68_11();
    if (v88)
    {
LABEL_105:
      OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
      v91 = sub_1D560C738();
      v92 = sub_1D56156E8();
      v93 = OUTLINED_FUNCTION_54_13(v92);
      v94 = v0[23];
      if (v93)
      {
        v95 = OUTLINED_FUNCTION_63_12();
        OUTLINED_FUNCTION_81_12(v95);
        OUTLINED_FUNCTION_27_31();
        _os_log_impl(v96, v97, v98, v99, v100, 2u);
        v101 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v101);
      }

      sub_1D4E765C8(v94, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_91:
      OUTLINED_FUNCTION_78_9();

      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_43_16();

      __asm { BRAA            X2, X16 }
    }

LABEL_113:
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_13_40(v87);
  v89 = swift_task_alloc();
  v0[33] = v89;
  *v89 = v0;
  OUTLINED_FUNCTION_18_42(v89);
  OUTLINED_FUNCTION_43_16();

  sub_1D510C060();
}

uint64_t sub_1D510BAE0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D510BBC4()
{
  sub_1D4E765C8(*(v0 + 184), &qword_1EC7EA3B8, &unk_1D561E370);

  OUTLINED_FUNCTION_50();

  return v1(0);
}

uint64_t sub_1D510BC88()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 448) = v1;
  *v1 = v2;
  v1[1] = sub_1D510BD14;

  return sub_1D5108FCC(v0 + 88);
}

uint64_t sub_1D510BD14()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D510BDF8()
{
  OUTLINED_FUNCTION_60();
  memcpy((v0 + 16), (v0 + 88), 0x48uLL);
  v1 = *(v0 + 40);
  if (v1)
  {
    *(v0 + 304) = *(v0 + 16);
    *(v0 + 320) = *(v0 + 32);
    *(v0 + 328) = v1;
    v2 = *(v0 + 64);
    *(v0 + 336) = *(v0 + 48);
    *(v0 + 352) = v2;
    *(v0 + 368) = *(v0 + 80);
    memcpy((v0 + 232), (v0 + 16), 0x48uLL);
    sub_1D510D304(v0 + 232, v0 + 376);
    v3 = swift_task_alloc();
    *(v0 + 456) = v3;
    *v3 = v0;
    v3[1] = sub_1D510BF04;

    return sub_1D510C060();
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D510BF04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  memcpy((v2 + 160), (v2 + 304), 0x48uLL);
  sub_1D510D33C(v2 + 160);
  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D510BFF8()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(v0 + 16, &qword_1EC7F0190, &unk_1D5636258);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D510C060()
{
  OUTLINED_FUNCTION_60();
  v2 = sub_1D560C3D8();
  *(v1 + 16) = v2;
  OUTLINED_FUNCTION_69(v2);
  *(v1 + 24) = v3;
  *(v1 + 32) = OUTLINED_FUNCTION_127();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_22(v4);
  *(v1 + 40) = OUTLINED_FUNCTION_127();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0198, &qword_1D5636268);
  OUTLINED_FUNCTION_22(v5);
  *(v1 + 48) = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01A0, &unk_1D5636270);
  OUTLINED_FUNCTION_22(v6);
  *(v1 + 56) = OUTLINED_FUNCTION_127();
  v7 = sub_1D560BD68();
  *(v1 + 64) = v7;
  OUTLINED_FUNCTION_69(v7);
  *(v1 + 72) = v8;
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v9);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v10 = sub_1D560C328();
  *(v1 + 104) = v10;
  OUTLINED_FUNCTION_69(v10);
  *(v1 + 112) = v11;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = *v0;
  *(v1 + 296) = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  *(v1 + 168) = v12;
  *(v1 + 176) = v13;
  *(v1 + 184) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D510C2AC, v12, 0);
}

uint64_t sub_1D510C2AC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[21];
  v2 = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection;
  v0[24] = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection;
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue;
  v0[25] = v3;
  v0[26] = v4;
  v0[27] = *(v1 + v4);

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[28] = v5;
  *v5 = v6;
  v5[1] = sub_1D510C38C;
  OUTLINED_FUNCTION_56_14();

  return sub_1D535C70C(v7, v8, v9, v10, v11);
}

uint64_t sub_1D510C38C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D510C498()
{
  v79 = v1;
  v6 = v1[12];
  v7 = v1[13];
  OUTLINED_FUNCTION_16_4();
  if (v8)
  {
    sub_1D4E765C8(v6, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v2 = v1[17];
    v0 = v1[18];
    v9 = v1[14];
    (*(v9 + 32))(v0, v6, v7);
    sub_1D560C2F8();
    v10 = sub_1D560C2C8();
    v11 = *(v9 + 8);
    v3 = v9 + 8;
    v4 = v11;
    (v11)(v2, v7);
    (v11)(v0, v7);
    if (v10)
    {
      OUTLINED_FUNCTION_8_51();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_94();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_1D51FB4F8(v1[7]);
  OUTLINED_FUNCTION_16_4();
  if (v8)
  {
    sub_1D4E765C8(v1[7], &qword_1EC7F01A0, &unk_1D5636270);
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v14 = OUTLINED_FUNCTION_72_14();
    OUTLINED_FUNCTION_62_4(v14, qword_1EDD76A90);
    v15 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58128(v15, v16, v17);

    v18 = sub_1D560C738();
    sub_1D56156C8();
    v19 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58768(v19, v20, v21);

    if (OUTLINED_FUNCTION_165_0())
    {
      v23 = v1[22];
      v22 = v1[23];
      v3 = OUTLINED_FUNCTION_142();
      v4 = OUTLINED_FUNCTION_138_0();
      v77 = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_1D4E6835C(v23, v22, &v77);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v24, v25, v26, v27, v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v0 = v1[5];
    v2 = 1;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    sub_1D560C418();
    OUTLINED_FUNCTION_33();
    v36 = __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    v44 = OUTLINED_FUNCTION_11_54(v36, v37, v38, v39, v40, v41, v42, v43, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
  }

  else
  {
    v44 = (*(v1[9] + 32))(v1[10], v1[7], v1[8]);
  }

  OUTLINED_FUNCTION_62_19(v44);
  sub_1D560C2F8();
  OUTLINED_FUNCTION_74_11();
  v45 = OUTLINED_FUNCTION_57_15();
  v46(v45);
  (*(v5 + 8))(v3, v4);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    v48 = v1[22];
    v47 = v1[23];
    sub_1D4E765C8(v1[11], &qword_1EC7EA3B8, &unk_1D561E370);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_96_8();
    MEMORY[0x1DA6EAC70](v48, v47);
    MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_95("Fatal error", v49, v50, v77, v78, "MusicKitInternal/MusicDownloadedSongCatalogStoreEligibility.swift");
    OUTLINED_FUNCTION_94();
  }

  else
  {
    v51 = OUTLINED_FUNCTION_69_13();
    v52(v51);
    OUTLINED_FUNCTION_19_40();
    OUTLINED_FUNCTION_94();

    MEMORY[0x1EEE6DFA0](v53, v54, v55);
  }
}

uint64_t sub_1D510C888()
{
  v76 = v0;
  v4 = v0[29];
  v6 = v0[12];
  v5 = v0[13];

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  sub_1D4E765C8(v0[12], &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D51FB4F8(v0[7]);
  OUTLINED_FUNCTION_16_4();
  if (v10)
  {
    sub_1D4E765C8(v0[7], &qword_1EC7F01A0, &unk_1D5636270);
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v11 = OUTLINED_FUNCTION_72_14();
    OUTLINED_FUNCTION_62_4(v11, qword_1EDD76A90);
    v12 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58128(v12, v13, v14);

    v15 = sub_1D560C738();
    sub_1D56156C8();
    v16 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58768(v16, v17, v18);

    if (OUTLINED_FUNCTION_165_0())
    {
      v20 = v0[22];
      v19 = v0[23];
      v1 = OUTLINED_FUNCTION_142();
      v2 = OUTLINED_FUNCTION_138_0();
      v74 = v2;
      *v1 = 136446210;
      *(v1 + 4) = sub_1D4E6835C(v20, v19, &v74);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v21, v22, v23, v24, v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v2);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v5 = v0[5];
    v6 = 1;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    sub_1D560C418();
    OUTLINED_FUNCTION_33();
    v33 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v41 = OUTLINED_FUNCTION_11_54(v33, v34, v35, v36, v37, v38, v39, v40, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  }

  else
  {
    v41 = (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  }

  OUTLINED_FUNCTION_62_19(v41);
  sub_1D560C2F8();
  OUTLINED_FUNCTION_74_11();
  v42 = OUTLINED_FUNCTION_57_15();
  v43(v42);
  (*(v3 + 8))(v1, v2);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    v45 = v0[22];
    v44 = v0[23];
    sub_1D4E765C8(v0[11], &qword_1EC7EA3B8, &unk_1D561E370);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_96_8();
    MEMORY[0x1DA6EAC70](v45, v44);
    MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
    return OUTLINED_FUNCTION_95("Fatal error", v46, v47, v74, v75, "MusicKitInternal/MusicDownloadedSongCatalogStoreEligibility.swift");
  }

  else
  {
    v49 = OUTLINED_FUNCTION_69_13();
    v50(v49);
    v51 = OUTLINED_FUNCTION_19_40();

    return MEMORY[0x1EEE6DFA0](v51, v52, v53);
  }
}

uint64_t sub_1D510CBB8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[26];
  v2 = v0[21];
  v0[32] = *(v2 + v0[24]);
  v0[33] = *(v2 + v1);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D510CC3C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[32];
  v1 = v0[33];
  sub_1D560C208();
  v3 = sub_1D5615558();
  v5 = v4;
  v0[34] = v4;
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1D510CD10;

  return sub_1D52FAA28(v3, v5, 0xD000000000000027, 0x80000001D5684740, v2, v1);
}

uint64_t sub_1D510CD10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D510CE24()
{
  v33 = v0;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EDD76A90);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_1D560C738();
  v7 = sub_1D56156B8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[30];
  v31 = v0[16];
  v10 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  if (v8)
  {
    v14 = v0[30];
    v15 = OUTLINED_FUNCTION_142();
    v30 = v13;
    v28 = OUTLINED_FUNCTION_138_0();
    v32 = v28;
    *v15 = 136446210;
    sub_1D510E32C(&qword_1EC7EF1D8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v16 = sub_1D56160F8();
    v29 = v11;
    v18 = v17;
    v19 = OUTLINED_FUNCTION_74_0();
    v14(v19);
    v20 = sub_1D4E6835C(v16, v18, &v32);

    *(v15 + 4) = v20;
    OUTLINED_FUNCTION_59_13();
    _os_log_impl(v21, v22, v23, v24, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();

    (v14)(v31, v10);
    (*(v12 + 8))(v29, v30);
  }

  else
  {

    v25 = OUTLINED_FUNCTION_74_0();
    v9(v25);
    (v9)(v31, v10);
    (*(v12 + 8))(v11, v13);
  }

  OUTLINED_FUNCTION_8_51();

  OUTLINED_FUNCTION_55();

  return v26();
}

uint64_t sub_1D510D0C0()
{
  v19 = v0;

  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76A90);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  v4 = OUTLINED_FUNCTION_58_12(v3);
  v5 = v0[36];
  v17 = v0[30];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  if (v4)
  {
    v16 = v0[10];
    v9 = OUTLINED_FUNCTION_142();
    v15 = v8;
    v10 = OUTLINED_FUNCTION_138_0();
    v18 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1D4E6835C(0xD000000000000027, 0x80000001D5684740, &v18);
    _os_log_impl(&dword_1D4E3F000, v2, v3, "Eligibility: Unable to save the %{public}s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();

    v11 = OUTLINED_FUNCTION_85_0();
    v17(v11);
    (*(v6 + 8))(v16, v15);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_85_0();
    v17(v12);
    (*(v6 + 8))(v7, v8);
  }

  OUTLINED_FUNCTION_8_51();

  OUTLINED_FUNCTION_55();

  return v13();
}

uint64_t sub_1D510D36C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v27 = sub_1D560C418();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D560C288();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D560C268();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560C248();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D560C258();
  MEMORY[0x1EEE9AC00](v16);
  (*(v18 + 104))(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v19 = v12;
  v20 = v27;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969358], v19);
  (*(v9 + 104))(v11, *MEMORY[0x1E6969370], v8);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969380], v26);
  sub_1D560C3F8();
  result = __swift_getEnumTagSinglePayload(v3, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v24 + 32))(v23, v3, v20);
    return sub_1D560C278();
  }

  return result;
}

uint64_t sub_1D510D754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6142656C62616E65 && a2 == 0xEE006C6C69666B63;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656B63754278616DLL && a2 == 0xEA00000000007374;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6375426C61746F74 && a2 == 0xEC0000007374656BLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656D695474696177 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D510D8C0(char a1)
{
  result = 0x6142656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0x656B63754278616DLL;
      break;
    case 2:
      result = 0x6375426C61746F74;
      break;
    case 3:
      result = 0x656D695474696177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D510D95C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01C0, &qword_1D56363D8);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-v6];
  v8 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1D510E4A8();
  sub_1D56163D8();
  v11[15] = 0;
  OUTLINED_FUNCTION_60_10();
  sub_1D5616098();
  if (!v1)
  {
    v11[14] = 1;
    OUTLINED_FUNCTION_60_10();
    sub_1D56160B8();
    v11[13] = 2;
    OUTLINED_FUNCTION_60_10();
    sub_1D56160B8();
    v11[12] = 3;
    sub_1D5616088();
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1D510DAE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01B0, &qword_1D56363D0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D510E4A8();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  OUTLINED_FUNCTION_33_32();
  v11 = sub_1D5615FA8();
  v23 = 1;
  OUTLINED_FUNCTION_33_32();
  v12 = sub_1D5615FC8();
  v22 = 2;
  OUTLINED_FUNCTION_33_32();
  v20 = sub_1D5615FC8();
  v21 = 3;
  OUTLINED_FUNCTION_33_32();
  v13 = sub_1D5615F98();
  v14 = v10;
  v16 = v15;
  (*(v7 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11 & 1;
  v18 = v20;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1D510DCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D510D754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D510DCFC(uint64_t a1)
{
  v2 = sub_1D510E4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510DD38(uint64_t a1)
{
  v2 = sub_1D510E4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D510DD74@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D510DAE8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D510DDD4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1D5614F88();
    OUTLINED_FUNCTION_75_10();
    sub_1D4F001D0();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1D4F001D0();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_61_17();
      v17 = sub_1D5614F58();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_61_17();
      v16 = sub_1D5614E48();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_1D5614F88();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4F001D0();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_1D4F001D0();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_61_17();
    v16 = sub_1D5614E48();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1D5614F88();
        OUTLINED_FUNCTION_75_10();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1D4F001D0();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D510E130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D510E1C4()
{
  result = qword_1EDD526B8;
  if (!qword_1EDD526B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526B8);
  }

  return result;
}

uint64_t sub_1D510E208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D510E278()
{
  result = qword_1EDD52888;
  if (!qword_1EDD52888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F01A8, &unk_1D5636290);
    sub_1D510E32C(&qword_1EDD599B0, _s10PropertiesV15BagDateIntervalVMa, &unk_1D561F7F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52888);
  }

  return result;
}

uint64_t sub_1D510E32C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D510E374()
{
  result = qword_1EDD52750;
  if (!qword_1EDD52750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52750);
  }

  return result;
}

uint64_t sub_1D510E3F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D510E438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D510E4A8()
{
  result = qword_1EC7F01B8;
  if (!qword_1EC7F01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01B8);
  }

  return result;
}

_BYTE *_s31TransitionsOfflineConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D510E5DC()
{
  result = qword_1EC7F01C8;
  if (!qword_1EC7F01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01C8);
  }

  return result;
}

unint64_t sub_1D510E634()
{
  result = qword_1EC7F01D0;
  if (!qword_1EC7F01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01D0);
  }

  return result;
}

unint64_t sub_1D510E68C()
{
  result = qword_1EC7F01D8;
  if (!qword_1EC7F01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_36()
{

  return sub_1D510E130(v0, v1, type metadata accessor for Bag);
}

uint64_t OUTLINED_FUNCTION_34_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_23(uint64_t a1)
{

  return sub_1D4E58568(a1, type metadata accessor for Bag);
}

uint64_t OUTLINED_FUNCTION_46_16()
{

  return type metadata accessor for Bag(0);
}

uint64_t OUTLINED_FUNCTION_57_15()
{
  *(v1 + 240) = *(v2 + 8);
  *(v1 + 248) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_62_19(uint64_t a1)
{

  return sub_1D560C3B8();
}

uint64_t OUTLINED_FUNCTION_71_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_14()
{

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_74_11()
{

  return MEMORY[0x1EEDC5698](v1, v0, 0);
}

uint64_t OUTLINED_FUNCTION_75_10()
{
}

uint64_t OUTLINED_FUNCTION_76_8(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_78_9()
{
}

void OUTLINED_FUNCTION_97_9()
{
}

id OUTLINED_FUNCTION_98_8(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t EditorialCard.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EditorialCard.editorialNotes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EditorialCard(0) + 24);

  return sub_1D510EA4C(v3, a1);
}

uint64_t type metadata accessor for EditorialCard(uint64_t a1)
{
  result = qword_1EDD57730;
  if (!qword_1EDD57730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D510EA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double EditorialCard._editorialArtworks.getter()
{
  type metadata accessor for EditorialCard(0);

  return result;
}

uint64_t sub_1D510EAF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x707553636973756DLL && a2 == 0xEE006F7265487265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D510EBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D510EAF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D510EBCC(uint64_t a1)
{
  v2 = sub_1D510EE78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510EC08(uint64_t a1)
{
  v2 = sub_1D510EE78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D510EC44(uint64_t a1)
{
  v2 = sub_1D510EECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510EC80(uint64_t a1)
{
  v2 = sub_1D510EECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EditorialCard.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01E0, &qword_1D56364F8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01E8, &qword_1D5636500);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D510EE78();
  sub_1D56163D8();
  sub_1D510EECC();
  sub_1D5616018();
  (*(v5 + 8))(v8, v3);
  return (*(v11 + 8))(v1, v9);
}

unint64_t sub_1D510EE78()
{
  result = qword_1EC7F01F0;
  if (!qword_1EC7F01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01F0);
  }

  return result;
}

unint64_t sub_1D510EECC()
{
  result = qword_1EC7F01F8;
  if (!qword_1EC7F01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01F8);
  }

  return result;
}

uint64_t EditorialCard.Kind.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

void EditorialCard.Kind.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0200, &qword_1D5636508);
  OUTLINED_FUNCTION_4();
  v37 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0208, &qword_1D5636510);
  OUTLINED_FUNCTION_4();
  v38 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D510EE78();
  sub_1D5616398();
  if (v1)
  {
    goto LABEL_9;
  }

  v35 = v7;
  v36 = a1;
  v13 = sub_1D5615FE8();
  sub_1D4FE3168(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v37 = v14;
LABEL_8:
    v28 = v8;
    v29 = v38;
    v30 = sub_1D5615C18();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v32 = &type metadata for EditorialCard.Kind;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v17, v28);
    a1 = v36;
LABEL_9:
    v33 = a1;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_1D4FE35EC();
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v36;
    v25 = v37;
    if (v23)
    {
      sub_1D510EECC();
      v26 = v35;
      sub_1D5615F18();
      v27 = v38;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v27 + 8))(v17, v8);
      v33 = v24;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v33);
      return;
    }

    v37 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static EditorialCard.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_71_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v18 && (sub_1D5616168() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_16;
  }

  v19 = type metadata accessor for EditorialCard(0);
  v20 = v19[6];
  v21 = *(v14 + 48);
  sub_1D510EA4C(a1 + v20, v17);
  sub_1D510EA4C(a2 + v20, &v17[v21]);
  OUTLINED_FUNCTION_10(v17);
  if (!v18)
  {
    sub_1D510EA4C(v17, v2);
    OUTLINED_FUNCTION_10(&v17[v21]);
    if (!v22)
    {
      (*(v7 + 32))(v11, &v17[v21], v5);
      OUTLINED_FUNCTION_0_90();
      sub_1D5110B1C(v25, v26, MEMORY[0x1E6975E60]);
      v27 = sub_1D5614D18();
      v28 = *(v7 + 8);
      v28(v11, v5);
      v28(v2, v5);
      sub_1D4E50004(v17, &qword_1EC7EAC98, &unk_1D561DA80);
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v7 + 8))(v2, v5);
LABEL_15:
    sub_1D4E50004(v17, &qword_1EC7EF648, &unk_1D5632470);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_10(&v17[v21]);
  if (!v18)
  {
    goto LABEL_15;
  }

  sub_1D4E50004(v17, &qword_1EC7EAC98, &unk_1D561DA80);
LABEL_19:
  v29 = v19[7];
  v30 = *(a2 + v29);
  if (*(a1 + v29))
  {
    if (!v30)
    {
      goto LABEL_16;
    }

    sub_1D4F28F1C();
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v30)
  {
    goto LABEL_16;
  }

  v33 = v19[8];
  v34 = *(a2 + v33);
  if (*(a1 + v33))
  {
    if (v34)
    {

      sub_1D4F2D63C();
      v36 = v35;

      if (v36)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v34)
  {
LABEL_29:
    sub_1D4F286E0();
    return v23 & 1;
  }

LABEL_16:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1D510F6D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001D5684920 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D510F8C8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x79616C70736964;
      break;
    case 5:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D510F984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D510F6D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D510F9AC(uint64_t a1)
{
  v2 = sub_1D51107E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510F9E8(uint64_t a1)
{
  v2 = sub_1D51107E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EditorialCard.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0210, &qword_1D5636518);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51107E8();
  sub_1D56163D8();
  LOBYTE(v15) = 0;
  sub_1D5616088();
  if (!v2)
  {
    LOBYTE(v15) = *(v3 + 16);
    v16 = 1;
    sub_1D511083C();
    sub_1D5616068();
    v11 = type metadata accessor for EditorialCard(0);
    LOBYTE(v15) = 2;
    sub_1D5610978();
    OUTLINED_FUNCTION_0_90();
    sub_1D5110B1C(v12, v13, MEMORY[0x1E6975E50]);
    sub_1D5616068();
    v15 = *(v3 + v11[7]);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_3_74();
    sub_1D5616068();
    v15 = *(v3 + v11[8]);
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
    sub_1D50C6874();
    OUTLINED_FUNCTION_3_74();
    sub_1D5616068();
    v15 = *(v3 + v11[9]);
    v16 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_3_74();
    sub_1D56160C8();
  }

  return (*(v7 + 8))(v10, v5);
}

void EditorialCard.hash(into:)(const void *a1)
{
  v4 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  sub_1D5614E28();
  if (*(v1 + 16) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](0);
  }

  v13 = type metadata accessor for EditorialCard(0);
  sub_1D510EA4C(v1 + v13[6], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v6 + 32))(v10, v2, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_90();
    sub_1D5110B1C(v14, v15, MEMORY[0x1E6975E58]);
    sub_1D5614CB8();
    (*(v6 + 8))(v10, v4);
  }

  if (*(v1 + v13[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v16 = *(v1 + v13[8]);
  if (v16)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F329DC(a1, v16);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F31AC0();
}

uint64_t EditorialCard.hashValue.getter()
{
  sub_1D56162D8();
  EditorialCard.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t EditorialCard.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0230, &qword_1D5636528);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v23 = type metadata accessor for EditorialCard(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D51107E8();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  LOBYTE(v25) = 0;
  *v12 = sub_1D5615F98();
  *(v12 + 8) = v14;
  v26 = 1;
  sub_1D5110890();
  sub_1D5615F78();
  *(v12 + 16) = v25;
  sub_1D5610978();
  LOBYTE(v25) = 2;
  OUTLINED_FUNCTION_0_90();
  sub_1D5110B1C(v15, v16, MEMORY[0x1E6975E68]);
  v17 = v7;
  sub_1D5615F78();
  v18 = v23;
  sub_1D51108E4(v17, v12 + *(v23 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v26 = 3;
  sub_1D4FCE3FC();
  OUTLINED_FUNCTION_2_74();
  sub_1D5615F78();
  *(v12 + v18[7]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
  v26 = 4;
  sub_1D50C66B4();
  OUTLINED_FUNCTION_2_74();
  sub_1D5615F78();
  *(v12 + v18[8]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v26 = 5;
  sub_1D4F31CF4();
  OUTLINED_FUNCTION_2_74();
  sub_1D5615FD8();
  v19 = OUTLINED_FUNCTION_4_59();
  v20(v19);
  *(v12 + v18[9]) = v25;
  sub_1D5110954(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1D51109B8(v12);
}

uint64_t sub_1D51103BC(uint64_t a1)
{
  sub_1D56162D8();
  EditorialCard.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D51103F8@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialCard.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EditorialCard.description.getter()
{
  OUTLINED_FUNCTION_7_59();
  v3 = v1;
  MEMORY[0x1DA6EAC70](*v0, *(v0 + 8));
  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x1DA6EAC70](0x203A646E696B202CLL, 0xE800000000000000);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v3;
}

uint64_t EditorialCard.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_7_59();
  v21 = v12;
  v22 = v13;
  v19 = 0x22203A646920200ALL;
  v20 = 0xE800000000000000;
  MEMORY[0x1DA6EAC70](*v0, *(v0 + 8));
  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](v19, v20);

  if ((*(v0 + 16) & 1) == 0)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x3A646E696B20200ALL, 0xEA00000000002220);
    sub_1D5615D48();
    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v19, v20);
  }

  v14 = type metadata accessor for EditorialCard(0);
  sub_1D510EA4C(v0 + *(v14 + 24), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E50004(v4, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    (*(v7 + 32))(v11, v4, v5);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1D5615B68();

    v19 = 0xD000000000000014;
    v20 = 0x80000001D5684900;
    OUTLINED_FUNCTION_0_90();
    sub_1D5110B1C(v15, v16, MEMORY[0x1E6975E70]);
    v17 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v17);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v19, v20);

    (*(v7 + 8))(v11, v5);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v21;
}

unint64_t sub_1D51107E8()
{
  result = qword_1EC7F0218;
  if (!qword_1EC7F0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0218);
  }

  return result;
}

unint64_t sub_1D511083C()
{
  result = qword_1EC7F0220;
  if (!qword_1EC7F0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0220);
  }

  return result;
}

unint64_t sub_1D5110890()
{
  result = qword_1EC7F0238;
  if (!qword_1EC7F0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0238);
  }

  return result;
}

uint64_t sub_1D51108E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5110954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51109B8(uint64_t a1)
{
  v2 = type metadata accessor for EditorialCard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5110A18()
{
  result = qword_1EC7F0248;
  if (!qword_1EC7F0248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0250, &qword_1D5636530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0248);
  }

  return result;
}

unint64_t sub_1D5110A80()
{
  result = qword_1EC7F0258;
  if (!qword_1EC7F0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0258);
  }

  return result;
}

uint64_t sub_1D5110B1C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D5110B8C(uint64_t a1)
{
  sub_1D5110C98();
  if (v1 <= 0x3F)
  {
    sub_1D5110CE8(319);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v3 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD528D0, &qword_1EC7EF8F0, &qword_1D5636520);
        if (v4 <= 0x3F)
        {
          sub_1D4E5CF94(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5110C98()
{
  if (!qword_1EDD57748[0])
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD57748);
    }
  }
}

void sub_1D5110CE8(uint64_t a1)
{
  if (!qword_1EDD53188)
  {
    sub_1D5610978();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53188);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EditorialCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5110E2C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D5110EEC()
{
  result = qword_1EC7F0268;
  if (!qword_1EC7F0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0268);
  }

  return result;
}

unint64_t sub_1D5110F44()
{
  result = qword_1EC7F0270;
  if (!qword_1EC7F0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0270);
  }

  return result;
}

unint64_t sub_1D5110F9C()
{
  result = qword_1EC7F0278;
  if (!qword_1EC7F0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0278);
  }

  return result;
}

unint64_t sub_1D5110FF4()
{
  result = qword_1EC7F0280;
  if (!qword_1EC7F0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0280);
  }

  return result;
}

unint64_t sub_1D511104C()
{
  result = qword_1EC7F0288;
  if (!qword_1EC7F0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0288);
  }

  return result;
}

unint64_t sub_1D51110A4()
{
  result = qword_1EC7F0290;
  if (!qword_1EC7F0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0290);
  }

  return result;
}

unint64_t sub_1D51110FC()
{
  result = qword_1EC7F0298;
  if (!qword_1EC7F0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0298);
  }

  return result;
}

unint64_t sub_1D5111154()
{
  result = qword_1EC7F02A0;
  if (!qword_1EC7F02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F02A0);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformTVShow(uint64_t a1)
{
  result = qword_1EDD55D20;
  if (!qword_1EDD55D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D511122C(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EC7F02A8, &qword_1EC7F02B0, ".9\a");
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EC7F02B8, &qword_1EC7F02C0, qword_1D565CE10);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
    if (v14 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
    if (v15 > 0x3F)
    {
      return v4;
    }

    sub_1D500A1D4(319);
    if (v16 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v17 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD527B0, &qword_1EC7ED098, &unk_1D5623EE0);
    if (v18 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

BOOL sub_1D511159C(void *a1, void *a2)
{
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v161 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v160 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v164 = v9;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v168 = v11;
  v12 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v162 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v158 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v166 = &v152 - v22;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v159 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v169 = &v152 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v152 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v152 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v152 - v40;
  v42 = a1[1];
  v43 = a2[1];
  if (v42)
  {
    if (!v43)
    {
      return 0;
    }

    v44 = *a1 == *a2 && v42 == v43;
    if (!v44 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v153 = v14;
  v154 = v12;
  v45 = type metadata accessor for StorePlatformTVShow(0);
  v46 = *(v45 + 20);
  v47 = a1;
  v48 = *(v38 + 48);
  v155 = v45;
  v156 = v47;
  sub_1D4F39AB0(v47 + v46, v41, &qword_1EC7EB5B8, &unk_1D56206A0);
  v157 = a2;
  sub_1D4F39AB0(a2 + v46, &v41[v48], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v41, 1, v28);
  if (v44)
  {
    OUTLINED_FUNCTION_57(&v41[v48], 1, v28);
    if (v44)
    {
      sub_1D4E50004(v41, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_23;
    }

LABEL_18:
    v52 = &qword_1EC7EC330;
    v53 = &qword_1D56222C0;
    v54 = v41;
    goto LABEL_19;
  }

  sub_1D4F39AB0(v41, v37, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v41[v48], 1, v28);
  if (v49)
  {
    v50 = OUTLINED_FUNCTION_71();
    v51(v50);
    goto LABEL_18;
  }

  (*(v30 + 32))(v33, &v41[v48], v28);
  sub_1D4F39858();
  v56 = sub_1D5614D18();
  v57 = *(v30 + 8);
  v57(v33, v28);
  v58 = OUTLINED_FUNCTION_71();
  (v57)(v58);
  sub_1D4E50004(v41, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v60 = v155;
  v59 = v156;
  v61 = v155[6];
  v62 = *(v156 + v61);
  v63 = *(v156 + v61 + 8);
  v64 = v157;
  v65 = (v157 + v61);
  v66 = v62 == *v65 && v63 == v65[1];
  if (!v66 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24();
  if (v28)
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2CE78();
    OUTLINED_FUNCTION_70_2();
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v67 = v60[8];
  v68 = *(v64 + v67);
  if (*(v59 + v67))
  {
    if (!v68 || (sub_1D4F0B2E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24();
  if (v28)
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2C07C();
    OUTLINED_FUNCTION_70_2();
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24();
  if (v28)
  {
    if (!v37)
    {
      return 0;
    }

    v69 = OUTLINED_FUNCTION_159();
    sub_1D4F2C5FC(v69, v70);
    OUTLINED_FUNCTION_70_2();
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24();
  if (v28)
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24();
  if (v28)
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v71 = v60[13];
  v72 = (v59 + v71);
  v73 = *(v59 + v71 + 8);
  v74 = (v64 + v71);
  v75 = *(v64 + v71 + 8);
  if (v73)
  {
    if (!v75)
    {
      return 0;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  v76 = v60[14];
  v77 = *(v64 + v76);
  if (*(v59 + v76))
  {
    if (!v77)
    {
      return 0;
    }

    sub_1D4EF81E0();
    if ((v78 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v79 = v155[15];
  v80 = *(v156 + v79);
  v81 = *(v157 + v79);
  if (v80)
  {
    if (!v81)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF8BA4();
    OUTLINED_FUNCTION_70_2();
    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v81)
  {
    return 0;
  }

  v82 = v155[16];
  v83 = *(v156 + v82);
  v84 = *(v157 + v82);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      return 0;
    }

LABEL_79:
    v85 = *(v167 + 48);
    v86 = v169;
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v87, v88, v89, v90);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v91, v92, v93, v94);
    OUTLINED_FUNCTION_15_46(v86);
    if (v44)
    {
      OUTLINED_FUNCTION_15_46(v169 + v85);
      if (v44)
      {
        sub_1D4E50004(v169, &unk_1EC7E9CA8, &unk_1D561D1D0);
        goto LABEL_89;
      }
    }

    else
    {
      v95 = v169;
      sub_1D4F39AB0(v169, v166, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_15_46(v95 + v85);
      if (!v96)
      {
        v97 = v153;
        v98 = v169;
        v99 = v169 + v85;
        v100 = v162;
        v101 = v154;
        (*(v153 + 32))(v162, v99, v154);
        OUTLINED_FUNCTION_0_91();
        sub_1D5114AF8(v102);
        v103 = sub_1D5614D18();
        v104 = *(v97 + 8);
        (v104)(v100, v101);
        v105 = OUTLINED_FUNCTION_132_1();
        v104(v105);
        sub_1D4E50004(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v103 & 1) == 0)
        {
          return 0;
        }

LABEL_89:
        v106 = *(v163 + 48);
        v107 = v168;
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v108, v109, v110, v111);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v112, v113, v114, v115);
        OUTLINED_FUNCTION_57(v107, 1, v165);
        if (v44)
        {
          OUTLINED_FUNCTION_57(v168 + v106, 1, v165);
          if (v44)
          {
            sub_1D4E50004(v168, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_99:
            v122 = v155[19];
            v123 = *(v156 + v122);
            v124 = *(v157 + v122);
            if (v123)
            {
              if (!v124)
              {
                return 0;
              }

              OUTLINED_FUNCTION_159();
              sub_1D4EF9D5C();
              OUTLINED_FUNCTION_70_2();
              if ((v123 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v124)
            {
              return 0;
            }

            OUTLINED_FUNCTION_35_28();
            if (v125)
            {
              if (!v126)
              {
                return 0;
              }

              v129 = *v127 == *v128 && v125 == v126;
              if (!v129 && (sub_1D5616168() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v126)
            {
              return 0;
            }

            OUTLINED_FUNCTION_35_28();
            if (v130)
            {
              if (!v131)
              {
                return 0;
              }

              v134 = *v132 == *v133 && v130 == v131;
              if (!v134 && (sub_1D5616168() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v131)
            {
              return 0;
            }

            v135 = *(v167 + 48);
            v136 = v159;
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v137, v138, v139, v140);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v141, v142, v143, v144);
            OUTLINED_FUNCTION_15_46(v136);
            if (v44)
            {
              OUTLINED_FUNCTION_15_46(v159 + v135);
              if (v44)
              {
                sub_1D4E50004(v159, &unk_1EC7E9CA8, &unk_1D561D1D0);
                return 1;
              }
            }

            else
            {
              v145 = v159;
              sub_1D4F39AB0(v159, v158, &unk_1EC7E9CA8, &unk_1D561D1D0);
              OUTLINED_FUNCTION_15_46(v145 + v135);
              if (!v146)
              {
                v147 = v154;
                v148 = v159;
                (*(v153 + 32))(v162, v159 + v135, v154);
                OUTLINED_FUNCTION_0_91();
                sub_1D5114AF8(v149);
                v150 = v158;
                OUTLINED_FUNCTION_132_1();
                sub_1D5614D18();
                v151 = OUTLINED_FUNCTION_51();
                v147(v151);
                (v147)(v150, v147);
                sub_1D4E50004(v148, &unk_1EC7E9CA8, &unk_1D561D1D0);
                return (v145 & 1) != 0;
              }

              (*(v153 + 8))(v158, v154);
            }

            v52 = &qword_1EC7E9FB0;
            v53 = &qword_1D562C590;
            v54 = v159;
LABEL_19:
            sub_1D4E50004(v54, v52, v53);
            return 0;
          }
        }

        else
        {
          v116 = v168;
          sub_1D4F39AB0(v168, v164, &qword_1EC7EC960, &unk_1D56334C0);
          OUTLINED_FUNCTION_57(v116 + v106, 1, v165);
          if (!v117)
          {
            v118 = v168;
            v119 = v165;
            (*(v161 + 32))(v160, v168 + v106, v165);
            sub_1D4F7BF60();
            v120 = v164;
            OUTLINED_FUNCTION_132_1();
            sub_1D5614D18();
            v121 = OUTLINED_FUNCTION_51();
            v119(v121);
            (v119)(v120, v119);
            sub_1D4E50004(v118, &qword_1EC7EC960, &unk_1D56334C0);
            if ((v116 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_99;
          }

          (*(v161 + 8))(v164, v165);
        }

        v52 = &qword_1EC7EC968;
        v53 = &unk_1D5622290;
        v54 = v168;
        goto LABEL_19;
      }

      (*(v153 + 8))(v166, v154);
    }

    v52 = &qword_1EC7E9FB0;
    v53 = &qword_1D562C590;
    v54 = v169;
    goto LABEL_19;
  }

  result = 0;
  if (v84 != 2 && ((v84 ^ v83) & 1) == 0)
  {
    goto LABEL_79;
  }

  return result;
}

uint64_t sub_1D511224C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6572646C696863 && a2 == 0xEB00000000736449;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x4365646F73697065 && a2 == 0xEC000000746E756FLL;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4448736168 && a2 == 0xE500000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000012 && 0x80000001D56809F0 == a2;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1D5616168();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D51127F4(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x6E6572646C696863;
      break;
    case 4:
      result = 0x6E6572646C696863;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x73746964657263;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6169726F74696465;
      break;
    case 9:
      result = 0x4365646F73697065;
      break;
    case 10:
      result = 0x6D614E65726E6567;
      break;
    case 11:
      result = 0x7365726E6567;
      break;
    case 12:
      result = 0x4448736168;
      break;
    case 13:
      result = 0x76697372656D6D69;
      break;
    case 14:
      result = 0x6F4E73656E757469;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0x44657361656C6572;
      break;
    case 18:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5112A0C(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02F8, &unk_1D5636BC8);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51145EC();
  sub_1D56163D8();
  LOBYTE(v33[0]) = 0;
  OUTLINED_FUNCTION_13_41();
  sub_1D5616028();
  if (!v2)
  {
    v10 = type metadata accessor for StorePlatformTVShow(0);
    v11 = v10[5];
    LOBYTE(v33[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    v12 = sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_0(v4 + v11, v33, v13, v14, v12);
    v15 = (v4 + v10[6]);
    v17 = *v15;
    v16 = v15[1];
    v33[0] = v17;
    v33[1] = v16;
    v34 = 2;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    OUTLINED_FUNCTION_61_1(v10[7]);
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02B0, ".9\a");
    v18 = sub_1D51148A0();
    OUTLINED_FUNCTION_8_2(v18);
    OUTLINED_FUNCTION_61_1(v10[8]);
    v34 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    v19 = sub_1D511495C(&unk_1EC7F0310);
    OUTLINED_FUNCTION_8_2(v19);
    OUTLINED_FUNCTION_61_1(v10[9]);
    v34 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v20 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2(v20);
    OUTLINED_FUNCTION_61_1(v10[10]);
    v34 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v21 = sub_1D4FC7928();
    OUTLINED_FUNCTION_8_2(v21);
    OUTLINED_FUNCTION_61_1(v10[11]);
    v34 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v22 = sub_1D51149C8(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_8_2(v22);
    OUTLINED_FUNCTION_61_1(v10[12]);
    v34 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v23 = sub_1D51146FC(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_8_2(v23);
    LOBYTE(v33[0]) = 9;
    OUTLINED_FUNCTION_13_41();
    sub_1D5616058();
    OUTLINED_FUNCTION_61_1(v10[14]);
    v34 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v24 = sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_8_2(v24);
    OUTLINED_FUNCTION_61_1(v10[15]);
    v34 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    v25 = sub_1D500E7A4();
    OUTLINED_FUNCTION_8_2(v25);
    LOBYTE(v33[0]) = 12;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    LOBYTE(v33[0]) = 13;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_91();
    sub_1D5114AF8(v26);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v27 = v10[18];
    LOBYTE(v33[0]) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    v28 = sub_1D4F7D044();
    OUTLINED_FUNCTION_21_0(v4 + v27, v33, v29, v30, v28);
    OUTLINED_FUNCTION_61_1(v10[19]);
    v34 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
    v31 = sub_1D5114A3C(&unk_1EC7ED0A0);
    OUTLINED_FUNCTION_8_2(v31);
    LOBYTE(v33[0]) = 16;
    OUTLINED_FUNCTION_13_41();
    sub_1D5616028();
    LOBYTE(v33[0]) = 17;
    OUTLINED_FUNCTION_13_41();
    sub_1D5616028();
    LOBYTE(v33[0]) = 18;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1D5113020(uint64_t a1)
{
  v3 = v1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v49 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v48 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v50 = v9;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v54 = v11;
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v53 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v52 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v22 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v28 = type metadata accessor for StorePlatformTVShow(0);
  sub_1D4F39AB0(v1 + v28[5], v27, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v27, 1, v20);
  if (v29)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v22 + 32))(v2, v27, v20);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v22 + 8))(v2, v20);
  }

  sub_1D5614E28();
  if (*(v1 + v28[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F362BC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v28[8]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F0B2F0();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v28[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v28[10]))
  {
    OUTLINED_FUNCTION_27();
    v30 = OUTLINED_FUNCTION_81_0();
    sub_1D4F35BFC(v30, v31);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v28[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v28[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v32 = (v1 + v28[13]);
  if (*(v32 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v33 = *v32;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v33);
  }

  if (*(v1 + v28[14]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v28[15]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v28[16]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D4F39AB0(v1 + v28[17], v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v34 = v55;
  OUTLINED_FUNCTION_57(v19, 1, v55);
  if (v29)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v36 = v53;
    v35 = v54;
    (*(v54 + 32))(v53, v19, v34);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_91();
    sub_1D5114AF8(v37);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v35 + 8))(v36, v34);
  }

  v38 = v50;
  v39 = v51;
  sub_1D4F39AB0(v3 + v28[18], v50, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v38, 1, v39);
  if (v29)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v49 + 32))(v48, v38, v39);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v40 = OUTLINED_FUNCTION_132_1();
    v41(v40);
  }

  if (*(v3 + v28[19]))
  {
    OUTLINED_FUNCTION_27();
    v42 = OUTLINED_FUNCTION_81_0();
    sub_1D4F085A8(v42);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v3 + v28[20] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v3 + v28[21] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v43 = v52;
  sub_1D4F39AB0(v3 + v28[22], v52, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v43, 1, v34);
  if (v29)
  {
    return OUTLINED_FUNCTION_36();
  }

  v45 = v53;
  v44 = v54;
  (*(v54 + 32))(v53, v43, v34);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_91();
  sub_1D5114AF8(v46);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v44 + 8))(v45, v34);
}

uint64_t sub_1D5113738()
{
  sub_1D56162D8();
  sub_1D5113020(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5113778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v75 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19_0();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02D0, &unk_1D5636BB8);
  OUTLINED_FUNCTION_4();
  v19 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v84 = type metadata accessor for StorePlatformTVShow(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  v82 = v24;
  v25 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D51145EC();
  v80 = v22;
  v26 = v83;
  sub_1D5616398();
  if (v26)
  {
    v83 = v26;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v7) = 0;
    v19 = 0;
    v76 = 0;
    LODWORD(v78) = 0;
    LODWORD(v79) = 0;
    LODWORD(v80) = 0;
    LODWORD(v81) = 0;
  }

  else
  {
    v30 = v15;
    v78 = v12;
    LOBYTE(v85[0]) = 0;
    v29 = v80;
    v27 = sub_1D5615F38();
    v36 = v82;
    *v82 = v27;
    v36[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v85[0]) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v38 = v84;
    sub_1D4F39A1C(v2, v36 + v84[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    v87 = 2;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v39 = v85[1];
    v40 = (v36 + v38[6]);
    *v40 = v85[0];
    v40[1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02B0, ".9\a");
    v87 = 3;
    sub_1D5114640();
    OUTLINED_FUNCTION_7_60();
    v28 = v19;
    *(v36 + v84[7]) = v85[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    v87 = 4;
    sub_1D511495C(&unk_1EC7F02F0);
    OUTLINED_FUNCTION_7_60();
    *(v36 + v84[8]) = v85[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v87 = 5;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_7_60();
    *(v36 + v84[9]) = v85[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v87 = 6;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_7_60();
    *(v36 + v84[10]) = v85[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v87 = 7;
    sub_1D51149C8(&qword_1EDD528F8);
    OUTLINED_FUNCTION_7_60();
    *(v36 + v84[11]) = v85[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v87 = 8;
    sub_1D51146FC(&qword_1EDD52908);
    OUTLINED_FUNCTION_7_60();
    v83 = 0;
    *(v36 + v84[12]) = v85[0];
    OUTLINED_FUNCTION_33_7(9);
    v41 = v83;
    v42 = sub_1D5615F68();
    v83 = v41;
    if (v41)
    {
      v47 = OUTLINED_FUNCTION_28_32();
      v48(v47);
      LODWORD(v79) = 0;
      LODWORD(v80) = 0;
      OUTLINED_FUNCTION_1_83();
      OUTLINED_FUNCTION_10_57();
    }

    else
    {
      v44 = v82 + v84[13];
      *v44 = v42;
      v44[8] = v43 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      v87 = 10;
      sub_1D4F88BF4(&qword_1EDD52778);
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_43(v45, v46);
      v83 = 0;
      *(v82 + v84[14]) = v85[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
      v87 = 11;
      sub_1D500E5CC();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_43(v49, v50);
      v83 = 0;
      *(v82 + v84[15]) = v85[0];
      OUTLINED_FUNCTION_33_7(12);
      v29 = v80;
      v51 = v83;
      v52 = sub_1D5615F48();
      v83 = v51;
      if (!v51)
      {
        *(v82 + v84[16]) = v52;
        sub_1D560C0A8();
        LOBYTE(v85[0]) = 13;
        OUTLINED_FUNCTION_0_91();
        sub_1D5114AF8(v53);
        v29 = v80;
        v54 = v83;
        sub_1D5615F78();
        v83 = v54;
        if (!v54)
        {
          sub_1D4F39A1C(v15, v82 + v84[17], &unk_1EC7E9CA8, &unk_1D561D1D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
          LOBYTE(v85[0]) = 14;
          v58 = sub_1D4F88A24();
          OUTLINED_FUNCTION_18_43(v58, v85);
          v83 = 0;
          sub_1D4F39A1C(v7, v82 + v84[18], &qword_1EC7EC960, &unk_1D56334C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
          v87 = 15;
          sub_1D5114A3C(&unk_1EC7ED0E0);
          OUTLINED_FUNCTION_18_30();
          OUTLINED_FUNCTION_18_43(v59, v60);
          v35 = 1;
          v83 = 0;
          *(v82 + v84[19]) = v85[0];
          OUTLINED_FUNCTION_33_7(16);
          v29 = v80;
          v61 = v83;
          v62 = sub_1D5615F38();
          v83 = v61;
          if (!v61)
          {
            v68 = (v82 + v84[20]);
            *v68 = v62;
            v68[1] = v63;
            OUTLINED_FUNCTION_33_7(17);
            v69 = sub_1D5615F38();
            v83 = 0;
            v70 = (v82 + v84[21]);
            *v70 = v69;
            v70[1] = v71;
            LOBYTE(v85[0]) = 18;
            sub_1D5615F78();
            v83 = 0;
            v72 = OUTLINED_FUNCTION_28_32();
            v73(v72);
            v74 = v82;
            sub_1D4F39A1C(v78, v82 + v84[22], &unk_1EC7E9CA8, &unk_1D561D1D0);
            sub_1D51147E0(v74, v79);
            __swift_destroy_boxed_opaque_existential_1(v75);
            return sub_1D5114844(v74);
          }

          v64 = OUTLINED_FUNCTION_28_32();
          v65(v64);
          v77 = 0;
          v86 = 0;
          __swift_destroy_boxed_opaque_existential_1(v75);
          OUTLINED_FUNCTION_3_75();
          OUTLINED_FUNCTION_19_41(v66);
          LODWORD(v81) = v67;
          v34 = 1;
          v31 = v84;
          v32 = v82;
          goto LABEL_6;
        }
      }

      v55 = OUTLINED_FUNCTION_28_32();
      v56(v55);
      OUTLINED_FUNCTION_1_83();
      OUTLINED_FUNCTION_10_57();
      LODWORD(v79) = v57;
      LODWORD(v80) = v57;
    }
  }

  v31 = v84;
  v32 = v82;
  result = __swift_destroy_boxed_opaque_existential_1(v75);
  if (v28)
  {
    v34 = 0;
    v35 = 0;
    v77 = 0;
    v86 = 0;
LABEL_6:

    goto LABEL_22;
  }

  v86 = 0;
  v77 = 0;
  v35 = 0;
  v34 = 0;
LABEL_22:
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_24;
    }

LABEL_8:

    if (v7)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (!v19)
    {
      goto LABEL_26;
    }

LABEL_10:

    if (v76)
    {
      goto LABEL_27;
    }

LABEL_11:
    if (!HIDWORD(v76))
    {
      goto LABEL_28;
    }

LABEL_12:

    if (v78)
    {
      goto LABEL_29;
    }

LABEL_13:
    if (!v79)
    {
      goto LABEL_30;
    }

LABEL_14:

    if (v80)
    {
      goto LABEL_31;
    }

LABEL_15:
    if (!v81)
    {
      goto LABEL_32;
    }

LABEL_16:
    result = sub_1D4E50004(v32 + v31[17], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if (v34)
    {
      goto LABEL_33;
    }

LABEL_17:
    if (!v35)
    {
      goto LABEL_34;
    }

LABEL_18:

    if (v77)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  if (v30)
  {
    goto LABEL_8;
  }

LABEL_24:
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_25:

  if (v19)
  {
    goto LABEL_10;
  }

LABEL_26:
  if (!v76)
  {
    goto LABEL_11;
  }

LABEL_27:

  if ((v76 & 0x100000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_28:
  if (!v78)
  {
    goto LABEL_13;
  }

LABEL_29:

  if (v79)
  {
    goto LABEL_14;
  }

LABEL_30:
  if (!v80)
  {
    goto LABEL_15;
  }

LABEL_31:

  if (v81)
  {
    goto LABEL_16;
  }

LABEL_32:
  if (!v34)
  {
    goto LABEL_17;
  }

LABEL_33:
  result = sub_1D4E50004(v32 + v31[18], &qword_1EC7EC960, &unk_1D56334C0);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_34:
  if (v77)
  {
LABEL_35:

    if ((v86 & 1) == 0)
    {
      return result;
    }
  }

LABEL_19:
  if (!v86)
  {
    return result;
  }
}

uint64_t sub_1D51144D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D511224C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51144FC(uint64_t a1)
{
  v2 = sub_1D51145EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5114538(uint64_t a1)
{
  v2 = sub_1D51145EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51145B0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5113020(v2);
  return sub_1D5616328();
}

unint64_t sub_1D51145EC()
{
  result = qword_1EC7F02D8;
  if (!qword_1EC7F02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F02D8);
  }

  return result;
}

unint64_t sub_1D5114640()
{
  result = qword_1EC7F02E0;
  if (!qword_1EC7F02E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F02B0, ".9\a");
    sub_1D5114AF8(&unk_1EC7F02E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F02E0);
  }

  return result;
}

unint64_t sub_1D51146FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v2();
    OUTLINED_FUNCTION_45_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5114770(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4FC7E94();
    sub_1D4FC7EE8();
    OUTLINED_FUNCTION_45_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D51147E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformTVShow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5114844(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformTVShow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D51148A0()
{
  result = qword_1EC7F0300;
  if (!qword_1EC7F0300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F02B0, ".9\a");
    sub_1D5114AF8(&unk_1EC7F0308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0300);
  }

  return result;
}

unint64_t sub_1D511495C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F02C0, qword_1D565CE10);
    v4();
    OUTLINED_FUNCTION_32_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D51149C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    v2();
    OUTLINED_FUNCTION_45_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5114A3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED098, &unk_1D5623EE0);
    sub_1D5114770(v2);
    OUTLINED_FUNCTION_32_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D5114AB0()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C0C8);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FFE8();
}

unint64_t sub_1D5114AF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformTVShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5114C1C()
{
  result = qword_1EC7F0318;
  if (!qword_1EC7F0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0318);
  }

  return result;
}

unint64_t sub_1D5114C74()
{
  result = qword_1EC7F0320;
  if (!qword_1EC7F0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0320);
  }

  return result;
}

unint64_t sub_1D5114CCC()
{
  result = qword_1EC7F0328;
  if (!qword_1EC7F0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0328);
  }

  return result;
}

uint64_t Station._Kind.convertToStationKind()@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  sub_1D5614398();
  OUTLINED_FUNCTION_3_76();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_76();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_61();
  v17 = *(v5 + 16);
  OUTLINED_FUNCTION_6_58();
  v17();
  v18 = OUTLINED_FUNCTION_61();
  result = v19(v18);
  if (result == *MEMORY[0x1E6977118])
  {
    v21 = OUTLINED_FUNCTION_61();
    v22(v21);
    sub_1D51154B8(v2, v11);
    sub_1D5115528(v11, v9);
    v23 = sub_1D5614238();
    if (__swift_getEnumTagSinglePayload(v9, 1, v23) == 1)
    {
      sub_1D5115598(v11);
      result = sub_1D5115598(v9);
      v24 = 2;
    }

    else
    {
      Station._StreamingKind.convertToStationStreamingKind()(&v40);
      sub_1D5115598(v11);
      result = (*(*(v23 - 8) + 8))(v9, v23);
      v24 = v40;
    }

    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770D0])
  {
    v24 = 3;
LABEL_27:
    *v39 = v24;
    return result;
  }

  if (result == *MEMORY[0x1E69770C0])
  {
    v24 = 4;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770D8])
  {
    v24 = 5;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E6977110])
  {
    v24 = 6;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E6977108])
  {
    v24 = 7;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770F8])
  {
    v24 = 8;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770E8])
  {
    v24 = 9;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770E0])
  {
    v24 = 10;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E6977100])
  {
    v24 = 11;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770C8])
  {
    v24 = 12;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770F0])
  {
    v24 = 13;
    goto LABEL_27;
  }

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v25 = sub_1D560C758();
  __swift_project_value_buffer(v25, qword_1EDD76DC8);
  OUTLINED_FUNCTION_6_58();
  v17();
  v26 = sub_1D560C738();
  v27 = sub_1D56156C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v28 = 136446210;
    (v17)(v4, v3, v1);
    v37 = sub_1D5614DB8();
    v30 = v29;
    v31 = *(v13 + 8);
    v32 = OUTLINED_FUNCTION_0_92();
    v31(v32);
    v33 = sub_1D4E6835C(v37, v30, &v41);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1D4E3F000, v26, v27, "Unknown station kind returned: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    v31 = *(v13 + 8);
    v34 = OUTLINED_FUNCTION_0_92();
    v31(v34);
  }

  *v39 = 14;
  v35 = OUTLINED_FUNCTION_61();
  return (v31)(v35);
}

uint64_t Station._StreamingKind.convertToStationStreamingKind()@<X0>(_BYTE *a1@<X8>)
{
  sub_1D5614238();
  OUTLINED_FUNCTION_3_76();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_76();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_61();
  v11 = *(v4 + 16);
  OUTLINED_FUNCTION_6_58();
  v11();
  v12 = OUTLINED_FUNCTION_61();
  result = v13(v12);
  if (result == *MEMORY[0x1E6977078])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x1E6977080])
  {
    *a1 = 1;
  }

  else
  {
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76DC8);
    OUTLINED_FUNCTION_6_58();
    v11();
    v16 = sub_1D560C738();
    v17 = sub_1D56156C8();
    if (os_log_type_enabled(v16, v17))
    {
      v27 = v17;
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v18 = 136446210;
      (v11)(v3, v2, v1);
      v26 = sub_1D5614DB8();
      v20 = v19;
      v21 = *(v7 + 8);
      v22 = OUTLINED_FUNCTION_0_92();
      v21(v22);
      v23 = sub_1D4E6835C(v26, v20, &v29);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D4E3F000, v16, v27, "Unknown station streaming subtype returned:  %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      v21 = *(v7 + 8);
      v24 = OUTLINED_FUNCTION_0_92();
      v21(v24);
    }

    *a1 = 2;
    v25 = OUTLINED_FUNCTION_61();
    return (v21)(v25);
  }

  return result;
}

uint64_t sub_1D51154B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5115528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5115598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicLibrary.downloadedItemsCenter.getter()
{
  v0 = *(sub_1D4E5A1CC() + 16);

  return v0;
}

void *sub_1D511563C@<X0>(void *a1@<X8>)
{
  result = sub_1D51156B4();
  *a1 = v3;
  return result;
}

uint64_t sub_1D5115678(uint64_t *a1)
{
  v9 = *a1;

  return sub_1D5115740(&v9, v1, v2, v3, v4, v5, v6, v7);
}

double sub_1D5115720@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t sub_1D5115740(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v17 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_93(a1, a2, a3, a4, a5, a6, a7, a8, v15);
  if (!v8)
  {
  }

  v9 = v17;
  result = sub_1D4E62628(v17);
  if (!result)
  {
LABEL_9:
  }

  v11 = result;
  if (result >= 1)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6EB9B0](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      ++v12;
      v14 = *(v13 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary23DownloadedItemsObserver_handler);
      v16 = v8;
      v14(&v16);
    }

    while (v11 != v12);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D511585C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0340, &qword_1D5636D08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    if (!a2)
    {
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:

    goto LABEL_7;
  }

  swift_bridgeObjectRetain_n();

  sub_1D4F91528(v10, a2);
  v12 = v11;

  result = swift_bridgeObjectRelease_n();
  if ((v12 & 1) == 0)
  {
LABEL_7:
    *(a1 + 16) = a2;

    v14 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_downloadedItemsObservers;
    swift_beginAccess();
    (*(v7 + 16))(v9, a1 + v14, v6);
    v15 = sub_1D5611E58();
    (*(v7 + 8))(v9, v6);
    *a3 = v15;
  }

  return result;
}

uint64_t (*sub_1D5115A5C(uint64_t a1))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 8) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0338, &qword_1D5636D00);
  OUTLINED_FUNCTION_1_84(v2, v3, v2);
  return sub_1D5115AE8;
}

uint64_t sub_1D5115AE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v16 = *a1;

    sub_1D5115740(&v16, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = *a1;
    return sub_1D5115740(&v16, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1D5115C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D560C368();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  v8 = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0340, &qword_1D5636D08);
  sub_1D5611E88();
  return swift_endAccess();
}

uint64_t MusicLibrary.DownloadedItemsCenter.deinit()
{

  v1 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21DownloadedItemsCenter_downloadedItemsObservers;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0340, &qword_1D5636D08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MusicLibrary.DownloadedItemsCenter.__deallocating_deinit()
{
  MusicLibrary.DownloadedItemsCenter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5115F20(uint64_t a1)
{
  result = sub_1D560D4B8();
  v3 = v2;
  v4 = HIBYTE(v2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_71;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D5341FA0();
    v24 = v26;
LABEL_70:

    if ((v24 & 1) == 0)
    {
LABEL_72:
      sub_1D511622C();
      v25 = sub_1D560D488();
      return sub_1D51161B0(v8, v25);
    }

LABEL_71:
    v8 = 0;
    goto LABEL_72;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1D5615C58();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v10 & v9)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_5_63();
              if (!v10)
              {
                goto LABEL_68;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_40_0();
              if (v10)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_78;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_68;
            }

            v21 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_68;
            }

            v8 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v8 = 0;
      v13 = 1;
      goto LABEL_69;
    }

    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v10 & v9)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_5_63();
            if (!v10)
            {
              goto LABEL_68;
            }

            v8 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_40_0();
            if (v10)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v13 = 0;
LABEL_69:
        v24 = v13;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v10)
          {
            break;
          }

          v8 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v10)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        OUTLINED_FUNCTION_3_77();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v10)
          {
            break;
          }

          v8 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v10)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_77;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_3_77();
      while (1)
      {
        OUTLINED_FUNCTION_22_0();
        if (!v10 & v9)
        {
          break;
        }

        OUTLINED_FUNCTION_5_63();
        if (!v10)
        {
          break;
        }

        v8 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v10)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_79:
  __break(1u);
  return result;
}

id sub_1D51161B0(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1D5614D38();

  v5 = [v3 initWithValue:a1 databaseID:v4];

  return v5;
}

unint64_t sub_1D511622C()
{
  result = qword_1EDD52638;
  if (!qword_1EDD52638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52638);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformArtist(uint64_t a1)
{
  result = qword_1EDD55DD8;
  if (!qword_1EDD55DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D51162F0(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_1D4F18AF4();
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_1D511651C(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  sub_1D511651C(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
                  if (v19 > 0x3F)
                  {
                    return v18;
                  }

                  else
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1D511651C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_1D51165B8(uint64_t a1, uint64_t a2)
{
  v159 = type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v155 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v160 = v8;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v164 = v10;
  v167 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v163 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v157 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v156 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v155 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v161 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  v165 = &v155 - v22;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v170 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v168 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v169 = v28;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v172 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v155 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v155 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v155 - v44;
  v46 = *(v43 + 56);
  v174 = a1;
  sub_1D4F1C460(a1, &v155 - v44, &qword_1EC7EB5B8, &unk_1D56206A0);
  v175 = a2;
  sub_1D4F1C460(a2, &v45[v46], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v45, 1, v31);
  if (v47)
  {
    OUTLINED_FUNCTION_57(&v45[v46], 1, v31);
    if (v47)
    {
      sub_1D4E50004(v45, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_14;
    }

LABEL_9:
    v48 = &qword_1EC7EC330;
    v49 = &qword_1D56222C0;
    v50 = v45;
LABEL_10:
    sub_1D4E50004(v50, v48, v49);
    return 0;
  }

  sub_1D4F1C460(v45, v40, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v45[v46], 1, v31);
  if (v47)
  {
    (*(v33 + 8))(v40, v31);
    goto LABEL_9;
  }

  (*(v33 + 32))(v36, &v45[v46], v31);
  sub_1D4F39858();
  v52 = sub_1D5614D18();
  v53 = *(v33 + 8);
  v54 = OUTLINED_FUNCTION_63_1();
  v53(v54);
  (v53)(v40, v31);
  sub_1D4E50004(v45, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v55 = type metadata accessor for StorePlatformArtist(0);
  v56 = v55[5];
  v57 = v174;
  v58 = v175;
  v59 = *(v175 + v56);
  if (*(v174 + v56))
  {
    if (!v59)
    {
      return 0;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4F28F1C();
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v62 = v55[6];
  v63 = *(v58 + v62);
  if (*(v57 + v62))
  {
    if (!v63)
    {
      return 0;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4F29174();
    v65 = v64;

    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  v66 = v55[7];
  v67 = *(v58 + v66);
  if (*(v57 + v66))
  {
    if (!v67)
    {
      return 0;
    }

    OUTLINED_FUNCTION_63_1();
    sub_1D4EF8BA4();
    v69 = v68;

    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  v70 = v55[8];
  v71 = *(v58 + v70);
  if (*(v57 + v70))
  {
    if (!v71)
    {
      return 0;
    }

    sub_1D4EF81E0();
    if ((v72 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v73 = v55[9];
  v74 = *(v57 + v73);
  v75 = *(v57 + v73 + 8);
  v76 = (v58 + v73);
  v77 = v74 == *v76 && v75 == v76[1];
  if (!v77 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v78 = v55[10];
  v79 = v172;
  v80 = *(v171 + 48);
  sub_1D4F1C460(v57 + v78, v172, &qword_1EC7EC960, &unk_1D56334C0);
  sub_1D4F1C460(v58 + v78, v79 + v80, &qword_1EC7EC960, &unk_1D56334C0);
  v81 = v173;
  OUTLINED_FUNCTION_57(v79, 1, v173);
  if (v47)
  {
    OUTLINED_FUNCTION_57(v79 + v80, 1, v81);
    if (v47)
    {
      sub_1D4E50004(v79, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_50;
    }

LABEL_47:
    v48 = &qword_1EC7EC968;
    v49 = &unk_1D5622290;
LABEL_48:
    v50 = v79;
    goto LABEL_10;
  }

  v82 = v169;
  sub_1D4F1C460(v79, v169, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v79 + v80, 1, v81);
  if (v83)
  {
    (*(v170 + 8))(v82, v81);
    goto LABEL_47;
  }

  v84 = v170;
  v85 = v79 + v80;
  v86 = v168;
  (*(v170 + 32))(v168, v85, v81);
  sub_1D4F7BF60();
  v87 = sub_1D5614D18();
  v88 = *(v84 + 8);
  v88(v86, v81);
  v88(v82, v81);
  sub_1D4E50004(v79, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  OUTLINED_FUNCTION_27_32();
  if (v89)
  {
    if (!v90)
    {
      return 0;
    }

    v93 = *v91 == *v92 && v89 == v90;
    if (!v93 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  OUTLINED_FUNCTION_27_32();
  if (v94)
  {
    if (!v95)
    {
      return 0;
    }

    v98 = *v96 == *v97 && v94 == v95;
    if (!v98 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v95)
  {
    return 0;
  }

  v79 = v165;
  v99 = *(v166 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v100, v101, v102, v103);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v104, v105, v106, v107);
  v108 = v167;
  OUTLINED_FUNCTION_57(v79, 1, v167);
  if (v47)
  {
    OUTLINED_FUNCTION_57(v79 + v99, 1, v108);
    if (v47)
    {
      v173 = v55;
      sub_1D4E50004(v79, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v173 = v55;
  v109 = v162;
  sub_1D4F1C460(v79, v162, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v79 + v99, 1, v108);
  if (v110)
  {
    (*(v163 + 8))(v109, v108);
LABEL_76:
    v48 = &qword_1EC7E9FB0;
    v49 = &qword_1D562C590;
    goto LABEL_48;
  }

  v111 = v163;
  v112 = v157;
  (*(v163 + 32))(v157, v79 + v99, v108);
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v113);
  v114 = sub_1D5614D18();
  v115 = *(v111 + 8);
  v115(v112, v108);
  v115(v109, v108);
  sub_1D4E50004(v79, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_78:
  v116 = *(v158 + 48);
  v117 = v164;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v118, v119, v120, v121);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v122, v123, v124, v125);
  v126 = v159;
  OUTLINED_FUNCTION_57(v117, 1, v159);
  if (v47)
  {
    OUTLINED_FUNCTION_57(v117 + v116, 1, v126);
    if (v47)
    {
      sub_1D4E50004(v164, &qword_1EC7EFBD0, &qword_1D5634650);
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  sub_1D4F1C460(v117, v160, &qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_57(v117 + v116, 1, v126);
  if (v127)
  {
    OUTLINED_FUNCTION_17_40();
    sub_1D5119130(v160, v128);
LABEL_86:
    v48 = &qword_1EC7EFDD8;
    v49 = &unk_1D5639570;
    v50 = v164;
    goto LABEL_10;
  }

  v129 = v164;
  v130 = v164 + v116;
  v131 = v155;
  sub_1D5119188(v130, v155);
  v132 = v160;
  v133 = sub_1D54D5E40(v160, v131);
  sub_1D5119130(v131, type metadata accessor for StorePlatformUber);
  sub_1D5119130(v132, type metadata accessor for StorePlatformUber);
  sub_1D4E50004(v129, &qword_1EC7EFBD0, &qword_1D5634650);
  if (!v133)
  {
    return 0;
  }

LABEL_88:
  v134 = *(v166 + 48);
  v135 = v161;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v136, v137, v138, v139);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v140, v141, v142, v143);
  OUTLINED_FUNCTION_57(v135, 1, v167);
  if (v47)
  {
    OUTLINED_FUNCTION_57(v161 + v134, 1, v167);
    if (v47)
    {
      sub_1D4E50004(v161, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_96;
  }

  v144 = v161;
  sub_1D4F1C460(v161, v156, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v144 + v134, 1, v167);
  if (v145)
  {
    (*(v163 + 8))(v156, v167);
LABEL_96:
    v48 = &qword_1EC7E9FB0;
    v49 = &qword_1D562C590;
    v50 = v161;
    goto LABEL_10;
  }

  v146 = v163;
  v147 = v161;
  v148 = v161 + v134;
  v149 = v157;
  v150 = v167;
  (*(v163 + 32))(v157, v148, v167);
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v151);
  v152 = v156;
  v153 = sub_1D5614D18();
  v154 = *(v146 + 8);
  v154(v149, v150);
  v154(v152, v150);
  sub_1D4E50004(v147, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v153 & 1) != 0;
}

uint64_t sub_1D5117310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 25705 && a2 == 0xE200000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1684957547 && a2 == 0xE400000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1701667182 && a2 == 0xE400000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C725574726F6873 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1919246965 && a2 == 0xE400000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 7107189 && a2 == 0xE300000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1D5616168();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D51176C0(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0x6D614E65726E6567;
      break;
    case 5:
      result = 25705;
      break;
    case 6:
      result = 0x6F4E73656E757469;
      break;
    case 7:
      result = 1684957547;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x6C725574726F6873;
      break;
    case 10:
      result = 1919246965;
      break;
    case 11:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51177F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0360, &qword_1D5636E80);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5119008();
  sub_1D56163D8();
  LOBYTE(v36[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F7CD24();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_4_3(v3, v11, v12, v13, v14);
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  v15 = type metadata accessor for StorePlatformArtist(0);
  OUTLINED_FUNCTION_61_1(v15[5]);
  v37 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v16 = sub_1D500E734(&qword_1EC7EC9D8);
  OUTLINED_FUNCTION_6_59(v16);
  OUTLINED_FUNCTION_61_1(v15[6]);
  v37 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v17 = sub_1D51190C0(&qword_1EC7EC9F0);
  OUTLINED_FUNCTION_6_59(v17);
  OUTLINED_FUNCTION_61_1(v15[7]);
  v37 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
  v18 = sub_1D500E7A4();
  OUTLINED_FUNCTION_6_59(v18);
  OUTLINED_FUNCTION_61_1(v15[8]);
  v37 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v19 = sub_1D4F88BF4(&unk_1EC7ECA00);
  OUTLINED_FUNCTION_6_59(v19);
  v20 = (v3 + v15[9]);
  v22 = *v20;
  v21 = v20[1];
  v36[0] = v22;
  v36[1] = v21;
  v37 = 5;
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160C8();
  v23 = v15[10];
  LOBYTE(v36[0]) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v24 = sub_1D4F7D044();
  OUTLINED_FUNCTION_4_3(v3 + v23, v36, v25, v26, v24);
  LOBYTE(v36[0]) = 7;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616028();
  LOBYTE(v36[0]) = 8;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616028();
  v35 = v7;
  LOBYTE(v36[0]) = 9;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v27);
  OUTLINED_FUNCTION_22_14();
  sub_1D5616068();
  v28 = v15[14];
  LOBYTE(v36[0]) = 10;
  type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_16_43();
  v30 = sub_1D5119238(v29);
  OUTLINED_FUNCTION_4_3(v3 + v28, v36, v31, v32, v30);
  LOBYTE(v36[0]) = 11;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616068();
  return (*(v35 + 8))(v10, v5);
}

uint64_t sub_1D5117C9C(uint64_t a1)
{
  v2 = v1;
  v74 = type metadata accessor for StorePlatformUber(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v76 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v73 = v7;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v78 = v9;
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v77 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v75 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v68 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v67 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v26 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v69 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - v34;
  sub_1D4F1C460(v2, &v66 - v34, &qword_1EC7EB5B8, &unk_1D56206A0);
  v36 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v36, v37, v24);
  v71 = v29;
  v72 = v26;
  if (v57)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v26 + 32))(v29, v35, v24);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v26 + 8))(v29, v24);
  }

  v38 = type metadata accessor for StorePlatformArtist(0);
  if (*(v2 + v38[5]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v38[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v38[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v38[8]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D5614E28();
  sub_1D4F1C460(v2 + v38[10], v23, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v23, 1, v16);
  if (v57)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v40 = v67;
    v39 = v68;
    (*(v68 + 32))(v67, v23, v16);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v39 + 8))(v40, v16);
  }

  if (*(v2 + v38[11] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v38[12] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v41 = v70;
  sub_1D4F1C460(v2 + v38[13], v70, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v42 = OUTLINED_FUNCTION_35_1();
  v43 = v79;
  OUTLINED_FUNCTION_57(v42, v44, v79);
  if (v57)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v46 = v77;
    v45 = v78;
    (*(v78 + 32))(v77, v41, v43);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_94();
    sub_1D5119238(v47);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v45 + 8))(v46, v43);
  }

  v48 = v76;
  v50 = v71;
  v49 = v72;
  v51 = v73;
  sub_1D4F1C460(v2 + v38[14], v73, &qword_1EC7EFBD0, &qword_1D5634650);
  v52 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v52, v53, v74);
  if (v57)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v51, v48);
    OUTLINED_FUNCTION_27();
    v54 = v69;
    sub_1D4F1C460(v48, v69, &qword_1EC7EB5B8, &unk_1D56206A0);
    v55 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v55, v56, v24);
    if (v57)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      (*(v49 + 32))(v50, v54, v24);
      OUTLINED_FUNCTION_27();
      sub_1D4F395F4();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v49 + 8))(v50, v24);
    }

    OUTLINED_FUNCTION_17_40();
    sub_1D5119130(v48, v58);
  }

  v59 = v75;
  sub_1D4F1C460(v2 + v38[15], v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v60 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v60, v61, v43);
  if (v57)
  {
    return OUTLINED_FUNCTION_36();
  }

  v63 = v77;
  v62 = v78;
  (*(v78 + 32))(v77, v59, v43);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_94();
  sub_1D5119238(v64);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v62 + 8))(v63, v43);
}