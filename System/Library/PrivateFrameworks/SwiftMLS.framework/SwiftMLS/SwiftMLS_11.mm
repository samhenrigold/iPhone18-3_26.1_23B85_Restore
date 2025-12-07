uint64_t MLS.FramedContentAuthData.confirmationTag.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.FramedContentAuthData(0) + 20);

  return sub_26BED52B4(a1, v3);
}

uint64_t sub_26BED52B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s8SwiftMLS0B0O21FramedContentAuthDataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF28, &qword_26C016C20);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  if (!sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v14 = *(type metadata accessor for MLS.FramedContentAuthData(0) + 20);
  v15 = *(v11 + 48);
  sub_26BED5200(a1 + v14, v13);
  sub_26BED5200(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_26BE2E258(v13, &qword_28045E4E8, &qword_26C012550);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BED5200(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_26BEB658C(v10);
LABEL_7:
    sub_26BE2E258(v13, &qword_28045EF28, &qword_26C016C20);
    return 0;
  }

  sub_26BED4D74(&v13[v15], v7);
  v18 = MEMORY[0x26D698700](v10, v7);
  sub_26BEB658C(v7);
  sub_26BEB658C(v10);
  sub_26BE2E258(v13, &qword_28045E4E8, &qword_26C012550);
  return (v18 & 1) != 0;
}

uint64_t sub_26BED5620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BED56FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BED57B4(uint64_t a1)
{
  sub_26BED5830(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BED5830(uint64_t a1)
{
  if (!qword_28045EF20)
  {
    type metadata accessor for MLS.Cryptography.MACTag(255);
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_28045EF20);
    }
  }
}

uint64_t sub_26BED5894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 184))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 128) & 0x1000000000000000) != 0)) | ((*(a1 + 128) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BED58E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
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
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 128) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
    }
  }

  return result;
}

const char *SwiftMLSFeatureFlags.feature.getter()
{
  v1 = "UsePureSwiftImplementation";
  v2 = "ParticipantKey";
  if (*v0 != 2)
  {
    v2 = "ValidateKeyGeneration";
  }

  if (*v0)
  {
    v1 = "ValidateCredentials";
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

uint64_t SwiftMLSFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

unint64_t sub_26BED5AA8()
{
  result = qword_28045EF30;
  if (!qword_28045EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EF30);
  }

  return result;
}

const char *sub_26BED5B10()
{
  v1 = "UsePureSwiftImplementation";
  v2 = "ParticipantKey";
  if (*v0 != 2)
  {
    v2 = "ValidateKeyGeneration";
  }

  if (*v0)
  {
    v1 = "ValidateCredentials";
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

uint64_t MLS.Sender.init(inner:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

BOOL static MLS.Sender.Inner.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (!*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 4) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2)
  {
    if (v4 != 2 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 2 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_26BED5C00(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  v12 = v4 == 2 && v3 == 1;
  if (v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (*(a1 + 4) == 1)
  {
    v13 = v8;
  }

  if (*(a1 + 4))
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

void MLS.Sender.inner.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t MLS.Sender.inner.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t static MLS.Sender.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v2)
    {
      if (v4 != 2 || v3 != 1)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 4))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_26BED5D08(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) != 1)
    {
      if (v2)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      return 1;
    }

    v5 = v4 == 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  return v5 && v2 == v3;
}

uint64_t sub_26BED5D78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BED5DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BED5E08(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26BED5E20(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_26BED5E48@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BEE62D4();
  if ((result & 0x100) != 0)
  {
LABEL_12:
    v3 = 1;
    goto LABEL_13;
  }

  v3 = 5;
  if (result <= 2u)
  {
    if (result != 1)
    {
      if (result == 2)
      {
        result = sub_26BEE6028();
        v3 = 1;
        if ((result & 0x100000000) == 0)
        {
          *a1 = result;
          *(a1 + 4) = 1;
          return result;
        }
      }

      goto LABEL_13;
    }

    result = sub_26BEE6028();
    if ((result & 0x100000000) == 0)
    {
      *a1 = result;
      *(a1 + 4) = 0;
      return result;
    }

    goto LABEL_12;
  }

  if (result == 3)
  {
    *a1 = 0;
  }

  else
  {
    if (result != 4)
    {
LABEL_13:
      sub_26BE01600();
      swift_allocError();
      *v4 = v3;
      return swift_willThrow();
    }

    *a1 = 1;
  }

  *(a1 + 4) = 2;
  return result;
}

uint64_t MLS.Commit.proposals.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MLS.Commit.path.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v3;
  v12[8] = *(v1 + 136);
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v5;
  v12[4] = *(v1 + 72);
  v12[5] = v2;
  v12[0] = *(v1 + 8);
  v12[1] = v4;
  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v7;
  a1[8] = *(v1 + 136);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v9;
  a1[4] = *(v1 + 72);
  a1[5] = v6;
  *a1 = *(v1 + 8);
  a1[1] = v8;
  return sub_26BE7ABF0(v12, &v11);
}

__n128 MLS.Commit.path.setter(__int128 *a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v4;
  v12[8] = *(v1 + 136);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v6;
  v12[4] = *(v1 + 72);
  v12[5] = v3;
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  sub_26BE7AC60(v12);
  v7 = a1[4];
  *(v1 + 88) = a1[5];
  v8 = a1[7];
  *(v1 + 104) = a1[6];
  *(v1 + 120) = v8;
  *(v1 + 136) = a1[8];
  v9 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v11;
  *(v1 + 72) = v7;
  *(v1 + 8) = v9;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_26BED6118(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_26BED6160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BED61D4(uint64_t *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 11);
  v4 = *(a1 + 15);
  v58 = *(a1 + 13);
  v59 = v4;
  v60 = *(a1 + 17);
  v5 = *(a1 + 3);
  v6 = *(a1 + 7);
  v54 = *(a1 + 5);
  v55 = v6;
  v56 = *(a1 + 9);
  v57 = v3;
  v52 = *(a1 + 1);
  v53 = v5;
  v50 = xmmword_26C00BBD0;
  v51 = 0;
  v7 = sub_26BED6D74(0, v2);
  if (v1)
  {
    sub_26BE00258(v50, *(&v50 + 1));
  }

  else
  {
    v8 = v7;
    v9 = 0;
    v10 = sub_26BF30414(v7);
    sub_26BF2A30C(&v50);
    sub_26BE00258(v50, *(&v50 + 1));
    v11 = v10 + v8;
    if (__OFADD__(v10, v8))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    v49[6] = v58;
    v49[7] = v59;
    v49[8] = v60;
    v49[2] = v54;
    v49[3] = v55;
    v49[4] = v56;
    v49[5] = v57;
    v49[0] = v52;
    v49[1] = v53;
    if (sub_26BE59C80(v49) != 1)
    {
      goto LABEL_9;
    }

    LOBYTE(v31) = 0;
    *(&v41 + 1) = MEMORY[0x277D838B0];
    *&v42 = MEMORY[0x277CC9C18];
    *&v40 = &v31;
    *(&v40 + 1) = &v31 + 1;
    __swift_project_boxed_opaque_existential_1(&v40, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v40);
    if (__OFADD__(v11, 1))
    {
      while (1)
      {
        __break(1u);
LABEL_9:
        v46 = v58;
        v47 = v59;
        v48 = v60;
        v42 = v54;
        v43 = v55;
        v44 = v56;
        v45 = v57;
        v40 = v52;
        v41 = v53;
        LOBYTE(v20) = 1;
        *(&v23 + 1) = MEMORY[0x277D838B0];
        *&v24 = MEMORY[0x277CC9C18];
        *&v22 = &v20;
        *(&v22 + 1) = &v20 + 1;
        __swift_project_boxed_opaque_existential_1(&v22, MEMORY[0x277D838B0]);
        sub_26BE7ABF0(&v52, &v31);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v22);
        v37 = v46;
        v38 = v47;
        v39 = v48;
        v33 = v42;
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v31 = v40;
        v32 = v41;
        sub_26BE00758(&v40, &v22);
        sub_26BE7DD28(&v31);
        if (v9)
        {
          break;
        }

        v13 = v12;
        v14 = *(&v48 + 1);
        v28 = v37;
        v29 = v38;
        v30 = v39;
        v24 = v33;
        v25 = v34;
        v26 = v35;
        v27 = v36;
        v22 = v31;
        v23 = v32;
        sub_26BE00854(&v22);
        v20 = xmmword_26C00BBD0;
        v21 = 0;
        v15 = sub_26BEEB0F4(0, v14);
        v9 = sub_26BF30414(v15);
        sub_26BF2A30C(&v20);
        sub_26BE00258(v20, *(&v20 + 1));
        sub_26BE7AC60(&v52);
        v16 = v9 + v15;
        if (__OFADD__(v9, v15))
        {
          goto LABEL_18;
        }

        v17 = __OFADD__(v13, v16);
        v18 = v13 + v16;
        if (v17)
        {
          goto LABEL_19;
        }

        v17 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (v17)
        {
          goto LABEL_20;
        }

        if (!__OFADD__(v11, v19))
        {
          return;
        }
      }

      v28 = v37;
      v29 = v38;
      v30 = v39;
      v24 = v33;
      v25 = v34;
      v26 = v35;
      v27 = v36;
      v22 = v31;
      v23 = v32;
      sub_26BE00854(&v22);
      sub_26BE7AC60(&v52);
    }
  }
}

void sub_26BED6530(uint64_t a1@<X8>)
{
  v3 = v1;
  v40 = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  sub_26BE00608(*v1, v5);
  sub_26BE00608(v6, v5);
  sub_26BF30764(v1, v36);
  if (v2)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
LABEL_3:
    swift_willThrow();
LABEL_4:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v6;
    v3[1] = v5;
    v3[2] = v7;
LABEL_10:
    swift_willThrow();
    return;
  }

  if (BYTE8(v36[0]))
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v8 = v5;
    v9 = v6;
    v1[2] = v7;
LABEL_7:
    sub_26BE00258(v9, v8);
    *v3 = v6;
    v3[1] = v5;
    v3[2] = v7;
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    v11 = 1;
LABEL_9:
    *v10 = v11;
    goto LABEL_10;
  }

  v12 = *&v36[0];
  sub_26BE00258(v6, v5);
  if (v12 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v13 = 5;
    goto LABEL_3;
  }

  v14 = sub_26BF2A44C(v12);
  if (v15 >> 60 == 15)
  {
    v9 = *v3;
    v8 = v3[1];
    goto LABEL_7;
  }

  v33 = a1;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v17 = MEMORY[0x277D84F90];
  v18 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v14 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v14 >> 32;
  }

  else
  {
    v19 = BYTE6(v15);
  }

  v20 = __OFSUB__(v19, v16);
  v21 = v19 - v16;
  if (v20)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (v21 >= 1)
  {
    v22 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          if (v22 > 0)
          {
LABEL_40:
            sub_26BE01600();
            swift_allocError();
            v26 = 1;
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        v23 = *(v14 + 24);
      }

      else if (v18)
      {
        v23 = v14 >> 32;
      }

      else
      {
        v23 = BYTE6(v15);
      }

      if (v23 < v22)
      {
        goto LABEL_40;
      }

LABEL_34:
      v34 = v14;
      v35 = v15;
      if (v22 >= v16)
      {
        sub_26BE00608(v14, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
        sub_26BE016A8();
        sub_26BE016FC();
        sub_26C008E1C();
        sub_26BE00258(v34, v35);
        v39 = v22;
        sub_26BE01600();
        swift_allocError();
        v26 = 5;
LABEL_43:
        *v25 = v26;
        swift_willThrow();
LABEL_44:

        sub_26BE00258(v37, v38);
        goto LABEL_4;
      }

      goto LABEL_59;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_60;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v24 = *(v14 + 24);
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v18)
  {
    v24 = v14 >> 32;
  }

  else
  {
    v24 = BYTE6(v15);
  }

  if (__OFSUB__(v24, v16))
  {
LABEL_60:
    __break(1u);
  }

  if (v24 != v16)
  {
    sub_26BE01654();
    swift_allocError();
    *v28 = 0;
    v28[112] = 1;
    swift_willThrow();
    goto LABEL_44;
  }

  sub_26BE00258(v14, v15);
  sub_26BE00258(v6, v5);
  v27 = sub_26BEE62D4();
  if ((v27 & 0x100) != 0)
  {

    goto LABEL_8;
  }

  if (v27)
  {
    if (v27 != 1)
    {

      sub_26BE01600();
      swift_allocError();
      v11 = 5;
      goto LABEL_9;
    }

    sub_26BFF8178(v36);
    nullsub_1();
  }

  else
  {
    sub_26BE7150C(v36);
  }

  v29 = v36[4];
  *(v33 + 88) = v36[5];
  v30 = v36[7];
  *(v33 + 104) = v36[6];
  *(v33 + 120) = v30;
  *(v33 + 136) = v36[8];
  v31 = v36[0];
  *(v33 + 24) = v36[1];
  v32 = v36[3];
  *(v33 + 40) = v36[2];
  *(v33 + 56) = v32;
  *(v33 + 72) = v29;
  *v33 = v17;
  *(v33 + 8) = v31;
}

uint64_t sub_26BED6D74(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = (a2 + 32); ; i = (i + 184))
    {
      v6 = i[9];
      v51 = i[8];
      v52 = v6;
      v53 = i[10];
      v54 = *(i + 22);
      v7 = i[5];
      v47 = i[4];
      v48 = v7;
      v8 = i[7];
      v49 = i[6];
      v50 = v8;
      v9 = i[1];
      v43 = *i;
      v44 = v9;
      v10 = i[3];
      v45 = i[2];
      v46 = v10;
      if (sub_26BE592C4(&v43))
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      LOBYTE(v36[0]) = v11;
      v41 = MEMORY[0x277D838B0];
      v42 = MEMORY[0x277CC9C18];
      v39 = v36;
      v40 = v36 + 1;
      __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x277D838B0]);
      sub_26BE71830(&v43, v37);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v39);
      v55[8] = v51;
      v55[9] = v52;
      v55[10] = v53;
      v56 = v54;
      v55[4] = v47;
      v55[5] = v48;
      v55[6] = v49;
      v55[7] = v50;
      v55[0] = v43;
      v55[1] = v44;
      v55[2] = v45;
      v55[3] = v46;
      v12 = sub_26BE592C4(v55);
      v13 = sub_26BE13A3C(v55);
      if (v12 != 1)
      {
        v37[8] = *(v13 + 128);
        v37[9] = *(v13 + 144);
        v37[10] = *(v13 + 160);
        v38 = *(v13 + 176);
        v37[4] = *(v13 + 64);
        v37[5] = *(v13 + 80);
        v37[6] = *(v13 + 96);
        v37[7] = *(v13 + 112);
        v37[0] = *v13;
        v37[1] = *(v13 + 16);
        v37[2] = *(v13 + 32);
        v37[3] = *(v13 + 48);
        sub_26BF31160(v37);
        v19 = v18;
        sub_26BE7188C(&v43);
        if (v2)
        {
          return a1;
        }

        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_43;
        }

        goto LABEL_37;
      }

      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v16 == 2)
        {
          v22 = v14[2];
          v21 = v14[3];
          v17 = v21 - v22;
          if (__OFSUB__(v21, v22))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else if (v16)
      {
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_47;
        }

        v17 = HIDWORD(v14) - v14;
      }

      else
      {
        v17 = BYTE6(v15);
      }

      v23 = sub_26BF30414(v17);
      if (v2)
      {
        sub_26BE7188C(&v43);
        return a1;
      }

      v24 = v23;
      v41 = MEMORY[0x277CC9318];
      v42 = MEMORY[0x277CC9300];
      v39 = v14;
      v40 = v15;
      v25 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x277CC9318]);
      v26 = *v25;
      v27 = v25[1];
      v28 = v27 >> 62;
      if ((v27 >> 62) <= 1)
      {
        break;
      }

      if (v28 == 2)
      {
        v35 = v17;
        v29 = *(v26 + 16);
        v34 = *(v26 + 24);
        sub_26BE71830(&v43, v37);
        if (sub_26C008E9C() && __OFSUB__(v29, sub_26C008ECC()))
        {
          goto LABEL_50;
        }

        if (__OFSUB__(v34, v29))
        {
          goto LABEL_49;
        }

LABEL_33:
        sub_26C008EBC();
        sub_26C00908C();
        v17 = v35;
        goto LABEL_35;
      }

      memset(v36, 0, 14);
      sub_26BE71830(&v43, v37);
      sub_26C00908C();
LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(&v39);
      sub_26BE7188C(&v43);
      v31 = v24 + v17;
      if (__OFADD__(v24, v17))
      {
        goto LABEL_44;
      }

      v32 = __OFADD__(v31, 1);
      v20 = v31 + 1;
      if (v32)
      {
        goto LABEL_45;
      }

LABEL_37:
      v32 = __OFADD__(a1, v20);
      a1 += v20;
      if (v32)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (!--v4)
      {
        return a1;
      }
    }

    if (!v28)
    {
      v36[0] = *v25;
      LOWORD(v36[1]) = v27;
      BYTE2(v36[1]) = BYTE2(v27);
      BYTE3(v36[1]) = BYTE3(v27);
      BYTE4(v36[1]) = BYTE4(v27);
      BYTE5(v36[1]) = BYTE5(v27);
      sub_26BE71830(&v43, v37);
      sub_26C00908C();
      goto LABEL_35;
    }

    v35 = v17;
    v30 = v26;
    if (v26 >> 32 < v26)
    {
      goto LABEL_48;
    }

    sub_26BE71830(&v43, v37);
    if (sub_26C008E9C() && __OFSUB__(v30, sub_26C008ECC()))
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  return a1;
}

uint64_t MLS.PrivateMessage.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.PrivateMessage.groupID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.PrivateMessage.authenticatedData.getter()
{
  v1 = *(v0 + 32);
  sub_26BE00608(v1, *(v0 + 40));
  return v1;
}

void MLS.PrivateMessage.authenticatedData.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t MLS.PrivateMessage.ciphertext.getter()
{
  v1 = *(v0 + 64);
  sub_26BE00608(v1, *(v0 + 72));
  return v1;
}

void MLS.PrivateMessage.ciphertext.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

unint64_t sub_26BED7438(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v42 = *(a1 + 56);
  v43 = *(a1 + 32);
  v7 = *(a1 + 64);
  v40 = *(a1 + 72);
  v41 = *(a1 + 48);
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (v1)
  {
    return result;
  }

  v13 = result;
  sub_26BE11228(v2, v3);
  v14 = __OFADD__(v13, v9);
  v15 = v13 + v9;
  if (v14)
  {
    __break(1u);
    goto LABEL_54;
  }

  v44 = bswap64(v4);
  v16 = MEMORY[0x277D838B0];
  v17 = MEMORY[0x277CC9C18];
  v47 = MEMORY[0x277D838B0];
  v48 = MEMORY[0x277CC9C18];
  v45 = &v44;
  v46 = &v45;
  __swift_project_boxed_opaque_existential_1(&v45, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v14 = __OFADD__(v15, 8);
  v18 = v15 + 8;
  if (v14)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LOBYTE(v44) = v5;
  v47 = v16;
  v48 = v17;
  v45 = &v44;
  v46 = (&v44 + 1);
  __swift_project_boxed_opaque_existential_1(&v45, v16);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v14 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (v14)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v20 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v6);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_25;
  }

  v23 = *(v43 + 16);
  v22 = *(v43 + 24);
  v21 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_22:
    if (__OFSUB__(HIDWORD(v43), v43))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v21 = HIDWORD(v43) - v43;
  }

LABEL_25:
  v24 = sub_26BF30414(v21);
  sub_26BE11228(v43, v6);
  v25 = v24 + v21;
  if (__OFADD__(v24, v21))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v26 = v19 + v25;
  if (__OFADD__(v19, v25))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = v42 >> 62;
  if ((v42 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(v42);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v30 = *(v41 + 16);
  v29 = *(v41 + 24);
  v28 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
LABEL_34:
    if (__OFSUB__(HIDWORD(v41), v41))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v28 = HIDWORD(v41) - v41;
  }

LABEL_37:
  v31 = sub_26BF30414(v28);
  sub_26BE11228(v41, v42);
  v32 = v31 + v28;
  if (__OFADD__(v31, v28))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v14 = __OFADD__(v26, v32);
  v33 = v26 + v32;
  if (v14)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v34 = v40 >> 62;
  if ((v40 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v40);
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v34 != 2)
  {
    v35 = 0;
    goto LABEL_50;
  }

  v37 = *(v7 + 16);
  v36 = *(v7 + 24);
  v35 = v36 - v37;
  if (__OFSUB__(v36, v37))
  {
    __break(1u);
LABEL_46:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_65;
    }

    v35 = HIDWORD(v7) - v7;
  }

LABEL_50:
  v38 = sub_26BF30414(v35);
  sub_26BE11228(v7, v40);
  v39 = v38 + v35;
  if (__OFADD__(v38, v35))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = v33 + v39;
  if (__OFADD__(v33, v39))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  return result;
}

void sub_26BED7790(uint64_t a2@<X8>)
{
  v4 = sub_26BF2F7B0();
  if (!v2)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_26BEEE594();
    if ((v9 & 1) != 0 || (v10 = v8, v11 = sub_26BEE62D4(), (v11 & 0x100) != 0))
    {
      sub_26BE01600();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      sub_26BE00258(v6, v7);
    }

    else
    {
      v12 = v11;
      v13 = sub_26BF2F7B0();
      v15 = v14;
      v20 = sub_26BF2F7B0();
      v21 = v17;
      v18 = sub_26BF2F7B0();
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = v10;
      *(a2 + 24) = v12;
      *(a2 + 32) = v13;
      *(a2 + 40) = v15;
      *(a2 + 48) = v20;
      *(a2 + 56) = v21;
      *(a2 + 64) = v18;
      *(a2 + 72) = v19;
    }
  }
}

unint64_t sub_26BED78E0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26BED78F8()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_26BED7924@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_26BED7940(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_26BED7960(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BED79CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDBB54();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26BED7A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

BOOL sub_26BED7A80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_26BED7ABC()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F38);
  __swift_project_value_buffer(v0, qword_280478F38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ALGORITHM_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AES256_CTR_HMAC_SHA256_256TAG";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED7CA8()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F50);
  __swift_project_value_buffer(v0, qword_280478F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key_material";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "initialization_vector";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hmac_tag";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "algorithm";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED7EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C00992C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          sub_26BEDBB54();
          sub_26C00993C();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        sub_26C00994C();
      }

      result = sub_26C00992C();
    }
  }

  return result;
}

uint64_t sub_26BED7FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_26C0099DC();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 == v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = sub_26C0099DC();
  if (v4)
  {
    return result;
  }

LABEL_19:
  v16 = v3[4];
  v17 = v3[5];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      result = sub_26C0099DC();
      if (v4)
      {
        return result;
      }

      goto LABEL_28;
    }

    v19 = v16;
    v20 = v16 >> 32;
  }

  if (v19 != v20)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (!v3[6] || (sub_26BEDBB54(), result = sub_26C0099CC(), !v4))
  {
    type metadata accessor for FileEncryptionInfo(0);
    return sub_26C0098AC();
  }

  return result;
}

uint64_t sub_26BED819C@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26C00BBD0;
  *(a1 + 16) = xmmword_26C00BBD0;
  *(a1 + 32) = xmmword_26C00BBD0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return sub_26C0098BC();
}

uint64_t sub_26BED81F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BED8268(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BED8330(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDB83C(&qword_28045F050, type metadata accessor for FileEncryptionInfo, &unk_26C0183D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BED83D0(uint64_t a1)
{
  v2 = sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo, &unk_26C018410);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BED843C(uint64_t a1, uint64_t a2)
{
  sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo, &unk_26C018410);

  return sub_26C0099BC();
}

uint64_t sub_26BED84BC()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F68);
  __swift_project_value_buffer(v0, qword_280478F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_type";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "encryption_info";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED86D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C00992C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_26BED8770(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_26C00995C();
    }
  }

  return result;
}

uint64_t sub_26BED8770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileMetadata(0);
  type metadata accessor for FileEncryptionInfo(0);
  sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo, &unk_26C018410);
  return sub_26C00996C();
}

uint64_t sub_26BED8824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_26C0099EC(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_26C0099EC(), !v4))
    {
      result = sub_26BED8900(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for FileMetadata(0);
        return sub_26C0098AC();
      }
    }
  }

  return result;
}

uint64_t sub_26BED8900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for FileEncryptionInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileMetadata(0);
  sub_26BE2E1F0(a1 + *(v12 + 28), v7, &qword_28045EF78, &unk_26C017EE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_26BE2E258(v7, &qword_28045EF78, &unk_26C017EE0);
  }

  sub_26BEDC148(v7, v11, type metadata accessor for FileEncryptionInfo);
  sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo, &unk_26C018410);
  sub_26C0099FC();
  return sub_26BEDC1B0(v11, type metadata accessor for FileEncryptionInfo);
}

uint64_t sub_26BED8B14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_26C0098BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for FileEncryptionInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_26BED8BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BED8C38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BED8D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDB83C(&qword_28045F068, type metadata accessor for FileMetadata, &unk_26C018270);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BED8DA8(uint64_t a1)
{
  v2 = sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata, &unk_26C0182A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BED8E18(uint64_t a1, uint64_t a2)
{
  sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata, &unk_26C0182A8);

  return sub_26C0099BC();
}

uint64_t sub_26BED8E98()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F80);
  __swift_project_value_buffer(v0, qword_280478F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subject";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "icon";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED90DC()
{
  type metadata accessor for FileInfo._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  v2 = type metadata accessor for FileMetadata(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, 1, 1, v2);
  qword_28045EF38 = v0;
  return result;
}

uint64_t sub_26BED91E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  v7 = type metadata accessor for FileMetadata(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  v8(v1 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, 1, 1, v7);
  v10 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  v8(v1 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, 1, 1, v7);
  v11 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  v8(v1 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, 1, 1, v7);
  v12 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v12, v5, &qword_28045F080, &qword_26C0184C8);
  swift_beginAccess();
  sub_26BEDC210(v5, v1 + v6);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v13, v5, &qword_28045F080, &qword_26C0184C8);
  swift_beginAccess();
  sub_26BEDC210(v5, v1 + v9);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v14, v5, &qword_28045F080, &qword_26C0184C8);
  swift_beginAccess();
  sub_26BEDC210(v5, v1 + v10);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v15, v5, &qword_28045F080, &qword_26C0184C8);

  swift_beginAccess();
  sub_26BEDC210(v5, v1 + v11);
  swift_endAccess();
  return v1;
}

uint64_t sub_26BED94A8()
{
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, &qword_28045F080, &qword_26C0184C8);

  return swift_deallocClassInstance();
}

void sub_26BED95A4(uint64_t a1)
{
  sub_26BED99AC(319, &qword_28045EF70, type metadata accessor for FileMetadata);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26BED9688(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C0098CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26BED97CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C0098CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26BED98FC(uint64_t a1)
{
  sub_26C0098CC();
  if (v1 <= 0x3F)
  {
    sub_26BED99AC(319, &qword_28045EF90, type metadata accessor for FileEncryptionInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BED99AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C00AAAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BED9A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26C0098CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26BED9B00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26C0098CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BED9BAC(uint64_t a1)
{
  result = sub_26C0098CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Algorithm(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Algorithm(uint64_t result, int a2, int a3)
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

uint64_t sub_26BED9C98(uint64_t a1)
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

uint64_t sub_26BED9CB4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_26BED9CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C0098CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BED9DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C0098CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BED9EA0(uint64_t a1)
{
  result = sub_26C0098CC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FileInfo._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26BED9F28()
{
  result = qword_28045EFB8;
  if (!qword_28045EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFB8);
  }

  return result;
}

unint64_t sub_26BED9F80()
{
  result = qword_28045EFC0;
  if (!qword_28045EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045EFC8, qword_26C017FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFC0);
  }

  return result;
}

unint64_t sub_26BED9FE8()
{
  result = qword_28045EFD0;
  if (!qword_28045EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFD0);
  }

  return result;
}

unint64_t sub_26BEDA040()
{
  result = qword_28045EFD8;
  if (!qword_28045EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFD8);
  }

  return result;
}

uint64_t sub_26BEDA094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for FileInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for FileInfo._StorageClass(0);
    swift_allocObject();
    v10 = sub_26BED91E0(v11);
    *(v4 + v8) = v10;
  }

  return sub_26BEDA13C(v10, a1, a2, a3);
}

uint64_t sub_26BEDA13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26C00992C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
LABEL_5:
          sub_26BEDA254(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        if (result == 4)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_26C00992C();
    }
  }

  return result;
}

uint64_t sub_26BEDA254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for FileMetadata(0);
  sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata, &unk_26C0182A8);
  sub_26C00996C();
  return swift_endAccess();
}

uint64_t sub_26BEDA32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for FileInfo(0);
  result = sub_26BEDA398(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26C0098AC();
  }

  return result;
}

uint64_t sub_26BEDA398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file, 1);
  if (!v4)
  {
    sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, 2);
    sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, 3);
    return sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, 4);
  }

  return result;
}

uint64_t sub_26BEDA448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for FileMetadata(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v15, v10, &qword_28045F080, &qword_26C0184C8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_26BE2E258(v10, &qword_28045F080, &qword_26C0184C8);
  }

  sub_26BEDC148(v10, v14, type metadata accessor for FileMetadata);
  sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata, &unk_26C0182A8);
  sub_26C0099FC();
  return sub_26BEDC1B0(v14, type metadata accessor for FileMetadata);
}

BOOL sub_26BEDA668(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for FileMetadata(0);
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = (&v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F088, &qword_26C0184D0);
  v6 = MEMORY[0x28223BE20](v5);
  v87 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v85 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v93 = &v85 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v86 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v85 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v88 = (&v85 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v92 = &v85 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v91 = (&v85 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v97 = &v85 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v85 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v32 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v32, v31, &qword_28045F080, &qword_26C0184C8);
  v33 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  swift_beginAccess();
  v96 = v5;
  v34 = *(v5 + 48);
  sub_26BE2E1F0(v31, v13, &qword_28045F080, &qword_26C0184C8);
  v35 = a2 + v33;
  v36 = a2;
  v37 = v98;
  v38 = v99;
  sub_26BE2E1F0(v35, &v13[v34], &qword_28045F080, &qword_26C0184C8);
  v41 = *(v38 + 48);
  v39 = v38 + 48;
  v40 = v41;
  if (v41(v13, 1, v37) == 1)
  {

    sub_26BE2E258(v31, &qword_28045F080, &qword_26C0184C8);
    v42 = a1;
    if (v40(&v13[v34], 1, v37) == 1)
    {
      v94 = v40;
      v99 = v39;
      sub_26BE2E258(v13, &qword_28045F080, &qword_26C0184C8);
      goto LABEL_8;
    }

LABEL_6:
    v43 = v13;
LABEL_21:
    sub_26BE2E258(v43, &qword_28045F088, &qword_26C0184D0);
    goto LABEL_22;
  }

  sub_26BE2E1F0(v13, v29, &qword_28045F080, &qword_26C0184C8);
  if (v40(&v13[v34], 1, v37) == 1)
  {

    sub_26BE2E258(v31, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v29, type metadata accessor for FileMetadata);
    goto LABEL_6;
  }

  v94 = v40;
  v99 = v39;
  v44 = v95;
  sub_26BEDC148(&v13[v34], v95, type metadata accessor for FileMetadata);

  v45 = sub_26BEDBDA4(v29, v44);
  sub_26BEDC1B0(v44, type metadata accessor for FileMetadata);
  sub_26BE2E258(v31, &qword_28045F080, &qword_26C0184C8);
  sub_26BEDC1B0(v29, type metadata accessor for FileMetadata);
  v42 = a1;
  sub_26BE2E258(v13, &qword_28045F080, &qword_26C0184C8);
  if ((v45 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v46 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  swift_beginAccess();
  v47 = v97;
  sub_26BE2E1F0(v42 + v46, v97, &qword_28045F080, &qword_26C0184C8);
  v48 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  swift_beginAccess();
  v49 = v96;
  v50 = *(v96 + 48);
  v51 = v93;
  sub_26BE2E1F0(v47, v93, &qword_28045F080, &qword_26C0184C8);
  v52 = v51;
  sub_26BE2E1F0(v36 + v48, v51 + v50, &qword_28045F080, &qword_26C0184C8);
  v53 = v51;
  v54 = v99;
  v55 = v94;
  v56 = v94(v53, 1, v37);
  v94 = v55;
  if (v56 == 1)
  {
    sub_26BE2E258(v47, &qword_28045F080, &qword_26C0184C8);
    if (v55(v52 + v50, 1, v37) == 1)
    {
      v57 = v37;
      v99 = v54;
      sub_26BE2E258(v52, &qword_28045F080, &qword_26C0184C8);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v58 = v91;
  sub_26BE2E1F0(v52, v91, &qword_28045F080, &qword_26C0184C8);
  if (v55(v52 + v50, 1, v37) == 1)
  {
    sub_26BE2E258(v97, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v58, type metadata accessor for FileMetadata);
LABEL_13:
    v43 = v52;
    goto LABEL_21;
  }

  v57 = v37;
  v99 = v54;
  v59 = v52 + v50;
  v60 = v95;
  sub_26BEDC148(v59, v95, type metadata accessor for FileMetadata);
  v61 = v52;
  v62 = sub_26BEDBDA4(v58, v60);
  sub_26BEDC1B0(v60, type metadata accessor for FileMetadata);
  sub_26BE2E258(v97, &qword_28045F080, &qword_26C0184C8);
  sub_26BEDC1B0(v58, type metadata accessor for FileMetadata);
  sub_26BE2E258(v61, &qword_28045F080, &qword_26C0184C8);
  if ((v62 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v63 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  v64 = v92;
  sub_26BE2E1F0(v42 + v63, v92, &qword_28045F080, &qword_26C0184C8);
  v65 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  v66 = *(v49 + 48);
  v67 = v90;
  sub_26BE2E1F0(v64, v90, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E1F0(v36 + v65, v67 + v66, &qword_28045F080, &qword_26C0184C8);
  v68 = v94;
  if (v94(v67, 1, v57) != 1)
  {
    v70 = v88;
    sub_26BE2E1F0(v67, v88, &qword_28045F080, &qword_26C0184C8);
    v69 = v68;
    if (v68(v67 + v66, 1, v57) == 1)
    {
      sub_26BE2E258(v92, &qword_28045F080, &qword_26C0184C8);
      sub_26BEDC1B0(v70, type metadata accessor for FileMetadata);
      goto LABEL_20;
    }

    v72 = v67 + v66;
    v73 = v95;
    sub_26BEDC148(v72, v95, type metadata accessor for FileMetadata);
    v74 = sub_26BEDBDA4(v70, v73);
    sub_26BEDC1B0(v73, type metadata accessor for FileMetadata);
    sub_26BE2E258(v92, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v70, type metadata accessor for FileMetadata);
    sub_26BE2E258(v67, &qword_28045F080, &qword_26C0184C8);
    if (v74)
    {
      goto LABEL_26;
    }

LABEL_22:

    return 0;
  }

  sub_26BE2E258(v64, &qword_28045F080, &qword_26C0184C8);
  v69 = v68;
  if (v68(v67 + v66, 1, v57) != 1)
  {
LABEL_20:
    v43 = v67;
    goto LABEL_21;
  }

  sub_26BE2E258(v67, &qword_28045F080, &qword_26C0184C8);
LABEL_26:
  v75 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  swift_beginAccess();
  v76 = v89;
  sub_26BE2E1F0(v42 + v75, v89, &qword_28045F080, &qword_26C0184C8);
  v77 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  swift_beginAccess();
  v78 = *(v96 + 48);
  v79 = v87;
  sub_26BE2E1F0(v76, v87, &qword_28045F080, &qword_26C0184C8);
  v80 = v36 + v77;
  v81 = v79;
  sub_26BE2E1F0(v80, v79 + v78, &qword_28045F080, &qword_26C0184C8);
  if (v69(v79, 1, v57) == 1)
  {

    sub_26BE2E258(v76, &qword_28045F080, &qword_26C0184C8);
    if (v69(v79 + v78, 1, v57) == 1)
    {
      sub_26BE2E258(v79, &qword_28045F080, &qword_26C0184C8);
      return 1;
    }

    goto LABEL_31;
  }

  v82 = v86;
  sub_26BE2E1F0(v79, v86, &qword_28045F080, &qword_26C0184C8);
  if (v69(v79 + v78, 1, v57) == 1)
  {

    sub_26BE2E258(v89, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v82, type metadata accessor for FileMetadata);
LABEL_31:
    sub_26BE2E258(v79, &qword_28045F088, &qword_26C0184D0);
    return 0;
  }

  v83 = v95;
  sub_26BEDC148(v79 + v78, v95, type metadata accessor for FileMetadata);
  v84 = sub_26BEDBDA4(v82, v83);

  sub_26BEDC1B0(v83, type metadata accessor for FileMetadata);
  sub_26BE2E258(v89, &qword_28045F080, &qword_26C0184C8);
  sub_26BEDC1B0(v82, type metadata accessor for FileMetadata);
  sub_26BE2E258(v81, &qword_28045F080, &qword_26C0184C8);
  return (v84 & 1) != 0;
}

uint64_t sub_26BEDB328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26C0098BC();
  v4 = *(a1 + 20);
  if (qword_28045DFC0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_28045EF38;
}

uint64_t sub_26BEDB3B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C0098CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26BEDB420(uint64_t a1)
{
  v3 = sub_26C0098CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26BEDB4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDB83C(&qword_28045F078, type metadata accessor for FileInfo, &unk_26C018108);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BEDB578@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26C009A2C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_26BEDB614(uint64_t a1)
{
  v2 = sub_26BEDB83C(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BEDB680(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEDB6D8(uint64_t a1, uint64_t a2)
{
  sub_26BEDB83C(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);

  return sub_26C0099BC();
}

uint64_t sub_26BEDB754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEDB83C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BEDBB54()
{
  result = qword_28045F058;
  if (!qword_28045F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F058);
  }

  return result;
}

uint64_t sub_26BEDBBA8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FileInfo(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_26BEDA668(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_26C0098CC();
  sub_26BEDB83C(&qword_28045F060, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26C00A43C() & 1;
}

uint64_t sub_26BEDBC90(uint64_t a1, uint64_t a2)
{
  if (!sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_26BE02DEC(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_26BE02DEC(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (*(a1 + 56))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 56) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for FileEncryptionInfo(0);
  sub_26C0098CC();
  sub_26BEDB83C(&qword_28045F060, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26C00A43C() & 1;
}

uint64_t sub_26BEDBDA4(void *a1, void *a2)
{
  v4 = type metadata accessor for FileEncryptionInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F070, &qword_26C0184C0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_26C00AF2C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_26C00AF2C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v7;
  v22 = type metadata accessor for FileMetadata(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 48);
  sub_26BE2E1F0(a1 + v14, v13, &qword_28045EF78, &unk_26C017EE0);
  sub_26BE2E1F0(a2 + v14, &v13[v15], &qword_28045EF78, &unk_26C017EE0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_26BE2E258(v13, &qword_28045EF78, &unk_26C017EE0);
LABEL_14:
      sub_26C0098CC();
      sub_26BEDB83C(&qword_28045F060, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_26C00A43C();
      return v17 & 1;
    }

    goto LABEL_11;
  }

  sub_26BE2E1F0(v13, v10, &qword_28045EF78, &unk_26C017EE0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_26BEDC1B0(v10, type metadata accessor for FileEncryptionInfo);
LABEL_11:
    sub_26BE2E258(v13, &qword_28045F070, &qword_26C0184C0);
    goto LABEL_12;
  }

  v18 = v21;
  sub_26BEDC148(&v13[v15], v21, type metadata accessor for FileEncryptionInfo);
  v19 = sub_26BEDBC90(v10, v18);
  sub_26BEDC1B0(v18, type metadata accessor for FileEncryptionInfo);
  sub_26BEDC1B0(v10, type metadata accessor for FileEncryptionInfo);
  sub_26BE2E258(v13, &qword_28045EF78, &unk_26C017EE0);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_26BEDC148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEDC1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEDC210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void MLS.FramedContent.contentType.getter(char *a1@<X8>)
{
  v3 = v1[12];
  v10[8] = v1[11];
  v10[9] = v3;
  v11[0] = v1[13];
  *(v11 + 9) = *(v1 + 217);
  v4 = v1[8];
  v10[4] = v1[7];
  v10[5] = v4;
  v5 = v1[10];
  v10[6] = v1[9];
  v10[7] = v5;
  v6 = v1[4];
  v10[0] = v1[3];
  v10[1] = v6;
  v7 = v1[6];
  v10[2] = v1[5];
  v10[3] = v7;
  v8 = sub_26BE6917C(v10);
  if (v8)
  {
    if (v8 == 1)
    {
      nullsub_1();
      v9 = 2;
    }

    else
    {
      nullsub_1();
      v9 = 3;
    }
  }

  else
  {
    nullsub_1();
    v9 = 1;
  }

  *a1 = v9;
}

__n128 MLS.FramedContent.init(groupID:epoch:sender:authenticatedData:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 4);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v8;
  *(a8 + 28) = v9;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(a7 + 144);
  *(a8 + 176) = *(a7 + 128);
  *(a8 + 192) = v10;
  *(a8 + 208) = *(a7 + 160);
  *(a8 + 217) = *(a7 + 169);
  v11 = *(a7 + 80);
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 128) = v11;
  v12 = *(a7 + 112);
  *(a8 + 144) = *(a7 + 96);
  *(a8 + 160) = v12;
  v13 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v13;
  result = *(a7 + 32);
  v15 = *(a7 + 48);
  *(a8 + 80) = result;
  *(a8 + 96) = v15;
  return result;
}

uint64_t sub_26BEDC390(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = *(a1 + 40);
  v39 = *(a1 + 32);
  v8 = *(a1 + 192);
  v72 = *(a1 + 176);
  v73 = v8;
  v74[0] = *(a1 + 208);
  *(v74 + 9) = *(a1 + 217);
  v9 = *(a1 + 128);
  v68 = *(a1 + 112);
  v69 = v9;
  v10 = *(a1 + 160);
  v70 = *(a1 + 144);
  v71 = v10;
  v11 = *(a1 + 64);
  v64 = *(a1 + 48);
  v65 = v11;
  v12 = *(a1 + 96);
  v13 = v3 >> 62;
  v66 = *(a1 + 80);
  v67 = v12;
  if ((v3 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v16 = *(v2 + 16);
  v15 = *(v2 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v14 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v14);
  if (v1)
  {
    return result;
  }

  v18 = result;
  sub_26BE11228(v2, v3);
  v19 = v18 + v14;
  if (__OFADD__(v18, v14))
  {
    __break(1u);
    goto LABEL_48;
  }

  *&v42 = bswap64(v4);
  v20 = MEMORY[0x277D838B0];
  v21 = MEMORY[0x277CC9C18];
  *(&v54 + 1) = MEMORY[0x277D838B0];
  *&v55 = MEMORY[0x277CC9C18];
  *&v53 = &v42;
  *(&v53 + 1) = &v42 + 8;
  __swift_project_boxed_opaque_existential_1(&v53, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v22 = __OFADD__(v19, 8);
  v23 = v19 + 8;
  if (v22)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v24 = 2;
    }

    else if (v5)
    {
      v24 = 4;
    }

    else
    {
      v24 = 3;
    }
  }

  else
  {
    v24 = 1;
  }

  LOBYTE(v42) = v24;
  *(&v54 + 1) = v20;
  *&v55 = v21;
  *&v53 = &v42;
  *(&v53 + 1) = &v42 + 1;
  __swift_project_boxed_opaque_existential_1(&v53, v20);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  if (v6 > 1)
  {
    v25 = 1;
  }

  else
  {
    LODWORD(v42) = bswap32(v5);
    *(&v54 + 1) = v20;
    *&v55 = v21;
    *&v53 = &v42;
    *(&v53 + 1) = &v42 + 4;
    __swift_project_boxed_opaque_existential_1(&v53, v20);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v25 = 5;
  }

  v26 = v23 + v25;
  if (__OFADD__(v23, v25))
  {
    goto LABEL_49;
  }

  v27 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(v7);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_35;
  }

  v30 = *(v39 + 16);
  v29 = *(v39 + 24);
  v28 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
LABEL_32:
    if (__OFSUB__(HIDWORD(v39), v39))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v28 = HIDWORD(v39) - v39;
  }

LABEL_35:
  v31 = sub_26BF30414(v28);
  sub_26BE11228(v39, v7);
  v32 = v31 + v28;
  if (__OFADD__(v31, v28))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v22 = __OFADD__(v26, v32);
  v33 = v26 + v32;
  if (v22)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v61 = v72;
  v62 = v73;
  v63[0] = v74[0];
  *(v63 + 9) = *(v74 + 9);
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v56 = v67;
  v34 = sub_26BE6917C(&v53);
  if (v34)
  {
    if (v34 == 1)
    {
      nullsub_1();
      v35 = 2;
    }

    else
    {
      nullsub_1();
      v35 = 3;
    }
  }

  else
  {
    nullsub_1();
    v35 = 1;
  }

  LOBYTE(v40[0]) = v35;
  *(&v43 + 1) = v20;
  *&v44 = v21;
  *&v42 = v40;
  *(&v42 + 1) = v40 + 1;
  __swift_project_boxed_opaque_existential_1(&v42, v20);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v22 = __OFADD__(v33, 1);
  v36 = v33 + 1;
  if (v22)
  {
    goto LABEL_53;
  }

  v50 = v72;
  v51 = v73;
  v52[0] = v74[0];
  *(v52 + 9) = *(v74 + 9);
  v46 = v68;
  v47 = v69;
  v48 = v70;
  v49 = v71;
  v42 = v64;
  v43 = v65;
  v44 = v66;
  v45 = v67;
  sub_26BE71438(&v64, v40);
  sub_26BEDCCE4(&v42);
  v40[8] = v50;
  v40[9] = v51;
  v41[0] = v52[0];
  *(v41 + 9) = *(v52 + 9);
  v40[4] = v46;
  v40[5] = v47;
  v40[6] = v48;
  v40[7] = v49;
  v40[0] = v42;
  v40[1] = v43;
  v40[2] = v44;
  v40[3] = v45;
  v38 = v37;
  sub_26BE6FD84(v40);
  result = v36 + v38;
  if (__OFADD__(v36, v38))
  {
LABEL_55:
    __break(1u);
  }

  return result;
}

uint64_t MLS.FramedContent.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.FramedContent.groupID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

void MLS.FramedContent.sender.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  *a1 = *(v1 + 24);
  *(a1 + 4) = v2;
}

uint64_t MLS.FramedContent.sender.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 24) = *result;
  *(v1 + 28) = v2;
  return result;
}

uint64_t MLS.FramedContent.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[10];
  v25 = v1[11];
  v26 = v2;
  v4 = v1[12];
  v27[0] = v1[13];
  *(v27 + 9) = *(v1 + 217);
  v5 = v1[8];
  v7 = v1[6];
  v21 = v1[7];
  v6 = v21;
  v22 = v5;
  v8 = v1[8];
  v9 = v1[10];
  v23 = v1[9];
  v10 = v23;
  v24 = v9;
  v11 = v1[4];
  v18[0] = v1[3];
  v18[1] = v11;
  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  v19 = v1[5];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[13];
  *(a1 + 169) = *(v1 + 217);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_26BE71438(v18, &v17);
}

__n128 MLS.FramedContent.content.setter(uint64_t a1)
{
  v3 = v1[12];
  v14[8] = v1[11];
  v14[9] = v3;
  v15[0] = v1[13];
  *(v15 + 9) = *(v1 + 217);
  v4 = v1[8];
  v14[4] = v1[7];
  v14[5] = v4;
  v5 = v1[10];
  v14[6] = v1[9];
  v14[7] = v5;
  v6 = v1[4];
  v14[0] = v1[3];
  v14[1] = v6;
  v7 = v1[6];
  v14[2] = v1[5];
  v14[3] = v7;
  sub_26BE6FD84(v14);
  v8 = *(a1 + 144);
  v1[11] = *(a1 + 128);
  v1[12] = v8;
  v1[13] = *(a1 + 160);
  *(v1 + 217) = *(a1 + 169);
  v9 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v9;
  v10 = *(a1 + 112);
  v1[9] = *(a1 + 96);
  v1[10] = v10;
  v11 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v13;
  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_26BEDCAFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 233))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 28);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BEDCB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 232) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 233) = 0;
    }

    if (a2)
    {
      *(result + 28) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26BEDCC10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 185))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 184);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BEDCC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
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
    *(result + 184) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = -a2;
    }
  }

  return result;
}

void sub_26BEDCCE4(_OWORD *a1)
{
  v2 = a1[9];
  v40[8] = a1[8];
  v40[9] = v2;
  v41[0] = a1[10];
  *(v41 + 9) = *(a1 + 169);
  v3 = a1[5];
  v40[4] = a1[4];
  v40[5] = v3;
  v4 = a1[7];
  v40[6] = a1[6];
  v40[7] = v4;
  v5 = a1[1];
  v40[0] = *a1;
  v40[1] = v5;
  v6 = a1[3];
  v40[2] = a1[2];
  v40[3] = v6;
  v7 = sub_26BE6917C(v40);
  if (v7)
  {
    if (v7 == 1)
    {
      nullsub_1();
      v9 = v8[9];
      v36 = v8[8];
      v37 = v9;
      v38 = v8[10];
      v39 = *(v8 + 22);
      v10 = v8[5];
      v32 = v8[4];
      v33 = v10;
      v11 = v8[7];
      v34 = v8[6];
      v35 = v11;
      v12 = v8[1];
      v28 = *v8;
      v29 = v12;
      v13 = v8[3];
      v30 = v8[2];
      v31 = v13;
      sub_26BF31160(&v28);
    }

    else
    {
      nullsub_1();
      v20 = v19[7];
      v34 = v19[6];
      v35 = v20;
      v36 = v19[8];
      *&v37 = *(v19 + 18);
      v21 = v19[3];
      v30 = v19[2];
      v31 = v21;
      v22 = v19[5];
      v32 = v19[4];
      v33 = v22;
      v23 = v19[1];
      v28 = *v19;
      v29 = v23;
      sub_26BED61D4(&v28);
    }

    return;
  }

  nullsub_1();
  v15 = *v14;
  v16 = v14[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v25 = *(v15 + 16);
    v24 = *(v15 + 24);
    v18 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(v16);
    goto LABEL_15;
  }

  if (__OFSUB__(HIDWORD(v15), v15))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v18 = HIDWORD(v15) - v15;
LABEL_15:
  v26 = sub_26BF30414(v18);
  if (!v1)
  {
    v27 = v26;
    sub_26BE11228(v15, v16);
    if (__OFADD__(v27, v18))
    {
      __break(1u);
      goto LABEL_19;
    }
  }
}

void sub_26BEDCE9C(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  switch(v4)
  {
    case 3:
      sub_26BED6530(&v13);
      if (v2)
      {
        return;
      }

      v31 = v19;
      v32 = v20;
      v33 = v21;
      *&v34 = v22;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v30 = v18;
      v25 = v13;
      v26 = v14;
      sub_26BE7157C(&v25);
      goto LABEL_10;
    case 2:
      sub_26BF3182C(&v13);
      if (v2)
      {
        return;
      }

      v33 = v21;
      v34 = v22;
      *v35 = v23;
      *&v35[16] = v24;
      v29 = v17;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      sub_26BE82200(&v25);
      goto LABEL_10;
    case 1:
      v5 = sub_26BF2F7B0();
      if (v2)
      {
        return;
      }

      *&v25 = v5;
      *(&v25 + 1) = v6;
      sub_26BE8220C(&v25);
LABEL_10:
      v7 = v34;
      a2[8] = v33;
      a2[9] = v7;
      a2[10] = *v35;
      *(a2 + 169) = *&v35[9];
      v8 = v30;
      a2[4] = v29;
      a2[5] = v8;
      v9 = v32;
      a2[6] = v31;
      a2[7] = v9;
      v10 = v26;
      *a2 = v25;
      a2[1] = v10;
      v11 = v28;
      a2[2] = v27;
      a2[3] = v11;
      return;
  }

  sub_26BE01600();
  swift_allocError();
  *v12 = 5;
  swift_willThrow();
}

double sub_26BEDD03C@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_26BF2F7B0();
  if (!v2)
  {
    v7 = v4;
    v8 = v5;
    v9 = sub_26BEEE594();
    if (v10)
    {
      sub_26BE01600();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
LABEL_4:
      sub_26BE00258(v7, v8);
      return result;
    }

    v12 = v9;
    sub_26BED5E48(&v35);
    v13 = v35;
    v14 = v36;
    v15 = sub_26BF2F7B0();
    v24 = v16;
    v17 = sub_26BEE62D4();
    if ((v17 & 0x100) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
      sub_26BE00258(v15, v24);
      goto LABEL_4;
    }

    LOBYTE(v35) = v17;
    sub_26BEDCE9C(&v35, v25);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 28) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v24;
    v19 = v33;
    *(a2 + 176) = v32;
    *(a2 + 192) = v19;
    *(a2 + 208) = v34[0];
    *(a2 + 217) = *(v34 + 9);
    v20 = v29;
    *(a2 + 112) = v28;
    *(a2 + 128) = v20;
    v21 = v31;
    *(a2 + 144) = v30;
    *(a2 + 160) = v21;
    v22 = v25[1];
    *(a2 + 48) = v25[0];
    *(a2 + 64) = v22;
    result = *&v26;
    v23 = v27;
    *(a2 + 80) = v26;
    *(a2 + 96) = v23;
  }

  return result;
}

uint64_t MLS.GroupInfo.verifySignature(publicKey:)(void *a1)
{
  v3 = v1;
  v5 = _s12GroupInfoTBSVMa(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(v3 + 48);
  v32 = *(v3 + 32);
  v33 = v9;
  v10 = *(v3 + 72);
  v34 = *(v3 + 64);
  v11 = *(v3 + 16);
  v30 = *v3;
  v31 = v11;
  v12 = type metadata accessor for MLS.GroupInfo(0);
  sub_26BE8236C(v3 + v12[6], &v8[*(v6 + 32)]);
  v13 = *(v3 + v12[7]);
  v14 = v33;
  *(v8 + 2) = v32;
  *(v8 + 3) = v14;
  v15 = v34;
  v16 = v31;
  *v8 = v30;
  *(v8 + 1) = v16;
  *(v8 + 8) = v15;
  *(v8 + 9) = v10;
  *&v8[*(v6 + 36)] = v13;
  v28 = xmmword_26C00BBD0;
  v29 = 0;
  sub_26BE001A8(&v30, v27);

  sub_26BDFF8E4(v8);
  if (!v2)
  {
    v17 = v28;
    v18 = *(&v28 + 1) >> 62;
    if ((*(&v28 + 1) >> 62) > 1)
    {
      if (v18 != 2)
      {
LABEL_11:
        v20 = sub_26C00909C();
        v22 = v21;
        sub_26BEDD44C(v8);
        sub_26BE00258(v17, *(&v17 + 1));
        v23 = a1[3];
        v24 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v23);
        LOBYTE(v3) = MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0x666E4970756F7247, 0xEC0000005342546FLL, v20, v22, *(v3 + v12[8]), *(v3 + v12[8] + 8), v23, v24);
        sub_26BE00258(v20, v22);
        return v3 & 1;
      }

      v19 = *(v28 + 24);
    }

    else
    {
      if (!v18)
      {
        goto LABEL_11;
      }

      v19 = v28 >> 32;
    }

    if (v19 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BEDD44C(v8);
  sub_26BE00258(v28, *(&v28 + 1));
  return v3 & 1;
}

uint64_t sub_26BEDD44C(uint64_t a1)
{
  v2 = _s12GroupInfoTBSVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BEDD4A8(unsigned __int16 *a1)
{
  v104 = *MEMORY[0x277D85DE8];
  LOWORD(v90) = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  *(&v102 + 1) = MEMORY[0x277D838B0];
  *v103 = MEMORY[0x277CC9C18];
  *&v101 = &v90;
  *(&v101 + 1) = &v90 + 2;
  __swift_project_boxed_opaque_existential_1(&v101, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v101);
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v9)
    {
      v2 = BYTE6(v8);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v2 = 0;
    goto LABEL_11;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  v2 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v2 = HIDWORD(v7) - v7;
  }

LABEL_11:
  v12 = sub_26BF30414(v2);
  if (v1)
  {
    return;
  }

  v3 = v12;
  sub_26BE11228(v7, v8);
  v13 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = v13 + 2;
  if (__OFADD__(v13, 2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *&v90 = bswap64(*(a1 + 3));
  *(&v102 + 1) = v5;
  *v103 = v6;
  *&v101 = &v90;
  *(&v101 + 1) = &v90 + 8;
  __swift_project_boxed_opaque_existential_1(&v101, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v101);
  v2 = (v14 + 8);
  if (__OFADD__(v14, 8))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = *(a1 + 7);
  LOWORD(v90) = bswap32(a1[16]) >> 16;
  *(&v102 + 1) = v5;
  *v103 = v6;
  *&v101 = &v90;
  *(&v101 + 1) = &v90 + 2;
  __swift_project_boxed_opaque_existential_1(&v101, v5);

  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v101);
  *&v101 = v15;
  v1 = 0;
  v16 = 0;
  v17 = sub_26BE7D80C(&v101);

  v18 = v17 + 2;
  if (__OFADD__(v17, 2))
  {
    goto LABEL_34;
  }

  v19 = &v18[v2];
  if (__OFADD__(v2, v18))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = type metadata accessor for MLS.GroupState(0);
  sub_26BE54A40((a1 + v3[8]));
  v21 = __OFADD__(v19, v20);
  v22 = &v19[v20];
  if (!v21)
  {
    v23 = a1 + v3[9];
    v24 = *(v23 + 1);
    v25 = *(v23 + 2);
    v26 = *(v23 + 3);
    v27 = *(v23 + 4);
    LOWORD(v101) = *v23;
    *(&v101 + 1) = v24;
    *&v102 = v25;
    *(&v102 + 1) = v26;
    *v103 = v27;
    sub_26BE00608(v24, v25);
    sub_26BE00608(v26, v27);
    v28 = sub_26BE2F818(&v101);
    v61 = v3;
    v2 = *(&v102 + 1);
    v29 = *v103;
    sub_26BE00258(*(&v101 + 1), v102);
    sub_26BE00258(v2, v29);
    v21 = __OFADD__(v22, v28);
    v31 = &v22[v28];
    if (v21)
    {
      __break(1u);
      goto LABEL_41;
    }

    v3 = v61;
    v32 = *(a1 + v61[10]);
    v60 = xmmword_26C00BBD0;
    v101 = xmmword_26C00BBD0;
    *&v102 = 0;
    v33 = sub_26BEEAC24(0, v32);
    v34 = sub_26BF30414(v33);
    sub_26BF2A30C(&v101);
    sub_26BE00258(v101, *(&v101 + 1));
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      __break(1u);
    }

    else
    {
      v36 = &v31[v35];
      if (!__OFADD__(v31, v35))
      {
        v1 = 0;
        sub_26BEB5330(a1 + v61[11]);
        v38 = &v36[v37];
        if (__OFADD__(v36, v37))
        {
          __break(1u);
          goto LABEL_53;
        }

        v39 = a1 + v61[12];
        v40 = *(v39 + 5);
        v41 = *(v39 + 3);
        v75 = *(v39 + 4);
        v76 = v40;
        v42 = *(v39 + 5);
        v77 = *(v39 + 6);
        v43 = *(v39 + 1);
        v72[0] = *v39;
        v72[1] = v43;
        v44 = *(v39 + 3);
        v46 = *v39;
        v45 = *(v39 + 1);
        v73 = *(v39 + 2);
        v74 = v44;
        v68 = v75;
        v69 = v42;
        v70 = *(v39 + 6);
        v64 = v46;
        v65 = v45;
        v78 = *(v39 + 14);
        v71 = *(v39 + 14);
        v66 = v73;
        v67 = v41;
        sub_26BEDFD1C(v72, &v101);
        v47 = sub_26BF92D78(&v64);
        v62[4] = v68;
        v62[5] = v69;
        v62[6] = v70;
        v63 = v71;
        v62[0] = v64;
        v62[1] = v65;
        v62[2] = v66;
        v62[3] = v67;
        sub_26BE717DC(v62);
        v48 = &v38[v47];
        if (__OFADD__(v38, v47))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        LODWORD(v90) = bswap32(*(a1 + v61[13]));
        *(&v102 + 1) = v5;
        *v103 = v6;
        *&v101 = &v90;
        *(&v101 + 1) = &v90 + 4;
        __swift_project_boxed_opaque_existential_1(&v101, v5);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v101);
        v21 = __OFADD__(v48, 4);
        v49 = v48 + 4;
        if (v21)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_26BE136C4((a1 + v61[14]));
        v2 = &v49[v50];
        if (__OFADD__(v49, v50))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (*(*(a1 + v61[17]) + 16) || *(*(a1 + v61[18]) + 16))
        {
          sub_26BE01654();
          swift_allocError();
          *v51 = 0xD000000000000029;
          *(v51 + 8) = 0x800000026C02B3B0;
          *(v51 + 112) = 2;
          swift_willThrow();
          return;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v52 = *(a1 + v3[15]);
  v101 = v60;
  *&v102 = 0;
  v53 = sub_26BEDFB9C(0, v52);
  if (v1)
  {
    sub_26BE00258(v101, *(&v101 + 1));
    return;
  }

  v16 = v53;
  v30 = sub_26BF30414(v53);
  *&v60 = 0;
LABEL_41:
  v54 = v30;
  sub_26BF2A30C(&v101);
  sub_26BE00258(v101, *(&v101 + 1));
  v55 = v54 + v16;
  if (__OFADD__(v54, v16))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v34 = v2 + v55;
  if (__OFADD__(v2, v55))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_26BE5CE40(a1 + v61[16], &v90);
  if (!*(&v91 + 1))
  {
LABEL_48:
    sub_26BE2E258(&v90, &qword_28045E730, &qword_26C011528);
    LOBYTE(v90) = 0;
    *(&v102 + 1) = v5;
    *v103 = v6;
    *&v101 = &v90;
    *(&v101 + 1) = &v90 + 1;
    __swift_project_boxed_opaque_existential_1(&v101, v5);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v101);
    v57 = 1;
    goto LABEL_49;
  }

  *&v103[96] = v98;
  *&v103[112] = v99;
  *&v103[128] = v100;
  *&v103[32] = v94;
  *&v103[48] = v95;
  *&v103[64] = v96;
  *&v103[80] = v97;
  v101 = v90;
  v102 = v91;
  *v103 = v92;
  *&v103[16] = v93;
  LOBYTE(v81) = 1;
  *(&v91 + 1) = v5;
  *&v92 = v6;
  *&v90 = &v81;
  *(&v90 + 1) = &v81 + 1;
  __swift_project_boxed_opaque_existential_1(&v90, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v90);
  sub_26BE10BE4(&v101);
  if (v60)
  {
    sub_26BE5CF0C(&v101);
    return;
  }

  v5 = v56;
  *&v98 = *&v103[136];
  v96 = *&v103[104];
  v97 = *&v103[120];
  v92 = *&v103[40];
  v93 = *&v103[56];
  v94 = *&v103[72];
  v95 = *&v103[88];
  v90 = *&v103[8];
  v91 = *&v103[24];
  v87 = *&v103[104];
  v88 = *&v103[120];
  v89 = *&v103[136];
  v83 = *&v103[40];
  v84 = *&v103[56];
  v85 = *&v103[72];
  v86 = *&v103[88];
  v81 = *&v103[8];
  v82 = *&v103[24];
  sub_26BE5CEB0(&v90, v79);
  sub_26BE7DD28(&v81);
LABEL_53:
  v58 = v37;
  v79[6] = v87;
  v79[7] = v88;
  v80 = v89;
  v79[2] = v83;
  v79[3] = v84;
  v79[4] = v85;
  v79[5] = v86;
  v79[0] = v81;
  v79[1] = v82;
  sub_26BE00854(v79);
  sub_26BE5CF0C(&v101);
  v59 = v5 + v58;
  if (__OFADD__(v5, v58))
  {
LABEL_63:
    __break(1u);
    return;
  }

  v21 = __OFADD__(v59, 1);
  v57 = v59 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_57;
  }

LABEL_49:
  if (__OFADD__(v34, v57))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }
}

void sub_26BEDDD14(uint64_t a1@<X8>)
{
  v3 = v1;
  v241[5] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MLS.KeySchedule(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26BEE6180();
  if ((v11 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    return;
  }

  v12 = v11;
  v13 = sub_26BF2F7B0();
  if (!v2)
  {
    v188 = v13;
    v189 = v14;
    v15 = sub_26BEEE594();
    if (v16)
    {
      sub_26BE01600();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
      v24 = v188;
      v25 = v189;
      goto LABEL_7;
    }

    v19 = v15;
    sub_26BE54498(&v206);
    v184 = v12;
    v186 = a1;
    v187 = v7;
    v185 = v19;
    v20 = v206;
    v21 = *(&v206 + 1);
    v22 = v207;
    v23 = *(&v207 + 1);
    sub_26BE554BC(v10);
    v179 = v22;
    v180 = v20;
    v182 = v21;
    v183 = v10;
    v181 = v23;
    v26 = sub_26BEE6180();
    if ((v26 & 0x10000) != 0)
    {

      sub_26BE01600();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
      sub_26BE00258(v188, v189);
      goto LABEL_12;
    }

    v178 = v26;
    v27 = sub_26BF2F7B0();
    v28 = v183;
    v176 = v27;
    v177 = v31;
    v174 = sub_26BF2F7B0();
    v175 = v32;
    v34 = *v1;
    v33 = v1[1];
    v35 = v1[2];
    sub_26BE00608(*v1, v33);
    sub_26BE00608(v34, v33);
    sub_26BF30764(v1, &v206);
    if (BYTE8(v206))
    {
      sub_26BE00258(*v1, v1[1]);
      *v1 = v34;
      v1[1] = v33;
      v36 = v33;
      v37 = v34;
      v1[2] = v35;
LABEL_17:
      sub_26BE00258(v37, v36);

      *v3 = v34;
      v3[1] = v33;
      v3[2] = v35;
      sub_26BE01600();
      swift_allocError();
      *v38 = 1;
      swift_willThrow();
      sub_26BE00258(v188, v189);
      sub_26BE00258(v176, v177);
      sub_26BE00258(v174, v175);
      v30 = v28;
      goto LABEL_13;
    }

    v39 = v206;
    v40 = 100000000;
    sub_26BE00258(v34, v33);
    if (v39 > 100000000)
    {
      sub_26BE01600();
      swift_allocError();
      *v41 = 5;
      swift_willThrow();
      goto LABEL_14;
    }

    v168 = v35;
    v42 = sub_26BF2A44C(v39);
    if (v43 >> 60 == 15)
    {
      v37 = *v3;
      v36 = v3[1];
      v35 = v168;
      goto LABEL_17;
    }

    *&v165 = v34;
    *(&v165 + 1) = v33;
    *&v206 = v42;
    *(&v206 + 1) = v43;
    v166 = v42;
    v167 = v42 >> 32;
    v173 = v44;
    *&v207 = v44;
    v169 = BYTE6(v43);
    v170 = v43 >> 62;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v170 > 1)
      {
        if (v170 == 2)
        {
          v46 = *(v166 + 3);
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = v169;
        if (v170)
        {
          v46 = v167;
        }
      }

      v47 = __OFSUB__(v46, v173);
      v48 = v46 - v173;
      if (v47)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        v83 = *v3;
        v84 = v3[1];
        v170 = v3[2];
        sub_26BE00608(v83, v84);
        v171 = v84;
        v172 = v83;
        sub_26BE00608(v83, v84);
        sub_26BF30764(v3, &v206);
LABEL_93:
        if (BYTE8(v206))
        {
          sub_26BE00258(*v3, v3[1]);
          v87 = v171;
          v86 = v172;
          *v3 = v172;
          v3[1] = v87;
          v3[2] = v170;
LABEL_99:
          sub_26BE00258(v86, v87);

          v93 = v171;
          *v3 = v172;
          v3[1] = v93;
          v3[2] = v170;
          goto LABEL_100;
        }

        v88 = v206;
        sub_26BE00258(v172, v171);
        if (v88 > 100000000)
        {
          sub_26BE01600();
          swift_allocError();
          *v89 = 5;
          swift_willThrow();
          goto LABEL_92;
        }

        v90 = sub_26BF2A44C(v88);
        v168 = v90;
        v169 = v92;
        if (v91 >> 60 == 15)
        {
          v86 = *v3;
          v87 = v3[1];
          goto LABEL_99;
        }

        v96 = v91;
        v238 = v168;
        v239 = v91;
        v166 = MEMORY[0x277D84F90];
        v240 = v169;
        while (2)
        {
          v97 = v96 >> 62;
          if ((v96 >> 62) > 1)
          {
            if (v97 == 2)
            {
              v98 = *(v168 + 24);
            }

            else
            {
              v98 = 0;
            }
          }

          else if (v97)
          {
            v98 = v168 >> 32;
          }

          else
          {
            v98 = BYTE6(v96);
          }

          v47 = __OFSUB__(v98, v169);
          v99 = v98 - v169;
          if (v47)
          {
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            sub_26BE2E410(v90, &v206);
            *(&v208[5] + 8) = v236[5];
            *(&v208[6] + 8) = v236[6];
            *(&v208[7] + 8) = v236[7];
            *(&v208[1] + 8) = v236[1];
            *(&v208[2] + 8) = v236[2];
            *(&v208[3] + 8) = v236[3];
            *(&v208[4] + 8) = v236[4];
            *(&v208[8] + 1) = v237;
            *(v208 + 8) = v236[0];
            goto LABEL_187;
          }

          if (v99 < 1)
          {
            if (v97 > 1)
            {
              if (v97 == 2)
              {
                v137 = *(v168 + 24);
              }

              else
              {
                v137 = 0;
              }
            }

            else if (v97)
            {
              v137 = v168 >> 32;
            }

            else
            {
              v137 = BYTE6(v96);
            }

            if (__OFSUB__(v137, v169))
            {
              goto LABEL_198;
            }

            if (v137 != v169)
            {
              sub_26BE01654();
              swift_allocError();
              *v140 = 0;
              v140[112] = 1;
              goto LABEL_171;
            }

            sub_26BE00258(v168, v96);
            sub_26BE00258(v172, v171);
            v139 = sub_26BEE62D4();
            if ((v139 & 0x100) == 0)
            {
              if (v139)
              {
                if (v139 == 1)
                {
                  sub_26BE10E8C();
                  sub_26BE7DE38(v236);
                  v90 = v202;
                  goto LABEL_195;
                }

                sub_26BE01600();
                swift_allocError();
                v95 = 5;
LABEL_101:
                *v94 = v95;
                swift_willThrow();
                sub_26BE00258(v188, v189);
                goto LABEL_102;
              }

              v207 = 0u;
              memset(v208, 0, sizeof(v208));
              v206 = 0u;
LABEL_187:
              v141 = type metadata accessor for MLS.GroupState(0);
              v142 = v141[8];
              v167 = type metadata accessor for MLS.TreeKEMPrivateKey;
              v143 = v186;
              sub_26BEDFDD8(v183, v186 + v142, type metadata accessor for MLS.TreeKEMPrivateKey);
              v144 = v141[11];
              v164 = type metadata accessor for MLS.KeySchedule;
              sub_26BEDFDD8(v187, v143 + v144, type metadata accessor for MLS.KeySchedule);
              sub_26BE038A8(v241, v143 + v141[14]);
              sub_26BE5CE40(&v206, v202);
              v146 = v176;
              v145 = v177;
              sub_26BE00608(v176, v177);
              sub_26BE00608(v174, v175);
              sub_26BEDFD1C(&v192, &v224);
              v147 = MEMORY[0x277D84F90];
              v170 = sub_26C001A78(MEMORY[0x277D84F90]);
              v148 = sub_26C00528C(v147);
              v149 = v141[16];
              v171 = v141[15];
              v172 = v148;
              v150 = (v143 + v149);
              v150[9] = 0u;
              v150[10] = 0u;
              v150[7] = 0u;
              v150[8] = 0u;
              v150[5] = 0u;
              v150[6] = 0u;
              v150[3] = 0u;
              v150[4] = 0u;
              v150[1] = 0u;
              v150[2] = 0u;
              *v150 = 0u;
              v169 = v141[17];
              *(&v165 + 1) = sub_26C001A78(v147);
              v168 = v141[18];
              *&v165 = sub_26C00528C(v147);
              sub_26BE717DC(&v192);
              sub_26BE00258(v146, v145);
              v151 = v174;
              sub_26BE00258(v174, v175);
              sub_26BE2E258(&v206, &qword_28045E730, &qword_26C011528);
              __swift_destroy_boxed_opaque_existential_1(v241);
              sub_26BEDFD78(v187, v164);
              sub_26BEDFD78(v183, v167);
              *(v143 + v141[19]) = 0;
              v152 = v141[20];
              v153 = type metadata accessor for MLS.GroupInfo(0);
              (*(*(v153 - 8) + 56))(v143 + v152, 1, 1, v153);
              *v143 = v184;
              v154 = v189;
              *(v143 + 8) = v188;
              *(v143 + 16) = v154;
              *(v143 + 24) = v185;
              *(v143 + 32) = v180;
              *(v143 + 40) = v182;
              v155 = v178;
              *(v143 + 48) = v179;
              *(v143 + 56) = v181;
              v156 = v143 + v141[9];
              *v156 = v155;
              v157 = v177;
              *(v156 + 8) = v176;
              *(v156 + 16) = v157;
              v158 = v175;
              *(v156 + 24) = v151;
              *(v156 + 32) = v158;
              *(v143 + v141[10]) = v40;
              v159 = v143 + v141[12];
              v160 = v197;
              *(v159 + 64) = v196;
              *(v159 + 80) = v160;
              *(v159 + 96) = v198;
              *(v159 + 112) = v199;
              v161 = v193;
              *v159 = v192;
              *(v159 + 16) = v161;
              v162 = v195;
              *(v159 + 32) = v194;
              *(v159 + 48) = v162;
              *(v143 + v141[13]) = v173;
              *(v143 + v171) = v166;
              sub_26BEDFE40(v202, v150);

              *(v143 + v169) = v170;
              *(v143 + v168) = v172;
              return;
            }

LABEL_100:
            sub_26BE01600();
            swift_allocError();
            v95 = 1;
            goto LABEL_101;
          }

          v100 = v240;
          v101 = v168;
          sub_26BE00608(v168, v96);
          sub_26BE00608(v101, v96);
          sub_26BF30764(&v238, &v206);
          if (BYTE8(v206))
          {
            sub_26BE00258(v238, v239);
            v105 = v96;
            v104 = v168;
LABEL_170:
            sub_26BE00258(v104, v105);
            v238 = v168;
            v239 = v96;
            v240 = v100;
            sub_26BE01600();
            swift_allocError();
            *v138 = 1;
LABEL_171:
            swift_willThrow();
            goto LABEL_176;
          }

          v102 = v206;
          sub_26BE00258(v168, v96);
          v90 = v240;
          v47 = __OFADD__(v240, v102);
          v103 = v240 + v102;
          if (v47)
          {
            goto LABEL_190;
          }

          v104 = v238;
          v105 = v239;
          v106 = v239 >> 62;
          if ((v239 >> 62) <= 1)
          {
            if (v106)
            {
              v107 = v238 >> 32;
            }

            else
            {
              v107 = BYTE6(v239);
            }

            goto LABEL_121;
          }

          if (v106 == 2)
          {
            v107 = *(v238 + 24);
LABEL_121:
            if (v107 < v103)
            {
              goto LABEL_170;
            }
          }

          else if (v103 > 0)
          {
            goto LABEL_170;
          }

          if (v103 < v240)
          {
            goto LABEL_191;
          }

          v90 = sub_26C00909C();
          v108 = v90;
          v110 = v109;
          v240 = v103;
          v111 = v109 >> 62;
          if ((v109 >> 62) > 1)
          {
            if (v111 != 2)
            {
              goto LABEL_132;
            }

            v90 = *(v90 + 16);
            v112 = *(v108 + 24);
          }

          else
          {
            if (!v111)
            {
              goto LABEL_132;
            }

            v90 = v90;
            v112 = v108 >> 32;
          }

          if (v112 < v90)
          {
            goto LABEL_192;
          }

LABEL_132:
          *&v165 = sub_26C00909C();
          *(&v165 + 1) = v113;
          sub_26BE00258(v108, v110);
          sub_26BE00258(v168, v96);
          sub_26BF3182C(v222);
          v218 = v222[8];
          v219 = v222[9];
          v220 = v222[10];
          v221 = v223;
          v214 = v222[4];
          v215 = v222[5];
          v216 = v222[6];
          v217 = v222[7];
          v210 = v222[0];
          v211 = v222[1];
          v212 = v222[2];
          v213 = v222[3];
          LOBYTE(v191) = 0;
          v169 = v240 + 1;
          if (__OFADD__(v240, 1))
          {
            goto LABEL_193;
          }

          v114 = v238;
          v168 = v239;
          v164 = (v239 >> 62);
          if ((v239 >> 62) <= 1)
          {
            if (v164)
            {
              v115 = v238 >> 32;
            }

            else
            {
              v115 = BYTE6(v168);
            }

            goto LABEL_139;
          }

          if (v164 == 2)
          {
            v115 = *(v238 + 24);
LABEL_139:
            if (v115 < v169)
            {
              goto LABEL_164;
            }
          }

          else if (v169 > 0)
          {
            goto LABEL_164;
          }

          *&v206 = v238;
          *(&v206 + 1) = v168;
          if (v169 < v240)
          {
            goto LABEL_194;
          }

          v116 = v169;
          *&v202[0] = v240;
          *(&v202[0] + 1) = v169;
          sub_26BE00608(v238, v168);
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
          v118 = sub_26BE016A8();
          sub_26BE016FC();
          v163[1] = v118;
          v163[2] = v117;
          sub_26C008E1C();
          sub_26BE00258(v206, *(&v206 + 1));
          v240 = v116;
          LODWORD(v167) = v191;
          if (v191)
          {
            if (v167 != 1)
            {
              sub_26BE01600();
              swift_allocError();
              v136 = 5;
LABEL_175:
              *v135 = v136;
              swift_willThrow();
              sub_26BE00258(v165, *(&v165 + 1));
              sub_26BE718E0(&v210);
LABEL_176:

              sub_26BE00258(v238, v239);
LABEL_92:
              sub_26BE00258(*v3, v3[1]);
              v85 = v171;
              *v3 = v172;
              v3[1] = v85;
              v3[2] = v170;
              swift_willThrow();
              sub_26BE00258(v188, v189);

LABEL_102:
              sub_26BE717DC(&v192);
              sub_26BE00258(v176, v177);
              sub_26BE00258(v174, v175);
              __swift_destroy_boxed_opaque_existential_1(v241);
LABEL_85:
              sub_26BEDFD78(v187, type metadata accessor for MLS.KeySchedule);
LABEL_12:
              v30 = v183;
LABEL_13:
              sub_26BEDFD78(v30, type metadata accessor for MLS.TreeKEMPrivateKey);
              return;
            }

            v191 = 0;
            v119 = v169 + 4;
            if (__OFADD__(v169, 4))
            {
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
              return;
            }

            if (v164 <= 1)
            {
              if (v164)
              {
                v120 = v114 >> 32;
              }

              else
              {
                v120 = BYTE6(v168);
              }

              goto LABEL_153;
            }

            if (v164 == 2)
            {
              v120 = *(v114 + 24);
LABEL_153:
              if (v120 < v119)
              {
                goto LABEL_164;
              }
            }

            else if (v119 > 0)
            {
              goto LABEL_164;
            }

            *&v206 = v114;
            *(&v206 + 1) = v168;
            if (v119 < v169)
            {
              goto LABEL_197;
            }

            *&v202[0] = v169;
            *(&v202[0] + 1) = v169 + 4;
            sub_26BE00608(v114, v168);
            sub_26C008E1C();
            sub_26BE00258(v206, *(&v206 + 1));
            v121 = 0;
            LODWORD(v167) = bswap32(v191);
            v240 = v119;
            v169 = v119;
          }

          else
          {
            v121 = 1;
          }

          v232 = v218;
          v233 = v219;
          v234 = v220;
          v228 = v214;
          v229 = v215;
          v230 = v216;
          v231 = v217;
          v224 = v210;
          v225 = v211;
          v226 = v212;
          v227 = v213;
          v208[7] = v218;
          v208[8] = v219;
          v209[0] = v220;
          v208[3] = v214;
          v208[4] = v215;
          v208[5] = v216;
          v208[6] = v217;
          v207 = v210;
          v208[0] = v211;
          v235 = v221;
          v190 = v121;
          v206 = v165;
          *&v209[1] = v221;
          v208[1] = v212;
          v208[2] = v213;
          DWORD2(v209[1]) = v167;
          BYTE12(v209[1]) = v121;
          sub_26BE7009C(&v206, v202);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v166 = sub_26BEEC910(0, *(v166 + 2) + 1, 1, v166);
          }

          v123 = *(v166 + 2);
          v122 = *(v166 + 3);
          if (v123 >= v122 >> 1)
          {
            v166 = sub_26BEEC910((v122 > 1), v123 + 1, 1, v166);
          }

          v202[0] = v165;
          v202[9] = v232;
          v202[10] = v233;
          v202[11] = v234;
          v203 = v235;
          v202[5] = v228;
          v202[6] = v229;
          v202[7] = v230;
          v202[8] = v231;
          v202[1] = v224;
          v202[2] = v225;
          v202[3] = v226;
          v202[4] = v227;
          v204 = v167;
          v205 = v190;
          v90 = sub_26BE700F8(v202);
          v124 = v166;
          *(v166 + 2) = v123 + 1;
          v125 = &v124[208 * v123];
          *(v125 + 2) = v206;
          v126 = v208[2];
          v128 = v207;
          v127 = v208[0];
          *(v125 + 5) = v208[1];
          *(v125 + 6) = v126;
          *(v125 + 3) = v128;
          *(v125 + 4) = v127;
          v129 = v208[6];
          v131 = v208[3];
          v130 = v208[4];
          *(v125 + 9) = v208[5];
          *(v125 + 10) = v129;
          *(v125 + 7) = v131;
          *(v125 + 8) = v130;
          v133 = v208[8];
          v132 = v209[0];
          v134 = v208[7];
          *(v125 + 221) = *(v209 + 13);
          *(v125 + 12) = v133;
          *(v125 + 13) = v132;
          *(v125 + 11) = v134;
          v96 = v239;
          v168 = v238;
          continue;
        }
      }

      if (v48 < 1)
      {
        v40 = v45;
        v76 = *(&v206 + 1) >> 62;
        if ((*(&v206 + 1) >> 62) > 1)
        {
          if (v76 == 2)
          {
            v77 = *(v206 + 24);
          }

          else
          {
            v77 = 0;
          }
        }

        else if (v76)
        {
          v77 = v206 >> 32;
        }

        else
        {
          v77 = BYTE14(v206);
        }

        if (__OFSUB__(v77, v173))
        {
          __break(1u);
LABEL_164:
          sub_26BE01600();
          swift_allocError();
          v136 = 1;
          goto LABEL_175;
        }

        if (v77 != v173)
        {
          sub_26BE01654();
          swift_allocError();
          *v81 = 0;
          v81[112] = 1;
          swift_willThrow();
          goto LABEL_75;
        }

        sub_26BE00258(v206, *(&v206 + 1));
        sub_26BE00258(v165, *(&v165 + 1));
        sub_26BEB563C(v187);
        sub_26BF93F90(v200);
        v196 = v200[4];
        v197 = v200[5];
        v198 = v200[6];
        v199 = v201;
        v192 = v200[0];
        v193 = v200[1];
        v194 = v200[2];
        v195 = v200[3];
        v173 = sub_26BEE6028();
        if ((v173 & 0x100000000) != 0)
        {

          sub_26BE01600();
          swift_allocError();
          *v82 = 1;
          swift_willThrow();
          sub_26BE00258(v188, v189);
          sub_26BE717DC(&v192);
          sub_26BE00258(v176, v177);
          sub_26BE00258(v174, v175);
          goto LABEL_85;
        }

        sub_26BE108C0();
        goto LABEL_91;
      }

      v172 = v45;
      LOWORD(v222[0]) = 0;
      v49 = v173 + 2;
      if (__OFADD__(v173, 2))
      {
        goto LABEL_87;
      }

      v40 = *(&v206 + 1);
      v50 = v206;
      v51 = *(&v206 + 1) >> 62;
      if ((*(&v206 + 1) >> 62) <= 1)
      {
        break;
      }

      if (v51 == 2)
      {
        v52 = *(v206 + 24);
        goto LABEL_38;
      }

      if (v49 > 0)
      {
        goto LABEL_74;
      }

LABEL_41:
      v202[0] = v206;
      if (v49 < v173)
      {
        goto LABEL_88;
      }

      *&v224 = v173;
      *(&v224 + 1) = v173 + 2;
      sub_26BE00608(v206, *(&v206 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(*&v202[0], *(&v202[0] + 1));
      v53 = LOWORD(v222[0]);
      v173 = v49;
      *&v207 = v49;
      sub_26BE00608(v50, v40);
      sub_26BE00608(v50, v40);
      sub_26BF30764(&v206, v202);
      LODWORD(v171) = v53;
      if (BYTE8(v202[0]))
      {
        sub_26BE00258(v206, *(&v206 + 1));
        v78 = v40;
        v57 = v40;
        v79 = v50;
        v56 = v50;
LABEL_73:
        sub_26BE00258(v56, v57);
        *&v206 = v79;
        *(&v206 + 1) = v78;
        *&v207 = v173;
LABEL_74:
        sub_26BE01600();
        swift_allocError();
        *v80 = 1;
        swift_willThrow();
LABEL_75:

        sub_26BE00258(v206, *(&v206 + 1));
        v28 = v183;
        v35 = v168;
        v33 = *(&v165 + 1);
        v34 = v165;
LABEL_14:
        sub_26BE00258(*v3, v3[1]);
        *v3 = v34;
        v3[1] = v33;
        v3[2] = v35;
        swift_willThrow();
        sub_26BEDFD78(v28, type metadata accessor for MLS.TreeKEMPrivateKey);
        sub_26BE00258(v188, v189);

        sub_26BE00258(v176, v177);
        v24 = v174;
        v25 = v175;
LABEL_7:
        sub_26BE00258(v24, v25);
        return;
      }

      v54 = *&v202[0];
      sub_26BE00258(v50, v40);
      v47 = __OFADD__(v207, v54);
      v55 = v207 + v54;
      if (v47)
      {
        goto LABEL_89;
      }

      v57 = *(&v206 + 1);
      v56 = v206;
      v58 = *(&v206 + 1) >> 62;
      if ((*(&v206 + 1) >> 62) <= 1)
      {
        if (v58)
        {
          v59 = v206 >> 32;
        }

        else
        {
          v59 = BYTE14(v206);
        }

LABEL_50:
        if (v59 < v55)
        {
          goto LABEL_72;
        }

        goto LABEL_53;
      }

      if (v58 == 2)
      {
        v59 = *(v206 + 24);
        goto LABEL_50;
      }

      if (v55 > 0)
      {
LABEL_72:
        v79 = v50;
        v78 = v40;
        goto LABEL_73;
      }

LABEL_53:
      if (v55 < v207)
      {
        goto LABEL_90;
      }

      v60 = v50;
      v61 = sub_26C00909C();
      v62 = v61;
      v63 = v55;
      v65 = v64;
      v173 = v63;
      *&v207 = v63;
      v66 = v64 >> 62;
      if ((v64 >> 62) > 1)
      {
        if (v66 != 2)
        {
          goto LABEL_62;
        }

        v61 = *(v61 + 16);
        v67 = *(v62 + 24);
      }

      else
      {
        if (!v66)
        {
          goto LABEL_62;
        }

        v61 = v61;
        v67 = v62 >> 32;
      }

      if (v67 < v61)
      {
        __break(1u);
        goto LABEL_93;
      }

LABEL_62:
      v68 = sub_26C00909C();
      v70 = v69;
      sub_26BE00258(v62, v65);
      v71 = v40;
      v40 = v68;
      sub_26BE00258(v60, v71);
      sub_26BE00608(v68, v70);
      v45 = v172;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_26BEEBD8C(0, *(v45 + 2) + 1, 1, v45);
      }

      v73 = *(v45 + 2);
      v72 = *(v45 + 3);
      if (v73 >= v72 >> 1)
      {
        v45 = sub_26BEEBD8C((v72 > 1), v73 + 1, 1, v45);
      }

      v74 = bswap32(v171) >> 16;
      sub_26BE00258(v40, v70);
      *(v45 + 2) = v73 + 1;
      v75 = &v45[24 * v73];
      *(v75 + 16) = v74;
      *(v75 + 5) = v40;
      *(v75 + 6) = v70;
    }

    if (v51)
    {
      v52 = v206 >> 32;
    }

    else
    {
      v52 = BYTE14(v206);
    }

LABEL_38:
    if (v52 < v49)
    {
      goto LABEL_74;
    }

    goto LABEL_41;
  }
}

uint64_t MLS.GroupState.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MLS.GroupState(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  *(a3 + v7[17]) = MEMORY[0x277D84F90];
  v11 = (a3 + v7[18]);
  v11[9] = 0u;
  v11[10] = 0u;
  v11[7] = 0u;
  v11[8] = 0u;
  v11[5] = 0u;
  v11[6] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  v12 = v7[19];
  *(a3 + v12) = sub_26C001A78(v10);
  v13 = v7[20];
  *(a3 + v13) = sub_26C00528C(v10);
  *(a3 + v7[21]) = 0;
  v14 = v7[22];
  v15 = type metadata accessor for MLS.GroupInfo(0);
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  v16 = 0;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_7;
    }

    v16 = *(a1 + 16);
  }

  else
  {
    if (!v17)
    {
      goto LABEL_7;
    }

    v16 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v21 = a1;
  v22 = a2;
  v23 = v16;
  v18 = v24;
  sub_26BEDDD14(v9);
  sub_26BE00258(v21, v22);
  sub_26BE00258(a1, a2);
  sub_26BE2E258(v11, &qword_28045E730, &qword_26C011528);

  if (v18)
  {
    return sub_26BE2E258(a3 + v14, &qword_28045F090, &qword_26C01A358);
  }

  sub_26BE2E258(a3 + v14, &qword_28045F090, &qword_26C01A358);
  return sub_26BEDFCB8(v9, a3);
}

void MLS.GroupState.rawValue.getter()
{
  sub_26BEDD4A8(v0);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

uint64_t sub_26BEDF894(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 160);
  v50[8] = *(a1 + 144);
  v50[9] = v5;
  v50[10] = *(a1 + 176);
  v51 = *(a1 + 192);
  v6 = *(a1 + 96);
  v50[4] = *(a1 + 80);
  v50[5] = v6;
  v7 = *(a1 + 128);
  v50[6] = *(a1 + 112);
  v50[7] = v7;
  v8 = *(a1 + 32);
  v50[0] = *(a1 + 16);
  v50[1] = v8;
  v9 = *(a1 + 64);
  v50[2] = *(a1 + 48);
  v50[3] = v9;
  v10 = *(a1 + 200);
  v11 = v4 >> 62;
  v12 = *(a1 + 204);
  if ((v4 >> 62) <= 1)
  {
    if (!v11)
    {
      v13 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  v13 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v13);
  if (v1)
  {
    return result;
  }

  v17 = result;
  sub_26BE11228(v3, v4);
  v18 = v17 + v13;
  if (__OFADD__(v17, v13))
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = *(a1 + 160);
  v46 = *(a1 + 144);
  v47 = v19;
  v48 = *(a1 + 176);
  v49 = *(a1 + 192);
  v20 = *(a1 + 96);
  v42 = *(a1 + 80);
  v43 = v20;
  v21 = *(a1 + 128);
  v44 = *(a1 + 112);
  v45 = v21;
  v22 = *(a1 + 32);
  v38 = *(a1 + 16);
  v39 = v22;
  v23 = *(a1 + 64);
  v40 = *(a1 + 48);
  v41 = v23;
  sub_26BE6FE6C(v50, v36);
  sub_26BF31160(&v38);
  v25 = v24;
  v36[8] = v46;
  v36[9] = v47;
  v36[10] = v48;
  v37 = v49;
  v36[4] = v42;
  v36[5] = v43;
  v36[6] = v44;
  v36[7] = v45;
  v36[0] = v38;
  v36[1] = v39;
  v36[2] = v40;
  v36[3] = v41;
  sub_26BE718E0(v36);
  v26 = __OFADD__(v18, v25);
  v27 = v18 + v25;
  if (v26)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    LOBYTE(v31) = 0;
    v34 = MEMORY[0x277D838B0];
    v35 = MEMORY[0x277CC9C18];
    v32 = &v31;
    v33 = (&v31 + 1);
    __swift_project_boxed_opaque_existential_1(&v32, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v28 = 1;
  }

  else
  {
    LOBYTE(v31) = 1;
    v29 = MEMORY[0x277D838B0];
    v30 = MEMORY[0x277CC9C18];
    v34 = MEMORY[0x277D838B0];
    v35 = MEMORY[0x277CC9C18];
    v32 = &v31;
    v33 = (&v31 + 1);
    __swift_project_boxed_opaque_existential_1(&v32, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v31 = bswap32(v10);
    v34 = v29;
    v35 = v30;
    v32 = &v31;
    v33 = &v32;
    __swift_project_boxed_opaque_existential_1(&v32, v29);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v28 = 5;
  }

  result = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BEDFB9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[9];
      v7 = v5[11];
      v33 = v5[10];
      v34[0] = v7;
      *(v34 + 13) = *(v5 + 189);
      v8 = v5[5];
      v9 = v5[7];
      v29 = v5[6];
      v30 = v9;
      v10 = v5[7];
      v11 = v5[9];
      v31 = v5[8];
      v32 = v11;
      v12 = v5[1];
      v13 = v5[3];
      v25 = v5[2];
      v26 = v13;
      v14 = v5[3];
      v15 = v5[5];
      v27 = v5[4];
      v28 = v15;
      v16 = v5[1];
      v24[0] = *v5;
      v24[1] = v16;
      v17 = v5[11];
      v22[10] = v33;
      v23[0] = v17;
      *(v23 + 13) = *(v5 + 189);
      v22[6] = v29;
      v22[7] = v10;
      v22[8] = v31;
      v22[9] = v6;
      v22[2] = v25;
      v22[3] = v14;
      v22[4] = v27;
      v22[5] = v8;
      v22[0] = v24[0];
      v22[1] = v12;
      sub_26BE7009C(v24, &v21);
      v18 = sub_26BEDF894(v22);
      result = sub_26BE700F8(v24);
      if (v2)
      {
        break;
      }

      v20 = __OFADD__(a1, v18);
      a1 += v18;
      if (v20)
      {
        __break(1u);
        return result;
      }

      v5 += 13;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t sub_26BEDFCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.GroupState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEDFD78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEDFDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEDFE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E730, &qword_26C011528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26BEDFEB0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 0;
  v64 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v4 = *(v5 + 16);
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    v4 = v5;
LABEL_6:
    sub_26BE00608(*(a1 + 8), v6);
  }

  v61 = v5;
  v62 = v6;
  v63 = v4;
  sub_26BE00608(v5, v6);
  sub_26BE00608(v5, v6);
  sub_26BF30764(&v61, &v49);
  if (v2)
  {
    sub_26BE00258(v61, v62);
    v61 = v5;
    v62 = v6;
    v63 = v4;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (BYTE8(v49))
  {
    sub_26BE00258(v61, v62);
    v8 = v6;
    v9 = v5;
LABEL_13:
    sub_26BE00258(v9, v8);
    v61 = v5;
    v62 = v6;
    v63 = v4;
    sub_26BE01600();
    swift_allocError();
    *v10 = 1;
    goto LABEL_14;
  }

  v13 = v49;
  sub_26BE00258(v5, v6);
  if (v13 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v14 = 5;
    goto LABEL_9;
  }

  v15 = sub_26BF2A44C(v13);
  if (v16 >> 60 == 15)
  {
    v9 = v61;
    v8 = v62;
    goto LABEL_13;
  }

  v58 = v15;
  v59 = v16;
  v18 = MEMORY[0x277D84F90];
  v60 = v17;
  v37 = v4;
  while (1)
  {
    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(v15 + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = v15 >> 32;
    }

    else
    {
      v20 = BYTE6(v16);
    }

    v21 = __OFSUB__(v20, v17);
    v22 = v20 - v17;
    if (v21)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    if (v22 < 1)
    {
      break;
    }

    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_59;
    }

    if (v19 <= 1)
    {
      if (v19)
      {
        v24 = v15 >> 32;
      }

      else
      {
        v24 = BYTE6(v16);
      }

LABEL_36:
      if (v24 < v23)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v19 == 2)
    {
      v24 = *(v15 + 24);
      goto LABEL_36;
    }

    if (v23 > 0)
    {
LABEL_49:
      sub_26BE01600();
      swift_allocError();
      *v35 = 1;
      goto LABEL_57;
    }

LABEL_39:
    *&v40 = v15;
    *(&v40 + 1) = v16;
    if (v23 < v17)
    {
      goto LABEL_60;
    }

    *&v38[0] = v17;
    *(&v38[0] + 1) = v17 + 1;
    sub_26BE00608(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v40, *(&v40 + 1));
    v60 = v23;
    sub_26BE2E2B8(&v40);
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v49 = v40;
    v50 = v41;
    sub_26BECBB94(&v40, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_26BEEB900(0, v18[2] + 1, 1, v18);
    }

    v4 = v37;
    v26 = v18[2];
    v25 = v18[3];
    if (v26 >= v25 >> 1)
    {
      v18 = sub_26BEEB900((v25 > 1), v26 + 1, 1, v18);
    }

    v38[6] = v55;
    v38[7] = v56;
    v39 = v57;
    v38[2] = v51;
    v38[3] = v52;
    v38[4] = v53;
    v38[5] = v54;
    v38[0] = v49;
    v38[1] = v50;
    sub_26BE7DCC0(v38);
    v18[2] = v26 + 1;
    v27 = &v18[17 * v26];
    *(v27 + 2) = v40;
    v28 = v44;
    v30 = v41;
    v29 = v42;
    *(v27 + 5) = v43;
    *(v27 + 6) = v28;
    *(v27 + 3) = v30;
    *(v27 + 4) = v29;
    v32 = v46;
    v31 = v47;
    v33 = v45;
    v27[20] = v48;
    *(v27 + 8) = v32;
    *(v27 + 9) = v31;
    *(v27 + 7) = v33;
    v15 = v58;
    v16 = v59;
    v17 = v60;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v34 = *(v15 + 24);
    }

    else
    {
      v34 = 0;
    }
  }

  else if (v19)
  {
    v34 = v15 >> 32;
  }

  else
  {
    v34 = BYTE6(v16);
  }

  if (__OFSUB__(v34, v17))
  {
    goto LABEL_61;
  }

  if (v34 == v17)
  {
    sub_26BE00258(v15, v16);
    sub_26BE00258(v5, v6);
    sub_26BE00258(v61, v62);
    *a2 = v18;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v36 = 0;
    v36[112] = 1;
LABEL_57:
    swift_willThrow();

    sub_26BE00258(v58, v59);
LABEL_10:
    sub_26BE00258(v61, v62);
    v61 = v5;
    v62 = v6;
    v63 = v4;
LABEL_14:
    swift_willThrow();
    *&v49 = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v11 = sub_26C00A4FC();
    sub_26BE826C4(v11, v12, v5, v6);

    swift_willThrow();
    sub_26BE00258(v61, v62);
  }
}

uint64_t sub_26BEE04CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = result;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v32 = a2 + 32;
  while (v3 < v2)
  {
    v7 = v3;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_45;
    }

    v9 = (v5 + 24 * v7);
    v10 = *v9;
    v12 = *(v9 + 1);
    v11 = *(v9 + 2);
    if (v10 > 9)
    {
      if (*v9 <= 0xF001u)
      {
        if (v10 == 10)
        {
          sub_26BE00608(v12, v11);
          v19 = sub_26BEE0988();
          v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v19);
          v14 = byte_287CBA390;
          goto LABEL_30;
        }

        if (v10 == 61441)
        {
          sub_26BE00608(v12, v11);
          v17 = sub_26BEE0988();
          v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v17);
          v14 = byte_287CBA368;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v10)
        {
          case 0xF002u:
            sub_26BE00608(v12, v11);
            v21 = sub_26BEE0988();
            v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v21);
            v14 = byte_287CBA340;
            goto LABEL_30;
          case 0xF005u:
            sub_26BE00608(v12, v11);
            v23 = sub_26BEE0988();
            v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v23);
            v14 = byte_287CBA318;
            goto LABEL_30;
          case 0xF006u:
            sub_26BE00608(v12, v11);
            v15 = sub_26BEE0988();
            v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v15);
            v14 = byte_287CBA2F0;
            goto LABEL_30;
        }
      }
    }

    else if (*v9 <= 2u)
    {
      if (v10 == 1)
      {
        sub_26BE00608(*(v9 + 1), *(v9 + 2));
        v18 = sub_26BEE0988();
        v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v18);
        v14 = byte_287CBA228;
        goto LABEL_30;
      }

      if (v10 == 2)
      {
        sub_26BE00608(*(v9 + 1), *(v9 + 2));
        v16 = sub_26BEE0988();
        v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v16);
        v14 = byte_287CBA250;
        goto LABEL_30;
      }
    }

    else
    {
      switch(v10)
      {
        case 3u:
          sub_26BE00608(*(v9 + 1), *(v9 + 2));
          v20 = sub_26BEE0988();
          v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v20);
          v14 = byte_287CBA278;
          goto LABEL_30;
        case 4u:
          sub_26BE00608(*(v9 + 1), *(v9 + 2));
          v22 = sub_26BEE0988();
          v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v22);
          v14 = byte_287CBA2A0;
          goto LABEL_30;
        case 5u:
          sub_26BE00608(*(v9 + 1), *(v9 + 2));
          v13 = sub_26BEE0988();
          v33 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v13);
          v14 = byte_287CBA2C8;
          goto LABEL_30;
      }
    }

    sub_26BE00608(v12, v11);
    v24 = sub_26BEE0988();
    v33 = MEMORY[0x26D699320](4, &_s20ExtensionMessageTypeON, v24);
    sub_26BF75A34(&v34, byte_287CBA3B8);
    sub_26BF75A34(&v34, byte_287CBA3B9);
    sub_26BF75A34(&v34, byte_287CBA3BA);
    v14 = byte_287CBA3BB;
LABEL_30:
    sub_26BF75A34(&v34, v14);
    if (*(v33 + 16) && (sub_26C00B05C(), MEMORY[0x26D699B20](v4), v25 = sub_26C00B0CC(), v26 = -1 << *(v33 + 32), v27 = v25 & ~v26, ((*(v33 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v28 = ~v26;
      while (*(*(v33 + 48) + v27) != v4)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v33 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v35 = v6;
      if ((result & 1) == 0)
      {
        result = sub_26BECBAB4(0, *(v6 + 16) + 1, 1);
        v6 = v35;
      }

      v30 = *(v6 + 16);
      v29 = *(v6 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_26BECBAB4((v29 > 1), v30 + 1, 1);
        v6 = v35;
      }

      *(v6 + 16) = v30 + 1;
      v31 = v6 + 24 * v30;
      *(v31 + 32) = v10;
      *(v31 + 40) = v12;
      *(v31 + 48) = v11;
      v5 = v32;
      if (v3 == v2)
      {
        return v6;
      }
    }

    else
    {
LABEL_3:
      sub_26BE00258(v12, v11);

      if (v3 == v2)
      {
        return v6;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_26BEE0988()
{
  result = qword_28045F098;
  if (!qword_28045F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F098);
  }

  return result;
}

unint64_t sub_26BEE09F0()
{
  result = qword_28045F0A0;
  if (!qword_28045F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F0A0);
  }

  return result;
}

uint64_t sub_26BEE0A44()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478F98);
  __swift_project_value_buffer(v0, qword_280478F98);
  return sub_26C009A4C();
}

uint64_t sub_26BEE0AC0(uint64_t a1)
{
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = sub_26C00947C();
  v24 = sub_26BEE2EE4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  v25 = v12;
  sub_26C00A3CC();
  v13 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v1 + *(v13 + 20), v11);
  v23 = *(v3 + 48);
  v14 = v23(v11, 1, v2);
  v21 = v5;
  v22 = v3;
  if (v14 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v3 + 8))(v5, v2);
  }

  v15 = _s21RCSParticipantKeyRollVMa(0);
  sub_26C00959C();
  sub_26BEE2EE4(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  sub_26C00A3CC();
  v16 = v1 + *(v15 + 24);
  sub_26C00A3CC();
  sub_26BEE2A7C(v16 + *(v13 + 20), v9);
  if (v23(v9, 1, v2) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v18 = v21;
    v17 = v22;
    (*(v22 + 32))(v21, v9, v2);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v17 + 8))(v18, v2);
  }

  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  return sub_26C00A3CC();
}

uint64_t sub_26BEE0EA8()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_26C00B05C();
  v11 = sub_26C00947C();
  v23 = sub_26BEE2EE4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  v24 = v11;
  sub_26C00A3CC();
  v12 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v0 + *(v12 + 20), v10);
  v13 = *(v2 + 48);
  v14 = v13(v10, 1, v1);
  v21 = v4;
  v22 = v2;
  if (v14 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v4, v10, v1);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v2 + 8))(v4, v1);
  }

  v15 = _s21RCSParticipantKeyRollVMa(0);
  sub_26C00959C();
  sub_26BEE2EE4(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  sub_26C00A3CC();
  v16 = v0 + *(v15 + 24);
  sub_26C00A3CC();
  sub_26BEE2A7C(v16 + *(v12 + 20), v8);
  if (v13(v8, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v18 = v21;
    v17 = v22;
    (*(v22 + 32))(v21, v8, v1);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v17 + 8))(v18, v1);
  }

  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEE12A0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_26C0094DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  sub_26C00B05C();
  v13 = sub_26C00947C();
  v24 = sub_26BEE2EE4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  v25 = v13;
  sub_26C00A3CC();
  v14 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v2 + *(v14 + 20), v12);
  v15 = *(v4 + 48);
  v16 = v15(v12, 1, v3);
  v22 = v6;
  v23 = v4;
  if (v16 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v4 + 8))(v6, v3);
  }

  v17 = v26;
  sub_26C00959C();
  sub_26BEE2EE4(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  sub_26C00A3CC();
  v18 = v2 + *(v17 + 24);
  sub_26C00A3CC();
  sub_26BEE2A7C(v18 + *(v14 + 20), v10);
  if (v15(v10, 1, v3) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v20 = v22;
    v19 = v23;
    (*(v23 + 32))(v22, v10, v3);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v19 + 8))(v20, v3);
  }

  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEE1698()
{
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD00000000000002CLL, 0x800000026C02C5C0);
  v0 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
  _s21RCSParticipantKeyRollVMa(0);
  sub_26C00959C();
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000010, 0x800000026C02C5F0);
  v1 = MLS.SubjectPublicKeyInfo.description.getter();
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

void *sub_26BEE17DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00959C();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00934C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  sub_26BEE2EE4(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
  v21 = a1;
  v14 = v22;
  result = sub_26C0096BC();
  if (!v14)
  {
    sub_26C0096AC();
    sub_26C0096BC();
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BEE2EE4(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    sub_26C0096BC();
    v16 = v18;
    sub_26BEE2E7C(v13, v18, type metadata accessor for MLS.AlgorithmIdentifier);
    v17 = _s21RCSParticipantKeyRollVMa(0);
    (*(v20 + 32))(v16 + *(v17 + 20), v7, v5);
    return sub_26BEE2E7C(v4, v16 + *(v17 + 24), type metadata accessor for MLS.SubjectPublicKeyInfo);
  }

  return result;
}

uint64_t sub_26BEE1B84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2EE4(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
  result = sub_26C00976C();
  if (!v2)
  {
    _s21RCSParticipantKeyRollVMa(0);
    sub_26C00959C();
    sub_26C00976C();
    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    sub_26BEE2EE4(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    return sub_26C00976C();
  }

  return result;
}

uint64_t sub_26BEE1CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t _s21RCSParticipantKeyRollVMa(uint64_t a1)
{
  result = qword_28045F0F0;
  if (!qword_28045F0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BEE1FD8(char *a1)
{
  v83 = a1;
  v75 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  MEMORY[0x28223BE20](v75);
  v76 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_26C00959C();
  v80 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v79 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s18SignatureAlgorithmVMa(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - v8;
  v10 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s9PublicKeyVMa(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - v20;
  v22 = sub_26C00978C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00977C();
  sub_26BEE2EE4(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
  v26 = v88;
  sub_26C00976C();
  if (v26)
  {
    (*(v23 + 8))(v25, v22);
  }

  else
  {
    v73 = v16;
    v83 = v19;
    v88 = v9;
    v74 = v22;
    v27 = sub_26C00971C();
    v28 = sub_26BE12418(v27);
    v30 = v29;

    v31 = _s21RCSParticipantKeyRollVMa(0);
    sub_26BEE2F2C(v82 + *(v31 + 24), v12, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BFCD8D0(v12, v21);
    v32 = v25;
    v71 = v28;
    v72 = v30;
    v33 = v82;
    v34 = v77;
    sub_26BEE2F2C(v82, v77, type metadata accessor for MLS.AlgorithmIdentifier);
    v35 = v88;
    sub_26BFD001C(v34, v88);
    v36 = v78;
    sub_26BEE2F2C(v35, v78, _s18SignatureAlgorithmVMa);
    v37 = v33 + *(v31 + 20);
    v38 = v79;
    (*(v80 + 16))(v79, v37, v81);
    sub_26BFE6910(v36, v38, v84);
    v39 = v23;
    v86[2] = v84[2];
    v86[3] = v84[3];
    v87 = v85;
    v86[0] = v84[0];
    v86[1] = v84[1];
    v40 = v71;
    v41 = v72;
    v42 = sub_26BED16C4(v86, v71, v72, v35);
    v43 = v74;
    if (v42)
    {
      sub_26BEC9DC0(v86);
      sub_26BE00258(v40, v41);
      sub_26BEE2F94(v35, _s18SignatureAlgorithmVMa);
      sub_26BEE2F94(v21, _s9PublicKeyVMa);
      (*(v23 + 8))(v32, v43);
    }

    else
    {
      if (qword_28045DFC8 != -1)
      {
        swift_once();
      }

      v44 = sub_26C009A5C();
      __swift_project_value_buffer(v44, qword_280478F98);
      v81 = v21;
      v45 = v83;
      sub_26BEE2F2C(v21, v83, _s9PublicKeyVMa);
      v46 = v71;
      v47 = v72;
      sub_26BE00608(v71, v72);
      sub_26BEC9F28(v86, v84);
      v48 = v46;
      v49 = sub_26C009A3C();
      v50 = sub_26C00A9FC();
      sub_26BE00258(v48, v47);
      sub_26BEC9DC0(v86);
      LODWORD(v80) = v50;
      v82 = v49;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v84[0] = v79;
        *v51 = 136315650;
        sub_26BE00608(v48, v47);
        v52 = sub_26C00901C();
        v54 = v53;
        sub_26BE00258(v48, v47);
        v55 = sub_26BE29740(v52, v54, v84);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v56 = v73;
        sub_26BEE2F2C(v45, v73, _s9PublicKeyVMa);
        v57 = v76;
        sub_26BEE2F2C(v56, v76, _s9PublicKeyV16BackingPublicKeyOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v59 = 0x6275502E36353250;
        v60 = 0x6275502E31323550;
        v61 = 0x800000026C02C3C0;
        if (EnumCaseMultiPayload == 2)
        {
          v61 = 0xEE0079654B63696CLL;
        }

        else
        {
          v60 = 0xD000000000000011;
        }

        if (EnumCaseMultiPayload)
        {
          v59 = 0x6275502E34383350;
        }

        if (EnumCaseMultiPayload <= 1)
        {
          v62 = v59;
        }

        else
        {
          v62 = v60;
        }

        if (EnumCaseMultiPayload <= 1)
        {
          v63 = 0xEE0079654B63696CLL;
        }

        else
        {
          v63 = v61;
        }

        sub_26BEE2F94(v56, _s9PublicKeyVMa);
        sub_26BEE2F94(v45, _s9PublicKeyVMa);
        sub_26BEE2F94(v57, _s9PublicKeyV16BackingPublicKeyOMa);
        v64 = sub_26BE29740(v62, v63, v84);

        *(v51 + 14) = v64;
        *(v51 + 22) = 2080;
        if (v87)
        {
          v65 = 0x4153444445;
        }

        else
        {
          v65 = 0x4153444345;
        }

        v66 = sub_26BE29740(v65, 0xE500000000000000, v84);

        *(v51 + 24) = v66;
        v67 = v82;
        _os_log_impl(&dword_26BDFE000, v82, v80, "Verify for %s failed (key: %s, sig: %s)", v51, 0x20u);
        v68 = v79;
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v68, -1, -1);
        MEMORY[0x26D69A4E0](v51, -1, -1);

        v69 = v74;
        v39 = v23;
        v35 = v88;
        v48 = v71;
      }

      else
      {

        sub_26BEE2F94(v45, _s9PublicKeyVMa);
        v69 = v74;
      }

      type metadata accessor for MLS.IdentityError(0);
      sub_26BEE2EE4(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BEC9DC0(v86);
      sub_26BE00258(v48, v72);
      sub_26BEE2F94(v35, _s18SignatureAlgorithmVMa);
      sub_26BEE2F94(v81, _s9PublicKeyVMa);
      (*(v39 + 8))(v32, v69);
    }
  }

  return 1;
}

uint64_t sub_26BEE2A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEE2AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);
  v15 = *(v11 + 48);
  sub_26BEE2A7C(a1 + v14, v13);
  sub_26BEE2A7C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_26BEE2A7C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_26BEE2EE4(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
      v17 = sub_26C00A43C();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_26BE2E258(v13, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
LABEL_9:
  v19 = _s21RCSParticipantKeyRollVMa(0);
  if (sub_26C00956C() & 1) != 0 && (static MLS.AlgorithmIdentifier.== infix(_:_:)(a1 + *(v19 + 24), a2 + *(v19 + 24)))
  {
    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    if (sub_26C00956C())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_26BEE2E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEE2EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BEE2F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEE2F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEE3008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_26C00959C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_26BEE315C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_26C00959C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_26BEE32A8(uint64_t a1)
{
  result = type metadata accessor for MLS.AlgorithmIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = sub_26C00959C();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MLS.SubjectPublicKeyInfo(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void MLS.MLSMessage.wireFormat.getter(__int16 *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEE3514(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26BEE494C(v6, type metadata accessor for MLS.MLSMessage.Inner);
      v8 = 1;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_26BEE494C(v6, type metadata accessor for MLS.MLSMessage.Inner);
      v8 = 2;
    }

    else
    {
      v8 = *v6;
      sub_26BE00258(*(v6 + 1), *(v6 + 2));
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BEE494C(v6, type metadata accessor for MLS.MLSMessage.Inner);
      v8 = 4;
    }

    else
    {
      sub_26BEE494C(v6, type metadata accessor for MLS.MLSMessage.Inner);
      v8 = 5;
    }
  }

  else
  {
    sub_26BEE494C(v6, type metadata accessor for MLS.MLSMessage.Inner);
    v8 = 3;
  }

  *a1 = v8;
}

uint64_t sub_26BEE3514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MLS.MLSMessage.init(rawValue:quiet:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = a4;
    v10 = v4;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a4;
    v10 = v4;
  }

  sub_26BE00608(a1, a2);
  v4 = v10;
  a4 = v9;
LABEL_7:
  sub_26BEE3C08(a4);
  if (v4)
  {
    if ((a3 & 1) == 0)
    {
      type metadata accessor for MLS.MLSMessage(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F100, &qword_26C01A558);
      v11 = sub_26C00A4FC();
      sub_26BE826C4(v11, v12, a1, a2);
    }

    swift_willThrow();
  }

  sub_26BE00258(a1, a2);
  sub_26BE00258(a1, a2);
}

void sub_26BEE3688(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for MLS.GroupInfo(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v50 - v11);
  LOWORD(v52) = 256;
  v13 = MEMORY[0x277D838B0];
  *(&v65 + 1) = MEMORY[0x277D838B0];
  *&v66 = MEMORY[0x277CC9C18];
  *&v64 = &v52;
  *(&v64 + 1) = &v52 + 2;
  __swift_project_boxed_opaque_existential_1(&v64, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  sub_26BEE3514(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26BEE494C(v12, type metadata accessor for MLS.MLSMessage.Inner);
      v15 = 1;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_26BEE494C(v12, type metadata accessor for MLS.MLSMessage.Inner);
      v15 = 2;
    }

    else
    {
      v15 = *v12;
      sub_26BE00258(*(v12 + 1), *(v12 + 2));
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BEE494C(v12, type metadata accessor for MLS.MLSMessage.Inner);
      v15 = 4;
    }

    else
    {
      sub_26BEE494C(v12, type metadata accessor for MLS.MLSMessage.Inner);
      v15 = 5;
    }
  }

  else
  {
    sub_26BEE494C(v12, type metadata accessor for MLS.MLSMessage.Inner);
    v15 = 3;
  }

  LOWORD(v52) = __rev16(v15);
  *(&v65 + 1) = v13;
  *&v66 = MEMORY[0x277CC9C18];
  *&v64 = &v52;
  *(&v64 + 1) = &v52 + 2;
  __swift_project_boxed_opaque_existential_1(&v64, v13);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  sub_26BEE3514(a1, v10);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 > 2)
  {
    goto LABEL_19;
  }

  v17 = v51;
  if (!v16)
  {
    goto LABEL_25;
  }

  if (v16 != 1)
  {
LABEL_33:
    v34 = *(v10 + 9);
    v35 = *(v10 + 7);
    v72 = *(v10 + 8);
    v73 = v34;
    v36 = *(v10 + 9);
    v74 = *(v10 + 10);
    v37 = *(v10 + 5);
    v38 = *(v10 + 3);
    v68 = *(v10 + 4);
    v69 = v37;
    v39 = *(v10 + 5);
    v40 = *(v10 + 7);
    v70 = *(v10 + 6);
    v71 = v40;
    v41 = *(v10 + 1);
    v64 = *v10;
    v65 = v41;
    v42 = *(v10 + 3);
    v44 = *v10;
    v43 = *(v10 + 1);
    v66 = *(v10 + 2);
    v67 = v42;
    v60 = v72;
    v61 = v36;
    v62 = *(v10 + 10);
    v56 = v68;
    v57 = v39;
    v58 = v70;
    v59 = v35;
    v52 = v44;
    v53 = v43;
    v75 = *(v10 + 22);
    v63 = *(v10 + 22);
    v54 = v66;
    v55 = v38;
    sub_26BE00A98(&v52);
    v46 = v45;
    sub_26BE2E01C(&v64);
    if (v17 || !__OFADD__(v46, 4))
    {
      return;
    }

LABEL_40:
    __break(1u);
  }

  v18 = v10;
  v10 = v51;
  sub_26BEE48E4(v18, v6, type metadata accessor for MLS.GroupInfo);
  sub_26BED49C0(v6);
  v20 = v19;
  sub_26BEE494C(v6, type metadata accessor for MLS.GroupInfo);
  if (!v17)
  {
    v16 = v20 + 4;
    if (__OFADD__(v20, 4))
    {
      __break(1u);
LABEL_19:
      v17 = v51;
      if (v16 == 3)
      {
LABEL_29:
        v31 = v10;
        v32 = v50;
        v10 = v17;
        sub_26BEE48E4(v31, v50, type metadata accessor for MLS.PublicMessage);
        v33 = sub_26BF80EA4(v32);
        sub_26BEE494C(v32, type metadata accessor for MLS.PublicMessage);
        if (v17 || !__OFADD__(v33, 4))
        {
          return;
        }

        __break(1u);
        goto LABEL_33;
      }

      if (v16 != 4)
      {
        v47 = *(v10 + 1);
        v48 = *(v10 + 2);
        v49 = sub_26BE11228(v47, v48);
        sub_26BE00258(v47, v48);
        if (!__OFADD__(v49, 4))
        {
          return;
        }

        __break(1u);
        goto LABEL_40;
      }

      v21 = *(v10 + 1);
      v22 = *(v10 + 3);
      v66 = *(v10 + 2);
      v67 = v22;
      v23 = *(v10 + 3);
      v68 = *(v10 + 4);
      v24 = *(v10 + 1);
      v64 = *v10;
      v65 = v24;
      v54 = v66;
      v55 = v23;
      v56 = *(v10 + 4);
      v52 = v64;
      v53 = v21;
      v25 = sub_26BED7438(&v52);
      sub_26BE6FFE0(&v64);
      if (v17 || !__OFADD__(v25, 4))
      {
        return;
      }

      __break(1u);
LABEL_25:
      v26 = *v10;
      v27 = *(v10 + 1);
      v28 = *(v10 + 2);
      v10 = *(v10 + 3);
      LOWORD(v64) = v26;
      *(&v64 + 1) = v27;
      *&v65 = v28;
      *(&v65 + 1) = v10;
      sub_26BE34228(&v64);
      v30 = v29;

      sub_26BE00258(v28, v10);
      if (v17 || !__OFADD__(v30, 4))
      {
        return;
      }

      __break(1u);
      goto LABEL_29;
    }
  }
}

void sub_26BEE3C08(uint64_t a1@<X8>)
{
  v104 = a1;
  v102 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v3 = MEMORY[0x28223BE20](v102);
  v5 = &v93[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v93[-v7];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v93[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v93[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v93[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v93[-v19];
  MEMORY[0x28223BE20](v18);
  v103 = &v93[-v21];
  v111 = v1;
  v22 = sub_26BEE6180();
  if ((v22 & 0x10000) != 0)
  {
    goto LABEL_37;
  }

  if (v22 != 1)
  {
LABEL_33:
    sub_26BE01600();
    swift_allocError();
    v58 = 5;
LABEL_38:
    *v57 = v58;
    goto LABEL_39;
  }

  v101 = v2;
  v23 = sub_26BEE6180();
  if ((v23 & 0x10000) != 0)
  {
    goto LABEL_37;
  }

  v24 = v23;
  if (v23 > 2u)
  {
    if (v23 != 3)
    {
      if (v23 == 4)
      {
        v43 = v101;
        sub_26BED3A64(v17);
        if (!v43)
        {
          swift_storeEnumTagMultiPayload();
          v20 = v17;
          goto LABEL_32;
        }

        return;
      }

      v25 = v111;
      if (v23 == 5)
      {
        v26 = v101;
        sub_26BE00E2C(v108);
        if (!v26)
        {
          v27 = v108[9];
          v28 = v108[10];
          v29 = v108[7];
          *(v14 + 8) = v108[8];
          *(v14 + 9) = v27;
          *(v14 + 10) = v28;
          *(v14 + 22) = v109;
          v30 = v108[5];
          *(v14 + 4) = v108[4];
          *(v14 + 5) = v30;
          *(v14 + 6) = v108[6];
          *(v14 + 7) = v29;
          v31 = v108[1];
          *v14 = v108[0];
          *(v14 + 1) = v31;
          v32 = v108[3];
          *(v14 + 2) = v108[2];
          *(v14 + 3) = v32;
          swift_storeEnumTagMultiPayload();
          v20 = v14;
LABEL_32:
          v55 = v20;
          v56 = v103;
          sub_26BEE48E4(v55, v103, type metadata accessor for MLS.MLSMessage.Inner);
          sub_26BEE48E4(v56, v104, type metadata accessor for MLS.MLSMessage.Inner);
          return;
        }

        return;
      }

      goto LABEL_22;
    }

    v36 = v111;
    v37 = sub_26BEE6180();
    if ((v37 & 0x10000) == 0)
    {
      v38 = v37;
      v39 = *v36;
      v40 = v36[1];
      v41 = v36[2];
      sub_26BE00608(*v36, v40);
      sub_26BE00608(v39, v40);
      v42 = v101;
      sub_26BF30764(v36, &v105);
      if (v42)
      {
        sub_26BE00258(*v36, v36[1]);
        *v36 = v39;
        v36[1] = v40;
        v36[2] = v41;
        swift_willThrow();
LABEL_17:
        sub_26BE00258(*v36, v36[1]);
        *v36 = v39;
        v36[1] = v40;
        v36[2] = v41;
LABEL_39:
        swift_willThrow();
        return;
      }

      v101 = 0;
      if (v106)
      {
        sub_26BE00258(*v36, v36[1]);
        *v36 = v39;
        v36[1] = v40;
        v59 = v40;
        v60 = v39;
        v36[2] = v41;
      }

      else
      {
        v95 = v41;
        v61 = v105;
        sub_26BE00258(v39, v40);
        if (v61 > 100000000)
        {
          sub_26BE01600();
          swift_allocError();
          *v62 = 5;
          swift_willThrow();
          v41 = v95;
          goto LABEL_17;
        }

        v63 = sub_26BF2A44C(v61);
        if (v64 >> 60 != 15)
        {
          v105 = v63;
          v106 = v64;
          v107 = v65;
          v100 = MEMORY[0x277D84F90];
          v96 = v40;
          v97 = v39;
          v94 = v38;
          while (1)
          {
            v66 = v64 >> 62;
            if ((v64 >> 62) > 1)
            {
              v67 = v66 == 2 ? *(v63 + 24) : 0;
            }

            else
            {
              v67 = v66 ? v63 >> 32 : BYTE6(v64);
            }

            v68 = __OFSUB__(v67, v65);
            v69 = v67 - v65;
            if (v68)
            {
              goto LABEL_76;
            }

            if (v69 < 1)
            {
              if (v66 > 1)
              {
                if (v66 == 2)
                {
                  v88 = *(v63 + 24);
                }

                else
                {
                  v88 = 0;
                }
              }

              else if (v66)
              {
                v88 = v63 >> 32;
              }

              else
              {
                v88 = BYTE6(v64);
              }

              if (__OFSUB__(v88, v65))
              {
                goto LABEL_77;
              }

              if (v88 != v65)
              {
                sub_26BE01654();
                swift_allocError();
                *v92 = 0;
                v92[112] = 1;
                swift_willThrow();

                sub_26BE00258(v105, v106);
                v41 = v95;
                goto LABEL_17;
              }

              sub_26BE00258(v63, v64);
              sub_26BE00258(v39, v40);
              v89 = v101;
              v90 = sub_26BF2F7B0();
              if (v89)
              {

                return;
              }

              *v20 = v94;
              *(v20 + 1) = v100;
              *(v20 + 2) = v90;
              *(v20 + 3) = v91;
              swift_storeEnumTagMultiPayload();
              goto LABEL_32;
            }

            v70 = v101;
            v71 = sub_26BF2F7B0();
            v99 = v72;
            if (v70)
            {
              v101 = v70;

              sub_26BE00258(v105, v106);
              v41 = v95;
              goto LABEL_17;
            }

            v73 = v71;
            v74 = sub_26BF2F7B0();
            v76 = v75;
            v77 = sub_26BF2F7B0();
            v101 = 0;
            v78 = v77;
            v80 = v79;
            sub_26BE00608(v73, v99);
            sub_26BE00608(v74, v76);
            sub_26BE00608(v78, v80);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v100 = sub_26BEECA34(0, *(v100 + 2) + 1, 1, v100);
            }

            v82 = *(v100 + 2);
            v81 = *(v100 + 3);
            v98 = v82 + 1;
            if (v82 >= v81 >> 1)
            {
              v100 = sub_26BEECA34((v81 > 1), v82 + 1, 1, v100);
            }

            v83 = v73;
            v84 = v73;
            v85 = v99;
            sub_26BE00258(v84, v99);
            sub_26BE00258(v74, v76);
            sub_26BE00258(v78, v80);
            v86 = v100;
            *(v100 + 2) = v98;
            v87 = &v86[48 * v82];
            *(v87 + 4) = v83;
            *(v87 + 5) = v85;
            *(v87 + 6) = v74;
            *(v87 + 7) = v76;
            *(v87 + 8) = v78;
            *(v87 + 9) = v80;
            v63 = v105;
            v64 = v106;
            v65 = v107;
            v36 = v111;
            v40 = v96;
            v39 = v97;
          }
        }

        v60 = *v36;
        v59 = v36[1];
        v41 = v95;
      }

      sub_26BE00258(v60, v59);
      *v36 = v39;
      v36[1] = v40;
      v36[2] = v41;
    }

LABEL_37:
    sub_26BE01600();
    swift_allocError();
    v58 = 1;
    goto LABEL_38;
  }

  if (v23 == 1)
  {
    v44 = v101;
    sub_26BF813DC(v11);
    if (!v44)
    {
      swift_storeEnumTagMultiPayload();
      v20 = v11;
      goto LABEL_32;
    }

    return;
  }

  v25 = v111;
  if (v23 != 2)
  {
LABEL_22:
    v45 = *v25;
    v46 = v25[1];
    v47 = v25[2];
    v48 = v46 >> 62;
    if ((v46 >> 62) > 1)
    {
      if (v48 == 2)
      {
        v50 = *(v45 + 24);
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      v49 = BYTE6(v46);
      v50 = v45 >> 32;
      if (!v48)
      {
        v50 = v49;
      }
    }

    if (!__OFSUB__(v50, v47))
    {
      v51 = sub_26BF2A51C(v50 - v47);
      if (v51)
      {
        v52 = sub_26BE12418(v51);
        v54 = v53;

        *v5 = v24;
        *(v5 + 1) = v52;
        *(v5 + 2) = v54;
        swift_storeEnumTagMultiPayload();
        v20 = v5;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  v33 = v101;
  sub_26BED7790(v110);
  if (!v33)
  {
    v34 = v110[3];
    v8[2] = v110[2];
    v8[3] = v34;
    v8[4] = v110[4];
    v35 = v110[1];
    *v8 = v110[0];
    v8[1] = v35;
    swift_storeEnumTagMultiPayload();
    v20 = v8;
    goto LABEL_32;
  }
}

BOOL MLS.MLSMessage.successfullyParsed.getter()
{
  v1 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEE3514(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() != 5;
  sub_26BEE494C(v3, type metadata accessor for MLS.MLSMessage.Inner);
  return v4;
}

void MLS.MLSMessage.rawValue.getter()
{
  sub_26BEE3688(v0);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

uint64_t sub_26BEE45FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEE4674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BEE46F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BEE4764(uint64_t a1)
{
  result = type metadata accessor for MLS.MLSMessage.Inner(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BEE47E0(uint64_t a1)
{
  type metadata accessor for MLS.GroupInfo(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLS.PublicMessage(319);
    if (v2 <= 0x3F)
    {
      sub_26BEE4884();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_26BEE4884()
{
  if (!qword_28045F128)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045F128);
    }
  }
}

uint64_t sub_26BEE48E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEE494C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLS.GroupSecrets.joinerSecret.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.GroupSecrets.joinerSecret.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

void sub_26BEE4A58(uint64_t *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v8 = HIDWORD(v2) - v2;
  }

LABEL_11:
  v11 = sub_26BF30414(v8);
  if (v1)
  {
    return;
  }

  v12 = v11;
  sub_26BE11228(v2, v3);
  v13 = __OFADD__(v12, v8);
  v14 = v12 + v8;
  if (v13)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v4 >> 60 != 15)
  {
    v25 = 1;
    v28 = MEMORY[0x277D838B0];
    v29 = MEMORY[0x277CC9C18];
    *&v26 = &v25;
    *(&v26 + 1) = &v26;
    __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
    sub_26BE00608(v5, v4);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v17 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v18 = 0;
        goto LABEL_27;
      }

      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      v18 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
LABEL_27:
        v21 = sub_26BF30414(v18);
        sub_26BE11228(v5, v4);
        sub_26BE136AC(v5, v4);
        v22 = v21 + v18;
        if (!__OFADD__(v21, v18))
        {
          v13 = __OFADD__(v22, 1);
          v23 = v22 + 1;
          if (!v13)
          {
            v16 = v14 + v23;
            if (!__OFADD__(v14, v23))
            {
              goto LABEL_15;
            }

            goto LABEL_31;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(v4);
      goto LABEL_27;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v18 = HIDWORD(v5) - v5;
    goto LABEL_27;
  }

  v25 = 0;
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  *&v26 = &v25;
  *(&v26 + 1) = &v26;
  __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  sub_26C00908C();
  v15 = __swift_destroy_boxed_opaque_existential_1(&v26);
  v16 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
LABEL_15:
    v26 = xmmword_26C00BBD0;
    v27 = 0;
    v6 = sub_26BEE5E74(0, v6);
    v15 = sub_26BF30414(v6);
    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  v24 = v15;
  sub_26BF2A30C(&v26);
  sub_26BE00258(v26, *(&v26 + 1));
  if (__OFADD__(v24, v6))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  if (__OFADD__(v16, v24 + v6))
  {
    goto LABEL_41;
  }
}

void sub_26BEE4D28(void *a1@<X8>)
{
  v3 = v1;
  v164 = *MEMORY[0x277D85DE8];
  v5 = sub_26C00914C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BF2F7B0();
  if (v2)
  {
    return;
  }

  v153 = v9;
  v154 = v10;
  v11 = sub_26BEE62D4();
  if ((v11 & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v13 = 1;
    goto LABEL_9;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      v14 = sub_26BF2F7B0();
      v152 = v15;
      v149 = a1;
      v150 = v5;
      goto LABEL_11;
    }

    sub_26BE01600();
    swift_allocError();
    v13 = 5;
LABEL_9:
    *v12 = v13;
    swift_willThrow();
    sub_26BE00258(v153, v154);
    return;
  }

  v149 = a1;
  v150 = v5;
  v14 = v11;
  v152 = 0xF000000000000000;
LABEL_11:
  v17 = *v3;
  v16 = v3[1];
  v18 = v3[2];
  sub_26BE00608(*v3, v16);
  sub_26BE00608(v17, v16);
  sub_26BF30764(v3, &v157);
  v145 = v18;
  v147 = v17;
  v148 = v16;
  if (v158)
  {
    sub_26BE00258(*v3, v3[1]);
    v20 = v147;
    v19 = v148;
    *v3 = v147;
    v3[1] = v19;
    v21 = v19;
    v22 = v20;
    v23 = v145;
    v3[2] = v145;
LABEL_15:
    sub_26BE00258(v22, v21);
    *v3 = v20;
    v3[1] = v19;
    v3[2] = v23;
    sub_26BE01600();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    sub_26BE00258(v153, v154);
    sub_26BE136AC(v14, v152);
    return;
  }

  v151 = v14;
  v146 = 0;
  v25 = v157;
  sub_26BE00258(v147, v148);
  if (v25 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v26 = 5;
    swift_willThrow();
    v28 = v147;
    v27 = v148;
    v29 = v145;
    goto LABEL_12;
  }

  v30 = sub_26BF2A44C(v25);
  if (v31 >> 60 == 15)
  {
    v22 = *v3;
    v21 = v3[1];
    v14 = v151;
    v20 = v147;
    v19 = v148;
    v23 = v145;
    goto LABEL_15;
  }

  v136 = (v6 + 8);
  v161 = v30;
  v162 = v31;
  v163 = v32;
  v144 = MEMORY[0x277D84F90];
  while (1)
  {
    v33 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v34 = *(v30 + 24);
      }

      else
      {
        v34 = 0;
      }
    }

    else if (v33)
    {
      v34 = v30 >> 32;
    }

    else
    {
      v34 = BYTE6(v31);
    }

    v35 = __OFSUB__(v34, v32);
    v36 = v34 - v32;
    if (v35)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
    }

    if (v36 < 1)
    {
      if (v33 > 1)
      {
        v29 = v145;
        if (v33 == 2)
        {
          v124 = *(v30 + 24);
        }

        else
        {
          v124 = 0;
        }
      }

      else
      {
        v124 = BYTE6(v31);
        if (v33)
        {
          v124 = v30 >> 32;
        }

        v29 = v145;
      }

      if (__OFSUB__(v124, v32))
      {
        goto LABEL_202;
      }

      if (v124 == v32)
      {
        sub_26BE00258(v30, v31);
        sub_26BE00258(v147, v148);
        v130 = v154;
        v131 = v149;
        *v149 = v153;
        v131[1] = v130;
        v132 = v152;
        v131[2] = v151;
        v131[3] = v132;
        v131[4] = v144;
        return;
      }

      sub_26BE01654();
      swift_allocError();
      *v133 = 0;
      v133[112] = 1;
      swift_willThrow();

      sub_26BE00258(v161, v162);
      v28 = v147;
      v27 = v148;
LABEL_12:
      sub_26BE00258(*v3, v3[1]);
      *v3 = v28;
      v3[1] = v27;
      v3[2] = v29;
      swift_willThrow();
      sub_26BE00258(v153, v154);
      sub_26BE136AC(v151, v152);
      return;
    }

    LOBYTE(v155) = 0;
    v37 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_184;
    }

    if (v33 <= 1)
    {
      if (v33)
      {
        v38 = v30 >> 32;
      }

      else
      {
        v38 = BYTE6(v31);
      }

LABEL_37:
      if (v38 < v37)
      {
        goto LABEL_155;
      }

      goto LABEL_40;
    }

    if (v33 == 2)
    {
      v38 = *(v30 + 24);
      goto LABEL_37;
    }

    if (v37 > 0)
    {
      goto LABEL_155;
    }

LABEL_40:
    v157 = v30;
    v158 = v31;
    if (v37 < v32)
    {
      goto LABEL_185;
    }

    *&__dst = v32;
    *(&__dst + 1) = v32 + 1;
    v142 = v30;
    v141 = v31;
    sub_26BE00608(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v39 = sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
    v139 = v39;
    sub_26C008E1C();
    sub_26BE00258(v157, v158);
    v163 = v37;
    if (v155 == 1)
    {
      v43 = v142;
      v44 = v141;
      sub_26BE00608(v142, v141);
      sub_26BE00608(v43, v44);
      v45 = v146;
      sub_26BF30764(&v161, &v157);
      if (v45)
      {
        sub_26BE00258(v161, v162);
        sub_26BE00258(v43, v44);
        swift_willThrow();
        v161 = v43;
        v162 = v44;
        v163 = v37;
        goto LABEL_175;
      }

      if (v158)
      {
        sub_26BE00258(v161, v162);
        v127 = v44;
        v48 = v43;
        goto LABEL_174;
      }

      v146 = 0;
      v46 = v157;
      sub_26BE00258(v43, v44);
      v47 = v163 + v46;
      if (__OFADD__(v163, v46))
      {
        goto LABEL_194;
      }

      v48 = v161;
      v49 = v162;
      v50 = v162 >> 62;
      if ((v162 >> 62) <= 1)
      {
        if (v50)
        {
          v51 = v161 >> 32;
        }

        else
        {
          v51 = BYTE6(v162);
        }

        goto LABEL_102;
      }

      if (v50 == 2)
      {
        v51 = *(v161 + 24);
LABEL_102:
        if (v51 < v47)
        {
          goto LABEL_173;
        }
      }

      else if (v47 > 0)
      {
LABEL_173:
        v127 = v162;
LABEL_174:
        sub_26BE00258(v48, v127);
        v161 = v43;
        v162 = v44;
        v163 = v37;
        sub_26BE01600();
        swift_allocError();
        *v128 = 1;
LABEL_175:
        v28 = v147;
        v27 = v148;
        v29 = v145;
        swift_willThrow();
        goto LABEL_176;
      }

      if (v47 < v163)
      {
        goto LABEL_196;
      }

      v76 = v161;
      v77 = sub_26C00909C();
      v78 = v77;
      v80 = v79;
      v163 = v47;
      v81 = v79 >> 62;
      if ((v79 >> 62) > 1)
      {
        if (v81 != 2)
        {
LABEL_119:
          v143 = sub_26C00909C();
          v140 = v84;
          sub_26BE00258(v78, v80);
          sub_26BE00258(v43, v44);
          v141 = 0;
          v142 = 0;
          v83 = v76;
          v63 = v49;
          goto LABEL_130;
        }

        v77 = *(v77 + 16);
        v82 = *(v78 + 24);
      }

      else
      {
        if (!v81)
        {
          goto LABEL_119;
        }

        v77 = v77;
        v82 = v78 >> 32;
      }

      if (v82 < v77)
      {
        goto LABEL_198;
      }

      goto LABEL_119;
    }

    if (v155 != 2)
    {
      break;
    }

    LOBYTE(v155) = 0;
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_189;
    }

    if (v33 > 1)
    {
      v41 = v141;
      if (v33 == 2)
      {
        v42 = *(v142 + 24);
        goto LABEL_72;
      }

      if (v40 <= 0)
      {
        goto LABEL_75;
      }

LABEL_155:
      sub_26BE01600();
      swift_allocError();
      v123 = 1;
LABEL_156:
      *v122 = v123;
      swift_willThrow();
LABEL_157:
      v28 = v147;
      v27 = v148;
      v29 = v145;
      goto LABEL_176;
    }

    v41 = v141;
    if (v33)
    {
      v42 = v142 >> 32;
    }

    else
    {
      v42 = BYTE6(v141);
    }

LABEL_72:
    if (v42 < v40)
    {
      goto LABEL_155;
    }

LABEL_75:
    v157 = v142;
    v158 = v41;
    if (v40 < v37)
    {
      goto LABEL_192;
    }

    *&__dst = v37;
    *(&__dst + 1) = v37 + 1;
    sub_26BE00608(v142, v41);
    sub_26C008E1C();
    sub_26BE00258(v157, v158);
    v143 = v155;
    v163 = v37 + 1;
    v58 = v146;
    v59 = sub_26BF2F7B0();
    if (v58)
    {
      goto LABEL_157;
    }

    v140 = v59;
    v155 = 0;
    v47 = v163 + 8;
    if (__OFADD__(v163, 8))
    {
      goto LABEL_195;
    }

    v61 = v60;
    v62 = v161;
    v63 = v162;
    v64 = v162 >> 62;
    if ((v162 >> 62) > 1)
    {
      if (v64 != 2)
      {
        if (v47 > 0)
        {
LABEL_177:
          sub_26BE01600();
          swift_allocError();
          *v129 = 1;
          swift_willThrow();
          sub_26BE00258(v140, v61);
          goto LABEL_157;
        }

        goto LABEL_115;
      }

      v65 = *(v161 + 24);
    }

    else if (v64)
    {
      v65 = v161 >> 32;
    }

    else
    {
      v65 = BYTE6(v162);
    }

    if (v65 < v47)
    {
      goto LABEL_177;
    }

LABEL_115:
    v146 = 0;
    v157 = v161;
    v158 = v162;
    if (v47 < v163)
    {
      goto LABEL_197;
    }

    *&__dst = v163;
    *(&__dst + 1) = v163 + 8;
    sub_26BE00608(v161, v162);
    sub_26C008E1C();
    v83 = v62;
    sub_26BE00258(v157, v158);
    v142 = bswap64(v155);
    v163 = v47;
    v141 = v61 | 0x1000000000000000;
LABEL_130:
    sub_26BE00608(v83, v63);
    sub_26BE00608(v83, v63);
    v94 = v146;
    sub_26BF30764(&v161, &v157);
    if (v94)
    {
      v125 = v140;
      sub_26BE00258(v161, v162);
      sub_26BE00258(v83, v63);
      swift_willThrow();
      v161 = v83;
      v162 = v63;
      v163 = v47;
      goto LABEL_166;
    }

    if (v158)
    {
      v125 = v140;
      sub_26BE00258(v161, v162);
      v99 = v63;
      v98 = v83;
      goto LABEL_165;
    }

    v146 = 0;
    v95 = v157;
    v96 = v83;
    sub_26BE00258(v83, v63);
    v97 = v163 + v95;
    if (__OFADD__(v163, v95))
    {
      goto LABEL_186;
    }

    v98 = v161;
    v99 = v162;
    v100 = v162 >> 62;
    if ((v162 >> 62) <= 1)
    {
      if (v100)
      {
        v101 = v161 >> 32;
      }

      else
      {
        v101 = BYTE6(v162);
      }

LABEL_139:
      if (v101 < v97)
      {
        goto LABEL_164;
      }

      goto LABEL_142;
    }

    if (v100 == 2)
    {
      v101 = *(v161 + 24);
      goto LABEL_139;
    }

    if (v97 > 0)
    {
LABEL_164:
      v125 = v140;
      v83 = v96;
LABEL_165:
      sub_26BE00258(v98, v99);
      v161 = v83;
      v162 = v63;
      v163 = v47;
      sub_26BE01600();
      swift_allocError();
      *v126 = 1;
LABEL_166:
      v28 = v147;
      v27 = v148;
      v29 = v145;
      swift_willThrow();
      sub_26BEE5F24(v143, v125, v141, v142, sub_26BE00258);
LABEL_176:

      sub_26BE00258(v161, v162);
      goto LABEL_12;
    }

LABEL_142:
    if (v97 < v163)
    {
      goto LABEL_187;
    }

    v102 = sub_26C00909C();
    v103 = v102;
    v105 = v104;
    v163 = v97;
    v106 = v104 >> 62;
    if ((v104 >> 62) > 1)
    {
      if (v106 != 2)
      {
        goto LABEL_150;
      }

      v102 = *(v102 + 16);
      v107 = *(v103 + 24);
    }

    else
    {
      if (!v106)
      {
        goto LABEL_150;
      }

      v102 = v102;
      v107 = v103 >> 32;
    }

    if (v107 < v102)
    {
      goto LABEL_188;
    }

LABEL_150:
    v108 = sub_26C00909C();
    v110 = v109;
    sub_26BE00258(v103, v105);
    sub_26BE00258(v96, v63);
    v111 = v140;
    sub_26BEE5F24(v143, v140, v141, v142, sub_26BE00608);
    v138 = v108;
    v112 = v108;
    v113 = v110;
    sub_26BE00608(v112, v110);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = sub_26BEEC5B8(0, *(v144 + 2) + 1, 1, v144);
    }

    v115 = *(v144 + 2);
    v114 = *(v144 + 3);
    v139 = v97;
    v137 = v115 + 1;
    if (v115 >= v114 >> 1)
    {
      v144 = sub_26BEEC5B8((v114 > 1), v115 + 1, 1, v144);
    }

    v116 = v143;
    v117 = v141;
    v118 = v142;
    sub_26BEE5F24(v143, v111, v141, v142, sub_26BE00258);
    v119 = v138;
    sub_26BE00258(v138, v113);
    v120 = v144;
    *(v144 + 2) = v137;
    v121 = &v120[48 * v115];
    *(v121 + 4) = v116;
    *(v121 + 5) = v111;
    *(v121 + 6) = v117;
    *(v121 + 7) = v118;
    *(v121 + 8) = v119;
    *(v121 + 9) = v113;
    v30 = v161;
    v31 = v162;
    v32 = v139;
  }

  if (v33 > 1)
  {
    v54 = v142;
    v52 = BYTE6(v141);
    if (v33 == 2)
    {
      v53 = *(v142 + 24);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v52 = BYTE6(v141);
    v53 = BYTE6(v141);
    v54 = v142;
    if (v33)
    {
      v53 = v142 >> 32;
    }
  }

  v35 = __OFSUB__(v53, v37);
  v55 = v53 - v37;
  if (v35)
  {
    goto LABEL_190;
  }

  v56 = v37 + v55;
  if (__OFADD__(v37, v55))
  {
    goto LABEL_191;
  }

  if (v33 <= 1)
  {
    if (v33)
    {
      v57 = v54 >> 32;
    }

    else
    {
      v57 = v52;
    }

    goto LABEL_84;
  }

  if (v33 != 2)
  {
    if (v56 <= 0)
    {
      goto LABEL_87;
    }

LABEL_170:
    sub_26BE01600();
    swift_allocError();
    v123 = 5;
    goto LABEL_156;
  }

  v57 = *(v54 + 24);
LABEL_84:
  if (v57 < v56)
  {
    goto LABEL_170;
  }

LABEL_87:
  v143 = v155;
  if (v56 < v37)
  {
    goto LABEL_193;
  }

  v66 = sub_26C00909C();
  v68 = v67 >> 62;
  if ((v67 >> 62) > 1)
  {
    if (v68 != 2)
    {
      goto LABEL_100;
    }

    v71 = *(v66 + 16);
    v70 = *(v66 + 24);
    v69 = v70 - v71;
    if (__OFSUB__(v70, v71))
    {
      goto LABEL_201;
    }

LABEL_97:
    if (v69)
    {
      v72 = v66;
      v73 = v67;
      if (v69 < 1)
      {
        v74 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
        v74 = swift_allocObject();
        v75 = _swift_stdlib_malloc_size(v74);
        v74[2] = v69;
        v74[3] = 2 * v75 - 64;
      }

      v85 = sub_26C00902C();
      sub_26BE00258(v72, v73);
      (*v136)(v8, v150);
      if (v85 != v69)
      {
        goto LABEL_199;
      }
    }

    else
    {
LABEL_100:
      sub_26BE00258(v66, v67);
      v74 = MEMORY[0x277D84F90];
    }

    v163 = v56;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    v159 = v86;
    v160 = sub_26BE13630(&qword_28045E440, &qword_28045E228, &qword_26C00CDD0, MEMORY[0x277CC9C28]);
    v157 = v74;
    v87 = __swift_project_boxed_opaque_existential_1(&v157, v86);
    v88 = *v87;
    v89 = *(*v87 + 16);
    if (v89)
    {
      if (v89 <= 0xE)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v89;
        memcpy(&__dst, (v88 + 32), v89);
        v140 = __dst;
        v92 = v135 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);

        v135 = v92;
      }

      else
      {
        sub_26C008EEC();
        swift_allocObject();

        v90 = sub_26C008E8C();
        v91 = v90;
        if (v89 >= 0x7FFFFFFF)
        {
          sub_26C00904C();
          v93 = swift_allocObject();
          *(v93 + 16) = 0;
          *(v93 + 24) = v89;
          v140 = v93;
          v92 = v91 | 0x8000000000000000;
        }

        else
        {
          v140 = v89 << 32;
          v92 = v90 | 0x4000000000000000;
        }
      }
    }

    else
    {

      v140 = 0;
      v92 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v157);

    v142 = 0;
    v141 = v92 | 0x2000000000000000;
    v83 = v161;
    v63 = v162;
    v47 = v163;
    goto LABEL_130;
  }

  if (!v68)
  {
    v69 = BYTE6(v67);
    goto LABEL_97;
  }

  if (!__OFSUB__(HIDWORD(v66), v66))
  {
    v69 = HIDWORD(v66) - v66;
    goto LABEL_97;
  }

  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
}

uint64_t sub_26BEE5E74(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 32);
  v5 = *(a2 + 16) + 1;
  while (--v5)
  {
    v6 = v4[1];
    v12[0] = *v4;
    v12[1] = v6;
    v12[2] = v4[2];
    sub_26BEE5F60(v12, &v11);
    v7 = sub_26BECC2F8(v12);
    if (v2)
    {
      goto LABEL_7;
    }

    v8 = v7;
    v4 += 3;
    sub_26BEE5FBC(v12);
    v9 = __OFADD__(a1, v8);
    a1 += v8;
    if (v9)
    {
      __break(1u);
LABEL_7:
      sub_26BEE5FBC(v12);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26BEE5F24(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v5 != 2)
    {
      return result;
    }
  }

  else if (!v5)
  {
    return a5(result, a2);
  }

  return a5(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
}

uint64_t MLS.ApplicationData.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_26BEE6028()
{
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 <= 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 32);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26BE00608(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
  sub_26BE016A8();
  sub_26BE016FC();
  sub_26C008E1C();
  sub_26BE00258(v10, v11);
  v7 = 0;
  v8 = bswap32(0);
  v0[2] = v2;
  return v8 | (v7 << 32);
}

uint64_t sub_26BEE6180()
{
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 16);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26BE00608(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
  sub_26BE016A8();
  sub_26BE016FC();
  sub_26C008E1C();
  sub_26BE00258(v10, v11);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
  return v8 | (v7 << 16);
}

uint64_t sub_26BEE62D4()
{
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return (v7 << 8);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26BE00608(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
  sub_26BE016A8();
  sub_26BE016FC();
  sub_26C008E1C();
  sub_26BE00258(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return (v7 << 8);
}