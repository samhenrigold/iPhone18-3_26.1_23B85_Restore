uint64_t sub_1C4CD0F98(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 1)
  {
    sub_1C4F01828();
    sub_1C4CD8A5C(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1C4F00EA8();
    v2 = sub_1C43FE5F8();
    sub_1C456902C(v2, v3);
    sub_1C4F01808();
  }

  return v1;
}

uint64_t sub_1C4CD1068(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_1C4CD115C;

  return v7(v4 + 16);
}

uint64_t sub_1C4CD115C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CD1254()
{
  sub_1C43FBCD4();
  *(v0 + 32) = *(v0 + 16);
  sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  sub_1C441C97C();
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4CD12D0()
{
  sub_1C43FBCD4();
  *(v0 + 24) = *(v0 + 56);
  sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4CD134C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1C4CD1438;

  return v7();
}

uint64_t sub_1C4CD1438()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CD1530()
{
  sub_1C43FBCD4();
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4CD15A0()
{
  sub_1C43FBCD4();
  *(v0 + 16) = *(v0 + 40);
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v1();
}

void static ViewUpdate.GenerationRunnerSingleton.setProvider(for:viewUpdateRunnerProvider:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDF97E0 != -1)
  {
    sub_1C43FF85C();
    a1 = swift_once();
  }

  v3 = qword_1EDE2DBA0;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FC638();
  *(v4 - 16) = a2;
  os_unfair_lock_lock((v3 + 24));
  sub_1C4CD1C80((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1C4CD16B0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDDFE628 != -1)
  {
    sub_1C4402394(&qword_1EDDFE628);
  }

  result = sub_1C4461E68();
  if (!v1)
  {
    v4 = result;
    result = type metadata accessor for ViewUpdate.ViewInProcessRunner(0);
    a1[3] = result;
    a1[4] = &protocol witness table for ViewUpdate.ViewInProcessRunner;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1C4CD1754()
{

  sub_1C4CD7B5C((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_1C4CD1794()
{
  v0[2] = MEMORY[0x1E69E7CC8];
  v1 = _s37ViewInProcessGenerationRunnerProviderCMa();
  v2 = swift_allocObject();
  v0[6] = v1;
  v0[7] = &off_1F440A938;
  v0[3] = v2;
  return v0;
}

uint64_t sub_1C4CD17E4()
{
  _s25GenerationRunnerSingletonO11GuardedDataCMa();
  v0 = swift_allocObject();
  sub_1C4CD1794();
  sub_1C456902C(&qword_1EC0C60A0, &qword_1C4F6A238);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EDE2DBA0 = result;
  return result;
}

void static ViewUpdate.GenerationRunnerSingleton.viewUpdateRunner(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (qword_1EDDF97E0 != -1)
  {
    sub_1C43FF85C();
    a1 = swift_once();
  }

  v4 = qword_1EDE2DBA0;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FC638();
  *(v5 - 16) = v2;
  os_unfair_lock_lock((v4 + 24));
  sub_1C4CD1CE8((v4 + 16), a2);
  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_1C4CD18F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C4EF98F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  swift_beginAccess();
  v12 = *(v11 + 16);
  if (*(v12 + 16) && (sub_1C43FE83C(), (v14 & 1) != 0))
  {
    sub_1C442E860(*(v12 + 56) + 40 * v13, v22);
    sub_1C441D670(v22, a3);
    return swift_endAccess();
  }

  else
  {
    v23 = a3;
    swift_endAccess();
    swift_beginAccess();
    sub_1C442E860(v11 + 24, v19);
    v16 = v20;
    v17 = v21;
    sub_1C4409678(v19, v20);
    (*(v17 + 8))(v22, a2, v16, v17);
    result = sub_1C4CD7B5C(v19);
    if (!v3)
    {
      (*(v8 + 16))(v10, a2, v7);
      sub_1C442E860(v22, v19);
      swift_beginAccess();
      sub_1C4C814E0(v19, v10);
      swift_endAccess();
      return sub_1C441D670(v22, v23);
    }
  }

  return result;
}

uint64_t sub_1C4CD1AF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1C4CD8DD4((v3 + 24), a2);
  return swift_endAccess();
}

uint64_t sub_1C4CD1B5C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1C4EF98F8();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v7 + 16))(v6, a2, v4);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  sub_1C4C814E0(v10, v6);
  return swift_endAccess();
}

uint64_t sub_1C4CD1C9C()
{
  sub_1C456902C(&qword_1EC0C60A8, &qword_1C4F6A240);
  swift_allocObject();
  result = sub_1C4CE56A4();
  qword_1EDE2DDD8 = result;
  return result;
}

uint64_t ViewUpdate.ViewInProcessRunner.__allocating_init(config:)(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }

  sub_1C44624D8();
  v7 = sub_1C44273D4();
  if (v1)
  {
    sub_1C441A9B4();
    sub_1C445442C(a1, v8);
  }

  else
  {
    v9 = v7;
    if (qword_1EDDFB828 != -1)
    {
      sub_1C440FE28();
      swift_once();
    }

    sub_1C44624D8();
    v10 = sub_1C4ABF9D8();
    if (qword_1EDDFE3A8 != -1)
    {
      swift_once();
    }

    sub_1C44624D8();
    v12 = sub_1C4ABFA6C();
    sub_1C4431074(a1, v6, type metadata accessor for Configuration);

    sub_1C445442C(a1, type metadata accessor for Configuration);
    v13 = swift_allocObject();
    v14 = (v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewGenerationProvider);
    v14[3] = type metadata accessor for ViewGeneration.ViewGenerators(0);
    v14[4] = &off_1F4406B48;
    *v14 = v10;
    sub_1C4CD7BA4(v6, v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config, type metadata accessor for Configuration);

    *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewDb) = v9;
    *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_syncDeviceRetriever) = v12;
  }

  return sub_1C44624D8();
}

uint64_t sub_1C4CD1F50()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4CD1FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  _s10ViewConfigVMa(0);
  v5[30] = swift_task_alloc();
  type metadata accessor for Configuration(0);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD207C, 0, 0);
}

uint64_t sub_1C4CD244C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ViewUpdate.ViewInProcessRunner.update(groupName:namesAndRequests:)()
{
  sub_1C43FBCD4();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = *(_s10ViewConfigVMa(0) - 8);
  v1[49] = v5;
  v1[50] = *(v5 + 64);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v6 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v6);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CD2DD0()
{
  v1 = v0 + 256;
  v2 = *(v0 + 376);
  v3 = sub_1C4428DA0(v2);
  v4 = 0;
  *(v0 + 440) = v3;
  v145 = v2 & 0xC000000000000001;
  v147 = v3;
  v144 = v2 & 0xFFFFFFFFFFFFFF8;
  v142 = v0;
  v143 = v2 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 != v147)
  {
    if (v145)
    {
      v6 = MEMORY[0x1C6940F90](v4, *(v142 + 376));
    }

    else
    {
      if (v4 >= *(v144 + 16))
      {
        goto LABEL_125;
      }

      v6 = *(v143 + 8 * v4);
    }

    v2 = v6;
    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      sub_1C4400660(&qword_1EDDFD018);
      v105 = sub_1C4F00978();
      sub_1C43FCEE8(v105, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v106 = sub_1C4F00968();
      v107 = sub_1C4F01CF8();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = sub_1C43FD084();
        v150 = sub_1C43FFD34();
        *v108 = 136315138;
        v109 = sub_1C44057DC();
        v112 = sub_1C441D828(v109, v110, v111);

        *(v108 + 4) = v112;
        _os_log_impl(&dword_1C43F8000, v106, v107, "ViewGeneration: Cancellation received while updating view %s", v108, 0xCu);
        sub_1C4CD7B5C(v150);
        sub_1C43FFD18();
        sub_1C43FFD4C();
      }

      else
      {
      }

      sub_1C44528E0();
      v113 = sub_1C4428DA0(MEMORY[0x1E69E7CC0]);
      v114 = *(v142 + 488);
      if (!v113)
      {

        swift_willThrow();

        sub_1C43FBDA0();
        sub_1C44149E0();

        __asm { BRAA            X1, X16 }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      goto LABEL_109;
    }

    v8 = [v6 requests];
    sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
    v9 = sub_1C4F01678();

    v2 = v9 >> 62;
    if (v9 >> 62)
    {
      v10 = sub_1C4F02128();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v5 >> 62;
    if (v5 >> 62)
    {
      v12 = sub_1C4F02128();
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v12 + v10;
    if (__OFADD__(v12, v10))
    {
      goto LABEL_126;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v11)
      {
LABEL_17:
        sub_1C4F02128();
      }

LABEL_18:
      v5 = sub_1C4F022B8();
      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_19;
    }

    if (v11)
    {
      goto LABEL_17;
    }

    v14 = v5 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v15 < v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = *(v14 + 16);
    v17 = v15 - v16;
    v18 = v14 + 8 * v16;
    if (v2)
    {
      if (v9 < 0)
      {
        v2 = v9;
      }

      else
      {
        v2 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = sub_1C4F02128();
      if (!v19)
      {
        goto LABEL_36;
      }

      v20 = v19;
      v21 = sub_1C4F02128();
      if (v17 < v21)
      {
        goto LABEL_137;
      }

      if (v20 < 1)
      {
        goto LABEL_138;
      }

      v139 = v21;
      v140 = v4;
      v22 = v18 + 32;
      sub_1C4CCCA7C(&qword_1EDDF0600, &unk_1EC0C5F88, &unk_1C4F6D880);
      for (i = 0; i != v20; ++i)
      {
        sub_1C456902C(&unk_1EC0C5F88, &unk_1C4F6D880);
        v24 = sub_1C4CD79AC(v1, i, v9);
        v26 = sub_1C442AD08(v24, v25);
        (v5)(v1, 0);
        *(v22 + 8 * i) = v26;
      }

      v4 = v140;
      v2 = v139;
LABEL_32:

      if (v2 < v10)
      {
        goto LABEL_127;
      }

      if (v2 > 0)
      {
        v27 = *(v14 + 16);
        v7 = __OFADD__(v27, v2);
        v28 = v27 + v2;
        if (v7)
        {
          goto LABEL_135;
        }

        *(v14 + 16) = v28;
      }
    }

    else
    {
      v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        if (v17 < v2)
        {
          goto LABEL_136;
        }

        swift_arrayInitWithCopy();
        goto LABEL_32;
      }

LABEL_36:

      if (v10 > 0)
      {
        goto LABEL_127;
      }
    }
  }

  v149 = MEMORY[0x1E69E7CC0];
  v29 = sub_1C4428DA0(v5);
  v30 = 0;
  v31 = v5 & 0xC000000000000001;
  v32 = v5;
  v33 = v5 & 0xFFFFFFFFFFFFFF8;
  while (v29 != v30)
  {
    if (v31)
    {
      v34 = MEMORY[0x1C6940F90](v30, v32);
    }

    else
    {
      if (v30 >= *(v33 + 16))
      {
        goto LABEL_129;
      }

      v34 = *(v32 + 8 * v30 + 32);
    }

    v35 = v34;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_128;
    }

    v36 = [v34 configIdentifier];
    v37 = [v36 sourceType];

    v38 = sub_1C4F01138();
    v40 = v39;

    if (v38 == 2003134838 && v40 == 0xE400000000000000)
    {
    }

    else
    {
      v2 = sub_1C4F02938();

      if ((v2 & 1) == 0)
      {

        goto LABEL_55;
      }
    }

    sub_1C4F02318();
    v2 = *(v149 + 16);
    sub_1C4F02358();
    sub_1C4F02368();
    sub_1C4F02328();
LABEL_55:
    ++v30;
  }

  v42 = 0;
  v146 = sub_1C4428DA0(v149);
  v43 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    *(v142 + 448) = v43;
    if (v146 == v42)
    {

      *(v142 + 336) = MEMORY[0x1E69E7CC0];
      if (v147)
      {
        v63 = 0;
        v2 = v142;
        v64 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewDb;
        *(v142 + 456) = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config;
        *(v142 + 464) = v64;
        v65 = &selRef_localizedName;
        do
        {
          v66 = MEMORY[0x1E69E7CC0];
          *(v2 + 472) = MEMORY[0x1E69E7CC0];
          *(v2 + 480) = v66;
          v67 = *(v2 + 376);
          v68 = v67 & 0xC000000000000001;
          sub_1C4431590(v63, (v67 & 0xC000000000000001) == 0, v67);
          v69 = *(v2 + 376);
          v70 = v68 ? MEMORY[0x1C6940F90](v63, v69) : *(v69 + 8 * v63 + 32);
          v71 = v70;
          *(v142 + 488) = v70;
          *(v142 + 496) = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_140;
          }

          v72 = [v70 name];
          v73 = sub_1C4F01138();
          v2 = v74;

          v141 = v71;
          *(v142 + 504) = v73;
          *(v142 + 512) = v2;
          v75 = [v71 requests];
          sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
          v76 = sub_1C4F01678();

          v77 = sub_1C4428DA0(v76);
          v78 = 0;
          v79 = v76 & 0xC000000000000001;
          v80 = v76 & 0xFFFFFFFFFFFFFF8;
          v148 = v76;
          while (v77 != v78)
          {
            if (v79)
            {
              v81 = MEMORY[0x1C6940F90](v78, v76);
            }

            else
            {
              if (v78 >= *(v80 + 16))
              {
                goto LABEL_131;
              }

              v81 = *(v76 + 8 * v78 + 32);
            }

            v2 = v81;
            if (__OFADD__(v78, 1))
            {
              goto LABEL_130;
            }

            v82 = objc_autoreleasePoolPush();
            if ([v2 v65[230]])
            {
              v83 = v65;
              v84 = [v2 state];
              sub_1C4F01138();

              v85 = sub_1C4F025D8();

              v86 = 0xED00006465726975;
              v87 = sub_1C44BBF38();
              switch(v85)
              {
                case 0:
                  sub_1C4460730();
                  v87 = v88 - 3;
                  v86 = 0x80000001C4F87C20;
                  goto LABEL_94;
                case 1:
                  v86 = 0x80000001C4F87C40;
                  v87 = 0xD000000000000013;
                  goto LABEL_94;
                case 2:
                  goto LABEL_94;
                case 3:
                  v86 = 0xEA00000000007365;
                  v87 = sub_1C4440E50();
LABEL_94:
                  v89 = sub_1C441DEC4(v87, v86);

                  objc_autoreleasePoolPop(v82);

                  v65 = v83;
                  v76 = v148;
                  if (v89)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_103;
                case 4:

                  v65 = v83;
                  v76 = v148;
                  break;
                default:
                  objc_autoreleasePoolPop(v82);

                  v76 = v148;
LABEL_103:
                  v92 = *(v142 + 432);
                  v93 = *(v142 + 384);
                  sub_1C4401144();
                  sub_1C4431074(v93 + v94, v92, v95);
                  type metadata accessor for ViewUpdate.SignpostHelper(0);
                  swift_allocObject();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C44191B8();
                  sub_1C4462C40();
                  *(v142 + 520) = v96;
                  sub_1C4462D98();
                  v97 = sub_1C44191B8();
                  sub_1C443A738(v97, v98, v99, v100, v101, v102, v103, v104);
                  sub_1C443B274(*(v142 + 416), v76, (v142 + 16));

                  v119 = *(v142 + 72);
                  *(v142 + 528) = v119;
                  sub_1C4441C50(*(v119 + 33));
                  v121 = v120;
                  sub_1C4460730();
                  if (v122 == v125 && 0x80000001C4F87C40 == v123)
                  {
                    v127 = 1;
                  }

                  else
                  {
                    v127 = sub_1C44620D0(v122, v121, v124, 0x80000001C4F87C40);
                  }

                  v128 = v127 & 1;
                  *(v142 + 560) = v127 & 1;
                  v130 = *(v142 + 408);
                  v129 = *(v142 + 416);
                  v132 = *(v142 + 392);
                  v131 = *(v142 + 400);
                  v133 = *(v142 + 384);

                  sub_1C4CD7B00(v142 + 16, v142 + 136);
                  sub_1C4431074(v129, v130, _s10ViewConfigVMa);
                  sub_1C441B128();
                  v134 = swift_allocObject();
                  sub_1C440F070(v134);
                  sub_1C4CD7BA4(v130, v134 + v132, _s10ViewConfigVMa);
                  v135 = v134 + v131;
                  *v135 = v133;
                  *(v135 + 8) = v128;
                  sub_1C447E384();
                  v136 = swift_task_alloc();
                  *(v142 + 544) = v136;
                  *v136 = v142;
                  sub_1C44400C8(v136);
                  sub_1C44149E0();

                  __asm { BR              X0 }

                  return result;
              }
            }

            objc_autoreleasePoolPop(v82);

LABEL_95:
            ++v78;
          }

          v2 = v142;
          v63 = *(v142 + 496);
        }

        while (v63 != *(v142 + 440));
      }

LABEL_109:

      sub_1C43FBCF0();
      sub_1C44149E0();

      __asm { BRAA            X2, X16 }
    }

    if ((v149 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1C6940F90](v42, v149);
    }

    else
    {
      if (v42 >= *(v149 + 16))
      {
        goto LABEL_133;
      }

      v44 = *(v149 + 8 * v42 + 32);
    }

    v45 = v44;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_132;
    }

    v46 = [v44 configIdentifier];
    v2 = [v46 sourceIdentifier];

    v47 = sub_1C4F01138();
    v49 = v48;

    swift_isUniquelyReferenced_nonNull_native();
    v50 = sub_1C44191B8();
    v52 = sub_1C445FAA8(v50, v51);
    if (__OFADD__(v43[2], (v53 & 1) == 0))
    {
      goto LABEL_134;
    }

    v54 = v52;
    v2 = v53;
    sub_1C456902C(&qword_1EC0C5F98, &unk_1C4F69F60);
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_67:
    if (v2)
    {
    }

    else
    {
      v43[(v54 >> 6) + 8] |= 1 << v54;
      v59 = (v43[6] + 16 * v54);
      *v59 = v47;
      v59[1] = v49;
      *(v43[7] + 8 * v54) = MEMORY[0x1E69E7CC0];
      v60 = v43[2];
      v7 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v7)
      {
        goto LABEL_139;
      }

      v43[2] = v61;
    }

    v62 = (v43[7] + 8 * v54);
    v2 = v45;
    MEMORY[0x1C6940330]();
    if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();

    ++v42;
  }

  v55 = sub_1C44191B8();
  v57 = sub_1C445FAA8(v55, v56);
  if ((v2 & 1) == (v58 & 1))
  {
    v54 = v57;
    goto LABEL_67;
  }

  sub_1C44149E0();

  return sub_1C4F029F8();
}

uint64_t sub_1C4CD3DC8()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 552) = v0;

  if (v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C4CD3F00()
{
  if (*(v0 + 560))
  {
    sub_1C4401144();
    sub_1C4431074(v3 + v2, v4, v5);
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    v6 = *(v0 + 552);
    sub_1C44E7FAC();
    if (v6)
    {
      v7 = *(v0 + 416);
      v8 = *(v0 + 424);

      sub_1C441A9B4();
      sub_1C445442C(v8, v9);
      sub_1C4407DE4();
      sub_1C445442C(v7, v10);
      sub_1C4455690(v0 + 16);
      v49 = *(v0 + 472);
      goto LABEL_39;
    }

    sub_1C441A9B4();
    sub_1C445442C(v47, v48);
    sub_1C43FD2BC();
    sub_1C4C88840();

    v112 = 0;
  }

  else
  {
    v112 = *(v0 + 552);
  }

  v11 = sub_1C4450A18();
  v12 = sub_1C43FE990();
  LOBYTE(v14) = sub_1C44546CC(v12, v13, v11);
  sub_1C44528E0();
  v15 = objc_allocWithZone(MEMORY[0x1E69A9F10]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C43FE990();
  sub_1C4CD6DE0(v16, v17, v11);
  MEMORY[0x1C6940330]();
  if (*((*(v0 + 336) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 336) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_70;
  }

LABEL_8:
  sub_1C43FE5F8();
  sub_1C4F01748();
  v18 = *(v0 + 336);
  if (v14)
  {
    v19 = *(v0 + 488);
    v14 = *(v0 + 416);
    sub_1C4CD5138(*(v0 + 504), *(v0 + 512), v11, *(v0 + 448));

    sub_1C4407DE4();
    sub_1C445442C(v14, v20);
  }

  else
  {
    v21 = *(v0 + 488);
    sub_1C4407DE4();
    sub_1C445442C(v22, v23);
  }

  sub_1C4455690(v0 + 16);
  v24 = &selRef_localizedName;
  v113 = v18;
  for (i = v0; ; v0 = i)
  {
    v11 = *(v0 + 496);
    if (v11 == *(v0 + 440))
    {
      goto LABEL_51;
    }

    *(v0 + 472) = v18;
    *(v0 + 480) = v18;
    v25 = *(v0 + 376);
    v26 = v25 & 0xC000000000000001;
    sub_1C4431590(v11, (v25 & 0xC000000000000001) == 0, v25);
    v27 = *(v0 + 376);
    if (v26)
    {
      v28 = MEMORY[0x1C6940F90](v11, v27);
    }

    else
    {
      v28 = *(v27 + 8 * v11 + 32);
    }

    v29 = v28;
    *(v0 + 488) = v28;
    *(v0 + 496) = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_69;
    }

    v30 = [v28 name];
    v31 = sub_1C4F01138();
    v33 = v32;

    v115 = v31;
    v116 = v29;
    *(v0 + 504) = v31;
    *(v0 + 512) = v33;
    v34 = [v29 requests];
    sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
    sub_1C441C97C();
    v35 = sub_1C4F01678();

    v14 = sub_1C4428DA0(v35);
    v36 = 0;
    v0 = v35 & 0xC000000000000001;
    v11 = v35 & 0xFFFFFFFFFFFFFF8;
    v118 = v35;
    while (v14 != v36)
    {
      if (v0)
      {
        v37 = MEMORY[0x1C6940F90](v36, v35);
      }

      else
      {
        if (v36 >= *(v11 + 16))
        {
          goto LABEL_68;
        }

        v37 = *(v35 + 8 * v36 + 32);
      }

      v38 = v37;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        sub_1C4F016D8();
        goto LABEL_8;
      }

      v39 = objc_autoreleasePoolPush();
      if ([v38 v24[230]])
      {
        v40 = v24;
        v41 = [v38 state];
        sub_1C4F01138();

        v42 = sub_1C4F025D8();

        v43 = 0xED00006465726975;
        v44 = sub_1C44BBF38();
        switch(v42)
        {
          case 0:
            sub_1C4460730();
            v44 = v45 - 3;
            v43 = 0x80000001C4F87C20;
            goto LABEL_30;
          case 1:
            v43 = 0x80000001C4F87C40;
            v44 = 0xD000000000000013;
            goto LABEL_30;
          case 2:
            goto LABEL_30;
          case 3:
            v43 = 0xEA00000000007365;
            v44 = sub_1C4440E50();
LABEL_30:
            v46 = sub_1C441DEC4(v44, v43);

            objc_autoreleasePoolPop(v39);

            v24 = v40;
            v35 = v118;
            if (v46)
            {
              goto LABEL_31;
            }

            goto LABEL_36;
          case 4:

            v24 = v40;
            v35 = v118;
            goto LABEL_27;
          default:
            objc_autoreleasePoolPop(v39);

            v35 = v118;
LABEL_36:
            v50 = *(i + 432);
            v51 = *(i + 384);
            sub_1C4401144();
            sub_1C4431074(v51 + v52, v50, v53);
            type metadata accessor for ViewUpdate.SignpostHelper(0);
            swift_allocObject();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v1 = v115;
            sub_1C43FE990();
            sub_1C4462C40();
            *(i + 520) = v54;
            sub_1C4462D98();
            v55 = sub_1C43FE990();
            v6 = v112;
            sub_1C443A738(v55, v56, v57, v58, v59, v60, v61, v62);
            if (!v112)
            {
              sub_1C443B274(*(i + 416), v35, (i + 16));

              v91 = *(i + 72);
              *(i + 528) = v91;
              sub_1C4441C50(*(v91 + 33));
              v93 = v92;
              sub_1C4460730();
              if (v94 == v97 && 0x80000001C4F87C40 == v95)
              {
                v99 = 1;
              }

              else
              {
                v99 = sub_1C44620D0(v94, v93, v96, 0x80000001C4F87C40);
              }

              v100 = v99 & 1;
              *(i + 560) = v99 & 1;
              v102 = *(i + 408);
              v101 = *(i + 416);
              v104 = *(i + 392);
              v103 = *(i + 400);
              v105 = *(i + 384);

              sub_1C4CD7B00(i + 16, i + 136);
              sub_1C4431074(v101, v102, _s10ViewConfigVMa);
              sub_1C441B128();
              v106 = swift_allocObject();
              sub_1C440F070(v106);
              sub_1C4CD7BA4(v102, v106 + v104, _s10ViewConfigVMa);
              v107 = v106 + v103;
              *v107 = v105;
              *(v107 + 8) = v100;
              sub_1C447E384();
              v108 = swift_task_alloc();
              *(i + 544) = v108;
              *v108 = i;
              sub_1C44400C8(v108);
              sub_1C44149E0();

              __asm { BR              X0 }
            }

            v49 = v113;
            v0 = i;
            break;
        }

LABEL_39:
        swift_getErrorValue();
        sub_1C4D118BC();
        if (v63)
        {
          if (qword_1EDDFD018 != -1)
          {
            sub_1C4400660(&qword_1EDDFD018);
          }

          v64 = sub_1C4F00978();
          sub_1C43FCEE8(v64, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v65 = sub_1C4F00968();
          v66 = sub_1C4F01CF8();

          if (os_log_type_enabled(v65, v66))
          {
            sub_1C43FD084();
            v119[0] = sub_1C4415B1C();
            *v1 = 136315138;
            v67 = sub_1C43FE5F8();
            v70 = sub_1C441D828(v67, v68, v69);

            *(v1 + 4) = v70;
            _os_log_impl(&dword_1C43F8000, v65, v66, "ViewGeneration: Cancellation received while updating view %s", v1, 0xCu);
            sub_1C445EA88();
            sub_1C43FFD18();

LABEL_49:
            sub_1C44528E0();
            v85 = sub_1C4428DA0(v49);
            v86 = *(v0 + 488);
            if (!v85)
            {

              swift_willThrow();

              sub_1C43FBDA0();
              sub_1C44149E0();

              __asm { BRAA            X1, X16 }
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_51:

            sub_1C43FBCF0();
            sub_1C44149E0();

            __asm { BRAA            X2, X16 }
          }
        }

        else
        {
          if (qword_1EDDFD018 != -1)
          {
            sub_1C4400660(&qword_1EDDFD018);
          }

          v71 = sub_1C4F00978();
          sub_1C43FCEE8(v71, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v72 = v6;
          v65 = sub_1C4F00968();
          v73 = sub_1C4F01CD8();

          v74 = sub_1C442FAFC();
          v75 = *(v0 + 512);
          if (v74)
          {
            v76 = v49;
            v77 = *(v0 + 504);
            v117 = *(v0 + 368);
            v111 = v6;
            v78 = *(v0 + 360);
            v79 = sub_1C43FFD34();
            v80 = swift_slowAlloc();
            v119[0] = swift_slowAlloc();
            *v79 = 136315650;
            v81 = sub_1C441D828(v77, v75, v119);

            *(v79 + 4) = v81;
            v49 = v76;
            *(v79 + 12) = 2080;
            v82 = v78;
            v6 = v111;
            *(v79 + 14) = sub_1C441D828(v82, v117, v119);
            *(v79 + 22) = 2112;
            v83 = v111;
            v84 = _swift_stdlib_bridgeErrorToNSError();
            *(v79 + 24) = v84;
            *v80 = v84;
            _os_log_impl(&dword_1C43F8000, v65, v73, "ViewGeneration: Error updating view %s(%s): %@", v79, 0x20u);
            sub_1C4420C3C(v80, &qword_1EC0BDA00, &qword_1C4F10D30);
            sub_1C43FFD18();
            swift_arrayDestroy();
            sub_1C43FFD4C();
            sub_1C43FBE2C();

            goto LABEL_49;
          }
        }

        goto LABEL_49;
      }

LABEL_27:
      objc_autoreleasePoolPop(v39);

LABEL_31:
      ++v36;
    }

    v18 = v113;
  }
}

uint64_t sub_1C4CD4A3C()
{
  v40 = v0;
  swift_getErrorValue();
  sub_1C4D118BC();
  if (v1)
  {
    v2 = sub_1C4450A18();
    v3 = sub_1C44057DC();
    if (sub_1C44546CC(v3, v4, v2))
    {
      objc_allocWithZone(MEMORY[0x1E69A9F10]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = sub_1C4404050();
      sub_1C4CD6DE0(v5, v6, v2);
      MEMORY[0x1C6940330]();
      if (*((v0[42] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[42] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      v7 = v0[42];
    }

    else
    {

      v7 = v0[59];
    }

    if (sub_1C4428DA0(v7))
    {
      sub_1C4CCE7B8();
    }
  }

  else
  {
    v7 = v0[59];
  }

  v8 = v0[52];
  swift_willThrow();
  sub_1C4407DE4();
  sub_1C445442C(v8, v9);
  sub_1C4455690((v0 + 2));
  v10 = v0[69];
  swift_getErrorValue();
  sub_1C4D118BC();
  if (v11)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();

    v15 = sub_1C444AD54();
    v16 = v0[64];
    if (v15)
    {
      v17 = v0[63];
      v18 = sub_1C43FD084();
      v19 = sub_1C43FFD34();
      v39[0] = v19;
      *v18 = 136315138;
      v20 = sub_1C441D828(v17, v16, v39);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1C43F8000, v13, v14, "ViewGeneration: Cancellation received while updating view %s", v18, 0xCu);
      sub_1C4CD7B5C(v19);
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v21 = v0[64];
    v22 = sub_1C4F00978();
    sub_1C43FCEE8(v22, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = v10;
    v13 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();

    v25 = os_log_type_enabled(v13, v24);
    v26 = v0[64];
    if (v25)
    {
      v27 = v0[63];
      v37 = v0[45];
      v38 = v0[46];
      sub_1C43FFD34();
      v28 = sub_1C4403FF4();
      v39[0] = swift_slowAlloc();
      *v21 = 136315650;
      v29 = sub_1C441D828(v27, v26, v39);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1C441D828(v37, v38, v39);
      *(v21 + 22) = 2112;
      v30 = v10;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v31;
      *v28 = v31;
      _os_log_impl(&dword_1C43F8000, v13, v24, "ViewGeneration: Error updating view %s(%s): %@", v21, 0x20u);
      sub_1C4420C3C(v28, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      goto LABEL_20;
    }
  }

LABEL_20:
  sub_1C44528E0();
  v32 = sub_1C4428DA0(v7);
  v33 = v0[61];
  if (v32)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C43FBCF0();

    return v34(v7);
  }

  else
  {

    swift_willThrow();

    sub_1C43FBDA0();

    return v36();
  }
}

uint64_t sub_1C4CD4F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewGenerationProvider;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C4CD5048;

  return sub_1C445E374(a3, a4 + v9, a5);
}

uint64_t sub_1C4CD5048()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  sub_1C43FBDA0();

  return v4();
}

void sub_1C4CD5138(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v8 = sub_1C445FAA8(a1, a2);
    if (v9)
    {
      v34 = a1;
      v35 = a2;
      v10 = *(*(a4 + 56) + 8 * v8);
      v11 = sub_1C4428DA0(a3);
      oslog = v10;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      for (i = 0; ; ++i)
      {
        if (v11 == i)
        {
          goto LABEL_18;
        }

        if ((a3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C6940F90](i, a3);
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v13 = *(a3 + 8 * i + 32);
        }

        v14 = v13;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          swift_once();
LABEL_19:
          v24 = sub_1C4F00978();
          sub_1C442B738(v24, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          osloga = sub_1C4F00968();
          v25 = sub_1C4F01CD8();

          if (os_log_type_enabled(osloga, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v38 = v27;
            *v26 = 136315138;
            *(v26 + 4) = sub_1C441D828(v34, v35, &v38);
            _os_log_impl(&dword_1C43F8000, osloga, v25, "Unable to retrieve control source in response for %s", v26, 0xCu);
            sub_1C4CD7B5C(v27);
            MEMORY[0x1C6942830](v27, -1, -1);
            MEMORY[0x1C6942830](v26, -1, -1);
          }

          else
          {
          }

          return;
        }

        v15 = [v13 configIdentifier];
        v16 = [v15 sourceType];

        v17 = sub_1C4F01138();
        v19 = v18;

        if (v17 == 0x6C6F72746E6F63 && v19 == 0xE700000000000000)
        {
          break;
        }

        v21 = sub_1C4F02938();

        if (v21)
        {
          goto LABEL_17;
        }
      }

LABEL_17:
      v22 = sub_1C4CD8668(v14);
      if (v23 >> 60 == 15)
      {
LABEL_18:

        if (qword_1EDDFD018 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_40;
      }

      v28 = v22;
      v29 = v23;
      v30 = sub_1C4428DA0(oslog);
      for (j = 0; v30 != j; ++j)
      {
        if ((oslog & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1C6940F90](j, oslog);
        }

        else
        {
          if (j >= *((oslog & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v32 = *(oslog + 8 * j + 32);
        }

        v33 = v32;
        if (__OFADD__(j, 1))
        {
          goto LABEL_38;
        }

        sub_1C4CD86D8(v28, v29, v32);
      }

      sub_1C441DFEC(v28, v29);
    }
  }
}

uint64_t ViewUpdate.ViewInProcessRunner.fullRebuild(viewName:requests:)()
{
  sub_1C43FCF70();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  v3[1] = sub_1C46FDBC8;
  v5 = sub_1C44057DC();

  return ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(v5, v6, v1);
}

uint64_t ViewUpdate.ViewInProcessRunner.clear(viewName:)()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440C07C(v1);

  return ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(v3, v4, 0);
}

uint64_t ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CD5724()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CD5824()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4CD5880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 81) = a5;
  *(v5 + 272) = a3;
  *(v5 + 280) = a4;
  *(v5 + 264) = a2;
  type metadata accessor for Configuration(0);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD5924, 0, 0);
}

uint64_t sub_1C4CD5924()
{
  sub_1C4404B08();
  v1 = *(v0 + 264);
  v2 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config;
  sub_1C4401144();
  sub_1C4431074(v1 + v2, v3, v4);
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998(&qword_1EDDFF2A0);
  }

  *(v0 + 304) = sub_1C44E7FAC();
  v5 = *(v0 + 81);
  sub_1C441A9B4();
  sub_1C445442C(v6, v7);
  v8._countAndFlagsBits = sub_1C43FE5F8();
  ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v8, v5);
  if (!v9)
  {
    ViewGeneration.ViewClients.clearArtifact(viewName:fullRebuild:)(*(v0 + 272), *(v0 + 81));
    if (!v9)
    {

      sub_1C43FBDA0();
LABEL_9:
      sub_1C4410B00();

      __asm { BRAA            X1, X16 }
    }
  }

  *(v0 + 256) = v9;
  v10 = v9;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    sub_1C43FBDA0();
    goto LABEL_9;
  }

  memcpy((v0 + 88), (v0 + 16), 0x41uLL);
  sub_1C444B39C();
  if (v11)
  {
    sub_1C498DA1C(v0 + 88);
    goto LABEL_8;
  }

  v14 = *(v0 + 288);

  sub_1C4401144();
  sub_1C4431074(v1 + v2, v14, v15);
  if (qword_1EDDFB828 != -1)
  {
    sub_1C440FE28();
    swift_once();
  }

  *(v0 + 360) = sub_1C4ABF9D8();
  sub_1C441A9B4();
  sub_1C445442C(v16, v17);
  v18 = swift_task_alloc();
  *(v0 + 368) = v18;
  *v18 = v0;
  sub_1C448E110(v18);
  sub_1C4410B00();

  return sub_1C445E588(v19, v20, v21);
}

uint64_t sub_1C4CD5BCC()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  *v6 = *v1;
  v5[47] = v7;
  v5[48] = v0;

  if (!v0)
  {
    v5[49] = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4CD5CDC()
{
  sub_1C4414788();
  sub_1C456902C(&qword_1EC0C6020, &qword_1C4F3EF98);
  v3 = sub_1C456902C(&qword_1EC0C6040, &qword_1C4F6A1A0);
  if (sub_1C4461D70(v3))
  {
    sub_1C44018CC();

    sub_1C445C254();
    sub_1C4BD01C8();
    sub_1C4413FB8();
    swift_unknownObjectRelease();

    sub_1C4CD7B5C(v0);
  }

  else
  {
    sub_1C4426F6C();
    sub_1C4420C3C(v1, &unk_1EC0C6048, &qword_1C4F6A1A8);
    sub_1C450B034();
    v4 = swift_allocError();
    sub_1C442F468(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);

    swift_unknownObjectRelease();
  }

  sub_1C43FBDA0();

  return v12();
}

uint64_t sub_1C4CD5E54()
{
  sub_1C43FCF70();

  sub_1C43FBDA0();

  return v1();
}

uint64_t ViewUpdate.ViewInProcessRunner.truncate(viewName:)()
{
  sub_1C43FCF70();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v5 = sub_1C440C07C(v4);

  return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(v5, v6, 0);
}

uint64_t sub_1C4CD5F9C()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v3[6] = v9;
    *v9 = v5;
    v9[1] = sub_1C4CD6100;
    v10 = v3[3];
    v11 = v3[2];

    return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(v11, v10, 1);
  }
}

uint64_t sub_1C4CD6100()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CD62E0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CD63E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 81) = a5;
  *(v5 + 272) = a3;
  *(v5 + 280) = a4;
  *(v5 + 264) = a2;
  type metadata accessor for Configuration(0);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD6484, 0, 0);
}

uint64_t sub_1C4CD6484()
{
  sub_1C4404B08();
  v1 = *(v0 + 264);
  v2 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config;
  sub_1C4401144();
  sub_1C4431074(v1 + v2, v3, v4);
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998(&qword_1EDDFF2A0);
  }

  *(v0 + 304) = sub_1C44E7FAC();
  v5 = *(v0 + 81);
  sub_1C441A9B4();
  sub_1C445442C(v6, v7);
  v8._countAndFlagsBits = sub_1C43FE5F8();
  ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v8, v5);
  if (!v9)
  {
    ViewGeneration.ViewClients.truncateArtifact(viewName:fullRebuild:)(*(v0 + 272), *(v0 + 81));
    if (!v9)
    {

      sub_1C43FBDA0();
LABEL_9:
      sub_1C4410B00();

      __asm { BRAA            X1, X16 }
    }
  }

  *(v0 + 256) = v9;
  v10 = v9;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    sub_1C43FBDA0();
    goto LABEL_9;
  }

  memcpy((v0 + 88), (v0 + 16), 0x41uLL);
  sub_1C444B39C();
  if (v11)
  {
    sub_1C498DA1C(v0 + 88);
    goto LABEL_8;
  }

  v14 = *(v0 + 288);

  sub_1C4401144();
  sub_1C4431074(v1 + v2, v14, v15);
  if (qword_1EDDFB828 != -1)
  {
    sub_1C440FE28();
    swift_once();
  }

  *(v0 + 360) = sub_1C4ABF9D8();
  sub_1C441A9B4();
  sub_1C445442C(v16, v17);
  v18 = swift_task_alloc();
  *(v0 + 368) = v18;
  *v18 = v0;
  sub_1C448E110(v18);
  sub_1C4410B00();

  return sub_1C445E588(v19, v20, v21);
}

uint64_t sub_1C4CD672C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  *v6 = *v1;
  v5[47] = v7;
  v5[48] = v0;

  if (!v0)
  {
    v5[49] = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4CD683C()
{
  sub_1C4414788();
  sub_1C456902C(&qword_1EC0C6020, &qword_1C4F3EF98);
  v3 = sub_1C456902C(&qword_1EC0C6028, &qword_1C4F6A190);
  if (sub_1C4461D70(v3))
  {
    sub_1C44018CC();

    sub_1C445C254();
    sub_1C4BD02D8();
    sub_1C4413FB8();
    swift_unknownObjectRelease();

    sub_1C4CD7B5C(v0);
  }

  else
  {
    sub_1C4426F6C();
    sub_1C4420C3C(v1, &unk_1EC0C6030, &qword_1C4F6A198);
    sub_1C450B034();
    v4 = swift_allocError();
    sub_1C442F468(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);

    swift_unknownObjectRelease();
  }

  sub_1C43FBDA0();

  return v12();
}

uint64_t ViewUpdate.ViewInProcessRunner.deinit()
{
  sub_1C441A9B4();
  sub_1C445442C(v0 + v1, v2);
  sub_1C4CD7B5C((v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewGenerationProvider));

  return v0;
}

uint64_t ViewUpdate.ViewInProcessRunner.__deallocating_deinit()
{
  ViewUpdate.ViewInProcessRunner.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CD6A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4703368;

  return ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(a1, a2, a3);
}

uint64_t sub_1C4CD6B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4703368;

  return ViewUpdate.ViewInProcessRunner.update(groupName:namesAndRequests:)();
}

uint64_t sub_1C4CD6BCC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(a1, a2, a3);
}

uint64_t sub_1C4CD6C7C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C442F080;

  return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(a1, a2, a3);
}

uint64_t sub_1C4CD6D44()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD1FAC(v3, v4, v5, v6, v7);
}

id sub_1C4CD6DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4F01108();

  sub_1C4461BB8(0, &qword_1EDDFA450, 0x1E69A9F20);
  v5 = sub_1C4F01658();

  v6 = [v3 initWithName:v4 responses:v5];

  return v6;
}

uint64_t sub_1C4CD7950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6, v7);
  if (v4)
  {
    v8 = sub_1C448F250();
  }

  else
  {
    v10 = sub_1C4404050();
    v8 = MEMORY[0x1C6940F90](v10);
  }

  *v3 = v8;
  return sub_1C4425564();
}

uint64_t sub_1C4CD79AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6, v7);
  if (v4)
  {
    v8 = sub_1C4414380();
  }

  else
  {
    v10 = sub_1C4404050();
    v8 = MEMORY[0x1C6940F90](v10);
  }

  *v3 = v8;
  return sub_1C4425564();
}

uint64_t (*sub_1C4CD7A08(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1C4420C30(a3);
  sub_1C4431590(a2, v6, a3);
  if (v6)
  {
    v7 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = MEMORY[0x1C6940F90](a2, a3);
  }

  *a1 = v7;
  return sub_1C4CD7A94;
}

uint64_t sub_1C4CD7A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6, v7);
  if (v4)
  {
    v8 = sub_1C4414380();
  }

  else
  {
    v10 = sub_1C4404050();
    v8 = MEMORY[0x1C6940F90](v10);
  }

  *v3 = v8;
  return sub_1C4425564();
}

uint64_t sub_1C4CD7B5C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_1C4422570(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C4CD7BA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4CD7C04()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  _s10ViewConfigVMa(0);
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  sub_1C4426C44();

  return sub_1C4CD4F84(v3, v4, v5, v6, v7);
}

uint64_t sub_1C4CD7D14()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442E8C4;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD5880(v3, v4, v5, v6, v7);
}

uint64_t sub_1C4CD7DB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1C4CD7DF4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD63E0(v3, v4, v5, v6, v7);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.update(viewName:requests:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  sub_1C441C5E8(v9, v10, v11, v12, v13);
  sub_1C440721C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1C43FC218(v15);
  *v16 = v17;
  sub_1C44355CC(v16);
  sub_1C440C800();
  sub_1C4402234();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.update(groupName:namesAndRequests:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  sub_1C441C5E8(v9, v10, v11, v12, v13);
  sub_1C440721C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1C43FC218(v15);
  *v16 = v17;
  sub_1C44355CC(v16);
  sub_1C440C800();
  sub_1C4402234();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.clear(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  sub_1C441C5E8(v9, v10, v11, v12, v13);
  sub_1C440721C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1C43FC218(v15);
  *v16 = v17;
  sub_1C44355CC(v16);
  sub_1C440C800();
  sub_1C4402234();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.truncate(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  sub_1C441C5E8(v9, v10, v11, v12, v13);
  sub_1C440721C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_1C43FC218(v15);
  *v16 = v17;
  sub_1C44355CC(v16);
  sub_1C440C800();
  sub_1C4402234();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.stop()()
{
  sub_1C43FEAEC();
  v6 = (*(v0 + 40) + **(v0 + 40));
  v1 = swift_task_alloc();
  v2 = sub_1C43FC218(v1);
  *v2 = v3;
  v4 = sub_1C440C07C(v2);

  return v6(v4);
}

_BYTE *_s25GenerationRunnerSingletonOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4CD84BC(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t (*sub_1C4CD857C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = sub_1C4420C30(a3);
  sub_1C4431590(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1C6940F90](a2, a3);
  }

  *a1 = v7;
  return sub_1C4CD9018;
}

uint64_t sub_1C4CD8608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6, v7);
  if (v4)
  {
    v8 = sub_1C448F250();
  }

  else
  {
    v10 = sub_1C4404050();
    v8 = MEMORY[0x1C6940F90](v10);
  }

  *v3 = v8;
  return sub_1C4425564();
}

uint64_t sub_1C4CD8668(void *a1)
{
  v2 = [a1 bookmark];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4EF9A68();

  return v3;
}

void sub_1C4CD86D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4EF9A38();
  [a3 setLatestBookmark_];
}

uint64_t sub_1C4CD8730()
{
  sub_1C4404D98();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C447CC94();

  return sub_1C4CD057C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4CD87FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_1C470214C;

  return sub_1C4CD02E4(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1C4CD88CC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4CD0F98(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C4CD890C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4CD0F98(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C4CD8968()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v0 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C43FBD18(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C43FCF54(v1);
  *v2 = v3;
  v2[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD134C(v4, v5, v6, v7);
}

uint64_t sub_1C4CD8A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4CD8AA4()
{
  sub_1C4404D98();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C447CC94();

  return v3();
}

uint64_t sub_1C4CD8BA8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1C456902C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1C4CD8C68()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v0 = sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  sub_1C43FBD18(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C43FCF54(v1);
  *v2 = v3;
  v2[1] = sub_1C442E8C4;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD1068(v4, v5, v6, v7);
}

uint64_t sub_1C4CD8D40()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

uint64_t *sub_1C4CD8DD4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1C4CD9044(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_1C4F01178();
    return sub_1C4F01158();
  }

  return result;
}

void sub_1C4CD90DC()
{
  v1 = v0;
  *(v0 + 34) = 5;
  v2 = *(v0 + 152);
  *(v0 + 128) = *(v0 + 144);
  *(v0 + 136) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_1C444F05C(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
    v9 = sub_1C441D828(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, oslog, v4, "ViewUpdate: %s: Finished update", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

char **sub_1C4CD9248(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = [a1 state];
  sub_1C4F01138();

  v8 = sub_1C43FD258();
  v10 = sub_1C443BE78(v8, v9);
  if (v10 == 5)
  {
    sub_1C4F02248();

    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v11 = [a1 state];
    v12 = sub_1C4F01138();
    v14 = v13;

    MEMORY[0x1C6940010](v12, v14);

    v15 = 0xD00000000000001ELL;
    sub_1C446D0DC();
    v16 = swift_allocError();
    sub_1C4420884(v16, v17);

LABEL_10:

    goto LABEL_11;
  }

  v18 = v10;
  v64 = a3;
  v15 = &selRef_localizedName;
  v19 = [a1 configIdentifier];
  v20 = [v19 index];

  v21 = a2[30];
  if (!v21 || *(v21 + 16) <= v20)
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    sub_1C440B730();
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v37 = sub_1C4F02858();
    MEMORY[0x1C6940010](v37);

    sub_1C440B730();
    MEMORY[0x1C6940010](*a2, a2[1]);
    v15 = 0;
    sub_1C446D0DC();
    v38 = swift_allocError();
    sub_1C4420884(v38, v39);

    goto LABEL_10;
  }

  v22 = sub_1C443D554(a1);
  *&v62 = sub_1C4CD9044(v22, v23);
  *(&v62 + 1) = v24;
  v25 = sub_1C43FD258();
  result = sub_1C441DFEC(v25, v26);
  if (v20 < 0)
  {
    __break(1u);
  }

  else if (*(v21 + 16) > v20)
  {
    v28 = a2[1];
    v61 = *a2;
    v29 = v21 + 32 * v20;
    v60 = *(v29 + 32);
    v31 = *(v29 + 40);
    v30 = *(v29 + 48);
    v32 = *(v29 + 56);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = sub_1C443ED0C([a1 configIdentifier]);
    if (!v3)
    {
      v54 = v36;
      v55 = v35;
      v56 = v34;
      v57 = v33;
      v58 = v32;
      v59 = v30;
      v53 = [a1 triggered];
      sub_1C4441C50(v18);
      if (v41 == 0x65676E6168436F6ELL && v40 == 0xE900000000000073)
      {

        v44 = 1;
      }

      else
      {
        v43 = sub_1C4F02938();

        v44 = v43 & 1;
      }

      v45 = sub_1C445CA14(a1);
      v63 = sub_1C4CD9044(v45, v46);
      v48 = v47;
      v49 = sub_1C43FD258();
      sub_1C441DFEC(v49, v50);
      v15 = swift_allocObject();
      *(&v52 + 1) = v48;
      *&v52 = v63;
      BYTE2(v51) = v44;
      BYTE1(v51) = v18;
      LOBYTE(v51) = v53;
      sub_1C4CD9D68(v61, v28, v60, v31, v59, v58, v57, v56, v55, v54, v51, v62, v62, v52, v64);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441A9CC();
      return v15;
    }

LABEL_11:
    sub_1C441A9CC();
    return v15;
  }

  __break(1u);
  return result;
}

double sub_1C4CD96C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v34 - v15;
  sub_1C4830FF0(*(a1 + 16), *(a1 + 24));
  v17 = sub_1C43FD258();
  sub_1C4CDA190(v17, v18);
  v19 = sub_1C44157D4(v13, 1, v7);
  if (v19 == 1)
  {
    sub_1C4CDA200(v16);
    v27 = 0;
    v23 = 0;
    v26 = 0xF000000000000000;
    v32 = 4;
    v25 = 0xF000000000000000;
  }

  else
  {
    v34[1] = v3;
    sub_1C4CDA268(v13, v10);
    v34[3] = *(v10 + 32);
    v20 = sub_1C4F02858();
    v22 = v21;
    sub_1C4CDA2CC(v10, type metadata accessor for StaticKnowledgeAssetMetadata);
    sub_1C4CDA200(v16);
    _s26GlobalKnowledgeGraphSourceCMa();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = sub_1C4CD9954(v20, v22);
    v25 = v24;

    v27 = *(a2 + 40);
    v26 = *(a2 + 48);
    sub_1C4431E64(v27, v26);
    v28 = sub_1C4CD9044(v27, v26);
    if (v29)
    {
      if (v28 == v20 && v29 == v22)
      {

LABEL_13:
        v32 = 4;
        goto LABEL_14;
      }

      v31 = sub_1C4F02938();

      if (v31)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v32 = 3;
  }

LABEL_14:
  *a3 = v32;
  *(a3 + 1) = v19 != 1;
  *(a3 + 8) = v27;
  *(a3 + 16) = v26;
  *(a3 + 24) = v23;
  *(a3 + 32) = v25;
  result = 0.0;
  *(a3 + 40) = xmmword_1C4F29230;
  return result;
}

uint64_t sub_1C4CD9954(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4F01188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  if (a2)
  {
    sub_1C4F01178();
    a2 = sub_1C4F01148();
    (*(v4 + 8))(v7, v3);
  }

  return a2;
}

double sub_1C4CD9A70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C4CD96C4(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1C4CD9AC4()
{
  v1 = 7104878;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000030, 0x80000001C4FC43B0);
  if (*(v0 + 32))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v2, v3);

  v4 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1C44128DC(v4, v5, &_s21ViewUpdateSourceStateON, v6, v7, v8, v9, v10, v25, *v27, *&v27[4], v27[6], *(v0 + 33), 0);
  v11 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_1C44128DC(v11, v12, &_s24ViewUpdateSourceResponseON, v13, v14, v15, v16, v17, v26, v28, v29, v30, *(v0 + 34), v31);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v18 = sub_1C444F05C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  MEMORY[0x1C6940010](v18);

  MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  if (*(v0 + 120))
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);
  }

  else
  {
    v20 = 0xE300000000000000;
    v19 = 7104878;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v19, v20);

  MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  if (*(v0 + 136))
  {
    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
  }

  else
  {
    v22 = 0xE300000000000000;
    v21 = 7104878;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v21, v22);

  MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  if (*(v0 + 152))
  {
    v1 = *(v0 + 144);
    v23 = *(v0 + 152);
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v1, v23);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v32;
}

uint64_t sub_1C4CD9D68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, int a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  *(v15 + 168) = 0;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;
  *(v15 + 88) = a5;
  *(v15 + 96) = a6;
  *(v15 + 40) = a7;
  *(v15 + 48) = a8;
  *(v15 + 56) = a9;
  *(v15 + 64) = a10;
  *(v15 + 32) = a11;
  *(v15 + 33) = *(&a11 + 1);
  *(v15 + 160) = a15;
  *(v15 + 112) = a12;
  *(v15 + 128) = a13;
  *(v15 + 144) = a14;
  *(v15 + 104) = 0;
  return v15;
}

void sub_1C4CD9DE0(char a1, const char *a2)
{
  v4 = v2;
  *(v2 + 34) = a1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_1C444F05C(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64));
    v11 = sub_1C441D828(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, oslog, v6, a2, v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CD9F3C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4CD9954(v1, v2);

  return v3;
}

uint64_t sub_1C4CD9F90()
{

  return v0;
}

uint64_t sub_1C4CD9FE0()
{
  sub_1C4CD9F90();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CDA114(uint64_t a1)
{
  result = sub_1C4CDA13C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CDA13C()
{
  result = qword_1EDDF97D0;
  if (!qword_1EDDF97D0)
  {
    _s26GlobalKnowledgeGraphSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF97D0);
  }

  return result;
}

uint64_t sub_1C4CDA190(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4CDA200(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4CDA268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4CDA2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t ViewUpdate.JobPriority.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C4CDA340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1C44316B0(a3, v24 - v10);
  v12 = sub_1C4F018C8();
  v13 = sub_1C44157D4(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1C4420C3C(v11, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C4F017F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C4F011C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C4CDA5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1C44316B0(a3, v24 - v10);
  v12 = sub_1C4F018C8();
  v13 = sub_1C44157D4(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1C4420C3C(v11, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C4F017F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C4F011C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C4CDA87C()
{
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  result = static NSUserDefaults.viewGenerationMaxAttempts.getter();
  qword_1EDE2D2B0 = result;
  return result;
}

unint64_t sub_1C4CDA8CC()
{
  result = qword_1EC0C60F0;
  if (!qword_1EC0C60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C60F0);
  }

  return result;
}

uint64_t sub_1C4CDA928@<X0>(uint64_t *a1@<X8>)
{
  result = ViewUpdate.JobPriority.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CDA960()
{
  sub_1C456902C(&unk_1EC0C6140, &unk_1C4F6A8C0);
  swift_allocObject();
  result = sub_1C4CE591C();
  qword_1EDE2DC00 = result;
  return result;
}

uint64_t sub_1C4CDA9AC()
{
  if (qword_1EDDF9D28 != -1)
  {
    swift_once();
  }

  return sub_1C4ABFB94();
}

uint64_t sub_1C4CDAA78(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  _s12JobSchedulerC13JobIdentifierVMa(0);

  return sub_1C4EF9D08();
}

uint64_t sub_1C4CDAADC()
{
  v1 = v0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](3830844, 0xE300000000000000);
  v2 = *(v0 + 48);
  sub_1C4409678((v1 + 16), *(v1 + 40));
  v3 = sub_1C43FCFC0();
  LOBYTE(v21) = v4(v3, v2);
  sub_1C4425570(&v21, v5, &_s7JobTypeON, v6, v7);
  MEMORY[0x1C6940010](3829792, 0xE300000000000000);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_1C4409678((v1 + 16), *(v1 + 40));
  (*(v9 + 8))(&v21, v8, v9);
  sub_1C4425570(&v21, v10, &type metadata for ViewUpdate.JobPriority, v11, v12);
  v13 = 0xE500000000000000;
  MEMORY[0x1C6940010](0x3A6E616320, 0xE500000000000000);
  if (*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled))
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1C6940010](v14, v13);

  MEMORY[0x1C6940010](0x3A6E6F6320, 0xE500000000000000);
  v21 = *(*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) + 16);
  v15 = sub_1C4F02858();
  MEMORY[0x1C6940010](v15);

  MEMORY[0x1C6940010](3828256, 0xE300000000000000);
  v16 = sub_1C456902C(&qword_1EC0C6110, &qword_1C4F6A7C0);
  sub_1C4425570(v0 + 16, v17, v16, v18, v19);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v22;
}

uint64_t sub_1C4CDAD0C(uint64_t a1)
{
  v2 = v1;
  v22 = sub_1C4F00D58();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4F00D88();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob) = 0;
  v17 = (v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure);
  *v17 = 0;
  v17[1] = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob) = 0;
  sub_1C4427E50(a1, v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_config, type metadata accessor for Configuration);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs) = MEMORY[0x1E69E7CC0];
  sub_1C4461BB8(0, &qword_1EDDFA490, 0x1E69E9630);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_sigtermHandler) = sub_1C4F01DD8();
  ObjectType = swift_getObjectType();
  aBlock[4] = sub_1C4CDD2E8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4833DD0;
  aBlock[3] = &unk_1F440AE00;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1C4795168(ObjectType);
  sub_1C479516C();
  sub_1C4F01DE8();
  _Block_release(v19);
  (*(v5 + 8))(v9, v22);
  (*(v12 + 8))(v16, v10);

  sub_1C4F01E08();
  swift_unknownObjectRelease();
  sub_1C4474E48(a1, type metadata accessor for Configuration);
  return v2;
}

uint64_t sub_1C4CDB004(uint64_t a1)
{
  v1 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDF8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "ViewUpdate.JobScheduler: Stopping all tasks due to SIGTERM", v7, 2u);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  v8 = sub_1C4F018C8();
  sub_1C440BAA8(v3, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_1C4CDA340(0, 0, v3, &unk_1C4F6A8B8, v10);

  return sub_1C4420C3C(v3, &qword_1EC0BC660, &qword_1C4F29150);
}

uint64_t sub_1C4CDB1F8()
{
  sub_1C43FBCD4();
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4CDB298, Strong, 0);
  }

  else
  {
    sub_1C43FBDA0();

    return v2();
  }
}

uint64_t sub_1C4CDB298()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  sub_1C4CDB304(v2, v1);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4CDB304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4F018C8();
  sub_1C43FCDF8();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v36 = v8 - v7;
  v9 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  swift_beginAccess();
  v10 = *(a2 + v9);
  result = sub_1C4428DA0(v10);
  if (result)
  {
    v12 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C6940F90](i, v10);
      }

      else
      {
      }

      *(v14 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) = 1;
    }
  }

  if (qword_1EDDFD018 != -1)
  {
    sub_1C4400660(&qword_1EDDFD018);
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DDF8);
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C43F8000, v16, v17, "ViewUpdate.JobScheduler: All current jobs cancelled", v18, 2u);
    MEMORY[0x1C6942830](v18, -1, -1);
  }

  v19 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault;
  if ((*(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault) & 1) == 0)
  {
    v20 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
    swift_beginAccess();
    if (sub_1C4428DA0(*(a1 + v20)) > 10)
    {
      *(a1 + v19) = 1;

      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CE8();
      if (os_log_type_enabled(v21, v22))
      {
        v35 = v22;
        v23 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v38 = v34;
        *v23 = 134218242;
        *(v23 + 4) = sub_1C4428DA0(*(a1 + v20));

        *(v23 + 12) = 2080;
        v24 = *(a1 + v20);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C529A0(10, v24);
        _s12JobSchedulerC10JobTrackerCMa(0);
        v25 = sub_1C4F02088();
        v27 = v26;
        swift_unknownObjectRelease();
        v28 = sub_1C441D828(v25, v27, &v38);

        *(v23 + 14) = v28;
        _os_log_impl(&dword_1C43F8000, v21, v35, "ViewUpdate.JobScheduler/Mutate: Exceeded 10 pending View jobs. Currently have %ld jobs: %s", v23, 0x16u);
        sub_1C440962C(v34);
        MEMORY[0x1C6942830](v34, -1, -1);
        sub_1C43FFD4C();
      }

      else
      {
      }
    }
  }

  if (*(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop))
  {
    v29 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
    if (v29)
    {

      v30 = sub_1C4428BF0();
      v31 = v30;
      if (v30 && v30 != v29)
      {
        sub_1C44FFA6C();
        v32 = v31[5];
        v33 = v31[6];
        sub_1C4409678(v31 + 2, v32);
        (*(v33 + 8))(&v38, v32, v33);
        if (v38 >= 2u)
        {
          sub_1C4F018A8();
        }

        else
        {
          sub_1C4F01898();
        }

        sub_1C44FFDE4(v36);

        (*(v37 + 8))(v36, v4);
      }

      else
      {
        if (*(v29 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
        {
          sub_1C44FFA6C();
        }
      }
    }
  }

  else
  {
    sub_1C4429198();
  }

  sub_1C44293C4();
}

uint64_t sub_1C4CDB7A8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = v0[12];
  sub_1C43FF870();
  swift_getErrorValue();
  sub_1C4D118BC();
  if (v3)
  {
    v4 = v0[8];

    v5 = *(v4 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled);
    v6 = v0[6];
    v7 = v0[7];
    if (v5 == 1)
    {
      sub_1C44054BC(v6);
    }

    else
    {
      sub_1C43FCB64(v6);
    }
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DDF8);
    v9 = v2;
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    if (os_log_type_enabled(v10, v11))
    {
      sub_1C43FD084();
      v12 = sub_1C4405A9C();
      *v1 = 138412290;
      v13 = v2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      sub_1C4416538(v14);
      sub_1C43FF718(&dword_1C43F8000, v15, v11, "ViewUpdate.JobScheduler/ExecutorTask: Job 'next' threw an error: %@");
      sub_1C4420C3C(v12, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    v16 = v0[6];
    v7 = v0[7];

    *v16 = v2;
    *(v16 + 8) = 1;
  }

  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob) = 0;

  *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask) = 0;

  sub_1C43FBDA0();
  sub_1C4426C44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1C4CDB980()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_1C4409678(v1 + 2, v2);
  v6 = (sub_1C43FCFC0() + 40);
  v7 = (*v6 + **v6);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1C449F510;

  return v7(v2, v3);
}

uint64_t sub_1C4CDBAA0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);

  sub_1C44128FC();
  sub_1C4474E48(v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4CDBB1C()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4CDBB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s12JobSchedulerC13JobIdentifierVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  atomic_store(1u, (a1 + 16));
  v11 = sub_1C4F018C8();
  sub_1C440BAA8(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_1C4427E50(a3, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s12JobSchedulerC13JobIdentifierVMa);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  sub_1C442880C(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1C4CDA5D4(0, 0, v10, &unk_1C4F6A7F8, v14);

  return sub_1C4420C3C(v10, &qword_1EC0BC660, &qword_1C4F29150);
}

uint64_t sub_1C4CDBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CDBD8C, 0, 0);
}

uint64_t sub_1C4CDBD8C()
{
  sub_1C43FBCD4();
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4CDBE38, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    sub_1C43FBDA0();

    return v2();
  }
}

uint64_t sub_1C4CDBE38()
{
  sub_1C43FCF70();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1C4427A88(sub_1C4CDD254);

  return MEMORY[0x1EEE6DFA0](sub_1C4CDBEDC, 0, 0);
}

uint64_t sub_1C4CDBEF4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 96) = a2;
  *(v4 + 56) = a1;
  return sub_1C4413C08();
}

uint64_t sub_1C4CDBF10()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 56);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for ViewUpdate.ViewClearJob();
  swift_allocObject();
  sub_1C4428D8C(v1, v2);

  v4 = sub_1C441BE24();
  v7 = sub_1C4D16144(v4, v5, v6);
  if (v1)
  {
    sub_1C43FBDA0();
    sub_1C4426C44();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(v0 + 40) = v3;
    *(v0 + 48) = &off_1F440C230;
    *(v0 + 16) = v7;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 80) = v17;
    *v17 = v18;
    sub_1C443397C(v17);
    sub_1C4426C44();

    return sub_1C4427880();
  }
}

uint64_t sub_1C4CDC024()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_1C44150AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C440962C((v3 + 16));
    v10 = sub_1C44355E0();

    return v11(v10);
  }
}

uint64_t sub_1C4CDC150(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 96) = a2;
  *(v4 + 56) = a1;
  return sub_1C4413C08();
}

uint64_t sub_1C4CDC16C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 56);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for ViewUpdate.ViewTruncateJob();
  swift_allocObject();
  sub_1C4428D8C(v1, v2);

  v4 = sub_1C441BE24();
  v7 = sub_1C4D17A74(v4, v5, v6);
  if (v1)
  {
    sub_1C43FBDA0();
    sub_1C4426C44();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(v0 + 40) = v3;
    *(v0 + 48) = &off_1F440C200;
    *(v0 + 16) = v7;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 80) = v17;
    *v17 = v18;
    sub_1C443397C(v17);
    sub_1C4426C44();

    return sub_1C4427880();
  }
}

void sub_1C4CDC280(uint64_t a1, void *a2)
{
  v4 = _s12JobSchedulerC13JobIdentifierVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
    v8 = sub_1C4F02128();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v24;
  if (v8)
  {
    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {
      v10 = *a2;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = 0;
      v12 = &dword_1EDE2D000;
      *&v13 = 134217984;
      v21 = v13;
      v22 = v4;
      v23 = v10;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C6940F90](v11, v7);
        }

        else
        {
          v14 = *(v7 + 8 * v11 + 32);
        }

        if (*(v14 + *(v12 + 85)) == v10 && (sub_1C4EF9D08() & 1) != 0)
        {
          if (qword_1EDDFD018 != -1)
          {
            swift_once();
          }

          v15 = sub_1C4F00978();
          sub_1C442B738(v15, qword_1EDE2DDF8);
          sub_1C4427E50(a2, v9, _s12JobSchedulerC13JobIdentifierVMa);
          v16 = sub_1C4F00968();
          v17 = sub_1C4F01CF8();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = v21;
            v19 = a2;
            v20 = *v24;
            sub_1C4474E48(v24, _s12JobSchedulerC13JobIdentifierVMa);
            *(v18 + 4) = v20;
            a2 = v19;
            v9 = v24;
            _os_log_impl(&dword_1C43F8000, v16, v17, "ViewUpdate.JobScheduler: Cancelled job %llu", v18, 0xCu);
            MEMORY[0x1C6942830](v18, -1, -1);
          }

          else
          {
            sub_1C4474E48(v9, _s12JobSchedulerC13JobIdentifierVMa);
          }

          v12 = &dword_1EDE2D000;

          *(v14 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) = 1;
          v10 = v23;
        }

        ++v11;
      }

      while (v8 != v11);
    }
  }
}

uint64_t sub_1C4CDC558()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C4CDC674, v2, 0);
}

uint64_t sub_1C4CDC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C4CDC698, 0, 0);
}

uint64_t sub_1C4CDC698()
{
  sub_1C43FCF70();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C4400660(&qword_1EDDFD018);
  }

  v1 = sub_1C4F00978();
  v0[4] = sub_1C442B738(v1, qword_1EDE2DDF8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "ViewUpdate.JobScheduler/Mutate: Sending stop to current job", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v5 = v0[2];

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1C44FEAAC;

  return v8();
}

uint64_t sub_1C4CDC830()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 48);
  v3 = v2;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    sub_1C43FD084();
    v8 = sub_1C4405A9C();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_1C4416538(v10);
    sub_1C43FF718(&dword_1C43F8000, v11, v5, "ViewUpdate.JobScheduler/Mutate: Current job encountered error responding to stop: %@");
    sub_1C4420C3C(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  sub_1C43FBDA0();
  sub_1C4426C44();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C4CDC944()
{
  sub_1C4474E48(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_config, type metadata accessor for Configuration);
  swift_unknownObjectRelease();

  sub_1C44239FC(*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure), *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure + 8));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C4CDCA0C()
{
  sub_1C4CDC944();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4CDCA60(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C4CDCB40(uint64_t a1)
{
  result = _s12JobSchedulerC13JobIdentifierVMa(319);
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

_BYTE *sub_1C4CDCC04(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4CDCD08(uint64_t a1)
{
  result = sub_1C4EF9D38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4CDCD84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CDCDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C4CDCE08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C4CDCE34()
{
  result = qword_1EC0C6100;
  if (!qword_1EC0C6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6100);
  }

  return result;
}

unint64_t sub_1C4CDCE8C()
{
  result = qword_1EC0C6108;
  if (!qword_1EC0C6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6108);
  }

  return result;
}

uint64_t sub_1C4CDCEEC()
{
  sub_1C43FEAEC();
  v2 = v1;
  v3 = *(_s12JobSchedulerC13JobIdentifierVMa(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_1C43FCF54(v8);
  *v9 = v10;
  v9[1] = sub_1C442F080;

  return sub_1C4CDBD68(v2, v5, v6, v7, v0 + v4);
}

uint64_t sub_1C4CDCFD8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C4CDD0CC;

  return v5(v2 + 32);
}

uint64_t sub_1C4CDD0CC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C44001F0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_1C43FBDA0();

  return v8();
}

uint64_t sub_1C4CDD1C4()
{
  sub_1C43FCF70();
  sub_1C44250A8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

uint64_t sub_1C4CDD25C()
{
  sub_1C43FBCD4();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442F080;

  return sub_1C4CDB960(v0);
}

uint64_t sub_1C4CDD2F0()
{
  sub_1C43FCF70();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C43FCF54(v2);
  *v3 = v4;
  v5 = sub_1C4408024(v3);

  return sub_1C4CDB1D8(v5, v6, v7, v1);
}

uint64_t sub_1C4CDD394(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_1C4F01178();
    return sub_1C4F01158();
  }

  return result;
}

void sub_1C4CDD42C()
{
  v1 = v0;
  *(v0 + 34) = 5;
  v2 = *(v0 + 168);
  *(v0 + 144) = *(v0 + 160);
  *(v0 + 152) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_1C444F05C(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
    v9 = sub_1C441D828(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, oslog, v4, "ViewUpdate: %s: Finished update", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CDD598(void *a1, void *a2)
{
  v5 = [a1 state];
  v6 = sub_1C4F01138();
  v8 = v7;

  v9 = sub_1C443BE78(v6, v8);
  if (v9 == 5)
  {
    sub_1C4F02248();

    v64 = 0xD00000000000001ELL;
    v65 = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v10 = [a1 state];
    v11 = sub_1C4F01138();
    v13 = v12;

    MEMORY[0x1C6940010](v11, v13);

LABEL_20:
    v27 = v64;
    v46 = v65;
    sub_1C446D0DC();
    swift_allocError();
    *v47 = v64;
    *(v47 + 8) = v46;
    *(v47 + 16) = 2;
    swift_willThrow();

    goto LABEL_21;
  }

  v14 = v9;
  v15 = [a1 configIdentifier];
  v16 = [v15 index];

  v17 = v16;
  v18 = a2[34];
  if (!v18 || *(v18 + 16) <= v16)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4F842B0);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v68 = v16;
    v45 = sub_1C4F02858();
    MEMORY[0x1C6940010](v45);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*a2, a2[1]);
    goto LABEL_20;
  }

  v63 = a2;
  v19 = sub_1C443D554(a1);
  v21 = v20;
  v22 = sub_1C4CDD394(v19, v20);
  v24 = v23;
  sub_1C441DFEC(v19, v21);
  if (v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  v60 = v25;
  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  v61 = v26;
  v27 = 0xE000000000000000;
  v28 = sub_1C445CA14(a1);
  v30 = v29;
  v31 = sub_1C4CDD394(v28, v29);
  v33 = v32;
  result = sub_1C441DFEC(v28, v30);
  if (v33)
  {
    v35 = v31;
  }

  else
  {
    v35 = 0;
  }

  if (!v33)
  {
    v33 = 0xE000000000000000;
  }

  if ((v17 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v59 = v35;
    if (*(v18 + 16) > v17)
    {
      v37 = *v63;
      v36 = v63[1];
      v38 = (v18 + 48 * v17);
      v39 = v38[2];
      v40 = v38[3];
      *&v67[12] = *(v38 + 60);
      v66 = v39;
      *v67 = v40;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C47F5E6C(&v66, &v64);
      v41 = sub_1C443ED0C([a1 configIdentifier]);
      if (!v2)
      {
        v48 = v42;
        v57 = v43;
        v58 = v41;
        v62 = v44;
        v56 = [a1 triggered];
        sub_1C4441C50(v14);
        if (v50 == 0x65676E6168436F6ELL && v49 == 0xE900000000000073)
        {

          v54 = 1;
        }

        else
        {
          v52 = v33;
          v53 = sub_1C4F02938();

          v54 = v53 & 1;
          v33 = v52;
        }

        v27 = swift_allocObject();
        v55 = *v67;
        *(v27 + 40) = v66;
        *(v27 + 184) = 0;
        *(v27 + 16) = v37;
        *(v27 + 24) = v36;
        *(v27 + 56) = v55;
        *(v27 + 68) = *&v67[12];
        *(v27 + 88) = v58;
        *(v27 + 96) = v48;
        *(v27 + 104) = v57;
        *(v27 + 32) = v56;
        *(v27 + 33) = v14;
        *(v27 + 34) = v54;
        *(v27 + 176) = 0;
        *(v27 + 128) = v60;
        *(v27 + 136) = v61;
        *(v27 + 144) = v60;
        *(v27 + 152) = v61;
        *(v27 + 160) = v59;
        *(v27 + 168) = v33;
        *(v27 + 112) = v62;
        *(v27 + 120) = 0;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445F57C(v63);
        return v27;
      }

      sub_1C47F5EC8(&v66);

      a2 = v63;
LABEL_21:
      sub_1C445F57C(a2);
      return v27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4CDDA78@<X0>(unint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v5 = sub_1C4F01188();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4EF9348();
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C4F01178();
  v12 = sub_1C4F01148();
  v14 = v13;
  v15 = *(v7 + 8);
  v15(v11, v5);
  if (v14 >> 60 == 15)
  {
    v12 = 0;
    v14 = 0xC000000000000000;
  }

  sub_1C4CC9BB4();
  sub_1C4EF9328();
  if (v3)
  {

    return sub_1C4434000(v12, v14);
  }

  else
  {
    v32 = v15;
    v33 = a3;

    sub_1C4434000(v12, v14);
    v36 = v38;
    *v37 = v39[0];
    *&v37[12] = *(v39 + 12);
    _s14KeyValueSourceCMa();
    v18 = *(v40 + 40);
    v17 = *(v40 + 48);
    sub_1C4431E64(v18, v17);
    v19 = sub_1C4CDD394(v18, v17);
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v31 = v21;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    (*(v34 + 16))(*(&v36 + 1), *v37);
    v40 = v22;
    v23 = sub_1C446B0A0();
    v25 = v24;
    sub_1C47F5EC8(&v36);
    if (!v25)
    {

      v23 = 0;
      v25 = 0xE000000000000000;
    }

    sub_1C4F01178();
    v35 = sub_1C4F01148();
    v30 = v26;
    v32(v11, v5);
    if (v31 == v23 && v40 == v25)
    {

      v29 = 4;
    }

    else
    {
      v28 = sub_1C4F02938();

      if (v28)
      {
        v29 = 4;
      }

      else
      {
        v29 = 3;
      }
    }

    *v33 = v29;
    *(v33 + 1) = 1;
    *(v33 + 8) = v18;
    *(v33 + 16) = v17;
    *(v33 + 24) = v35;
    *(v33 + 32) = v30;
    *(v33 + 40) = xmmword_1C4F29230;
  }

  return result;
}

double sub_1C4CDDDE4@<D0>(unint64_t a1@<X1>, uint64_t a3@<X8>)
{
  sub_1C4CDDA78(a1, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1C4CDDE38()
{
  v1 = *(v0 + 48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4CDDE68()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FC4760);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  v3 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1C43FF824(v3, v4, &_s21ViewUpdateSourceStateON, v5, v6, v7, v8, v9, v21, *v23, *&v23[4], v23[6], *(v0 + 33), 0);
  v10 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_1C43FF824(v10, v11, &_s24ViewUpdateSourceResponseON, v12, v13, v14, v15, v16, v22, v24, v25, v26, *(v0 + 34), v27);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v17 = sub_1C444F05C(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  MEMORY[0x1C6940010](v17);

  MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  MEMORY[0x1C6940010](*(v0 + 128), *(v0 + 136));
  MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  v18 = *(v0 + 144);
  v19 = *(v0 + 152);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v18, v19);

  MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x1C6940010](*(v0 + 160), *(v0 + 168));
  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v28;
}

void sub_1C4CDE090(char a1, const char *a2)
{
  v4 = v2;
  *(v2 + 34) = a1;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0xE000000000000000;

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_1C444F05C(*(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112));
    v11 = sub_1C441D828(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, oslog, v6, a2, v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CDE1F0()
{
  v0 = sub_1C4F01188();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01178();
  v7 = sub_1C4F01148();

  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1C4CDE2DC()
{

  return v0;
}

uint64_t sub_1C4CDE340()
{
  sub_1C4CDE2DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CDE398()
{
  v1 = *(*v0 + 88);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

unint64_t sub_1C4CDE4E4(uint64_t a1)
{
  result = sub_1C4CDE50C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CDE50C()
{
  result = qword_1EDDF9B48[0];
  if (!qword_1EDDF9B48[0])
  {
    _s14KeyValueSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9B48);
  }

  return result;
}

double sub_1C4CDE560(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (a2 >> 60 != 15)
  {
    v17 = 0;
    v18 = 0.0;
    v19 = a1;
    v20 = a2;
    sub_1C44344B8(a1, a2);
    sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
    sub_1C4464058();
    sub_1C44640AC();
    sub_1C44012C4(&v18, &v19, v5, v6, v7, v8, v9, v10, 0);
    v19 = a1;
    v20 = a2;
    sub_1C44012C4(&v17, &v18, v11, v12, v13, v14, v15, v16, 8);
    v19 = a1;
    v20 = a2;
    if (MEMORY[0x1C6938780](a1, a2) < 16)
    {
      __break(1u);
    }

    sub_1C4EF9498();
    sub_1C441DFEC(a1, a2);
    return v18;
  }

  return result;
}

char *sub_1C4CDE6C8(void *a1, void *a2, uint64_t a3)
{
  v7 = [a1 state];
  v8 = sub_1C4F01138();
  v10 = v9;

  v11 = sub_1C443BE78(v8, v10);
  if (v11 == 5)
  {
    sub_1C4F02248();

    v64 = 0xD00000000000001ELL;
    v65 = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v12 = [a1 state];
    v13 = sub_1C4F01138();
    v15 = v14;

    MEMORY[0x1C6940010](v13, v15);

    sub_1C446D0DC();
    v16 = swift_allocError();
    sub_1C4413C18(v16, v17);

LABEL_10:

    goto LABEL_11;
  }

  v18 = v11;
  v63 = a3;
  v19 = [a1 configIdentifier];
  v10 = [v19 index];

  v20 = v10;
  v21 = a2[29];
  if (!v21 || *(v21 + 16) <= v10)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    MEMORY[0x1C6940010](0x6764656C776F6E6BLL, 0xEE00687061724765);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v68 = v10;
    v39 = sub_1C4F02858();
    MEMORY[0x1C6940010](v39);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*a2, a2[1]);
    sub_1C446D0DC();
    v40 = swift_allocError();
    sub_1C4413C18(v40, v41);

    goto LABEL_10;
  }

  v22 = sub_1C443D554(a1);
  v24 = v23;
  v25 = sub_1C4CDE560(v22, v23);
  v27 = v26;
  v29 = v28;
  result = sub_1C441DFEC(v22, v24);
  if ((v20 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (*(v21 + 16) > v20)
  {
    v10 = *a2;
    v31 = a2[1];
    v32 = (v21 + 48 * v20);
    v33 = v32[2];
    v34 = v32[3];
    *&v67[12] = *(v32 + 60);
    v66 = v33;
    *v67 = v34;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C47F5D0C(&v66, &v64);
    v35 = sub_1C443ED0C([a1 configIdentifier]);
    if (!v3)
    {
      v42 = v37;
      v59 = v38;
      v60 = v36;
      v61 = v35;
      v62 = v10;
      v58 = [a1 triggered];
      sub_1C4441C50(v18);
      if (v44 == 0x65676E6168436F6ELL && v43 == 0xE900000000000073)
      {

        v47 = 1;
      }

      else
      {
        v46 = sub_1C4F02938();

        v47 = v46 & 1;
      }

      v48 = sub_1C445CA14(a1);
      v50 = v49;
      v51 = sub_1C4CDE560(v48, v49);
      v53 = v52;
      v55 = v54;
      sub_1C441DFEC(v48, v50);
      _s20KnowledgeGraphSourceCMa();
      v10 = swift_allocObject();
      v56 = *v67;
      *(v10 + 72) = v66;
      v10[208] = 0;
      *(v10 + 2) = v62;
      *(v10 + 3) = v31;
      *(v10 + 88) = v56;
      *(v10 + 100) = *&v67[12];
      v10[32] = v58;
      *(v10 + 5) = v61;
      *(v10 + 6) = v60;
      v10[56] = v42;
      *(v10 + 8) = v59;
      v10[33] = v18;
      v10[34] = v47;
      *(v10 + 16) = v25;
      *(v10 + 17) = v27;
      *(v10 + 18) = v29;
      *(v10 + 19) = v25;
      *(v10 + 20) = v51;
      *(v10 + 21) = v53;
      *(v10 + 22) = v55;
      v57 = MEMORY[0x1E69E7CD0];
      *(v10 + 23) = v63;
      *(v10 + 24) = v57;
      *(v10 + 25) = v25;
      *(v10 + 15) = 0;

      sub_1C445F57C(a2);
      return v10;
    }

    sub_1C47F5D68(&v66);

LABEL_11:
    sub_1C445F57C(a2);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4CDEBB0@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C4F01188();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1C4EF9348();
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C4F01178();
  v10 = sub_1C4F01148();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (v12 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  sub_1C4CC9D48();
  sub_1C4EF9328();

  result = sub_1C4434000(v13, v12);
  if (!v3)
  {
    v35 = v33;
    *v36 = *v34;
    *&v36[12] = *&v34[12];
    _s20KnowledgeGraphSourceCMa();
    v15 = sub_1C4CDE560(*(a1 + 40), *(a1 + 48));
    sub_1C4CDEE6C(&v35, &v33, v15, v16, v17);
    v18 = v33;
    v19 = *(&v33 + 1);
    v21 = *v34;
    v20 = *&v34[16];
    v22 = sub_1C4CDEFBC(*v34, *&v34[8], *&v34[16]);
    v24 = v23;
    v25 = sub_1C4CDEFBC(v19, *(&v21 + 1), v20);
    v27 = v26;
    v28 = *&v36[16];
    if (*&v36[16])
    {
      v29 = *&v36[8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v29 = 0;
      v28 = 0xE000000000000000;
    }

    sub_1C47F5D68(&v35);
    if (v29 || v28 != 0xE000000000000000)
    {
      v30 = sub_1C4F02938();

      if ((v30 & 1) == 0)
      {
        v31 = *&v21 <= 0.0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (*&v21 <= 0.0)
    {
      v32 = 0;
LABEL_21:
      *a3 = v18;
      *(a3 + 1) = v32;
      *(a3 + 8) = v25;
      *(a3 + 16) = v27;
      *(a3 + 24) = v22;
      *(a3 + 32) = v24;
      *(a3 + 40) = xmmword_1C4F29230;
      return result;
    }

    v31 = *(&v21 + 1) <= 0.0;
LABEL_18:
    v32 = !v31;
    goto LABEL_21;
  }

  return result;
}

void sub_1C4CDEE6C(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_1C4870E6C();
  v12 = v10;
  v14 = v13;
  if (v13 != a4)
  {
    goto LABEL_17;
  }

  if (v10 == 0.0)
  {
    if (a3 == 0.0)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_18;
  }

  if (v11 <= a3)
  {
    if (a3 != 0.0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v15 = 1;
    goto LABEL_18;
  }

  if (a3 == 0.0 || v11 > a5)
  {
    goto LABEL_17;
  }

LABEL_12:
  v17 = sub_1C4EFB8D8();
  v25[0] = MEMORY[0x1E69E7CC0];
  v25[1] = 0;
  v26 = 0;
  v27 = v17;
  v28 = v18;
  v19 = sub_1C487B928(v25, *(a1 + 16), *(a1 + 8), 1, a3);
  v21 = v20;
  v22 = v19;
  sub_1C487BDB4(v25);
  v23 = *(v22 + 16);

  if (v23)
  {
    v24 = 0.0 - v21;
    if (0.0 - v21 != INFINITY)
    {
      *&v24 += (*&v24 >> 63) | 1;
    }

    a3 = -v24;
    v15 = 3;
  }

  else
  {
    v15 = 4;
    a3 = v12;
  }

LABEL_18:
  *a2 = v15;
  *(a2 + 8) = a3;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v12;
}

uint64_t sub_1C4CDEFBC(double a1, double a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v27 = a1;
  v25 = a3;
  v3 = sub_1C4464F38(&v27, &v28);
  v5 = v4;
  sub_1C4464F38(&v26, &v27);
  v28 = v3;
  v29 = v5;
  v6 = sub_1C4402B58();
  sub_1C44344B8(v6, v7);
  v8 = sub_1C4404BB0();
  sub_1C44F9684(v8, v9);
  v10 = sub_1C4404BB0();
  sub_1C4434000(v10, v11);
  v12 = sub_1C4402B58();
  sub_1C4434000(v12, v13);
  v14 = v28;
  v15 = v29;
  sub_1C4464F38(&v25, &v26);
  v30 = v14;
  v31 = v15;
  v16 = sub_1C4402B58();
  sub_1C44344B8(v16, v17);
  v18 = sub_1C4404BB0();
  sub_1C44F9684(v18, v19);
  v20 = sub_1C4404BB0();
  sub_1C4434000(v20, v21);
  v22 = sub_1C4402B58();
  sub_1C4434000(v22, v23);
  return v30;
}

double sub_1C4CDF0E8@<D0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  sub_1C4CDEBB0(a1, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1C4CDF13C()
{
  sub_1C44F920C();
  result = static NSUserDefaults.viewGenerationSubjectIdBatchSize.getter();
  qword_1EDE2DBA8 = result;
  return result;
}

uint64_t sub_1C4CDF170()
{
  sub_1C44F920C();
  result = static NSUserDefaults.viewGenerationGraphUpdateBatchSize.getter();
  qword_1EDE2DBB0 = result;
  return result;
}

uint64_t sub_1C4CDF1A4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = 0;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4CDF1E8()
{
  v35 = 0;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FC4860);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  v3 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  LOBYTE(v35) = *(v0 + 33);
  sub_1C440FE3C(v3, v4, &_s21ViewUpdateSourceStateON, v5, v6, v7, v8, v9, v35, 0xE000000000000000, v38, v40, 0);
  v10 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  LOBYTE(v36) = *(v0 + 34);
  sub_1C440FE3C(v10, v11, &_s24ViewUpdateSourceResponseON, v12, v13, v14, v15, v16, v36, v37, v39, v41, v44);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v17 = sub_1C444F05C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  MEMORY[0x1C6940010](v17);

  v18 = MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  sub_1C4432DC4(v18, v19, v20, v21, v22, v23, v24, v25, *(v0 + 128), *(v0 + 136), *(v0 + 144), v42, v45);
  MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  sub_1C4F01A28();
  v26 = MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  sub_1C4432DC4(v26, v27, v28, v29, v30, v31, v32, v33, *(v0 + 160), *(v0 + 168), *(v0 + 176), v43, v46);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v47;
}

void sub_1C4CDF41C(double a1)
{
  v2 = v1;
  *(v1 + 34) = 4;
  *(v1 + 152) = a1;
  sub_1C4CDF618();
  sub_1C4441C50(*(v1 + 33));
  if (v5 == 0x65676E6168436F6ELL && v4 == 0xE900000000000073)
  {
  }

  else
  {
    v7 = sub_1C4F02938();

    if ((v7 & 1) == 0)
    {
      if (qword_1EDDFECD0 != -1)
      {
        sub_1C44066DC(&qword_1EDDFECD0);
      }

      v9 = sub_1C4F00978();
      sub_1C442B738(v9, qword_1EDE2DF70);

      oslog = sub_1C4F00968();
      v10 = sub_1C4F01CF8();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = sub_1C43FFD34();
        v17 = v12;
        *v11 = 136315394;
        v13 = sub_1C444F05C(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
        v15 = sub_1C441D828(v13, v14, &v17);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2048;
        *(v11 + 14) = a1;
        _os_log_impl(&dword_1C43F8000, oslog, v10, "ViewUpdate: %s: Finished batched update [lastTimestamp: %f]", v11, 0x16u);
        sub_1C440962C(v12);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      return;
    }
  }

  sub_1C4CDF674(v8, a1);
}

__n128 sub_1C4CDF618()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11[0] = v4;
  *(v11 + 12) = *(v0 + 100);
  sub_1C4CDEE6C(&v10, v7, v1, v2, v3);
  result = v8;
  v6 = v9;
  *(v0 + 33) = v7[0];
  *(v0 + 152) = result;
  *(v0 + 168) = v6;
  return result;
}

void sub_1C4CDF674(uint64_t a1, double a2)
{
  v3 = v2;
  *(v2 + 34) = 5;
  *(v2 + 152) = a2;
  sub_1C440E9C0(a1);
  *(v2 + 192) = MEMORY[0x1E69E7CD0];

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = sub_1C43FFD34();
    v13[0] = v9;
    *v8 = 136315394;
    v10 = sub_1C444F05C(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64));
    v12 = sub_1C441D828(v10, v11, v13);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1C43F8000, v6, v7, "ViewUpdate: %s: Finished update [lastTimestamp: %f]", v8, 0x16u);
    sub_1C440962C(v9);
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }
}

void sub_1C4CDF808(uint64_t a1, const char *a2, ...)
{
  *(v2 + 152) = 0;
  *(v2 + 34) = a1;
  sub_1C440E9C0(a1);
  *(v2 + 192) = MEMORY[0x1E69E7CD0];

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DF70);

  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = sub_1C43FFD34();
    v12[0] = v8;
    v9 = sub_1C4408100(4.8149e-34);
    v11 = sub_1C441D828(v9, v10, v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v5, v6, a2, v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }
}

uint64_t sub_1C4CDF950(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v6 = *(v4 + 152);
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *&a1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (qword_1EDDF9950 != -1)
  {
    swift_once();
  }

  a3 = qword_1EDE2DBA8;
LABEL_8:
  swift_beginAccess();
  v7 = sub_1C4404BB0();
  v11 = sub_1C48770F0(v7, v8, a3, v9, v10, v6);
  v13 = v12;
  v14 = v11;
  swift_endAccess();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DF70);
  sub_1C44174AC();
  swift_bridgeObjectRetain_n();

  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_1C43FFD34();
    v19 = sub_1C43FFD34();
    v27[0] = v19;
    v20 = sub_1C4408100(4.8152e-34);
    v22 = v21;
    v23 = sub_1C441D828(v20, v21, v27);

    sub_1C43FE160();
    *(v18 + 14) = v23;

    *(v18 + 22) = v22;
    *(v18 + 24) = v13;
    sub_1C4409328(&dword_1C43F8000, v24, v25, "ViewUpdate: %s: Retrieved %ld subjects [lastTimestamp: %f]");
    sub_1C440962C(v19);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
  }

  return v14;
}

uint64_t sub_1C4CDFB34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v7 = *(v5 + 19);
    if ((a5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *&a1;
    if ((a5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (qword_1EDDF9958 != -1)
  {
    swift_once();
  }

  a4 = qword_1EDE2DBB0;
LABEL_8:
  v8 = sub_1C487B928(a3, v5[11], v5[10], a4, v7);
  v10 = v9;
  v11 = v8;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DF70);
  sub_1C44174AC();
  swift_bridgeObjectRetain_n();

  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_1C43FFD34();
    v16 = sub_1C43FFD34();
    v24 = v16;
    v17 = sub_1C4408100(4.8152e-34);
    v19 = v18;
    v20 = sub_1C441D828(v17, v18, &v24);

    sub_1C43FE160();
    *(v15 + 14) = v20;

    *(v15 + 22) = v19;
    *(v15 + 24) = v10;
    sub_1C4409328(&dword_1C43F8000, v21, v22, "ViewUpdate: %s: Retrieved %ld triples [lastTimestamp: %f]");
    sub_1C440962C(v16);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
  }

  return v11;
}

uint64_t sub_1C4CDFCF0()
{

  return v0;
}

uint64_t sub_1C4CDFD54()
{
  sub_1C4CDFCF0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CDFEA0(uint64_t a1)
{
  result = sub_1C4CDFEC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CDFEC8()
{
  result = qword_1EDDFC400;
  if (!qword_1EDDFC400)
  {
    _s20KnowledgeGraphSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC400);
  }

  return result;
}

uint64_t sub_1C4CDFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v8 = *(a6 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v30 = a1;
    v31 = a2;
    v32 = a7;
    v33 = a3;
    v34 = a8;
    v35 = a4;
    v36 = a5;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C459F1A8(0, v8, 0);
    v9 = v47;
    v11 = (a6 + 50);
    do
    {
      v12 = *(v11 - 10);
      v40 = *(v11 - 1);
      v41 = *(v11 - 2);
      v39 = *v11;
      v13 = *(v11 - 18);
      v14 = [v13 configIdentifier];
      v15 = [v14 view];

      v16 = sub_1C4F01138();
      v37 = v17;
      v38 = v16;

      v18 = [v13 configIdentifier];
      v19 = [v18 index];

      v20 = [v13 configIdentifier];
      v21 = sub_1C443D554(v13);
      v23 = v22;
      v24 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
      v25 = sub_1C4450F04(v20, v21, v23, 0xD000000000000014, 0x80000001C4F84230);

      v27 = *(v47 + 16);
      v26 = *(v47 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C459F1A8((v26 > 1), v27 + 1, 1);
      }

      v11 += 24;
      *(v47 + 16) = v27 + 1;
      v28 = v47 + 72 * v27;
      *(v28 + 32) = v38;
      *(v28 + 40) = v37;
      *(v28 + 48) = v40;
      *(v28 + 49) = *v46;
      *(v28 + 52) = *&v46[3];
      *(v28 + 56) = v19;
      *(v28 + 64) = v41;
      *(v28 + 65) = 0;
      *(v28 + 70) = v45;
      *(v28 + 66) = v44;
      *(v28 + 72) = v13;
      *(v28 + 80) = v12;
      *(v28 + 88) = v41;
      *(v28 + 89) = v40;
      *(v28 + 90) = v39;
      *(v28 + 91) = v42;
      *(v28 + 95) = v43;
      *(v28 + 96) = v25;
      --v8;
    }

    while (v8);
    a4 = v35;
    a5 = v36;
    a8 = v34;
    a3 = v33;
    a7 = v32;
    a1 = v30;
    a2 = v31;
  }

  sub_1C4456AA4(a1, a2, a3, a4, a5, v9, a7 & 1, a8 & 1);
}

uint64_t sub_1C4CE01B8(uint64_t a1, uint64_t a2)
{
  v4 = _s20BookmarkLoadingStateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4CE0268(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4CE0308();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4CE0308()
{
  if (!qword_1EDDDBD18)
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBD18);
    }
  }
}

uint64_t static ViewUpdate.Manager.sharedViewUpdateManager(for:)()
{
  if (qword_1EDDF9710 != -1)
  {
    swift_once();
  }

  return sub_1C4415590();
}

uint64_t sub_1C4CE03C8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);

  sub_1C4463890(v1, v2);
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4CE0448()
{
  v0 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v1 = sub_1C43FBD18(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  v4 = sub_1C4F018C8();
  sub_1C440BAA8(v3, 1, 1, v4);
  sub_1C43FBDBC();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1C4AC1918(0, 0, v3, &unk_1C4F6AD58, v6);

  return sub_1C440C2C8(v3);
}

uint64_t sub_1C4CE0544(uint64_t a1, __int16 a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CE055C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);

  sub_1C4428D8C(v1, v2);
  v3 = sub_1C44150BC();
  *(v0 + 32) = v3;
  *v3 = v0;
  v4 = sub_1C4409348(v3);

  return v5(v4);
}

uint64_t sub_1C4CE05FC()
{
  sub_1C43FBCD4();
  v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void sub_1C4CE06F0(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  os_unfair_lock_lock(v7 + 6);
  sub_1C4422F74(&v8);
  os_unfair_lock_unlock(v7 + 6);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_1C4D22BA0(x8_0);
  }
}

void *sub_1C4CE07B0()
{
  v2 = v0;
  v3 = type metadata accessor for Configuration(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  if (*(v2 + 16))
  {
    v8 = *(v2 + 16);
  }

  else
  {
    sub_1C4401144();
    sub_1C4431074(v2 + v9, v7, v10);
    v11 = type metadata accessor for GraphStore(0);
    v12 = sub_1C44099C4(v11);
    v13 = v7;
    v8 = v12;
    v14 = GraphStore.init(config:)(v13);
    if (v1)
    {
      return v8;
    }

    v8 = v14;
    *(v2 + 16) = v14;
  }

  return v8;
}

void *sub_1C4CE0894()
{
  v2 = v0;
  v3 = type metadata accessor for Configuration(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  if (*(v2 + 24))
  {
    v8 = *(v2 + 24);
  }

  else
  {
    v9 = type metadata accessor for GlobalKnowledgeStore(0);
    sub_1C4401144();
    sub_1C4431074(v2 + v10, v7, v11);
    v12 = v7;
    v8 = v9;
    v13 = sub_1C48300AC(v12);
    if (v1)
    {
      return v8;
    }

    v8 = v13;
    *(v2 + 24) = v13;
  }

  return v8;
}

uint64_t sub_1C4CE0970(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for Configuration(0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  swift_beginAccess();
  v12 = *(v2 + 32);
  if (*(v12 + 16) && (v13 = sub_1C445FAA8(a1, a2), (v14 & 1) != 0))
  {
    v11 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1C4401144();
    sub_1C4431074(v4 + v15, v11, v16);
    v17 = type metadata accessor for KeyValueStore(0);
    sub_1C44099C4(v17);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = KeyValueStore.init(config:domain:)(v11, a1, a2);
    if (!v3)
    {
      v11 = v18;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v4 + 32);
      sub_1C4663048(v11, a1, a2, isUniquelyReferenced_nonNull_native);
      *(v4 + 32) = v21;
      swift_endAccess();
    }
  }

  return v11;
}

uint64_t sub_1C4CE0AF0()
{
  sub_1C456902C(&qword_1EC0C6178, &qword_1C4F6AD78);
  sub_1C43FBDBC();
  swift_allocObject();
  result = sub_1C4CE5500();
  qword_1EDE2DB88 = result;
  return result;
}

id sub_1C4CE0B38(uint64_t a1)
{
  v3 = v1;
  v110 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Configuration(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1C4EF9868();
  v107[0] = 0;
  v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v107];

  v15 = v107[0];
  if (!v14)
  {
    v36 = v107[0];
    sub_1C4EF97A8();

    goto LABEL_9;
  }

  v103 = v3;
  v16 = qword_1EDDFECB0;
  v17 = v107[0];
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDDFECB8);
  v15 = sub_1C4F00968();
  sub_1C4F01CF8();
  v19 = sub_1C4404760();
  if (os_log_type_enabled(v19, v20))
  {
    sub_1C43FD1A8();
    v21 = swift_slowAlloc();
    sub_1C4405D10(v21);
    sub_1C440FE5C();
    _os_log_impl(v22, v23, v24, v25, v26, v27);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (sub_1C4B6A8D0(a1, v28, v29, v30, v31, v32, v33, v34) == 2)
  {
    sub_1C4C8E964();
    swift_allocError();
    *v35 = 0;
LABEL_9:
    swift_willThrow();
LABEL_10:
    sub_1C441AA04();
    v38 = a1;
LABEL_11:
    sub_1C4454484(v38, v37);
    return v15;
  }

  if (qword_1EDDFF220 != -1)
  {
    swift_once();
  }

  sub_1C4949698();
  if (qword_1EDDFF418 != -1)
  {
    swift_once();
  }

  sub_1C4949658();
  if (qword_1EDDFF248 != -1)
  {
    swift_once();
  }

  sub_1C49495C4();
  if (qword_1EDDFF168[0] != -1)
  {
    swift_once();
  }

  sub_1C4949584();
  if (qword_1EDDFF500 != -1)
  {
    sub_1C4417AB0();
    swift_once();
  }

  sub_1C44270DC();
  if (qword_1EDDFEE20[0] != -1)
  {
    sub_1C4403ADC();
    swift_once();
  }

  sub_1C4427314();
  if (qword_1EDDFF230 != -1)
  {
    sub_1C43FE184();
    swift_once();
  }

  sub_1C4427394();
  v40 = (a1 + *(v5 + 20));
  v42 = *v40;
  v41 = v40[1];
  if (qword_1EDDFEC48 != -1)
  {
    swift_once();
  }

  v43 = xmmword_1EDDFEC50 & ~v42 | *(&xmmword_1EDDFEC50 + 1) & ~v41;
  v44 = v43 == 0;
  if (v43)
  {
    if (qword_1EDDFEC10 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC18 & ~v42) == 0 && (*(&xmmword_1EDDFEC18 + 1) & v41) == *(&xmmword_1EDDFEC18 + 1))
    {
      LODWORD(v102) = v44;
      v46 = sub_1C4F00968();
      sub_1C4F01CF8();
      v47 = sub_1C4404760();
      if (os_log_type_enabled(v47, v48))
      {
        sub_1C43FD1A8();
        v49 = swift_slowAlloc();
        sub_1C4405D10(v49);
        sub_1C440FE5C();
        _os_log_impl(v50, v51, v52, v53, v54, v55);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      static ViewGeneration.start(configuration:)();
      v56 = *&v11[*(v5 + 20)];
      if (qword_1EDDFEC88 != -1)
      {
        v101 = *&v11[*(v5 + 20)];
        swift_once();
        v56 = v101;
      }

      sub_1C43FC158(xmmword_1EDDFEC90, v56);
      v44 = v102;
      if (v57)
      {
        v58 = sub_1C4F00968();
        sub_1C4F01CD8();
        v59 = sub_1C4404760();
        if (os_log_type_enabled(v59, v60))
        {
          sub_1C43FD1A8();
          v61 = swift_slowAlloc();
          sub_1C4405D10(v61);
          sub_1C440FE5C();
          _os_log_impl(v62, v63, v64, v65, v66, v67);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C4C8E964();
        swift_allocError();
        *v68 = 1;
        swift_willThrow();
        v15 = type metadata accessor for Configuration;
        sub_1C4454484(a1, type metadata accessor for Configuration);
        v38 = v11;
        v37 = type metadata accessor for Configuration;
        goto LABEL_11;
      }

      sub_1C441AA04();
      sub_1C4454484(v11, v70);
    }
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
    v107[0] = 0;
    if (![v15 migrateViewDatabasesWithError_])
    {
      v69 = v107[0];
      sub_1C4EF97A8();

      swift_willThrow();
      goto LABEL_10;
    }

    v45 = v107[0];
  }

  if (qword_1EDDFF7A0 != -1)
  {
    sub_1C4432DE8();
    swift_once();
  }

  v15 = qword_1EDE2E060;
  sub_1C441F0B4();
  v71 = sub_1C44273D4();
  if (v2)
  {
    goto LABEL_10;
  }

  v72 = v71;
  sub_1C4401144();
  sub_1C4431074(a1, v8, v73);
  v74 = _s7ManagerC20SourceResourceHolderCMa(0);
  v75 = sub_1C44099C4(v74);
  sub_1C4CE3098(v8);
  sub_1C4CE7384(a1, v107);
  v76 = [BiomeLibrary() IntelligencePlatform];
  swift_unknownObjectRelease();
  v77 = [v76 Views];
  swift_unknownObjectRelease();
  v78 = [v77 Updated];
  swift_unknownObjectRelease();
  v79 = [v78 source];

  if (qword_1EDDFE3A8 != -1)
  {
    swift_once();
  }

  sub_1C441F0B4();
  v80 = sub_1C4ABFA6C();
  v81 = sub_1C441F0B4();
  static ViewUpdate.GenerationRunnerSingleton.viewUpdateRunner(for:)(v81, v82);
  _s12JobSchedulerCMa(0);
  *&v101 = sub_1C4CDA9AC();
  _s9LiveStateCMa();
  v100 = swift_allocObject();
  if (qword_1EDDF9A78 != -1)
  {
LABEL_60:
    swift_once();
  }

  sub_1C441F0B4();
  v95 = sub_1C4ABFB00();
  v96 = v79;
  v97 = v80;
  v98 = v75;
  v80 = &v95;
  MEMORY[0x1EEE9AC00](v95);
  *(&v95 - 4) = sub_1C4CE1758;
  *(&v95 - 3) = 0;
  v99 = v72;
  v94 = v72;
  v79 = sub_1C49A5788(sub_1C498DB0C, (&v95 - 6));
  v83 = 0;
  v102 = v79[2];
  while (v102 != v83)
  {
    if (v83 >= v79[2])
    {
      __break(1u);
      goto LABEL_60;
    }

    v75 = v44;
    v72 = v83 + 1;
    v80 = v108;
    v84 = v109;
    v85 = *(v79 + v83 + 32);
    sub_1C4409678(v107, v108);
    (*(v84 + 8))(v85, v80, v84);
    v83 = v72;
    v44 = v75;
  }

  sub_1C442E860(v106, v105);
  sub_1C442E860(v107, v104);
  sub_1C4401144();
  sub_1C4431074(a1, v8, v86);
  v15 = sub_1C44099C4(v103);
  v87 = v99;

  v88 = v96;
  v103 = v96;
  v89 = v97;

  v90 = v101;

  v91 = v95;

  sub_1C4CE17A4(v87, v98, v105, v104, v88, v89, v90, v91, v92, v8);
  if ((v44 & 1) == 0)
  {

    sub_1C442AFA8();
  }

  sub_1C441AA04();
  sub_1C4454484(a1, v93);
  sub_1C440962C(v106);
  sub_1C440962C(v107);
  return v15;
}

uint64_t sub_1C4CE1758@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4CE744C(a1, a2);
  if (!v3)
  {
    result = sub_1C4CE753C(a1, a2);
    *a3 = result;
  }

  return result;
}

void *sub_1C4CE17A4(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  swift_weakInit();
  sub_1C4401144();
  sub_1C4431074(a10, v11 + v19, v20);
  v11[2] = a1;
  sub_1C442E860(a4, (v11 + 9));
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater) = a7;
  sub_1C456902C(&qword_1EC0C6160, &qword_1C4F6AD60);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = a9;
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState) = v21;
  _s21HighPriorityTaskStateCMa();
  swift_allocObject();
  sub_1C4CE7904();
  v23 = v22;
  sub_1C456902C(&qword_1EC0C6168, &qword_1C4F6AD68);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v23;
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_highPriortyTaskState) = v24;
  _s13LiveTaskStateCMa();
  swift_allocObject();
  sub_1C4CE7940();
  v26 = v25;
  sub_1C456902C(&qword_1EC0C6170, &qword_1C4F6AD70);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  sub_1C441AA04();
  sub_1C4454484(a10, v28);
  sub_1C440962C(a4);
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveTaskState) = v27;
  v11[3] = a2;
  v11[15] = a6;
  v11[16] = a8;
  v11[14] = a5;
  sub_1C441D670(a3, (v11 + 4));
  return v11;
}

uint64_t sub_1C4CE1968(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE1990, 0, 0);
}

void sub_1C4CE1990()
{
  sub_1C441E858(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  sub_1C4426228();
  sub_1C44276F4(v3);
  if (v1)
  {

    os_unfair_lock_unlock(v0 + 6);
  }

  else
  {
    os_unfair_lock_unlock(v0 + 6);
    *(v2 + 40) = v8;
    v4 = swift_task_alloc();
    *(v2 + 48) = v4;
    *v4 = v2;
    v5 = sub_1C44355F4(v4);

    sub_1C4CDBEF4(v5, v6, v7);
  }
}

uint64_t sub_1C4CE1A84()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4CE1B88()
{
  sub_1C43FCF70();
  v1 = *(v0 + 32);
  v2 = *(v0 + 72);

  sub_1C4463890(v1, v2);
  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3(v4);
}

uint64_t sub_1C4CE1C10()
{
  sub_1C43FCF70();
  v1 = *(v0 + 32);
  v2 = *(v0 + 72);

  sub_1C4463890(v1, v2);
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4CE1C90(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE1CB8, 0, 0);
}

void sub_1C4CE1CB8()
{
  sub_1C441E858(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  sub_1C4426228();
  sub_1C44276F4(v3);
  if (v1)
  {

    os_unfair_lock_unlock(v0 + 6);
  }

  else
  {
    os_unfair_lock_unlock(v0 + 6);
    *(v2 + 40) = v8;
    v4 = swift_task_alloc();
    *(v2 + 48) = v4;
    *v4 = v2;
    v5 = sub_1C44355F4(v4);

    sub_1C4CDC150(v5, v6, v7);
  }
}

uint64_t sub_1C4CE1DAC()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4CE1EB0(uint64_t a1, __int16 a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CE1EC8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);

  sub_1C4428D8C(v1, v2);
  v3 = sub_1C44150BC();
  *(v0 + 32) = v3;
  *v3 = v0;
  v4 = sub_1C4409348(v3);

  return v5(v4);
}

uint64_t sub_1C4CE1F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE1F88, 0, 0);
}

uint64_t sub_1C4CE1F88()
{
  sub_1C43FBCD4();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater);
    *(v0 + 64) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1C4CE2068, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    sub_1C43FBDA0();

    return v3();
  }
}

uint64_t sub_1C4CE2068()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);

  sub_1C4CDB304(v2, v1);

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CE20DC()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  sub_1C43FBDA0();
  return v1();
}

uint64_t ViewUpdate.Manager.deinit()
{

  sub_1C440962C((v0 + 32));
  sub_1C440962C((v0 + 72));

  sub_1C441AA04();
  sub_1C4454484(v0 + v1, v2);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1C4CE2208(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C4CE22EC(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x206E776F6E6B6E75;
  }

  strcpy(v4, "SQLite error ");
  v3 = sub_1C4F02858();
  MEMORY[0x1C6940010](v3);

  return v4[0];
}

uint64_t sub_1C4CE2394()
{
  sub_1C43FBCD4();
  *(v1 + 153) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_1C4F00978();
  *(v1 + 48) = v6;
  *(v1 + 56) = *(v6 - 8);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v7 = _s10ViewConfigVMa(0);
  *(v1 + 88) = v7;
  sub_1C43FBD18(v7);
  *(v1 + 96) = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4CE2498()
{
  v51 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v3 = swift_allocObject();
  *(v0 + 104) = v3;
  *(v3 + 16) = xmmword_1C4F0D130;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4955A90(sub_1C4CE33D0, v4);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  v7 = *(v5 + *(v6 + 92));
  if (v7 == 2 || (v7 & 1) == 0)
  {

    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CC8();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 96);
    v26 = *(v0 + 56);
    v27 = *(v0 + 64);
    v28 = *(v0 + 48);
    if (v24)
    {
      v29 = *(v0 + 153);
      v30 = *(v0 + 32);
      v45 = *(v0 + 16);
      v47 = *(v0 + 24);
      v49 = *(v0 + 96);
      v31 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_1C4CE22EC(v30, v29 & 1);
      v34 = sub_1C441D828(v32, v33, v50);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1C441D828(v45, v47, v50);
      _os_log_impl(&dword_1C43F8000, v22, v23, "ViewUpdate.Manager: reportError: client reported %s for %s but view does not support recovery.", v31, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v26 + 8))(v27, v28);
      sub_1C442D830();
      v36 = v49;
    }

    else
    {

      (*(v26 + 8))(v27, v28);
      sub_1C442D830();
      v36 = v25;
    }

    sub_1C4454484(v36, v35);

    sub_1C43FBDA0();
    sub_1C440405C();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CC8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 80);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  if (v10)
  {
    v44 = *(v0 + 153);
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);
    v48 = *(v0 + 80);
    v16 = *(v0 + 16);
    v46 = *(v0 + 48);
    v17 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1C441D828(v16, v15, v50);
    *(v17 + 12) = 2080;
    v18 = sub_1C4CE22EC(v14, v44 & 1);
    v20 = sub_1C441D828(v18, v19, v50);

    *(v17 + 14) = v20;
    _os_log_impl(&dword_1C43F8000, v8, v9, "ViewUpdate.Manager: reportError: truncating %s due to %s", v17, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v21 = *(v12 + 8);
    v21(v48, v46);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v13);
  }

  *(v0 + 112) = v21;
  v39 = swift_task_alloc();
  *(v0 + 120) = v39;
  *v39 = v0;
  v39[1] = sub_1C4CE2964;
  sub_1C440405C();

  return sub_1C4CE1EB0(v40, v41);
}

uint64_t sub_1C4CE2964()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 128) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CE2A74(uint64_t a1)
{
  v28 = v1;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();

  if (os_log_type_enabled(v2, v3))
  {
    v25 = *(v1 + 72);
    v26 = *(v1 + 112);
    v24 = *(v1 + 48);
    v4 = *(v1 + 153);
    v6 = *(v1 + 24);
    v5 = *(v1 + 32);
    v7 = *(v1 + 16);
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1C441D828(v7, v6, &v27);
    *(v8 + 12) = 2080;
    v9 = sub_1C4CE22EC(v5, v4 & 1);
    v11 = sub_1C441D828(v9, v10, &v27);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_1C43F8000, v2, v3, "ViewUpdate.Manager: reportError: fully rebuilding %s due to %s", v8, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v26(v25, v24);
  }

  else
  {
    v12 = *(v1 + 112);
    v13 = *(v1 + 72);
    v14 = *(v1 + 48);

    v12(v13, v14);
  }

  *(v1 + 152) = 3;
  v15 = swift_task_alloc();
  *(v1 + 136) = v15;
  *v15 = v1;
  v15[1] = sub_1C4CE2CB0;
  sub_1C440405C();

  return sub_1C4427590(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1C4CE2CB0()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CE2DCC()
{
  sub_1C43FCF70();
  sub_1C442D830();
  sub_1C4454484(v0, v1);

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4CE2E5C()
{
  sub_1C43FCF70();
  sub_1C442D830();
  sub_1C4454484(v0, v1);

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4CE2EEC()
{
  sub_1C43FCF70();
  sub_1C442D830();
  sub_1C4454484(v0, v1);

  sub_1C43FBDA0();

  return v2();
}

void sub_1C4CE2F7C(uint64_t a1@<X8>)
{
  v3 = _s16ViewConfigRecordVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4BAF42C();
  if (!v1)
  {
    sub_1C4BB0EA0();
    sub_1C4431074(&v5[*(v3 + 68)], a1, _s10ViewConfigVMa);
    sub_1C4454484(v5, _s16ViewConfigRecordVMa);
  }
}

void *sub_1C4CE3098(uint64_t a1)
{
  type metadata accessor for KeyValueStore(0);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = sub_1C4F00F28();
  sub_1C4409954(a1, v1 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate7Manager20SourceResourceHolder_config);
  return v1;
}

uint64_t sub_1C4CE3100()
{

  sub_1C441AA04();
  sub_1C4454484(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C4CE315C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CE31E0(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

_BYTE *_s12StartupErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4CE337C()
{
  result = qword_1EC0C6158;
  if (!qword_1EC0C6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6158);
  }

  return result;
}

uint64_t sub_1C4CE33EC()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C4707B70;

  return sub_1C4CE1F68(v3, v4, v5, v6);
}

void sub_1C4CE34B8(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEA48, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1C4EF9CD8();
      if (v3 <= 0x3F)
      {
        sub_1C45C2C2C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *_s7MetricsO12UpdateStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C4CE36A4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = 0x656C706D6F63;
      goto LABEL_6;
    case 2:
      result = 0x6465727265666564;
      break;
    case 3:
      v3 = 0x616470556F6ELL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 4:
      result = 0x7461647055746F6ELL;
      break;
    case 5:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4CE3770()
{
  result = qword_1EC0C6180;
  if (!qword_1EC0C6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6180);
  }

  return result;
}

double sub_1C4CE37C4(uint64_t a1, unint64_t a2)
{
  result = 0.0;
  if (a2 >> 60 != 15)
  {
    sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
    sub_1C4464058();
    sub_1C44640AC();
    sub_1C4EF9498();
    return 0.0;
  }

  return result;
}

uint64_t sub_1C4CE3894(id a1, void *a2)
{
  v4 = v3;
  v7 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v80[-v12];
  v14 = [a1 state];
  v15 = sub_1C4F01138();
  v17 = v16;

  v18 = sub_1C443BE78(v15, v17);
  if (v18 == 5)
  {
    v91 = a2;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    sub_1C463F29C(v91, v9);
    a1 = a1;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = *v9;
      v24 = v9[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445F57C(v9);
      v25 = sub_1C441D828(v23, v24, &v92);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = [a1 state];
      v27 = sub_1C4F01138();
      v29 = v28;

      v30 = sub_1C441D828(v27, v29, &v92);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_1C43F8000, v20, v21, "Invalid source state for view %s: %s", v22, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C445F57C(v9);
    }

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1C4F02248();

    v92 = 0xD00000000000001ELL;
    v93 = 0x80000001C4FC3990;
    v36 = v91;
    MEMORY[0x1C6940010](*v91, v91[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v63 = [a1 state];
    v64 = sub_1C4F01138();
    v66 = v65;

    MEMORY[0x1C6940010](v64, v66);

LABEL_20:
    v68 = v92;
    v2 = v93;
    sub_1C446D0DC();
    swift_allocError();
    *v69 = v68;
    *(v69 + 8) = v2;
    *(v69 + 16) = 2;
    swift_willThrow();

    goto LABEL_21;
  }

  v31 = v18;
  v32 = [a1 configIdentifier];
  v33 = [v32 index];

  v34 = v33;
  v35 = a2[35];
  v36 = a2;
  if (!v35 || *(v35 + 16) <= v34)
  {
    v54 = v34;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    sub_1C4401300();
    v55 = sub_1C4F00978();
    sub_1C442B738(v55, qword_1EDDFECB8);
    sub_1C463F29C(v36, v13);
    v56 = sub_1C4F00968();
    v57 = sub_1C4F01CD8();
    if (os_log_type_enabled(v56, v57))
    {
      v4 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = v91;
      *v4 = 136315650;
      *(v4 + 4) = sub_1C441D828(0x6163696669746F6ELL, 0xEC0000006E6F6974, &v92);
      *(v4 + 12) = 2048;
      *(v4 + 14) = v54;
      *(v4 + 22) = 2080;
      v58 = a1;
      v59 = v36;
      v60 = *v13;
      v61 = v13[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445F57C(v13);
      v62 = sub_1C441D828(v60, v61, &v92);
      v36 = v59;
      a1 = v58;

      *(v4 + 24) = v62;
      _os_log_impl(&dword_1C43F8000, v56, v57, "Config identifier of type %s of index %ld does not exist for %s", v4, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C4401300();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C445F57C(v13);
    }

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    MEMORY[0x1C6940010](v4, 0xEC0000006E6F6974);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v94 = v54;
    v67 = sub_1C4F02858();
    MEMORY[0x1C6940010](v67);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*v36, v36[1]);
    goto LABEL_20;
  }

  v91 = a2;
  v37 = v34;
  v38 = sub_1C443D554(a1);
  v40 = v39;
  v41 = sub_1C4CE37C4(v38, v39);
  result = sub_1C441DFEC(v38, v40);
  v43 = v37;
  if ((v37 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (*(v35 + 16) > v37)
  {
    v44 = *v91;
    v45 = v91[1];
    v46 = v35 + 32 * v43;
    v90 = *(v46 + 32);
    v47 = *(v46 + 40);
    v48 = *(v46 + 48);
    v88 = v44;
    v89 = v47;
    v49 = *(v46 + 56);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v50 = sub_1C443ED0C([a1 configIdentifier]);
    if (!v3)
    {
      v82 = v53;
      v83 = v52;
      v84 = v51;
      v85 = v50;
      v86 = v49;
      v87 = v45;
      v81 = [a1 triggered];
      sub_1C4441C50(v31);
      if (v71 == 0x65676E6168436F6ELL && v70 == 0xE900000000000073)
      {

        v74 = 1;
      }

      else
      {
        v73 = sub_1C4F02938();

        v74 = v73 & 1;
      }

      v75 = sub_1C445CA14(a1);
      v77 = v76;
      v78 = sub_1C4CE37C4(v75, v76);

      sub_1C441DFEC(v75, v77);
      v2 = swift_allocObject();
      BYTE2(v79) = v74;
      BYTE1(v79) = v31;
      LOBYTE(v79) = v81;
      sub_1C4CE4390(v88, v87, v90, v89, v48, v86, v85, v84, v41, v41, v78, v83, v82, v79);
      sub_1C445F57C(v91);
      return v2;
    }

    v36 = v91;
LABEL_21:
    sub_1C445F57C(v36);
    return v2;
  }

  __break(1u);
  return result;
}

double sub_1C4CE4094@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s18NotificationSourceCMa();
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  sub_1C444C58C(a2, v12);
  if (sub_1C4CE37C4(v6, v7) == *(a1 + 40))
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  v9 = sub_1C4464FF0(*(a1 + 40));
  *a3 = v8;
  *(a3 + 1) = 1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  result = 0.0;
  *(a3 + 40) = xmmword_1C4F29230;
  return result;
}

double sub_1C4CE4138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C4CE4094(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1C4CE4188()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000028, 0x80000001C4FC4C00);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  v3 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1C43FF824(v3, v4, &_s21ViewUpdateSourceStateON, v5, v6, v7, v8, v9, v25, *v27, *&v27[4], v27[6], *(v0 + 33), 0);
  v10 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_1C43FF824(v10, v11, &_s24ViewUpdateSourceResponseON, v12, v13, v14, v15, v16, v26, v28, v29, v30, *(v0 + 34), v31);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v17 = sub_1C444F05C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  MEMORY[0x1C6940010](v17);

  v18 = MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  sub_1C44208D8(v18, v19, *(v0 + 112));
  v20 = MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  sub_1C44208D8(v20, v21, *(v0 + 120));
  v22 = MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  sub_1C44208D8(v22, v23, *(v0 + 128));
  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v32;
}

uint64_t sub_1C4CE4390(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, char a12, uint64_t a13, int a14)
{
  *(v14 + 136) = 2;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  *(v14 + 96) = a6;
  *(v14 + 40) = a7;
  *(v14 + 48) = a8;
  *(v14 + 56) = a12;
  *(v14 + 64) = a13;
  *(v14 + 32) = a14;
  *(v14 + 33) = *(&a14 + 1);
  *(v14 + 112) = a9;
  *(v14 + 120) = a10;
  *(v14 + 128) = a11;
  *(v14 + 104) = 0;
  return v14;
}

void sub_1C4CE43F8()
{
  v1 = v0;
  *(v0 + 34) = 5;
  *(v0 + 120) = *(v0 + 128);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_1C444F05C(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
    v8 = sub_1C441D828(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C43F8000, oslog, v3, "ViewUpdate: %s: Finished update", v4, 0xCu);
    sub_1C440962C(v5);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

void sub_1C4CE455C(char a1, const char *a2)
{
  v4 = v2;
  *(v2 + 34) = a1;
  *(v2 + 120) = 0;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_1C444F05C(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64));
    v11 = sub_1C441D828(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, oslog, v6, a2, v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

uint64_t sub_1C4CE46D4()
{

  return v0;
}

uint64_t sub_1C4CE4704()
{
  sub_1C4CE46D4();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CE4838(uint64_t a1)
{
  result = sub_1C4CE4860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CE4860()
{
  result = qword_1EDDF9A28;
  if (!qword_1EDDF9A28)
  {
    _s18NotificationSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9A28);
  }

  return result;
}

uint64_t sub_1C4CE48C4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C461C0EC();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C4CEB3A4(v6);
  return sub_1C4F02328();
}

uint64_t sub_1C4CE4940(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_1E81EF798 + a1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = *(v4 + 32);

    if (v5 != 1)
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v9 = sub_1C4F00978();
      sub_1C43FCEE8(v9, qword_1EDE2DDF8);
      v10 = sub_1C4F00968();
      v11 = sub_1C4F01CE8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = sub_1C440F274();
        v20 = sub_1C43FC11C();
        *v12 = 136315394;
        sub_1C4409528(a1);
        v15 = sub_1C441D828(v13, v14, &v20);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        if (v8)
        {
          if (v8 == 1)
          {
            v16 = 0xE800000000000000;
            v17 = 0x6E6F6974656C6564;
          }

          else
          {
            v16 = 0xE600000000000000;
            v17 = 0x646574736F70;
          }
        }

        else
        {
          v16 = 0xE600000000000000;
          v17 = 0x6C616D726F6ELL;
        }

        v18 = sub_1C441D828(v17, v16, &v20);

        *(v12 + 14) = v18;
        _os_log_impl(&dword_1C43F8000, v10, v11, "SourceUpdater: sourceUpdated called for %s but that source supports multiple update types. Assuming it is the first type: %s.", v12, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    return sub_1C44027F4(a1, a2, a3, v8);
  }

  else
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC5800);
    sub_1C4F02438();
    sub_1C43FE984();
    MEMORY[0x1C6940010](0xD000000000000019);
    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4CE4C0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4401750();
        sub_1C458CD10(v11, v12, v13, v14);
        v5 = v15;
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C43FCFE8(v8);
        sub_1C4401750();
        sub_1C458CD10(v16, v17, v18, v19);
        v5 = v20;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 32 * v9;
      *(v10 + 32) = 3;
      *(v10 + 40) = v6;
      *(v10 + 48) = v7;
      *(v10 + 56) = 0;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = (a2 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4401750();
        sub_1C458CD10(v28, v29, v30, v31);
        v5 = v32;
      }

      v26 = *(v5 + 16);
      v25 = *(v5 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C43FCFE8(v25);
        sub_1C4401750();
        sub_1C458CD10(v33, v34, v35, v36);
        v5 = v37;
      }

      *(v5 + 16) = v26 + 1;
      v27 = v5 + 32 * v26;
      *(v27 + 32) = 3;
      *(v27 + 40) = v23;
      *(v27 + 48) = v24;
      *(v27 + 56) = 1;
      v22 += 2;
      --v21;
    }

    while (v21);
  }

  v39[3] = sub_1C456902C(&unk_1EC0C61A8, &qword_1C4F6B500);
  v39[4] = sub_1C4401CBC(&qword_1EDDDBCE0, &unk_1EC0C61A8, &qword_1C4F6B500, MEMORY[0x1E69E6328]);
  v39[0] = v5;
  sub_1C4401A00(v39);
  return sub_1C440962C(v39);
}

void sub_1C4CE4DFC()
{
  sub_1C43FE96C();
  sub_1C44054CC();
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  v8 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A82C();
  v10 = sub_1C4424B10(v3);
  if (v10 == v5 && v11 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_1C442E6C0(v10, v11);

    if ((v13 & 1) == 0)
    {
      sub_1C442F794();
      v0 = v1;
      if (v1)
      {
        goto LABEL_11;
      }
    }
  }

  swift_unownedRetainStrong();
  sub_1C4440C6C(v4);
  sub_1C441CEF4();

  if (!v0)
  {

    v14 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v15 = sub_1C4404370(v14);
    v16 = sub_1C445BE04(v15, xmmword_1C4F0CE60);
    v17 = MEMORY[0x1E69A0138];
    v15[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v15[4].n128_u64[0] = v17;
    v15[2].n128_u64[0] = v16;
    v15[2].n128_u64[1] = v18;
    sub_1C4401F74();
    sub_1C4466DA4();
    sub_1C4EFC088();
    v19 = sub_1C441B144();
    v20(v19, v8);
    v21 = sub_1C44179F4();
    sub_1C440BAA8(v21, v22, v23, v8);
    sub_1C43FD428();
    sub_1C44150DC();
    v24 = sub_1C4EFB988();
    sub_1C4420C3C(&v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
    sub_1C459760C(v24);
  }

LABEL_11:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4CE507C()
{
  sub_1C456902C(&qword_1EC0C6290, &qword_1C4F6B608);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for QIDDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6298, &qword_1C4F6B610);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE5108()
{
  sub_1C456902C(&qword_1EC0C62C0, &qword_1C4F6B638);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for GraphDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C62C8, &qword_1C4F6B640);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE5194()
{
  sub_1C456902C(&qword_1EC0C6280, &qword_1C4F6B5F8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for BehaviorDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6288, &qword_1C4F6B600);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE5220()
{
  sub_1C456902C(&qword_1EC0C62E0, &qword_1C4F6B658);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for EventLogDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C62E8, &qword_1C4F6B660);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE52AC()
{
  sub_1C456902C(&qword_1EC0C6270, &qword_1C4F6B5E8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for OntologyDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6278, &qword_1C4F6B5F0);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE5338()
{
  sub_1C456902C(&qword_1EC0C62D0, &qword_1C4F6B648);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for GlobalKnowledgeDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C62D8, &qword_1C4F6B650);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE53C4()
{
  sub_1C456902C(&qword_1EC0C6328, &qword_1C4F6B6A0);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for Pipeline(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&unk_1EC0C6330, &qword_1C4F6B6A8);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE5450()
{
  sub_1C456902C(&qword_1EC0C6208, &qword_1C4F6B570);
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  type metadata accessor for ViewUpdate.SourceUpdater(0);
  sub_1C44F8A78();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6210, &qword_1C4F6B578);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4CE5500()
{
  sub_1C456902C(&qword_1EC0C6310, &qword_1C4F6B688);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewUpdate.Manager(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6318, &unk_1C4F6B690);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE558C()
{
  sub_1C456902C(&qword_1EC0C62F0, &qword_1C4F6B668);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewGeneration.ViewClients(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C62F8, &qword_1C4F6B670);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE5618()
{
  sub_1C456902C(&qword_1EC0C62B0, &qword_1C4F6B628);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewGeneration.ViewGenerators(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C62B8, &qword_1C4F6B630);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE56A4()
{
  sub_1C456902C(&qword_1EC0C62A0, &qword_1C4F6B618);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewUpdate.ViewInProcessRunner(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C62A8, &qword_1C4F6B620);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE5730()
{
  sub_1C456902C(&qword_1EC0C6218, &qword_1C4F6B580);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for InterprocessLockDescriptors(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&unk_1EC0C6220, &qword_1C4F6B588);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C4CE57BC()
{
  sub_1C456902C(&unk_1EC0C61C8, &qword_1C4F6B538);
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  _s19SyncDeviceRetrieverCMa(0);
  sub_1C44F8A78();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C61D8, &qword_1C4F6B540);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4CE586C()
{
  sub_1C456902C(&qword_1EC0C61F0, &qword_1C4F6B558);
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  type metadata accessor for ViewUpdate.FrontEventQueue(0);
  sub_1C44F8A78();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C61F8, &qword_1C4F6B560);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4CE591C()
{
  sub_1C456902C(&qword_1EC0C6300, &qword_1C4F6B678);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  _s12JobSchedulerCMa(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6308, &qword_1C4F6B680);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

void sub_1C4CE59A8(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4CEAA1C(&v5, &v4);
  if (v2)
  {
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    objc_autoreleasePoolPop(sub_1C441CEF4());
  }
}

uint64_t sub_1C4CE5A34(char a1)
{
  if (!a1)
  {
    return 0x6C616D726F6ELL;
  }

  if (a1 == 1)
  {
    return 0x6E6F6974656C6564;
  }

  return 0x646574736F70;
}

uint64_t sub_1C4CE5A84()
{
  v2 = sub_1C4EFBE98();
  if (!v0)
  {
    v1 = v2;
    sub_1C43FE984();
    sub_1C4EFBE98();
    sub_1C441431C();
  }

  return v1;
}

uint64_t sub_1C4CE5B5C@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1C4EFBE98();
  if (v1)
  {
  }

  v4 = v3;
  v5 = sub_1C441431C();
  v6 = sub_1C441431C();
  sub_1C43FE984();
  v7 = sub_1C4EFBE98();
  v14 = sub_1C441431C();
  v13 = sub_1C441431C();
  v12 = sub_1C441431C();
  v8 = sub_1C441431C();

  *&v16 = v4;
  *(&v16 + 1) = v5;
  *&v17 = v6;
  *(&v17 + 1) = v14;
  *&v18 = v13;
  *(&v18 + 1) = v12;
  *&v19 = v8;
  *(&v19 + 1) = v7;
  v20[0] = v4;
  v20[1] = v5;
  v20[2] = v6;
  v20[3] = v14;
  v20[4] = v13;
  v20[5] = v12;
  v20[6] = v8;
  v20[7] = v7;
  sub_1C4CEAC18(&v16, v15);
  result = sub_1C4BC1A8C(v20);
  v10 = v17;
  *a1 = v16;
  a1[1] = v10;
  v11 = v19;
  a1[2] = v18;
  a1[3] = v11;
  return result;
}

void sub_1C4CE5E00()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C4EFBE98();
  if (v0)
  {
  }

  else
  {
    v4 = v3;
    sub_1C43FE984();
    v5 = sub_1C4EFBE98();
    v6 = sub_1C441431C();
    v7 = sub_1C4EFBE98();
    v8 = sub_1C441431C();

    *v2 = v4;
    v2[1] = v5;
    v2[2] = v6;
    v2[3] = v7;
    v2[4] = v8;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4CE5F70@<X0>(uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = type metadata accessor for Source(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C456902C(&qword_1EC0BA998, &qword_1C4F53200);
  sub_1C4430958(a2, v9, type metadata accessor for Source);
  swift_beginAccess();
  sub_1C483B6F0();
  LOBYTE(a2) = v10;
  result = swift_endAccess();
  *a3 = a2 & 1;
  return result;
}

void sub_1C4CE6098()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  if ((*(*v7 + 32) & 1) == 0)
  {
    *(*v7 + 32) = 1;
    sub_1C4F011C8();
    v10 = os_transaction_create();

    sub_1C4F018C8();
    sub_1C43FCF64();
    sub_1C440BAA8(v11, v12, v13, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v10;
    v15[5] = v5;
    v15[6] = v3;
    v15[7] = v1;

    sub_1C4785250();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4CE61C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE61E4, 0, 0);
}

uint64_t sub_1C4CE61E4()
{
  sub_1C4475B28();
  v7 = v0;
  sub_1C43FEAEC();
  sub_1C44BBF4C();
  sub_1C440FE6C();
  sub_1C4430798();
  sub_1C446073C(MEMORY[0x1E69E7CD0]);
  sub_1C4408120();
  v1 = swift_task_alloc();
  v2 = sub_1C447FAC0(v1);
  *v2 = v3;
  v4 = sub_1C4401314(v2);

  return v5(v4);
}

uint64_t sub_1C4CE62AC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CE63AC()
{
  sub_1C4475B28();
  v9 = v1;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v0)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v2 = swift_task_alloc();
    v3 = sub_1C447FAC0(v2);
    *v3 = v4;
    v5 = sub_1C4401314(v3);

    return v6(v5);
  }

  else
  {
    sub_1C43FBDA0();

    return v8();
  }
}

uint64_t sub_1C4CE64B8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CE65B8()
{
  sub_1C4475B28();
  v9 = v1;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v0)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v2 = swift_task_alloc();
    v3 = sub_1C447FAC0(v2);
    *v3 = v4;
    v5 = sub_1C4401314(v3);

    return v6(v5);
  }

  else
  {
    sub_1C43FBDA0();

    return v8();
  }
}

void sub_1C4CE66C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v32 = sub_1C43FBD18(v31);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  v130 = v33 - v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v129 = v121 - v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v121 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v121 - v42;
  v44 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v131.n128_u64[0] = v45;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4449828();
  if (v20)
  {
LABEL_5:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v133 = v30;
  v127 = v40;
  v128 = v26;
  v132 = v21;
  if (v135[8])
  {
    sub_1C4CE9968();
LABEL_4:
    sub_1C444AF3C(v135);
    goto LABEL_5;
  }

  v124 = v22;
  v47 = 0;
  sub_1C43FBDF0();
  v126 = v48;
  sub_1C43FBDF0();
  *&v125 = v49;
  v51 = (v50 + 8);
  v52 = MEMORY[0x1E69E6530];
  v131 = xmmword_1C4F0CE60;
  while (v47 != 11)
  {
    swift_unownedRetainStrong();
    sub_1C4480848(v28);

    v53 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v54 = sub_1C4404370(v53);
    v55 = sub_1C447F62C(v54, v131);
    v52 = MEMORY[0x1E69E6530];
    v58 = v133;
    switch(v59)
    {
      case 1:
        v57 = 1701736302;
        break;
      case 2:
        sub_1C4411434();
        break;
      case 3:
        sub_1C441CF6C();
        v61 = &a13;
        goto LABEL_20;
      case 4:
        v56 = 0xE600000000000000;
        v60 = 1801807223;
        goto LABEL_15;
      case 5:
        sub_1C441B53C();
        goto LABEL_18;
      case 6:
        sub_1C440B7A4();
LABEL_18:
        sub_1C43FF8C0();
        break;
      case 7:
        v56 = 0xE600000000000000;
        v60 = 1920298856;
LABEL_15:
        v57 = v60 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
        break;
      case 8:
        sub_1C440B7A4();
        sub_1C4CEC294();
        break;
      case 9:
        sub_1C441B53C();
        sub_1C442A52C();
        break;
      case 10:
        sub_1C441CF6C();
        v61 = &a16;
LABEL_20:
        v56 = *(v61 - 32);
        break;
      default:
        break;
    }

    v55[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v55[4].n128_u64[0] = MEMORY[0x1E69A0138];
    v55[2].n128_u64[0] = v57;
    v55[2].n128_u64[1] = v56;
    v55[6].n128_u64[0] = v52;
    v55[6].n128_u64[1] = MEMORY[0x1E69A0180];
    v55[4].n128_u64[1] = v58;
    v62 = v132;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*v51)(v62, v44);
    sub_1C440DB38();
    sub_1C440BAA8(v63, v64, v65, v66);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v43, &unk_1EC0C06C0, &unk_1C4F10DB0);

    ++v47;
  }

  swift_unownedRetainStrong();
  v67 = sub_1C4480848(v28);

  v68 = *(v67 + 456);

  v126 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v69 = sub_1C44331AC(v126);
  v125 = xmmword_1C4F0D130;
  *(v69 + 16) = xmmword_1C4F0D130;
  *(v69 + 56) = v52;
  *(v69 + 64) = MEMORY[0x1E69A0180];
  v70 = v132;
  *(v69 + 32) = v133;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v71 = *v51;
  (*v51)(v70, v44);
  sub_1C4EFBC58();
  v72 = v127;
  sub_1C440DB38();
  sub_1C440BAA8(v73, v74, v75, v76);
  memset(v134, 0, 40);
  v133 = sub_1C4EFBBC8();
  v77 = v68;
  sub_1C4420C3C(v134, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v72, &unk_1EC0C06C0, &unk_1C4F10DB0);
  swift_unownedRetainStrong();
  v78 = sub_1C4480848(v28);
  v127 = v71;

  v79 = *(v78 + 400);

  swift_unownedRetainStrong();
  v80 = sub_1C4480848(v28);

  v81 = *(v80 + 312);

  swift_unownedRetainStrong();
  v82 = sub_1C4480848(v28);
  v121[4] = v79;
  v121[1] = v77;

  v121[2] = *(v82 + 304);

  v83 = v133;
  v121[3] = v81;
  v84 = MEMORY[0x1E69A0180];
  while (1)
  {
    v85 = sub_1C4458EE8();
    if (!v85)
    {
      sub_1C444C060();

      sub_1C4436744();

      goto LABEL_4;
    }

    sub_1C441E870(0, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    v86 = sub_1C4EFBBE8();
    if (v86)
    {
      v87 = v86;
      MEMORY[0x1EEE9AC00](v86);
      sub_1C444C40C();
      v90 = sub_1C44E7728(v88, v89);
      if (v90 == 5)
      {
        MEMORY[0x1EEE9AC00](v90);
        sub_1C43FD954();
        *(v118 - 16) = sub_1C487BF24;
        *(v118 - 8) = v83;
        sub_1C444157C(v87, 0, sub_1C487BF28);
        goto LABEL_42;
      }

      v91 = sub_1C4F02AA8();
      v84 = MEMORY[0x1E69A0180];
    }

    else
    {
      sub_1C4EFBB98();
      v91 = v134[0];
    }

    sub_1C441E870(1, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    v92 = sub_1C4EFBBE8();
    if (v92)
    {
      v93 = v92;
      MEMORY[0x1EEE9AC00](v92);
      sub_1C444C40C();
      v96 = sub_1C4414708(v94, v95);
      if (v96 == 5)
      {
        MEMORY[0x1EEE9AC00](v96);
        sub_1C43FD954();
        *(v119 - 16) = sub_1C487BF24;
        *(v119 - 8) = v83;
        sub_1C444157C(v93, 1, sub_1C487BF28);
        goto LABEL_42;
      }

      v123 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C4EFBB98();
      v123 = v134[0];
    }

    sub_1C441E870(2, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    v97 = sub_1C4EFBBE8();
    v128 = v85;
    if (v97)
    {
      break;
    }

    sub_1C44885F0();
    sub_1C4EFBB98();
    v122 = LOBYTE(v134[0]);
LABEL_37:
    v102 = v126;
    v103 = sub_1C44331AC(v126);
    *(v103 + 16) = v125;
    *(v103 + 56) = MEMORY[0x1E69E6530];
    *(v103 + 64) = v84;
    *(v103 + 32) = v91;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v104 = sub_1C440C090();
    v105(v104);
    v106 = v124;
    v107 = sub_1C44179F4();
    sub_1C4423D60(v107, v108, v109);
    sub_1C4420C3C(v106, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v110 = sub_1C4404370(v102);
    v110[1] = v131;
    v111 = MEMORY[0x1E69E6530];
    v110[3].n128_u64[1] = MEMORY[0x1E69E6530];
    v110[4].n128_u64[0] = v84;
    v110[2].n128_u64[0] = v123;
    v110[6].n128_u64[0] = v111;
    v110[6].n128_u64[1] = v84;
    v110[4].n128_u64[1] = v91;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v112 = sub_1C440C090();
    v113(v112);
    v114 = v129;
    v115 = sub_1C44179F4();
    sub_1C4423D60(v115, v116, v117);
    v84 = MEMORY[0x1E69A0180];
    sub_1C4420C3C(v114, &unk_1EC0C06C0, &unk_1C4F10DB0);

    v83 = v133;
  }

  v98 = v97;
  sub_1C442AA00();
  MEMORY[0x1EEE9AC00](v99);
  v101 = sub_1C442AA48(v100, v121);
  if (v101 != 5)
  {
    v122 = sub_1C4F017E8();
    goto LABEL_37;
  }

  MEMORY[0x1EEE9AC00](v101);
  sub_1C43FD954();
  *(v120 - 16) = sub_1C487BF24;
  *(v120 - 8) = &v121[-4];
  sub_1C444157C(v98, 2, sub_1C487BF28);
LABEL_42:
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1C4CE7384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for Configuration(0);
  v5 = *(a1 + *(result + 20));
  if (qword_1EDDF0C88 != -1)
  {
    v9 = *(a1 + *(result + 20));
    result = swift_once();
    v5 = v9;
  }

  v6 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDF0C90, v5), xmmword_1EDDF0C90));
  v7 = &_s19CTSScheduleLauncherVN;
  v8 = &off_1F440B630;
  if (v6.i8[0] & v6.i8[4])
  {
    v8 = &off_1F440B618;
  }

  else
  {
    v7 = &_s20NullScheduleLauncherVN;
  }

  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_1C4CE744C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4402A68();
  swift_unownedRetainStrong();
  sub_1C4440C6C(a1);
  result = sub_1C4416BA4();
  if (!v2)
  {

    sub_1C4EFB768();
    v8 = sub_1C44179F4();
    sub_1C440BAA8(v8, v9, v10, v11);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void *sub_1C4CE753C(uint64_t a1, void *a2)
{
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  swift_unownedRetainStrong();
  v8 = a1;
  v9 = a2;
  sub_1C4440C6C(v8);
  sub_1C4416BA4();
  if (!v2)
  {

    sub_1C4EFB768();
    v10 = sub_1C44179F4();
    sub_1C440BAA8(v10, v11, v12, v13);
    sub_1C44248E8();
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    v9 = &unk_1F44095F0;
    sub_1C4EFB9F8();
    sub_1C4416BA4();
    sub_1C4420C3C(v15, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return v9;
}

uint64_t sub_1C4CE7690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4CE5A34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4CE776C(uint64_t a1, uint64_t a2)
{
  sub_1C4BB9554();
  sub_1C444D440();

  return sub_1C4EFBA18();
}

uint64_t sub_1C4CE77DC(uint64_t a1)
{
  v2 = sub_1C4CEC134();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4CE7828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4CEC134();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1C4CE787C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1C4F02AF8();
  sub_1C44097B0(v9, a1, a2, a3, a4);
  return sub_1C4F02B68();
}

void sub_1C4CE7904()
{
  sub_1C43FBDF0();
  *(v0 + 16) = 0xD000000000000034;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  sub_1C4424D7C(MEMORY[0x1E69E7CD0]);
}

void sub_1C4CE7940()
{
  sub_1C43FBDF0();
  *(v0 + 16) = 0xD00000000000002DLL;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  sub_1C4424D7C(MEMORY[0x1E69E7CD0]);
}

uint64_t sub_1C4CE79AC(uint64_t a1)
{
  sub_1C440E3F8();
  sub_1C4430958(v4, v1 + v3, v5);
  _s15FrontEventQueueC13CoalesceStateCMa();
  v6 = swift_allocObject();
  sub_1C43FBDF0();
  *(v7 + 16) = 0xD00000000000002CLL;
  *(v7 + 24) = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = MEMORY[0x1E69E7CD0];
  sub_1C456902C(&qword_1EC0C61E0, &qword_1C4F6B548);
  sub_1C44400E8();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v6;
  sub_1C4467948(a1);
  *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate15FrontEventQueue_lockedBox) = v9;
  return v1;
}

uint64_t sub_1C4CE7AC4(uint64_t a1)
{
  sub_1C44366B4();
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13SourceUpdater_config;
  sub_1C440E3F8();
  sub_1C4430958(v5, v1 + v4, v6);
  if (qword_1EDDF9A78 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4ABFB00();
  sub_1C4467948(a1);
  if (v2)
  {
    sub_1C4467948(v1 + v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13SourceUpdater_queue) = v7;
  }

  return v1;
}

uint64_t sub_1C4CE7BF8(void *a1)
{
  sub_1C4467948(v1 + *a1);

  return v1;
}

void sub_1C4CE7D58()
{
  sub_1C43FE96C();
  v4 = v3;
  v46 = v5;
  v7 = v6;
  v44 = v8;
  v10 = v9;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C44058BC();
  v13 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C44229AC(v4);

  if (v0)
  {
    goto LABEL_9;
  }

  v43 = 0;

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0C890;
  sub_1C4409528(v10);
  v18 = MEMORY[0x1E69E6158];
  v19 = MEMORY[0x1E69A0138];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = v19;
  *(v17 + 32) = v20;
  *(v17 + 40) = v21;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 72) = v44;
  *(v17 + 80) = v7;
  if (v46)
  {
    if (v46 == 1)
    {
      v22 = 0xE800000000000000;
      v23 = 0x6E6F6974656C6564;
    }

    else
    {
      v22 = 0xE600000000000000;
      v23 = 0x646574736F70;
    }
  }

  else
  {
    v22 = 0xE600000000000000;
    v23 = 0x6C616D726F6ELL;
  }

  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = v23;
  *(v17 + 120) = v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v15 + 8))(v2, v13);
  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v13);
  sub_1C43FD428();
  v27 = sub_1C4EFBC48();
  if (v43)
  {

    sub_1C4420C3C(v45, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
LABEL_9:
    sub_1C43FBC80();
    return;
  }

  v28 = v27;
  sub_1C4420C3C(v45, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v28)
  {

    goto LABEL_9;
  }

  sub_1C441E870(0, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
  v29 = sub_1C4EFBBE8();
  if (v29)
  {
    MEMORY[0x1EEE9AC00](v29);
    sub_1C44417A0();
    v32 = sub_1C44E7728(v30, v31);
    if (v32 == 5)
    {
      MEMORY[0x1EEE9AC00](v32);
      sub_1C43FD954();
      *(v39 - 16) = sub_1C487BF24;
      *(v39 - 8) = v1;
LABEL_26:
      sub_1C4EFB968();
      goto LABEL_28;
    }

    sub_1C4F02AA8();
  }

  else
  {
    sub_1C4EFBB98();
  }

  sub_1C441E870(1, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
  v33 = sub_1C4EFBBE8();
  if (!v33)
  {
    sub_1C4EFBB98();
    goto LABEL_20;
  }

  MEMORY[0x1EEE9AC00](v33);
  v35 = sub_1C4414708(v34, &v43);
  if (v35 == 5)
  {
    MEMORY[0x1EEE9AC00](v35);
    sub_1C43FD954();
    *(v40 - 16) = sub_1C487BF24;
    *(v40 - 8) = v42;
    goto LABEL_26;
  }

  sub_1C4F017E8();
LABEL_20:
  sub_1C441E870(2, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
  v36 = sub_1C4EFBBE8();
  if (!v36)
  {
    sub_1C44885F0();
    sub_1C4EFBB98();

    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v36);
  v38 = sub_1C442AA48(v37, &v43);
  if (v38 != 5)
  {
    sub_1C4F017E8();

    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD954();
  *(v41 - 16) = sub_1C487BDA4;
  *(v41 - 8) = v42;
  sub_1C4EFB968();
LABEL_28:
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

void sub_1C4CE83A0()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C441C544();
  v6 = sub_1C440F090();
  sub_1C4440C6C(v6);
  sub_1C4402530();
  if (!v1)
  {

    v7 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v8 = sub_1C44331AC(v7);
    *(v8 + 16) = xmmword_1C4F0D130;
    sub_1C44620EC(v8, MEMORY[0x1E69A0180]);
    sub_1C4441A40();
    sub_1C4EFC088();
    v9 = sub_1C43FBF04();
    v10(v9);
    v11 = sub_1C44038D0();
    sub_1C440BAA8(v11, v12, v13, v4);
    sub_1C43FD428();
    sub_1C441DEF0();
    sub_1C43FE664();
    sub_1C4EFB988();
    sub_1C44B9028();
    sub_1C4420C3C(&v14, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CE8550()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C440101C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C441C544();
  v6 = sub_1C440F090();
  sub_1C4440C6C(v6);
  sub_1C4402530();
  if (!v1)
  {

    v7 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v8 = sub_1C44331AC(v7);
    *(v8 + 16) = xmmword_1C4F0D130;
    sub_1C44620EC(v8, MEMORY[0x1E69A0180]);
    sub_1C4441A40();
    sub_1C4EFC088();
    v9 = sub_1C43FBF04();
    v10(v9);
    v11 = sub_1C44038D0();
    sub_1C43FF8A0(v11, v12, v13, v4);
    sub_1C443474C();
    sub_1C441DEF0();
    sub_1C43FE664();
    sub_1C4EFB9A8();
    sub_1C44B9028();
    sub_1C4420C3C(&v14, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CE8700()
{
  sub_1C43FE96C();
  v169 = v3;
  v170 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v167 = v10 - v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v166 = &v147 - v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v147 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v147 - v19);
  v21 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v168 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A82C();
  v24 = v7;
  v25 = v170;
  v26 = v169;
  sub_1C4CE8550();
  if (v25)
  {
    goto LABEL_5;
  }

  v163 = v20;
  v164 = v2;
  v170 = v5;
  v33 = v26;
  v34 = v168;
  v161 = v1;
  v162 = v17;
  v165 = v24;
  if ((v27 & 1) == 0)
  {
    sub_1C4CE66C4(v165, v170, v33, v28, v29, v30, v31, v32, v147, v148, v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v156, v157);
LABEL_5:
    sub_1C43FBC80();
    return;
  }

  swift_unownedRetainStrong();
  v35 = sub_1C4440C6C(v170);

  v36 = *(v35 + 448);

  v37 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v38 = sub_1C44331AC(v37);
  v39 = MEMORY[0x1E69E6530];
  v160 = xmmword_1C4F0D130;
  *(v38 + 16) = xmmword_1C4F0D130;
  v40 = MEMORY[0x1E69A0180];
  *(v38 + 56) = v39;
  *(v38 + 64) = v40;
  v41 = v164;
  *(v38 + 32) = v165;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v42 = v34;
  v43 = v36;
  v44 = *(v42 + 8);
  v45 = v41;
  v46 = v21;
  v44(v45, v21);
  sub_1C4EFBC58();
  v47 = v163;
  v48 = sub_1C44179F4();
  sub_1C440BAA8(v48, v49, v50, v46);
  sub_1C43FD428();
  v51 = sub_1C4EFBBC8();
  v157 = v37;
  v158 = v43;
  v159 = v51;
  sub_1C4420C3C(v171, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v47, &unk_1EC0C06C0, &unk_1C4F10DB0);
  swift_unownedRetainStrong();
  v52 = v170;
  v53 = sub_1C4440C6C(v170);
  v163 = v44;

  v54 = *(v53 + 400);

  swift_unownedRetainStrong();
  v55 = 0;
  v56 = sub_1C4440C6C(v52);
  v151 = v54;

  v57 = *(v56 + 312);

  swift_unownedRetainStrong();
  v58 = sub_1C441E000(v52);
  v148 = v57;
  v168 = v42 + 8;

  v147 = *(v58 + 40);

  v149 = xmmword_1C4F0CE60;
  v59 = MEMORY[0x1E69E6530];
  v60 = MEMORY[0x1E69A0180];
  v170 = v46;
  while (1)
  {
    v61 = sub_1C4458EE8();
    if (!v61)
    {

      sub_1C442B9BC();

      sub_1C44884D0();
      sub_1C4436744();

      goto LABEL_5;
    }

    sub_1C441E870(0, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    v62 = sub_1C4EFBBE8();
    if (v62)
    {
      v55 = &v147;
      MEMORY[0x1EEE9AC00](v62);
      sub_1C444C40C();
      v65 = sub_1C44E7728(v63, v64);
      if (v65 == 5)
      {
        MEMORY[0x1EEE9AC00](v65);
        sub_1C43FD954();
        *(v137 - 16) = sub_1C487BF24;
        *(v137 - 8) = 0;
        v138 = sub_1C44585C0();
        sub_1C444157C(v138, 0, v139);
        goto LABEL_46;
      }

      v66 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C449DB5C();
      sub_1C4EFBB98();
      v66 = v171[0];
    }

    sub_1C441E870(1, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    if (sub_1C4EFBBE8())
    {
      sub_1C442AA00();
      MEMORY[0x1EEE9AC00](v67);
      sub_1C44417A0();
      v70 = sub_1C4414708(v68, v69);
      if (v70 == 5)
      {
        MEMORY[0x1EEE9AC00](v70);
        sub_1C43FD954();
        *(v140 - 16) = sub_1C487BF24;
        *(v140 - 8) = v55;
        v141 = sub_1C44585C0();
        v143 = 1;
        goto LABEL_44;
      }

      v154 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C447E3A4();
      sub_1C4EFBB98();
      v154 = v171[0];
    }

    sub_1C441E870(2, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    if (sub_1C4EFBBE8())
    {
      sub_1C442AA00();
      MEMORY[0x1EEE9AC00](v71);
      sub_1C44417A0();
      v74 = sub_1C442AA48(v72, v73);
      if (v74 != 5)
      {
        HIDWORD(v152) = sub_1C4F017E8();
        goto LABEL_19;
      }

      MEMORY[0x1EEE9AC00](v74);
      sub_1C43FD954();
      *(v144 - 16) = sub_1C487BF24;
      *(v144 - 8) = v55;
      v141 = sub_1C44585C0();
      v143 = 2;
LABEL_44:
      sub_1C444157C(v141, v143, v142);
      goto LABEL_46;
    }

    sub_1C44885F0();
    sub_1C4EFBB98();
    HIDWORD(v152) = LOBYTE(v171[0]);
LABEL_19:
    sub_1C441E870(3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/Row.swift");
    v75 = sub_1C4EFBBE8();
    v156 = v61;
    if (v75)
    {
      break;
    }

    sub_1C4EFBB98();
    v169 = 0;
    v153 = v171[0];
    v155 = v171[1];
LABEL_23:
    v82 = v157;
    v83 = sub_1C44331AC(v157);
    *(v83 + 16) = v160;
    *(v83 + 56) = v59;
    *(v83 + 64) = v60;
    *(v83 + 32) = v66;
    v84 = v59;
    v85 = v164;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v86 = v66;
    v87 = v170;
    v88 = v163;
    v163(v85, v170);
    v89 = v162;
    v90 = sub_1C44179F4();
    sub_1C440BAA8(v90, v91, v92, v87);
    v93 = v169;
    sub_1C4EFC0A8();
    if (v93)
    {

      sub_1C4436744();

      sub_1C44884D0();
      sub_1C442B9BC();

      sub_1C4420C3C(v89, &unk_1EC0C06C0, &unk_1C4F10DB0);

      goto LABEL_5;
    }

    sub_1C4420C3C(v89, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v94 = sub_1C4404370(v82);
    sub_1C442C690(v94);
    v95[7] = v84;
    v96 = MEMORY[0x1E69A0180];
    v95[8] = MEMORY[0x1E69A0180];
    v95[9] = v86;
    v95[4] = v154;
    v95[12] = v84;
    v95[13] = v96;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v88(v85, v87);
    v97 = v161;
    sub_1C43FCF64();
    sub_1C440BAA8(v98, v99, v100, v87);
    sub_1C4EFC0A8();
    v60 = v96;
    sub_1C4420C3C(v97, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v101 = v155;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v102 = v153;
    sub_1C44869B4(v171, v153, v101, v103, v104, v105, v106, v107, v147, v148, v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166);
    v109 = v108;

    if (v109)
    {
      v110 = v102 == 1701736302 && v101 == 0xE400000000000000;
      if (v110 || (sub_1C44257B8(v102, v101) & 1) != 0)
      {

        v116 = v165;
      }

      else
      {
        v118 = sub_1C4404370(v157);
        sub_1C442C690(v118);
        v119[7] = MEMORY[0x1E69E6158];
        v119[8] = MEMORY[0x1E69A0138];
        v119[4] = v102;
        v119[5] = v101;
        v119[12] = MEMORY[0x1E69E6530];
        v119[13] = v60;
        v116 = v165;
        v119[9] = v165;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v120 = sub_1C4428F00();
        v121(v120);
        v122 = v166;
        v123 = sub_1C44179F4();
        sub_1C4423D60(v123, v124, v125);
        sub_1C4420C3C(v122, &unk_1EC0C06C0, &unk_1C4F10DB0);
      }

      v117 = v157;
    }

    else
    {

      v116 = v165;
      v117 = v157;
    }

    if (v152 & 0x100000000) != 0 && (sub_1C44869B4(v171, 1702259052, 0xE400000000000000, v111, v112, v113, v114, v115, v147, v148, v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166), v127 = v126, , (v127))
    {
      v128 = sub_1C4404370(v117);
      sub_1C442C690(v128);
      v129[7] = MEMORY[0x1E69E6158];
      v130 = sub_1C444ADEC(v129, MEMORY[0x1E69A0138]);
      v130[12] = MEMORY[0x1E69E6530];
      v130[13] = v60;
      v130[9] = v116;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v131 = sub_1C4428F00();
      v132(v131);
      v133 = v167;
      v134 = sub_1C44179F4();
      sub_1C4423D60(v134, v135, v136);
      v55 = 0;
      sub_1C4420C3C(v133, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    else
    {
      v55 = 0;
    }

    v59 = MEMORY[0x1E69E6530];
  }

  v169 = 0;
  sub_1C442AA00();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C44417A0();
  *(v77 - 16) = v61;
  *(v77 - 8) = 3;
  v79 = sqlite3_column_type(v78, 3);
  if (v79 != 5)
  {
    v80 = sub_1C4F011E8();
    v155 = v81;
    v153 = v80;
    v171[0] = v80;
    goto LABEL_23;
  }

  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FD954();
  *(v145 - 16) = sub_1C487BF24;
  *(v145 - 8) = v55;
  sub_1C44585C0();
  v146 = v169;
  sub_1C4EFB968();
  v169 = v146;
LABEL_46:
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}