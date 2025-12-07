uint64_t sub_191C41D8C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_191C42404();
    v7 = sub_191CC68E8();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C41F64(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_191C41FCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_191C42028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_191C420BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EADCBA00)
  {
    v4 = type metadata accessor for HKQueryAsyncStream(0, &type metadata for HKWorkoutEffortRelationshipQueryDescriptor.Result, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EADCBA00);
    }
  }
}

void sub_191C42120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_191C420BC(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C421B4(uint64_t a1)
{
  sub_191C42394(319, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191C42284(uint64_t a1)
{
  v2 = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C422E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);

  return sub_191C419FC(a1, a2, a3, a4);
}

void sub_191C42394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_191BF92E0();
    v7 = a3(a1, &type metadata for HKWorkoutEffortRelationshipQueryDescriptor.Result, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C42404()
{
  result = qword_1EADCBA30;
  if (!qword_1EADCBA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCBA30);
  }

  return result;
}

uint64_t sub_191C42460(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_191C07DFC(0, v2, 0);
    v4 = v36;
    v5 = a1 + 64;
    result = sub_191CC6E68();
    v6 = result;
    v7 = 0;
    v29 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      v30 = v7;
      v31 = *(a1 + 36);
      v10 = (*(a1 + 48) + 40 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[4];
      v33 = v10[3];
      v35 = v14;

      v32 = v14;
      swift_bridgeObjectRetain_n();
      MEMORY[0x193B01F90](91, 0xE100000000000000);
      v34 = v12;
      if (v13)
      {
        v15 = v12;
      }

      else
      {
        v15 = 1852399981;
      }

      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      MEMORY[0x193B01F90](v15, v16);

      MEMORY[0x193B01F90](40, 0xE100000000000000);
      v17 = sub_191CC7398();
      MEMORY[0x193B01F90](v17);

      result = MEMORY[0x193B01F90](23849, 0xE200000000000000);
      v18 = v4;
      v37 = v4;
      v19 = *(v4 + 16);
      v20 = *(v18 + 24);
      if (v19 >= v20 >> 1)
      {
        result = sub_191C07DFC((v20 > 1), v19 + 1, 1);
        v18 = v37;
      }

      *(v18 + 16) = v19 + 1;
      v21 = (v18 + 56 * v19);
      v21[4] = v11;
      v21[5] = v34;
      v21[6] = v13;
      v21[7] = v33;
      v21[8] = v32;
      v21[9] = v33;
      v21[10] = v35;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_29;
      }

      v5 = a1 + 64;
      v22 = *(a1 + 64 + 8 * v9);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      v4 = v18;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (a1 + 72 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_19198D53C(v6, v31, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_19198D53C(v6, v31, 0);
      }

LABEL_4:
      v7 = v30 + 1;
      v6 = v8;
      if (v30 + 1 == v29)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_191C4276C(uint64_t a1)
{
  v3 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v29[1] = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v5, 0);
    v39 = v42;
    v7 = a1 + 56;
    result = sub_191CC6E68();
    v8 = result;
    v9 = 0;
    v30 = a1 + 64;
    v31 = v5;
    v32 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = v9;
      v37 = *(a1 + 36);
      v38 = 1 << v8;
      v12 = v33;
      sub_191C622F4(*(a1 + 48) + *(v34 + 72) * v8, v33, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      sub_191CC61A8();
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v40 = sub_191CC7398();
      v41 = v13;
      MEMORY[0x193B01F90](58, 0xE100000000000000);
      v14 = v35;
      v15 = sub_191CC7398();
      MEMORY[0x193B01F90](v15);

      MEMORY[0x193B01F90](58, 0xE100000000000000);
      MEMORY[0x193B01F90](*(v12 + *(v14 + 24)), *(v12 + *(v14 + 24) + 8));
      v16 = v40;
      v17 = v41;
      result = sub_191C48D60(v12, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      v18 = v39;
      v42 = v39;
      v20 = *(v39 + 16);
      v19 = *(v39 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_191C07DDC((v19 > 1), v20 + 1, 1);
        v18 = v42;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v32;
      v22 = *(v32 + 8 * v11);
      if ((v22 & v38) == 0)
      {
        goto LABEL_24;
      }

      v39 = v18;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v8 & 0x3F));
      if (v23)
      {
        v10 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v11 << 6;
        v25 = v11 + 1;
        v26 = (v30 + 8 * v11);
        while (v25 < (v10 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_19198D53C(v8, v37, 0);
            v10 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_19198D53C(v8, v37, 0);
      }

LABEL_4:
      v9 = v36 + 1;
      v8 = v10;
      if (v36 + 1 == v31)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_191C42B04(uint64_t a1)
{
  v36 = sub_191CC61A8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v28 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v5, 0);
    v39 = v40;
    v7 = a1 + 56;
    result = sub_191CC6E68();
    v8 = result;
    v9 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 64;
    v30 = v5;
    v31 = v3;
    v32 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v12 = v35;
      v13 = v36;
      v14 = (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v8, v36);
      v38 = MEMORY[0x193B018F0](v14);
      v16 = v15;
      result = (*(v3 + 8))(v12, v13);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_191C07DDC((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v32;
      v21 = *(v32 + 8 * v11);
      if ((v21 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v8 & 0x3F));
      if (v22)
      {
        v10 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v25 = (v29 + 8 * v11);
        v3 = v31;
        while (v24 < (v10 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_19198D53C(v8, v37, 0);
            v10 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_19198D53C(v8, v37, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v30)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void HKCloudSync.Show.accountInfo.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_191C42E60(v2, v3, v4, v5, v6, v7, v8);
}

void sub_191C42E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

__n128 HKCloudSync.Show.accountInfo.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_191C42F18(v1[1], v1[2], v1[3], v1[4], v1[5], v1[6], v1[7]);
  v4 = *a1;
  *(v1 + 3) = a1[1];
  *(v1 + 1) = v4;
  result = v6;
  *(v1 + 5) = v6;
  v1[7] = v3;
  return result;
}

void sub_191C42F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t HKCloudSync.Show.repositories.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

__n128 HKCloudSync.Show.init(accountInfo:repositories:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1[2];
  v6 = *(a1 + 6);
  *a3 = 1;
  sub_191C42F18(0, 0, 0, 0, 0, 0, 0);
  v7 = *a1;
  *(a3 + 24) = a1[1];
  *(a3 + 8) = v7;
  result = v9;
  *(a3 + 40) = v9;
  *(a3 + 56) = v6;
  *(a3 + 64) = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.partition.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKCloudSync.Show.AccountInfo.partition.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.accountStatus.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HKCloudSync.Show.AccountInfo.accountStatus.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.encryptionStatus.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t HKCloudSync.Show.AccountInfo.encryptionStatus.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.init(partition:hasValidCredentials:accountStatus:encryptionStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

unint64_t sub_191C4323C()
{
  v1 = 0x6F69746974726170;
  v2 = 0x53746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_191C432CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66494(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C432F4(uint64_t a1)
{
  v2 = sub_191C43568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C43330(uint64_t a1)
{
  v2 = sub_191C43568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.AccountInfo.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBA38, sub_191C43568, &_s4ShowV11AccountInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v13 = *(v1 + 16);
  v8 = *(v1 + 24);
  v12[3] = *(v1 + 32);
  v12[4] = v8;
  v9 = *(v1 + 40);
  v12[1] = *(v1 + 48);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43568();
  sub_191CC7548();
  v17 = 0;
  v10 = v12[5];
  sub_191CC7308();
  if (!v10)
  {
    v16 = 1;
    sub_191CC7318();
    v15 = 2;
    sub_191CC7308();
    v14 = 3;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C43568()
{
  result = qword_1EADCBA40;
  if (!qword_1EADCBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA40);
  }

  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_191C62544(0, &qword_1EADCBA48, sub_191C43568, &_s4ShowV11AccountInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43568();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v26;
  v31 = 0;
  v11 = sub_191CC7228();
  v13 = v12;
  v14 = v11;
  v30 = 1;
  v27 = sub_191CC7238() & 1;
  v29 = 2;
  v24 = sub_191CC7228();
  v25 = v16;
  v28 = 3;
  v17 = sub_191CC7228();
  v19 = v18;
  v20 = *(v9 + 8);
  v23 = v17;
  v20(v8, v5);
  v21 = v27;
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v21;
  v22 = v25;
  *(v10 + 24) = v24;
  *(v10 + 32) = v22;
  *(v10 + 40) = v23;
  *(v10 + 48) = v19;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKCloudSync.Show.Repository.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKCloudSync.Show.Repository.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void HKCloudSync.Show.Repository.primaryContainer.getter(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_191C43990(v2, v3, v4, v5, v6);
}

void sub_191C43990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

__n128 HKCloudSync.Show.Repository.primaryContainer.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_191C43A28(v1[2], v1[3], v1[4], v1[5], v1[6]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v5;
  v1[6] = v3;
  return result;
}

void sub_191C43A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t HKCloudSync.Show.Repository.secondaryContainers.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

__n128 HKCloudSync.Show.Repository.init(identifier:primaryContainer:secondaryContainers:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_191C43A28(0, 0, 0, 0, 0);
  result = *a3;
  v10 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v10;
  *(a5 + 48) = v8;
  *(a5 + 56) = a4;
  return result;
}

unint64_t sub_191C43B48()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_191C43BAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66618(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C43BD4(uint64_t a1)
{
  v2 = sub_191C43EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C43C10(uint64_t a1)
{
  v2 = sub_191C43EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Repository.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBA50, sub_191C43EB8, &_s4ShowV10RepositoryV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = v1[2];
  v18 = v1[3];
  v19 = v8;
  v9 = v1[4];
  v16 = v1[5];
  v17 = v9;
  v10 = v1[6];
  v14 = v1[7];
  v15 = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43EB8();
  sub_191CC7548();
  LOBYTE(v21) = 0;
  v11 = v20;
  sub_191CC7308();
  if (!v11)
  {
    v12 = v14;
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = 1;
    sub_191C43990(v19, v18, v17, v16, v15);
    sub_191C43F0C();
    sub_191CC72F8();
    sub_191C43A28(v21, v22, v23, v24, v25);
    v21 = v12;
    v26 = 2;
    sub_191C62404(0, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    sub_191C43F60();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C43EB8()
{
  result = qword_1EADCBA58;
  if (!qword_1EADCBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA58);
  }

  return result;
}

unint64_t sub_191C43F0C()
{
  result = qword_1EADCBA60;
  if (!qword_1EADCBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA60);
  }

  return result;
}

unint64_t sub_191C43F60()
{
  result = qword_1EADCBA70;
  if (!qword_1EADCBA70)
  {
    sub_191C62404(255, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    sub_191C43F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA70);
  }

  return result;
}

void HKCloudSync.Show.Repository.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = a2;
  sub_191C62544(0, &qword_1EADCBA78, sub_191C43EB8, &_s4ShowV10RepositoryV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43EB8();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_191C43A28(0, 0, 0, 0, 0);
  }

  else
  {
    v9 = v6;
    v10 = v28;
    LOBYTE(v32) = 0;
    v11 = v5;
    v12 = sub_191CC7228();
    v14 = v13;
    v24 = v12;
    LOBYTE(v29[0]) = 1;
    sub_191C443AC();
    sub_191CC7218();
    v26 = v32;
    v15 = v33;
    v25 = v15 >> 64;
    v27 = v15;
    v16 = v34;
    sub_191C43A28(0, 0, 0, 0, 0);
    sub_191C62404(0, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    v38[0] = 2;
    sub_191C44400();
    sub_191CC7268();
    (*(v9 + 8))(v8, v11);
    v23 = v39;
    *&v29[0] = v24;
    *(&v29[0] + 1) = v14;
    v17 = v26;
    v29[1] = v26;
    v18 = v27;
    v19 = v25;
    *&v30 = v27;
    *(&v30 + 1) = v25;
    v22 = v16;
    *&v31 = v16;
    *(&v31 + 1) = v39;
    v20 = v26;
    *v10 = v29[0];
    v10[1] = v20;
    v21 = v31;
    v10[2] = v30;
    v10[3] = v21;
    sub_191C4449C(v29, &v32);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v32 = v24;
    *(&v32 + 1) = v14;
    v33 = v17;
    v34 = v18;
    v35 = v19;
    v36 = v22;
    v37 = v23;
    sub_191C444D4(&v32);
  }
}

unint64_t sub_191C443AC()
{
  result = qword_1EADCBA80;
  if (!qword_1EADCBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA80);
  }

  return result;
}

unint64_t sub_191C44400()
{
  result = qword_1EADCBA88;
  if (!qword_1EADCBA88)
  {
    sub_191C62404(255, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    sub_191C443AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA88);
  }

  return result;
}

uint64_t HKCloudSync.Show.Container.containerIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKCloudSync.Show.Container.containerIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.Container.deviceIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HKCloudSync.Show.Container.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t HKCloudSync.Show.Container.databases.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Container.init(containerIdentifier:deviceIdentifier:databases:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_191C446A8()
{
  v1 = 0x6573616261746164;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_191C44714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66744(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4473C(uint64_t a1)
{
  v2 = sub_191C449CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C44778(uint64_t a1)
{
  v2 = sub_191C449CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Container.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBA90, sub_191C449CC, &_s4ShowV9ContainerV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = v1[2];
  v14 = v1[3];
  v15 = v8;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C449CC();
  sub_191CC7548();
  v20 = 0;
  v9 = v16;
  sub_191CC7308();
  if (!v9)
  {
    v10 = v13;
    v19 = 1;
    sub_191CC7308();
    v17 = v10;
    v18 = 2;
    sub_191C62404(0, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
    sub_191C44A20();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C449CC()
{
  result = qword_1EADCBA98;
  if (!qword_1EADCBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA98);
  }

  return result;
}

unint64_t sub_191C44A20()
{
  result = qword_1EADCBAA8;
  if (!qword_1EADCBAA8)
  {
    sub_191C62404(255, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
    sub_191C44ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAA8);
  }

  return result;
}

unint64_t sub_191C44ABC()
{
  result = qword_1EADCBAB0;
  if (!qword_1EADCBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAB0);
  }

  return result;
}

uint64_t HKCloudSync.Show.Container.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  sub_191C62544(0, &qword_1EADCBAB8, sub_191C449CC, &_s4ShowV9ContainerV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C449CC();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v22;
  v26 = 0;
  v11 = sub_191CC7228();
  v13 = v12;
  v21 = v11;
  v25 = 1;
  v19 = sub_191CC7228();
  v20 = v14;
  sub_191C62404(0, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
  v24 = 2;
  sub_191C44E00();
  sub_191CC7268();
  (*(v9 + 8))(v8, v5);
  v15 = v23;
  v16 = v20;
  *v10 = v21;
  v10[1] = v13;
  v10[2] = v19;
  v10[3] = v16;
  v10[4] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C44E00()
{
  result = qword_1EADCBAC0;
  if (!qword_1EADCBAC0)
  {
    sub_191C62404(255, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
    sub_191C44E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAC0);
  }

  return result;
}

unint64_t sub_191C44E9C()
{
  result = qword_1EADCBAC8;
  if (!qword_1EADCBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAC8);
  }

  return result;
}

uint64_t HKCloudSync.Show.Database.scope.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKCloudSync.Show.Database.scope.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.Database.zones.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Database.init(scope:zones:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_191C45008()
{
  if (*v0)
  {
    return 0x73656E6F7ALL;
  }

  else
  {
    return 0x65706F6373;
  }
}

uint64_t sub_191C45034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C45108(uint64_t a1)
{
  v2 = sub_191C45368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C45144(uint64_t a1)
{
  v2 = sub_191C45368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Database.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBAD0, sub_191C45368, &_s4ShowV8DatabaseV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C45368();
  sub_191CC7548();
  v15 = 0;
  v8 = v12;
  sub_191CC7308();
  if (!v8)
  {
    v13 = v11;
    v14 = 1;
    sub_191C62404(0, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
    sub_191C453BC();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C45368()
{
  result = qword_1EADCBAD8;
  if (!qword_1EADCBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAD8);
  }

  return result;
}

unint64_t sub_191C453BC()
{
  result = qword_1EADCBAE8;
  if (!qword_1EADCBAE8)
  {
    sub_191C62404(255, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
    sub_191C45458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAE8);
  }

  return result;
}

unint64_t sub_191C45458()
{
  result = qword_1EADCBAF0;
  if (!qword_1EADCBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAF0);
  }

  return result;
}

uint64_t HKCloudSync.Show.Database.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  sub_191C62544(0, &qword_1EADCBAF8, sub_191C45368, &_s4ShowV8DatabaseV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C45368();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v17[0];
  v19 = 0;
  v11 = sub_191CC7228();
  v13 = v12;
  v14 = v11;
  sub_191C62404(0, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
  v18 = 1;
  sub_191C45720();
  sub_191CC7268();
  (*(v9 + 8))(v8, v5);
  v15 = v17[1];
  *v10 = v14;
  v10[1] = v13;
  v10[2] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C45720()
{
  result = qword_1EADCBB00;
  if (!qword_1EADCBB00)
  {
    sub_191C62404(255, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
    sub_191C457BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB00);
  }

  return result;
}

unint64_t sub_191C457BC()
{
  result = qword_1EADCBB08;
  if (!qword_1EADCBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB08);
  }

  return result;
}

uint64_t HKCloudSync.Show.Zone.zoneID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 HKCloudSync.Show.Zone.zoneID.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t HKCloudSync.Show.Zone.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t HKCloudSync.Show.Zone.type.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t HKCloudSync.Show.Zone.ownerParticipant.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v4 = v1[6];
  v8 = v1[5];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_191C459C4(v7, &v6);
}

uint64_t sub_191C459C4(uint64_t a1, uint64_t a2)
{
  sub_191C62404(0, &qword_1EADCBB10, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 HKCloudSync.Show.Zone.ownerParticipant.setter(uint64_t a1)
{
  v3 = v1[4];
  v8[0] = v1[3];
  v8[1] = v3;
  v4 = v1[6];
  v8[2] = v1[5];
  v8[3] = v4;
  sub_191C45A9C(v8);
  v5 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v7;
  return result;
}

uint64_t sub_191C45A9C(uint64_t a1)
{
  sub_191C62404(0, &qword_1EADCBB10, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HKCloudSync.Show.Zone.otherParticipants.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Zone.records.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

__n128 HKCloudSync.Show.Zone.init(zoneID:type:ownerParticipant:otherParticipants:records:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a7 = *a1;
  *(a7 + 16) = v11;
  *(a7 + 24) = v12;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  memset(v16, 0, sizeof(v16));
  sub_191C45A9C(v16);
  v13 = *(a4 + 16);
  *(a7 + 48) = *a4;
  *(a7 + 64) = v13;
  result = *(a4 + 32);
  v15 = *(a4 + 48);
  *(a7 + 80) = result;
  *(a7 + 96) = v15;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

unint64_t sub_191C45C5C()
{
  v1 = *v0;
  v2 = 0x4449656E6F7ALL;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x7364726F636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C45CF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C45D18(uint64_t a1)
{
  v2 = sub_191C4619C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C45D54(uint64_t a1)
{
  v2 = sub_191C4619C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Zone.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBB18, sub_191C4619C, &_s4ShowV4ZoneV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = v1[1];
  v23 = *v1;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  v22 = v1[4];
  v21 = v10;
  v11 = *(v1 + 4);
  v33 = *(v1 + 3);
  v34 = v11;
  v12 = *(v1 + 6);
  v35 = *(v1 + 5);
  v36 = v12;
  v13 = v1[15];
  v20 = v1[14];
  v19 = v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C4619C();

  sub_191CC7548();
  *&v29 = v23;
  *(&v29 + 1) = v7;
  *&v30 = v9;
  *(&v30 + 1) = v8;
  LOBYTE(v27[0]) = 0;
  sub_191C461F0();
  v14 = v37;
  sub_191CC7348();
  if (v14)
  {

    return (*(v24 + 8))(v6, v4);
  }

  else
  {
    v16 = v20;
    v17 = v19;
    v18 = v24;

    LOBYTE(v29) = 1;
    sub_191CC7308();
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v28 = 2;
    sub_191C459C4(&v33, v27);
    sub_191C46244();
    sub_191CC72F8();
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    sub_191C45A9C(v27);
    v26 = v16;
    v25 = 3;
    sub_191C62404(0, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    sub_191C46298();
    sub_191CC72F8();
    v26 = v17;
    v25 = 4;
    sub_191C46334(0);
    sub_191C46388();
    sub_191CC7348();
    return (*(v18 + 8))(0, v4);
  }
}

unint64_t sub_191C4619C()
{
  result = qword_1EADCBB20;
  if (!qword_1EADCBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB20);
  }

  return result;
}

unint64_t sub_191C461F0()
{
  result = qword_1EADCBB28;
  if (!qword_1EADCBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB28);
  }

  return result;
}

unint64_t sub_191C46244()
{
  result = qword_1EADCBB30;
  if (!qword_1EADCBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB30);
  }

  return result;
}

unint64_t sub_191C46298()
{
  result = qword_1EADCBB40;
  if (!qword_1EADCBB40)
  {
    sub_191C62404(255, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    sub_191C46244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB40);
  }

  return result;
}

unint64_t sub_191C46388()
{
  result = qword_1EADCBB50;
  if (!qword_1EADCBB50)
  {
    sub_191C46334(255);
    sub_191C46B48(&qword_1EADCBB58, type metadata accessor for HKCloudSync.Show.Record, &protocol conformance descriptor for HKCloudSync.Show.Record);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB50);
  }

  return result;
}

uint64_t HKCloudSync.Show.Zone.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_191C62544(0, &qword_1EADCBB60, sub_191C4619C, &_s4ShowV4ZoneV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v40 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v9);
  sub_191C4619C();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v41);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_191C45A9C(&v50);
  }

  else
  {
    v38 = a2;
    v39 = v6;
    LOBYTE(v42) = 0;
    sub_191C4695C();
    sub_191CC7268();
    v10 = v50;
    v11 = v52;
    v32 = v53;
    v33 = v51;
    LOBYTE(v50) = 1;
    v29 = sub_191CC7228();
    v30 = v11;
    v31 = v12;
    v77 = 2;
    sub_191C469B0();
    sub_191CC7218();
    v28 = v68;
    v26 = v10;
    v27 = v69;
    v36 = v71;
    v37 = v70;
    v34 = v73;
    v35 = v72;
    v14 = v74;
    v13 = v75;
    memset(v67, 0, sizeof(v67));
    sub_191C45A9C(v67);
    sub_191C62404(0, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    LOBYTE(v42) = 3;
    sub_191C46A04();
    sub_191CC7218();
    v15 = v50;
    sub_191C46334(0);
    v76 = 4;
    sub_191C46AA0();
    sub_191CC7268();
    (*(v39 + 8))(v8, v40);
    v40 = v66;
    v16 = v26;
    v17 = v32;
    v18 = v33;
    *&v42 = v26;
    *(&v42 + 1) = v33;
    *&v43 = v30;
    *(&v43 + 1) = v32;
    *&v44 = v29;
    *(&v44 + 1) = v31;
    *&v45 = v28;
    *(&v45 + 1) = v27;
    *&v46 = v37;
    *(&v46 + 1) = v36;
    *&v47 = v35;
    *(&v47 + 1) = v34;
    *&v48 = v14;
    *(&v48 + 1) = v13;
    *&v49 = v15;
    *(&v49 + 1) = v66;
    v19 = v45;
    v20 = v38;
    v38[2] = v44;
    v20[3] = v19;
    v21 = v47;
    v20[4] = v46;
    v20[5] = v21;
    v22 = v43;
    *v20 = v42;
    v20[1] = v22;
    v23 = v49;
    v20[6] = v48;
    v20[7] = v23;
    sub_191C46B90(&v42, &v50);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v50 = v16;
    v51 = v18;
    v52 = v30;
    v53 = v17;
    v54 = v29;
    v55 = v31;
    v56 = v28;
    v57 = v27;
    v58 = v37;
    v59 = v36;
    v60 = v35;
    v61 = v34;
    v62 = v14;
    v63 = v13;
    v64 = v15;
    v65 = v40;
    return sub_191C46BC8(&v50);
  }
}

unint64_t sub_191C4695C()
{
  result = qword_1EADCBB68;
  if (!qword_1EADCBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB68);
  }

  return result;
}

unint64_t sub_191C469B0()
{
  result = qword_1EADCBB70;
  if (!qword_1EADCBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB70);
  }

  return result;
}

unint64_t sub_191C46A04()
{
  result = qword_1EADCBB78;
  if (!qword_1EADCBB78)
  {
    sub_191C62404(255, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    sub_191C469B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB78);
  }

  return result;
}

unint64_t sub_191C46AA0()
{
  result = qword_1EADCBB80;
  if (!qword_1EADCBB80)
  {
    sub_191C46334(255);
    sub_191C46B48(&qword_1EADCBB88, type metadata accessor for HKCloudSync.Show.Record, &protocol conformance descriptor for HKCloudSync.Show.Record);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB80);
  }

  return result;
}

uint64_t sub_191C46B48(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t HKCloudSync.Show.ZoneID.zoneName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKCloudSync.Show.ZoneID.zoneName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.ZoneID.ownerName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HKCloudSync.Show.ZoneID.ownerName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ZoneID.init(zoneName:ownerName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_191C46D44()
{
  if (*v0)
  {
    return 0x6D614E72656E776FLL;
  }

  else
  {
    return 0x656D614E656E6F7ALL;
  }
}

uint64_t sub_191C46D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C46E68(uint64_t a1)
{
  v2 = sub_191C4707C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C46EA4(uint64_t a1)
{
  v2 = sub_191C4707C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.ZoneID.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBB90, sub_191C4707C, &_s4ShowV6ZoneIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C4707C();
  sub_191CC7548();
  v13 = 0;
  v9 = v11[3];
  sub_191CC7308();
  if (!v9)
  {
    v12 = 1;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C4707C()
{
  result = qword_1EADCBB98;
  if (!qword_1EADCBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB98);
  }

  return result;
}

uint64_t HKCloudSync.Show.ZoneID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_191C62544(0, &qword_1EADCBBA0, sub_191C4707C, &_s4ShowV6ZoneIDV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C4707C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v18;
  v20 = 0;
  v10 = sub_191CC7228();
  v12 = v11;
  v17 = v10;
  v19 = 1;
  v13 = sub_191CC7228();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  *v9 = v17;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKCloudSync.Show.ShareParticipant.role.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HKCloudSync.Show.ShareParticipant.role.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.acceptanceStatus.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t HKCloudSync.Show.ShareParticipant.acceptanceStatus.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.permission.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HKCloudSync.Show.ShareParticipant.permission.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.init(identity:role:acceptanceStatus:permission:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t sub_191C47500()
{
  v1 = 0x797469746E656469;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x697373696D726570;
  }

  if (*v0)
  {
    v1 = 1701605234;
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

uint64_t sub_191C4757C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66A2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C475A4(uint64_t a1)
{
  v2 = sub_191C47818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C475E0(uint64_t a1)
{
  v2 = sub_191C47818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.ShareParticipant.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBBA8, sub_191C47818, &_s4ShowV16ShareParticipantV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = v1[2];
  v13[5] = v1[3];
  v13[6] = v8;
  v9 = v1[4];
  v13[3] = v1[5];
  v13[4] = v9;
  v10 = v1[6];
  v13[1] = v1[7];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C47818();
  sub_191CC7548();
  v17 = 0;
  v11 = v13[7];
  sub_191CC7308();
  if (!v11)
  {
    v16 = 1;
    sub_191CC7308();
    v15 = 2;
    sub_191CC7308();
    v14 = 3;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C47818()
{
  result = qword_1EADCBBB0;
  if (!qword_1EADCBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBB0);
  }

  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  sub_191C62544(0, &qword_1EADCBBB8, sub_191C47818, &_s4ShowV16ShareParticipantV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C47818();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v31;
  LOBYTE(v36[0]) = 0;
  v11 = sub_191CC7228();
  v30 = v12;
  LOBYTE(v36[0]) = 1;
  v13 = sub_191CC7228();
  v29 = v14;
  v27 = v13;
  LOBYTE(v36[0]) = 2;
  v26 = sub_191CC7228();
  v28 = v15;
  v37 = 3;
  v16 = sub_191CC7228();
  v18 = v17;
  (*(v9 + 8))(v8, v5);
  v20 = v29;
  v19 = v30;
  *&v32 = v11;
  *(&v32 + 1) = v30;
  v21 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v29;
  *&v34 = v26;
  *(&v34 + 1) = v28;
  *&v35 = v16;
  *(&v35 + 1) = v18;
  v22 = v33;
  *v10 = v32;
  v10[1] = v22;
  v23 = v35;
  v10[2] = v34;
  v10[3] = v23;
  sub_191C47BA8(&v32, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36[0] = v11;
  v36[1] = v19;
  v36[2] = v21;
  v36[3] = v20;
  v36[4] = v26;
  v36[5] = v28;
  v36[6] = v16;
  v36[7] = v18;
  return sub_191C47BE0(v36);
}

uint64_t HKCloudSync.Show.Record.recordID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t HKCloudSync.Show.Record.recordID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t HKCloudSync.Show.Record.recordType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HKCloudSync.Show.Record.recordType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void sub_191C47DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_191C47F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t HKCloudSync.Show.Record.childRecords.getter()
{
  type metadata accessor for HKCloudSync.Show.Record(0);
}

uint64_t HKCloudSync.Show.Record.childRecords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKCloudSync.Show.Record(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Record.init(recordID:recordType:schemaVersion:modificationDate:detail:childRecords:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = type metadata accessor for HKCloudSync.Show.Record(0);
  v16 = v15[7];
  v17 = sub_191CC6148();
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = v15[9];
  *a8 = v13;
  *(a8 + 1) = v14;
  *(a8 + 2) = a2;
  *(a8 + 3) = a3;
  *(a8 + 4) = a4;
  sub_191C47F88(a5, &a8[v16], sub_191C47DA4);
  result = sub_191C627D4(a6, &a8[v15[8]], type metadata accessor for HKCloudSync.Show.RecordDetail);
  *&a8[v18] = a7;
  return result;
}

unint64_t sub_191C48200()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0xD000000000000010;
  v4 = 0x6C6961746564;
  if (v1 != 4)
  {
    v4 = 0x636552646C696863;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x795464726F636572;
  if (v1 != 1)
  {
    v5 = 0x6556616D65686373;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C482D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66BA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C482FC(uint64_t a1)
{
  v2 = sub_191C486AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C48338(uint64_t a1)
{
  v2 = sub_191C486AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Record.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C62544(0, &qword_1EADCBBC0, sub_191C486AC, &_s4ShowV6RecordV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C486AC();
  sub_191CC7548();
  v10 = v3[1];
  v13[0] = *v3;
  v13[1] = v10;
  v14 = 0;
  sub_191C48700();

  sub_191CC7348();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v13[0]) = 1;
    sub_191CC7308();
    LOBYTE(v13[0]) = 2;
    sub_191CC7338();
    v11 = type metadata accessor for HKCloudSync.Show.Record(0);
    LOBYTE(v13[0]) = 3;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_191CC72F8();
    LOBYTE(v13[0]) = 4;
    type metadata accessor for HKCloudSync.Show.RecordDetail(0);
    sub_191C46B48(&qword_1EADCBBD8, type metadata accessor for HKCloudSync.Show.RecordDetail, &protocol conformance descriptor for HKCloudSync.Show.RecordDetail);
    sub_191CC7348();
    v13[0] = *(v3 + *(v11 + 36));
    v14 = 5;
    sub_191C46334(0);
    sub_191C46388();
    sub_191CC72F8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_191C486AC()
{
  result = qword_1EADCBBC8;
  if (!qword_1EADCBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBC8);
  }

  return result;
}

unint64_t sub_191C48700()
{
  result = qword_1EADCBBD0;
  if (!qword_1EADCBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBD0);
  }

  return result;
}

uint64_t HKCloudSync.Show.Record.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C47DA4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBBE0, sub_191C486AC, &_s4ShowV6RecordV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for HKCloudSync.Show.Record(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v15 = sub_191CC6148();
  v16 = *(*(v15 - 8) + 56);
  v35 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_191C486AC();
  v18 = v33;
  sub_191CC7528();
  if (v18)
  {
    v20 = v35;
    __swift_destroy_boxed_opaque_existential_0(v34);
    v26 = sub_191C47DA4;
    v27 = &v13[v20];
  }

  else
  {
    v19 = v31;
    v38 = 0;
    sub_191C48DC0();
    sub_191CC7268();
    v22 = v37;
    *v13 = v36;
    *(v13 + 1) = v22;
    LOBYTE(v36) = 1;
    *(v13 + 2) = sub_191CC7228();
    *(v13 + 3) = v23;
    LOBYTE(v36) = 2;
    *(v13 + 4) = sub_191CC7258();
    LOBYTE(v36) = 3;
    sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_191CC7218();
    sub_191C47F88(v6, &v13[v35], sub_191C47DA4);
    LOBYTE(v36) = 4;
    sub_191C46B48(&qword_1EADCBBF0, type metadata accessor for HKCloudSync.Show.RecordDetail, &protocol conformance descriptor for HKCloudSync.Show.RecordDetail);
    v24 = v29;
    sub_191CC7268();
    sub_191C627D4(v24, &v13[*(v10 + 32)], type metadata accessor for HKCloudSync.Show.RecordDetail);
    sub_191C46334(0);
    v38 = 5;
    sub_191C46AA0();
    sub_191CC7218();
    v25 = *(v10 + 36);
    (*(v19 + 8))(v9, v32);
    *&v13[v25] = v36;
    sub_191C622F4(v13, v28, type metadata accessor for HKCloudSync.Show.Record);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v26 = type metadata accessor for HKCloudSync.Show.Record;
    v27 = v13;
  }

  return sub_191C48D60(v27, v26);
}

uint64_t sub_191C48D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_191C48DC0()
{
  result = qword_1EADCBBE8;
  if (!qword_1EADCBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBE8);
  }

  return result;
}

uint64_t HKCloudSync.Show.RecordID.recordName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKCloudSync.Show.RecordID.recordName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.RecordID.init(recordName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_191C48EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C48F80(uint64_t a1)
{
  v2 = sub_191C49160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C48FBC(uint64_t a1)
{
  v2 = sub_191C49160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.RecordID.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBBF8, sub_191C49160, &_s4ShowV8RecordIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C49160();
  sub_191CC7548();
  sub_191CC7308();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_191C49160()
{
  result = qword_1EADCBC00;
  if (!qword_1EADCBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC00);
  }

  return result;
}

uint64_t HKCloudSync.Show.RecordID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_191C62544(0, &qword_1EADCBC08, sub_191C49160, &_s4ShowV8RecordIDV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C49160();
  sub_191CC7528();
  if (!v2)
  {
    v9 = v15;
    v10 = sub_191CC7228();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    v9[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C4935C(char a1)
{
  result = 0x65676E616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x72657473616DLL;
      break;
    case 3:
      result = 0x7972747369676572;
      break;
    case 4:
      result = 0x65636E6575716573;
      break;
    case 5:
      result = 0x65726F7473;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x656D686361747461;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0x6F43656369766564;
      break;
    case 11:
      result = 0x654B656369766564;
      break;
    case 12:
      result = 0x496C61636964656DLL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x7553646572616873;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_191C4955C(char a1)
{
  result = 1953459315;
  switch(a1)
  {
    case 1:
      result = 0x6576697463417369;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x656E696C65736162;
      break;
    case 4:
      result = 0x6E4965676E616863;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6C6F636F746F7270;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      v3 = 0x797469746E65;
      goto LABEL_14;
    case 11:
      v3 = 0x6E657A6F7266;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E41000000000000;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_191C496EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656D614E7473616CLL;
    v6 = 0x6D614E7473726966;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x6974617469766E69;
    v3 = 0xD000000000000015;
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C49834(char a1)
{
  result = 0x6576697463417369;
  switch(a1)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return 0x54746375646F7270;
    case 3:
      return 0x6F4D656369766564;
    case 4:
      return 0xD000000000000010;
    case 5:
      v4 = 0x4965726F7473;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6564000000000000;
    case 6:
      v4 = 0x4972656E776FLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6564000000000000;
    case 7:
      return 0x6E656449636E7973;
    case 8:
      return 0x646C6968437369;
    case 9:
      return 0xD000000000000016;
    case 10:
      return 0x49676E69646E6570;
    case 11:
      return 0xD000000000000018;
    case 12:
      return 0xD000000000000017;
    case 13:
      return 0x6572506472616873;
    case 14:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
      return 0xD000000000000014;
    case 17:
      v3 = 0x5341746F6C73;
      goto LABEL_19;
    case 18:
      v3 = 0x5342746F6C73;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7165000000000000;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_191C49ABC(void *a1)
{
  sub_191C62544(0, &qword_1EADCBBF8, sub_191C49160, &_s4ShowV8RecordIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C49160();
  sub_191CC7548();
  sub_191CC7308();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_191C49C24()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65707954656D696DLL;
  v4 = 1752392040;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461657263;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E656C6966;
  if (v1 != 1)
  {
    v5 = 0x657A6953656C6966;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C49CE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66DB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C49D0C(uint64_t a1)
{
  v2 = sub_191C50A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C49D48(uint64_t a1)
{
  v2 = sub_191C50A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C49D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C49E1C(uint64_t a1)
{
  v2 = sub_191C50A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C49E58(uint64_t a1)
{
  v2 = sub_191C50A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C49E94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461657263;
  }

  v4 = 0x6556616D65686373;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C49F90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C66FBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C49FB8(uint64_t a1)
{
  v2 = sub_191C509DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C49FF4(uint64_t a1)
{
  v2 = sub_191C509DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E657265666572 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C4A0DC(uint64_t a1)
{
  v2 = sub_191C50988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A118(uint64_t a1)
{
  v2 = sub_191C50988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A154()
{
  v1 = 0x6C6F636F746F7270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4965676E616863;
  }
}

uint64_t sub_191C4A1C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C67224(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4A1F0(uint64_t a1)
{
  v2 = sub_191C50D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A22C(uint64_t a1)
{
  v2 = sub_191C50D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C67350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4A2A4(uint64_t a1)
{
  v2 = sub_191C50DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A2E0(uint64_t a1)
{
  v2 = sub_191C50DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A31C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6556616D65686373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444964726F636572;
  }
}

uint64_t sub_191C4A388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C678A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4A3B0(uint64_t a1)
{
  v2 = sub_191C50D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A3EC(uint64_t a1)
{
  v2 = sub_191C50D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A428()
{
  v1 = *v0;
  v2 = 0x54746375646F7270;
  v3 = 0x4F746E6572727563;
  v4 = 0x6E656449636E7973;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C4A4EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C679D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4A514(uint64_t a1)
{
  v2 = sub_191C50934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A550(uint64_t a1)
{
  v2 = sub_191C50934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A58C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_191C4A5E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C67BA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4A608(uint64_t a1)
{
  v2 = sub_191C508E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A644(uint64_t a1)
{
  v2 = sub_191C508E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000191D2DAB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_191CC73E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_191C4A730(uint64_t a1)
{
  v2 = sub_191C50CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A76C(uint64_t a1)
{
  v2 = sub_191C50CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A7A8()
{
  if (*v0)
  {
    return 1936158572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_191C4A7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1936158572 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_191CC73E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_191C4A8C8(uint64_t a1)
{
  v2 = sub_191C5088C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A904(uint64_t a1)
{
  v2 = sub_191C5088C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A940()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_191C4A978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000018 && 0x8000000191D2DAB0 == a2;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000191D2DAD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C4AA58(uint64_t a1)
{
  v2 = sub_191C50C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AA94(uint64_t a1)
{
  v2 = sub_191C50C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4AAD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C67CC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4AB0C(uint64_t a1)
{
  v2 = sub_191C50C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AB48(uint64_t a1)
{
  v2 = sub_191C50C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4ABA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000191D2D7D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_191CC73E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_191C4AC34(uint64_t a1)
{
  v2 = sub_191C50838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AC70(uint64_t a1)
{
  v2 = sub_191C50838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4ACAC()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6E6F6973726576;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6567616B636170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C4AD44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C68108(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4AD6C(uint64_t a1)
{
  v2 = sub_191C5075C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4ADA8(uint64_t a1)
{
  v2 = sub_191C5075C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4ADEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C682C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4AE14(uint64_t a1)
{
  v2 = sub_191C507B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AE50(uint64_t a1)
{
  v2 = sub_191C507B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4AEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000191D2D790 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_191CC73E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_191C4AF3C(uint64_t a1)
{
  v2 = sub_191C50708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AF78(uint64_t a1)
{
  v2 = sub_191C50708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4AFBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C68604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C4AFF0(uint64_t a1)
{
  v2 = sub_191C50AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4B02C(uint64_t a1)
{
  v2 = sub_191C50AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.RecordDetail.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_191C62544(0, &qword_1EADCBC10, sub_191C50708, &_s4ShowV12RecordDetailO34SharedSummaryTransactionCodingKeysON, MEMORY[0x1E69E6F58]);
  v328 = v3;
  v327 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v326 = &v291 - v4;
  sub_191C62544(0, &qword_1EADCBC20, sub_191C5075C, &_s4ShowV12RecordDetailO23SharedSummaryCodingKeysON, v2);
  v332 = v5;
  v331 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v330 = &v291 - v6;
  sub_191C62544(0, &qword_1EADCBC30, sub_191C507B0, &_s4ShowV12RecordDetailO34SharedSummaryParticipantCodingKeysON, v2);
  v337 = v7;
  v335 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v336 = &v291 - v8;
  sub_191C50804(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v348 = &v291 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBC48, sub_191C50838, &_s4ShowV12RecordDetailO36SharedSummaryAuthorizationCodingKeysON, v2);
  v315 = v11;
  v314 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v312 = &v291 - v12;
  sub_191C62544(0, &qword_1EADCBC58, sub_191C5088C, &_s4ShowV12RecordDetailO19MedicalIDCodingKeysON, v2);
  v320 = v13;
  v319 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v313 = &v291 - v14;
  sub_191C62544(0, &qword_1EADCBC68, sub_191C508E0, &_s4ShowV12RecordDetailO24DeviceKeyValueCodingKeysON, v2);
  v322 = v15;
  v321 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v316 = &v291 - v16;
  sub_191C62544(0, &qword_1EADCBC78, sub_191C50934, &_s4ShowV12RecordDetailO23DeviceContextCodingKeysON, v2);
  v325 = v17;
  v324 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v323 = &v291 - v18;
  sub_191C62544(0, &qword_1EADCBC88, sub_191C50988, &_s4ShowV12RecordDetailO38AttachmentReferenceTombstoneCodingKeysON, v2);
  v310 = v19;
  v309 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v308 = &v291 - v20;
  sub_191C62544(0, &qword_1EADCBC98, sub_191C509DC, &_s4ShowV12RecordDetailO29AttachmentReferenceCodingKeysON, v2);
  v342 = v21;
  v334 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v343 = &v291 - v22;
  sub_191C62544(0, &qword_1EADCBCA8, sub_191C50A30, &_s4ShowV12RecordDetailO20AttachmentCodingKeysON, v2);
  v318 = v23;
  v317 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v311 = &v291 - v24;
  v364 = sub_191CC6148();
  v361 = *(v364 - 8);
  v25 = MEMORY[0x1EEE9AC00](v364);
  v344 = &v291 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v345 = &v291 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v347 = &v291 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v346 = &v291 - v31;
  sub_191C62544(0, &qword_1EADCBCB8, sub_191C50A84, &_s4ShowV12RecordDetailO30AttachmentManagementCodingKeysON, v2);
  v307 = v32;
  v306 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v305 = &v291 - v33;
  sub_191C62544(0, &qword_1EADCBCC8, sub_191C50AD8, &_s4ShowV12RecordDetailO15StoreCodingKeysON, v2);
  v341 = v34;
  v333 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v340 = &v291 - v35;
  sub_191C50B2C(0);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v351 = &v291 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v352 = &v291 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v358 = &v291 - v41;
  sub_191C50B60(0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v353 = &v291 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C50BB4(0);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v350 = &v291 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v354 = &v291 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v357 = &v291 - v49;
  v50 = sub_191CC61A8();
  v362 = *(v50 - 8);
  v363 = v50;
  v51 = MEMORY[0x1EEE9AC00](v50);
  v360 = &v291 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v356 = &v291 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v304 = &v291 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v355 = &v291 - v57;
  sub_191C62544(0, &qword_1EADCBCF0, sub_191C50C08, &_s4ShowV12RecordDetailO18SequenceCodingKeysON, v2);
  v339 = v58;
  v329 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v338 = &v291 - v59;
  sub_191C62544(0, &qword_1EADCBD00, sub_191C50C5C, &_s4ShowV12RecordDetailO18RegistryCodingKeysON, v2);
  v303 = v60;
  v302 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v301 = &v291 - v61;
  sub_191C62544(0, &qword_1EADCBD10, sub_191C50CB0, &_s4ShowV12RecordDetailO16MasterCodingKeysON, v2);
  v296 = v62;
  v295 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v293 = &v291 - v63;
  sub_191C62544(0, &qword_1EADCBD20, sub_191C50D04, &_s4ShowV12RecordDetailO27DataUploadRequestCodingKeysON, v2);
  v300 = v64;
  v299 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v298 = &v291 - v65;
  sub_191C47DA4(0);
  v67 = MEMORY[0x1EEE9AC00](v66 - 8);
  v294 = &v291 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v359 = &v291 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v349 = &v291 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v297 = &v291 - v73;
  sub_191C62544(0, &qword_1EADCBD30, sub_191C50D58, &_s4ShowV12RecordDetailO16ChangeCodingKeysON, v2);
  v75 = v74;
  v292 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v291 - v76;
  v78 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v291 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBD40, sub_191C50DAC, &_s4ShowV12RecordDetailO10CodingKeysON, v2);
  v369 = v81;
  v367 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v291 - v82;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C50DAC();
  v368 = v83;
  sub_191CC7548();
  sub_191C622F4(v365, v80, type metadata accessor for HKCloudSync.Show.RecordDetail);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v192 = *v80;
      v191 = *(v80 + 1);
      sub_191C52030(0);
      v194 = v297;
      sub_191C627D4(&v80[*(v193 + 48)], v297, sub_191C47DA4);
      LOBYTE(v370) = 1;
      sub_191C50D04();
      v195 = v298;
      v197 = v368;
      v196 = v369;
      sub_191CC72B8();
      v370 = v192;
      v371 = v191;
      v372 = 0;
      sub_191C48700();
      v198 = v300;
      v199 = v366;
      sub_191CC7348();
      if (v199)
      {
        (*(v299 + 8))(v195, v198);
        sub_191C48D60(v194, sub_191C47DA4);
        (*(v367 + 8))(v197, v196);
      }

      else
      {

        LOBYTE(v370) = 1;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
        sub_191CC72F8();
        LOBYTE(v370) = 2;
        sub_191CC7338();
        (*(v299 + 8))(v195, v198);
        sub_191C48D60(v194, sub_191C47DA4);
        return (*(v367 + 8))(v197, v196);
      }

    case 2u:
      v163 = *v80;
      LOBYTE(v370) = 2;
      sub_191C50CB0();
      v164 = v293;
      v166 = v368;
      v165 = v369;
      sub_191CC72B8();
      v370 = v163;
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C51FA4(&qword_1EADCBE50, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
      v167 = v296;
      sub_191CC7348();
      (*(v295 + 8))(v164, v167);
      (*(v367 + 8))(v166, v165);

    case 3u:
      v175 = *v80;
      v174 = *(v80 + 1);
      LOBYTE(v370) = 3;
      sub_191C50C5C();
      v176 = v301;
      v178 = v368;
      v177 = v369;
      sub_191CC72B8();
      v370 = v175;
      v372 = 0;
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C51FA4(&qword_1EADCBE50, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
      v179 = v303;
      v180 = v366;
      sub_191CC7348();

      if (!v180)
      {
        v370 = v174;
        v372 = 1;
        sub_191C51B48(0);
        sub_191C51DB8();
        sub_191CC7348();
      }

      (*(v302 + 8))(v176, v179);
      (*(v367 + 8))(v178, v177);

    case 4u:
      LODWORD(v359) = v80[16];
      sub_191C51948(0);
      v134 = v133[16];
      v135 = *&v80[v133[20]];
      v357 = *&v80[v133[24]];
      v358 = v135;
      v136 = *&v80[v133[28]];
      v137 = &v80[v133[32]];
      v139 = *v137;
      v138 = *(v137 + 1);
      v355 = v139;
      v356 = v136;
      v361 = v138;
      v360 = *&v80[v133[36]];
      v365 = *&v80[v133[40]];
      v140 = *&v80[v133[44]];
      v141 = *&v80[v133[48]];
      v142 = *&v80[v133[52]];
      v362 = *&v80[v133[56]];
      v363 = v142;
      v143 = v349;
      sub_191C627D4(&v80[v134], v349, sub_191C47DA4);
      LOBYTE(v370) = 4;
      sub_191C50C08();
      v144 = v338;
      v146 = v368;
      v145 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v147 = v339;
      v148 = v366;
      sub_191CC7308();
      if (v148)
      {

        (*(v329 + 8))(v144, v147);
        sub_191C48D60(v143, sub_191C47DA4);
        return (*(v367 + 8))(v146, v145);
      }

      v354 = v140;
      v366 = v141;

      LOBYTE(v370) = 1;
      sub_191CC7318();
      LOBYTE(v370) = 2;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      sub_191CC72F8();
      LOBYTE(v370) = 3;
      sub_191CC7368();
      LOBYTE(v370) = 4;
      sub_191CC7368();
      LOBYTE(v370) = 5;
      sub_191CC7368();
      LOBYTE(v370) = 6;
      sub_191CC7308();

      v370 = v360;
      v372 = 7;
      sub_191C2D540(0);
      sub_191C51D10();
      sub_191CC7348();

      v370 = v365;
      v372 = 8;
      sub_191C51B48(0);
      sub_191C51DB8();
      sub_191CC7348();

      v370 = v354;
      v372 = 9;
      sub_191CC7348();

      v370 = v366;
      v372 = 10;
      sub_191C51BDC(0);
      sub_191C57754(&qword_1EADCBE28, sub_191C51E60, MEMORY[0x1E69E7368], MEMORY[0x1E69E5E38]);
      sub_191CC7348();

      v370 = v363;
      v372 = 11;
      sub_191CC72F8();

      v370 = v362;
      v372 = 12;
      sub_191C62404(0, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
      sub_191C51EB4();
      sub_191CC72F8();
      (*(v329 + 8))(v338, v339);
      sub_191C48D60(v349, sub_191C47DA4);
      (*(v367 + 8))(v368, v369);

    case 5u:
      v200 = *v80;
      sub_191C516B4(0);
      v202 = v201;
      v344 = v200;
      v203 = swift_projectBox();
      LODWORD(v343) = *v203;
      v204 = *(v203 + 2);
      v339 = *(v203 + 1);
      v360 = v204;
      v205 = *(v203 + 4);
      v338 = *(v203 + 3);
      v356 = v205;
      v206 = *(v203 + 6);
      v337 = *(v203 + 5);
      v349 = v206;
      v207 = v202[24];
      v208 = v202[28];
      v209 = &v203[v202[32]];
      v211 = *v209;
      v210 = v209[1];
      v336 = v211;
      v350 = v210;
      LODWORD(v335) = v203[v202[40]];
      v212 = v202[36];
      v213 = &v203[v202[44]];
      v215 = *v213;
      v214 = *(v213 + 1);
      v334 = v215;
      v365 = v214;
      v216 = v202[48];
      v217 = &v203[v202[52]];
      v219 = *v217;
      v218 = *(v217 + 1);
      v332 = v219;
      v361 = v218;
      v220 = &v203[v202[56]];
      v222 = *v220;
      v221 = *(v220 + 1);
      v331 = v222;
      v348 = v221;
      v223 = v202[60];
      v224 = &v203[v202[64]];
      v226 = *v224;
      v225 = v224[1];
      v330 = v226;
      v347 = v225;
      v227 = &v203[v202[68]];
      v229 = *v227;
      v228 = *(v227 + 1);
      v329 = v229;
      v346 = v228;
      v230 = &v203[v202[72]];
      v232 = *v230;
      v231 = *(v230 + 1);
      v328 = v232;
      v345 = v231;
      v233 = v202[76];
      v234 = v202[80];
      v342 = v202[84];
      sub_191C622F4(&v203[v207], v359, sub_191C47DA4);
      (*(v362 + 16))(v355, &v203[v208], v363);
      sub_191C622F4(&v203[v212], v357, sub_191C50BB4);
      sub_191C622F4(&v203[v216], v354, sub_191C50BB4);
      sub_191C622F4(&v203[v223], v353, sub_191C50B60);
      sub_191C622F4(&v203[v233], v358, sub_191C50B2C);
      sub_191C622F4(&v203[v234], v352, sub_191C50B2C);
      sub_191C622F4(&v203[v342], v351, sub_191C50B2C);
      LOBYTE(v370) = 5;
      sub_191C50AD8();

      v235 = v340;
      v236 = v368;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v237 = v341;
      v238 = v366;
      sub_191CC7318();
      if (v238)
      {

        (*(v333 + 8))(v235, v237);
        sub_191C48D60(v351, sub_191C50B2C);
        sub_191C48D60(v352, sub_191C50B2C);
        sub_191C48D60(v358, sub_191C50B2C);
        sub_191C48D60(v353, sub_191C50B60);
        sub_191C48D60(v354, sub_191C50BB4);
        sub_191C48D60(v357, sub_191C50BB4);
        (*(v362 + 8))(v355, v363);
        sub_191C48D60(v359, sub_191C47DA4);
        (*(v367 + 8))(v236, v369);
      }

      else
      {
        LOBYTE(v370) = 1;
        sub_191CC72C8();

        LOBYTE(v370) = 2;
        sub_191CC72C8();

        LOBYTE(v370) = 3;
        sub_191CC7308();

        LOBYTE(v370) = 4;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
        sub_191CC72F8();
        LOBYTE(v370) = 5;
        sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
        sub_191CC7348();
        LOBYTE(v370) = 6;
        sub_191CC7308();

        LOBYTE(v370) = 7;
        type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
        sub_191C46B48(&qword_1EADCBDA0, type metadata accessor for HKCloudSync.Show.SyncIdentity, &protocol conformance descriptor for HKCloudSync.Show.SyncIdentity);
        sub_191CC72F8();
        LOBYTE(v370) = 8;
        sub_191CC7318();
        LOBYTE(v370) = 9;
        sub_191CC72C8();

        LOBYTE(v370) = 10;
        sub_191CC72F8();
        LOBYTE(v370) = 11;
        sub_191CC7308();

        LOBYTE(v370) = 12;
        sub_191CC7308();

        LOBYTE(v370) = 13;
        type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
        sub_191C46B48(&qword_1EADCBDD8, type metadata accessor for HKCloudSync.Show.ShardPredicate, &protocol conformance descriptor for HKCloudSync.Show.ShardPredicate);
        sub_191CC72F8();
        LOBYTE(v370) = 14;
        sub_191CC72C8();

        LOBYTE(v370) = 15;
        sub_191CC72C8();

        LOBYTE(v370) = 16;
        sub_191CC72C8();

        LOBYTE(v370) = 17;
        sub_191C46B48(&qword_1EADCBBD8, type metadata accessor for HKCloudSync.Show.RecordDetail, &protocol conformance descriptor for HKCloudSync.Show.RecordDetail);
        sub_191CC72F8();
        LOBYTE(v370) = 18;
        sub_191CC72F8();
        LOBYTE(v370) = 19;
        sub_191CC72F8();
        (*(v333 + 8))(v340, v341);
        sub_191C48D60(v351, sub_191C50B2C);
        sub_191C48D60(v352, sub_191C50B2C);
        sub_191C48D60(v358, sub_191C50B2C);
        sub_191C48D60(v353, sub_191C50B60);
        sub_191C48D60(v354, sub_191C50BB4);
        sub_191C48D60(v357, sub_191C50BB4);
        (*(v362 + 8))(v355, v363);
        sub_191C48D60(v359, sub_191C47DA4);
        (*(v367 + 8))(v368, v369);
      }

    case 6u:
      v240 = v362;
      v241 = v363;
      v242 = v304;
      (*(v362 + 32))(v304, v80, v363);
      LOBYTE(v370) = 6;
      sub_191C50A84();
      v243 = v305;
      v146 = v368;
      v145 = v369;
      sub_191CC72B8();
      sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v244 = v307;
      sub_191CC7348();
      (*(v306 + 8))(v243, v244);
      (*(v240 + 8))(v242, v241);
      return (*(v367 + 8))(v146, v145);
    case 7u:
      v181 = *(v80 + 2);
      v365 = *(v80 + 3);
      v182 = *(v80 + 5);
      v359 = *(v80 + 4);
      v360 = v181;
      v183 = *(v80 + 6);
      v357 = *(v80 + 7);
      v358 = v182;
      v362 = *(v80 + 8);
      v363 = v183;
      sub_191C5157C(0);
      v185 = v361;
      v186 = v346;
      v187 = v364;
      (*(v361 + 32))(v346, &v80[*(v184 + 112)], v364);
      LOBYTE(v370) = 7;
      sub_191C50A30();
      v188 = v311;
      v121 = v368;
      v120 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v189 = v318;
      v190 = v366;
      sub_191CC7308();
      if (v190)
      {

        (*(v317 + 8))(v188, v189);
        (*(v185 + 8))(v186, v187);
        goto LABEL_37;
      }

      LOBYTE(v370) = 1;
      sub_191CC7308();

      LOBYTE(v370) = 2;
      sub_191CC7338();
      LOBYTE(v370) = 3;
      sub_191CC7308();
      v278 = v346;

      LOBYTE(v370) = 4;
      sub_191CC7308();

      LOBYTE(v370) = 5;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      v283 = v364;
      sub_191CC7348();
      v285 = v368;
      v284 = v369;
      v286 = v361;
      (*(v317 + 8))(v188, v189);
      (*(v286 + 8))(v278, v283);
      return (*(v367 + 8))(v285, v284);
    case 8u:
      v257 = *(v80 + 2);
      v365 = *(v80 + 3);
      v258 = *(v80 + 5);
      v358 = *(v80 + 4);
      v359 = v257;
      v360 = v258;
      v357 = *(v80 + 6);
      sub_191C51428(0);
      v260 = v259[24];
      v355 = *&v80[v259[28]];
      v261 = v259[32];
      v262 = v362;
      (*(v362 + 32))(v356, &v80[v260], v363);
      v263 = v361;
      v264 = v347;
      (*(v361 + 32))(v347, &v80[v261], v364);
      LOBYTE(v370) = 8;
      sub_191C509DC();
      v265 = v343;
      v121 = v368;
      v120 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v266 = v342;
      v267 = v366;
      sub_191CC7308();
      if (v267)
      {

        (*(v334 + 8))(v265, v266);
        (*(v263 + 8))(v264, v364);
        (*(v262 + 8))(v356, v363);
        goto LABEL_37;
      }

      LOBYTE(v370) = 1;
      sub_191CC7308();

      LOBYTE(v370) = 2;
      sub_191CC7308();
      v276 = v364;
      v277 = v361;
      v279 = v368;

      LOBYTE(v370) = 3;
      sub_191CC7338();
      v280 = v362;
      LOBYTE(v370) = 4;
      sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      sub_191CC7348();
      v282 = v276;
      LOBYTE(v370) = 5;
      v287 = v343;
      sub_191CC7338();
      LOBYTE(v370) = 6;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      v288 = v347;
      sub_191CC7348();
      v289 = v369;
      v290 = v363;
      (*(v334 + 8))(v287, v342);
      (*(v277 + 8))(v288, v282);
      (*(v280 + 8))(v356, v290);
      return (*(v367 + 8))(v279, v289);
    case 9u:
      v157 = *v80;
      LOBYTE(v370) = 9;
      sub_191C50988();
      v158 = v308;
      v160 = v368;
      v159 = v369;
      sub_191CC72B8();
      v370 = v157;
      sub_191C5132C(0);
      sub_191C51380();
      v161 = v310;
      sub_191CC72F8();
      v162 = &v341;
      goto LABEL_29;
    case 0xAu:
      v245 = *(v80 + 2);
      v365 = *(v80 + 3);
      v246 = *(v80 + 5);
      v360 = *(v80 + 4);
      v362 = v245;
      v363 = v246;
      sub_191C51218(0);
      v248 = *(v247 + 96);
      sub_191C627D4(&v80[*(v247 + 80)], v350, sub_191C50BB4);
      v249 = v361;
      v250 = v345;
      v251 = v364;
      (*(v361 + 32))(v345, &v80[v248], v364);
      LOBYTE(v370) = 10;
      sub_191C50934();
      v252 = v323;
      v253 = v368;
      v254 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v255 = v325;
      v256 = v366;
      sub_191CC7308();

      if (v256)
      {

        (*(v324 + 8))(v252, v255);
        (*(v249 + 8))(v250, v251);
        sub_191C48D60(v350, sub_191C50BB4);
        return (*(v367 + 8))(v253, v254);
      }

      else
      {
        LOBYTE(v370) = 1;
        sub_191CC7308();

        LOBYTE(v370) = 2;
        sub_191CC7308();
        v272 = v368;
        v273 = v364;
        v274 = v361;
        v275 = v350;

        LOBYTE(v370) = 3;
        type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
        sub_191C46B48(&qword_1EADCBDA0, type metadata accessor for HKCloudSync.Show.SyncIdentity, &protocol conformance descriptor for HKCloudSync.Show.SyncIdentity);
        sub_191CC72F8();
        LOBYTE(v370) = 4;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
        v281 = v345;
        sub_191CC7348();
        (*(v324 + 8))(v252, v255);
        (*(v274 + 8))(v281, v273);
        sub_191C48D60(v275, sub_191C50BB4);
        return (*(v367 + 8))(v272, v254);
      }

    case 0xBu:
      v124 = *(v80 + 3);
      v365 = *(v80 + 2);
      v363 = v124;
      sub_191C51150(0);
      v126 = v361;
      v127 = v344;
      v128 = v364;
      (*(v361 + 32))(v344, &v80[*(v125 + 64)], v364);
      LOBYTE(v370) = 11;
      sub_191C508E0();
      v129 = v316;
      v130 = v368;
      v89 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v131 = v322;
      v132 = v366;
      sub_191CC7308();

      if (v132)
      {
        sub_191C049D8(v365, v363);
        (*(v321 + 8))(v129, v131);
        (*(v126 + 8))(v127, v128);
      }

      else
      {
        v268 = v363;
        v370 = v365;
        v371 = v363;
        v372 = 1;
        sub_191C511C4();
        sub_191CC7348();
        LOBYTE(v370) = 2;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
        v269 = v344;
        sub_191CC7348();
        sub_191C049D8(v365, v268);
        (*(v321 + 8))(v129, v131);
        (*(v126 + 8))(v269, v128);
      }

      v92 = *(v367 + 8);
      v93 = v130;
      goto LABEL_14;
    case 0xCu:
      sub_191C50FB0(0);
      v150 = *&v80[*(v149 + 48)];
      v151 = v294;
      sub_191C627D4(v80, v294, sub_191C47DA4);
      LOBYTE(v370) = 12;
      sub_191C5088C();
      v152 = v313;
      v153 = v368;
      v89 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      v154 = v320;
      v155 = v366;
      sub_191CC72F8();
      if (v155)
      {

        (*(v319 + 8))(v152, v154);
        sub_191C48D60(v151, sub_191C47DA4);
        v92 = *(v367 + 8);
        v93 = v153;
LABEL_14:
        v156 = v89;
        goto LABEL_51;
      }

      v370 = v150;
      v372 = 1;
      sub_191C51054(0);
      sub_191C510A8();
      sub_191CC72F8();
      (*(v319 + 8))(v152, v154);
      sub_191C48D60(v151, sub_191C47DA4);
      (*(v367 + 8))(v153, v89);

    case 0xDu:
      v239 = *v80;
      LOBYTE(v370) = 13;
      sub_191C50838();
      v158 = v312;
      v160 = v368;
      v159 = v369;
      sub_191CC72B8();
      v370 = v239;
      sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_191C573DC(&qword_1EADCBD50, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v161 = v315;
      sub_191CC7348();
      v162 = &v346;
LABEL_29:
      (*(*(v162 - 32) + 1))(v158, v161);
      (*(v367 + 8))(v160, v159);

    case 0xEu:
      sub_191C50E00(0);
      v95 = v94[12];
      v96 = v94[16];
      v97 = &v80[v94[20]];
      v98 = *v97;
      v361 = *(v97 + 1);
      v99 = &v80[v94[24]];
      v101 = *v99;
      v100 = v99[1];
      v354 = v101;
      v355 = v98;
      v359 = v100;
      v102 = &v80[v94[28]];
      v103 = *v102;
      v356 = v102[1];
      v104 = &v80[v94[32]];
      v106 = *v104;
      v105 = v104[1];
      v352 = v106;
      v353 = v103;
      v357 = v105;
      v107 = &v80[v94[36]];
      v109 = *v107;
      v108 = v107[1];
      v351 = v109;
      v358 = v108;
      v110 = &v80[v94[40]];
      v112 = *v110;
      v111 = v110[1];
      v350 = v112;
      v364 = v111;
      v113 = &v80[v94[44]];
      v115 = *v113;
      v114 = v113[1];
      v349 = v115;
      v365 = v114;
      v116 = v362;
      v117 = v363;
      (*(v362 + 32))(v360, &v80[v95], v363);
      v118 = v348;
      sub_191C627D4(&v80[v96], v348, sub_191C50804);
      LOBYTE(v370) = 14;
      sub_191C507B0();
      v119 = v336;
      v121 = v368;
      v120 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v122 = v337;
      v123 = v366;
      sub_191CC7308();
      if (!v123)
      {

        LOBYTE(v370) = 1;
        sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
        sub_191CC7348();
        LOBYTE(v370) = 2;
        sub_191CC72F8();
        LOBYTE(v370) = 3;
        sub_191CC72C8();

        LOBYTE(v370) = 4;
        sub_191CC72C8();

        LOBYTE(v370) = 5;
        sub_191CC72C8();

        LOBYTE(v370) = 6;
        sub_191CC72C8();

        LOBYTE(v370) = 7;
        sub_191CC72C8();

        LOBYTE(v370) = 8;
        sub_191CC72C8();

        LOBYTE(v370) = 9;
        sub_191CC72C8();

        (*(v335 + 8))(v336, v337);
        sub_191C48D60(v348, sub_191C50804);
        (*(v362 + 8))(v360, v363);
        v93 = v368;
        v92 = *(v367 + 8);
        goto LABEL_50;
      }

      (*(v335 + 8))(v119, v122);
      sub_191C48D60(v118, sub_191C50804);
      (*(v116 + 8))(v360, v117);
LABEL_37:
      result = (*(v367 + 8))(v121, v120);
      break;
    case 0xFu:
      v168 = *(v80 + 3);
      v364 = *(v80 + 2);
      v365 = v168;
      v169 = *(v80 + 4);
      v362 = *(v80 + 6);
      v363 = v169;
      v170 = *(v80 + 8);
      LOBYTE(v370) = 15;
      sub_191C5075C();
      v171 = v330;
      v146 = v368;
      v145 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v172 = v332;
      v173 = v366;
      sub_191CC7308();
      if (v173)
      {

        (*(v331 + 8))(v171, v172);
        return (*(v367 + 8))(v146, v145);
      }

      else
      {

        LOBYTE(v370) = 1;
        sub_191CC7308();

        LOBYTE(v370) = 2;
        sub_191CC7308();
        v271 = v368;
        v270 = v369;

        LOBYTE(v370) = 3;
        sub_191CC7308();

        v370 = v170;
        v372 = 4;
        sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_191C573DC(&qword_1EADCBD50, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
        sub_191CC7348();
        (*(v331 + 8))(v171, v172);
        (*(v367 + 8))(v271, v270);
      }

    case 0x10u:
      LOBYTE(v370) = 16;
      sub_191C50708();
      v88 = v326;
      v90 = v368;
      v89 = v369;
      sub_191CC72B8();
      v91 = v328;
      sub_191CC7308();

      (*(v327 + 8))(v88, v91);
      v92 = *(v367 + 8);
      v93 = v90;
      goto LABEL_14;
    default:
      LOBYTE(v370) = 0;
      sub_191C50D58();
      v85 = v368;
      v84 = v369;
      sub_191CC72B8();
      LOBYTE(v370) = 0;
      v86 = v366;
      sub_191CC7368();
      if (v86)
      {

        (*(v292 + 8))(v77, v75);
        result = (*(v367 + 8))(v85, v84);
      }

      else
      {
        LOBYTE(v370) = 1;
        sub_191CC7308();

        LOBYTE(v370) = 2;
        sub_191CC7318();
        (*(v292 + 8))(v77, v75);
        v92 = *(v367 + 8);
        v93 = v85;
LABEL_50:
        v156 = v369;
LABEL_51:
        result = v92(v93, v156);
      }

      break;
  }

  return result;
}

unint64_t sub_191C50708()
{
  result = qword_1EADCBC18;
  if (!qword_1EADCBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC18);
  }

  return result;
}

unint64_t sub_191C5075C()
{
  result = qword_1EADCBC28;
  if (!qword_1EADCBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC28);
  }

  return result;
}

unint64_t sub_191C507B0()
{
  result = qword_1EADCBC38;
  if (!qword_1EADCBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC38);
  }

  return result;
}

unint64_t sub_191C50838()
{
  result = qword_1EADCBC50;
  if (!qword_1EADCBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC50);
  }

  return result;
}

unint64_t sub_191C5088C()
{
  result = qword_1EADCBC60;
  if (!qword_1EADCBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC60);
  }

  return result;
}

unint64_t sub_191C508E0()
{
  result = qword_1EADCBC70;
  if (!qword_1EADCBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC70);
  }

  return result;
}

unint64_t sub_191C50934()
{
  result = qword_1EADCBC80;
  if (!qword_1EADCBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC80);
  }

  return result;
}

unint64_t sub_191C50988()
{
  result = qword_1EADCBC90;
  if (!qword_1EADCBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC90);
  }

  return result;
}

unint64_t sub_191C509DC()
{
  result = qword_1EADCBCA0;
  if (!qword_1EADCBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCA0);
  }

  return result;
}

unint64_t sub_191C50A30()
{
  result = qword_1EADCBCB0;
  if (!qword_1EADCBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCB0);
  }

  return result;
}

unint64_t sub_191C50A84()
{
  result = qword_1EADCBCC0;
  if (!qword_1EADCBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCC0);
  }

  return result;
}

unint64_t sub_191C50AD8()
{
  result = qword_1EADCBCD0;
  if (!qword_1EADCBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCD0);
  }

  return result;
}

unint64_t sub_191C50C08()
{
  result = qword_1EADCBCF8;
  if (!qword_1EADCBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCF8);
  }

  return result;
}

unint64_t sub_191C50C5C()
{
  result = qword_1EADCBD08;
  if (!qword_1EADCBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD08);
  }

  return result;
}

unint64_t sub_191C50CB0()
{
  result = qword_1EADCBD18;
  if (!qword_1EADCBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD18);
  }

  return result;
}

unint64_t sub_191C50D04()
{
  result = qword_1EADCBD28;
  if (!qword_1EADCBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD28);
  }

  return result;
}

unint64_t sub_191C50D58()
{
  result = qword_1EADCBD38;
  if (!qword_1EADCBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD38);
  }

  return result;
}

unint64_t sub_191C50DAC()
{
  result = qword_1EADCBD48;
  if (!qword_1EADCBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD48);
  }

  return result;
}

void sub_191C50E00(uint64_t a1)
{
  if (!qword_1EADCBD58)
  {
    MEMORY[0x1EEE9AC00](a1);
    v1 = MEMORY[0x1E69E6158];
    sub_191CC61A8();
    sub_191C50804(255);
    sub_191C62404(255, &qword_1EADCBD60, v1, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBD58);
    }
  }
}

void sub_191C50FB0(uint64_t a1)
{
  if (!qword_1EADCBD68)
  {
    sub_191C47DA4(255);
    sub_191C47DD8(255, &qword_1EADCBD70, sub_191C51054, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCBD68);
    }
  }
}

unint64_t sub_191C510A8()
{
  result = qword_1EADCBD80;
  if (!qword_1EADCBD80)
  {
    sub_191C51054(255);
    sub_191C46B48(&qword_1EADCBD88, type metadata accessor for HKCloudSync.Show.Log, &protocol conformance descriptor for HKCloudSync.Show.Log);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD80);
  }

  return result;
}

void sub_191C51150(uint64_t a1)
{
  if (!qword_1EADCBD90)
  {
    sub_191CC6148();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EADCBD90);
    }
  }
}

unint64_t sub_191C511C4()
{
  result = qword_1EADCC860;
  if (!qword_1EADCC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC860);
  }

  return result;
}

void sub_191C51218(uint64_t a1)
{
  if (!qword_1EADCBD98)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_191C50BB4(255);
    sub_191CC6148();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBD98);
    }
  }
}

unint64_t sub_191C51380()
{
  result = qword_1EADCBDB0;
  if (!qword_1EADCBDB0)
  {
    sub_191C5132C(255);
    sub_191C46B48(&qword_1EADCBDB8, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone, &protocol conformance descriptor for HKCloudSync.Show.AttachmentReferenceTombstone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBDB0);
  }

  return result;
}

void sub_191C51428(uint64_t a1)
{
  if (!qword_1EADCBDC0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_191CC61A8();
    sub_191CC6148();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDC0);
    }
  }
}

void sub_191C5157C(uint64_t a1)
{
  if (!qword_1EADCBDC8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_191CC6148();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDC8);
    }
  }
}

void sub_191C516B4(uint64_t a1)
{
  if (!qword_1EADCBDD0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_191C62404(255, &qword_1EADCBD60, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_191C47DA4(255);
    sub_191CC61A8();
    sub_191C50BB4(255);
    sub_191C50B60(255);
    sub_191C50B2C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDD0);
    }
  }
}

void sub_191C51948(uint64_t a1)
{
  if (!qword_1EADCBDE0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_191C47DA4(255);
    sub_191C2D540(255);
    sub_191C51B48(255);
    sub_191C51BDC(255);
    sub_191C47DD8(255, &qword_1EADCBE08, sub_191C51BDC, MEMORY[0x1E69E6720]);
    sub_191C51C94(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDE0);
    }
  }
}

void sub_191C51B48(uint64_t a1)
{
  if (!qword_1EADCBDE8)
  {
    type metadata accessor for HKCloudSync.Show.SyncIdentity(255);
    sub_191C46B48(&qword_1EADCBDF0, type metadata accessor for HKCloudSync.Show.SyncIdentity, &protocol conformance descriptor for HKCloudSync.Show.SyncIdentity);
    v1 = sub_191CC6B88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCBDE8);
    }
  }
}

void sub_191C51BDC(uint64_t a1)
{
  if (!qword_1EADCBDF8)
  {
    sub_191C51C40();
    v1 = sub_191CC6648();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCBDF8);
    }
  }
}

unint64_t sub_191C51C40()
{
  result = qword_1EADCBE00;
  if (!qword_1EADCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE00);
  }

  return result;
}

void sub_191C51C94(uint64_t a1)
{
  if (!qword_1EADCBE10)
  {
    sub_191C62404(255, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
    v1 = sub_191CC6DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCBE10);
    }
  }
}

unint64_t sub_191C51D10()
{
  result = qword_1EADCB3F0;
  if (!qword_1EADCB3F0)
  {
    sub_191C2D540(255);
    sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3F0);
  }

  return result;
}

unint64_t sub_191C51DB8()
{
  result = qword_1EADCBE20;
  if (!qword_1EADCBE20)
  {
    sub_191C51B48(255);
    sub_191C46B48(&qword_1EADCBDA0, type metadata accessor for HKCloudSync.Show.SyncIdentity, &protocol conformance descriptor for HKCloudSync.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE20);
  }

  return result;
}

unint64_t sub_191C51E60()
{
  result = qword_1EADCBE30;
  if (!qword_1EADCBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE30);
  }

  return result;
}

unint64_t sub_191C51EB4()
{
  result = qword_1EADCBE38;
  if (!qword_1EADCBE38)
  {
    sub_191C62404(255, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
    sub_191C51F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE38);
  }

  return result;
}

unint64_t sub_191C51F50()
{
  result = qword_1EADCBE40;
  if (!qword_1EADCBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE40);
  }

  return result;
}

uint64_t sub_191C51FA4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_191C693C0(255, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_191C52030(uint64_t a1)
{
  if (!qword_1EADCBE58)
  {
    sub_191C47DA4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EADCBE58);
    }
  }
}

uint64_t HKCloudSync.Show.RecordDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v364 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_191C62544(0, &qword_1EADCBE60, sub_191C50708, &_s4ShowV12RecordDetailO34SharedSummaryTransactionCodingKeysON, MEMORY[0x1E69E6F48]);
  v348 = v4;
  v335 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v370 = &v314 - v5;
  sub_191C62544(0, &qword_1EADCBE68, sub_191C5075C, &_s4ShowV12RecordDetailO23SharedSummaryCodingKeysON, v3);
  v355 = v6;
  v353 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v382 = &v314 - v7;
  sub_191C62544(0, &qword_1EADCBE70, sub_191C507B0, &_s4ShowV12RecordDetailO34SharedSummaryParticipantCodingKeysON, v3);
  v363 = v8;
  v337 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v375 = &v314 - v9;
  sub_191C62544(0, &qword_1EADCBE78, sub_191C50838, &_s4ShowV12RecordDetailO36SharedSummaryAuthorizationCodingKeysON, v3);
  v349 = v10;
  v333 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v371 = (&v314 - v11);
  sub_191C62544(0, &qword_1EADCBE80, sub_191C5088C, &_s4ShowV12RecordDetailO19MedicalIDCodingKeysON, v3);
  v351 = v12;
  v334 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v381 = &v314 - v13;
  sub_191C62544(0, &qword_1EADCBE88, sub_191C508E0, &_s4ShowV12RecordDetailO24DeviceKeyValueCodingKeysON, v3);
  v350 = v14;
  v362 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v378 = &v314 - v15;
  sub_191C62544(0, &qword_1EADCBE90, sub_191C50934, &_s4ShowV12RecordDetailO23DeviceContextCodingKeysON, v3);
  v354 = v16;
  v352 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v372 = &v314 - v17;
  sub_191C62544(0, &qword_1EADCBE98, sub_191C50988, &_s4ShowV12RecordDetailO38AttachmentReferenceTombstoneCodingKeysON, v3);
  v347 = v18;
  v332 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v380 = &v314 - v19;
  sub_191C62544(0, &qword_1EADCBEA0, sub_191C509DC, &_s4ShowV12RecordDetailO29AttachmentReferenceCodingKeysON, v3);
  v357 = v20;
  v360 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v374 = &v314 - v21;
  sub_191C62544(0, &qword_1EADCBEA8, sub_191C50A30, &_s4ShowV12RecordDetailO20AttachmentCodingKeysON, v3);
  v356 = v22;
  v359 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v373 = &v314 - v23;
  sub_191C62544(0, &qword_1EADCBEB0, sub_191C50A84, &_s4ShowV12RecordDetailO30AttachmentManagementCodingKeysON, v3);
  v346 = v24;
  v331 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v369 = &v314 - v25;
  sub_191C62544(0, &qword_1EADCBEB8, sub_191C50AD8, &_s4ShowV12RecordDetailO15StoreCodingKeysON, v3);
  v379 = v26;
  v338 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v377 = &v314 - v27;
  sub_191C62544(0, &qword_1EADCBEC0, sub_191C50C08, &_s4ShowV12RecordDetailO18SequenceCodingKeysON, v3);
  v358 = v28;
  v336 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v376 = &v314 - v29;
  sub_191C62544(0, &qword_1EADCBEC8, sub_191C50C5C, &_s4ShowV12RecordDetailO18RegistryCodingKeysON, v3);
  v345 = v30;
  v330 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v368 = &v314 - v31;
  sub_191C62544(0, &qword_1EADCBED0, sub_191C50CB0, &_s4ShowV12RecordDetailO16MasterCodingKeysON, v3);
  v342 = v32;
  v329 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v366 = &v314 - v33;
  sub_191C62544(0, &qword_1EADCBED8, sub_191C50D04, &_s4ShowV12RecordDetailO27DataUploadRequestCodingKeysON, v3);
  v344 = v34;
  v343 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v367 = &v314 - v35;
  sub_191C62544(0, &qword_1EADCBEE0, sub_191C50D58, &_s4ShowV12RecordDetailO16ChangeCodingKeysON, v3);
  v341 = v36;
  v361 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v365 = &v314 - v37;
  sub_191C62544(0, &qword_1EADCBEE8, sub_191C50DAC, &_s4ShowV12RecordDetailO10CodingKeysON, v3);
  v385 = v38;
  v383 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v388 = &v314 - v39;
  v384 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  v40 = MEMORY[0x1EEE9AC00](v384);
  v322 = (&v314 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x1EEE9AC00](v40);
  v320 = (&v314 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v328 = (&v314 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v323 = (&v314 - v47);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v340 = &v314 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v324 = (&v314 - v51);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v327 = (&v314 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v321 = (&v314 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v325 = (&v314 - v57);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v326 = (&v314 - v59);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v339 = &v314 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = (&v314 - v63);
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v314 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v314 - v69;
  v71 = MEMORY[0x1EEE9AC00](v68);
  v73 = &v314 - v72;
  v74 = MEMORY[0x1EEE9AC00](v71);
  v76 = (&v314 - v75);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v314 - v77;
  v79 = a1;
  v80 = a1[3];
  v387 = v79;
  __swift_project_boxed_opaque_existential_0(v79, v80);
  sub_191C50DAC();
  v81 = v386;
  sub_191CC7528();
  if (!v81)
  {
    v314 = v76;
    v316 = v70;
    v315 = v67;
    v318 = v73;
    v83 = v380;
    v82 = v381;
    v317 = v64;
    v84 = v382;
    v386 = 0;
    v85 = v384;
    v319 = v78;
    v86 = v383;
    v87 = v385;
    v88 = v388;
    v89 = sub_191CC7298();
    v90 = (2 * *(v89 + 16)) | 1;
    v391 = v89;
    v392 = v89 + 32;
    v393 = 0;
    v394 = v90;
    v91 = sub_191C23F60();
    if (v393 == v394 >> 1)
    {
      switch(v91)
      {
        case 0:
          LOBYTE(v395) = 0;
          sub_191C50D58();
          v92 = v365;
          v93 = v386;
          sub_191CC71C8();
          if (v93)
          {
            goto LABEL_7;
          }

          LOBYTE(v395) = 0;
          v94 = v341;
          v95 = v86;
          v174 = sub_191CC7288();
          LOBYTE(v395) = 1;
          v382 = sub_191CC7228();
          v198 = v197;
          LOBYTE(v395) = 2;
          v199 = sub_191CC7238();
          v386 = 0;
          v210 = v199;
          (*(v361 + 8))(v92, v94);
          (*(v95 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v211 = v314;
          v212 = v382;
          *v314 = v174;
          v211[1] = v212;
          v211[2] = v198;
          *(v211 + 24) = v210 & 1;
          swift_storeEnumTagMultiPayload();
          v213 = v211;
          goto LABEL_58;
        case 1:
          LOBYTE(v395) = 1;
          sub_191C50D04();
          v128 = v367;
          v129 = v386;
          sub_191CC71C8();
          if (v129)
          {
            goto LABEL_7;
          }

          LOBYTE(v395) = 0;
          sub_191C48DC0();
          v130 = v344;
          sub_191CC7268();
          v131 = v86;
          sub_191C52030(0);
          v382 = v175;
          v176 = *(v175 + 12);
          sub_191CC6148();
          v386 = 0;
          LOBYTE(v395) = 1;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          v381 = v176;
          v177 = v386;
          sub_191CC7218();
          if (v177)
          {
            (*(v343 + 8))(v128, v130);
            (*(v131 + 8))(v88, v87);
            swift_unknownObjectRelease();

            return __swift_destroy_boxed_opaque_existential_0(v387);
          }

          v200 = v382;
          LOBYTE(v395) = 2;
          v201 = sub_191CC7258();
          v386 = 0;
          v214 = v201;
          v215 = *(v200 + 16);
          (*(v343 + 8))(v128, v130);
          (*(v131 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v216 = v318;
          *&v318[v215] = v214;
          swift_storeEnumTagMultiPayload();
          v213 = v216;
LABEL_58:
          v155 = v319;
          sub_191C627D4(v213, v319, type metadata accessor for HKCloudSync.Show.RecordDetail);
          v156 = v364;
          goto LABEL_54;
        case 2:
          LOBYTE(v395) = 2;
          sub_191C50CB0();
          v119 = v366;
          v120 = v386;
          sub_191CC71C8();
          if (v120)
          {
            goto LABEL_7;
          }

          sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
          sub_191C51FA4(&qword_1EADCBF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
          v121 = v342;
          sub_191CC7268();
          (*(v329 + 8))(v119, v121);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v165 = v316;
          *v316 = v395;
          goto LABEL_36;
        case 3:
          LOBYTE(v395) = 3;
          sub_191C50C5C();
          v123 = v368;
          v124 = v386;
          sub_191CC71C8();
          if (v124)
          {
            goto LABEL_7;
          }

          sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
          LOBYTE(v390) = 0;
          sub_191C51FA4(&qword_1EADCBF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
          v125 = v345;
          sub_191CC7268();
          v171 = v395;
          sub_191C51B48(0);
          v389 = 1;
          sub_191C576AC();
          sub_191CC7268();
          (*(v330 + 8))(v123, v125);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v193 = v390;
          v194 = v315;
          *v315 = v171;
          v194[1] = v193;
          swift_storeEnumTagMultiPayload();
          v195 = v194;
          goto LABEL_52;
        case 4:
          LOBYTE(v395) = 4;
          sub_191C50C08();
          v110 = v376;
          v111 = v386;
          sub_191CC71C8();
          if (v111)
          {
            goto LABEL_7;
          }

          LOBYTE(v395) = 0;
          v112 = v358;
          v113 = sub_191CC7228();
          v167 = v110;
          v168 = v317;
          *v317 = v113;
          v168[1] = v169;
          v382 = v169;
          LOBYTE(v395) = 1;
          v170 = sub_191CC7238();
          v386 = 0;
          v187 = v170;
          sub_191C51948(0);
          v380 = v188;
          v189 = v188[16];
          *(v168 + 16) = v187 & 1;
          sub_191CC6148();
          LOBYTE(v395) = 2;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          v381 = v189;
          v190 = v386;
          sub_191CC7218();
          if (v190)
          {
            (*(v336 + 8))(v167, v112);
            (*(v86 + 8))(v388, v87);

            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v387);
          }

          LOBYTE(v395) = 3;
          *(v317 + *(v380 + 80)) = sub_191CC7288();
          LOBYTE(v395) = 4;
          *(v317 + *(v380 + 96)) = sub_191CC7288();
          LOBYTE(v395) = 5;
          *(v317 + *(v380 + 112)) = sub_191CC7288();
          LOBYTE(v395) = 6;
          v230 = sub_191CC7228();
          v264 = (v317 + *(v380 + 128));
          *v264 = v230;
          v264[1] = v265;
          sub_191C2D540(0);
          LOBYTE(v395) = 7;
          sub_191C57604();
          sub_191CC7268();
          v275 = *(v380 + 160);
          sub_191C51B48(0);
          LOBYTE(v395) = 8;
          sub_191C576AC();
          v386 = v275;
          sub_191CC7268();
          v283 = *(v380 + 176);
          LOBYTE(v395) = 9;
          v379 = v283;
          sub_191CC7268();
          v289 = *(v380 + 192);
          sub_191C51BDC(0);
          LOBYTE(v395) = 10;
          sub_191C57754(&qword_1EADCBF30, sub_191C577CC, MEMORY[0x1E69E7390], MEMORY[0x1E69E5E58]);
          v378 = v289;
          sub_191CC7268();
          v293 = *(v380 + 208);
          LOBYTE(v395) = 11;
          v377 = v293;
          sub_191CC7218();
          sub_191C62404(0, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
          LOBYTE(v395) = 12;
          sub_191C57820();
          sub_191CC7218();
          (*(v336 + 8))(v376, v358);
          (*(v86 + 8))(v388, v87);
          swift_unknownObjectRelease();
          v257 = v317;
          goto LABEL_67;
        case 5:
          LOBYTE(v395) = 5;
          sub_191C50AD8();
          v132 = v386;
          sub_191CC71C8();
          if (v132)
          {
            goto LABEL_7;
          }

          sub_191C516B4(0);
          v134 = v133;
          v135 = swift_allocBox();
          v381 = v136;
          v382 = v135;
          LOBYTE(v395) = 0;
          *v136 = sub_191CC7238() & 1;
          LOBYTE(v395) = 1;
          v178 = sub_191CC71E8();
          v202 = v381;
          *(v381 + 8) = v178;
          *(v202 + 16) = v203;
          LOBYTE(v395) = 2;
          v204 = sub_191CC71E8();
          v217 = v381;
          *(v381 + 24) = v204;
          *(v217 + 32) = v218;
          LOBYTE(v395) = 3;
          v219 = sub_191CC7228();
          v234 = v134;
          v235 = v134[24];
          v236 = v381;
          *(v381 + 40) = v219;
          *(v236 + 48) = v237;
          sub_191CC6148();
          LOBYTE(v395) = 4;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          v380 = v235;
          sub_191CC7218();
          v252 = v234[28];
          v253 = sub_191CC61A8();
          LOBYTE(v395) = 5;
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v376 = v252;
          v378 = v253;
          sub_191CC7268();
          LOBYTE(v395) = 6;
          v258 = sub_191CC7228();
          v266 = (v381 + v234[32]);
          v267 = v234[36];
          *v266 = v258;
          v266[1] = v268;
          type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
          LOBYTE(v395) = 7;
          sub_191C46B48(&qword_1EADCBF08, type metadata accessor for HKCloudSync.Show.SyncIdentity, &protocol conformance descriptor for HKCloudSync.Show.SyncIdentity);
          v375 = v267;
          sub_191CC7218();
          LOBYTE(v395) = 8;
          *(v381 + v234[40]) = sub_191CC7238() & 1;
          LOBYTE(v395) = 9;
          v276 = sub_191CC71E8();
          v290 = (v381 + v234[44]);
          v291 = v234[48];
          *v290 = v276;
          v290[1] = v292;
          v374 = v290;
          LOBYTE(v395) = 10;
          v373 = v291;
          sub_191CC7218();
          LOBYTE(v395) = 11;
          v294 = sub_191CC7228();
          v295 = (v381 + v234[52]);
          *v295 = v294;
          v295[1] = v296;
          v372 = v295;
          LOBYTE(v395) = 12;
          v297 = sub_191CC7228();
          v298 = (v381 + v234[56]);
          v299 = v234[60];
          *v298 = v297;
          v298[1] = v300;
          v371 = v298;
          type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
          LOBYTE(v395) = 13;
          sub_191C46B48(&qword_1EADCBF20, type metadata accessor for HKCloudSync.Show.ShardPredicate, &protocol conformance descriptor for HKCloudSync.Show.ShardPredicate);
          v370 = v299;
          sub_191CC7218();
          LOBYTE(v395) = 14;
          v301 = sub_191CC71E8();
          v302 = (v381 + v234[64]);
          *v302 = v301;
          v302[1] = v303;
          LOBYTE(v395) = 15;
          v304 = sub_191CC71E8();
          v305 = (v381 + v234[68]);
          *v305 = v304;
          v305[1] = v306;
          LOBYTE(v395) = 16;
          v307 = sub_191CC71E8();
          v386 = 0;
          v308 = (v381 + v234[72]);
          v309 = v234[76];
          *v308 = v307;
          v308[1] = v310;
          LOBYTE(v395) = 17;
          sub_191C46B48(&qword_1EADCBBF0, type metadata accessor for HKCloudSync.Show.RecordDetail, &protocol conformance descriptor for HKCloudSync.Show.RecordDetail);
          v369 = v309;
          v311 = v386;
          sub_191CC7218();
          v386 = v311;
          if (v311)
          {
            (*(v338 + 8))(v377, v379);
            (*(v86 + 8))(v388, v385);
            swift_unknownObjectRelease();

            v312 = v381;
            sub_191C48D60(&v370[v381], sub_191C50B60);

            sub_191C48D60(&v373[v312], sub_191C50BB4);

            sub_191C48D60(&v375[v312], sub_191C50BB4);

            (*(*(v378 - 1) + 8))(&v376[v312]);
            sub_191C48D60(v312 + v380, sub_191C47DA4);

            swift_deallocBox();
            return __swift_destroy_boxed_opaque_existential_0(v387);
          }

          v313 = v234[80];
          LOBYTE(v395) = 18;
          v368 = v313;
          sub_191CC7218();
          v386 = 0;
          LOBYTE(v395) = 19;
          sub_191CC7218();
          (*(v338 + 8))(v377, v379);
          (*(v86 + 8))(v388, v385);
          swift_unknownObjectRelease();
          v155 = v319;
          *v319 = v382;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        case 6:
          LOBYTE(v395) = 6;
          sub_191C50A84();
          v140 = v369;
          v141 = v386;
          sub_191CC71C8();
          if (v141)
          {
            goto LABEL_7;
          }

          sub_191CC61A8();
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v115 = v339;
          v142 = v346;
          sub_191CC7268();
          (*(v331 + 8))(v140, v142);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          goto LABEL_51;
        case 7:
          LOBYTE(v395) = 7;
          sub_191C50A30();
          v126 = v386;
          sub_191CC71C8();
          if (v126)
          {
            goto LABEL_7;
          }

          LOBYTE(v395) = 0;
          v127 = sub_191CC7228();
          v172 = v326;
          *v326 = v127;
          v172[1] = v173;
          v386 = v173;
          LOBYTE(v395) = 1;
          v172[2] = sub_191CC7228();
          v172[3] = v196;
          v382 = v196;
          LOBYTE(v395) = 2;
          v172[4] = sub_191CC7258();
          LOBYTE(v395) = 3;
          v172[5] = sub_191CC7228();
          v172[6] = v233;
          v381 = v233;
          LOBYTE(v395) = 4;
          v248 = sub_191CC7228();
          v250 = v249;
          sub_191C5157C(0);
          v251 = v326;
          v326[7] = v248;
          v251[8] = v250;
          sub_191CC6148();
          LOBYTE(v395) = 5;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          sub_191CC7268();
          (*(v359 + 8))(v373, v356);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v257 = v326;
          goto LABEL_67;
        case 8:
          LOBYTE(v395) = 8;
          sub_191C509DC();
          v148 = v386;
          sub_191CC71C8();
          if (v148)
          {
            goto LABEL_7;
          }

          v149 = v87;
          LOBYTE(v395) = 0;
          v150 = sub_191CC7228();
          v182 = v325;
          *v325 = v150;
          v182[1] = v183;
          v382 = v183;
          LOBYTE(v395) = 1;
          v182[2] = sub_191CC7228();
          v182[3] = v207;
          v381 = v207;
          LOBYTE(v395) = 2;
          v182[4] = sub_191CC7228();
          v182[5] = v225;
          v380 = v225;
          LOBYTE(v395) = 3;
          v226 = sub_191CC7258();
          v386 = 0;
          v238 = v226;
          sub_191C51428(0);
          v378 = v239;
          v240 = *(v239 + 24);
          v182[6] = v238;
          sub_191CC61A8();
          LOBYTE(v395) = 4;
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v379 = v240;
          v241 = v386;
          sub_191CC7268();
          if (v241)
          {
            (*(v360 + 8))(v374, v357);
            (*(v86 + 8))(v88, v149);

            goto LABEL_55;
          }

          LOBYTE(v395) = 5;
          *(v325 + *(v378 + 28)) = sub_191CC7258();
          sub_191CC6148();
          LOBYTE(v395) = 6;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          sub_191CC7268();
          (*(v360 + 8))(v374, v357);
          (*(v86 + 8))(v88, v149);
          swift_unknownObjectRelease();
          v257 = v325;
          goto LABEL_67;
        case 9:
          LOBYTE(v395) = 9;
          sub_191C50988();
          v117 = v386;
          sub_191CC71C8();
          if (v117)
          {
            goto LABEL_7;
          }

          sub_191C5132C(0);
          sub_191C5755C();
          v118 = v347;
          sub_191CC7218();
          (*(v332 + 8))(v83, v118);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v165 = v321;
          *v321 = v395;
          goto LABEL_36;
        case 10:
          LOBYTE(v395) = 10;
          sub_191C50934();
          v143 = v372;
          v144 = v386;
          sub_191CC71C8();
          if (v144)
          {
            goto LABEL_7;
          }

          v145 = v87;
          LOBYTE(v395) = 0;
          v146 = v354;
          v147 = sub_191CC7228();
          v179 = v327;
          *v327 = v147;
          v179[1] = v180;
          v382 = v180;
          LOBYTE(v395) = 1;
          v181 = v143;
          v179[2] = sub_191CC7228();
          v179[3] = v205;
          v381 = v205;
          LOBYTE(v395) = 2;
          v206 = sub_191CC7228();
          v386 = 0;
          v220 = v206;
          v222 = v221;
          sub_191C51218(0);
          v378 = v223;
          v379 = v222;
          v380 = *(v223 + 20);
          v179[4] = v220;
          v179[5] = v222;
          type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
          LOBYTE(v395) = 3;
          sub_191C46B48(&qword_1EADCBF08, type metadata accessor for HKCloudSync.Show.SyncIdentity, &protocol conformance descriptor for HKCloudSync.Show.SyncIdentity);
          v224 = v386;
          sub_191CC7218();
          if (v224)
          {
            (*(v352 + 8))(v181, v146);
            (*(v86 + 8))(v88, v145);

LABEL_55:

            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v387);
          }

          v386 = *(v378 + 24);
          sub_191CC6148();
          LOBYTE(v395) = 4;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          sub_191CC7268();
          (*(v352 + 8))(v372, v354);
          (*(v86 + 8))(v88, v145);
          swift_unknownObjectRelease();
          v257 = v327;
LABEL_67:
          swift_storeEnumTagMultiPayload();
          v269 = v257;
          v155 = v319;
          sub_191C627D4(v269, v319, type metadata accessor for HKCloudSync.Show.RecordDetail);
          goto LABEL_53;
        case 11:
          LOBYTE(v395) = 11;
          sub_191C508E0();
          v107 = v386;
          sub_191CC71C8();
          if (v107)
          {
            goto LABEL_7;
          }

          LOBYTE(v395) = 0;
          v108 = v350;
          v109 = sub_191CC7228();
          v165 = v324;
          *v324 = v109;
          v165[1] = v166;
          v386 = v166;
          LOBYTE(v395) = 1;
          sub_191C57508();
          sub_191CC7268();
          sub_191C51150(0);
          sub_191CC6148();
          LOBYTE(v395) = 2;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          v186 = v378;
          sub_191CC7268();
          (*(v362 + 8))(v186, v108);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          goto LABEL_36;
        case 12:
          LOBYTE(v395) = 12;
          sub_191C5088C();
          v114 = v386;
          sub_191CC71C8();
          if (v114)
          {
            goto LABEL_7;
          }

          sub_191CC6148();
          LOBYTE(v395) = 0;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          v115 = v340;
          v116 = v351;
          sub_191CC7218();
          sub_191C50FB0(0);
          sub_191C51054(0);
          LOBYTE(v395) = 1;
          sub_191C57460();
          sub_191CC7218();
          (*(v334 + 8))(v82, v116);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
LABEL_51:
          swift_storeEnumTagMultiPayload();
          v195 = v115;
          goto LABEL_52;
        case 13:
          LOBYTE(v395) = 13;
          sub_191C50838();
          v137 = v371;
          v138 = v386;
          sub_191CC71C8();
          if (v138)
          {
            goto LABEL_7;
          }

          sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_191C573DC(&qword_1EADCBEF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          v139 = v349;
          sub_191CC7268();
          (*(v333 + 8))(v137, v139);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v165 = v323;
          *v323 = v395;
          goto LABEL_36;
        case 14:
          LOBYTE(v395) = 14;
          sub_191C507B0();
          v104 = v375;
          v105 = v386;
          sub_191CC71C8();
          if (v105)
          {
            goto LABEL_7;
          }

          LOBYTE(v395) = 0;
          v106 = sub_191CC7228();
          v386 = 0;
          v157 = v106;
          v159 = v158;
          sub_191C50E00(0);
          v381 = v160;
          v161 = *(v160 + 12);
          v162 = v328;
          *v328 = v157;
          v162[1] = v159;
          v382 = v159;
          v163 = sub_191CC61A8();
          LOBYTE(v395) = 1;
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v380 = v161;
          v164 = v386;
          sub_191CC7268();
          if (v164)
          {
            (*(v337 + 8))(v104, v363);
            (*(v86 + 8))(v388, v385);

            goto LABEL_8;
          }

          v184 = v381;
          v185 = *(v381 + 64);
          LOBYTE(v395) = 2;
          v379 = v185;
          sub_191CC7218();
          LOBYTE(v395) = 3;
          v208 = sub_191CC71E8();
          v227 = (v328 + v184[20]);
          *v227 = v208;
          v227[1] = v228;
          v378 = v228;
          LOBYTE(v395) = 4;
          v229 = sub_191CC71E8();
          v242 = (v328 + v184[24]);
          *v242 = v229;
          v242[1] = v243;
          LOBYTE(v395) = 5;
          v244 = sub_191CC71E8();
          v254 = (v328 + v184[28]);
          *v254 = v244;
          v254[1] = v255;
          LOBYTE(v395) = 6;
          v256 = sub_191CC71E8();
          v386 = 0;
          v259 = (v328 + v184[32]);
          *v259 = v256;
          v259[1] = v260;
          LOBYTE(v395) = 7;
          v261 = v386;
          v262 = sub_191CC71E8();
          v377 = v263;
          v386 = v261;
          if (v261)
          {
            (*(v337 + 8))(v375, v363);
            (*(v86 + 8))(v388, v385);
            swift_unknownObjectRelease();
LABEL_73:

            v282 = v328;
            sub_191C48D60(v328 + v379, sub_191C50804);
            (*(*(v163 - 8) + 8))(&v282[v380], v163);

            return __swift_destroy_boxed_opaque_existential_0(v387);
          }

          v270 = (v328 + v184[36]);
          v271 = v377;
          *v270 = v262;
          v270[1] = v271;
          LOBYTE(v395) = 8;
          v272 = v386;
          v273 = sub_191CC71E8();
          v376 = v274;
          v386 = v272;
          if (v272)
          {
            (*(v337 + 8))(v375, v363);
            (*(v86 + 8))(v388, v385);
            swift_unknownObjectRelease();
LABEL_72:

            goto LABEL_73;
          }

          v277 = (v328 + v184[40]);
          v278 = v376;
          *v277 = v273;
          v277[1] = v278;
          LOBYTE(v395) = 9;
          v279 = v386;
          v280 = sub_191CC71E8();
          v374 = v281;
          v386 = v279;
          if (v279)
          {
            (*(v337 + 8))(v375, v363);
            (*(v86 + 8))(v388, v385);
            swift_unknownObjectRelease();

            goto LABEL_72;
          }

          v284 = v280;
          v285 = v184[44];
          v286 = v328;
          v287 = (v328 + v285);
          (*(v337 + 8))(v375, v363);
          (*(v86 + 8))(v388, v385);
          swift_unknownObjectRelease();
          v288 = v374;
          *v287 = v284;
          v287[1] = v288;
          swift_storeEnumTagMultiPayload();
          v155 = v319;
          sub_191C627D4(v286, v319, type metadata accessor for HKCloudSync.Show.RecordDetail);
LABEL_53:
          v156 = v364;
LABEL_54:
          sub_191C627D4(v155, v156, type metadata accessor for HKCloudSync.Show.RecordDetail);
          break;
        case 15:
          LOBYTE(v395) = 15;
          sub_191C5075C();
          v122 = v386;
          sub_191CC71C8();
          if (v122)
          {
            goto LABEL_7;
          }

          LOBYTE(v395) = 0;
          v381 = sub_191CC7228();
          v386 = v151;
          LOBYTE(v395) = 1;
          v380 = sub_191CC7228();
          v192 = v191;
          LOBYTE(v395) = 2;
          v378 = sub_191CC7228();
          v379 = v209;
          LOBYTE(v395) = 3;
          v377 = sub_191CC7228();
          v232 = v231;
          sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          LOBYTE(v390) = 4;
          sub_191C573DC(&qword_1EADCBEF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          sub_191CC7268();
          (*(v353 + 8))(v84, v355);
          (*(v86 + 8))(v388, v385);
          swift_unknownObjectRelease();
          v245 = v395;
          v165 = v320;
          v246 = v386;
          *v320 = v381;
          v165[1] = v246;
          v165[2] = v380;
          v165[3] = v192;
          v247 = v379;
          v165[4] = v378;
          v165[5] = v247;
          v165[6] = v377;
          v165[7] = v232;
          v165[8] = v245;
LABEL_36:
          swift_storeEnumTagMultiPayload();
          v195 = v165;
LABEL_52:
          v155 = v319;
          sub_191C627D4(v195, v319, type metadata accessor for HKCloudSync.Show.RecordDetail);
          goto LABEL_53;
        case 16:
          LOBYTE(v395) = 16;
          sub_191C50708();
          v100 = v370;
          v101 = v386;
          sub_191CC71C8();
          if (v101)
          {
            goto LABEL_7;
          }

          v102 = v348;
          v103 = sub_191CC7228();
          v153 = v152;
          (*(v335 + 8))(v100, v102);
          (*(v86 + 8))(v88, v87);
          swift_unknownObjectRelease();
          v154 = v322;
          *v322 = v103;
          *(v154 + 8) = v153;
          swift_storeEnumTagMultiPayload();
          v155 = v319;
          sub_191C627D4(v154, v319, type metadata accessor for HKCloudSync.Show.RecordDetail);
          v156 = v364;
          goto LABEL_54;
        default:
          goto LABEL_6;
      }
    }

    else
    {
LABEL_6:
      v96 = sub_191CC7028();
      swift_allocError();
      v98 = v97;
      sub_191C2CAB4(0);
      *v98 = v85;
      sub_191CC71D8();
      sub_191CC7008();
      (*(*(v96 - 8) + 104))(v98, *MEMORY[0x1E69E6AF8], v96);
      swift_willThrow();
LABEL_7:
      (*(v86 + 8))(v88, v87);
LABEL_8:
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v387);
}

uint64_t sub_191C573DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_191C62404(255, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C57460()
{
  result = qword_1EADCBEF8;
  if (!qword_1EADCBEF8)
  {
    sub_191C51054(255);
    sub_191C46B48(&qword_1EADCBF00, type metadata accessor for HKCloudSync.Show.Log, &protocol conformance descriptor for HKCloudSync.Show.Log);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBEF8);
  }

  return result;
}

unint64_t sub_191C57508()
{
  result = qword_1EADCC870;
  if (!qword_1EADCC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC870);
  }

  return result;
}

unint64_t sub_191C5755C()
{
  result = qword_1EADCBF10;
  if (!qword_1EADCBF10)
  {
    sub_191C5132C(255);
    sub_191C46B48(&qword_1EADCBF18, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone, &protocol conformance descriptor for HKCloudSync.Show.AttachmentReferenceTombstone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF10);
  }

  return result;
}

unint64_t sub_191C57604()
{
  result = qword_1EADCB450;
  if (!qword_1EADCB450)
  {
    sub_191C2D540(255);
    sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB450);
  }

  return result;
}

unint64_t sub_191C576AC()
{
  result = qword_1EADCBF28;
  if (!qword_1EADCBF28)
  {
    sub_191C51B48(255);
    sub_191C46B48(&qword_1EADCBF08, type metadata accessor for HKCloudSync.Show.SyncIdentity, &protocol conformance descriptor for HKCloudSync.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF28);
  }

  return result;
}

uint64_t sub_191C57754(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_191C51BDC(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C577CC()
{
  result = qword_1EADCBF38;
  if (!qword_1EADCBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF38);
  }

  return result;
}

unint64_t sub_191C57820()
{
  result = qword_1EADCBF40;
  if (!qword_1EADCBF40)
  {
    sub_191C62404(255, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
    sub_191C578BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF40);
  }

  return result;
}

unint64_t sub_191C578BC()
{
  result = qword_1EADCBF48;
  if (!qword_1EADCBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF48);
  }

  return result;
}

uint64_t HKCloudSync.Show.SyncIdentity.instanceDiscriminator.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKCloudSync.Show.SyncIdentity(0) + 24));

  return v1;
}

uint64_t HKCloudSync.Show.SyncIdentity.instanceDiscriminator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKCloudSync.Show.SyncIdentity(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.SyncIdentity.init(hardwareIdentifier:databaseIdentifier:instanceDiscriminator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_191CC61A8();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  result = (v11)(a5 + *(v12 + 20), a2, v10);
  v14 = (a5 + *(v12 + 24));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t static HKCloudSync.Show.SyncIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_191CC73E8();
}

unint64_t sub_191C57C38()
{
  v1 = 0xD000000000000015;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_191C57C8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C68C4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C57CB4(uint64_t a1)
{
  v2 = sub_191C57F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C57CF0(uint64_t a1)
{
  v2 = sub_191C57F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.SyncIdentity.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBF58, sub_191C57F54, &_s4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C57F54();
  sub_191CC7548();
  v12 = 0;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_191CC7348();
  if (!v1)
  {
    type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
    v11 = 1;
    sub_191CC7348();
    v10 = 2;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C57F54()
{
  result = qword_1EADCBF60;
  if (!qword_1EADCBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF60);
  }

  return result;
}

uint64_t HKCloudSync.Show.SyncIdentity.hash(into:)(uint64_t a1)
{
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  sub_191CC66A8();

  return sub_191CC67E8();
}

uint64_t HKCloudSync.Show.SyncIdentity.hashValue.getter()
{
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  sub_191CC66A8();
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.SyncIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_191CC61A8();
  v28 = *(v31 - 8);
  v3 = MEMORY[0x1EEE9AC00](v31);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v25 - v6;
  sub_191C62544(0, &qword_1EADCBF68, sub_191C57F54, &_s4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v33 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C57F54();
  v32 = v9;
  v13 = v34;
  sub_191CC7528();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14 = v29;
  v34 = a1;
  v25 = v10;
  v26 = v12;
  v37 = 0;
  sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v15 = v30;
  v16 = v31;
  sub_191CC7268();
  v30 = *(v28 + 32);
  (v30)(v26, v15, v16);
  v36 = 1;
  v17 = v5;
  sub_191CC7268();
  v18 = v26;
  (v30)(&v26[*(v25 + 20)], v17, v16);
  v35 = 2;
  v19 = v32;
  v20 = sub_191CC7228();
  v22 = v21;
  (*(v14 + 8))(v19, v33);
  v23 = (v18 + *(v25 + 24));
  *v23 = v20;
  v23[1] = v22;
  sub_191C622F4(v18, v27, type metadata accessor for HKCloudSync.Show.SyncIdentity);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return sub_191C48D60(v18, type metadata accessor for HKCloudSync.Show.SyncIdentity);
}

uint64_t sub_191C585E8(uint64_t a1)
{
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  sub_191CC66A8();
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C586B8(uint64_t a1, uint64_t a2)
{
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  sub_191CC66A8();

  return sub_191CC67E8();
}

uint64_t sub_191C5877C(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  sub_191CC66A8();
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C58848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_191CC6178() & 1) == 0 || (sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_191CC73E8();
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.schemaIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.schemaIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.init(entityIdentifier:schemaIdentifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_191C58A38()
{
  v1 = 1701667182;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_191C58A94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C68D74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C58ABC(uint64_t a1)
{
  v2 = sub_191C61BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C58AF8(uint64_t a1)
{
  v2 = sub_191C61BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBF70, sub_191C61BB4, &_s4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v12[3] = v1[2];
  v12[4] = v8;
  v12[1] = v1[4];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61BB4();
  sub_191CC7548();
  v15 = 0;
  v10 = v12[5];
  sub_191CC7338();
  if (!v10)
  {
    v14 = 1;
    sub_191CC72C8();
    v13 = 2;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  MEMORY[0x193B02C70](*v1);
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  return sub_191CC67E8();
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  sub_191C62544(0, &qword_1EADCBF80, sub_191C61BB4, &_s4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61BB4();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = v6;
    v10 = v25;
    v28 = 0;
    v11 = sub_191CC7258();
    v27 = 1;
    v12 = sub_191CC71E8();
    v14 = v13;
    v24 = v12;
    v26 = 2;
    v15 = sub_191CC7228();
    v18 = v17;
    v19 = *(v9 + 8);
    v23 = v15;
    v19(v8, v5);
    v20 = v23;
    v21 = v24;
    *v10 = v11;
    v10[1] = v21;
    v10[2] = v14;
    v10[3] = v20;
    v10[4] = v18;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_191C590D8()
{
  v1 = *v0;
  v2 = v0[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C59174(uint64_t a1)
{
  v2 = v1[2];
  MEMORY[0x193B02C70](*v1);
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  return sub_191CC67E8();
}

uint64_t sub_191C59204(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v3)
  {
    sub_191CC67E8();
  }

  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.SyncEntityVersion.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 HKCloudSync.Show.SyncEntityVersion.identifier.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

__n128 HKCloudSync.Show.SyncEntityVersion.init(identifier:currentVersion:minimumVersion:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = v4;
  *(a4 + 40) = a2;
  *(a4 + 44) = a3;
  return result;
}

uint64_t sub_191C593CC()
{
  v1 = 0x56746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x566D756D696E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_191C59444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C68EA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C5946C(uint64_t a1)
{
  v2 = sub_191C61C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C594A8(uint64_t a1)
{
  v2 = sub_191C61C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.SyncEntityVersion.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBF88, sub_191C61C08, &_s4ShowV17SyncEntityVersionV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *(v1 + 4);
  LODWORD(v6) = *(v1 + 11);
  v19 = *(v1 + 10);
  v12[3] = v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61C08();
  v9 = *v1;
  v13 = v1[1];
  v14 = v9;

  sub_191CC7548();
  v17 = v13;
  v16 = v14;
  v18 = v8;
  v20 = 0;
  sub_191C51E60();
  v10 = v15;
  sub_191CC7348();
  if (v10)
  {
  }

  else
  {

    LOBYTE(v16) = 1;
    sub_191CC7358();
    LOBYTE(v16) = 2;
    sub_191CC7358();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKCloudSync.Show.SyncEntityVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_191C62544(0, &qword_1EADCBF98, sub_191C61C08, &_s4ShowV17SyncEntityVersionV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61C08();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v18;
  v22 = 0;
  sub_191C577CC();
  sub_191CC7268();
  v16 = v19;
  v17 = v20;
  v11 = v21;
  LOBYTE(v19) = 1;
  v12 = v9;
  LODWORD(v9) = sub_191CC7278();
  LOBYTE(v19) = 2;
  v14 = sub_191CC7278();
  (*(v12 + 8))(v8, v5);
  v15 = v17;
  *v10 = v16;
  *(v10 + 16) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v9;
  *(v10 + 44) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKCloudSync.Show.ShardPredicate.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKCloudSync.Show.ShardPredicate.type.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShardPredicate.init(type:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  v11 = *(v10 + 20);
  v12 = sub_191CC6148();
  v13 = *(*(v12 - 8) + 56);
  v13(&a5[v11], 1, 1, v12);
  v14 = *(v10 + 24);
  v13(&a5[v14], 1, 1, v12);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_191C47F88(a3, &a5[v11], sub_191C47DA4);
  return sub_191C47F88(a4, &a5[v14], sub_191C47DA4);
}

uint64_t sub_191C59D30()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_191C59D88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C68FD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C59DB0(uint64_t a1)
{
  v2 = sub_191C621F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C59DEC(uint64_t a1)
{
  v2 = sub_191C621F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.ShardPredicate.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBFA0, sub_191C621F8, &_s4ShowV14ShardPredicateV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C621F8();
  sub_191CC7548();
  v12 = 0;
  sub_191CC7308();
  if (!v1)
  {
    type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
    v11 = 1;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_191CC72F8();
    v10 = 2;
    sub_191CC72F8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKCloudSync.Show.ShardPredicate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_191CC6148();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C47DA4(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_191CC67E8();
  v13 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  sub_191C622F4(v2 + *(v13 + 20), v12, sub_191C47DA4);
  v14 = *(v4 + 48);
  if (v14(v12, 1, v3) == 1)
  {
    sub_191CC74E8();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_191CC74E8();
    sub_191C46B48(&qword_1EADCBFB0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_191CC66A8();
    (*(v4 + 8))(v6, v3);
  }

  sub_191C622F4(v2 + *(v13 + 24), v10, sub_191C47DA4);
  if (v14(v10, 1, v3) == 1)
  {
    return sub_191CC74E8();
  }

  (*(v4 + 32))(v6, v10, v3);
  sub_191CC74E8();
  sub_191C46B48(&qword_1EADCBFB0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_191CC66A8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t HKCloudSync.Show.ShardPredicate.hashValue.getter()
{
  sub_191CC74C8();
  HKCloudSync.Show.ShardPredicate.hash(into:)(v1);
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.ShardPredicate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_191C47DA4(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  sub_191C62544(0, &qword_1EADCBFB8, sub_191C621F8, &_s4ShowV14ShardPredicateV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 28);
  v16 = sub_191CC6148();
  v17 = *(*(v16 - 8) + 56);
  v33 = v15;
  v17(v14 + v15, 1, 1, v16);
  v32 = *(v12 + 32);
  v17(v14 + v32, 1, 1, v16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C621F8();
  v18 = v31;
  sub_191CC7528();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_191C48D60(v14 + v33, sub_191C47DA4);
    v25 = v14 + v32;
    v24 = sub_191C47DA4;
  }

  else
  {
    v19 = a1;
    v36 = 0;
    v20 = v29;
    *v14 = sub_191CC7228();
    v14[1] = v22;
    v31 = v22;
    v35 = 1;
    v26 = sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_191CC7218();
    sub_191C47F88(v7, v14 + v33, sub_191C47DA4);
    v34 = 2;
    v23 = v28;
    sub_191CC7218();
    (*(v20 + 8))(v10, v30);
    sub_191C47F88(v23, v14 + v32, sub_191C47DA4);
    sub_191C622F4(v14, v27, type metadata accessor for HKCloudSync.Show.ShardPredicate);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = type metadata accessor for HKCloudSync.Show.ShardPredicate;
    v25 = v14;
  }

  return sub_191C48D60(v25, v24);
}

uint64_t sub_191C5A830()
{
  sub_191CC74C8();
  HKCloudSync.Show.ShardPredicate.hash(into:)(v1);
  return sub_191CC7508();
}

uint64_t sub_191C5A874(uint64_t a1)
{
  sub_191CC74C8();
  HKCloudSync.Show.ShardPredicate.hash(into:)(v2);
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.schemaIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 20));

  return v1;
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.schemaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 24);
  v4 = sub_191CC6148();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 24);
  v4 = sub_191CC6148();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.init(identifier:schemaIdentifier:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_191CC61A8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = *(v11 + 24);
  v14 = sub_191CC6148();
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v13, a4, v14);
}

unint64_t sub_191C5ABC0()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_191C5AC2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C690F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C5AC54(uint64_t a1)
{
  v2 = sub_191C6224C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C5AC90(uint64_t a1)
{
  v2 = sub_191C6224C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBFC0, sub_191C6224C, &_s4ShowV28AttachmentReferenceTombstoneV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6224C();
  sub_191CC7548();
  v12 = 0;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_191CC7348();
  if (!v1)
  {
    type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
    v11 = 1;
    sub_191CC7308();
    v10 = 2;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_191CC6148();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_191CC61A8();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBFD0, sub_191C6224C, &_s4ShowV28AttachmentReferenceTombstoneV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v30 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6224C();
  v12 = v31;
  sub_191CC7528();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v28;
  v31 = v9;
  v34 = 0;
  sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_191CC7268();
  v14 = *(v27 + 32);
  v22 = v11;
  v14(v11, v29, v4);
  v33 = 1;
  v15 = sub_191CC7228();
  v29 = v4;
  v16 = &v22[*(v31 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v32 = 2;
  sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v18 = v25;
  v19 = v26;
  sub_191CC7268();
  (*(v13 + 8))(v8, v30);
  v20 = v22;
  (*(v23 + 32))(&v22[*(v31 + 24)], v18, v19);
  sub_191C622F4(v20, v24, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_191C48D60(v20, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
}

uint64_t sub_191C5B498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_191C5B550(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 20);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t HKCloudSync.Show.Log.init(event:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for HKCloudSync.Show.Log(0) + 20);
  v7 = sub_191CC6148();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_191C5B6A4()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x746E657665;
  }
}

uint64_t sub_191C5B6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C5B7C0(uint64_t a1)
{
  v2 = sub_191C622A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C5B7FC(uint64_t a1)
{
  v2 = sub_191C622A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Log.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBFD8, sub_191C622A0, &_s4ShowV3LogV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C622A0();
  sub_191CC7548();
  v11 = 0;
  sub_191CC7308();
  if (!v1)
  {
    type metadata accessor for HKCloudSync.Show.Log(0);
    v10 = 1;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKCloudSync.Show.Log.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_191CC6148();
  v19 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBFE8, sub_191C622A0, &_s4ShowV3LogV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v23 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = type metadata accessor for HKCloudSync.Show.Log(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C622A0();
  v11 = v24;
  sub_191CC7528();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = a1;
  v13 = v21;
  v12 = v22;
  v26 = 0;
  *v10 = sub_191CC7228();
  v10[1] = v14;
  v18[0] = v10;
  v18[1] = v14;
  v25 = 1;
  sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_191CC7268();
  (*(v13 + 8))(v7, v23);
  v15 = *(v8 + 20);
  v16 = v18[0];
  (*(v19 + 32))(v18[0] + v15, v4, v12);
  sub_191C622F4(v16, v20, type metadata accessor for HKCloudSync.Show.Log);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_191C48D60(v16, type metadata accessor for HKCloudSync.Show.Log);
}

uint64_t sub_191C5BDC8()
{
  v1 = 0x49746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0x6F7469736F706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_191C5BE34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C6921C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C5BE5C(uint64_t a1)
{
  v2 = sub_191C6235C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C5BE98(uint64_t a1)
{
  v2 = sub_191C6235C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBFF0, sub_191C6235C, &_s4ShowV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v10 = v1[5];
  v19 = v1[4];
  v20 = v9;
  v11 = v1[7];
  v17 = v1[6];
  v18 = v10;
  v15 = v1[8];
  v16 = v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6235C();
  sub_191CC7548();
  LOBYTE(v24) = 0;
  v12 = v23;
  sub_191CC7338();
  if (!v12)
  {
    v13 = v15;
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    v28 = v18;
    v29 = v17;
    v30 = v16;
    v31 = 1;
    sub_191C42E60(v22, v21, v20, v19, v18, v17, v16);
    sub_191C623B0();
    sub_191CC72F8();
    sub_191C42F18(v24, v25, v26, v27, v28, v29, v30);
    v24 = v13;
    v31 = 2;
    sub_191C62404(0, &qword_1EADCC008, &type metadata for HKCloudSync.Show.Repository, MEMORY[0x1E69E62F8]);
    sub_191C62454();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

void HKCloudSync.Show.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C62544(0, &qword_1EADCC020, sub_191C6235C, &_s4ShowV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v27 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6235C();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_191C42F18(0, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    v26 = v6;
    LOBYTE(v33) = 0;
    v9 = sub_191CC7258();
    LOBYTE(v28) = 1;
    sub_191C625AC();
    sub_191CC7218();
    v21 = v9;
    v22 = a2;
    v11 = v33;
    v10 = v34;
    v12 = v35;
    v23 = v36;
    v25 = v37;
    v24 = v38;
    v13 = v39;
    sub_191C42F18(0, 0, 0, 0, 0, 0, 0);
    sub_191C62404(0, &qword_1EADCC008, &type metadata for HKCloudSync.Show.Repository, MEMORY[0x1E69E62F8]);
    v42[0] = 2;
    sub_191C62600();
    sub_191CC7268();
    (*(v26 + 8))(v8, v27);
    v14 = v43;
    v15 = v21;
    *&v28 = v21;
    *(&v28 + 1) = v11;
    *&v29 = v10;
    *(&v29 + 1) = v12;
    v16 = v23;
    *&v30 = v23;
    *(&v30 + 1) = v25;
    *&v31 = v24;
    *(&v31 + 1) = v13;
    v32 = v43;
    v17 = v22;
    *(v22 + 64) = v43;
    v18 = v31;
    v17[2] = v30;
    v17[3] = v18;
    v19 = v29;
    *v17 = v28;
    v17[1] = v19;
    sub_191C626F0(&v28, &v33);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v33 = v15;
    v34 = v11;
    v35 = v10;
    v36 = v12;
    v37 = v16;
    v38 = v25;
    v39 = v24;
    v40 = v13;
    v41 = v14;
    sub_191C62728(&v33);
  }
}

uint64_t HKCloudSync.Show.RecordDetail.description.getter()
{
  sub_191C50804(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v429 = &v409 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v445 = &v409 - v4;
  v434 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  v433 = *(v434 - 8);
  MEMORY[0x1EEE9AC00](v434);
  v427 = &v409 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v456 = *(v446 - 8);
  MEMORY[0x1EEE9AC00](v446);
  v441 = &v409 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C50B2C(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v440 = &v409 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v439 = &v409 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v437 = &v409 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v447 = &v409 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v454 = &v409 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v453 = &v409 - v18;
  sub_191C50B60(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v432 = &v409 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v452 = &v409 - v22;
  sub_191C50BB4(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v409 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v428 = &v409 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v431 = &v409 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v430 = &v409 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v451 = &v409 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v450 = &v409 - v35;
  v459 = sub_191CC61A8();
  v457 = *(v459 - 8);
  v36 = MEMORY[0x1EEE9AC00](v459);
  v443 = &v409 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v455 = &v409 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v449 = &v409 - v40;
  v41 = sub_191CC6148();
  v42 = *(v41 - 8);
  v460 = v41;
  v461 = v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v442 = &v409 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v458 = &v409 - v45;
  sub_191C47DA4(0);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v409 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v409 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v409 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v448 = &v409 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v60 = &v409 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v444 = &v409 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v409 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v409 - v66;
  v68 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  v435 = *(v68 - 8);
  v69 = MEMORY[0x1EEE9AC00](v68);
  v438 = &v409 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v409 - v71;
  sub_191C622F4(v0, &v409 - v71, type metadata accessor for HKCloudSync.Show.RecordDetail);
  v436 = v68;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v218 = *v72;
      v217 = *(v72 + 1);
      sub_191C52030(0);
      v220 = *&v72[*(v219 + 64)];
      sub_191C627D4(&v72[*(v219 + 48)], v67, sub_191C47DA4);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D4D0);
      v462 = v218;
      v463 = v217;
      sub_191CC70F8();

      MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2D4F0);
      sub_191C622F4(v67, v65, sub_191C47DA4);
      v222 = v460;
      v221 = v461;
      if ((*(v461 + 48))(v65, 1, v460) == 1)
      {
        v223 = 0x3E656E6F6E3CLL;
        v224 = 0xE600000000000000;
      }

      else
      {
        v347 = v458;
        (*(v221 + 32))(v458, v65, v222);
        v348 = sub_191CC6068();
        v224 = v349;
        (*(v221 + 8))(v347, v222);
        v223 = v348;
      }

      MEMORY[0x193B01F90](v223, v224);

      MEMORY[0x193B01F90](0xD000000000000011, 0x8000000191D2D510);
      v462 = v220;
      v350 = sub_191CC7398();
      MEMORY[0x193B01F90](v350);

      v122 = v465;
      sub_191C48D60(v67, sub_191C47DA4);
      return v122;
    case 2u:
      v179 = *v72;
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2D490);
      v462 = v179;
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C6283C();
      sub_191C1B784();
      v180 = sub_191CC6868();
      goto LABEL_56;
    case 3u:
      v193 = *v72;
      v192 = *(v72 + 1);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2D490);
      v462 = v193;
      v194 = MEMORY[0x1E69E6158];
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C6283C();
      sub_191C1B784();
      v195 = sub_191CC6868();
      v197 = v196;

      MEMORY[0x193B01F90](v195, v197);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D4B0);
      v198 = sub_191C4276C(v192);

      v462 = v198;
      sub_191C62404(0, &qword_1EADCAE00, v194, MEMORY[0x1E69E62F8]);
      sub_191C62758();
      v199 = sub_191CC66D8();
      v201 = v200;

      v202 = v199;
      goto LABEL_57;
    case 4u:
      v123 = *v72;
      v124 = *(v72 + 1);
      v125 = v72[16];
      sub_191C51948(0);
      v127 = v126[16];
      v128 = *&v72[v126[20]];
      v129 = *&v72[v126[28]];
      v451 = *&v72[v126[24]];
      v452 = v129;
      v130 = &v72[v126[32]];
      v131 = *v130;
      v132 = v130[1];
      v133 = *&v72[v126[36]];
      v134 = *&v72[v126[40]];
      v453 = v131;
      v454 = v134;
      v135 = *&v72[v126[48]];
      v455 = *&v72[v126[44]];
      v456 = v135;
      v457 = *&v72[v126[52]];
      v459 = *&v72[v126[56]];
      v136 = v444;
      sub_191C627D4(&v72[v127], v444, sub_191C47DA4);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](539697728, 0xE400000000000000);
      MEMORY[0x193B01F90](v123, v124);

      MEMORY[0x193B01F90](10272, 0xE200000000000000);
      if (v125)
      {
        v137 = 0x455649544341;
      }

      else
      {
        v137 = 0x6576697463616E69;
      }

      v138 = 0xE600000000000000;
      if (v125)
      {
        v139 = 0xE600000000000000;
      }

      else
      {
        v139 = 0xE800000000000000;
      }

      MEMORY[0x193B01F90](v137, v139);

      MEMORY[0x193B01F90](8236, 0xE200000000000000);
      v140 = v136;
      v141 = 0x3E656E6F6E3CLL;
      sub_191C622F4(v140, v60, sub_191C47DA4);
      v143 = v460;
      v142 = v461;
      v144 = (*(v461 + 48))(v60, 1, v460);
      v145 = 0x3E656E6F6E3CLL;
      if (v144 != 1)
      {
        v146 = v458;
        (*(v142 + 32))(v458, v60, v143);
        v147 = sub_191CC6068();
        v138 = v148;
        (*(v142 + 8))(v146, v143);
        v145 = v147;
      }

      MEMORY[0x193B01F90](v145, v138);

      MEMORY[0x193B01F90](0x203A68636F704520, 0xE800000000000000);
      v462 = v128;
      v149 = sub_191CC7398();
      MEMORY[0x193B01F90](v149);

      MEMORY[0x193B01F90](0x676E616843207C20, 0xEB00000000203A65);
      v462 = v451;
      v150 = sub_191CC7398();
      MEMORY[0x193B01F90](v150);

      MEMORY[0x193B01F90](0x646C696843207C20, 0xED0000203A6E6572);
      v462 = v452;
      v151 = sub_191CC7398();
      MEMORY[0x193B01F90](v151);

      MEMORY[0x193B01F90](0x6973726556207C20, 0xEC000000203A6E6FLL);
      MEMORY[0x193B01F90](v453, v132);

      MEMORY[0x193B01F90](0xD000000000000019, 0x8000000191D2D3C0);
      v152 = sub_191C42B04(v133);

      v462 = v152;
      sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_191C62758();
      v153 = sub_191CC66D8();
      v155 = v154;

      MEMORY[0x193B01F90](v153, v155);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D3E0);
      v156 = sub_191C4276C(v454);

      v462 = v156;
      v157 = sub_191CC66D8();
      v159 = v158;

      MEMORY[0x193B01F90](v157, v159);

      MEMORY[0x193B01F90](0xD000000000000023, 0x8000000191D2D400);
      v160 = sub_191C4276C(v455);

      v462 = v160;
      v161 = sub_191CC66D8();
      v163 = v162;

      MEMORY[0x193B01F90](v161, v163);

      MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2D430);
      v164 = sub_191C5FC60(v456);
      v166 = v165;

      MEMORY[0x193B01F90](v164, v166);

      MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2D450);
      if (v457)
      {

        v168 = sub_191C5FC60(v167);
        v170 = v169;
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v170 = 0xE600000000000000;
        v168 = 0x3E656E6F6E3CLL;
      }

      MEMORY[0x193B01F90](v168, v170);

      MEMORY[0x193B01F90](0xD00000000000001CLL, 0x8000000191D2D470);
      swift_getKeyPath();
      if (v459)
      {
        v464 = v459;
        swift_bridgeObjectRetain_n();
        swift_getAtKeyPath();
        swift_bridgeObjectRelease_n();

        v141 = v462;
        v407 = v463;
      }

      else
      {

        v407 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v141, v407);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v122 = v465;
      sub_191C48D60(v444, sub_191C47DA4);
      return v122;
    case 5u:
      v225 = *v72;
      sub_191C516B4(0);
      v227 = v226;
      v429 = v225;
      v228 = swift_projectBox();
      v414 = *v228;
      v229 = *(v228 + 2);
      v415 = *(v228 + 1);
      v411 = v229;
      v230 = *(v228 + 4);
      v417 = *(v228 + 3);
      v412 = v230;
      v231 = *(v228 + 6);
      v418 = *(v228 + 5);
      v413 = v231;
      v232 = v227[24];
      v233 = v227[28];
      v234 = &v228[v227[32]];
      v236 = *v234;
      v235 = *(v234 + 1);
      v419 = v236;
      v410 = v235;
      v420 = v228[v227[40]];
      v237 = v227[36];
      v238 = &v228[v227[44]];
      v240 = *v238;
      v239 = v238[1];
      v421 = v240;
      v442 = v239;
      v241 = v227[48];
      v242 = &v228[v227[52]];
      v244 = *v242;
      v243 = *(v242 + 1);
      v422 = v244;
      v443 = v243;
      v245 = &v228[v227[56]];
      v247 = *v245;
      v246 = *(v245 + 1);
      v423 = v247;
      v444 = v246;
      v248 = v227[60];
      v249 = &v228[v227[64]];
      v251 = *v249;
      v250 = v249[1];
      v424 = v251;
      v445 = v250;
      v252 = &v228[v227[68]];
      v254 = *v252;
      v253 = v252[1];
      v425 = v254;
      v455 = v253;
      v255 = &v228[v227[72]];
      v256 = v255[1];
      v428 = *v255;
      v257 = v227[76];
      v258 = v227[80];
      v426 = v227[84];
      v416 = sub_191C47DA4;
      sub_191C622F4(&v228[v232], v448, sub_191C47DA4);
      (*(v457 + 16))(v449, &v228[v233], v459);
      sub_191C622F4(&v228[v237], v450, sub_191C50BB4);
      v259 = &v228[v241];
      v260 = 0x3E656E6F6E3CLL;
      sub_191C622F4(v259, v451, sub_191C50BB4);
      sub_191C622F4(&v228[v248], v452, sub_191C50B60);
      v261 = &v228[v257];
      v262 = v410;
      sub_191C622F4(v261, v453, sub_191C50B2C);
      sub_191C622F4(&v228[v258], v454, sub_191C50B2C);
      sub_191C622F4(&v228[v426], v447, sub_191C50B2C);
      v465 = 0;
      v466 = 0xE000000000000000;
      v426 = v256;

      v263 = v411;

      v264 = v412;

      v265 = v413;

      sub_191CC6FC8();
      MEMORY[0x193B01F90](8235, 0xE200000000000000);
      if (v414)
      {
        v266 = 0x455649544341;
      }

      else
      {
        v266 = 0x6576697463616E49;
      }

      v267 = 0xE600000000000000;
      if (v414)
      {
        v268 = 0xE600000000000000;
      }

      else
      {
        v268 = 0xE800000000000000;
      }

      MEMORY[0x193B01F90](v266, v268);

      MEMORY[0x193B01F90](8236, 0xE200000000000000);
      if (v263)
      {
        v269 = v415;
      }

      else
      {
        v269 = 0x3E656E6F6E3CLL;
      }

      if (v263)
      {
        v270 = v263;
      }

      else
      {
        v270 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v269, v270);

      MEMORY[0x193B01F90](544108320, 0xE400000000000000);
      if (v264)
      {
        v271 = v417;
      }

      else
      {
        v271 = 0x3E656E6F6E3CLL;
      }

      if (v264)
      {
        v272 = v264;
      }

      else
      {
        v272 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v271, v272);

      MEMORY[0x193B01F90](0x203A65646F4D202CLL, 0xE800000000000000);
      MEMORY[0x193B01F90](v418, v265);

      MEMORY[0x193B01F90](0x696669646F4D202CLL, 0xEC000000203A6465);
      sub_191C622F4(v448, v55, v416);
      v274 = v460;
      v273 = v461;
      v275 = (*(v461 + 48))(v55, 1, v460);
      v276 = 0x3E656E6F6E3CLL;
      if (v275 != 1)
      {
        v277 = v458;
        (*(v273 + 32))(v458, v55, v274);
        v278 = sub_191CC6068();
        v267 = v279;
        (*(v273 + 8))(v277, v274);
        v276 = v278;
      }

      MEMORY[0x193B01F90](v276, v267);

      MEMORY[0x193B01F90](0x65726F7453207C0ALL, 0xEA0000000000203ALL);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v280 = sub_191CC7398();
      MEMORY[0x193B01F90](v280);

      MEMORY[0x193B01F90](0x72656E774F207C20, 0xEA0000000000203ALL);
      MEMORY[0x193B01F90](v419, v262);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D2E0);
      v281 = v430;
      sub_191C622F4(v450, v430, sub_191C50BB4);
      v282 = *(v456 + 48);
      v283 = v446;
      v456 += 48;
      if (v282(v281, 1, v446) == 1)
      {
        v284 = 0xE600000000000000;
        v285 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v351 = v441;
        sub_191C627D4(v281, v441, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        v462 = sub_191CC7398();
        v463 = v352;
        MEMORY[0x193B01F90](58, 0xE100000000000000);
        v353 = sub_191CC7398();
        MEMORY[0x193B01F90](v353);

        MEMORY[0x193B01F90](58, 0xE100000000000000);
        MEMORY[0x193B01F90](*(v351 + *(v283 + 24)), *(v351 + *(v283 + 24) + 8));
        v285 = v462;
        v284 = v463;
        sub_191C48D60(v351, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      }

      v354 = 2960685;
      MEMORY[0x193B01F90](v285, v284);

      MEMORY[0x193B01F90](0x6968437369207C20, 0xEC000000203A646CLL);
      if (v420)
      {
        v355 = 1702195828;
      }

      else
      {
        v355 = 0x65736C6166;
      }

      if (v420)
      {
        v356 = 0xE400000000000000;
      }

      else
      {
        v356 = 0xE500000000000000;
      }

      MEMORY[0x193B01F90](v355, v356);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D300);
      if (v442)
      {
        v357 = v421;
      }

      else
      {
        v357 = 2960685;
      }

      v358 = 0xE300000000000000;
      if (v442)
      {
        v359 = v442;
      }

      else
      {
        v359 = 0xE300000000000000;
      }

      MEMORY[0x193B01F90](v357, v359);

      MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2D320);
      v360 = v431;
      sub_191C622F4(v451, v431, sub_191C50BB4);
      if (v282(v360, 1, v283) != 1)
      {
        v361 = v441;
        sub_191C627D4(v360, v441, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        v462 = sub_191CC7398();
        v463 = v362;
        MEMORY[0x193B01F90](58, 0xE100000000000000);
        v363 = sub_191CC7398();
        MEMORY[0x193B01F90](v363);

        MEMORY[0x193B01F90](58, 0xE100000000000000);
        MEMORY[0x193B01F90](*(v361 + *(v283 + 24)), *(v361 + *(v283 + 24) + 8));
        v354 = v462;
        v358 = v463;
        sub_191C48D60(v361, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      }

      MEMORY[0x193B01F90](v354, v358);

      MEMORY[0x193B01F90](0xD000000000000017, 0x8000000191D2D340);
      MEMORY[0x193B01F90](v422, v443);

      MEMORY[0x193B01F90](2108704, 0xE300000000000000);
      MEMORY[0x193B01F90](v423, v444);

      MEMORY[0x193B01F90](0x6472616853207C0ALL, 0xEA0000000000203ALL);
      v364 = v432;
      sub_191C622F4(v452, v432, sub_191C50B60);
      v365 = (*(v433 + 48))(v364, 1, v434);
      v366 = 0xE600000000000000;
      v367 = 0x3E656E6F6E3CLL;
      v368 = 0xE600000000000000;
      v369 = v457;
      v370 = v438;
      if (v365 != 1)
      {
        v371 = v427;
        sub_191C627D4(v364, v427, type metadata accessor for HKCloudSync.Show.ShardPredicate);
        v372 = HKCloudSync.Show.ShardPredicate.description.getter();
        v368 = v373;
        sub_191C48D60(v371, type metadata accessor for HKCloudSync.Show.ShardPredicate);
        v367 = v372;
      }

      MEMORY[0x193B01F90](v367, v368);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D360);
      if (v445)
      {
        v374 = v424;
      }

      else
      {
        v374 = 0x3E656E6F6E3CLL;
      }

      if (v445)
      {
        v375 = v445;
      }

      else
      {
        v375 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v374, v375);

      MEMORY[0x193B01F90](0x28646C4F20, 0xE500000000000000);
      if (v455)
      {
        v376 = v425;
      }

      else
      {
        v376 = 0x3E656E6F6E3CLL;
      }

      if (v455)
      {
        v377 = v455;
      }

      else
      {
        v377 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v376, v377);

      MEMORY[0x193B01F90](0x2865766974634120, 0xE800000000000000);
      if (v426)
      {
        v378 = v428;
      }

      else
      {
        v378 = 0x3E656E6F6E3CLL;
      }

      if (v426)
      {
        v379 = v426;
      }

      else
      {
        v379 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v378, v379);

      MEMORY[0x193B01F90](0x746F6C53207C0A29, 0xEC000000203A4120);
      v380 = v437;
      sub_191C622F4(v453, v437, sub_191C50B2C);
      v381 = *(v435 + 48);
      v382 = v436;
      v383 = v381(v380, 1, v436);
      v384 = 0x3E656E6F6E3CLL;
      if (v383 != 1)
      {
        sub_191C627D4(v380, v370, type metadata accessor for HKCloudSync.Show.RecordDetail);
        HKCloudSync.Show.RecordDetail.description.getter();
        v385 = sub_191CC6778();

        v386 = [v385 hk:2 stringIndentedBy:?];

        v387 = sub_191CC67B8();
        v366 = v388;

        v260 = 0x3E656E6F6E3CLL;
        sub_191C48D60(v370, type metadata accessor for HKCloudSync.Show.RecordDetail);
        v384 = v387;
      }

      MEMORY[0x193B01F90](v384, v366);

      MEMORY[0x193B01F90](0x20746F6C53207C0ALL, 0xEB00000000203A42);
      v389 = v439;
      sub_191C622F4(v454, v439, sub_191C50B2C);
      if (v381(v389, 1, v382) == 1)
      {
        v390 = 0xE600000000000000;
        v391 = 0x3E656E6F6E3CLL;
      }

      else
      {
        sub_191C627D4(v389, v370, type metadata accessor for HKCloudSync.Show.RecordDetail);
        HKCloudSync.Show.RecordDetail.description.getter();
        v392 = sub_191CC6778();

        v393 = [v392 hk:2 stringIndentedBy:?];

        v394 = sub_191CC67B8();
        v390 = v395;

        v260 = 0x3E656E6F6E3CLL;
        sub_191C48D60(v370, type metadata accessor for HKCloudSync.Show.RecordDetail);
        v391 = v394;
      }

      v396 = v447;
      MEMORY[0x193B01F90](v391, v390);

      MEMORY[0x193B01F90](0x73626D6F54207C0ALL, 0xEF203A73656E6F74);
      v397 = v440;
      sub_191C622F4(v396, v440, sub_191C50B2C);
      if (v381(v397, 1, v382) == 1)
      {
        v398 = 0xE600000000000000;
      }

      else
      {
        sub_191C627D4(v397, v370, type metadata accessor for HKCloudSync.Show.RecordDetail);
        HKCloudSync.Show.RecordDetail.description.getter();
        v399 = sub_191CC6778();

        v400 = [v399 hk:2 stringIndentedBy:?];

        v260 = sub_191CC67B8();
        v398 = v401;

        sub_191C48D60(v370, type metadata accessor for HKCloudSync.Show.RecordDetail);
      }

      MEMORY[0x193B01F90](v260, v398);

      MEMORY[0x193B01F90](0xD000000000000036, 0x8000000191D2D380);
      v122 = v465;
      sub_191C48D60(v396, sub_191C50B2C);
      sub_191C48D60(v454, sub_191C50B2C);
      sub_191C48D60(v453, sub_191C50B2C);
      sub_191C48D60(v452, sub_191C50B60);
      sub_191C48D60(v451, sub_191C50BB4);
      sub_191C48D60(v450, sub_191C50BB4);
      (*(v369 + 8))(v449, v459);
      sub_191C48D60(v448, sub_191C47DA4);

      return v122;
    case 6u:
      v287 = v457;
      v288 = v455;
      v289 = v459;
      (*(v457 + 32))(v455, v72, v459);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x203A44495555202BLL, 0xE800000000000000);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v290 = sub_191CC7398();
      MEMORY[0x193B01F90](v290);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v122 = v465;
      (*(v287 + 8))(v288, v289);
      return v122;
    case 7u:
      v204 = *v72;
      v203 = *(v72 + 1);
      v206 = *(v72 + 2);
      v205 = *(v72 + 3);
      v207 = *(v72 + 5);
      v456 = *(v72 + 4);
      v457 = v207;
      v208 = *(v72 + 6);
      v459 = *(v72 + 7);
      v209 = *(v72 + 8);
      sub_191C5157C(0);
      v211 = v461;
      v212 = &v72[*(v210 + 112)];
      v213 = v458;
      v214 = v460;
      (*(v461 + 32))(v458, v212, v460);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x69746E656449202BLL, 0xEE00203A72656966);
      MEMORY[0x193B01F90](v204, v203);

      MEMORY[0x193B01F90](0x20656C6946202B0ALL, 0xEE00203A656D616ELL);
      MEMORY[0x193B01F90](v206, v205);

      MEMORY[0x193B01F90](0x20656C6946202B0ALL, 0xEE00203A657A6973);
      v462 = v456;
      v215 = sub_191CC7398();
      MEMORY[0x193B01F90](v215);

      MEMORY[0x193B01F90](0x20656D694D202B0ALL, 0xEE00203A65707974);
      MEMORY[0x193B01F90](v457, v208);

      MEMORY[0x193B01F90](0x20656C6946202B0ALL, 0xEE00203A68736168);
      MEMORY[0x193B01F90](v459, v209);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D2C0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v216 = sub_191CC7398();
      MEMORY[0x193B01F90](v216);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v122 = v465;
      (*(v211 + 8))(v213, v214);
      return v122;
    case 8u:
      v306 = *v72;
      v305 = *(v72 + 1);
      v308 = *(v72 + 2);
      v307 = *(v72 + 3);
      v310 = *(v72 + 4);
      v309 = *(v72 + 5);
      v454 = *(v72 + 6);
      sub_191C51428(0);
      v312 = v311[24];
      v456 = *&v72[v311[28]];
      v313 = v311[32];
      v314 = v457;
      (*(v457 + 32))(v455, &v72[v312], v459);
      v315 = v461;
      v316 = &v72[v313];
      v317 = v460;
      (*(v461 + 32))(v458, v316, v460);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x69746E656449202BLL, 0xEE00203A72656966);
      MEMORY[0x193B01F90](v306, v305);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D240);
      MEMORY[0x193B01F90](v308, v307);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D260);
      MEMORY[0x193B01F90](v310, v309);

      MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2D280);
      v462 = v454;
      v318 = sub_191CC7398();
      MEMORY[0x193B01F90](v318);

      MEMORY[0x193B01F90](0xD00000000000001ALL, 0x8000000191D2D2A0);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v319 = v455;
      v320 = v459;
      v321 = sub_191CC7398();
      MEMORY[0x193B01F90](v321);

      MEMORY[0x193B01F90](0x3A65707954202B0ALL, 0xE900000000000020);
      v462 = v456;
      v322 = sub_191CC7398();
      MEMORY[0x193B01F90](v322);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D2C0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v323 = v458;
      v324 = sub_191CC7398();
      MEMORY[0x193B01F90](v324);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v122 = v465;
      (*(v315 + 8))(v323, v317);
      (*(v314 + 8))(v319, v320);
      return v122;
    case 9u:
      v178 = *v72;
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x7473626D6F54202BLL, 0xEE000A3A73656E6FLL);
      if (v178)
      {
        v464 = v178;
        sub_191C601E4(&v464, &v462);

        v78 = v462;
        v79 = v463;
      }

      else
      {
        v78 = 0x3E656E6F6E3CLL;
        v79 = 0xE600000000000000;
      }

      goto LABEL_165;
    case 0xAu:
      v292 = *v72;
      v291 = *(v72 + 1);
      v294 = *(v72 + 2);
      v293 = *(v72 + 3);
      v296 = *(v72 + 4);
      v295 = *(v72 + 5);
      sub_191C51218(0);
      v298 = *(v297 + 96);
      v299 = v428;
      sub_191C627D4(&v72[*(v297 + 80)], v428, sub_191C50BB4);
      v300 = &v72[v298];
      v301 = v460;
      (*(v461 + 32))(v442, v300, v460);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2D1C0);
      MEMORY[0x193B01F90](v292, v291);

      MEMORY[0x193B01F90](0xD000000000000017, 0x8000000191D2D1E0);
      MEMORY[0x193B01F90](v294, v293);

      MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2D200);
      MEMORY[0x193B01F90](v296, v295);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D220);
      sub_191C622F4(v299, v26, sub_191C50BB4);
      v302 = v446;
      if ((*(v456 + 48))(v26, 1, v446) == 1)
      {
        v303 = 0x3E656E6F6E3CLL;
        v304 = 0xE600000000000000;
      }

      else
      {
        v402 = v441;
        sub_191C627D4(v26, v441, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v462 = sub_191CC7398();
        v463 = v403;
        MEMORY[0x193B01F90](58, 0xE100000000000000);
        v404 = sub_191CC7398();
        MEMORY[0x193B01F90](v404);

        MEMORY[0x193B01F90](58, 0xE100000000000000);
        MEMORY[0x193B01F90](*(v402 + *(v302 + 24)), *(v402 + *(v302 + 24) + 8));
        v303 = v462;
        v304 = v463;
        sub_191C48D60(v402, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      }

      MEMORY[0x193B01F90](v303, v304);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D1A0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v405 = v442;
      v406 = sub_191CC7398();
      MEMORY[0x193B01F90](v406);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v122 = v465;
      (*(v461 + 8))(v405, v301);
      sub_191C48D60(v299, sub_191C50BB4);
      return v122;
    case 0xBu:
      v112 = *v72;
      v113 = *(v72 + 1);
      v114 = *(v72 + 2);
      v115 = *(v72 + 3);
      sub_191C51150(0);
      v118 = v460;
      v117 = v461;
      v119 = v458;
      (*(v461 + 32))(v458, &v72[*(v116 + 64)], v460);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x203A79654B202BLL, 0xE700000000000000);
      MEMORY[0x193B01F90](v112, v113);

      MEMORY[0x193B01F90](0x65756C6156202B0ALL, 0xEA0000000000203ALL);
      v120 = sub_191CC6018();
      MEMORY[0x193B01F90](v120);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D1A0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v121 = sub_191CC7398();
      MEMORY[0x193B01F90](v121);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      sub_191C049D8(v114, v115);
      v122 = v465;
      (*(v117 + 8))(v119, v118);
      return v122;
    case 0xCu:
      v171 = 0x3E656E6F6E3CLL;
      sub_191C50FB0(0);
      v173 = *&v72[*(v172 + 48)];
      sub_191C627D4(v72, v52, sub_191C47DA4);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000025, 0x8000000191D2D110);
      sub_191C622F4(v52, v49, sub_191C47DA4);
      v175 = v460;
      v174 = v461;
      if ((*(v461 + 48))(v49, 1, v460) == 1)
      {
        v176 = 0xE600000000000000;
        v177 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v343 = v458;
        (*(v174 + 32))(v458, v49, v175);
        v344 = sub_191CC6068();
        v176 = v345;
        (*(v174 + 8))(v343, v175);
        v177 = v344;
      }

      MEMORY[0x193B01F90](v177, v176);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D140);
      if (v173)
      {
        v464 = v173;
        sub_191C606F4(&v464, &v462);

        v171 = v462;
        v346 = v463;
      }

      else
      {
        v346 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v171, v346);

      MEMORY[0x193B01F90](0xD000000000000038, 0x8000000191D2D160);
      v122 = v465;
      sub_191C48D60(v52, sub_191C47DA4);
      return v122;
    case 0xDu:
      v189 = *v72;
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      v190 = "---------------------------";
      v191 = 0xD00000000000001CLL;
      goto LABEL_55;
    case 0xEu:
      v83 = *v72;
      v82 = *(v72 + 1);
      sub_191C50E00(0);
      v85 = v84[12];
      v86 = v84[16];
      v87 = &v72[v84[20]];
      v88 = v87[1];
      v446 = *v87;
      v89 = &v72[v84[24]];
      v90 = *v89;
      v447 = v89[1];
      v448 = v90;
      v91 = &v72[v84[28]];
      v92 = *v91;
      v449 = v91[1];
      v450 = v92;
      v93 = &v72[v84[32]];
      v94 = *v93;
      v451 = v93[1];
      v452 = v94;
      v95 = &v72[v84[36]];
      v96 = *v95;
      v453 = v95[1];
      v454 = v96;
      v97 = &v72[v84[40]];
      v99 = *v97;
      v98 = *(v97 + 1);
      v458 = v99;
      v456 = v98;
      v100 = &v72[v84[44]];
      v101 = *v100;
      v460 = *(v100 + 1);
      v461 = v101;
      v102 = v457;
      v103 = *(v457 + 32);
      v104 = v459;
      v103(v443, &v72[v85], v459);
      v105 = &v72[v86];
      v106 = v102;
      v107 = v445;
      sub_191C627D4(v105, v445, sub_191C50804);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](8235, 0xE200000000000000);
      MEMORY[0x193B01F90](v83, v82);

      MEMORY[0x193B01F90](2108704, 0xE300000000000000);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v108 = sub_191CC7398();
      MEMORY[0x193B01F90](v108);

      MEMORY[0x193B01F90](0x203A5344495B20, 0xE700000000000000);
      v109 = v429;
      sub_191C622F4(v107, v429, sub_191C50804);
      if ((*(v106 + 48))(v109, 1, v104) == 1)
      {
        v110 = 0x3E656E6F6E3CLL;
        v111 = 0xE600000000000000;
      }

      else
      {
        v325 = v455;
        v326 = (v103)(v455, v109, v104);
        v327 = MEMORY[0x193B018F0](v326);
        v111 = v328;
        (*(v106 + 8))(v325, v104);
        v110 = v327;
      }

      MEMORY[0x193B01F90](v110, v111);

      MEMORY[0x193B01F90](545000029, 0xE400000000000000);
      if (v88)
      {
        v329 = v446;
      }

      else
      {
        v329 = 0x6E776F6E6B6E753CLL;
      }

      if (v88)
      {
        v330 = v88;
      }

      else
      {
        v330 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v329, v330);

      MEMORY[0x193B01F90](32, 0xE100000000000000);
      if (v447)
      {
        v331 = v448;
      }

      else
      {
        v331 = 0x6E776F6E6B6E753CLL;
      }

      if (v447)
      {
        v332 = v447;
      }

      else
      {
        v332 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v331, v332);

      MEMORY[0x193B01F90](32, 0xE100000000000000);
      if (v449)
      {
        v333 = v450;
      }

      else
      {
        v333 = 0x6E776F6E6B6E753CLL;
      }

      if (v449)
      {
        v334 = v449;
      }

      else
      {
        v334 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v333, v334);

      MEMORY[0x193B01F90](32, 0xE100000000000000);
      if (v451)
      {
        v335 = v452;
      }

      else
      {
        v335 = 0x6E776F6E6B6E753CLL;
      }

      if (v451)
      {
        v336 = v451;
      }

      else
      {
        v336 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v335, v336);

      MEMORY[0x193B01F90](0x2220726F6620, 0xE600000000000000);
      if (v453)
      {
        v337 = v454;
      }

      else
      {
        v337 = 0x3E656E6F6E3CLL;
      }

      if (v453)
      {
        v338 = v453;
      }

      else
      {
        v338 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v337, v338);

      MEMORY[0x193B01F90](8236, 0xE200000000000000);
      if (v456)
      {
        v339 = v458;
      }

      else
      {
        v339 = 0x3E656E6F6E3CLL;
      }

      if (v456)
      {
        v340 = v456;
      }

      else
      {
        v340 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v339, v340);

      MEMORY[0x193B01F90](3940386, 0xE300000000000000);
      if (v460)
      {
        v341 = v461;
      }

      else
      {
        v341 = 0x3E656E6F6E3CLL;
      }

      if (v460)
      {
        v342 = v460;
      }

      else
      {
        v342 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v341, v342);

      MEMORY[0x193B01F90](0xD00000000000004BLL, 0x8000000191D2D0A0);
      v122 = v465;
      sub_191C48D60(v445, sub_191C50804);
      (*(v106 + 8))(v443, v104);
      return v122;
    case 0xFu:
      v183 = *v72;
      v182 = *(v72 + 1);
      v185 = *(v72 + 2);
      v184 = *(v72 + 3);
      v187 = *(v72 + 4);
      v186 = *(v72 + 5);
      v188 = *(v72 + 7);
      v461 = *(v72 + 6);
      v189 = *(v72 + 8);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x203A656D614E202BLL, 0xE800000000000000);
      MEMORY[0x193B01F90](v183, v182);

      MEMORY[0x193B01F90](0x616B636150207C0ALL, 0xEC000000203A6567);
      MEMORY[0x193B01F90](v185, v184);

      MEMORY[0x193B01F90](0x6973726556207C0ALL, 0xEC000000203A6E6FLL);
      MEMORY[0x193B01F90](v187, v186);

      MEMORY[0x193B01F90](0xD00000000000001ALL, 0x8000000191D2D060);
      MEMORY[0x193B01F90](v461, v188);

      v190 = "\n| Compatibility Version: ";
      v191 = 0xD00000000000001ELL;
LABEL_55:
      MEMORY[0x193B01F90](v191, v190 | 0x8000000000000000);
      v462 = v189;
      sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_191C62758();
      v180 = sub_191CC66D8();
LABEL_56:
      v286 = v180;
      v201 = v181;

      v202 = v286;
LABEL_57:
      MEMORY[0x193B01F90](v202, v201);
      break;
    case 0x10u:
      v80 = *v72;
      v81 = *(v72 + 1);
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD00000000000001CLL, 0x8000000191D2D000);
      MEMORY[0x193B01F90](v80, v81);
      break;
    default:
      v74 = *v72;
      v73 = *(v72 + 1);
      v75 = *(v72 + 2);
      v76 = v72[24];
      v465 = 0;
      v466 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x65676E616843202BLL, 0xE900000000000020);
      v462 = v74;
      v77 = sub_191CC7398();
      MEMORY[0x193B01F90](v77);

      MEMORY[0x193B01F90](0x6F69737265562820, 0xEA0000000000206ELL);
      MEMORY[0x193B01F90](v73, v75);

      if (v76)
      {
        v78 = 0x4C414E494620;
      }

      else
      {
        v78 = 0;
      }

      if (v76)
      {
        v79 = 0xE600000000000000;
      }

      else
      {
        v79 = 0xE000000000000000;
      }

LABEL_165:
      MEMORY[0x193B01F90](v78, v79);
      break;
  }

  MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
  return v465;
}

uint64_t HKCloudSync.Show.SyncIdentity.description.getter()
{
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v4 = sub_191CC7398();
  MEMORY[0x193B01F90](58, 0xE100000000000000);
  v1 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v2 = sub_191CC7398();
  MEMORY[0x193B01F90](v2);

  MEMORY[0x193B01F90](58, 0xE100000000000000);
  MEMORY[0x193B01F90](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v4;
}

uint64_t sub_191C5FC60(uint64_t a1)
{
  *&v22[0] = sub_191C42460(a1);

  sub_191C60E08(v22);

  v2 = *&v22[0];
  v3 = *(*&v22[0] + 16);
  if (v3)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v3, 0);
    v4 = 0;
    v5 = (v2 + 80);
    v19 = v2;
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 2);
      v22[0] = *(v5 - 3);
      v22[1] = v9;
      v23 = v7;
      v20 = v6;

      swift_bridgeObjectRetain_n();
      MEMORY[0x193B01F90](58, 0xE100000000000000);
      if (!*(a1 + 16))
      {
        goto LABEL_11;
      }

      sub_191C40354(v22);
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }

      v11 = sub_191CC7398();
      MEMORY[0x193B01F90](v11);

      v13 = v21[2];
      v12 = v21[3];
      if (v13 >= v12 >> 1)
      {
        sub_191C07DDC((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      v21[2] = v13 + 1;
      v14 = &v21[2 * v13];
      v14[4] = v20;
      v14[5] = v8;
      v5 += 7;
      v2 = v19;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_191C62758();
    v15 = sub_191CC66D8();
    v17 = v16;

    MEMORY[0x193B01F90](v15, v17);

    MEMORY[0x193B01F90](32010, 0xE200000000000000);
    return 2683;
  }

  return result;
}

uint64_t HKCloudSync.Show.ShardPredicate.description.getter()
{
  v1 = v0;
  v2 = sub_191CC6148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C47DA4(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  v12 = v0[1];
  v24[0] = *v0;
  v24[1] = v12;

  MEMORY[0x193B01F90](23328, 0xE200000000000000);
  v13 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  sub_191C622F4(v0 + *(v13 + 20), v11, sub_191C47DA4);
  v14 = *(v3 + 48);
  if (v14(v11, 1, v2) == 1)
  {
    v15 = 0xE600000000000000;
    v16 = 0x3E656E6F6E3CLL;
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    v17 = sub_191CC6068();
    v15 = v18;
    (*(v3 + 8))(v5, v2);
    v16 = v17;
  }

  MEMORY[0x193B01F90](v16, v15);

  MEMORY[0x193B01F90](58, 0xE100000000000000);
  sub_191C622F4(v1 + *(v13 + 24), v9, sub_191C47DA4);
  if (v14(v9, 1, v2) == 1)
  {
    v19 = 0xE600000000000000;
    v20 = 0x3E656E6F6E3CLL;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v21 = sub_191CC6068();
    v19 = v22;
    (*(v3 + 8))(v5, v2);
    v20 = v21;
  }

  MEMORY[0x193B01F90](v20, v19);

  MEMORY[0x193B01F90](93, 0xE100000000000000);
  return v24[0];
}

uint64_t sub_191C601E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v24 = a2;
    v25 = v2;
    v33 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v9, 0);
    v10 = v33;
    v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = "| Reference Identifier: ";
    v29 = "\nSchema Version: ";
    v26 = *(v5 + 72);
    v27 = " | Schema Identifier: ";
    do
    {
      sub_191C622F4(v11, v7, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000018, v29 | 0x8000000000000000);
      sub_191CC61A8();
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v12 = sub_191CC7398();
      MEMORY[0x193B01F90](v12);

      MEMORY[0x193B01F90](0xD000000000000016, v28 | 0x8000000000000000);
      MEMORY[0x193B01F90](*&v7[*(v30 + 20)], *&v7[*(v30 + 20) + 8]);
      MEMORY[0x193B01F90](0xD000000000000012, v27 | 0x8000000000000000);
      sub_191CC6148();
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v13 = sub_191CC7398();
      MEMORY[0x193B01F90](v13);

      v14 = v31;
      v15 = v32;
      sub_191C48D60(v7, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
      v33 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_191C07DDC((v16 > 1), v17 + 1, 1);
        v10 = v33;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v11 += v26;
      --v9;
    }

    while (v9);
    a2 = v24;
  }

  v31 = v10;
  sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_191C62758();
  v19 = sub_191CC66D8();
  v21 = v20;

  *a2 = v19;
  a2[1] = v21;
  return result;
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.description.getter()
{
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000018, 0x8000000191D2D530);
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_191CC7398();
  MEMORY[0x193B01F90](v1);

  MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D550);
  v2 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  MEMORY[0x193B01F90](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D570);
  sub_191CC6148();
  sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v3 = sub_191CC7398();
  MEMORY[0x193B01F90](v3);

  return 0;
}

uint64_t sub_191C606F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = type metadata accessor for HKCloudSync.Show.Log(0);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v22[0] = a2;
    v22[1] = v2;
    v27 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v9, 0);
    v10 = v27;
    v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v5 + 72);
    do
    {
      sub_191C622F4(v11, v7, type metadata accessor for HKCloudSync.Show.Log);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_191CC6FC8();

      v25 = 0x3A746E657645207CLL;
      v26 = 0xE900000000000020;
      MEMORY[0x193B01F90](*v7, v7[1]);
      MEMORY[0x193B01F90](0x53656D6954207C20, 0xEE00203A706D6174);
      sub_191CC6148();
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v12 = sub_191CC7398();
      MEMORY[0x193B01F90](v12);

      v13 = v25;
      v14 = v26;
      sub_191C48D60(v7, type metadata accessor for HKCloudSync.Show.Log);
      v27 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_191C07DDC((v15 > 1), v16 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v11 += v23;
      --v9;
    }

    while (v9);
    a2 = v22[0];
  }

  v25 = v10;
  sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_191C62758();
  v18 = sub_191CC66D8();
  v20 = v19;

  *a2 = v18;
  a2[1] = v20;
  return result;
}

uint64_t HKCloudSync.Show.Log.description.getter()
{
  sub_191CC6FC8();

  MEMORY[0x193B01F90](*v0, v0[1]);
  MEMORY[0x193B01F90](0x53656D6954207C20, 0xEE00203A706D6174);
  type metadata accessor for HKCloudSync.Show.Log(0);
  sub_191CC6148();
  sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v1 = sub_191CC7398();
  MEMORY[0x193B01F90](v1);

  return 0x3A746E657645207CLL;
}

uint64_t sub_191C60AF4(uint64_t a1)
{
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v5 = sub_191CC7398();
  MEMORY[0x193B01F90](58, 0xE100000000000000);
  v3 = sub_191CC7398();
  MEMORY[0x193B01F90](v3);

  MEMORY[0x193B01F90](58, 0xE100000000000000);
  MEMORY[0x193B01F90](*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8));
  return v5;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = v0[3];

  MEMORY[0x193B01F90](91, 0xE100000000000000);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 1852399981;
    v3 = 0xE400000000000000;
  }

  MEMORY[0x193B01F90](v1, v3);

  MEMORY[0x193B01F90](40, 0xE100000000000000);
  v4 = sub_191CC7398();
  MEMORY[0x193B01F90](v4);

  MEMORY[0x193B01F90](23849, 0xE200000000000000);
  return v6;
}

uint64_t HKCloudSync.Show.SyncEntityVersion.description.getter()
{
  sub_191CC6FC8();
  v0 = HKCloudSync.Show.SyncEntityIdentifier.description.getter();

  MEMORY[0x193B01F90](0x203A6E696D28203ALL, 0xE800000000000000);
  v1 = sub_191CC7398();
  MEMORY[0x193B01F90](v1);

  MEMORY[0x193B01F90](0x203A727563202CLL, 0xE700000000000000);
  v2 = sub_191CC7398();
  MEMORY[0x193B01F90](v2);

  MEMORY[0x193B01F90](41, 0xE100000000000000);
  return v0;
}

uint64_t sub_191C60E08(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_191C61AE0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_191C60E74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_191C60E74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_191CC7388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_191C085B0();
        v5 = sub_191CC6928();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_191C6106C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_191C60F70(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_191C60F70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 56 * v4;
    result = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 40) && v10 == *(v12 + 48);
      if (v13 || (result = sub_191CC73E8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 56;
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

      v14 = *(v12 + 88);
      result = *(v12 + 96);
      v10 = *(v12 + 104);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 56) = *v12;
      v17 = *(v12 + 72);
      *(v12 + 72) = v16;
      *(v12 + 88) = *(v12 + 32);
      *(v12 + 104) = *(v12 + 48);
      *v12 = v15;
      *(v12 + 16) = v17;
      *(v12 + 32) = v14;
      *(v12 + 40) = result;
      *(v12 + 48) = v10;
      v12 -= 56;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_191C6106C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v104 = *v104;
    if (!v104)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_191C619D4(v8);
      v8 = result;
    }

    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v98 = &v8[16 * v96];
        v5 = *v98;
        v99 = &v95[2 * v96];
        v100 = v99[1];
        sub_191C61690((v97 + 56 * *v98), (v97 + 56 * *v99), v97 + 56 * v100, v104);
        if (v4)
        {
        }

        if (v100 < v5)
        {
          goto LABEL_129;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_130;
        }

        *v98 = v5;
        *(v98 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_131;
        }

        v96 = *v95 - 1;
        result = memmove(v99, v99 + 2, 16 * v101);
        *v95 = v96;
        v5 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 56 * v7;
      result = *(v11 + 40);
      v12 = *(v11 + 48);
      v13 = *v5 + 56 * v9;
      if (result == *(v13 + 40) && v12 == *(v13 + 48))
      {
        v15 = 0;
      }

      else
      {
        result = sub_191CC73E8();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 56 * v9 + 160);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 8) && *v16 == *(v16 - 7))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_191CC73E8();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 7;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 56 * v7 - 56;
          v19 = 56 * v9;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = v31 + v19;
              v24 = *(v31 + v19 + 16);
              v23 = *(v31 + v19 + 32);
              v25 = v31 + v18;
              v26 = *(v22 + 48);
              v27 = *v22;
              v29 = *(v25 + 16);
              v28 = *(v25 + 32);
              v30 = *v25;
              *(v22 + 48) = *(v25 + 48);
              *(v22 + 16) = v29;
              *(v22 + 32) = v28;
              *v22 = v30;
              *v25 = v27;
              *(v25 + 16) = v24;
              *(v25 + 32) = v23;
              *(v25 + 48) = v26;
            }

            ++v21;
            v18 -= 56;
            v19 += 56;
          }

          while (v21 < v20);
        }
      }
    }

    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = v9 + a4;
        }

        if (v33 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_191C0775C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_191C0775C((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_120;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_127;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_88:
        if (v75)
        {
          goto LABEL_122;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_95:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_191C61690((*v5 + 56 * v92), (*v5 + 56 * *&v8[16 * v53 + 32]), *v5 + 56 * v93, v52);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_191C619D4(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        result = sub_191C61948(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v34 = *v5;
  v35 = *v5 + 56 * v7 - 56;
  v102 = v9;
  v36 = v9 - v7;
LABEL_43:
  v37 = v34 + 56 * v7;
  v38 = *(v37 + 40);
  v39 = *(v37 + 48);
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = v38 == *(v41 + 40) && v39 == *(v41 + 48);
    if (v42 || (result = sub_191CC73E8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 != v33)
      {
        goto LABEL_43;
      }

      v7 = v33;
      v5 = a3;
      v9 = v102;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v43 = *(v41 + 88);
    v38 = *(v41 + 96);
    v39 = *(v41 + 104);
    v44 = *(v41 + 56);
    v45 = *(v41 + 16);
    *(v41 + 56) = *v41;
    v46 = *(v41 + 72);
    *(v41 + 72) = v45;
    *(v41 + 88) = *(v41 + 32);
    *(v41 + 104) = *(v41 + 48);
    *v41 = v44;
    *(v41 + 16) = v46;
    *(v41 + 32) = v43;
    *(v41 + 40) = v38;
    *(v41 + 48) = v39;
    v41 -= 56;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}