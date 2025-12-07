uint64_t sub_1D1290B70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D138D5EC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1D1292328(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1290C9C, 0, 0);
}

uint64_t sub_1D1290C9C()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 88) = v1;
  if ([v1 isSharingToProvider])
  {
    v2 = [v1 clinicalSharingStatus];
    *(v0 + 96) = v2;
    v3 = [v2 firstSharedDate];
    if (v3)
    {
      v4 = v3;
      sub_1D138D52C();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = sub_1D138D57C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v14(v10, v5, 1, v12);
    v14(v11, 1, 1, v12);
    v32 = [v2 featureStatus];
    v31 = [v2 userStatus];
    v15 = [v2 primaryDeviceName];
    if (v15)
    {
      v16 = v15;
      sub_1D139016C();
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 80);
    v20 = *(v13 + 48);
    if (v20(v19, 1, v12) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_1D138D4EC();
      (*(v13 + 8))(v19, v12);
    }

    v22 = *(v0 + 72);
    if (v20(v22, 1, v12) == 1)
    {
      v23 = 0;
      if (v18)
      {
LABEL_16:
        v24 = sub_1D139012C();

LABEL_19:
        v26 = *(v0 + 16);
        v25 = *(v0 + 24);
        v27 = [objc_allocWithZone(MEMORY[0x1E69A3F80]) initWithFirstSharedDate:v21 lastSharedDate:v23 featureStatus:v32 userStatus:v31 multiDeviceStatus:3 primaryDeviceName:v24];
        *(v0 + 104) = v27;

        *(v0 + 112) = *(v25 + 24);
        v28 = [v26 identifier];
        sub_1D138D5CC();

        v29 = swift_task_alloc();
        *(v0 + 120) = v29;
        *v29 = v0;
        v29[1] = sub_1D1291084;
        v30 = *(v0 + 64);

        return sub_1D13192F8(v30, v27);
      }
    }

    else
    {
      v23 = sub_1D138D4EC();
      (*(v13 + 8))(v22, v12);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    v24 = 0;
    goto LABEL_19;
  }

  v6 = *(v0 + 16);

  v7 = *(v0 + 8);
  v8 = *(v0 + 16);

  return v7(v8);
}

uint64_t sub_1D1291084()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v2[16] = v0;

  v6 = *(v4 + 8);
  v2[17] = v6;
  v2[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1D1291770;
  }

  else
  {
    v7 = sub_1D1291208;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1291208()
{
  v1 = [*(v0 + 88) identifier];
  sub_1D138D5CC();

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1D12912CC;
  v3 = *(v0 + 56);

  return sub_1D131991C(v3);
}

uint64_t sub_1D12912CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 32);
  *(*v2 + 160) = v1;

  v5(v6, v7);
  if (v1)
  {
    v8 = sub_1D1291824;
  }

  else
  {
    *(v4 + 168) = a1;
    v8 = sub_1D1291460;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D1291460()
{
  v1 = [*(v0 + 16) identifier];
  sub_1D138D5CC();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_1D1291528;
  v3 = *(v0 + 168);
  v4 = *(v0 + 48);

  return sub_1D1319C90(v3, v4);
}

uint64_t sub_1D1291528()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  *(*v1 + 184) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_1D12918D8;
  }

  else
  {
    v5 = sub_1D12916C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D12916C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 16);

  v4 = *(v0 + 8);
  v5 = *(v0 + 16);

  return v4(v5);
}

uint64_t sub_1D1291770()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1291824()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D12918D8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_1D129198C(void *a1, void *a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D107F5C8(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  type metadata accessor for MedicalRecordTimelineViewController(0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v39 = v7;
  v40 = a2;
  v21 = *(v20 + OBJC_IVAR___HRMedicalRecordTimelineViewController_account);
  v41 = a1;
  if (v21)
  {
    v22 = a1;
    v23 = [v21 identifier];
    sub_1D138D5CC();

    v24 = *(v5 + 56);
    v24(v19, 0, 1, v4);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(v19, 1, 1, v4);
    v25 = a1;
  }

  v26 = [v40 &selRef:v39 initWithDictionary:?];
  sub_1D138D5CC();

  v24(v16, 0, 1, v4);
  v27 = *(v9 + 48);
  v28 = MEMORY[0x1E69695A8];
  sub_1D12935D8(v19, v11, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  sub_1D12935D8(v16, &v11[v27], &qword_1EC60D6B0, v28);
  v29 = *(v5 + 48);
  if (v29(v11, 1, v4) != 1)
  {
    v31 = v42;
    sub_1D12935D8(v11, v42, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    if (v29(&v11[v27], 1, v4) != 1)
    {
      v34 = v39;
      (*(v5 + 32))(v39, &v11[v27], v4);
      sub_1D12927B4(&qword_1EC6098A0, MEMORY[0x1E69695C8]);
      v35 = sub_1D139011C();

      v36 = v31;
      v37 = *(v5 + 8);
      v37(v34, v4);
      v38 = MEMORY[0x1E69695A8];
      sub_1D12936B8(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      sub_1D12936B8(v19, &qword_1EC60D6B0, v38);
      v37(v36, v4);
      sub_1D12936B8(v11, &qword_1EC60D6B0, v38);
      return (v35 & 1) != 0;
    }

    v32 = MEMORY[0x1E69695A8];
    sub_1D12936B8(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    sub_1D12936B8(v19, &qword_1EC60D6B0, v32);
    (*(v5 + 8))(v31, v4);
LABEL_10:
    sub_1D1293644(v11);
    return 0;
  }

  v30 = MEMORY[0x1E69695A8];
  sub_1D12936B8(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  sub_1D12936B8(v19, &qword_1EC60D6B0, v30);
  if (v29(&v11[v27], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1D12936B8(v11, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  return 1;
}

id sub_1D1291EE4(void *a1)
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v3 = *(*(v1 + 24) + 16);
  v8 = 0;
  v4 = objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController(0));
  v5 = sub_1D127988C(a1, v3, &v8, 0, 0);
  sub_1D127B668();
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v6 setModalPresentationStyle_];

  return v6;
}

unint64_t sub_1D1291FC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D12FFAC8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1D1292050()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalAccountUpgradeManager.SessionState(uint64_t a1)
{
  result = qword_1EC60E8E0;
  if (!qword_1EC60E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1292120(uint64_t a1)
{
  sub_1D1292328(319, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D12921E0()
{
  v1 = 0x206E776F6E6B6E75;
  v2 = 0xD00000000000002BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000025;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_1D1292280(uint64_t a1, uint64_t a2)
{
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D1292328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D129237C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D108077C;

  return sub_1D128C8DC(a1, v4, v5, v6, v7, v8);
}

uint64_t *sub_1D1292444(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClinicalAccountUpgradeManager.SessionState(0);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  (*(v10 + 56))(v13 + OBJC_IVAR____TtCC15HealthRecordsUI29ClinicalAccountUpgradeManagerP33_C1E9680787D6FC085CDD3D854B2FD8D912SessionState_loginSessionState, 1, 1, v9);
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v13;
  v21 = 91;
  v22 = 0xE100000000000000;
  v20[1] = v8;
  swift_getMetatypeMetadata();
  v14 = a1;

  v15 = a3;
  v16 = sub_1D13901EC();
  MEMORY[0x1D3885C10](v16);

  MEMORY[0x1D3885C10](10272, 0xE200000000000000);
  sub_1D138D5DC();
  sub_1D12927B4(&qword_1EC60D1C0, MEMORY[0x1E69695E0]);
  v17 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v17);

  (*(v10 + 8))(v12, v9);
  MEMORY[0x1D3885C10](14941, 0xE200000000000000);
  v18 = v22;
  v4[6] = v21;
  v4[7] = v18;
  return v4;
}

uint64_t sub_1D1292660(uint64_t a1)
{
  v3 = v2;
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D10819BC;

  return sub_1D128CA54(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1D12927B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D138D5EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1292828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10819BC;

  return sub_1D12893F4(a1, v4, v5, v7, v6);
}

void sub_1D1292900(void *a1, void *a2)
{
  v33 = a2;
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139E810;
  *(v3 + 32) = a1;
  v36 = v3;
  v4 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (!sub_1D13910DC())
      {
LABEL_46:

        return;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v3 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v3 = sub_1D12FFAC8(v3);
    }

    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    if (sub_1D129198C(v9, v33))
    {
      goto LABEL_46;
    }

    v10 = [v9 childViewControllers];
    sub_1D106F934(0, &unk_1EC6099E0, 0x1E69DD258);
    v11 = sub_1D139045C();

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = sub_1D13910DC();
      v14 = v3 >> 62;
      if (!(v3 >> 62))
      {
LABEL_12:
        v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_48;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_12;
      }
    }

    v32 = sub_1D13910DC();
    v16 = v32 + v13;
    if (__OFADD__(v32, v13))
    {
      goto LABEL_48;
    }

LABEL_13:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v14)
      {
        if (v16 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1D13910DC();
      goto LABEL_19;
    }

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    v3 = sub_1D139122C();
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    if (v12)
    {
      v19 = sub_1D13910DC();
      if (v19)
      {
LABEL_22:
        if (((v18 >> 1) - v17) < v13)
        {
          goto LABEL_50;
        }

        v34 = v13;
        if (v12)
        {
          if (v19 < 1)
          {
            goto LABEL_52;
          }

          sub_1D1293540(0, &qword_1EC60B100, &unk_1EC6099E0, 0x1E69DD258, MEMORY[0x1E69E62F8]);
          sub_1D11169A4();
          for (i = 0; i != v19; ++i)
          {
            v21 = sub_1D1112FB8(v35, i, v11);
            v23 = *v22;
            (v21)(v35, 0);
            *(v6 + 8 * v17 + 32 + 8 * i) = v23;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        if (v34 >= 1)
        {
          v24 = *(v6 + 16);
          v25 = __OFADD__(v24, v34);
          v26 = v24 + v34;
          if (v25)
          {
            goto LABEL_51;
          }

          *(v6 + 16) = v26;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_22;
      }
    }

    if (v13 > 0)
    {
      goto LABEL_49;
    }

LABEL_34:
    v36 = v3;
    v27 = [v9 presentedViewController];
    if (v27)
    {
      v28 = v27;
      MEMORY[0x1D3885D90]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }

    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = [v29 viewControllers];
      v31 = sub_1D139045C();

      sub_1D11228D0(v31);
    }

    v3 = v36;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1D1292D64(void *a1, void *a2)
{
  v50 = a2;
  v49 = sub_1D138D5EC();
  v3 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v46 - v6;
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E810;
  *(v7 + 32) = a1;
  v56 = v7;
  v46 = (v3 + 8);
  v8 = a1;
  while (1)
  {
    if (v7 >> 62)
    {
      if (!sub_1D13910DC())
      {
        goto LABEL_47;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v7 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v7 = sub_1D12FFAC8(v7);
    }

    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      break;
    }

    v12 = v11 - 1;
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;
    type metadata accessor for ClinicalAccountDetailsViewController(0);
    if (swift_dynamicCastClass())
    {
      v14 = v13;

      sub_1D138F6CC();

      v15 = v55[0];
      v16 = [v55[0] identifier];

      v17 = v47;
      sub_1D138D5CC();

      v18 = [v50 identifier];
      v19 = v48;
      sub_1D138D5CC();

      LOBYTE(v18) = sub_1D138D5BC();
      v20 = *v46;
      v21 = v19;
      v22 = v49;
      (*v46)(v21, v49);
      v20(v17, v22);
      if (v18)
      {
LABEL_47:

        return;
      }
    }

    v23 = [v13 childViewControllers];
    v54 = sub_1D106F934(0, &unk_1EC6099E0, 0x1E69DD258);
    v24 = sub_1D139045C();

    v25 = v24 >> 62;
    if (v24 >> 62)
    {
      v26 = sub_1D13910DC();
      v27 = v7 >> 62;
      if (!(v7 >> 62))
      {
LABEL_13:
        v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = v28 + v26;
        if (__OFADD__(v28, v26))
        {
          goto LABEL_49;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v7 >> 62;
      if (!(v7 >> 62))
      {
        goto LABEL_13;
      }
    }

    v45 = sub_1D13910DC();
    v29 = v45 + v26;
    if (__OFADD__(v45, v26))
    {
      goto LABEL_49;
    }

LABEL_14:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v27)
      {
        if (v29 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1D13910DC();
      goto LABEL_20;
    }

    if (v27)
    {
      goto LABEL_19;
    }

LABEL_20:
    v7 = sub_1D139122C();
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v30 = *(v10 + 16);
    v31 = *(v10 + 24);
    if (v25)
    {
      v32 = sub_1D13910DC();
      if (!v32)
      {
LABEL_27:

        if (v26 > 0)
        {
          goto LABEL_50;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_27;
      }
    }

    if (((v31 >> 1) - v30) < v26)
    {
      goto LABEL_51;
    }

    v52 = v7;
    v53 = v13;
    v51 = v26;
    if (v25)
    {
      if (v32 < 1)
      {
        goto LABEL_53;
      }

      sub_1D1293540(0, &qword_1EC60B100, &unk_1EC6099E0, 0x1E69DD258, MEMORY[0x1E69E62F8]);
      sub_1D11169A4();
      for (i = 0; i != v32; ++i)
      {
        v34 = sub_1D1112FB8(v55, i, v24);
        v36 = *v35;
        (v34)(v55, 0);
        *(v10 + 8 * v30 + 32 + 8 * i) = v36;
      }
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    v7 = v52;
    v13 = v53;
    if (v51 >= 1)
    {
      v37 = *(v10 + 16);
      v38 = __OFADD__(v37, v51);
      v39 = v37 + v51;
      if (v38)
      {
        goto LABEL_52;
      }

      *(v10 + 16) = v39;
    }

LABEL_35:
    v56 = v7;
    v40 = [v13 presentedViewController];
    if (v40)
    {
      v41 = v40;
      MEMORY[0x1D3885D90]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }

    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v43 = [v42 viewControllers];
      v44 = sub_1D139045C();

      sub_1D11228D0(v44);
    }

    v7 = v56;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

id sub_1D129334C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  for (i = a2; ; i = v6)
  {
    v7 = [i parentViewController];
    if (!v7)
    {
      v7 = [i presentingViewController];
      if (!v7)
      {
        break;
      }
    }

    v6 = v7;
  }

  v8 = a1;
  sub_1D1292900(i, v8);
  v10 = v9;

  if (v10)
  {
    type metadata accessor for MedicalRecordTimelineViewController(0);
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v8;
  sub_1D1292D64(i, v12);
  v14 = v13;

  if (!v14)
  {
    v15 = 0;
    v16 = &selRef_deselectRowAtIndexPath_animated_;
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_16:
    v17 = 0;
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  type metadata accessor for ClinicalAccountDetailsViewController(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
  }

  v16 = &selRef_deselectRowAtIndexPath_animated_;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_13:
  v17 = [v11 v16[386]];
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_14:
  result = [v15 v16[386]];
LABEL_18:
  *a3 = i;
  a3[1] = v17;
  a3[2] = v11;
  a3[3] = result;
  a3[4] = v15;
  return result;
}

uint64_t sub_1D12934B8(uint64_t a1)
{
  sub_1D1293540(0, &qword_1EC60E8F0, &qword_1EC60E8F8, 0x1E69DCCD8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1293540(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D12935D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D1292328(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1293644(uint64_t a1)
{
  sub_1D107F5C8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D12936B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1292328(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1293714(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D1292328(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D1293780()
{
  result = qword_1EC60E910;
  if (!qword_1EC60E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E910);
  }

  return result;
}

void sub_1D12937D4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3, a4);
    sub_1D10922EC();
    v5 = sub_1D139061C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15HealthRecordsUI26UpgradeFlowViewEnvironment33_C1E9680787D6FC085CDD3D854B2FD8D9LLV0fG4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_1D1293878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D12938C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1293908(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D1293940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1293988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D12939F0()
{
  result = qword_1EC60E928;
  if (!qword_1EC60E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E928);
  }

  return result;
}

uint64_t type metadata accessor for CategorySearchViewController(uint64_t a1)
{
  result = qword_1EC60E968;
  if (!qword_1EC60E968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1D1293B6C()
{
  v1 = qword_1EC60E960;
  if (*(v0 + qword_1EC60E960))
  {
    v2 = *(v0 + qword_1EC60E960);
  }

  else
  {
    sub_1D139092C();
    v3 = *(v0 + qword_1EC60E938);
    v4 = [v3 healthStore];
    sub_1D1294118();
    v6 = v5;
    v7 = [v3 healthStore];
    v8 = [v7 profileIdentifier];

    type metadata accessor for CategorySearchSectionDataSourceProvider();
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[11] = 0;
    sub_1D102CC18(&v10, (v2 + 3));
    v2[9] = v8;
    v2[10] = v6;
    v2[8] = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1D1293C78(uint64_t a1)
{
  v1 = (a1 + qword_1EC60E958);
  *v1 = 0;
  v1[1] = 0;
  *(a1 + qword_1EC60E960) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1293CF0()
{
  v1 = sub_1D1293B6C();
  v10 = type metadata accessor for CategorySearchSectionDataSourceProvider();
  v11 = sub_1D1295A80(&qword_1EC60E990, v2, type metadata accessor for CategorySearchSectionDataSourceProvider, &unk_1D13AD7C8);
  v9 = v1;
  sub_1D138EC5C();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CategorySearchViewController(0);
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v3 = [v0 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];

    v6 = [v0 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 setKeyboardDismissMode_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D1293E24(void *a1)
{
  v1 = a1;
  sub_1D1293CF0();
}

void sub_1D1293E6C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D138F1AC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D138DEBC();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69A3558], v7);
  v10 = a1;
  sub_1D139096C();
  sub_1D138F18C();
  sub_1D139097C();
  v11 = type metadata accessor for CategorySearchViewController(0);
  v12.receiver = v10;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a3);
}

id sub_1D1293FE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CategorySearchViewController(0);
  return objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
}

void sub_1D1294034()
{
  v1 = v0;
  sub_1D138EC6C();
  v2 = sub_1D138EC7C();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  sub_1D138EB6C();
  sub_1D13908CC();

  sub_1D138EC3C();
  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_1D138E83C();
}

void sub_1D1294118()
{
  sub_1D1295350(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v34 - v2;
  v37 = v0;
  v4 = (v0 + qword_1EC60E958);
  swift_beginAccess();
  v5 = v4[1];
  v6 = MEMORY[0x1E69E6158];
  v36 = v4;
  if (v5)
  {
    v7 = *v4;
    sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
    sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], 1);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D139E710;
    *(v8 + 56) = v6;
    v9 = sub_1D1089930();
    strcpy((v8 + 32), "localizedTitle");
    *(v8 + 47) = -18;
    *(v8 + 96) = v6;
    *(v8 + 104) = v9;
    *(v8 + 64) = v9;
    *(v8 + 72) = v7;
    *(v8 + 80) = v5;

    v10 = sub_1D139076C();
  }

  else
  {
    v10 = 0;
  }

  v39[4] = v10;
  v11 = sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
  sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], 1);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E710;
  *(v12 + 56) = v6;
  v13 = sub_1D1089930();
  strcpy((v12 + 32), "pluginPackage");
  *(v12 + 46) = -4864;
  *(v12 + 96) = v6;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  *(v12 + 72) = 0xD000000000000025;
  *(v12 + 80) = 0x80000001D13BCBC0;
  v34[1] = v11;
  v39[5] = sub_1D139076C();
  sub_1D138DB9C();
  sub_1D1295350(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v14 = sub_1D138D97C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v35 = xmmword_1D139E700;
  *(v17 + 16) = xmmword_1D139E700;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E69A3BB0], v14);
  sub_1D138DA6C();
  v18 = sub_1D138CFBC();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_1D10A5C9C(0, &qword_1EC60A0A8, MEMORY[0x1E69A3C58]);
  v19 = swift_allocObject();
  *(v19 + 16) = v35;
  v20 = v37;
  v21 = [*(v37 + qword_1EC60E938) healthStore];
  v22 = [v21 profileIdentifier];

  *(v19 + 32) = v22;
  v23 = sub_1D138DB4C();

  sub_1D111C068(v3);
  v24 = *(v20 + qword_1EC60E940);
  v39[6] = v23;
  v39[7] = v24;
  v25 = *v36;
  v26 = v36[1];

  v27 = v24;
  v28 = sub_1D1295750(v25, v26);

  v29 = 0;
  v39[8] = v28;
  v38 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v29 <= 5)
  {
    v30 = 5;
  }

  else
  {
    v30 = v29;
  }

  while (1)
  {
    if (v29 == 5)
    {
      sub_1D1080A7C(0, &qword_1EE06B788, &qword_1EE06B790, 0x1E696AE18);
      swift_arrayDestroy();
      v33 = sub_1D139044C();

      [objc_opt_self() andPredicateWithSubpredicates_];

      return;
    }

    if (v30 == v29)
    {
      break;
    }

    v31 = v39[v29++ + 4];
    if (v31)
    {
      v32 = v31;
      MEMORY[0x1D3885D90]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      goto LABEL_5;
    }
  }

  __break(1u);
}

id sub_1D12946EC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = a1;
  v12 = sub_1D138D7DC();
  v13 = type metadata accessor for CategorySearchViewController(0);
  v17.receiver = v11;
  v17.super_class = v13;
  objc_msgSendSuper2(&v17, sel_collectionView_didSelectItemAtIndexPath_, v10, v12);

  result = [v11 collectionView];
  if (result)
  {
    v15 = result;
    v16 = sub_1D138D7DC();
    [v15 deselectItemAtIndexPath:v16 animated:1];

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D12948C4()
{
  v1 = *(v0 + qword_1EC60E930 + 8);

  return result;
}

id sub_1D1294994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategorySearchViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D12949CC(uint64_t a1)
{
  v2 = *(a1 + qword_1EC60E930 + 8);

  return result;
}

uint64_t sub_1D1294AA8()
{
  v1 = (v0 + qword_1EC60E958);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1D1294B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + qword_1EC60E958);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  sub_1D1293B6C();
  sub_1D1294CE0();

  v7 = sub_1D138E0FC();

  sub_1D1294118();
  sub_1D138EB0C();
}

void (*sub_1D1294BA8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1294C0C;
}

void sub_1D1294C0C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D1293B6C();
    sub_1D1294CE0();

    v3 = sub_1D138E0FC();

    sub_1D1294118();
    sub_1D138EB0C();
  }
}

uint64_t sub_1D1294CE0()
{
  sub_1D12952B0(0, &qword_1EC60E988, MEMORY[0x1E69A35F8]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - v4;
  v6 = sub_1D138E6BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1295350(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  if (*(v0 + 16))
  {
    v13 = *(v0 + 16);
  }

  else
  {
    v14 = v0;
    sub_1D129501C();
    sub_1D138E65C();
    sub_1D138E66C();
    sub_1D11580B0(0);
    v16 = *(v15 + 48);
    (*(v7 + 32))(v12, v9, v6);
    *&v12[v16] = 0;
    v17 = *MEMORY[0x1E69A36B0];
    v18 = sub_1D138E5EC();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v12, v17, v18);
    (*(v19 + 56))(v12, 0, 1, v18);
    sub_1D10A5CE8(0);
    v21 = objc_allocWithZone(v20);
    sub_1D138E0CC();
    (*(v3 + 104))(v5, *MEMORY[0x1E69A35F0], v2);
    sub_1D1295290(0);
    swift_allocObject();
    v13 = sub_1D138E17C();
    *(v14 + 16) = v13;
  }

  return v13;
}

id sub_1D129501C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[11];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v0[6]);
    v3 = v0;
    v4 = sub_1D138D8BC();
    sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D139E810;
    v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v7 = sub_1D139012C();
    v8 = [v6 initWithKey:v7 ascending:1 selector:sel_localizedStandardCompare_];

    *(v5 + 32) = v8;
    v9 = sub_1D1390B6C();

    v10 = v3[11];
    v3[11] = v9;
    v2 = v9;

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

uint64_t sub_1D1295164()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D12951E8()
{
  sub_1D11044D4(0, &qword_1EC60A098, &qword_1EC60A0A0, MEMORY[0x1E69A3620], 0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E700;
  v1 = sub_1D1294CE0();
  v2 = sub_1D1295A80(&qword_1EC60E978, 255, sub_1D1295290, MEMORY[0x1E69A3618]);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

void sub_1D12952B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D10A5CE8(255);
    v7 = v6;
    v8 = sub_1D1295A80(&qword_1EC60A0C0, 255, sub_1D10A5CE8, MEMORY[0x1E69A37E0]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1295350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D12953B4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(a1 + 48);
  v35 = *(a1 + 32);
  v5 = v35;
  v36 = v6;
  v37 = *(a1 + 64);
  v7 = v37;
  v8 = *(a1 + 16);
  v34[0] = *a1;
  v9 = v34[0];
  v34[1] = v8;
  v10 = &v3[qword_1EC60E958];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v3[qword_1EC60E960] = 0;
  v11 = &v3[qword_1EC60E930];
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 8) = v7;
  *v11 = v9;
  *(v11 + 1) = v8;
  *&v3[qword_1EC60E938] = a2;
  LOBYTE(v32) = v34[0];
  sub_1D1082914(v34, v33);
  v12 = a2;
  v13 = [v12 healthStore];
  v14 = [v13 profileIdentifier];

  v15 = _s14HealthPlatform8FeedItemC0A9RecordsUIE029predicateForUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0N0OSg_AA06SourceP0OtFZ_0(&v32);
  sub_1D1080D98(v34);

  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E6E0;
  *(v16 + 32) = v15;
  v30 = v15;
  v17 = [v12 healthStore];
  v18 = [v17 profileIdentifier];

  v19 = _s14HealthPlatform8FeedItemC0A9RecordsUIE019predicateForGeneralaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(v18);
  *(v16 + 40) = v19;
  sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
  v20 = sub_1D139044C();

  v21 = [objc_opt_self() orPredicateWithSubpredicates_];

  *&v3[qword_1EC60E940] = v21;
  v22 = qword_1EE06AF70;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE06BB58;
  v25 = [v12 healthStore];
  v26 = [v25 profileIdentifier];

  v32 = *(v24 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v27);
  sub_1D138D96C();
  sub_1D138EF2C();
  sub_1D1295A80(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);

  sub_1D138ED0C();

  *&v3[qword_1EC60E948] = v33[0];
  *&v3[qword_1EC60E950] = 4;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for CategorySearchViewController(0);
  v28 = objc_msgSendSuper2(&v31, sel_initWithCollectionViewLayout_, 0);

  return v28;
}

id sub_1D1295750(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  sub_1D106F934(0, &qword_1EE06B790, 0x1E696AE18);
  sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], 1);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E710;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D1089930();
  strcpy((v5 + 32), "localizedTitle");
  *(v5 + 47) = -18;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  swift_bridgeObjectRetain_n();
  v8 = sub_1D139076C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E710;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 32) = 0xD000000000000014;
  *(v9 + 40) = 0x80000001D13C9780;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  v10 = sub_1D139076C();
  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E6E0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = v8;
  v13 = v10;
  v14 = sub_1D139044C();

  v15 = objc_opt_self();
  v16 = [v15 orPredicateWithSubpredicates_];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D139E700;
  *(v17 + 56) = v6;
  *(v17 + 64) = v7;
  strcpy((v17 + 32), "indexForSearch");
  *(v17 + 47) = -18;
  v18 = sub_1D139076C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D139E6E0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = v16;
  v21 = v18;
  v22 = sub_1D139044C();

  v23 = [v15 andPredicateWithSubpredicates_];

  return v23;
}

uint64_t sub_1D1295A80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ViewControllerFactory.makeUserDomainConceptDetailViewController(for:using:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for UserDomainConceptDetailViewController(0));
  v5 = a1;
  v6 = a2;
  v7 = sub_1D12288FC(v5, v6);

  return v7;
}

void __swiftcall ViewControllerFactory.makeTimelineViewController(for:showsInitialSearchBar:using:queryPredicateByType:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, Swift::Bool showsInitialSearchBar, HRProfile *using, Swift::OpaquePointer queryPredicateByType)
{
  v8 = sub_1D138D5EC();
  v53 = *(v8 - 8);
  v9 = v53;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  (*(v9 + 56))(&v51 - v15, 1, 1, v8, v14);
  v54 = type metadata accessor for MedicalRecordTimelineViewController(0);
  v17 = objc_allocWithZone(v54);
  v18 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v18 = 0;
  v18[1] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v19 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v20 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;

  v25 = using;
  v26 = [v23 init];
  v27 = MEMORY[0x1E69A3658];
  *v22 = v26;
  v22[1] = v27;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v25;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = a2;
  sub_1D1127E2C(v16, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = queryPredicateByType;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v28 = *&v17[v19];
  v29 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v29 + 2) = v28;
  *(v29 + 3) = a2;
  v29[32] = 0;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = v53;
  v33 = v24;

  v34 = v25;
  v35 = [v30 clearColor];
  v58 = sub_1D138E90C();
  v59 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v57);
  sub_1D138E8FC();
  sub_1D102CC18(&v57, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v36 = [(HRProfile *)v34 healthStore];
  v37 = sub_1D107D9D8(v36, a2, 0, 0, queryPredicateByType._rawValue, v16, 0);

  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v37;
  v38 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v56.receiver = v17;
  v56.super_class = v54;
  v39 = [(UIViewController *)&v56 initWithCollectionViewLayout:v38];

  v40 = v39;
  sub_1D1072338();

  sub_1D138F6CC();

  v41 = BYTE8(v57);
  v42 = v40 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState;
  *v42 = v57;
  v42[8] = v41;

  sub_1D138F6CC();
  v43 = v55;

  v44 = v57;
  v45 = BYTE8(v57);
  if (v57 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v57;
  }

  if (!BYTE8(v57))
  {
    v44 = v46;
  }

  v47 = v40 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState;
  *v47 = v44;
  v47[8] = v45;
  sub_1D1127E2C(v16, v43);
  if ((*(v32 + 48))(v43, 1, v8) == 1)
  {
    sub_1D129C0EC(v43, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v48 = v52;
    (*(v32 + 32))(v52, v43, v8);
    sub_1D107B54C(v48);
    (*(v32 + 8))(v48, v8);
  }

  sub_1D107A01C();

  sub_1D129C0EC(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v49 = v40;
  v50 = [(UIViewController *)v49 navigationItem];
  [(UINavigationItem *)v50 setLargeTitleDisplayMode:2];
}

unsigned __int8 *ViewControllerFactory.makeUserDomainConceptListViewController(for:listType:using:)(char *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  objc_allocWithZone(type metadata accessor for UserDomainConceptListViewController(0));
  return sub_1D137AFD8(&v6, a2, a3);
}

void ViewControllerFactory.makeHealthRecordsPrivacyPresenter()()
{
  v0 = sub_1D139012C();
  v1 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (!v1)
  {
    __break(1u);
  }
}

id sub_1D12962C0()
{
  result = [objc_allocWithZone(type metadata accessor for ViewControllerFactory()) init];
  qword_1EE06AA70 = result;
  return result;
}

id ViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ViewControllerFactory.shared.getter()
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06AA70;

  return v1;
}

uint64_t sub_1D12963DC(uint64_t a1, void *a2, __n128 a3)
{
  v21 = a2;
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_1D138D5EC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 16);
  v15(v14, a1, v10, v12);
  objc_allocWithZone(type metadata accessor for MedicalRecordTimelineViewController(0));
  ObjectType = swift_getObjectType();
  (v15)(v9, v14, v10);
  v17 = *(v11 + 56);
  v17(v9, 0, 1, v10);
  v17(v6, 1, 1, v10);
  v18 = (*(ObjectType + 968))(v21, 0, v9, 0, 0, v6, 0, 0, 0, 1);
  (*(v11 + 8))(v14, v10);
  swift_deallocPartialClassInstance();
  return v18;
}

void sub_1D1296680(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D10CBD3C;
    v11[3] = &block_descriptor_41_2;
    v8 = a3;
    v9 = _Block_copy(v11);

    a3 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  [v10 presentViewController:a3 animated:1 completion:v9];
  _Block_release(v9);
}

char *sub_1D129688C(void *a1, void *a2, char *a3, void (*a4)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), void (*a5)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), char a6)
{
  v13 = *a3;
  objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController(0));

  v11 = sub_1D127988C(a1, a2, &v13, a4, a5);
  if (a6)
  {
    sub_1D127B668();
  }

  return v11;
}

char *sub_1D129692C(void *a1, void *a2, void (*a3)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), void (*a4)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)))
{
  v9 = 0;
  objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController(0));

  return sub_1D127988C(a1, a2, &v9, a3, a4);
}

uint64_t sub_1D1296B34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1D13905AC();
  v4[3] = sub_1D139059C();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1D1296C44;

  return v8();
}

uint64_t sub_1D1296C44()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D129C174, v1, v0);
}

double sub_1D1296DA0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D129C088(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1D13905DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1D13905AC();

  v13 = sub_1D139059C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a4;
  sub_1D107877C(0, 0, v11, a6, v14);

  return result;
}

uint64_t sub_1D1296EE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1D13905AC();
  v4[3] = sub_1D139059C();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1D10AA380;

  return v8();
}

char *sub_1D1297030(uint64_t a1, void *a2, __n128 a3)
{
  v55 = a2;
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = sub_1D138D5EC();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = type metadata accessor for BrowseCategory(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  sub_1D129AA7C(a1, &v53 - v23, type metadata accessor for BrowseCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
LABEL_7:
      v29 = objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController);
      v30 = v55;
      v31 = [v29 initWithContext:2 onboardingOptions:0 sourceIdentifier:0 profile:v55 existingAccount:0];
      v32 = [v30 onboardingManager];
      [v32 registerInflightOnboardingViewController:v31 completion:0];
      swift_storeEnumTagMultiPayload();
      v33 = BrowseCategory.rawValue.getter();
      v35 = v34;
      if (v33 == BrowseCategory.rawValue.getter() && v35 == v36)
      {

        v37 = 2;
      }

      else
      {
        v45 = sub_1D139162C();

        if (v45)
        {
          v37 = 2;
        }

        else
        {
          v37 = 1;
        }
      }

      sub_1D129AAE4(v18, type metadata accessor for BrowseCategory);
      if (qword_1EE06A170 != -1)
      {
        swift_once();
      }

      sub_1D122101C(v37, 2, 0);

      return v31;
    }

    if (EnumCaseMultiPayload != 5)
    {
      return sub_1D129AEAC(v55);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          type metadata accessor for MedicalRecordTimelineViewController(0);
          v27 = MedicalRecordTimelineViewController.__allocating_init(profile:)(v55);
          swift_storeEnumTagMultiPayload();
          BrowseCategory.localizedTitle.getter();
          sub_1D129AAE4(v21, type metadata accessor for BrowseCategory);
          v28 = sub_1D139012C();

          [v27 setTitle_];

          return v27;
        }

        return result;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D107D12C(0);

      v46 = v54;
      (*(v54 + 32))(v15, v24, v10);
      v47 = v46[2];
      v47(v12, v15, v10);
      objc_allocWithZone(type metadata accessor for MedicalRecordTimelineViewController(0));
      ObjectType = swift_getObjectType();
      v47(v9, v12, v10);
      v49 = v46[7];
      v49(v9, 0, 1, v10);
      v49(v6, 1, 1, v10);
      v50 = (*(ObjectType + 968))(v55, 0, v9, 0, 0, v6, 0, 0, 0, 1);
      v51 = v46[1];
      v51(v12, v10);
      swift_deallocPartialClassInstance();
      v51(v15, v10);
      return v50;
    }

    if (qword_1EE069F78 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v38 = off_1EE069F80;
    if (*(off_1EE069F80 + 2) && (v39 = sub_1D12A2F78(), (v40 & 1) != 0))
    {
      v41 = v38[7] + 72 * v39;
      v57 = *v41;
      v43 = *(v41 + 32);
      v42 = *(v41 + 48);
      v44 = *(v41 + 64);
      v58 = *(v41 + 16);
      v59 = v43;
      v61 = v44;
      v60 = v42;
      swift_endAccess();
      v64 = v59;
      v65 = v60;
      v66 = v61;
      v62 = v57;
      v63 = v58;
      sub_1D1082914(&v57, v56);
    }

    else
    {
      swift_endAccess();
      result = [objc_opt_self() unknownRecordCategory];
      if (!result)
      {
        __break(1u);
        return result;
      }

      sub_1D123E1C4(result, &v62);
    }

    v59 = v64;
    v60 = v65;
    v61 = v66;
    v57 = v62;
    v58 = v63;
    v52 = [v53 makeViewControllerForCategory_usingProfile_];
    sub_1D1080D98(&v57);
    return v52;
  }

  return result;
}

id ViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1297950(uint64_t a1, void *a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalRecordTimelineViewController(0);
  (*(v5 + 16))(v7, a1, v4);
  return MedicalRecordTimelineViewController.__allocating_init(profile:accountId:)(a2, v7);
}

void __swiftcall ViewControllerFactory.makeViewController(for:using:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, HRProfile *using)
{
  v6 = [(WDMedicalRecordCategory *)a2 categoryType];
  if (qword_1F4D04F18 == v6 || unk_1F4D04F20 == v6)
  {
    v8 = [v3 makeTimelineViewControllerForCategory:a2 showsInitialSearchBar:0 usingProfile:using filterPredicatesByType:0];

    v9 = v8;
  }

  else
  {
    v21 = v3;
    sub_1D123E1C4(a2, v25);
    if (qword_1EE06AF70 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE06BB58;
    v11 = [(HRProfile *)using healthStore];
    v12 = [(HKHealthStore *)v11 profileIdentifier];

    v13 = OBJC_IVAR___HRProfileManager_lock;
    v22[0] = *(v10 + OBJC_IVAR___HRProfileManager_lock);
    MEMORY[0x1EEE9AC00](v14);
    sub_1D138D96C();
    type metadata accessor for CountProviderCollection();
    sub_1D10DC8AC();

    sub_1D138ED0C();

    v23[2] = v25[2];
    v23[3] = v25[3];
    v24 = v26;
    v23[0] = v25[0];
    v23[1] = v25[1];
    sub_1D1082914(v25, v22);
    v15 = sub_1D12E4360(v23);
    sub_1D1080D98(v25);
    v16 = [(HRProfile *)using healthStore];
    v17 = [(HKHealthStore *)v16 profileIdentifier];

    v22[0] = *(v10 + v13);
    MEMORY[0x1EEE9AC00](v18);
    type metadata accessor for AccountStateProvider();

    sub_1D138ED0C();

    v19 = *&v23[0];
    v20 = objc_allocWithZone(type metadata accessor for RecordCategoryViewController());
    sub_1D12988E4(v25, using, v15, v19, v21, v20);
  }
}

void __swiftcall ViewControllerFactory.makeTimelineViewController(for:showsInitialSearchBar:using:filterPredicatesByType:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, Swift::Bool showsInitialSearchBar, HRProfile *using, Swift::OpaquePointer_optional filterPredicatesByType)
{
  rawValue = filterPredicatesByType.value._rawValue;
  v8 = sub_1D138D5EC();
  v52 = v8;
  v54 = *(v8 - 8);
  v9 = v54;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  (*(v9 + 56))(&v51 - v15, 1, 1, v8, v14);
  v53 = type metadata accessor for MedicalRecordTimelineViewController(0);
  v17 = objc_allocWithZone(v53);
  v18 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v18 = 0;
  v18[1] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v19 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v20 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v24 = a2;
  v25 = using;
  v26 = [v23 init];
  v27 = MEMORY[0x1E69A3658];
  *v22 = v26;
  v22[1] = v27;
  v28 = v16;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v25;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = a2;
  sub_1D1127E2C(v16, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = rawValue;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v29 = *&v17[v19];
  v30 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v30 + 2) = v29;
  *(v30 + 3) = a2;
  v30[32] = 0;
  v31 = objc_opt_self();
  v32 = v29;
  v33 = v52;
  v34 = v24;
  v35 = v25;

  v36 = [v31 clearColor];
  v58 = sub_1D138E90C();
  v59 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v57);
  sub_1D138E8FC();
  sub_1D102CC18(&v57, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v37 = [(HRProfile *)v35 healthStore];
  v38 = sub_1D107D9D8(v37, a2, 0, 0, rawValue, v16, 0);

  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v38;
  v39 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v56.receiver = v17;
  v56.super_class = v53;
  v40 = [(UIViewController *)&v56 initWithCollectionViewLayout:v39];

  v41 = v40;
  sub_1D1072338();

  sub_1D138F6CC();
  v42 = v54;

  v43 = BYTE8(v57);
  v44 = v41 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState;
  *v44 = v57;
  v44[8] = v43;

  sub_1D138F6CC();
  v45 = v55;

  v46 = v57;
  v47 = BYTE8(v57);
  if (v57 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v57;
  }

  if (!BYTE8(v57))
  {
    v46 = v48;
  }

  v49 = v41 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState;
  *v49 = v46;
  v49[8] = v47;
  sub_1D1127E2C(v28, v45);
  if ((*(v42 + 48))(v45, 1, v33) == 1)
  {
    sub_1D129C0EC(v45, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v50 = v51;
    (*(v42 + 32))(v51, v45, v33);
    sub_1D107B54C(v50);
    (*(v42 + 8))(v50, v33);
  }

  sub_1D107A01C();

  sub_1D129C0EC(v28, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
}

void __swiftcall ViewControllerFactory.makeAlphabeticalViewController(for:using:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, HRProfile *using)
{
  sub_1D123E1C4(a2, v5);
  v4 = objc_allocWithZone(type metadata accessor for ConceptListViewController(0));
  sub_1D133BFA4(v5, using);
}

void ViewControllerFactory.makeImproveHealthRecordsPrivacyPresenter()()
{
  v0 = sub_1D139012C();
  v1 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (!v1)
  {
    __break(1u);
  }
}

id sub_1D12988E4(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCanceller] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_aToZCanceller] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsCanceller] = 0;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_shouldShowPinnedLabsTip] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_cancellable] = 0;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding] = 0;
  v12 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount];
  *v12 = 0;
  v12[8] = 1;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController] = 0;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_isSearching] = 0;
  v13 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView];
  sub_1D138E37C();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = MEMORY[0x1E69A3658];
  *v13 = v14;
  v13[1] = v15;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientSubscriber] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentPalette] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState] = 2;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___modePicker] = 0;
  v16 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController];
  *v16 = 0;
  v16[1] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___changeProvider] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___listManager] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___viewDataPublisher] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___udcListViewController] = 1;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___latestViewContoller] = 1;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___lastUpdatedViewController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___alphabeticalViewController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___labsOnboardingTileDisplayEvaluator] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile] = a2;
  v17 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category];
  v18 = a1[3];
  *(v17 + 2) = a1[2];
  *(v17 + 3) = v18;
  v19 = *a1;
  v20 = a1[1];
  *(v17 + 8) = *(a1 + 8);
  *v17 = v19;
  *(v17 + 1) = v20;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_countProvider] = a3;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_accountStateProvider] = a4;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_factory] = a5;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_displayMode] = 0x80;
  v21 = *a1;
  v38 = a5;
  if ((*a1 & 0xFC) == 4)
  {
    v22 = a2;
    sub_1D1082914(a1, &v41);

    v23 = a5;
    v24 = 2;
  }

  else
  {
    v39[0] = *a1;
    v25 = a2;
    sub_1D1082914(a1, &v41);

    v26 = a5;
    v27 = sub_1D11AF4E4(v39);
    if (*(v27 + 2))
    {
      v24 = v27[32];
    }

    else
    {

      v24 = 1;
    }
  }

  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment] = v24;
  v28 = [objc_opt_self() clearColor];
  v29 = sub_1D138E90C();
  v30 = MEMORY[0x1E69A3750];
  v42 = v29;
  v43 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D138E8FC();
  v31 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  sub_1D102CC18(&v41, &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider]);
  LOBYTE(v41) = v21;
  v32 = DisplayCategory.Kind.hkDisplayCategory.getter();
  if (v32)
  {
    v33 = v32;
    if ([v32 color])
    {
      v42 = v29;
      v43 = v30;
      __swift_allocate_boxed_opaque_existential_1(&v41);
      sub_1D138E8FC();

      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(&a6[v31]);
      sub_1D102CC18(&v41, &a6[v31]);
      swift_endAccess();
    }

    else
    {
    }
  }

  v34 = type metadata accessor for RecordCategoryViewController();
  v40.receiver = a6;
  v40.super_class = v34;
  v35 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v36 = sub_1D139012C();
  sub_1D1080D98(a1);
  [v35 setTitle_];

  return v35;
}

char *sub_1D1298D48(void *a1, void *a2)
{
  v4 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - v8;
  v10 = sub_1D138D5EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v88 = &v80 - v19;
  v20 = [a1 primaryConcept];
  v21 = [v20 groupByConcept];

  if (![v21 isQualifiedForConceptRoom])
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_1D129AA7C(v9, v6, type metadata accessor for PresentationContext);
    v30 = objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
    v31 = a2;
    v32 = a1;
    v33 = sub_1D131237C(v32, v31, v6);

    v34 = v33;
    v35 = [v34 navigationItem];
    [v35 setLargeTitleDisplayMode_];

    sub_1D129AAE4(v9, type metadata accessor for PresentationContext);
    return v34;
  }

  v86 = a2;
  HKMedicalRecord.categoryKind.getter(&v98);
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = off_1EE069F80;
  v23 = *(off_1EE069F80 + 2);
  v81 = v13;
  v87 = v16;
  if (v23)
  {
    v24 = sub_1D12A2F78();
    if (v25)
    {
      v26 = v22[7] + 72 * v24;
      v93 = *v26;
      v28 = *(v26 + 32);
      v27 = *(v26 + 48);
      v29 = *(v26 + 64);
      v94 = *(v26 + 16);
      v95 = v28;
      v97 = v29;
      v96 = v27;
      swift_endAccess();
      v101 = v95;
      v102 = v96;
      v103 = v97;
      v99 = v93;
      v100 = v94;
      sub_1D1082914(&v93, &v89);
LABEL_10:
      v96 = v102;
      v97 = v103;
      v94 = v100;
      v95 = v101;
      v93 = v99;
      v85 = v21;
      v37 = [v21 identifier];
      v38 = v97;
      v39 = v88;
      (*(v11 + 56))(v88, 1, 1, v10);
      v82 = type metadata accessor for MedicalRecordTimelineViewController(0);
      v40 = objc_allocWithZone(v82);
      v41 = &v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
      *v41 = 0;
      v41[1] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
      v42 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
      v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
      v43 = &v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
      *v43 = 0;
      v43[8] = 1;
      v44 = &v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
      *v44 = 0;
      v44[8] = 1;
      v84 = v11;
      v83 = v10;
      v45 = &v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
      sub_1D138E37C();
      v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v47 = v39;
      v48 = v38;
      v49 = v37;
      v50 = v86;
      v51 = [v46 init];
      v52 = MEMORY[0x1E69A3658];
      *v45 = v51;
      v45[1] = v52;
      v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v50;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v38;
      sub_1D1127E2C(v47, &v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = v37;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = 0;
      v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
      v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
      v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
      v53 = *&v40[v42];
      v54 = &v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
      *v54 = 0;
      *(v54 + 1) = v37;
      *(v54 + 2) = v53;
      *(v54 + 3) = v38;
      v54[32] = 0;
      v55 = objc_opt_self();
      v56 = v53;
      v57 = v83;
      v58 = v84;
      v59 = v48;
      v60 = v49;
      v86 = v59;
      v61 = v60;
      v62 = v50;
      v63 = v57;
      v64 = v58;
      v65 = [v55 clearColor];
      v90 = sub_1D138E90C();
      v91 = MEMORY[0x1E69A3750];
      __swift_allocate_boxed_opaque_existential_1(&v89);
      sub_1D138E8FC();
      sub_1D102CC18(&v89, &v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
      v66 = [v62 healthStore];
      v67 = v88;
      v68 = sub_1D107D9D8(v66, v38, v37, 0, 0, v88, 0);

      *&v40[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v68;
      v69 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
      v92.receiver = v40;
      v92.super_class = v82;
      v70 = objc_msgSendSuper2(&v92, sel_initWithCollectionViewLayout_, v69);

      v34 = v70;
      sub_1D1072338();

      sub_1D138F6CC();

      v71 = BYTE8(v89);
      v72 = &v34[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
      *v72 = v89;
      v72[8] = v71;

      sub_1D138F6CC();

      v73 = v89;
      v74 = BYTE8(v89);
      if (v89 <= 1)
      {
        v75 = 1;
      }

      else
      {
        v75 = v89;
      }

      if (!BYTE8(v89))
      {
        v73 = v75;
      }

      v76 = &v34[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
      *v76 = v73;
      v76[8] = v74;
      v77 = v67;
      v78 = v87;
      sub_1D1127E2C(v67, v87);
      if ((*(v64 + 48))(v78, 1, v63) == 1)
      {
        sub_1D129C0EC(v78, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      }

      else
      {
        v79 = v81;
        (*(v64 + 32))(v81, v78, v63);
        sub_1D107B54C(v79);
        (*(v64 + 8))(v79, v63);
      }

      sub_1D107AEBC();

      sub_1D129C0EC(v77, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      sub_1D1080D98(&v93);

      return v34;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    sub_1D123E1C4(result, &v99);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1D1299750(void *a1, void *a2, void *a3)
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  v16 = sub_1D138D5EC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1D129AA7C(v15, v12, type metadata accessor for PresentationContext);
  objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
  v17 = a1;
  v18 = a3;
  v19 = sub_1D131237C(v17, v18, v12);

  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode_];

  sub_1D129AAE4(v15, type metadata accessor for PresentationContext);
  v25[1] = &unk_1F4DADB50;
  v21 = swift_dynamicCastObjCProtocolConditional();
  if (v21)
  {
    [a2 showAdaptively:v21 sender:a2 animated:1];
  }

  else
  {

    sub_1D138F06C();
    v22 = sub_1D138F0AC();
    v23 = sub_1D139080C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D101F000, v22, v23, "Could not make AdaptiveModalPresentedViewController from factory makeDetailViewController(for:using:)", v24, 2u);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

id sub_1D1299A40(void *a1, void *a2)
{
  sub_1D129C088(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  if (a1)
  {
    v7 = a1;
    if (sub_1D10C696C(a2))
    {
      v20[3] = a2;
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v20[2] = qword_1EE06BB10;
      sub_1D138D1CC();
      v20[1] = "_UNAVAILABLE_ALERT_TITLE";
      v8 = sub_1D138D67C();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      sub_1D129C088(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D139E700;
      v10 = [v7 title];
      v11 = sub_1D139016C();
      v13 = v12;

      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D1089930();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      sub_1D138D1CC();
      if (*(v9 + 16))
      {
        sub_1D139019C();

        sub_1D129C0EC(v6, &qword_1EC60DF40, MEMORY[0x1E6969770]);
      }

      else
      {
        sub_1D129C0EC(v6, &qword_1EC60DF40, MEMORY[0x1E6969770]);
      }

      goto LABEL_11;
    }
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138D1CC();
LABEL_11:
  v14 = objc_opt_self();
  v15 = sub_1D139012C();

  v16 = sub_1D139012C();

  v17 = sub_1D138D2AC();
  v18 = [v14 basicAlertControllerWithTitle:v15 message:v16 internalError:v17];

  return v18;
}

char *sub_1D1299EBC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  if (*(a2 + 8))
  {
    v16 = *(a2 + 64);
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  (*(v8 + 56))(v15, 1, 1, v7);
  v56 = type metadata accessor for MedicalRecordTimelineViewController(0);
  v18 = objc_allocWithZone(v56);
  v57 = v8;
  v19 = v18;
  v20 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v20 = 0;
  v20[1] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v58 = v7;
  v21 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v22 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = a1;
  v27 = a4;
  v28 = [v25 init];
  v29 = MEMORY[0x1E69A3658];
  *v24 = v28;
  v24[1] = v29;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v27;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v16;
  sub_1D1127E2C(v15, &v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = a1;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = 0;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v30 = *&v19[v21];
  v31 = &v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v31 = 0;
  *(v31 + 1) = a1;
  *(v31 + 2) = v30;
  *(v31 + 3) = v16;
  v31[32] = 0;
  v32 = objc_opt_self();
  v33 = v30;
  v34 = v26;
  v35 = v16;
  v55 = v34;
  v36 = v27;
  v37 = v35;
  v38 = [v32 clearColor];
  v61 = sub_1D138E90C();
  v62 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_1D138E8FC();
  sub_1D102CC18(&v60, &v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v39 = [v36 healthStore];
  v40 = sub_1D107D9D8(v39, v16, a1, 0, 0, v15, 0);

  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v40;
  v41 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v42 = v57;
  v59.receiver = v19;
  v59.super_class = v56;
  v43 = objc_msgSendSuper2(&v59, sel_initWithCollectionViewLayout_, v41);

  v44 = v43;
  sub_1D1072338();

  v45 = v58;

  sub_1D138F6CC();

  v46 = BYTE8(v60);
  v47 = &v44[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v47 = v60;
  v47[8] = v46;

  sub_1D138F6CC();

  v48 = v60;
  v49 = BYTE8(v60);
  if (v60 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v60;
  }

  if (!BYTE8(v60))
  {
    v48 = v50;
  }

  v51 = &v44[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v51 = v48;
  v51[8] = v49;
  sub_1D1127E2C(v15, v12);
  if ((*(v42 + 48))(v12, 1, v45) == 1)
  {
    sub_1D129C0EC(v12, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v52 = v54;
    (*(v42 + 32))(v54, v12, v45);
    sub_1D107B54C(v52);
    (*(v42 + 8))(v52, v45);
  }

  sub_1D107AEBC();

  sub_1D129C0EC(v15, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  return v44;
}

void sub_1D129A54C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v14 = sub_1D139012C();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController) initWithContext:a3 onboardingOptions:0 sourceIdentifier:v14 profile:a1 existingAccount:0];

  if (a4)
  {
    [v15 setGatewayProxyToTry_];
  }

  else
  {
    v16 = [a1 onboardingManager];
    v17 = [v16 getPendingOnboardingGatewayAndClear];

    [v15 setGatewayProxyToTry_];
  }

  v18 = [a1 onboardingManager];
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v15;
  v19[4] = a7;
  v19[5] = a8;
  v23[4] = sub_1D11ECB40;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1D116B84C;
  v23[3] = &block_descriptor_38_0;
  v20 = _Block_copy(v23);
  v21 = a2;
  v22 = v15;
  sub_1D102CE24(a7, a8);

  [v18 registerInflightOnboardingViewController:v22 completion:v20];
  _Block_release(v20);
}

void sub_1D129A740(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for OnboardingTileViewController();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_profile] = a1;
  v16 = &v15[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_sourceIdentifier];
  *v16 = a3;
  *(v16 + 1) = a4;
  v24.receiver = v15;
  v24.super_class = v14;
  v17 = a1;

  v18 = objc_msgSendSuper2(&v24, sel_initWithStyle_, 1);
  v19 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = v19;
  v23[4] = sub_1D129C058;
  v23[5] = v20;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1D10CBD3C;
  v23[3] = &block_descriptor_32;
  v21 = _Block_copy(v23);
  sub_1D102CE24(a6, a7);
  v22 = v19;

  [a2 presentViewController:v22 animated:a5 & 1 completion:v21];
  _Block_release(v21);
}

char *sub_1D129A8E4(int a1, id a2, char *a3, void (*a4)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), void (*a5)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), char a6)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = *a3;
  v11 = [a2 healthStore];
  v12 = [objc_allocWithZone(MEMORY[0x1E69A3F10]) initWithHealthStore_];

  v13 = sub_1D138D5AC();
  v21[0] = 0;
  v14 = [v12 accountWithIdentifier:v13 error:v21];

  v15 = v21[0];
  if (v14)
  {
    LOBYTE(v21[0]) = v10;
    objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController(0));

    v16 = v14;
    v17 = a2;
    v18 = v15;
    v15 = sub_1D127988C(v16, v17, v21, a4, a5);
    if (a6)
    {
      sub_1D127B668();
    }
  }

  else
  {
    v19 = v21[0];
    sub_1D138D2BC();

    swift_willThrow();
  }

  return v15;
}

uint64_t sub_1D129AA7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D129AAE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D129AB44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138D1CC();
  v6 = sub_1D139012C();

  v7 = sub_1D139012C();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:{1, 0xE000000000000000}];

  sub_1D138D1CC();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  v10 = sub_1D139012C();

  aBlock[4] = sub_1D129BEB8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CB11C;
  aBlock[3] = &block_descriptor_55;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:{v11, 0xE000000000000000}];
  _Block_release(v11);

  [v8 addAction_];
  sub_1D138D1CC();
  v14 = sub_1D139012C();

  v15 = [v12 actionWithTitle:v14 style:2 handler:{0, 0xE000000000000000}];

  [v8 addAction_];
  [a2 presentViewController:v8 animated:1 completion:0];
}

id sub_1D129AEAC(void *a1)
{
  v2 = type metadata accessor for BrowseCategory(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [a1 healthStore];
  v7 = [v5 sharedInstanceForHealthStore_];

  swift_storeEnumTagMultiPayload();
  v13[0] = sub_1D139024C();
  v13[1] = v8;
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v9 = sub_1D13567F8();
  MEMORY[0x1D3885C10](v9);

  sub_1D129AAE4(v4, type metadata accessor for BrowseCategory);
  v10 = sub_1D139012C();

  v11 = [v7 createClinicalDocumentOverviewViewControllerWithSidebarIdentifier_];

  return v11;
}

id sub_1D129B020(void *a1, void *a2)
{
  v4 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = sub_1D138D5EC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1D129AA7C(v9, v6, type metadata accessor for PresentationContext);
  objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
  v11 = a1;
  v12 = a2;
  v13 = sub_1D131237C(v11, v12, v6);

  v14 = v13;
  v15 = [v14 navigationItem];
  [v15 setLargeTitleDisplayMode_];

  sub_1D129AAE4(v9, type metadata accessor for PresentationContext);
  return v14;
}

UIViewController *_s15HealthRecordsUI21ViewControllerFactoryC018makeOutOfRangeLabsdE05usingSo06UIViewE0CSo9HRProfileC_tF_0(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = off_1EE069F80;
  v13 = *(off_1EE069F80 + 2);
  v61 = v5;
  v64 = a1;
  v65 = v8;
  if (v13 && (v14 = sub_1D12A2F78(), (v15 & 1) != 0))
  {
    v16 = v12[7] + 72 * v14;
    v70 = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 64);
    v71 = *(v16 + 16);
    v72 = v18;
    v74 = v19;
    v73 = v17;
    swift_endAccess();
    v77 = v72;
    v78 = v73;
    v79 = v74;
    v75 = v70;
    v76 = v71;
    sub_1D1082914(&v70, &v66);
  }

  else
  {
    swift_endAccess();
    result = [objc_opt_self() unknownRecordCategory];
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_1D123E1C4(result, &v75);
  }

  v72 = v77;
  v73 = v78;
  v74 = v79;
  v70 = v75;
  v71 = v76;
  v21 = v79;
  sub_1D1080D98(&v70);
  sub_1D129C088(0, &qword_1EC60E998, sub_1D129BFC8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  *(inited + 32) = [objc_opt_self() diagnosticTestResultType];
  *(inited + 40) = [objc_opt_self() predicateForDiagnosticTestResultWithReferenceRangeStatus_];
  v23 = sub_1D109FD78(inited);
  swift_setDeallocating();
  sub_1D129AAE4(inited + 32, sub_1D129BFC8);
  sub_1D1098E00(v23);
  v25 = v24;

  v26 = v11;
  (*(v3 + 56))(v11, 1, 1, v2);
  v62 = type metadata accessor for MedicalRecordTimelineViewController(0);
  v27 = objc_allocWithZone(v62);
  v28 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v28 = 0;
  v28[1] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v29 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v30 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v31 = 0;
  v31[8] = 1;
  v63 = v3;
  v32 = v2;
  v33 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v35 = v64;
  v36 = [v34 init];
  v37 = MEMORY[0x1E69A3658];
  *v33 = v36;
  v33[1] = v37;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v35;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v21;
  sub_1D1127E2C(v26, &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = v25;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v38 = *&v27[v29];
  v39 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = v38;
  *(v39 + 3) = v21;
  v39[32] = 0;
  v40 = objc_opt_self();
  v41 = v38;
  v42 = v21;
  v43 = v35;

  v44 = v32;
  v45 = v63;
  v46 = [v40 clearColor];
  v67 = sub_1D138E90C();
  v68 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v66);
  sub_1D138E8FC();
  sub_1D102CC18(&v66, &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v47 = [v43 healthStore];
  v48 = sub_1D107D9D8(v47, v21, 0, 0, v25, v26, 0);

  v49 = v26;

  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v48;
  v50 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v69.receiver = v27;
  v69.super_class = v62;
  v51 = objc_msgSendSuper2(&v69, sel_initWithCollectionViewLayout_, v50);

  v52 = v51;
  sub_1D1072338();

  sub_1D138F6CC();

  v53 = BYTE8(v66);
  v54 = &v52[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v54 = v66;
  v54[8] = v53;

  sub_1D138F6CC();

  v56 = v65;
  v55 = v66;
  v57 = BYTE8(v66);
  if (v66 <= 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v66;
  }

  if (!BYTE8(v66))
  {
    v55 = v58;
  }

  v59 = &v52[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v59 = v55;
  v59[8] = v57;
  sub_1D1127E2C(v49, v56);
  if ((*(v45 + 48))(v56, 1, v44) == 1)
  {
    sub_1D129C0EC(v56, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v60 = v61;
    (*(v45 + 32))(v61, v56, v44);
    sub_1D107B54C(v60);
    (*(v45 + 8))(v60, v44);
  }

  sub_1D107A01C();

  sub_1D129C0EC(v49, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  return v52;
}

uint64_t dispatch thunk of ViewControllerFactory.makeViewController(for:using:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

uint64_t sub_1D129BD38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D1296EE8(a1, v4, v5, v6);
}

uint64_t sub_1D129BDF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D1296B34(a1, v4, v5, v6);
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D129BF08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D1296B34(a1, v4, v5, v6);
}

void sub_1D129BFC8(uint64_t a1)
{
  if (!qword_1EC60E9A0)
  {
    sub_1D106F934(255, &qword_1EC609F60, 0x1E696C100);
    sub_1D106F934(255, &qword_1EE06B790, 0x1E696AE18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60E9A0);
    }
  }
}

uint64_t sub_1D129C058()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

void sub_1D129C088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D129C0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D129C088(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

UIColor __swiftcall MedicalRecordChartDataTransformer.defaultInactiveSeriesMain()()
{
  v0 = [objc_opt_self() hk_chartInactiveSeriesColor];

  return v0;
}

void sub_1D129C1BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v2 intrinsicContentSize];
  }

  else
  {

    [v1 intrinsicContentSize];
  }
}

void *sub_1D129C248(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup);
  if (a1 == 1)
  {
    [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup) setAxis_];
    v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel);
    v4 = [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) text];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D139016C();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    [v3 setHidden_];
  }

  else if (!a1)
  {
    [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup) setAxis_];
    [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel) setHidden_];
  }

  v11 = v2;
  return v2;
}

void sub_1D129C354(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_1D129CE14(a1, v2, ObjectType, a2);
}

id sub_1D129C3A4(void *a1, uint64_t a2)
{
  v41 = a2;
  v4 = sub_1D138CFBC();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v38 - v22;
  v24 = [a1 startDate];
  if (!v24)
  {
    goto LABEL_6;
  }

  v25 = v24;
  v38 = v4;
  sub_1D138D52C();

  v26 = *(v7 + 32);
  v26(v23, v19, v6);
  v27 = [a1 endDate];
  if (!v27)
  {
    (*(v7 + 8))(v23, v6);
LABEL_6:
    [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel) setText_];
    return [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) setText_];
  }

  v28 = v27;
  sub_1D138D52C();

  v29 = v40;
  v26(v40, v14, v6);
  v30 = *(v7 + 16);
  v30(v11, v23, v6);
  v30(v39, v29, v6);
  v31 = v42;
  sub_1D138CF8C();
  v32 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel);
  sub_1D10CACA4(v31, v41);
  if (v33)
  {
    v34 = sub_1D139012C();
  }

  else
  {
    v34 = 0;
  }

  v35 = v38;
  [v32 setText_];

  (*(v43 + 8))(v31, v35);
  v36 = *(v7 + 8);
  v36(v29, v6);
  v36(v23, v6);
  return [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) setText_];
}

id sub_1D129C760(id result, id a2)
{
  if (result == 1)
  {
    [a2 setAxis_];
    v5 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel);
    v6 = [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) text];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D139016C();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      v4 = v11 == 0;
    }

    else
    {
      v4 = 1;
    }

    v3 = v5;
  }

  else
  {
    if (result)
    {
      return result;
    }

    [a2 setAxis_];
    v3 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel);
    v4 = 1;
  }

  return [v3 setHidden_];
}

id MedicalRecordAnnotationViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *MedicalRecordAnnotationViewDataSource.init()()
{
  v1 = [objc_opt_self() hk_chartLollipopLabelColor];
  v2 = [objc_opt_self() hk_chartCurrentValueDateFont];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = v2;
  [v3 setFont_];
  v5 = v1;
  [v3 setTextColor_];
  LODWORD(v6) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel] = v3;
  v7 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v25 = v3;
  v8 = [v7 init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setFont_];
  [v8 setTextColor_];
  if (qword_1EC608CB0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setText_];

  [v8 setHidden_];
  LODWORD(v10) = 1144750080;
  [v8 setContentHuggingPriority:0 forAxis:v10];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel] = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v12 = v8;
  v13 = [v11 init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setFont_];

  [v13 setTextColor_];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel] = v13;
  sub_1D106F424();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139E6F0;
  *(v14 + 32) = v25;
  *(v14 + 40) = v12;
  *(v14 + 48) = v13;
  v15 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D129D104();
  v16 = v13;
  v17 = sub_1D139044C();

  v18 = [v15 initWithArrangedSubviews_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup] = v18;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for MedicalRecordAnnotationViewDataSource();
  v19 = v18;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup];
  v22 = v20;
  v23 = v21;
  [v23 setAxis_];
  [*&v22[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel] setHidden_];

  return v22;
}

id MedicalRecordAnnotationViewDataSource.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicalRecordAnnotationViewDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D129CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D138D57C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel);
  v25 = a2;
  (*(a4 + 16))(a3, a4, v9);
  v12 = HKDateFormatterFromTemplate();
  if (!v12)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  }

  v22 = *(a4 + 8);
  v22(a3, a4);
  v13 = sub_1D138D4EC();
  v14 = *(v8 + 8);
  v23 = v7;
  v21 = v14;
  v14(v11, v7);
  v15 = [v12 stringFromDate_];

  if (!v15)
  {
    sub_1D139016C();
    v15 = sub_1D139012C();
  }

  [v24 setText_];

  v16 = *(v25 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel);
  if ((*(a4 + 24))(a3, a4))
  {
    v17 = HKDateFormatterFromTemplate();
    if (!v17)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    }

    v22(a3, a4);
    v18 = sub_1D138D4EC();
    v21(v11, v23);
    v19 = [v17 stringFromDate_];

    if (!v19)
    {
      sub_1D139016C();
      v19 = sub_1D139012C();
    }
  }

  else
  {
    v19 = 0;
  }

  [v16 setText_];
}

unint64_t sub_1D129D104()
{
  result = qword_1EC609680;
  if (!qword_1EC609680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609680);
  }

  return result;
}

void sub_1D129D32C(unint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = sub_1D139135C() | 0x8000000000000000;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v2 = ~v5;
    v1 = a1 + 64;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v3 = v7 & *(a1 + 64);
    v4 = a1;
  }

  v8 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while ((v4 & 0x8000000000000000) != 0)
  {
    v15 = sub_1D139139C();
    if (!v15 || (v17 = v16, *&v26[0] = v15, sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98), swift_dynamicCast(), v13 = *v25, *&v26[0] = v17, sub_1D106F934(0, &qword_1EE06B730, off_1E83DAD18), swift_dynamicCast(), (v14 = *v25) == 0))
    {
LABEL_24:
      sub_1D102CC30(v4);
      return;
    }

LABEL_17:
    v18 = [v13 integerValue];
    if (v18 <= 0xA)
    {
      v19 = v18;
      v20 = v14;
      sub_1D123E1C4(v20, v26);

      v21 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D10F713C(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1D10F713C((v22 > 1), v23 + 1, 1, v21);
      }

      *&v25[71] = v27;
      *&v25[39] = v26[2];
      *&v25[55] = v26[3];
      *&v25[7] = v26[0];
      *&v25[23] = v26[1];
      v21[2] = v23 + 1;
      v28 = v21;
      v24 = &v21[10 * v23];
      *(v24 + 32) = v19;
      *(v24 + 33) = *v25;
      *(v24 + 6) = *&v25[63];
      *(v24 + 81) = *&v25[48];
      *(v24 + 65) = *&v25[32];
      *(v24 + 49) = *&v25[16];
    }

    else
    {
    }
  }

  v9 = v8;
  v10 = v3;
  if (v3)
  {
LABEL_13:
    v3 = (v10 - 1) & v10;
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v10)));
    v12 = *(*(v4 + 56) + v11);
    v13 = *(*(v4 + 48) + v11);
    v14 = v12;
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= ((v2 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v1 + 8 * v8);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t static DisplayItemProvider.supportedCategory(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EE069F80;
  if (*(off_1EE069F80 + 2) && (v5 = sub_1D129E570(v3), (v6 & 1) != 0))
  {
    v7 = v4[7] + 72 * v5;
    v15[0] = *v7;
    v9 = *(v7 + 32);
    v8 = *(v7 + 48);
    v10 = *(v7 + 64);
    v15[1] = *(v7 + 16);
    v15[2] = v9;
    v16 = v10;
    v15[3] = v8;
    v11 = *(v7 + 48);
    *(a2 + 32) = *(v7 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v7 + 64);
    v12 = *(v7 + 16);
    *a2 = *v7;
    *(a2 + 16) = v12;
    sub_1D1082914(v15, v14);
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return swift_endAccess();
}

void static DisplayItemProvider.displayCategory(for:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EE069F80;
  if (*(off_1EE069F80 + 2) && (v5 = sub_1D129E570(v3), (v6 & 1) != 0))
  {
    v7 = v4[7] + 72 * v5;
    v15 = *v7;
    v9 = *(v7 + 32);
    v8 = *(v7 + 48);
    v10 = *(v7 + 64);
    v16 = *(v7 + 16);
    v17 = v9;
    v19 = v10;
    v18 = v8;
    swift_endAccess();
    v11 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v11;
    *(a2 + 64) = v19;
    v12 = v16;
    *a2 = v15;
    *(a2 + 16) = v12;
    sub_1D1082914(&v15, v14);
  }

  else
  {
    swift_endAccess();
    v13 = [objc_opt_self() unknownRecordCategory];
    if (v13)
    {
      sub_1D123E1C4(v13, a2);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t *static DisplayItemProvider.supportedSampleTypes.getter()
{
  v0 = [objc_opt_self() allSupportedSampleTypes];
  if (!v0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v1 = v0;
  sub_1D106F934(0, &qword_1EE06B780, 0x1E696C3D0);
  v2 = sub_1D139045C();

  v3 = sub_1D12DEFE8(v2);

  return v3;
}

char *static DisplayItemProvider.orderedSupportedCategories.getter(uint64_t a1)
{
  v1 = _s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0();
  v2 = v1;
  v3 = *(v1 + 2);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1D129F7B8(*(v1 + 2), 0);
  v5 = sub_1D12A1754(&v8, v4 + 32, v3, v2);
  v6 = v8;

  sub_1D102CC30(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v4;
  sub_1D129D9EC(&v8);

  return v8;
}

void sub_1D129D9EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245E74(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D129FCE4(v4);
  *a1 = v2;
}

uint64_t static DisplayItemProvider.supportedCategoryTypes.getter()
{
  v0 = HKMedicalRecordAllSupportedCategoryTypes();
  if (!v0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v1 = v0;
  sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
  v2 = sub_1D139045C();

  if (v2 >> 62)
  {
LABEL_21:
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3886B70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9 = [v6 integerValue];

    ++v4;
    if (v9 < 0xB)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D10F9B3C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D10F9B3C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v9;
      v4 = v8;
    }
  }

  v12 = sub_1D12DF4F8(v5);

  return v12;
}

void static DisplayItemProvider.unknownCategory.getter(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() unknownRecordCategory];
  if (v2)
  {

    sub_1D123E1C4(v2, a1);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D129DC6C()
{
  result = sub_1D129DC8C();
  off_1EE069F80 = result;
  return result;
}

unint64_t sub_1D129DC8C()
{
  v0 = [objc_opt_self() supportedRecordCategoriesByCategoryType];
  if (v0)
  {
    v1 = v0;
    sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
    sub_1D106F934(0, &qword_1EE06B730, off_1E83DAD18);
    sub_1D109D274(&qword_1EE06B0C8, &qword_1EE06B6C0, 0x1E696AD98);
    v2 = sub_1D138FFFC();

    sub_1D129D32C(v2);
    v4 = v3;

    if (*(v4 + 16))
    {
      sub_1D10A0888(0);
      v5 = sub_1D139144C();
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC8];
    }

    v8 = v5;
    sub_1D12A0940(v4, 1, &v8);
    return v8;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1D109B51C(v6);
  }
}

unint64_t sub_1D129DE20(uint64_t *a1)
{
  sub_1D139177C();
  if (a1[3])
  {
    sub_1D139179C();
    if (a1[5])
    {
LABEL_3:
      sub_1D139179C();
      sub_1D139027C();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = a1[1];
    v2 = a1[2];
    v4 = *a1;
    sub_1D139179C();
    MEMORY[0x1D38870E0](v4);
    MEMORY[0x1D38870E0](v3);
    MEMORY[0x1D38870E0](v2);
    if (a1[5])
    {
      goto LABEL_3;
    }
  }

  sub_1D139179C();
LABEL_6:
  v5 = sub_1D13917CC();

  return sub_1D129E8F8(a1, v5);
}

unint64_t sub_1D129DF64(void *a1)
{
  sub_1D139177C();
  v2 = a1[3];
  MEMORY[0x1D38870E0](*a1);
  sub_1D1390D9C();
  sub_1D139179C();
  if (v2)
  {
    sub_1D139027C();
  }

  sub_1D139027C();
  sub_1D123F520();
  sub_1D123F520();
  sub_1D1390D9C();
  v3 = sub_1D13917CC();

  return sub_1D129EA14(a1, v3);
}

unint64_t sub_1D129E09C(uint64_t a1)
{
  sub_1D139016C();
  sub_1D139177C();
  sub_1D139027C();
  v2 = sub_1D13917CC();

  return sub_1D129F25C(a1, v2);
}

unint64_t sub_1D129E12C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1D139177C();
  if (a2)
  {
    sub_1D139179C();
    sub_1D139027C();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D139179C();
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D139179C();
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D139179C();
  v8 = a3;
  sub_1D1390D9C();

  if (a4)
  {
LABEL_4:
    sub_1D139179C();
    v9 = a4;
    sub_1D1390D9C();

    goto LABEL_8;
  }

LABEL_7:
  sub_1D139179C();
LABEL_8:
  v10 = sub_1D13917CC();

  return sub_1D129ECC8(a1, a2, a3, a4, v10);
}

unint64_t sub_1D129E240(uint64_t a1)
{
  sub_1D138D5EC();
  v2 = MEMORY[0x1E69695A8];
  sub_1D12A2D24(&qword_1EE06B4F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1D139006C();
  return sub_1D129F520(a1, v3, MEMORY[0x1E69695A8], &qword_1EC6098A0, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D129E314(double a1)
{
  v2 = sub_1D139176C();

  return sub_1D129EF08(v2, a1);
}

unint64_t sub_1D129E400(uint64_t a1)
{
  v2 = sub_1D139114C();

  return sub_1D129EF70(a1, v2);
}

unint64_t sub_1D129E444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a4 & 1;
  sub_1D139177C();
  AccountIcon.Size.hash(into:)();
  v8 = sub_1D13917CC();

  return sub_1D129F038(a1, a2, a3, v7, v8);
}

unint64_t sub_1D129E4DC(uint64_t a1)
{
  v2 = sub_1D139176C();

  return sub_1D129F180(a1, v2);
}

unint64_t sub_1D129E570(uint64_t a1)
{
  v1 = a1;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  v2 = sub_1D13917CC();
  return sub_1D129F1EC(v1, v2);
}

unint64_t sub_1D129E5D8(uint64_t a1)
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v2 = sub_1D13917CC();

  return sub_1D129F360(a1, v2);
}

unint64_t sub_1D129E660(uint64_t a1)
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](a1);
  v2 = sub_1D13917CC();
  return sub_1D129F180(a1, v2);
}

unint64_t sub_1D129E6C8(uint64_t a1)
{
  sub_1D138D57C();
  v2 = MEMORY[0x1E6969530];
  sub_1D12A2D24(&qword_1EC608ED8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v3 = sub_1D139006C();
  return sub_1D129F520(a1, v3, MEMORY[0x1E6969530], &unk_1EC609370, v2, MEMORY[0x1E6969550]);
}

unint64_t sub_1D129E79C(char a1)
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](a1 & 1);
  v2 = sub_1D13917CC();

  return sub_1D129F6C0(a1 & 1, v2);
}

unint64_t sub_1D129E8F8(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = *(a1 + 24);
    v12 = *(v2 + 48);
    do
    {
      v13 = v12 + 48 * v5;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      if (*(v13 + 24))
      {
        if (!v11)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v17 = *(v13 + 8);
        v16 = *(v13 + 16);
        if (*v13 == v8)
        {
          v18 = v11 ^ 1;
        }

        else
        {
          v18 = 0;
        }

        if (v18 != 1 || v17 != v9 || v16 != v10)
        {
          goto LABEL_4;
        }
      }

      v21 = a1[5];
      if (v15)
      {
        if (v21)
        {
          v22 = v14 == a1[4] && v15 == v21;
          if (v22 || (sub_1D139162C() & 1) != 0)
          {
            return v5;
          }
        }
      }

      else if (!v21)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D129EA14(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[3];
    v19 = a1[2];
    v20 = a1[4];
    v17 = a1[6];
    v18 = a1[5];
    v16 = a1[7];
    while (1)
    {
      v10 = *(v6 + 48) + 72 * v5;
      v22 = *v10;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 16);
      v26 = *(v10 + 64);
      v24 = v12;
      v25 = v11;
      v23 = v13;
      if (v22 != v8)
      {
        goto LABEL_5;
      }

      sub_1D106F934(0, &qword_1EE06B0C0, 0x1E69E58C0);
      sub_1D1082914(&v22, v21);
      if ((sub_1D1390D8C() & 1) == 0)
      {
        break;
      }

      if (*(&v23 + 1))
      {
        if (!v9 || v23 != __PAIR128__(v9, v19) && (sub_1D139162C() & 1) == 0)
        {
          break;
        }
      }

      else if (v9)
      {
        break;
      }

      if (v24 != __PAIR128__(v18, v20) && (sub_1D139162C() & 1) == 0 || (sub_1D1335054(v25, v17) & 1) == 0 || (sub_1D1335054(*(&v25 + 1), v16) & 1) == 0)
      {
        break;
      }

      v14 = sub_1D1390D8C();
      sub_1D1080D98(&v22);
      if (v14)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    sub_1D1080D98(&v22);
    goto LABEL_5;
  }

  return v5;
}

unint64_t sub_1D129EBFC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D106F934(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D1390D8C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D129ECC8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    v10 = a3;
    v12 = a1;
    v13 = ~v7;
    v33 = v5 + 64;
    v34 = ~v7;
    do
    {
      v14 = (*(v9 + 48) + 32 * v8);
      v16 = v14[1];
      v15 = v14[2];
      v17 = v14[3];
      if (v16)
      {
        if (!a2)
        {
          goto LABEL_4;
        }

        if (*v14 != v12 || v16 != a2)
        {
          v19 = sub_1D139162C();
          v13 = v34;
          if ((v19 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (a2)
      {
        goto LABEL_4;
      }

      if (v15)
      {
        if (!v10)
        {
          goto LABEL_4;
        }

        sub_1D106F934(0, &qword_1EE06A540, 0x1E69DCAB8);
        v20 = v17;
        v21 = v10;

        v22 = v15;
        v23 = sub_1D1390D8C();

        if ((v23 & 1) == 0)
        {

          v12 = a1;
          v10 = a3;
          v6 = v33;
          v13 = v34;
          goto LABEL_4;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_4;
        }

        v24 = v17;
      }

      if (!v17)
      {
        v28 = a4;

        v6 = v33;
        if (!a4)
        {
          return v8;
        }

        goto LABEL_25;
      }

      v6 = v33;
      if (!a4)
      {

LABEL_25:
        v12 = a1;
        v10 = a3;
        v13 = v34;
        goto LABEL_4;
      }

      sub_1D106F934(0, &qword_1EE06B6E0, 0x1E69DC888);
      v25 = v17;
      v26 = a4;
      v27 = sub_1D1390D8C();

      v12 = a1;
      v10 = a3;
      v13 = v34;
      if (v27)
      {
        return v8;
      }

LABEL_4:
      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1D129EF08(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129EF70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D1186A80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3886AB0](v9, a1);
      sub_1D1116E48(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D129F038(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    v10 = *&a1;
    v13 = a3 | a2;
    v14 = a3 | a2 | a1;
    v15 = (a1 - 1) < 2;
    v16 = a1 == 2;
    if (a3 | a2)
    {
      v15 = 0;
    }

    if (v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = a1 == 1;
    }

    if (v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    v19 = a4 ^ 1 | (v14 == 0) | v15;
    if (v14)
    {
      v20 = v17;
    }

    else
    {
      v20 = 1;
    }

    v21 = a4 ^ 1 | v20;
    do
    {
      v22 = *(v5 + 48) + 32 * result;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (*(v22 + 24) == 1)
      {
        v26 = *&v25 | *&v23;
        if (v26 | *&v24)
        {
          if (*&v24 == 1 && v26 == 0)
          {
            if ((a4 & (v14 != 0)) != 0 && v17)
            {
              return result;
            }
          }

          else if (*&v24 == 2 && v26 == 0)
          {
            if ((v21 & 1) == 0 && v18)
            {
              return result;
            }
          }

          else if ((v19 & 1) == 0)
          {
            return result;
          }
        }

        else if ((a4 & 1) != 0 && !v14)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0)
      {
        v29 = v24 == v10 && v23 == *&a2;
        if (v29 && v25 == *&a3)
        {
          return result;
        }
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129F180(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129F1EC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129F25C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D139016C();
      v8 = v7;
      if (v6 == sub_1D139016C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D139162C();

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

unint64_t sub_1D129F360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for BrowseCategory(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_1D12A2EA8(*(v3 + 48) + v12 * v10, v8, type metadata accessor for BrowseCategory);
      v13 = BrowseCategory.rawValue.getter();
      v15 = v14;
      if (v13 == BrowseCategory.rawValue.getter() && v15 == v16)
      {
        break;
      }

      v17 = sub_1D139162C();

      sub_1D10F3688(v8);
      if ((v17 & 1) == 0)
      {
        v10 = (v10 + 1) & v11;
        if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    sub_1D10F3688(v8);
  }

  return v10;
}

unint64_t sub_1D129F520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1D12A2D24(v24, v25, v26);
      v20 = sub_1D139011C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1D129F6C0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1D129F730(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D10A5C9C(0, &qword_1EE06B560, MEMORY[0x1E69E6158]);
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

void *sub_1D129F7B8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D10A5C9C(0, &qword_1EE06B698, &type metadata for DisplayCategory);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1D129F854(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D10A5C9C(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1D129F94C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D12A2E44(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D129FA60(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D12A2E44(0, &qword_1EC60AEC0, sub_1D1104AC8, MEMORY[0x1E69E6F90]);
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

void *sub_1D129FB08(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D10A5C9C(0, &qword_1EE0694D8, MEMORY[0x1E69E6530]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1D129FB90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D12A2D6C(0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1D129FC3C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D12A2E44(0, &qword_1EC60ADA0, sub_1D11046D8, MEMORY[0x1E69E6F90]);
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

void sub_1D129FCE4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D13904DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D129FF30(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D129FDDC(0, v2, 1, a1);
  }
}

uint64_t sub_1D129FDDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1D10940C8();
    v7 = (v6 + 72 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_1D1390FDC();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 = (v7 + 72);
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = v10 - 72;
      v16 = v10[1];
      v17 = v10[2];
      v18 = v10[3];
      v19 = *(v10 + 8);
      v15 = *v10;
      v12 = *(v10 - 24);
      v10[2] = *(v10 - 40);
      v10[3] = v12;
      *(v10 + 8) = *(v10 - 1);
      v13 = *(v10 - 56);
      *v10 = *(v10 - 72);
      v10[1] = v13;
      *v11 = v15;
      *(v11 + 64) = v19;
      *(v11 + 32) = v17;
      *(v11 + 48) = v18;
      *(v11 + 16) = v16;
      v10 = (v10 - 72);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D129FF30(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
      }

      else
      {
        v84 = v5;
        v10 = 72 * v7;
        v11 = *a3 + 72 * v7;
        sub_1D10940C8();
        v12 = sub_1D1390FDC();
        v13 = v7 + 2;
        v14 = v11 + 184;
        while (v6 != v13)
        {
          ++v13;
          v14 += 72;
          if ((v12 == -1) == (sub_1D1390FDC() != -1))
          {
            v6 = v13 - 1;
            break;
          }
        }

        v5 = v84;
        if (v12 == -1)
        {
          v9 = v7;
          if (v6 < v7)
          {
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
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 < v6)
          {
            v63 = 72 * v6 - 72;
            v64 = v6;
            do
            {
              if (v7 != --v64)
              {
                v66 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v65 = v66 + v63;
                v91 = *(v66 + v10 + 16);
                v93 = *(v66 + v10 + 32);
                v95 = *(v66 + v10 + 48);
                v97 = *(v66 + v10 + 64);
                v89 = *(v66 + v10);
                memmove((v66 + v10), (v66 + v63), 0x48uLL);
                *(v65 + 16) = v91;
                *(v65 + 32) = v93;
                *(v65 + 48) = v95;
                *(v65 + 64) = v97;
                *v65 = v89;
              }

              ++v7;
              v63 -= 72;
              v10 += 72;
            }

            while (v7 < v64);
            v5 = v84;
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v15 = a3[1];
      if (v6 >= v15)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v6, v9))
      {
        goto LABEL_119;
      }

      if (v6 - v9 >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_120;
      }

      if (v9 + a4 < v15)
      {
        v15 = v9 + a4;
      }

      if (v15 < v9)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v6 == v15)
      {
LABEL_20:
        v7 = v6;
      }

      else
      {
        v87 = v15;
        v85 = v5;
        v67 = v9;
        v68 = *a3;
        sub_1D10940C8();
        v69 = (v68 + 72 * v6);
        v83 = v67;
        v70 = v67 - v6;
        do
        {
          v71 = v70;
          v72 = v69;
          do
          {
            if (sub_1D1390FDC() != -1)
            {
              break;
            }

            if (!v68)
            {
              goto LABEL_124;
            }

            v73 = v72 - 72;
            v92 = v72[1];
            v94 = v72[2];
            v96 = v72[3];
            v98 = *(v72 + 8);
            v90 = *v72;
            v74 = *(v72 - 24);
            v72[2] = *(v72 - 40);
            v72[3] = v74;
            *(v72 + 8) = *(v72 - 1);
            v75 = *(v72 - 56);
            *v72 = *(v72 - 72);
            v72[1] = v75;
            *v73 = v90;
            *(v73 + 64) = v98;
            *(v73 + 32) = v94;
            *(v73 + 48) = v96;
            *(v73 + 16) = v92;
            v72 = (v72 - 72);
          }

          while (!__CFADD__(v71++, 1));
          ++v6;
          v69 = (v69 + 72);
          --v70;
        }

        while (v6 != v87);
        v9 = v83;
        v5 = v85;
        v7 = v87;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D10F7610(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v8 = sub_1D10F7610((v16 > 1), v17 + 1, 1, v8);
      }

      *(v8 + 2) = v18;
      v19 = &v8[16 * v17];
      *(v19 + 4) = v9;
      *(v19 + 5) = v7;
      v20 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v17)
      {
        while (1)
        {
          v21 = v18 - 1;
          if (v18 >= 4)
          {
            break;
          }

          if (v18 == 3)
          {
            v22 = *(v8 + 4);
            v23 = *(v8 + 5);
            v32 = __OFSUB__(v23, v22);
            v24 = v23 - v22;
            v25 = v32;
LABEL_41:
            if (v25)
            {
              goto LABEL_107;
            }

            v38 = &v8[16 * v18];
            v40 = *v38;
            v39 = *(v38 + 1);
            v41 = __OFSUB__(v39, v40);
            v42 = v39 - v40;
            v43 = v41;
            if (v41)
            {
              goto LABEL_110;
            }

            v44 = &v8[16 * v21 + 32];
            v46 = *v44;
            v45 = *(v44 + 1);
            v32 = __OFSUB__(v45, v46);
            v47 = v45 - v46;
            if (v32)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v42, v47))
            {
              goto LABEL_114;
            }

            if (v42 + v47 >= v24)
            {
              if (v24 < v47)
              {
                v21 = v18 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v48 = &v8[16 * v18];
          v50 = *v48;
          v49 = *(v48 + 1);
          v32 = __OFSUB__(v49, v50);
          v42 = v49 - v50;
          v43 = v32;
LABEL_55:
          if (v43)
          {
            goto LABEL_109;
          }

          v51 = &v8[16 * v21];
          v53 = *(v51 + 4);
          v52 = *(v51 + 5);
          v32 = __OFSUB__(v52, v53);
          v54 = v52 - v53;
          if (v32)
          {
            goto LABEL_112;
          }

          if (v54 < v42)
          {
            goto LABEL_3;
          }

LABEL_62:
          v59 = v21 - 1;
          if (v21 - 1 >= v18)
          {
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
            goto LABEL_125;
          }

          v60 = *&v8[16 * v59 + 32];
          v61 = *&v8[16 * v21 + 40];
          sub_1D12A0658((*a3 + 72 * v60), (*a3 + 72 * *&v8[16 * v21 + 32]), (*a3 + 72 * v61), v20);
          if (v5)
          {
            goto LABEL_100;
          }

          if (v61 < v60)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D1245848(v8);
          }

          if (v59 >= *(v8 + 2))
          {
            goto LABEL_104;
          }

          v62 = &v8[16 * v59];
          *(v62 + 4) = v60;
          *(v62 + 5) = v61;
          sub_1D12457BC(v21);
          v18 = *(v8 + 2);
          if (v18 <= 1)
          {
            goto LABEL_3;
          }
        }

        v26 = &v8[16 * v18 + 32];
        v27 = *(v26 - 64);
        v28 = *(v26 - 56);
        v32 = __OFSUB__(v28, v27);
        v29 = v28 - v27;
        if (v32)
        {
          goto LABEL_105;
        }

        v31 = *(v26 - 48);
        v30 = *(v26 - 40);
        v32 = __OFSUB__(v30, v31);
        v24 = v30 - v31;
        v25 = v32;
        if (v32)
        {
          goto LABEL_106;
        }

        v33 = &v8[16 * v18];
        v35 = *v33;
        v34 = *(v33 + 1);
        v32 = __OFSUB__(v34, v35);
        v36 = v34 - v35;
        if (v32)
        {
          goto LABEL_108;
        }

        v32 = __OFADD__(v24, v36);
        v37 = v24 + v36;
        if (v32)
        {
          goto LABEL_111;
        }

        if (v37 >= v29)
        {
          v55 = &v8[16 * v21 + 32];
          v57 = *v55;
          v56 = *(v55 + 1);
          v32 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v32)
          {
            goto LABEL_115;
          }

          if (v24 < v58)
          {
            v21 = v18 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_90;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_129;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_122:
    v8 = sub_1D1245848(v8);
  }

  v77 = v5;
  v78 = *(v8 + 2);
  if (v78 >= 2)
  {
    while (*a3)
    {
      v5 = v78 - 1;
      v79 = *&v8[16 * v78];
      v80 = *&v8[16 * v78 + 24];
      sub_1D12A0658((*a3 + 72 * v79), (*a3 + 72 * *&v8[16 * v78 + 16]), (*a3 + 72 * v80), v6);
      if (v77)
      {
        goto LABEL_100;
      }

      if (v80 < v79)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D1245848(v8);
      }

      if (v78 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v81 = &v8[16 * v78];
      *v81 = v79;
      *(v81 + 1) = v80;
      sub_1D12457BC(v5);
      v78 = *(v8 + 2);
      if (v78 <= 1)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_126;
  }

LABEL_100:
}

uint64_t sub_1D12A0658(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 72;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 72;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[72 * v11] <= a4)
    {
      memmove(a4, __dst, 72 * v11);
    }

    v12 = &v4[72 * v11];
    if (v10 >= 72 && v6 > v7)
    {
      sub_1D10940C8();
      do
      {
        v5 -= 72;
        while (1)
        {
          v15 = v5 + 72;
          if (sub_1D1390FDC() == -1)
          {
            break;
          }

          v16 = (v12 - 72);
          if (v15 != v12)
          {
            memmove(v5, v12 - 72, 0x48uLL);
          }

          v5 -= 72;
          v12 -= 72;
          if (v16 <= v4)
          {
            v12 = v16;
            goto LABEL_36;
          }
        }

        v17 = v6 - 72;
        if (v15 != v6)
        {
          memmove(v5, v6 - 72, 0x48uLL);
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 72;
      }

      while (v17 > v7);
      v6 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[72 * v9] <= a4)
    {
      memmove(a4, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 >= 72 && v6 < v5)
    {
      sub_1D10940C8();
      while (sub_1D1390FDC() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 72;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 72;
        if (v4 >= v12 || v6 >= v5)
        {
          v6 = v7;
          goto LABEL_36;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 72;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      memmove(v7, v13, 0x48uLL);
      goto LABEL_11;
    }

    v6 = v7;
  }

LABEL_36:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

void sub_1D12A0940(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 96);
  *&v57[48] = *(a1 + 80);
  *&v57[64] = v7;
  v8 = *(a1 + 64);
  *&v57[16] = *(a1 + 48);
  *&v57[32] = v8;
  *v57 = *(a1 + 32);
  v9 = *&v57[72];
  v50 = *&v57[40];
  v52 = *&v57[56];
  v48 = *&v57[24];
  v54 = *&v57[8];
  v10 = *v57;
  sub_1D12A2EA8(v57, v56, sub_1D12A2F10);
  if (!*(&v54 + 1))
  {
    goto LABEL_23;
  }

  *v57 = v54;
  *&v57[16] = v48;
  *&v57[32] = v50;
  *&v57[48] = v52;
  *&v57[64] = v9;
  v11 = *a3;
  v12 = sub_1D129E570(v10);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v18) = v13;
  if (v11[3] < v17)
  {
    sub_1D1179474(v17, a2 & 1);
    v12 = sub_1D129E570(v10);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v12 = sub_1D13916CC();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v12;
  sub_1D1180B68();
  v12 = v22;
  if (v18)
  {
LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    sub_1D10922EC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D1080D98(v57);

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
  *(v23[6] + v12) = v10;
  v24 = v23[7] + 72 * v12;
  *v24 = *v57;
  v25 = *&v57[16];
  v26 = *&v57[32];
  v27 = *&v57[48];
  *(v24 + 64) = *&v57[64];
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  *(v24 + 16) = v25;
  v28 = v23[2];
  v16 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v16)
  {
    v23[2] = v29;
    if (v4 != 1)
    {
      v18 = (a1 + 112);
      v30 = 1;
      while (v30 < *(a1 + 16))
      {
        v31 = v18[4];
        *&v57[48] = v18[3];
        *&v57[64] = v31;
        v32 = v18[2];
        *&v57[16] = v18[1];
        *&v57[32] = v32;
        *v57 = *v18;
        v33 = *&v57[72];
        v51 = *&v57[40];
        v53 = *&v57[56];
        v49 = *&v57[24];
        v55 = *&v57[8];
        v10 = *v57;
        sub_1D12A2EA8(v57, v56, sub_1D12A2F10);
        if (!*(&v55 + 1))
        {
          goto LABEL_23;
        }

        *v57 = v55;
        *&v57[16] = v49;
        *&v57[32] = v51;
        *&v57[48] = v53;
        *&v57[64] = v33;
        v34 = *a3;
        v35 = sub_1D129E570(v10);
        v37 = v34[2];
        v38 = (v36 & 1) == 0;
        v16 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v16)
        {
          goto LABEL_25;
        }

        a2 = v36;
        if (v34[3] < v39)
        {
          sub_1D1179474(v39, 1);
          v35 = sub_1D129E570(v10);
          if ((a2 & 1) != (v40 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          goto LABEL_9;
        }

        v41 = *a3;
        *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        *(v41[6] + v35) = v10;
        v42 = v41[7] + 72 * v35;
        *v42 = *v57;
        v43 = *&v57[16];
        v44 = *&v57[32];
        v45 = *&v57[48];
        *(v42 + 64) = *&v57[64];
        *(v42 + 32) = v44;
        *(v42 + 48) = v45;
        *(v42 + 16) = v43;
        v46 = v41[2];
        v16 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v16)
        {
          goto LABEL_26;
        }

        ++v30;
        v41[2] = v47;
        v18 += 5;
        if (v4 == v30)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_23:

    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000001BLL, 0x80000001D13B9110);
  sub_1D139133C();
  MEMORY[0x1D3885C10](39, 0xE100000000000000);
  sub_1D13913BC();
  __break(1u);
}

void *sub_1D12A0DC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 16);

  sub_1D121E878(0);
  result = swift_allocObject();
  v10 = result;
  result[2] = v8;
  result[3] = 0;
  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_22:
    *a1 = v10;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_26;
  }

  v11 = 0;
  while (1)
  {
    v12 = v10[2];
    if (v12 >> 62)
    {
      result = sub_1D13910DC();
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v10[3];
    if (v13 == result)
    {
      a3 = v11;
      goto LABEL_22;
    }

    v14 = v10[2];
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1D3886B70](v10[3]);
    v15 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_19;
    }

LABEL_12:
    v10[3] = v15;
    *(a2 + 8 * v11) = result;
    if (a3 - 1 == v11)
    {
      goto LABEL_22;
    }

    if (__OFADD__(++v11, 1))
    {
      goto LABEL_25;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    result = *(v14 + 8 * v13 + 32);
    v15 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D12A0F10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 80);

  sub_1D121E514(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  if (!a2 || !a3)
  {
LABEL_20:
    *a1 = v9;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v9 + 16);
      v12 = v11 >> 62 ? sub_1D13910DC() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = *(v9 + 24);
      if (v13 == v12)
      {
        goto LABEL_20;
      }

      v14 = *(v9 + 16);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3886B70](*(v9 + 24));
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          break;
        }

        if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      *(v9 + 24) = v16;
      *(a2 + 8 * v10) = v15;
      if (a3 - 1 == v10)
      {
        goto LABEL_20;
      }

      if (__OFADD__(++v10, 1))
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

void sub_1D12A105C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 64);

  sub_1D121E3E8(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  if (!a2 || !a3)
  {
LABEL_20:
    *a1 = v9;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v9 + 16);
      v12 = v11 >> 62 ? sub_1D13910DC() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = *(v9 + 24);
      if (v13 == v12)
      {
        goto LABEL_20;
      }

      v14 = *(v9 + 16);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3886B70](*(v9 + 24));
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          break;
        }

        if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      *(v9 + 24) = v16;
      *(a2 + 8 * v10) = v15;
      if (a3 - 1 == v10)
      {
        goto LABEL_20;
      }

      if (__OFADD__(++v10, 1))
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

void sub_1D12A11A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 48);

  sub_1D121E6C4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  if (!a2 || !a3)
  {
LABEL_20:
    *a1 = v9;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v9 + 16);
      v12 = v11 >> 62 ? sub_1D13910DC() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = *(v9 + 24);
      if (v13 == v12)
      {
        goto LABEL_20;
      }

      v14 = *(v9 + 16);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3886B70](*(v9 + 24));
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          break;
        }

        if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      *(v9 + 24) = v16;
      *(a2 + 8 * v10) = v15;
      if (a3 - 1 == v10)
      {
        goto LABEL_20;
      }

      if (__OFADD__(++v10, 1))
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D12A12F4(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_1D139135C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1D13913AC())
      {
        goto LABEL_31;
      }

      sub_1D106F934(0, &qword_1EE06B780, 0x1E696C3D0);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void sub_1D12A14F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_1D12A2EA8(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      v23 = v22;
      v24 = v30;
      sub_1D12A2DDC(v23, v30, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      sub_1D12A2DDC(v24, a2, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1D12A1754(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        sub_1D1082914(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_1D1082914(v25, v24);
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

void *sub_1D12A18E8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1D12A1A40(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1D12A1BB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D138ED5C();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1D12A1E54(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

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

uint64_t *sub_1D12A1FC8(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1D139108C();
  sub_1D106F934(0, a5, a6);
  sub_1D109D274(a7, a5, a6);
  result = sub_1D139070C();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1D139110C())
      {
        goto LABEL_30;
      }

      sub_1D106F934(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_1D12A21F8(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    v5 = 1;
    goto LABEL_15;
  }

  v5 = a3 == 0;
  if (!a3)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (a3 < 0)
  {
    goto LABEL_19;
  }

  if (a5 >= a4)
  {
    *a2 = a5;
    if (a3 == 1)
    {
      v5 = 0;
      v6 = a5;
LABEL_15:
      *result = a4;
      *(result + 8) = a5;
      *(result + 16) = v6;
      *(result + 24) = v5;
      return a3;
    }

    v7 = 1;
    v6 = a5;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_17:
        v5 = 0;
        v6 = a4;
        a3 = v7;
        goto LABEL_15;
      }

      if (a4 == v6)
      {
        goto LABEL_17;
      }

      if (v6 <= a4)
      {
        break;
      }

      a2[v7++] = --v6;
      if (v8 == a3)
      {
        v5 = 0;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D12A22B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1D12A2404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1104BB4(0);
  v38 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = (&v32 - v12);
  v39 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v39;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v14 - 32);
    v34 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v35 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v39;
      v28 = *(v39 + 48);
      v29 = type metadata accessor for BrowseCategory(0);
      sub_1D12A2EA8(v28 + *(*(v29 - 8) + 72) * v26, v10, type metadata accessor for BrowseCategory);
      a1 = v37;
      *&v10[*(v38 + 48)] = *(*(v27 + 56) + 8 * v26);
      sub_1D12A2DDC(v10, a1, sub_1D1104BB4);
      sub_1D12A2DDC(a1, a2, sub_1D1104BB4);
      if (v21 == v35)
      {
        goto LABEL_23;
      }

      a2 += *(v36 + 72);
      v30 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v31 = v19 + 1;
    }

    else
    {
      v31 = v20;
    }

    v25 = v31 - 1;
LABEL_23:
    v16 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_1D12A2690(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1D12A27E4(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1D12A293C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *_s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0()
{
  v0 = [objc_opt_self() allSupportedRecordCategories];
  if (!v0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v1 = v0;
  sub_1D106F934(0, &qword_1EE06B730, off_1E83DAD18);
  v2 = sub_1D139045C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_16:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v14 = sub_1D12DE968(v6);

    return v14;
  }

  v3 = sub_1D13910DC();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_4:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FD8EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v17;
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1D3886B70](v5, v2); ; i = *(v2 + 8 * v5 + 32))
    {
      sub_1D123E1C4(i, v15);
      v17 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D10FD8EC((v8 > 1), v9 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v9 + 1;
      v10 = v6 + 72 * v9;
      *(v10 + 32) = v15[0];
      v11 = v15[1];
      v12 = v15[2];
      v13 = v15[3];
      *(v10 + 96) = v16;
      *(v10 + 64) = v12;
      *(v10 + 80) = v13;
      *(v10 + 48) = v11;
      if (v3 - 1 == v5)
      {
        break;
      }

      ++v5;
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1D12A2CCC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3, a4);
    v5 = sub_1D139052C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D12A2D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D12A2D6C(uint64_t a1)
{
  if (!qword_1EC60EAA0)
  {
    sub_1D12A2CCC(255, &qword_1EC609E90, &qword_1EE06B0E0, 0x1E696C250);
    v1 = sub_1D13915DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60EAA0);
    }
  }
}

uint64_t sub_1D12A2DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D12A2E44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D12A2EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D12A2F10()
{
  if (!qword_1EE06B4B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06B4B0);
    }
  }
}

uint64_t sub_1D12A310C()
{
  v1 = v0;
  sub_1D12A3EAC(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D138F27C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setBackgroundView_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setSelectedBackgroundView_];

  v12 = [v1 selectedBackgroundView];
  if (v12)
  {
    v13 = v12;
    sub_1D106F934(0, &qword_1EE06B6E0, 0x1E69DC888);
    v14 = sub_1D1390CEC();
    [v13 setBackgroundColor_];
  }

  sub_1D138F26C();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x1D38864A0](v4);
  return (*(v6 + 8))(v8, v5);
}

void sub_1D12A338C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for ChartItem();
    if (swift_dynamicCast())
    {

      v7 = [v1 superview];
      if (v7)
      {

        sub_1D12A3908();
      }

      return;
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }

  sub_1D138F06C();
  v8 = v1;
  v9 = sub_1D138F0AC();
  v10 = sub_1D13907FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    sub_1D10A71C0(v1 + v6, v18);
    sub_1D12A3EAC(0, &qword_1EC60B620, sub_1D10A7254);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for ChartCell: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

void *sub_1D12A36B0()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for ChartItem();
    if (swift_dynamicCast())
    {
      return v17;
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }

  sub_1D138F06C();
  v8 = v1;
  v9 = sub_1D138F0AC();
  v10 = sub_1D13907FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    sub_1D10A71C0(v1 + v6, v18);
    sub_1D12A3EAC(0, &qword_1EC60B620, sub_1D10A7254);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for ChartCell: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_1D12A3908()
{
  v1 = sub_1D12A36B0();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 viewController];
    if (v3)
    {
      v26 = v3;
      v4 = [v2[8] view];
      if (v4)
      {
        v27 = v4;
        [v26 addChildViewController_];
        [v27 setTranslatesAutoresizingMaskIntoConstraints_];
        v5 = [v0 contentView];
        [v5 addSubview_];

        v6 = objc_opt_self();
        sub_1D106F424();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1D139F5B0;
        v8 = [v27 leadingAnchor];
        v9 = [v0 contentView];
        v10 = [v9 leadingAnchor];

        v11 = [v8 constraintEqualToAnchor_];
        *(v7 + 32) = v11;
        v12 = [v27 trailingAnchor];
        v13 = [v0 contentView];
        v14 = [v13 trailingAnchor];

        v15 = [v12 constraintEqualToAnchor_];
        *(v7 + 40) = v15;
        v16 = [v27 topAnchor];
        v17 = [v0 contentView];
        v18 = [v17 topAnchor];

        v19 = [v16 constraintEqualToAnchor_];
        *(v7 + 48) = v19;
        v20 = [v27 bottomAnchor];
        v21 = [v0 contentView];
        v22 = [v21 bottomAnchor];

        v23 = [v20 constraintEqualToAnchor_];
        *(v7 + 56) = v23;
        sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);
        v24 = sub_1D139044C();

        [v6 activateConstraints_];

        [v0 invalidateIntrinsicContentSize];
        [v0 setNeedsLayout];

        v25 = v27;
      }

      else
      {

        v25 = v26;
      }
    }

    else
    {
    }
  }
}

id sub_1D12A3CE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChartCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D12A3D50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D12A3DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D12A338C();
  return sub_1D10A72B8(a1);
}

void (*sub_1D12A3E14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D12A3E78;
}

void sub_1D12A3E78(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D12A338C();
  }
}

void sub_1D12A3EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D12A3F24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D12A3F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D12A3FC4(uint64_t a1)
{
  v22 = *(a1 + 16);
  if (!v22)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v21 = a1 + 32;
  while (1)
  {
    v3 = *(v21 + 8 * v1);
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      v5 = sub_1D13910DC();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v20 = sub_1D13910DC();
      v8 = v20 + v5;
      if (__OFADD__(v20, v5))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 + v5;
      if (__OFADD__(v7, v5))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v6)
      {
        v9 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D13910DC();
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_1D139122C();
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v4)
    {
      break;
    }

    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v11 >> 1) - v10) < v5)
    {
      goto LABEL_35;
    }

    v26 = v5;
    v23 = v2;
    v24 = v1;
    if (v4)
    {
      if (v12 < 1)
      {
        goto LABEL_37;
      }

      sub_1D12A8C20(0);
      sub_1D12A8C88(&qword_1EC60B058, sub_1D12A8C20, MEMORY[0x1E69E6340]);
      for (i = 0; i != v12; ++i)
      {
        v14 = sub_1D1112FB8(v25, i, v3);
        v16 = *v15;
        (v14)(v25, 0);
        *(v9 + 8 * v10 + 32 + 8 * i) = v16;
      }
    }

    else
    {
      sub_1D106F934(0, &qword_1EE06B0E0, 0x1E696C250);
      swift_arrayInitWithCopy();
    }

    v2 = v23;
    v1 = v24;
    if (v26 >= 1)
    {
      v17 = *(v9 + 16);
      v18 = __OFADD__(v17, v26);
      v19 = v17 + v26;
      if (v18)
      {
        goto LABEL_36;
      }

      *(v9 + 16) = v19;
    }

LABEL_4:
    if (++v1 == v22)
    {
      return;
    }
  }

  v12 = sub_1D13910DC();
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v5 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1D12A4298(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245E74(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D12A71F4(v4);
  *a1 = v2;
}

uint64_t sub_1D12A4304(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D12A72EC(v6);
  return sub_1D13912BC();
}

id sub_1D12A4380()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D12A8B50(0, &qword_1EC60F290, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  sub_1D12A8B50(0, &qword_1EC60E4E0, MEMORY[0x1E6969AE8], v1);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1D138D18C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  result = 0;
  if ((*(v0 + 32) & 1) == 0)
  {
    v17 = *(v0 + 24);
    v30 = *(v0 + 16);
    v31 = v17;
    v32 = v13;
    v33 = v12;
    v18 = sub_1D138D76C();
    v29 = *(*(v18 - 8) + 56);
    v29(v7, 1, 1, v18);
    v19 = sub_1D138D7CC();
    v20 = *(*(v19 - 8) + 56);
    v20(v4, 1, 1, v19);
    sub_1D138D16C();
    v29(v7, 1, 1, v18);
    v20(v4, 1, 1, v19);
    sub_1D138D16C();
    v21 = objc_opt_self();
    v22 = sub_1D138D0FC();
    v23 = sub_1D138D0FC();
    v24 = [v21 predicateForRecordsWithSortDateFromStartDateComponents:v22 endDateComponents:v23];

    v25 = *(v32 + 8);
    v26 = v10;
    v27 = v33;
    v25(v26, v33);
    v25(v15, v27);
    return v24;
  }

  return result;
}

uint64_t sub_1D12A47B4()
{
  sub_1D12A8B50(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  if (*(v0 + 32))
  {
    v4 = *(v0 + 48);
  }

  else
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_1D138D67C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_1D12A8B50(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D139E710;
    v9 = sub_1D11F3C64(v6);
    v11 = v10;
    v12 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1D1089930();
    *(v8 + 64) = v13;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v14 = sub_1D11F3C64(v5);
    *(v8 + 96) = v12;
    *(v8 + 104) = v13;
    *(v8 + 72) = v14;
    *(v8 + 80) = v15;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v4 = sub_1D138D1CC();
    if (*(v8 + 16))
    {
      v4 = sub_1D139019C();

      sub_1D12A8D38(v3, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D12A8B50);
    }

    else
    {
      sub_1D12A8D38(v3, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D12A8B50);
    }
  }

  return v4;
}

uint64_t sub_1D12A4AC4()
{
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v1 = *(v0[9] + 16);
  if (v1 == *(v0[8] + 16))
  {

    v2 = v0[10];
  }

  else
  {
    sub_1D12A8B50(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    v4 = MEMORY[0x1E69E6530];
    *(v3 + 16) = xmmword_1D139E700;
    v5 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v2 = sub_1D139013C();
  }

  return v2;
}

uint64_t sub_1D12A4C30()
{
  v1 = v0[14];
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_1D13910DC();

    v3 = v0[13];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v2 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v2 = *(v1 + 16);
  v3 = v0[13];
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v3 >> 62)
  {
    if (v2 == sub_1D13910DC())
    {
      goto LABEL_5;
    }
  }

  else if (v2 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v4 = v0[15];

    return v4;
  }

LABEL_8:
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D12A8B50(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E700;
  v6 = v0[14];
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = sub_1D13910DC();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  v8 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v8;
  *(v5 + 32) = v7;
  v4 = sub_1D139013C();

  return v4;
}