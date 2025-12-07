unint64_t sub_2588303E8()
{
  result = qword_27F95F6F8;
  if (!qword_27F95F6F8)
  {
    type metadata accessor for EditPhotoCellView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F6F8);
  }

  return result;
}

uint64_t type metadata accessor for EditPhotoCellView.ViewModel(uint64_t a1)
{
  result = qword_27F95F820;
  if (!qword_27F95F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25883048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2588BB718();
  v11 = result;
  if (result)
  {
    result = sub_2588BB738();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2588BB728();
  sub_25883000C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_258830544(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2587CC634(a3, a4);
          return sub_25883023C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2588306AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v15 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  if (!v4)
  {
    v22 = a1[6];
    if (!v11)
    {
      sub_258830D88(a1, v31, sub_2587D1A68);
      sub_258830D88(a2, v31, sub_2587D1A68);
      sub_2587FC42C(v3, 0, v6, v5, v7, v8, v22);
      v17 = 0;
      return v17 & 1;
    }

    v23 = a2[2];
    v24 = a2[3];
    v25 = a2[4];
    v26 = a2[5];
    v27 = a2[6];
    sub_258830D88(a1, v31, sub_2587D1A68);
    v18 = a2;
    v19 = v8;
    sub_258830D88(v18, v31, sub_2587D1A68);
    v9 = v22;
    goto LABEL_7;
  }

  v31[0] = *a1;
  v31[1] = v4;
  v31[2] = v6;
  v31[3] = v5;
  v31[4] = v7;
  v31[5] = v8;
  v31[6] = v9;
  if (!v11)
  {
    v23 = v13;
    v24 = v12;
    v25 = v15;
    v26 = v14;
    v27 = v16;
    sub_258830D88(a1, v30, sub_2587D1A68);
    v20 = a2;
    v19 = v8;
    sub_258830D88(v20, v30, sub_2587D1A68);
    sub_25882C8CC(v3, v4, v6, v5, v7, v8, v9);

LABEL_7:
    sub_2587FC42C(v3, v4, v6, v5, v7, v19, v9);
    sub_2587FC42C(v10, v11, v23, v24, v25, v26, v27);
    v17 = 1;
    return v17 & 1;
  }

  v30[0] = v10;
  v30[1] = v11;
  v30[2] = v13;
  v30[3] = v12;
  v30[4] = v15;
  v30[5] = v14;
  v30[6] = v16;
  sub_258830D88(a1, v29, sub_2587D1A68);
  sub_258830D88(a2, v29, sub_2587D1A68);
  sub_25882C8CC(v3, v4, v6, v5, v7, v8, v9);
  v28 = _s11MedicalIDUI15BasicAlertModelV2eeoiySbAC_ACtFZ_0(v31, v30);

  sub_2587FC42C(v3, v4, v6, v5, v7, v8, v9);
  v17 = v28 ^ 1;
  return v17 & 1;
}

uint64_t sub_25883099C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AEAC8;

  return sub_25882F930();
}

uint64_t sub_258830A50(uint64_t a1)
{
  result = sub_2588BBBD8();
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

uint64_t sub_258830B3C(uint64_t a1)
{
  sub_258830D24(0, &qword_27F95F830, MEMORY[0x28220BE28], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258830BBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    if (a4 >> 60 != 15)
    {
      sub_2587CC620(a1, a2);
      sub_2587CC620(a3, a4);
      v9 = sub_258830544(a1, a2, a3, a4);
      sub_2587C4E98(a3, a4);
      sub_2587C4E98(a1, a2);
      v8 = !v9;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 != 15)
  {
LABEL_5:
    sub_2587CC620(a1, a2);
    sub_2587CC620(a3, a4);
    sub_2587C4E98(a1, a2);
    sub_2587C4E98(a3, a4);
    v8 = 1;
    return v8 & 1;
  }

  sub_2587CC620(a1, a2);
  sub_2587CC620(a3, a4);
  sub_2587C4E98(a1, a2);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_258830CD0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  sub_2587CC620(v1, v3);
  return sub_2587C4E98(v4, v5);
}

void sub_258830D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258830D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258830DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258830E50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_25882F930();
}

uint64_t sub_258830F38()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9697B8 = result;
  unk_27F9697C0 = v5;
  return result;
}

uint64_t sub_2588310B4()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9697D8 = result;
  unk_27F9697E0 = v5;
  return result;
}

uint64_t sub_258831204()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F9697E8 = result;
  unk_27F9697F0 = v5;
  return result;
}

uint64_t sub_258831354()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  *&xmmword_27F9697F8 = result;
  *(&xmmword_27F9697F8 + 1) = v5;
  return result;
}

uint64_t sub_2588314BC()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969808 = result;
  unk_27F969810 = v5;
  return result;
}

uint64_t sub_258831628()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969818 = result;
  unk_27F969820 = v5;
  return result;
}

uint64_t sub_258831794()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969828 = result;
  unk_27F969830 = v5;
  return result;
}

uint64_t sub_25883192C()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969848 = result;
  unk_27F969850 = v5;
  return result;
}

uint64_t sub_258831A7C()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F969858 = result;
  unk_27F969860 = v5;
  return result;
}

uint64_t sub_258831BCC()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  *&xmmword_27F969868 = result;
  *(&xmmword_27F969868 + 1) = v5;
  return result;
}

uint64_t sub_258831E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_2588BD858();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = v8;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  *a4 = result;
  *a5 = v12;
  return result;
}

uint64_t sub_258831FBC()
{
  swift_getKeyPath(byte_2588C4948);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25883206C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C4948);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_258832118(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_2588BDF98() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C4948);
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
    sub_2588BBB88();
  }
}

uint64_t sub_258832278()
{
  swift_getKeyPath(byte_2588C4948);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  v1 = *(v0 + 24);
  v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    return 1;
  }

  swift_getKeyPath(asc_2588C4920);
  sub_2588BBB98();

  return *(v0 + 32);
}

uint64_t sub_258832374()
{
  swift_getKeyPath(asc_2588C4920);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  return *(v0 + 32);
}

uint64_t sub_258832414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_2588C4920);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_2588324BC(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_2588C4920);
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2588325CC()
{
  swift_getKeyPath(asc_2588C48F8);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_25883267C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_2588C48F8);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_258832728(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_258832768(v1, v2);
}

uint64_t sub_258832768(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_2588BDF98() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath(asc_2588C48F8);
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
    sub_2588BBB88();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_2588328D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t sub_258832914()
{
  v1 = v0;
  swift_getKeyPath(asc_2588C48F8);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  v3 = *(v0 + 48);
  if (v3)
  {
    v4 = *(v1 + 40);

    result = sub_258832118(v4, v3);
  }

  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_2588C4920);
    MEMORY[0x28223BE20](KeyPath);
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_258832A7C()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUIP33_D4BBDB7E727832FA87D2B563116D5DE45Model___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Model(uint64_t a1)
{
  result = qword_27F95F840;
  if (!qword_27F95F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258832B7C(uint64_t a1)
{
  result = sub_2588BBBD8();
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

uint64_t sub_258832C3C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_258832C7C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_258832CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258832D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258832DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  sub_2588360BC(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836EA8(0);
  v73 = v7;
  v75 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836F70(0);
  v77 = v9;
  v78 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258837070(0);
  v79 = v11;
  v80 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = *(v2 + 80);
  *(v13 + 80) = *(v2 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v2 + 96);
  *(v13 + 128) = *(v2 + 112);
  v15 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v15;
  v16 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v16;
  v17 = swift_allocObject();
  v18 = *(v2 + 80);
  *(v17 + 80) = *(v2 + 64);
  *(v17 + 96) = v18;
  *(v17 + 112) = *(v2 + 96);
  *(v17 + 128) = *(v2 + 112);
  v19 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v19;
  v20 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v20;
  *v6 = swift_getKeyPath(byte_2588C4A40);
  sub_2588377FC(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v21 = v4[13];
  v22 = *MEMORY[0x277CDF988];
  v23 = sub_2588BC1C8();
  (*(*(v23 - 8) + 104))(&v6[v21], v22, v23);
  v24 = &v6[v4[14]];
  *v24 = sub_2588371A4;
  v24[1] = v13;
  v25 = &v6[v4[15]];
  *v25 = sub_2588371FC;
  v25[1] = v17;
  v26 = *(v2 + 72);
  v87 = *(v2 + 56);
  v88 = v26;
  sub_258837254(v2, &v84);
  sub_258837254(v2, &v84);
  v27 = MEMORY[0x277D837D0];
  sub_258837860(0, &qword_27F95F990, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](&v84);
  v87 = v84;
  v28 = swift_allocObject();
  v29 = *(v2 + 80);
  *(v28 + 80) = *(v2 + 64);
  *(v28 + 96) = v29;
  *(v28 + 112) = *(v2 + 96);
  *(v28 + 128) = *(v2 + 112);
  v30 = *(v2 + 16);
  *(v28 + 16) = *v2;
  *(v28 + 32) = v30;
  v31 = *(v2 + 48);
  *(v28 + 48) = *(v2 + 32);
  *(v28 + 64) = v31;
  sub_258837254(v2, &v84);
  v32 = sub_258837A54(&qword_27F95F978, sub_2588360BC, &unk_2588C55E8);
  v33 = MEMORY[0x277D837F8];
  sub_2588BD108();

  sub_258837A9C(v6, sub_2588360BC);
  v87 = *(v2 + 40);
  v84 = *(v2 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  v72 = v34;
  sub_2588BD2C8();
  v35 = v82;
  swift_getKeyPath(byte_2588C4948);
  *&v84 = v35;
  v70 = sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  v36 = *(v35 + 16);
  v37 = *(v35 + 24);

  v82 = v36;
  v83 = v37;
  v38 = swift_allocObject();
  v39 = *(v2 + 80);
  *(v38 + 80) = *(v2 + 64);
  *(v38 + 96) = v39;
  *(v38 + 112) = *(v2 + 96);
  *(v38 + 128) = *(v2 + 112);
  v40 = *(v2 + 16);
  *(v38 + 16) = *v2;
  *(v38 + 32) = v40;
  v41 = *(v2 + 48);
  *(v38 + 48) = *(v2 + 32);
  *(v38 + 64) = v41;
  sub_258837254(v2, &v84);
  *&v84 = v4;
  *(&v84 + 1) = v27;
  v85 = v32;
  v86 = v33;
  v42 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v74;
  v45 = v73;
  v46 = v71;
  sub_2588BD108();

  (*(v75 + 8))(v46, v45);
  v84 = *(v2 + 16);
  LOBYTE(v85) = *(v2 + 32);
  v47 = MEMORY[0x277D839B0];
  sub_25883729C(0, &qword_27F95F9A0, MEMORY[0x277D839B0], MEMORY[0x277D839C0], MEMORY[0x277CDD6A0]);
  sub_2588BBE48();
  v48 = swift_allocObject();
  v49 = *(v2 + 80);
  *(v48 + 80) = *(v2 + 64);
  *(v48 + 96) = v49;
  *(v48 + 112) = *(v2 + 96);
  *(v48 + 128) = *(v2 + 112);
  v50 = *(v2 + 16);
  *(v48 + 16) = *v2;
  *(v48 + 32) = v50;
  v51 = *(v2 + 48);
  *(v48 + 48) = *(v2 + 32);
  *(v48 + 64) = v51;
  sub_258837254(v2, &v84);
  *&v84 = v45;
  *(&v84 + 1) = MEMORY[0x277D837D0];
  v85 = OpaqueTypeConformance2;
  v86 = v42;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = MEMORY[0x277D839C8];
  v54 = v76;
  v55 = v77;
  sub_2588BD108();

  (*(v78 + 8))(v44, v55);
  v84 = v87;
  sub_2588BD2C8();
  v56 = v82;
  swift_getKeyPath(asc_2588C4920);
  *&v84 = v56;
  sub_2588BBB98();

  LOBYTE(v46) = *(v56 + 32);

  LOBYTE(v82) = v46;
  v57 = swift_allocObject();
  v58 = *(v2 + 80);
  *(v57 + 80) = *(v2 + 64);
  *(v57 + 96) = v58;
  *(v57 + 112) = *(v2 + 96);
  *(v57 + 128) = *(v2 + 112);
  v59 = *(v2 + 16);
  *(v57 + 16) = *v2;
  *(v57 + 32) = v59;
  v60 = *(v2 + 48);
  *(v57 + 48) = *(v2 + 32);
  *(v57 + 64) = v60;
  sub_258837254(v2, &v84);
  *&v84 = v55;
  *(&v84 + 1) = v47;
  v85 = v52;
  v86 = v53;
  swift_getOpaqueTypeConformance2();
  v61 = v81;
  v62 = v79;
  sub_2588BD108();

  (*(v80 + 8))(v54, v62);
  v63 = swift_allocObject();
  v64 = *(v2 + 80);
  *(v63 + 80) = *(v2 + 64);
  *(v63 + 96) = v64;
  *(v63 + 112) = *(v2 + 96);
  *(v63 + 128) = *(v2 + 112);
  v65 = *(v2 + 16);
  *(v63 + 16) = *v2;
  *(v63 + 32) = v65;
  v66 = *(v2 + 48);
  *(v63 + 48) = *(v2 + 32);
  *(v63 + 64) = v66;
  sub_258837380(0);
  v68 = (v61 + *(v67 + 36));
  *v68 = sub_258837378;
  v68[1] = v63;
  v68[2] = 0;
  v68[3] = 0;
  return sub_258837254(v2, &v84);
}

uint64_t sub_2588337BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_258836AD0(0);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836B6C(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v38 - v10;
  sub_2588379D0(0, &qword_27F95F9F0, sub_2588362D8, sub_258836AD0, MEMORY[0x277CE0330]);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  sub_2588362D8(0);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836290(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v42 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - v20;
  sub_2587DFBD0(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v38 - v26;
  sub_258833E10();
  v45 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v28 = sub_258832278();

  if (v28)
  {
    *v16 = sub_2588BC608();
    *(v16 + 1) = 0;
    v16[16] = 1;
    sub_258837790(0, &qword_27F95F9D8, sub_25883636C, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_25883543C(a1, 2, &v16[*(v29 + 44)]);
    sub_258837728(v16, v13, sub_2588362D8);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8, MEMORY[0x277CE1138]);
    sub_258837A54(&qword_27F95F9F8, sub_258836AD0, MEMORY[0x277CE14C0]);
    sub_2588BC778();
    v30 = sub_2588362D8;
    v31 = v16;
  }

  else
  {
    v32 = v39;
    sub_258833F90(v39);
    sub_258837728(v32, v9, sub_258836B6C);
    *v5 = 0;
    v5[8] = 1;
    sub_258836B04(0);
    sub_258837728(v9, &v5[*(v33 + 48)], sub_258836B6C);
    sub_258837A9C(v9, sub_258836B6C);
    sub_258837728(v5, v13, sub_258836AD0);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8, MEMORY[0x277CE1138]);
    sub_258837A54(&qword_27F95F9F8, sub_258836AD0, MEMORY[0x277CE14C0]);
    sub_2588BC778();
    sub_258837A9C(v5, sub_258836AD0);
    v31 = v32;
    v30 = sub_258836B6C;
  }

  sub_258837A9C(v31, v30);
  sub_2588376C4(v27, v25);
  v34 = v42;
  sub_258837728(v21, v42, sub_258836290);
  v35 = v44;
  sub_2588376C4(v25, v44);
  sub_258836270(0);
  sub_258837728(v34, v35 + *(v36 + 48), sub_258836290);
  sub_258837A9C(v21, sub_258836290);
  sub_2588378C0(v27, sub_2587DFBD0);
  sub_258837A9C(v34, sub_258836290);
  return sub_2588378C0(v25, sub_2587DFBD0);
}

void sub_258833E10()
{
  sub_25878F648();

  v1 = MEMORY[0x277D837D0];
  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5 & 1;
  sub_258837860(0, &qword_280C0DDD0, v1, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2588BFF50;
  v8 = *(v0 + 112);
  *(v7 + 32) = *(v0 + 104);
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x656C746954;
  *(v7 + 56) = 0xE500000000000000;

  v9 = sub_2588BD9A8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  if (v10)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v2, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_258833F90(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = MEMORY[0x277CDF020];
  sub_25883729C(0, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  sub_258836BB4(0);
  v25 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = *(v1 + 80);
  *(v13 + 80) = *(v1 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v1 + 96);
  *(v13 + 128) = *(v1 + 112);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  v16 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v16;
  sub_258837254(v1, v27);
  sub_2588BD318();
  v17 = sub_2588366AC(&qword_27F95E9D8, &qword_27F95E9D0, v3, MEMORY[0x277CDF028]);
  v18 = sub_258836CAC();
  sub_2588BCE48();
  (*(v6 + 8))(v8, v5);
  sub_258837860(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2588BFF50;
  v20 = *(v2 + 112);
  *(v19 + 32) = *(v2 + 104);
  *(v19 + 40) = v20;
  *(v19 + 48) = 0x6E6F74747542;
  *(v19 + 56) = 0xE600000000000000;

  v21 = sub_2588BD9A8();

  v22 = HKUIJoinStringsForAutomationIdentifier();

  if (v22)
  {
    sub_2588BD8A8();

    v27[0] = v5;
    v27[1] = &type metadata for NoTapAnimationButtonStyle;
    v27[2] = v17;
    v27[3] = v18;
    swift_getOpaqueTypeConformance2();
    v23 = v25;
    sub_2588BCFB8();

    (*(v10 + 8))(v12, v23);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258834324@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  a3(0);
  return a4(a1);
}

uint64_t sub_25883438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_258836B6C(0);
  v31[3] = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588379D0(0, &qword_27F95F9C0, sub_2588362D8, sub_258836B6C, MEMORY[0x277CE0330]);
  v31[1] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  sub_2588362D8(0);
  v31[2] = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836E60(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  sub_2587DFBD0(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v31 - v22;
  sub_258833E10();
  v33 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v24 = sub_258832278();

  if (v24)
  {
    *v11 = sub_2588BC608();
    *(v11 + 1) = 0;
    v11[16] = 1;
    sub_258837790(0, &qword_27F95F9D8, sub_25883636C, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_25883543C(a1, 0, &v11[*(v25 + 44)]);
    sub_258837728(v11, v8, sub_2588362D8);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8, MEMORY[0x277CE1138]);
    sub_258837570();
    sub_2588BC778();
    v26 = sub_2588362D8;
    v27 = v11;
  }

  else
  {
    sub_258833F90(v5);
    sub_258837728(v5, v8, sub_258836B6C);
    swift_storeEnumTagMultiPayload();
    sub_258837A54(&qword_27F95F9C8, sub_2588362D8, MEMORY[0x277CE1138]);
    sub_258837570();
    sub_2588BC778();
    v26 = sub_258836B6C;
    v27 = v5;
  }

  sub_258837A9C(v27, v26);
  sub_2588376C4(v23, v21);
  sub_258837728(v17, v15, sub_258836E60);
  v28 = v32;
  sub_2588376C4(v21, v32);
  sub_258836DC8(0);
  sub_258837728(v15, v28 + *(v29 + 48), sub_258836E60);
  sub_258837A9C(v17, sub_258836E60);
  sub_2588378C0(v23, sub_2587DFBD0);
  sub_258837A9C(v15, sub_258836E60);
  return sub_2588378C0(v21, sub_2587DFBD0);
}

uint64_t sub_25883488C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();

  sub_258832118(v3, v4);
}

uint64_t sub_258834928(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_258837860(0, &qword_27F95F990, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);

  return sub_2588BD438();
}

uint64_t sub_2588349B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (v3 == *(v6 + 32))
  {
    *(v6 + 32) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_2588C4920);
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
    sub_2588BBB88();
  }
}

uint64_t sub_258834B20(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath(asc_2588C4920, v2);
  sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
  sub_2588BBB98();

  sub_25883729C(0, &qword_27F95F9A0, MEMORY[0x277D839B0], MEMORY[0x277D839C0], MEMORY[0x277CDD6A0]);
  return sub_2588BBE58();
}

void sub_258834C70(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587A82F0(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883694C(0);
  MEMORY[0x28223BE20](v8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 96);
  if (v13)
  {
    v44[0] = v12;
    v44[1] = v5;
    v45 = v7;
    v46 = v9;
    v47 = a1;
    v14 = *(v2 + 88);
    v49 = v10;
    v50[0] = v14;
    v50[1] = v13;
    sub_25878F648();

    v15 = sub_2588BCDF8();
    v17 = v16;
    v19 = v18;
    v50[0] = sub_2588BD158();
    v20 = sub_2588BCD98();
    v22 = v21;
    v24 = v23;
    v48 = v25;
    sub_2587B1CF8(v15, v17, v19 & 1);

    v26 = sub_2588BCBB8();
    sub_2588BBE38();
    v58 = v24 & 1;
    v57 = 0;
    *&v53 = v20;
    *(&v53 + 1) = v22;
    LOBYTE(v54) = v24 & 1;
    *(&v54 + 1) = v48;
    LOBYTE(v55) = v26;
    *(&v55 + 1) = v27;
    *v56 = v28;
    *&v56[8] = v29;
    *&v56[16] = v30;
    v56[24] = 0;
    sub_258837860(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2588BFF50;
    v32 = *(v2 + 112);
    *(v31 + 32) = *(v2 + 104);
    *(v31 + 40) = v32;
    *(v31 + 48) = 1953066581;
    *(v31 + 56) = 0xE400000000000000;

    v33 = sub_2588BD9A8();

    v34 = HKUIJoinStringsForAutomationIdentifier();

    if (v34)
    {
      sub_2588BD8A8();

      sub_25883729C(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      sub_2587C4C84();
      v35 = v45;
      sub_2588BCFB8();

      v51[1] = v54;
      v51[2] = v55;
      v52[0] = *v56;
      *(v52 + 9) = *&v56[9];
      v51[0] = v53;
      sub_2587B1E08(v51);
      v36 = swift_allocObject();
      v37 = *(v2 + 80);
      *(v36 + 80) = *(v2 + 64);
      *(v36 + 96) = v37;
      *(v36 + 112) = *(v2 + 96);
      *(v36 + 128) = *(v2 + 112);
      v38 = *(v2 + 16);
      *(v36 + 16) = *v2;
      *(v36 + 32) = v38;
      v39 = *(v2 + 48);
      *(v36 + 48) = *(v2 + 32);
      *(v36 + 64) = v39;
      sub_258837254(v2, v50);
      sub_258836A20();
      v40 = v44[0];
      sub_2588BCED8();

      sub_2588378C0(v35, sub_2587A82F0);
      v42 = v46;
      v41 = v47;
      (*(v49 + 32))(v47, v40, v46);
      (*(v49 + 56))(v41, 0, 1, v42);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v43 = *(v10 + 56);

    v43(a1, 1, 1);
  }
}

uint64_t sub_2588350F4(uint64_t a1)
{
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (*(v3 + 32) == 1)
  {
    *(v3 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_2588C4920);
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
    sub_2588BBB88();
  }
}

uint64_t sub_258835264(uint64_t a1)
{
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258832914();
}

uint64_t sub_2588352E4@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  sub_2588BD158();
  v8 = sub_2588BCD98();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2587B1CF8(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

void sub_25883543C(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v64 = a3;
  sub_258836918(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v66 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = v59 - v7;
  v76 = sub_2588BBF78();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x277CDF198];
  sub_25883729C(0, &qword_27F95F8C0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
  v72 = v9;
  v73 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v70 = v59 - v10;
  sub_2588364A8(0);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836460(0);
  v61 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v68 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258836418(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v63 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = v59 - v19;
  v20 = a1[1];
  v67 = *a1;
  v84 = *(a1 + 5);
  v82 = *(a1 + 5);
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  v22 = v21;

  v59[1] = v22;
  sub_2588BD2E8();
  v23 = v78;
  v24 = v79;
  swift_getKeyPath(byte_2588C4948);
  v82 = v23;
  v83 = v24;
  sub_2588377FC(0, &qword_27F95F9E0, type metadata accessor for Model, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v25 = v69;

  v80 = v67;
  v81 = v20;
  sub_25878F648();
  v26 = MEMORY[0x277D837D0];
  v27 = v70;
  v28 = v68;
  sub_2588BD628();
  v78 = *(a1 + 1);
  LOBYTE(v79) = *(a1 + 32);
  sub_25883729C(0, &qword_27F95F9A0, MEMORY[0x277D839B0], MEMORY[0x277D839C0], MEMORY[0x277CDD6A0]);
  sub_2588BBE68();
  sub_2588366AC(&qword_27F95F8C8, &qword_27F95F8C0, v71, MEMORY[0x277CDF1A8]);
  v29 = v72;
  sub_2588BD098();

  (*(v73 + 8))(v27, v29);
  v30 = sub_2588BD158();
  sub_258836534(0);
  *&v13[*(v31 + 36)] = v30;
  KeyPath = swift_getKeyPath(aX_5);
  v33 = &v13[*(v25 + 36)];
  *v33 = KeyPath;
  v33[8] = v77;
  v34 = v74;
  sub_2588BBF68();
  v35 = sub_258836704();
  sub_2588BCE98();
  (*(v75 + 8))(v34, v76);
  sub_258837A9C(v13, sub_2588364A8);
  sub_258837860(0, &qword_280C0DDD0, v26, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2588BFF50;
  v37 = a1[14];
  v76 = a1[13];
  *(v36 + 32) = v76;
  *(v36 + 40) = v37;
  *(v36 + 48) = 0x65756C6156;
  *(v36 + 56) = 0xE500000000000000;
  v75 = v37;
  swift_bridgeObjectRetain_n();
  v38 = sub_2588BD9A8();

  v39 = HKUIJoinStringsForAutomationIdentifier();

  if (v39)
  {
    sub_2588BD8A8();

    *&v78 = v25;
    *(&v78 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    v40 = v62;
    v41 = v61;
    sub_2588BCFB8();

    (*(v60 + 8))(v28, v41);
    v42 = v65;
    sub_258834C70(v65);
    v43 = *(a1 + 9);
    v78 = *(a1 + 7);
    v79 = v43;
    sub_258837860(0, &qword_27F95F990, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
    MEMORY[0x259C8C5A0](&v82);
    v44 = v82;

    v45 = HIBYTE(*(&v44 + 1)) & 0xFLL;
    if ((*(&v44 + 1) & 0x2000000000000000) == 0)
    {
      v45 = v44 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v74) = v45 == 0;
    v78 = v84;
    sub_2588BD2C8();
    v46 = v82;
    swift_getKeyPath(asc_2588C4920);
    *&v78 = v46;
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
    sub_2588BBB98();

    v47 = *(v46 + 32);

    v48 = swift_allocObject();
    v49 = *(a1 + 5);
    *(v48 + 80) = *(a1 + 4);
    *(v48 + 96) = v49;
    *(v48 + 112) = *(a1 + 6);
    *(v48 + 128) = a1[14];
    v50 = *(a1 + 1);
    *(v48 + 16) = *a1;
    *(v48 + 32) = v50;
    v51 = *(a1 + 3);
    *(v48 + 48) = *(a1 + 2);
    *(v48 + 64) = v51;
    v52 = v63;
    sub_258837728(v40, v63, sub_258836418);
    v53 = v66;
    sub_258837728(v42, v66, sub_258836918);
    v54 = v64;
    sub_258837728(v52, v64, sub_258836418);
    sub_2588363A0(0);
    v56 = v55;
    sub_258837728(v53, v54 + *(v55 + 48), sub_258836918);
    v57 = v54 + *(v56 + 64);
    *v57 = v74;
    *(v57 + 1) = v47;
    *(v57 + 2) = v77;
    v58 = v75;
    *(v57 + 8) = v76;
    *(v57 + 16) = v58;
    *(v57 + 24) = sub_2588378B0;
    *(v57 + 32) = v48;
    sub_258837254(a1, &v78);

    sub_258837A9C(v42, sub_258836918);
    sub_258837A9C(v40, sub_258836418);

    sub_258837A9C(v53, sub_258836918);
    sub_258837A9C(v52, sub_258836418);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258835EEC(uint64_t a1)
{
  sub_2588377FC(0, &qword_27F95F998, type metadata accessor for Model, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258832118(0, 0xE000000000000000);
  if (*(v3 + 32) == 1)
  {
    KeyPath = swift_getKeyPath(asc_2588C4920);
    MEMORY[0x28223BE20](KeyPath);
    sub_258837A54(&qword_27F95F850, type metadata accessor for Model, &unk_2588C48D8);
    sub_2588BBB88();
  }

  else
  {
    *(v3 + 32) = 0;
  }
}

void sub_2588360BC(uint64_t a1)
{
  if (!qword_27F95F858)
  {
    sub_2588361A8(255);
    v3 = v2;
    sub_258836D00(255);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_258837A54(&qword_27F95F960, sub_2588361A8, MEMORY[0x277CE1138]);
    v7[3] = sub_258837A54(&qword_27F95F968, sub_258836D00, MEMORY[0x277CE1198]);
    v5 = type metadata accessor for MedicalIDAXLayoutView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F95F858);
    }
  }
}

void sub_2588361A8(uint64_t a1)
{
  if (!qword_27F95F860)
  {
    sub_25883623C(255);
    sub_258837A54(&qword_27F95F930, sub_25883623C, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F860);
    }
  }
}

void sub_2588362D8(uint64_t a1)
{
  if (!qword_27F95F880)
  {
    sub_25883636C(255);
    sub_258837A54(&qword_27F95F900, sub_25883636C, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F880);
    }
  }
}

void sub_2588363A0(uint64_t a1)
{
  if (!qword_27F95F890)
  {
    sub_258836418(255);
    sub_258836918(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F890);
    }
  }
}

void sub_2588364A8(uint64_t a1)
{
  if (!qword_27F95F8A8)
  {
    sub_258836534(255);
    sub_258837860(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F8A8);
    }
  }
}

void sub_258836534(uint64_t a1)
{
  if (!qword_27F95F8B0)
  {
    sub_2588365C8(255);
    sub_25883729C(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F8B0);
    }
  }
}

void sub_2588365C8(uint64_t a1)
{
  if (!qword_27F95F8B8)
  {
    v1 = MEMORY[0x277CDF198];
    sub_25883729C(255, &qword_27F95F8C0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_2588366AC(&qword_27F95F8C8, &qword_27F95F8C0, v1, MEMORY[0x277CDF1A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F8B8);
    }
  }
}

uint64_t sub_2588366AC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25883729C(255, a2, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258836704()
{
  result = qword_27F95F8D0;
  if (!qword_27F95F8D0)
  {
    sub_2588364A8(255);
    sub_258836784();
    sub_2587E64EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8D0);
  }

  return result;
}

unint64_t sub_258836784()
{
  result = qword_27F95F8D8;
  if (!qword_27F95F8D8)
  {
    sub_258836534(255);
    v1 = MEMORY[0x277CDF198];
    sub_25883729C(255, &qword_27F95F8C0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF198]);
    sub_2588366AC(&qword_27F95F8C8, &qword_27F95F8C0, v1, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    sub_258836894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8D8);
  }

  return result;
}

unint64_t sub_258836894()
{
  result = qword_27F95F8E0;
  if (!qword_27F95F8E0)
  {
    sub_25883729C(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8E0);
  }

  return result;
}

void sub_258836994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_258836A20()
{
  result = qword_27F95F8F8;
  if (!qword_27F95F8F8)
  {
    sub_2587A82F0(255);
    sub_2587C4C84();
    sub_258837A54(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F8F8);
  }

  return result;
}

void sub_258836B04(uint64_t a1)
{
  if (!qword_27F95F910)
  {
    sub_258836B6C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F910);
    }
  }
}

void sub_258836BB4(uint64_t a1)
{
  if (!qword_27F95F920)
  {
    v1 = MEMORY[0x277CDF020];
    sub_25883729C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2588366AC(&qword_27F95E9D8, &qword_27F95E9D0, v1, MEMORY[0x277CDF028]);
    sub_258836CAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F920);
    }
  }
}

unint64_t sub_258836CAC()
{
  result = qword_27F95F928;
  if (!qword_27F95F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F928);
  }

  return result;
}

void sub_258836D00(uint64_t a1)
{
  if (!qword_27F95F938)
  {
    sub_258836D94(255);
    sub_258837A54(&qword_27F95F958, sub_258836D94, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F938);
    }
  }
}

void sub_258836DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2587DFBD0(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258836EA8(uint64_t a1)
{
  if (!qword_27F95F970)
  {
    sub_2588360BC(255);
    sub_258837A54(&qword_27F95F978, sub_2588360BC, &unk_2588C55E8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F970);
    }
  }
}

void sub_258836F70(uint64_t a1)
{
  if (!qword_27F95F980)
  {
    sub_258836EA8(255);
    sub_2588360BC(255);
    sub_258837A54(&qword_27F95F978, sub_2588360BC, &unk_2588C55E8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F980);
    }
  }
}

void sub_258837070(uint64_t a1)
{
  if (!qword_27F95F988)
  {
    sub_258836F70(255);
    sub_258836EA8(255);
    sub_2588360BC(255);
    sub_258837A54(&qword_27F95F978, sub_2588360BC, &unk_2588C55E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F988);
    }
  }
}

void sub_25883729C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258837380(uint64_t a1)
{
  if (!qword_27F95F9A8)
  {
    sub_2588373E0(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F9A8);
    }
  }
}

void sub_2588373E0(uint64_t a1)
{
  if (!qword_27F95F9B0)
  {
    sub_258837070(255);
    sub_258836F70(255);
    sub_258836EA8(255);
    sub_2588360BC(255);
    sub_258837A54(&qword_27F95F978, sub_2588360BC, &unk_2588C55E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F9B0);
    }
  }
}

unint64_t sub_258837570()
{
  result = qword_27F95F9D0;
  if (!qword_27F95F9D0)
  {
    sub_258836B6C(255);
    v1 = MEMORY[0x277CDF020];
    sub_25883729C(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2588366AC(&qword_27F95E9D8, &qword_27F95E9D0, v1, MEMORY[0x277CDF028]);
    sub_258836CAC();
    swift_getOpaqueTypeConformance2();
    sub_258837A54(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F9D0);
  }

  return result;
}

uint64_t sub_2588376C4(uint64_t a1, uint64_t a2)
{
  sub_2587DFBD0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258837728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258837790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_2588BC0B8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2588377FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258837860(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2588378C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

void sub_2588379D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_258837A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258837A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258837AFC()
{
  result = qword_27F95FA00;
  if (!qword_27F95FA00)
  {
    sub_258837380(255);
    sub_258837070(255);
    sub_258836F70(255);
    sub_258836EA8(255);
    sub_2588360BC(255);
    sub_258837A54(&qword_27F95F978, sub_2588360BC, &unk_2588C55E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FA00);
  }

  return result;
}

uint64_t sub_258837CCC(uint64_t a1)
{
  v2 = sub_2588BCB08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_258837E84(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BCAE8();
  v8[*(v6 + 36)] = 0;
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_258837FA4();
  sub_2588BCED8();

  return sub_2588380CC(v8);
}

void sub_258837E84(uint64_t a1)
{
  if (!qword_27F95FA08)
  {
    sub_2588BCAD8();
    sub_258837EEC(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FA08);
    }
  }
}

void sub_258837EEC(uint64_t a1)
{
  if (!qword_27F95FA10)
  {
    sub_2587A7B40();
    v1 = sub_2588BC898();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FA10);
    }
  }
}

unint64_t sub_258837FA4()
{
  result = qword_27F95FA18;
  if (!qword_27F95FA18)
  {
    sub_258837E84(255);
    sub_258838084(&qword_27F95FA20, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
    sub_258838084(qword_27F95FA28, sub_258837EEC, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FA18);
  }

  return result;
}

uint64_t sub_258838084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2588380CC(uint64_t a1)
{
  sub_258837E84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258838128(uint64_t a1)
{
  sub_25883A2CC(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      sub_2587FC3C4(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_25883A58C(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258838254(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_2588BC038() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v11 + ((v10 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v12 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v12 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v24 = *(*(*(a3 + 16) - 8) + 48);

    return v24((((((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 72) & ~v10);
  }

  else
  {
    v23 = *(v22 + 8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void sub_258838444(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_2588BC038() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v21 = ((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v22 = *(v10 + 56);

        v22((((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 72) & ~v12, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v21 = a2 & 0x7FFFFFFF;
        v21[1] = 0;
      }

      else
      {
        v21[1] = (a2 - 1);
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(v10 + 64) + ((v12 + (((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 72) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_2588386D8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 44);
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  v14 = *(v3 + 32);
  v15 = v5;
  v6 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v6;
  v10 = v14;
  v11 = *(v3 + 48);
  v16 = *(v3 + 64);
  v12 = *(v3 + 64);
  v8 = v13[0];
  v9 = v4;
  sub_25883A888(v13, v17);
  sub_2587FC3C4(0);
  sub_2588BD438();
  v17[2] = v10;
  v17[3] = v11;
  v18 = v12;
  v17[0] = v8;
  v17[1] = v9;
  return sub_2587FC9FC(v17);
}

uint64_t sub_258838794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_2588BC138();
  v52 = a1;
  v3 = *(a1 + 24);
  *&v71 = *(a1 + 16);
  v46 = v3;
  v47 = v71;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
  v6 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_25883A504();
  v42 = swift_getOpaqueTypeMetadata2();
  *&v71 = OpaqueTypeMetadata2;
  *(&v71 + 1) = v6;
  *&v72 = OpaqueTypeConformance2;
  *(&v72 + 1) = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_2588BC208();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  WitnessTable = swift_getWitnessTable();
  *&v71 = v9;
  *(&v71 + 1) = WitnessTable;
  v43 = MEMORY[0x277CDECD0];
  v13 = swift_getOpaqueTypeMetadata2();
  v45 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  sub_25883A58C(255, &qword_27F95FAE0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
  v16 = sub_2588BC1E8();
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v40 = &v40 - v17;
  v18 = sub_2588BC1E8();
  v50 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v44 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = &v40 - v21;
  v54 = v47;
  v55 = v46;
  v22 = v51;
  v56 = v51;
  sub_2588BC1F8();
  v23 = WitnessTable;
  sub_2588BCFD8();
  (*(v10 + 8))(v12, v9);
  v24 = v52;
  v25 = (v22 + *(v52 + 52));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v71) = v26;
  *(&v71 + 1) = v27;
  sub_25883A58C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  *&v71 = v9;
  *(&v71 + 1) = v23;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v40;
  sub_2588BD0E8();
  (*(v45 + 8))(v15, v13);
  v30 = (v22 + *(v24 + 44));
  v31 = v30[3];
  v73 = v30[2];
  v74 = v31;
  v75 = *(v30 + 8);
  v32 = v30[1];
  v71 = *v30;
  v72 = v32;
  sub_2587FC3C4(0);
  sub_2588BD458();
  v63 = v68;
  v64 = v69;
  v65 = v70;
  v61 = v66;
  v62 = v67;
  v33 = sub_25883A5E8();
  v59 = v28;
  v60 = v33;
  v34 = swift_getWitnessTable();
  v35 = v44;
  sub_2587FCA58(&v61, v16, v34);
  v73 = v63;
  v74 = v64;
  v75 = v65;
  v71 = v61;
  v72 = v62;
  sub_2587FC9FC(&v71);
  (*(v49 + 8))(v29, v16);
  v36 = sub_2587FC5B8();
  v57 = v34;
  v58 = v36;
  swift_getWitnessTable();
  v37 = v48;
  sub_2587DCF7C();
  v38 = *(v50 + 8);
  v38(v35, v18);
  sub_2587DCF7C();
  return (v38)(v37, v18);
}

uint64_t sub_258838DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a4;
  v6 = sub_2588BC5E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v46 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = OpaqueTypeMetadata2;
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = v31 - v11;
  sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
  v13 = v12;
  v31[1] = v12;
  v45 = a2;
  v46 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = OpaqueTypeConformance2;
  v33 = sub_25883A504();
  v45 = OpaqueTypeMetadata2;
  v46 = v13;
  v47 = OpaqueTypeConformance2;
  v48 = v33;
  v37 = MEMORY[0x277CDEEF8];
  v15 = swift_getOpaqueTypeMetadata2();
  v38 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v32 = v31 - v19;
  type metadata accessor for MedicalIDEditModal(0, a2, a3, v20);
  v21 = v6;
  (*(v7 + 104))(v9, *MEMORY[0x277CDDDC0], v6);
  v22 = v40;
  v23 = v36;
  sub_2588BD008();
  (*(v7 + 8))(v9, v21);
  v42 = a2;
  v43 = a3;
  v44 = v22;
  v24 = swift_checkMetadataState();
  v25 = v34;
  v26 = v35;
  v27 = v33;
  sub_2588BD0B8();
  (*(v39 + 8))(v23, v26);
  v45 = v26;
  v46 = v24;
  v47 = v25;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_2587DCF7C();
  v29 = *(v38 + 8);
  v29(v18, v15);
  sub_2587DCF7C();
  return (v29)(v28, v15);
}

uint64_t sub_2588391CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  sub_25883A330(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A41C(0);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A3B8();
  v37 = v12;
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2588BC828();
  MEMORY[0x28223BE20](v15 - 8);
  sub_2587E2184(0);
  v34 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC7F8();
  v47 = a2;
  v48 = a3;
  v49 = a1;
  sub_2588BD748();
  sub_25883A4BC(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  v32 = v19;
  sub_2588BBF88();
  sub_2588BC818();
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v31 = v14;
  sub_2588BBF88();
  sub_2588BC808();
  v41 = a2;
  v42 = a3;
  v43 = a1;
  sub_2588BD728();
  sub_25883A4BC(&qword_27F95FAD0, MEMORY[0x277D12688], MEMORY[0x277D12678]);
  v20 = v35;
  sub_2588BBF88();
  v21 = *(v8 + 48);
  v22 = *(v8 + 64);
  v23 = v33;
  v24 = v34;
  (*(v17 + 16))(v33, v19, v34);
  v25 = v36;
  v26 = v14;
  v27 = v37;
  (*(v36 + 16))(&v23[v21], v26, v37);
  v29 = v38;
  v28 = v39;
  (*(v38 + 16))(&v23[v22], v20, v39);
  sub_2588BC718();
  (*(v29 + 8))(v20, v28);
  (*(v25 + 8))(v31, v27);
  return (*(v17 + 8))(v32, v24);
}

uint64_t sub_25883966C(uint64_t a1)
{
  v2 = sub_2588BC598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = sub_2588BC038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883AB58(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_2588BC028();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2588398F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for MedicalIDEditModal(0, a2, a3, a4);
  sub_25878F648();

  v6 = sub_2588BCDF8();
  v8 = v7;
  v10 = v9;
  v11 = sub_2588BCDC8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2587B1CF8(v6, v8, v10 & 1);

  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
  return result;
}

uint64_t sub_2588399D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v18 = a6;
  v10 = type metadata accessor for MedicalIDEditModal(0, a2, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v11 + 32))(v15 + v14, v13, v10);
  return v18(a5, v15);
}

uint64_t sub_258839B20(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883A2CC(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, v1, a1);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  *(v12 + 32) = *(a1 + 16);
  (*(v3 + 32))(v12 + v11, v5, a1);
  sub_2587ABD24(0, 0, v8, &unk_2588C4B80, v12);
}

uint64_t sub_258839D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_2588BDA78();
  v6[15] = sub_2588BDA68();
  v8 = sub_2588BDA28();
  v6[16] = v8;
  v6[17] = v7;

  return MEMORY[0x2822009F8](sub_258839DC8, v8, v7);
}

uint64_t sub_258839DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 96);
  v6 = type metadata accessor for MedicalIDEditModal(0, *(v4 + 104), *(v4 + 112), a4);
  *(v4 + 144) = v6;
  v7 = (v5 + *(v6 + 52));
  v8 = *v7;
  v9 = *(v7 + 1);
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  *(v4 + 168) = 1;
  sub_25883A58C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  v12 = (*(v5 + *(v6 + 40)) + **(v5 + *(v6 + 40)));
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = sub_258839F3C;

  return v12();
}

uint64_t sub_258839F3C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_25883A0E4;
  }

  else
  {
    v5 = sub_25883A078;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25883A078()
{

  sub_25883A240(v0[12], v0[13], v0[14], v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_25883A0E4()
{
  v22 = v0;
  v1 = *(v0 + 160);

  *(v0 + 88) = v1;
  v2 = v1;
  sub_25878D8F4();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  if (v3)
  {

    v6 = *(v0 + 24);
    v7 = *(v0 + 48);
    v17 = *(v0 + 16);
    v18 = v6;
    v19 = *(v0 + 32);
    v20 = v7;
    v21 = *(v0 + 56);
    sub_2588386D8(&v17, v5);
    v8 = *(v0 + 88);
  }

  else
  {

    v9 = v4;
    sub_25889C124(v4, v13);

    v17 = v13[0];
    v18 = v13[1];
    v19 = v14;
    v20 = v15;
    v21 = v16;
    sub_2588386D8(&v17, v5);
    v8 = v4;
  }

  sub_25883A240(*(v0 + 96), *(v0 + 104), *(v0 + 112), v10);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25883A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MedicalIDEditModal(0, a2, a3, a4);
  sub_25883A58C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

void sub_25883A2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25883A330(uint64_t a1)
{
  if (!qword_27F95FAB8)
  {
    sub_2587E2184(255);
    sub_25883A3B8();
    sub_25883A41C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95FAB8);
    }
  }
}

void sub_25883A3B8()
{
  if (!qword_27F95FAC0)
  {
    v0 = sub_2588BBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FAC0);
    }
  }
}

void sub_25883A41C(uint64_t a1)
{
  if (!qword_27F95FAC8)
  {
    sub_2588BD728();
    sub_25883A4BC(&qword_27F95FAD0, MEMORY[0x277D12688], MEMORY[0x277D12678]);
    v1 = sub_2588BBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FAC8);
    }
  }
}

uint64_t sub_25883A4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25883A504()
{
  result = qword_27F95FAD8;
  if (!qword_27F95FAD8)
  {
    sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FAD8);
  }

  return result;
}

void sub_25883A58C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_25883A5E8()
{
  result = qword_27F95FAE8;
  if (!qword_27F95FAE8)
  {
    sub_25883A58C(255, &qword_27F95FAE0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FAE8);
  }

  return result;
}

uint64_t sub_25883A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for MedicalIDEditModal(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2587AE310;

  return sub_258839D2C(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_25883A888(uint64_t a1, uint64_t a2)
{
  sub_2587FC3C4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for MedicalIDEditModal(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v4 + v7;
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2588BC038();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  v10 = v8 + *(v6 + 44);

  if (*(v10 + 24))
  {
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 48), v5);

  return swift_deallocObject();
}

uint64_t sub_25883AAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for MedicalIDEditModal(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_25883966C(v6);
}

uint64_t sub_25883AB58(uint64_t a1, uint64_t a2)
{
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25883AC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25883AC98(uint64_t a1)
{
  if (!qword_27F95F428)
  {
    sub_25878E130(255, &qword_27F95F430, 0x277CCAE28);
    v1 = sub_2588BB6D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95F428);
    }
  }
}

uint64_t type metadata accessor for EditWeightCellView(uint64_t a1)
{
  result = qword_27F95FAF8;
  if (!qword_27F95FAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25883AD60(uint64_t a1)
{
  type metadata accessor for MedicalIDBiometricsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_25883AC34(319, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HealthDemographicDataProvider(319);
      if (v3 <= 0x3F)
      {
        sub_25883C738(319, &qword_27F95FB08, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_25883AC34(319, &qword_27F95DAC0, MEMORY[0x28220C1A8], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2587BC234(319);
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

uint64_t sub_25883AED8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for EditWeightCellView(0) + 36);
  sub_25883AC34(0, &qword_27F95DB20, MEMORY[0x28220C1A8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25883CF5C(v1 + v7, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2588BBAC8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_25883B0E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v115 = a1;
  v3 = sub_2588BC178();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditWeightCellView(0);
  v103 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v113 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883C328(0);
  v104 = v7;
  v118 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v102 = (&v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25883C3FC(0);
  v108 = v9;
  v106 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v105 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883C4AC(0);
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v110 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25883C5EC(0);
  v109 = v13;
  v107 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v119 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F95D120 != -1)
  {
    swift_once();
  }

  v15 = 0x746867696557;
  v16 = qword_27F9698A0;
  v120 = qword_27F969898;
  sub_25883C738(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  v90 = xmmword_2588BFF50;
  *(v17 + 16) = xmmword_2588BFF50;
  v18 = v1[1];
  *(v17 + 32) = *v1;
  *(v17 + 40) = v18;
  v19 = 0xE600000000000000;
  *(v17 + 48) = 0x746867696557;
  *(v17 + 56) = 0xE600000000000000;

  v20 = sub_2588BD9A8();

  v21 = HKUIJoinStringsForAutomationIdentifier();

  if (v21)
  {
    v15 = sub_2588BD8A8();
    v19 = v22;
  }

  v23 = (v2 + v5[8]);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v100 = v25;
  v101 = v24;
  *&v123 = v24;
  *(&v123 + 1) = v25;
  v99 = v26;
  *&v124 = v26;
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  v98 = v27;
  sub_2588BD2E8();
  v96 = *(&v131 + 1);
  v97 = v131;
  v93 = *(&v132 + 1);
  v94 = v132;
  v28 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v29 = sub_25884DC0C(v2 + *(v28 + 32), 1);
  v30 = sub_25884D888();
  v31 = [v29 stringFromUnit_];

  v32 = sub_2588BD8A8();
  v91 = v33;
  v92 = v32;

  v34 = *(v2 + v5[10]);
  if (v34)
  {
    v35 = *(v2 + v5[6]);
    v36 = v34;
    v122 = v2;
    v37 = sub_25888B21C(v36, v35);
    v88 = v38;
    v89 = v37;

    v39 = sub_2588BBE78();
    v87 = v40;
    v42 = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v90;
    *(v43 + 32) = v15;
    *(v43 + 40) = v19;
    *(v43 + 48) = v120;
    *(v43 + 56) = v16;

    v44 = sub_2588BD9A8();

    v45 = HKUIJoinStringsForAutomationIdentifier();

    v95 = v16;
    if (v45)
    {
      *&v90 = sub_2588BD8A8();
      v47 = v46;
    }

    else
    {
      *&v90 = v15;
      v47 = v19;
    }

    v85 = v39 & 1;
    v86 = v42 & 1;
    v48 = v96;
    v49 = v97;
    *&v131 = v97;
    *(&v131 + 1) = v96;
    v50 = v93;
    v51 = v94;
    *&v132 = v94;
    *(&v132 + 1) = v93;
    sub_25883C738(0, &qword_27F95F990, MEMORY[0x277CE11F8]);
    MEMORY[0x259C8C5A0](&v123);
    v52 = v123;
    type metadata accessor for Model(0);
    v53 = swift_allocObject();
    *(v53 + 32) = 0;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    sub_2588BBBC8();
    *(v53 + 16) = v52;
    sub_258832768(v89, v88);
    *&v131 = v120;
    *(&v131 + 1) = v95;
    LOBYTE(v132) = v85;
    *(&v132 + 1) = v140[0];
    DWORD1(v132) = *(v140 + 3);
    *(&v132 + 1) = v87;
    LOBYTE(v133) = v86;
    *(&v133 + 1) = *v139;
    DWORD1(v133) = *&v139[3];
    *(&v133 + 1) = v53;
    *&v134 = 0;
    *(&v134 + 1) = v49;
    *&v135 = v48;
    *(&v135 + 1) = v51;
    *&v136 = v50;
    *(&v136 + 1) = v92;
    *&v137 = v91;
    *(&v137 + 1) = v90;
    v138 = v47;
    v127 = v135;
    v128 = v136;
    v129 = v137;
    v130 = v47;
    v125 = v133;
    v126 = v134;
    v123 = v131;
    v124 = v132;
    v93 = sub_25883C3A8();
    v54 = v102;
    MEMORY[0x259C8C120](1, &type metadata for ClearableAddableTextField, v93);
    sub_25883C78C(&v131);
    v55 = sub_2588BBAC8();
    v92 = &v85;
    v96 = v55;
    v120 = *(v55 - 8);
    v94 = *(v120 + 64);
    MEMORY[0x28223BE20](v55);
    v95 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
    v57 = &v85 - v95;
    sub_25883AED8(&v85 - v95);
    v58 = sub_2588BBA58();
    v91 = &v85;
    v59 = *(v58 - 8);
    v60 = *(v59 + 64);
    MEMORY[0x28223BE20](v58);
    sub_2588BBA68();
    v61 = *(v120 + 8);
    v120 += 8;
    v97 = v61;
    v62 = (v61)(v57, v55);
    MEMORY[0x28223BE20](v62);
    v63 = &v85 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBA38();
    MEMORY[0x259C8AB90](v63, v63);
    v64 = *(v59 + 8);
    v64(v63, v58);
    v64(v63, v58);
    *&v123 = &type metadata for ClearableAddableTextField;
    *(&v123 + 1) = v93;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = v104;
    v67 = v105;
    sub_2588BCEC8();
    v68 = (*(v118 + 1))(v54, v66);
    v102 = &v85;
    MEMORY[0x28223BE20](v68);
    v69 = &v85 - v95;
    v70 = v122;
    sub_25883AED8(&v85 - v95);
    v118 = type metadata accessor for EditWeightCellView;
    v71 = v113;
    sub_25883CDFC(v70, v113, type metadata accessor for EditWeightCellView);
    v72 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v73 = swift_allocObject();
    sub_25883C7E0(v71, v73 + v72);
    *&v123 = v66;
    *(&v123 + 1) = OpaqueTypeConformance2;
    v104 = swift_getOpaqueTypeConformance2();
    v103 = sub_25883C6EC();
    v74 = v108;
    v75 = v96;
    sub_2588BD118();

    v97(v69, v75);
    (*(v106 + 8))(v67, v74);
    *&v123 = v101;
    *(&v123 + 1) = v100;
    *&v124 = v99;
    sub_2588BD2C8();
    sub_25883CDFC(v122, v71, v118);
    v76 = swift_allocObject();
    sub_25883C7E0(v71, v76 + v72);
    *&v123 = v74;
    *(&v123 + 1) = v75;
    *&v124 = v104;
    *(&v124 + 1) = v103;
    v120 = MEMORY[0x277CE0E40];
    v77 = swift_getOpaqueTypeConformance2();
    v79 = v109;
    v78 = v110;
    v80 = v119;
    sub_2588BD118();

    (*(v107 + 8))(v80, v79);
    sub_25883CDFC(v122, v71, v118);
    v81 = swift_allocObject();
    sub_25883C7E0(v71, v81 + v72);
    v82 = v114;
    sub_2588BC168();
    *&v123 = v79;
    *(&v123 + 1) = MEMORY[0x277D837D0];
    *&v124 = v77;
    *(&v124 + 1) = MEMORY[0x277D837F8];
    swift_getOpaqueTypeConformance2();
    v83 = v112;
    sub_2588BD128();

    (*(v116 + 8))(v82, v117);
    return (*(v111 + 8))(v78, v83);
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_25883BDB8(uint64_t a1)
{
  sub_25883AC00(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditWeightCellView(0);
  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  v6 = MedicalIDBiometricsViewModel.formattedWeightText(for:)(v4);
  v8 = v7;
  sub_25883CE64(v4);
  v9 = (a1 + *(v5 + 32));
  v10 = *v9;
  v11 = *(v9 + 2);
  v14 = v10;
  v15 = v11;
  v13[1] = v6;
  v13[2] = v8;
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25883BEF4(uint64_t a1)
{
  v2 = type metadata accessor for EditWeightCellView(0);
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v4 = sub_25883CEC0(*(a1 + *(v2 + 28)), v15, v16, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x259C8CA70](v4, v6, v8, v10);
  v13 = v12;

  sub_2588BD2D8();
  sub_2588BD2C8();
  sub_25883C030(v11, v13);
}

uint64_t sub_25883C030(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_25883AC00(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  type metadata accessor for MedicalIDBiometricsViewModel(0);
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 && (*&v18 = 0, sub_25888CA24(a1, a2, &v18)))
  {
    sub_25884D888();
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    sub_2588BB678();
    v10 = 0;
  }

  else
  {
LABEL_7:
    v10 = 1;
  }

  sub_25883AC98(0);
  (*(*(v11 - 8) + 56))(v17 - v8, v10, 1, v11);
  v12 = type metadata accessor for EditWeightCellView(0);
  MEMORY[0x28223BE20](v12);
  sub_25883CDFC(v17 - v8, v17 - v8, sub_25883AC00);
  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  result = sub_25883CE64(v17 - v8);
  if (!a2)
  {
    v14 = (v3 + *(v12 + 32));
    v15 = *v14;
    v16 = *(v14 + 2);
    v18 = v15;
    v19 = v16;
    v17[1] = 0;
    v17[2] = 0xE000000000000000;
    sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
    return sub_2588BD2D8();
  }

  return result;
}

uint64_t sub_25883C28C(uint64_t a1)
{
  type metadata accessor for EditWeightCellView(0);
  sub_25883C738(0, &qword_27F95FB08, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_25883C030(v2, v3);
}

void sub_25883C328(uint64_t a1)
{
  if (!qword_27F95FB10)
  {
    sub_25883C3A8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB10);
    }
  }
}

unint64_t sub_25883C3A8()
{
  result = qword_27F95FB18;
  if (!qword_27F95FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FB18);
  }

  return result;
}

void sub_25883C3FC(uint64_t a1)
{
  if (!qword_27F95FB20)
  {
    sub_25883C328(255);
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB20);
    }
  }
}

void sub_25883C4AC(uint64_t a1)
{
  if (!qword_27F95FB28)
  {
    sub_25883C5EC(255);
    sub_25883C3FC(255);
    sub_2588BBAC8();
    sub_25883C328(255);
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25883C6EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB28);
    }
  }
}

void sub_25883C5EC(uint64_t a1)
{
  if (!qword_27F95FB30)
  {
    sub_25883C3FC(255);
    sub_2588BBAC8();
    sub_25883C328(255);
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25883C6EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FB30);
    }
  }
}

unint64_t sub_25883C6EC()
{
  result = qword_27F95FB38;
  if (!qword_27F95FB38)
  {
    sub_2588BBAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FB38);
  }

  return result;
}

void sub_25883C738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25883C7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditWeightCellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for EditWeightCellView(0);
  v31 = *(*(v1 - 8) + 80);
  v32 = v1;
  v2 = v0 + ((v31 + 16) & ~v31);

  v30 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v3 = v2 + v30[5];

  v4 = type metadata accessor for MedicalIDData(0);
  v5 = v4[13];
  v6 = sub_2588BB9B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v4[14];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = (v3 + v4[18]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_2587C2610(*v10, v11);
  }

  v12 = v4[19];
  v13 = sub_2588BB818();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v3 + v12, v13);
  }

  v15 = v4[21];
  if (!v8(v3 + v15, 1, v6))
  {
    (*(v7 + 8))(v3 + v15, v6);
  }

  v16 = v30[6];
  v17 = sub_2588BBAC8();
  v18 = *(*(v17 - 8) + 8);
  v18(v2 + v16, v17);
  v19 = v2 + v30[7];
  v18(v19, v17);

  v20 = v2 + v30[8];
  v18(v20, v17);
  v21 = type metadata accessor for MedicalIDWeightFormatter(0);

  v22 = v2 + v32[5];

  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  v24 = *(v23 + 32);
  sub_25883AC98(0);
  v26 = v25;
  v27 = *(v25 - 8);
  if (!(*(v27 + 48))(v22 + v24, 1, v25))
  {
    (*(v27 + 8))(v22 + v24, v26);
  }

  v28 = v32[9];
  sub_25883AC34(0, &qword_27F95DB20, MEMORY[0x28220C1A8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18(v2 + v28, v17);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25883CD88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditWeightCellView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25883CDFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25883CE64(uint64_t a1)
{
  sub_25883AC00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25883CEC0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2588BD918();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_25883CF5C(uint64_t a1, uint64_t a2)
{
  sub_25883AC34(0, &qword_27F95DB20, MEMORY[0x28220C1A8], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MedicalIDEmergencyContactProvider.__allocating_init(medicalIDStore:healthStore:contactStore:)(void *a1, void *a2, void *a3)
{
  swift_allocObject();
  v6 = sub_25878DD28(a2, a3);

  return v6;
}

double sub_25883D048@<D0>(_OWORD *a1@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  if ([objc_opt_self() authorizationStatusForEntityType_] != 3)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v16 = sub_2588BBC98();
    __swift_project_value_buffer(v16, qword_27F969938);
    v17 = sub_2588BBC78();
    v18 = sub_2588BDBD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v51[0] = v20;
      *v19 = 136315138;
      v21 = sub_2588BE0E8();
      v23 = sub_258790224(v21, v22, v51);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_25878B000, v17, v18, "%s: Not authorized to fetch me contact", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x259C8DBE0](v20, -1, -1);
      MEMORY[0x259C8DBE0](v19, -1, -1);
    }

    goto LABEL_12;
  }

  v3 = *(v1 + 24);
  sub_25878FA5C();
  v4 = sub_2588BD9A8();
  *&v51[0] = 0;
  v5 = [v3 _ios_meContactWithKeysToFetch_error_];

  v6 = *&v51[0];
  if (!v5)
  {
    v29 = *&v51[0];
    v30 = sub_2588BB878();

    swift_willThrow();
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v31 = sub_2588BBC98();
    __swift_project_value_buffer(v31, qword_27F969938);
    v32 = v30;
    v33 = sub_2588BBC78();
    v34 = sub_2588BDBD8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v51[0] = v36;
      *v35 = 136315394;
      v37 = sub_2588BE0E8();
      v39 = sub_258790224(v37, v38, v51);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      swift_getErrorValue();
      v40 = sub_2588BDFD8();
      v42 = sub_258790224(v40, v41, v51);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_25878B000, v33, v34, "%s: unable to fetch me contact with error: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v36, -1, -1);
      MEMORY[0x259C8DBE0](v35, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 emergencyContactUsingSimCardNumberWithContact:v5 property:0];
  v10 = [v9 phoneNumber];
  if (!v10)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v43 = sub_2588BBC98();
    __swift_project_value_buffer(v43, qword_27F969938);
    v44 = sub_2588BBC78();
    v45 = sub_2588BDBD8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v51[0] = v47;
      *v46 = 136315138;
      v48 = sub_2588BE0E8();
      v50 = sub_258790224(v48, v49, v51);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_25878B000, v44, v45, "%s: Me contact did not have a phone number available to use", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x259C8DBE0](v47, -1, -1);
      MEMORY[0x259C8DBE0](v46, -1, -1);
    }

LABEL_12:
    sub_25880088C(v51);
    goto LABEL_13;
  }

  v11 = sub_2588BD858();
  MEMORY[0x28223BE20](v11 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DA88;
  v13 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = v12;
  sub_2588BBAB8();
  sub_2588BD8B8();
  v15 = sub_2588BD868();

  [v9 setRelationship_];

  MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v9, v5, v51);
  nullsub_1();
LABEL_13:
  v24 = v55;
  a1[4] = v54;
  a1[5] = v24;
  v25 = v57;
  a1[6] = v56;
  a1[7] = v25;
  v26 = v51[1];
  *a1 = v51[0];
  a1[1] = v26;
  result = *&v52;
  v28 = v53;
  a1[2] = v52;
  a1[3] = v28;
  return result;
}

uint64_t MedicalIDEmergencyContactProvider.deinit()
{

  return v0;
}

uint64_t sub_25883D768(void *a1)
{
  sub_25878EA48(a1);
  swift_beginAccess();
}

uint64_t sub_25883D7B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25883E0C8(v7);
      v7 = result;
    }

    v82 = (v7 + 16);
    v83 = *(v7 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v7 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_25883DE04((*a3 + 136 * *v84), (*a3 + 136 * *v86), (*a3 + 136 * v87), v91);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 136 * v6 + 128);
      v10 = 136 * v8;
      v11 = *a3 + 136 * v8;
      v12 = *(v11 + 128);
      v13 = v8 + 2;
      v14 = (v11 + 400);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 17;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 136 * v6 - 136;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v104 = *(v22 + v10 + 96);
            v106 = *(v22 + v10 + 112);
            v108 = *(v22 + v10 + 128);
            v96 = *(v22 + v10 + 32);
            v98 = *(v22 + v10 + 48);
            v100 = *(v22 + v10 + 64);
            v102 = *(v22 + v10 + 80);
            v92 = *(v22 + v10);
            v94 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x88uLL);
            *(v21 + 96) = v104;
            *(v21 + 112) = v106;
            *(v21 + 128) = v108;
            *(v21 + 32) = v96;
            *(v21 + 48) = v98;
            *(v21 + 64) = v100;
            *(v21 + 80) = v102;
            *v21 = v92;
            *(v21 + 16) = v94;
          }

          ++v20;
          v18 -= 136;
          v10 += 136;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2587F01D8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_2587F01D8((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v36;
    v37 = v7 + 32;
    v38 = (v7 + 32 + 16 * v35);
    *v38 = v8;
    v38[1] = v6;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 32);
          v41 = *(v7 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v7 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v37 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v7 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v37 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v37 + 16 * (v39 - 1));
        v78 = *v77;
        v79 = (v37 + 16 * v39);
        v80 = v79[1];
        sub_25883DE04((*a3 + 136 * *v77), (*a3 + 136 * *v79), (*a3 + 136 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v39 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v7 + 16);
        if (v39 >= v81)
        {
          goto LABEL_101;
        }

        v36 = v81 - 1;
        result = memmove((v37 + 16 * v39), v79 + 2, 16 * (v81 - 1 - v39));
        *(v7 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v37 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v7 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v37 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 136 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 128) >= *(v27 - 8))
    {
LABEL_29:
      ++v6;
      v24 += 136;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 136;
    v105 = *(v27 + 96);
    v107 = *(v27 + 112);
    v109 = *(v27 + 128);
    v97 = *(v27 + 32);
    v99 = *(v27 + 48);
    v101 = *(v27 + 64);
    v103 = *(v27 + 80);
    v93 = *v27;
    v95 = *(v27 + 16);
    v29 = *(v27 - 56);
    *(v27 + 64) = *(v27 - 72);
    *(v27 + 80) = v29;
    v30 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 40);
    *(v27 + 112) = v30;
    *(v27 + 128) = *(v27 - 8);
    v31 = *(v27 - 88);
    *(v27 + 32) = *(v27 - 104);
    *(v27 + 48) = v31;
    v32 = *(v27 - 120);
    *v27 = *(v27 - 136);
    *(v27 + 16) = v32;
    *(v28 + 64) = v101;
    *(v28 + 80) = v103;
    *(v28 + 96) = v105;
    *(v28 + 112) = v107;
    *(v28 + 128) = v109;
    *(v28 + 32) = v97;
    *(v28 + 48) = v99;
    v27 -= 136;
    *v28 = v93;
    *(v28 + 16) = v95;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25883DE04(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[136 * v9] <= a4)
    {
      memmove(a4, __dst, 136 * v9);
    }

    v12 = &v4[136 * v9];
    if (v8 < 136)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 16) < *(v4 + 16))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 136;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 136;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 136;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v11] <= a4)
  {
    memmove(a4, __src, 136 * v11);
  }

  v12 = &v4[136 * v11];
  if (v10 >= 136 && v6 > v7)
  {
LABEL_20:
    v5 -= 136;
    do
    {
      v15 = v5 + 136;
      if (*(v12 - 1) < *(v6 - 1))
      {
        v17 = v6 - 136;
        if (v15 != v6)
        {
          memmove(v5, v6 - 136, 0x88uLL);
        }

        if (v12 <= v4 || (v6 -= 136, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 136);
      if (v15 != v12)
      {
        memmove(v5, v12 - 136, 0x88uLL);
      }

      v5 -= 136;
      v12 -= 136;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 136;
  if (v6 != v4 || v6 >= &v4[136 * v18])
  {
    memmove(v6, v4, 136 * v18);
  }

  return 1;
}

uint64_t sub_25883E03C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25883E0C8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_25883E0DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878E0CC(0, &qword_27F95E830, sub_2587D6188, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_25883E204(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[5];
  v6 = a2[3];
  v67 = a2[4];
  v68 = v5;
  v7 = a2[5];
  v8 = a2[7];
  v69 = a2[6];
  v70 = v8;
  v9 = a2[1];
  v63 = *a2;
  v64 = v9;
  v10 = a2[3];
  v12 = *a2;
  v11 = a2[1];
  v65 = a2[2];
  v66 = v10;
  v13 = *v2;
  v75 = v67;
  v76 = v7;
  v14 = a2[7];
  v77 = v69;
  v78 = v14;
  v71 = v12;
  v72 = v11;
  v73 = v65;
  v74 = v6;
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)(v62);
  v15 = sub_2588BE078();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    while (1)
    {
      v19 = (*(v13 + 48) + (v17 << 7));
      v21 = v19[2];
      v20 = v19[3];
      v22 = v19[1];
      v62[0] = *v19;
      v62[1] = v22;
      v62[2] = v21;
      v62[3] = v20;
      v23 = v19[4];
      v24 = v19[5];
      v25 = v19[7];
      v62[6] = v19[6];
      v62[7] = v25;
      v62[4] = v23;
      v62[5] = v24;
      v26 = *v19;
      v27 = v19[1];
      v28 = v19[3];
      v56 = v19[2];
      v57 = v28;
      v54 = v26;
      v55 = v27;
      v29 = v19[4];
      v30 = v19[5];
      v31 = v19[7];
      v60 = v19[6];
      v61 = v31;
      v58 = v29;
      v59 = v30;
      sub_2587914E8(v62, v53);
      v32 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v54, &v63);
      v75 = v58;
      v76 = v59;
      v77 = v60;
      v78 = v61;
      v71 = v54;
      v72 = v55;
      v73 = v56;
      v74 = v57;
      sub_2587C66FC(&v71);
      if (v32)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v53[4] = v67;
    v53[5] = v68;
    v53[6] = v69;
    v53[7] = v70;
    v53[0] = v63;
    v53[1] = v64;
    v53[2] = v65;
    v53[3] = v66;
    sub_2587C66FC(v53);
    v39 = (*(v13 + 48) + (v17 << 7));
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    v57 = v39[3];
    v43 = v39[4];
    v44 = v39[5];
    v45 = v39[7];
    v60 = v39[6];
    v61 = v45;
    v58 = v43;
    v59 = v44;
    v55 = v41;
    v56 = v42;
    v54 = v40;
    v46 = *v39;
    v47 = v39[1];
    v48 = v39[3];
    a1[2] = v39[2];
    a1[3] = v48;
    *a1 = v46;
    a1[1] = v47;
    v49 = v39[4];
    v50 = v39[5];
    v51 = v39[7];
    a1[6] = v39[6];
    a1[7] = v51;
    a1[4] = v49;
    a1[5] = v50;
    sub_2587914E8(&v54, &v52);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v67;
    v76 = v68;
    v77 = v69;
    v78 = v70;
    v71 = v63;
    v72 = v64;
    v73 = v65;
    v74 = v66;
    *&v54 = *v3;
    sub_2587914E8(&v71, v62);
    sub_25883ECC8(&v71, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v54;
    v34 = v68;
    a1[4] = v67;
    a1[5] = v34;
    v35 = v70;
    a1[6] = v69;
    a1[7] = v35;
    v36 = v64;
    *a1 = v63;
    a1[1] = v36;
    v37 = v66;
    result = 1;
    a1[2] = v65;
    a1[3] = v37;
  }

  return result;
}

uint64_t sub_25883E490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2587916D4(0, qword_27F95FB68, MEMORY[0x277D84098]);
  result = sub_2588BDDA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v36 = v2;
    v37 = (v8 + 63) >> 6;
    v11 = result + 56;
    v38 = v3;
    v39 = result;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v40 = (v10 - 1) & v10;
LABEL_15:
      v21 = *(v3 + 48) + ((v18 | (v6 << 6)) << 7);
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v42 = *(v21 + 64);
      v43 = *(v21 + 48);
      v45 = *(v21 + 72);
      v46 = *(v21 + 56);
      v41 = *(v21 + 80);
      v44 = *(v21 + 88);
      v47 = *(v21 + 96);
      v48 = *(v21 + 112);
      sub_2588BE038();
      sub_2588BE058();
      if (v22)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v25)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v27)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v46)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v45)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v44)
      {
        sub_2588BD908();
      }

      result = sub_2588BE078();
      v5 = v39;
      v28 = -1 << *(v39 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v13 = v23;
        v14 = v44;
        v16 = v45;
        v15 = v46;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v13 = v23;
      v14 = v44;
      v16 = v45;
      v15 = v46;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v17 = *(v39 + 48) + (v12 << 7);
      *v17 = v13;
      *(v17 + 8) = v22;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      *(v17 + 32) = v26;
      *(v17 + 40) = v27;
      *(v17 + 48) = v43;
      *(v17 + 56) = v15;
      *(v17 + 64) = v42;
      *(v17 + 72) = v16;
      *(v17 + 80) = v41;
      *(v17 + 88) = v14;
      *(v17 + 96) = v47;
      *(v17 + 112) = v48;
      ++*(v39 + 16);
      v3 = v38;
      v10 = v40;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v6 >= v37)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero(v7, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25883E8AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258840248(0);
  result = sub_2588BDDA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v36 = v2;
    v37 = (v8 + 63) >> 6;
    v11 = result + 56;
    v38 = v3;
    v39 = result;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v40 = (v10 - 1) & v10;
LABEL_15:
      v21 = *(v3 + 48) + 136 * (v18 | (v6 << 6));
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v42 = *(v21 + 64);
      v43 = *(v21 + 48);
      v45 = *(v21 + 72);
      v46 = *(v21 + 56);
      v41 = *(v21 + 80);
      v44 = *(v21 + 88);
      v47 = *(v21 + 96);
      v48 = *(v21 + 112);
      v49 = *(v21 + 128);
      sub_2588BE038();
      sub_2588BE058();
      if (v22)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v25)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v27)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v46)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v45)
      {
        sub_2588BD908();
      }

      sub_2588BE058();
      if (v44)
      {
        sub_2588BD908();
      }

      result = sub_2588BE078();
      v5 = v39;
      v28 = -1 << *(v39 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v13 = v23;
        v14 = v44;
        v16 = v45;
        v15 = v46;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v13 = v23;
      v14 = v44;
      v16 = v45;
      v15 = v46;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v17 = *(v39 + 48) + 136 * v12;
      *v17 = v13;
      *(v17 + 8) = v22;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      *(v17 + 32) = v26;
      *(v17 + 40) = v27;
      *(v17 + 48) = v43;
      *(v17 + 56) = v15;
      *(v17 + 64) = v42;
      *(v17 + 72) = v16;
      *(v17 + 80) = v41;
      *(v17 + 88) = v14;
      *(v17 + 96) = v47;
      *(v17 + 112) = v48;
      *(v17 + 128) = v49;
      ++*(v39 + 16);
      v3 = v38;
      v10 = v40;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v6 >= v37)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero(v7, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

__int128 *sub_25883ECC8(__int128 *result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = result[5];
  v64 = result[4];
  v65 = v7;
  v8 = result[7];
  v66 = result[6];
  v67 = v8;
  v9 = result[1];
  v60 = *result;
  v61 = v9;
  v10 = result[3];
  v62 = result[2];
  v63 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25883E490(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_25883EF00();
      goto LABEL_12;
    }

    sub_25883F240(v11 + 1);
  }

  v13 = *v3;
  v14 = v6[5];
  v56 = v6[4];
  v57 = v14;
  v15 = v6[7];
  v58 = v6[6];
  v59 = v15;
  v16 = v6[1];
  v52 = *v6;
  v53 = v16;
  v17 = v6[3];
  v54 = v6[2];
  v55 = v17;
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)(v51);
  result = sub_2588BE078();
  v18 = -1 << *(v13 + 32);
  a2 = result & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    do
    {
      v20 = (*(v13 + 48) + (a2 << 7));
      v22 = v20[2];
      v21 = v20[3];
      v23 = v20[1];
      v51[0] = *v20;
      v51[1] = v23;
      v51[2] = v22;
      v51[3] = v21;
      v24 = v20[4];
      v25 = v20[5];
      v26 = v20[7];
      v51[6] = v20[6];
      v51[7] = v26;
      v51[4] = v24;
      v51[5] = v25;
      v27 = *v20;
      v28 = v20[1];
      v29 = v20[3];
      v45 = v20[2];
      v46 = v29;
      v43 = v27;
      v44 = v28;
      v30 = v20[4];
      v31 = v20[5];
      v32 = v20[7];
      v49 = v20[6];
      v50 = v32;
      v47 = v30;
      v48 = v31;
      sub_2587914E8(v51, &v52);
      v33 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v43, &v60);
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v52 = v43;
      v53 = v44;
      v54 = v45;
      v55 = v46;
      result = sub_2587C66FC(&v52);
      if (v33)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v34 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v35 = (*(v34 + 48) + (a2 << 7));
  v36 = v61;
  *v35 = v60;
  v35[1] = v36;
  v37 = v63;
  v35[2] = v62;
  v35[3] = v37;
  v38 = v67;
  v35[6] = v66;
  v35[7] = v38;
  v39 = v65;
  v35[4] = v64;
  v35[5] = v39;
  v40 = *(v34 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (!v41)
  {
    *(v34 + 16) = v42;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2588BDFB8();
  __break(1u);
  return result;
}

void *sub_25883EF00()
{
  v1 = v0;
  sub_2587916D4(0, qword_27F95FB68, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2588BDD98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = (v14 | (v8 << 6)) << 7;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v26[3] = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = v18[7];
        v26[6] = v18[6];
        v26[7] = v24;
        v26[4] = v22;
        v26[5] = v23;
        v26[1] = v19;
        v26[2] = v21;
        v26[0] = v20;
        memmove((*(v4 + 48) + v17), v18, 0x80uLL);
        result = sub_2587914E8(v26, &v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25883F0A0()
{
  v1 = v0;
  sub_258840248(0);
  v2 = *v0;
  v3 = sub_2588BDD98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_258791754(v25, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 136 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v19 = v17[1];
      v18 = v17[2];
      v20 = v17[4];
      v25[3] = v17[3];
      v25[4] = v20;
      v21 = v17[5];
      v22 = v17[6];
      v23 = v17[7];
      v26 = *(v17 + 16);
      v25[6] = v22;
      v25[7] = v23;
      v25[5] = v21;
      v25[0] = *v17;
      v25[1] = v19;
      v25[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x88uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25883F240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2587916D4(0, qword_27F95FB68, MEMORY[0x277D84098]);
  result = sub_2588BDDA8();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_39:
    *v2 = v5;
    return result;
  }

  v38 = v3;
  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v21 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v24 = (*(v3 + 48) + ((v21 | (v6 << 6)) << 7));
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[3];
    v42 = v24[2];
    v43 = v27;
    v28 = v24[4];
    v29 = v24[5];
    v30 = v24[7];
    v46 = v24[6];
    v47 = v30;
    v44 = v28;
    v45 = v29;
    v40 = v26;
    v41 = v25;
    sub_2588BE038();
    if (*(&v40 + 1))
    {
      sub_2588BE058();
      sub_2587914E8(&v40, v39);
      sub_2588BD908();
      if (*(&v41 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_2588BE058();
      sub_2587914E8(&v40, v39);
      if (*(&v41 + 1))
      {
LABEL_17:
        sub_2588BE058();
        sub_2588BD908();
        if (*(&v42 + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    sub_2588BE058();
    if (*(&v42 + 1))
    {
LABEL_18:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v43 + 1))
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

LABEL_24:
    sub_2588BE058();
    if (*(&v43 + 1))
    {
LABEL_19:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v44 + 1))
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_2588BE058();
    if (*(&v44 + 1))
    {
LABEL_20:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v45 + 1))
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_2588BE058();
    if (*(&v45 + 1))
    {
LABEL_21:
      sub_2588BE058();
      sub_2588BD908();
      goto LABEL_28;
    }

LABEL_27:
    sub_2588BE058();
LABEL_28:
    v3 = v38;
    result = sub_2588BE078();
    v31 = -1 << *(v5 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      while (++v33 != v35 || (v34 & 1) == 0)
      {
        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *(v12 + 8 * v33);
        if (v37 != -1)
        {
          v13 = __clz(__rbit64(~v37)) + (v33 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_41;
    }

    v13 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = (*(v5 + 48) + (v13 << 7));
    v15 = v40;
    v17 = v42;
    v16 = v43;
    v14[1] = v41;
    v14[2] = v17;
    *v14 = v15;
    v18 = v44;
    v19 = v45;
    v20 = v47;
    v14[6] = v46;
    v14[7] = v20;
    v14[4] = v18;
    v14[5] = v19;
    v14[3] = v16;
    ++*(v5 + 16);
  }

  v22 = v6;
  while (1)
  {
    v6 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_39;
    }

    v23 = *(v7 + 8 * v6);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v10 = (v23 - 1) & v23;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_25883F630(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_258840248(0);
  result = sub_2588BDDA8();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_39:
    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v20 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v23 = *(v3 + 48) + 136 * (v20 | (v6 << 6));
    v24 = *(v23 + 64);
    v25 = *(v23 + 16);
    v26 = *(v23 + 32);
    v41 = *(v23 + 48);
    v42 = v24;
    v40 = v26;
    v27 = *(v23 + 80);
    v28 = *(v23 + 96);
    v29 = *(v23 + 112);
    v46 = *(v23 + 128);
    v44 = v28;
    v45 = v29;
    v43 = v27;
    v38 = *v23;
    v39 = v25;
    sub_2588BE038();
    if (*(&v38 + 1))
    {
      sub_2588BE058();
      sub_258791754(&v38, v37);
      sub_2588BD908();
      if (*(&v39 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_2588BE058();
      sub_258791754(&v38, v37);
      if (*(&v39 + 1))
      {
LABEL_17:
        sub_2588BE058();
        sub_2588BD908();
        if (*(&v40 + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    sub_2588BE058();
    if (*(&v40 + 1))
    {
LABEL_18:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v41 + 1))
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

LABEL_24:
    sub_2588BE058();
    if (*(&v41 + 1))
    {
LABEL_19:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v42 + 1))
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_2588BE058();
    if (*(&v42 + 1))
    {
LABEL_20:
      sub_2588BE058();
      sub_2588BD908();
      if (*(&v43 + 1))
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_2588BE058();
    if (*(&v43 + 1))
    {
LABEL_21:
      sub_2588BE058();
      sub_2588BD908();
      goto LABEL_28;
    }

LABEL_27:
    sub_2588BE058();
LABEL_28:
    result = sub_2588BE078();
    v30 = -1 << *(v5 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v11 + 8 * (v31 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = *(v11 + 8 * v32);
        if (v36 != -1)
        {
          v12 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_41;
    }

    v12 = __clz(__rbit64((-1 << v31) & ~*(v11 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v5 + 48) + 136 * v12;
    v14 = v39;
    v15 = v40;
    v16 = v42;
    *(v13 + 48) = v41;
    *(v13 + 64) = v16;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    v17 = v43;
    v18 = v44;
    v19 = v45;
    *(v13 + 128) = v46;
    *(v13 + 96) = v18;
    *(v13 + 112) = v19;
    *(v13 + 80) = v17;
    *v13 = v38;
    ++*(v5 + 16);
  }

  v21 = v6;
  while (1)
  {
    v6 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_39;
    }

    v22 = *(v3 + 56 + 8 * v6);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v9 = (v22 - 1) & v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_25883FAAC(uint64_t a1)
{
  sub_25878E42C(0, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25883FB2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_258791374();
  result = MEMORY[0x259C8CC60](v2, &type metadata for MedicalIDEmergencyContact, v3);
  v12 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[5];
      v13[4] = v5[4];
      v13[5] = v6;
      v7 = v5[7];
      v13[6] = v5[6];
      v13[7] = v7;
      v8 = v5[1];
      v13[0] = *v5;
      v13[1] = v8;
      v9 = v5[3];
      v13[2] = v5[2];
      v13[3] = v9;
      sub_2587914E8(v13, v11);
      sub_25883E204(v10, v13);
      v11[4] = v10[4];
      v11[5] = v10[5];
      v11[6] = v10[6];
      v11[7] = v10[7];
      v11[0] = v10[0];
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      sub_2587C66FC(v11);
      v5 += 8;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

id sub_25883FBF8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a1 phoneNumberContactIdentifier];
  v64 = a2;
  if (v4)
  {
    v5 = v4;
    v62 = sub_2588BD8A8();
    v63 = v6;

    v7 = [a2 phoneNumbers];
    sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
    v8 = sub_2588BD9B8();

    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2588BDD68())
    {
      v10 = 0;
      v66 = v8 & 0xFFFFFFFFFFFFFF8;
      v67 = (v8 & 0xC000000000000001);
      v65 = v8;
      while (1)
      {
        if (v67)
        {
          v11 = MEMORY[0x259C8CF80](v10, v8);
        }

        else
        {
          if (v10 >= *(v66 + 16))
          {
            goto LABEL_20;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 identifier];
        v15 = sub_2588BD8A8();
        v17 = v16;

        v18 = [v3 phoneNumberContactIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = i;
          v21 = v3;
          v22 = sub_2588BD8A8();
          v24 = v23;

          if (v15 == v22 && v17 == v24)
          {

            return v62;
          }

          v25 = sub_2588BDF98();

          v3 = v21;
          i = v20;
          v8 = v65;
          if (v25)
          {

            return v62;
          }
        }

        else
        {
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  result = [v3 phoneNumber];
  if (result)
  {
    v27 = result;
    v28 = sub_2588BD8A8();
    v30 = v29;

    v68 = v28;
    v69 = v30;
    v31 = sub_2588BB708();
    v32 = *(v31 - 8);
    v33 = *(v32 + 64);
    MEMORY[0x28223BE20](v31);
    v34 = sub_2588BB6E8();
    MEMORY[0x28223BE20](v34);
    v35 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB6F8();
    v36 = *(v32 + 8);
    v36(v35, v31);
    sub_25878F648();
    v37 = MEMORY[0x277D837D0];
    v38 = sub_2588BDCF8();
    v36(v35, v31);

    v68 = v38;
    sub_25878E42C(0, &qword_280C0DE60, v37, MEMORY[0x277D83940]);
    sub_25878F69C();
    sub_2588BD7A8();

    v39 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v40 = sub_2588BD868();

    v67 = [v39 initWithStringValue_];

    v41 = [v64 phoneNumbers];
    sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
    v42 = sub_2588BD9B8();

    if (v42 >> 62)
    {
      goto LABEL_43;
    }

    for (j = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2588BDD68())
    {
      v44 = 0;
      v65 = v42 & 0xFFFFFFFFFFFFFF8;
      v66 = v42 & 0xC000000000000001;
      while (1)
      {
        if (v66)
        {
          v45 = MEMORY[0x259C8CF80](v44, v42);
        }

        else
        {
          if (v44 >= *(v65 + 16))
          {
            goto LABEL_42;
          }

          v45 = *(v42 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v48 = [v45 value];
        v49 = [v48 digits];

        v50 = sub_2588BD8A8();
        v52 = v51;

        v53 = [v67 digits];
        v54 = sub_2588BD8A8();
        v56 = v55;

        if (v50 == v54 && v52 == v56)
        {

LABEL_40:

          v59 = v46;
          v60 = [v59 identifier];
          v61 = sub_2588BD8A8();

          return v61;
        }

        v58 = sub_2588BDF98();

        if (v58)
        {
          goto LABEL_40;
        }

        ++v44;
        if (v47 == j)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    return 0;
  }

  return result;
}

void sub_258840248(uint64_t a1)
{
  if (!qword_27F95FB60)
  {
    sub_2587916D4(255, &qword_280C0DE68, _s14OrderedElementVMa);
    sub_258791660();
    v1 = sub_2588BDDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FB60);
    }
  }
}

uint64_t sub_2588402C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_258840368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = MEMORY[0x28223BE20](a1);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v13(v12);
  a5(v14);
  return sub_2588BD4F8();
}

uint64_t sub_258840494@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_2588404A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v15 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_2588BD518();
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v30 = *(a1 + 48);
  v31 = v5;
  v32 = v6;
  swift_getWitnessTable();
  v7 = sub_2588BCD08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v18 = v11;
  v17 = v15;
  v19 = v30;
  v20 = v6;
  v21 = v2;
  sub_2588BCCF8();
  WitnessTable = swift_getWitnessTable();
  sub_2587A6F28(v7, WitnessTable, &v26);
  (*(v8 + 8))(v10, v7);
  v24 = v26;
  v25 = v27;
  sub_258840D70(255, &qword_27F95D5F8, sub_2587AA704, MEMORY[0x277CE0860]);
  sub_2588BC1E8();
  v13 = sub_258840DD4();
  v22 = WitnessTable;
  v23 = v13;
  swift_getWitnessTable();
  sub_2588BC2C8();
  swift_getWitnessTable();
  sub_2587DCF7C();

  v26 = v28;
  v27 = v29;
  sub_2587DCF7C();
}

uint64_t sub_258840754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a8;
  v15 = sub_2588BD518();
  v25 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v24 = &v23 - v19;
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  v29[5] = a5;
  v29[6] = a6;
  v29[7] = a7;
  v29[8] = a1;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v28[5] = a5;
  v28[6] = a6;
  v28[7] = a7;
  v28[8] = a1;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;
  v27[6] = a6;
  v27[7] = a7;
  v27[8] = a1;
  sub_258840368(sub_258840E5C, v29, sub_258840E74, v28, sub_258840E8C, v27, a3, a2, a4, a6);
  v29[10] = a6;
  v29[11] = a5;
  v29[12] = a7;
  swift_getWitnessTable();
  v20 = v24;
  sub_2587DCF7C();
  v21 = *(v25 + 8);
  v21(v18, v15);
  sub_2587DCF7C();
  return (v21)(v20, v15);
}

uint64_t sub_258840980(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  (*v7)();
  sub_2587DCF7C();
  v10 = *(v3 + 8);
  v10(v6, a2);
  sub_2587DCF7C();
  return (v10)(v9, a2);
}

uint64_t sub_258840AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  (*(v8 + 16))();
  sub_2587DCF7C();
  v11 = *(v4 + 8);
  v11(v7, a3);
  sub_2587DCF7C();
  return (v11)(v10, a3);
}

uint64_t sub_258840BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  (*(v9 + 32))();
  sub_2587DCF7C();
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_2587DCF7C();
  return (v12)(v11, a4);
}

void sub_258840D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_258840DD4()
{
  result = qword_27F95D620;
  if (!qword_27F95D620)
  {
    sub_258840D70(255, &qword_27F95D5F8, sub_2587AA704, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D620);
  }

  return result;
}

uint64_t type metadata accessor for HealthDemographicData(uint64_t a1)
{
  result = qword_27F95FBF0;
  if (!qword_27F95FBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258840F34(uint64_t a1)
{
  sub_2588BB818();
  if (v1 <= 0x3F)
  {
    sub_25878E130(319, &qword_27F95E748, 0x277CCD7E8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKBloodType(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_258840FF4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_2588BDF98()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_2588BDF98()) && (v6 = type metadata accessor for HealthDemographicData(0), (MEMORY[0x259C8A8E0](a1 + *(v6 + 24), a2 + *(v6 + 24))) && (sub_25878E130(0, &qword_27F95D878, 0x277D82BB8), (sub_2588BDCD8()) && (sub_2588BDCD8()))
  {
    return *(a1 + *(v6 + 36)) == *(a2 + *(v6 + 36));
  }

  else
  {
    return 0;
  }
}

void sub_2588410EC(uint64_t a1)
{
  sub_258847458(319, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_2588BB9B8();
    if (v2 <= 0x3F)
    {
      sub_2587AFFC8(319);
      if (v3 <= 0x3F)
      {
        sub_258847458(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2587B2F78();
          if (v5 <= 0x3F)
          {
            sub_258847458(319, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_258847674(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25884132C(uint64_t a1)
{
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588476C4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  return sub_258847974(a1, sub_2587AFFC8);
}

void sub_25884141C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v84 = a1;
  v87 = *(a1 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](a1);
  v86 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588465CC(0);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258846548(0);
  v78 = v6;
  v77 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2588BB9B8();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v11 = sub_2588BB948();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB938();
  v15 = sub_2588BB928();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB918();
  v19 = sub_2588BB998();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  (*(v12 + 8))(v14, v11);
  (*(v80 + 8))(v10, v81);
  v89 = v19;
  v90 = v21;
  sub_25878F648();
  v22 = sub_2588BCDF8();
  v80 = v23;
  v81 = v22;
  v25 = v24;
  LOBYTE(v11) = v26;
  LOBYTE(v15) = sub_2588BCB78();
  sub_2588BBE38();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v16) = v11 & 1;
  v92 = v11 & 1;
  v91 = 0;
  LOBYTE(v11) = sub_2588BCBE8();
  sub_2588BBE38();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  LOBYTE(v89) = 0;
  v43 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  v44 = sub_2588BD148();
  LOBYTE(v18) = sub_2588BCB88();
  sub_258846690(0);
  v46 = &v5[*(v45 + 36)];
  v47 = *(sub_2588BC2A8() + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_2588BC6B8();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #20.0 }

  *v46 = _Q0;
  sub_258846858(0);
  *&v46[*(v55 + 36)] = 256;
  v56 = v80;
  *v5 = v81;
  *(v5 + 1) = v25;
  v5[16] = v16;
  *(v5 + 3) = v56;
  v5[32] = v15;
  *(v5 + 5) = v28;
  *(v5 + 6) = v30;
  *(v5 + 7) = v32;
  *(v5 + 8) = v34;
  v5[72] = 0;
  v5[80] = v11;
  v57 = v85;
  *(v5 + 11) = v36;
  *(v5 + 12) = v38;
  *(v5 + 13) = v40;
  *(v5 + 14) = v42;
  v5[120] = 0;
  *(v5 + 16) = v44;
  v58 = v83;
  v5[136] = v18;
  v59 = sub_2588BCC08();
  KeyPath = swift_getKeyPath(byte_2588C4E38);
  sub_2588466C4(0, &qword_27F95FCD8, sub_258846690, sub_2587B1964);
  v62 = &v5[*(v61 + 36)];
  *v62 = KeyPath;
  v62[1] = v59;
  *&v5[*(v57 + 36)] = sub_2588BD158();
  v64 = v86;
  v63 = v87;
  v65 = v82;
  v66 = v84;
  (*(v87 + 16))(v86, v82, v84);
  v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = *(v66 + 16);
  (*(v63 + 32))(v68 + v67, v64, v66);
  v69 = sub_258846940();
  sub_2588BCED8();

  sub_258847974(v5, sub_2588465CC);
  sub_258847674(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_2588BFF50;
  v71 = (v65 + *(v66 + 64));
  v72 = v71[1];
  *(v70 + 32) = *v71;
  *(v70 + 40) = v72;
  *(v70 + 48) = 1702125892;
  *(v70 + 56) = 0xE400000000000000;

  v73 = sub_2588BD9A8();

  v74 = HKUIJoinStringsForAutomationIdentifier();

  if (v74)
  {
    sub_2588BD8A8();

    v89 = v57;
    v90 = v69;
    swift_getOpaqueTypeConformance2();
    v75 = v78;
    sub_2588BCFB8();

    (*(v77 + 8))(v58, v75);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258841BC0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  if (v2)
  {
    a1 = v2();
  }

  MEMORY[0x28223BE20](a1);
  sub_2588BD5F8();
  sub_2588BC0D8();
}

void *sub_258841C78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](a1);
  if (*(v2 + *(v9 + 60)) == 1 && (v10 = (v2 + *(a1 + 72)), v11 = *v10, v12 = *(v10 + 1), v19[16] = v11, v20 = v12, sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]), result = sub_2588BD2C8(), v19[15] == 1))
  {
    v13 = (v2 + *(a1 + 64));
    v15 = *v13;
    v14 = v13[1];
    (*(v6 + 16))(&v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a1);
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = *(a1 + 16);
    (*(v6 + 32))(v17 + v16, &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);

    v18 = sub_258847864;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v18 = 0;
    v17 = 0;
  }

  *a2 = v15;
  a2[1] = v14;
  a2[2] = v18;
  a2[3] = v17;
  return result;
}

uint64_t sub_258841E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DatePickerEditView(0, a2, a3, a4);
  v6 = *(a1 + *(v5 + 56));
  if (v6)
  {
    v6();
  }

  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2588BB9B8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_25884132C(v9);
  v11 = (a1 + *(v5 + 72));
  v12 = *v11;
  v13 = *(v11 + 1);
  v15[16] = v12;
  v16 = v13;
  v15[15] = 0;
  sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_258841F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v121 = sub_2588BC908();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588468EC(0, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
  v118 = v4;
  v117 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v116 = &v114 - v5;
  sub_258846258(0);
  v157 = v6;
  v158 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v115 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588463DC(0);
  v153 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v154 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v114 - v12;
  v171 = *(a1 - 8);
  v170 = *(v171 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DFBD0(255);
  sub_258846410(255);
  v15 = *(a1 + 16);
  sub_2588BC788();
  swift_getTupleTypeMetadata3();
  sub_2588BD658();
  swift_getWitnessTable();
  v16 = sub_2588BD368();
  sub_258846D18(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  v17 = sub_2588BD408();
  v143 = v17;
  v144 = v16;
  WitnessTable = swift_getWitnessTable();
  v142 = WitnessTable;
  v141 = swift_getWitnessTable();
  v176 = v16;
  v177 = v17;
  v178 = WitnessTable;
  v179 = v141;
  v19 = type metadata accessor for MedicalIDAXLayoutView(0, &v176);
  v145 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v136 = &v114 - v20;
  v128 = v19;
  v21 = sub_2588BC1E8();
  v140 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v134 = &v114 - v22;
  sub_258837EEC(255);
  v129 = v21;
  v23 = sub_2588BC1E8();
  v146 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v130 = &v114 - v24;
  v127 = swift_getWitnessTable();
  v175[4] = v127;
  v175[5] = MEMORY[0x277CE03F0];
  v25 = swift_getWitnessTable();
  v126 = v25;
  v26 = sub_25884772C(qword_27F95FA28, sub_258837EEC, MEMORY[0x277CE0470]);
  v175[2] = v25;
  v175[3] = v26;
  v27 = swift_getWitnessTable();
  v176 = v23;
  v177 = v27;
  v124 = v23;
  v28 = v27;
  v125 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v147 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v161 = (&v114 - v30);
  sub_2587AFFC8(255);
  v32 = v31;
  v176 = v23;
  v177 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_258846EB8();
  v35 = OpaqueTypeMetadata2;
  v131 = OpaqueTypeMetadata2;
  v176 = OpaqueTypeMetadata2;
  v177 = v32;
  v36 = v32;
  v123 = v32;
  v178 = OpaqueTypeConformance2;
  v179 = v34;
  v133 = OpaqueTypeConformance2;
  v132 = v34;
  v37 = MEMORY[0x277CE0E40];
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = sub_2588BB9B8();
  v135 = v39;
  v176 = v35;
  v177 = v36;
  v178 = OpaqueTypeConformance2;
  v179 = v34;
  v150 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v149 = v40;
  v148 = sub_258847538(&qword_27F95E768, MEMORY[0x28220C000]);
  v176 = v38;
  v177 = v39;
  v178 = v40;
  v179 = v148;
  v163 = swift_getOpaqueTypeMetadata2();
  v164 = *(v163 - 8);
  v41 = MEMORY[0x28223BE20](v163);
  v165 = &v114 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v42;
  MEMORY[0x28223BE20](v41);
  v151 = v43;
  v138 = &v114 - v43;
  v137 = swift_checkMetadataState();
  v139 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v162 = &v114 - v44;
  v46 = v171;
  v45 = v172;
  v47 = *(v171 + 16);
  v167 = v171 + 16;
  v47(v14, v172, a1);
  v48 = *(v46 + 80);
  v168 = v47;
  v169 = v48;
  v49 = (v48 + 32) & ~v48;
  v166 = v49;
  v50 = swift_allocObject();
  v159 = *(a1 + 24);
  v51 = v159;
  v160 = v15;
  *(v50 + 16) = v15;
  *(v50 + 24) = v51;
  v52 = *(v46 + 32);
  v52(v50 + v49, v14, a1);
  v171 = v46 + 32;
  v47(v14, v45, a1);
  v53 = v166;
  v54 = swift_allocObject();
  v55 = v159;
  *(v54 + 16) = v15;
  *(v54 + 24) = v55;
  v56 = a1;
  v52(v54 + v53, v14, a1);
  v57 = v136;
  sub_258855170(sub_258846F40, v50, sub_258847214, v54, v144, v143, v142, v141, v136);
  v58 = v134;
  v59 = v128;
  sub_2588BCEA8();
  (*(v145 + 8))(v57, v59);
  sub_2587A7B40();
  v60 = v130;
  v61 = v129;
  sub_2588BCEB8();
  (*(v140 + 8))(v58, v61);
  v122 = v14;
  v62 = v56;
  v168(v14, v172, v56);
  v63 = v166;
  v64 = swift_allocObject();
  v65 = v160;
  *(v64 + 16) = v160;
  *(v64 + 24) = v55;
  v66 = v62;
  v52(v64 + v63, v14, v62);
  v67 = v124;
  sub_2588BCED8();

  (*(v146 + 8))(v60, v67);
  v68 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v68);
  v70 = &v114 - v69;
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v71 = v172;
  MEMORY[0x259C8C5A0]();
  v72 = v122;
  v168(v122, v71, v66);
  v73 = v166;
  v74 = swift_allocObject();
  *(v74 + 16) = v65;
  *(v74 + 24) = v55;
  v75 = v73;
  v76 = v72;
  v52(v74 + v73, v72, v66);
  v77 = v131;
  v78 = v161;
  sub_2588BD118();

  sub_258847974(v70, sub_2587AFFC8);
  (*(v147 + 8))(v78, v77);
  v79 = swift_checkMetadataState();
  v161 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v81 = &v114 - v80;
  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  v82 = v172;
  sub_2588BD2C8();
  v168(v76, v82, v66);
  v83 = swift_allocObject();
  v84 = v159;
  *(v83 + 16) = v160;
  *(v83 + 24) = v84;
  v85 = v83 + v75;
  v86 = v66;
  v87 = v163;
  v52(v85, v76, v66);
  v88 = v138;
  v89 = v137;
  v90 = v149;
  v91 = v148;
  v92 = v162;
  sub_2588BD118();

  v161[1](v81, v79);
  (*(v139 + 8))(v92, v89);
  v176 = v89;
  v177 = v79;
  v178 = v90;
  v179 = v91;
  v93 = swift_getOpaqueTypeConformance2();
  sub_2587DCF7C();
  v94 = *(v164 + 8);
  v94(v88, v87);
  v95 = v172;
  v96 = (v172 + v86[18]);
  v97 = *v96;
  v98 = *(v96 + 1);
  LOBYTE(v176) = v97;
  v177 = v98;
  sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v99 = 1;
  if (LOBYTE(v175[0]) == 1)
  {
    v100 = v93;
    v101 = v116;
    sub_258844FC4(v95 + v86[11], v95 + v86[12], v86, v116);
    v102 = v119;
    sub_2588BC8F8();
    sub_258846358();
    sub_25884772C(&qword_27F95FC98, MEMORY[0x277CDE290], MEMORY[0x277CDE288]);
    v103 = v115;
    v104 = v118;
    v105 = v121;
    sub_2588BCEF8();
    (*(v120 + 8))(v102, v105);
    v106 = v101;
    v93 = v100;
    (*(v117 + 8))(v106, v104);
    (*(v158 + 32))(v156, v103, v157);
    v99 = 0;
  }

  v107 = v156;
  v108 = (*(v158 + 56))(v156, v99, 1, v157);
  MEMORY[0x28223BE20](v108);
  v109 = &v114 - v151;
  v110 = v165;
  v111 = v163;
  (*(v164 + 16))(&v114 - v151, v165, v163);
  v176 = v109;
  v112 = v154;
  sub_258847774(v107, v154, sub_2588463DC);
  v177 = v112;
  v175[0] = v111;
  v175[1] = v153;
  v173 = v93;
  v174 = sub_258847300();
  sub_25881C7E0(&v176, 2uLL, v175);
  sub_258847A44(v107, sub_2588463DC);
  v94(v110, v111);
  sub_258847A44(v112, sub_2588463DC);
  return (v94)(v109, v111);
}

uint64_t sub_2588432CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587DFBD0(255);
  sub_258846410(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata3();
  sub_2588BD658();
  swift_getWitnessTable();
  v6 = sub_2588BD368();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_2588BC608();
  sub_2588BD358();
  swift_getWitnessTable();
  sub_2587DCF7C();
  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_2587DCF7C();
  return (v13)(v12, v6);
}

void sub_2588434E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v66 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v63 - v9;
  sub_258846410(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v13;
  v14 = sub_2588BC788();
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v75 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v63 - v17;
  sub_2587DFBD0(0);
  v72 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v73 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  v69 = a2;
  v78 = a3;
  v24 = type metadata accessor for DatePickerEditView(0, a2, a3, v23);
  v25 = (a1 + *(v24 + 36));
  v26 = v25[1];
  v88 = *v25;
  v89 = v26;
  sub_25878F648();

  v27 = MEMORY[0x277D837D0];
  v28 = sub_2588BCDF8();
  v30 = v29;
  v88 = v28;
  v89 = v29;
  v32 = v31 & 1;
  LOBYTE(v90) = v31 & 1;
  v91 = v33;
  sub_258847674(0, &qword_280C0DDD0, v27, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2588BFF50;
  v67 = v24;
  v35 = *(v24 + 64);
  v70 = a1;
  v36 = (a1 + v35);
  v37 = v36[1];
  *(v34 + 32) = *v36;
  *(v34 + 40) = v37;
  *(v34 + 48) = 0x656C746954;
  *(v34 + 56) = 0xE500000000000000;

  v38 = sub_2588BD9A8();

  v39 = HKUIJoinStringsForAutomationIdentifier();

  if (v39)
  {
    sub_2588BD8A8();

    v68 = v22;
    sub_2588BCFB8();

    sub_2587B1CF8(v28, v30, v32);

    sub_2587AFFC8(0);
    MEMORY[0x28223BE20](v40 - 8);
    v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v43 = v70;
    MEMORY[0x259C8C5A0]();
    v44 = sub_2588BB9B8();
    v45 = (*(*(v44 - 8) + 48))(v42, 1, v44);
    sub_258847974(v42, sub_2587AFFC8);
    if (v45 == 1 && (v46 = v43 + *(v67 + 72), v47 = *v46, v48 = *(v46 + 8), LOBYTE(v88) = v47, v89 = v48, sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]), v49 = sub_2588BD2C8(), LOBYTE(v85[0]) != 1))
    {
      v53 = v65;
      (*(v43 + *(v67 + 60)))(v49);
      v54 = v64;
      v55 = v69;
      v51 = v78;
      sub_2587DCF7C();
      v56 = *(v66 + 8);
      v56(v53, v55);
      sub_2587DCF7C();
      sub_25884772C(&qword_27F95FDE0, sub_258846410, MEMORY[0x277CE1138]);
      v52 = v74;
      sub_2587D7A98(v53, v71, v55);
      v56(v53, v55);
      v56(v54, v55);
    }

    else
    {
      *v12 = sub_2588BC608();
      *(v12 + 1) = 0;
      v12[16] = 1;
      sub_2588479E0(0, qword_27F95FDE8, sub_25884644C);
      v51 = v78;
      sub_258843D5C(v69, v78, &v12[*(v50 + 44)]);
      sub_25884772C(&qword_27F95FDE0, sub_258846410, MEMORY[0x277CE1138]);
      v52 = v74;
      sub_2587D79A0(v12, v71);
      sub_258847A44(v12, sub_258846410);
    }

    v57 = v68;
    v58 = v73;
    sub_2588476C4(v68, v73, sub_2587DFBD0);
    v86 = 0;
    v87 = 1;
    v88 = v58;
    v89 = &v86;
    v60 = v75;
    v59 = v76;
    v61 = v77;
    (*(v76 + 16))(v75, v52, v77);
    v90 = v60;
    v85[0] = v72;
    v85[1] = MEMORY[0x277CE1180];
    v85[2] = v61;
    v82 = sub_2587DFB50();
    v83 = MEMORY[0x277CE1170];
    v80 = sub_25884772C(&qword_27F95FDE0, sub_258846410, MEMORY[0x277CE1138]);
    v81 = v51;
    WitnessTable = swift_getWitnessTable();
    sub_25881C7E0(&v88, 3uLL, v85);
    v62 = *(v59 + 8);
    v62(v52, v61);
    sub_258847974(v57, sub_2587DFBD0);
    v62(v60, v61);
    sub_258847974(v58, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258843D5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_258846514(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v13 = type metadata accessor for DatePickerEditView(0, a1, a2, v12);
  sub_25884141C(v13, v11);
  sub_258841C78(v13, v21);
  v14 = v21[0];
  v15 = v21[1];
  v16 = v21[2];
  v17 = v21[3];
  sub_258847774(v11, v9, sub_258846514);
  sub_258847774(v9, a3, sub_258846514);
  sub_258846480(0);
  v19 = (a3 + *(v18 + 48));
  *v19 = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  sub_2588477DC(v14, v15);
  sub_258847A44(v11, sub_258846514);
  sub_258847820(v14, v15);
  return sub_258847A44(v9, sub_258846514);
}

uint64_t sub_258843EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587DFBD0(255);
  sub_258846D18(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  v6 = sub_2588BD408();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  sub_2588BC6F8();
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_2588BD3F8();
  swift_getWitnessTable();
  sub_2587DCF7C();
  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_2587DCF7C();
  return (v13)(v12, v6);
}

void sub_2588440EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v66 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v63 - v9;
  sub_258846D18(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v13;
  v14 = sub_2588BC788();
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v75 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v63 - v17;
  sub_2587DFBD0(0);
  v71 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v73 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  v69 = a2;
  v78 = a3;
  v24 = type metadata accessor for DatePickerEditView(0, a2, a3, v23);
  v25 = (a1 + *(v24 + 36));
  v26 = v25[1];
  v85 = *v25;
  v86 = v26;
  sub_25878F648();

  v27 = MEMORY[0x277D837D0];
  v28 = sub_2588BCDF8();
  v30 = v29;
  v85 = v28;
  v86 = v29;
  v32 = v31 & 1;
  v87 = v31 & 1;
  v88 = v33;
  sub_258847674(0, &qword_280C0DDD0, v27, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2588BFF50;
  v67 = v24;
  v35 = *(v24 + 64);
  v70 = a1;
  v36 = (a1 + v35);
  v37 = v36[1];
  *(v34 + 32) = *v36;
  *(v34 + 40) = v37;
  *(v34 + 48) = 0x656C746954;
  *(v34 + 56) = 0xE500000000000000;

  v38 = sub_2588BD9A8();

  v39 = HKUIJoinStringsForAutomationIdentifier();

  if (v39)
  {
    sub_2588BD8A8();

    v68 = v22;
    sub_2588BCFB8();

    sub_2587B1CF8(v28, v30, v32);

    sub_2587AFFC8(0);
    MEMORY[0x28223BE20](v40 - 8);
    v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v43 = v70;
    MEMORY[0x259C8C5A0]();
    v44 = sub_2588BB9B8();
    v45 = (*(*(v44 - 8) + 48))(v42, 1, v44);
    sub_258847974(v42, sub_2587AFFC8);
    if (v45 == 1 && (v46 = v43 + *(v67 + 72), v47 = *v46, v48 = *(v46 + 8), LOBYTE(v85) = v47, v86 = v48, sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]), v49 = sub_2588BD2C8(), LOBYTE(v84[0]) != 1))
    {
      v53 = v65;
      (*(v43 + *(v67 + 60)))(v49);
      v54 = v64;
      v55 = v69;
      v51 = v78;
      sub_2587DCF7C();
      v56 = *(v66 + 8);
      v56(v53, v55);
      sub_2587DCF7C();
      sub_25884772C(&qword_27F95FDD0, sub_258846D18, MEMORY[0x277CE1138]);
      v52 = v74;
      sub_2587D7A98(v53, v72, v55);
      v56(v53, v55);
      v56(v54, v55);
    }

    else
    {
      *v12 = sub_2588BC608();
      *(v12 + 1) = 0;
      v12[16] = 1;
      sub_2588479E0(0, &qword_27F95FDD8, sub_258846DE8);
      v51 = v78;
      sub_258844918(v69, v78, &v12[*(v50 + 44)]);
      sub_25884772C(&qword_27F95FDD0, sub_258846D18, MEMORY[0x277CE1138]);
      v52 = v74;
      sub_2587D79A0(v12, v72);
      sub_258847A44(v12, sub_258846D18);
    }

    v57 = v68;
    v58 = v73;
    sub_2588476C4(v68, v73, sub_2587DFBD0);
    v85 = v58;
    v60 = v75;
    v59 = v76;
    v61 = v77;
    (*(v76 + 16))(v75, v52, v77);
    v86 = v60;
    v84[0] = v71;
    v84[1] = v61;
    v82 = sub_2587DFB50();
    v80 = sub_25884772C(&qword_27F95FDD0, sub_258846D18, MEMORY[0x277CE1138]);
    v81 = v51;
    WitnessTable = swift_getWitnessTable();
    sub_25881C7E0(&v85, 2uLL, v84);
    v62 = *(v59 + 8);
    v62(v52, v61);
    sub_258847974(v57, sub_2587DFBD0);
    v62(v60, v61);
    sub_258847974(v58, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258844918@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_258846514(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v13 = type metadata accessor for DatePickerEditView(0, a1, a2, v12);
  sub_25884141C(v13, v11);
  sub_258841C78(v13, v22);
  v14 = v22[0];
  v15 = v22[1];
  v16 = v22[2];
  v17 = v22[3];
  sub_258847774(v11, v9, sub_258846514);
  sub_258847774(v9, a3, sub_258846514);
  sub_258846E1C(0);
  v19 = a3 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = (a3 + *(v18 + 64));
  *v20 = v14;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  sub_2588477DC(v14, v15);
  sub_258847A44(v11, sub_258846514);
  sub_258847820(v14, v15);
  return sub_258847A44(v9, sub_258846514);
}

uint64_t sub_258844AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BB9B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DatePickerEditView(0, a2, a3, v13);
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    v14 = sub_258847974(v12, sub_2587AFFC8);
    MEMORY[0x28223BE20](v14);
    (*(v7 + 16))(&v18 - v9, a1 + v15, v6);
    sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
    return sub_2588BD2D8();
  }

  else
  {
    v17 = (*(v7 + 32))(&v18 - v9, v12, v6);
    MEMORY[0x28223BE20](v17);
    (*(v7 + 16))(&v18 - v9, &v18 - v9, v6);
    sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
    sub_2588BD2D8();
    return (*(v7 + 8))(&v18 - v9, v6);
  }
}

uint64_t sub_258844DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + *(type metadata accessor for DatePickerEditView(0, a2, a3, a4) + 56));
  if (v4)
  {
    v4();
  }

  sub_2587AFFC8(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  v8 = sub_2588BB9B8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(&v12 - v7, 1, v8);
  result = sub_258847974(&v12 - v7, sub_2587AFFC8);
  if (v10 != 1)
  {
    MEMORY[0x28223BE20](result);
    sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    (*(v9 + 56))(&v12 - v7, 0, 1, v8);
    return sub_25884132C(&v12 - v7);
  }

  return result;
}

uint64_t sub_258844FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v88 = a4;
  v6 = sub_2588BC7A8();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2588BB9B8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = v71 - v11;
  sub_2587AFFC8(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588476C4(a1, v71 - v14, sub_2587AFFC8);
  v15 = v9[6];
  v16 = v15(v71 - v14, 1, v8);
  v84 = v9;
  if (v16 == 1)
  {
    v17 = sub_258847974(v71 - v14, sub_2587AFFC8);
    v18 = MEMORY[0x28223BE20](v17);
    v19 = v71 - v11;
    MEMORY[0x28223BE20](v18);
    sub_2588476C4(a2, v71 - v14, sub_2587AFFC8);
    if (v15(v71 - v14, 1, v8) == 1)
    {
      sub_258847974(v71 - v14, sub_2587AFFC8);
      sub_2588BC688();
      v20 = MEMORY[0x28220BF88];
      sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
      MEMORY[0x28223BE20](v21 - 8);
      sub_258847458(0, &qword_27F95E7E8, v20, MEMORY[0x277CE10B8]);
      sub_2588BD2E8();
      sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2588C00B0;
      sub_2588BC798();
      v92 = v22;
      sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFE0]);
      sub_258847424(0);
      sub_25884772C(&qword_27F95FDA8, sub_258847424, MEMORY[0x277D83970]);
      sub_2588BDD48();
      return sub_2588BBDF8();
    }

    v35 = v84;
    (v84[4])(v19, v71 - v14, v8);
    sub_2588BC688();
    v91 = v36;
    LODWORD(v81) = v37;
    v83 = v38;
    v39 = MEMORY[0x28220BF88];
    sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
    v82 = v71;
    MEMORY[0x28223BE20](v40 - 8);
    sub_258847458(0, &qword_27F95E7E8, v39, MEMORY[0x277CE10B8]);
    sub_2588BD2E8();
    sub_2588474BC(0, &qword_27F95FDB0, MEMORY[0x277D84468]);
    MEMORY[0x28223BE20](v41 - 8);
    v43 = v71 - v42;
    sub_258847538(&qword_27F95E768, MEMORY[0x28220C000]);
    result = sub_2588BD7D8();
    if (result)
    {
      (v35[2])(v43, v19, v8);
      sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
      v90 = v43;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2588C00B0;
      sub_2588BC798();
      v92 = v44;
      sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFE0]);
      sub_258847424(0);
      sub_25884772C(&qword_27F95FDA8, sub_258847424, MEMORY[0x277D83970]);
      sub_2588BDD48();
      sub_2588BBE28();
      return (v35[1])(v19, v8);
    }

    goto LABEL_13;
  }

  v82 = v9[4];
  v83 = v9 + 4;
  v24 = v82(v91, v71 - v14, v8);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = v71 - v11;
  MEMORY[0x28223BE20](v25);
  sub_2588476C4(a2, v71 - v14, sub_2587AFFC8);
  if (v15(v71 - v14, 1, v8) == 1)
  {
    sub_258847974(v71 - v14, sub_2587AFFC8);
    v27 = sub_2588BC688();
    v28 = MEMORY[0x28220BF88];
    sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
    MEMORY[0x28223BE20](v29 - 8);
    sub_258847458(0, &qword_27F95E7E8, v28, MEMORY[0x277CE10B8]);
    sub_2588BD2E8();
    sub_2588474BC(0, &qword_27F95FDB8, MEMORY[0x277D84328]);
    MEMORY[0x28223BE20](v30 - 8);
    v32 = v71 - v31;
    sub_258847538(&qword_27F95E768, MEMORY[0x28220C000]);
    result = sub_2588BD7D8();
    if (result)
    {
      v89 = v27;
      v90 = v71;
      v33 = v84;
      (v84[2])(v32, v91, v8);
      sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
      v85 = v71;
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_2588C00B0;
      sub_2588BC798();
      v92 = v34;
      sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFE0]);
      sub_258847424(0);
      sub_25884772C(&qword_27F95FDA8, sub_258847424, MEMORY[0x277D83970]);
      sub_2588BDD48();
      sub_2588BBE18();
      return (v33[1])(v91, v8);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v81 = v71;
  v82(v26, v71 - v14, v8);
  v45 = sub_2588BC688();
  v79 = v47;
  v80 = v46;
  v49 = v48;
  v50 = MEMORY[0x28220BF88];
  sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v71 - v52;
  sub_258847458(0, &qword_27F95E7E8, v50, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_2588474BC(0, &qword_27F95FDC0, MEMORY[0x277D83638]);
  v89 = v54;
  v90 = v71;
  MEMORY[0x28223BE20](v54);
  v56 = v71 - v55;
  sub_258847538(&qword_27F95D888, MEMORY[0x28220BFF8]);
  result = sub_2588BD7C8();
  if ((result & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_25884757C(0);
  v73 = v71;
  v59 = v57 - 8;
  v58 = *(v57 - 8);
  v78 = v71;
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v76 = v45;
  v77 = v53;
  v74 = v26;
  v61 = v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v49;
  v62 = v84;
  v63 = v84[2];
  v63(v61, v91, v8);
  v64 = (v63)(&v61[*(v59 + 56)], v26, v8);
  v71[1] = v71;
  MEMORY[0x28223BE20](v64);
  sub_2588476C4(v61, v61, sub_25884757C);
  v65 = *(v59 + 56);
  v71[0] = v56;
  v66 = v82;
  v82(v56, v61, v8);
  v67 = v62[1];
  v68 = v67(&v61[v65], v8);
  MEMORY[0x28223BE20](v68);
  v69 = v71 - v72;
  sub_2588475E4(v61, v71 - v72);
  v66((v71[0] + *(v89 + 36)), &v69[*(v59 + 56)], v8);
  v67(v69, v8);
  sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_2588C00B0;
  sub_2588BC798();
  v92 = v70;
  sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFE0]);
  sub_258847424(0);
  sub_25884772C(&qword_27F95FDA8, sub_258847424, MEMORY[0x277D83970]);
  sub_2588BDD48();
  sub_2588BBE08();
  v67(v74, v8);
  return v67(v91, v8);
}

uint64_t sub_258845FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587AFFC8(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = type metadata accessor for DatePickerEditView(0, a2, a3, v9);
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(&v19[-v8], 1, v11);
  v14 = sub_258847974(&v19[-v8], sub_2587AFFC8);
  if (v13 == 1)
  {
    MEMORY[0x28223BE20](v14);
    (*(v12 + 16))(&v19[-v8], a1 + *(v10 + 40), v11);
    (*(v12 + 56))(&v19[-v8], 0, 1, v11);
    sub_25884132C(&v19[-v8]);
  }

  v15 = (a1 + *(v10 + 72));
  v17 = *(v15 + 1);
  v21 = *v15;
  v16 = v21;
  v22 = v17;
  sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_2588BD2C8();
  v19[0] = v16;
  v20 = v17;
  v23 = (v24 & 1) == 0;
  sub_2588BD2D8();
}

void sub_258846258(uint64_t a1)
{
  if (!qword_27F95FC88)
  {
    sub_2588468EC(255, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_2588BC908();
    sub_258846358();
    sub_25884772C(&qword_27F95FC98, MEMORY[0x277CDE290], MEMORY[0x277CDE288]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FC88);
    }
  }
}

unint64_t sub_258846358()
{
  result = qword_27F95FC90;
  if (!qword_27F95FC90)
  {
    sub_2588468EC(255, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FC90);
  }

  return result;
}

void sub_258846480(uint64_t a1)
{
  if (!qword_27F95FCB8)
  {
    sub_258846514(255);
    sub_258847674(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FCB8);
    }
  }
}

void sub_258846548(uint64_t a1)
{
  if (!qword_27F95FCC8)
  {
    sub_2588465CC(255);
    sub_258846940();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FCC8);
    }
  }
}

void sub_2588465CC(uint64_t a1)
{
  if (!qword_27F95FCD0)
  {
    sub_2588466C4(255, &qword_27F95FCD8, sub_258846690, sub_2587B1964);
    sub_2588468EC(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FCD0);
    }
  }
}

void sub_2588466C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258846738(uint64_t a1)
{
  if (!qword_27F95FCE8)
  {
    sub_2588467CC(255);
    sub_2588468EC(255, &qword_27F95FCF8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FCE8);
    }
  }
}

void sub_2588467CC(uint64_t a1)
{
  if (!qword_27F95FCF0)
  {
    sub_2588468EC(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FCF0);
    }
  }
}

void sub_258846858(uint64_t a1)
{
  if (!qword_27F95FD00)
  {
    sub_2588BC2A8();
    sub_25884772C(&qword_27F95FD08, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v1 = sub_2588BBFB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95FD00);
    }
  }
}

void sub_2588468EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258846940()
{
  result = qword_27F95FD10;
  if (!qword_27F95FD10)
  {
    sub_2588465CC(255);
    sub_2588469F8();
    sub_258846CC0(&qword_27F95F8E0, &qword_27F95D950, MEMORY[0x277CE0730], MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD10);
  }

  return result;
}

unint64_t sub_2588469F8()
{
  result = qword_27F95FD18;
  if (!qword_27F95FD18)
  {
    sub_2588466C4(255, &qword_27F95FCD8, sub_258846690, sub_2587B1964);
    sub_258846AD8();
    sub_25884772C(&qword_27F95D9B8, sub_2587B1964, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD18);
  }

  return result;
}

unint64_t sub_258846AD8()
{
  result = qword_27F95FD20;
  if (!qword_27F95FD20)
  {
    sub_258846690(255);
    sub_258846B88();
    sub_25884772C(&qword_27F95FD40, sub_258846858, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD20);
  }

  return result;
}

unint64_t sub_258846B88()
{
  result = qword_27F95FD28;
  if (!qword_27F95FD28)
  {
    sub_258846738(255);
    sub_258846C40();
    sub_258846CC0(&qword_27F95FD38, &qword_27F95FCF8, MEMORY[0x277CE0718], MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD28);
  }

  return result;
}

unint64_t sub_258846C40()
{
  result = qword_27F95FD30;
  if (!qword_27F95FD30)
  {
    sub_2588467CC(255);
    sub_2587C4C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD30);
  }

  return result;
}

uint64_t sub_258846CC0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2588468EC(255, a2, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258846D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25884772C(a4, a5, MEMORY[0x277CE14C0]);
    v8 = sub_2588BD368();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258846E1C(uint64_t a1)
{
  if (!qword_27F95FD68)
  {
    sub_258846514(255);
    sub_258847674(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95FD68);
    }
  }
}

unint64_t sub_258846EB8()
{
  result = qword_27F95FD78;
  if (!qword_27F95FD78)
  {
    sub_2587AFFC8(255);
    sub_258847538(&qword_27F95E768, MEMORY[0x28220C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD78);
  }

  return result;
}

uint64_t objectdestroyTm_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DatePickerEditView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));

  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v8 = *(v7 + 32);
  v9 = sub_2588BB9B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v12 = *(v10 + 8);
  v12(v6 + v5[10], v9);
  v13 = v5[11];
  if (!v11(v6 + v13, 1, v9))
  {
    v12(v6 + v13, v9);
  }

  v14 = v5[12];
  if (!v11(v6 + v14, 1, v9))
  {
    v12(v6 + v14, v9);
  }

  if (*(v6 + v5[14]))
  {
  }

  v12(v6 + v5[17], v9);
  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t sub_25884722C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for DatePickerEditView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_258847300()
{
  result = qword_27F95FD80;
  if (!qword_27F95FD80)
  {
    sub_2588463DC(255);
    sub_2588468EC(255, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_2588BC908();
    sub_258846358();
    sub_25884772C(&qword_27F95FC98, MEMORY[0x277CDE290], MEMORY[0x277CDE288]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD80);
  }

  return result;
}

void sub_258847458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2588474BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2588BB9B8();
    v7 = sub_258847538(&qword_27F95D888, MEMORY[0x28220BFF8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258847538(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2588BB9B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25884757C(uint64_t a1)
{
  if (!qword_27F95FDC8)
  {
    sub_2588BB9B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FDC8);
    }
  }
}

uint64_t sub_2588475E4(uint64_t a1, uint64_t a2)
{
  sub_25884757C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258847674(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2588476C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25884772C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258847774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2588477DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_258847820(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25884787C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for DatePickerEditView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_258847974(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2588479E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258847A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258847AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258847B2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_258847BC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 65) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 63) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_258847D50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 65) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 63) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_258848014(uint64_t a1)
{
  sub_258848A9C(255, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  v1 = sub_2588BD408();
  MEMORY[0x28223BE20](v1);
  v2 = sub_2588BC1E8();
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  sub_2588BC6F8();
  sub_2588BD3F8();
  swift_getWitnessTable();
  sub_25885A310();
}

uint64_t sub_25884825C()
{
  (*(v7 + 8))(v1, v4);
  v9 = sub_258848828();
  *(v8 - 96) = v0;
  *(v8 - 88) = v9;
  swift_getWitnessTable();
  sub_2587DCF7C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  sub_2587DCF7C();
  return (v10)(v5, v2);
}

uint64_t sub_258848314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for MedicalIDCellHeaderView(0);
  v41 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258848A9C(0, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  v42 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v36 - v20;
  if (*(v21 + 64) == 1)
  {
    v23 = v21[2];
    v45 = v21[1];
    v46 = v23;
    v47 = *(v21 + 6);
    v44 = *v21;
    v40 = a4;
    v24 = v13[5];
    *&v15[v24] = swift_getKeyPath(aH_5, v21);
    sub_258848A9C(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v25 = v13[6];
    v38 = a3;
    v26 = &v15[v25];
    sub_2587EB238(&v44, v43);
    v37 = v12;
    v39 = v10;
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    *v26 = sub_2588BC358();
    v26[1] = v27;
    v28 = &v15[v13[7]];
    sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
    sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
    *v28 = sub_2588BC358();
    v28[1] = v29;
    v30 = &v15[v13[8]];
    sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
    v10 = v39;
    sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0, &protocol conformance descriptor for HKProfileStore);
    v12 = v37;
    *v30 = sub_2588BC358();
    v30[1] = v31;
    a3 = v38;
    *(v15 + 6) = v47;
    v32 = v46;
    *(v15 + 1) = v45;
    *(v15 + 2) = v32;
    *v15 = v44;
    sub_258848B00(v15, v22);
    (*(v41 + 56))(v22, 0, 1, v13);
  }

  else
  {
    (*(v41 + 56))(&v36 - v20, 1, 1, v13);
  }

  type metadata accessor for MedicalIDCellView(0, a2, a3, v33);
  sub_2587DCF7C();
  sub_25884887C(v22, v19);
  *&v44 = v19;
  (*(v7 + 16))(v10, v12, a2);
  *(&v44 + 1) = v10;
  v43[0] = v42;
  v43[1] = a2;
  v48 = sub_258848910();
  v49 = a3;
  sub_25881C7E0(&v44, 2uLL, v43);
  v34 = *(v7 + 8);
  v34(v12, a2);
  sub_258848A10(v22);
  v34(v10, a2);
  return sub_258848A10(v19);
}

unint64_t sub_258848828()
{
  result = qword_27F95FE78;
  if (!qword_27F95FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FE78);
  }

  return result;
}

uint64_t sub_25884887C(uint64_t a1, uint64_t a2)
{
  sub_258848A9C(0, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258848910()
{
  result = qword_27F95FE80;
  if (!qword_27F95FE80)
  {
    sub_258848A9C(255, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
    sub_2588489B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FE80);
  }

  return result;
}

unint64_t sub_2588489B8()
{
  result = qword_27F95FE88;
  if (!qword_27F95FE88)
  {
    type metadata accessor for MedicalIDCellHeaderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FE88);
  }

  return result;
}

uint64_t sub_258848A10(uint64_t a1)
{
  sub_258848A9C(0, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258848A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258848B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDCellHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MedicalIDEditMedicalNotesModalView(uint64_t a1)
{
  result = qword_27F95FE90;
  if (!qword_27F95FE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258848BD8(uint64_t a1)
{
  sub_258803250(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDMedicalInfoViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258848C78@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for MedicalIDEditMedicalNotesModalView(0);
  sub_258802C20(v1 + *(v6 + 20), v5);
  v7 = sub_2588BD858();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = v8;
  sub_2588BBAB8();
  v11 = sub_2588BD8B8();
  sub_25887C984(v5, v11, v12, v20);
  v19[3] = &type metadata for NotesConfiguration;
  v19[4] = &off_2869C19D0;
  v13 = swift_allocObject();
  v19[0] = v13;
  v14 = v20[3];
  v13[3] = v20[2];
  v13[4] = v14;
  v15 = v20[5];
  v13[5] = v20[4];
  v13[6] = v15;
  v16 = v20[1];
  v13[1] = v20[0];
  v13[2] = v16;
  return sub_25884E278(v19, sub_258803354, 0, a1);
}

uint64_t ImageProcessorError.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

char *_s11MedicalIDUI16UIImageProcessorV5scale5image2toSo0C0CSgAH_So6CGSizeVtAA05ImageD5ErrorOYKF(char *a1, _BYTE *a2, double a3, double a4)
{
  if (a3 <= 0.0 || a4 <= 0.0)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v19 = sub_2588BBC98();
    __swift_project_value_buffer(v19, qword_27F969938);
    v20 = sub_2588BBC78();
    v21 = sub_2588BDBD8();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_24;
    }

    v4 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v4 = 136315394;
    *(v4 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
    *(v4 + 6) = 2080;
    v23 = sub_2588BDC98();
    v25 = sub_258790224(v23, v24, &v43);

    *(v4 + 14) = v25;
    v26 = "[%s]: passed in an invalid size: %s";
    goto LABEL_23;
  }

  v4 = a1;
  [a1 size];
  if (v9 <= 0.0 || v8 <= 0.0)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v27 = sub_2588BBC98();
    __swift_project_value_buffer(v27, qword_27F969938);
    v28 = v4;
    v20 = sub_2588BBC78();
    v21 = sub_2588BDBD8();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_24;
    }

    v4 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v4 = 136315394;
    *(v4 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
    *(v4 + 6) = 2080;
    [v28 size];
    v29 = sub_2588BDC98();
    v31 = sub_258790224(v29, v30, &v43);

    *(v4 + 14) = v31;
    v26 = "[%s]: passed in an image with an invalid size: %s";
LABEL_23:
    _os_log_impl(&dword_25878B000, v20, v21, v26, v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v22, -1, -1);
    MEMORY[0x259C8DBE0](v4, -1, -1);
LABEL_24:

    *a2 = 0;
    LOBYTE(v43) = 0;
LABEL_25:
    sub_2588496F0();
    swift_willThrowTypedImpl();
    return v4;
  }

  [v4 size];
  if (v11 == a3 && v10 == a4)
  {
    v33 = v4;
    return v4;
  }

  v13 = sub_258849524(v4, a4 / a3);
  if (!v13)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v34 = sub_2588BBC98();
    __swift_project_value_buffer(v34, qword_27F969938);
    v35 = sub_2588BBC78();
    v4 = sub_2588BDBD8();
    if (os_log_type_enabled(v35, v4))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
      _os_log_impl(&dword_25878B000, v35, v4, "[%s]: Could not crop image", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x259C8DBE0](v37, -1, -1);
      MEMORY[0x259C8DBE0](v36, -1, -1);
    }

    *a2 = 2;
    LOBYTE(v43) = 2;
    goto LABEL_25;
  }

  v4 = v13;
  [v13 size];
  if (v14 <= a3)
  {
    return v4;
  }

  v15 = [v4 imageByPreparingThumbnailOfSize_];
  if (v15)
  {
    v16 = v15;
    [v15 size];
    if (v18 > 0.0 && v17 > 0.0)
    {

      return v16;
    }
  }

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v38 = sub_2588BBC98();
  __swift_project_value_buffer(v38, qword_27F969938);
  v39 = sub_2588BBC78();
  v40 = sub_2588BDBD8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
    _os_log_impl(&dword_25878B000, v39, v40, "[%s]: image scaling failed", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x259C8DBE0](v42, -1, -1);
    MEMORY[0x259C8DBE0](v41, -1, -1);
  }

  *a2 = 1;
  LOBYTE(v43) = 1;
  sub_2588496F0();
  swift_willThrowTypedImpl();

  return v4;
}

id sub_258849524(void *a1, double a2)
{
  v3 = a1;
  [a1 size];
  if (v5 / v4 != a2)
  {
    [v3 size];
    v8 = v7;
    v10 = v9;
    [v3 size];
    v12 = v11;
    [v3 size];
    v14 = v13;
    [v3 size];
    if (v14 >= v12)
    {
      v10 = floor(v15 * a2);
    }

    else
    {
      v8 = floor(v16 / a2);
    }

    [v3 size];
    v18 = v17;
    [v3 size];
    v20 = v19;
    v21 = [v3 CGImage];
    if (v21)
    {
      v22 = v21;
      v27.origin.y = floor(ceil(v20 * 0.5) - v10 * 0.5);
      v27.origin.x = floor(ceil(v18 * 0.5) - v8 * 0.5);
      v27.size.width = v8;
      v27.size.height = v10;
      v23 = CGImageCreateWithImageInRect(v21, v27);
      if (v23)
      {
        v24 = v23;
        v25 = [v3 imageOrientation];
        v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v24 scale:v25 orientation:1.0];

        return v3;
      }
    }

    return 0;
  }

  v6 = v3;
  return v3;
}

char *sub_2588496B8(char *a1, _BYTE *a2, double a3, double a4)
{
  result = _s11MedicalIDUI16UIImageProcessorV5scale5image2toSo0C0CSgAH_So6CGSizeVtAA05ImageD5ErrorOYKF(a1, &v7, a3, a4);
  if (v4)
  {
    *a2 = v7;
  }

  return result;
}

unint64_t sub_2588496F0()
{
  result = qword_27F95FEA0;
  if (!qword_27F95FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FEA0);
  }

  return result;
}

unint64_t sub_258849748()
{
  result = qword_27F95FEA8;
  if (!qword_27F95FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FEA8);
  }

  return result;
}

uint64_t type metadata accessor for EditPrimaryLanguageCellView(uint64_t a1)
{
  result = qword_27F95FEB0;
  if (!qword_27F95FEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258849858(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_25884C388(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25884C4F4(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25884997C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v131 = a2;
  sub_25884C694(0, &qword_27F95FF88, MEMORY[0x277CE0330]);
  v128 = v3;
  MEMORY[0x28223BE20](v3);
  v130 = &v114 - v4;
  sub_25884C388(0, &qword_27F95FF00, sub_25884BF54, MEMORY[0x277CE14B8]);
  v129 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v114 - v6;
  sub_25884C388(0, &qword_27F95E930, sub_2587DFBD0, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v125 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v114 - v11;
  sub_2587DFBD0(0);
  v127 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v124 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v122 = &v114 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v114 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v114 - v22;
  v24 = *(type metadata accessor for EditPrimaryLanguageCellView(0) + 28);
  v132 = a1;
  v25 = *(a1 + v24);
  swift_getKeyPath(byte_2588C5160);
  v135.id._countAndFlagsBits = v25;
  sub_25884C0B4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v26 = *(v25 + 24);
  v27 = *(v25 + 32);
  if (!v27)
  {
    sub_2588BC688();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v51 = qword_27F95DA88;
    v52 = sub_2588BCDE8();
    v54 = v53;
    v56 = v55;
    v135.id._countAndFlagsBits = sub_2588BD158();
    v57 = sub_2588BCD98();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_2587B1CF8(v52, v54, v56 & 1);

    v135.id._countAndFlagsBits = v57;
    v135.id._object = v59;
    LOBYTE(v135.languageInCurrentLocale._countAndFlagsBits) = v61 & 1;
    *&v126 = v63;
    v135.languageInCurrentLocale._object = v63;
    sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v64 = swift_allocObject();
    v133 = xmmword_2588BFF50;
    *(v64 + 16) = xmmword_2588BFF50;
    v65 = swift_allocObject();
    *(v65 + 16) = v133;
    v66 = (v132 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
    v67 = v66[1];
    *(v65 + 32) = *v66;
    *(v65 + 40) = v67;
    v68 = 0x4C7972616D697250;
    v69 = 0xEF65676175676E61;
    *(v65 + 48) = 0x4C7972616D697250;
    *(v65 + 56) = 0xEF65676175676E61;

    v70 = sub_2588BD9A8();

    v71 = HKUIJoinStringsForAutomationIdentifier();

    if (v71)
    {
      v68 = sub_2588BD8A8();
      v69 = v72;
    }

    *(v64 + 32) = v68;
    *(v64 + 40) = v69;
    *(v64 + 48) = 6579265;
    *(v64 + 56) = 0xE300000000000000;
    v73 = sub_2588BD9A8();

    v74 = HKUIJoinStringsForAutomationIdentifier();

    if (v74)
    {
      sub_2588BD8A8();

      sub_2588BCFB8();

      sub_2587B1CF8(v57, v59, v61 & 1);

      sub_25884C734(v23, v130, sub_2587DFBD0);
      swift_storeEnumTagMultiPayload();
      sub_25884C0FC(&qword_27F95FF18, &qword_27F95FF00, sub_25884BF54);
      sub_2587DFB50();
      sub_2588BC778();
      v75 = v23;
LABEL_19:
      sub_25884C79C(v75, sub_2587DFBD0);
      return;
    }

    goto LABEL_21;
  }

  v114 = v14;
  *&v133 = v21;
  v115 = v12;
  v116 = v7;
  swift_bridgeObjectRetain_n();
  v120 = v26;
  v28._countAndFlagsBits = v26;
  v123 = v27;
  v28._object = v27;
  MedicalIDSpokenLanguage.init(id:)(&v135, v28);
  countAndFlagsBits = v135.languageInCurrentLocale._countAndFlagsBits;
  object = v135.languageInCurrentLocale._object;

  v135.id._countAndFlagsBits = countAndFlagsBits;
  v135.id._object = object;
  v121 = sub_25878F648();
  v31 = sub_2588BCDF8();
  v33 = v32;
  LOBYTE(object) = v34;
  v135.id._countAndFlagsBits = sub_2588BD158();
  v35 = sub_2588BCD98();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_2587B1CF8(v31, v33, object & 1);

  v135.id._countAndFlagsBits = v35;
  v135.id._object = v37;
  v118 = v37;
  v117 = v39;
  LOBYTE(v135.languageInCurrentLocale._countAndFlagsBits) = v39 & 1;
  v119 = v41;
  v135.languageInCurrentLocale._object = v41;
  sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v42 = swift_allocObject();
  v126 = xmmword_2588BFF50;
  *(v42 + 16) = xmmword_2588BFF50;
  v43 = swift_allocObject();
  *(v43 + 16) = v126;
  v44 = (v132 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
  v45 = v44[1];
  v132 = *v44;
  *(v43 + 32) = v132;
  *(v43 + 40) = v45;
  *(v43 + 48) = 0x4C7972616D697250;
  *(v43 + 56) = 0xEF65676175676E61;

  v46 = sub_2588BD9A8();

  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    v48 = sub_2588BD8A8();
    v50 = v49;
  }

  else
  {
    v48 = 0x4C7972616D697250;
    v50 = 0xEF65676175676E61;
  }

  *(v42 + 32) = v48;
  *(v42 + 40) = v50;
  *(v42 + 48) = 0xD000000000000012;
  *(v42 + 56) = 0x80000002588CA450;
  v76 = sub_2588BD9A8();

  v77 = HKUIJoinStringsForAutomationIdentifier();

  if (!v77)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_2588BD8A8();

  sub_2588BCFB8();

  sub_2587B1CF8(v35, v118, v117 & 1);

  v78 = v123;

  v79._countAndFlagsBits = v120;
  v79._object = v78;
  MedicalIDSpokenLanguage.init(id:)(&v135, v79);
  v80 = v135.languageInLanguageLocale._countAndFlagsBits;
  v81 = v135.languageInLanguageLocale._object;
  v135.id = v135.languageInCurrentLocale;
  languageInLanguageLocale = v135.languageInLanguageLocale;
  if (sub_2588BDD28())
  {

    v82 = 1;
    v83 = v115;
LABEL_18:
    v106 = v133;
    (*(v114 + 56))(v83, v82, 1, v127);
    v107 = v124;
    sub_25884C734(v106, v124, sub_2587DFBD0);
    v108 = MEMORY[0x277D83D88];
    v109 = v125;
    sub_25884C864(v83, v125, &qword_27F95E930, sub_2587DFBD0, MEMORY[0x277D83D88]);
    v110 = v116;
    sub_25884C734(v107, v116, sub_2587DFBD0);
    sub_25884BF54(0);
    sub_25884C864(v109, v110 + *(v111 + 48), &qword_27F95E930, sub_2587DFBD0, v108);
    sub_25884C8D4(v109, &qword_27F95E930, sub_2587DFBD0, v108);
    sub_25884C79C(v107, sub_2587DFBD0);
    v112 = MEMORY[0x277CE14B8];
    v113 = v83;
    sub_25884C864(v110, v130, &qword_27F95FF00, sub_25884BF54, MEMORY[0x277CE14B8]);
    swift_storeEnumTagMultiPayload();
    sub_25884C0FC(&qword_27F95FF18, &qword_27F95FF00, sub_25884BF54);
    sub_2587DFB50();
    sub_2588BC778();
    v75 = v133;
    sub_25884C8D4(v110, &qword_27F95FF00, sub_25884BF54, v112);
    sub_25884C8D4(v113, &qword_27F95E930, sub_2587DFBD0, v108);
    goto LABEL_19;
  }

  v135.id._countAndFlagsBits = v80;
  v135.id._object = v81;
  v120 = v81;

  v84 = sub_2588BCDF8();
  v86 = v85;
  v88 = v87;
  v135.id._countAndFlagsBits = sub_2588BD158();
  v89 = sub_2588BCD98();
  v91 = v90;
  v121 = v45;
  v93 = v92;
  v95 = v94;
  sub_2587B1CF8(v84, v86, v88 & 1);

  v96 = 0xEF65676175676E61;

  v118 = v89;
  v135.id._countAndFlagsBits = v89;
  v135.id._object = v91;
  LOBYTE(v135.languageInCurrentLocale._countAndFlagsBits) = v93 & 1;
  v119 = v95;
  v135.languageInCurrentLocale._object = v95;
  v97 = swift_allocObject();
  *(v97 + 16) = v126;
  v98 = 0x4C7972616D697250;
  v99 = swift_allocObject();
  *(v99 + 16) = v126;
  *(v99 + 32) = v132;
  *(v99 + 40) = v121;
  *(v99 + 48) = 0x4C7972616D697250;
  *(v99 + 56) = 0xEF65676175676E61;

  v100 = sub_2588BD9A8();

  v101 = HKUIJoinStringsForAutomationIdentifier();

  if (v101)
  {
    v98 = sub_2588BD8A8();
    v96 = v102;
  }

  *(v97 + 32) = v98;
  *(v97 + 40) = v96;
  *(v97 + 48) = 0xD000000000000014;
  *(v97 + 56) = 0x80000002588CA470;
  v103 = sub_2588BD9A8();

  v104 = HKUIJoinStringsForAutomationIdentifier();

  if (v104)
  {

    sub_2588BD8A8();

    v105 = v122;
    sub_2588BCFB8();

    sub_2587B1CF8(v118, v91, v93 & 1);

    v83 = v115;
    sub_25884C7FC(v105, v115, sub_2587DFBD0);
    v82 = 0;
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
}