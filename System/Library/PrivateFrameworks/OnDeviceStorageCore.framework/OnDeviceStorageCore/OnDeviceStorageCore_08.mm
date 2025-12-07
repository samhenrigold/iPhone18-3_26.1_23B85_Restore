unint64_t sub_1DB23D538()
{
  result = qword_1ECC28610;
  if (!qword_1ECC28610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28610);
  }

  return result;
}

uint64_t static Utils.assertInternalBuild()()
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t static Utils.isInternalBuild.getter()
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

uint64_t sub_1DB23D724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28618, &unk_1DB2C8660);
  swift_allocObject();
  result = sub_1DB2BBAE4();
  qword_1EE13F728 = result;
  return result;
}

uint64_t static Utils.withIsUnderTest<A>(_:block:)(char a1)
{
  if (qword_1EE13F730 != -1)
  {
    swift_once();
  }

  return sub_1DB2BBB04();
}

uint64_t static Utils.isProductionBuild.getter()
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  return has_internal_content ^ 1u;
}

uint64_t static Utils.isQaTool(bundleId:)(uint64_t a1, uint64_t a2)
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    return 0;
  }

  return sub_1DB23D950(0xD000000000000016, 0x80000001DB2D63A0, a1, a2);
}

uint64_t sub_1DB23D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1DB2BAF24();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1DB2BAF24();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1DB2BB924();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1DB2BAF24();
      v7 = v9;
    }

    while (v9);
  }

  sub_1DB2BAF24();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

BOOL _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0()
{
  if (qword_1EE13F730 != -1)
  {
    swift_once();
  }

  sub_1DB2BBAF4();
  v0 = v9;
  if (v9 == 2)
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = sub_1DB2BACD4();
    if (*(v3 + 16))
    {
      sub_1DB141B30(0xD00000000000001BLL, 0x80000001DB2D63C0);
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }

    else
    {
    }

    v6 = sub_1DB2BAD64();
    v7 = NSClassFromString(v6);

    return v7 != 0;
  }

  return v0;
}

uint64_t ClientMessage.userId.getter()
{
  sub_1DB23DC94(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 56))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

__n128 sub_1DB23DC94@<Q0>(uint64_t *a1@<X8>)
{
  sub_1DB23E680(v1, v26);
  if (v29 > 4u)
  {
    if (v29 <= 6u)
    {
      if (v29 == 5)
      {
        a1[3] = &type metadata for InsertRequest;
        a1[4] = sub_1DB24BAA4();
        v9 = swift_allocObject();
        *a1 = v9;
        v10 = v27;
        *(v9 + 48) = *&v26[32];
        *(v9 + 64) = v10;
        *(v9 + 80) = *v28;
        *(v9 + 89) = *&v28[9];
        goto LABEL_15;
      }

      a1[3] = &type metadata for UpdateRequest;
      a1[4] = sub_1DB24BC48();
    }

    else
    {
      if (v29 != 7)
      {
        if (v29 == 8)
        {
          v20 = *&v26[16];
          v23 = *v26;
          v19 = *&v26[32];
          v3 = v27;
          a1[3] = &type metadata for DataDeletionTriggerRequest;
          a1[4] = sub_1DB24BE50();
          v4 = swift_allocObject();
          *a1 = v4;
          *(v4 + 16) = v23;
          *(v4 + 32) = v20;
          result = v19;
          *(v4 + 48) = v19;
          *(v4 + 64) = v3;
        }

        else
        {
          v13 = v26[0];
          v22 = *&v26[24];
          v25 = *&v26[8];
          v14 = *&v26[40];
          a1[3] = &type metadata for StatusRequest;
          a1[4] = sub_1DB24C03C();
          v15 = swift_allocObject();
          *a1 = v15;
          *(v15 + 16) = v13;
          result = v22;
          *(v15 + 24) = v25;
          *(v15 + 40) = v22;
          *(v15 + 56) = v14;
        }

        return result;
      }

      a1[3] = &type metadata for DeleteRequest;
      a1[4] = sub_1DB24BDD4();
    }

LABEL_21:
    v17 = swift_allocObject();
    *a1 = v17;
    v18 = v27;
    *(v17 + 48) = *&v26[32];
    *(v17 + 64) = v18;
    *(v17 + 80) = *v28;
    result = *&v26[16];
    *(v17 + 16) = *v26;
    *(v17 + 32) = result;
    return result;
  }

  if (v29 > 1u)
  {
    if (v29 != 2)
    {
      if (v29 == 3)
      {
        a1[3] = &type metadata for PluckRequest;
        a1[4] = sub_1DB24B6C4();
      }

      else
      {
        a1[3] = &type metadata for ScalarValueRequest;
        a1[4] = sub_1DB24B900();
      }

      goto LABEL_21;
    }

    a1[3] = &type metadata for SelectRequest;
    a1[4] = sub_1DB24B430();
    v9 = swift_allocObject();
    *a1 = v9;
    v11 = v27;
    *(v9 + 48) = *&v26[32];
    *(v9 + 64) = v11;
    *(v9 + 80) = *v28;
    *(v9 + 96) = *&v28[16];
LABEL_15:
    result.n128_u64[0] = *v26;
    v12 = *&v26[16];
    *(v9 + 16) = *v26;
    *(v9 + 32) = v12;
    return result;
  }

  v21 = *&v26[16];
  v24 = *v26;
  v6 = *&v26[32];
  if (v29)
  {
    a1[3] = &type metadata for DisconnectionRequest;
    a1[4] = sub_1DB24AFC0();
    v16 = swift_allocObject();
    *a1 = v16;
    result = v21;
    *(v16 + 16) = v24;
    *(v16 + 32) = v21;
    *(v16 + 48) = v6;
  }

  else
  {
    v7 = v26[40];
    a1[3] = &type metadata for ConnectionRequest;
    a1[4] = sub_1DB24EFEC();
    v8 = swift_allocObject();
    *a1 = v8;
    result = v21;
    *(v8 + 16) = v24;
    *(v8 + 32) = v21;
    *(v8 + 48) = v6;
    *(v8 + 56) = v7;
  }

  return result;
}

double ClientMessage.queryRequest.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1DB23DC94(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28620, &qword_1DB2C86A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28628, &qword_1DB2C86A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ClientMessage.estimatedSize.getter()
{
  sub_1DB23DC94(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 64))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t ClientMessage.accessType.getter()
{
  sub_1DB23DC94(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 72))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t ClientMessage.description.getter()
{
  sub_1DB23E680(v0, &v16);
  if (v21 <= 4u)
  {
    if (v21 > 1u)
    {
      if (v21 == 2)
      {
        v11 = v18;
        v12 = v19;
        *v13 = *v20;
        *&v13[16] = *&v20[16];
        v9 = v16;
        v10 = v17;
        sub_1DB2BB4F4();

        v14 = 0xD000000000000014;
        v15 = 0x80000001DB2D64B0;
        MEMORY[0x1E1283490](v10, *(&v10 + 1));
        MEMORY[0x1E1283490](93, 0xE100000000000000);
        v1 = 0xD000000000000014;
        sub_1DB23E7A8(&v9);
      }

      else
      {
        v11 = v18;
        v12 = v19;
        *v13 = *v20;
        v9 = v16;
        v10 = v17;
        if (v21 == 3)
        {
          sub_1DB2BB4F4();

          v14 = 0xD000000000000013;
          v15 = 0x80000001DB2D6490;
          MEMORY[0x1E1283490](v10, *(&v10 + 1));
          MEMORY[0x1E1283490](93, 0xE100000000000000);
          v1 = 0xD000000000000013;
          sub_1DB23E778(&v9);
        }

        else
        {
          sub_1DB2BB4F4();

          v14 = 0xD000000000000014;
          v15 = 0x80000001DB2D6470;
          MEMORY[0x1E1283490](v10, *(&v10 + 1));
          MEMORY[0x1E1283490](93, 0xE100000000000000);
          v1 = 0xD000000000000014;
          sub_1DB23E748(&v9);
        }
      }

      return v1;
    }

    if (!v21)
    {
      sub_1DB23E7D8(&v16);
      return 0x7463656E6E6F63;
    }

    v6 = *(&v17 + 1);
    v7 = v18;
    sub_1DB2BB4F4();

    *&v9 = 0xD000000000000018;
    *(&v9 + 1) = 0x80000001DB2D64D0;

    MEMORY[0x1E1283490](v6, v7);
    swift_bridgeObjectRelease_n();
LABEL_20:

    MEMORY[0x1E1283490](93, 0xE100000000000000);
    return v9;
  }

  if (v21 > 6u)
  {
    if (v21 == 7)
    {
      v11 = v18;
      v12 = v19;
      *v13 = *v20;
      v9 = v16;
      v10 = v17;
      sub_1DB2BB4F4();

      v14 = 0xD000000000000014;
      v15 = 0x80000001DB2D6410;
      MEMORY[0x1E1283490](v10, *(&v10 + 1));
      MEMORY[0x1E1283490](93, 0xE100000000000000);
      v1 = 0xD000000000000014;
      sub_1DB23E6B8(&v9);
      return v1;
    }

    if (v21 == 8)
    {
      v2 = v16;
      v4 = *(&v18 + 1);
      v3 = v19;
      *&v9 = 0;
      *(&v9 + 1) = 0xE000000000000000;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD000000000000021, 0x80000001DB2D63E0);

      MEMORY[0x1E1283490](v2, *(&v2 + 1));

      MEMORY[0x1E1283490](0x656767697274202CLL, 0xEE003D656D614E72);

      MEMORY[0x1E1283490](v4, v3);
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v5 = v16;
      *&v9 = 0;
      *(&v9 + 1) = 0xE000000000000000;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0x635B737574617473, 0xEF3D646E616D6D6FLL);
      LOBYTE(v14) = v5;
      sub_1DB2BB674();
    }

    goto LABEL_20;
  }

  v11 = v18;
  v12 = v19;
  if (v21 == 5)
  {
    *v13 = *v20;
    *&v13[9] = *&v20[9];
    v9 = v16;
    v10 = v17;
    sub_1DB2BB4F4();

    v14 = 0xD000000000000014;
    v15 = 0x80000001DB2D6450;
    MEMORY[0x1E1283490](v10, *(&v10 + 1));
    MEMORY[0x1E1283490](93, 0xE100000000000000);
    v1 = 0xD000000000000014;
    sub_1DB23E718(&v9);
  }

  else
  {
    *v13 = *v20;
    v9 = v16;
    v10 = v17;
    sub_1DB2BB4F4();

    v14 = 0xD000000000000014;
    v15 = 0x80000001DB2D6430;
    MEMORY[0x1E1283490](v10, *(&v10 + 1));
    MEMORY[0x1E1283490](93, 0xE100000000000000);
    v1 = 0xD000000000000014;
    sub_1DB23E6E8(&v9);
  }

  return v1;
}

uint64_t sub_1DB23E808(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6574656C6564;
    v6 = 0xD000000000000013;
    if (a1 != 8)
    {
      v6 = 0x737574617473;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x747265736E69;
    if (a1 != 5)
    {
      v7 = 0x657461647075;
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
    v1 = 0x7463656E6E6F63;
    v2 = 0x7463656C6573;
    v3 = 0x6B63756C70;
    if (a1 != 3)
    {
      v3 = 0x72616C616373;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656E6E6F63736964;
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

uint64_t sub_1DB23E934@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24A124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB23E95C(uint64_t a1)
{
  v2 = sub_1DB23FEA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23E998(uint64_t a1)
{
  v2 = sub_1DB23FEA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23E9D4(uint64_t a1)
{
  v2 = sub_1DB2404E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EA10(uint64_t a1)
{
  v2 = sub_1DB2404E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EA4C(uint64_t a1)
{
  v2 = sub_1DB240048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EA88(uint64_t a1)
{
  v2 = sub_1DB240048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EAC4(uint64_t a1)
{
  v2 = sub_1DB240438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EB00(uint64_t a1)
{
  v2 = sub_1DB240438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EB3C(uint64_t a1)
{
  v2 = sub_1DB240198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EB78(uint64_t a1)
{
  v2 = sub_1DB240198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EBB4(uint64_t a1)
{
  v2 = sub_1DB2402E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EBF0(uint64_t a1)
{
  v2 = sub_1DB2402E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EC2C(uint64_t a1)
{
  v2 = sub_1DB240240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EC68(uint64_t a1)
{
  v2 = sub_1DB240240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23ECA4(uint64_t a1)
{
  v2 = sub_1DB240390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23ECE0(uint64_t a1)
{
  v2 = sub_1DB240390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23ED1C(uint64_t a1)
{
  v2 = sub_1DB23FEF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23ED58(uint64_t a1)
{
  v2 = sub_1DB23FEF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23ED94(uint64_t a1)
{
  v2 = sub_1DB23FFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EDD0(uint64_t a1)
{
  v2 = sub_1DB23FFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EE0C(uint64_t a1)
{
  v2 = sub_1DB2400F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EE48(uint64_t a1)
{
  v2 = sub_1DB2400F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientMessage.encode(to:)(void *a1)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28630, &qword_1DB2C86B0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v53 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28638, &qword_1DB2C86B8);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v53 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28640, &qword_1DB2C86C0);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v53 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28648, &qword_1DB2C86C8);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v53 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28650, &qword_1DB2C86D0);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v53 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28658, &qword_1DB2C86D8);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v53 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28660, &qword_1DB2C86E0);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v53 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28668, &qword_1DB2C86E8);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28670, &qword_1DB2C86F0);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28678, &qword_1DB2C86F8);
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28680, &qword_1DB2C8700);
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB23FEA4();
  v18 = v17;
  sub_1DB2BBA94();
  sub_1DB23E680(v82, &v89);
  if (v94 > 4u)
  {
    if (v94 <= 6u)
    {
      v86 = v91;
      v87 = v92;
      if (v94 == 5)
      {
        *v88 = *v93;
        *&v88[9] = *&v93[9];
        v84 = v89;
        v85 = v90;
        v95 = 5;
        sub_1DB240198();
        v33 = v67;
        sub_1DB2BB804();
        sub_1DB2401EC();
        v34 = v69;
        sub_1DB2BB8A4();
        (*(v68 + 8))(v33, v34);
        sub_1DB23E718(&v84);
      }

      else
      {
        *v88 = *v93;
        v85 = v90;
        v84 = v89;
        v95 = 6;
        sub_1DB2400F0();
        v51 = v70;
        sub_1DB2BB804();
        sub_1DB240144();
        v52 = v72;
        sub_1DB2BB8A4();
        (*(v71 + 8))(v51, v52);
        sub_1DB23E6E8(&v84);
      }

      return (*(v83 + 8))(v17, v15);
    }

    v21 = v15;
    if (v94 == 7)
    {
      v86 = v91;
      v87 = v92;
      *v88 = *v93;
      v85 = v90;
      v84 = v89;
      v95 = 7;
      sub_1DB240048();
      v37 = v73;
      sub_1DB2BB804();
      sub_1DB24009C();
      v38 = v75;
      sub_1DB2BB8A4();
      (*(v74 + 8))(v37, v38);
      sub_1DB23E6B8(&v84);
      return (*(v83 + 8))(v17, v21);
    }

    v54 = v15;
    if (v94 == 8)
    {
      v22 = *(&v89 + 1);
      v82 = v89;
      v23 = v90;
      v24 = v91;
      v25 = v92;
      LOBYTE(v84) = 8;
      sub_1DB23FFA0();
      v26 = v76;
      v81 = v17;
      sub_1DB2BB804();
      *&v84 = v82;
      v82 = v22;
      *(&v84 + 1) = v22;
      v85 = v23;
      v86 = v24;
      *&v87 = v25;
      sub_1DB23FFF4();
      v27 = v78;
      sub_1DB2BB8A4();
      (*(v77 + 8))(v26, v27);
      (*(v83 + 8))(v81, v54);
    }

    else
    {
      v41 = v89;
      v42 = *(&v89 + 1);
      v43 = v90;
      v44 = v91;
      LOBYTE(v84) = 9;
      sub_1DB23FEF8();
      v45 = v79;
      sub_1DB2BB804();
      LOBYTE(v84) = v41;
      *(&v84 + 1) = v42;
      v85 = v43;
      v86 = v44;
      sub_1DB23FF4C();
      v46 = v81;
      sub_1DB2BB8A4();
      (*(v80 + 8))(v45, v46);
      (*(v83 + 8))(v17, v54);
    }
  }

  if (v94 <= 1u)
  {
    if (!v94)
    {
      v28 = *(&v89 + 1);
      v82 = v89;
      v29 = *(&v90 + 1);
      v81 = v90;
      v30 = v91;
      v31 = BYTE8(v91);
      LOBYTE(v84) = 0;
      sub_1DB2404E0();
      sub_1DB2BB804();
      *&v84 = v82;
      *(&v84 + 1) = v28;
      *&v85 = v81;
      *(&v85 + 1) = v29;
      *&v86 = v30;
      BYTE8(v86) = v31;
      sub_1DB240534();
      sub_1DB2BB8A4();
      (*(v55 + 8))(v14, v12);
      (*(v83 + 8))(v18, v15);

      return sub_1DB240588(v29, v30);
    }

    v47 = *(&v89 + 1);
    v82 = v89;
    v48 = v90;
    v49 = v91;
    LOBYTE(v84) = 1;
    sub_1DB240438();
    sub_1DB2BB804();
    *&v84 = v82;
    *(&v84 + 1) = v47;
    v85 = v48;
    *&v86 = v49;
    sub_1DB24048C();
    v50 = v57;
    sub_1DB2BB8A4();
    (*(v56 + 8))(v11, v50);
    (*(v83 + 8))(v17, v15);
  }

  if (v94 == 2)
  {
    v86 = v91;
    v87 = v92;
    *v88 = *v93;
    *&v88[16] = *&v93[16];
    v84 = v89;
    v85 = v90;
    v95 = 2;
    sub_1DB240390();
    v35 = v58;
    sub_1DB2BB804();
    sub_1DB2403E4();
    v36 = v60;
    sub_1DB2BB8A4();
    (*(v59 + 8))(v35, v36);
    sub_1DB23E7A8(&v84);
  }

  else
  {
    v86 = v91;
    v87 = v92;
    *v88 = *v93;
    v85 = v90;
    v84 = v89;
    if (v94 == 3)
    {
      v95 = 3;
      sub_1DB2402E8();
      v19 = v61;
      sub_1DB2BB804();
      sub_1DB24033C();
      v20 = v63;
      sub_1DB2BB8A4();
      (*(v62 + 8))(v19, v20);
      sub_1DB23E778(&v84);
    }

    else
    {
      v95 = 4;
      sub_1DB240240();
      v39 = v64;
      sub_1DB2BB804();
      sub_1DB240294();
      v40 = v66;
      sub_1DB2BB8A4();
      (*(v65 + 8))(v39, v40);
      sub_1DB23E748(&v84);
    }
  }

  return (*(v83 + 8))(v17, v15);
}

unint64_t sub_1DB23FEA4()
{
  result = qword_1EE140090;
  if (!qword_1EE140090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140090);
  }

  return result;
}

unint64_t sub_1DB23FEF8()
{
  result = qword_1ECC28688;
  if (!qword_1ECC28688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28688);
  }

  return result;
}

unint64_t sub_1DB23FF4C()
{
  result = qword_1ECC28690;
  if (!qword_1ECC28690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28690);
  }

  return result;
}

unint64_t sub_1DB23FFA0()
{
  result = qword_1ECC28698;
  if (!qword_1ECC28698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28698);
  }

  return result;
}

unint64_t sub_1DB23FFF4()
{
  result = qword_1ECC286A0;
  if (!qword_1ECC286A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286A0);
  }

  return result;
}

unint64_t sub_1DB240048()
{
  result = qword_1ECC286A8;
  if (!qword_1ECC286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286A8);
  }

  return result;
}

unint64_t sub_1DB24009C()
{
  result = qword_1ECC286B0;
  if (!qword_1ECC286B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286B0);
  }

  return result;
}

unint64_t sub_1DB2400F0()
{
  result = qword_1ECC286B8;
  if (!qword_1ECC286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286B8);
  }

  return result;
}

unint64_t sub_1DB240144()
{
  result = qword_1ECC286C0;
  if (!qword_1ECC286C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286C0);
  }

  return result;
}

unint64_t sub_1DB240198()
{
  result = qword_1EE140058;
  if (!qword_1EE140058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140058);
  }

  return result;
}

unint64_t sub_1DB2401EC()
{
  result = qword_1EE13FF80;
  if (!qword_1EE13FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF80);
  }

  return result;
}

unint64_t sub_1DB240240()
{
  result = qword_1ECC286C8;
  if (!qword_1ECC286C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286C8);
  }

  return result;
}

unint64_t sub_1DB240294()
{
  result = qword_1ECC286D0;
  if (!qword_1ECC286D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286D0);
  }

  return result;
}

unint64_t sub_1DB2402E8()
{
  result = qword_1ECC286D8;
  if (!qword_1ECC286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286D8);
  }

  return result;
}

unint64_t sub_1DB24033C()
{
  result = qword_1ECC286E0;
  if (!qword_1ECC286E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286E0);
  }

  return result;
}

unint64_t sub_1DB240390()
{
  result = qword_1EE13F4C8;
  if (!qword_1EE13F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4C8);
  }

  return result;
}

unint64_t sub_1DB2403E4()
{
  result = qword_1EE13F4A8;
  if (!qword_1EE13F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4A8);
  }

  return result;
}

unint64_t sub_1DB240438()
{
  result = qword_1EE13FFE8;
  if (!qword_1EE13FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFE8);
  }

  return result;
}

unint64_t sub_1DB24048C()
{
  result = qword_1EE13F7F0;
  if (!qword_1EE13F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7F0);
  }

  return result;
}

unint64_t sub_1DB2404E0()
{
  result = qword_1EE140000;
  if (!qword_1EE140000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140000);
  }

  return result;
}

unint64_t sub_1DB240534()
{
  result = qword_1EE13F978;
  if (!qword_1EE13F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F978);
  }

  return result;
}

uint64_t ClientMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC286E8, &qword_1DB2C8708);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v69[-v3];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC286F0, &qword_1DB2C8710);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v96 = &v69[-v4];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC286F8, &qword_1DB2C8718);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v100 = &v69[-v5];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28700, &qword_1DB2C8720);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v99 = &v69[-v6];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28708, &qword_1DB2C8728);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v98 = &v69[-v7];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28710, &qword_1DB2C8730);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v93 = &v69[-v8];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28718, &qword_1DB2C8738);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v94 = &v69[-v9];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28720, &qword_1DB2C8740);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v97 = &v69[-v10];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28728, &qword_1DB2C8748);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v12 = &v69[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28730, &qword_1DB2C8750);
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28738, &unk_1DB2C8758);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69[-v18];
  v20 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1DB23FEA4();
  v21 = v119;
  sub_1DB2BBA84();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v72 = v15;
  v71 = v13;
  v73 = v12;
  v22 = v97;
  v23 = v98;
  v24 = v99;
  v25 = v100;
  v119 = v17;
  v26 = v101;
  v27 = sub_1DB2BB7D4();
  v28 = (2 * *(v27 + 16)) | 1;
  v113[0] = v27;
  v113[1] = v27 + 32;
  v114 = 0;
  v115 = v28;
  v29 = sub_1DB14B1EC();
  if (v29 == 10 || v114 != v115 >> 1)
  {
    v38 = sub_1DB2BB564();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
    *v40 = &type metadata for ClientMessage;
    sub_1DB2BB714();
    sub_1DB2BB554();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v119 + 8))(v19, v16);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v70 = v29;
  if (v29 > 4u)
  {
    v97 = v19;
    v94 = v16;
    if (v29 <= 6u)
    {
      v32 = v26;
      if (v29 != 5)
      {
        LOBYTE(v104) = 6;
        sub_1DB2400F0();
        sub_1DB2BB704();
        v48 = v119;
        sub_1DB241A20();
        v58 = v85;
        sub_1DB2BB7B4();
        (*(v86 + 8))(v24, v58);
LABEL_29:
        (*(v48 + 8))(v97, v94);
LABEL_30:
        swift_unknownObjectRelease();
        v60 = v104;
        v61 = v105;
        v65 = v104 & 0xFFFFFFFFFFFFFF00;
        v62 = v106;
        v63 = v107;
        v67 = v108;
        v66 = v108 & 0xFFFFFFFFFFFFFF00;
        v64 = v109;
        v116 = v110;
        v117 = v111;
        v118 = v112;
        v59 = v102;
        goto LABEL_31;
      }

      LOBYTE(v104) = 5;
      sub_1DB240198();
      v47 = v23;
      sub_1DB2BB704();
      v48 = v119;
      sub_1DB241A74();
      v55 = v83;
      sub_1DB2BB7B4();
      v56 = v113;
    }

    else
    {
      v32 = v26;
      if (v29 != 7)
      {
        v42 = v119;
        if (v29 == 8)
        {
          LOBYTE(v104) = 8;
          sub_1DB23FFA0();
          v43 = v96;
          sub_1DB2BB704();
          sub_1DB241978();
          v44 = v90;
          sub_1DB2BB7B4();
          (*(v89 + 8))(v43, v44);
          (*(v42 + 8))(v97, v94);
          swift_unknownObjectRelease();
          v60 = v104;
          v61 = v105;
          v62 = v106;
          v63 = v107;
          v64 = v109;
          v65 = v104 & 0xFFFFFFFFFFFFFF00;
          v66 = v108 & 0xFFFFFFFFFFFFFF00;
          v67 = v108;
        }

        else
        {
          LOBYTE(v104) = 9;
          sub_1DB23FEF8();
          v51 = v95;
          sub_1DB2BB704();
          sub_1DB241924();
          v53 = v91;
          sub_1DB2BB7B4();
          (*(v92 + 8))(v51, v53);
          (*(v42 + 8))(v97, v94);
          swift_unknownObjectRelease();
          v65 = 0;
          v60 = v104;
          v61 = v105;
          v64 = &v106 + 8;
          v63 = v107;
          v67 = v108;
          v66 = v108 & 0xFFFFFFFFFFFFFF00;
          v62 = v106;
        }

        v59 = v102;
        goto LABEL_31;
      }

      LOBYTE(v104) = 7;
      sub_1DB240048();
      v47 = v25;
      sub_1DB2BB704();
      v48 = v119;
      sub_1DB2419CC();
      v55 = v88;
      sub_1DB2BB7B4();
      v56 = &v115;
    }

    (*(*(v56 - 32) + 8))(v47, v55);
    goto LABEL_29;
  }

  if (v29 <= 1u)
  {
    v97 = v19;
    if (v29)
    {
      LOBYTE(v104) = 1;
      sub_1DB240438();
      v52 = v73;
      sub_1DB2BB704();
      sub_1DB241BC4();
      v57 = v76;
      sub_1DB2BB7B4();
      (*(v75 + 8))(v52, v57);
      (*(v119 + 8))(v97, v16);
      swift_unknownObjectRelease();
      v66 = 0;
      v60 = v104;
      v61 = v105;
      v62 = v106;
      v63 = v107;
    }

    else
    {
      LOBYTE(v104) = 0;
      sub_1DB2404E0();
      v45 = v72;
      v46 = v97;
      sub_1DB2BB704();
      sub_1DB241C18();
      v54 = v71;
      sub_1DB2BB7B4();
      (*(v74 + 8))(v45, v54);
      (*(v119 + 8))(v46, v16);
      swift_unknownObjectRelease();
      v66 = 0;
      v60 = v104;
      v61 = v105;
      v62 = v106;
      v63 = v107;
      v67 = v108;
      v103 = v108;
    }

    v65 = v104 & 0xFFFFFFFFFFFFFF00;
    v59 = v102;
    v32 = v26;
    goto LABEL_31;
  }

  if (v29 != 2)
  {
    if (v29 == 3)
    {
      LOBYTE(v104) = 3;
      sub_1DB2402E8();
      v30 = v94;
      sub_1DB2BB704();
      v31 = v16;
      v32 = v26;
      v33 = v19;
      v34 = v31;
      sub_1DB241B1C();
      v35 = v80;
      sub_1DB2BB7B4();
      v36 = v119;
      v37 = &v110;
    }

    else
    {
      LOBYTE(v104) = 4;
      sub_1DB240240();
      v30 = v93;
      sub_1DB2BB704();
      v50 = v16;
      v32 = v26;
      v33 = v19;
      v34 = v50;
      sub_1DB241AC8();
      v35 = v82;
      sub_1DB2BB7B4();
      v36 = v119;
      v37 = &v111;
    }

    (*(*(v37 - 32) + 8))(v30, v35);
    (*(v36 + 8))(v33, v34);
    goto LABEL_30;
  }

  LOBYTE(v104) = 2;
  sub_1DB240390();
  sub_1DB2BB704();
  sub_1DB241B70();
  v49 = v78;
  sub_1DB2BB7B4();
  (*(v77 + 8))(v22, v49);
  (*(v119 + 8))(v19, v16);
  swift_unknownObjectRelease();
  v60 = v104;
  v61 = v105;
  v65 = v104 & 0xFFFFFFFFFFFFFF00;
  v62 = v106;
  v63 = v107;
  v67 = v108;
  v66 = v108 & 0xFFFFFFFFFFFFFF00;
  v64 = v109;
  v116 = v110;
  v117 = v111;
  v118 = v112;
  v59 = v102;
  v32 = v26;
LABEL_31:
  *(v32 + 16) = v62;
  v68 = v117;
  *(v32 + 56) = v116;
  *v32 = v65 | v60;
  *(v32 + 8) = v61;
  *(v32 + 32) = v63;
  *(v32 + 40) = v66 | v67;
  *(v32 + 48) = v64;
  *(v32 + 72) = v68;
  *(v32 + 88) = v118;
  *(v32 + 89) = v70;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t sub_1DB241924()
{
  result = qword_1ECC28740;
  if (!qword_1ECC28740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28740);
  }

  return result;
}

unint64_t sub_1DB241978()
{
  result = qword_1ECC28748;
  if (!qword_1ECC28748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28748);
  }

  return result;
}

unint64_t sub_1DB2419CC()
{
  result = qword_1ECC28750;
  if (!qword_1ECC28750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28750);
  }

  return result;
}

unint64_t sub_1DB241A20()
{
  result = qword_1ECC28758;
  if (!qword_1ECC28758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28758);
  }

  return result;
}

unint64_t sub_1DB241A74()
{
  result = qword_1EE13FF78;
  if (!qword_1EE13FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF78);
  }

  return result;
}

unint64_t sub_1DB241AC8()
{
  result = qword_1ECC28760;
  if (!qword_1ECC28760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28760);
  }

  return result;
}

unint64_t sub_1DB241B1C()
{
  result = qword_1ECC28768;
  if (!qword_1ECC28768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28768);
  }

  return result;
}

unint64_t sub_1DB241B70()
{
  result = qword_1EE13F4A0;
  if (!qword_1EE13F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4A0);
  }

  return result;
}

unint64_t sub_1DB241BC4()
{
  result = qword_1EE13F7E8;
  if (!qword_1EE13F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7E8);
  }

  return result;
}

unint64_t sub_1DB241C18()
{
  result = qword_1EE13F970;
  if (!qword_1EE13F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F970);
  }

  return result;
}

uint64_t sub_1DB241CD0()
{
  if (*v0)
  {
    return 0x6574697277;
  }

  else
  {
    return 1684104562;
  }
}

uint64_t sub_1DB241D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684104562 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574697277 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB241DD8(uint64_t a1)
{
  v2 = sub_1DB2421F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB241E14(uint64_t a1)
{
  v2 = sub_1DB2421F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB241E50(uint64_t a1)
{
  v2 = sub_1DB242298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB241E8C(uint64_t a1)
{
  v2 = sub_1DB242298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB241EC8(uint64_t a1)
{
  v2 = sub_1DB242244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB241F04(uint64_t a1)
{
  v2 = sub_1DB242244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestAccessType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28770, &qword_1DB2C8768);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28778, &qword_1DB2C8770);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28780, &qword_1DB2C8778);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2421F0();
  sub_1DB2BBA94();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1DB242244();
    v14 = v18;
    sub_1DB2BB804();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1DB242298();
    sub_1DB2BB804();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1DB2421F0()
{
  result = qword_1ECC28788;
  if (!qword_1ECC28788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28788);
  }

  return result;
}

unint64_t sub_1DB242244()
{
  result = qword_1ECC28790;
  if (!qword_1ECC28790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28790);
  }

  return result;
}

unint64_t sub_1DB242298()
{
  result = qword_1ECC28798;
  if (!qword_1ECC28798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28798);
  }

  return result;
}

uint64_t RequestAccessType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t RequestAccessType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287A0, &qword_1DB2C8780);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287A8, &qword_1DB2C8788);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287B0, &qword_1DB2C8790);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2421F0();
  v12 = v31;
  sub_1DB2BBA84();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1DB2BB7D4();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1DB14B1F0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1DB2BB564();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v22 = &type metadata for RequestAccessType;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1DB242244();
        sub_1DB2BB704();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1DB242298();
        sub_1DB2BB704();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t ConnectionDetails.connectionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConnectionDetails.credential.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[10];
  v25 = v1[9];
  v26 = v3;
  v4 = v1[10];
  v27 = v1[11];
  v5 = v1[4];
  v6 = v1[6];
  v21 = v1[5];
  v7 = v21;
  v22 = v6;
  v8 = v1[6];
  v9 = v1[8];
  v23 = v1[7];
  v10 = v23;
  v24 = v9;
  v11 = v1[2];
  v18[0] = v1[1];
  v18[1] = v11;
  v12 = v1[4];
  v14 = v1[1];
  v13 = v1[2];
  v19 = v1[3];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[11];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1DB1F8988(v18, &v17);
}

__n128 ConnectionDetails.init(connectionId:credential:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 144);
  *(a4 + 144) = *(a3 + 128);
  *(a4 + 160) = v4;
  *(a4 + 176) = *(a3 + 160);
  v5 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v5;
  v6 = *(a3 + 112);
  *(a4 + 112) = *(a3 + 96);
  *(a4 + 128) = v6;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  result = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = result;
  return result;
}

uint64_t sub_1DB242944()
{
  if (*v0)
  {
    return 0x69746E6564657263;
  }

  else
  {
    return 0x697463656E6E6F63;
  }
}

uint64_t sub_1DB24298C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB242A74(uint64_t a1)
{
  v2 = sub_1DB242D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB242AB0(uint64_t a1)
{
  v2 = sub_1DB242D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConnectionDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287B8, &qword_1DB2C8798);
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = v1[10];
  v36 = v1[9];
  v37 = v6;
  v38 = v1[11];
  v7 = v1[6];
  v32 = v1[5];
  v33 = v7;
  v8 = v1[8];
  v34 = v1[7];
  v35 = v8;
  v9 = v1[2];
  v28 = v1[1];
  v29 = v9;
  v10 = v1[4];
  v30 = v1[3];
  v31 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB242D40();
  sub_1DB2BBA94();
  LOBYTE(v17) = 0;
  v11 = v14;
  sub_1DB2BB864();
  if (v11)
  {
    return (*(v15 + 8))(v5, v3);
  }

  v25 = v36;
  v26 = v37;
  v27 = v38;
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v17 = v28;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v39 = 1;
  sub_1DB1F8988(&v28, v16);
  sub_1DB242D94();
  sub_1DB2BB8A4();
  v13 = (v15 + 8);
  v16[8] = v25;
  v16[9] = v26;
  v16[10] = v27;
  v16[4] = v21;
  v16[5] = v22;
  v16[6] = v23;
  v16[7] = v24;
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  sub_1DB1F89E4(v16);
  return (*v13)(v5, v3);
}

unint64_t sub_1DB242D40()
{
  result = qword_1EE13F9A8;
  if (!qword_1EE13F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9A8);
  }

  return result;
}

unint64_t sub_1DB242D94()
{
  result = qword_1EE13E9A8;
  if (!qword_1EE13E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E9A8);
  }

  return result;
}

uint64_t ConnectionDetails.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287C0, &qword_1DB2C87A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB242D40();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v69;
  LOBYTE(v34[0]) = 0;
  v10 = sub_1DB2BB774();
  v12 = v11;
  v21 = v10;
  v46 = 1;
  sub_1DB22536C();
  sub_1DB2BB7B4();
  (*(v8 + 8))(v7, v4);
  v13 = v55;
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v61 = v50;
  v31 = v55;
  v32 = v56;
  v33 = v57;
  v27 = v51;
  v28 = v52;
  v30 = v54;
  v29 = v53;
  v23 = v47;
  v24 = v48;
  v14 = v21;
  *&v22 = v21;
  *(&v22 + 1) = v12;
  v26 = v50;
  v25 = v49;
  v9[8] = v54;
  v9[9] = v13;
  v15 = v33;
  v9[10] = v32;
  v9[11] = v15;
  v16 = v27;
  v9[4] = v26;
  v9[5] = v16;
  v17 = v29;
  v9[6] = v28;
  v9[7] = v17;
  v18 = v23;
  *v9 = v22;
  v9[1] = v18;
  v19 = v25;
  v9[2] = v24;
  v9[3] = v19;
  sub_1DB243124(&v22, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v14;
  v34[1] = v12;
  v43 = v66;
  v44 = v67;
  v45 = v68;
  v39 = v62;
  v40 = v63;
  v42 = v65;
  v41 = v64;
  v35 = v58;
  v36 = v59;
  v38 = v61;
  v37 = v60;
  return sub_1DB24315C(v34);
}

uint64_t ConnectionRequest.userId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConnectionRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 89) = 0;

  return sub_1DB24325C(v5, v6);
}

uint64_t ConnectionRequest.credential.getter()
{
  v1 = *(v0 + 24);
  sub_1DB24325C(v1, *(v0 + 32));
  return v1;
}

uint64_t ConnectionRequest.init(credential:userId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3 & 1;
  *a6 = a4;
  *(a6 + 8) = a5;

  sub_1DB24325C(a1, a2);
  v9 = sub_1DB2BAE94();
  sub_1DB240588(a1, a2);
  v10 = sub_1DB2BAE94();

  if (__OFADD__(v9, v10))
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = v9 + v10;
  }

  return result;
}

unint64_t ConnectionRequest.description.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1DB2BB4F4();

  if (v3)
  {
    sub_1DB24325C(v2, v1);
    v4 = sub_1DB249BB8(7, v2, v1);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_1DB240588(v2, v1);
    v11 = MEMORY[0x1E12833E0](v4, v6, v8, v10);
    v13 = v12;

    v15 = v13;

    MEMORY[0x1E1283490](3026478, 0xE300000000000000);

    v2 = v11;
    v1 = v15;
  }

  else
  {
  }

  MEMORY[0x1E1283490](v2, v1);

  return 0xD000000000000024;
}

uint64_t sub_1DB243494()
{
  v1 = 0x6574616D69747365;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644972657375;
  }
}

uint64_t sub_1DB2434FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24A444(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB243524(uint64_t a1)
{
  v2 = sub_1DB249C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB243560(uint64_t a1)
{
  v2 = sub_1DB249C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConnectionRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287C8, &qword_1DB2C87A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v7;
  v14 = *(v1 + 32);
  v21 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249C54();
  sub_1DB2BBA94();
  LOBYTE(v18) = 0;
  v8 = v17;
  sub_1DB2BB864();
  if (!v8)
  {
    v10 = v21;
    v12 = v14;
    v11 = v15;
    LOBYTE(v18) = 1;
    sub_1DB2BB894();
    v18 = v11;
    v19 = v12;
    v20 = v10;
    v22 = 2;
    sub_1DB249CA8();
    sub_1DB2BB8A4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ConnectionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287D0, &qword_1DB2C87B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249C54();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_1DB2BB774();
  v11 = v10;
  v12 = v9;
  LOBYTE(v18) = 1;
  v17 = sub_1DB2BB7A4();
  v21 = 2;
  sub_1DB249CFC();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;
  v15 = v20;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;

  sub_1DB24325C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1DB240588(v13, v14);
}

uint64_t sub_1DB243A10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 89) = 0;

  return sub_1DB24325C(v5, v6);
}

uint64_t DisconnectionRequest.userId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DisconnectionRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 89) = 1;
}

uint64_t DisconnectionRequest.connectionId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall DisconnectionRequest.init(connectionId:userId:)(OnDeviceStorageCore::DisconnectionRequest *__return_ptr retstr, Swift::String connectionId, Swift::String userId)
{
  retstr->connectionId = connectionId;
  retstr->userId = userId;

  v4 = sub_1DB2BAE94();

  v5 = sub_1DB2BAE94();

  if (__OFADD__(v4, v5))
  {
    __break(1u);
  }

  else
  {
    retstr->estimatedSize = v4 + v5;
  }
}

unint64_t DisconnectionRequest.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

uint64_t sub_1DB243C7C()
{
  v1 = 0x6574616D69747365;
  if (*v0 != 1)
  {
    v1 = 0x697463656E6E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644972657375;
  }
}

uint64_t sub_1DB243CE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24A568(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB243D10(uint64_t a1)
{
  v2 = sub_1DB249D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB243D4C(uint64_t a1)
{
  v2 = sub_1DB249D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DisconnectionRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287D8, &qword_1DB2C87B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249D50();
  sub_1DB2BBA94();
  v13 = 0;
  v8 = v10[3];
  sub_1DB2BB864();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_1DB2BB894();
  v11 = 2;
  sub_1DB2BB864();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DisconnectionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287E0, &qword_1DB2C87C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249D50();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_1DB2BB774();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_1DB2BB7A4();
  v21 = 2;
  v13 = sub_1DB2BB774();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v18 = v19;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB244178@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 89) = 1;
}

unint64_t sub_1DB2441FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

uint64_t sub_1DB2442A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24A688(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB2442CC(uint64_t a1)
{
  v2 = sub_1DB249DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB244308(uint64_t a1)
{
  v2 = sub_1DB249DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB244344(uint64_t a1)
{
  v2 = sub_1DB249DF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB244380(uint64_t a1)
{
  v2 = sub_1DB249DF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB2443BC(uint64_t a1)
{
  v2 = sub_1DB249EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2443F8(uint64_t a1)
{
  v2 = sub_1DB249EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB244434(uint64_t a1)
{
  v2 = sub_1DB249EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB244470(uint64_t a1)
{
  v2 = sub_1DB249EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB2444AC(uint64_t a1)
{
  v2 = sub_1DB249E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2444E8(uint64_t a1)
{
  v2 = sub_1DB249E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatementType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287E8, &qword_1DB2C87C8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287F0, &qword_1DB2C87D0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287F8, &qword_1DB2C87D8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28800, &qword_1DB2C87E0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28808, &qword_1DB2C87E8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249DA4();
  sub_1DB2BBA94();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1DB249E4C();
      v18 = v27;
      sub_1DB2BB804();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1DB249DF8();
      v18 = v30;
      sub_1DB2BB804();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1DB249EA0();
    v18 = v24;
    sub_1DB2BB804();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1DB249EF4();
  sub_1DB2BB804();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t StatementType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t StatementType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28838, &qword_1DB2C87F0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28840, &qword_1DB2C87F8);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28848, &qword_1DB2C8800);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28850, &qword_1DB2C8808);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28858, &qword_1DB2C8810);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1DB249DA4();
  v15 = v46;
  sub_1DB2BBA84();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1DB2BB7D4();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1DB14B1E8();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1DB2BB564();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v28 = &type metadata for StatementType;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1DB249EA0();
        v32 = v35;
        sub_1DB2BB704();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1DB249EF4();
        v25 = v35;
        sub_1DB2BB704();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1DB249E4C();
      v31 = v35;
      sub_1DB2BB704();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1DB249DF8();
      v33 = v35;
      sub_1DB2BB704();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t QueryRequest.statement.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6, a1);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = sub_1DB21FF88(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1DB2450F4()
{
  v1 = sub_1DB2BAE94();
  result = sub_1DB2BAE94();
  v3 = v1 + result;
  if (__OFADD__(v1, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1DB164C68(v0 + 32, v7);
  sub_1DB1355D0(v7, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1DB21FF88(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  v6 = sub_1DB2BAE94();

  result = v3 + v6;
  if (__OFADD__(v3, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t QueryRequest.estimatedSize.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  (*(v4 + 16))(a1, v4);
  v5 = sub_1DB2BAE94();

  (*(*(v4 + 8) + 56))(a1);
  v6 = sub_1DB2BAE94();

  v8 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(a2 + 32))(a1, a2);
  v9 = sub_1DB2BAE94();

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *QueryRequest.accessType.getter@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  result = (*(a1 + 24))(&v4);
  *a2 = v4 != 0;
  return result;
}

uint64_t SelectRequest.userId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SelectRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249F48(v1, a1);
  *(a1 + 89) = 2;
  return result;
}

uint64_t SelectRequest.connectionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SelectRequest.withQuery(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB249F48(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

uint64_t _s19OnDeviceStorageCore13SelectRequestV_10batchIndex0G8RowCount12connectionId04userL0AcA11Expressible_p_S2iS2StAA11ClientErrorOYKcfC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (a2 < 0)
  {
    v16 = a1;

    sub_1DB2BB4F4();

    v17 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v17);

    v19 = 0x80000001DB2D6590;
    v18 = 0xD000000000000019;
    v20 = xmmword_1DB2C8680;
  }

  else
  {
    if (a3 > 0)
    {
      a9[2] = a4;
      a9[3] = a5;
      result = sub_1DB1355D0(a1, (a9 + 4));
      *a9 = a6;
      a9[1] = a7;
      a9[9] = a2;
      a9[10] = a3;
      return result;
    }

    v16 = a1;

    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000031, 0x80000001DB2D6550);
    v21 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v21);

    v19 = 0xE000000000000000;
    v18 = 0;
    v20 = xmmword_1DB2C8670;
  }

  *a8 = v20;
  *(a8 + 16) = v18;
  *(a8 + 24) = v19;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 48) = 7;
  sub_1DB14A10C();
  swift_willThrowTypedImpl();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

double _s19OnDeviceStorageCore13SelectRequestV12_forTestOnly12connectionId04userK0AcA11Expressible_p_S2StAA11ClientErrorOYKcfC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB1355D0(a1, a6 + 32);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *a6 = a4;
  *(a6 + 8) = a5;
  result = 0.0;
  *(a6 + 72) = xmmword_1DB2C8690;
  return result;
}

uint64_t SelectRequest.description.getter()
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D65B0);
  MEMORY[0x1E1283490](v0[2], v0[3]);
  MEMORY[0x1E1283490](0x637461427369202CLL, 0xED0000203A646568);
  v1 = v0[10];
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0x65736C6166;
  }

  else
  {
    v2 = 1702195828;
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E1283490](v2, v3);

  MEMORY[0x1E1283490](0x496863746162202CLL, 0xEE00203A7865646ELL);
  v6 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v6);

  MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D65D0);
  MEMORY[0x1E1283490](v4, v5);

  MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D65F0);
  v7 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v7);

  return 0;
}

uint64_t sub_1DB2458A4()
{
  v1 = *v0;
  v2 = 0x644972657375;
  v3 = 0x7972657551796E61;
  v4 = 0x646E496863746162;
  if (v1 != 3)
  {
    v4 = 0x776F526863746162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x697463656E6E6F63;
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

uint64_t sub_1DB245954@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24A7DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB24597C(uint64_t a1)
{
  v2 = sub_1DB249F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2459B8(uint64_t a1)
{
  v2 = sub_1DB249F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SelectRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28860, &qword_1DB2C8818);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249F80();
  sub_1DB2BBA94();
  v8[15] = 0;
  sub_1DB2BB864();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DB2BB864();
    v8[13] = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
    v8[12] = 3;
    sub_1DB2BB894();
    v8[11] = 4;
    sub_1DB2BB894();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SelectRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28868, &qword_1DB2C8820);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249F80();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v13[0]) = 0;
  v15[0] = sub_1DB2BB774();
  v15[1] = v9;
  LOBYTE(v13[0]) = 1;
  v15[2] = sub_1DB2BB774();
  v15[3] = v10;
  v21 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  v16 = v13[0];
  v17 = v13[1];
  v18 = v14;
  LOBYTE(v13[0]) = 3;
  v19 = sub_1DB2BB7A4();
  LOBYTE(v13[0]) = 4;
  v11 = sub_1DB2BB7A4();
  (*(v6 + 8))(v8, v5);
  v20 = v11;
  sub_1DB249F48(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E7A8(v15);
}

uint64_t sub_1DB245F04@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249F48(v1, a1);
  *(a1 + 89) = 2;
  return result;
}

uint64_t sub_1DB245F78()
{
  sub_1DB164C68(v0 + 32, v5);
  sub_1DB1355D0(v5, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = sub_1DB21FF88(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_1DB245FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB249F48(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

double sub_1DB246050@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  sub_1DB1355D0(a1, a6 + 32);
  *a6 = a4;
  *(a6 + 8) = a5;
  result = 0.0;
  *(a6 + 72) = xmmword_1DB2C8690;
  return result;
}

uint64_t PluckRequest.userId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PluckRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249FD4(v1, a1);
  *(a1 + 89) = 3;
  return result;
}

uint64_t PluckRequest.connectionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t PluckRequest.description.getter()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001ELL;
}

uint64_t PluckRequest.init(_forTestOnly:connectionId:userId:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[2] = a2;
  a6[3] = a3;
  result = sub_1DB1355D0(a1, (a6 + 4));
  *a6 = a4;
  a6[1] = a5;
  return result;
}

uint64_t sub_1DB246274(uint64_t a1)
{
  v2 = sub_1DB24A00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2462B0(uint64_t a1)
{
  v2 = sub_1DB24A00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluckRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28880, &qword_1DB2C8830);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24A00C();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12[0]) = 0;
  v14[0] = sub_1DB2BB774();
  v14[1] = v9;
  LOBYTE(v12[0]) = 1;
  v14[2] = sub_1DB2BB774();
  v14[3] = v10;
  v18 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  v15 = v12[0];
  v16 = v12[1];
  v17 = v13;
  sub_1DB249FD4(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E778(v14);
}

uint64_t sub_1DB246598@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249FD4(v1, a1);
  *(a1 + 89) = 3;
  return result;
}

unint64_t sub_1DB246614()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001ELL;
}

uint64_t ScalarValueRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A060(v1, a1);
  *(a1 + 89) = 4;
  return result;
}

unint64_t ScalarValueRequest.description.getter()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD000000000000025;
}

uint64_t sub_1DB246740(uint64_t a1)
{
  v2 = sub_1DB24A098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24677C(uint64_t a1)
{
  v2 = sub_1DB24A098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScalarValueRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28898, &qword_1DB2C8840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24A098();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12[0]) = 0;
  v14[0] = sub_1DB2BB774();
  v14[1] = v9;
  LOBYTE(v12[0]) = 1;
  v14[2] = sub_1DB2BB774();
  v14[3] = v10;
  v18 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  v15 = v12[0];
  v16 = v12[1];
  v17 = v13;
  sub_1DB24A060(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E748(v14);
}

uint64_t sub_1DB246A64@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A060(v1, a1);
  *(a1 + 89) = 4;
  return result;
}

unint64_t sub_1DB246AE0()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD000000000000025;
}

uint64_t InsertRequest.userId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InsertRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A0EC(v1, a1);
  *(a1 + 89) = 5;
  return result;
}

uint64_t InsertRequest.connectionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InsertRequest.withQuery(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB24A0EC(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

uint64_t _s19OnDeviceStorageCore13InsertRequestV_10batchIndex13isLastInBatch12connectionId04userN0AcA11Expressible_p_SiSbS2StAA11ClientErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a2 < 0)
  {

    *a8 = xmmword_1DB2C8680;
    *(a8 + 16) = 0xD000000000000017;
    *(a8 + 24) = 0x80000001DB2D6660;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = 7;
    sub_1DB14A10C();
    swift_willThrowTypedImpl();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    *(a9 + 16) = a4;
    *(a9 + 24) = a5;
    sub_1DB164980(a1, a9 + 32);
    *a9 = a6;
    *(a9 + 8) = a7;
    *(a9 + 72) = a2;
    v15 = sub_1DB24A99C(a1);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *(a9 + 80) = v15;
    *(a9 + 88) = a3 & 1;
  }

  return result;
}

uint64_t InsertRequest.description.getter()
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1DB2BB4F4();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D6680);
  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1283490](0x496863746162202CLL, 0xEE00203A7865646ELL);
  v8[0] = *(v0 + 72);
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D65D0);
  if (*(v0 + 88))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 88))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E1283490](v2, v3);

  MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D66A0);
  sub_1DB164C68(v0 + 32, v7);
  sub_1DB1355D0(v7, v8);
  v4 = sub_1DB24A99C(v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  v8[0] = v4;
  v5 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v5);

  return v9;
}

uint64_t _s19OnDeviceStorageCore13InsertRequestV12_forTestOnly12connectionId04userK0AcA11Expressible_p_S2StAA11ClientErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB164980(a1, v14);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  sub_1DB164980(v14, a6 + 32);
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 72) = 0;
  v12 = sub_1DB24A99C(v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *(a6 + 80) = v12;
  *(a6 + 88) = 1;
  return result;
}

uint64_t sub_1DB24700C()
{
  v1 = *v0;
  v2 = 0x644972657375;
  v3 = 0x646E496863746162;
  v4 = 0x776F526863746162;
  if (v1 != 4)
  {
    v4 = 0x6E497473614C7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697463656E6E6F63;
  if (v1 != 1)
  {
    v5 = 0x7972657551796E61;
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

uint64_t sub_1DB2470E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24E878(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB247110(uint64_t a1)
{
  v2 = sub_1DB24AB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24714C(uint64_t a1)
{
  v2 = sub_1DB24AB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InsertRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288A0, &qword_1DB2C8848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AB40();
  sub_1DB2BBA94();
  v8[15] = 0;
  sub_1DB2BB864();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DB2BB864();
    v8[13] = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
    v8[12] = 3;
    sub_1DB2BB894();
    v8[11] = 4;
    sub_1DB2BB894();
    v8[10] = 5;
    sub_1DB2BB874();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InsertRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288A8, &qword_1DB2C8850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AB40();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v14) = 0;
  v17[0] = sub_1DB2BB774();
  v17[1] = v9;
  LOBYTE(v14) = 1;
  v17[2] = sub_1DB2BB774();
  v17[3] = v10;
  v24 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  v18 = v14;
  v19 = v15;
  v20 = v16;
  LOBYTE(v14) = 3;
  v21 = sub_1DB2BB7A4();
  LOBYTE(v14) = 4;
  v22 = sub_1DB2BB7A4();
  LOBYTE(v14) = 5;
  v11 = sub_1DB2BB784();
  (*(v6 + 8))(v8, v5);
  v23 = v11 & 1;
  sub_1DB24A0EC(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E718(v17);
}

uint64_t sub_1DB2476D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A0EC(v1, a1);
  *(a1 + 89) = 5;
  return result;
}

uint64_t sub_1DB247708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB24A0EC(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

uint64_t sub_1DB247768@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB164980(a1, v14);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  sub_1DB164980(v14, a6 + 32);
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 72) = 0;
  v12 = sub_1DB24A99C(v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *(a6 + 80) = v12;
  *(a6 + 88) = 1;
  return result;
}

uint64_t UpdateRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AB94(v1, a1);
  *(a1 + 89) = 6;
  return result;
}

uint64_t UpdateRequest.description.getter()
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D66C0);
  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1283490](0xD000000000000014, 0x80000001DB2D66E0);
  sub_1DB247974();
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  return 0;
}

uint64_t sub_1DB247974()
{
  sub_1DB164C68(v0 + 32, v8);
  sub_1DB1355D0(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  if (swift_dynamicCast())
  {
    *&v7[11] = *(v9 + 11);
    v6 = v8[4];
    *v7 = v9[0];
    v4[0] = v8[0];
    v4[1] = v8[1];
    v4[2] = v8[2];
    v5 = v8[3];
    if (BYTE10(v9[1]))
    {
      v1 = v5;

      sub_1DB24EED4(v4);
      v2 = *(v1 + 16);

      return v2;
    }

    sub_1DB24EED4(v4);
  }

  return 0;
}

uint64_t sub_1DB247A50(uint64_t a1)
{
  v2 = sub_1DB24ABCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB247A8C(uint64_t a1)
{
  v2 = sub_1DB24ABCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288C0, &qword_1DB2C8860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24ABCC();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12[0]) = 0;
  v14[0] = sub_1DB2BB774();
  v14[1] = v9;
  LOBYTE(v12[0]) = 1;
  v14[2] = sub_1DB2BB774();
  v14[3] = v10;
  v18 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  v15 = v12[0];
  v16 = v12[1];
  v17 = v13;
  sub_1DB24AB94(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E6E8(v14);
}

uint64_t sub_1DB247D74@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AB94(v1, a1);
  *(a1 + 89) = 6;
  return result;
}

uint64_t DeleteRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AC20(v1, a1);
  *(a1 + 89) = 7;
  return result;
}

uint64_t sub_1DB247E4C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  a2(v3, a3);
  sub_1DB164980(a1, v7);
  sub_1DB164BE4(a3 + 32);
  return sub_1DB1355D0(v7, a3 + 32);
}

unint64_t DeleteRequest.description.getter()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001FLL;
}

uint64_t sub_1DB247F24(uint64_t a1)
{
  v2 = sub_1DB24AC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB247F60(uint64_t a1)
{
  v2 = sub_1DB24AC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB247FE0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB2BBA94();
  v16 = 0;
  v11 = v13[1];
  sub_1DB2BB864();
  if (!v11)
  {
    v15 = 1;
    sub_1DB2BB864();
    v14 = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t DeleteRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288D8, &qword_1DB2C8870);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AC58();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12[0]) = 0;
  v14[0] = sub_1DB2BB774();
  v14[1] = v9;
  LOBYTE(v12[0]) = 1;
  v14[2] = sub_1DB2BB774();
  v14[3] = v10;
  v18 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  v15 = v12[0];
  v16 = v12[1];
  v17 = v13;
  sub_1DB24AC20(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E6B8(v14);
}

uint64_t sub_1DB248428@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AC20(v1, a1);
  *(a1 + 89) = 7;
  return result;
}

uint64_t sub_1DB248474@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  a2(v3, a3);
  sub_1DB164980(a1, v7);
  sub_1DB164BE4(a3 + 32);
  return sub_1DB1355D0(v7, a3 + 32);
}

unint64_t sub_1DB248508()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001FLL;
}

uint64_t DataDeletionTriggerRequest.connectionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataDeletionTriggerRequest.userId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DataDeletionTriggerRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  *(a1 + 89) = 8;
}

uint64_t DataDeletionTriggerRequest.triggerName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall DataDeletionTriggerRequest.init(triggerName:connectionId:userId:)(OnDeviceStorageCore::DataDeletionTriggerRequest *__return_ptr retstr, Swift::String triggerName, Swift::String connectionId, Swift::String userId)
{
  retstr->triggerName = triggerName;
  retstr->connectionId = connectionId;
  retstr->userId = userId;

  v5 = sub_1DB2BAE94();

  v6 = sub_1DB2BAE94();

  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1DB2BAE94();

    if (!__OFADD__(v7, v8))
    {
      retstr->estimatedSize = v7 + v8;
      return;
    }
  }

  __break(1u);
}

unint64_t DataDeletionTriggerRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

uint64_t sub_1DB2487D0()
{
  v1 = 0x697463656E6E6F63;
  v2 = 0x6574616D69747365;
  if (*v0 != 2)
  {
    v2 = 0x4E72656767697274;
  }

  if (*v0)
  {
    v1 = 0x644972657375;
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

uint64_t sub_1DB248864@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24EBA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB24888C(uint64_t a1)
{
  v2 = sub_1DB24ACAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2488C8(uint64_t a1)
{
  v2 = sub_1DB24ACAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataDeletionTriggerRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288E0, &qword_1DB2C8878);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  v11[0] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24ACAC();
  sub_1DB2BBA94();
  v15 = 0;
  v9 = v11[5];
  sub_1DB2BB864();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_1DB2BB864();
  v13 = 2;
  sub_1DB2BB894();
  v12 = 3;
  sub_1DB2BB864();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DataDeletionTriggerRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288F0, &qword_1DB2C8880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24ACAC();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v9 = sub_1DB2BB774();
  v26 = v10;
  v29 = 1;
  v24 = sub_1DB2BB774();
  v25 = v11;
  v28 = 2;
  v23 = sub_1DB2BB7A4();
  v27 = 3;
  v12 = sub_1DB2BB774();
  v15 = v14;
  v16 = *(v6 + 8);
  v22 = v12;
  v16(v8, v5);
  v18 = v25;
  v17 = v26;
  *a2 = v9;
  a2[1] = v17;
  v19 = v23;
  a2[2] = v24;
  a2[3] = v18;
  v20 = v22;
  a2[4] = v19;
  a2[5] = v20;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB248DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  *(a1 + 89) = 8;
}

unint64_t sub_1DB248E40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

OnDeviceStorageCore::StatusCommand_optional __swiftcall StatusCommand.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StatusCommand.rawValue.getter()
{
  v1 = 1735289200;
  v2 = 0x7374617473;
  if (*v0 != 2)
  {
    v2 = 7105633;
  }

  if (*v0)
  {
    v1 = 7106931;
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

uint64_t sub_1DB248F94()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB249040(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB2490D8(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB24918C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1735289200;
  v4 = 0xE500000000000000;
  v5 = 0x7374617473;
  if (*v1 != 2)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 7106931;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t StatusRequest.connectionId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StatusRequest.userId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t StatusRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 89) = 9;
}

void __swiftcall StatusRequest.init(command:connectionId:)(OnDeviceStorageCore::StatusRequest *__return_ptr retstr, OnDeviceStorageCore::StatusCommand command, Swift::String connectionId)
{
  retstr->command = *command;
  retstr->connectionId = connectionId;
  retstr->userId._countAndFlagsBits = 0;
  retstr->userId._object = 0xE000000000000000;
  sub_1DB2BB674();
  v4 = sub_1DB2BAE94();

  retstr->estimatedSize = v4;
}

uint64_t StatusRequest.description.getter()
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D6750);
  sub_1DB2BB674();
  return 0;
}

uint64_t sub_1DB2494D0()
{
  v1 = 0x646E616D6D6F63;
  v2 = 0x644972657375;
  if (*v0 != 2)
  {
    v2 = 0x6574616D69747365;
  }

  if (*v0)
  {
    v1 = 0x697463656E6E6F63;
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

uint64_t sub_1DB24955C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB24ED14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB249584(uint64_t a1)
{
  v2 = sub_1DB24AD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2495C0(uint64_t a1)
{
  v2 = sub_1DB24AD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatusRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288F8, &qword_1DB2C8888);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[4] = *(v1 + 2);
  v12[5] = v9;
  v10 = *(v1 + 3);
  v12[2] = *(v1 + 4);
  v12[3] = v10;
  v12[1] = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AD00();
  sub_1DB2BBA94();
  v17 = v8;
  v16 = 0;
  sub_1DB24AD54();
  sub_1DB2BB8A4();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  sub_1DB2BB864();
  v14 = 2;
  sub_1DB2BB864();
  v13 = 3;
  sub_1DB2BB894();
  return (*(v5 + 8))(v7, v4);
}

uint64_t StatusRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28910, &qword_1DB2C8890);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AD00();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_1DB24ADA8();
  sub_1DB2BB7B4();
  v9 = v25;
  v23 = 1;
  v10 = sub_1DB2BB774();
  v12 = v11;
  v20 = v10;
  v22 = 2;
  v18 = sub_1DB2BB774();
  v19 = v13;
  v21 = 3;
  v14 = sub_1DB2BB7A4();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  v15 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v12;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB249A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 89) = 9;
}

uint64_t sub_1DB249B28()
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D6750);
  sub_1DB2BB674();
  return 0;
}

uint64_t sub_1DB249BB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DB2BAEC4();

    return sub_1DB2BB004();
  }

  return result;
}

unint64_t sub_1DB249C54()
{
  result = qword_1EE13F990;
  if (!qword_1EE13F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F990);
  }

  return result;
}

unint64_t sub_1DB249CA8()
{
  result = qword_1EE13F478;
  if (!qword_1EE13F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F478);
  }

  return result;
}

unint64_t sub_1DB249CFC()
{
  result = qword_1EE13E980;
  if (!qword_1EE13E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E980);
  }

  return result;
}

unint64_t sub_1DB249D50()
{
  result = qword_1EE13F808;
  if (!qword_1EE13F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F808);
  }

  return result;
}

unint64_t sub_1DB249DA4()
{
  result = qword_1ECC28810;
  if (!qword_1ECC28810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28810);
  }

  return result;
}

unint64_t sub_1DB249DF8()
{
  result = qword_1ECC28818;
  if (!qword_1ECC28818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28818);
  }

  return result;
}

unint64_t sub_1DB249E4C()
{
  result = qword_1ECC28820;
  if (!qword_1ECC28820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28820);
  }

  return result;
}

unint64_t sub_1DB249EA0()
{
  result = qword_1ECC28828;
  if (!qword_1ECC28828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28828);
  }

  return result;
}

unint64_t sub_1DB249EF4()
{
  result = qword_1ECC28830;
  if (!qword_1ECC28830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28830);
  }

  return result;
}

unint64_t sub_1DB249F80()
{
  result = qword_1EE13F4C0;
  if (!qword_1EE13F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4C0);
  }

  return result;
}

unint64_t sub_1DB24A00C()
{
  result = qword_1ECC28878;
  if (!qword_1ECC28878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28878);
  }

  return result;
}

unint64_t sub_1DB24A098()
{
  result = qword_1ECC28890;
  if (!qword_1ECC28890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28890);
  }

  return result;
}

uint64_t sub_1DB24A124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEA00000000007463 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63756C70 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747265736E69 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB2D6770 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1DB24A444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24A568(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24A688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656C6573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747265736E69 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DB24A7DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972657551796E61 && a2 == 0xE800000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E496863746162 && a2 == 0xEA00000000007865 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776F526863746162 && a2 == 0xED0000746E756F43)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DB24A99C(uint64_t a1)
{
  sub_1DB164980(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  if (swift_dynamicCast())
  {
    sub_1DB24EF28(v30, &v18);
    if (v28)
    {
      v1 = v18;
      v3 = v19;
      v2 = v20;
      v4 = v21;
      v5 = v22;
      v6 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
      v10 = v27;
    }

    else
    {
      sub_1DB1445E0(&v18, &qword_1ECC27CC8, &unk_1DB2C3860);
      v10 = 0;
      v5 = 0;
      v1 = 0;
      v3 = 0uLL;
      v2 = 0uLL;
      v4 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
    }

    v16 = v6;
    v17 = v3;
    v18 = v1;
    v19 = v3;
    v20 = v2;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    sub_1DB1F7184(v30);
    if (v17)
    {

      sub_1DB1F7130(&v18);
      v14 = *(v16 + 16);

      return v14;
    }

    v11 = &qword_1ECC27CD0;
    v12 = &unk_1DB2CB840;
    v13 = &v18;
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v32 = -1;
    v11 = &qword_1ECC27D28;
    v12 = &unk_1DB2CB830;
    v13 = v30;
  }

  sub_1DB1445E0(v13, v11, v12);
  return 0;
}

unint64_t sub_1DB24AB40()
{
  result = qword_1EE13FF98;
  if (!qword_1EE13FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF98);
  }

  return result;
}

unint64_t sub_1DB24ABCC()
{
  result = qword_1ECC288B8;
  if (!qword_1ECC288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC288B8);
  }

  return result;
}

unint64_t sub_1DB24AC58()
{
  result = qword_1ECC288D0;
  if (!qword_1ECC288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC288D0);
  }

  return result;
}

unint64_t sub_1DB24ACAC()
{
  result = qword_1ECC288E8;
  if (!qword_1ECC288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC288E8);
  }

  return result;
}

unint64_t sub_1DB24AD00()
{
  result = qword_1ECC28900;
  if (!qword_1ECC28900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28900);
  }

  return result;
}

unint64_t sub_1DB24AD54()
{
  result = qword_1ECC28908;
  if (!qword_1ECC28908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28908);
  }

  return result;
}

unint64_t sub_1DB24ADA8()
{
  result = qword_1ECC28918;
  if (!qword_1ECC28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28918);
  }

  return result;
}

unint64_t sub_1DB24AE00()
{
  result = qword_1ECC28920;
  if (!qword_1ECC28920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28920);
  }

  return result;
}

unint64_t sub_1DB24AE58()
{
  result = qword_1ECC28928;
  if (!qword_1ECC28928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28928);
  }

  return result;
}

unint64_t sub_1DB24AEB0()
{
  result = qword_1ECC28930;
  if (!qword_1ECC28930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28930);
  }

  return result;
}

unint64_t sub_1DB24AF44()
{
  result = qword_1EE13F968;
  if (!qword_1EE13F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F968);
  }

  return result;
}

unint64_t sub_1DB24AF98(uint64_t a1)
{
  result = sub_1DB24AFC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24AFC0()
{
  result = qword_1EE13E948;
  if (!qword_1EE13E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E948);
  }

  return result;
}

unint64_t sub_1DB24B06C()
{
  result = qword_1EE13F7E0;
  if (!qword_1EE13F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7E0);
  }

  return result;
}

unint64_t sub_1DB24B0C4()
{
  result = qword_1ECC28938;
  if (!qword_1ECC28938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28938);
  }

  return result;
}

unint64_t sub_1DB24B190()
{
  result = qword_1ECC28960;
  if (!qword_1ECC28960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28960);
  }

  return result;
}

uint64_t sub_1DB24B22C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28958, &qword_1DB2C8C58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB24B2A4()
{
  result = qword_1ECC28970;
  if (!qword_1ECC28970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28970);
  }

  return result;
}

unint64_t sub_1DB24B338()
{
  result = qword_1EE13F498;
  if (!qword_1EE13F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F498);
  }

  return result;
}

unint64_t sub_1DB24B38C(uint64_t a1)
{
  result = sub_1DB24B3B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B3B4()
{
  result = qword_1EE13EA40;
  if (!qword_1EE13EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA40);
  }

  return result;
}

unint64_t sub_1DB24B408(uint64_t a1)
{
  result = sub_1DB24B430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B430()
{
  result = qword_1EE13EA38;
  if (!qword_1EE13EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA38);
  }

  return result;
}

uint64_t sub_1DB24B4CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28980, &qword_1DB2C8D40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB24B5CC()
{
  result = qword_1ECC28990;
  if (!qword_1ECC28990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28990);
  }

  return result;
}

unint64_t sub_1DB24B620(uint64_t a1)
{
  result = sub_1DB24B648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B648()
{
  result = qword_1ECC28998;
  if (!qword_1ECC28998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28998);
  }

  return result;
}

unint64_t sub_1DB24B69C(uint64_t a1)
{
  result = sub_1DB24B6C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B6C4()
{
  result = qword_1ECC289A0;
  if (!qword_1ECC289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289A0);
  }

  return result;
}

unint64_t sub_1DB24B71C()
{
  result = qword_1ECC289A8;
  if (!qword_1ECC289A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289A8);
  }

  return result;
}

unint64_t sub_1DB24B774()
{
  result = qword_1ECC289B0;
  if (!qword_1ECC289B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289B0);
  }

  return result;
}

unint64_t sub_1DB24B808()
{
  result = qword_1ECC289B8;
  if (!qword_1ECC289B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289B8);
  }

  return result;
}

unint64_t sub_1DB24B85C(uint64_t a1)
{
  result = sub_1DB24B884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B884()
{
  result = qword_1ECC289C0;
  if (!qword_1ECC289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289C0);
  }

  return result;
}

unint64_t sub_1DB24B8D8(uint64_t a1)
{
  result = sub_1DB24B900();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B900()
{
  result = qword_1ECC289C8;
  if (!qword_1ECC289C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289C8);
  }

  return result;
}

unint64_t sub_1DB24B9AC()
{
  result = qword_1EE13FF70;
  if (!qword_1EE13FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF70);
  }

  return result;
}

unint64_t sub_1DB24BA00(uint64_t a1)
{
  result = sub_1DB24BA28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BA28()
{
  result = qword_1EE13EA50;
  if (!qword_1EE13EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA50);
  }

  return result;
}

unint64_t sub_1DB24BA7C(uint64_t a1)
{
  result = sub_1DB24BAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BAA4()
{
  result = qword_1EE13EA48;
  if (!qword_1EE13EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA48);
  }

  return result;
}

unint64_t sub_1DB24BB50()
{
  result = qword_1ECC289D0;
  if (!qword_1ECC289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289D0);
  }

  return result;
}

unint64_t sub_1DB24BBA4(uint64_t a1)
{
  result = sub_1DB24BBCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BBCC()
{
  result = qword_1ECC289D8;
  if (!qword_1ECC289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289D8);
  }

  return result;
}

unint64_t sub_1DB24BC20(uint64_t a1)
{
  result = sub_1DB24BC48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BC48()
{
  result = qword_1ECC289E0;
  if (!qword_1ECC289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289E0);
  }

  return result;
}

unint64_t sub_1DB24BCDC()
{
  result = qword_1ECC289E8;
  if (!qword_1ECC289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289E8);
  }

  return result;
}

unint64_t sub_1DB24BD30(uint64_t a1)
{
  result = sub_1DB24BD58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BD58()
{
  result = qword_1ECC289F0;
  if (!qword_1ECC289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289F0);
  }

  return result;
}

unint64_t sub_1DB24BDAC(uint64_t a1)
{
  result = sub_1DB24BDD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BDD4()
{
  result = qword_1ECC289F8;
  if (!qword_1ECC289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289F8);
  }

  return result;
}

unint64_t sub_1DB24BE28(uint64_t a1)
{
  result = sub_1DB24BE50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BE50()
{
  result = qword_1ECC28A00;
  if (!qword_1ECC28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A00);
  }

  return result;
}

unint64_t sub_1DB24BEE4()
{
  result = qword_1ECC28A08;
  if (!qword_1ECC28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A08);
  }

  return result;
}

unint64_t sub_1DB24BF3C()
{
  result = qword_1ECC28A10;
  if (!qword_1ECC28A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A10);
  }

  return result;
}

uint64_t sub_1DB24BFC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DB24C014(uint64_t a1)
{
  result = sub_1DB24C03C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24C03C()
{
  result = qword_1ECC28A28;
  if (!qword_1ECC28A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A28);
  }

  return result;
}

uint64_t sub_1DB24C108(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28A38, &qword_1DB2C9358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB24C1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB24C208()
{
  result = qword_1ECC28A48;
  if (!qword_1ECC28A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A48);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB24C298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 90))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 89);
  if (v3 >= 0xA)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB24C2D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 74) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 89) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB24C328(uint64_t result, unsigned int a2)
{
  if (a2 > 9)
  {
    *(result + 73) = 0u;
    v2 = a2 - 10;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 10;
    *result = v2;
  }

  *(result + 89) = a2;
  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1DB24C410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1DB24C458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB24C4EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DB24C534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB24C69C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DB24C6E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB24C78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1DB24C7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB24C84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DB24C894(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DB24C914(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB24C95C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DB24CB9C()
{
  result = qword_1ECC28A50;
  if (!qword_1ECC28A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A50);
  }

  return result;
}

unint64_t sub_1DB24CBF4()
{
  result = qword_1ECC28A58;
  if (!qword_1ECC28A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A58);
  }

  return result;
}

unint64_t sub_1DB24CC4C()
{
  result = qword_1ECC28A60;
  if (!qword_1ECC28A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A60);
  }

  return result;
}

unint64_t sub_1DB24CCA4()
{
  result = qword_1ECC28A68;
  if (!qword_1ECC28A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A68);
  }

  return result;
}

unint64_t sub_1DB24CCFC()
{
  result = qword_1ECC28A70;
  if (!qword_1ECC28A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A70);
  }

  return result;
}

unint64_t sub_1DB24CD54()
{
  result = qword_1ECC28A78;
  if (!qword_1ECC28A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A78);
  }

  return result;
}

unint64_t sub_1DB24CDAC()
{
  result = qword_1ECC28A80;
  if (!qword_1ECC28A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A80);
  }

  return result;
}

unint64_t sub_1DB24CE04()
{
  result = qword_1ECC28A88;
  if (!qword_1ECC28A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A88);
  }

  return result;
}

unint64_t sub_1DB24CE5C()
{
  result = qword_1ECC28A90;
  if (!qword_1ECC28A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A90);
  }

  return result;
}

unint64_t sub_1DB24CEB4()
{
  result = qword_1ECC28A98;
  if (!qword_1ECC28A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A98);
  }

  return result;
}

unint64_t sub_1DB24CF0C()
{
  result = qword_1ECC28AA0;
  if (!qword_1ECC28AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AA0);
  }

  return result;
}

unint64_t sub_1DB24CF64()
{
  result = qword_1ECC28AA8;
  if (!qword_1ECC28AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AA8);
  }

  return result;
}

unint64_t sub_1DB24CFBC()
{
  result = qword_1ECC28AB0;
  if (!qword_1ECC28AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AB0);
  }

  return result;
}

unint64_t sub_1DB24D014()
{
  result = qword_1ECC28AB8;
  if (!qword_1ECC28AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AB8);
  }

  return result;
}

unint64_t sub_1DB24D06C()
{
  result = qword_1ECC28AC0;
  if (!qword_1ECC28AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AC0);
  }

  return result;
}

unint64_t sub_1DB24D0C4()
{
  result = qword_1ECC28AC8;
  if (!qword_1ECC28AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AC8);
  }

  return result;
}

unint64_t sub_1DB24D11C()
{
  result = qword_1ECC28AD0;
  if (!qword_1ECC28AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AD0);
  }

  return result;
}

unint64_t sub_1DB24D174()
{
  result = qword_1ECC28AD8;
  if (!qword_1ECC28AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AD8);
  }

  return result;
}

unint64_t sub_1DB24D1CC()
{
  result = qword_1ECC28AE0;
  if (!qword_1ECC28AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AE0);
  }

  return result;
}

unint64_t sub_1DB24D224()
{
  result = qword_1ECC28AE8;
  if (!qword_1ECC28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AE8);
  }

  return result;
}

unint64_t sub_1DB24D27C()
{
  result = qword_1ECC28AF0;
  if (!qword_1ECC28AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AF0);
  }

  return result;
}

unint64_t sub_1DB24D2D4()
{
  result = qword_1ECC28AF8;
  if (!qword_1ECC28AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AF8);
  }

  return result;
}

unint64_t sub_1DB24D32C()
{
  result = qword_1ECC28B00;
  if (!qword_1ECC28B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B00);
  }

  return result;
}

unint64_t sub_1DB24D384()
{
  result = qword_1ECC28B08;
  if (!qword_1ECC28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B08);
  }

  return result;
}

unint64_t sub_1DB24D3DC()
{
  result = qword_1ECC28B10;
  if (!qword_1ECC28B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B10);
  }

  return result;
}

unint64_t sub_1DB24D434()
{
  result = qword_1ECC28B18;
  if (!qword_1ECC28B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B18);
  }

  return result;
}

unint64_t sub_1DB24D48C()
{
  result = qword_1ECC28B20;
  if (!qword_1ECC28B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B20);
  }

  return result;
}

unint64_t sub_1DB24D4E4()
{
  result = qword_1ECC28B28;
  if (!qword_1ECC28B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B28);
  }

  return result;
}

unint64_t sub_1DB24D53C()
{
  result = qword_1ECC28B30;
  if (!qword_1ECC28B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B30);
  }

  return result;
}

unint64_t sub_1DB24D594()
{
  result = qword_1ECC28B38;
  if (!qword_1ECC28B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B38);
  }

  return result;
}

unint64_t sub_1DB24D5EC()
{
  result = qword_1ECC28B40;
  if (!qword_1ECC28B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B40);
  }

  return result;
}

unint64_t sub_1DB24D644()
{
  result = qword_1ECC28B48;
  if (!qword_1ECC28B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B48);
  }

  return result;
}

unint64_t sub_1DB24D69C()
{
  result = qword_1EE13FF88;
  if (!qword_1EE13FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF88);
  }

  return result;
}

unint64_t sub_1DB24D6F4()
{
  result = qword_1EE13FF90;
  if (!qword_1EE13FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF90);
  }

  return result;
}

unint64_t sub_1DB24D74C()
{
  result = qword_1ECC28B50;
  if (!qword_1ECC28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B50);
  }

  return result;
}

unint64_t sub_1DB24D7A4()
{
  result = qword_1ECC28B58;
  if (!qword_1ECC28B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B58);
  }

  return result;
}

unint64_t sub_1DB24D7FC()
{
  result = qword_1ECC28B60;
  if (!qword_1ECC28B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B60);
  }

  return result;
}

unint64_t sub_1DB24D854()
{
  result = qword_1ECC28B68;
  if (!qword_1ECC28B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B68);
  }

  return result;
}

unint64_t sub_1DB24D8AC()
{
  result = qword_1EE13F4B0;
  if (!qword_1EE13F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4B0);
  }

  return result;
}

unint64_t sub_1DB24D904()
{
  result = qword_1EE13F4B8;
  if (!qword_1EE13F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4B8);
  }

  return result;
}

unint64_t sub_1DB24D95C()
{
  result = qword_1ECC28B70;
  if (!qword_1ECC28B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B70);
  }

  return result;
}

unint64_t sub_1DB24D9B4()
{
  result = qword_1ECC28B78;
  if (!qword_1ECC28B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B78);
  }

  return result;
}

unint64_t sub_1DB24DA0C()
{
  result = qword_1ECC28B80;
  if (!qword_1ECC28B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B80);
  }

  return result;
}

unint64_t sub_1DB24DA64()
{
  result = qword_1ECC28B88;
  if (!qword_1ECC28B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B88);
  }

  return result;
}

unint64_t sub_1DB24DABC()
{
  result = qword_1ECC28B90;
  if (!qword_1ECC28B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B90);
  }

  return result;
}

unint64_t sub_1DB24DB14()
{
  result = qword_1ECC28B98;
  if (!qword_1ECC28B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B98);
  }

  return result;
}

unint64_t sub_1DB24DB6C()
{
  result = qword_1ECC28BA0;
  if (!qword_1ECC28BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BA0);
  }

  return result;
}

unint64_t sub_1DB24DBC4()
{
  result = qword_1ECC28BA8;
  if (!qword_1ECC28BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BA8);
  }

  return result;
}

unint64_t sub_1DB24DC1C()
{
  result = qword_1ECC28BB0;
  if (!qword_1ECC28BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BB0);
  }

  return result;
}

unint64_t sub_1DB24DC74()
{
  result = qword_1ECC28BB8;
  if (!qword_1ECC28BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BB8);
  }

  return result;
}

unint64_t sub_1DB24DCCC()
{
  result = qword_1EE13F7F8;
  if (!qword_1EE13F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7F8);
  }

  return result;
}

unint64_t sub_1DB24DD24()
{
  result = qword_1EE13F800;
  if (!qword_1EE13F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F800);
  }

  return result;
}

unint64_t sub_1DB24DD7C()
{
  result = qword_1EE13F980;
  if (!qword_1EE13F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F980);
  }

  return result;
}

unint64_t sub_1DB24DDD4()
{
  result = qword_1EE13F988;
  if (!qword_1EE13F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F988);
  }

  return result;
}

unint64_t sub_1DB24DE2C()
{
  result = qword_1EE13F998;
  if (!qword_1EE13F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F998);
  }

  return result;
}

unint64_t sub_1DB24DE84()
{
  result = qword_1EE13F9A0;
  if (!qword_1EE13F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9A0);
  }

  return result;
}

unint64_t sub_1DB24DEDC()
{
  result = qword_1ECC28BC0;
  if (!qword_1ECC28BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BC0);
  }

  return result;
}

unint64_t sub_1DB24DF34()
{
  result = qword_1ECC28BC8;
  if (!qword_1ECC28BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BC8);
  }

  return result;
}

unint64_t sub_1DB24DF8C()
{
  result = qword_1ECC28BD0;
  if (!qword_1ECC28BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BD0);
  }

  return result;
}

unint64_t sub_1DB24DFE4()
{
  result = qword_1ECC28BD8;
  if (!qword_1ECC28BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BD8);
  }

  return result;
}

unint64_t sub_1DB24E03C()
{
  result = qword_1ECC28BE0;
  if (!qword_1ECC28BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BE0);
  }

  return result;
}

unint64_t sub_1DB24E094()
{
  result = qword_1ECC28BE8;
  if (!qword_1ECC28BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BE8);
  }

  return result;
}

unint64_t sub_1DB24E0EC()
{
  result = qword_1EE13FFF0;
  if (!qword_1EE13FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFF0);
  }

  return result;
}

unint64_t sub_1DB24E144()
{
  result = qword_1EE13FFF8;
  if (!qword_1EE13FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFF8);
  }

  return result;
}

unint64_t sub_1DB24E19C()
{
  result = qword_1EE13FFD8;
  if (!qword_1EE13FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFD8);
  }

  return result;
}

unint64_t sub_1DB24E1F4()
{
  result = qword_1EE13FFE0;
  if (!qword_1EE13FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFE0);
  }

  return result;
}

unint64_t sub_1DB24E24C()
{
  result = qword_1EE140028;
  if (!qword_1EE140028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140028);
  }

  return result;
}

unint64_t sub_1DB24E2A4()
{
  result = qword_1EE140030;
  if (!qword_1EE140030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140030);
  }

  return result;
}

unint64_t sub_1DB24E2FC()
{
  result = qword_1EE140070;
  if (!qword_1EE140070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140070);
  }

  return result;
}

unint64_t sub_1DB24E354()
{
  result = qword_1EE140078;
  if (!qword_1EE140078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140078);
  }

  return result;
}

unint64_t sub_1DB24E3AC()
{
  result = qword_1EE140038;
  if (!qword_1EE140038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140038);
  }

  return result;
}

unint64_t sub_1DB24E404()
{
  result = qword_1EE140040;
  if (!qword_1EE140040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140040);
  }

  return result;
}

unint64_t sub_1DB24E45C()
{
  result = qword_1EE140048;
  if (!qword_1EE140048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140048);
  }

  return result;
}

unint64_t sub_1DB24E4B4()
{
  result = qword_1EE140050;
  if (!qword_1EE140050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140050);
  }

  return result;
}

unint64_t sub_1DB24E50C()
{
  result = qword_1EE140008;
  if (!qword_1EE140008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140008);
  }

  return result;
}

unint64_t sub_1DB24E564()
{
  result = qword_1EE140010;
  if (!qword_1EE140010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140010);
  }

  return result;
}

unint64_t sub_1DB24E5BC()
{
  result = qword_1EE140060;
  if (!qword_1EE140060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140060);
  }

  return result;
}

unint64_t sub_1DB24E614()
{
  result = qword_1EE140068;
  if (!qword_1EE140068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140068);
  }

  return result;
}

unint64_t sub_1DB24E66C()
{
  result = qword_1EE13FFC8;
  if (!qword_1EE13FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFC8);
  }

  return result;
}

unint64_t sub_1DB24E6C4()
{
  result = qword_1EE13FFD0;
  if (!qword_1EE13FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFD0);
  }

  return result;
}

unint64_t sub_1DB24E71C()
{
  result = qword_1EE140018;
  if (!qword_1EE140018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140018);
  }

  return result;
}

unint64_t sub_1DB24E774()
{
  result = qword_1EE140020;
  if (!qword_1EE140020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140020);
  }

  return result;
}

unint64_t sub_1DB24E7CC()
{
  result = qword_1EE140080;
  if (!qword_1EE140080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140080);
  }

  return result;
}

unint64_t sub_1DB24E824()
{
  result = qword_1EE140088;
  if (!qword_1EE140088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140088);
  }

  return result;
}

uint64_t sub_1DB24E878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972657551796E61 && a2 == 0xE800000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E496863746162 && a2 == 0xEA00000000007865 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776F526863746162 && a2 == 0xED0000746E756F43 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E497473614C7369 && a2 == 0xED00006863746142)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DB24EA8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972657551796E61 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24EBA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E72656767697274 && a2 == 0xEB00000000656D61)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DB24ED14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1DB24EE80()
{
  result = qword_1ECC28BF0;
  if (!qword_1ECC28BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BF0);
  }

  return result;
}

uint64_t sub_1DB24EF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_251Tm(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1DB24EFEC()
{
  result = qword_1EE13E988;
  if (!qword_1EE13E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E988);
  }

  return result;
}

uint64_t CredentialPayload.description.getter(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    sub_1DB24325C(a1, a2);
    v5 = sub_1DB249BB8(7, v4, a2);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_1DB240588(v4, a2);
    v4 = MEMORY[0x1E12833E0](v5, v7, v9, v11);

    MEMORY[0x1E1283490](3026478, 0xE300000000000000);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1DB24F1D4()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x4974736575716572;
  }
}

uint64_t sub_1DB24F210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB24F2F0(uint64_t a1)
{
  v2 = sub_1DB24FDDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24F32C(uint64_t a1)
{
  v2 = sub_1DB24FDDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB24F368(uint64_t a1)
{
  v2 = sub_1DB24FE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24F3A4(uint64_t a1)
{
  v2 = sub_1DB24FE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB24F3E0(uint64_t a1)
{
  v2 = sub_1DB24FE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24F41C(uint64_t a1)
{
  v2 = sub_1DB24FE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CredentialPayload.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28BF8, &qword_1DB2CB870);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C00, &qword_1DB2CB878);
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C08, &qword_1DB2CB880);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24FDDC();
  sub_1DB2BBA94();
  v15 = (v12 + 8);
  if (v23)
  {
    v25 = 1;
    sub_1DB24FE30();
    sub_1DB2BB804();
    v16 = v20;
    sub_1DB2BB864();
    (*(v19 + 8))(v7, v16);
  }

  else
  {
    v24 = 0;
    sub_1DB24FE84();
    sub_1DB2BB804();
    sub_1DB2BB864();
    (*(v18 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t CredentialPayload.init(from:)(void *a1)
{
  result = sub_1DB24F8A8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1DB24F770@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB24F8A8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DB24F7C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    sub_1DB24325C(*v0, *(v0 + 8));
    v3 = sub_1DB249BB8(7, v1, v2);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_1DB240588(v1, v2);
    v1 = MEMORY[0x1E12833E0](v3, v5, v7, v9);

    MEMORY[0x1E1283490](3026478, 0xE300000000000000);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1DB24F8A8(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C30, &qword_1DB2CBCE0);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C38, &qword_1DB2CBCE8);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C40, &qword_1DB2CBCF0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DB24FDDC();
  v12 = v30;
  sub_1DB2BBA84();
  if (!v12)
  {
    v26 = 0;
    v30 = v8;
    v13 = sub_1DB2BB7D4();
    v14 = (2 * *(v13 + 16)) | 1;
    v32 = v13;
    v33 = v13 + 32;
    v34 = 0;
    v35 = v14;
    v15 = sub_1DB14B1F0();
    v16 = v7;
    if (v15 == 2 || v34 != v35 >> 1)
    {
      v19 = sub_1DB2BB564();
      swift_allocError();
      v8 = v7;
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v21 = &type metadata for CredentialPayload;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
      swift_willThrow();
      (*(v30 + 8))(v10, v7);
    }

    else
    {
      v36 = v15;
      if (v15)
      {
        v37 = 1;
        sub_1DB24FE30();
        v17 = v26;
        sub_1DB2BB704();
        v18 = v30;
        if (!v17)
        {
          v25 = v27;
          v8 = sub_1DB2BB774();
          (*(v29 + 8))(v3, v25);
          (*(v18 + 8))(v10, v16);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      else
      {
        v37 = 0;
        sub_1DB24FE84();
        v23 = v26;
        sub_1DB2BB704();
        v24 = v30;
        if (!v23)
        {
          v8 = sub_1DB2BB774();
          (*(v28 + 8))(v6, v4);
          (*(v24 + 8))(v10, v16);
          goto LABEL_8;
        }
      }

      (*(v30 + 8))(v10, v16);
    }

LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v8;
}

unint64_t sub_1DB24FDDC()
{
  result = qword_1EE13F960;
  if (!qword_1EE13F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F960);
  }

  return result;
}

unint64_t sub_1DB24FE30()
{
  result = qword_1EE13F948;
  if (!qword_1EE13F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F948);
  }

  return result;
}

unint64_t sub_1DB24FE84()
{
  result = qword_1ECC28C10;
  if (!qword_1ECC28C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C10);
  }

  return result;
}

uint64_t sub_1DB24FED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB24FF20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DB24FFB4()
{
  result = qword_1ECC28C18;
  if (!qword_1ECC28C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C18);
  }

  return result;
}

unint64_t sub_1DB25000C()
{
  result = qword_1ECC28C20;
  if (!qword_1ECC28C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C20);
  }

  return result;
}

unint64_t sub_1DB250064()
{
  result = qword_1ECC28C28;
  if (!qword_1ECC28C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C28);
  }

  return result;
}

unint64_t sub_1DB2500BC()
{
  result = qword_1EE13F928;
  if (!qword_1EE13F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F928);
  }

  return result;
}

unint64_t sub_1DB250114()
{
  result = qword_1EE13F930;
  if (!qword_1EE13F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F930);
  }

  return result;
}

unint64_t sub_1DB25016C()
{
  result = qword_1EE13F938;
  if (!qword_1EE13F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F938);
  }

  return result;
}

unint64_t sub_1DB2501C4()
{
  result = qword_1EE13F940;
  if (!qword_1EE13F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F940);
  }

  return result;
}

unint64_t sub_1DB25021C()
{
  result = qword_1EE13F950;
  if (!qword_1EE13F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F950);
  }

  return result;
}

unint64_t sub_1DB250274()
{
  result = qword_1EE13F958;
  if (!qword_1EE13F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F958);
  }

  return result;
}

uint64_t DaemonResponse.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a2 - 8) + 32))(a6, a1, a2);
  v11[0] = MEMORY[0x1E69E73E0];
  v11[1] = a2;
  v11[2] = MEMORY[0x1E69E7400];
  v11[3] = MEMORY[0x1E69E73E8];
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  type metadata accessor for DaemonResponse(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a2 - 8) + 32))(a9, a1, a2);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  type metadata accessor for DaemonResponse(0, v17);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.get()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v18 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(a1[2] - 8) + 32))(a2, v13);
  }

  v16 = *(v5 + 32);
  v16(v11, v13, v4);
  (*(v5 + 16))(v8, v11, v4);
  if (sub_1DB2BB904())
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    swift_allocError();
    v16(v17, v8, v4);
  }

  swift_willThrow();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1DB2506DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DB2507A8(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_1DB250874(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB1FBE84(v3, *v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB2508E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB2506DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB250930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB202F64();
  *a1 = result;
  return result;
}

uint64_t sub_1DB25096C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB2509C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB250A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB250A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB250AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB1FBF28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DB250B20@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DB250B68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB250BBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DaemonResponse.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v61 = a2[2];
  v4 = v61;
  v62 = v3;
  v63 = v5;
  v64 = v6;
  v10 = v5;
  v58 = a1;
  v59 = v5;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v50 = type metadata accessor for DaemonResponse.SuccessCodingKeys(255, &v61);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1DB2BB8C4();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v39 - v13;
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v4;
  v62 = v3;
  v63 = v10;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v15 = type metadata accessor for DaemonResponse.FailureCodingKeys(255, &v61);
  v16 = swift_getWitnessTable();
  v43 = v15;
  v41 = v16;
  v46 = sub_1DB2BB8C4();
  v45 = *(v46 - 8);
  v17 = MEMORY[0x1EEE9AC00](v46);
  v42 = &v39 - v18;
  v44 = *(v3 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v6;
  v57 = v4;
  v61 = v4;
  v62 = v3;
  v54 = v3;
  v55 = v8;
  v63 = v59;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  type metadata accessor for DaemonResponse.CodingKeys(255, &v61);
  swift_getWitnessTable();
  v24 = sub_1DB2BB8C4();
  v59 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v39 - v25;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_1DB2BBA94();
  (*(v21 + 16))(v23, v60, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v51;
    v28 = v47;
    v29 = v57;
    (*(v51 + 32))(v47, v23, v57);
    LOBYTE(v61) = 1;
    v30 = v49;
    v31 = v24;
    sub_1DB2BB804();
    v32 = v53;
    sub_1DB2BB8A4();
    (*(v52 + 8))(v30, v32);
    (*(v27 + 8))(v28, v29);
    v24 = v31;
  }

  else
  {
    v33 = v44;
    v34 = v40;
    v35 = v54;
    (*(v44 + 32))(v40, v23, v54);
    LOBYTE(v61) = 0;
    v36 = v42;
    sub_1DB2BB804();
    v37 = v46;
    sub_1DB2BB8A4();
    (*(v45 + 8))(v36, v37);
    (*(v33 + 8))(v34, v35);
  }

  return (*(v59 + 8))(v26, v24);
}

uint64_t DaemonResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v87 = a1;
  v73 = a9;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v70 = type metadata accessor for DaemonResponse.SuccessCodingKeys(255, &v82);
  WitnessTable = swift_getWitnessTable();
  v62 = sub_1DB2BB7E4();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v71 = &v56 - v16;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v17 = type metadata accessor for DaemonResponse.FailureCodingKeys(255, &v82);
  v18 = swift_getWitnessTable();
  v67 = v17;
  v66 = v18;
  v60 = sub_1DB2BB7E4();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v56 - v19;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  type metadata accessor for DaemonResponse.CodingKeys(255, &v82);
  v78 = swift_getWitnessTable();
  v74 = sub_1DB2BB7E4();
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v21 = &v56 - v20;
  v63 = a2;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v76 = a3;
  v65 = a4;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v64 = a6;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v22 = type metadata accessor for DaemonResponse(0, &v82);
  v72 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v56 - v29;
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v75 = v21;
  v31 = v79;
  sub_1DB2BBA84();
  if (!v31)
  {
    v58 = v25;
    v78 = v28;
    v57 = v30;
    v79 = v22;
    v32 = v75;
    v33 = v74;
    *&v80 = sub_1DB2BB7D4();
    sub_1DB2BB154();
    swift_getWitnessTable();
    *&v82 = sub_1DB2BB424();
    *(&v82 + 1) = v34;
    *&v83 = v35;
    *(&v83 + 1) = v36;
    sub_1DB2BB414();
    swift_getWitnessTable();
    sub_1DB2BB214();
    v37 = v80;
    if (v80 == 2 || (v56 = v82, v80 = v82, v81 = v83, (sub_1DB2BB224() & 1) == 0))
    {
      v46 = sub_1DB2BB564();
      swift_allocError();
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v48 = v79;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
      swift_willThrow();
      (*(v77 + 8))(v32, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        LOBYTE(v80) = 1;
        v38 = v71;
        v39 = v33;
        sub_1DB2BB704();
        v41 = v72;
        v40 = v73;
        v42 = v77;
        v43 = v62;
        sub_1DB2BB7B4();
        (*(v61 + 8))(v38, v43);
        (*(v42 + 8))(v32, v39);
        swift_unknownObjectRelease();
        v44 = v58;
      }

      else
      {
        LOBYTE(v80) = 0;
        v49 = v68;
        v50 = v33;
        sub_1DB2BB704();
        v41 = v72;
        v40 = v73;
        v51 = v77;
        v52 = v60;
        sub_1DB2BB7B4();
        (*(v59 + 8))(v49, v52);
        (*(v51 + 8))(v32, v50);
        swift_unknownObjectRelease();
        v44 = v78;
      }

      v45 = v79;
      swift_storeEnumTagMultiPayload();
      v54 = *(v41 + 32);
      v55 = v57;
      v54(v57, v44, v45);
      v54(v40, v55, v45);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t sub_1DB251ADC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB251B58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= *(*(*(a3 + 24) - 8) + 64))
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1DB251C80(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (*(*(*(a4 + 16) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t ClientEntitlementChecker.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1DB2525B4(a1, a2);
  v6 = *(a2 - 8);
  a3[4] = &type metadata for ClientEntitlementReader;
  a3[5] = &off_1F56E7680;
  v7 = *(v6 + 8);

  return v7(a1, a2);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlement(_:)(Swift::String a1)
{
  sub_1DB2520D8(a1._countAndFlagsBits, a1._object, v1);
  if (v2)
  {
    LODWORD(v2) = swift_dynamicCast();
    if (v2)
    {
      LOBYTE(v2) = v4;
    }
  }

  return v2;
}

void sub_1DB2520D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = *(a3 + 16);
  v7 = a1;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C50, &unk_1DB2CC230);
  sub_1DB13B25C(sub_1DB252818, v5, v4);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlements(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    sub_1DB2522C0(a1._rawValue, v1);
    v4 = v2;
    if (v2)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1DB2BACC4();

        return 0;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1DB2522C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C48, &qword_1DB2CC228);
  sub_1DB13B25C(sub_1DB2526E4, v4, v3);
}

void sub_1DB252350(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a7@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = sub_1DB2BAD64();
    v11 = SecTaskCopyValueForEntitlement(v9, v10, &token);

    v12 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB2527C0();
      swift_allocError();
      *v13 = v12;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {

      *a7 = v11;
    }
  }

  else
  {
    *a7 = 0;
  }
}

void sub_1DB252480(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a6@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (v7)
  {
    v8 = v7;
    *token.val = 0;
    v9 = sub_1DB2BB0B4();
    v10 = SecTaskCopyValuesForEntitlements(v8, v9, &token);

    v11 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB2527C0();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();
    }

    else
    {

      *a6 = v10;
    }
  }

  else
  {
    *a6 = 0;
  }
}

uint64_t sub_1DB2525B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DB2BB5A4();
  return sub_1DB2BB594();
}

uint64_t sub_1DB252680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB2526E4()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v1;
  v2 = *(v7 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C48, &qword_1DB2CC228);
  return v2(sub_1DB2527A0, &v5, v3, v6, v7);
}

unint64_t sub_1DB2527C0()
{
  result = qword_1ECC28570;
  if (!qword_1ECC28570)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28570);
  }

  return result;
}

uint64_t sub_1DB252818()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = v1;
  v10 = v2;
  v3 = *(v8 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C50, &unk_1DB2CC230);
  return v3(sub_1DB2528D4, &v6, v4, v7, v8);
}

uint64_t sub_1DB252904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1DB2529A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 20);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DB2529F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 1) << 32;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1DB252A70()
{
  result = sub_1DB252B90(&unk_1F56DED80);
  off_1EE13E868 = result;
  return result;
}

const char *sub_1DB252A98(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    result = sqlite3_errmsg(v2);
    if (result)
    {
      v4 = sub_1DB2BAF04();
      os_unfair_lock_unlock((v1 + 24));
      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1DB135B68();
    v5 = swift_allocError();
    *v6 = 0xD00000000000001CLL;
    *(v6 + 8) = 0x80000001DB2D14C0;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    swift_willThrow();
    os_unfair_lock_unlock((v1 + 24));
    swift_getErrorValue();
    v7 = sub_1DB2BB994();
    MEMORY[0x1E1284A10](v5);
    return v7;
  }

  return result;
}

unint64_t sub_1DB252B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C58, &unk_1DB2CC310);
    v3 = sub_1DB2BB4B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1E1283F90](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

const char *sub_1DB252CB8(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE13E860 != -1)
  {
    swift_once();
  }

  v5 = off_1EE13E868;
  if (*(off_1EE13E868 + 2) && (v6 = MEMORY[0x1E1283F90](*(off_1EE13E868 + 5), a1, 4), v7 = -1 << *(v5 + 32), v8 = v6 & ~v7, ((*(v5 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (*(v5[6] + 4 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    v10 = sub_1DB252A98(a2);
    v11 = *(a2 + 48);
    os_unfair_lock_lock((v11 + 20));
    v12 = *(v11 + 16);
    os_unfair_lock_unlock((v11 + 20));
    if (v12 == 1)
    {
      v13 = *(a2 + 16);
      os_unfair_lock_lock((v13 + 24));
      v14 = *(v13 + 16);
      if (v14)
      {
        sqlite3_extended_errcode(v14);
      }

      os_unfair_lock_unlock((v13 + 24));
    }

    else
    {
    }
  }

  return v10;
}

uint64_t SQLiteVersion.description.getter()
{
  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  MEMORY[0x1E1283490](46, 0xE100000000000000);
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](46, 0xE100000000000000);
  v2 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v2);

  return 0x206574694C5153;
}

BOOL static SQLiteVersion.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

unint64_t sub_1DB253008()
{
  result = qword_1ECC28C60;
  if (!qword_1ECC28C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C60);
  }

  return result;
}

void sub_1DB25305C()
{
  qword_1ECC41F38 = 0;
  unk_1ECC41F40 = 0;
  qword_1ECC41F48 = 0;
}

BOOL sub_1DB253070(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_1DB2530A8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_1DB2530E4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_1DB253120(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t Statement.bind(_:)(uint64_t a1)
{
  sub_1DB255E8C(a1);
}

{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sqlite3_reset(v4);
  sqlite3_clear_bindings(v4);
  os_unfair_lock_unlock((v3 + 24));
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1DB1609EC(*(a1 + 56) + 40 * v12, &v23);
      v19 = v23;
      v20 = v24;
      v16 = v25;

      if (!v14)
      {
        break;
      }

      v23 = v19;
      v24 = v20;
      v25 = v16;
      MEMORY[0x1EEE9AC00](v17);
      os_unfair_lock_lock((v3 + 24));
      sub_1DB256024((v3 + 16), &v21);
      os_unfair_lock_unlock((v3 + 24));
      v18 = v21;
      if (v21 < 1)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v21 = 0xD000000000000015;
        v22 = 0x80000001DB2D6790;
        MEMORY[0x1E1283490](v15, v14);

        sub_1DB15B09C(v21, v22);

        sub_1DB145A68(&v23);
      }

      v7 &= v7 - 1;

      sub_1DB253CF8(&v23, v18);
      result = sub_1DB145A68(&v23);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

{
  sub_1DB255E8C(a1);
}

uint64_t Statement.run(_:)(uint64_t a1)
{
  sub_1DB255E8C(a1);

  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);

  return v1;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);

  return v1;
}

{
  v3 = v1;
  if (*(a1 + 16))
  {
    sub_1DB255E8C(a1);

    v3 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock((v4 + 24));
    sqlite3_reset(*(v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
    sub_1DB143044();
    v5 = *(v1 + 24);
    do
    {
      while (1)
      {
        if (qword_1EE13F098 != -1)
        {
          swift_once();
        }

        sub_1DB2BB294();
        if ((v8 & 1) != 0 || v7 != v5)
        {
          break;
        }

        os_unfair_lock_lock((v4 + 24));
        sub_1DB14A424((v4 + 16), &v9);
        os_unfair_lock_unlock((v4 + 24));
        if (v2)
        {
          return v3;
        }

        if (!v9)
        {
          goto LABEL_14;
        }
      }

      sub_1DB2BB2C4(&v10);
      if (v2)
      {
        return v3;
      }
    }

    while ((v10 & 1) != 0);
LABEL_14:
  }

  return v3;
}

uint64_t Statement.scalar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB255E8C(a1);

  Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
}

{
  Statement.bind(_:)(a1);
  Statement.scalar(_:)(MEMORY[0x1E69E7CC0], a2);
}

{
  if (*(a1 + 16))
  {
    sub_1DB255E8C(a1);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = *(v2 + 16);
    os_unfair_lock_lock((v5 + 24));
    sqlite3_reset(*(v5 + 16));
    os_unfair_lock_unlock((v5 + 24));
    result = Statement.step()();
    if (!v6)
    {
      Statement.row.getter(&v7);
      Cursor.subscript.getter(0, a2);
    }
  }

  return result;
}

uint64_t sub_1DB253534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = 1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26EC0, &qword_1DB2BD060);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v3 + 16) = v6;

  os_unfair_lock_lock((v6 + 24));
  sub_1DB256220((v6 + 16), &v20);
  os_unfair_lock_unlock((v6 + 24));
  if (v4)
  {
  }

  else
  {

    v7 = v20;

    v8 = sub_1DB252CB8(v7, a1, 0);
    if (v10 <= 0xFFFFFFFEFFFFFFFFLL)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      sub_1DB1365E0();
      v16 = swift_allocError();
      *v17 = v12;
      v17[1] = v13;
      v17[2] = v14;
      v17[3] = v15;
      sub_1DB1434F4(v12, v13, v14, v15);
      sub_1DB15B294(v16);
      MEMORY[0x1E1284A10](v16);
      swift_allocError();
      *v18 = v12;
      v18[1] = v13;
      v18[2] = v14;
      v18[3] = v15;
      swift_willThrow();
    }
  }

  return v3;
}

void sub_1DB253718(sqlite3_stmt **a1@<X0>, uint64_t a2@<X1>, int *a5@<X8>)
{
  v7 = *(a2 + 16);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_1DB2BAE24();
    v10 = sqlite3_prepare_v2(v8, (v9 + 32), -1, a1, 0);

    os_unfair_lock_unlock((v7 + 24));
    *a5 = v10;
  }

  else
  {
    sub_1DB135B68();
    swift_allocError();
    *v11 = 0xD00000000000001CLL;
    *(v11 + 8) = 0x80000001DB2D14C0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0;
    swift_willThrow();
    os_unfair_lock_unlock((v7 + 24));
  }
}

void *Statement.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sqlite3_finalize(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  Statement.deinit();

  return swift_deallocClassInstance();
}

uint64_t Statement.columnCount.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = sqlite3_column_count(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  result = v2;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  return result;
}

uint64_t Statement.columnCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*Statement.columnCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Statement.columnCount.getter();
  return sub_1DB25396C;
}

void *sub_1DB25396C(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

void Statement.columnNames.getter()
{
  v1 = v0;
  if (*(v0 + 48))
  {

    return;
  }

  v2 = Statement.columnCount.getter();
  if (v2 < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  if (v2 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_13:
    *(v1 + 48) = v4;

    return;
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v2, 0);
  v5 = 0;
  v4 = v13;
  v6 = *(v1 + 16);
  while (1)
  {
    os_unfair_lock_lock((v6 + 24));
    if (!sqlite3_column_name(*(v6 + 16), v5))
    {
      break;
    }

    v7 = sub_1DB2BAF04();
    v9 = v8;
    os_unfair_lock_unlock((v6 + 24));
    v11 = *(v13 + 16);
    v10 = *(v13 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1DB138470((v10 > 1), v11 + 1, 1);
    }

    *(v13 + 16) = v11 + 1;
    v12 = v13 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    if (v3 == v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  __break(1u);
}

uint64_t (*Statement.columnNames.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  Statement.columnNames.getter();
  *a1 = v3;
  return sub_1DB253B3C;
}

void Statement.row.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  if (v2)
  {
    v3 = v1[8];
  }

  else
  {
    v4 = a1;
    v5 = v1[2];
    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);
    if (!v6)
    {
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v5 + 24));
    v3 = Statement.columnCount.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C68, &qword_1DB2CC3F8);
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    *(v2 + 16) = v6;
    v1[7] = v2;
    v1[8] = v3;

    a1 = v4;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Statement.row.setter(uint64_t *a1)
{
  v2 = a1[1];
  *(v1 + 56) = *a1;
  *(v1 + 64) = v2;
}

uint64_t (*Statement.row.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Statement.row.getter(a1);
  return sub_1DB253C6C;
}

uint64_t sub_1DB253C6C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 56) = *a1;
  *(v1 + 64) = v2;
}

Swift::Void __swiftcall Statement.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  sqlite3_reset(v2);
  sqlite3_clear_bindings(v2);

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1DB253CF8(uint64_t a1, uint64_t a2)
{
  sub_1DB1609EC(a1, &v19);
  if (!v20)
  {
    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      sqlite3_bind_null(*(v2 + 16), a2);
      os_unfair_lock_unlock((v2 + 24));
      return;
    }

    __break(1u);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  if (swift_dynamicCast())
  {
    v3 = v16;
    if (*(*&v16 + 16))
    {
      v4 = *(v2 + 16);
      os_unfair_lock_lock((v4 + 24));
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = *(*&v16 + 16);
          if (!(v2 >> 31))
          {
            v7 = *(v4 + 16);
            if (qword_1EE13E998 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v7, a2, (*&v3 + 32), v2, qword_1EE14C858);
              v8 = (v4 + 24);
LABEL_9:
              os_unfair_lock_unlock(v8);

              goto LABEL_25;
            }

LABEL_43:
            v14 = v7;
            swift_once();
            v7 = v14;
            goto LABEL_8;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 >= 0xFFFFFFFF80000000)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        sqlite3_bind_zeroblob(*(v2 + 16), a2, 0);
        goto LABEL_24;
      }

      goto LABEL_47;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (swift_dynamicCast())
  {
    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      sqlite3_bind_double(*(v2 + 16), a2, v16);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_46;
  }

  v9 = MEMORY[0x1E69E7360];
  if (swift_dynamicCast())
  {
    v2 = *(v2 + 16);
    os_unfair_lock_lock((v2 + 24));
    if (a2 < 0xFFFFFFFF80000000)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (a2 > 0x7FFFFFFF)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sqlite3_bind_int64(*(v2 + 16), a2, *&v16);
LABEL_24:
    os_unfair_lock_unlock((v2 + 24));
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v5 = *(v2 + 16);
    os_unfair_lock_lock((v5 + 24));
    if (a2 >= 0xFFFFFFFF80000000)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        v2 = *(v5 + 16);
        if (qword_1EE13E998 == -1)
        {
LABEL_31:
          v11 = qword_1EE14C858;
          v12 = sub_1DB2BAE24();
          sqlite3_bind_text(v2, a2, (v12 + 32), -1, v11);

          v8 = (v5 + 24);
          goto LABEL_9;
        }

LABEL_52:
        swift_once();
        goto LABEL_31;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (swift_dynamicCast())
  {
    v13 = v15;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_1DB1355D0(&v19, &v16);
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D6840);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      sub_1DB2BB914();
      sub_1DB15B09C(0, 0xE000000000000000);

      v10 = &v16;
      goto LABEL_26;
    }

    *&v13 = LOBYTE(v15);
  }

  v17 = v9;
  v18 = &protocol witness table for Int64;
  v16 = v13;
  sub_1DB253CF8(&v16, a2);
  sub_1DB145A68(&v16);
LABEL_25:
  v10 = &v19;
LABEL_26:
  __swift_destroy_boxed_opaque_existential_1(v10);
}