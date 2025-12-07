unint64_t sub_1C469C070()
{
  result = qword_1EDDFA7F8;
  if (!qword_1EDDFA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7F8);
  }

  return result;
}

unint64_t sub_1C469C0C4()
{
  result = qword_1EDDDD0C8[0];
  if (!qword_1EDDDD0C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDD0C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextualEventsDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C469C1F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C469C234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C469C298()
{
  result = qword_1EC0BAE98;
  if (!qword_1EC0BAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE98);
  }

  return result;
}

unint64_t sub_1C469C2F0()
{
  result = qword_1EDDFD480;
  if (!qword_1EDDFD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD480);
  }

  return result;
}

unint64_t sub_1C469C348()
{
  result = qword_1EDDFD488;
  if (!qword_1EDDFD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD488);
  }

  return result;
}

unint64_t sub_1C469C39C()
{
  result = qword_1EDDEFFD0;
  if (!qword_1EDDEFFD0)
  {
    sub_1C4EFDAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFD0);
  }

  return result;
}

uint64_t sub_1C469C410(uint64_t a1)
{
  v2 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C469C46C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2D598);
  v1 = sub_1C442B738(v0, qword_1EDE2D598);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C469C4E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v8))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B70(&dword_1C43F8000, v9, v10, "CoordinationXPC: starting...");
    sub_1C43FBE2C();
  }

  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0(&qword_1EDDF67F8);
  }

  sub_1C43FCEE8(v2, qword_1EDE2D598);
  sub_1C448CA88(a1, v5, type metadata accessor for Configuration);
  v11 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v7);
  swift_endAccess();
  sub_1C45A6F50();
  v12 = sub_1C44059E8();
  v14 = sub_1C49AA56C(v12, v13);
  v15 = qword_1EDE2D588;
  qword_1EDE2D588 = v14;
  v16 = v14;

  if (v16)
  {
    qword_1EDE2D590 = [objc_allocWithZone(type metadata accessor for CoordinationXPC.Delegate()) init];
    v17 = qword_1EDE2D590;
    swift_unknownObjectRelease();
    [v16 setDelegate_];

    [v16 resume];
  }

  else
  {
    v16 = sub_1C4F00968();
    v18 = sub_1C4F01CE8();
    if (sub_1C43FEB2C(v18))
    {
      v19 = sub_1C43FCED0();
      sub_1C43FBD24(v19);
      sub_1C43FFFD8(&dword_1C43F8000, v20, v21, "Failed to create CoordinationXPC service");
      sub_1C43FBE2C();
    }
  }
}

uint64_t CoordinationXPC.Server.Error.hashValue.getter()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

void sub_1C469C804(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v8 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Source(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == 0xE000000000000000;
  }

  LOBYTE(v18) = v17;
  v36 = v15;
  if (v17)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v19 = sub_1C4F02938();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((v19 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      Source.init(rawValue:)(v36, v16, v10);
      v20 = sub_1C44157D4(v10, 1, v11);
      sub_1C46A1238(v10);
      if (v20 == 1)
      {
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v21 = sub_1C4F00978();
        sub_1C442B738(v21, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v22 = sub_1C4F00968();
        v23 = sub_1C4F01CD8();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v37 = v25;
          *v24 = 136315138;
          v26 = a5;
          v27 = sub_1C441D828(v36, v16, &v37);

          *(v24 + 4) = v27;
          a5 = v26;
          _os_log_impl(&dword_1C43F8000, v22, v23, "Invalid graph update source: %s", v24, 0xCu);
          sub_1C440962C(v25);
          MEMORY[0x1C6942830](v25, -1, -1);
          MEMORY[0x1C6942830](v24, -1, -1);
        }

        else
        {
        }

        sub_1C46A12A0();
        v32 = swift_allocError();
        v33 = sub_1C4EF9798();
        (a5)[2](a5, 0, v33);

        goto LABEL_36;
      }
    }
  }

  if (qword_1EDDEC830 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    sub_1C43FBB68();
    if ((v18 & 1) == 0 && (sub_1C4F02938() & 1) == 0)
    {
      break;
    }

    if (qword_1EDDFA690 != -1)
    {
      swift_once();
    }

    v28 = off_1EDDFA698;
    v37 = off_1EDDFA698;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4B325E4();
    v35 = a5;
    if (v29)
    {
      sub_1C49D3594(v29);
      v28 = v37;
    }

    v18 = 0;
    a5 = v28[2];
    while (1)
    {
      if (a5 == v18)
      {

        sub_1C4CE4940(1, 0, 0xE000000000000000);
        a5 = v35;
        goto LABEL_34;
      }

      if (v18 >= v28[2])
      {
        break;
      }

      sub_1C448CA88(v28 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v14, type metadata accessor for Source);
      v30 = *v14;
      v31 = v14[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4453CE8(v14, type metadata accessor for Source);
      sub_1C4CE4940(1, v30, v31);

      ++v18;
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  sub_1C4CE4940(1, v36, v16);
  sub_1C4CE4940(1, 0, 0xE000000000000000);
LABEL_34:

  a5[2](a5, 1, 0);

LABEL_36:
  _Block_release(a5);
}

void sub_1C469CF1C()
{
  sub_1C43FBD3C();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Source(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  if (v4)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 == 0xE000000000000000;
  }

  LOBYTE(v17) = v16;
  v40 = v14;
  if (v16)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v18 = sub_1C4F02938();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((v18 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C441C914();
      Source.init(rawValue:)(v19, v20, v21);
      v22 = sub_1C44157D4(v13, 1, v7);
      sub_1C46A1238(v13);
      if (v22 == 1)
      {
        v23 = v2;
        if (qword_1EDDFA678 != -1)
        {
          sub_1C43FFCC0(&qword_1EDDFA678);
        }

        v24 = sub_1C4F00978();
        sub_1C43FCEE8(v24, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v25 = sub_1C4F00968();
        v26 = sub_1C4F01CD8();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = sub_1C43FD084();
          v28 = swift_slowAlloc();
          v42 = v28;
          *v27 = 136315138;
          v29 = sub_1C441C914();
          v32 = sub_1C441D828(v29, v30, v31);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_1C43F8000, v25, v26, "Invalid graph update source: %s", v27, 0xCu);
          sub_1C440962C(v28);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }

        sub_1C46A12A0();
        v38 = swift_allocError();
        v23(0, v38);

        goto LABEL_24;
      }
    }
  }

  v39 = v2;
  if (qword_1EDDEC830 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_1C43FBB68();
    if ((v17 & 1) == 0)
    {
      sub_1C441C914();
      if ((sub_1C4F02938() & 1) == 0)
      {
        break;
      }
    }

    if (qword_1EDDFA690 != -1)
    {
      swift_once();
    }

    v33 = off_1EDDFA698;
    v42 = off_1EDDFA698;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v34 = sub_1C4B325E4();
    if (v34)
    {
      sub_1C49D3594(v34);
      v33 = v42;
    }

    v35 = 0;
    v17 = v33[2];
    while (1)
    {
      if (v17 == v35)
      {

        goto LABEL_36;
      }

      if (v35 >= v33[2])
      {
        break;
      }

      sub_1C448CA88(v33 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35, v10, type metadata accessor for Source);
      v37 = *v10;
      v36 = v10[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4453CE8(v10, type metadata accessor for Source);
      sub_1C4CE4940(1, v37, v36);

      ++v35;
    }

    __break(1u);
LABEL_41:
    sub_1C441F6E8(&qword_1EDDEC830);
  }

  sub_1C4CE4940(1, v40, v15);
LABEL_36:
  sub_1C4CE4940(1, 0, 0xE000000000000000);

  v39(1, 0);

LABEL_24:
  sub_1C43FE9F0();
}

void sub_1C469D578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  if (qword_1EDDEC830 != -1)
  {
    swift_once();
  }

  sub_1C43FBB68();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4440C20(a1, a2);
  if (v12 == 8)
  {
    sub_1C450B034();
    v13 = swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0xD000000000000012;
    *(v14 + 24) = 0x80000001C4F8FC10;
    v15 = v28[1];
    *(v14 + 32) = v28[0];
    *(v14 + 48) = v15;
    *(v14 + 64) = 9;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDE2DCD8);
    v17 = v13;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v28[0] = v21;
      *v20 = 136315138;
      v29 = v13;
      v22 = v13;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v23 = sub_1C4F01198();
      v25 = sub_1C441D828(v23, v24, v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1C43F8000, v18, v19, "CoordinationXPC: sourceUpdated: %s", v20, 0xCu);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    v26 = v13;
    v27 = sub_1C4EF9798();
    (a7)[2](a7, 0, v27);

    _Block_release(a7);
  }

  else
  {
    sub_1C4CE4940(v12, a3, a4);
    a7[2](a7, 1, 0);

    _Block_release(a7);
  }
}

void sub_1C469D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void))
{
  if (qword_1EDDEC830 != -1)
  {
    sub_1C441F6E8(&qword_1EDDEC830);
  }

  sub_1C442DE48();
  v13 = sub_1C43FBB68();
  v14 = a5;
  if (a5)
  {
    goto LABEL_7;
  }

  v6 = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4440C20(a1, a2);
  if (v15 == 8)
  {
    sub_1C450B034();
    v14 = swift_allocError();
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = 0xD000000000000012;
    *(v16 + 24) = 0x80000001C4F8FC10;
    v17 = v27[1];
    *(v16 + 32) = v27[0];
    *(v16 + 48) = v17;
    *(v16 + 64) = 9;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

LABEL_7:
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v18 = sub_1C4F00978();
    sub_1C43FCEE8(v18, qword_1EDE2DCD8);
    v19 = v14;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      sub_1C43FD084();
      *&v27[0] = sub_1C4402BBC();
      *v6 = 136315138;
      v28 = v14;
      v22 = v14;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v23 = sub_1C4F01198();
      sub_1C441D828(v23, v24, v27);
      sub_1C441E2DC();
      *(v6 + 4) = a4;
      _os_log_impl(&dword_1C43F8000, v20, v21, "CoordinationXPC: sourceUpdated: %s", v6, 0xCu);
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v25 = v14;
    (a6)(0, v14);

    return;
  }

  sub_1C4CE4940(v15, a3, a4);
  v26 = sub_1C4411A44();
  a6(v26);
}

void sub_1C469DB3C(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  if (qword_1EDDEC830 != -1)
  {
    swift_once();
  }

  sub_1C43FBB68();
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  ViewUpdate.SourceUpdater.streamUpdated(streamName:isDelete:)(v10, a3 & 1);
  if (v11)
  {

    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DCD8);
    v13 = v11;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = v11;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v19 = sub_1C4F01198();
      v21 = sub_1C441D828(v19, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C43F8000, v14, v15, "CoordinationXPC: streamUpdated: %s", v16, 0xCu);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    v22 = v11;
    v23 = sub_1C4EF9798();
    (a6)[2](a6, 0, v23);

    _Block_release(a6);
  }

  else
  {
    a6[2](a6, 1, 0);

    _Block_release(a6);
  }
}

void sub_1C469DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C441EB54();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  if (qword_1EDDEC830 != -1)
  {
    sub_1C441F6E8(&qword_1EDDEC830);
  }

  sub_1C442DE48();
  sub_1C43FBB68();
  if (v30)
  {
    goto LABEL_6;
  }

  v37._countAndFlagsBits = v36;
  v37._object = v34;
  ViewUpdate.SourceUpdater.streamUpdated(streamName:isDelete:)(v37, v32 & 1);
  if (v30)
  {

LABEL_6:
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v38 = sub_1C4F00978();
    sub_1C43FCEE8(v38, qword_1EDE2DCD8);
    v39 = v30;
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CD8();

    if (os_log_type_enabled(v40, v41))
    {
      sub_1C43FD084();
      a11 = sub_1C4402BBC();
      *v32 = 136315138;
      v42 = v30;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v43 = sub_1C4F01198();
      sub_1C441D828(v43, v44, &a11);
      sub_1C441E2DC();
      *(v32 + 4) = v24;
      sub_1C440E068(&dword_1C43F8000, v45, v46, "CoordinationXPC: streamUpdated: %s");
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v47 = v30;
    v48 = sub_1C43FEDC4();
    v28(v48);

    sub_1C43FBF50();
    return;
  }

  v49 = sub_1C4411A44();
  v28(v49);
  sub_1C43FBF50();
}

void sub_1C469DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  if (qword_1EDDEC830 != -1)
  {
    swift_once();
  }

  sub_1C43FBB68();
  sub_1C4CE4C0C(a1, a2);
  a5[2](a5, 1, 0);

  _Block_release(a5);
}

void sub_1C469E220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C441EB54();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (qword_1EDDEC830 != -1)
  {
    sub_1C441F6E8(&qword_1EDDEC830);
  }

  sub_1C442DE48();
  sub_1C43FBB68();
  if (v30)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v35 = sub_1C4F00978();
    sub_1C43FCEE8(v35, qword_1EDE2DCD8);
    v36 = v30;
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CD8();

    if (os_log_type_enabled(v37, v38))
    {
      sub_1C43FD084();
      a11 = sub_1C4402BBC();
      *v34 = 136315138;
      v39 = v30;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v40 = sub_1C4F01198();
      sub_1C441D828(v40, v41, &a11);
      sub_1C441E2DC();
      *(v34 + 4) = v24;
      sub_1C440E068(&dword_1C43F8000, v42, v43, "CoordinationXPC: streamsUpdated: %s");
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v44 = v30;
    v45 = sub_1C43FEDC4();
    v28(v45);

    sub_1C43FBF50();
  }

  else
  {
    sub_1C4CE4C0C(v34, v32);
    v46 = sub_1C4411A44();
    v28(v46);
    sub_1C43FBF50();
  }
}

void sub_1C469E3EC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_1EDDF9710 != -1)
  {
    swift_once();
  }

  sub_1C4415590();

  a3[2](a3, 1, 0);

  _Block_release(a3);
}

void sub_1C469E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C441EB54();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  if (qword_1EDDF9710 != -1)
  {
    swift_once();
  }

  sub_1C442DE48();
  sub_1C4415590();
  if (v31)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v32 = sub_1C4F00978();
    sub_1C43FCEE8(v32, qword_1EDE2DCD8);
    v33 = v31;
    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CD8();

    if (os_log_type_enabled(v34, v35))
    {
      sub_1C43FD084();
      a11 = sub_1C4402BBC();
      *v24 = 136315138;
      v36 = v31;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v37 = sub_1C4F01198();
      sub_1C441D828(v37, v38, &a11);
      sub_1C441E2DC();
      *(v24 + 4) = v25;
      sub_1C440E068(&dword_1C43F8000, v39, v40, "CoordinationXPC: migrateViewDatabases: %s");
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v41 = v31;
    v42 = sub_1C43FEDC4();
    v29(v42);
  }

  else
  {

    v43 = sub_1C4411A44();
    v29(v43);
  }

  sub_1C43FBF50();
}

void sub_1C469E7DC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  _Block_copy(a4);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v25 = a3;
    v26[0] = v15;
    if (a2)
    {
      v16 = a1;
    }

    else
    {
      v16 = 7104878;
    }

    v24 = a4;
    v17 = v8;
    v18 = a1;
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C441D828(v16, v19, v26);
    a1 = v18;
    v8 = v17;
    a4 = v24;

    *(v14 + 4) = v20;
    a3 = v25;
    _os_log_impl(&dword_1C43F8000, v12, v13, "CoordinationXPC: graphUpdated for source: %s", v14, 0xCu);
    sub_1C440962C(v15);
    MEMORY[0x1C6942830](v15, -1, -1);
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v8, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v21, v10);
  v22 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v10, 1, v22) == 1)
  {
    _Block_release(a4);
    _Block_release(a4);
    __break(1u);
  }

  else
  {
    _Block_copy(a4);
    sub_1C469C804(a1, a2, v10, a3, a4);
    sub_1C4453CE8(v10, type metadata accessor for Configuration);
    _Block_release(a4);
    _Block_release(a4);
  }
}

void CoordinationXPC.Server.graphUpdated(withSource:completion:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v8 = sub_1C4F00978();
  sub_1C43FCEE8(v8, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FD084();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    v23 = v4;
    if (v1)
    {
      v14 = v3;
    }

    else
    {
      v14 = 7104878;
    }

    v24 = v3;
    v25 = v12;
    if (v1)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C441D828(v14, v15, &v25);

    *(v11 + 4) = v16;
    v4 = v23;
    _os_log_impl(&dword_1C43F8000, v9, v10, "CoordinationXPC: graphUpdated for source: %s", v11, 0xCu);
    sub_1C440962C(v13);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0(&qword_1EDDF67F8);
  }

  v17 = sub_1C442B738(v4, qword_1EDE2D598);
  sub_1C440F4A0(v17);
  sub_1C4466EEC(v4, v7);
  v18 = type metadata accessor for Configuration(0);
  sub_1C4402E68(v7, v19, v18);
  if (v20)
  {
    __break(1u);
  }

  else
  {
    sub_1C469CF1C();
    sub_1C43FFFC0();
    sub_1C4453CE8(v7, v21);
    sub_1C43FE9F0();
  }
}

void sub_1C469ED8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v21 = a1;
  v22 = a3;
  v10 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  _Block_copy(a6);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1C441D828(v21, a2, v23);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1C441D828(v22, a4, v23);
    _os_log_impl(&dword_1C43F8000, v14, v15, "CoordinationXPC: sourceUpdated [sourceType: %s, sourceIdentifier: %s]", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v17, -1, -1);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v18 = sub_1C442B738(v10, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v18, v12);
  v19 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v12, 1, v19) == 1)
  {
    _Block_release(a6);
    _Block_release(a6);
    __break(1u);
  }

  else
  {
    _Block_copy(a6);
    sub_1C469D578(v21, a2, v22, a4, v12, a5, a6);
    sub_1C4453CE8(v12, type metadata accessor for Configuration);
    _Block_release(a6);
    _Block_release(a6);
  }
}

void CoordinationXPC.Server.sourceUpdated(sourceType:sourceIdentifier:completion:)()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v23 = v6;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v13 = sub_1C4F00978();
  sub_1C43FCEE8(v13, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();

  if (os_log_type_enabled(v14, v15))
  {
    v0 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v0 = 136315394;
    *(v0 + 4) = sub_1C441D828(v22, v8, v24);
    *(v0 + 12) = 2080;
    *(v0 + 14) = sub_1C441D828(v23, v4, v24);
    _os_log_impl(&dword_1C43F8000, v14, v15, "CoordinationXPC: sourceUpdated [sourceType: %s, sourceIdentifier: %s]", v0, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0(&qword_1EDDF67F8);
  }

  v16 = sub_1C442B738(v9, qword_1EDE2D598);
  sub_1C440F4A0(v16);
  sub_1C4466EEC(v0, v12);
  v17 = type metadata accessor for Configuration(0);
  sub_1C4402E68(v12, v18, v17);
  if (v19)
  {
    __break(1u);
  }

  else
  {
    sub_1C469D898(v22, v8, v23, v4, v12, v2);
    sub_1C43FFFC0();
    sub_1C4453CE8(v12, v20);
    sub_1C43FE9F0();
  }
}

void sub_1C469F364(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  HIDWORD(v19) = a3;
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-1] - v10;
  _Block_copy(a5);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1C441D828(a1, a2, v20);
    *(v15 + 12) = 1024;
    *(v15 + 14) = BYTE4(v19) & 1;
    _os_log_impl(&dword_1C43F8000, v13, v14, "CoordinationXPC: streamUpdated [streamName: %s, isDelete: %{BOOL}d]", v15, 0x12u);
    sub_1C440962C(v16);
    MEMORY[0x1C6942830](v16, -1, -1);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v17 = sub_1C442B738(v9, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v17, v11);
  v18 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v11, 1, v18) == 1)
  {
    _Block_release(a5);
    _Block_release(a5);
    __break(1u);
  }

  else
  {
    _Block_copy(a5);
    sub_1C469DB3C(a1, a2, BYTE4(v19) & 1, v11, a4, a5);
    sub_1C4453CE8(v11, type metadata accessor for Configuration);
    _Block_release(a5);
    _Block_release(a5);
  }
}

void sub_1C469F8D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  _Block_copy(a4);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = *(a1 + 16);

    *(v14 + 12) = 2048;
    *(v14 + 14) = *(a2 + 16);

    _os_log_impl(&dword_1C43F8000, v12, v13, "CoordinationXPC: streamsUpdated [updatedStreams: %ld, userDeleteStreams: %ld]", v14, 0x16u);
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  else
  {
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C442B738(v8, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v15, v10);
  v16 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v10, 1, v16) == 1)
  {
    _Block_release(a4);
    _Block_release(a4);
    __break(1u);
  }

  else
  {
    _Block_copy(a4);
    sub_1C469DF9C(a1, a2, v10, a3, a4);
    sub_1C4453CE8(v10, type metadata accessor for Configuration);
    _Block_release(a4);
    _Block_release(a4);
  }
}

void sub_1C469FE24(uint64_t a1, void *a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  _Block_copy(a2);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DCD8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "CoordinationXPC: migrateViewDatabases called", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v4, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v11, v6);
  v12 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v6, 1, v12) == 1)
  {
    _Block_release(a2);
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    _Block_copy(a2);
    sub_1C469E3EC(v6, a1, a2);
    sub_1C4453CE8(v6, type metadata accessor for Configuration);
    _Block_release(a2);
    _Block_release(a2);
  }
}

uint64_t sub_1C46A0254()
{
  type metadata accessor for InternalBiomeXPC.Server();
  v1 = [objc_allocWithZone(MEMORY[0x1E69A9F00]) initWithAll];
  static InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:config:)(v1, 0, 5uLL);
  v3 = v2;
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t CoordinationXPC.Server.sysdiagnoseInfo()()
{
  v1[5] = v0;
  v1[6] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46A03F4, 0, 0);
}

uint64_t sub_1C46A03F4()
{
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DF70);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "CoordinationXPC: sysdiagnoseInfo");
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0C00 != -1)
  {
    swift_once();
  }

  v7 = v0[7];
  v8 = sub_1C442B738(v0[6], qword_1EDDF0C10);
  sub_1C440D164(v8, (v0 + 2));
  sub_1C4466EEC(v8, v7);
  v9 = type metadata accessor for Configuration(0);
  result = sub_1C4402E68(v7, v10, v9);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = sub_1C46A0588;
    v14 = v0[7];

    return CoordinationXPC.Server.sysdiagnoseInfo(config:)(v14);
  }

  return result;
}

uint64_t sub_1C46A0588(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_1C43FBDAC();
  *v7 = v6;
  v6[9] = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C46A06EC, 0, 0);
  }

  else
  {
    v8 = v6[7];
    sub_1C43FFFC0();
    sub_1C4453CE8(v8, v9);

    v10 = v6[1];

    return v10(a1, a2);
  }
}

uint64_t sub_1C46A06EC()
{
  v1 = *(v0 + 56);
  sub_1C43FFFC0();
  sub_1C4453CE8(v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C46A07D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C46A0880;

  return CoordinationXPC.Server.sysdiagnoseInfo()();
}

uint64_t sub_1C46A0880(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v4)
  {
    v9 = sub_1C4EF9798();

    v10 = 0;
    v11 = v9;
  }

  else
  {
    v10 = sub_1C4F01108();

    v9 = 0;
    v11 = v10;
  }

  v12 = *(v5 + 24);
  v12[2](v12, v10, v9);

  _Block_release(v12);
  sub_1C43FBDA0();

  return v13();
}

id CoordinationXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C46A0A44(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0(&qword_1EDDF67F8);
  }

  v7 = sub_1C442B738(v3, qword_1EDE2D598);
  sub_1C440D164(v7, v32);
  sub_1C4466EEC(v7, v6);
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = &v6[*(v8 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    sub_1C43FFFC0();
    sub_1C4453CE8(v6, v13);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v11) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v12) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v21 = sub_1C4F00978();
      sub_1C43FCEE8(v21, qword_1EDE2DCD8);
      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CF8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_1C43FCED0();
        sub_1C43FBD24(v24);
        _os_log_impl(&dword_1C43F8000, v22, v23, "CoordinationXPC: service is in no-op mode.", v11, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      v15 = sub_1C44059E8();
      if (sub_1C446874C(v15, v16))
      {
        v17 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v17, sel_setExportedInterface_);

        v18 = [objc_allocWithZone(type metadata accessor for CoordinationXPC.Server()) init];
        sub_1C44059FC(v18, sel_setExportedObject_);

        v30 = sub_1C46A0DA0;
        v31 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v27 = 1107296256;
        v28 = sub_1C4833DD0;
        v29 = &unk_1F43E6D90;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInterruptionHandler_);
        _Block_release(v19);
        v30 = sub_1C46A0DC0;
        v31 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v27 = 1107296256;
        v28 = sub_1C4833DD0;
        v29 = &unk_1F43E6DB8;
        v20 = _Block_copy(&aBlock);
        sub_1C44059FC(v20, sel_setInvalidationHandler_);
        _Block_release(v20);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C46A0DE0(uint8_t *a1, const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = (a1)();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FBE2C();
  }
}

unint64_t sub_1C46A0F38()
{
  result = qword_1EC0BAEA8;
  if (!qword_1EC0BAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAEA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoordinationXPC.Server.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C46A10A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C46A1150;

  return sub_1C46A07D8(v2, v3);
}

uint64_t sub_1C46A1150()
{
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C46A1238(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C46A12A0()
{
  result = qword_1EC0BAF10;
  if (!qword_1EC0BAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAF10);
  }

  return result;
}

uint64_t sub_1C46A1314(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C46A5654(a1, sub_1C46A5908, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C46A1398()
{
  sub_1C456902C(&qword_1EC0BAF38, &qword_1C4F17DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F830;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001C4F916F0;
  sub_1C456902C(&qword_1EC0BAF40, &qword_1C4F17DA8);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1C4F0F830;
  *(v1 + 32) = 0x68746E6F6DLL;
  *(v1 + 40) = 0xE500000000000000;
  *(v1 + 48) = swift_getKeyPath();
  strcpy((v1 + 56), "day_of_month");
  *(v1 + 69) = 0;
  *(v1 + 70) = -5120;
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = 0x775F666F5F796164;
  *(v1 + 88) = 0xEB000000006B6565;
  *(v1 + 96) = swift_getKeyPath();
  *(v1 + 104) = 0x656B6565775F7369;
  *(v1 + 112) = 0xEA0000000000646ELL;
  *(v1 + 120) = swift_getKeyPath();
  *(v1 + 128) = 0x5F666F5F72756F68;
  *(v1 + 136) = 0xEB00000000796164;
  *(v1 + 144) = swift_getKeyPath();
  *(v1 + 152) = 0x5F666F5F74726170;
  *(v1 + 160) = 0xEB00000000796164;
  *(v1 + 168) = swift_getKeyPath();
  *(v1 + 176) = 0xD000000000000017;
  *(v1 + 184) = 0x80000001C4F91710;
  *(v1 + 192) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
  *(inited + 48) = sub_1C4F00F28();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001C4F91730;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1C4F0D130;
  strcpy((v2 + 32), "motion_state");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 48) = swift_getKeyPath();
  *(inited + 72) = sub_1C4F00F28();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001C4F91750;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1C4F0CE60;
  *(v3 + 32) = 0x79745F6563616C70;
  *(v3 + 40) = 0xEA00000000006570;
  *(v3 + 48) = swift_getKeyPath();
  *(v3 + 56) = 0xD000000000000018;
  *(v3 + 64) = 0x80000001C4F91770;
  *(v3 + 72) = swift_getKeyPath();
  *(inited + 96) = sub_1C4F00F28();
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x80000001C4F91630;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1C4F17CE0;
  *(v4 + 32) = 0xD00000000000001ALL;
  *(v4 + 40) = 0x80000001C4F86DD0;
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 56) = 0xD000000000000017;
  *(v4 + 64) = 0x80000001C4F86DF0;
  *(v4 + 72) = swift_getKeyPath();
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x80000001C4F86E10;
  *(v4 + 96) = swift_getKeyPath();
  *(v4 + 104) = 0xD000000000000013;
  *(v4 + 112) = 0x80000001C4F86E30;
  *(v4 + 120) = swift_getKeyPath();
  *(v4 + 128) = 0xD000000000000017;
  *(v4 + 136) = 0x80000001C4F86E50;
  *(v4 + 144) = swift_getKeyPath();
  *(v4 + 152) = 0xD000000000000014;
  *(v4 + 160) = 0x80000001C4F86E70;
  *(v4 + 168) = swift_getKeyPath();
  *(v4 + 176) = 0xD000000000000014;
  *(v4 + 184) = 0x80000001C4F86E90;
  *(v4 + 192) = swift_getKeyPath();
  *(v4 + 200) = 0xD000000000000017;
  *(v4 + 208) = 0x80000001C4F86EB0;
  *(v4 + 216) = swift_getKeyPath();
  *(v4 + 224) = 0xD000000000000019;
  *(v4 + 232) = 0x80000001C4F86ED0;
  *(v4 + 240) = swift_getKeyPath();
  *(v4 + 248) = 0xD000000000000015;
  *(v4 + 256) = 0x80000001C4F86EF0;
  *(v4 + 264) = swift_getKeyPath();
  *(v4 + 272) = 0xD000000000000013;
  *(v4 + 280) = 0x80000001C4F86F10;
  *(v4 + 288) = swift_getKeyPath();
  *(v4 + 296) = 0xD000000000000015;
  *(v4 + 304) = 0x80000001C4F86F30;
  *(v4 + 312) = swift_getKeyPath();
  *(v4 + 320) = 0xD000000000000017;
  *(v4 + 328) = 0x80000001C4F86F50;
  *(v4 + 336) = swift_getKeyPath();
  *(v4 + 344) = 0xD000000000000012;
  *(v4 + 352) = 0x80000001C4F86F70;
  *(v4 + 360) = swift_getKeyPath();
  *(v4 + 368) = 0xD000000000000013;
  *(v4 + 376) = 0x80000001C4F86F90;
  *(v4 + 384) = swift_getKeyPath();
  *(v4 + 392) = 0xD000000000000017;
  *(v4 + 400) = 0x80000001C4F86FB0;
  *(v4 + 408) = swift_getKeyPath();
  *(v4 + 416) = 0xD000000000000016;
  *(v4 + 424) = 0x80000001C4F86FD0;
  *(v4 + 432) = swift_getKeyPath();
  *(v4 + 440) = 0x6E776F6E6B6E75;
  *(v4 + 448) = 0xE700000000000000;
  *(v4 + 456) = swift_getKeyPath();
  *(inited + 120) = sub_1C4F00F28();
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001C4F91790;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0C890;
  strcpy((v5 + 32), "semantic_type");
  *(v5 + 46) = -4864;
  *(v5 + 48) = swift_getKeyPath();
  strcpy((v5 + 56), "update_reason");
  *(v5 + 70) = -4864;
  *(v5 + 72) = swift_getKeyPath();
  strcpy((v5 + 80), "update_source");
  *(v5 + 94) = -4864;
  *(v5 + 96) = swift_getKeyPath();
  *(inited + 144) = sub_1C4F00F28();
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x80000001C4F917B0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  strcpy((v6 + 32), "inferred_mode");
  *(v6 + 46) = -4864;
  *(v6 + 48) = swift_getKeyPath();
  *(inited + 168) = sub_1C4F00F28();
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x80000001C4F8FC70;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  strcpy((v7 + 32), "wifi_connected");
  *(v7 + 47) = -18;
  *(v7 + 48) = swift_getKeyPath();
  *(inited + 192) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BAF48, &qword_1C4F1C8D8);
  result = sub_1C4F00F28();
  qword_1EC151B80 = result;
  return result;
}

uint64_t sub_1C46A1CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1C46A594C(a1, &v14 - v11, a6);
  return a7(v12);
}

uint64_t sub_1C46A1EDC()
{
  sub_1C456902C(&qword_1EC0BAF38, &qword_1C4F17DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F17CF0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001C4F8FC70;
  sub_1C456902C(&qword_1EC0BAF40, &qword_1C4F17DA8);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1C4F0CE60;
  strcpy((v1 + 32), "airplane_mode");
  *(v1 + 46) = -4864;
  *(v1 + 48) = swift_getKeyPath();
  *(v1 + 56) = 0xD000000000000012;
  *(v1 + 64) = 0x80000001C4F8FC90;
  *(v1 + 72) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
  *(inited + 48) = sub_1C4F00F28();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001C4F8FCB0;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1C4F13950;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001C4F8FCD0;
  *(v2 + 48) = swift_getKeyPath();
  strcpy((v2 + 56), "low_power_mode");
  *(v2 + 71) = -18;
  *(v2 + 72) = swift_getKeyPath();
  *(v2 + 80) = 0xD000000000000012;
  *(v2 + 88) = 0x80000001C4F8FCF0;
  *(v2 + 96) = swift_getKeyPath();
  *(v2 + 104) = 0xD000000000000015;
  *(v2 + 112) = 0x80000001C4F8FD10;
  *(v2 + 120) = swift_getKeyPath();
  *(v2 + 128) = 0xD000000000000023;
  *(v2 + 136) = 0x80000001C4F8FD30;
  *(v2 + 144) = swift_getKeyPath();
  *(inited + 72) = sub_1C4F00F28();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001C4F8FD60;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1C4F0CE60;
  *(v3 + 32) = 0xD000000000000028;
  *(v3 + 40) = 0x80000001C4F8FD80;
  *(v3 + 48) = swift_getKeyPath();
  *(v3 + 56) = 0xD000000000000036;
  *(v3 + 64) = 0x80000001C4F8FDB0;
  *(v3 + 72) = swift_getKeyPath();
  *(inited + 96) = sub_1C4F00F28();
  *(inited + 104) = 0x636E75614C707061;
  *(inited + 112) = 0xEF6C616E67695368;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x80000001C4F8A5B0;
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 56) = 0xD000000000000017;
  *(v4 + 64) = 0x80000001C4F8A5F0;
  *(v4 + 72) = swift_getKeyPath();
  *(v4 + 80) = 0xD00000000000001FLL;
  *(v4 + 88) = 0x80000001C4F8A610;
  *(v4 + 96) = swift_getKeyPath();
  *(inited + 120) = sub_1C4F00F28();
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x80000001C4F8FDF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1C4F0D130;
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = 0x80000001C4F8A360;
  *(v5 + 48) = swift_getKeyPath();
  *(inited + 144) = sub_1C4F00F28();
  *(inited + 152) = 0xD000000000000016;
  *(inited + 160) = 0x80000001C4F8FE10;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1C4F0CE60;
  *(v6 + 32) = 0xD000000000000022;
  *(v6 + 40) = 0x80000001C4F89D90;
  *(v6 + 48) = swift_getKeyPath();
  *(v6 + 56) = 0xD000000000000016;
  *(v6 + 64) = 0x80000001C4F89DC0;
  *(v6 + 72) = swift_getKeyPath();
  *(inited + 168) = sub_1C4F00F28();
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x80000001C4F8FE30;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F17D00;
  *(v7 + 32) = 0xD00000000000003CLL;
  *(v7 + 40) = 0x80000001C4F8FE50;
  *(v7 + 48) = swift_getKeyPath();
  *(v7 + 56) = 0xD00000000000003ALL;
  *(v7 + 64) = 0x80000001C4F8FE90;
  *(v7 + 72) = swift_getKeyPath();
  *(v7 + 80) = 0xD000000000000039;
  *(v7 + 88) = 0x80000001C4F8FED0;
  *(v7 + 96) = swift_getKeyPath();
  *(v7 + 104) = 0xD000000000000043;
  *(v7 + 112) = 0x80000001C4F8FF10;
  *(v7 + 120) = swift_getKeyPath();
  *(v7 + 128) = 0xD000000000000041;
  *(v7 + 136) = 0x80000001C4F8FF60;
  *(v7 + 144) = swift_getKeyPath();
  *(v7 + 152) = 0xD000000000000040;
  *(v7 + 160) = 0x80000001C4F8FFB0;
  *(v7 + 168) = swift_getKeyPath();
  *(v7 + 176) = 0xD00000000000003BLL;
  *(v7 + 184) = 0x80000001C4F90000;
  *(v7 + 192) = swift_getKeyPath();
  *(v7 + 200) = 0xD000000000000039;
  *(v7 + 208) = 0x80000001C4F90040;
  *(v7 + 216) = swift_getKeyPath();
  *(v7 + 224) = 0xD000000000000038;
  *(v7 + 232) = 0x80000001C4F90080;
  *(v7 + 240) = swift_getKeyPath();
  *(v7 + 248) = 0xD000000000000042;
  *(v7 + 256) = 0x80000001C4F900C0;
  *(v7 + 264) = swift_getKeyPath();
  *(v7 + 272) = 0xD000000000000040;
  *(v7 + 280) = 0x80000001C4F90110;
  *(v7 + 288) = swift_getKeyPath();
  *(v7 + 296) = 0xD00000000000003FLL;
  *(v7 + 304) = 0x80000001C4F90160;
  *(v7 + 312) = swift_getKeyPath();
  *(inited + 192) = sub_1C4F00F28();
  *(inited + 200) = 0xD00000000000001DLL;
  *(inited + 208) = 0x80000001C4F901A0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1C4F0C890;
  *(v8 + 32) = 0xD00000000000002ELL;
  *(v8 + 40) = 0x80000001C4F901C0;
  *(v8 + 48) = swift_getKeyPath();
  *(v8 + 56) = 0xD00000000000002CLL;
  *(v8 + 64) = 0x80000001C4F901F0;
  *(v8 + 72) = swift_getKeyPath();
  *(v8 + 80) = 0xD00000000000002BLL;
  *(v8 + 88) = 0x80000001C4F90220;
  *(v8 + 96) = swift_getKeyPath();
  *(inited + 216) = sub_1C4F00F28();
  *(inited + 224) = 0xD000000000000025;
  *(inited + 232) = 0x80000001C4F90250;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F17D10;
  *(v9 + 32) = 0xD000000000000023;
  *(v9 + 40) = 0x80000001C4F90280;
  *(v9 + 48) = swift_getKeyPath();
  *(v9 + 56) = 0xD000000000000023;
  *(v9 + 64) = 0x80000001C4F902B0;
  *(v9 + 72) = swift_getKeyPath();
  *(v9 + 80) = 0xD00000000000002DLL;
  *(v9 + 88) = 0x80000001C4F902E0;
  *(v9 + 96) = swift_getKeyPath();
  *(v9 + 104) = 0xD000000000000028;
  *(v9 + 112) = 0x80000001C4F90310;
  *(v9 + 120) = swift_getKeyPath();
  *(v9 + 128) = 0xD000000000000025;
  *(v9 + 136) = 0x80000001C4F90340;
  *(v9 + 144) = swift_getKeyPath();
  *(v9 + 152) = 0xD000000000000021;
  *(v9 + 160) = 0x80000001C4F90370;
  *(v9 + 168) = swift_getKeyPath();
  *(v9 + 176) = 0xD000000000000021;
  *(v9 + 184) = 0x80000001C4F903A0;
  *(v9 + 192) = swift_getKeyPath();
  *(v9 + 200) = 0xD000000000000022;
  *(v9 + 208) = 0x80000001C4F903D0;
  *(v9 + 216) = swift_getKeyPath();
  *(v9 + 224) = 0xD000000000000026;
  *(v9 + 232) = 0x80000001C4F90400;
  *(v9 + 240) = swift_getKeyPath();
  *(v9 + 248) = 0xD00000000000002CLL;
  *(v9 + 256) = 0x80000001C4F90430;
  *(v9 + 264) = swift_getKeyPath();
  *(v9 + 272) = 0xD00000000000002CLL;
  *(v9 + 280) = 0x80000001C4F90460;
  *(v9 + 288) = swift_getKeyPath();
  *(v9 + 296) = 0xD000000000000028;
  *(v9 + 304) = 0x80000001C4F90490;
  *(v9 + 312) = swift_getKeyPath();
  *(v9 + 320) = 0xD000000000000027;
  *(v9 + 328) = 0x80000001C4F904C0;
  *(v9 + 336) = swift_getKeyPath();
  *(v9 + 344) = 0xD000000000000023;
  *(v9 + 352) = 0x80000001C4F904F0;
  *(v9 + 360) = swift_getKeyPath();
  *(v9 + 368) = 0xD000000000000023;
  *(v9 + 376) = 0x80000001C4F90520;
  *(v9 + 384) = swift_getKeyPath();
  *(v9 + 392) = 0xD00000000000002DLL;
  *(v9 + 400) = 0x80000001C4F90550;
  *(v9 + 408) = swift_getKeyPath();
  *(v9 + 416) = 0xD000000000000028;
  *(v9 + 424) = 0x80000001C4F90580;
  *(v9 + 432) = swift_getKeyPath();
  *(v9 + 440) = 0xD000000000000025;
  *(v9 + 448) = 0x80000001C4F905B0;
  *(v9 + 456) = swift_getKeyPath();
  *(v9 + 464) = 0xD000000000000021;
  *(v9 + 472) = 0x80000001C4F905E0;
  *(v9 + 480) = swift_getKeyPath();
  *(v9 + 488) = 0xD000000000000021;
  *(v9 + 496) = 0x80000001C4F90610;
  *(v9 + 504) = swift_getKeyPath();
  *(v9 + 512) = 0xD000000000000022;
  *(v9 + 520) = 0x80000001C4F90640;
  *(v9 + 528) = swift_getKeyPath();
  *(v9 + 536) = 0xD000000000000026;
  *(v9 + 544) = 0x80000001C4F90670;
  *(v9 + 552) = swift_getKeyPath();
  *(v9 + 560) = 0xD00000000000002CLL;
  *(v9 + 568) = 0x80000001C4F906A0;
  *(v9 + 576) = swift_getKeyPath();
  *(v9 + 584) = 0xD00000000000002CLL;
  *(v9 + 592) = 0x80000001C4F906D0;
  *(v9 + 600) = swift_getKeyPath();
  *(v9 + 608) = 0xD000000000000028;
  *(v9 + 616) = 0x80000001C4F90700;
  *(v9 + 624) = swift_getKeyPath();
  *(v9 + 632) = 0xD000000000000027;
  *(v9 + 640) = 0x80000001C4F90730;
  *(v9 + 648) = swift_getKeyPath();
  *(v9 + 656) = 0xD00000000000001DLL;
  *(v9 + 664) = 0x80000001C4F90760;
  *(v9 + 672) = swift_getKeyPath();
  *(v9 + 680) = 0xD000000000000022;
  *(v9 + 688) = 0x80000001C4F90780;
  *(v9 + 696) = swift_getKeyPath();
  *(v9 + 704) = 0xD00000000000001FLL;
  *(v9 + 712) = 0x80000001C4F907B0;
  *(v9 + 720) = swift_getKeyPath();
  *(v9 + 728) = 0xD00000000000001CLL;
  *(v9 + 736) = 0x80000001C4F907D0;
  *(v9 + 744) = swift_getKeyPath();
  *(v9 + 752) = 0xD000000000000020;
  *(v9 + 760) = 0x80000001C4F907F0;
  *(v9 + 768) = swift_getKeyPath();
  *(v9 + 776) = 0xD000000000000026;
  *(v9 + 784) = 0x80000001C4F90820;
  *(v9 + 792) = swift_getKeyPath();
  *(v9 + 800) = 0xD000000000000026;
  *(v9 + 808) = 0x80000001C4F90850;
  *(v9 + 816) = swift_getKeyPath();
  *(v9 + 824) = 0xD000000000000022;
  *(v9 + 832) = 0x80000001C4F90880;
  *(v9 + 840) = swift_getKeyPath();
  *(v9 + 848) = 0xD000000000000024;
  *(v9 + 856) = 0x80000001C4F908B0;
  *(v9 + 864) = swift_getKeyPath();
  *(v9 + 872) = 0xD000000000000024;
  *(v9 + 880) = 0x80000001C4F908E0;
  *(v9 + 888) = swift_getKeyPath();
  *(v9 + 896) = 0xD00000000000002ELL;
  *(v9 + 904) = 0x80000001C4F90910;
  *(v9 + 912) = swift_getKeyPath();
  *(v9 + 920) = 0xD000000000000029;
  *(v9 + 928) = 0x80000001C4F90940;
  *(v9 + 936) = swift_getKeyPath();
  *(v9 + 944) = 0xD000000000000026;
  *(v9 + 952) = 0x80000001C4F90970;
  *(v9 + 960) = swift_getKeyPath();
  *(v9 + 968) = 0xD000000000000022;
  *(v9 + 976) = 0x80000001C4F909A0;
  *(v9 + 984) = swift_getKeyPath();
  *(v9 + 992) = 0xD000000000000022;
  *(v9 + 1000) = 0x80000001C4F909D0;
  *(v9 + 1008) = swift_getKeyPath();
  *(v9 + 1016) = 0xD000000000000023;
  *(v9 + 1024) = 0x80000001C4F90A00;
  *(v9 + 1032) = swift_getKeyPath();
  *(v9 + 1040) = 0xD000000000000027;
  *(v9 + 1048) = 0x80000001C4F90A30;
  *(v9 + 1056) = swift_getKeyPath();
  *(v9 + 1064) = 0xD00000000000002DLL;
  *(v9 + 1072) = 0x80000001C4F90A60;
  *(v9 + 1080) = swift_getKeyPath();
  *(v9 + 1088) = 0xD00000000000002DLL;
  *(v9 + 1096) = 0x80000001C4F90A90;
  *(v9 + 1104) = swift_getKeyPath();
  *(v9 + 1112) = 0xD000000000000029;
  *(v9 + 1120) = 0x80000001C4F90AC0;
  *(v9 + 1128) = swift_getKeyPath();
  *(v9 + 1136) = 0xD000000000000028;
  *(v9 + 1144) = 0x80000001C4F90AF0;
  *(v9 + 1152) = swift_getKeyPath();
  *(v9 + 1160) = 0xD000000000000024;
  *(v9 + 1168) = 0x80000001C4F90B20;
  *(v9 + 1176) = swift_getKeyPath();
  *(v9 + 1184) = 0xD000000000000024;
  *(v9 + 1192) = 0x80000001C4F90B50;
  *(v9 + 1200) = swift_getKeyPath();
  *(v9 + 1208) = 0xD00000000000002ELL;
  *(v9 + 1216) = 0x80000001C4F90B80;
  *(v9 + 1224) = swift_getKeyPath();
  *(v9 + 1232) = 0xD000000000000029;
  *(v9 + 1240) = 0x80000001C4F90BB0;
  *(v9 + 1248) = swift_getKeyPath();
  *(v9 + 1256) = 0xD000000000000026;
  *(v9 + 1264) = 0x80000001C4F90BE0;
  *(v9 + 1272) = swift_getKeyPath();
  *(v9 + 1280) = 0xD000000000000022;
  *(v9 + 1288) = 0x80000001C4F90C10;
  *(v9 + 1296) = swift_getKeyPath();
  *(v9 + 1304) = 0xD000000000000022;
  *(v9 + 1312) = 0x80000001C4F90C40;
  *(v9 + 1320) = swift_getKeyPath();
  *(v9 + 1328) = 0xD000000000000023;
  *(v9 + 1336) = 0x80000001C4F90C70;
  *(v9 + 1344) = swift_getKeyPath();
  *(v9 + 1352) = 0xD000000000000027;
  *(v9 + 1360) = 0x80000001C4F90CA0;
  *(v9 + 1368) = swift_getKeyPath();
  *(v9 + 1376) = 0xD00000000000002DLL;
  *(v9 + 1384) = 0x80000001C4F90CD0;
  *(v9 + 1392) = swift_getKeyPath();
  *(v9 + 1400) = 0xD00000000000002DLL;
  *(v9 + 1408) = 0x80000001C4F90D00;
  *(v9 + 1416) = swift_getKeyPath();
  *(v9 + 1424) = 0xD000000000000029;
  *(v9 + 1432) = 0x80000001C4F90D30;
  *(v9 + 1440) = swift_getKeyPath();
  *(v9 + 1448) = 0xD000000000000028;
  *(v9 + 1456) = 0x80000001C4F90D60;
  *(v9 + 1464) = swift_getKeyPath();
  *(v9 + 1472) = 0xD00000000000001ELL;
  *(v9 + 1480) = 0x80000001C4F90D90;
  *(v9 + 1488) = swift_getKeyPath();
  *(v9 + 1496) = 0xD000000000000023;
  *(v9 + 1504) = 0x80000001C4F90DB0;
  *(v9 + 1512) = swift_getKeyPath();
  *(v9 + 1520) = 0xD000000000000020;
  *(v9 + 1528) = 0x80000001C4F90DE0;
  *(v9 + 1536) = swift_getKeyPath();
  *(v9 + 1544) = 0xD00000000000001DLL;
  *(v9 + 1552) = 0x80000001C4F90E10;
  *(v9 + 1560) = swift_getKeyPath();
  *(v9 + 1568) = 0xD000000000000021;
  *(v9 + 1576) = 0x80000001C4F90E30;
  *(v9 + 1584) = swift_getKeyPath();
  *(v9 + 1592) = 0xD000000000000027;
  *(v9 + 1600) = 0x80000001C4F90E60;
  *(v9 + 1608) = swift_getKeyPath();
  *(v9 + 1616) = 0xD000000000000027;
  *(v9 + 1624) = 0x80000001C4F90E90;
  *(v9 + 1632) = swift_getKeyPath();
  *(v9 + 1640) = 0xD000000000000023;
  *(v9 + 1648) = 0x80000001C4F90EC0;
  *(v9 + 1656) = swift_getKeyPath();
  *(v9 + 1664) = 0xD000000000000029;
  *(v9 + 1672) = 0x80000001C4F90EF0;
  *(v9 + 1680) = swift_getKeyPath();
  *(v9 + 1688) = 0xD000000000000029;
  *(v9 + 1696) = 0x80000001C4F90F20;
  *(v9 + 1704) = swift_getKeyPath();
  *(v9 + 1712) = 0xD000000000000033;
  *(v9 + 1720) = 0x80000001C4F90F50;
  *(v9 + 1728) = swift_getKeyPath();
  *(v9 + 1736) = 0xD00000000000002ELL;
  *(v9 + 1744) = 0x80000001C4F90F90;
  *(v9 + 1752) = swift_getKeyPath();
  *(v9 + 1760) = 0xD00000000000002BLL;
  *(v9 + 1768) = 0x80000001C4F90FC0;
  *(v9 + 1776) = swift_getKeyPath();
  *(v9 + 1784) = 0xD000000000000027;
  *(v9 + 1792) = 0x80000001C4F90FF0;
  *(v9 + 1800) = swift_getKeyPath();
  *(v9 + 1808) = 0xD000000000000027;
  *(v9 + 1816) = 0x80000001C4F91020;
  *(v9 + 1824) = swift_getKeyPath();
  *(v9 + 1832) = 0xD000000000000028;
  *(v9 + 1840) = 0x80000001C4F91050;
  *(v9 + 1848) = swift_getKeyPath();
  *(v9 + 1856) = 0xD00000000000002CLL;
  *(v9 + 1864) = 0x80000001C4F91080;
  *(v9 + 1872) = swift_getKeyPath();
  *(v9 + 1880) = 0xD000000000000032;
  *(v9 + 1888) = 0x80000001C4F910B0;
  *(v9 + 1896) = swift_getKeyPath();
  *(v9 + 1904) = 0xD000000000000032;
  *(v9 + 1912) = 0x80000001C4F910F0;
  *(v9 + 1920) = swift_getKeyPath();
  *(v9 + 1928) = 0xD00000000000002ELL;
  *(v9 + 1936) = 0x80000001C4F91130;
  *(v9 + 1944) = swift_getKeyPath();
  *(v9 + 1952) = 0xD00000000000002DLL;
  *(v9 + 1960) = 0x80000001C4F91160;
  *(v9 + 1968) = swift_getKeyPath();
  *(v9 + 1976) = 0xD000000000000029;
  *(v9 + 1984) = 0x80000001C4F91190;
  *(v9 + 1992) = swift_getKeyPath();
  *(v9 + 2000) = 0xD000000000000029;
  *(v9 + 2008) = 0x80000001C4F911C0;
  *(v9 + 2016) = swift_getKeyPath();
  *(v9 + 2024) = 0xD000000000000033;
  *(v9 + 2032) = 0x80000001C4F911F0;
  *(v9 + 2040) = swift_getKeyPath();
  *(v9 + 2048) = 0xD00000000000002ELL;
  *(v9 + 2056) = 0x80000001C4F91230;
  *(v9 + 2064) = swift_getKeyPath();
  *(v9 + 2072) = 0xD00000000000002BLL;
  *(v9 + 2080) = 0x80000001C4F91260;
  *(v9 + 2088) = swift_getKeyPath();
  *(v9 + 2096) = 0xD000000000000027;
  *(v9 + 2104) = 0x80000001C4F91290;
  *(v9 + 2112) = swift_getKeyPath();
  *(v9 + 2120) = 0xD000000000000027;
  *(v9 + 2128) = 0x80000001C4F912C0;
  *(v9 + 2136) = swift_getKeyPath();
  *(v9 + 2144) = 0xD000000000000028;
  *(v9 + 2152) = 0x80000001C4F912F0;
  *(v9 + 2160) = swift_getKeyPath();
  *(v9 + 2168) = 0xD00000000000002CLL;
  *(v9 + 2176) = 0x80000001C4F91320;
  *(v9 + 2184) = swift_getKeyPath();
  *(v9 + 2192) = 0xD000000000000032;
  *(v9 + 2200) = 0x80000001C4F91350;
  *(v9 + 2208) = swift_getKeyPath();
  *(v9 + 2216) = 0xD000000000000032;
  *(v9 + 2224) = 0x80000001C4F91390;
  *(v9 + 2232) = swift_getKeyPath();
  *(v9 + 2240) = 0xD00000000000002ELL;
  *(v9 + 2248) = 0x80000001C4F913D0;
  *(v9 + 2256) = swift_getKeyPath();
  *(v9 + 2264) = 0xD00000000000002DLL;
  *(v9 + 2272) = 0x80000001C4F91400;
  *(v9 + 2280) = swift_getKeyPath();
  *(v9 + 2288) = 0xD000000000000023;
  *(v9 + 2296) = 0x80000001C4F91430;
  *(v9 + 2304) = swift_getKeyPath();
  *(v9 + 2312) = 0xD000000000000028;
  *(v9 + 2320) = 0x80000001C4F91460;
  *(v9 + 2328) = swift_getKeyPath();
  *(v9 + 2336) = 0xD000000000000025;
  *(v9 + 2344) = 0x80000001C4F91490;
  *(v9 + 2352) = swift_getKeyPath();
  *(v9 + 2360) = 0xD000000000000022;
  *(v9 + 2368) = 0x80000001C4F914C0;
  *(v9 + 2376) = swift_getKeyPath();
  *(v9 + 2384) = 0xD000000000000026;
  *(v9 + 2392) = 0x80000001C4F914F0;
  *(v9 + 2400) = swift_getKeyPath();
  *(v9 + 2408) = 0xD00000000000002CLL;
  *(v9 + 2416) = 0x80000001C4F91520;
  *(v9 + 2424) = swift_getKeyPath();
  *(v9 + 2432) = 0xD00000000000002CLL;
  *(v9 + 2440) = 0x80000001C4F91550;
  *(v9 + 2448) = swift_getKeyPath();
  *(v9 + 2456) = 0xD000000000000028;
  *(v9 + 2464) = 0x80000001C4F91580;
  *(v9 + 2472) = swift_getKeyPath();
  *(inited + 240) = sub_1C4F00F28();
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x80000001C4F915B0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0C890;
  *(v10 + 32) = 0xD00000000000001CLL;
  *(v10 + 40) = 0x80000001C4F915D0;
  *(v10 + 48) = swift_getKeyPath();
  *(v10 + 56) = 0xD00000000000001DLL;
  *(v10 + 64) = 0x80000001C4F915F0;
  *(v10 + 72) = swift_getKeyPath();
  *(v10 + 80) = 0xD00000000000001DLL;
  *(v10 + 88) = 0x80000001C4F91610;
  *(v10 + 96) = swift_getKeyPath();
  *(inited + 264) = sub_1C4F00F28();
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x80000001C4F91630;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F17D20;
  *(v11 + 32) = 0xD000000000000028;
  *(v11 + 40) = 0x80000001C4F86FF0;
  *(v11 + 48) = swift_getKeyPath();
  *(v11 + 56) = 0xD00000000000002FLL;
  *(v11 + 64) = 0x80000001C4F87020;
  *(v11 + 72) = swift_getKeyPath();
  *(v11 + 80) = 0xD000000000000029;
  *(v11 + 88) = 0x80000001C4F87050;
  *(v11 + 96) = swift_getKeyPath();
  *(v11 + 104) = 0xD000000000000024;
  *(v11 + 112) = 0x80000001C4F87080;
  *(v11 + 120) = swift_getKeyPath();
  *(v11 + 128) = 0xD000000000000027;
  *(v11 + 136) = 0x80000001C4F870B0;
  *(v11 + 144) = swift_getKeyPath();
  *(v11 + 152) = 0xD000000000000025;
  *(v11 + 160) = 0x80000001C4F870E0;
  *(v11 + 168) = swift_getKeyPath();
  *(v11 + 176) = 0xD000000000000026;
  *(v11 + 184) = 0x80000001C4F87110;
  *(v11 + 192) = swift_getKeyPath();
  *(v11 + 200) = 0xD000000000000028;
  *(v11 + 208) = 0x80000001C4F87140;
  *(v11 + 216) = swift_getKeyPath();
  *(v11 + 224) = 0xD000000000000025;
  *(v11 + 232) = 0x80000001C4F87170;
  *(v11 + 240) = swift_getKeyPath();
  *(v11 + 248) = 0xD00000000000002BLL;
  *(v11 + 256) = 0x80000001C4F871A0;
  *(v11 + 264) = swift_getKeyPath();
  *(v11 + 272) = 0xD00000000000002BLL;
  *(v11 + 280) = 0x80000001C4F871D0;
  *(v11 + 288) = swift_getKeyPath();
  *(v11 + 296) = 0xD00000000000002BLL;
  *(v11 + 304) = 0x80000001C4F87200;
  *(v11 + 312) = swift_getKeyPath();
  *(v11 + 320) = 0xD00000000000002DLL;
  *(v11 + 328) = 0x80000001C4F87230;
  *(v11 + 336) = swift_getKeyPath();
  *(v11 + 344) = 0xD00000000000002FLL;
  *(v11 + 352) = 0x80000001C4F87260;
  *(v11 + 360) = swift_getKeyPath();
  *(v11 + 368) = 0xD00000000000002CLL;
  *(v11 + 376) = 0x80000001C4F87290;
  *(v11 + 384) = swift_getKeyPath();
  *(v11 + 392) = 0xD00000000000002CLL;
  *(v11 + 400) = 0x80000001C4F872C0;
  *(v11 + 408) = swift_getKeyPath();
  *(v11 + 416) = 0xD000000000000029;
  *(v11 + 424) = 0x80000001C4F872F0;
  *(v11 + 432) = swift_getKeyPath();
  *(v11 + 440) = 0xD000000000000026;
  *(v11 + 448) = 0x80000001C4F87320;
  *(v11 + 456) = swift_getKeyPath();
  *(v11 + 464) = 0xD000000000000028;
  *(v11 + 472) = 0x80000001C4F87350;
  *(v11 + 480) = swift_getKeyPath();
  *(v11 + 488) = 0xD000000000000028;
  *(v11 + 496) = 0x80000001C4F87380;
  *(v11 + 504) = swift_getKeyPath();
  *(v11 + 512) = 0xD000000000000027;
  *(v11 + 520) = 0x80000001C4F873B0;
  *(v11 + 528) = swift_getKeyPath();
  *(v11 + 536) = 0xD00000000000002ELL;
  *(v11 + 544) = 0x80000001C4F873E0;
  *(v11 + 552) = swift_getKeyPath();
  *(v11 + 560) = 0xD000000000000027;
  *(v11 + 568) = 0x80000001C4F87410;
  *(v11 + 576) = swift_getKeyPath();
  *(v11 + 584) = 0xD00000000000002ELL;
  *(v11 + 592) = 0x80000001C4F87440;
  *(v11 + 600) = swift_getKeyPath();
  *(v11 + 608) = 0xD00000000000002BLL;
  *(v11 + 616) = 0x80000001C4F87470;
  *(v11 + 624) = swift_getKeyPath();
  *(v11 + 632) = 0xD000000000000025;
  *(v11 + 640) = 0x80000001C4F874A0;
  *(v11 + 648) = swift_getKeyPath();
  *(v11 + 656) = 0xD000000000000028;
  *(v11 + 664) = 0x80000001C4F874D0;
  *(v11 + 672) = swift_getKeyPath();
  *(v11 + 680) = 0xD000000000000029;
  *(v11 + 688) = 0x80000001C4F87500;
  *(v11 + 696) = swift_getKeyPath();
  *(v11 + 704) = 0xD00000000000002BLL;
  *(v11 + 712) = 0x80000001C4F87530;
  *(v11 + 720) = swift_getKeyPath();
  *(v11 + 728) = 0xD000000000000027;
  *(v11 + 736) = 0x80000001C4F87560;
  *(v11 + 744) = swift_getKeyPath();
  *(v11 + 752) = 0xD00000000000002CLL;
  *(v11 + 760) = 0x80000001C4F87590;
  *(v11 + 768) = swift_getKeyPath();
  *(v11 + 776) = 0xD000000000000031;
  *(v11 + 784) = 0x80000001C4F875C0;
  *(v11 + 792) = swift_getKeyPath();
  *(v11 + 800) = 0xD00000000000002FLL;
  *(v11 + 808) = 0x80000001C4F87600;
  *(v11 + 816) = swift_getKeyPath();
  *(v11 + 824) = 0xD00000000000002BLL;
  *(v11 + 832) = 0x80000001C4F87630;
  *(v11 + 840) = swift_getKeyPath();
  *(v11 + 848) = 0xD000000000000029;
  *(v11 + 856) = 0x80000001C4F87660;
  *(v11 + 864) = swift_getKeyPath();
  *(v11 + 872) = 0xD000000000000027;
  *(v11 + 880) = 0x80000001C4F87690;
  *(v11 + 888) = swift_getKeyPath();
  *(v11 + 896) = 0xD000000000000028;
  *(v11 + 904) = 0x80000001C4F876C0;
  *(v11 + 912) = swift_getKeyPath();
  *(v11 + 920) = 0xD000000000000026;
  *(v11 + 928) = 0x80000001C4F876F0;
  *(v11 + 936) = swift_getKeyPath();
  *(v11 + 944) = 0xD000000000000028;
  *(v11 + 952) = 0x80000001C4F87720;
  *(v11 + 960) = swift_getKeyPath();
  *(v11 + 968) = 0xD00000000000002BLL;
  *(v11 + 976) = 0x80000001C4F87750;
  *(v11 + 984) = swift_getKeyPath();
  *(v11 + 992) = 0xD000000000000027;
  *(v11 + 1000) = 0x80000001C4F87780;
  *(v11 + 1008) = swift_getKeyPath();
  *(v11 + 1016) = 0xD000000000000024;
  *(v11 + 1024) = 0x80000001C4F877B0;
  *(v11 + 1032) = swift_getKeyPath();
  *(v11 + 1040) = 0xD00000000000002DLL;
  *(v11 + 1048) = 0x80000001C4F877E0;
  *(v11 + 1056) = swift_getKeyPath();
  *(v11 + 1064) = 0xD000000000000031;
  *(v11 + 1072) = 0x80000001C4F87810;
  *(v11 + 1080) = swift_getKeyPath();
  *(inited + 288) = sub_1C4F00F28();
  *(inited + 296) = 0xD000000000000016;
  *(inited + 304) = 0x80000001C4F91650;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0C890;
  *(v12 + 32) = 0xD000000000000011;
  *(v12 + 40) = 0x80000001C4F91670;
  *(v12 + 48) = swift_getKeyPath();
  *(v12 + 56) = 0xD000000000000014;
  *(v12 + 64) = 0x80000001C4F91690;
  *(v12 + 72) = swift_getKeyPath();
  *(v12 + 80) = 0xD000000000000011;
  *(v12 + 88) = 0x80000001C4F916B0;
  *(v12 + 96) = swift_getKeyPath();
  *(inited + 312) = sub_1C4F00F28();
  *(inited + 320) = 0xD00000000000001ELL;
  *(inited + 328) = 0x80000001C4F916D0;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0C890;
  *(v13 + 32) = 0xD00000000000002FLL;
  *(v13 + 40) = 0x80000001C4F8A210;
  *(v13 + 48) = swift_getKeyPath();
  *(v13 + 56) = 0xD00000000000002DLL;
  *(v13 + 64) = 0x80000001C4F8A240;
  *(v13 + 72) = swift_getKeyPath();
  *(v13 + 80) = 0xD00000000000002CLL;
  *(v13 + 88) = 0x80000001C4F8A270;
  *(v13 + 96) = swift_getKeyPath();
  *(inited + 336) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BAF48, &qword_1C4F1C8D8);
  result = sub_1C4F00F28();
  qword_1EC151B88 = result;
  return result;
}

uint64_t sub_1C46A4590(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_1C46A59F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore17CUFeatureProvider_config, type metadata accessor for Configuration);
  return v1;
}

uint64_t sub_1C46A45F4()
{
  v2 = v0;
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4EF9E58();
  sub_1C43FCDF8();
  v105 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v107 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v106 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = type metadata accessor for DateFetcher(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C46A51EC();
  if (!v1)
  {
    v104 = v22;
    sub_1C456902C(&qword_1EC0BAF50, &qword_1C4F1D648);
    v103 = v6;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F17D30;
    sub_1C43FBDF0();
    *(v24 + 32) = 0xD000000000000016;
    *(v24 + 40) = v25;
    type metadata accessor for ActivityIntervalSignal();
    v26 = sub_1C4572E34();
    v27 = sub_1C46A59A8(&qword_1EC0B8480, type metadata accessor for ActivityIntervalSignal, &unk_1C4F0CCE4);
    *(inited + 48) = v26;
    *(inited + 56) = v27;
    sub_1C43FBDF0();
    *(inited + 64) = 0xD00000000000001ELL;
    *(inited + 72) = v28;
    type metadata accessor for AmbientLightDistributionSignal();
    sub_1C457ECF0();
    v30 = v29;
    v31 = sub_1C46A59A8(&qword_1EC0B85C0, type metadata accessor for AmbientLightDistributionSignal, &unk_1C4F0D40C);
    *(inited + 80) = v30;
    *(inited + 88) = v31;
    sub_1C43FBDF0();
    *(inited + 96) = 0xD000000000000012;
    *(inited + 104) = v32;
    v33 = type metadata accessor for AmbientLightSignal();
    sub_1C440C428(v33);
    v34 = sub_1C4585984();
    v35 = sub_1C46A59A8(&qword_1EC0BAF58, type metadata accessor for AmbientLightSignal, &unk_1C4F0D850);
    *(inited + 112) = v34;
    *(inited + 120) = v35;
    sub_1C43FBDF0();
    *(inited + 128) = 0xD00000000000001DLL;
    *(inited + 136) = v36;
    type metadata accessor for AppCategoryDistributionSignal();
    sub_1C4590E94();
    v38 = v37;
    v39 = sub_1C46A59A8(&qword_1EC0B8D68, type metadata accessor for AppCategoryDistributionSignal, &unk_1C4F0E2AC);
    *(inited + 144) = v38;
    *(inited + 152) = v39;
    *(inited + 160) = 0x636E75614C707061;
    *(inited + 168) = 0xEF6C616E67695368;
    type metadata accessor for AppLaunchSignal();
    swift_allocObject();
    v40 = sub_1C4595FC0();
    v41 = sub_1C46A59A8(&qword_1EC0BAF60, type metadata accessor for AppLaunchSignal, &unk_1C4F0E808);
    *(inited + 176) = v40;
    *(inited + 184) = v41;
    strcpy((inited + 192), "carPlaySignal");
    *(inited + 206) = -4864;
    type metadata accessor for CarPlaySignal();
    swift_allocObject();
    v42 = sub_1C4677E18(0);
    v43 = sub_1C46A59A8(&qword_1EC0BAF68, type metadata accessor for CarPlaySignal, &unk_1C4F16BC4);
    *(inited + 208) = v42;
    *(inited + 216) = v43;
    sub_1C43FBDF0();
    *(inited + 224) = 0xD000000000000013;
    *(inited + 232) = v44;
    v45 = type metadata accessor for DeviceDisplaySignal();
    sub_1C4411A54(v45);
    v46 = sub_1C46C3CE0(0);
    v47 = sub_1C46A59A8(&qword_1EC0BAF70, type metadata accessor for DeviceDisplaySignal, &unk_1C4F1ECF8);
    *(inited + 240) = v46;
    *(inited + 248) = v47;
    sub_1C43FBDF0();
    *(inited + 256) = 0xD000000000000011;
    *(inited + 264) = v48;
    v49 = type metadata accessor for DevicePowerSignal();
    v50 = sub_1C4411A54(v49);
    v51 = sub_1C46C47FC(v50);
    v52 = sub_1C46A59A8(&qword_1EC0BAF78, type metadata accessor for DevicePowerSignal, &unk_1C4F1EF0C);
    *(inited + 272) = v51;
    *(inited + 280) = v52;
    sub_1C43FBDF0();
    *(inited + 288) = 0xD000000000000014;
    *(inited + 296) = v53;
    v54 = type metadata accessor for DeviceWirelessSignal();
    v55 = sub_1C4411A54(v54);
    v56 = sub_1C46C776C(v55);
    v57 = sub_1C46A59A8(&qword_1EC0BAF80, type metadata accessor for DeviceWirelessSignal, &unk_1C4F1F20C);
    *(inited + 304) = v56;
    *(inited + 312) = v57;
    sub_1C43FBDF0();
    *(inited + 320) = 0xD000000000000012;
    *(inited + 328) = v58;
    type metadata accessor for InferredModeSignal();
    swift_allocObject();
    v59 = sub_1C493B648(1, 0);
    v60 = sub_1C46A59A8(&qword_1EC0BAF88, type metadata accessor for InferredModeSignal, &unk_1C4F3B760);
    *(inited + 336) = v59;
    *(inited + 344) = v60;
    sub_1C43FBDF0();
    *(inited + 352) = 0xD000000000000016;
    *(inited + 360) = v61;
    v62 = type metadata accessor for LocationMetadataSignal();
    v63 = sub_1C440C428(v62);
    v64 = sub_1C49FA08C(v63);
    v65 = sub_1C46A59A8(&qword_1EC0BAF90, type metadata accessor for LocationMetadataSignal, &unk_1C4F41CD4);
    *(inited + 368) = v64;
    *(inited + 376) = v65;
    sub_1C43FBDF0();
    *(inited + 384) = 0xD000000000000013;
    *(inited + 392) = v66;
    type metadata accessor for MicroLocationSignal(0);
    swift_allocObject();
    v67 = sub_1C4A394B0();
    v68 = sub_1C46A59A8(&qword_1EC0BAF98, type metadata accessor for MicroLocationSignal, &unk_1C4F45C90);
    *(inited + 400) = v67;
    *(inited + 408) = v68;
    sub_1C43FBDF0();
    *(inited + 416) = 0xD00000000000001DLL;
    *(inited + 424) = v69;
    type metadata accessor for MotionStateDistributionSignal();
    sub_1C4A4134C();
    v71 = v70;
    v72 = sub_1C46A59A8(&qword_1EC0BAFA0, type metadata accessor for MotionStateDistributionSignal, &unk_1C4F4618C);
    *(inited + 432) = v71;
    *(inited + 440) = v72;
    sub_1C43FBDF0();
    *(inited + 448) = 0xD000000000000011;
    *(inited + 456) = v73;
    v74 = type metadata accessor for MotionStateSignal();
    sub_1C4411A54(v74);
    v75 = sub_1C4A450C4(1, 600.0);
    v76 = sub_1C46A59A8(&qword_1EC0BAFA8, type metadata accessor for MotionStateSignal, &unk_1C4F46350);
    *(inited + 464) = v75;
    *(inited + 472) = v76;
    sub_1C43FBDF0();
    *(inited + 480) = 0xD000000000000010;
    *(inited + 488) = v77;
    v78 = type metadata accessor for NowPlayingSignal();
    v79 = sub_1C440C428(v78);
    v80 = sub_1C4A4B19C(v79);
    v81 = sub_1C46A59A8(&qword_1EC0BAFB0, type metadata accessor for NowPlayingSignal, "qdH/0F\v");
    *(inited + 496) = v80;
    *(inited + 504) = v81;
    sub_1C43FBDF0();
    *(inited + 512) = 0xD000000000000011;
    *(inited + 520) = v82;
    v83 = type metadata accessor for PoiCategorySignal();
    v84 = sub_1C440C428(v83);
    *(v84 + 16) = [objc_allocWithZone(MEMORY[0x1E698F2C0]) init];
    v85 = sub_1C46A59A8(&qword_1EC0BAFB8, type metadata accessor for PoiCategorySignal, &unk_1C4F4E910);
    *(inited + 528) = v84;
    *(inited + 536) = v85;
    sub_1C43FBDF0();
    *(inited + 544) = 0xD000000000000016;
    *(inited + 552) = v86;
    type metadata accessor for SemanticLocationSignal();
    swift_allocObject();
    v87 = sub_1C4AFAB8C(0);
    v88 = sub_1C46A59A8(&qword_1EC0BAFC0, type metadata accessor for SemanticLocationSignal, &unk_1C4F50ABC);
    *(inited + 560) = v87;
    *(inited + 568) = v88;
    sub_1C43FBDF0();
    *(inited + 576) = 0xD000000000000011;
    *(inited + 584) = v89;
    sub_1C4EF9C88();
    (*(v105 + 104))(v12, *MEMORY[0x1E6969868], v7);
    sub_1C4EF9E68();
    (*(v105 + 8))(v12, v7);
    type metadata accessor for TimeAndDateSignal(0);
    v90 = swift_allocObject();
    sub_1C46A59F0(v21, v90 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher, type metadata accessor for DateFetcher);
    (*(v106 + 32))(v90 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_calendar, v17, v107);
    v91 = sub_1C46A59A8(&qword_1EC0BAFC8, type metadata accessor for TimeAndDateSignal, &unk_1C4F56B60);
    *(inited + 592) = v90;
    *(inited + 600) = v91;
    sub_1C43FBDF0();
    *(inited + 608) = 0xD00000000000001BLL;
    *(inited + 616) = v92;
    type metadata accessor for UserFocusComputedModeSignal();
    swift_allocObject();
    v93 = sub_1C4B9269C(0);
    v94 = sub_1C46A59A8(&qword_1EC0BAFD0, type metadata accessor for UserFocusComputedModeSignal, &unk_1C4F57708);
    *(inited + 624) = v93;
    *(inited + 632) = v94;
    sub_1C43FBDF0();
    *(inited + 640) = 0xD000000000000025;
    *(inited + 648) = v95;
    type metadata accessor for VirtualInteractionsDistributionSignal();
    sub_1C46A594C(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore17CUFeatureProvider_config, v103, type metadata accessor for Configuration);
    v96 = sub_1C4D2F82C(v103);
    v97 = sub_1C46A59A8(&qword_1EC0BAFD8, type metadata accessor for VirtualInteractionsDistributionSignal, &unk_1C4F6E014);
    *(inited + 656) = v96;
    *(inited + 664) = v97;
    strcpy((inited + 672), "workoutSignal");
    *(inited + 686) = -4864;
    v98 = type metadata accessor for WorkoutSignal();
    v99 = sub_1C440C428(v98);
    v100 = sub_1C4D61394(v99);
    v101 = sub_1C46A59A8(&qword_1EC0BAFE0, type metadata accessor for WorkoutSignal, &unk_1C4F70134);
    *(inited + 688) = v100;
    *(inited + 696) = v101;
    sub_1C456902C(&qword_1EC0BAFE8, &unk_1C4F1D650);
    v0 = sub_1C4F00F28();
  }

  return v0;
}

uint64_t sub_1C46A51EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    return Strong;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (v2)
  {
    v1 = v2;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    sub_1C450B034();
    v3 = swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0xE000000000000000;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0xE000000000000000;
    *(v4 + 32) = 0xD000000000000018;
    *(v4 + 40) = 0x80000001C4F917F0;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0xE000000000000000;
    *(v4 + 64) = 2;
    v1 = v3;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1C46A52B8(uint64_t a1)
{
  v3 = sub_1C46A45F4();
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);
    a1 = sub_1C46C97DC(v4, sub_1C46A564C);
  }

  return a1;
}

uint64_t sub_1C46A535C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  if (qword_1EC0B68E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4663244();
  if (!v8)
  {
    sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
    v8 = sub_1C4F00F28();
  }

  v9 = v8;
  if (a3)
  {
    if (qword_1EC0B68E8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4663244();
    if (!v10)
    {
      sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
      v10 = sub_1C4F00F28();
    }

    v9 = sub_1C46A1314(v10, v9);
  }

  ObjectType = swift_getObjectType();
  v12 = *(a2 + 16);
  *(a4 + 24) = ObjectType;
  *(a4 + 32) = v12;
  *a4 = a1;
  *(a4 + 40) = v9;
  *(a4 + 56) = 0;

  return swift_unknownObjectRetain();
}

uint64_t sub_1C46A54F0()
{
  MEMORY[0x1C6942920](v0 + 16);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17CUFeatureProvider_config);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CUFeatureProvider(uint64_t a1)
{
  result = qword_1EC0BAF18;
  if (!qword_1EC0BAF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46A55B0(uint64_t a1)
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

uint64_t sub_1C46A5654(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v67 = a5;
  sub_1C46C3CC4();
  v8 = v60;
  v9 = v62;
  v10 = v63;
  v50 = v64;
  v51 = v59;
  v52 = v65;
  v44 = v61;
  v11 = (v61 + 64) >> 6;
  v46 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = a3;

  v48 = v11;
  v49 = v60;
  if (v63)
  {
    while (1)
    {
      v12 = v9;
LABEL_7:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v51 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v51 + 56) + 8 * v14);
      v56 = *v15;
      v57 = v16;
      v58 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v50(&v53, &v56);

      v19 = v53;
      v18 = v54;
      v20 = v55;
      v21 = *v67;
      v29 = sub_1C445FAA8(v53, v54);
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((a4 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BAF30, &qword_1C4F17D98);
          sub_1C4F02468();
        }
      }

      else
      {
        sub_1C467ADC8(v32, a4 & 1, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
        v34 = sub_1C445FAA8(v19, v18);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_23;
        }

        v29 = v34;
      }

      v10 &= v10 - 1;
      v36 = *v67;
      if (v33)
      {
        v37 = *(v36[7] + 8 * v29);

        *(v36[7] + 8 * v29) = v37;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v38 = (v36[6] + 16 * v29);
        *v38 = v19;
        v38[1] = v18;
        *(v36[7] + 8 * v29) = v20;
        v39 = v36[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_22;
        }

        v36[2] = v41;
      }

      a4 = 1;
      v9 = v12;
      v11 = v48;
      v8 = v49;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_1C449BB0C();
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46A5908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C38F4(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1C46A594C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46A59A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C46A59F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void *sub_1C46A5A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a1;
  v10 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 > 0x3F)
  {
    goto LABEL_10;
  }

  if (((1 << a1) & 0xE400000000000000) != 0)
  {
    sub_1C442E860(a3, v40);
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      a4[3] = &unk_1F43E6C38;
      a4[4] = &off_1F43E6CE0;
      v13 = swift_allocObject();
      *a4 = v13;
      return memcpy((v13 + 16), __dst, 0x50uLL);
    }

    memset(__src, 0, sizeof(__src));
    sub_1C46A5E4C(__src);
    v21 = sub_1C4CB06C4(a1);
    v23 = v22;
    sub_1C450B034();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0xD000000000000037;
    *(v24 + 24) = 0x80000001C4F91840;
    v25 = v37;
    v26 = v38;
    goto LABEL_12;
  }

  if (((1 << a1) & 0x1800000000000000) == 0)
  {
LABEL_10:
    v27 = sub_1C4CB06C4(a1);
    v29 = v28;
    sub_1C46A5DF8();
    swift_allocError();
    *v30 = v27;
    v30[1] = v29;
    return swift_willThrow();
  }

  sub_1C442E860(a3, __dst);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (!swift_dynamicCast())
  {
    v31 = sub_1C4CB06C4(a1);
    v33 = v32;
    sub_1C450B034();
    swift_allocError();
    *v24 = v31;
    *(v24 + 8) = v33;
    *(v24 + 16) = 0xD000000000000024;
    *(v24 + 24) = 0x80000001C4F91810;
    v25 = v40[0];
    v26 = v40[1];
LABEL_12:
    *(v24 + 32) = v25;
    *(v24 + 48) = v26;
    *(v24 + 64) = 7;
    return swift_willThrow();
  }

  v15 = *(&__src[0] + 1);
  v36 = *&__src[0];
  v16 = __src[1];
  v17 = *&__src[2];
  v42 = type metadata accessor for CurrentTimeContextView(0);
  *&__dst[0] = v36;
  *(&__dst[0] + 1) = v15;
  __dst[1] = v16;
  *&__dst[2] = v17;
  sub_1C463F29C(a2, v12);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v18 = a1;
  v19 = v42;
  v20 = sub_1C46A5F00(__dst, v18, v12);
  if (v4)
  {
  }

  else
  {
    v34 = v20;
    a4[3] = v19;
    a4[4] = &off_1F43E6EC0;

    *a4 = v34;
  }

  return result;
}

unint64_t sub_1C46A5DF8()
{
  result = qword_1EC0BAFF0;
  if (!qword_1EC0BAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAFF0);
  }

  return result;
}

uint64_t sub_1C46A5E4C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BAFF8, qword_1C4F1D680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46A5EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C46A5F00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a3 + 112);
  if ((v8 - 254) < 2)
  {

    v9 = sub_1C4CB06C4(v4);
    v11 = v10;
    sub_1C450B034();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    strcpy((v12 + 16), "signalConfig");
    *(v12 + 29) = 0;
    *(v12 + 30) = -5120;
LABEL_6:
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    *(v12 + 48) = v20;
    *(v12 + 64) = 1;
    swift_willThrow();
    sub_1C445F57C(v3);
    return v3;
  }

  if (v8 != 3)
  {

    v16 = sub_1C4CB06C4(v4);
    v18 = v17;
    sub_1C450B034();
    swift_allocError();
    *v12 = v16;
    *(v12 + 8) = v18;
    *(v12 + 16) = 0xD000000000000018;
    *(v12 + 24) = 0x80000001C4F91960;
    goto LABEL_6;
  }

  v13 = *(a3 + 88);
  v24 = *(a3 + 80);
  v14 = a1[2];
  v15 = *a1;
  sub_1C445F57C(a3);
  *&v20 = v15;
  *(&v20 + 1) = v5;
  v21 = v14;
  v22 = v6;
  v23 = v7;
  type metadata accessor for CurrentTimeContextView(0);
  v3 = swift_allocObject();
  sub_1C46A6F68(&v20, v4, v24, v13 & 1, SBYTE1(v13));
  return v3;
}

uint64_t sub_1C46A60E8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v16 = *a1;
  v9 = *(a1 + 2);
  v10 = (v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName);
  *v10 = 0x7865646E69;
  v10[1] = 0xE500000000000000;
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___calendar;
  v12 = sub_1C4EF9F88();
  v15 = *(a1 + 24);
  sub_1C440BAA8(v4 + v11, 1, 1, v12);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames) = 0;
  *(v4 + 16) = v16;
  *(v4 + 32) = v9;
  *(v4 + 40) = v15;
  sub_1C463F300(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config);
  v13 = v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  return v4;
}

uint64_t sub_1C46A61D8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames);
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName + 8);
    *(inited + 32) = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName);
    *(inited + 40) = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448DE08();
    v2 = v5;
    *(v0 + v1) = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C46A628C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v90 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  if ((sub_1C4D0E2C0() & 1) == 0)
  {
    v86 = v12;
    v87 = v7;
    v88 = v5;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v89 = v2;
    v23 = sub_1C4F00978();
    v24 = sub_1C442B738(v23, qword_1EDE2DDE0);

    v82 = v24;
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CC8();

    v27 = &dword_1EDE2D000;
    v83 = a1;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1C441D828(*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config), *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config + 8), &v96);
      *(v28 + 12) = 2080;
      v29 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect + 8);
      v91 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect);
      LOBYTE(v92) = v29;
      v30 = sub_1C4F01198();
      v32 = sub_1C441D828(v30, v31, &v96);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1C43F8000, v25, v26, "SignalView %s: Updating %s time index feature", v28, 0x16u);
      swift_arrayDestroy();
      v27 = &dword_1EDE2D000;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v33 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect);
    v34 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect + 8);
    sub_1C4EF9CC8();
    sub_1C46A60DC(v11);
    v81 = v33;
    v80 = v34;
    v35 = sub_1C45FEF50(v17, v11, v33, v34);
    (*(v87 + 8))(v11, v88);
    v90[1](v17, v86);
    v90 = [objc_opt_self() featureValueWithInt64_];
    v36 = v3[4];
    v87 = v3[5];
    v88 = v36;
    v37 = v3[6];
    v38 = (v3 + *(v27 + 128));
    v39 = *v38;
    v40 = v38[1];
    v42 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName);
    v41 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName + 8);
    v43 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v79 = v39;
    v78 = v40;
    v84 = v42;
    v85 = v41;
    v44 = sub_1C4673B1C(v39, v40, v42, v41, 0, 0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v45 = [v44 viewName];
    v46 = sub_1C4F01138();
    v48 = v47;

    v49 = [v44 featureName];
    v50 = sub_1C4F01138();
    v52 = v51;

    v53 = sub_1C47DC860(v44);
    v55 = v54;
    v86 = &v78;
    MEMORY[0x1EEE9AC00](v53);
    *(&v78 - 10) = v56;
    *(&v78 - 9) = v55;
    *(&v78 - 8) = v46;
    *(&v78 - 7) = v48;
    *(&v78 - 6) = v50;
    *(&v78 - 5) = v52;
    v57 = v87;
    *(&v78 - 4) = v88;
    *(&v78 - 3) = v57;
    *(&v78 - 2) = v37;
    v58 = sub_1C49A52E4(sub_1C46A7820, (&v78 - 12));

    if (*(v58 + 16))
    {
      v59 = *(v58 + 40);

      sub_1C4577DBC();
      v60 = v59;
      v61 = v90;
      v62 = v90;
      v63 = sub_1C4F01EE8();

      v64 = v89;
      if (v63)
      {

        v65 = sub_1C4F00968();
        v66 = sub_1C4F01CC8();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v67 = 136315394;
          *(v67 + 4) = sub_1C441D828(v79, v78, &v96);
          *(v67 + 12) = 2080;
          v91 = v81;
          LOBYTE(v92) = v80;
          v68 = sub_1C4F01198();
          v70 = sub_1C441D828(v68, v69, &v96);

          *(v67 + 14) = v70;
          _os_log_impl(&dword_1C43F8000, v65, v66, "SignalView %s: Skipping update for %s time index feature since the value hasn't changed", v67, 0x16u);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C4D0E51C();
LABEL_20:

        return;
      }
    }

    else
    {

      v60 = 0;
      v64 = v89;
      v61 = v90;
    }

    v71 = v3[2];
    v72 = v3[3];
    v73 = v3[4];
    v74 = v3[5];
    v75 = v3[6];
    v91 = v71;
    v92 = v72;
    v93 = v73;
    v94 = v74;
    v95 = v75;
    sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = v84;
    *(inited + 40) = v85;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = v61;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v77 = v61;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C47D32C8();
    if (v64)
    {

      swift_setDeallocating();
      sub_1C49E1668();

      return;
    }

    swift_setDeallocating();
    sub_1C49E1668();
    sub_1C4D0E5C0();

    goto LABEL_20;
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDE2DDE0);

  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v91 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1C441D828(*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config), *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config + 8), &v91);
    _os_log_impl(&dword_1C43F8000, v19, v20, "SignalView %s: performUpdate: clearing", v21, 0xCu);
    sub_1C440962C(v22);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  sub_1C463E224();
  sub_1C4D0E478();
}

uint64_t sub_1C46A6B04()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config);

  sub_1C4607CD4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);

  return v0;
}

void sub_1C46A6BDC(uint64_t a1)
{
  _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1C4630784(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C46A6CCC(uint64_t a1)
{
  sub_1C46A628C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C46A6D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  v11 = *a1;
  swift_beginAccess();
  sub_1C4607C70(v2 + v11, v10, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v12 = sub_1C4EF9F88();
  if (sub_1C44157D4(v10, 1, v12) == 1)
  {
    sub_1C4607CD4(v10, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v13 = objc_autoreleasePoolPush();
    sub_1C4EF9F58();
    objc_autoreleasePoolPop(v13);
    sub_1C440A6B8();
    (*(v14 + 16))(v7, a2, v12);
    sub_1C440BAA8(v7, 0, 1, v12);
    swift_beginAccess();
    sub_1C4630E08(v7, v2 + v11);
    return swift_endAccess();
  }

  else
  {
    sub_1C440A6B8();
    return (*(v16 + 32))(a2, v10, v12);
  }
}

uint64_t sub_1C46A6F68(__int128 *a1, char a2, uint64_t a3, char a4, char a5)
{
  v16 = *a1;
  v11 = *(a1 + 2);
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore22CurrentTimeContextView____lazy_storage___calendar;
  v13 = sub_1C4EF9F88();
  v15 = *(a1 + 24);
  sub_1C440BAA8(v5 + v12, 1, 1, v13);
  *(v5 + 16) = v16;
  *(v5 + 32) = v11;
  *(v5 + 40) = v15;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4 & 1;
  *(v5 + 120) = a5;
  return v5;
}

id *sub_1C46A7024()
{
  v1 = *(v0 + 40);
  v30 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = sub_1C4CB06C4(*(v0 + 56));
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  v7 = sub_1C4673B1C(v3, v5, 0x7865646E69, 0xE500000000000000, 0, 0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v8 = [v7 viewName];
  v9 = sub_1C4F01138();
  v11 = v10;

  v12 = [v7 featureName];
  v13 = sub_1C4F01138();
  v15 = v14;

  v21 = sub_1C47DC860(v7);
  v22 = v16;
  v23 = v9;
  v24 = v11;
  v25 = v13;
  v26 = v15;
  v27 = v30;
  v28 = v1;
  v29 = v2;
  v17 = sub_1C49A52E4(sub_1C46A7678, v20);

  if (v17[2])
  {
    v18 = v17[5];

    v17 = [v18 int64Value];
  }

  else
  {

    sub_1C46A7690();
    swift_allocError();
    swift_willThrow();
  }

  return v17;
}

void sub_1C46A7214()
{
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v26 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  v16 = sub_1C46A7024();
  if (!v1)
  {
    v17 = v16;
    v20 = v9;
    v21 = v7;
    sub_1C4EF9CC8();
    sub_1C46A6D80(v6);
    sub_1C45FF178(v17, v12, v23, v22, v15);
    v18 = sub_1C43FFFF8();
    v19(v18);
    (*(v20 + 8))(v12, v21);
    v24 = 0;
    v25 = 256;
    type metadata accessor for BehaviorContext(0);
    swift_allocObject();
    sub_1C45D689C();
  }
}

uint64_t sub_1C46A7438()
{

  sub_1C4607CD4(v0 + 80, &qword_1EC0BAE68, &qword_1C4F17748);
  sub_1C4607CD4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22CurrentTimeContextView____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  return v0;
}

uint64_t sub_1C46A74CC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1C46A7550(uint64_t a1)
{
  sub_1C4630784(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C46A7690()
{
  result = qword_1EC0BB000;
  if (!qword_1EC0BB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentTimeContextView.CurrentTimeContextViewError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C46A77CC()
{
  result = qword_1EC0BB008;
  if (!qword_1EC0BB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB008);
  }

  return result;
}

uint64_t sub_1C46A7838(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C46A7878(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C46A78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v46 = a3;
  v53 = a2;
  v59 = a1;
  v49 = sub_1C4EFBCC8();
  sub_1C43FCDF8();
  v48 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v47 = v15;
  v58 = sub_1C4EFB078();
  sub_1C43FCDF8();
  v50 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v57 = v18;
  sub_1C4EFB768();
  sub_1C43FCDF8();
  v54 = v19;
  v55 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v66 = v8;
  if (a5)
  {
    *&v63 = a4;
    *(&v63 + 1) = a5;
    v61 = 0x454C42415424;
    v62 = 0xE600000000000000;
    v60 = *(v8 + 8);
    sub_1C4415EA8();
    sub_1C43FD438();
    a5 = v25;
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a7)
  {
LABEL_3:
    *&v63 = a6;
    *(&v63 + 1) = a7;
    v61 = 0x454C42415424;
    v62 = 0xE600000000000000;
    v60 = *(v66 + 8);
    sub_1C4415EA8();
    sub_1C43FD438();
    a7 = v26;
  }

LABEL_4:
  if (a5)
  {
    sub_1C4EFB758();
    v27 = v56;
    sub_1C4EFBFF8();
    if (v27)
    {
      (*(v55 + 8))(v24, v54);
    }

    (*(v55 + 8))(v24, v54);
  }

  else
  {
    if (!v53)
    {

      v32 = *(v66 + 8);
      v31 = *(v66 + 16);
      sub_1C450B034();
      swift_allocError();
      *v33 = v32;
      *(v33 + 8) = v31;
      *(v33 + 16) = 0xD000000000000039;
      *(v33 + 24) = 0x80000001C4F91980;
      v34 = v64;
      *(v33 + 32) = v63;
      *(v33 + 48) = v34;
      *(v33 + 64) = 3;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    MEMORY[0x1EEE9AC00](*(v66 + 8));
    v52 = v28;
    v53 = v29;
    v30 = v56;
    result = sub_1C4EFBFD8();
    if (v30)
    {
    }
  }

  if (a7)
  {
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v36 = sub_1C43FEDD4();
    v37(v36);
  }

  v38 = *(v51 + 16);
  v56 = v50 + 8;
  for (i = v51 + 48; v38; --v38)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB058();
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    sub_1C4EFBFB8();

    sub_1C4423A0C(&v63, &qword_1EC0C5040, &qword_1C4F0F950);
    v40 = sub_1C440F4C0();
    result = v41(v40);
    i += 24;
  }

  v42 = v66;
  if (*(*(v66 + 48) + 16))
  {
    v43 = v47;
    sub_1C4EFBCB8();
    v44 = swift_allocObject();
    memcpy((v44 + 16), v42, 0x48uLL);
    *(v44 + 88) = v46;
    sub_1C46A9810(v42, &v63);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = v49;
    sub_1C4EFBF98();
    (*(v48 + 8))(v43, v45);
  }

  return result;
}

void sub_1C46A7EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v4 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = &v22 - v5;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  v15 = *(v14 + 16);
  if (v15)
  {
    v25 = *(v10 + 20);
    v16 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    do
    {
      sub_1C443CCBC(v16, v13);
      v18 = sub_1C4EFBE38();
      (*(*(v18 - 8) + 16))(v8, &v13[v25], v18);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v13);
      sub_1C440BAA8(v8, 0, 1, v18);
      sub_1C4EFB498();

      sub_1C4423A0C(v8, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  if (*(v24 + 16))
  {
    v19 = *MEMORY[0x1E69A00D0];
    v20 = sub_1C4EFBF38();
    v21 = v23;
    (*(*(v20 - 8) + 104))(v23, v19, v20);
    sub_1C440BAA8(v21, 0, 1, v20);
    sub_1C4EFB478();
    sub_1C4423A0C(v21, &unk_1EC0BCAB0, &unk_1C4F111A0);
  }
}

uint64_t sub_1C46A81D4(uint64_t *a1, void *a2, uint64_t a3)
{
  v22 = a3;
  v5 = sub_1C456902C(&qword_1EC0BB048, &unk_1C4F1DC50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = *a1;
  sub_1C4EFB7C8();
  sub_1C4EFF9A8();
  sub_1C46A9848(&qword_1EDDFF9C0);
  sub_1C4EFB7B8();
  v9 = sub_1C4EFB928();
  sub_1C440BAA8(v7, 0, 1, v9);
  v23[3] = v8;
  sub_1C4EFB7F8();
  v10 = a2[3];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = type metadata accessor for ViewDatabaseArtifact.Property(0);
    v14 = *(v12 - 8);
    v13 = v12 - 8;
    v15 = *(v14 + 72);
    v16 = (((*(v14 + 80) + 32) & ~*(v14 + 80)) + v10 + 8);
    do
    {
      v17 = *v16;
      v23[0] = *(v16 - 1);
      v23[1] = v17;
      MEMORY[0x1EEE9AC00](v13);
      *(&v21 - 2) = v23;
      v18 = sub_1C44CE068();
      sub_1C4EFB7D8();
      if (!v18)
      {
        sub_1C4EFB848();
      }

      v16 = (v16 + v15);
      --v11;
    }

    while (v11);
  }

  result = v22;
  if (v22)
  {
    if (*(v22 + 16))
    {
      v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459760C(v20);
      return sub_1C4EFB7E8();
    }
  }

  return result;
}

uint64_t sub_1C46A842C()
{
  v1 = *(v0 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C46A8464()
{
  v1 = *(v0 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C46A8494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C4F919C0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C4F919E0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D756C6F43737466 && a2 == 0xEA0000000000736ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E49786966657270 && a2 == 0xED00007365786564;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x72436D6F74737563 && a2 == 0xEF4C515365746165;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E496D6F74737563 && a2 == 0xEE004C5153786564;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x73657865646E69 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C4F02938();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1C46A878C(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x736E6D756C6F63;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6D756C6F43737466;
      break;
    case 5:
      v3 = 0x786966657270;
      goto LABEL_8;
    case 6:
      result = 0x72436D6F74737563;
      break;
    case 7:
      v3 = 0x6D6F74737563;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
      break;
    case 8:
      result = 0x73657865646E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C46A88BC(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BB028, &qword_1C4F1DB28);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C46A9404();
  sub_1C4F02BF8();
  LOBYTE(v15) = 0;
  sub_1C4402E84();
  sub_1C4F02798();
  if (!v2)
  {
    v15 = v3[2];
    HIBYTE(v14) = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443C998(&qword_1EDDDBC60);
    sub_1C44069F0();
    sub_1C4F027E8();
    LOBYTE(v15) = 2;
    sub_1C4402E84();
    sub_1C4F02798();
    v15 = v3[5];
    HIBYTE(v14) = 3;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4402E98();
    sub_1C443CF84(v11);
    sub_1C4416F90();
    sub_1C4F027E8();
    v15 = v3[6];
    HIBYTE(v14) = 4;
    sub_1C4416F90();
    sub_1C4F02778();
    v15 = v3[7];
    HIBYTE(v14) = 5;
    sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
    sub_1C4402E98();
    sub_1C448E890(v12);
    sub_1C44069F0();
    sub_1C4F02778();
    LOBYTE(v15) = 6;
    sub_1C4402E84();
    sub_1C4F02738();
    LOBYTE(v15) = 7;
    sub_1C4402E84();
    sub_1C4F02738();
    v15 = v3[12];
    HIBYTE(v14) = 8;
    sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
    sub_1C443D174(&unk_1EC0BB030);
    sub_1C44069F0();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1C46A8BD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BB010, &unk_1C4F1DB10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C46A9404();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v29[0]) = 0;
  sub_1C440000C();
  v6 = sub_1C4F02678();
  v8 = v7;
  sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  sub_1C4410AE0(1);
  sub_1C443C998(&qword_1EDDFEA60);
  sub_1C4411A6C();
  sub_1C4402EB0();
  sub_1C4F026C8();
  v27 = v29[0];
  LOBYTE(v29[0]) = 2;
  sub_1C440000C();
  v20 = sub_1C4F02678();
  v26 = v9;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4410AE0(3);
  sub_1C4416F78();
  sub_1C443CF84(v10);
  sub_1C4411A6C();
  sub_1C4402EB0();
  sub_1C4F026C8();
  v25 = v29[0];
  sub_1C4410AE0(4);
  sub_1C4402EB0();
  sub_1C4F02658();
  v24 = v29[0];
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C4410AE0(5);
  sub_1C4416F78();
  sub_1C448E890(v11);
  sub_1C4411A6C();
  sub_1C4402EB0();
  sub_1C4F02658();
  v23 = v29[0];
  sub_1C440000C();
  v19 = sub_1C4F02618();
  v22 = v12;
  LOBYTE(v29[0]) = 7;
  sub_1C440000C();
  v18 = sub_1C4F02618();
  v21 = v13;
  sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
  v30 = 8;
  sub_1C443D174(&unk_1EDDFEA70);
  sub_1C4402EB0();
  sub_1C4F02658();
  v14 = sub_1C441936C();
  v15(v14);
  v17 = v31;
  __src[0] = v6;
  __src[1] = v8;
  __src[2] = v27;
  __src[3] = v20;
  __src[4] = v26;
  __src[5] = v25;
  __src[6] = v24;
  __src[7] = v23;
  __src[8] = v19;
  __src[9] = v22;
  __src[10] = v18;
  __src[11] = v21;
  __src[12] = v31;
  sub_1C46A94AC(__src, v29);
  sub_1C440962C(a1);
  v29[0] = v6;
  v29[1] = v8;
  v29[2] = v27;
  v29[3] = v20;
  v29[4] = v26;
  v29[5] = v25;
  v29[6] = v24;
  v29[7] = v23;
  v29[8] = v19;
  v29[9] = v22;
  v29[10] = v18;
  v29[11] = v21;
  v29[12] = v17;
  sub_1C46A94E4(v29);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_1C46A92D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46A8494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46A9300@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46178F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C46A9328(uint64_t a1)
{
  v2 = sub_1C46A9404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46A9364(uint64_t a1)
{
  v2 = sub_1C46A9404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C46A93A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C46A8BD8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

unint64_t sub_1C46A9404()
{
  result = qword_1EDDFAFD8;
  if (!qword_1EDDFAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFD8);
  }

  return result;
}

unint64_t sub_1C46A9458()
{
  result = qword_1EDDFF098[0];
  if (!qword_1EDDFF098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFF098);
  }

  return result;
}

unint64_t sub_1C46A9514()
{
  result = qword_1EC0BB038;
  if (!qword_1EC0BB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphColumns.SubgraphTripleColumn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomRowDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46A96D0()
{
  result = qword_1EC0BB040;
  if (!qword_1EC0BB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB040);
  }

  return result;
}

unint64_t sub_1C46A9728()
{
  result = qword_1EDDFD4F8;
  if (!qword_1EDDFD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD4F8);
  }

  return result;
}

unint64_t sub_1C46A9780()
{
  result = qword_1EDDFD500;
  if (!qword_1EDDFD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD500);
  }

  return result;
}

unint64_t sub_1C46A9848(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C46A98A0()
{
  v1 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v7 = sub_1C4EFBC18();
  if (v0)
  {
    (*(v3 + 8))(v6, v1);
    return sub_1C46AA374(v26);
  }

  else
  {
    v9 = v7;
    (*(v3 + 8))(v6, v1);
    sub_1C46AA374(v26);
    v10 = sub_1C4428DA0(v9);
    if (v10)
    {
      v11 = v10;
      *&v26[0] = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v10 & ~(v10 >> 63), 0);
      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = 0;
        v13 = *&v26[0];
        v24 = v11;
        v25 = v9 & 0xC000000000000001;
        v23 = v9 & 0xFFFFFFFFFFFFFF8;
        while (!__OFADD__(v12, 1))
        {
          v28 = v12 + 1;
          if (v25)
          {
            MEMORY[0x1C6940F90](v12, v9);
          }

          else
          {
            if (v12 >= *(v23 + 16))
            {
              goto LABEL_16;
            }
          }

          v14 = v9;
          sub_1C493DD18();
          v16 = v15;
          v18 = v17;

          *&v26[0] = v13;
          v20 = *(v13 + 16);
          v19 = *(v13 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1C44CD9C0(v19 > 1, v20 + 1, 1);
            v13 = *&v26[0];
          }

          *(v13 + 16) = v20 + 1;
          v21 = v13 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          ++v12;
          v9 = v14;
          if (v28 == v24)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
      }

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
LABEL_14:

      return sub_1C4499940();
    }
  }

  return result;
}

uint64_t sub_1C46A9B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  sub_1C4EFBC58();
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_1C4EFB758();
  v12 = v36;
  v13 = sub_1C4EFBBB8();
  if (v12)
  {
    (*(v6 + 8))(v11, v5);
    sub_1C46AA374(v34);
  }

  else
  {
    v15 = v13;
    v32 = v5;
    v33 = a3;
    v31 = *(v6 + 8);
    v31(v11, v5);
    sub_1C46AA374(v34);
    v16 = a2;
    v17 = a2 + 56;
    v30 = v8;
    v36 = v15;
    while (sub_1C4458EE8())
    {
      sub_1C493DD18();
      v19 = v18;
      v21 = v20;
      if (*(v16 + 16))
      {
        sub_1C4F02AF8();
        sub_1C4F01298();
        v22 = sub_1C4F02B68();
        v23 = v16;
        v24 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v25 = v22 & v24;
          if (((*(v17 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
          {
            break;
          }

          v26 = (*(v23 + 48) + 16 * v25);
          if (*v26 != v19 || v26[1] != v21)
          {
            v28 = sub_1C4F02938();
            v22 = v25 + 1;
            v23 = v16;
            if ((v28 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_15;
        }
      }

      strcpy(v34, "DELETE FROM ");
      BYTE13(v34[0]) = 0;
      HIWORD(v34[0]) = -5120;
      MEMORY[0x1C6940010](v19, v21);
      v29 = v30;
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      v31(v29, v32);

LABEL_15:
    }
  }
}

uint64_t sub_1C46A9F14(uint64_t a1)
{
  result = sub_1C46A98A0();
  if (!v2)
  {
    v5 = result;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v6 = sub_1C44999E0(v5, a1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C46A9B6C(v7, v6, v1);
  }

  return result;
}

void sub_1C46AA300(uint64_t *a1@<X8>)
{
  sub_1C493DD18();
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *a1 = v3;
    a1[1] = v4;
    sub_1C493DD18();
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1C46AA374(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BC770, &qword_1C4F10DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C46AA3DC()
{
  result = qword_1EDDFCCE8;
  if (!qword_1EDDFCCE8)
  {
    sub_1C4572308(&qword_1EC0BB050, &qword_1C4F1DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCCE8);
  }

  return result;
}

void sub_1C46AA440()
{
  sub_1C43FE96C();
  v1 = v0;
  sub_1C4EFDAF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  v6 = *(v1 + 16);
  if (v6)
  {
    v28 = v5;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C459DEB0();
    v9 = sub_1C486C288();
    v10 = 0;
    v30 = v1 + 56;
    v25 = v1 + 64;
    v26 = v6;
    v11 = v1;
    v27 = v1;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v11 + 32))
      {
        v12 = v9 >> 6;
        if ((*(v30 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v11 + 36) != v7)
        {
          goto LABEL_25;
        }

        v13 = v8;
        v29 = v7;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFDAC8();
        v14 = *(v31 + 16);
        if (v14 >= *(v31 + 24) >> 1)
        {
          sub_1C459DEB0();
        }

        *(v31 + 16) = v14 + 1;
        sub_1C43FBF6C();
        (*(v16 + 32))(v31 + v15 + *(v16 + 72) * v14, v28);
        if (v13)
        {
          goto LABEL_29;
        }

        v11 = v27;
        v17 = 1 << *(v27 + 32);
        if (v9 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v30 + 8 * v12);
        if ((v18 & (1 << v9)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v27 + 36) != v29)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v9 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v12 << 6;
          v21 = v12 + 1;
          v22 = (v25 + 8 * v12);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1C45E8E98(v9, v29, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1C45E8E98(v9, v29, 0);
        }

LABEL_19:
        if (++v10 == v26)
        {
          goto LABEL_22;
        }

        v8 = 0;
        v7 = *(v27 + 36);
        v9 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:

    sub_1C43FBC80();
  }
}

uint64_t sub_1C46AAB48(uint64_t a1, double a2)
{
  v6 = sub_1C456902C(&qword_1EC0BB1D8, &qword_1C4F1E1A8);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v90 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v89 = v11 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v73 - v14;
  v94 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FCDF8();
  v86 = v22;
  v87 = v21;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v25 = v23 - v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = *(a1 + 16);
  if (!v28 || a2 <= 0.0)
  {
    sub_1C46B6904();
    sub_1C441C114();
    swift_allocError();
    swift_willThrow();
    return v3;
  }

  v78 = &v73 - v27;
  v79 = v9;
  v80 = v2;
  v29 = v28 - 1;
  if (v28 == 1)
  {
    v56 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v93 = MEMORY[0x1E69E7CC0];
    v38 = v94;
LABEL_12:
    sub_1C4EF9BE8();
    sub_1C441E2F4();
    sub_1C46B6958(v57, v58, MEMORY[0x1E6969548]);
    result = sub_1C4F01088();
    if ((result & 1) == 0)
    {
      goto LABEL_19;
    }

    v59 = *(v16 + 32);
    v60 = v88;
    v59(v88, v20, v38);
    v94 = v59;
    v61 = v90;
    (*(v16 + 16))(v60 + *(v90 + 48), a1 + v56, v38);
    v62 = v89;
    sub_1C445FFA8(v60, v89, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v63 = *(v61 + 48);
    v64 = v78;
    v59(v78, v62, v38);
    v65 = *(v16 + 8);
    (v65)(v62 + v63, v38);
    sub_1C46B69A0(v60, v62, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v94(v64 + *(v87 + 36), v62 + *(v61 + 48), v38);
    v66 = sub_1C43FD388();
    v65(v66);
    v67 = v79;
    sub_1C46B69A0(v64, v79, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v3 = v93;
    v68 = *(v93 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v3;
    if (!isUniquelyReferenced_nonNull_native || v68 >= *(v3 + 24) >> 1)
    {
      sub_1C458B000();
      v3 = v70;
      v95 = v70;
    }

    v71 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
    sub_1C4C07838(v71, v72, 1, v67);
    return v3;
  }

  v75 = v20;
  v95 = MEMORY[0x1E69E7CC0];
  sub_1C459D2E8();
  v30 = v95;
  v31 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v77 = a1;
  v74 = v31;
  v32 = a1 + v31;
  v33 = *(v16 + 72);
  sub_1C441E2F4();
  v36 = sub_1C46B6958(v34, v35, MEMORY[0x1E6969548]);
  v84 = (v16 + 16);
  v85 = v36;
  v76 = v16;
  v82 = (v16 + 8);
  v83 = (v16 + 32);
  v37 = v30;
  v38 = v94;
  v92 = v25;
  v81 = v33;
  v39 = v83;
  while (1)
  {
    result = sub_1C4F01088();
    if ((result & 1) == 0)
    {
      break;
    }

    v91 = v29;
    v41 = *v84;
    v93 = v37;
    v42 = v88;
    v43 = sub_1C43FE5F8();
    v41(v43);
    v44 = v90;
    (v41)(v42 + *(v90 + 48), v32 + v33, v38);
    v45 = v89;
    sub_1C445FFA8(v42, v89, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v46 = *(v44 + 48);
    v47 = *v39;
    (*v39)(v92, v45, v94);
    v48 = *v82;
    (*v82)(v45 + v46, v94);
    v49 = v42;
    v50 = v92;
    v37 = v93;
    sub_1C46B69A0(v49, v45, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v47(v50 + *(v87 + 36), v45 + *(v44 + 48), v94);
    v51 = v45;
    v38 = v94;
    v48(v51, v94);
    v95 = v37;
    v53 = *(v37 + 16);
    v52 = *(v37 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_1C43FCFE8(v52);
      sub_1C459D2E8();
      v37 = v95;
    }

    *(v37 + 16) = v53 + 1;
    sub_1C43FBF6C();
    sub_1C46B69A0(v50, v37 + v54 + *(v55 + 72) * v53, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v33 = v81;
    v32 += v81;
    v29 = v91 - 1;
    if (v91 == 1)
    {
      v93 = v37;
      v16 = v76;
      a1 = v77;
      v20 = v75;
      v56 = v74;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C46AB1C8(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C46B69E8(*(v1 + 56) + 56 * v11, &__src[2]);
    __src[0] = v14;
    __src[1] = v13;
    memcpy(__dst, __src, 0x41uLL);
    sub_1C46B69E8(&__dst[16], v33);
    if (v34)
    {
      if (v34 == 1)
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46B6A20(v33);
      }

      else
      {
        sub_1C460986C(v33, v35);
        v15 = *&v35[24];
        v16 = v1;
        v17 = *&v35[40];
        v32 = sub_1C4409678(v35, *&v35[24]);
        *(&v37 + 1) = v15;
        v38 = v17;
        v1 = v16;
        v18 = sub_1C4422F90(&v36);
        (*(*(v15 - 8) + 16))(v18, v32, v15);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440962C(v35);
      }
    }

    else
    {
      sub_1C441D670(v33, &v36);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v6 &= v6 - 1;
    if (*(&v37 + 1))
    {
      sub_1C441D670(&v36, v39);
      memcpy(v35, __dst, sizeof(v35));
      sub_1C441D670(v39, &v36);
      v19 = *(v2 + 16);
      if (*(v2 + 24) <= v19)
      {
        sub_1C4679D0C(v19 + 1, 1);
        v2 = v42;
      }

      v21 = *v35;
      v20 = *&v35[8];
      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v22 = v2 + 64;
      v23 = -1 << *(v2 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (*(v2 + 48) + 16 * v26);
      *v31 = v21;
      v31[1] = v20;
      sub_1C441D670(&v36, *(v2 + 56) + 40 * v26);
      ++*(v2 + 16);
      result = sub_1C46B6A20(&v35[16]);
    }

    else
    {
      sub_1C4420C3C(__dst, &qword_1EC0BB1E8, &qword_1C4F1E1B8);
      result = sub_1C4420C3C(&v36, &qword_1EC0BB1F8, &qword_1C4F1E1C8);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C46AB538(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C46B69E8(*(a1 + 56) + 56 * v11, &__src[2]);
    __src[0] = v14;
    __src[1] = v13;
    memcpy(__dst, __src, 0x41uLL);
    sub_1C46B69E8(&__dst[16], v32);
    if (v33)
    {
      if (v33 == 1)
      {
        sub_1C441D670(v32, v35);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        sub_1C460986C(v32, v34);
        v31 = *&v34[24];
        v15 = *&v34[24];
        v16 = sub_1C4409678(v34, *&v34[24]);
        *(&v35[1] + 8) = v31;
        v17 = sub_1C4422F90(v35);
        (*(*(v15 - 8) + 16))(v17, v16, v15);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440962C(v34);
      }
    }

    else
    {
      memset(v35, 0, 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46B6A20(v32);
    }

    v6 &= v6 - 1;
    if (*(&v35[1] + 1))
    {
      sub_1C441D670(v35, v36);
      memcpy(v34, __dst, sizeof(v34));
      sub_1C441D670(v36, v35);
      v18 = *(v2 + 16);
      if (*(v2 + 24) <= v18)
      {
        sub_1C4679B08(v18 + 1, 1);
        v2 = v39;
      }

      v20 = *v34;
      v19 = *&v34[8];
      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v21 = v2 + 64;
      v22 = -1 << *(v2 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = (*(v2 + 48) + 16 * v25);
      *v30 = v20;
      v30[1] = v19;
      sub_1C441D670(v35, *(v2 + 56) + 40 * v25);
      ++*(v2 + 16);
      result = sub_1C46B6A20(&v34[16]);
    }

    else
    {
      sub_1C4420C3C(__dst, &qword_1EC0BB1E8, &qword_1C4F1E1B8);
      result = sub_1C4420C3C(v35, &qword_1EC0BB1F0, &qword_1C4F1E1C0);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C46AB8A4()
{
  v1 = v0;
  v97 = type metadata accessor for FeatureFetcher(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  v94 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  v96 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  if (qword_1EDDFF2A0 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v103 = v1;
    v11 = sub_1C44E7FAC();

    ViewGeneration.ViewClients.anyFeatureViewClient()(&v106);
    v90 = v11;

    if (!v107)
    {
      v74 = v103;
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v75 = sub_1C4F00978();
      sub_1C442B738(v75, qword_1EDDFECB8);
      sub_1C440A8C4();
      v76 = sub_1C4404C28();
      sub_1C46B6B80(v76, v77, v78);
      v79 = sub_1C4F00968();
      v80 = sub_1C4F01CD8();
      if (os_log_type_enabled(v79, v80))
      {
        sub_1C43FD084();
        v106 = sub_1C44117BC();
        *v74 = 136315138;
        v81 = (v5 + *(v97 + 24));
        v82 = *v81;
        v83 = v81[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442C6E8();
        sub_1C46B5C54(v5, v84);
        v85 = sub_1C441D828(v82, v83, &v106);

        *(v74 + 4) = v85;
        _os_log_impl(&dword_1C43F8000, v79, v80, "%s:there was no Feature View to get the artifact path", v74, 0xCu);
        sub_1C44340A8();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();

        sub_1C442B9BC();
      }

      else
      {

        sub_1C442B9BC();

        sub_1C442C6E8();
        sub_1C46B5C54(v5, v73);
      }

      return 0;
    }

    v89 = v107;
    v88 = v106;
    v12 = v109;
    v102 = v108;
    v13 = v110;
    v14 = *(v103 + *(v97 + 20));
    v99 = sub_1C4428DA0(v14);
    if (!v99)
    {
      break;
    }

    v98 = v14 & 0xC000000000000001;
    v92 = v14 & 0xFFFFFFFFFFFFFF8;
    v95 = v14;
    v91 = v14 + 32;
    v101 = v13;

    v100 = v12;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v5 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    *&v15 = 136315394;
    v93 = v15;
    while (1)
    {
      if (v98)
      {
        v16 = MEMORY[0x1C6940F90](v5, v95);
      }

      else
      {
        if (v5 >= *(v92 + 16))
        {
          goto LABEL_39;
        }

        v16 = *(v91 + 8 * v5);
      }

      v17 = v16;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v104 = v5;
      v19 = [v16 viewName];
      v20 = sub_1C4F01138();
      v22 = v21;

      v23 = [v17 featureName];
      v24 = sub_1C4F01138();
      v26 = v25;

      v27 = sub_1C47DC860(v17);
      v29 = v28;
      MEMORY[0x1EEE9AC00](v27);
      *(&v87 - 10) = v30;
      *(&v87 - 9) = v29;
      *(&v87 - 8) = v20;
      *(&v87 - 7) = v22;
      *(&v87 - 6) = v24;
      *(&v87 - 5) = v26;
      v31 = v100;
      *(&v87 - 4) = v102;
      *(&v87 - 3) = v31;
      *(&v87 - 2) = v32;
      v33 = sub_1C49A52E4(sub_1C46A76E4, (&v87 - 12));

      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = 32;
        do
        {
          v105 = *(v33 + v35);
          v36 = v105;
          v37 = *(&v105 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458B740();
            v1 = v40;
          }

          v39 = *(v1 + 16);
          v38 = *(v1 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1C43FCFE8(v38);
            sub_1C458B740();
            v1 = v41;
          }

          *(v1 + 16) = v39 + 1;
          *(v1 + 16 * v39 + 32) = v105;
          v35 += 32;
          --v34;
        }

        while (v34);

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v42 = sub_1C4F00978();
        sub_1C442B738(v42, qword_1EDDFECB8);
        sub_1C440A8C4();
        v43 = v96;
        sub_1C46B6B80(v103, v96, v44);
        v45 = v17;
        v46 = sub_1C4F00968();
        v47 = sub_1C4F01CB8();

        if (!os_log_type_enabled(v46, v47))
        {
          goto LABEL_26;
        }

        sub_1C441024C();
        v48 = swift_slowAlloc();
        v49 = sub_1C43FC11C();
        sub_1C440CB70(v49);
        sub_1C442C6E8();
        sub_1C46B5C54(v43, v50);
        v51 = sub_1C441D828(0, v39, &v106);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        v52 = [v45 string];
        sub_1C4F01138();

        v53 = sub_1C4404044();
        v56 = sub_1C441D828(v53, v54, v55);

        *(v48 + 14) = v56;
        v57 = v47;
        v58 = v46;
        v59 = "%s: collected feature %s";
      }

      else
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v60 = sub_1C4F00978();
        sub_1C442B738(v60, qword_1EDDFECB8);
        sub_1C440A8C4();
        v43 = v94;
        sub_1C46B6B80(v103, v94, v61);
        v45 = v17;
        v46 = sub_1C4F00968();
        v62 = sub_1C4F01CD8();

        if (!os_log_type_enabled(v46, v62))
        {
LABEL_26:

          sub_1C442C6E8();
          sub_1C46B5C54(v43, v72);
          goto LABEL_27;
        }

        sub_1C441024C();
        v48 = swift_slowAlloc();
        v63 = sub_1C43FC11C();
        sub_1C440CB70(v63);
        sub_1C442C6E8();
        sub_1C46B5C54(v43, v64);
        v65 = sub_1C441D828(0, v29, &v106);

        *(v48 + 4) = v65;
        *(v48 + 12) = 2080;
        v66 = [v45 featureName];
        sub_1C4F01138();

        v67 = sub_1C4404044();
        v70 = sub_1C441D828(v67, v68, v69);

        *(v48 + 14) = v70;
        v57 = v62;
        v58 = v46;
        v59 = "%s: cannot find feature %s";
      }

      _os_log_impl(&dword_1C43F8000, v58, v57, v59, v48, 0x16u);
      swift_arrayDestroy();
      v71 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v71);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

LABEL_27:
      v5 = v104;
      if (v104 == v99)
      {

        sub_1C442B9BC();

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  sub_1C442B9BC();

  v1 = MEMORY[0x1E69E7CC0];
LABEL_35:
  sub_1C46B6BD8(v88, v89);
  return v1;
}

uint64_t sub_1C46AC254()
{
  sub_1C46B5C54(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_config, type metadata accessor for Configuration);
  sub_1C440DE48();

  sub_1C440DE48();
  sub_1C440DE48();
  sub_1C440DE48();
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_valueProcessingConfig + 8);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_valueProcessingConfig + 16);

  sub_1C46B6850(v1, v2);
  return v0;
}

uint64_t sub_1C46AC344(uint64_t a1)
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

void sub_1C46AC414(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v64 = sub_1C4EFDAF8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v63 = v12 - v11;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v50 = a1;
  sub_1C46AA75C();
  v14 = v13;
  sub_1C456902C(&qword_1EC0B86C0, &unk_1C4F0D8A0);
  v15 = sub_1C4F02538();
  v16 = 0;
  v53 = v14 + 64;
  sub_1C43FD030();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v56 = v22;
  v62 = (v9 + 8);
  v57 = v22 + 64;
  v54 = v21;
  v55 = v14;
  if ((v18 & v17) != 0)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_8:
      v9 = v23 | (v16 << 6);
      v26 = (*(v14 + 48) + 16 * v9);
      v61 = *v26;
      v27 = *(*(v14 + 56) + 8 * v9);
      v28 = *(v27 + 16);
      if (v28)
      {
        v59 = v9;
        v60 = v19;
        v66 = MEMORY[0x1E69E7CC0];
        v58 = v26[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44CD9C0(0, v28, 0);
        sub_1C43FBF6C();
        v30 = v27 + v29;
        v65 = *(v31 + 72);
        v32 = *(v31 + 16);
        do
        {
          v32(v63, v30, v64);
          v33 = sub_1C4EFDAE8();
          v35 = v34;
          (*v62)(v63, v64);
          v37 = *(v66 + 16);
          v36 = *(v66 + 24);
          if (v37 >= v36 >> 1)
          {
            v39 = sub_1C43FCFE8(v36);
            sub_1C44CD9C0(v39, v37 + 1, 1);
          }

          *(v66 + 16) = v37 + 1;
          v38 = v66 + 16 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          v30 += v65;
          --v28;
        }

        while (v28);
        v15 = v56;
        v21 = v54;
        v14 = v55;
        v19 = v60;
        v40 = v58;
        v9 = v59;
      }

      else
      {
        v40 = v26[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v41 = sub_1C4499940();

      *(v57 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      v42 = (*(v15 + 48) + 16 * v9);
      *v42 = v61;
      v42[1] = v40;
      *(*(v15 + 56) + 8 * v9) = v41;
      v43 = *(v15 + 16);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      *(v15 + 16) = v45;
      if (!v19)
      {
        goto LABEL_3;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_3:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v16 >= v21)
      {
        break;
      }

      v25 = *(v53 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_8;
      }
    }

    v46 = sub_1C46AB1C8(a3);
    sub_1C46AB538(a3);
    sub_1C4406834();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C46B5D48(v15, v46);
    sub_1C4416A80();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v47 = sub_1C46B5D48(v15, v16);

    sub_1C46B4598(v50, a3);
    v48 = sub_1C46AAB48(a2, a5);
    if (v5)
    {
    }

    else
    {
      *a4 = v46;
      a4[1] = v16;
      a4[2] = v9;
      a4[3] = v47;
      a4[4] = v48;
    }
  }
}

__n128 sub_1C46AC81C@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[2].n128_u64[0];
  v10 = *v1;
  v11 = v1[1];
  sub_1C46C9AB4(v1->n128_u64[0], sub_1C46B5C4C);
  v5 = v4;
  v6 = v1->n128_u64[1];
  v14 = v1[1].n128_u64[0];
  v15 = v6;
  v7 = v1[1].n128_u64[1];
  v8 = v1[2].n128_u64[0];
  v13 = v7;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C445FFA8(&v15, v12, &qword_1EC0BB180, &unk_1C4F1E130);
  sub_1C445FFA8(&v14, v12, &qword_1EC0BB188, &unk_1C4F32380);
  sub_1C445FFA8(&v13, v12, &qword_1EC0BB188, &unk_1C4F32380);
  result = v11;
  *a1 = v10;
  a1[1] = v11;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v5;
  a1[3].n128_u64[0] = v8;
  a1[3].n128_u64[1] = 0;
  return result;
}

uint64_t sub_1C46AC918()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_1C46B6850(v1, v2);

  return v0;
}

uint64_t sub_1C46AC99C()
{
  sub_1C46AC918();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46AC9F4(uint64_t a1)
{
  result = type metadata accessor for BehaviorDigestTaskIdentifier(319);
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1C46ACB44()
{
  type metadata accessor for BehaviorDigestTaskIdentifier(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C46B6B80(v0 + qword_1EC151B98, v3 - v2, type metadata accessor for BehaviorDigestTaskIdentifier);
  sub_1C4404C28();
  return sub_1C4F01198();
}

BOOL sub_1C46ACC0C()
{
  sub_1C43FCE50();
  (*(v0 + 16))(v3);
  if (v4)
  {
    v1 = v4 != 1;
  }

  else
  {
    v1 = 1;
  }

  sub_1C440962C(v3);
  return v1;
}

uint64_t sub_1C46ACCA0(uint64_t a1)
{
  sub_1C43FBCE0();
  (*(v1 + 16))(v4);
  if (v5)
  {
    if (v5 != 1)
    {
      type metadata accessor for FeatureValue(255);
      sub_1C4F02418();
      sub_1C4572308(&qword_1EC0BB200, &qword_1C4F1E1D0);
      sub_1C4F02418();
      swift_getTupleTypeMetadata2();
      goto LABEL_7;
    }

    sub_1C4572308(&qword_1EC0BB200, &qword_1C4F1E1D0);
  }

  else
  {
    type metadata accessor for FeatureValue(255);
  }

  sub_1C4F02418();
LABEL_7:
  sub_1C448DFC8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C448DFC8();
  sub_1C4F00F58();
  swift_getWitnessTable();
  sub_1C448DFC8();
  v2 = sub_1C4F01B48();
  sub_1C440962C(v4);
  return v2;
}

uint64_t sub_1C46ACE64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    sub_1C46ACEC8(v4, a2, a3, a4);
    v7 = v8;
    *(v4 + v5) = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v7;
}

void sub_1C46ACEC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *(*a1 + 80);
  type metadata accessor for HistoricalSampleTask.SignalSpec(0, v24, *(*a1 + 88), a4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F00F78();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4F00F98();
  sub_1C4416A80();

  sub_1C43FD030();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            goto LABEL_21;
          }

          v6 = *(v24 + 64 + 8 * v11);
          ++v9;
          if (v6)
          {
            v9 = v11;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

LABEL_7:
      sub_1C445C148();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46AA440();
      v13 = v12;

      v14 = *(v13 + 16);
      v15 = *(v10 + 16);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_23;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v16 > *(v10 + 24) >> 1)
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        sub_1C458B03C(isUniquelyReferenced_nonNull_native, v18, 1, v10);
        v10 = v19;
      }

      v6 &= v6 - 1;
      if (!*(v13 + 16))
      {
        break;
      }

      v20 = (*(v10 + 24) >> 1) - *(v10 + 16);
      sub_1C4EFDAF8();
      if (v20 < v14)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v21 = *(v10 + 16);
        v22 = __OFADD__(v21, v14);
        v23 = v21 + v14;
        if (v22)
        {
          goto LABEL_25;
        }

        *(v10 + 16) = v23;
      }
    }
  }

  while (!v14);
  __break(1u);
LABEL_21:

  sub_1C4597694();
}

uint64_t sub_1C46AD198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = type metadata accessor for HistoricalSampleTask.SignalSpec(0, a3, a4, a4);
  sub_1C43FCF8C();
  v10 = v9;
  (*(v9 + 16))(&v18, a2, v8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1C43FCF8C();
  v13 = v12;
  (*(v12 + 16))(&v15, v17, TupleTypeMetadata2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  LOBYTE(a2) = a5(v8);
  (*(v13 + 8))(v17, TupleTypeMetadata2);
  (*(v10 + 8))(&v16, v8);
  return a2 & 1;
}

BOOL sub_1C46AD318()
{
  sub_1C43FCE50();
  (*(v0 + 16))(v3);
  v1 = v4 != 0;

  sub_1C440962C(v3);
  return v1;
}

uint64_t sub_1C46AD3AC()
{
  sub_1C43FBCD4();
  v1[46] = v2;
  v1[47] = v0;
  v3 = *v0;
  v1[48] = *v0;
  v4 = sub_1C4EF9BD8();
  v1[49] = v4;
  sub_1C43FCF7C(v4);
  v1[50] = v5;
  v1[51] = sub_1C43FBE7C();
  v6 = *(v3 + 80);
  v1[52] = v6;
  v1[53] = *(v6 - 8);
  v1[54] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0BB1B8, &qword_1C4F1E180);
  sub_1C43FBD18(v7);
  v1[55] = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0BB1C0, &qword_1C4F1E188);
  sub_1C43FBD18(v8);
  v1[56] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0BB1C8, &qword_1C4F1E190);
  v1[57] = v9;
  sub_1C43FBD18(v9);
  v1[58] = sub_1C43FBE7C();
  v10 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  v1[59] = v10;
  sub_1C43FCF7C(v10);
  v1[60] = v11;
  v1[61] = sub_1C43FE604();
  v1[62] = swift_task_alloc();
  v12 = sub_1C4EF9CD8();
  v1[63] = v12;
  sub_1C43FCF7C(v12);
  v1[64] = v13;
  v1[65] = sub_1C43FE604();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v14 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

void sub_1C46AD62C()
{
  v1 = (*(v0 + 376) + qword_1EC0BB058);
  swift_beginAccess();
  if (!*v1)
  {
    v62 = v1;
    v7 = *(v0 + 416);
    v8 = *(v0 + 384);
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    v10 = *(v8 + 88);
    *(v9 + 24) = v10;
    type metadata accessor for HistoricalSampleTask.SignalSpec(0, v7, v10, v11);
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v12 = 0;
    v13 = sub_1C4F00F98();

    v14 = v13 + 64;
    sub_1C4401700();
    v17 = v16 & v15;
    sub_1C442A8F4();
    v19 = v18 >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        if (!v17)
        {
          while (1)
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v22 >= v19)
            {
              goto LABEL_27;
            }

            v17 = *(v14 + 8 * v22);
            ++v20;
            if (v17)
            {
              v67 = v21;
              v20 = v22;
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

        v67 = v21;
LABEL_13:
        sub_1C445C148();
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46AA440();
        v24 = v23;
        v63 = v12;

        v25 = *(v24 + 16);
        v21 = v67;
        v26 = *(v67 + 16);
        v27 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          goto LABEL_36;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v27 > *(v67 + 24) >> 1)
        {
          if (v26 <= v27)
          {
            v29 = v26 + v25;
          }

          else
          {
            v29 = v26;
          }

          sub_1C458B03C(isUniquelyReferenced_nonNull_native, v29, 1, v67);
          v21 = v30;
        }

        v17 &= v17 - 1;
        if (!*(v24 + 16))
        {
          break;
        }

        v31 = (*(v21 + 24) >> 1) - *(v21 + 16);
        sub_1C4EFDAF8();
        if (v31 < v25)
        {
          goto LABEL_37;
        }

        swift_arrayInitWithCopy();

        v12 = v63;
        if (v25)
        {
          v32 = *(v21 + 16);
          v33 = __OFADD__(v32, v25);
          v34 = v32 + v25;
          if (v33)
          {
            goto LABEL_38;
          }

          *(v21 + 16) = v34;
        }
      }

      v12 = v63;
    }

    while (!v25);
    __break(1u);
LABEL_27:
    v35 = *(v0 + 376);

    sub_1C4597694();
    v36 = *(v35 + 32);
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = *(v0 + 512);
      v39 = *(v0 + 480);
      v65 = *(v0 + 472);
      v70 = MEMORY[0x1E69E7CC0];
      sub_1C459D270();
      v40 = v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v64 = *(v39 + 72);
      v41 = (v38 + 32);
      do
      {
        v68 = v37;
        v42 = *(v0 + 536);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 488);
        sub_1C445FFA8(v40, v43, &qword_1EC0B89E8, &unk_1C4F3E630);
        sub_1C46B69A0(v43, v45, &qword_1EC0B89E8, &unk_1C4F3E630);
        v46 = *v41;
        (*v41)(v42, v45 + *(v65 + 48), v44);
        v48 = *(v70 + 16);
        v47 = *(v70 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1C43FCFE8(v47);
          sub_1C459D270();
        }

        *(v70 + 16) = v48 + 1;
        sub_1C43FBF6C();
        v46(v70 + v49 + *(v50 + 72) * v48);
        v40 += v64;
        v37 = v68 - 1;
      }

      while (v68 != 1);
    }

    v51 = sub_1C4404044();
    sub_1C46AC414(v51, v52, v53, v54, v55);
    v56 = *(v0 + 240);
    v66 = *(v0 + 224);
    v69 = *(v0 + 208);

    v57 = *(v0 + 208);
    *(swift_task_alloc() + 16) = v0 + 208;
    sub_1C46C9AB4(v57, sub_1C46B6F4C);
    sub_1C4406834();

    v58 = *(v0 + 240);
    v59 = *(v62 + 2);
    v60 = *(v62 + 3);
    v61 = *(v62 + 1);
    *(v0 + 16) = *v62;
    *(v0 + 32) = v61;
    *(v0 + 48) = v59;
    *(v0 + 64) = v60;
    *v62 = v69;
    *(v62 + 1) = v66;
    v62[4] = v56;
    v62[5] = v57;
    v62[6] = v58;
    v62[7] = 0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v0 + 16, &qword_1EC0BB1D0, &unk_1C4F1E198);
  }

  v2 = sub_1C46ACAE4(v0 + 288);
  *(v0 + 544) = v2;
  if (*v3)
  {
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 552) = v4;
    *v4 = v5;
    v4[1] = sub_1C46ADCC0;
    sub_1C4424C8C();

    sub_1C46AEBAC();
  }

  else
  {
    (v2)(v0 + 288, 0);
    sub_1C4F024A8();
    sub_1C4424C8C();
  }
}

uint64_t sub_1C46ADCC0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 560) = v0;

  if (v0)
  {
    v7 = sub_1C46AEAB4;
  }

  else
  {
    (*(v3 + 544))();
    v7 = sub_1C46ADDD8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1C46ADDD8()
{
  v1 = v0[56];
  v2 = sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
  v3 = sub_1C440EF74();
  if (sub_1C44157D4(v3, v4, v2) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0BB1C0, &qword_1C4F1E188);
    sub_1C44607F0();
LABEL_7:
    sub_1C4F024A8();
    sub_1C4401D60();
    return;
  }

  v102 = v0[66];
  v5 = v0[63];
  v7 = v0[57];
  v6 = v0[58];
  v8 = *(v1 + *(v2 + 48));
  v9 = *(v1 + *(v2 + 64));
  v10 = *(v7 + 48);
  v11 = *(v7 + 64);
  v101 = v0;
  v12 = *(v0[64] + 32);
  v12(v6, v1, v5);
  *(v6 + v10) = v8;
  *(v6 + v11) = v9;
  v13 = *(v6 + *(v7 + 48));
  v14 = *(v6 + *(v7 + 64));
  v12(v102, v6, v5);
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    sub_1C44607F0();
    goto LABEL_7;
  }

  v104 = v14;
  v15 = v0[70];
  v16 = v0[66];
  v17 = v101[59];
  v18 = v101[55];
  *(swift_task_alloc() + 16) = v16;
  sub_1C4BABB14();

  if (sub_1C44157D4(v18, 1, v17) == 1)
  {
    sub_1C4420C3C(v101[55], &qword_1EC0BB1B8, &qword_1C4F1E180);
    goto LABEL_7;
  }

  v19 = v101[63];
  v20 = v101[64];
  v21 = v101[55];
  v22 = *v21;
  v23 = *(v101[59] + 48);
  v24 = *(v20 + 8);
  v101[71] = v24;
  v101[72] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v21 + v23, v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C45A3228();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = sub_1C45A3228();
  v30 = sub_1C46ACBD8(v26, v27, v28, v29);
  v31 = sub_1C4C34878(v30, v25);

  if ((v31 & 1) == 0 || (v36 = sub_1C46ACE30(v32, v33, v34, v35), v37 = sub_1C4C34878(v36, v26), , (v37 & 1) == 0))
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000041, 0x80000001C4F92020);
    v67 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A7C68C(v67, v25);

    sub_1C4EFDAF8();
    sub_1C443FB94();
    sub_1C46B6958(v68, v69, MEMORY[0x1E69A94B8]);
    sub_1C4404C28();
    v70 = sub_1C4F01AC8();
    v72 = v71;

    MEMORY[0x1C6940010](v70, v72);

    v73 = MEMORY[0x1C6940010](0x20202D2D20, 0xE500000000000000);
    v77 = sub_1C46ACE30(v73, v74, v75, v76);
    sub_1C4A7C68C(v77, v26);
    sub_1C4416A80();

    v78 = sub_1C4F01AC8();
    v80 = v79;

    MEMORY[0x1C6940010](v78, v80);

    goto LABEL_7;
  }

  v97 = v13;
  v38 = v101[66];
  v39 = v101[47];

  v40 = swift_task_alloc();
  *(v40 + 16) = v38;
  v41 = qword_1EC151BA0;
  v101[73] = qword_1EC151BA0;
  swift_beginAccess();
  v42 = sub_1C46B6064(sub_1C46B6F30, v40);
  v101[74] = v15;
  if (*(*(v39 + v41) + 16) >= v42)
  {
    v98 = v101[48];
    v43 = v101[47];
    sub_1C4C073D0();
    swift_endAccess();

    (*(v43 + 48))(v22);
    v96 = *(v43 + 16) + 64;
    sub_1C4401700();
    v46 = v45 & v44;
    sub_1C442A8F4();
    v95 = v47 >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = 0;
    if (!v46)
    {
      goto LABEL_13;
    }

    do
    {
      v49 = v48;
LABEL_16:
      sub_1C445C148();
      v51 = *v50;
      v52 = v50[1];
      v55 = v54 + (v53 << 6);
      v56 = *(v98 + 88);
      type metadata accessor for HistoricalSampleTask.SignalSpec(0, v57, v56, v58);
      sub_1C43FCE50();
      (*(v59 + 16))(v101 + 10, v55);
      v103 = *(v101 + 6);
      v100 = *(v101 + 5);
      v61 = v101[14];
      v60 = v101[15];
      v62 = v101[16];
      v63 = *(v101 + 136);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!v52)
      {
LABEL_20:
        v82 = v101[53];
        v81 = v101[54];
        v83 = v101[52];
        v84 = v101[47];

        sub_1C4409678((v84 + 88), *(v84 + 112));
        v101[34] = v83;
        v101[35] = *(*(v98 + 88) + 8);
        v85 = sub_1C4422F90(v101 + 31);
        (*(v82 + 16))(v85, v81, v83);
        v86 = sub_1C4422A18();
        v87(v86);
        v101[75] = v88;
        v89 = sub_1C4422A18();
        v90(v89);
        v101[76] = v91;
        v92 = swift_task_alloc();
        v101[77] = v92;
        *v92 = v101;
        v92[1] = sub_1C46AE5E0;
        sub_1C4401D60();

        __asm { BR              X5 }
      }

      v64 = v101[54];
      v99 = v101[52];
      v46 &= v46 - 1;
      *(v101 + 9) = v100;
      *(v101 + 10) = v103;
      v101[22] = v61;
      v101[23] = v60;
      v101[24] = v62;
      *(v101 + 200) = v63;
      sub_1C46B3050(v64, v51, v52, (v101 + 18), v97, v104);

      type metadata accessor for HistoricalSampleTask.SignalSpec(0, v99, v56, v65);
      sub_1C43FBCE0();
      (*(v66 + 8))(v101 + 18);
      v48 = v49;
    }

    while (v46);
LABEL_13:
    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v95)
      {
        goto LABEL_20;
      }

      v46 = *(v96 + 8 * v49);
      ++v48;
      if (v46)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C46AE5E0()
{
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  sub_1C440962C((v2 + 248));
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46AE70C()
{
  v32 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C43FBC98();
  v4(v3);

  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[71];
  if (v7)
  {
    v9 = v0[50];
    v10 = v0[51];
    v30 = v0[49];
    sub_1C441024C();
    v29 = v8;
    v11 = swift_slowAlloc();
    v31[0] = sub_1C43FC11C();
    *v11 = 136315394;
    v12 = sub_1C46ACB44();
    sub_1C441D828(v12, v13, v31);
    sub_1C4460618();
    *(v11 + 4) = v1;
    *(v11 + 12) = 2080;
    sub_1C4D3FCA0(v10);
    v14 = sub_1C4EF9B48();
    v16 = v15;
    (*(v9 + 8))(v10, v30);
    v17 = sub_1C4404044();
    v29(v17);
    v18 = sub_1C441D828(v14, v16, v31);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1C43F8000, v5, v6, "%s: logged data for %s to PET2", v11, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v19 = sub_1C4404044();
    v8(v19);
  }

  if (*(*(v0[47] + v0[73]) + 16) && (v20 = v0[74], sub_1C4F01968(), v20))
  {
    v21 = v0[71];
    v22 = v0[66];
    v23 = v0[63];
    (*(v0[53] + 8))(v0[54], v0[52]);
    v21(v22, v23);
    sub_1C4433C2C();

    sub_1C43FBDA0();
  }

  else
  {
    v25 = v0[71];
    v26 = v0[66];
    v27 = v0[63];
    (*(v0[53] + 8))(v0[54], v0[52]);
    v25(v26, v27);

    sub_1C43FC1B0();
  }

  return v24();
}

uint64_t sub_1C46AEAB4()
{
  (*(v0 + 544))();
  sub_1C4433C2C();

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C46AEBAC()
{
  sub_1C43FBCD4();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_1C456902C(&qword_1EC0BA138, &qword_1C4F1E150);
  sub_1C43FBD18(v3);
  v1[24] = sub_1C43FBE7C();
  v4 = sub_1C4EFDAF8();
  v1[25] = v4;
  sub_1C43FCF7C(v4);
  v1[26] = v5;
  v1[27] = sub_1C43FE604();
  v1[28] = swift_task_alloc();
  v6 = sub_1C4F01828();
  v1[29] = v6;
  sub_1C43FCF7C(v6);
  v1[30] = v7;
  v1[31] = sub_1C43FE604();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v8 = sub_1C456902C(&qword_1EC0BB198, &qword_1C4F1E158);
  sub_1C43FBD18(v8);
  v1[37] = sub_1C43FBE7C();
  v9 = type metadata accessor for FeatureProviderSnapshot(0);
  v1[38] = v9;
  sub_1C43FBD18(v9);
  v1[39] = sub_1C43FE604();
  v1[40] = swift_task_alloc();
  v10 = sub_1C4EF9CD8();
  v1[41] = v10;
  sub_1C43FCF7C(v10);
  v1[42] = v11;
  v1[43] = sub_1C43FBE7C();
  v12 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[44] = v12;
  sub_1C43FCF7C(v12);
  v1[45] = v13;
  v1[46] = sub_1C43FBE7C();
  v14 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C46AEE10()
{
  v3 = *(v1 + 184);
  v4 = v3[6];
  v5 = v3[7];
  v6 = *(v4 + 16);
  if (v5 == v6)
  {
    sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
    v7 = sub_1C440EF74();
    sub_1C440BAA8(v7, v8, 1, v9);
LABEL_3:
    sub_1C4412F00();

    sub_1C43FC1B0();
    goto LABEL_4;
  }

  if (v5 >= v6)
  {
LABEL_41:
    __break(1u);
    sub_1C44064A8();
    swift_once();
    v63 = sub_1C4F00978();
    sub_1C43FCEE8(v63, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v64 = sub_1C4F00968();
    v65 = sub_1C4F01CD8();

    if (sub_1C44020E0())
    {
      sub_1C43FD084();
      sub_1C44117BC();
      *isa = v85;
      v66 = sub_1C43FD388();
      v69 = sub_1C441D828(v66, v67, v68);

      *(isa + 4) = v69;
      sub_1C43FBD74(&dword_1C43F8000, v70, v71, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change preparation step). Data collection will be terminated.");
      sub_1C44340A8();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    sub_1C4434F44();
    sub_1C4406A10();
    v74 = sub_1C46B6958(v72, v73, MEMORY[0x1E69E8558]);
    v87 = sub_1C4410258(v74);
    v76 = sub_1C440D280(v87, v75);
    v77(v76);
    swift_willThrow();

    v78 = sub_1C447EFDC();
    v79(v78);
    v80 = sub_1C443F160();
    v81(v80);
    sub_1C4420C3C(v65, &qword_1EC0B84B8, &unk_1C4F0D4F0);

    sub_1C440962C((v1 + 16));
    v82 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
    sub_1C44239FC(v82, v83);
    sub_1C443211C();
    sub_1C444146C();

    sub_1C43FBDA0();
LABEL_4:

    return v10();
  }

  v12 = *(v1 + 368);
  v13 = *(v1 + 344);
  v14 = *(v1 + 352);
  v15 = *(v1 + 328);
  v16 = *(v1 + 336);
  v17 = v4 + ((*(*(v1 + 360) + 80) + 32) & ~*(*(v1 + 360) + 80)) + *(*(v1 + 360) + 72) * v5;
  v3[7] = v5 + 1;
  sub_1C445FFA8(v17, v12, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v19 = *(v16 + 16);
  v18 = v16 + 16;
  v19(v13, v12 + *(v14 + 36), v15);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C443FB94();
  sub_1C46B6958(v20, v21, MEMORY[0x1E69A94B8]);
  v22 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BB1A0, &unk_1C4F1E160);
  *(v1 + 376) = sub_1C4F00F28();
  v23 = v3[5];
  *(v1 + 384) = v23;
  v24 = *(v23 + 32);
  *(v1 + 592) = v24;
  v25 = -1;
  isa = -1 << v24;
  if (-(-1 << v24) < 64)
  {
    v25 = ~(-1 << -isa);
  }

  v26 = v25 & *(v23 + 64);
  *(v1 + 392) = v22;
  *(v1 + 400) = v22;
  v27 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (!v26)
  {
    v29 = 0;
    while (((63 - isa) >> 6) - 1 != v29)
    {
      v28 = v29 + 1;
      v26 = *(v27 + 8 * v29++ + 72);
      if (v26)
      {
        goto LABEL_15;
      }
    }

    v34 = *(v1 + 184);

    sub_1C444B0C8();
    sub_1C441EB70();
    v37 = (v35 & v36);
    v84 = *(v1 + 376);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v38 = 0;
    v85 = 136315138;
    while (v37)
    {
      v34 = *(v1 + 472);
LABEL_27:
      sub_1C4436500();
      v2 = *v42;
      *(v1 + 496) = *v42;
      v18 = v42[1];
      *(v1 + 504) = v18;
      sub_1C44951C0();
      isa = v34[2].isa;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (isa)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v43 = sub_1C43FD388();
        v45 = sub_1C445FAA8(v43, v44);
        if (v46)
        {
          v47 = sub_1C442DE54(v45);
          sub_1C442E860(v47, v1 + 56);
          sub_1C441D670((v1 + 56), v1 + 16);
          sub_1C440171C((v1 + 16));
          sub_1C46B51A0();
          sub_1C4418A14();
          v58();
          sub_1C4461F74();
          *(v1 + 560) = v84;
          *(v1 + 552) = 0;
          sub_1C440002C(v84);
          v86 = v59;
          v60 = swift_task_alloc();
          v61 = sub_1C4405A14(v60);
          *v61 = v62;
          v33 = sub_1C441F71C(v61);
          goto LABEL_16;
        }
      }

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C43FCEE8(v48, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v34 = sub_1C4F00968();
      v49 = sub_1C4F01CE8();

      if (os_log_type_enabled(v34, v49))
      {
        v50 = sub_1C43FD084();
        v3 = sub_1C43FFD34();
        *v50 = 136315138;
        v51 = sub_1C43FD388();
        v2 = sub_1C441D828(v51, v52, v53);

        *(v50 + 4) = v2;
        _os_log_impl(&dword_1C43F8000, v34, v49, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v50, 0xCu);
        sub_1C440962C(v3);
        v54 = sub_1C43FEDE8();
        MEMORY[0x1C6942830](v54);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    while (!__OFADD__(v38, 1))
    {
      sub_1C4404220();
      if (v40 == v41)
      {
        v55 = sub_1C442A3C0();
        sub_1C4420C3C(v55, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
        sub_1C4410AEC();
        v56 = sub_1C4422A18();
        v57(v56);
        *(v3 + v18) = v37;
        *(v3 + v2) = v84;
        sub_1C44183AC(v3);
        goto LABEL_3;
      }

      v37 = v34[v39 + 8].isa;
      ++v38;
      if (v37)
      {
        v38 = v39;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v28 = 0;
LABEL_15:
  *(v1 + 408) = v26;
  *(v1 + 416) = v28;
  sub_1C4408810(v27);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4411A84();
  v86 = v30;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v1 + 456) = v31;
  *v31 = v32;
  v33 = sub_1C4402EBC(v31);
LABEL_16:

  return v86(v33);
}

uint64_t sub_1C46AF850()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 464) = v0;

  if (v0)
  {

    v7 = sub_1C46B08A8;
  }

  else
  {
    v7 = sub_1C46AF958;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C46AF958()
{
  v201 = v0;
  v2 = *(v0 + 296);
  v3 = sub_1C440EF74();
  v6 = &unk_1C4F0C000;
  if (sub_1C44157D4(v3, v4, v5) == 1)
  {

    sub_1C4420C3C(v2, &qword_1EC0BB198, &qword_1C4F1E158);
  }

  else
  {
    sub_1C4586A54(v2, *(v0 + 312));
    sub_1C4404C28();
    v7 = sub_1C4EF9C68();
    v8 = *(v0 + 440);
    if (v7)
    {
      v9 = *(v0 + 320);
      v10 = *(v0 + 304);
      sub_1C4586A54(*(v0 + 312), v9);
      v11 = *(v9 + *(v10 + 20));
      v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46B5104(v12, v8);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        sub_1C4460A30();
        if (!v88)
        {
LABEL_108:
          sub_1C44064A8();
          swift_once();
        }

        v15 = sub_1C4F00978();
        sub_1C43FCEE8(v15, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v16 = sub_1C4F00968();
        v17 = sub_1C4F01CD8();

        if (sub_1C44020E0())
        {
          v18 = sub_1C43FD084();
          v1 = sub_1C43FFD34();
          v200 = v1;
          *v18 = v6[458];
          v19 = sub_1C43FE5F8();
          *(v18 + 4) = sub_1C441D828(v19, v20, v21);
          sub_1C4417FB0(&dword_1C43F8000, v22, v17, "HistoricalFeatureCollector: Signal %s did not return all requested features for this timepoint. Some features will be missing on this timepoint. Check its implementation to ensure it always emits all promised features on every snapshot.");
          sub_1C440962C(v1);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }
      }

      v23 = MEMORY[0x1E69E7CC8];
      *(v0 + 136) = MEMORY[0x1E69E7CC8];
      v24 = -1 << *(v11 + 32);
      if (-v24 < 64)
      {
        v25 = ~(-1 << -v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v11 + 64);
      sub_1C442A8F4();
      v6 = (v27 >> 6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = 0;
LABEL_14:
      v189 = v23;
LABEL_15:
      if (v26)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          sub_1C4418A14();
          v148();
          sub_1C4461F74();
          *(v0 + 560) = v193;
          *(v0 + 552) = 0;
          sub_1C440002C(v193);
          v196 = v149;
          v150 = swift_task_alloc();
          v151 = sub_1C4405A14(v150);
          *v151 = v152;
          v99 = sub_1C441F71C(v151);
          goto LABEL_66;
        }

        if (v29 >= v6)
        {
          break;
        }

        v26 = *(v11 + 64 + 8 * v29);
        ++v28;
        if (v26)
        {
          v28 = v29;
LABEL_20:
          v30 = __clz(__rbit64(v26));
          v26 &= v26 - 1;
          v31 = v30 | (v28 << 6);
          v32 = *(*(v11 + 56) + 8 * v31);
          if (v32)
          {
            v33 = (*(v11 + 48) + 16 * v31);
            v34 = v33[1];
            v194 = *v33;
            v35 = v23;
            v36 = *(v23 + 2);
            if (*(v35 + 3) <= v36)
            {
              v38 = v32;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C46795D8(v36 + 1, 1, v39, v40, v41, v42, v43, v44, v183, v184, v185, SBYTE4(v185));
              v23 = *(v0 + 136);
            }

            else
            {
              v37 = v32;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v23 = v189;
            }

            sub_1C4F02AF8();
            v193 = v34;
            sub_1C4F01298();
            v1 = v23;
            v45 = sub_1C4F02B68();
            v46 = v23 + 64;
            v47 = -1 << v23[32];
            v48 = v45 & ~v47;
            v49 = v48 >> 6;
            if (((-1 << v48) & ~*&v23[8 * (v48 >> 6) + 64]) != 0)
            {
              v50 = __clz(__rbit64((-1 << v48) & ~*&v23[8 * (v48 >> 6) + 64])) | v48 & 0x7FFFFFFFFFFFFFC0;
              v52 = v193;
              v51 = v194;
              goto LABEL_33;
            }

            v53 = 0;
            v54 = (63 - v47) >> 6;
            v52 = v193;
            v51 = v194;
            while (2)
            {
              if (++v49 == v54 && (v53 & 1) != 0)
              {
                __break(1u);
                goto LABEL_108;
              }

              v55 = v49 == v54;
              if (v49 == v54)
              {
                v49 = 0;
              }

              v53 |= v55;
              v56 = *&v46[8 * v49];
              if (v56 == -1)
              {
                continue;
              }

              break;
            }

            v50 = __clz(__rbit64(~v56)) + (v49 << 6);
LABEL_33:
            *&v46[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
            v57 = (*(v23 + 6) + 16 * v50);
            *v57 = v51;
            v57[1] = v52;
            *(*(v23 + 7) + 8 * v50) = v32;
            ++*(v23 + 2);
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      v72 = *(v0 + 440);

      v73 = 0;
      v74 = v23 + 64;
      sub_1C44141AC();
      sub_1C442A8F4();
      v77 = v76 >> 6;
      v184 = (v0 + 392);
      v195 = *(v0 + 392);
      while (v75)
      {
        v78 = v75;
LABEL_49:
        v75 = (v78 - 1) & v78;
        if (*(v72 + 16))
        {
          v193 = (v78 - 1) & v78;
          v80 = __clz(__rbit64(v78)) | (v73 << 6);
          v81 = (*(v23 + 6) + 16 * v80);
          v83 = *v81;
          v82 = v81[1];
          v84 = *(*(v23 + 7) + 8 * v80);
          sub_1C4F02AF8();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v190 = v84;
          sub_1C4F01298();
          v85 = sub_1C4F02B68();
          v86 = ~(-1 << *(v72 + 32));
          while (1)
          {
            v1 = v85 & v86;
            if (((*(v72 + 56 + (((v85 & v86) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v85 & v86)) & 1) == 0)
            {
              break;
            }

            v87 = (*(v72 + 48) + 16 * v1);
            v88 = *v87 == v83 && v87[1] == v82;
            if (!v88)
            {
              v89 = sub_1C4F02938();
              v85 = v1 + 1;
              if ((v89 & 1) == 0)
              {
                continue;
              }
            }

            v1 = *(v0 + 224);
            v185 = *(v0 + 424);
            v186 = *(v0 + 208);
            log = *(v0 + 200);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFDAC8();
            v90 = v190;
            swift_isUniquelyReferenced_nonNull_native();
            v200 = *&v195.f64[0];
            sub_1C466033C();

            (*(v186 + 8))(v1, log);
            v91 = &v200;
            v92 = vld1q_dup_f64(v91);
            v195 = v92;
            goto LABEL_59;
          }

LABEL_59:
          v23 = v189;
          v75 = v193;
        }
      }

      while (1)
      {
        v79 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_97;
        }

        if (v79 >= v77)
        {
          break;
        }

        v78 = *&v74[8 * v79];
        ++v73;
        if (v78)
        {
          v73 = v79;
          goto LABEL_49;
        }
      }

      v62 = *(v0 + 432);
      v93 = *(v0 + 320);

      sub_1C441B844();
      sub_1C46B5C54(v93, v94);
      sub_1C443E2F0();
      *v184 = v195;
      v6 = &unk_1C4F0C000;
      if (!v70)
      {
        goto LABEL_61;
      }

LABEL_41:
      v71 = *(v0 + 384);
      goto LABEL_65;
    }

    sub_1C441B844();
    sub_1C46B5C54(v58, v59);
  }

  sub_1C4460A30();
  if (!v88)
  {
    sub_1C44064A8();
    swift_once();
  }

  v60 = sub_1C4F00978();
  sub_1C43FCEE8(v60, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v61 = sub_1C4F00968();
  v62 = sub_1C4F01CE8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = sub_1C43FD084();
    v1 = sub_1C43FFD34();
    v200 = v1;
    *v63 = 136315138;
    v64 = sub_1C43FE5F8();
    v67 = sub_1C441D828(v64, v65, v66);

    *(v63 + 4) = v67;
    sub_1C4417FB0(&dword_1C43F8000, v68, v62, "HistoricalFeatureCollector: Signal %s ran out of values early or for the wrong timepoint. This timepoint will not be collected.");
    sub_1C440962C(v1);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  sub_1C443E2F0();
  if (v70)
  {
    goto LABEL_41;
  }

  do
  {
LABEL_61:
    v95 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_98;
    }

    v71 = *(v0 + 384);
    if (v95 >= (((1 << *(v0 + 592)) + 63) >> 6))
    {
      v101 = *(v0 + 184);

      sub_1C444B0C8();
      sub_1C441EB70();
      isa = (v102 & v103);
      v193 = *(v0 + 376);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v105 = 0;
      *&v106 = 136315138;
      v197 = v106;
      *&v106 = 136315394;
      v191 = v106;
      while (1)
      {
        while (1)
        {
          if (!isa)
          {
            while (!__OFADD__(v105, 1))
            {
              sub_1C4404220();
              if (v108 == v109)
              {
                v144 = sub_1C442A3C0();
                sub_1C4420C3C(v144, &qword_1EC0B84B8, &unk_1C4F0D4F0);

                sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
                sub_1C4410AEC();
                v145 = sub_1C4422A18();
                v146(v145);
                *(v1 + 1) = isa;
                *(v6 + 1) = v193;
                sub_1C44183AC(1);
                sub_1C4412F00();
                sub_1C444146C();

                sub_1C43FC1B0();
                goto LABEL_93;
              }

              isa = v101[v107 + 8].isa;
              ++v105;
              if (isa)
              {
                v105 = v107;
                goto LABEL_77;
              }
            }

            goto LABEL_99;
          }

          v101 = *(v0 + 472);
LABEL_77:
          sub_1C4436500();
          v111 = *v110;
          *(v0 + 496) = *v110;
          v1 = v110[1];
          *(v0 + 504) = v1;
          sub_1C44A1E4C();
          v112 = v101[2].isa;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v112)
          {
            break;
          }

LABEL_80:
          sub_1C4460A30();
          if (!v88)
          {
            swift_once();
          }

          v115 = sub_1C4F00978();
          sub_1C43FCEE8(v115, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v101 = sub_1C4F00968();
          v6 = sub_1C4F01CE8();

          if (sub_1C4440D08())
          {
            v116 = sub_1C43FD084();
            v117 = sub_1C43FFD34();
            v200 = v117;
            *v116 = v197;
            v125 = sub_1C445BF44(v117, v118, v119, v120, v121, v122, v123, v124, v183, v184, v185, v186, log, v189, v191, *(&v191 + 1), v192, v193, v197, *(&v197 + 1), v199);

            *(v116 + 4) = v125;
            _os_log_impl(&dword_1C43F8000, v101, v6, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v116, 0xCu);
            sub_1C443EED0();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v126 = sub_1C43FEDE8();
            MEMORY[0x1C6942830](v126);
          }

          else
          {
          }
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v113 = sub_1C445FAA8(v111, v1);
        if ((v114 & 1) == 0)
        {

          goto LABEL_80;
        }

        v127 = sub_1C442DE54(v113);
        sub_1C442E860(v127, v0 + 56);
        sub_1C441D670((v0 + 56), v0 + 16);
        sub_1C440171C((v0 + 16));
        sub_1C46B51A0();
        if (!v62)
        {
          goto LABEL_100;
        }

        *(v0 + 144) = v62;
        v189 = v62;
        v128 = v62;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        sub_1C442AB7C();
        if (swift_dynamicCast())
        {
          v154 = *(v0 + 256);
          v153 = *(v0 + 264);
          v156 = *(v0 + 232);
          v155 = *(v0 + 240);

          (*(v155 + 32))(v154, v153, v156);
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v157 = sub_1C4F00978();
          sub_1C43FCEE8(v157, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v158 = sub_1C4F00968();
          v159 = sub_1C4F01CD8();

          if (sub_1C44020E0())
          {
            sub_1C43FD084();
            v160 = sub_1C44117BC();
            v200 = v160;
            *v153 = v197;
            v168 = sub_1C445BF44(v160, v161, v162, v163, v164, v165, v166, v167, v183, v184, v185, v186, log, v189, v191, *(&v191 + 1), v192, v193, v197, *(&v197 + 1), v199);

            *(v153 + 4) = v168;
            sub_1C43FBD74(&dword_1C43F8000, v169, v170, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change preparation step). Data collection will be terminated.");
            sub_1C44340A8();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }

          sub_1C4434F44();
          sub_1C4406A10();
          v173 = sub_1C46B6958(v171, v172, MEMORY[0x1E69E8558]);
          v198 = sub_1C4410258(v173);
          v175 = sub_1C440D280(v198, v174);
          v176(v175);
          swift_willThrow();

          v177 = sub_1C447EFDC();
          v178(v177);
          v179 = sub_1C443F160();
          v180(v179);
          sub_1C4420C3C(v159, &qword_1EC0B84B8, &unk_1C4F0D4F0);

          sub_1C440962C((v0 + 16));
          v181 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
          sub_1C44239FC(v181, v182);
          sub_1C443211C();

          sub_1C43FBDA0();
LABEL_93:

          return v147();
        }

        sub_1C4460A30();
        if (!v88)
        {
          sub_1C44064A8();
          swift_once();
        }

        v129 = sub_1C4F00978();
        sub_1C43FCEE8(v129, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v130 = v62;
        v131 = v62;
        v101 = sub_1C4F00968();
        v6 = sub_1C4F01CE8();

        if (sub_1C4440D08())
        {
          sub_1C441024C();
          v132 = swift_slowAlloc();
          loga = v101;
          v101 = sub_1C4408660();
          v133 = sub_1C43FFD34();
          v200 = v133;
          *v132 = v191;
          v141 = sub_1C445BF44(v133, v134, v135, v136, v137, v138, v139, v140, v183, v184, v185, v186, loga, v189, v191, *(&v191 + 1), v192, v193, v197, *(&v197 + 1), v199);

          *(v132 + 4) = v141;
          *(v132 + 12) = 2112;
          v142 = v130;
          v143 = _swift_stdlib_bridgeErrorToNSError();
          *(v132 + 14) = v143;
          v101->isa = v143;
          v1 = log;
          _os_log_impl(&dword_1C43F8000, log, v6, "HistoricalFeatureCollector: Signal %s failed to initialize changes sequence due to: %@. It will be skipped for this timepoint.", v132, 0x16u);
          sub_1C4420C3C(v101, &qword_1EC0BDA00, &qword_1C4F10D30);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C443EED0();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        sub_1C440962C((v0 + 16));
        v62 = 0;
      }
    }

    v70 = *(v71 + 8 * v95 + 64);
    ++v69;
  }

  while (!v70);
  v69 = v95;
LABEL_65:
  *(v0 + 408) = v70;
  *(v0 + 416) = v69;
  sub_1C4408810(v71);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4411A84();
  v196 = v96;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 456) = v97;
  *v97 = v98;
  v99 = sub_1C4402EBC(v97);
LABEL_66:

  return v196(v99);
}

uint64_t sub_1C46B08A8()
{
  v92 = v0;
  v1 = *(v0 + 464);
  *(v0 + 128) = v1;
  v2 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v3 = &unk_1C4F0C000;
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 272);
    v6 = *(v0 + 232);
    v7 = *(v0 + 240);

    (*(v7 + 32))(v5, v4, v6);
    sub_1C4458484();
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  sub_1C4458484();
  if (!v8)
  {
    sub_1C44064A8();
    swift_once();
  }

  v18 = *(v0 + 464);
  v89 = sub_1C4F00978();
  sub_1C43FCEE8(v89, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = v18;
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CD8();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 464);
  v24 = &unk_1C4F0C000;
  v25 = *(v0 + 432);
  if (v22)
  {
    sub_1C441024C();
    v26 = swift_slowAlloc();
    v27 = sub_1C4408660();
    v28 = sub_1C43FFD34();
    sub_1C449DA80(v28);
    *v26 = 136315394;
    v29 = sub_1C43FE5F8();
    v32 = sub_1C441D828(v29, v30, v31);

    *(v26 + 4) = v32;
    v24 = &unk_1C4F0C000;
    *(v26 + 12) = 2112;
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v34;
    *v27 = v34;
    _os_log_impl(&dword_1C43F8000, v20, v21, "HistoricalFeatureCollector: Signal %s threw error during a timepoint. This timepoint will not be collected. %@", v26, 0x16u);
    sub_1C4420C3C(v27, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C4435858();
    v3 = &unk_1C4F0C000;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v46 = *(v0 + 416);
  v47 = (*(v0 + 408) - 1) & *(v0 + 408);
  if (!v47)
  {
    v86 = (v0 + 56);
    v88 = (v0 + 16);
    while (1)
    {
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v48 = *(v0 + 384);
      if (v49 >= (((1 << *(v0 + 592)) + 63) >> 6))
      {
        break;
      }

      v47 = *(v48 + 8 * v49 + 64);
      ++v46;
      if (v47)
      {
        v46 = v49;
        goto LABEL_23;
      }
    }

    v54 = *(v0 + 184);

    sub_1C444B0C8();
    sub_1C441EB70();
    v57 = v55 & v56;
    v83 = *(v0 + 376);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v58 = 0;
    v84 = v3[458];
    while (v57)
    {
      v54 = *(v0 + 472);
LABEL_35:
      *(v0 + 480) = v57;
      *(v0 + 488) = v58;
      v62 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v63 = (v54[6].isa + 16 * (v62 | (v58 << 6)));
      v64 = *v63;
      *(v0 + 496) = *v63;
      v25 = v63[1];
      *(v0 + 504) = v25;
      sub_1C44A1E4C();
      isa = v54[2].isa;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (isa)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v66 = sub_1C445FAA8(v64, v25);
        if (v67)
        {
          v68 = sub_1C442DE54(v66);
          sub_1C442E860(v68, v86);
          sub_1C441D670(v86, v88);
          sub_1C440171C(v88);
          sub_1C46B51A0();
          sub_1C4418A14();
          v78();
          sub_1C4461F74();
          *(v0 + 560) = v83;
          *(v0 + 552) = 0;
          sub_1C440002C(v83);
          v90 = v79;
          v80 = swift_task_alloc();
          v81 = sub_1C4405A14(v80);
          *v81 = v82;
          v53 = sub_1C441F71C(v81);
          goto LABEL_24;
        }
      }

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      sub_1C43FCEE8(v89, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v54 = sub_1C4F00968();
      v69 = sub_1C4F01CE8();

      if (os_log_type_enabled(v54, v69))
      {
        v85 = v24;
        v70 = sub_1C43FD084();
        v71 = sub_1C43FFD34();
        sub_1C449DA80(v71);
        *v70 = v84;
        v72 = sub_1C441D828(v64, v25, v91);

        *(v70 + 4) = v72;
        _os_log_impl(&dword_1C43F8000, v54, v69, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v70, 0xCu);
        sub_1C4435858();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v24 = v85;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    while (!__OFADD__(v58, 1))
    {
      sub_1C4404220();
      if (v60 == v61)
      {
        v73 = sub_1C4404DF0();
        sub_1C4420C3C(v73, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
        sub_1C4410AEC();
        v74 = sub_1C4402EE8();
        v75(v74);
        *(v25 + v58) = v24;
        sub_1C442F160(v83);
        v76 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        sub_1C44239FC(v76, v77);
        sub_1C4412F00();
        sub_1C444146C();

        sub_1C43FC1B0();
        goto LABEL_12;
      }

      v57 = v54[v59 + 8].isa;
      ++v58;
      if (v57)
      {
        v58 = v59;
        goto LABEL_35;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    sub_1C44064A8();
    swift_once();
LABEL_4:
    v9 = sub_1C4F00978();
    sub_1C43FCEE8(v9, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    v12 = sub_1C44020E0();
    v13 = *(v0 + 432);
    if (v12)
    {
      v14 = *(v0 + 424);
      v15 = sub_1C43FD084();
      v91[0] = sub_1C43FFD34();
      *v15 = v3[458];
      v16 = sub_1C441D828(v14, v13, v91);

      *(v15 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, v10, v11, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (snapshot step). Data collection will be terminated.", v15, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v17 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v17);
    }

    else
    {
    }

    v87 = *(v0 + 368);
    v35 = *(v0 + 336);
    v36 = *(v0 + 344);
    v37 = *(v0 + 328);
    v38 = *(v0 + 272);
    v40 = *(v0 + 232);
    v39 = *(v0 + 240);
    sub_1C4406A10();
    sub_1C46B6958(v41, v42, MEMORY[0x1E69E8558]);
    sub_1C441C114();
    swift_allocError();
    (*(v39 + 16))(v43, v38, v40);
    swift_willThrow();

    (*(v39 + 8))(v38, v40);
    (*(v35 + 8))(v36, v37);
    sub_1C4420C3C(v87, &qword_1EC0B84B8, &unk_1C4F0D4F0);

    sub_1C443211C();
    sub_1C444146C();

    sub_1C43FBDA0();
LABEL_12:

    return v44();
  }

  v48 = *(v0 + 384);
LABEL_23:
  *(v0 + 408) = v47;
  *(v0 + 416) = v46;
  sub_1C4408810(v48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4411A84();
  v90 = v50;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 456) = v51;
  *v51 = v52;
  v53 = sub_1C4402EBC(v51);
LABEL_24:

  return v90(v53);
}

uint64_t sub_1C46B15D4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 576) = v0;

  if (v0)
  {
    v7 = sub_1C46B2304;
  }

  else
  {
    v7 = sub_1C46B16D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C46B16D4()
{
  v138 = v0;
  v3 = *(v0 + 192);
  v4 = type metadata accessor for FeatureProviderChange(0);
  v5 = sub_1C440EF74();
  if (sub_1C44157D4(v5, v6, v4) == 1)
  {
    v7 = *(v0 + 520);

    sub_1C440962C((v0 + 16));
    v8 = *(v0 + 488);
    isa = (*(v0 + 480) - 1) & *(v0 + 480);
    v10 = *(v0 + 576);
    sub_1C444ACA4();
    v135 = 136315138;
    *&v11 = 136315394;
    v131 = v11;
    while (1)
    {
LABEL_3:
      if (isa)
      {
        v7 = *(v0 + 472);
        goto LABEL_10;
      }

      do
      {
        if (__OFADD__(v8, 1))
        {
          goto LABEL_62;
        }

        sub_1C4404220();
        if (v13 == v14)
        {
          v91 = sub_1C4404DF0();
          sub_1C4420C3C(v91, &qword_1EC0B84B8, &unk_1C4F0D4F0);

          sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
          sub_1C4410AEC();
          v92 = sub_1C4402EE8();
          v93(v92);
          *(v1 + v2) = isa;
          sub_1C442F160(v132);
          sub_1C44239FC(v133, 0);
          sub_1C4412F00();

          sub_1C43FC1B0();
          goto LABEL_58;
        }

        isa = v7[v12 + 8].isa;
        ++v8;
      }

      while (!isa);
      v8 = v12;
LABEL_10:
      *(v0 + 480) = isa;
      *(v0 + 488) = v8;
      v15 = *(v0 + 184);
      v16 = __clz(__rbit64(isa));
      isa &= isa - 1;
      v17 = v16 | (v8 << 6);
      v18 = (v7[6].isa + 16 * v17);
      v19 = *v18;
      *(v0 + 496) = *v18;
      v20 = v18[1];
      *(v0 + 504) = v20;
      *(v0 + 512) = *(v7[7].isa + v17);
      v21 = *(*(v15 + 8) + 16);
      v1 = v20;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v21)
      {
        break;
      }

LABEL_13:
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v24 = sub_1C4F00978();
      sub_1C43FCEE8(v24, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v7 = sub_1C4F00968();
      v2 = sub_1C4F01CE8();

      if (os_log_type_enabled(v7, v2))
      {
        v25 = sub_1C43FD084();
        v26 = sub_1C43FFD34();
        v34 = sub_1C4414534(v26, v27, v28, v29, v30, v31, v32, v33, log, v128, v129, v130, v131, *(&v131 + 1), v132, v133, v135);
        v36 = sub_1C441D828(v34, v1, v35);

        *(v25 + 4) = v36;
        _os_log_impl(&dword_1C43F8000, v7, v2, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v25, 0xCu);
        sub_1C44340A8();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = sub_1C445FAA8(v19, v1);
    if ((v23 & 1) == 0)
    {

      goto LABEL_13;
    }

    v37 = sub_1C442DE54(v22);
    sub_1C442E860(v37, v0 + 56);
    sub_1C441D670((v0 + 56), v0 + 16);
    sub_1C440171C((v0 + 16));
    sub_1C46B51A0();
    if (v10)
    {

      *(v0 + 144) = v10;
      v129 = v10;
      v38 = v10;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      sub_1C442AB7C();
      if (!swift_dynamicCast())
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v39 = sub_1C4F00978();
        sub_1C43FCEE8(v39, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v40 = v10;
        v7 = sub_1C4F00968();
        v2 = sub_1C4F01CE8();

        if (os_log_type_enabled(v7, v2))
        {
          sub_1C441024C();
          v41 = swift_slowAlloc();
          log = v7;
          v42 = sub_1C4408660();
          v128 = sub_1C43FFD34();
          v137 = v128;
          *v41 = v131;
          v43 = sub_1C441D828(v19, v1, &v137);

          *(v41 + 4) = v43;
          *(v41 + 12) = 2112;
          v44 = v129;
          v45 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 14) = v45;
          *v42 = v45;
          v1 = log;
          _os_log_impl(&dword_1C43F8000, log, v2, "HistoricalFeatureCollector: Signal %s failed to initialize changes sequence due to: %@. It will be skipped for this timepoint.", v41, 0x16u);
          sub_1C4420C3C(v42, &qword_1EC0BDA00, &qword_1C4F10D30);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          v7 = v128;
          sub_1C440962C(v128);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        sub_1C440962C((v0 + 16));
        v10 = 0;
        goto LABEL_3;
      }

      v97 = sub_1C4404C28();
      v98(v97);
      if (qword_1EDDFECB0 == -1)
      {
LABEL_65:
        v99 = sub_1C4F00978();
        sub_1C43FCEE8(v99, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v100 = sub_1C4F00968();
        v101 = sub_1C4F01CD8();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = sub_1C43FD084();
          v103 = sub_1C43FFD34();
          v111 = sub_1C4414534(v103, v104, v105, v106, v107, v108, v109, v110, log, v128, v129, v130, v131, *(&v131 + 1), v132, v133, v135);
          v113 = sub_1C441D828(v111, v1, v112);

          *(v102 + 4) = v113;
          _os_log_impl(&dword_1C43F8000, v100, v101, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change preparation step). Data collection will be terminated.", v102, 0xCu);
          sub_1C44340A8();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v114 = *(v0 + 368);
        sub_1C4406A10();
        v117 = sub_1C46B6958(v115, v116, MEMORY[0x1E69E8558]);
        v136 = sub_1C4410258(v117);
        v119 = sub_1C440D280(v136, v118);
        v120(v119);
        swift_willThrow();

        v121 = sub_1C447EFDC();
        v122(v121);
        v123 = sub_1C443F160();
        v124(v123);
        sub_1C4420C3C(v114, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        sub_1C440962C((v0 + 16));
        sub_1C44239FC(v133, 0);
        sub_1C443211C();
        sub_1C444146C();

        sub_1C43FBDA0();
LABEL_58:
        sub_1C44A1764();

        __asm { BRAA            X1, X16 }
      }

      goto LABEL_74;
    }

    goto LABEL_63;
  }

  v46 = *(v3 + *(v4 + 24));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46B5C54(v3, type metadata accessor for FeatureProviderChange);
  v47 = 0;
  v48 = v46 + 64;
  v135 = v46;
  sub_1C44141AC();
  v51 = v50 & v49;
  sub_1C442A8F4();
  v1 = v52 >> 6;
  sub_1C444ACA4();
  while (1)
  {
LABEL_27:
    if (v51)
    {
      v53 = v51;
      goto LABEL_33;
    }

    do
    {
      v54 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        sub_1C4418A14();
        v96();
        sub_1C4461F74();
LABEL_55:
        *(v0 + 560) = v132;
        *(v0 + 552) = v133;
        *(v0 + 544) = v130;
        v86 = swift_task_alloc();
        v87 = sub_1C4405A14(v86);
        *v87 = v88;
        sub_1C441F71C(v87);
        sub_1C44A1764();

        __asm { BRAA            X1, X16 }
      }

      if (v54 >= v1)
      {

        goto LABEL_55;
      }

      v53 = *(v48 + 8 * v54);
      ++v47;
    }

    while (!v53);
    v47 = v54;
LABEL_33:
    v55 = *(v0 + 512);
    v51 = (v53 - 1) & v53;
    if (!*(v55 + 16))
    {
      continue;
    }

    sub_1C445C148();
    v57 = *v56;
    v58 = v56[1];
    v61 = *(v60 + 8 * v59);
    sub_1C4F02AF8();
    *&v131 = v61;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v62 = sub_1C4F02B68();
    v63 = ~(-1 << *(v55 + 32));
    while (2)
    {
      v64 = *(v0 + 512);
      v65 = v62 & v63;
      if (((*(v64 + (((v62 & v63) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v62 & v63)) & 1) == 0)
      {

        goto LABEL_53;
      }

      v66 = (*(v64 + 48) + 16 * v65);
      if (*v66 != v57 || v66[1] != v58)
      {
        v68 = sub_1C4F02938();
        v62 = v65 + 1;
        if ((v68 & 1) == 0)
        {
          continue;
        }
      }

      break;
    }

    if (v61)
    {
      break;
    }

LABEL_53:
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFDAC8();
  sub_1C44239FC(v133, 0);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v130;
  sub_1C457AAB4();
  if (__OFADD__(*(v130 + 16), (v70 & 1) == 0))
  {
    __break(1u);
    goto LABEL_73;
  }

  v71 = v69;
  v72 = v70;
  sub_1C456902C(&qword_1EC0BB1A8, &qword_1C4F1E170);
  v73 = sub_1C4F02458();
  v74 = *(v0 + 168);
  if ((v73 & 1) == 0)
  {
    goto LABEL_46;
  }

  sub_1C457AAB4();
  if ((v72 & 1) == (v76 & 1))
  {
    v71 = v75;
LABEL_46:
    if ((v72 & 1) == 0)
    {
      v78 = *(v0 + 208);
      v77 = *(v0 + 216);
      v79 = *(v0 + 200);
      v74[(v71 >> 6) + 8] |= 1 << v71;
      (*(v78 + 16))(v74[6] + *(v78 + 72) * v71, v77, v79);
      *(v74[7] + 8 * v71) = MEMORY[0x1E69E7CC0];
      v80 = v74[2];
      v14 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (!v14)
      {
        v74[2] = v81;
        goto LABEL_49;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      sub_1C44064A8();
      swift_once();
      goto LABEL_65;
    }

LABEL_49:
    v130 = v74;
    v82 = (v74[7] + 8 * v71);
    v134 = v131;
    MEMORY[0x1C6940330]();
    if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    v84 = *(v0 + 208);
    v83 = *(v0 + 216);
    v85 = *(v0 + 200);
    sub_1C4F01748();

    (*(v84 + 8))(v83, v85);
    v132 = v130;
    v133 = sub_1C455B584;
    goto LABEL_27;
  }

  sub_1C44A1764();

  return sub_1C4F029F8();
}

uint64_t sub_1C46B2304()
{
  sub_1C43FBCD4();
  v0[19] = v0[72];
  v0[73] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();

  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1C46B239C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 232);

  *(v0 + 160) = v1;
  v81 = (v0 + 16);
  v3 = v1;
  v4 = &unk_1C4F0C000;
  if (swift_dynamicCast())
  {
    v79 = (v0 + 160);

    v5 = sub_1C4422A18();
    v6(v5);
    sub_1C4458484();
    if (v7)
    {
LABEL_4:
      v8 = sub_1C4F00978();
      sub_1C43FCEE8(v8, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CD8();

      v11 = sub_1C44020E0();
      v12 = *(v0 + 504);
      if (v11)
      {
        v13 = sub_1C43FD084();
        v82 = sub_1C43FFD34();
        *v13 = v4[458];
        v14 = sub_1C4423664();
        v16 = sub_1C441D828(v14, v12, v15);

        *(v13 + 4) = v16;
        sub_1C4417FB0(&dword_1C43F8000, v17, v10, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change step). Data collection will be terminated.");
        sub_1C440962C(v82);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v77 = *(v0 + 552);
      v32 = *(v0 + 368);
      v33 = *(v0 + 336);
      v75 = *(v0 + 344);
      v34 = *(v0 + 328);
      v35 = *(v0 + 240);
      v36 = *(v0 + 248);
      v37 = *(v0 + 232);
      sub_1C4406A10();
      sub_1C46B6958(v38, v39, MEMORY[0x1E69E8558]);
      sub_1C441C114();
      v40 = swift_allocError();
      v42 = sub_1C46B6F68(v40, v41);
      v43(v42, v36, v37);
      swift_willThrow();

      (*(v35 + 8))(v36, v37);
      (*(v33 + 8))(v75, v34);
      sub_1C4420C3C(v32, &qword_1EC0B84B8, &unk_1C4F0D4F0);

      sub_1C440962C(v81);
      sub_1C44239FC(v77, 0);
      sub_1C443211C();

      sub_1C43FBDA0();
LABEL_30:
      sub_1C4401D60();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {

    sub_1C4458484();
    if (!v7)
    {
      sub_1C44064A8();
      swift_once();
    }

    v74 = (v0 + 56);
    v79 = (v0 + 144);
    v18 = *(v0 + 576);
    v80 = sub_1C4F00978();
    sub_1C43FCEE8(v80, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = v18;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 576);
    v24 = *(v0 + 504);
    if (v22)
    {
      sub_1C441024C();
      v25 = swift_slowAlloc();
      v26 = sub_1C4408660();
      v27 = sub_1C43FFD34();
      sub_1C449DA80(v27);
      *v25 = 136315394;
      v28 = sub_1C4423664();
      v2 = sub_1C441D828(v28, v24, v29);

      *(v25 + 4) = v2;
      *(v25 + 12) = 2112;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v31;
      *v26 = v31;
      _os_log_impl(&dword_1C43F8000, v20, v21, "HistoricalFeatureCollector: Signal %s threw error during a timepoint. This timepoint will not be collected. %@", v25, 0x16u);
      sub_1C4420C3C(v26, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C4435858();
      v4 = &unk_1C4F0C000;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    sub_1C440962C(v81);
    v44 = *(v0 + 488);
    isa = (*(v0 + 480) - 1) & *(v0 + 480);
    v73 = *(v0 + 560);
    v78 = *(v0 + 552);
    v72 = *(v0 + 544);
    v76 = v4[458];
LABEL_14:
    if (isa)
    {
      v20 = *(v0 + 472);
      goto LABEL_21;
    }

    while (!__OFADD__(v44, 1))
    {
      sub_1C4404220();
      if (v47 == v48)
      {
        v61 = sub_1C4404DF0();
        sub_1C4420C3C(v61, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
        sub_1C4410AEC();
        v62 = sub_1C4402EE8();
        v63(v62);
        *(v44 + isa) = v2;
        sub_1C442F160(v73);
        sub_1C44239FC(v78, 0);
        sub_1C4412F00();
        sub_1C444146C();

        sub_1C43FC1B0();
        goto LABEL_30;
      }

      isa = v20[v46 + 8].isa;
      ++v44;
      if (isa)
      {
        v44 = v46;
LABEL_21:
        *(v0 + 480) = isa;
        *(v0 + 488) = v44;
        v49 = __clz(__rbit64(isa));
        isa &= isa - 1;
        v50 = (v20[6].isa + 16 * (v49 | (v44 << 6)));
        v2 = *v50;
        *(v0 + 496) = *v50;
        *(v0 + 504) = v50[1];
        sub_1C44951C0();
        v51 = v20[2].isa;
        v4 = v52;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v51)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v53 = sub_1C445FAA8(v2, v4);
          if (v54)
          {
            v55 = sub_1C442DE54(v53);
            sub_1C442E860(v55, v74);
            sub_1C441D670(v74, v81);
            sub_1C440171C(v81);
            sub_1C46B51A0();
            v66 = *(v0 + 96);
            *(v0 + 520) = *(v0 + 104);
            v66();
            sub_1C4461F74();
            *(v0 + 560) = v73;
            *(v0 + 552) = v78;
            sub_1C440002C(v72);
            v67 = swift_task_alloc();
            v68 = sub_1C4405A14(v67);
            *v68 = v69;
            sub_1C441F71C(v68);
            sub_1C4401D60();

            __asm { BRAA            X1, X16 }
          }
        }

        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        sub_1C43FCEE8(v80, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v20 = sub_1C4F00968();
        v56 = sub_1C4F01CE8();

        if (sub_1C44020E0())
        {
          v57 = sub_1C43FD084();
          v58 = sub_1C43FFD34();
          sub_1C449DA80(v58);
          *v57 = v76;
          v59 = sub_1C4423664();
          v2 = sub_1C441D828(v59, v4, v60);

          *(v57 + 4) = v2;
          _os_log_impl(&dword_1C43F8000, v20, v56, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v57, 0xCu);
          sub_1C4435858();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  sub_1C44064A8();
  swift_once();
  goto LABEL_4;
}

void sub_1C46B3050(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v218 = a6;
  v221 = a5;
  v223 = a3;
  v225 = a2;
  v211 = a1;
  v9 = *v6;
  v10 = type metadata accessor for FeatureValue(0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v206 - v16;
  v224 = sub_1C4EFDAF8();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v226 = (v21 - v22);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v219 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v206 - v26;
  type metadata accessor for HistoricalSampleTask.SignalSpec(0, *(v9 + 80), *(v9 + 88), v28);
  sub_1C43FCE50();
  (*(v29 + 16))(&v230, a4);
  v222 = v6;
  v227 = 0;
  if (!v236)
  {
    v215 = v17;
    v73 = 0;
    v74 = v234;
    v75 = v234 + 64;
    v76 = 1 << *(v234 + 32);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & *(v234 + 64);
    v79 = (v76 + 63) >> 6;
    v219 = (v19 + 8);
    *&v30 = 136315906;
    v214 = v30;
    v80 = v223;
    v220 = v234;
    *&v216 = v27;
    while (v78)
    {
      v81 = v73;
LABEL_30:
      v82 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v83 = v82 | (v81 << 6);
      v84 = (*(v74 + 48) + 16 * v83);
      v85 = *v84;
      v86 = v84[1];
      v87 = *(*(v74 + 56) + 8 * v83);
      swift_bridgeObjectRetain_n();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v218 = v85;
      sub_1C4EFDAC8();
      v88 = v221;
      if (v221[2] && (v226 = v87, sub_1C457AAB4(), (v90 & 1) != 0))
      {
        v217 = sub_1C4459B20(v89);
        if (v88 && (sub_1C457AAB4(), (v92 & 1) != 0))
        {
          v80 = *(v88[7] + 16 * v91);
          v93 = sub_1C43FEDF8();
          sub_1C46631DC(v93, v94);
        }

        else
        {
          v97 = sub_1C43FEDF8();
          sub_1C46B6838(v97, v98);
        }

        v99 = sub_1C43FEDF8();
        v100 = v217;
        v101 = v227;
        sub_1C46D43EC(v99, v102, v103);
        v227 = v101;
        if (v101)
        {
          v104 = sub_1C43FEDF8();
          sub_1C46B6850(v104, v105);
          v106 = v222;
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v107 = sub_1C4F00978();
          sub_1C43FCEE8(v107, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44B8F2C();

          v108 = v227;
          v109 = v227;
          v110 = sub_1C4F00968();
          v111 = sub_1C4F01CD8();

          if (os_log_type_enabled(v110, v111))
          {
            sub_1C4485D10();
            v213 = sub_1C447F928();
            v229[0] = v213;
            sub_1C44305CC(&v238);
            v112 = sub_1C447CD80(&v237);
            sub_1C4461C64(v112, v113);
            LODWORD(v210) = v111;
            sub_1C4460618();
            *(v80 + 4) = v111;
            v114 = sub_1C4440FE4();
            sub_1C4440978(v114);
            v116 = sub_1C441D828(v218, v86, v115);

            *(v80 + 24) = v116;
            *(v80 + 32) = v106;
            v228 = v108;
            v117 = v108;
            v118 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
            v119 = sub_1C448037C(v118);
            v121 = v108;
            v122 = sub_1C4461C64(v119, v120);

            *(v80 + 34) = v122;
            sub_1C44149D4();
            sub_1C4495CC4(v123, v124, v125, "%s: Failed to serialize feature %s::%s: %s");
            swift_arrayDestroy();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v80 = v223;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }

          v130 = sub_1C4423B08();
          v131(v130);
          v227 = 0;
          v73 = v81;
          v74 = v220;
        }

        else
        {

          v126 = sub_1C43FEDF8();
          sub_1C46B6850(v126, v127);
          swift_setAtWritableKeyPath();

          v128 = sub_1C4423B08();
          v129(v128);
          v73 = v81;
          v80 = v223;
          v74 = v220;
        }
      }

      else
      {
        v95 = sub_1C4413ED8();
        v96(v95);

        v73 = v81;
      }
    }

    while (1)
    {
      v81 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v81 >= v79)
      {
LABEL_83:

        sub_1C440962C(&v230);
        return;
      }

      v78 = *(v75 + 8 * v81);
      ++v73;
      if (v78)
      {
        goto LABEL_30;
      }
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v236 == 1)
  {
    v31 = 0;
    v32 = v234;
    sub_1C441D1B0();
    v35 = v34 & v33;
    v37 = (v36 + 63) >> 6;
    v226 = (v19 + 8);
    *&v39 = *(v38 + 2648);
    v216 = v39;
    v40 = v218;
    v41 = v219;
    v220 = v32;
    if ((v34 & v33) != 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v42 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v42 >= v37)
      {
        goto LABEL_83;
      }

      v35 = *(v7 + 8 * v42);
      ++v31;
      if (v35)
      {
        v31 = v42;
        do
        {
LABEL_8:
          v43 = __clz(__rbit64(v35)) | (v31 << 6);
          v44 = *(v32 + 56);
          v45 = (*(v32 + 48) + 16 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = *(v44 + 8 * v43);
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          sub_1C4EFDAC8();
          if (*(v40 + 16) && (sub_1C457AAB4(), (v50 & 1) != 0))
          {
            v221 = &v206;
            v51 = *(*(v40 + 56) + 8 * v49);
            MEMORY[0x1EEE9AC00](v49);
            *(&v206 - 2) = v222;
            *(&v206 - 1) = v41;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C445BD24();
            v227 = v41;
            if (v41)
            {
              v217 = v48;
              v215 = v46;

              if (qword_1EDDFECB0 != -1)
              {
                sub_1C44064A8();
                swift_once();
              }

              v52 = sub_1C4F00978();
              sub_1C43FCEE8(v52, qword_1EDDFECB8);
              sub_1C44B8F2C();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              v53 = v227;
              v54 = v227;
              v55 = sub_1C4F00968();
              v56 = sub_1C4F01CD8();

              LODWORD(v221) = v56;
              if (os_log_type_enabled(v55, v56))
              {
                sub_1C4485D10();
                v229[0] = sub_1C447F928();
                sub_1C44305CC(&v239);
                v57 = sub_1C447CD80(&v238);
                v59 = sub_1C4461C64(v57, v58);

                *(v51 + 4) = v59;
                v60 = sub_1C4440FE4();
                sub_1C4440978(v60);
                v61 = sub_1C442B9BC();
                v63 = sub_1C441D828(v61, v47, v62);

                *(v51 + 24) = v63;
                *(v51 + 32) = v59;
                v64 = v227;
                v228 = v227;
                v65 = v227;
                v66 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
                v67 = sub_1C448037C(v66);
                v69 = sub_1C4461C64(v67, v68);

                *(v51 + 34) = v69;
                sub_1C44149D4();
                sub_1C4495CC4(v70, v71, v72, "%s: Failed to serialize feature %s::%s: %s");
                swift_arrayDestroy();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C44512C4();
              }

              else
              {

                sub_1C44512C4();
              }

              v227 = 0;
            }

            else
            {
              sub_1C4406834();

              sub_1C443EEEC();
              swift_setAtWritableKeyPath();
            }

            v40 = v218;
            v41 = v219;
          }

          else
          {
          }

          v35 &= v35 - 1;
          (*v226)(v41, v224);
          v32 = v220;
        }

        while (v35);
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v209 = v14;
  v132 = 0;
  v133 = v235;
  sub_1C441D1B0();
  v136 = v135 & v134;
  v138 = (v137 + 63) >> 6;
  v215 = (v19 + 8);
  *&v140 = *(v139 + 2648);
  v208 = v140;
  v141 = v223;
  v220 = v133;
  v142 = v218;
  *&v214 = v138;
  v213 = v7;
  if ((v135 & v134) == 0)
  {
    goto LABEL_47;
  }

  do
  {
LABEL_51:
    v144 = (v132 << 10) | (16 * __clz(__rbit64(v136)));
    v145 = (*(v133 + 48) + v144);
    v146 = *v145;
    v147 = v145[1];
    v148 = *(v133 + 56) + v144;
    v149 = *v148;
    v150 = *(v148 + 8);
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v217 = v149;

    *&v216 = v150;

    v212 = v146;
    v219 = v147;
    sub_1C4EFDAC8();
    v151 = v221;
    if (!v221[2])
    {
      v138 = v214;
LABEL_58:
      v7 = v213;
      goto LABEL_69;
    }

    sub_1C457AAB4();
    v138 = v214;
    if ((v153 & 1) == 0)
    {
      v142 = v218;
      goto LABEL_58;
    }

    v210 = sub_1C4459B20(v152);
    v7 = v213;
    if (v151 && (sub_1C457AAB4(), (v155 & 1) != 0))
    {
      v141 = *(v151[7] + 16 * v154);
      v156 = sub_1C43FEDF8();
      sub_1C46631DC(v156, v157);
    }

    else
    {
      v158 = sub_1C43FEDF8();
      sub_1C46B6838(v158, v159);
    }

    v160 = sub_1C43FEDF8();
    v161 = v210;
    v162 = v227;
    sub_1C46D43EC(v160, v163, v164);
    v227 = v162;
    v165 = sub_1C43FEDF8();
    if (v162)
    {
      sub_1C46B6850(v165, v166);
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v167 = sub_1C4F00978();
      sub_1C43FCEE8(v167, qword_1EDDFECB8);
      sub_1C44B8F2C();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v168 = v227;
      v169 = v227;
      v170 = sub_1C4F00968();
      sub_1C4F01CD8();

      if (sub_1C4440D08())
      {
        sub_1C4485D10();
        v229[0] = sub_1C447F928();
        sub_1C44305CC(v233);
        v171 = sub_1C447CD80(v232);
        sub_1C4461C64(v171, v172);
        sub_1C4460618();
        *(v141 + 4) = v168;
        *(v141 + 12) = 2080;
        *(v141 + 14) = sub_1C441D828(v225, v223, v229);
        *(v141 + 22) = 2080;
        *(v141 + 24) = sub_1C441D828(v212, v219, v229);
        *(v141 + 32) = 2080;
        v228 = v168;
        v173 = v168;
        v174 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v175 = sub_1C448037C(v174);
        sub_1C4461C64(v175, v176);
        sub_1C4460618();
        *(v141 + 34) = v168;
        sub_1C44149D4();
        sub_1C4495CC4(v177, v178, v179, "%s: Failed to serialize feature %s::%s: %s");
        swift_arrayDestroy();
        v180 = sub_1C43FEDE8();
        MEMORY[0x1C6942830](v180);
        v141 = v223;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v227 = 0;
    }

    else
    {
      sub_1C46B6850(v165, v166);
      swift_setAtWritableKeyPath();

      v141 = v223;
    }

    v133 = v220;
    v142 = v218;
LABEL_69:
    if (v142[2] && (sub_1C457AAB4(), (v182 & 1) != 0))
    {
      v141 = *(v142[7] + 8 * v181);
      MEMORY[0x1EEE9AC00](v181);
      v183 = v226;
      *(&v206 - 2) = v222;
      *(&v206 - 1) = v183;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445BD24();
      v227 = v142;
      if (v142)
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v184 = sub_1C4F00978();
        sub_1C43FCEE8(v184, qword_1EDDFECB8);
        sub_1C44B8F2C();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v185 = v222;

        v186 = v227;
        v187 = v227;
        v188 = sub_1C4F00968();
        v189 = sub_1C4F01CD8();

        LODWORD(v210) = v189;
        if (sub_1C4440D08())
        {
          sub_1C4485D10();
          v207 = sub_1C447F928();
          v229[0] = v207;
          sub_1C44305CC(v233);
          v190 = sub_1C447CD80(v231);
          sub_1C4461C64(v190, v191);
          v192 = v227;
          sub_1C4460618();
          *(v141 + 4) = v186;
          v193 = sub_1C4440FE4();
          sub_1C4440978(v193);
          v195 = sub_1C441D828(v212, v219, v194);

          *(v141 + 24) = v195;
          *(v141 + 32) = v185;
          v196 = v192;
          v228 = v192;
          v197 = v192;
          v198 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
          v199 = sub_1C448037C(v198);
          v201 = sub_1C4461C64(v199, v200);

          *(v141 + 34) = v201;
          sub_1C44149D4();
          sub_1C4495CC4(v202, v203, v204, "%s: Failed to serialize feature %s::%s: %s");
          swift_arrayDestroy();
          v205 = sub_1C43FEDE8();
          MEMORY[0x1C6942830](v205);
          v141 = v223;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          sub_1C44512C4();
        }

        else
        {

          sub_1C44512C4();
        }

        v227 = 0;
      }

      else
      {
        sub_1C4406834();

        sub_1C443EEEC();
        swift_setAtWritableKeyPath();

        sub_1C44512C4();
        v141 = v223;
      }

      v133 = v220;
      v142 = v218;
    }

    else
    {

      sub_1C44512C4();
    }

    v136 &= v136 - 1;
    (*v215)(v226, v224);
  }

  while (v136);
LABEL_47:
  while (1)
  {
    v143 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      break;
    }

    if (v143 >= v138)
    {
      goto LABEL_83;
    }

    v136 = *(v7 + 8 * v143);
    ++v132;
    if (v136)
    {
      v132 = v143;
      goto LABEL_51;
    }
  }

LABEL_86:
  __break(1u);
}