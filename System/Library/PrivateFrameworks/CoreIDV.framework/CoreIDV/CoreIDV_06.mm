uint64_t BundleRecord.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BundleRecord(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BundleRecord.localizedIdentityUsageDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for BundleRecord(0) + 40));

  return v1;
}

uint64_t BundleRecord.localizedIdentityUsageDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BundleRecord(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BundleRecord.recordType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BundleRecord(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t BundleRecord.recordType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BundleRecord(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t BundleRecord.containingBundleRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BundleRecord(0);
  v4 = *(v1 + *(v3 + 48));
  v5 = *(v3 - 8);
  if (*(v4 + 16))
  {
    v9 = *(v3 - 8);
    sub_21CD2F778(v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), a1);
    v5 = v9;
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v5 + 56);

  return v7(a1, v6, 1, v3);
}

uint64_t sub_21CD2E254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BundleRecord(0);
  v5 = *(a1 + *(v4 + 48));
  v6 = *(v4 - 8);
  if (*(v5 + 16))
  {
    v10 = *(v4 - 8);
    sub_21CD2F778(v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a2);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v4);
}

uint64_t sub_21CD2E320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21CCD1750(a1, &v6 - v3, &qword_27CE1A260, &qword_21CD8EF90);
  return BundleRecord.containingBundleRecord.setter(v4);
}

uint64_t BundleRecord.containingBundleRecord.setter(uint64_t a1)
{
  v2 = type metadata accessor for BundleRecord(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A960, &qword_21CD91B60);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v23 = a1;
  sub_21CCD1750(a1, v13 + v12, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CCD1750(v13 + v12, v11, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CD2F6A0(v11, v9, &qword_27CE1A260, &qword_21CD8EF90);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_21CCB1928(v9, &qword_27CE1A260, &qword_21CD8EF90);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = v22;
    sub_21CD2F63C(v9, v22);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_21CCCF2D0(0, v14[2] + 1, 1, v14);
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_21CCCF2D0((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    sub_21CD2F63C(v15, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17);
  }

  sub_21CCB1928(v23, &qword_27CE1A260, &qword_21CD8EF90);
  swift_setDeallocating();
  sub_21CCB1928(v13 + v12, &qword_27CE1A260, &qword_21CD8EF90);
  swift_deallocClassInstance();
  v18 = *(v2 + 48);
  v19 = v24;

  *(v19 + v18) = v14;
  return result;
}

void (*BundleRecord.containingBundleRecord.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for BundleRecord(0);
  v7 = *(v1 + *(v6 + 48));
  v8 = *(v6 - 8);
  if (*(v7 + 16))
  {
    sub_21CD2F778(v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v5);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  (*(v8 + 56))(v5, v9, 1, v6);
  return sub_21CD2E834;
}

void sub_21CD2E834(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_21CCD1750(*(a1 + 16), v2, &qword_27CE1A260, &qword_21CD8EF90);
    BundleRecord.containingBundleRecord.setter(v2);
    sub_21CCB1928(v3, &qword_27CE1A260, &qword_21CD8EF90);
  }

  else
  {
    BundleRecord.containingBundleRecord.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

void BundleRecord.init(applicationIdentifier:bundleIdentifier:deviceIdentifierForVendor:teamIdentifier:appStoreItemIdentifier:localizedName:localizedIdentityUsageDescription:recordType:containingBundleRecord:entitlements:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17)
{
  v64 = a7;
  v65 = a8;
  v57 = a3;
  v58 = a4;
  v54 = a1;
  v55 = a2;
  v67 = a17;
  v68 = a5;
  v62 = a14;
  v63 = a6;
  v60 = a12;
  v61 = a13;
  v59 = a11;
  v56 = a10;
  v66 = a16;
  v18 = type metadata accessor for BundleRecord(0);
  v53 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v50 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v52 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  v51 = *a15;
  v26 = v18[6];
  v27 = sub_21CD83794();
  (*(*(v27 - 8) + 56))(&a9[v26], 1, 1, v27);
  v28 = &a9[v18[7]];
  v29 = &a9[v18[8]];
  v30 = &a9[v18[10]];
  v31 = v55;
  *a9 = v54;
  *(a9 + 1) = v31;
  v32 = v58;
  *(a9 + 2) = v57;
  *(a9 + 3) = v32;
  sub_21CD2F5CC(v68, &a9[v26]);
  v33 = v64;
  *v28 = v63;
  *(v28 + 1) = v33;
  v34 = v53;
  *v29 = v65;
  v29[8] = v56 & 1;
  v35 = &a9[v18[9]];
  v36 = v60;
  *v35 = v59;
  *(v35 + 1) = v36;
  v37 = v62;
  *v30 = v61;
  *(v30 + 1) = v37;
  a9[v18[11]] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A960, &qword_21CD91B60);
  v38 = v66;
  v39 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v40 = swift_allocObject();
  sub_21CCD1750(v38, v40 + v39, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CCD1750(v40 + v39, v25, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CD2F6A0(v25, v23, &qword_27CE1A260, &qword_21CD8EF90);
  if ((*(v34 + 48))(v23, 1, v18) == 1)
  {
    sub_21CCB1928(v23, &qword_27CE1A260, &qword_21CD8EF90);
    v41 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = v23;
    v43 = v50;
    sub_21CD2F63C(v42, v50);
    v41 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21CCCF2D0(0, v41[2] + 1, 1, v41);
    }

    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_21CCCF2D0((v44 > 1), v45 + 1, 1, v41);
    }

    v41[2] = v45 + 1;
    sub_21CD2F63C(v43, v41 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v45);
  }

  swift_setDeallocating();
  sub_21CCB1928(v40 + v39, &qword_27CE1A260, &qword_21CD8EF90);
  swift_deallocClassInstance();
  *&a9[v18[12]] = v41;
  v46 = sub_21CD83A14();

  v47 = [objc_opt_self() propertyListWithDictionary_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A968, &qword_21CD91B68);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  v49 = v47;
  sub_21CCB1928(v38, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CCB1928(v68, &qword_27CE1A680, &qword_21CD90530);
  *(v48 + 16) = v49;

  *&a9[v18[13]] = v48;
}

uint64_t type metadata accessor for BundleRecord(uint64_t a1)
{
  result = qword_280F78128;
  if (!qword_280F78128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BundleRecord.description.getter()
{
  v1 = type metadata accessor for BundleRecord(0);
  v45 = *(v1 - 1);
  MEMORY[0x28223BE20](v1);
  v46 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A278, &unk_21CD91B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21CD91B50;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0xD000000000000017;
  v48[1] = 0x800000021CDA0300;
  if (v0[1])
  {
    v7 = *v0;
    v8 = v0[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x21CF175E0](v7, v8);

  v9 = v48[1];
  *(v6 + 32) = v48[0];
  *(v6 + 40) = v9;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0xD000000000000012;
  v48[1] = 0x800000021CDA0320;
  if (v0[3])
  {
    v10 = v0[2];
    v11 = v0[3];
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x21CF175E0](v10, v11);

  v12 = v48[1];
  *(v6 + 48) = v48[0];
  *(v6 + 56) = v12;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0xD00000000000001BLL;
  v48[1] = 0x800000021CDA0340;
  sub_21CCD1750(v0 + v1[6], v5, &qword_27CE1A680, &qword_21CD90530);
  v13 = sub_21CD83794();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_21CCB1928(v5, &qword_27CE1A680, &qword_21CD90530);
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    v16 = MEMORY[0x21CF171A0]();
    v15 = v17;
    (*(v14 + 8))(v5, v13);
  }

  MEMORY[0x21CF175E0](v16, v15);

  v18 = v48[1];
  *(v6 + 64) = v48[0];
  *(v6 + 72) = v18;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0xD000000000000010;
  v48[1] = 0x800000021CDA0360;
  v19 = (v0 + v1[7]);
  if (v19[1])
  {
    v20 = *v19;
    v21 = v19[1];
  }

  else
  {
    v21 = 0xE300000000000000;
    v20 = 7104878;
  }

  MEMORY[0x21CF175E0](v20, v21);

  v22 = v48[1];
  *(v6 + 80) = v48[0];
  *(v6 + 88) = v22;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0xD000000000000018;
  v48[1] = 0x800000021CDA0380;
  v23 = v0 + v1[8];
  if (v23[8])
  {
    v24 = 0xE300000000000000;
    v25 = 7104878;
  }

  else
  {
    v47 = *v23;
    sub_21CD2F840();
    v25 = sub_21CD83ED4();
    v24 = v26;
  }

  MEMORY[0x21CF175E0](v25, v24);

  v27 = v48[1];
  *(v6 + 96) = v48[0];
  *(v6 + 104) = v27;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0x657A696C61636F6CLL;
  v48[1] = 0xEF203A656D614E64;
  MEMORY[0x21CF175E0](*(v0 + v1[9]), *(v0 + v1[9] + 8));
  v28 = v48[1];
  *(v6 + 112) = v48[0];
  *(v6 + 120) = v28;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0xD000000000000023;
  v48[1] = 0x800000021CDA03A0;
  v29 = (v0 + v1[10]);
  if (v29[1])
  {
    v30 = *v29;
    v31 = v29[1];
  }

  else
  {
    v31 = 0xE300000000000000;
    v30 = 7104878;
  }

  MEMORY[0x21CF175E0](v30, v31);

  v32 = v48[1];
  *(v6 + 128) = v48[0];
  *(v6 + 136) = v32;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  MEMORY[0x21CF175E0](0x795464726F636572, 0xEC000000203A6570);
  LOBYTE(v47) = *(v0 + v1[11]);
  sub_21CD83FC4();
  v33 = v48[1];
  *(v6 + 144) = v48[0];
  *(v6 + 152) = v33;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_21CD83F74();

  v48[0] = 0xD000000000000018;
  v48[1] = 0x800000021CDA03D0;
  v34 = *(v0 + v1[12]);
  if (*(v34 + 16))
  {
    v35 = v46;
    sub_21CD2F778(v34 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v46);
    v36 = BundleRecord.description.getter();
    v38 = v37;
    sub_21CD07770(v35);
  }

  else
  {
    v38 = 0xE300000000000000;
    v36 = 7104878;
  }

  MEMORY[0x21CF175E0](v36, v38);

  v39 = v48[1];
  *(v6 + 160) = v48[0];
  *(v6 + 168) = v39;
  strcpy(v48, "BundleRecord(");
  HIWORD(v48[1]) = -4864;
  v47 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  sub_21CD2F7DC();
  v40 = sub_21CD83A74();
  v42 = v41;

  MEMORY[0x21CF175E0](v40, v42);

  MEMORY[0x21CF175E0](41, 0xE100000000000000);
  return v48[0];
}

unint64_t sub_21CD2F49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A998, &unk_21CD91CC0);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v13, &qword_27CE18EE0, &qword_21CD885D0);
      v5 = v13;
      v6 = v14;
      result = sub_21CCA996C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CCB2190(&v15, (v3[7] + 32 * result));
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

uint64_t sub_21CD2F5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD2F63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD2F6A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CD2F708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD2F778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD2F7DC()
{
  result = qword_27CE1A978;
  if (!qword_27CE1A978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A290, &qword_21CD8F130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A978);
  }

  return result;
}

unint64_t sub_21CD2F840()
{
  result = qword_27CE1A980;
  if (!qword_27CE1A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A980);
  }

  return result;
}

unint64_t sub_21CD2F898()
{
  result = qword_27CE1A988;
  if (!qword_27CE1A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A988);
  }

  return result;
}

void sub_21CD2F9B0(uint64_t a1)
{
  sub_21CD1EFCC(319, &qword_280F77E38, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21CD2FB18(319, &qword_280F78140, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21CD1EFCC(319, &qword_280F77E10, MEMORY[0x277D84D38]);
      if (v3 <= 0x3F)
      {
        sub_21CD2FB18(319, &qword_27CE1A990, type metadata accessor for BundleRecord, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_21CD2FB7C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CD2FB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21CD2FB7C(uint64_t a1)
{
  if (!qword_280F78138)
  {
    sub_21CCB17E8(255, &qword_280F77E30, 0x277CC1EE0);
    v1 = sub_21CD839C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280F78138);
    }
  }
}

uint64_t sub_21CD2FC78()
{

  return swift_deallocClassInstance();
}

uint64_t MobileDocumentReaderBundleTypeCheckOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

CoreIDV::MobileDocumentReaderBundleTypeCheckOutcome __swiftcall MobileDocumentReaderEntitlementChecker.checkBundleTypeSupported(auditToken:)(audit_token_t_optional *auditToken)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for BundleRecord(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v38 - v16;
  if (auditToken->is_nil)
  {
    v18 = v2[3];
    v19 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v18);
    (*(v19 + 8))(v18, v19);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      LOBYTE(v20) = sub_21CCB1928(v7, &qword_27CE1A260, &qword_21CD8EF90);
LABEL_12:
      v32 = 2;
      goto LABEL_13;
    }

    sub_21CD2F63C(v7, v12);
    v15 = v12;
  }

  else
  {
    v22 = *&auditToken->value.val[4];
    v21 = *&auditToken->value.val[6];
    v25 = auditToken;
    v23 = *auditToken->value.val;
    v24 = *&v25->value.val[2];
    v38[0] = v8;
    v26 = v38 - v16;
    v27 = v4;
    v29 = v2[3];
    v28 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v29);
    v30 = v29;
    v4 = v27;
    v17 = v26;
    v8 = v38[0];
    (*(v28 + 16))(v23, v24, v22, v21, v30, v28);
  }

  sub_21CD2F63C(v15, v17);
  v31 = v17[*(v8 + 44)];
  if (v31 >= 2)
  {
    if (v31 == 2)
    {
      v33 = *&v17[*(v8 + 52)];
      os_unfair_lock_lock((v33 + 24));
      v34 = *(v33 + 16);
      v35 = sub_21CD83B04();
      sub_21CD07724();
      v36 = [v34 objectForKey:v35 ofClass:swift_getObjCClassFromMetadata()];

      if (v36)
      {
        sub_21CD83EE4();
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v41 = v39;
      v42 = v40;
      os_unfair_lock_unlock((v33 + 24));
      sub_21CD07770(v17);
      if (*(&v42 + 1))
      {
        v20 = swift_dynamicCast();
        if (v20 && (v39 & 1) != 0)
        {
          v32 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v20) = sub_21CCB1928(&v41, &qword_27CE19160, &unk_21CD88740);
      }

      v32 = 1;
      goto LABEL_13;
    }

    LOBYTE(v20) = sub_21CD07770(v17);
    goto LABEL_12;
  }

  LOBYTE(v20) = sub_21CD07770(v17);
  v32 = 0;
LABEL_13:
  *v4 = v32;
  return v20;
}

Swift::Bool __swiftcall MobileDocumentReaderEntitlementChecker.checkInternalEntitlement(connection:)(NSXPCConnection_optional connection)
{
  if (connection.value.super.isa)
  {
    v1 = connection.value.super.isa;
    v2 = sub_21CD83B04();
    v3 = [(objc_class *)v1 valueForEntitlement:v2];

    if (v3)
    {
      sub_21CD83EE4();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }

      return 0;
    }

    goto LABEL_16;
  }

  v4 = SecTaskCreateFromSelf(0);
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_16:
    sub_21CCB1928(&v13, &qword_27CE19160, &unk_21CD88740);
    return 0;
  }

  v5 = v4;
  v6 = sub_21CD83B04();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

  if (v7)
  {
    ObjectType = swift_getObjectType();
    *&v9 = v7;
    sub_21CCB2190(&v9, &v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;

  if (!*(&v14 + 1))
  {
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    return v11;
  }

  return 0;
}

void sub_21CD30424(uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 32))
  {
    v5 = SecTaskCreateFromSelf(0);
    if (!v5)
    {
LABEL_3:
      *a4 = 0u;
      a4[1] = 0u;
      return;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    *token.val = *a3;
    *&token.val[4] = v6;
    v5 = SecTaskCreateWithAuditToken(0, &token);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v7 = v5;
  v8 = sub_21CD83B04();
  v9 = SecTaskCopyValueForEntitlement(v7, v8, 0);

  if (v9)
  {
    ObjectType = swift_getObjectType();
    *&v11 = v9;
    sub_21CCB2190(&v11, &token);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v10 = *&token.val[4];
  *a4 = *token.val;
  a4[1] = v10;
}

Swift::Bool __swiftcall MobileDocumentReaderEntitlementChecker.checkPublicEntitlements(auditToken:)(audit_token_t_optional *auditToken)
{
  if (auditToken->is_nil)
  {
    sub_21CD30424(auditToken, &v17);
    if (*&v17.val[6])
    {
      if (swift_dynamicCast())
      {
        v1 = v16.val[0];
        goto LABEL_10;
      }
    }

    else
    {
      sub_21CCB1928(&v17, &qword_27CE19160, &unk_21CD88740);
    }

    v1 = 0;
LABEL_10:
    v4 = SecTaskCreateFromSelf(0);
    if (v4)
    {
      v5 = v4;
      v6 = sub_21CD83B04();
      v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

      if (v7)
      {
        *&token.val[6] = swift_getObjectType();
        *token.val = v7;
        sub_21CCB2190(&token, &v16);
      }

      else
      {
        memset(&v16, 0, sizeof(v16));
      }

      v17 = v16;

      if (*&v17.val[6])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A9A0, &qword_21CD91D08);
        if (swift_dynamicCast())
        {
          goto LABEL_29;
        }

        return (v1 & 1) != 0;
      }
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    sub_21CCB1928(&v17, &qword_27CE19160, &unk_21CD88740);
    return (v1 & 1) != 0;
  }

  v2 = *&auditToken->value.val[4];
  *v17.val = *auditToken->value.val;
  *&v17.val[4] = v2;
  sub_21CD30424(auditToken, &v16);
  if (*&v16.val[6])
  {
    if (swift_dynamicCast())
    {
      v3 = token.val[0];
      goto LABEL_15;
    }
  }

  else
  {
    sub_21CCB1928(&v16, &qword_27CE19160, &unk_21CD88740);
  }

  v3 = 0;
LABEL_15:
  token = v17;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (!v8)
  {
    memset(&v16, 0, sizeof(v16));
    goto LABEL_30;
  }

  v9 = v8;
  v10 = sub_21CD83B04();
  v11 = SecTaskCopyValueForEntitlement(v9, v10, 0);

  if (v11)
  {
    ObjectType = swift_getObjectType();
    *&v13 = v11;
    sub_21CCB2190(&v13, &token);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v16 = token;

  if (!*&v16.val[6])
  {
LABEL_30:
    sub_21CCB1928(&v16, &qword_27CE19160, &unk_21CD88740);
    return (v3 & 1) != 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A9A0, &qword_21CD91D08);
  if (swift_dynamicCast())
  {
LABEL_29:

    return 1;
  }

  return (v3 & 1) != 0;
}

Swift::Bool __swiftcall MobileDocumentReaderEntitlementChecker.checkDevelopmentFlagEntitlements(auditToken:)(audit_token_t *auditToken)
{
  *token.val = auditToken;
  *&token.val[2] = v1;
  *&token.val[4] = v2;
  *&token.val[6] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (!v4)
  {
    memset(&token, 0, sizeof(token));
LABEL_9:
    sub_21CCB1928(&token, &qword_27CE19160, &unk_21CD88740);
    LOBYTE(v8) = 0;
    return v8;
  }

  v5 = v4;
  v6 = sub_21CD83B04();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

  if (v7)
  {
    *&token.val[6] = swift_getObjectType();
    *token.val = v7;
    sub_21CCB2190(&token, &v10);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  token = v10;

  if (!*&token.val[6])
  {
    goto LABEL_9;
  }

  v8 = swift_dynamicCast();
  if (v8)
  {
    LOBYTE(v8) = v10.val[0];
  }

  return v8;
}

unint64_t sub_21CD309A8()
{
  result = qword_27CE1A9A8;
  if (!qword_27CE1A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A9A8);
  }

  return result;
}

uint64_t dispatch thunk of MobileDocumentReaderEntitlementChecking.checkPublicEntitlements(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2) & 1;
}

uint64_t dispatch thunk of MobileDocumentReaderEntitlementChecking.checkBundleTypeSupported(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
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

uint64_t sub_21CD30AD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CD30B1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void MobileDocumentReaderSupportChecker.init(suiteNameOverride:)(uint64_t *a3@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v5 = sub_21CD83B04();

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE1A9B0, &unk_21CD91E60);
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 16) = v6;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t MobileDocumentReaderSupportChecker.isLocaleSupported(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30[-v2];
  v4 = *v0;
  sub_21CD83814();
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) != 1)
  {
    v12 = sub_21CD837C4();
    v14 = v13;
    (*(v6 + 8))(v3, v5);
    os_unfair_lock_lock((v4 + 24));
    v15 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 24));
    v16 = sub_21CD83B04();
    v17 = [v15 stringArrayForKey_];

    if (v17)
    {
      v19 = sub_21CD83C84();

      os_unfair_lock_lock((v4 + 24));
      v20 = *(v4 + 16);
      os_unfair_lock_unlock((v4 + 24));
      v21 = sub_21CD83B04();
      v22 = [v20 stringArrayForKey_];

      if (v22)
      {
        v23 = sub_21CD83C84();

        os_unfair_lock_lock((v4 + 24));
        v24 = *(v4 + 16);
        os_unfair_lock_unlock((v4 + 24));
        v25 = sub_21CD83B04();
        v26 = [v24 BOOLForKey_];

        v31 = v12;
        v32 = v14;
        MEMORY[0x28223BE20](v27);
        *&v30[-16] = &v31;
        if (v26)
        {
          v28 = sub_21CD07F90(sub_21CD3154C, &v30[-32], v23);

          v11 = v28 ^ 1;
        }

        else
        {
          v11 = sub_21CD07F90(sub_21CD3154C, &v30[-32], v19);
        }

        return v11 & 1;
      }
    }

    v31 = v12;
    v32 = v14;
    MEMORY[0x28223BE20](v18);
    *&v30[-16] = &v31;
    v11 = sub_21CD07F90(sub_21CD3144C, &v30[-32], &unk_282E6D088);

    return v11 & 1;
  }

  sub_21CCCA720(v3);
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v7 = sub_21CD839F4();
  __swift_project_value_buffer(v7, qword_280F78E40);
  v8 = sub_21CD839D4();
  v9 = sub_21CD83E24();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21CC90000, v8, v9, "Mobile document reading not supported. Region is nil.", v10, 2u);
    MEMORY[0x21CF18580](v10, -1, -1);
  }

  v11 = 0;
  return v11 & 1;
}

Swift::Void __swiftcall MobileDocumentReaderSupportChecker.update(isGloballySupported:supportedRegions:unsupportedRegions:)(Swift::Bool isGloballySupported, Swift::OpaquePointer supportedRegions, Swift::OpaquePointer unsupportedRegions)
{
  v7 = *v3;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v8 = sub_21CD839F4();
  __swift_project_value_buffer(v8, qword_280F78E40);

  v9 = sub_21CD839D4();
  v10 = sub_21CD83E24();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 67240706;
    *(v11 + 4) = isGloballySupported;
    *(v11 + 8) = 2082;
    v13 = MEMORY[0x21CF176E0](supportedRegions._rawValue, MEMORY[0x277D837D0]);
    v15 = isGloballySupported;
    rawValue = unsupportedRegions._rawValue;
    v17 = sub_21CCC02FC(v13, v14, &v30);

    *(v11 + 10) = v17;
    v18 = rawValue;
    isGloballySupported = v15;
    *(v11 + 18) = 2082;
    v19 = MEMORY[0x21CF176E0](v18, MEMORY[0x277D837D0]);
    v21 = sub_21CCC02FC(v19, v20, &v30);

    *(v11 + 20) = v21;
    _os_log_impl(&dword_21CC90000, v9, v10, "Updating mobile document reading supported regions. Is globally enabled: %{BOOL,public}d. Supported regions: %{public}s. Unsupported regions: %{public}s", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x21CF18580](v12, -1, -1);
    MEMORY[0x21CF18580](v11, -1, -1);
  }

  os_unfair_lock_lock((v7 + 24));
  v22 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 24));
  v23 = sub_21CD83B04();
  [v22 setBool:isGloballySupported forKey:v23];

  os_unfair_lock_lock((v7 + 24));
  v24 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 24));
  v25 = sub_21CD83C74();
  v26 = sub_21CD83B04();
  [v24 setObject:v25 forKey:v26];

  os_unfair_lock_lock((v7 + 24));
  v27 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 24));
  v28 = sub_21CD83C74();
  v29 = sub_21CD83B04();
  [v27 setObject:v28 forKey:v29];
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

id sub_21CD315B4(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v7 = objc_allocWithZone(v3);
  sub_21CD33CA0(a1, v7 + *a2, a3);
  v10.receiver = v7;
  v10.super_class = v3;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_21CD33D08(a1, a3);
  return v8;
}

uint64_t XPCMobileDocumentReaderConfiguration.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 8);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id XPCMobileDocumentReaderConfiguration.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id XPCMobileDocumentReaderConfiguration.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21CD31A94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 8);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id sub_21CD31AB4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21CD31BA0(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  ObjectType = swift_getObjectType();
  sub_21CD33CA0(a1, v3 + *a2, a3);
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_21CD33D08(a1, a3);
  return v8;
}

id sub_21CD31DD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  v9 = objc_allocWithZone(v5);
  sub_21CD33CA0(a1, v9 + *a4, a5);
  v12.receiver = v9;
  v12.super_class = v5;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_21CD33D08(a1, a5);
  return v10;
}

uint64_t XPCMobileDocumentReaderMerchant.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 40);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  v8 = *(v2 + 24);
  *(a1 + 24) = v8;
  *(a1 + 40) = v6;

  sub_21CC96064(v5, v8);
}

id XPCMobileDocumentReaderMerchant.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v6 = *(a1 + 32);
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id XPCMobileDocumentReaderMerchant.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 8);
  v5 = &v1[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v6 = *(a1 + 32);
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21CD32124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 40);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  v8 = *(v2 + 24);
  *(a1 + 24) = v8;
  *(a1 + 40) = v6;

  sub_21CC96064(v5, v8);
}

id sub_21CD321A0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v6 = *(a1 + 32);
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t XPCMobileDocumentReaderRequest.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 24);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;

  return sub_21CD19BA8(v5, v6, v7);
}

id XPCMobileDocumentReaderRequest.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = &v3[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  *(v6 + 1) = *(a1 + 16);
  v6[32] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id XPCMobileDocumentReaderRequest.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = &v1[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  *(v6 + 1) = *(a1 + 16);
  v6[32] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21CD324C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 24);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;

  return sub_21CD19BA8(v5, v6, v7);
}

id sub_21CD3252C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = &v3[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  *(v6 + 1) = *(a1 + 16);
  v6[32] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t XPCMobileDocumentReaderDeviceEngagementType.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_21CC96064(v2, v3);
}

id XPCMobileDocumentReaderDeviceEngagementType.__allocating_init(value:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCMobileDocumentReaderDeviceEngagementType.init(value:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21CD32798@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_21CC96064(v2, v3);
}

id sub_21CD327B0(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCAuditToken.__allocating_init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id XPCAuditToken.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id XPCAuditToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

__n128 sub_21CD32CA0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value + 16);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_21CD32CB8(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21CD33680(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v6 = a2(a1);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_21CD33734(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getObjectType();
  v4 = a2(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_21CD337E0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  swift_getObjectType();
  v6 = a4(a3);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_21CD33A20(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  swift_getObjectType();
  v7 = a2(a1);
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_21CD33AB0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  swift_getObjectType();
  v5 = a2(a1);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_21CD33B38(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *), uint64_t a5)
{
  swift_getObjectType();
  v7 = a4(a3);
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_21CD33CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD33D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CD34190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CD346BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21CD34840(char a1)
{
  result = 0x6D614E6E65766967;
  switch(a1)
  {
    case 1:
      result = 0x614E796C696D6166;
      break;
    case 2:
      result = 7890291;
      break;
    case 3:
      result = 0x7469617274726F70;
      break;
    case 4:
      result = 6645601;
      break;
    case 5:
      result = 0x61654C7441656761;
      break;
    case 6:
      result = 0x6942664F65746164;
      break;
    case 7:
      result = 0x73736572646461;
      break;
    case 8:
      result = 0x746867696568;
      break;
    case 9:
      result = 0x746867696577;
      break;
    case 10:
      result = 0x726F6C6F43657965;
      break;
    case 11:
      result = 0x6F6C6F4372696168;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x536E617265746576;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
    case 18:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x746E656D75636F64;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21CD34A70(uint64_t a1)
{
  v2 = sub_21CD38F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34AAC(uint64_t a1)
{
  v2 = sub_21CD38F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34AE8(uint64_t a1)
{
  v2 = sub_21CD39014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34B24(uint64_t a1)
{
  v2 = sub_21CD39014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34B60(uint64_t a1)
{
  v2 = sub_21CD39068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34B9C(uint64_t a1)
{
  v2 = sub_21CD39068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD3A6A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD34C14(uint64_t a1)
{
  v2 = sub_21CD38B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34C50(uint64_t a1)
{
  v2 = sub_21CD38B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34C8C(uint64_t a1)
{
  v2 = sub_21CD38FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34CC8(uint64_t a1)
{
  v2 = sub_21CD38FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34D04(uint64_t a1)
{
  v2 = sub_21CD38C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34D40(uint64_t a1)
{
  v2 = sub_21CD38C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34D7C(uint64_t a1)
{
  v2 = sub_21CD38B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34DB8(uint64_t a1)
{
  v2 = sub_21CD38B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34DF4(uint64_t a1)
{
  v2 = sub_21CD38BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34E30(uint64_t a1)
{
  v2 = sub_21CD38BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34E6C(uint64_t a1)
{
  v2 = sub_21CD38C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34EA8(uint64_t a1)
{
  v2 = sub_21CD38C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34EE4(uint64_t a1)
{
  v2 = sub_21CD38CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34F20(uint64_t a1)
{
  v2 = sub_21CD38CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34F5C(uint64_t a1)
{
  v2 = sub_21CD38E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34F98(uint64_t a1)
{
  v2 = sub_21CD38E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34FD4(uint64_t a1)
{
  v2 = sub_21CD39164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35010(uint64_t a1)
{
  v2 = sub_21CD39164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3504C(uint64_t a1)
{
  v2 = sub_21CD391B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35088(uint64_t a1)
{
  v2 = sub_21CD391B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD350C4(uint64_t a1)
{
  v2 = sub_21CD38E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35100(uint64_t a1)
{
  v2 = sub_21CD38E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3513C(uint64_t a1)
{
  v2 = sub_21CD38F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35178(uint64_t a1)
{
  v2 = sub_21CD38F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD351B4(uint64_t a1)
{
  v2 = sub_21CD38D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD351F0(uint64_t a1)
{
  v2 = sub_21CD38D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3522C(uint64_t a1)
{
  v2 = sub_21CD38DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35268(uint64_t a1)
{
  v2 = sub_21CD38DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD352A4(uint64_t a1)
{
  v2 = sub_21CD390BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD352E0(uint64_t a1)
{
  v2 = sub_21CD390BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3531C(uint64_t a1)
{
  v2 = sub_21CD39110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35358(uint64_t a1)
{
  v2 = sub_21CD39110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD35394(uint64_t a1)
{
  v2 = sub_21CD38D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD353D0(uint64_t a1)
{
  v2 = sub_21CD38D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3540C(uint64_t a1)
{
  v2 = sub_21CD38EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35448(uint64_t a1)
{
  v2 = sub_21CD38EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentElement.Element.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB08, &qword_21CD92420);
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB10, &qword_21CD92428);
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x28223BE20](v5);
  v111 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB18, &qword_21CD92430);
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v108 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB20, &qword_21CD92438);
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x28223BE20](v9);
  v105 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB28, &qword_21CD92440);
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x28223BE20](v11);
  v102 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB30, &qword_21CD92448);
  v100 = *(v13 - 8);
  v101 = v13;
  MEMORY[0x28223BE20](v13);
  v99 = &v59 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB38, &qword_21CD92450);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v59 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB40, &qword_21CD92458);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v59 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB48, &qword_21CD92460);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v59 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB50, &qword_21CD92468);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v59 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB58, &qword_21CD92470);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v59 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB60, &qword_21CD92478);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v59 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB68, &qword_21CD92480);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v59 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB70, &qword_21CD92488);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v59 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB78, &qword_21CD92490);
  v117 = *(v23 - 8);
  v118 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB80, &qword_21CD92498);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - v26;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB88, &qword_21CD924A0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v59 - v27;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB90, &qword_21CD924A8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v59 - v28;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB98, &qword_21CD924B0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v59 - v29;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ABA0, &qword_21CD924B8);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ABA8, &qword_21CD924C0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v59 - v33;
  v35 = *v1;
  v36 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD38B28();
  sub_21CD842B4();
  if (v36 == 1)
  {
    v37 = v34;
    switch(v35)
    {
      case 1:
        v120 = 1;
        sub_21CD39164();
        v54 = v63;
        sub_21CD840E4();
        v39 = *(v64 + 8);
        v40 = v54;
        v41 = &v97;
        goto LABEL_24;
      case 2:
        v120 = 2;
        sub_21CD39110();
        v51 = v66;
        sub_21CD840E4();
        v39 = *(v67 + 8);
        v40 = v51;
        v41 = &v100;
        goto LABEL_24;
      case 3:
        v120 = 3;
        sub_21CD390BC();
        v52 = v69;
        sub_21CD840E4();
        v39 = *(v70 + 8);
        v40 = v52;
        v41 = &v103;
        goto LABEL_24;
      case 4:
        v120 = 4;
        sub_21CD39068();
        v48 = v72;
        sub_21CD840E4();
        v39 = *(v73 + 8);
        v40 = v48;
        v41 = &v106;
        goto LABEL_24;
      case 5:
        v120 = 6;
        sub_21CD38FC0();
        v55 = v75;
        sub_21CD840E4();
        v39 = *(v76 + 8);
        v40 = v55;
        v41 = &v109;
        goto LABEL_24;
      case 6:
        v120 = 7;
        sub_21CD38F6C();
        v56 = v78;
        sub_21CD840E4();
        v39 = *(v79 + 8);
        v40 = v56;
        v41 = &v112;
        goto LABEL_24;
      case 7:
        v120 = 8;
        sub_21CD38F18();
        v53 = v81;
        sub_21CD840E4();
        v39 = *(v82 + 8);
        v40 = v53;
        v41 = &v115;
        goto LABEL_24;
      case 8:
        v120 = 9;
        sub_21CD38EC4();
        v58 = v84;
        sub_21CD840E4();
        v39 = *(v85 + 8);
        v40 = v58;
        v41 = &v118;
        goto LABEL_24;
      case 9:
        v120 = 10;
        sub_21CD38E70();
        v50 = v87;
        sub_21CD840E4();
        v39 = *(v88 + 8);
        v40 = v50;
        v41 = &v119;
        goto LABEL_24;
      case 10:
        v120 = 11;
        sub_21CD38E1C();
        v57 = v90;
        sub_21CD840E4();
        v39 = *(v91 + 8);
        v40 = v57;
        v41 = &v121;
        goto LABEL_24;
      case 11:
        v120 = 12;
        sub_21CD38DC8();
        v47 = v93;
        sub_21CD840E4();
        v39 = *(v94 + 8);
        v40 = v47;
        v41 = &v122;
        goto LABEL_24;
      case 12:
        v120 = 13;
        sub_21CD38D74();
        v49 = v96;
        sub_21CD840E4();
        v39 = *(v97 + 8);
        v40 = v49;
        v41 = &v123;
        goto LABEL_24;
      case 13:
        v120 = 14;
        sub_21CD38D20();
        v44 = v99;
        sub_21CD840E4();
        v46 = v100;
        v45 = v101;
        goto LABEL_21;
      case 14:
        v120 = 15;
        sub_21CD38CCC();
        v44 = v102;
        sub_21CD840E4();
        v46 = v103;
        v45 = v104;
        goto LABEL_21;
      case 15:
        v120 = 16;
        sub_21CD38C78();
        v44 = v105;
        sub_21CD840E4();
        v46 = v106;
        v45 = v107;
        goto LABEL_21;
      case 16:
        v120 = 17;
        sub_21CD38C24();
        v44 = v108;
        sub_21CD840E4();
        v46 = v109;
        v45 = v110;
        goto LABEL_21;
      case 17:
        v120 = 18;
        sub_21CD38BD0();
        v44 = v111;
        sub_21CD840E4();
        v46 = v112;
        v45 = v113;
        goto LABEL_21;
      case 18:
        v120 = 19;
        sub_21CD38B7C();
        v44 = v114;
        sub_21CD840E4();
        v46 = v115;
        v45 = v116;
LABEL_21:
        (*(v46 + 8))(v44, v45);
        break;
      default:
        v120 = 0;
        sub_21CD391B8();
        v38 = v60;
        sub_21CD840E4();
        v39 = *(v61 + 8);
        v40 = v38;
        v41 = &v94;
LABEL_24:
        v39(v40, *(v41 - 32));
        break;
    }

    return (*(v32 + 8))(v37, v31);
  }

  else
  {
    v120 = 5;
    sub_21CD39014();
    sub_21CD840E4();
    v42 = v118;
    sub_21CD84154();
    (*(v117 + 8))(v25, v42);
    return (*(v32 + 8))(v34, v31);
  }
}

uint64_t MobileDocumentElement.Element.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_21CD93910[v1];
  }

  else
  {
    MEMORY[0x21CF17CC0](5);
  }

  return MEMORY[0x21CF17CC0](v1);
}

uint64_t MobileDocumentElement.Element.hashValue.getter()
{
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t MobileDocumentElement.Element.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC58, &qword_21CD924C8);
  v108 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v68 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC60, &qword_21CD924D0);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v122 = &v68 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC68, &qword_21CD924D8);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v121 = &v68 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC70, &qword_21CD924E0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v120 = &v68 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC78, &qword_21CD924E8);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v119 = &v68 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC80, &qword_21CD924F0);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v118 = &v68 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC88, &qword_21CD924F8);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v117 = &v68 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC90, &qword_21CD92500);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v116 = &v68 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC98, &qword_21CD92508);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v115 = &v68 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACA0, &qword_21CD92510);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v114 = &v68 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACA8, &qword_21CD92518);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v113 = &v68 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACB0, &qword_21CD92520);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v112 = &v68 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACB8, &qword_21CD92528);
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v127 = &v68 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACC0, &qword_21CD92530);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v111 = &v68 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACC8, &qword_21CD92538);
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v126 = &v68 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACD0, &qword_21CD92540);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v125 = &v68 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACD8, &qword_21CD92548);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v110 = &v68 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACE0, &qword_21CD92550);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v109 = &v68 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACE8, &qword_21CD92558);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACF0, &qword_21CD92560);
  v71 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACF8, &unk_21CD92568);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v68 - v28;
  v30 = a1[3];
  v130 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v30);
  sub_21CD38B28();
  v31 = v129;
  sub_21CD842A4();
  v32 = v31;
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_0(v130);
  }

  v69 = v25;
  v68 = v23;
  v70 = v22;
  v33 = v125;
  v34 = v126;
  v36 = v127;
  v35 = v128;
  v129 = v27;
  v37 = sub_21CD840D4();
  v38 = (2 * *(v37 + 16)) | 1;
  v131 = v37;
  v132 = v37 + 32;
  v133 = 0;
  v134 = v38;
  v39 = sub_21CCCBAC8();
  v40 = v29;
  if (v133 != v134 >> 1)
  {
LABEL_5:
    v44 = sub_21CD83FA4();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
    *v46 = &type metadata for MobileDocumentElement.Element;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v129 + 8))(v40, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v130);
  }

  v41 = v124;
  switch(v39)
  {
    case 0:
      v135 = 0;
      sub_21CD391B8();
      v42 = v69;
      sub_21CD84034();
      (*(v71 + 8))(v42, v68);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      break;
    case 1:
      v135 = 1;
      sub_21CD39164();
      v56 = v70;
      sub_21CD84034();
      (*(v72 + 8))(v56, v73);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v32 = 1;
      v43 = 1;
      break;
    case 2:
      v135 = 2;
      sub_21CD39110();
      v53 = v109;
      sub_21CD84034();
      (*(v74 + 8))(v53, v75);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 2;
      break;
    case 3:
      v135 = 3;
      sub_21CD390BC();
      v55 = v110;
      sub_21CD84034();
      (*(v76 + 8))(v55, v77);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 3;
      break;
    case 4:
      v135 = 4;
      sub_21CD39068();
      sub_21CD84034();
      (*(v79 + 8))(v33, v80);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 4;
      break;
    case 5:
      v135 = 5;
      sub_21CD39014();
      sub_21CD84034();
      v127 = v26;
      v58 = v78;
      v59 = sub_21CD840B4();
      v60 = v129;
      v32 = v59;
      (*(v81 + 8))(v34, v58);
      (*(v60 + 8))(v40, v127);
      swift_unknownObjectRelease();
      v43 = 0;
      break;
    case 6:
      v135 = 6;
      sub_21CD38FC0();
      v62 = v111;
      sub_21CD84034();
      (*(v83 + 8))(v62, v82);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 5;
      break;
    case 7:
      v135 = 7;
      sub_21CD38F6C();
      sub_21CD84034();
      (*(v85 + 8))(v36, v84);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 6;
      break;
    case 8:
      v135 = 8;
      sub_21CD38F18();
      v65 = v112;
      sub_21CD84034();
      (*(v86 + 8))(v65, v87);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 7;
      break;
    case 9:
      v135 = 9;
      sub_21CD38EC4();
      v52 = v113;
      sub_21CD84034();
      (*(v88 + 8))(v52, v89);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 8;
      break;
    case 10:
      v135 = 10;
      sub_21CD38E70();
      v64 = v114;
      sub_21CD84034();
      (*(v90 + 8))(v64, v91);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 9;
      break;
    case 11:
      v135 = 11;
      sub_21CD38E1C();
      v50 = v115;
      sub_21CD84034();
      (*(v92 + 8))(v50, v93);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 10;
      break;
    case 12:
      v135 = 12;
      sub_21CD38DC8();
      v51 = v116;
      sub_21CD84034();
      (*(v94 + 8))(v51, v95);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 11;
      break;
    case 13:
      v135 = 13;
      sub_21CD38D74();
      v61 = v117;
      sub_21CD84034();
      (*(v96 + 8))(v61, v97);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 12;
      break;
    case 14:
      v135 = 14;
      sub_21CD38D20();
      v49 = v118;
      sub_21CD84034();
      (*(v98 + 8))(v49, v99);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 13;
      break;
    case 15:
      v135 = 15;
      sub_21CD38CCC();
      v54 = v119;
      sub_21CD84034();
      (*(v100 + 8))(v54, v101);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 14;
      break;
    case 16:
      v135 = 16;
      sub_21CD38C78();
      v48 = v120;
      sub_21CD84034();
      (*(v102 + 8))(v48, v103);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 15;
      break;
    case 17:
      v135 = 17;
      sub_21CD38C24();
      v57 = v121;
      sub_21CD84034();
      (*(v104 + 8))(v57, v105);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 16;
      break;
    case 18:
      v135 = 18;
      sub_21CD38BD0();
      v63 = v122;
      sub_21CD84034();
      (*(v106 + 8))(v63, v107);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 17;
      break;
    case 19:
      v135 = 19;
      sub_21CD38B7C();
      v66 = v123;
      sub_21CD84034();
      (*(v108 + 8))(v66, v41);
      (*(v129 + 8))(v40, v26);
      swift_unknownObjectRelease();
      v43 = 1;
      v32 = 18;
      break;
    default:
      goto LABEL_5;
  }

  v67 = v130;
  *v35 = v32;
  *(v35 + 8) = v43;
  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t sub_21CD380FC()
{
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD38154()
{
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

void MobileDocumentElement.storage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

BOOL static MobileDocumentElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return _s7CoreIDV21MobileDocumentElementV0E0O2eeoiySbAE_AEtFZ_0(&v8, &v6);
}

uint64_t sub_21CD38220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD382A8(uint64_t a1)
{
  v2 = sub_21CD3920C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD382E4(uint64_t a1)
{
  v2 = sub_21CD3920C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AD00, &qword_21CD92578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3920C();
  sub_21CD842B4();
  v10 = v7;
  v11 = v8;
  sub_21CD39260();
  sub_21CD84164();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentElement.hashValue.getter()
{
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t MobileDocumentElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AD18, &qword_21CD92580);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3920C();
  sub_21CD842A4();
  if (!v2)
  {
    sub_21CD392B4();
    sub_21CD840C4();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 8) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD386B0()
{
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD38740()
{
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

BOOL sub_21CD38790(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return _s7CoreIDV21MobileDocumentElementV0E0O2eeoiySbAE_AEtFZ_0(&v8, &v6);
}

uint64_t static MobileDocumentElement.ageAtLeast(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

BOOL _s7CoreIDV21MobileDocumentElementV0E0O2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    switch(v2)
    {
      case 1:
        if (v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (v3 != 2)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (v3 != 3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (v3 != 4)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (v3 != 5)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (v3 != 6)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (v3 != 7)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (v3 != 8)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (v3 != 9)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if (v3 != 10)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if (v3 != 11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if (v3 != 12)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if (v3 != 13)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if (v3 != 14)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if (v3 != 15)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 16:
        if (v3 != 16)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 17:
        if (v3 != 17)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 18:
        if (v3 <= 0x11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  return result;
}

unint64_t sub_21CD38B28()
{
  result = qword_27CE1ABB0;
  if (!qword_27CE1ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABB0);
  }

  return result;
}

unint64_t sub_21CD38B7C()
{
  result = qword_27CE1ABB8;
  if (!qword_27CE1ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABB8);
  }

  return result;
}

unint64_t sub_21CD38BD0()
{
  result = qword_27CE1ABC0;
  if (!qword_27CE1ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABC0);
  }

  return result;
}

unint64_t sub_21CD38C24()
{
  result = qword_27CE1ABC8;
  if (!qword_27CE1ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABC8);
  }

  return result;
}

unint64_t sub_21CD38C78()
{
  result = qword_27CE1ABD0;
  if (!qword_27CE1ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABD0);
  }

  return result;
}

unint64_t sub_21CD38CCC()
{
  result = qword_27CE1ABD8;
  if (!qword_27CE1ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABD8);
  }

  return result;
}

unint64_t sub_21CD38D20()
{
  result = qword_27CE1ABE0;
  if (!qword_27CE1ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABE0);
  }

  return result;
}

unint64_t sub_21CD38D74()
{
  result = qword_27CE1ABE8;
  if (!qword_27CE1ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABE8);
  }

  return result;
}

unint64_t sub_21CD38DC8()
{
  result = qword_27CE1ABF0;
  if (!qword_27CE1ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABF0);
  }

  return result;
}

unint64_t sub_21CD38E1C()
{
  result = qword_27CE1ABF8;
  if (!qword_27CE1ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABF8);
  }

  return result;
}

unint64_t sub_21CD38E70()
{
  result = qword_27CE1AC00;
  if (!qword_27CE1AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC00);
  }

  return result;
}

unint64_t sub_21CD38EC4()
{
  result = qword_27CE1AC08;
  if (!qword_27CE1AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC08);
  }

  return result;
}

unint64_t sub_21CD38F18()
{
  result = qword_27CE1AC10;
  if (!qword_27CE1AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC10);
  }

  return result;
}

unint64_t sub_21CD38F6C()
{
  result = qword_27CE1AC18;
  if (!qword_27CE1AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC18);
  }

  return result;
}

unint64_t sub_21CD38FC0()
{
  result = qword_27CE1AC20;
  if (!qword_27CE1AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC20);
  }

  return result;
}

unint64_t sub_21CD39014()
{
  result = qword_27CE1AC28;
  if (!qword_27CE1AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC28);
  }

  return result;
}

unint64_t sub_21CD39068()
{
  result = qword_27CE1AC30;
  if (!qword_27CE1AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC30);
  }

  return result;
}

unint64_t sub_21CD390BC()
{
  result = qword_27CE1AC38;
  if (!qword_27CE1AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC38);
  }

  return result;
}

unint64_t sub_21CD39110()
{
  result = qword_27CE1AC40;
  if (!qword_27CE1AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC40);
  }

  return result;
}

unint64_t sub_21CD39164()
{
  result = qword_27CE1AC48;
  if (!qword_27CE1AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC48);
  }

  return result;
}

unint64_t sub_21CD391B8()
{
  result = qword_27CE1AC50;
  if (!qword_27CE1AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC50);
  }

  return result;
}

unint64_t sub_21CD3920C()
{
  result = qword_27CE1AD08;
  if (!qword_27CE1AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD08);
  }

  return result;
}

unint64_t sub_21CD39260()
{
  result = qword_27CE1AD10;
  if (!qword_27CE1AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD10);
  }

  return result;
}

unint64_t sub_21CD392B4()
{
  result = qword_27CE1AD20;
  if (!qword_27CE1AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD20);
  }

  return result;
}

unint64_t sub_21CD3930C()
{
  result = qword_27CE1AD28;
  if (!qword_27CE1AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD28);
  }

  return result;
}

unint64_t sub_21CD39364()
{
  result = qword_27CE1AD30;
  if (!qword_27CE1AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentElement.Element.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileDocumentElement.Element.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CD3967C()
{
  result = qword_27CE1AD38;
  if (!qword_27CE1AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD38);
  }

  return result;
}

unint64_t sub_21CD396D4()
{
  result = qword_27CE1AD40;
  if (!qword_27CE1AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD40);
  }

  return result;
}

unint64_t sub_21CD3972C()
{
  result = qword_27CE1AD48;
  if (!qword_27CE1AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD48);
  }

  return result;
}

unint64_t sub_21CD39784()
{
  result = qword_27CE1AD50;
  if (!qword_27CE1AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD50);
  }

  return result;
}

unint64_t sub_21CD397DC()
{
  result = qword_27CE1AD58;
  if (!qword_27CE1AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD58);
  }

  return result;
}

unint64_t sub_21CD39834()
{
  result = qword_27CE1AD60;
  if (!qword_27CE1AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD60);
  }

  return result;
}

unint64_t sub_21CD3988C()
{
  result = qword_27CE1AD68;
  if (!qword_27CE1AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD68);
  }

  return result;
}

unint64_t sub_21CD398E4()
{
  result = qword_27CE1AD70;
  if (!qword_27CE1AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD70);
  }

  return result;
}

unint64_t sub_21CD3993C()
{
  result = qword_27CE1AD78;
  if (!qword_27CE1AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD78);
  }

  return result;
}

unint64_t sub_21CD39994()
{
  result = qword_27CE1AD80;
  if (!qword_27CE1AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD80);
  }

  return result;
}

unint64_t sub_21CD399EC()
{
  result = qword_27CE1AD88;
  if (!qword_27CE1AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD88);
  }

  return result;
}

unint64_t sub_21CD39A44()
{
  result = qword_27CE1AD90;
  if (!qword_27CE1AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD90);
  }

  return result;
}

unint64_t sub_21CD39A9C()
{
  result = qword_27CE1AD98;
  if (!qword_27CE1AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD98);
  }

  return result;
}

unint64_t sub_21CD39AF4()
{
  result = qword_27CE1ADA0;
  if (!qword_27CE1ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADA0);
  }

  return result;
}

unint64_t sub_21CD39B4C()
{
  result = qword_27CE1ADA8;
  if (!qword_27CE1ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADA8);
  }

  return result;
}

unint64_t sub_21CD39BA4()
{
  result = qword_27CE1ADB0;
  if (!qword_27CE1ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADB0);
  }

  return result;
}

unint64_t sub_21CD39BFC()
{
  result = qword_27CE1ADB8;
  if (!qword_27CE1ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADB8);
  }

  return result;
}

unint64_t sub_21CD39C54()
{
  result = qword_27CE1ADC0;
  if (!qword_27CE1ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADC0);
  }

  return result;
}

unint64_t sub_21CD39CAC()
{
  result = qword_27CE1ADC8;
  if (!qword_27CE1ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADC8);
  }

  return result;
}

unint64_t sub_21CD39D04()
{
  result = qword_27CE1ADD0;
  if (!qword_27CE1ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADD0);
  }

  return result;
}

unint64_t sub_21CD39D5C()
{
  result = qword_27CE1ADD8;
  if (!qword_27CE1ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADD8);
  }

  return result;
}

unint64_t sub_21CD39DB4()
{
  result = qword_27CE1ADE0;
  if (!qword_27CE1ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADE0);
  }

  return result;
}

unint64_t sub_21CD39E0C()
{
  result = qword_27CE1ADE8;
  if (!qword_27CE1ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADE8);
  }

  return result;
}

unint64_t sub_21CD39E64()
{
  result = qword_27CE1ADF0;
  if (!qword_27CE1ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADF0);
  }

  return result;
}

unint64_t sub_21CD39EBC()
{
  result = qword_27CE1ADF8;
  if (!qword_27CE1ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADF8);
  }

  return result;
}

unint64_t sub_21CD39F14()
{
  result = qword_27CE1AE00;
  if (!qword_27CE1AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE00);
  }

  return result;
}

unint64_t sub_21CD39F6C()
{
  result = qword_27CE1AE08;
  if (!qword_27CE1AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE08);
  }

  return result;
}

unint64_t sub_21CD39FC4()
{
  result = qword_27CE1AE10;
  if (!qword_27CE1AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE10);
  }

  return result;
}

unint64_t sub_21CD3A01C()
{
  result = qword_27CE1AE18;
  if (!qword_27CE1AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE18);
  }

  return result;
}

unint64_t sub_21CD3A074()
{
  result = qword_27CE1AE20;
  if (!qword_27CE1AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE20);
  }

  return result;
}

unint64_t sub_21CD3A0CC()
{
  result = qword_27CE1AE28;
  if (!qword_27CE1AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE28);
  }

  return result;
}

unint64_t sub_21CD3A124()
{
  result = qword_27CE1AE30;
  if (!qword_27CE1AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE30);
  }

  return result;
}

unint64_t sub_21CD3A17C()
{
  result = qword_27CE1AE38;
  if (!qword_27CE1AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE38);
  }

  return result;
}

unint64_t sub_21CD3A1D4()
{
  result = qword_27CE1AE40;
  if (!qword_27CE1AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE40);
  }

  return result;
}

unint64_t sub_21CD3A22C()
{
  result = qword_27CE1AE48;
  if (!qword_27CE1AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE48);
  }

  return result;
}

unint64_t sub_21CD3A284()
{
  result = qword_27CE1AE50;
  if (!qword_27CE1AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE50);
  }

  return result;
}

unint64_t sub_21CD3A2DC()
{
  result = qword_27CE1AE58;
  if (!qword_27CE1AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE58);
  }

  return result;
}

unint64_t sub_21CD3A334()
{
  result = qword_27CE1AE60;
  if (!qword_27CE1AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE60);
  }

  return result;
}

unint64_t sub_21CD3A38C()
{
  result = qword_27CE1AE68;
  if (!qword_27CE1AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE68);
  }

  return result;
}

unint64_t sub_21CD3A3E4()
{
  result = qword_27CE1AE70;
  if (!qword_27CE1AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE70);
  }

  return result;
}

unint64_t sub_21CD3A43C()
{
  result = qword_27CE1AE78;
  if (!qword_27CE1AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE78);
  }

  return result;
}

unint64_t sub_21CD3A494()
{
  result = qword_27CE1AE80;
  if (!qword_27CE1AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE80);
  }

  return result;
}

unint64_t sub_21CD3A4EC()
{
  result = qword_27CE1AE88;
  if (!qword_27CE1AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE88);
  }

  return result;
}

unint64_t sub_21CD3A544()
{
  result = qword_27CE1AE90;
  if (!qword_27CE1AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE90);
  }

  return result;
}

unint64_t sub_21CD3A59C()
{
  result = qword_27CE1AE98;
  if (!qword_27CE1AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE98);
  }

  return result;
}

unint64_t sub_21CD3A5F4()
{
  result = qword_27CE1AEA0;
  if (!qword_27CE1AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEA0);
  }

  return result;
}

unint64_t sub_21CD3A64C()
{
  result = qword_27CE1AEA8;
  if (!qword_27CE1AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEA8);
  }

  return result;
}

uint64_t sub_21CD3A6A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61654C7441656761 && a2 == 0xEA00000000007473 || (sub_21CD841A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472 || (sub_21CD841A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_21CD841A4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA80 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x536E617265746576 && a2 == 0xED00007375746174 || (sub_21CD841A4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA60 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9D9E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CD9DA40 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9DA00 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CD9DA20 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_21CD3AD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E69617465527369 && a2 == 0xEB00000000676E69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD3ADDC(uint64_t a1)
{
  v2 = sub_21CD3AF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3AE18(uint64_t a1)
{
  v2 = sub_21CD3AF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentElementRequestInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEB0, &qword_21CD939B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3AF8C();
  sub_21CD842B4();
  sub_21CD84144();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21CD3AF8C()
{
  result = qword_27CE1AEB8;
  if (!qword_27CE1AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEB8);
  }

  return result;
}

uint64_t MobileDocumentElementRequestInfo.hashValue.getter()
{
  sub_21CD84264();
  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t MobileDocumentElementRequestInfo.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEC0, &qword_21CD939B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3AF8C();
  sub_21CD842A4();
  if (!v2)
  {
    v9 = sub_21CD840A4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD3B1C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEB0, &qword_21CD939B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3AF8C();
  sub_21CD842B4();
  sub_21CD84144();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CD3B2FC()
{
  sub_21CD84264();
  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t sub_21CD3B370()
{
  sub_21CD84264();
  sub_21CD84284();
  return sub_21CD84294();
}

unint64_t sub_21CD3B3B8()
{
  result = qword_27CE1AEC8;
  if (!qword_27CE1AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentElementRequestInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_21CD3B4D0()
{
  result = qword_27CE1AED0;
  if (!qword_27CE1AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AED0);
  }

  return result;
}

unint64_t sub_21CD3B528()
{
  result = qword_27CE1AED8;
  if (!qword_27CE1AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AED8);
  }

  return result;
}

unint64_t sub_21CD3B580()
{
  result = qword_27CE1AEE0;
  if (!qword_27CE1AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEE0);
  }

  return result;
}

uint64_t MobileDocumentIssuer.jurisdictionCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MobileDocumentIssuer.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4();
  }
}

uint64_t sub_21CD3B658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000021CDA0D70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CD3B6EC(uint64_t a1)
{
  v2 = sub_21CD3B8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3B728(uint64_t a1)
{
  v2 = sub_21CD3B8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentIssuer.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEE8, &qword_21CD93BE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3B8A0();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21CD3B8A0()
{
  result = qword_27CE1AEF0;
  if (!qword_27CE1AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEF0);
  }

  return result;
}

uint64_t MobileDocumentIssuer.hashValue.getter()
{
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentIssuer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEF8, &qword_21CD93BE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3B8A0();
  sub_21CD842A4();
  if (!v2)
  {
    v9 = sub_21CD84094();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD3BAD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEE8, &qword_21CD93BE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3B8A0();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21CD3BC14()
{
  result = qword_27CE1AF00;
  if (!qword_27CE1AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF00);
  }

  return result;
}

unint64_t sub_21CD3BC8C()
{
  result = qword_27CE1AF08;
  if (!qword_27CE1AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF08);
  }

  return result;
}

unint64_t sub_21CD3BCE4()
{
  result = qword_27CE1AF10;
  if (!qword_27CE1AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF10);
  }

  return result;
}

unint64_t sub_21CD3BD3C()
{
  result = qword_27CE1AF18;
  if (!qword_27CE1AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF18);
  }

  return result;
}

uint64_t MobileDocumentReaderConfiguration.merchantServerAccessToken.getter()
{
  v1 = *v0;

  return v1;
}

CoreIDV::MobileDocumentReaderConfiguration __swiftcall MobileDocumentReaderConfiguration.init(merchantServerAccessToken:userAcceptedTermsAndConditions:)(CoreIDV::MobileDocumentReaderConfiguration merchantServerAccessToken, Swift::Bool userAcceptedTermsAndConditions)
{
  *v2 = merchantServerAccessToken.merchantServerAccessToken;
  *(v2 + 16) = userAcceptedTermsAndConditions;
  merchantServerAccessToken.userAcceptedTermsAndConditions = userAcceptedTermsAndConditions;
  return merchantServerAccessToken;
}

unint64_t sub_21CD3BDD8()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_21CD3BE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000021CDA0D90 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021CDA0DB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

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

uint64_t sub_21CD3BEF8(uint64_t a1)
{
  v2 = sub_21CD3C5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3BF34(uint64_t a1)
{
  v2 = sub_21CD3C5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF20, &qword_21CD93E00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3C5B4();
  sub_21CD842B4();
  v12 = 0;
  v7 = v9[1];
  sub_21CD840F4();
  if (!v7)
  {
    v11 = 1;
    sub_21CD84144();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderConfiguration.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84284();
}

uint64_t MobileDocumentReaderConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  sub_21CD84284();
  if (v1)
  {
    sub_21CD83B74();
  }

  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF30, &qword_21CD93E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3C5B4();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v9 = sub_21CD84054();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_21CD840A4();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD3C3E0()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  sub_21CD84284();
  if (v1)
  {
    sub_21CD83B74();
  }

  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t sub_21CD3C460(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84284();
}

uint64_t sub_21CD3C4C8()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  sub_21CD84284();
  if (v1)
  {
    sub_21CD83B74();
  }

  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t _s7CoreIDV33MobileDocumentReaderConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_21CD841A4() & 1) != 0)
      {
        return v4 ^ v6 ^ 1u;
      }
    }
  }

  else if (!v5)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

unint64_t sub_21CD3C5B4()
{
  result = qword_27CE1AF28;
  if (!qword_27CE1AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF28);
  }

  return result;
}

unint64_t sub_21CD3C60C()
{
  result = qword_27CE1AF38;
  if (!qword_27CE1AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF38);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21CD3C674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21CD3C6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21CD3C748()
{
  result = qword_27CE1AF40;
  if (!qword_27CE1AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF40);
  }

  return result;
}

unint64_t sub_21CD3C7A0()
{
  result = qword_27CE1AF48;
  if (!qword_27CE1AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF48);
  }

  return result;
}

unint64_t sub_21CD3C7F8()
{
  result = qword_27CE1AF50;
  if (!qword_27CE1AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF50);
  }

  return result;
}

uint64_t MobileDocumentReaderConfigurationResponse.sessionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReaderConfigurationResponse.sessionExpirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse(0) + 20);
  v4 = sub_21CD83744();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MobileDocumentReaderConfigurationResponse(uint64_t a1)
{
  result = qword_27CE1AF78;
  if (!qword_27CE1AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentReaderConfigurationResponse.init(sessionIdentifier:sessionExpirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse(0) + 20);
  v7 = sub_21CD83744();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static MobileDocumentReaderConfigurationResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse(0) + 20);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

unint64_t sub_21CD3CA44()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21CD3CA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021CDA0110 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021CDA0DD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

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

uint64_t sub_21CD3CB64(uint64_t a1)
{
  v2 = sub_21CD3CD94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3CBA0(uint64_t a1)
{
  v2 = sub_21CD3CD94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderConfigurationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF58, &qword_21CD94040);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3CD94();
  sub_21CD842B4();
  v8[15] = 0;
  sub_21CD84134();
  if (!v1)
  {
    type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
    v8[14] = 1;
    sub_21CD83744();
    sub_21CD3D558(&qword_27CE1A1C8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_21CD84164();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21CD3CD94()
{
  result = qword_27CE1AF60;
  if (!qword_27CE1AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF60);
  }

  return result;
}

uint64_t MobileDocumentReaderConfigurationResponse.hash(into:)(uint64_t a1)
{
  sub_21CD83B74();
  type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_21CD83A64();
}

uint64_t MobileDocumentReaderConfigurationResponse.hashValue.getter()
{
  sub_21CD84264();
  sub_21CD83B74();
  type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderConfigurationResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_21CD83744();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF68, &qword_21CD94048);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3CD94();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_21CD84094();
  v10[1] = v13;
  v21 = 1;
  sub_21CD3D558(&qword_27CE1A1E8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_21CD840C4();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_21CD3D450(v10, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD3D4B4(v10);
}

uint64_t sub_21CD3D278()
{
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t sub_21CD3D320(uint64_t a1)
{
  sub_21CD83B74();
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_21CD83A64();
}

uint64_t sub_21CD3D3AC()
{
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t sub_21CD3D450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD3D4B4(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD3D558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CD3D5A0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_21CD3D64C(uint64_t a1)
{
  result = sub_21CD83744();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CD3D6DC()
{
  result = qword_27CE1AF88;
  if (!qword_27CE1AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF88);
  }

  return result;
}

unint64_t sub_21CD3D734()
{
  result = qword_27CE1AF90;
  if (!qword_27CE1AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF90);
  }

  return result;
}

unint64_t sub_21CD3D78C()
{
  result = qword_27CE1AF98;
  if (!qword_27CE1AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF98);
  }

  return result;
}

BOOL static MobileDocumentReaderDeviceEngagementType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_21CD1A0A8(*a2, *(a2 + 8));
      sub_21CD1A0A8(v2, v3);
      v6 = sub_21CD23300(v2, v3, v4, v5);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_21CD1A0A8(*a2, *(a2 + 8));
    sub_21CD1A0A8(v2, v3);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:
  sub_21CD1A0AC(v2, v3);
  sub_21CD1A0AC(v4, v5);
  return v6;
}

uint64_t sub_21CD3D8AC()
{
  if (*v0)
  {
    return 29297;
  }

  else
  {
    return 6514286;
  }
}

uint64_t sub_21CD3D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6514286 && a2 == 0xE300000000000000;
  if (v5 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 29297 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD3D9A8(uint64_t a1)
{
  v2 = sub_21CD3E6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3D9E4(uint64_t a1)
{
  v2 = sub_21CD3E6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3DA20(uint64_t a1)
{
  v2 = sub_21CD3E7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3DA5C(uint64_t a1)
{
  v2 = sub_21CD3E7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3DAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD3DB38(uint64_t a1)
{
  v2 = sub_21CD3E750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3DB74(uint64_t a1)
{
  v2 = sub_21CD3E750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderDeviceEngagementType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFA0, &qword_21CD94270);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v19 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFA8, &qword_21CD94278);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFB0, &qword_21CD94280);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v16 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3E6FC();
  sub_21CD842B4();
  if (v12 >> 60 == 15)
  {
    LOBYTE(v22) = 0;
    sub_21CD3E7A4();
    sub_21CD840E4();
    (*(v17 + 8))(v7, v18);
  }

  else
  {
    LOBYTE(v22) = 1;
    sub_21CD3E750();
    v14 = v19;
    sub_21CD840E4();
    v22 = v16;
    v23 = v12;
    sub_21CCFFDB0();
    v15 = v21;
    sub_21CD84164();
    (*(v20 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t MobileDocumentReaderDeviceEngagementType.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    return MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](1);

  return sub_21CD83704();
}

uint64_t MobileDocumentReaderDeviceEngagementType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  if (v1 >> 60 == 15)
  {
    MEMORY[0x21CF17CC0](0);
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
    sub_21CD83704();
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderDeviceEngagementType.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFD0, &qword_21CD94288);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFD8, &qword_21CD94290);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFE0, &unk_21CD94298);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_21CD3E6FC();
  v15 = v37;
  sub_21CD842A4();
  if (!v15)
  {
    v37 = v11;
    v17 = v35;
    v16 = v36;
    v18 = sub_21CD840D4();
    v19 = (2 * *(v18 + 16)) | 1;
    v39 = v18;
    v40 = v18 + 32;
    v41 = 0;
    v42 = v19;
    v20 = sub_21CCD18DC();
    if (v20 == 2 || v41 != v42 >> 1)
    {
      v24 = sub_21CD83FA4();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
      *v26 = &type metadata for MobileDocumentReaderDeviceEngagementType;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v37 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        LOBYTE(v38) = 1;
        sub_21CD3E750();
        v21 = v13;
        v22 = v6;
        sub_21CD84034();
        v23 = v37;
        sub_21CCFFE7C();
        v29 = v22;
        v30 = v33;
        sub_21CD840C4();
        (*(v34 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v38;
      }

      else
      {
        LOBYTE(v38) = 0;
        sub_21CD3E7A4();
        sub_21CD84034();
        v28 = v37;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = xmmword_21CD94260;
      }

      *v16 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t sub_21CD3E4C4()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  if (v1 >> 60 == 15)
  {
    MEMORY[0x21CF17CC0](0);
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
    sub_21CD83704();
  }

  return sub_21CD84294();
}

uint64_t sub_21CD3E53C(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    return MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](1);

  return sub_21CD83704();
}

uint64_t sub_21CD3E5BC()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  if (v1 >> 60 == 15)
  {
    MEMORY[0x21CF17CC0](0);
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
    sub_21CD83704();
  }

  return sub_21CD84294();
}

BOOL sub_21CD3E630(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_21CD1A0A8(*a2, *(a2 + 8));
      sub_21CD1A0A8(v2, v3);
      v6 = sub_21CD23300(v2, v3, v4, v5);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_21CD1A0A8(*a2, *(a2 + 8));
    sub_21CD1A0A8(v2, v3);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:
  sub_21CD1A0AC(v2, v3);
  sub_21CD1A0AC(v4, v5);
  return v6;
}

unint64_t sub_21CD3E6FC()
{
  result = qword_27CE1AFB8;
  if (!qword_27CE1AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFB8);
  }

  return result;
}

unint64_t sub_21CD3E750()
{
  result = qword_27CE1AFC0;
  if (!qword_27CE1AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFC0);
  }

  return result;
}

unint64_t sub_21CD3E7A4()
{
  result = qword_27CE1AFC8;
  if (!qword_27CE1AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFC8);
  }

  return result;
}

unint64_t sub_21CD3E7FC()
{
  result = qword_27CE1AFE8;
  if (!qword_27CE1AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7CoreIDV40MobileDocumentReaderDeviceEngagementTypeO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CD3E878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CD3E8CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_21CD3E91C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

unint64_t sub_21CD3E990()
{
  result = qword_27CE1AFF0;
  if (!qword_27CE1AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFF0);
  }

  return result;
}

unint64_t sub_21CD3E9E8()
{
  result = qword_27CE1AFF8;
  if (!qword_27CE1AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFF8);
  }

  return result;
}

unint64_t sub_21CD3EA40()
{
  result = qword_27CE1B000;
  if (!qword_27CE1B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B000);
  }

  return result;
}

unint64_t sub_21CD3EA98()
{
  result = qword_27CE1B008;
  if (!qword_27CE1B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B008);
  }

  return result;
}

unint64_t sub_21CD3EAF0()
{
  result = qword_27CE1B010;
  if (!qword_27CE1B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B010);
  }

  return result;
}

unint64_t sub_21CD3EB48()
{
  result = qword_27CE1B018;
  if (!qword_27CE1B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B018);
  }

  return result;
}

unint64_t sub_21CD3EBA0()
{
  result = qword_27CE1B020;
  if (!qword_27CE1B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B020);
  }

  return result;
}

unint64_t sub_21CD3EBF8()
{
  result = qword_27CE1B028;
  if (!qword_27CE1B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B028);
  }

  return result;
}

uint64_t sub_21CD3EC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentRequest.elements.getter()
{
  type metadata accessor for MobileDocumentRequest(0);
}

uint64_t type metadata accessor for MobileDocumentRequest(uint64_t a1)
{
  result = qword_27CE1B098;
  if (!qword_27CE1B098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentRequest.elements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileDocumentRequest(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileDocumentRequest.init(documentType:elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21CD3EE50(a1, a3);
  result = type metadata accessor for MobileDocumentRequest(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_21CD3EE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD3EEB8()
{
  if (*v0)
  {
    return 0x73746E656D656C65;
  }

  else
  {
    return 0x746E656D75636F64;
  }
}

uint64_t sub_21CD3EEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD3EFDC(uint64_t a1)
{
  v2 = sub_21CD3FF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3F018(uint64_t a1)
{
  v2 = sub_21CD3FF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B030, &qword_21CD94720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3FF60();
  sub_21CD842B4();
  v12 = 0;
  type metadata accessor for MobileDocumentType(0);
  sub_21CD401DC(&qword_27CE1B040, type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  sub_21CD84164();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for MobileDocumentRequest(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B048, &qword_21CD94728);
    sub_21CD4005C(&qword_27CE1B050, sub_21CD3FFB4, sub_21CD40008, MEMORY[0x277D83508]);
    sub_21CD84164();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MobileDocumentRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCF148C(v2, v10, type metadata accessor for MobileDocumentType.Identifier);
  v11 = (*(v5 + 48))(v10, 2, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x21CF17CC0](v12);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x21CF17CC0](1);
    sub_21CD401DC(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  v13 = type metadata accessor for MobileDocumentRequest(0);
  return sub_21CCD5008(a1, *(v2 + *(v13 + 20)));
}

uint64_t MobileDocumentRequest.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCF148C(v1, v8, type metadata accessor for MobileDocumentType.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x21CF17CC0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD401DC(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for MobileDocumentRequest(0);
  sub_21CCD5008(v14, *(v1 + *(v11 + 20)));
  return sub_21CD84294();
}

uint64_t MobileDocumentRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for MobileDocumentType(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B068, &qword_21CD94730);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for MobileDocumentRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3FF60();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_21CD401DC(&qword_27CE1B070, type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  v14 = v19;
  sub_21CD840C4();
  sub_21CD3EE50(v20, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B048, &qword_21CD94728);
  v22 = 1;
  sub_21CD4005C(&qword_27CE1B078, sub_21CD400EC, sub_21CD40140, MEMORY[0x277D83528]);
  sub_21CD840C4();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_21CCF148C(v13, v17, type metadata accessor for MobileDocumentRequest);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD4044C(v13, type metadata accessor for MobileDocumentRequest);
}

uint64_t sub_21CD3FA28(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCF148C(v4, v11, type metadata accessor for MobileDocumentType.Identifier);
  v12 = (*(v6 + 48))(v11, 2, v5);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    MEMORY[0x21CF17CC0](v13);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x21CF17CC0](1);
    sub_21CD401DC(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v6 + 8))(v8, v5);
  }

  sub_21CCD5008(v16, *(v4 + *(a2 + 20)));
  return sub_21CD84294();
}

uint64_t _s7CoreIDV21MobileDocumentRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = *(v12 + 56);
  sub_21CCF148C(a1, &v23 - v13, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CCF148C(a2, &v14[v15], type metadata accessor for MobileDocumentType.Identifier);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v14[v15], 2, v4) == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v16(&v14[v15], 2, v4) == 2)
    {
LABEL_10:
      sub_21CD4044C(v14, type metadata accessor for MobileDocumentType.Identifier);
      v21 = type metadata accessor for MobileDocumentRequest(0);
      v18 = sub_21CCFBBFC(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20)));
      return v18 & 1;
    }
  }

  else
  {
    sub_21CCF148C(v14, v10, type metadata accessor for MobileDocumentType.Identifier);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = MEMORY[0x21CF17230](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      if ((v19 & 1) == 0)
      {
        sub_21CD4044C(v14, type metadata accessor for MobileDocumentType.Identifier);
        v18 = 0;
        return v18 & 1;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_21CCAC1DC(v14);
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_21CD3FF60()
{
  result = qword_27CE1B038;
  if (!qword_27CE1B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B038);
  }

  return result;
}

unint64_t sub_21CD3FFB4()
{
  result = qword_27CE1B058;
  if (!qword_27CE1B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B058);
  }

  return result;
}

unint64_t sub_21CD40008()
{
  result = qword_27CE1B060;
  if (!qword_27CE1B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B060);
  }

  return result;
}

uint64_t sub_21CD4005C(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B048, &qword_21CD94728);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD400EC()
{
  result = qword_27CE1B080;
  if (!qword_27CE1B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B080);
  }

  return result;
}

unint64_t sub_21CD40140()
{
  result = qword_27CE1B088;
  if (!qword_27CE1B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B088);
  }

  return result;
}

uint64_t sub_21CD401DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21CD4024C(uint64_t a1)
{
  type metadata accessor for MobileDocumentType(319);
  if (v1 <= 0x3F)
  {
    sub_21CD402D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CD402D0(uint64_t a1)
{
  if (!qword_27CE1B0A8)
  {
    sub_21CCF13F0();
    v1 = sub_21CD83A44();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE1B0A8);
    }
  }
}

unint64_t sub_21CD40348()
{
  result = qword_27CE1B0B0;
  if (!qword_27CE1B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0B0);
  }

  return result;
}

unint64_t sub_21CD403A0()
{
  result = qword_27CE1B0B8;
  if (!qword_27CE1B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0B8);
  }

  return result;
}

unint64_t sub_21CD403F8()
{
  result = qword_27CE1B0C0;
  if (!qword_27CE1B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0C0);
  }

  return result;
}

uint64_t sub_21CD4044C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileDocumentReaderMerchant.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReaderMerchant.logoData.getter()
{
  v1 = *(v0 + 16);
  sub_21CC96064(v1, *(v0 + 24));
  return v1;
}

uint64_t MobileDocumentReaderMerchant.identifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MobileDocumentReaderMerchant.init(name:logoData:identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_21CD40554()
{
  v1 = 0x617461446F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21CD405AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD4122C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD405D4(uint64_t a1)
{
  v2 = sub_21CD40FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD40610(uint64_t a1)
{
  v2 = sub_21CD40FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderMerchant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B0C8, &qword_21CD94940);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v12 = v1[3];
  v13 = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD40FB0();
  sub_21CD842B4();
  LOBYTE(v15) = 0;
  v9 = v14;
  sub_21CD84134();
  if (!v9)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_21CC96064(v13, v12);
    sub_21CCFFDB0();
    sub_21CD84124();
    sub_21CC95F8C(v15, v16);
    LOBYTE(v15) = 2;
    sub_21CD840F4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderMerchant.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_21CD83B74();
  if (v2 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  if (!v3)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderMerchant.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  if (v1 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderMerchant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B0D8, &qword_21CD94948);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD40FB0();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_21CD84094();
  v21 = v10;
  v24 = 1;
  sub_21CCFFE7C();
  sub_21CD84084();
  v19 = v22;
  v20 = v23;
  LOBYTE(v22) = 2;
  v11 = sub_21CD84054();
  v12 = *(v6 + 8);
  v18 = v13;
  v12(v8, v5);
  v15 = v20;
  v14 = v21;
  *a2 = v9;
  a2[1] = v14;
  v16 = v19;
  a2[2] = v19;
  a2[3] = v15;
  a2[4] = v11;
  a2[5] = v18;

  sub_21CC96064(v16, v15);

  __swift_destroy_boxed_opaque_existential_0(a1);

  sub_21CC95F8C(v16, v15);
}

uint64_t sub_21CD40C90(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_21CD83B74();
  if (v2 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  if (!v3)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t sub_21CD40D54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  if (v1 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

BOOL _s7CoreIDV28MobileDocumentReaderMerchantV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_21CC96064(v2, v4);
      sub_21CC96064(v7, v6);
      sub_21CC95F8C(v2, v4);
      goto LABEL_11;
    }

LABEL_8:
    sub_21CC96064(v2, v4);
    sub_21CC96064(v7, v6);
    sub_21CC95F8C(v2, v4);
    sub_21CC95F8C(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_21CC96064(v2, v4);
  sub_21CC96064(v7, v6);
  v11 = sub_21CD23300(v2, v4, v7, v6);
  sub_21CC95F8C(v7, v6);
  sub_21CC95F8C(v2, v4);
  if (!v11)
  {
    return 0;
  }

LABEL_11:
  if (v5)
  {
    return v8 && (v3 == v9 && v5 == v8 || (sub_21CD841A4() & 1) != 0);
  }

  return !v8;
}

unint64_t sub_21CD40FB0()
{
  result = qword_27CE1B0D0;
  if (!qword_27CE1B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0D0);
  }

  return result;
}

unint64_t sub_21CD41008()
{
  result = qword_27CE1B0E0;
  if (!qword_27CE1B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0E0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21CD41070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21CD410B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21CD41128()
{
  result = qword_27CE1B0E8;
  if (!qword_27CE1B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0E8);
  }

  return result;
}

unint64_t sub_21CD41180()
{
  result = qword_27CE1B0F0;
  if (!qword_27CE1B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0F0);
  }

  return result;
}

unint64_t sub_21CD411D8()
{
  result = qword_27CE1B0F8;
  if (!qword_27CE1B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0F8);
  }

  return result;
}

uint64_t sub_21CD4122C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446F676F6CLL && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MobileDocumentReaderRequest.sessionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReaderRequest.documentRequestType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_21CD19BA8(v2, v3, v4);
}

__n128 MobileDocumentReaderRequest.init(sessionIdentifier:documentRequestType:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

unint64_t sub_21CD413AC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21CD413E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021CDA0110 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021CDA0DF0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

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

uint64_t sub_21CD414CC(uint64_t a1)
{
  v2 = sub_21CD42828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD41508(uint64_t a1)
{
  v2 = sub_21CD42828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B100, &qword_21CD94C00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v7;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD42828();
  sub_21CD842B4();
  LOBYTE(v13) = 0;
  v8 = v12;
  sub_21CD84134();
  if (!v8)
  {
    v13 = v11;
    v14 = v10;
    v15 = v16;
    v17 = 1;
    sub_21CD19BA8(v11, v10, v16);
    sub_21CD4287C();
    sub_21CD84164();
    sub_21CD19C4C(v13, v14, v15);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_21CD83B74();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x21CF17CC0](v6);

    return sub_21CD41C30(a1, v3);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(a1, v3);

    return sub_21CD421F0(a1, v4);
  }
}

uint64_t MobileDocumentReaderRequest.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_21CD84264();
  sub_21CD83B74();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);
    sub_21CD41C30(v6, v1);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v6, v1);
    sub_21CD421F0(v6, v2);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B118, &qword_21CD94C08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD42828();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_21CD84094();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_21CD428D0();
  sub_21CD840C4();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;
  v15 = v20;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;

  sub_21CD19BA8(v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_21CD19C4C(v13, v14, v15);
}

uint64_t sub_21CD41AC4(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_21CD83B74();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x21CF17CC0](v6);

    return sub_21CD41C30(a1, v3);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(a1, v3);

    return sub_21CD421F0(a1, v4);
  }
}

uint64_t sub_21CD41B74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_21CD84264();
  sub_21CD83B74();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);
    sub_21CD41C30(v6, v1);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v6, v1);
    sub_21CD421F0(v6, v2);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD41C30(__int128 *a1, uint64_t a2)
{
  v59 = sub_21CD837F4();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v48 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MobileDocumentRequest(0);
  v55 = *(v56 - 8);
  v8 = MEMORY[0x28223BE20](v56);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = v45 - v11;
  v12 = a1[3];
  v74 = a1[2];
  v75 = v12;
  v76 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v45[1] = a1;
  v72 = v14;
  v73 = v13;
  v53 = sub_21CD84294();
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v52 = (v4 + 48);
  v47 = (v4 + 32);
  v46 = (v4 + 8);
  v57 = a2;

  v21 = 0;
  v22 = 0;
  v50 = v15;
  v49 = v19;
  v51 = v10;
LABEL_6:
  if (v18)
  {
    v24 = v22;
LABEL_11:
    v25 = v54;
    sub_21CCF148C(*(v57 + 48) + *(v55 + 72) * (__clz(__rbit64(v18)) | (v24 << 6)), v54, type metadata accessor for MobileDocumentRequest);
    sub_21CCF1554(v25, v10, type metadata accessor for MobileDocumentRequest);
    sub_21CD84264();
    v26 = v58;
    sub_21CCF148C(v10, v58, type metadata accessor for MobileDocumentType.Identifier);
    v27 = (*v52)(v26, 2, v59);
    v60 = v21;
    if (v27)
    {
      if (v27 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = 2;
      }

      result = MEMORY[0x21CF17CC0](v28);
    }

    else
    {
      v29 = v48;
      v30 = v59;
      (*v47)(v48, v58, v59);
      MEMORY[0x21CF17CC0](1);
      sub_21CD42B3C();
      sub_21CD83A64();
      result = (*v46)(v29, v30);
    }

    v31 = 0;
    v32 = 0;
    v18 &= v18 - 1;
    v33 = *&v10[*(v56 + 20)];
    v36 = *(v33 + 64);
    v35 = v33 + 64;
    v34 = v36;
    v61 = *&v10[*(v56 + 20)];
    v37 = 1 << *(v61 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & v34;
    v40 = (v37 + 63) >> 6;
    while (v39)
    {
      v42 = v31;
LABEL_29:
      v44 = *(v61 + 48) + 16 * (__clz(__rbit64(v39)) | (v32 << 6));
      v41 = *v44;
      LOBYTE(v44) = *(v44 + 8);
      v64 = v69;
      v65 = v70;
      v66 = v71;
      v63 = v68;
      v62 = v67;
      if (v44)
      {
        v41 = qword_21CD94EA8[v41];
      }

      else
      {
        MEMORY[0x21CF17CC0](5);
      }

      v39 &= v39 - 1;
      MEMORY[0x21CF17CC0](v41);
      sub_21CD84284();
      result = sub_21CD84294();
      v31 = result ^ v42;
    }

    while (1)
    {
      v43 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        MEMORY[0x21CF17CC0](v31);
        v23 = sub_21CD84294();
        v10 = v51;
        result = sub_21CD42B94(v51, type metadata accessor for MobileDocumentRequest);
        v21 = v23 ^ v60;
        v22 = v24;
        v15 = v50;
        v19 = v49;
        goto LABEL_6;
      }

      v39 = *(v35 + 8 * v43);
      ++v32;
      if (v39)
      {
        v42 = v31;
        v32 = v43;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v19)
      {

        return MEMORY[0x21CF17CC0](v21);
      }

      v18 = *(v15 + 8 * v24);
      ++v22;
      if (v18)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD421F0(__int128 *a1, uint64_t a2)
{
  result = sub_21CD84294();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v12 = *(a2 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v8))));
    v10 = *v12;
    v13 = *(v12 + 8);
    sub_21CD84264();
    if (v13)
    {
      v10 = qword_21CD94EA8[v10];
    }

    else
    {
      MEMORY[0x21CF17CC0](5);
    }

    v8 &= v8 - 1;
    MEMORY[0x21CF17CC0](v10);
    result = sub_21CD84294();
    v4 ^= result;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return MEMORY[0x21CF17CC0](v4);
    }

    v8 = *(a2 + 56 + 8 * v11);
    ++v5;
    if (v8)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD4233C(__int128 *a1, uint64_t a2)
{
  v46 = sub_21CD837F4();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDocumentType(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v16 = a1[3];
  v49 = a1[2];
  v50 = v16;
  v51 = *(a1 + 8);
  v18 = *a1;
  v17 = a1[1];
  v37[1] = a1;
  v47 = v18;
  v48 = v17;
  v44 = sub_21CD84294();
  v19 = a2 + 56;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 56);
  v23 = (v20 + 63) >> 6;
  v43 = (v4 + 48);
  v40 = (v4 + 32);
  v39 = (v4 + 8);
  v45 = a2;

  v25 = 0;
  v26 = 0;
  v41 = v10;
  v38 = v15;
  while (v22)
  {
LABEL_11:
    sub_21CCF148C(*(v45 + 48) + *(v10 + 72) * (__clz(__rbit64(v22)) | (v26 << 6)), v15, type metadata accessor for MobileDocumentType);
    sub_21CCF1554(v15, v13, type metadata accessor for MobileDocumentType);
    sub_21CD84264();
    sub_21CCF148C(v13, v8, type metadata accessor for MobileDocumentType.Identifier);
    v35 = (*v43)(v8, 2, v46);
    if (v35)
    {
      if (v35 == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = 2;
      }

      MEMORY[0x21CF17CC0](v36);
    }

    else
    {
      v27 = v42;
      v28 = v8;
      v29 = v8;
      v30 = v46;
      (*v40)(v42, v28, v46);
      MEMORY[0x21CF17CC0](1);
      sub_21CD42B3C();
      sub_21CD83A64();
      v31 = v27;
      v10 = v41;
      v32 = v30;
      v8 = v29;
      v15 = v38;
      (*v39)(v31, v32);
    }

    v22 &= v22 - 1;
    v33 = sub_21CD84294();
    result = sub_21CD42B94(v13, type metadata accessor for MobileDocumentType);
    v25 ^= v33;
  }

  while (1)
  {
    v34 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v34 >= v23)
    {

      return MEMORY[0x21CF17CC0](v25);
    }

    v22 = *(v19 + 8 * v34);
    ++v26;
    if (v22)
    {
      v26 = v34;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreIDV27MobileDocumentReaderRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = 0, (sub_21CD841A4() & 1) != 0))
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    sub_21CD19BA8(v2, v3, v4);
    sub_21CD19BA8(v5, v6, v7);
    v9 = _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(&v14, &v11);
    sub_21CD19C4C(v11, v12, v13);
    sub_21CD19C4C(v14, v15, v16);
  }

  return v9 & 1;
}

unint64_t sub_21CD42828()
{
  result = qword_27CE1B108;
  if (!qword_27CE1B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B108);
  }

  return result;
}

unint64_t sub_21CD4287C()
{
  result = qword_27CE1B110;
  if (!qword_27CE1B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B110);
  }

  return result;
}

unint64_t sub_21CD428D0()
{
  result = qword_27CE1B120;
  if (!qword_27CE1B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B120);
  }

  return result;
}

unint64_t sub_21CD42928()
{
  result = qword_27CE1B128;
  if (!qword_27CE1B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B128);
  }

  return result;
}

uint64_t sub_21CD42988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21CD429D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CD42A38()
{
  result = qword_27CE1B130;
  if (!qword_27CE1B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B130);
  }

  return result;
}

unint64_t sub_21CD42A90()
{
  result = qword_27CE1B138;
  if (!qword_27CE1B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B138);
  }

  return result;
}

unint64_t sub_21CD42AE8()
{
  result = qword_27CE1B140;
  if (!qword_27CE1B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B140);
  }

  return result;
}

unint64_t sub_21CD42B3C()
{
  result = qword_27CE19380;
  if (!qword_27CE19380)
  {
    sub_21CD837F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19380);
  }

  return result;
}

uint64_t sub_21CD42B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileDocumentReaderResponse.responseData.getter()
{
  v1 = *v0;
  sub_21CC96064(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileDocumentReaderResponse.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_21CC96064(v1, *(v0 + 24));
  return v1;
}

uint64_t MobileDocumentReaderResponse.issuer.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDocumentReaderResponse(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v9 = *a6;
  v10 = a6[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v11 = type metadata accessor for MobileDocumentReaderResponse(0);
  result = sub_21CD2F6A0(a5, a7 + *(v11 + 24), &qword_27CE1B148, &qword_21CD94F40);
  v13 = (a7 + *(v11 + 28));
  *v13 = v9;
  v13[1] = v10;
  return result;
}

unint64_t sub_21CD42D68()
{
  v1 = 0x65736E6F70736572;
  v2 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v2 = 0x726575737369;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_21CD42DF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5AC30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD42E1C(uint64_t a1)
{
  v2 = sub_21CD55994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD42E58(uint64_t a1)
{
  v2 = sub_21CD55994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B150, &qword_21CD94F48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55994();
  sub_21CD842B4();
  v9 = v3[1];
  v17 = *v3;
  v18 = v9;
  v16 = 0;
  sub_21CC96064(v17, v9);
  sub_21CCFFDB0();
  sub_21CD84124();
  if (v2)
  {
    sub_21CC95F8C(v17, v18);
  }

  else
  {
    sub_21CC95F8C(v17, v18);
    v10 = v3[3];
    v17 = v3[2];
    v18 = v10;
    v16 = 1;
    sub_21CC96064(v17, v10);
    sub_21CD84124();
    sub_21CC95F8C(v17, v18);
    v11 = type metadata accessor for MobileDocumentReaderResponse(0);
    LOBYTE(v17) = 2;
    type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
    sub_21CD55A5C(&qword_27CE1B160, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84124();
    v12 = (v3 + *(v11 + 28));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 3;
    sub_21CD55A08();

    sub_21CD84124();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MobileDocumentReaderResponse.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  if (*(v1 + 8) >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD84284();
    sub_21CD83704();
  }

  if (*(v1 + 24) >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD84284();
    sub_21CD83704();
  }

  v10 = type metadata accessor for MobileDocumentReaderResponse(0);
  sub_21CCD1750(v1 + *(v10 + 24), v9, &qword_27CE1B148, &qword_21CD94F40);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD56A5C(v9, v6, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84284();
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(a1);
    sub_21CD55AF8(v6, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  }

  if (!*(v1 + *(v10 + 28) + 8))
  {
    return sub_21CD84284();
  }

  sub_21CD84284();
  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.hashValue.getter()
{
  v1 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - v6;
  sub_21CD84264();
  if (*(v0 + 8) >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD84284();
    sub_21CD83704();
  }

  if (*(v0 + 24) >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD84284();
    sub_21CD83704();
  }

  v8 = type metadata accessor for MobileDocumentReaderResponse(0);
  sub_21CCD1750(v0 + *(v8 + 24), v7, &qword_27CE1B148, &qword_21CD94F40);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD56A5C(v7, v4, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84284();
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v11);
    sub_21CD55AF8(v4, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  }

  if (*(v0 + *(v8 + 28) + 8))
  {
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B170, &qword_21CD94F50);
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for MobileDocumentReaderResponse(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55994();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v6;
  v22 = a1;
  v27 = 0;
  sub_21CCFFE7C();
  v14 = v24;
  sub_21CD84084();
  v15 = v13;
  *v13 = v26;
  v27 = 1;
  sub_21CD84084();
  v13[1] = v26;
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  LOBYTE(v26) = 2;
  sub_21CD55A5C(&qword_27CE1B178, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  v16 = v21;
  v20 = 0;
  sub_21CD84084();
  v17 = v25;
  v18 = v22;
  sub_21CD2F6A0(v16, v15 + *(v11 + 24), &qword_27CE1B148, &qword_21CD94F40);
  v27 = 3;
  sub_21CD55AA4();
  sub_21CD84084();
  (*(v17 + 8))(v10, v14);
  *(v15 + *(v11 + 28)) = v26;
  sub_21CD568B8(v15, v23, type metadata accessor for MobileDocumentReaderResponse);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return sub_21CD55AF8(v15, type metadata accessor for MobileDocumentReaderResponse);
}

uint64_t sub_21CD43AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-1] - v9;
  sub_21CD84264();
  if (*(v2 + 8) >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD84284();
    sub_21CD83704();
  }

  if (*(v2 + 24) >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD84284();
    sub_21CD83704();
  }

  sub_21CCD1750(v2 + *(a2 + 24), v10, &qword_27CE1B148, &qword_21CD94F40);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD56A5C(v10, v7, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84284();
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v13);
    sub_21CD55AF8(v7, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  }

  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.street.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.city.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.state.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.postalCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.isoCountryCode.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.init(street:city:state:postalCode:isoCountryCode:)(CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::Address_optional *__return_ptr retstr, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional postalCode, Swift::String_optional isoCountryCode)
{
  countAndFlagsBits = isoCountryCode.value._countAndFlagsBits;
  object = isoCountryCode.value._object;
  if (!street.value._object && !city.value._object && !state.value._object)
  {
    v8 = 1;
    if (isoCountryCode.value._object)
    {
      v9 = street.value._countAndFlagsBits;
    }

    else
    {
      v9 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v8 = 0;
      v10 = city.value._countAndFlagsBits;
    }

    else
    {
      v10 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v11 = state.value._countAndFlagsBits;
    }

    else
    {
      v11 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v12 = postalCode.value._countAndFlagsBits;
    }

    else
    {
      v12 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v13 = postalCode.value._object;
    }

    else
    {
      v13 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v14 = isoCountryCode.value._countAndFlagsBits;
    }

    else
    {
      v14 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v15 = isoCountryCode.value._object;
    }

    else
    {
      v15 = 0;
    }

    if (!postalCode.value._object)
    {
      street.value._countAndFlagsBits = v9;
      street.value._object = v8;
      city.value._countAndFlagsBits = v10;
      city.value._object = 0;
      state.value._countAndFlagsBits = v11;
      state.value._object = 0;
      postalCode.value._countAndFlagsBits = v12;
      postalCode.value._object = v13;
      countAndFlagsBits = v14;
      object = v15;
    }
  }

  retstr->value.street = street;
  retstr->value.city = city;
  retstr->value.state = state;
  retstr->value.postalCode = postalCode;
  retstr->value.isoCountryCode.value._countAndFlagsBits = countAndFlagsBits;
  retstr->value.isoCountryCode.value._object = object;
}

uint64_t sub_21CD43EC4()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x6574617473;
  v4 = 0x6F436C6174736F70;
  if (v1 != 3)
  {
    v4 = 0x746E756F436F7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
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

uint64_t sub_21CD43F60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5ADA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD43F88(uint64_t a1)
{
  v2 = sub_21CD55B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD43FC4(uint64_t a1)
{
  v2 = sub_21CD55B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B188, &qword_21CD94F58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55B58();
  sub_21CD842B4();
  v18 = 0;
  v11 = v13[9];
  sub_21CD840F4();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_21CD840F4();
  v16 = 2;
  sub_21CD840F4();
  v15 = 3;
  sub_21CD840F4();
  v14 = 4;
  sub_21CD840F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  if (v1[1])
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_21CD84284();
    if (v2)
    {
LABEL_3:
      sub_21CD84284();
      sub_21CD83B74();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_21CD84284();
  if (v3)
  {
LABEL_4:
    sub_21CD84284();
    sub_21CD83B74();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_21CD84284();
    if (v5)
    {
      goto LABEL_6;
    }

    return sub_21CD84284();
  }

LABEL_11:
  sub_21CD84284();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v5)
  {
    return sub_21CD84284();
  }

LABEL_6:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hashValue.getter()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B198, &qword_21CD94F60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55B58();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_21CD84054();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_21CD84054();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_21CD84054();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_21CD84054();
  v27 = v14;
  v37 = 4;
  v15 = sub_21CD84054();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  v21 = v34;
  a2[2] = v33;
  a2[3] = v21;
  a2[4] = v35;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  sub_21CD55BAC(&v31, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  return sub_21CD55BE4(v36);
}

uint64_t sub_21CD447C4()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t sub_21CD44808()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t sub_21CD44848(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F6F72616DLL;
    v6 = 1802398064;
    if (a1 != 8)
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E65657267;
    if (a1 != 5)
    {
      v7 = 0x6C657A6168;
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
    v1 = 0x6B63616C62;
    v2 = 0x6E776F7262;
    v3 = 0x616D6F7268636964;
    if (a1 != 3)
    {
      v3 = 2036691559;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1702194274;
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

uint64_t sub_21CD44960(uint64_t a1)
{
  v2 = sub_21CD55F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4499C(uint64_t a1)
{
  v2 = sub_21CD55F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD449D8(uint64_t a1)
{
  v2 = sub_21CD55F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44A14(uint64_t a1)
{
  v2 = sub_21CD55F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44A50(uint64_t a1)
{
  v2 = sub_21CD55EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44A8C(uint64_t a1)
{
  v2 = sub_21CD55EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44AD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5AF58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD44AF8(uint64_t a1)
{
  v2 = sub_21CD55C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44B34(uint64_t a1)
{
  v2 = sub_21CD55C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44B70(uint64_t a1)
{
  v2 = sub_21CD55E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44BAC(uint64_t a1)
{
  v2 = sub_21CD55E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44BE8(uint64_t a1)
{
  v2 = sub_21CD55DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44C24(uint64_t a1)
{
  v2 = sub_21CD55DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44C60(uint64_t a1)
{
  v2 = sub_21CD55E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44C9C(uint64_t a1)
{
  v2 = sub_21CD55E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44CD8(uint64_t a1)
{
  v2 = sub_21CD55D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44D14(uint64_t a1)
{
  v2 = sub_21CD55D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44D50(uint64_t a1)
{
  v2 = sub_21CD55D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44D8C(uint64_t a1)
{
  v2 = sub_21CD55D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44DC8(uint64_t a1)
{
  v2 = sub_21CD55CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44E04(uint64_t a1)
{
  v2 = sub_21CD55CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44E40(uint64_t a1)
{
  v2 = sub_21CD55C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44E7C(uint64_t a1)
{
  v2 = sub_21CD55C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1A0, &qword_21CD94F68);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1A8, &qword_21CD94F70);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1B0, &qword_21CD94F78);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1B8, &qword_21CD94F80);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1C0, &qword_21CD94F88);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1C8, &qword_21CD94F90);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = &v37 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1D0, &qword_21CD94F98);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v37 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1D8, &qword_21CD94FA0);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v37 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1E0, &qword_21CD94FA8);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1E8, &qword_21CD94FB0);
  v37 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1F0, &qword_21CD94FB8);
  v22 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v24 = &v37 - v23;
  v25 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55C14();
  v64 = v24;
  sub_21CD842B4();
  v26 = (v22 + 8);
  if (v25 > 4)
  {
    if (v25 <= 6)
    {
      if (v25 == 5)
      {
        v71 = 5;
        sub_21CD55DB8();
        v30 = v49;
        v28 = v64;
        v29 = v65;
        sub_21CD840E4();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v72 = 6;
        sub_21CD55D64();
        v30 = v52;
        v28 = v64;
        v29 = v65;
        sub_21CD840E4();
        v32 = v53;
        v31 = v54;
      }
    }

    else if (v25 == 7)
    {
      v73 = 7;
      sub_21CD55D10();
      v30 = v55;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      v32 = v56;
      v31 = v57;
    }

    else if (v25 == 8)
    {
      v74 = 8;
      sub_21CD55CBC();
      v30 = v58;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      v32 = v59;
      v31 = v60;
    }

    else
    {
      v75 = 9;
      sub_21CD55C68();
      v30 = v61;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      v32 = v62;
      v31 = v63;
    }

    goto LABEL_20;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v68 = 2;
      sub_21CD55EB4();
      v33 = v40;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      (*(v41 + 8))(v33, v42);
      return (*v26)(v28, v29);
    }

    if (v25 == 3)
    {
      v69 = 3;
      sub_21CD55E60();
      v27 = v43;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      (*(v44 + 8))(v27, v45);
      return (*v26)(v28, v29);
    }

    v70 = 4;
    sub_21CD55E0C();
    v30 = v46;
    v28 = v64;
    v29 = v65;
    sub_21CD840E4();
    v32 = v47;
    v31 = v48;
LABEL_20:
    (*(v32 + 8))(v30, v31);
    return (*v26)(v28, v29);
  }

  if (v25)
  {
    v67[0] = 1;
    sub_21CD55F08();
    v34 = v64;
    v35 = v65;
    sub_21CD840E4();
    (*(v38 + 8))(v18, v39);
    return (*v26)(v34, v35);
  }

  v66 = 0;
  sub_21CD55F5C();
  v28 = v64;
  v29 = v65;
  sub_21CD840E4();
  (*(v37 + 8))(v21, v19);
  return (*v26)(v28, v29);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B250, &qword_21CD94FC0);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B258, &qword_21CD94FC8);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B260, &qword_21CD94FD0);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B268, &qword_21CD94FD8);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v80 = &v51 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B270, &qword_21CD94FE0);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v79 = &v51 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B278, &qword_21CD94FE8);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v78 = &v51 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B280, &qword_21CD94FF0);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v73 = &v51 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B288, &qword_21CD94FF8);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v77 = &v51 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B290, &qword_21CD95000);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B298, &qword_21CD95008);
  v54 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2A0, &unk_21CD95010);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v23 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v23);
  sub_21CD55C14();
  v24 = v83;
  sub_21CD842A4();
  if (!v24)
  {
    v52 = v18;
    v51 = v16;
    v53 = v15;
    v25 = v77;
    v26 = v78;
    v27 = v79;
    v28 = v80;
    v83 = v20;
    v29 = v81;
    v30 = sub_21CD840D4();
    v31 = (2 * *(v30 + 16)) | 1;
    v84 = v30;
    v85 = v30 + 32;
    v86 = 0;
    v87 = v31;
    v32 = sub_21CCD18E0();
    if (v32 != 10 && v86 == v87 >> 1)
    {
      v88 = v32;
      if (v32 <= 4u)
      {
        if (v32 <= 1u)
        {
          if (v32)
          {
            v89 = 1;
            sub_21CD55F08();
            v49 = v53;
            sub_21CD84034();
            v50 = v83;
            (*(v55 + 8))(v49, v56);
            (*(v50 + 8))(v22, v19);
          }

          else
          {
            v89 = 0;
            sub_21CD55F5C();
            v45 = v52;
            sub_21CD84034();
            v46 = v83;
            (*(v54 + 8))(v45, v51);
            (*(v46 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v38 = v82;
          v40 = v29;
        }

        else
        {
          if (v32 == 2)
          {
            v89 = 2;
            sub_21CD55EB4();
            sub_21CD84034();
            (*(v57 + 8))(v25, v58);
            (*(v83 + 8))(v22, v19);
          }

          else
          {
            if (v32 == 3)
            {
              v89 = 3;
              sub_21CD55E60();
              v33 = v73;
              sub_21CD84034();
              v34 = v83;
              (*(v59 + 8))(v33, v60);
            }

            else
            {
              v89 = 4;
              sub_21CD55E0C();
              sub_21CD84034();
              v34 = v83;
              (*(v62 + 8))(v26, v61);
            }

            (*(v34 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v40 = v81;
          v38 = v82;
        }

        goto LABEL_33;
      }

      if (v32 <= 6u)
      {
        v40 = v29;
        v47 = v83;
        if (v32 == 5)
        {
          v89 = 5;
          sub_21CD55DB8();
          sub_21CD84034();
          (*(v63 + 8))(v27, v64);
        }

        else
        {
          v89 = 6;
          sub_21CD55D64();
          sub_21CD84034();
          (*(v65 + 8))(v28, v66);
        }

        (*(v47 + 8))(v22, v19);
        goto LABEL_32;
      }

      v40 = v29;
      v41 = v83;
      if (v32 == 7)
      {
        v89 = 7;
        sub_21CD55D10();
        v42 = v74;
        sub_21CD84034();
        v44 = v67;
        v43 = v68;
      }

      else
      {
        if (v32 != 8)
        {
          v89 = 9;
          sub_21CD55C68();
          v48 = v76;
          sub_21CD84034();
          (*(v71 + 8))(v48, v72);
          goto LABEL_29;
        }

        v89 = 8;
        sub_21CD55CBC();
        v42 = v75;
        sub_21CD84034();
        v44 = v69;
        v43 = v70;
      }

      (*(v44 + 8))(v42, v43);
LABEL_29:
      (*(v41 + 8))(v22, v19);
LABEL_32:
      swift_unknownObjectRelease();
      v38 = v82;
LABEL_33:
      *v40 = v88;
      return __swift_destroy_boxed_opaque_existential_0(v38);
    }

    v35 = sub_21CD83FA4();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
    *v37 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v83 + 8))(v22, v19);
    swift_unknownObjectRelease();
  }

  v38 = v82;
  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t sub_21CD4657C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x79646E6173;
    v6 = 0x6574696877;
    if (a1 != 8)
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 6579570;
    if (a1 != 5)
    {
      v7 = 0x6E7275627561;
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
    v1 = 1684824418;
    v2 = 0x646E6F6C62;
    v3 = 0x6E776F7262;
    if (a1 != 3)
    {
      v3 = 2036691559;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B63616C62;
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

uint64_t sub_21CD46688(uint64_t a1)
{
  v2 = sub_21CD56100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD466C4(uint64_t a1)
{
  v2 = sub_21CD56100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46700(uint64_t a1)
{
  v2 = sub_21CD562F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4673C(uint64_t a1)
{
  v2 = sub_21CD562F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46778(uint64_t a1)
{
  v2 = sub_21CD562A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD467B4(uint64_t a1)
{
  v2 = sub_21CD562A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD467F0(uint64_t a1)
{
  v2 = sub_21CD56250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4682C(uint64_t a1)
{
  v2 = sub_21CD56250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46868(uint64_t a1)
{
  v2 = sub_21CD561FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD468A4(uint64_t a1)
{
  v2 = sub_21CD561FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD468E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5B274(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD46910(uint64_t a1)
{
  v2 = sub_21CD55FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4694C(uint64_t a1)
{
  v2 = sub_21CD55FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46988(uint64_t a1)
{
  v2 = sub_21CD561A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD469C4(uint64_t a1)
{
  v2 = sub_21CD561A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46A00(uint64_t a1)
{
  v2 = sub_21CD56154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46A3C(uint64_t a1)
{
  v2 = sub_21CD56154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46A78(uint64_t a1)
{
  v2 = sub_21CD560AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46AB4(uint64_t a1)
{
  v2 = sub_21CD560AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46AF0(uint64_t a1)
{
  v2 = sub_21CD56004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46B2C(uint64_t a1)
{
  v2 = sub_21CD56004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46B68(uint64_t a1)
{
  v2 = sub_21CD56058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46BA4(uint64_t a1)
{
  v2 = sub_21CD56058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2A8, &qword_21CD95020);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2B0, &qword_21CD95028);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2B8, &qword_21CD95030);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2C0, &qword_21CD95038);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2C8, &qword_21CD95040);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2D0, &qword_21CD95048);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = &v37 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2D8, &qword_21CD95050);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v37 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2E0, &qword_21CD95058);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v37 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2E8, &qword_21CD95060);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2F0, &qword_21CD95068);
  v37 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2F8, &qword_21CD95070);
  v22 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v24 = &v37 - v23;
  v25 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55FB0();
  v64 = v24;
  sub_21CD842B4();
  v26 = (v22 + 8);
  if (v25 > 4)
  {
    if (v25 <= 6)
    {
      if (v25 == 5)
      {
        v71 = 5;
        sub_21CD56154();
        v30 = v49;
        v28 = v64;
        v29 = v65;
        sub_21CD840E4();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v72 = 6;
        sub_21CD56100();
        v30 = v52;
        v28 = v64;
        v29 = v65;
        sub_21CD840E4();
        v32 = v53;
        v31 = v54;
      }
    }

    else if (v25 == 7)
    {
      v73 = 7;
      sub_21CD560AC();
      v30 = v55;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      v32 = v56;
      v31 = v57;
    }

    else if (v25 == 8)
    {
      v74 = 8;
      sub_21CD56058();
      v30 = v58;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      v32 = v59;
      v31 = v60;
    }

    else
    {
      v75 = 9;
      sub_21CD56004();
      v30 = v61;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      v32 = v62;
      v31 = v63;
    }

    goto LABEL_20;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v68 = 2;
      sub_21CD56250();
      v33 = v40;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      (*(v41 + 8))(v33, v42);
      return (*v26)(v28, v29);
    }

    if (v25 == 3)
    {
      v69 = 3;
      sub_21CD561FC();
      v27 = v43;
      v28 = v64;
      v29 = v65;
      sub_21CD840E4();
      (*(v44 + 8))(v27, v45);
      return (*v26)(v28, v29);
    }

    v70 = 4;
    sub_21CD561A8();
    v30 = v46;
    v28 = v64;
    v29 = v65;
    sub_21CD840E4();
    v32 = v47;
    v31 = v48;
LABEL_20:
    (*(v32 + 8))(v30, v31);
    return (*v26)(v28, v29);
  }

  if (v25)
  {
    v67[0] = 1;
    sub_21CD562A4();
    v34 = v64;
    v35 = v65;
    sub_21CD840E4();
    (*(v38 + 8))(v18, v39);
    return (*v26)(v34, v35);
  }

  v66 = 0;
  sub_21CD562F8();
  v28 = v64;
  v29 = v65;
  sub_21CD840E4();
  (*(v37 + 8))(v21, v19);
  return (*v26)(v28, v29);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B358, &qword_21CD95078);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B360, &qword_21CD95080);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B368, &qword_21CD95088);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B370, &qword_21CD95090);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v80 = &v51 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B378, &qword_21CD95098);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v79 = &v51 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B380, &qword_21CD950A0);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v78 = &v51 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B388, &qword_21CD950A8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v73 = &v51 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B390, &qword_21CD950B0);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v77 = &v51 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B398, &qword_21CD950B8);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3A0, &qword_21CD950C0);
  v54 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3A8, &qword_21CD950C8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v23 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v23);
  sub_21CD55FB0();
  v24 = v83;
  sub_21CD842A4();
  if (!v24)
  {
    v52 = v18;
    v51 = v16;
    v53 = v15;
    v25 = v77;
    v26 = v78;
    v27 = v79;
    v28 = v80;
    v83 = v20;
    v29 = v81;
    v30 = sub_21CD840D4();
    v31 = (2 * *(v30 + 16)) | 1;
    v84 = v30;
    v85 = v30 + 32;
    v86 = 0;
    v87 = v31;
    v32 = sub_21CCD18E0();
    if (v32 != 10 && v86 == v87 >> 1)
    {
      v88 = v32;
      if (v32 <= 4u)
      {
        if (v32 <= 1u)
        {
          if (v32)
          {
            v89 = 1;
            sub_21CD562A4();
            v49 = v53;
            sub_21CD84034();
            v50 = v83;
            (*(v55 + 8))(v49, v56);
            (*(v50 + 8))(v22, v19);
          }

          else
          {
            v89 = 0;
            sub_21CD562F8();
            v45 = v52;
            sub_21CD84034();
            v46 = v83;
            (*(v54 + 8))(v45, v51);
            (*(v46 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v38 = v82;
          v40 = v29;
        }

        else
        {
          if (v32 == 2)
          {
            v89 = 2;
            sub_21CD56250();
            sub_21CD84034();
            (*(v57 + 8))(v25, v58);
            (*(v83 + 8))(v22, v19);
          }

          else
          {
            if (v32 == 3)
            {
              v89 = 3;
              sub_21CD561FC();
              v33 = v73;
              sub_21CD84034();
              v34 = v83;
              (*(v59 + 8))(v33, v60);
            }

            else
            {
              v89 = 4;
              sub_21CD561A8();
              sub_21CD84034();
              v34 = v83;
              (*(v62 + 8))(v26, v61);
            }

            (*(v34 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v40 = v81;
          v38 = v82;
        }

        goto LABEL_33;
      }

      if (v32 <= 6u)
      {
        v40 = v29;
        v47 = v83;
        if (v32 == 5)
        {
          v89 = 5;
          sub_21CD56154();
          sub_21CD84034();
          (*(v63 + 8))(v27, v64);
        }

        else
        {
          v89 = 6;
          sub_21CD56100();
          sub_21CD84034();
          (*(v65 + 8))(v28, v66);
        }

        (*(v47 + 8))(v22, v19);
        goto LABEL_32;
      }

      v40 = v29;
      v41 = v83;
      if (v32 == 7)
      {
        v89 = 7;
        sub_21CD560AC();
        v42 = v74;
        sub_21CD84034();
        v44 = v67;
        v43 = v68;
      }

      else
      {
        if (v32 != 8)
        {
          v89 = 9;
          sub_21CD56004();
          v48 = v76;
          sub_21CD84034();
          (*(v71 + 8))(v48, v72);
          goto LABEL_29;
        }

        v89 = 8;
        sub_21CD56058();
        v42 = v75;
        sub_21CD84034();
        v44 = v69;
        v43 = v70;
      }

      (*(v44 + 8))(v42, v43);
LABEL_29:
      (*(v41 + 8))(v22, v19);
LABEL_32:
      swift_unknownObjectRelease();
      v38 = v82;
LABEL_33:
      *v40 = v88;
      return __swift_destroy_boxed_opaque_existential_0(v38);
    }

    v35 = sub_21CD83FA4();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
    *v37 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v83 + 8))(v22, v19);
    swift_unknownObjectRelease();
  }

  v38 = v82;
  return __swift_destroy_boxed_opaque_existential_0(v38);
}