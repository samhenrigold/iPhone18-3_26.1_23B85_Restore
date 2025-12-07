void sub_1BE524D48(uint64_t a1)
{
  sub_1BE524E50(319);
  if (v1 <= 0x3F)
  {
    sub_1BE54B00C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BE524E50(uint64_t a1)
{
  if (!qword_1EDDD66D0)
  {
    sub_1BE54AE3C();
    v1 = sub_1BE54C9EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD66D0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SubscriptionInfo.Source(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE524F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD130;
  if (!qword_1EBDAD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD130);
  }

  return result;
}

unint64_t sub_1BE524FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD138;
  if (!qword_1EBDAD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD138);
  }

  return result;
}

void sub_1BE5250DC()
{
  sub_1BE525E18();
  v0 = sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  sub_1BE4CE78C(v0);
  v1 = sub_1BE4FFBD8();

  sub_1BE5218D8(v1, v2, v3, v4);
}

double sub_1BE525184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1BE52519C(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_1BE54C5DC();

  [a2 *a3];
}

uint64_t sub_1BE525224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = &type metadata for AppStoreDaemonDataSource;
  v14[4] = &off_1F3CCD210;
  v10 = swift_allocObject();
  v14[0] = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  KeyPath = swift_getKeyPath();
  v13[2] = a5;
  v13[3] = v14;
  sub_1BE522468(KeyPath, sub_1BE5252E8, v13);

  return sub_1BE4C58A8(v14);
}

uint64_t *sub_1BE525304(uint64_t *result, uint64_t *a2)
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

uint64_t sub_1BE525558()
{
  sub_1BE4E4418();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v3[1] = sub_1BE4E43A8;
  v5 = sub_1BE4FFA4C();

  return sub_1BE5236B0(v5, v6, v7, v1);
}

uint64_t sub_1BE525614()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE525654()
{
  sub_1BE4E4418();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v3[1] = sub_1BE4E43A8;
  v5 = sub_1BE4FFA4C();

  return sub_1BE522FEC(v5, v6, v7, v1);
}

uint64_t sub_1BE5256F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE525760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE5257EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE525834(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  *(v4 + 40) = &type metadata for ImplicitEngagementPresenter;
  *(v4 + 48) = &off_1F3CCD2A0;
  *(v4 + 16) = a3;
  *(v4 + 64) = sub_1BE54C8CC();
  v7 = a3;
  *(v4 + 72) = sub_1BE54C8BC();
  *(v4 + 96) = a2;
  v8 = swift_task_alloc();
  *(v4 + 80) = v8;
  *v8 = v4;
  v8[1] = sub_1BE525920;

  return sub_1BE5239C4();
}

uint64_t sub_1BE525920()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  sub_1BE51D9B8();
  *v2 = v1;
  v3 = *v0;
  sub_1BE4E01C4();
  *v4 = v3;
  *(v6 + 88) = v5;

  sub_1BE54C87C();
  sub_1BE525D24();
  v7 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE525A44()
{
  sub_1BE4E4418();
  v1 = v0[11];

  if (v1)
  {
    v2 = v0[11];
    v3 = *sub_1BE4C52F4(v0 + 2, v0[5]);
    v4 = [objc_allocWithZone(MEMORY[0x1E698CB58]) initWithRequest_];
    [v4 setBag_];
    v5 = [v4 present];

    v6 = sub_1BE522D04();
    v8 = sub_1BE525E70(v6, v7);

    swift_unknownObjectRelease();
  }

  sub_1BE4C58A8(v0 + 2);
  sub_1BE4E01E0();

  return v9();
}

uint64_t sub_1BE525B44()
{
  sub_1BE4E021C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1BE4E4408(v3);
  *v4 = v5;
  v4[1] = sub_1BE4DF8E8;
  v6 = sub_1BE4FFA4C();

  return sub_1BE524A8C(v6, v7, v8, v1, v2, v9);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionQueuedActionType(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BE525CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD168;
  if (!qword_1EBDAD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD168);
  }

  return result;
}

uint64_t sub_1BE525D40(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void sub_1BE525D84(uint64_t a1)
{

  sub_1BE508B1C(a1, 0xD000000000000011, v1 | 0x8000000000000000, 49, 0xE100000000000000);
}

void sub_1BE525DA8()
{

  JUMPOUT(0x1BFB47CA0);
}

uint64_t sub_1BE525DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BE522468(a1, v3, a3);
}

uint64_t sub_1BE525E30()
{

  return swift_task_alloc();
}

uint64_t sub_1BE525E50()
{

  return sub_1BE54C8CC();
}

id sub_1BE525E70(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BE52604C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE526054;
  aBlock[3] = &unk_1F3CCD250;
  v4 = _Block_copy(aBlock);

  [v6 addFinishBlock_];
  _Block_release(v4);

  return v6;
}

id sub_1BE525F6C()
{
  sub_1BE50A6A4();
  result = sub_1BE508A44(0x65726F7453707041, 0xE800000000000000);
  qword_1EBDAD170 = result;
  return result;
}

uint64_t sub_1BE525FBC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = [a1 purchaseResult];
    if (v6)
    {

      LOBYTE(v6) = a2 == 0;
    }

    sub_1BE508600(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BE526054(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

double sub_1BE5260E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1BE526108(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE54CA5C();
    sub_1BE4D0D48(0, &qword_1EBDAD180, 0x1E69DCE70);
    sub_1BE5274C4();
    sub_1BE54C95C();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_1BE54CA6C() || (sub_1BE4D0D48(0, &qword_1EBDAD180, 0x1E69DCE70), swift_dynamicCast(), (v12 = v13) == 0))
    {
LABEL_21:
      sub_1BE52752C(v2);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1BFB47D00]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE54C84C();
      }

      sub_1BE54C85C();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1BE52636C()
{
  sub_1BE4D0D48(0, &qword_1EBDAD1A8, 0x1E69B7D10);
  v0 = sub_1BE526A18(0xD000000000000021, 0x80000001BE5528B0, &selRef_bundleWithIdentifier_);
  if (!v0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v1 = v0;
  v2 = [v0 privacyFlow];

  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE5273C0(v2);
  if (!v3)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_1BE526408(uint64_t a1)
{
  sub_1BE4D0D48(0, &qword_1EBDAD178, 0x1E69B7D58);
  v2 = sub_1BE526A18(0xD000000000000021, 0x80000001BE5528B0, &selRef_presenterForPrivacySplashWithIdentifier_);
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      [v2 setPresentingViewController_];
    }

    goto LABEL_59;
  }

  if (!v2)
  {
LABEL_59:
    [v3 present];

    return;
  }

  v4 = objc_opt_self();
  v44 = v3;
  v43 = v3;
  v5 = [v4 sharedApplication];
  v6 = [v5 connectedScenes];

  sub_1BE4D0D48(0, &qword_1EBDAD180, 0x1E69DCE70);
  sub_1BE5274C4();
  v7 = sub_1BE54C92C();

  v8 = 0;
  sub_1BE526108(v7, v9);
  v3 = v10;
  v42 = 0;

  v11 = 0;
  v49 = v3 & 0xC000000000000001;
  v50 = sub_1BE4D0EB0();
  v45 = v3;
  v47 = v3 + 32;
  v48 = v3 & 0xFFFFFFFFFFFFFF8;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = &unk_1EBDAD198;
  v46 = MEMORY[0x1E69E7CC0];
  while (v11 != v50)
  {
    if (v49)
    {
      v14 = MEMORY[0x1BFB47FF0](v11, v45);
    }

    else
    {
      if (v11 >= *(v48 + 16))
      {
        goto LABEL_61;
      }

      v14 = *(v47 + 8 * v11);
    }

    v15 = v14;
    v16 = __OFADD__(v11++, 1);
    if (v16)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v40 = MEMORY[0x1BFB47FF0](0, v8);
LABEL_56:
      v41 = v40;
LABEL_58:

      [v43 setPresentingViewController_];

      goto LABEL_59;
    }

    v52 = v11;
    v17 = v13;
    v18 = [v14 windows];
    sub_1BE4D0D48(0, &qword_1EBDAD190, 0x1E69DD2E8);
    v3 = sub_1BE54C82C();

    if (v3 >> 62)
    {
      v19 = sub_1BE54CBCC();
    }

    else
    {
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = (v12 >> 62);
    if (v12 >> 62)
    {
      v20 = sub_1BE54CBCC();
    }

    else
    {
      v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_62;
    }

    v51 = v19;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v8)
      {
LABEL_21:
        sub_1BE54CBCC();
      }

LABEL_22:
      v12 = sub_1BE54CAFC();
      v8 = (v12 & 0xFFFFFFFFFFFFFF8);
      goto LABEL_23;
    }

    if (v8)
    {
      goto LABEL_21;
    }

    v8 = (v12 & 0xFFFFFFFFFFFFFF8);
    if (v21 > *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

LABEL_23:
    v22 = v8[2];
    v23 = (v8[3] >> 1) - v22;
    v24 = &v8[v22];
    if (v3 >> 62)
    {
      v26 = sub_1BE54CBCC();
      if (!v26)
      {
        goto LABEL_36;
      }

      v27 = v26;
      v28 = sub_1BE54CBCC();
      if (v23 < v28)
      {
        goto LABEL_68;
      }

      if (v27 < 1)
      {
        goto LABEL_69;
      }

      v25 = v28;
      v29 = v24 + 32;
      sub_1BE4C6A14(&qword_1EBDAD1A0, v13, &qword_1BE5513D0, MEMORY[0x1E69E6340]);
      for (i = 0; i != v27; ++i)
      {
        sub_1BE4BF11C(v13, &qword_1BE5513D0);
        v31 = sub_1BE527430(v53, i, v3);
        v33 = *v32;
        (v31)(v53, 0);
        *&v29[8 * i] = v33;
        v13 = v17;
      }

LABEL_32:

      v11 = v52;
      if (v25 < v51)
      {
        goto LABEL_63;
      }

      if (v25 > 0)
      {
        v34 = v8[2];
        v16 = __OFADD__(v34, v25);
        v35 = v34 + v25;
        if (v16)
        {
          goto LABEL_66;
        }

        v8[2] = v35;
      }
    }

    else
    {
      v25 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        if (v23 < v25)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();
        goto LABEL_32;
      }

LABEL_36:

      if (v51 > 0)
      {
        goto LABEL_63;
      }
    }
  }

  v53[0] = MEMORY[0x1E69E7CC0];
  v36 = sub_1BE4D0EB0();
  v3 = 0;
  while (v36 != v3)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1BFB47FF0](v3, v12);
    }

    else
    {
      if (v3 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v37 = *(v12 + 8 * v3 + 32);
    }

    v38 = v37;
    v39 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_64;
    }

    v8 = [v37 rootViewController];

    ++v3;
    if (v8)
    {
      MEMORY[0x1BFB47D00]();
      if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE54C84C();
      }

      sub_1BE54C85C();
      v46 = v53[0];
      v3 = v39;
    }
  }

  v8 = v46;
  if (!sub_1BE4D0EB0())
  {
    v41 = 0;
    v3 = v44;
    goto LABEL_58;
  }

  v3 = v44;
  if ((v46 & 0xC000000000000001) != 0)
  {
    goto LABEL_70;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v46 + 32);
    goto LABEL_56;
  }

  __break(1u);
}

id sub_1BE526A18(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v4 = sub_1BE54C6DC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

uint64_t sub_1BE526A88@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = type metadata accessor for CaptionWithModalLink(0);
  v91 = *(v2 - 8);
  v101 = *(v91 + 64);
  v3 = v2 - 8;
  v89 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v88 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1BE54BC6C();
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1BE4C757C();
  sub_1BE527E40(v9 - v8);
  sub_1BE54B61C();
  sub_1BE4C7500();
  v92 = v10;
  v93 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  sub_1BE4C757C();
  sub_1BE527E40(v14 - v13);
  sub_1BE4BF11C(&qword_1EBDAD1D0, &qword_1BE551448);
  sub_1BE4C7500();
  v96 = v15;
  v97 = v16;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_1BE527E40(&v79 - v19);
  sub_1BE4BF11C(&qword_1EBDAD1D8, &qword_1BE551450);
  sub_1BE4C7500();
  v98 = v20;
  v99 = v21;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v22, v23);
  v90 = &v79 - v24;
  v25 = sub_1BE54ADAC();
  sub_1BE4C7500();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  sub_1BE4C757C();
  v32 = v31 - v30;
  v33 = sub_1BE4BF11C(&qword_1EBDAD1E0, &qword_1BE551458);
  v83 = v33;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v79 - v36;
  sub_1BE4BF11C(&qword_1EBDAD1E8, &qword_1BE551460);
  sub_1BE4C7500();
  v94 = v39;
  v95 = v38;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v40, v41);
  sub_1BE527E40(&v79 - v42);
  (*(v27 + 16))(v32, v1 + *(v3 + 28), v25);
  v81 = sub_1BE54BF7C();
  v80 = v43;
  LOBYTE(v3) = v44;
  v79 = v45;
  KeyPath = swift_getKeyPath();
  v47 = sub_1BE54BE9C();
  v48 = swift_getKeyPath();
  LOBYTE(v25) = v3 & 1;
  v103 = v3 & 1;
  LODWORD(v3) = sub_1BE54BCFC();
  v49 = sub_1BE54BE6C();
  sub_1BE54B59C();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v103 = 0;
  v58 = swift_getKeyPath();
  v59 = &v37[*(v33 + 36)];
  sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38);
  sub_1BE54B6FC();
  *v59 = v58;
  v60 = v80;
  *v37 = v81;
  *(v37 + 1) = v60;
  v37[16] = v25;
  *(v37 + 3) = v79;
  *(v37 + 4) = KeyPath;
  v37[40] = 0;
  *(v37 + 6) = v48;
  *(v37 + 7) = v47;
  *(v37 + 16) = v3;
  v37[72] = v49;
  *(v37 + 10) = v51;
  *(v37 + 11) = v53;
  *(v37 + 12) = v55;
  *(v37 + 13) = v57;
  v37[112] = 0;
  sub_1BE54BD1C();
  v61 = v84;
  sub_1BE54B60C();
  v62 = v82;
  v63 = v88;
  sub_1BE5276D0(v82, v88);
  v64 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v65 = swift_allocObject();
  sub_1BE527734(v63, v65 + v64);
  sub_1BE5277B0(&qword_1EBDAD1F0, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1BE5277B0(&qword_1EBDAD1F8, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v66 = v86;
  v67 = v92;
  sub_1BE54C34C();

  (*(v93 + 8))(v61, v67);
  sub_1BE5276D0(v62, v63);
  v68 = swift_allocObject();
  sub_1BE527734(v63, v68 + v64);
  sub_1BE4C6A14(&qword_1EBDAD200, &qword_1EBDAD1D0, &qword_1BE551448, MEMORY[0x1E697E8D0]);
  v69 = v90;
  v70 = v96;
  sub_1BE54C33C();

  (*(v97 + 8))(v66, v70);
  sub_1BE54B63C();
  sub_1BE5279FC();
  sub_1BE4C6A14(&qword_1EBDAD240, &qword_1EBDAD1D8, &qword_1BE551450, MEMORY[0x1E697E238]);
  v71 = v85;
  v72 = v98;
  sub_1BE54C09C();
  (*(v99 + 8))(v69, v72);
  sub_1BE527CB0(v37);
  v73 = v62 + *(v89 + 36);
  v74 = *v73;
  v75 = *(v73 + 8);
  v103 = v74;
  v104 = v75;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C24C();
  if (v102)
  {
    v76 = 0.5;
  }

  else
  {
    v76 = 1.0;
  }

  v77 = v100;
  (*(v94 + 32))(v100, v71, v95);
  result = sub_1BE4BF11C(&qword_1EBDAD248, &qword_1BE551518);
  *(v77 + *(result + 36)) = v76;
  return result;
}

uint64_t sub_1BE527288(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CaptionWithModalLink(0);
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  return sub_1BE54C25C();
}

uint64_t sub_1BE5272FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CaptionWithModalLink(0);
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v4 = sub_1BE54C25C();
  return (*(a2 + *(v3 + 24)))(v4);
}

unint64_t sub_1BE52739C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BE5273C0(void *a1)
{
  v2 = [a1 localizedButtonTitle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

void (*sub_1BE527430(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1BE527390(a3);
  sub_1BE52739C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1BFB47FF0](a2, a3);
  }

  *a1 = v7;
  return sub_1BE5274BC;
}

unint64_t sub_1BE5274C4()
{
  result = qword_1EBDAD188;
  if (!qword_1EBDAD188)
  {
    sub_1BE4D0D48(255, &qword_1EBDAD180, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD188);
  }

  return result;
}

uint64_t type metadata accessor for CaptionWithModalLink(uint64_t a1)
{
  result = qword_1EBDAD1B8;
  if (!qword_1EBDAD1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BE5275A8(uint64_t a1)
{
  sub_1BE52765C(319);
  if (v1 <= 0x3F)
  {
    sub_1BE54ADAC();
    if (v2 <= 0x3F)
    {
      sub_1BE4C65D8();
      if (v3 <= 0x3F)
      {
        sub_1BE4FCC78();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BE52765C(uint64_t a1)
{
  if (!qword_1EBDAD1C8)
  {
    sub_1BE54B70C();
    v1 = sub_1BE54B62C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDAD1C8);
    }
  }
}

uint64_t sub_1BE5276D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CaptionWithModalLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE527734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CaptionWithModalLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE5277B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE5277F8()
{
  v1 = type metadata accessor for CaptionWithModalLink(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1BE4BF11C(&qword_1EBDABEF0, &qword_1BE54E460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BE54B70C();
    sub_1BE4C7470();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  sub_1BE54ADAC();
  sub_1BE4C7470();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BE527978(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CaptionWithModalLink(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1BE5279FC()
{
  result = qword_1EBDAD208;
  if (!qword_1EBDAD208)
  {
    sub_1BE4C5948(&qword_1EBDAD1E0, &qword_1BE551458);
    sub_1BE527AB4();
    sub_1BE4C6A14(&qword_1EBDAC788, &qword_1EBDAC790, &unk_1BE54FA38, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD208);
  }

  return result;
}

unint64_t sub_1BE527AB4()
{
  result = qword_1EBDAD210;
  if (!qword_1EBDAD210)
  {
    sub_1BE4C5948(&qword_1EBDAD218, &qword_1BE5514F8);
    sub_1BE527B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD210);
  }

  return result;
}

unint64_t sub_1BE527B40()
{
  result = qword_1EBDAD220;
  if (!qword_1EBDAD220)
  {
    sub_1BE4C5948(&qword_1EBDAD228, &qword_1BE551500);
    sub_1BE527BF8();
    sub_1BE4C6A14(&qword_1EBDAC8C8, &qword_1EBDAC8D0, &qword_1BE54FB10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD220);
  }

  return result;
}

unint64_t sub_1BE527BF8()
{
  result = qword_1EBDAD230;
  if (!qword_1EBDAD230)
  {
    sub_1BE4C5948(&qword_1EBDAD238, &qword_1BE551508);
    sub_1BE4D81A4();
    sub_1BE4C6A14(&qword_1EBDACE50, &qword_1EBDACE40, &qword_1BE551510, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD230);
  }

  return result;
}

uint64_t sub_1BE527CB0(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAD1E0, &qword_1BE551458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BE527D18()
{
  result = qword_1EBDAD250;
  if (!qword_1EBDAD250)
  {
    sub_1BE4C5948(&qword_1EBDAD248, &qword_1BE551518);
    sub_1BE4C5948(&qword_1EBDAD1E0, &qword_1BE551458);
    sub_1BE4C5948(&qword_1EBDAD1D8, &qword_1BE551450);
    sub_1BE5279FC();
    sub_1BE4C6A14(&qword_1EBDAD240, &qword_1EBDAD1D8, &qword_1BE551450, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD250);
  }

  return result;
}

uint64_t sub_1BE527E4C()
{
  swift_getKeyPath();
  sub_1BE528778();
  sub_1BE54AFCC();

  return *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup);
}

id sub_1BE527EC4()
{
  v2 = *v0;
  [*v0 setDelegate_];
  swift_unknownObjectRelease();

  return v2;
}

void sub_1BE527F2C(void *a1)
{
  v3 = *(v1 + 24);
  v13 = *(v1 + 16);
  v14 = v3;
  v15 = *(v1 + 32);
  v4 = sub_1BE4BF11C(&qword_1EBDAD290, &qword_1BE5516A8);
  MEMORY[0x1BFB47810](&v11, v4);
  v5 = v12;
  if (v12)
  {
    v6 = v11;
    v7 = *MEMORY[0x1E698B328];
    sub_1BE4D0D48(0, &qword_1EBDAD298, 0x1E698B3C0);
    sub_1BE4D0D48(0, &qword_1EBDAD2A0, 0x1E698B398);
    v8 = v7;
    v9 = sub_1BE528048(v6, v5);
    v10 = sub_1BE5280BC(v9, *MEMORY[0x1E698B360], v8);
    [a1 setRequest_];
  }
}

id sub_1BE528048(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BE54C6DC();

  v4 = [v2 initWithStringValue_];

  return v4;
}

id sub_1BE5280BC(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithID:a1 kind:a2 context:a3];

  return v6;
}

uint64_t sub_1BE528180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE52870C(a1, a2, a3);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BE5281E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE52870C(a1, a2, a3);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BE528248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE52870C(a1, a2, a3);
  sub_1BE54BBCC();
  __break(1u);
}

uint64_t sub_1BE528270(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath, v4);
    v6[2] = v1;
    v7 = v2;
    sub_1BE528320(v5, sub_1BE528760, v6);
  }

  return result;
}

id sub_1BE5283A8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI18LockupViewDelegate__hideLockup] = 0;
  sub_1BE54AFFC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t type metadata accessor for LockupViewDelegate(uint64_t a1)
{
  result = qword_1EBDAD278;
  if (!qword_1EBDAD278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE5285D0(uint64_t a1)
{
  result = sub_1BE54B00C();
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

uint64_t sub_1BE52866C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BE5286AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BE52870C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD2A8;
  if (!qword_1EBDAD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD2A8);
  }

  return result;
}

unint64_t sub_1BE528778()
{
  result = qword_1EBDAD2B0;
  if (!qword_1EBDAD2B0)
  {
    type metadata accessor for LockupViewDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD2B0);
  }

  return result;
}

uint64_t static GenerativePartnerRestrictionUtils.isExternalAIAvailable.getter(uint64_t a1)
{
  if ((AFMontaraRestricted() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) != 0 || (sub_1BE52AA84() & 1) == 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1BE52AC38() ^ 1;
  }

  return v1 & 1;
}

void static GenerativePartnerRestrictionUtils.restrictionReasonText.getter()
{
  sub_1BE4FFB64();
  v59 = v1;
  v2 = sub_1BE54B0EC();
  sub_1BE4C7500();
  v54 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  v8 = v7 - v6;
  v9 = sub_1BE54B05C();
  sub_1BE4C7500();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1BE4C757C();
  v16 = v15 - v14;
  v17 = sub_1BE54B12C();
  sub_1BE4C7500();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1BE4C757C();
  sub_1BE5128E8();
  sub_1BE54B10C();
  sub_1BE4C7500();
  v55 = v22;
  v56 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  sub_1BE4C757C();
  v27 = v26 - v25;
  v28 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  sub_1BE4C757C();
  sub_1BE4CE71C();
  v30 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v57 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  sub_1BE4C757C();
  v58 = v35 - v34;
  sub_1BE4CE71C();
  v36 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  sub_1BE4C757C();
  if ((AFMontaraRestricted() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) != 0 || (sub_1BE52AA84() & 1) == 0 || (sub_1BE52AC38()) && (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0)
  {
    if (sub_1BE52AA84() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isAssetNotReady.getter(), (v43))
    {
      sub_1BE54B04C();
      sub_1BE52A114(v0);
      (*(v11 + 8))(v16, v9);
      if ((*(v19 + 88))(v0, v17) == *MEMORY[0x1E69A0F00])
      {
        (*(v19 + 96))(v0, v17);
        (*(v56 + 32))(v27, v0, v55);
        v44 = sub_1BE54B0FC();
        v45 = *(v54 + 104);
        v45(v8, *MEMORY[0x1E69A1028], v2);
        v46 = sub_1BE528F38(v8, v44);

        v47 = v54 + 8;
        v48 = *(v54 + 8);
        v48(v8, v2);
        if (v46)
        {
          sub_1BE54C65C();
          if (qword_1EBDABA88 == -1)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        v47 = sub_1BE54B0FC();
        v45(v8, *MEMORY[0x1E69A10C0], v2);
        v50 = sub_1BE528F38(v8, v47);

        v48(v8, v2);
        if (v50)
        {
          sub_1BE52C74C();
          sub_1BE54C65C();
          if (qword_1EBDABA88 == -1)
          {
LABEL_22:
            sub_1BE4C52BC(v30, qword_1EBDB0C08);
            v51 = sub_1BE52C730();
            v52(v51);
            sub_1BE54AF2C();
            sub_1BE52C6A8();
            (*(v56 + 8))(v27, v55);
LABEL_23:
            v53 = sub_1BE54ADAC();
            sub_1BE4C63F8(v47, 0, 1, v53);
            sub_1BE4FFB4C();
            return;
          }

LABEL_25:
          sub_1BE4CE5C4(&qword_1EBDABA88);
          goto LABEL_22;
        }

        (*(v56 + 8))(v27, v55);
      }

      else
      {
        (*(v19 + 8))(v0, v17);
      }

      static GenerativePartnerRestrictionUtils.isAssetNotReady.getter();
      sub_1BE52C74C();
    }

    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4(&qword_1EBDABA88);
    }

    v49 = sub_1BE4C52BC(v30, qword_1EBDB0C08);
    (*(v57 + 16))(v58, v49, v30);
    sub_1BE54AF2C();
    v47 = v59;
    sub_1BE54ADBC();
    goto LABEL_23;
  }

  sub_1BE54ADAC();
  sub_1BE4FFB4C();

  sub_1BE4C63F8(v38, v39, v40, v41);
}

id static GenerativePartnerRestrictionUtils.isExternalIntelligenceSignInAllowed.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isExternalIntelligenceSignInAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1BE528F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BE52C590(&qword_1EDDD66C0, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]);
  v17 = a1;
  v9 = sub_1BE54C62C();
  v10 = a2 + 56;
  v18 = a2;
  v11 = ~(-1 << *(a2 + 32));
  do
  {
    v12 = v9 & v11;
    v13 = (1 << (v9 & v11)) & *(v10 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    v14 = v13 != 0;
    if (!v13)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v18 + 48) + *(v5 + 72) * v12, v4);
    sub_1BE52C590(&qword_1EDDD66B8, MEMORY[0x1E69A1168], MEMORY[0x1E69A1178]);
    v15 = sub_1BE54C64C();
    (*(v5 + 8))(v8, v4);
    v9 = v12 + 1;
  }

  while ((v15 & 1) == 0);
  return v14;
}

uint64_t sub_1BE52913C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1BE54CD8C(), sub_1BE4DA590(), v4 = sub_1BE54CDAC(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xEF6E6F6974617267;
      v9 = 0x65746E4969726973;
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          sub_1BE511AB4();
          v9 = v10 + 3;
          v8 = 0x80000001BE552A90;
          break;
        case 2:
          v9 = 0xD000000000000013;
          v8 = 0x80000001BE552AB0;
          break;
        case 3:
          sub_1BE511AB4();
          v9 = v11 + 5;
          v8 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      v12 = 0x65746E4969726973;
      v13 = 0xEF6E6F6974617267;
      switch(a1)
      {
        case 1:
          sub_1BE511AB4();
          v12 = v14 + 3;
          v13 = 0x80000001BE552A90;
          break;
        case 2:
          v12 = 0xD000000000000013;
          v13 = 0x80000001BE552AB0;
          break;
        case 3:
          sub_1BE511AB4();
          v12 = v15 + 5;
          v13 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      if (v9 == v12 && v8 == v13)
      {
        break;
      }

      v17 = sub_1BE54CCDC();

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_1BE52935C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BE52C590(&qword_1EBDACD80, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FA8]);
  v17 = a1;
  v9 = sub_1BE54C62C();
  v10 = a2 + 56;
  v18 = a2;
  v11 = ~(-1 << *(a2 + 32));
  do
  {
    v12 = v9 & v11;
    v13 = (1 << (v9 & v11)) & *(v10 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    v14 = v13 != 0;
    if (!v13)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v18 + 48) + *(v5 + 72) * v12, v4);
    sub_1BE52C590(&qword_1EBDAD2E0, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FB0]);
    v15 = sub_1BE54C64C();
    (*(v5 + 8))(v8, v4);
    v9 = v12 + 1;
  }

  while ((v15 & 1) == 0);
  return v14;
}

void static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)()
{
  sub_1BE4FFB64();
  sub_1BE52C7AC();
  sub_1BE54B0EC();
  sub_1BE4C7500();
  v49 = v2;
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1, v3);
  sub_1BE4C757C();
  v47 = v5 - v4;
  sub_1BE4CE71C();
  v48 = sub_1BE54B10C();
  sub_1BE4C7500();
  v46 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  v45 = v10 - v9;
  sub_1BE4CE71C();
  sub_1BE54B0BC();
  sub_1BE4C7500();
  v54 = v12;
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  sub_1BE4C757C();
  v52 = v15 - v14;
  sub_1BE4CE71C();
  v53 = sub_1BE54B0DC();
  sub_1BE4C7500();
  v51 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_1BE4C757C();
  v21 = v20 - v19;
  v22 = sub_1BE54B05C();
  sub_1BE4C7500();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_1BE4C757C();
  v29 = v28 - v27;
  v30 = sub_1BE54B12C();
  sub_1BE4C7500();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  sub_1BE4C757C();
  v37 = v36 - v35;
  v38 = v0[3];
  v39 = v0[4];
  sub_1BE4C52F4(v0, v38);
  (*(v39 + 112))(v38, v39);
  sub_1BE52A114(v37);
  (*(v24 + 8))(v29, v22);
  v40 = (*(v32 + 88))(v37, v30);
  if (v40 == *MEMORY[0x1E69A0EF8])
  {
    (*(v32 + 96))(v37, v30);
    (*(v51 + 32))(v21, v37, v53);
    sub_1BE54B0CC();
    (*(v54 + 104))(v52, *MEMORY[0x1E69A0F80], v55);
    v41 = sub_1BE4FFD2C();
    sub_1BE52935C(v41, v42);

    (*(v54 + 8))(v52, v55);
    (*(v51 + 8))(v21, v53);
LABEL_6:
    sub_1BE4FFB4C();
    return;
  }

  if (v40 == *MEMORY[0x1E69A0F00])
  {
    (*(v32 + 96))(v37, v30);
    (*(v46 + 32))(v45, v37, v48);
    sub_1BE54B0FC();
    (*(v49 + 104))(v47, *MEMORY[0x1E69A1150], v50);
    v43 = sub_1BE4FFD2C();
    sub_1BE528F38(v43, v44);

    (*(v49 + 8))(v47, v50);
    (*(v46 + 8))(v45, v48);
    goto LABEL_6;
  }

  if (v40 == *MEMORY[0x1E69A11A0])
  {
    goto LABEL_6;
  }

  sub_1BE54CCCC();
  __break(1u);
}

void sub_1BE529A24()
{
  sub_1BE4FFB64();
  v1 = v0;
  sub_1BE52C7AC();
  v2 = sub_1BE54AC9C();
  sub_1BE4C7500();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4C757C();
  v9 = v8 - v7;
  v10 = [objc_opt_self() sharedConnection];
  if (v10)
  {
    v11 = sub_1BE52C5D8(v10);
    v12 = sub_1BE52B40C(v11);
    v14 = v13;

    if (v14)
    {
      if (v14 == 1)
      {
        if (qword_1EBDABAD8 != -1)
        {
          sub_1BE52C664(&qword_1EBDABAD8);
        }

        v15 = sub_1BE54B2EC();
        sub_1BE52C7B8(v15, qword_1EBDB0CB0);
        v16 = sub_1BE54B2BC();
        v17 = sub_1BE54C97C();
        if (sub_1BE52C784(v17))
        {
          sub_1BE50AB7C();
          v57 = sub_1BE51D8D4();
          *v11 = 136446210;
          *(v11 + 4) = sub_1BE52C684("workspaceAllowed(workspaceId:)");
          sub_1BE52C7D0(&dword_1BE4B8000, v18, v19, "%{public}s: no workspace restriction");
          sub_1BE4C58A8(v57);
          sub_1BE52C714();
          sub_1BE4C75DC();
        }

        goto LABEL_8;
      }

      if (v1)
      {
        sub_1BE54C74C();
        v26 = sub_1BE54AC8C();
        sub_1BE4FEA4C(v26, v27, v28);
        v29 = sub_1BE54CA2C();
        v31 = v30;
        (*(v4 + 8))(v9, v2);

        if (v12 == v29 && v14 == v31)
        {
          v48 = sub_1BE52C7A0();
          sub_1BE52C63C(v48, v49);
        }

        else
        {
          sub_1BE52C7A0();
          v33 = sub_1BE54CCDC();
          v34 = sub_1BE52C7A0();
          sub_1BE52C63C(v34, v35);
          if ((v33 & 1) == 0)
          {
            if (qword_1EBDABAD8 != -1)
            {
              sub_1BE52C664(&qword_1EBDABAD8);
            }

            v36 = sub_1BE54B2EC();
            sub_1BE52C7B8(v36, qword_1EBDB0CB0);

            v37 = sub_1BE54B2BC();
            v38 = sub_1BE54C98C();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              swift_slowAlloc();
              *v39 = 136446466;
              v40 = sub_1BE52C684("workspaceAllowed(workspaceId:)");
              v41 = sub_1BE52C75C(v40);

              *(v39 + 14) = v41;
              sub_1BE52C810(&dword_1BE4B8000, v42, v43, "%{public}s: %{public}s is not allowed");
              swift_arrayDestroy();
              sub_1BE4C75DC();
              sub_1BE52C714();
LABEL_35:

              goto LABEL_36;
            }

            goto LABEL_34;
          }
        }

        if (qword_1EBDABAD8 != -1)
        {
          sub_1BE52C664(&qword_1EBDABAD8);
        }

        v50 = sub_1BE54B2EC();
        sub_1BE52C7B8(v50, qword_1EBDB0CB0);

        v37 = sub_1BE54B2BC();
        v51 = sub_1BE54C97C();

        if (os_log_type_enabled(v37, v51))
        {
          v52 = swift_slowAlloc();
          swift_slowAlloc();
          *v52 = 136446466;
          v53 = sub_1BE52C684("workspaceAllowed(workspaceId:)");
          v54 = sub_1BE52C75C(v53);

          *(v52 + 14) = v54;
          sub_1BE52C810(&dword_1BE4B8000, v55, v56, "%{public}s: workspace id %{public}s matched. User signed in with an accepted workspace.");
          swift_arrayDestroy();
          sub_1BE4C75DC();
          sub_1BE52C714();
          goto LABEL_35;
        }

LABEL_34:

        goto LABEL_35;
      }

      v44 = sub_1BE52C7A0();
      sub_1BE52C63C(v44, v45);
      if (qword_1EBDABAD8 != -1)
      {
        sub_1BE52C664(&qword_1EBDABAD8);
      }

      v46 = sub_1BE54B2EC();
      sub_1BE52C7B8(v46, qword_1EBDB0CB0);
      v16 = sub_1BE54B2BC();
      v47 = sub_1BE54C98C();
      if (!sub_1BE52C784(v47))
      {
        goto LABEL_8;
      }

      sub_1BE50AB7C();
      v22 = sub_1BE51D8D4();
      *v11 = 136446210;
      *(v11 + 4) = sub_1BE52C684("workspaceAllowed(workspaceId:)");
      v25 = "%{public}s: a workspace is required, but the credentials have none";
    }

    else
    {
      if (qword_1EBDABAD8 != -1)
      {
        sub_1BE52C664(&qword_1EBDABAD8);
      }

      v20 = sub_1BE54B2EC();
      sub_1BE52C7B8(v20, qword_1EBDB0CB0);
      v16 = sub_1BE54B2BC();
      v21 = sub_1BE54C98C();
      if (!sub_1BE52C784(v21))
      {
        goto LABEL_8;
      }

      sub_1BE50AB7C();
      v22 = sub_1BE51D8D4();
      *v11 = 136446210;
      *(v11 + 4) = sub_1BE52C684("workspaceAllowed(workspaceId:)");
      v25 = "%{public}s: an empty value for allowedExternalIntelligenceWorkspaceIDs was provided, unable to validate any credentials.";
    }

    sub_1BE52C7D0(&dword_1BE4B8000, v23, v24, v25);
    sub_1BE4C58A8(v22);
    sub_1BE52C714();
    sub_1BE4C75DC();
LABEL_8:

LABEL_36:
    sub_1BE4FFB4C();
    return;
  }

  __break(1u);
}

uint64_t static GenerativePartnerRestrictionUtils.isHardDisabled.getter()
{
  sub_1BE54B24C();
  sub_1BE54B22C();
  v0 = sub_1BE54B23C();

  v1 = 0;
  v2 = *(v0 + 16);
  v3 = v0 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == v1)
    {

      v8 = *(v4 + 16);

      return v8 == 0;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    sub_1BE4C6918(v3, v11);
    if (sub_1BE52A354(v11))
    {
      sub_1BE4BF094(v11, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BE52B828(0, *(v4 + 16) + 1, 1);
        v4 = v12;
      }

      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1BE52B828((v6 > 1), v7 + 1, 1);
        v4 = v12;
      }

      *(v4 + 16) = v7 + 1;
      sub_1BE4BF094(v10, v4 + 40 * v7 + 32);
    }

    else
    {
      sub_1BE4C58A8(v11);
    }

    v3 += 40;
    ++v1;
  }

  __break(1u);

  sub_1BE4C58A8(v11);

  __break(1u);
  return result;
}

uint64_t sub_1BE52A114@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v16[0] = sub_1BE54B1BC();
  v1 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0], v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54B14C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54B1EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54B03C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69A12A0], v16[0]);
  sub_1BE54B13C();
  sub_1BE54B1DC();
  (*(v6 + 8))(v9, v5);
  sub_1BE54B17C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BE52A354(void *a1)
{
  v2 = sub_1BE54B0EC();
  v64 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v68 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v55 - v7;
  v67 = sub_1BE54B05C();
  v9 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1BE54B12C();
  v13 = *(v66 - 1);
  MEMORY[0x1EEE9AC00](v66, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE54B10C();
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v59 = a1;
  v60 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE4C52F4(a1, a1[3]);
  sub_1BE54B27C();
  sub_1BE52A114(v16);
  (*(v9 + 8))(v12, v67);
  v20 = v66;
  if ((*(v13 + 88))(v16, v66) == *MEMORY[0x1E69A0F00])
  {
    (*(v13 + 96))(v16, v20);
    v21 = v60;
    v22 = v61;
    v23 = v62;
    (*(v61 + 32))(v60, v16, v62);
    v24 = sub_1BE54B0FC();
    v25 = *MEMORY[0x1E69A1060];
    v26 = v64;
    v63 = *(v64 + 104);
    v63(v8, v25, v2);
    v27 = sub_1BE528F38(v8, v24);

    v66 = *(v26 + 8);
    v67 = v26 + 8;
    (v66)(v8, v2);
    if (v27)
    {
      (*(v22 + 8))(v21, v23);
      return 0;
    }

    else
    {
      sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
      v29 = *(v26 + 72);
      v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BE54DC10;
      v32 = v31 + v30;
      v33 = v63;
      v63(v32, *MEMORY[0x1E69A1150], v2);
      v34 = *MEMORY[0x1E69A1138];
      v65 = v29;
      v33(v32 + v29, v34, v2);
      sub_1BE5103DC();
      v36 = v35;
      v37 = sub_1BE54B0FC();
      v38 = v37;
      v39 = v36 + 56;
      v40 = 1 << *(v36 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v36 + 56);
      v43 = (v40 + 63) >> 6;
      v63 = (v37 + 56);
      v64 = v26 + 16;

      v44 = 0;
      v45 = v68;
      v57 = v36 + 56;
      v58 = v36;
      v56 = v43;
      if (v42)
      {
        while (1)
        {
          v46 = v44;
LABEL_14:
          v47 = *(v36 + 48) + (__clz(__rbit64(v42)) | (v46 << 6)) * v65;
          v48 = *v64;
          (*v64)(v45, v47, v2);
          if (!*(v38 + 16))
          {
            break;
          }

          v42 &= v42 - 1;
          sub_1BE52C590(&qword_1EDDD66C0, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]);
          v49 = sub_1BE54C62C();
          v50 = v38;
          v51 = ~(-1 << *(v38 + 32));
          do
          {
            v52 = v49 & v51;
            if (((*(v63 + (((v49 & v51) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v51)) & 1) == 0)
            {
              v45 = v68;
              goto LABEL_21;
            }

            v48(v8, *(v50 + 48) + v52 * v65, v2);
            sub_1BE52C590(&qword_1EDDD66B8, MEMORY[0x1E69A1168], MEMORY[0x1E69A1178]);
            v53 = sub_1BE54C64C();
            (v66)(v8, v2);
            v49 = v52 + 1;
          }

          while ((v53 & 1) == 0);
          v45 = v68;
          result = (v66)(v68, v2);
          v44 = v46;
          v39 = v57;
          v36 = v58;
          v38 = v50;
          v43 = v56;
          if (!v42)
          {
            goto LABEL_11;
          }
        }

LABEL_21:
        (v66)(v45, v2);

        (*(v61 + 8))(v60, v62);
      }

      else
      {
        while (1)
        {
LABEL_11:
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
            return result;
          }

          if (v46 >= v43)
          {
            break;
          }

          v42 = *(v39 + 8 * v46);
          ++v44;
          if (v42)
          {
            goto LABEL_14;
          }
        }

        sub_1BE4C52F4(v59, v59[3]);
        v54 = sub_1BE54B25C();
        (*(v61 + 8))(v60, v62);
        if (!v54)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    (*(v13 + 8))(v16, v20);
    return 1;
  }
}

uint64_t sub_1BE52AA84()
{
  v1 = sub_1BE54B05C();
  sub_1BE4C7500();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v6 = sub_1BE54B12C();
  sub_1BE4C7500();
  v8 = v7;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v19 - v15;
  sub_1BE54B02C();
  sub_1BE52A114(v16);
  (*(v3 + 8))(v0, v1);
  (*(v8 + 104))(v13, *MEMORY[0x1E69A11A0], v6);
  LOBYTE(v1) = sub_1BE54B11C();
  v17 = *(v8 + 8);
  v17(v13, v6);
  v17(v16, v6);
  return v1 & 1;
}

uint64_t sub_1BE52AC38()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (result)
  {
    v2 = sub_1BE52C5D8(result);
    v3 = sub_1BE52B40C(v2);
    v5 = v4;
    sub_1BE52C650(v3, v4);

    if (v5)
    {
      sub_1BE52C63C(v3, v5);
    }

    else
    {
      if (qword_1EBDABAD8 != -1)
      {
        sub_1BE52C664(&qword_1EBDABAD8);
      }

      v6 = sub_1BE54B2EC();
      sub_1BE52C7B8(v6, qword_1EBDB0CB0);
      v7 = sub_1BE54B2BC();
      v8 = sub_1BE54C98C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = sub_1BE50AB7C();
        v19 = swift_slowAlloc();
        *v9 = 136315138;
        *(v9 + 4) = sub_1BE52C6E0(v19, v10);
        _os_log_impl(&dword_1BE4B8000, v7, v8, "%s: allowedExternalIntelligenceWorkspaceIDs is set but empty.", v9, 0xCu);
        sub_1BE4C58A8(v19);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    result = [v0 sharedConnection];
    if (result)
    {
      v11 = result;
      v12 = [result isExternalIntelligenceSignInAllowed];

      if ((v12 & 1) != 0 || (sub_1BE52B528() & 1) == 0)
      {
        v18 = 0;
        if (!v5)
        {
          return 1;
        }
      }

      else
      {
        if (qword_1EBDABAD8 != -1)
        {
          sub_1BE52C664(&qword_1EBDABAD8);
        }

        v13 = sub_1BE54B2EC();
        sub_1BE52C7B8(v13, qword_1EBDB0CB0);
        v14 = sub_1BE54B2BC();
        v15 = sub_1BE54C98C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = sub_1BE50AB7C();
          v20 = swift_slowAlloc();
          *v16 = 136315138;
          *(v16 + 4) = sub_1BE52C6E0(v20, v17);
          _os_log_impl(&dword_1BE4B8000, v14, v15, "%s: allowExternalIntelligenceIntegrationsSignIn does not allow sign in, but allowedExternalIntelligenceWorkspaceIDs requires it.", v16, 0xCu);
          sub_1BE4C58A8(v20);
          sub_1BE4C75DC();
          sub_1BE4C75DC();
        }

        v18 = 1;
        if (!v5)
        {
          return 1;
        }
      }

      sub_1BE52C63C(v3, v5);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static GenerativePartnerRestrictionUtils.isAssetNotReady.getter()
{
  sub_1BE4FFB64();
  sub_1BE54B10C();
  sub_1BE4C7500();
  v52 = v2;
  v53 = v1;
  MEMORY[0x1EEE9AC00](v1, v3);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v4 = sub_1BE54B0DC();
  sub_1BE4C7500();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  v11 = v10 - v9;
  v12 = sub_1BE54B05C();
  sub_1BE4C7500();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4C757C();
  v19 = v18 - v17;
  sub_1BE54B12C();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1BE4C757C();
  v24 = v23 - v22;
  sub_1BE54B02C();
  sub_1BE52A114(v24);
  (*(v14 + 8))(v19, v12);
  v25 = sub_1BE4FFD2C();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x1E69A0EF8])
  {
    v28 = sub_1BE4FFD2C();
    v29(v28);
    (*(v6 + 32))(v11, v24, v4);
    v30 = sub_1BE54B0CC();
    sub_1BE4BF11C(&qword_1EBDAD2C0, &qword_1BE5516E8);
    sub_1BE52C7AC();
    v31 = sub_1BE54B0BC();
    sub_1BE4C7500();
    v33 = v32;
    v35 = *(v34 + 72);
    v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BE54DC10;
    v38 = v37 + v36;
    v39 = *(v33 + 104);
    v39(v38, *MEMORY[0x1E69A0F38], v31);
    v39(v38 + v35, *MEMORY[0x1E69A0F60], v31);
    sub_1BE52C228(v37, v30);

    swift_setDeallocating();
    sub_1BE52B6C4(MEMORY[0x1E69A0F90]);
    (*(v6 + 8))(v11, v4);
LABEL_6:
    sub_1BE4FFB4C();
    return;
  }

  if (v27 == *MEMORY[0x1E69A0F00])
  {
    v40 = sub_1BE4FFD2C();
    v41(v40);
    (*(v52 + 32))(v0, v24, v53);
    v42 = sub_1BE54B0FC();
    sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
    v43 = sub_1BE54B0EC();
    sub_1BE4C7500();
    v45 = v44;
    v47 = *(v46 + 72);
    v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1BE550E90;
    v50 = v49 + v48;
    v51 = *(v45 + 104);
    v51(v50, *MEMORY[0x1E69A1058], v43);
    v51(v50 + v47, *MEMORY[0x1E69A10C8], v43);
    v51(v50 + 2 * v47, *MEMORY[0x1E69A10F0], v43);
    sub_1BE52BF6C(v49, v42);

    swift_setDeallocating();
    sub_1BE52B6C4(MEMORY[0x1E69A1168]);
    (*(v52 + 8))(v0, v53);
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x1E69A11A0])
  {
    goto LABEL_6;
  }

  sub_1BE54CCCC();
  __break(1u);
}

void *sub_1BE52B40C(uint64_t a1)
{
  sub_1BE52C7AC();
  v2 = sub_1BE54AC9C();
  sub_1BE4C7500();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4C757C();
  v9 = v8 - v7;
  if (v1)
  {
    if (*(v1 + 16))
    {
      sub_1BE54C74C();
      v10 = sub_1BE54AC8C();
      sub_1BE4FEA4C(v10, v11, v12);
      v1 = sub_1BE54CA2C();
      (*(v4 + 8))(v9, v2);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

id sub_1BE52B528()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = sub_1BE52C5D8(result);
    v2 = sub_1BE52B40C(v1);
    v4 = v3;

    sub_1BE52C63C(v2, v4);
    if (qword_1EBDABAD8 != -1)
    {
      sub_1BE52C664(&qword_1EBDABAD8);
    }

    v5 = sub_1BE54B2EC();
    sub_1BE52C7B8(v5, qword_1EBDB0CB0);
    v6 = sub_1BE54B2BC();
    v7 = sub_1BE54C97C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_1BE4C5338(0xD000000000000025, 0x80000001BE555660, &v10);
      *(v8 + 12) = 1026;
      *(v8 + 14) = v4 != 1;
      _os_log_impl(&dword_1BE4B8000, v6, v7, "%{public}s: %{BOOL,public}d", v8, 0x12u);
      sub_1BE4C58A8(v9);
      sub_1BE4C75DC();
      sub_1BE52C714();
    }

    return (v4 != 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE52B6C4(void (*a1)(void))
{
  a1(0);
  sub_1BE52C7F0();

  return MEMORY[0x1EEE6BDC0](v1, 32, 7);
}

uint64_t sub_1BE52B734()
{
  sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  sub_1BE52C7F0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1BE52B7A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE52B868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B7C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE52B980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B7E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE52BA80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B808(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE52BC34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE52BD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE52BE54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BE52B868(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD2D0, &unk_1BE551730);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1BE543160(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BE4BF11C(&unk_1EBDABCB8, &qword_1BE54DE88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BE52B980(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD0E0, &qword_1BE551740);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1BE542510((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BE52BA80(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1BE4BF11C(&qword_1EBDAD2D8, &qword_1BE551748);
  v10 = *(type metadata accessor for DecodedLLMProvider(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DecodedLLMProvider(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1BE542530(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1BE52BC34(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD2C8, &qword_1BE551728);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1BE542548((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BE52BD3C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDAD2E8, &qword_1BE551750);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1BE543160(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BE4BF11C(&qword_1EBDAD2F0, &qword_1BE551758);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BE52BE54(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BE4BF11C(&qword_1EBDACF60, &unk_1BE5508E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1BE4BECA8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE52BF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0EC();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v24 - v11;
  if (*(a2 + 16))
  {
    v24 = *(a1 + 16);
    if (v24)
    {
      v13 = a2;
      v14 = 0;
      v16 = *(v10 + 16);
      v15 = v10 + 16;
      v25 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v28 = *(v15 + 56);
      v29 = v16;
      v27 = v13 + 56;
      v17 = (v15 - 8);
      do
      {
        v26 = v14;
        v29(v12, v25 + v28 * v14, v4);
        if (*(v13 + 16))
        {
          sub_1BE52C590(&qword_1EDDD66C0, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]);
          v18 = sub_1BE54C62C();
          v19 = ~(-1 << *(v13 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v27 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v29(v8, *(v13 + 48) + v20 * v28, v4);
            sub_1BE52C590(&qword_1EDDD66B8, MEMORY[0x1E69A1168], MEMORY[0x1E69A1178]);
            v21 = sub_1BE54C64C();
            v22 = *v17;
            (*v17)(v8, v4);
            v18 = v20 + 1;
            if (v21)
            {
              v22(v12, v4);
              return 0;
            }
          }
        }

        v14 = v26 + 1;
        (*v17)(v12, v4);
      }

      while (v14 != v24);
    }
  }

  return 1;
}

uint64_t sub_1BE52C228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0BC();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v24 - v11;
  if (*(a2 + 16))
  {
    v24 = *(a1 + 16);
    if (v24)
    {
      v13 = a2;
      v14 = 0;
      v16 = *(v10 + 16);
      v15 = v10 + 16;
      v25 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v28 = *(v15 + 56);
      v29 = v16;
      v27 = v13 + 56;
      v17 = (v15 - 8);
      do
      {
        v26 = v14;
        v29(v12, v25 + v28 * v14, v4);
        if (*(v13 + 16))
        {
          sub_1BE52C590(&qword_1EBDACD80, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FA8]);
          v18 = sub_1BE54C62C();
          v19 = ~(-1 << *(v13 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v27 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v29(v8, *(v13 + 48) + v20 * v28, v4);
            sub_1BE52C590(&qword_1EBDAD2E0, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FB0]);
            v21 = sub_1BE54C64C();
            v22 = *v17;
            (*v17)(v8, v4);
            v18 = v20 + 1;
            if (v21)
            {
              v22(v12, v4);
              return 0;
            }
          }
        }

        v14 = v26 + 1;
        (*v17)(v12, v4);
      }

      while (v14 != v24);
    }
  }

  return 1;
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerRestrictionUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BE52C590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE52C5D8(void *a1)
{
  v2 = [a1 allowedExternalIntelligenceWorkspaceIDs];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C82C();

  return v3;
}

uint64_t sub_1BE52C63C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1BE52C650(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1BE52C664(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1BE52C684@<X0>(uint64_t a1@<X8>)
{

  return sub_1BE4C5338(0xD00000000000001ELL, (a1 - 32) | 0x8000000000000000, (v1 - 96));
}

uint64_t sub_1BE52C6A8()
{

  return sub_1BE54ADBC();
}

unint64_t sub_1BE52C6E0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1BE4C5338(0x6E6F6373694D7369, 0xEF64657275676966, va);
}

void sub_1BE52C714()
{

  JUMPOUT(0x1BFB48AC0);
}

unint64_t sub_1BE52C75C(uint64_t a1)
{
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;

  return sub_1BE4C5338(v2, v1, (v4 - 96));
}

BOOL sub_1BE52C784(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1BE52C7D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BE52C7F0()
{

  return swift_arrayDestroy();
}

void sub_1BE52C810(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

char *sub_1BE52C830(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_activeProviderListener] = 0;
  *&v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_useConfirmationPromptsListener] = 0;
  *&v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers] = MEMORY[0x1E69E7CC0];
  v18.receiver = v1;
  v18.super_class = type metadata accessor for SettingsObserver();
  v2 = objc_msgSendSuper2(&v18, sel_init);
  v3 = qword_1EDDD68A0;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDDD7090;
  swift_getKeyPath();
  v6 = v5;
  v7 = sub_1BE52D9B0();
  v11 = sub_1BE52CB24(v7, v8, v9, v10);

  *&v4[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_activeProviderListener] = v11;

  if (qword_1EBDABA78 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  v12 = sub_1BE52D9B0();
  v16 = sub_1BE52CCD0(v12, v13, v14, v15);

  *&v4[OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_useConfirmationPromptsListener] = v16;

  return v4;
}

void sub_1BE52C9C0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 selectedLLMId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE54C70C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1BE52CA28(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BE52CA94(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BE52CB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE4BF11C(&qword_1EBDAD320, &qword_1BE551888);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  if (a1)
  {
    sub_1BE54ADCC();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a3;
    v13[4] = a4;
    sub_1BE52D744(&qword_1EBDAD328, &qword_1EBDAD320, &qword_1BE551888);

    a1 = sub_1BE54B55C();

    (*(v8 + 8))(v11, v7);
  }

  return a1;
}

uint64_t sub_1BE52CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE4BF11C(&qword_1EBDAD310, &unk_1BE551868);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  if (a1)
  {
    sub_1BE54ADCC();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a3;
    v13[4] = a4;
    sub_1BE52D744(&qword_1EBDAD318, &qword_1EBDAD310, &unk_1BE551868);

    a1 = sub_1BE54B55C();

    (*(v8 + 8))(v11, v7);
  }

  return a1;
}

uint64_t sub_1BE52CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers;
    swift_beginAccess();
    v13 = *&v11[v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1BE54C91C();
  sub_1BE4C63F8(v9, 1, 1, v14);
  sub_1BE54C8CC();

  v15 = sub_1BE54C8BC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = a3;
  v16[6] = a4;
  sub_1BE50BCEC();
}

uint64_t sub_1BE52CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20[-v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers;
    swift_beginAccess();
    v14 = *&v12[v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1BE54C91C();
  sub_1BE4C63F8(v10, 1, 1, v15);
  sub_1BE54C8CC();

  v16 = sub_1BE54C8BC();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  v17[5] = a4;
  v17[6] = a5;
  sub_1BE50BCEC();
}

uint64_t sub_1BE52D15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  sub_1BE54C8CC();
  v6[8] = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE52D1F8, v8, v7);
}

uint64_t sub_1BE52D1F8()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 32;
      do
      {
        v5 = *(v0 + 48);
        sub_1BE52D678(v4, v0 + 16);
        v5(v0 + 16);
        sub_1BE52D6B0(v0 + 16);
        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  **(v0 + 32) = v1 == 0;
  v6 = *(v0 + 8);

  return v6();
}

id sub_1BE52D2C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SettingsObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BE52D374(void *a1)
{
  v1 = a1;
  sub_1BE52D3EC();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1BE54C6DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1BE52D3EC()
{
  v1 = sub_1BE54C6DC();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

uint64_t sub_1BE52D488(void *a1)
{
  v1 = a1;
  v2 = sub_1BE52D550();

  return v2 & 1;
}

uint64_t sub_1BE52D4BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      v2 = *a1 & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE52D500(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

id sub_1BE52D550()
{
  v1 = sub_1BE54C6DC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1BE52D5D8()
{
  sub_1BE52D99C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1BE52D978(v1);

  return sub_1BE52D15C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BE52D6F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE52D744(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE52D798()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE52D7E0()
{
  sub_1BE52D99C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1BE52D978(v1);

  return sub_1BE52D15C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BE52D880()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1BE52D9C4(char a1, uint64_t a2)
{
  if (qword_1EBDABAB8 != -1)
  {
    swift_once();
  }

  v4 = 0xD000000000000017;
  v5 = sub_1BE54B2EC();
  sub_1BE4C52BC(v5, qword_1EBDB0C68);

  v6 = sub_1BE54B2BC();
  v7 = sub_1BE54C96C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    v10 = "enablement-sheet-exited";
    v11 = v9;
    v12 = 0xD000000000000017;
    switch(a1)
    {
      case 1:
        v10 = "enablement-sheet-link-opened";
        break;
      case 2:
        v10 = "@NSDictionary8@?0";
        v12 = 0xD00000000000001CLL;
        break;
      case 3:
        v10 = "tivepartnerservice.";
        break;
      default:
        break;
    }

    v13 = sub_1BE4C5338(v12, v10 | 0x8000000000000000, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    sub_1BE4C70B0();
    v14 = sub_1BE54C60C();
    v16 = sub_1BE4C5338(v14, v15, &v21);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1BE4B8000, v6, v7, "Emitted analytics event for %{public}s with %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB48AC0](v11, -1, -1);
    MEMORY[0x1BFB48AC0](v8, -1, -1);
  }

  else
  {
  }

  v21 = 0xD000000000000023;
  v22 = 0x80000001BE5557A0;
  v17 = "enablement-sheet-exited";
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v17 = "enablement-sheet-link-opened";
      break;
    case 2:
      v17 = "@NSDictionary8@?0";
      v4 = 0xD00000000000001CLL;
      break;
    case 3:
      v17 = "tivepartnerservice.";
      break;
    default:
      JUMPOUT(0);
  }

  MEMORY[0x1BFB47CA0](v4, v17 | 0x8000000000000000);

  v18 = sub_1BE54C6DC();

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v25 = sub_1BE52DE10;
  v26 = v19;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BE52DD50;
  v24 = &unk_1F3CCD590;
  v20 = _Block_copy(&v21);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

id sub_1BE52DD50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1BE4C70B0();
    v4 = sub_1BE54C5DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double sub_1BE52DE18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1BE52DE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1BE5339B0(a1, a2, a3);
  v6 = MEMORY[0x1BFB47E50](v4, &type metadata for LLMCapabilityForOnboardingDisplay, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1BE52FE34(&v11, *(a1 + v8++));
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

uint64_t sub_1BE52DEC8(uint64_t a1)
{
  result = MEMORY[0x1BFB47E50](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1BE53007C(v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE52DF88(uint64_t a1)
{
  v2 = type metadata accessor for DecodedLLMProvider(0);
  sub_1BE4C7500();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1BE52B7A8(0, v9, 0);
    v10 = v20;
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1BE5338F0(v11, v8);
      v20 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BE52B7A8((v13 > 1), v14 + 1, 1);
        v10 = v20;
      }

      v18 = v2;
      v19 = &protocol witness table for DecodedLLMProvider;
      v15 = sub_1BE50B648(&v17);
      sub_1BE5338F0(v8, v15);
      *(v10 + 16) = v14 + 1;
      sub_1BE4BF094(&v17, v10 + 40 * v14 + 32);
      sub_1BE533954(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1BE52E110(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1BE54CB4C();
    v4 = a1 + 40;
    do
    {

      sub_1BE54C6DC();

      sub_1BE54CB2C();
      sub_1BE54CB5C();
      sub_1BE54CB6C();
      sub_1BE54CB3C();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_1BE52E1D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1BE52B848(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1BE4C6918(v4, v11);
      sub_1BE4BF11C(&unk_1EBDABCB8, &qword_1BE54DE88);
      sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BE52B848((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BE52E310()
{
  error[1] = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04(&qword_1EBDABA98);
    }

    v5 = sub_1BE54B2EC();
    sub_1BE4C52BC(v5, qword_1EBDB0C20);
    v1 = sub_1BE54B2BC();
    v6 = sub_1BE54C98C();
    if (sub_1BE52C784(v6))
    {
      *swift_slowAlloc() = 0;
      sub_1BE511AC0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_1BE4C75DC();
    }

    goto LABEL_23;
  }

  v1 = v0;
  error[0] = 0;
  sub_1BE533A68();
  v2 = sub_1BE54C6DC();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

  if (!v3)
  {
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24(&qword_1EDDD63E0);
    }

    v12 = sub_1BE54B2EC();
    sub_1BE4C52BC(v12, qword_1EDDD7030);
    sub_1BE533A5C();

    v13 = sub_1BE54B2BC();
    v14 = sub_1BE54C98C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_1BE50AB7C();
      v16 = sub_1BE50AAC4();
      v31 = v16;
      *v15 = 136446210;
      v17 = sub_1BE533A68();
      *(v15 + 4) = sub_1BE4C5338(v17, v18, v19);
      sub_1BE533AA4(&dword_1BE4B8000, v20, v21, "Missing entitlement key %{public}s");
      sub_1BE4C58A8(v16);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    goto LABEL_21;
  }

  v31 = v3;
  swift_unknownObjectRetain();
  sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24(&qword_1EDDD63E0);
    }

    v22 = sub_1BE54B2EC();
    sub_1BE4C52BC(v22, qword_1EDDD7030);
    sub_1BE533A5C();

    v23 = sub_1BE54B2BC();
    v24 = sub_1BE54C98C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136446466;
      v26 = sub_1BE533A68();
      *(v25 + 4) = sub_1BE4C5338(v26, v27, v28);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1BE4C5338(0x74533C7961727241, 0xED00003E676E6972, &v31);
      _os_log_impl(&dword_1BE4B8000, v23, v24, "Entitlement key %{public}s is present, but its value isn't %{public}s!", v25, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    swift_unknownObjectRelease();
LABEL_21:
    if (error[0])
    {
    }

LABEL_23:

    return 0;
  }

  swift_unknownObjectRelease();
  v4 = v30;
  if (error[0])
  {
  }

  return v4;
}

uint64_t sub_1BE52E6B8(uint64_t a1, unint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error[0] = 0;
    v6 = sub_1BE54C6DC();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, error);

    if (v7)
    {
      v24 = v7;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        v8 = v23;
        if (error[0])
        {
        }

        goto LABEL_10;
      }

      if (qword_1EDDD63E0 != -1)
      {
        swift_once();
      }

      v17 = sub_1BE54B2EC();
      sub_1BE4C52BC(v17, qword_1EDDD7030);

      v18 = sub_1BE54B2BC();
      v19 = sub_1BE54C98C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v20 = 136446466;
        *(v20 + 4) = sub_1BE4C5338(a1, a2, &v24);
        *(v20 + 12) = 2082;
        *(v20 + 14) = sub_1BE4C5338(1819242306, 0xE400000000000000, &v24);
        _os_log_impl(&dword_1BE4B8000, v18, v19, "Entitlement key %{public}s is present, but its value isn't %{public}s!", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB48AC0](v21, -1, -1);
        MEMORY[0x1BFB48AC0](v20, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDDD63E0 != -1)
      {
        swift_once();
      }

      v12 = sub_1BE54B2EC();
      sub_1BE4C52BC(v12, qword_1EDDD7030);

      v13 = sub_1BE54B2BC();
      v14 = sub_1BE54C98C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_1BE4C5338(a1, a2, &v24);
        _os_log_impl(&dword_1BE4B8000, v13, v14, "Missing entitlement key %{public}s", v15, 0xCu);
        sub_1BE4C58A8(v16);
        MEMORY[0x1BFB48AC0](v16, -1, -1);
        MEMORY[0x1BFB48AC0](v15, -1, -1);
      }
    }

    if (error[0])
    {
    }

LABEL_23:

    return 2;
  }

  if (qword_1EBDABA98 != -1)
  {
    swift_once();
  }

  v9 = sub_1BE54B2EC();
  sub_1BE4C52BC(v9, qword_1EBDB0C20);
  v5 = sub_1BE54B2BC();
  v10 = sub_1BE54C98C();
  if (!os_log_type_enabled(v5, v10))
  {
    goto LABEL_23;
  }

  v8 = 2;
  v11 = swift_slowAlloc();
  *v11 = 0;
  _os_log_impl(&dword_1BE4B8000, v5, v10, "Failed to create sec task for checking entitlements", v11, 2u);
  MEMORY[0x1BFB48AC0](v11, -1, -1);
LABEL_10:

  return v8;
}

void *sub_1BE52EAE0(uint64_t a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    error[0] = 0;
    sub_1BE52E110(a1);
    type metadata accessor for CFString(0, v4, v5, v6);
    sub_1BE4D985C();
    v7 = sub_1BE54C80C();

    v8 = SecTaskCopyValuesForEntitlements(v3, v7, error);

    if (v8)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v36 = 0;
        v9 = v8;
        sub_1BE54C5EC();
      }

      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24(&qword_1EDDD63E0);
      }

      v17 = sub_1BE54B2EC();
      sub_1BE4C52BC(v17, qword_1EDDD7030);
      sub_1BE533A5C();

      v18 = sub_1BE54B2BC();
      v19 = sub_1BE54C98C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = sub_1BE50AB7C();
        v21 = sub_1BE50AAC4();
        v36 = v21;
        *v20 = 136446210;
        v22 = MEMORY[0x1BFB47D40](a1, MEMORY[0x1E69E6158]);
        v24 = sub_1BE4C5338(v22, v23, &v36);

        *(v20 + 4) = v24;
        sub_1BE533AA4(&dword_1BE4B8000, v25, v26, "Entitlements for keys %{public}s are present, but the values aren't convertible to [String: Any]!");
        sub_1BE4C58A8(v21);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    else
    {
      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24(&qword_1EDDD63E0);
      }

      v27 = sub_1BE54B2EC();
      sub_1BE4C52BC(v27, qword_1EDDD7030);
      sub_1BE533A5C();

      v28 = sub_1BE54B2BC();
      v29 = sub_1BE54C98C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = sub_1BE50AB7C();
        v31 = sub_1BE50AAC4();
        v36 = v31;
        *v30 = 136446210;
        v32 = MEMORY[0x1BFB47D40](a1, MEMORY[0x1E69E6158]);
        v34 = sub_1BE4C5338(v32, v33, &v36);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1BE4B8000, v28, v29, "Missing entitlements for keys %{public}s", v30, 0xCu);
        sub_1BE4C58A8(v31);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    if (error[0])
    {
    }
  }

  else
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04(&qword_1EBDABA98);
    }

    v10 = sub_1BE54B2EC();
    sub_1BE4C52BC(v10, qword_1EBDB0C20);
    v3 = sub_1BE54B2BC();
    v11 = sub_1BE54C98C();
    if (sub_1BE52C784(v11))
    {
      *swift_slowAlloc() = 0;
      sub_1BE511AC0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      sub_1BE4C75DC();
    }
  }

  return 0;
}

uint64_t sub_1BE52EE94()
{
  v0 = sub_1BE52E6B8(0xD000000000000040, 0x80000001BE555890);
  if (v0 == 2)
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04(&qword_1EBDABA98);
    }

    v1 = sub_1BE54B2EC();
    sub_1BE4C52BC(v1, qword_1EBDB0C20);
    v2 = sub_1BE54B2BC();
    v3 = sub_1BE54C98C();
    if (sub_1BE52C784(v3))
    {
      v4 = sub_1BE50AB7C();
      v5 = sub_1BE50AAC4();
      v12 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1BE4C5338(0xD000000000000040, 0x80000001BE555890, &v12);
      sub_1BE511AC0();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      sub_1BE4C58A8(v5);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1BE52EFB4()
{
  v0 = sub_1BE52E310();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1BE52DEC8(&unk_1F3CCAB90);
    v3 = sub_1BE52DEC8(v1);
    v4 = sub_1BE52F1FC(v3, v2);

    if (!*(v4 + 16))
    {

      return 1;
    }

    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04(&qword_1EBDABA98);
    }

    v5 = sub_1BE54B2EC();
    sub_1BE4C52BC(v5, qword_1EBDB0C20);
    sub_1BE533A5C();

    v6 = sub_1BE54B2BC();
    v7 = sub_1BE54C98C();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_14;
    }

    v8 = sub_1BE50AB7C();
    v9 = sub_1BE50AAC4();
    v22 = v9;
    *v8 = 136446210;
    v10 = sub_1BE54C93C();
    v12 = v11;

    v13 = sub_1BE4C5338(v10, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BE4B8000, v6, v7, "(Anvil) Missing required keychain access groups: %{public}s", v8, 0xCu);
    sub_1BE4C58A8(v9);
    sub_1BE4C75DC();
  }

  else
  {
    if (qword_1EBDABA98 != -1)
    {
      sub_1BE533A04(&qword_1EBDABA98);
    }

    v14 = sub_1BE54B2EC();
    sub_1BE4C52BC(v14, qword_1EBDB0C20);
    v6 = sub_1BE54B2BC();
    v15 = sub_1BE54C98C();
    if (!sub_1BE52C784(v15))
    {
      goto LABEL_14;
    }

    *swift_slowAlloc() = 0;
    sub_1BE511AC0();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
  }

  sub_1BE4C75DC();
LABEL_14:

  return 0;
}

uint64_t sub_1BE52F1FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1BE5333A8(a1);
    return a2;
  }

  else
  {

    return sub_1BE53288C(a1, a2);
  }
}

uint64_t sub_1BE52F250()
{
  result = sub_1BE52F274();
  byte_1EBDB0BF0 = result & 1;
  return result;
}

uint64_t sub_1BE52F274()
{
  v0 = sub_1BE52EAE0(&unk_1F3CCAB60);
  if (!v0)
  {
    if (qword_1EBDABA98 != -1)
    {
      swift_once();
    }

    v9 = sub_1BE54B2EC();
    sub_1BE4C52BC(v9, qword_1EBDB0C20);
    v10 = sub_1BE54B2BC();
    v11 = sub_1BE54C98C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446210;
    v14 = MEMORY[0x1BFB47D40](&unk_1F3CCAB60, MEMORY[0x1E69E6158]);
    v16 = sub_1BE4C5338(v14, v15, &v28);

    *(v12 + 4) = v16;
    v17 = "(Anvil) Unable to find necessary entitlement keys in process: %{public}s";
    goto LABEL_21;
  }

  v1 = sub_1BE4E255C(v0);

  if (!v1)
  {
    if (qword_1EBDABA98 != -1)
    {
      swift_once();
    }

    v24 = sub_1BE54B2EC();
    sub_1BE4C52BC(v24, qword_1EBDB0C20);
    v10 = sub_1BE54B2BC();
    v11 = sub_1BE54C98C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446210;
    v25 = MEMORY[0x1BFB47D40](&unk_1F3CCAB60, MEMORY[0x1E69E6158]);
    v27 = sub_1BE4C5338(v25, v26, &v28);

    *(v12 + 4) = v27;
    v17 = "(Anvil) Entitlement values for keys %{public}s are present, but the values aren't convertible to [String: Bool]!";
LABEL_21:
    _os_log_impl(&dword_1BE4B8000, v10, v11, v17, v12, 0xCu);
    sub_1BE4C58A8(v13);
    MEMORY[0x1BFB48AC0](v13, -1, -1);
    MEMORY[0x1BFB48AC0](v12, -1, -1);
LABEL_22:

    return 0;
  }

  v3 = qword_1F3CCAB80;
  v2 = off_1F3CCAB88;
  v4 = *(v1 + 16);

  if (!v4 || (v5 = sub_1BE52F67C(v3, v2), (v6 & 1) == 0))
  {

    goto LABEL_13;
  }

  v7 = *(*(v1 + 56) + v5);

  if (v7 != 1)
  {
LABEL_13:
    if (qword_1EBDABA98 != -1)
    {
      swift_once();
    }

    v18 = sub_1BE54B2EC();
    sub_1BE4C52BC(v18, qword_1EBDB0C20);

    v19 = sub_1BE54B2BC();
    v20 = sub_1BE54C98C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446210;
      v23 = sub_1BE4C5338(v3, v2, &v28);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1BE4B8000, v19, v20, "(Anvil) Required entitlement key %{public}s has value <false>", v21, 0xCu);
      sub_1BE4C58A8(v22);
      MEMORY[0x1BFB48AC0](v22, -1, -1);
      MEMORY[0x1BFB48AC0](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (sub_1BE52EE94())
  {
    return 1;
  }

  return sub_1BE52EFB4();
}

unint64_t sub_1BE52F67C(uint64_t a1, uint64_t a2)
{
  sub_1BE54CD8C();
  sub_1BE54C77C();
  sub_1BE54CDAC();
  v2 = sub_1BE533A68();

  return sub_1BE520200(v2, v3, v4);
}

unint64_t sub_1BE52F6F0()
{
  sub_1BE54B40C();
  sub_1BE5338AC(&qword_1EBDACB58, MEMORY[0x1E698AA60]);
  sub_1BE54C62C();
  v0 = sub_1BE4D985C();

  return sub_1BE52F8E4(v0, v1);
}

unint64_t sub_1BE52F784(uint64_t a1)
{
  v1 = a1;
  sub_1BE54CD8C();
  sub_1BE517700(v1);
  sub_1BE54C77C();

  v2 = sub_1BE54CDAC();

  return sub_1BE52FAA0(v1, v2);
}

unint64_t sub_1BE52F80C(uint64_t a1)
{
  v2 = sub_1BE54CD7C();

  return sub_1BE52FCDC(a1, v2);
}

unint64_t sub_1BE52F850(uint64_t a1)
{
  sub_1BE54C70C();
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v2 = sub_1BE54CDAC();

  return sub_1BE52FD3C(a1, v2);
}

unint64_t sub_1BE52F8E4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1BE54B40C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1BE5338AC(&qword_1EBDAD338, MEMORY[0x1E698AA60]);
    v10 = sub_1BE54C64C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BE52FAA0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000044;
      v8 = 0x496D616441707061;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6C646E7542707061;
          v7 = 0xEB00000000444965;
          break;
        case 2:
          v8 = 0xD000000000000017;
          v7 = 0x80000001BE552A20;
          break;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000001BE552A40;
          break;
        case 4:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001BE552A60;
          break;
        default:
          break;
      }

      v9 = 0x496D616441707061;
      v10 = 0xE900000000000044;
      switch(a1)
      {
        case 1:
          v9 = 0x6C646E7542707061;
          v10 = 0xEB00000000444965;
          break;
        case 2:
          v9 = 0xD000000000000017;
          v10 = 0x80000001BE552A20;
          break;
        case 3:
          v9 = 0xD000000000000013;
          v10 = 0x80000001BE552A40;
          break;
        case 4:
          v9 = 0xD00000000000001ALL;
          v10 = 0x80000001BE552A60;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1BE54CCDC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1BE52FCDC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1BE52FD3C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1BE54C70C();
    v7 = v6;
    if (v5 == sub_1BE54C70C() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1BE54CCDC();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1BE52FE34(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1BE54CD8C();
  sub_1BE4DA590();
  sub_1BE54CDAC();
  sub_1BE533A74();
  v7 = v6 & ~v5;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v5;
    sub_1BE533A80();
    v27 = v9;
    v28 = v10;
    sub_1BE533A80();
    v26 = v11;
    while (1)
    {
      v12 = 0xEF6E6F6974617267;
      v13 = 0x65746E4969726973;
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          sub_1BE511AB4();
          v13 = v14 + 3;
          v12 = v26;
          break;
        case 2:
          v13 = 0xD000000000000013;
          v12 = v27;
          break;
        case 3:
          sub_1BE511AB4();
          v13 = v15 + 5;
          v12 = v28;
          break;
        default:
          break;
      }

      v16 = 0x65746E4969726973;
      v17 = 0xEF6E6F6974617267;
      switch(a2)
      {
        case 1:
          sub_1BE511AB4();
          v16 = v18 + 3;
          v17 = v26;
          break;
        case 2:
          v16 = 0xD000000000000013;
          v17 = v27;
          break;
        case 3:
          sub_1BE511AB4();
          v16 = v19 + 5;
          v17 = v28;
          break;
        default:
          break;
      }

      if (v13 == v16 && v12 == v17)
      {
        break;
      }

      v21 = sub_1BE54CCDC();

      if (v21)
      {
        goto LABEL_19;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v24;
    sub_1BE530A50(a2, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_1BE53007C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1BE533AC4(a1);
  sub_1BE54C77C();
  sub_1BE54CDAC();
  sub_1BE533A74();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v5 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v5 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1BE54CCDC() & 1) != 0)
    {

      v15 = (*(v5 + 48) + 16 * v11);
      v16 = v15[1];
      *v3 = *v15;
      v3[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v4;

  sub_1BE530CF8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v4 = v19;
  *v3 = a2;
  v3[1] = a3;
  return v12 == 0;
}

BOOL sub_1BE5301B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE533AC4(a1);
  MEMORY[0x1BFB482A0](0);
  sub_1BE54CDAC();
  sub_1BE533A74();
  v10 = v8 & ~v9;
  v11 = (1 << v10) & *(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (v11)
  {

    v12 = (*(v5 + 48) + 16 * v10);
    a2 = *v12;
    a3 = v12[1];
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;

    v14 = sub_1BE533A68();
    sub_1BE530E60(v14, v15, v10, isUniquelyReferenced_nonNull_native);
    *v4 = v17;
  }

  result = v11 == 0;
  *v3 = a2;
  v3[1] = a3;
  return result;
}

uint64_t sub_1BE5302A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
  result = sub_1BE54CAAC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1BE530F88(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1BE54CD8C();
    sub_1BE54C77C();

    result = sub_1BE54CDAC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BE5305A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  result = sub_1BE54CAAC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1BE530F88(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1BE54CD8C();
    sub_1BE54C77C();
    result = sub_1BE54CDAC();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BE530804(uint64_t a1)
{
  v2 = *v1;
  sub_1BE4BF11C(&qword_1EBDAD340, &qword_1BE5518E8);
  result = sub_1BE54CAAC();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v2 + 32);
    if (v23 >= 64)
    {
      sub_1BE530F88(0, (v23 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v23;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v24 = *(*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    sub_1BE54CD8C();
    MEMORY[0x1BFB482A0](0);
    result = sub_1BE54CDAC();
    v15 = -1 << *(v4 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v4 + 48) + 16 * v18) = v24;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *(v11 + 8 * v17);
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BE530A50(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1BE5302A4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1BE530FEC();
      goto LABEL_24;
    }

    sub_1BE5313D8(v6 + 1);
  }

  v8 = *v3;
  sub_1BE54CD8C();
  sub_1BE4DA590();
  result = sub_1BE54CDAC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = 0xEF6E6F6974617267;
      v12 = 0x65746E4969726973;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v12 = 0xD000000000000016;
          v11 = 0x80000001BE552A90;
          break;
        case 2:
          v12 = 0xD000000000000013;
          v11 = 0x80000001BE552AB0;
          break;
        case 3:
          v12 = 0xD000000000000018;
          v11 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      v13 = 0x65746E4969726973;
      v14 = 0xEF6E6F6974617267;
      switch(v5)
      {
        case 1:
          v13 = 0xD000000000000016;
          v14 = 0x80000001BE552A90;
          break;
        case 2:
          v13 = 0xD000000000000013;
          v14 = 0x80000001BE552AB0;
          break;
        case 3:
          v13 = 0xD000000000000018;
          v14 = 0x80000001BE552AD0;
          break;
        default:
          break;
      }

      if (v12 == v13 && v11 == v14)
      {
        goto LABEL_27;
      }

      v16 = sub_1BE54CCDC();

      if (v16)
      {
        goto LABEL_28;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_27:

LABEL_28:
  result = sub_1BE54CCEC();
  __break(1u);
  return result;
}

unint64_t sub_1BE530CF8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BE5305A8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BE5316AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1BE54CD8C();
      sub_1BE54C77C();
      result = sub_1BE54CDAC();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1BE54CCDC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1BE53112C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1BE54CCEC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1BE530E60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BE530804(v8 + 1);
      goto LABEL_8;
    }

    if (v9 <= v8)
    {
      sub_1BE5318E0(v8 + 1);
LABEL_8:
      v10 = *v4;
      sub_1BE54CD8C();
      MEMORY[0x1BFB482A0](0);
      a3 = sub_1BE54CDAC() & ~(-1 << *(v10 + 32));
      if ((*(v10 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a3))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    sub_1BE531284();
  }

LABEL_9:
  v11 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v12 = (*(v11 + 48) + 16 * a3);
  *v12 = result;
  v12[1] = a2;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v11 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_12:
  sub_1BE54CCEC();
  __break(1u);
}

uint64_t sub_1BE530F88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BE5518D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1BE530FEC()
{
  v1 = v0;
  sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
  v2 = *v0;
  v3 = sub_1BE54CA9C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1BE53112C()
{
  v1 = v0;
  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  v2 = *v0;
  v3 = sub_1BE54CA9C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void sub_1BE531284()
{
  v1 = v0;
  sub_1BE4BF11C(&qword_1EBDAD340, &qword_1BE5518E8);
  v2 = *v0;
  v3 = sub_1BE54CA9C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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
}

uint64_t sub_1BE5313D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
  result = sub_1BE54CAAC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1BE54CD8C();
        sub_1BE54C77C();

        result = sub_1BE54CDAC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BE5316AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  result = sub_1BE54CAAC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1BE54CD8C();

        sub_1BE54C77C();
        result = sub_1BE54CDAC();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_1BE5318E0(uint64_t a1)
{
  v2 = *v1;
  sub_1BE4BF11C(&qword_1EBDAD340, &qword_1BE5518E8);
  v3 = sub_1BE54CAAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v23 = *(*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        sub_1BE54CD8C();
        MEMORY[0x1BFB482A0](0);
        v14 = sub_1BE54CDAC();
        v15 = -1 << *(v4 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 16 * v18) = v23;
        ++*(v4 + 16);

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }
}

uint64_t sub_1BE531AF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1BE54B0EC();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BE4BF11C(&qword_1EBDACD98, &unk_1BE550680);
  result = sub_1BE54CABC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1BE5338AC(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
    result = sub_1BE54C62C();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_27:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_27;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1BE531E18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8);
      sub_1BE533A5C();
      v8 = sub_1BE54CABC();
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      sub_1BE533A80();
      sub_1BE533A80();
      v11 = v8 + 56;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = *(*(a4 + 48) + (v12 | (v10 << 6)));
        sub_1BE54CD8C();
        switch(v15)
        {
          case 1:
          case 3:
            sub_1BE511AB4();
            break;
          default:
            break;
        }

        sub_1BE54C77C();

        v16 = sub_1BE54CDAC();
        v17 = -1 << *(v8 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          while (++v19 != v22 || (v21 & 1) == 0)
          {
            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v11 + 8 * v19);
            if (v24 != -1)
            {
              v20 = __clz(__rbit64(~v24)) + (v19 << 6);
              goto LABEL_27;
            }
          }

          goto LABEL_31;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v8 + 48) + v20) = v15;
        ++*(v8 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_32;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1BE5320BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1BE4BF11C(&qword_1EBDAD330, &qword_1BE5518E0);
  result = sub_1BE54CABC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1BE54CD8C();

    sub_1BE54C77C();
    result = sub_1BE54CDAC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1BE5322D8(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x1E69E9840];
  v50 = 0;
  v4 = sub_1BE54B0EC();
  sub_1BE4C7500();
  v6 = v5;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v58 = &v49 - v16;
  if (*(a2 + 16))
  {
    v66[0] = a1;
    v17 = *(a1 + 16);
    v60 = (a2 + 56);
    v64 = (v6 + 8);
    v65 = v6 + 16;

    v18 = 0;
    v52 = v17;
    v53 = v6;
LABEL_3:
    if (v18 == v17)
    {
      goto LABEL_24;
    }

    v56 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v59 = v18 + 1;
    v66[1] = v18 + 1;
    sub_1BE533A98();
    v62 = v19;
    v63 = v20;
    v19();
    sub_1BE533A44();
    v55 = sub_1BE5338AC(&qword_1EDDD66C0, v21);
    sub_1BE54C62C();
    sub_1BE533A74();
    v57 = ~v23;
    while (1)
    {
      v24 = v22 & v57;
      v25 = (v22 & v57) >> 6;
      v26 = 1 << (v22 & v57);
      if ((v26 & v60[v25]) == 0)
      {
        (*v64)(v58, v4);
        v18 = v59;
        v17 = v52;
        v6 = v53;
        goto LABEL_3;
      }

      sub_1BE533A98();
      v27();
      sub_1BE533A44();
      sub_1BE5338AC(&qword_1EDDD66B8, v28);
      v29 = sub_1BE54C64C();
      v30 = *v64;
      (*v64)(v14, v4);
      if (v29)
      {
        break;
      }

      v22 = v24 + 1;
    }

    sub_1BE533A8C();
    v31 = v30();
    v33 = *(a2 + 32);
    v51 = ((1 << v33) + 63) >> 6;
    v34 = 8 * v51;
    if ((v33 & 0x3Fu) > 0xD)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v52 = &v49;
      MEMORY[0x1EEE9AC00](v31, v32);
      v24 = &v49 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v24, v60, v34);
      v35 = *(a2 + 16);
      *(v24 + 8 * v25) &= ~v26;
      v36 = v35 - 1;
      v37 = *(a1 + 16);
      v57 = v24;
      v58 = v37;
      v38 = v59;
      v54 = a1;
      while (1)
      {
        v53 = v36;
        v39 = v38;
LABEL_12:
        if (v39 == v58)
        {
          sub_1BE531AF8(v57, v51, v53, a2);
          goto LABEL_24;
        }

        if (v39 >= *(a1 + 16))
        {
          break;
        }

        v59 = v39 + 1;
        v34 = v61;
        sub_1BE533A98();
        v40();
        sub_1BE54C62C();
        v41 = a2;
        sub_1BE533A74();
        v26 = ~v43;
        do
        {
          v44 = v42 & v26;
          v25 = (v42 & v26) >> 6;
          v24 = 1 << (v42 & v26);
          if ((v24 & v60[v25]) == 0)
          {
            sub_1BE533A8C();
            v30();
            v39 = v59;
            a2 = v41;
            a1 = v54;
            goto LABEL_12;
          }

          sub_1BE533A98();
          v45();
          v34 = sub_1BE54C64C();
          sub_1BE533A8C();
          v30();
          v42 = v44 + 1;
        }

        while ((v34 & 1) == 0);
        sub_1BE533A8C();
        v30();
        v46 = *(v57 + 8 * v25);
        *(v57 + 8 * v25) = v46 & ~v24;
        v38 = v59;
        v39 = v59;
        a2 = v41;
        a1 = v54;
        if ((v46 & v24) == 0)
        {
          goto LABEL_12;
        }

        v36 = v53 - 1;
        if (__OFSUB__(v53, 1))
        {
          __break(1u);
        }

        if (v53 == 1)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_27:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v47 = swift_slowAlloc();
    v48 = v50;
    sub_1BE533298(v47, v51, v60, v51, a2, v24, v66);
    if (!v48)
    {

      sub_1BE4C75DC();
LABEL_24:

      return;
    }

    sub_1BE4C75DC();
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1BE53288C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v57 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1BE54CD8C();

        sub_1BE54C77C();
        v20 = sub_1BE54CDAC();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1BE54CCDC() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v26 = *(v5 + 32);
            v45 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v45;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v46 = &v44;
              MEMORY[0x1EEE9AC00](v24, v25);
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v49 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v50;
              while (1)
              {
                v47 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                sub_1BE54CD8C();

                sub_1BE54C77C();
                v35 = sub_1BE54CDAC();
                v36 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v35 & v36;
                  v7 = (v35 & v36) >> 6;
                  v8 = 1 << (v35 & v36);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v30 = v50;
                    goto LABEL_24;
                  }

                  v37 = (*(v5 + 48) + 16 * v4);
                  if (*v37 == v2 && v37[1] == v34)
                  {
                    break;
                  }

                  v39 = sub_1BE54CCDC();
                  v35 = v4 + 1;
                }

                while ((v39 & 1) == 0);

                v40 = v49[v7];
                v49[v7] = v40 & ~v8;
                v3 = v51;
                v12 = v52;
                v30 = v50;
                if ((v40 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1BE5320BC(v49, v45, v47, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_1BE533320(v42, v45, (v5 + 56), v45, v5, v7, v53);

            MEMORY[0x1BFB48AC0](v42, -1, -1);
            v12 = v53[0];
            v48 = v54;
            v5 = v43;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1BE52752C(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_1BE532D64(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_1BE54B0EC();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11, v14);
  v48 = &v37 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v40 = a1;
  v41 = v20;
  *(a1 + v18) = v19;
  v21 = v17 - 1;
  v46 = v20 + 16;
  v47 = a3;
  v42 = a5;
  v43 = a3 + 56;
  v22 = (v20 + 8);
  while (1)
  {
    v39 = v21;
LABEL_3:
    v23 = *a5;
    v24 = a5[1];
    v25 = *(*a5 + 16);
    if (v24 == v25)
    {
      v36 = v47;

      return sub_1BE531AF8(v40, v38, v39, v36);
    }

    if (v24 >= v25)
    {
      break;
    }

    v26 = *(v41 + 80);
    v45 = *(v41 + 72);
    v44 = *(v41 + 16);
    v44(v48, v23 + ((v26 + 32) & ~v26) + v45 * v24, v9);
    a5[1] = v24 + 1;
    v27 = v47;
    sub_1BE5338AC(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
    v28 = sub_1BE54C62C();
    v29 = ~(-1 << *(v27 + 32));
    do
    {
      v30 = v28 & v29;
      v31 = (v28 & v29) >> 6;
      v32 = 1 << (v28 & v29);
      if ((v32 & *(v43 + 8 * v31)) == 0)
      {
        result = (*v22)(v48, v9);
        a5 = v42;
        goto LABEL_3;
      }

      v44(v13, *(v47 + 48) + v30 * v45, v9);
      sub_1BE5338AC(&qword_1EDDD66B8, MEMORY[0x1E69A1168]);
      v33 = sub_1BE54C64C();
      v34 = *v22;
      (*v22)(v13, v9);
      v28 = v30 + 1;
    }

    while ((v33 & 1) == 0);
    result = v34(v48, v9);
    v35 = v40[v31];
    v40[v31] = v35 & ~v32;
    a5 = v42;
    if ((v35 & v32) == 0)
    {
      goto LABEL_3;
    }

    v21 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_17;
    }

    if (v39 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t *sub_1BE5330AC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1BE54CD8C();

    sub_1BE54C77C();
    v16 = sub_1BE54CDAC();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1BE54CCDC();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1BE5320BC(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BE533298(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BE532D64(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_1BE533320(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BE5330AC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1BE5333A8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1BE5334D4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1BE5334D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v6 = sub_1BE54CDAC();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1BE54CCDC() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BE53112C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1BE5335FC(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1BE5335FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BE54CA4C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1BE54CD8C();

        sub_1BE54C77C();
        v10 = sub_1BE54CDAC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1BE5337B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE54C70C();
  v4 = v3;
  if (v2 == sub_1BE54C70C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BE54CCDC();
  }

  return v7 & 1;
}

uint64_t sub_1BE533838(uint64_t a1, uint64_t a2)
{
  sub_1BE54C70C();
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v2 = sub_1BE54CDAC();

  return v2;
}

uint64_t sub_1BE5338AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1BE4D985C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE5338F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecodedLLMProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE533954(uint64_t a1)
{
  v2 = type metadata accessor for DecodedLLMProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BE5339B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD348;
  if (!qword_1EBDAD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD348);
  }

  return result;
}

uint64_t sub_1BE533A04(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE533A24(uint64_t a1)
{

  return swift_once();
}

void sub_1BE533AA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_1BE533AC4(uint64_t a1, ...)
{

  return sub_1BE54CD8C();
}

uint64_t sub_1BE533AE4()
{
  sub_1BE4E01D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BE4BF11C(&qword_1EBDAD380, &qword_1BE551918);
  sub_1BE4C7570(v3);
  v1[4] = sub_1BE51DB24();
  v4 = sub_1BE54B33C();
  sub_1BE536D54(v4);
  v1[6] = v5;
  v1[7] = sub_1BE51DB24();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE533BB4()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_1BE4C6EFC(v0[3] + OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper__authenticationSession, v2, &qword_1EBDAD380, &qword_1BE551918);
  sub_1BE536A20(&qword_1EBDAD398, &qword_1BE551948, MEMORY[0x1E6985C18], v1);
  sub_1BE4D0E58(v2, &qword_1EBDAD380, &qword_1BE551918);
  swift_task_alloc();
  sub_1BE50A8BC();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1BE533CC4;
  v5 = v0[7];
  v6 = v0[2];

  return sub_1BE535104(v6, v5);
}

uint64_t sub_1BE533CC4()
{
  sub_1BE4E021C();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = *v1;
  sub_1BE4E01C4();
  *v10 = v9;
  *(v3 + 72) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    sub_1BE4E01E0();

    return v14();
  }
}

uint64_t sub_1BE533E5C()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE533EC4()
{
  v1 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  v2 = sub_1BE4C7570(v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v20 - v4;
  v6 = sub_1BE54B0AC();
  sub_1BE4C7500();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE4C757C();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper_modelBundle;
  swift_beginAccess();
  sub_1BE4C6EFC(v0 + v14, v5, &qword_1EBDAD390, &qword_1BE551940);
  if (sub_1BE4C63BC(v5, 1, v6) == 1)
  {
    sub_1BE4D0E58(v5, &qword_1EBDAD390, &qword_1BE551940);
    sub_1BE54B4FC();
    sub_1BE50A890();
    return sub_1BE4C63F8(v15, v16, v17, v18);
  }

  else
  {
    (*(v8 + 32))(v13, v5, v6);
    sub_1BE54B44C();
    return (*(v8 + 8))(v13, v6);
  }
}

uint64_t sub_1BE534080()
{
  sub_1BE4E01D4();
  *(v1 + 16) = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v2);
  *(v1 + 24) = sub_1BE51DB24();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE534108()
{
  sub_1BE4E01D4();
  v1 = v0[3];
  sub_1BE533EC4();
  v2 = sub_1BE54B4FC();
  v0[4] = v2;
  if (sub_1BE4C63BC(v1, 1, v2) == 1)
  {
    sub_1BE4D0E58(v0[3], &qword_1EBDAC5A8, &qword_1BE54F818);

    sub_1BE4E01E0();

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_1BE534214;

    return MEMORY[0x1EEDEB768]();
  }
}

uint64_t sub_1BE534214()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;
  v3[6] = v0;

  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    (*(*(v3[4] - 8) + 8))(v3[3]);

    sub_1BE4E01E0();

    return v10();
  }
}

uint64_t sub_1BE53435C()
{
  v17 = v0;
  (*(*(v0[4] - 8) + 8))(v0[3]);
  if (qword_1EBDABAC0 != -1)
  {
    sub_1BE536D04(&qword_1EBDABAC0);
  }

  v1 = v0[6];
  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EBDB0C80);
  v3 = v1;
  v4 = sub_1BE54B2BC();
  v5 = sub_1BE54C98C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = sub_1BE50AAC4();
    v16 = v10;
    *v8 = 136446466;
    sub_1BE4FFAA0();
    *(v8 + 4) = sub_1BE4C5338(0xD000000000000013, v11, &v16);
    *(v8 + 12) = 2114;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_1BE4B8000, v4, v5, "%{public}s: ExternalAIAuthenticator.signOut() exception: %{public}@", v8, 0x16u);
    sub_1BE4D0E58(v9, &qword_1EBDAC2F0, &qword_1BE54F880);
    sub_1BE4C75DC();
    sub_1BE4C58A8(v10);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  sub_1BE4E01E0();

  return v14();
}

uint64_t sub_1BE53455C()
{
  v0 = sub_1BE54B36C();
  sub_1BE4C7500();
  v2 = v1;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = sub_1BE54B39C();
  sub_1BE4C7500();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  sub_1BE4C757C();
  v18 = v17 - v16;
  sub_1BE54B3AC();
  sub_1BE54B37C();
  (*(v13 + 8))(v18, v11);
  (*(v2 + 104))(v7, *MEMORY[0x1E698AA20], v0);
  v19 = sub_1BE54B35C();
  v20 = *(v2 + 8);
  v20(v7, v0);
  v20(v10, v0);
  return v19 & 1;
}

uint64_t sub_1BE534718()
{
  sub_1BE4E01D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v3);
  v1[4] = sub_1BE51DB24();
  v4 = sub_1BE54B4FC();
  sub_1BE536D54(v4);
  v1[6] = v5;
  v1[7] = sub_1BE51DB24();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE5347E8()
{
  sub_1BE4E021C();
  v21 = v0;
  v2 = v0[4];
  v1 = v0[5];
  sub_1BE533EC4();
  if (sub_1BE4C63BC(v2, 1, v1) == 1)
  {
    sub_1BE4D0E58(v0[4], &qword_1EBDAC5A8, &qword_1BE54F818);
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04(&qword_1EBDABAC0);
    }

    v3 = sub_1BE54B2EC();
    sub_1BE4C52BC(v3, qword_1EBDB0C80);
    v4 = sub_1BE54B2BC();
    v5 = sub_1BE54C98C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_1BE50AB7C();
      v7 = sub_1BE50AAC4();
      v20 = v7;
      *v6 = 136446210;
      sub_1BE4FFAA0();
      *(v6 + 4) = sub_1BE4C5338(0xD000000000000012, v8, &v20);
      sub_1BE536D68(&dword_1BE4B8000, v9, v10, "%{public}s: Can't retrieve user info as authenticator is nil.");
      sub_1BE4C58A8(v7);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    sub_1BE536D34();
    sub_1BE50A890();
    sub_1BE4C63F8(v11, v12, v13, v14);

    sub_1BE4E01E0();

    return v15();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[8] = v17;
    *v17 = v18;
    v17[1] = sub_1BE534A04;
    v19 = v0[2];

    return MEMORY[0x1EEDEB720](v19);
  }
}

uint64_t sub_1BE534A04()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;
  *(v4 + 72) = v0;

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE534B04()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_1BE536D34();
  sub_1BE4CE728();
  sub_1BE4C63F8(v1, v2, v3, v4);

  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE534B9C()
{
  sub_1BE4E021C();
  if (qword_1EBDABAC0 != -1)
  {
    sub_1BE536D04(&qword_1EBDABAC0);
  }

  v1 = v0[9];
  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EBDB0C80);
  v3 = v1;
  v4 = sub_1BE54B2BC();
  v5 = sub_1BE54C98C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = sub_1BE50AB7C();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BE4B8000, v4, v5, "retrieveUserInfo() failed: %{public}@", v8, 0xCu);
    sub_1BE4D0E58(v9, &qword_1EBDAC2F0, &qword_1BE54F880);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_1BE536D34();
  sub_1BE50A890();
  sub_1BE4C63F8(v12, v13, v14, v15);

  sub_1BE4E01E0();

  return v16();
}

uint64_t sub_1BE534D4C(void *a1)
{
  v2 = v1;
  v4 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  v5 = sub_1BE4C7570(v4);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v36 - v10;
  v12 = sub_1BE54B0AC();
  sub_1BE4C7500();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4C757C();
  v19 = (v18 - v17);
  v20 = OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper__authenticationSession;
  *(v2 + v20) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAD398, &qword_1BE551948);
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper_modelBundle;
  sub_1BE50A890();
  sub_1BE4C63F8(v22, v23, v24, v12);
  v25 = a1[3];
  v26 = a1[4];
  v38 = a1;
  sub_1BE4C52F4(a1, v25);
  (*(v26 + 104))(v25, v26);
  sub_1BE4CE728();
  sub_1BE4C63F8(v27, v28, v29, v12);
  v30 = *(v14 + 32);
  v30(v19, v11, v12);
  v31 = v37;
  v30(v37, v19, v12);
  sub_1BE4CE728();
  sub_1BE4C63F8(v32, v33, v34, v12);
  swift_beginAccess();
  sub_1BE536C94(v31, v2 + v21);
  swift_endAccess();
  sub_1BE4C58A8(v38);
  return v2;
}

uint64_t sub_1BE535104(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BE54AE3C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1BE54B4BC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  v3[11] = swift_task_alloc();
  v6 = sub_1BE54B4FC();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE5352B8, 0, 0);
}

uint64_t sub_1BE5352B8()
{
  sub_1BE4E021C();
  v21 = v0;
  v2 = v0[11];
  v1 = v0[12];
  sub_1BE533EC4();
  if (sub_1BE4C63BC(v2, 1, v1) == 1)
  {
    sub_1BE4D0E58(v0[11], &qword_1EBDAC5A8, &qword_1BE54F818);
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04(&qword_1EBDABAC0);
    }

    v3 = sub_1BE54B2EC();
    sub_1BE4C52BC(v3, qword_1EBDB0C80);
    v4 = sub_1BE54B2BC();
    v5 = sub_1BE54C98C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_1BE50AB7C();
      v7 = sub_1BE50AAC4();
      v20 = v7;
      *v6 = 136446210;
      sub_1BE4FFAA0();
      *(v6 + 4) = sub_1BE4C5338(0xD000000000000010, v8, &v20);
      sub_1BE536D68(&dword_1BE4B8000, v9, v10, "%{public}s: Can't start sign in session as authenticator is nil.");
      sub_1BE4C58A8(v7);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    v11 = sub_1BE54B3EC();
    sub_1BE5369A0();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x1E698AA28], v11);
    swift_willThrow();

    sub_1BE4E01E0();

    return v13();
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_1BE54B47C();
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[15] = v15;
    *v15 = v16;
    v15[1] = sub_1BE535558;
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[3];

    return sub_1BE535A3C(v18, v19, v17);
  }
}

uint64_t sub_1BE535558()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    sub_1BE50A8BC();
    v3[17] = v10;
    *v10 = v11;
    v10[1] = sub_1BE5356B4;
    v12 = v3[7];
    v13 = v3[2];

    return MEMORY[0x1EEDEB740](v13, v12);
  }
}

uint64_t sub_1BE5356B4()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;
  *(v4 + 144) = v0;

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BE5357B4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  sub_1BE4E01E0();

  return v7();
}

uint64_t sub_1BE53589C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE53595C()
{
  sub_1BE4E021C();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  sub_1BE4E01E0();

  return v7();
}

uint64_t sub_1BE535A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1BE4BF11C(&qword_1EBDAD388, &qword_1BE551938);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_1BE54AE3C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_1BE54B4BC();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE535BB8, 0, 0);
}

uint64_t sub_1BE535BB8()
{
  v70 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_1BE536C24(v1);
  v0[15] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04(&qword_1EBDABAC0);
    }

    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[4];
    v10 = sub_1BE54B2EC();
    sub_1BE4C52BC(v10, qword_1EBDB0C80);
    (*(v7 + 16))(v6, v9, v8);

    v11 = sub_1BE54B2BC();
    v12 = sub_1BE54C96C();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    if (v13)
    {
      v17 = sub_1BE50AAC4();
      v69 = swift_slowAlloc();
      *v17 = 136446722;
      sub_1BE4FFAA0();
      *(v17 + 4) = sub_1BE4C5338(0xD00000000000002ALL, v18, &v69);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1BE4C5338(v4, v5, &v69);
      *(v17 + 22) = 2082;
      v19 = v4;
      v20 = sub_1BE54B49C();
      v68 = v12;
      v22 = v21;
      (*(v15 + 8))(v14, v16);
      v23 = v20;
      v4 = v19;
      v24 = sub_1BE4C5338(v23, v22, &v69);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_1BE4B8000, v11, v68, "%{public}s: Bundle.main.bundleIdentifier = %s, callbackURL scheme: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    sub_1BE54B48C();
    v42 = objc_opt_self();
    sub_1BE54B49C();
    v43 = sub_1BE54C6DC();

    v44 = [v42 callbackWithCustomScheme_];
    v0[16] = v44;

    sub_1BE54B2FC();
    sub_1BE54B30C();
    sub_1BE4CE728();
    sub_1BE4C63F8(v45, v46, v47, v48);
    v49 = sub_1BE54C61C();
    v0[17] = v49;
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[18] = v50;
    *v50 = v51;
    v50[1] = sub_1BE53618C;
    v52 = v0[10];
    v53 = v0[6];
    v54 = v0[2];

    return MEMORY[0x1EEDE8988](v54, v52, v44, v53, v49, v4, v5);
  }

  else
  {
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04(&qword_1EBDABAC0);
    }

    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[11];
    v28 = v0[4];
    v29 = sub_1BE54B2EC();
    sub_1BE4C52BC(v29, qword_1EBDB0C80);
    (*(v26 + 16))(v25, v28, v27);
    v30 = sub_1BE54B2BC();
    v31 = sub_1BE54C98C();
    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[12];
    v33 = v0[13];
    v35 = v0[11];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v36 = 136446466;
      sub_1BE4FFAA0();
      *(v36 + 4) = sub_1BE4C5338(0xD00000000000002ALL, v37, &v69);
      *(v36 + 12) = 2082;
      v38 = sub_1BE54B49C();
      v40 = v39;
      (*(v34 + 8))(v33, v35);
      v41 = sub_1BE4C5338(v38, v40, &v69);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_1BE4B8000, v30, v31, "%{public}s: Bundle.main.bundleIdentifier = nil. callbackURL scheme: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    sub_1BE54B48C();
    v55 = sub_1BE54B49C();
    v57 = v56;
    v0[20] = v56;
    sub_1BE54B2FC();
    sub_1BE54B30C();
    sub_1BE4CE728();
    sub_1BE4C63F8(v58, v59, v60, v61);
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[21] = v62;
    *v62 = v63;
    v62[1] = sub_1BE5363E0;
    v64 = v0[9];
    v65 = v0[5];
    v66 = v0[2];

    return MEMORY[0x1EEDE8980](v66, v64, v55, v57, v65);
  }
}

uint64_t sub_1BE53618C()
{
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[10];
  v8 = v5[8];
  v9 = v5[7];
  v10 = v5[6];
  v11 = *v1;
  sub_1BE4E01C4();
  *v12 = v11;
  *(v3 + 152) = v0;

  sub_1BE4D0E58(v10, &qword_1EBDAD388, &qword_1BE551938);
  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {

    sub_1BE4E01E0();

    return v16();
  }
}

uint64_t sub_1BE5363E0()
{
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = v5[5];
  v10 = *v1;
  sub_1BE4E01C4();
  *v11 = v10;
  *(v3 + 176) = v0;

  sub_1BE4D0E58(v9, &qword_1EBDAD388, &qword_1BE551938);
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {

    sub_1BE4E01E0();

    return v15();
  }
}

uint64_t sub_1BE5365F4()
{
  sub_1BE4E021C();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE536690()
{
  sub_1BE4E021C();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE53672C()
{
  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper__authenticationSession, &qword_1EBDAD380, &qword_1BE551918);
  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper_modelBundle, &qword_1EBDAD390, &qword_1BE551940);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ExternalAIAuthenticatorHelper(uint64_t a1)
{
  result = qword_1EBDAD360;
  if (!qword_1EBDAD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BE536814(uint64_t a1)
{
  sub_1BE53693C(319, &qword_1EBDAD370, MEMORY[0x1E6985C18], MEMORY[0x1E697DCB8]);
  if (v1 <= 0x3F)
  {
    sub_1BE53693C(319, &qword_1EBDAD378, MEMORY[0x1E69DA6C8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BE53693C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BE5369A0()
{
  result = qword_1EBDAC5C8;
  if (!qword_1EBDAC5C8)
  {
    sub_1BE54B3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC5C8);
  }

  return result;
}

uint64_t sub_1BE536A20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1BE54B9EC();
  sub_1BE4C7500();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1BE4C757C();
  v17 = v16 - v15;
  sub_1BE4BF11C(a1, a2);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v25 - v20;
  sub_1BE4C6EFC(v8, &v25 - v20, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a3(0);
    sub_1BE4C7470();
    return (*(v22 + 32))(a4, v21);
  }

  else
  {
    sub_1BE54C99C();
    v24 = sub_1BE54BE0C();
    sub_1BE54B2AC();

    sub_1BE54B9DC();
    swift_getAtKeyPath();

    return (*(v12 + 8))(v17, v10);
  }
}

uint64_t sub_1BE536C24(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

uint64_t sub_1BE536C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE536D04(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE536D34()
{

  return sub_1BE54B52C();
}

void sub_1BE536D68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1BE536D88()
{
  if (qword_1EBDABA78 != -1)
  {
    sub_1BE5378DC(&qword_1EBDABA78);
  }

  v0 = qword_1EBDB0BF8;
  if (!qword_1EBDB0BF8)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    sub_1BE537874(&v6);
    return 2;
  }

  v1 = sub_1BE54C6DC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1BE54CA3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1BE536EA0(char a1)
{
  result = 0x656C62616E457369;
  switch(a1)
  {
    case 1:
      result = 0x6F72507075746573;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BE536F7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BE4BF11C(&qword_1EBDAC3B0, &qword_1BE54F570);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_1BE4E3E7C(&v22, v24);
    sub_1BE4E3E7C(v24, v25);
    sub_1BE4E3E7C(v25, &v23);
    result = sub_1BE52F67C(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      sub_1BE4C58A8(v17);
      result = sub_1BE4E3E7C(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1BE4E3E7C(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BE5371B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BE4BF11C(&qword_1EBDAD3A8, &qword_1BE5519D8);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1BE4E3E7C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1BE4E3E7C(v29, v30);
    result = sub_1BE54CA7C();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1BE4E3E7C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1BE53747C()
{
  result = sub_1BE53749C();
  qword_1EBDB0BF8 = result;
  return result;
}

id sub_1BE53749C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1BE537810(0xD00000000000002ALL, 0x80000001BE555A40);
  v2 = sub_1BE54C61C();
  if (v1)
  {
    v3 = v1;
    sub_1BE536F7C(v2);

    v4 = sub_1BE54C5DC();

    [v3 registerDefaults_];
  }

  else
  {
  }

  return v1;
}

void sub_1BE537594(char a1, char a2)
{
  if (qword_1EBDABA78 != -1)
  {
    sub_1BE5378DC(&qword_1EBDABA78);
  }

  v4 = qword_1EBDB0BF8;
  if (qword_1EBDB0BF8)
  {
    sub_1BE536EA0(a2);
    v5 = sub_1BE54C6DC();

    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_1BE537650(uint64_t a1, uint64_t a2)
{
  if (sub_1BE54B01C() == a1 && v3 == a2)
  {

    sub_1BE537594(1, 0);
    goto LABEL_8;
  }

  v5 = sub_1BE54CCDC();

  sub_1BE537594(v5 & 1, 0);
  if (v5)
  {
LABEL_8:
    sub_1BE537594(1, 4);
    sub_1BE537594(1, 5);
  }
}

id sub_1BE5376F4(char a1)
{
  if (qword_1EBDABA78 != -1)
  {
    sub_1BE5378DC(&qword_1EBDABA78);
  }

  v2 = qword_1EBDB0BF8;
  if (!qword_1EBDB0BF8)
  {
    return 0;
  }

  sub_1BE536EA0(a1);
  v3 = sub_1BE54C6DC();

  v4 = [v2 BOOLForKey_];

  return v4;
}

id sub_1BE53778C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BE537810(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BE54C6DC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1BE537874(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAD3A0, &qword_1BE5519D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE5378DC(uint64_t a1)
{

  return swift_once();
}

id sub_1BE537920()
{
  type metadata accessor for ResourceBundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBDB0C00 = result;
  return result;
}

uint64_t sub_1BE537978()
{
  v0 = sub_1BE54AD8C();
  sub_1BE51286C(v0, qword_1EBDB0C08);
  v1 = sub_1BE4C52BC(v0, qword_1EBDB0C08);
  *v1 = type metadata accessor for ResourceBundleHelper();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1BE537A34()
{
  v0 = sub_1BE54B2EC();
  sub_1BE51286C(v0, qword_1EBDB0C20);
  sub_1BE4C52BC(v0, qword_1EBDB0C20);
  return sub_1BE54B2CC();
}

uint64_t sub_1BE537AF8()
{
  v0 = sub_1BE54B2EC();
  sub_1BE51286C(v0, qword_1EBDB0C50);
  sub_1BE4C52BC(v0, qword_1EBDB0C50);
  return sub_1BE54B2CC();
}

uint64_t sub_1BE537C3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BE54B2EC();
  sub_1BE51286C(v5, a2);
  sub_1BE4C52BC(v5, a2);
  return sub_1BE54B2CC();
}

uint64_t sub_1BE537CBC(void *a1)
{
  v2 = sub_1BE54B3EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = a1;
  v7 = a1;
  sub_1BE4BF11C(&qword_1EBDAC5C0, qword_1BE551A00);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

_BYTE *storeEnumTagSinglePayload for SignInErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BE537EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD3B0;
  if (!qword_1EBDAD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD3B0);
  }

  return result;
}

uint64_t sub_1BE537EF8()
{
  v0 = sub_1BE54AF6C();
  sub_1BE51286C(v0, qword_1EBDAD3B8);
  sub_1BE4C52BC(v0, qword_1EBDAD3B8);
  return sub_1BE54AEEC();
}

id sub_1BE537F58()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBDAD3D0 = result;
  return result;
}

uint64_t sub_1BE537FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE538038(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE5380C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a5;
  v8 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  v9 = sub_1BE4C7570(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v49 - v11;
  v13 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v54 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4C757C();
  v55 = v18 - v17;
  v19 = sub_1BE54C6BC();
  v20 = sub_1BE4C7570(v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1BE4C757C();
  v53 = v23 - v22;
  v24 = sub_1BE54B2EC();
  sub_1BE4C7500();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1BE4C757C();
  v31 = v30 - v29;
  v52 = a1;
  sub_1BE538D68(a1);
  if (v32)
  {
    sub_1BE54B29C();
    v33 = sub_1BE54B2BC();
    v34 = sub_1BE54C98C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v49 = v12;
      v36 = v35;
      *v35 = 0;
      _os_log_impl(&dword_1BE4B8000, v33, v34, "No locale provided, falling back to en-US.", v35, 2u);
      v37 = v36;
      v12 = v49;
      MEMORY[0x1BFB48AC0](v37, -1, -1);
    }

    (*(v26 + 8))(v31, v24);
  }

  v38 = (*(a3 + 32))(a2, a3);
  if (!v39)
  {
    return 0;
  }

  v40 = v38;
  v41 = v39;
  (*(a3 + 24))(a2, a3);
  if (v42)
  {
    v56 = v40;
    v57 = v41;
    MEMORY[0x1BFB47CA0](v50, v51);
    sub_1BE54C6CC();
    if (qword_1EBDABAE8 != -1)
    {
      sub_1BE538D48(&qword_1EBDABAE8);
    }

    v43 = qword_1EBDAD3D0;
    sub_1BE537FC8(v52, v12);
    sub_1BE538D68(v12);
    if (v32)
    {
      v44 = qword_1EBDABAE0;
      v45 = v43;
      if (v44 != -1)
      {
        sub_1BE538D88(&qword_1EBDABAE0);
      }

      v46 = sub_1BE4C52BC(v13, qword_1EBDAD3B8);
      (*(v54 + 16))(v55, v46, v13);
      sub_1BE538D68(v12);
      if (!v32)
      {
        sub_1BE538038(v12);
      }
    }

    else
    {
      (*(v54 + 32))(v55, v12, v13);
      v48 = v43;
    }

    return sub_1BE54C71C();
  }

  else
  {

    return 0;
  }
}

id AdvancedCapabilityModifierUISupport.icon.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  sub_1BE538C8C();
  if (qword_1EBDABAE8 != -1)
  {
    sub_1BE538D48(&qword_1EBDABAE8);
  }

  v6 = qword_1EBDAD3D0;
  v7 = qword_1EBDAD3D0;
  return sub_1BE538540(v4, v5, v6);
}

id sub_1BE538540(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1BE54C6DC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

uint64_t sub_1BE53860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  v6 = sub_1BE4C7570(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v42 - v8;
  v10 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1BE4C757C();
  v17 = v16 - v15;
  v18 = sub_1BE54C6BC();
  v19 = sub_1BE4C7570(v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_1BE4C757C();
  v21 = sub_1BE54B2EC();
  sub_1BE4C7500();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1BE4C757C();
  v28 = v27 - v26;
  sub_1BE538D68(a1);
  if (v29)
  {
    v43 = a3;
    v44 = a1;
    sub_1BE54B29C();
    v30 = sub_1BE54B2BC();
    v31 = sub_1BE54C98C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v42 = v17;
      v33 = v32;
      *v32 = 0;
      _os_log_impl(&dword_1BE4B8000, v30, v31, "No locale provided, falling back to en-US.", v32, 2u);
      v34 = v33;
      v17 = v42;
      MEMORY[0x1BFB48AC0](v34, -1, -1);
    }

    (*(v23 + 8))(v28, v21);
    a3 = v43;
    a1 = v44;
  }

  v46 = _s16GenerativeModels0aB12AvailabilityV12CapabilitiesV5StyleO0A16PartnerServiceUIE10descriptorSSSgvg_0();
  v47 = v35;
  MEMORY[0x1BFB47CA0](v45, a3);
  sub_1BE54C6CC();
  if (qword_1EBDABAE8 != -1)
  {
    sub_1BE538D48(&qword_1EBDABAE8);
  }

  v36 = qword_1EBDAD3D0;
  sub_1BE537FC8(a1, v9);
  sub_1BE538D68(v9);
  if (v29)
  {
    v37 = qword_1EBDABAE0;
    v38 = v36;
    if (v37 != -1)
    {
      sub_1BE538D88(&qword_1EBDABAE0);
    }

    v39 = sub_1BE4C52BC(v10, qword_1EBDAD3B8);
    (*(v12 + 16))(v17, v39, v10);
    sub_1BE538D68(v9);
    if (!v29)
    {
      sub_1BE538038(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v9, v10);
    v40 = v36;
  }

  return sub_1BE54C71C();
}