uint64_t sub_24071A848(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v5 - v1;
  (*(v3 + 16))(v5 - v1);
  return sub_2405BE9EC(v2);
}

uint64_t (*sub_24071A914(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x28223BE20](v3);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  KeyPath = swift_getKeyPath();
  sub_24071ACC0(KeyPath);

  *v4 = v1;
  MEMORY[0x28223BE20](v9);
  swift_getKeyPath();
  type metadata accessor for ObservableBox(255, v6, v7, v10);
  swift_getWitnessTable();
  sub_240759834();

  v4[5] = sub_2405BEA94(v4);
  return sub_24071AAB0;
}

void sub_24071AAB0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_24071AB04(v2);

  free(v1);
}

uint64_t sub_24071AB04(void *a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for ObservableBox(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_240759824();
}

uint64_t ObservableBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ObservableBox.init(_:)(a1);
  return v2;
}

uint64_t ObservableBox.init(_:)(uint64_t a1)
{
  sub_240759844();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t ObservableBox.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = sub_240759854();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObservableBox.__deallocating_deinit()
{
  ObservableBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24071AF6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15[-v7];
  sub_2405BE94C(&v15[-v7]);
  v9 = *(v4 + 88);
  v10 = sub_24075A054();
  v11 = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    (*(v6 + 16))(v8, a1, v5);
    return sub_2405BE9EC(v8);
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *&v15[-16] = v5;
    *&v15[-8] = v9;
    KeyPath = swift_getKeyPath();
    v14 = MEMORY[0x28223BE20](KeyPath);
    *&v15[-16] = v2;
    *&v15[-8] = a1;
    sub_24071AD6C(v14, sub_24071B2D0, &v15[-32], MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_24071B168(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_240759854();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_24071B2EC(uint64_t a1)
{
  v3 = sub_24075A714();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  type metadata accessor for OneTimeUse(0, a1, v7, v8);
  v9 = *(a1 - 8);
  (*(v9 + 16))(v6, v1, a1);
  (*(v9 + 56))(v6, 0, 1, a1);
  v13 = sub_24071B61C(v6, v10, v11, v12);
  (*(v4 + 8))(v6, v3);
  return v13;
}

uint64_t sub_24071B444()
{
  v1 = *v0;
  v2 = v0[2];

  v4[2] = *(v1 + 80);
  sub_24075A714();
  sub_2406AB7E4(sub_24071B600, v4, v2);
}

uint64_t sub_24071B4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24075A714();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  return (*(*(a2 - 8) + 56))(a1, 1, 1, a2);
}

uint64_t sub_24071B5B0()
{

  return swift_deallocClassInstance();
}

void *sub_24071B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneTimeUse(0, *(v4 + 80), a3, a4);
  v6 = swift_allocObject();
  v7 = sub_24075A714();
  *(v6 + 16) = sub_2406AC3E8(a1, v7);
  return v6;
}

uint64_t sub_24071B688(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x61746144736D6469;
  v6 = 0xD000000000000015;
  v7 = 0x8000000240785DD0;
  if (a1 != 4)
  {
    v6 = 0x53746E6572727563;
    v7 = 0xEF73656369767265;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x65746E4972657375;
  v9 = 0xEF6E6F6974636172;
  if (a1 != 1)
  {
    v8 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x746E756F636361;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x61746144736D6469)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x8000000240785DD0;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF73656369767265;
      if (v10 != 0x53746E6572727563)
      {
LABEL_34:
        v13 = sub_24075ACF4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEF6E6F6974636172;
      if (v10 != 0x65746E4972657375)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6574617473)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746E756F636361)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24071B894(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E756F636361;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7265766F63736964;
    }

    else
    {
      v4 = 0x6574617473;
    }

    if (v3 == 2)
    {
      v5 = 0xEE006C65646F4D79;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F5265746F6D6572;
    }

    else
    {
      v4 = 0x746E756F636361;
    }

    if (v3)
    {
      v5 = 0xEA0000000000656CLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7265766F63736964;
  v8 = 0xEE006C65646F4D79;
  if (a2 != 2)
  {
    v7 = 0x6574617473;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6F5265746F6D6572;
    v6 = 0xEA0000000000656CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24075ACF4();
  }

  return v11 & 1;
}

uint64_t sub_24071B9F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C6F526C61636F6CLL;
  v4 = a1;
  v5 = 0xEB000000006C6564;
  v6 = 0xD00000000000001DLL;
  if (a1 == 5)
  {
    v6 = 0x6F4D6E496E676973;
  }

  else
  {
    v5 = 0x8000000240785FD0;
  }

  v7 = 0x7265766F63736964;
  v8 = 0xEE006C65646F4D79;
  if (a1 != 3)
  {
    v7 = 0xD000000000000013;
    v8 = 0x8000000240785FB0;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x6F5265746F6D6572;
  v10 = 0xEA0000000000656CLL;
  if (a1 != 1)
  {
    v9 = 0x6574617473;
    v10 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x6C6F526C61636F6CLL;
    v10 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000656CLL;
        if (v11 != 0x6F5265746F6D6572)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x6574617473)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEB000000006C6564;
        if (v11 != 0x6F4D6E496E676973)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x8000000240785FD0;
        if (v11 != 0xD00000000000001DLL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0xEE006C65646F4D79;
      if (v11 != 0x7265766F63736964)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0xD000000000000013;
    v2 = 0x8000000240785FB0;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_24075ACF4();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_24071BC38(uint64_t a1, unsigned __int8 a2)
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_24071BD80(uint64_t a1, unsigned __int8 a2)
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t SetupModel.init(localRole:remoteRole:state:discoveryModel:authenticationModel:signInModel:)@<X0>(void *__src@<X3>, char *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 8) = *a3;
  v10 = *(a4 + 16);
  *(a7 + 40) = *a4;
  v11 = *a2;
  v12 = *(a3 + 16);
  v15 = *(a3 + 24);
  v13 = a3 + 24;
  v14 = v15;
  LOWORD(v15) = *(v13 + 4);
  v16 = *(a4 + 48);
  *(a7 + 39) = 0;
  *a7 = v11;
  *(a7 + 24) = v12;
  *(a7 + 32) = v14;
  *(a7 + 36) = v15;
  *(a7 + 38) = *(v13 + 6);
  *(a7 + 56) = v10;
  *(a7 + 72) = *(a4 + 32);
  *(a7 + 88) = v16;
  memcpy((a7 + 96), __src, 0x131uLL);
  v17 = type metadata accessor for SetupModel(0);
  sub_24071BFE4(a5, a7 + *(v17 + 36), type metadata accessor for AuthenticationModel);
  return sub_24071BFE4(a6, a7 + *(v17 + 40), type metadata accessor for SignInModel);
}

uint64_t type metadata accessor for SetupModel(uint64_t a1)
{
  result = qword_27E4BE1B0;
  if (!qword_27E4BE1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24071BFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SetupModel.init(localRole:remoteRole:state:discoveryModel:authenticationModel:signInModel:hasCustomManualImplementation:)@<X0>(void *__src@<X3>, _BYTE *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 8) = *a3;
  v12 = *(a4 + 16);
  *(a8 + 40) = *a4;
  v13 = *(a3 + 16);
  v16 = *(a3 + 24);
  v14 = a3 + 24;
  v15 = v16;
  LOWORD(v16) = *(v14 + 4);
  v17 = *(a4 + 48);
  *a8 = *a2;
  *(a8 + 24) = v13;
  *(a8 + 32) = v15;
  *(a8 + 36) = v16;
  *(a8 + 38) = *(v14 + 6);
  *(a8 + 56) = v12;
  *(a8 + 72) = *(a4 + 32);
  *(a8 + 88) = v17;
  memcpy((a8 + 96), __src, 0x131uLL);
  v18 = type metadata accessor for SetupModel(0);
  sub_24071BFE4(a5, a8 + *(v18 + 36), type metadata accessor for AuthenticationModel);
  result = sub_24071BFE4(a6, a8 + *(v18 + 40), type metadata accessor for SignInModel);
  *(a8 + 39) = a7;
  return result;
}

double static SetupModel._defaultModel.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v49 = 0x200uLL;
  v50 = 0uLL;
  v51 = xmmword_240768EF0;
  LOBYTE(v52) = 0;
  sub_240676624(v43);
  sub_240604AE0(0, 0, 0, 0xA0u);
  sub_240609C34(0, 0, 0, 0);
  v5 = type metadata accessor for IdMSAccount(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v39 = v6;
  v40 = type metadata accessor for SetupModel(0);
  v7 = a1 + *(v40 + 36);
  v8 = type metadata accessor for AuthenticationModel(0);
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  v6(v7, 1, 1, v5);
  v9 = (v7 + v8[5]);
  v9[3] = 0u;
  v9[4] = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  *v9 = 0u;
  v10 = v8[8];
  v11 = (v7 + v8[7]);
  v12 = v8[9];
  v13 = (v7 + v8[11]);
  *v13 = 0;
  v13[1] = 0;
  sub_240590814(v4, v7);
  *(v7 + v8[6]) = 1;
  *v11 = 0;
  v11[1] = 0;
  *(v7 + v12) = 0;
  *(v7 + v10) = MEMORY[0x277D84F90];
  v14 = v39;
  v39(v4, 1, 1, v5);
  v15 = a1 + *(v40 + 40);
  v14(v15, 1, 1, v5);
  v16 = type metadata accessor for SignInModel(0);
  v17 = (v15 + v16[5]);
  v17[4] = 0u;
  v17[5] = 0u;
  v17[2] = 0u;
  v17[3] = 0u;
  *v17 = 0u;
  v17[1] = 0u;
  v18 = (v15 + v16[10]);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = (v15 + v16[11]);
  *(v15 + v16[13]) = 0;
  v20 = v16[15];
  v21 = (v15 + v16[14]);
  *(v15 + v20) = 2;
  v22 = (v15 + v16[17]);
  *v22 = 0;
  v22[1] = 0;
  *(v15 + v16[18]) = 0;
  sub_240590814(v4, v15);
  v23 = v17[3];
  v51 = v17[2];
  v52 = v23;
  v24 = v17[5];
  v53 = v17[4];
  v54 = v24;
  v25 = v17[1];
  v49 = *v17;
  v50 = v25;
  sub_24071C564(&v49);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[5] = 0u;
  v26 = MEMORY[0x277D84FA0];
  *(v15 + v16[6]) = MEMORY[0x277D84FA0];
  *(v15 + v16[7]) = v26;
  *(v15 + v16[8]) = 0;
  *(v15 + v16[9]) = 0;
  *v21 = 0;
  v21[1] = 0;
  *(v15 + v20) = 2;
  v27 = v15 + v16[16];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 3;
  v28 = v15 + v16[19];
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0xE000000000000000;
  *(v28 + 80) = 0;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  sub_240604C2C(*v18, v18[1], v18[2], v18[3]);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *v19 = 0;
  v19[1] = 0;
  *(v15 + v16[12]) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xC000000000;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = -1;
  *(a1 + 96) = 256;
  *(a1 + 98) = v47;
  *(a1 + 102) = v48;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 2;
  v29 = v45;
  *(a1 + 150) = v46;
  *(a1 + 146) = v29;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v30 = v43[0];
  *(a1 + 184) = v43[1];
  *(a1 + 168) = v30;
  v31 = v43[2];
  v32 = v43[3];
  v33 = v43[4];
  *(a1 + 248) = v43[5];
  *(a1 + 232) = v33;
  *(a1 + 216) = v32;
  *(a1 + 200) = v31;
  v34 = v43[6];
  v35 = v43[7];
  v36 = v43[8];
  *(a1 + 312) = v44;
  *(a1 + 280) = v35;
  *(a1 + 296) = v36;
  *(a1 + 264) = v34;
  *(a1 + 314) = v41;
  *(a1 + 318) = v42;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  return result;
}

uint64_t sub_24071C564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8D00, &qword_2407691E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24071C5E8(uint64_t a1)
{
  sub_24075A114();
}

unint64_t sub_24071C724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240722074(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24071C754(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6C6F526C61636F6CLL;
  v5 = 0xEB000000006C6564;
  v6 = 0x6F4D6E496E676973;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001DLL;
    v5 = 0x8000000240785FD0;
  }

  v7 = 0xEE006C65646F4D79;
  v8 = 0x7265766F63736964;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x8000000240785FB0;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000656CLL;
  v10 = 0x6F5265746F6D6572;
  if (v2 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_24071C858()
{
  v1 = *v0;
  v2 = 0x6C6F526C61636F6CLL;
  v3 = 0x6F4D6E496E676973;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001DLL;
  }

  v4 = 0x7265766F63736964;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F5265746F6D6572;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
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

unint64_t sub_24071C958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240722074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24071C980(uint64_t a1)
{
  v2 = sub_240720AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071C9BC(uint64_t a1)
{
  v2 = sub_240720AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

id SetupModel.remoteRole.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = v1 + 32;
  v5 = *(v3 - 24);
  v6 = *(v3 - 16);
  v7 = *(v3 - 8);
  v8 = *(v3 + 6);
  v9 = *(v3 + 4) | (v8 << 16);
  v10 = v4 | (v9 << 32);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;
  *(a1 + 30) = v8;
  *(a1 + 28) = v9;

  return sub_240609C0C(v5, v6, v7, v10);
}

__n128 SetupModel.remoteRole.setter(__n128 *a1)
{
  v11 = *a1;
  v2 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u32[2];
  v3 = &a1[1].n128_i8[8];
  v4 = v5;
  v6 = *(v3 + 2);
  v8 = *(v1 + 32);
  v7 = v1 + 32;
  v9 = v3[6];
  sub_240604AB8(*(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | ((*(v7 + 4) | (*(v7 + 6) << 16)) << 32));
  result = v11;
  *(v7 - 24) = v11;
  *(v7 - 8) = v2;
  *(v7 + 6) = v9;
  *(v7 + 4) = v6;
  *v7 = v4;
  return result;
}

uint64_t SetupModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 88);
  *(a1 + 48) = v8;
  return sub_240720A24(v2, v3, v4, v5, v6, v7, v8);
}

__n128 SetupModel.state.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_240720A38(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t SetupModel.discoveryModel.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0x131uLL);
  memcpy(a1, (v1 + 96), 0x131uLL);
  return sub_240684CD4(__dst, v4);
}

void *SetupModel.discoveryModel.setter(const void *a1)
{
  memcpy(v4, (v1 + 96), 0x131uLL);
  sub_240684D0C(v4);
  return memcpy((v1 + 96), a1, 0x131uLL);
}

uint64_t SetupModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE040, &qword_240781480);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720AB4();
  sub_24075AF74();
  v24[0] = *v3;
  v23[0] = 0;
  sub_240720B08();
  sub_24075ABE4();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = *(v3 + 38);
    v13 = *(v3 + 36) | (v12 << 16);
    *v24 = *(v3 + 8);
    *&v24[8] = v10;
    *&v24[16] = v11;
    *&v24[24] = v9;
    v24[30] = v12;
    *&v24[28] = v13;
    v23[0] = 1;
    sub_240609C0C(*v24, v10, v11, v9 | (v13 << 32));
    sub_24070352C();
    sub_24075ABE4();
    sub_240604AB8(*v24, *&v24[8], *&v24[16], *&v24[24] | ((*&v24[28] | (v24[30] << 16)) << 32));
    v14 = *(v3 + 48);
    v15 = *(v3 + 56);
    v16 = *(v3 + 64);
    v17 = *(v3 + 72);
    v18 = *(v3 + 80);
    v19 = *(v3 + 88);
    v26 = *(v3 + 40);
    v27 = v14;
    v28 = v15;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v25 = 2;
    sub_240720A24(v26, v14, v15, v16, v17, v18, v19);
    sub_240720B5C();
    sub_24075ABE4();
    sub_240720A38(v26, v27, v28, v29, v30, v31, v32);
    memcpy(v24, (v3 + 96), sizeof(v24));
    memcpy(v23, (v3 + 96), sizeof(v23));
    v22[311] = 3;
    sub_240684CD4(v24, v22);
    sub_240687078();
    sub_24075ABE4();
    memcpy(v22, v23, 0x131uLL);
    sub_240684D0C(v22);
    type metadata accessor for SetupModel(0);
    HIBYTE(v21) = 4;
    type metadata accessor for AuthenticationModel(0);
    sub_2407211B0(&qword_27E4B6B78, type metadata accessor for AuthenticationModel, &protocol conformance descriptor for AuthenticationModel);
    sub_24075ABE4();
    HIBYTE(v21) = 5;
    type metadata accessor for SignInModel(0);
    sub_2407211B0(&qword_27E4BCFF0, type metadata accessor for SignInModel, &protocol conformance descriptor for SignInModel);
    sub_24075ABE4();
    HIBYTE(v21) = 6;
    sub_24075ABC4();
  }

  return (*(v6 + 8))(v8, v5);
}

void SetupModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for SignInModel(0);
  MEMORY[0x28223BE20](v24);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AuthenticationModel(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE060, &qword_240781488);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SetupModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_240720AB4();
  v13 = v29;
  sub_24075AF34();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v29 = v5;
    v14 = v27;
    v33 = 0;
    sub_240720BB0();
    v15 = v28;
    sub_24075AAF4();
    *v11 = v31[0];
    v33 = 1;
    sub_24070361C();
    sub_24075AAF4();
    v16 = *&v31[1];
    v17 = WORD6(v31[1]);
    v18 = DWORD2(v31[1]);
    *(v11 + 8) = v31[0];
    *(v11 + 3) = v16;
    *(v11 + 8) = v18;
    *(v11 + 18) = v17;
    v11[38] = BYTE14(v31[1]);
    v33 = 2;
    sub_240720C04();
    sub_24075AAF4();
    v19 = v31[3];
    v20 = v31[1];
    *(v11 + 40) = v31[0];
    *(v11 + 56) = v20;
    *(v11 + 72) = v31[2];
    v11[88] = v19;
    v33 = 3;
    sub_240687024();
    sub_24075AAF4();
    memcpy(v11 + 96, v31, 0x131uLL);
    v32 = 4;
    sub_2407211B0(&qword_27E4B6B70, type metadata accessor for AuthenticationModel, &protocol conformance descriptor for AuthenticationModel);
    v21 = v29;
    sub_24075AAF4();
    sub_24071BFE4(v21, &v11[*(v9 + 36)], type metadata accessor for AuthenticationModel);
    v32 = 5;
    sub_2407211B0(&qword_27E4BCFE8, type metadata accessor for SignInModel, &protocol conformance descriptor for SignInModel);
    v22 = v25;
    sub_24075AAF4();
    sub_24071BFE4(v22, &v11[*(v9 + 40)], type metadata accessor for SignInModel);
    v32 = 6;
    LOBYTE(v22) = sub_24075AAD4();
    (*(v14 + 8))(v8, v15);
    v11[39] = v22 & 1;
    sub_240720C58(v11, v23, type metadata accessor for SetupModel);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_240720CC0(v11, type metadata accessor for SetupModel);
  }
}

double SetupModel.hash(into:)(__int128 *a1)
{
  MEMORY[0x245CC6BA0](*v1);
  v3 = *(v1 + 8);
  v4 = *(v1 + 3);
  v5 = *(v1 + 18);
  v6 = v1[38];
  __dst[0] = *(v1 + 8);
  *&__dst[1] = v4;
  BYTE14(__dst[1]) = v6;
  WORD6(__dst[1]) = v5;
  DWORD2(__dst[1]) = v3;
  RemoteRole.hash(into:)(a1);
  sub_24075AE94();
  v7 = v1[88];
  if (v7 > 0xFC)
  {
    if (v7 == 253)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7 == 254;
    }

    goto LABEL_12;
  }

  switch(v7)
  {
    case 0xFAu:
      v8 = 6;
      goto LABEL_12;
    case 0xFBu:
      v8 = 4;
      goto LABEL_12;
    case 0xFCu:
      v8 = 3;
LABEL_12:
      MEMORY[0x245CC6BA0](v8);
      goto LABEL_13;
  }

  v10 = *(v1 + 9);
  v9 = *(v1 + 10);
  v12 = *(v1 + 56);
  v13 = *(v1 + 40);
  MEMORY[0x245CC6BA0](5);
  __dst[0] = v13;
  __dst[1] = v12;
  *&__dst[2] = v10;
  *(&__dst[2] + 1) = v9;
  LOBYTE(__dst[3]) = v7;
  SetupError.hash(into:)(a1);
LABEL_13:
  memcpy(__dst, v1 + 96, 0x131uLL);
  DiscoveryModel.hash(into:)(a1);
  type metadata accessor for SetupModel(0);
  AuthenticationModel.hash(into:)(a1);
  *&result = SignInModel.hash(into:)(a1).n128_u64[0];
  return result;
}

uint64_t SetupModel.hashValue.getter()
{
  sub_24075AE64();
  SetupModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24071DBBC()
{
  sub_24075AE64();
  SetupModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24071DC00(uint64_t a1)
{
  sub_24075AE64();
  SetupModel.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t SetupModel.description.getter()
{
  *&v11[0] = 0;
  *(&v11[0] + 1) = 0xE000000000000000;
  sub_24075A864();
  v12 = v11[0];
  MEMORY[0x245CC5E60](0x6C61636F6C20200ALL, 0xEE00203A656C6F52);
  LOBYTE(v11[0]) = *v0;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x746F6D657220200ALL, 0xEF203A656C6F5265);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  v4 = *(v0 + 38);
  v11[0] = *(v0 + 8);
  *&v11[1] = v1;
  BYTE14(v11[1]) = v4;
  WORD6(v11[1]) = v3;
  DWORD2(v11[1]) = v2;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x657461747320200ALL, 0xEA0000000000203ALL);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v11[0] = *(v0 + 40);
  v11[1] = v6;
  v11[2] = *(v0 + 72);
  LOBYTE(v11[3]) = v5;
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000014, 0x800000024078A010);
  memcpy(v11, (v0 + 96), 0x131uLL);
  v7 = DiscoveryModel.description.getter();
  MEMORY[0x245CC5E60](v7);

  MEMORY[0x245CC5E60](0xD000000000000019, 0x800000024078A030);
  type metadata accessor for SetupModel(0);
  v8 = AuthenticationModel.description.getter();
  MEMORY[0x245CC5E60](v8);

  MEMORY[0x245CC5E60](0xD000000000000011, 0x800000024078A050);
  v9 = SignInModel.description.getter();
  MEMORY[0x245CC5E60](v9);

  return v12;
}

uint64_t sub_24071DE80(uint64_t a1)
{
  v2 = sub_240720EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071DEBC(uint64_t a1)
{
  v2 = sub_240720EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071DEF8()
{
  v1 = *v0;
  v2 = 0x6C616974696E69;
  v3 = 0x64656C696166;
  if (v1 != 5)
  {
    v3 = 0x7373696D736964;
  }

  v4 = 0x6E496E676973;
  if (v1 != 3)
  {
    v4 = 0x64656873696E6966;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7265766F63736964;
  if (v1 != 1)
  {
    v5 = 0x69746E6568747561;
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

uint64_t sub_24071DFD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2407220C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24071DFFC(uint64_t a1)
{
  v2 = sub_240720D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E038(uint64_t a1)
{
  v2 = sub_240720D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E074(uint64_t a1)
{
  v2 = sub_240720F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E0B0(uint64_t a1)
{
  v2 = sub_240720F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E0EC(uint64_t a1)
{
  v2 = sub_240720D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E128(uint64_t a1)
{
  v2 = sub_240720D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E164(uint64_t a1)
{
  v2 = sub_240720DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E1A0(uint64_t a1)
{
  v2 = sub_240720DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E1DC(uint64_t a1)
{
  v2 = sub_240720E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E218(uint64_t a1)
{
  v2 = sub_240720E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E254(uint64_t a1)
{
  v2 = sub_240720F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E290(uint64_t a1)
{
  v2 = sub_240720F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E2CC(uint64_t a1)
{
  v2 = sub_240720E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E308(uint64_t a1)
{
  v2 = sub_240720E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupModel.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE078, &qword_240781490);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE080, &qword_240781498);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE088, &qword_2407814A0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE090, &qword_2407814A8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v32 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE098, &qword_2407814B0);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0A0, &qword_2407814B8);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0A8, &qword_2407814C0);
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0B0, &qword_2407814C8);
  v54 = *(v17 - 8);
  v55 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = *v1;
  v34 = v1[1];
  v35 = v20;
  v21 = *(v1 + 5);
  v33 = *(v1 + 4);
  v32 = v21;
  v22 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720D20();
  sub_24075AF74();
  if (v22 > 252)
  {
    if (v22 == 253)
    {
      LOBYTE(v56) = 2;
      sub_240720EC4();
      v27 = v39;
      v24 = v55;
      sub_24075AB54();
      (*(v40 + 8))(v27, v41);
    }

    else if (v22 == 254)
    {
      LOBYTE(v56) = 1;
      sub_240720F18();
      v24 = v55;
      sub_24075AB54();
      (*(v37 + 8))(v13, v38);
    }

    else
    {
      LOBYTE(v56) = 0;
      sub_240720F6C();
      v24 = v55;
      sub_24075AB54();
      (*(v36 + 8))(v16, v14);
    }
  }

  else
  {
    switch(v22)
    {
      case 250:
        LOBYTE(v56) = 6;
        sub_240720D74();
        v23 = v48;
        v24 = v55;
        sub_24075AB54();
        v26 = v49;
        v25 = v50;
        break;
      case 251:
        LOBYTE(v56) = 4;
        sub_240720E1C();
        v23 = v45;
        v24 = v55;
        sub_24075AB54();
        v26 = v46;
        v25 = v47;
        break;
      case 252:
        LOBYTE(v56) = 3;
        sub_240720E70();
        v23 = v42;
        v24 = v55;
        sub_24075AB54();
        v26 = v43;
        v25 = v44;
        break;
      default:
        LOBYTE(v56) = 5;
        sub_240720DC8();
        v28 = v51;
        v29 = v55;
        sub_24075AB54();
        v56 = v35;
        v57 = v34;
        v58 = v33;
        v59 = v32;
        v60 = v22;
        sub_2405B0D90();
        v30 = v53;
        sub_24075ABE4();
        (*(v52 + 8))(v28, v30);
        return (*(v54 + 8))(v19, v29);
    }

    (*(v26 + 8))(v23, v25);
  }

  return (*(v54 + 8))(v19, v24);
}

uint64_t SetupModel.State.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3 > 0xFC)
  {
    switch(v3)
    {
      case 0xFDu:
        v4 = 2;
        return MEMORY[0x245CC6BA0](v4);
      case 0xFEu:
        v4 = 1;
        return MEMORY[0x245CC6BA0](v4);
      case 0xFFu:
        v4 = 0;
        return MEMORY[0x245CC6BA0](v4);
    }

LABEL_12:
    MEMORY[0x245CC6BA0](5);
    return SetupError.hash(into:)(a1);
  }

  if (v3 == 250)
  {
    v4 = 6;
    return MEMORY[0x245CC6BA0](v4);
  }

  if (v3 == 251)
  {
    v4 = 4;
    return MEMORY[0x245CC6BA0](v4);
  }

  if (v3 != 252)
  {
    goto LABEL_12;
  }

  v4 = 3;
  return MEMORY[0x245CC6BA0](v4);
}

uint64_t SetupModel.State.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_24075AE64();
  if (v1 > 252)
  {
    if (v1 == 253)
    {
      v2 = 2;
    }

    else
    {
      v2 = v1 == 254;
    }

    goto LABEL_12;
  }

  switch(v1)
  {
    case 250:
      v2 = 6;
      goto LABEL_12;
    case 251:
      v2 = 4;
      goto LABEL_12;
    case 252:
      v2 = 3;
LABEL_12:
      MEMORY[0x245CC6BA0](v2);
      return sub_24075AED4();
  }

  MEMORY[0x245CC6BA0](5);
  SetupError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t SetupModel.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0F8, &qword_2407814D0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v65 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE100, &qword_2407814D8);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v45 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE108, &qword_2407814E0);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v63 = &v45 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE110, &qword_2407814E8);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v60 = &v45 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE118, &qword_2407814F0);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v61 = &v45 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE120, &qword_2407814F8);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE128, &qword_240781500);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE130, &unk_240781508);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_240720D20();
  v19 = v75;
  sub_24075AF34();
  if (!v19)
  {
    v20 = v13;
    v45 = v11;
    v46 = v10;
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v75 = v15;
    v24 = sub_24075AB34();
    v25 = (2 * *(v24 + 16)) | 1;
    v71 = v24;
    v72 = v24 + 32;
    v73 = 0;
    v74 = v25;
    v26 = sub_2405B8B04();
    v27 = v17;
    if (v26 != 7 && v73 == v74 >> 1)
    {
      if (v26 <= 2u)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            LOBYTE(v67) = 1;
            sub_240720F18();
            v39 = v46;
            sub_24075AA54();
            (*(v48 + 8))(v39, v49);
            (*(v75 + 8))(v27, v14);
            swift_unknownObjectRelease();
            v32 = 0uLL;
            v33 = -2;
          }

          else
          {
            LOBYTE(v67) = 2;
            sub_240720EC4();
            v41 = v61;
            sub_24075AA54();
            (*(v50 + 8))(v41, v51);
            (*(v75 + 8))(v27, v14);
            swift_unknownObjectRelease();
            v32 = 0uLL;
            v33 = -3;
          }
        }

        else
        {
          LOBYTE(v67) = 0;
          sub_240720F6C();
          sub_24075AA54();
          (*(v47 + 8))(v20, v45);
          (*(v75 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v32 = 0uLL;
          v33 = -1;
        }
      }

      else
      {
        if (v26 <= 4u)
        {
          v28 = v66;
          v29 = v62;
          v30 = v75;
          if (v26 == 3)
          {
            LOBYTE(v67) = 3;
            sub_240720E70();
            v31 = v60;
            sub_24075AA54();
            (*(v52 + 8))(v31, v53);
            (*(v30 + 8))(v17, v14);
            swift_unknownObjectRelease();
            v32 = 0uLL;
            v33 = -4;
          }

          else
          {
            LOBYTE(v67) = 4;
            sub_240720E1C();
            sub_24075AA54();
            (*(v54 + 8))(v21, v55);
            (*(v30 + 8))(v17, v14);
            swift_unknownObjectRelease();
            v32 = 0uLL;
            v33 = -5;
          }

          v43 = 0uLL;
          v44 = 0uLL;
          v37 = v28;
          goto LABEL_23;
        }

        v40 = v75;
        if (v26 == 5)
        {
          LOBYTE(v67) = 5;
          sub_240720DC8();
          sub_24075AA54();
          sub_2405B0DE4();
          v42 = v59;
          sub_24075AAF4();
          (*(v58 + 8))(v22, v42);
          (*(v40 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v32 = v67;
          v43 = v68;
          v44 = v69;
          v33 = v70;
LABEL_21:
          v37 = v66;
          v29 = v62;
LABEL_23:
          *v29 = v32;
          *(v29 + 16) = v43;
          *(v29 + 32) = v44;
          *(v29 + 48) = v33;
          return __swift_destroy_boxed_opaque_existential_1(v37);
        }

        LOBYTE(v67) = 6;
        sub_240720D74();
        sub_24075AA54();
        (*(v56 + 8))(v23, v57);
        (*(v40 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v32 = 0uLL;
        v33 = -6;
      }

      v43 = 0uLL;
      v44 = 0uLL;
      goto LABEL_21;
    }

    v34 = sub_24075A8C4();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v36 = &type metadata for SetupModel.State;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v75 + 8))(v27, v14);
    swift_unknownObjectRelease();
  }

  v37 = v66;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_24071F804(uint64_t a1)
{
  sub_24075AE64();
  SetupModel.State.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t sub_24071F840()
{
  if (*v0)
  {
    return 0x7463697274736572;
  }

  else
  {
    return 0x6C61756E616DLL;
  }
}

uint64_t sub_24071F87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_24071F95C(uint64_t a1)
{
  v2 = sub_240720FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071F998(uint64_t a1)
{
  v2 = sub_240720FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071F9D4(uint64_t a1)
{
  v2 = sub_240721068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071FA10(uint64_t a1)
{
  v2 = sub_240721068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071FA4C(uint64_t a1)
{
  v2 = sub_240721014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071FA88(uint64_t a1)
{
  v2 = sub_240721014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupModel.LocalRole.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE138, &qword_240781518);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE140, &qword_240781520);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE148, &qword_240781528);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720FC0();
  sub_24075AF74();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_240721014();
    v14 = v18;
    sub_24075AB54();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_240721068();
    sub_24075AB54();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t SetupModel.LocalRole.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t SetupModel.LocalRole.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE168, &qword_240781530);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE170, &qword_240781538);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE178, &qword_240781540);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720FC0();
  v12 = v31;
  sub_24075AF34();
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
    v16 = sub_24075AB34();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_2405B8AF4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_24075A8C4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v22 = &type metadata for SetupModel.LocalRole;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
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
        sub_240721014();
        sub_24075AA54();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_240721068();
        sub_24075AA54();
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

uint64_t _s12AppleIDSetup10SetupModelV5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v37 = a2[5];
  v14 = *(a2 + 48);
  if (v8 > 0xFC)
  {
    switch(v8)
    {
      case 0xFDu:
        if (v14 == 253)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFDu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -3;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFEu:
        if (v14 == 254)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFEu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -2;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFFu:
        if (v14 == 255)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFFu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -1;
          goto LABEL_22;
        }

LABEL_23:
        v36 = a2[2];
        v34 = *a2;
        v35 = a2[1];
        v26 = *(a2 + 48);
        v27 = a1[1];
        v28 = *a1;
        sub_240720A24(*a2, v35, v36, v11, v13, v37, v14);
        sub_240720A24(v28, v27, v5, v4, v6, v7, v8);
        sub_240720A38(v28, v27, v5, v4, v6, v7, v8);
        sub_240720A38(v34, v35, v36, v11, v13, v37, v26);
        v25 = 0;
        return v25 & 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 0xFAu:
        if (v14 == 250)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFAu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -6;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFBu:
        if (v14 == 251)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFBu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -5;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFCu:
        if (v14 == 252)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFCu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -4;
LABEL_22:
          sub_240720A38(v15, v16, v17, v18, v19, v20, v21);
          v25 = 1;
          return v25 & 1;
        }

        goto LABEL_23;
    }
  }

  if (v14 > 0xF9)
  {
    goto LABEL_23;
  }

  v40[0] = *a1;
  v40[1] = v2;
  v40[2] = v5;
  v40[3] = v4;
  v40[4] = v6;
  v40[5] = v7;
  v41 = v8;
  v38[0] = v10;
  v38[1] = v9;
  v38[2] = v12;
  v38[3] = v11;
  v38[4] = v13;
  v38[5] = v37;
  v39 = v14;
  v31 = v6;
  v32 = v13;
  v22 = v13;
  v30 = v14;
  v23 = v2;
  v24 = v3;
  v33 = v3;
  sub_240720A24(v10, v9, v12, v11, v22, v37, v14);
  sub_240720A24(v24, v23, v5, v4, v31, v7, v8);
  sub_240720A24(v10, v9, v12, v11, v32, v37, v30);
  sub_240720A24(v33, v23, v5, v4, v31, v7, v8);
  v25 = static SetupError.== infix(_:_:)(v40, v38);
  sub_240720A38(v33, v23, v5, v4, v31, v7, v8);
  sub_240720A38(v10, v9, v12, v11, v32, v37, v30);
  sub_240720A38(v10, v9, v12, v11, v32, v37, v30);
  sub_240720A38(v33, v23, v5, v4, v31, v7, v8);
  return v25 & 1;
}

uint64_t _s12AppleIDSetup10SetupModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v43 = v2;
  v44 = v3;
  v7 = *(a1 + 8);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 18);
  v11 = a1[38];
  v12 = v7 | ((v10 | (v11 << 16)) << 32);
  *v42 = *(a1 + 1);
  *&v42[2] = v8;
  *&v42[4] = v9;
  v42[6] = v7;
  BYTE2(v42[7]) = v11;
  LOWORD(v42[7]) = v10;
  v13 = *(a2 + 8);
  v14 = *(a2 + 2);
  v15 = *(a2 + 3);
  v16 = a2[38];
  v17 = *(a2 + 18) | (v16 << 16);
  v18 = v13 | (v17 << 32);
  *v41 = *(a2 + 1);
  *&v41[2] = v14;
  *&v41[4] = v15;
  v41[6] = v13;
  BYTE2(v41[7]) = v16;
  LOWORD(v41[7]) = v17;
  sub_240609C0C(*v42, v8, v9, v12);
  sub_240609C0C(*v41, v14, v15, v18);
  v19 = _s12AppleIDSetup10RemoteRoleO2eeoiySbAC_ACtFZ_0(v42, v41);
  sub_240604AB8(*v41, *&v41[2], *&v41[4], v41[6] | ((LOWORD(v41[7]) | (BYTE2(v41[7]) << 16)) << 32));
  sub_240604AB8(*v42, *&v42[2], *&v42[4], v42[6] | ((LOWORD(v42[7]) | (BYTE2(v42[7]) << 16)) << 32));
  if (v19 && a1[39] == a2[39] && (v20 = *(a1 + 6), v21 = *(a1 + 7), v22 = *(a1 + 8), v23 = *(a1 + 9), v24 = *(a1 + 10), v25 = a1[88], *v42 = *(a1 + 5), *&v42[2] = v20, *&v42[4] = v21, *&v42[6] = v22, *&v42[8] = v23, *&v42[10] = v24, LOBYTE(v42[12]) = v25, v27 = *(a2 + 6), v28 = *(a2 + 7), v29 = *(a2 + 8), v30 = *(a2 + 9), v31 = *(a2 + 10), v32 = a2[88], *v41 = *(a2 + 5), v26 = *v41, *&v41[2] = v27, *&v41[4] = v28, *&v41[6] = v29, *&v41[8] = v30, *&v41[10] = v31, LOBYTE(v41[12]) = v32, sub_240720A24(*v42, v20, v21, v22, v23, v24, v25), sub_240720A24(v26, v27, v28, v29, v30, v31, v32), LOBYTE(v26) = _s12AppleIDSetup10SetupModelV5StateO2eeoiySbAE_AEtFZ_0(v42, v41), sub_240720A38(*v41, *&v41[2], *&v41[4], *&v41[6], *&v41[8], *&v41[10], v41[12]), sub_240720A38(*v42, *&v42[2], *&v42[4], *&v42[6], *&v42[8], *&v42[10], v42[12]), (v26 & 1) != 0) && (memcpy(__dst, a1 + 96, 0x131uLL), memcpy(v38, a1 + 96, 0x131uLL), memcpy(v40, a2 + 96, 0x131uLL), memcpy(__src, a2 + 96, 0x131uLL), sub_240684CD4(__dst, v36), sub_240684CD4(v40, v36), v33 = _s12AppleIDSetup14DiscoveryModelV2eeoiySbAC_ACtFZ_0(v38, __src), memcpy(v41, __src, 0x131uLL), sub_240684D0C(v41), memcpy(v42, v38, 0x131uLL), sub_240684D0C(v42), v33) && (v34 = type metadata accessor for SetupModel(0), _s12AppleIDSetup19AuthenticationModelV2eeoiySbAC_ACtFZ_0(&a1[*(v34 + 36)], &a2[*(v34 + 36)])))
  {
    v35 = _s12AppleIDSetup11SignInModelV2eeoiySbAC_ACtFZ_0(&a1[*(v34 + 40)], &a2[*(v34 + 40)]);
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_240720A24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xF9u)
  {
    return sub_2405AF8D8(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_240720A38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xF9u)
  {
    return sub_2405AEA70(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_240720A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_240720AB4()
{
  result = qword_27E4BE048;
  if (!qword_27E4BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE048);
  }

  return result;
}

unint64_t sub_240720B08()
{
  result = qword_27E4BE050;
  if (!qword_27E4BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE050);
  }

  return result;
}

unint64_t sub_240720B5C()
{
  result = qword_27E4BE058;
  if (!qword_27E4BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE058);
  }

  return result;
}

unint64_t sub_240720BB0()
{
  result = qword_27E4BE068;
  if (!qword_27E4BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE068);
  }

  return result;
}

unint64_t sub_240720C04()
{
  result = qword_27E4BE070;
  if (!qword_27E4BE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE070);
  }

  return result;
}

uint64_t sub_240720C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240720CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_240720D20()
{
  result = qword_27E4BE0B8;
  if (!qword_27E4BE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0B8);
  }

  return result;
}

unint64_t sub_240720D74()
{
  result = qword_27E4BE0C0;
  if (!qword_27E4BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0C0);
  }

  return result;
}

unint64_t sub_240720DC8()
{
  result = qword_27E4BE0C8;
  if (!qword_27E4BE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0C8);
  }

  return result;
}

unint64_t sub_240720E1C()
{
  result = qword_27E4BE0D0;
  if (!qword_27E4BE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0D0);
  }

  return result;
}

unint64_t sub_240720E70()
{
  result = qword_27E4BE0D8;
  if (!qword_27E4BE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0D8);
  }

  return result;
}

unint64_t sub_240720EC4()
{
  result = qword_27E4BE0E0;
  if (!qword_27E4BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0E0);
  }

  return result;
}

unint64_t sub_240720F18()
{
  result = qword_27E4BE0E8;
  if (!qword_27E4BE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0E8);
  }

  return result;
}

unint64_t sub_240720F6C()
{
  result = qword_27E4BE0F0;
  if (!qword_27E4BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0F0);
  }

  return result;
}

unint64_t sub_240720FC0()
{
  result = qword_27E4BE150;
  if (!qword_27E4BE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE150);
  }

  return result;
}

unint64_t sub_240721014()
{
  result = qword_27E4BE158;
  if (!qword_27E4BE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE158);
  }

  return result;
}

unint64_t sub_240721068()
{
  result = qword_27E4BE160;
  if (!qword_27E4BE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE160);
  }

  return result;
}

uint64_t sub_2407210BC(void *a1)
{
  a1[1] = sub_2407211B0(&qword_27E4BDD58, type metadata accessor for SetupModel, &protocol conformance descriptor for SetupModel);
  a1[2] = sub_2407211B0(&qword_27E4BDD40, type metadata accessor for SetupModel, &protocol conformance descriptor for SetupModel);
  result = sub_2407211B0(&qword_27E4BE180, type metadata accessor for SetupModel, &protocol conformance descriptor for SetupModel);
  a1[3] = result;
  return result;
}

uint64_t sub_2407211B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240721238(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_24072128C()
{
  result = qword_27E4BE190;
  if (!qword_27E4BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE190);
  }

  return result;
}

unint64_t sub_2407212E4()
{
  result = qword_27E4BE198;
  if (!qword_27E4BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE198);
  }

  return result;
}

unint64_t sub_24072133C()
{
  result = qword_27E4BE1A0;
  if (!qword_27E4BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1A0);
  }

  return result;
}

unint64_t sub_2407213D0()
{
  result = qword_27E4BE1A8;
  if (!qword_27E4BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1A8);
  }

  return result;
}

uint64_t sub_24072144C(uint64_t a1)
{
  result = type metadata accessor for AuthenticationModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SignInModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup10SetupModelV5StateO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240721520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 49))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 48);
  if (v3 > 6)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 7)
  {
    return v4 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240721568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -6 - a2;
    }
  }

  return result;
}

double sub_2407215BC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF9)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 - 250;
  }

  else if (a2)
  {
    *(a1 + 48) = -a2;
  }

  return result;
}

unint64_t sub_2407216D8()
{
  result = qword_27E4BE1C0;
  if (!qword_27E4BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1C0);
  }

  return result;
}

unint64_t sub_240721730()
{
  result = qword_27E4BE1C8;
  if (!qword_27E4BE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1C8);
  }

  return result;
}

unint64_t sub_240721788()
{
  result = qword_27E4BE1D0;
  if (!qword_27E4BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1D0);
  }

  return result;
}

unint64_t sub_2407217E0()
{
  result = qword_27E4BE1D8;
  if (!qword_27E4BE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1D8);
  }

  return result;
}

unint64_t sub_240721838()
{
  result = qword_27E4BE1E0;
  if (!qword_27E4BE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1E0);
  }

  return result;
}

unint64_t sub_240721890()
{
  result = qword_27E4BE1E8;
  if (!qword_27E4BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1E8);
  }

  return result;
}

unint64_t sub_2407218E8()
{
  result = qword_27E4BE1F0;
  if (!qword_27E4BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1F0);
  }

  return result;
}

unint64_t sub_240721940()
{
  result = qword_27E4BE1F8;
  if (!qword_27E4BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1F8);
  }

  return result;
}

unint64_t sub_240721998()
{
  result = qword_27E4BE200;
  if (!qword_27E4BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE200);
  }

  return result;
}

unint64_t sub_2407219F0()
{
  result = qword_27E4BE208;
  if (!qword_27E4BE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE208);
  }

  return result;
}

unint64_t sub_240721A48()
{
  result = qword_27E4BE210;
  if (!qword_27E4BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE210);
  }

  return result;
}

unint64_t sub_240721AA0()
{
  result = qword_27E4BE218;
  if (!qword_27E4BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE218);
  }

  return result;
}

unint64_t sub_240721AF8()
{
  result = qword_27E4BE220;
  if (!qword_27E4BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE220);
  }

  return result;
}

unint64_t sub_240721B50()
{
  result = qword_27E4BE228;
  if (!qword_27E4BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE228);
  }

  return result;
}

unint64_t sub_240721BA8()
{
  result = qword_27E4BE230;
  if (!qword_27E4BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE230);
  }

  return result;
}

unint64_t sub_240721C00()
{
  result = qword_27E4BE238;
  if (!qword_27E4BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE238);
  }

  return result;
}

unint64_t sub_240721C58()
{
  result = qword_27E4BE240;
  if (!qword_27E4BE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE240);
  }

  return result;
}

unint64_t sub_240721CB0()
{
  result = qword_27E4BE248;
  if (!qword_27E4BE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE248);
  }

  return result;
}

unint64_t sub_240721D08()
{
  result = qword_27E4BE250;
  if (!qword_27E4BE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE250);
  }

  return result;
}

unint64_t sub_240721D60()
{
  result = qword_27E4BE258;
  if (!qword_27E4BE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE258);
  }

  return result;
}

unint64_t sub_240721DB8()
{
  result = qword_27E4BE260;
  if (!qword_27E4BE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE260);
  }

  return result;
}

unint64_t sub_240721E10()
{
  result = qword_27E4BE268;
  if (!qword_27E4BE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE268);
  }

  return result;
}

unint64_t sub_240721E68()
{
  result = qword_27E4BE270;
  if (!qword_27E4BE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE270);
  }

  return result;
}

unint64_t sub_240721EC0()
{
  result = qword_27E4BE278;
  if (!qword_27E4BE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE278);
  }

  return result;
}

unint64_t sub_240721F18()
{
  result = qword_27E4BE280;
  if (!qword_27E4BE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE280);
  }

  return result;
}

unint64_t sub_240721F70()
{
  result = qword_27E4BE288;
  if (!qword_27E4BE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE288);
  }

  return result;
}

unint64_t sub_240721FC8()
{
  result = qword_27E4BE290;
  if (!qword_27E4BE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE290);
  }

  return result;
}

unint64_t sub_240722020()
{
  result = qword_27E4BE298;
  if (!qword_27E4BE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE298);
  }

  return result;
}

unint64_t sub_240722074(uint64_t a1, uint64_t a2)
{
  v2 = sub_24075AA34();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2407220C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEC00000065746163 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E496E676973 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_240722314()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BE2A0);
  __swift_project_value_buffer(v0, qword_27E4BE2A0);
  return sub_240759AD4();
}

uint64_t static AISLogger.routing.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  v3 = __swift_project_value_buffer(v2, qword_27E4BE2A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_240722434()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BE2B8);
  v1 = __swift_project_value_buffer(v0, qword_27E4BE2B8);
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4BE2A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CommandRouter.Role.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t CommandRouter.selfAccountId.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v9 = *(v1 + 152);
  v10 = v3;
  v11 = *(v1 + 184);
  v4 = v11;
  v8[0] = *(v1 + 120);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2405B044C(v8, &v7, &qword_27E4B6420, &qword_240768F00);
}

uint64_t CommandRouter.v1CommandHandler.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t sub_24072262C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 224);
  v5 = *(v3 + 232);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2406CC46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24057B5BC(v4, v5);
}

uint64_t sub_2407226C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240730B50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 224);
  v9 = *(v7 + 232);
  *(v7 + 224) = v6;
  *(v7 + 232) = v5;
  sub_24057B5BC(v3, v4);
  return sub_24058CA60(v8, v9);
}

uint64_t sub_24072277C()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  sub_24057B5BC(v1, *(v0 + 232));
  return v1;
}

uint64_t sub_2407227CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 224);
  v6 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_24058CA60(v5, v6);
}

uint64_t sub_2407228D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  swift_beginAccess();
  result = sub_2405B044C(v1 + v3, &v13, &qword_27E4BE2D8, &unk_240782408);
  if (*(&v14 + 1))
  {
    v5 = v14;
    *a1 = v13;
    *(a1 + 16) = v5;
    *(a1 + 32) = v15;
  }

  else
  {
    sub_2405B8A50(&v13, &qword_27E4BE2D8, &unk_240782408);
    if (qword_27E4B5FA8 != -1)
    {
      swift_once();
    }

    v6 = sub_240759AE4();
    __swift_project_value_buffer(v6, qword_27E4BE2B8);
    v7 = sub_240759AC4();
    v8 = sub_24075A5D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_240579000, v7, v8, "Throwing error due to missing active transport", v9, 2u);
      MEMORY[0x245CC76B0](v9, -1, -1);
    }

    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
    swift_allocError();
    v11 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
    (*(*(v12 - 8) + 56))(v11, 1, 5, v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t CommandRouter.__allocating_init(for:selfAccountId:accountIDsByService:signInPreflightHelper:v1CommandHandler:handshakeHandler:)(char *a1, _OWORD *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v16 = *a1;
  v17 = *a4;
  swift_defaultActor_initialize();
  *(v15 + 304) = 0;
  *(v15 + 272) = 0u;
  *(v15 + 288) = 0u;
  *(v15 + 240) = 0u;
  *(v15 + 256) = 0u;
  *(v15 + 224) = 0u;
  v18 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  (*(*(v19 - 8) + 56))(v15 + v18, 1, 1, v19);
  *(v15 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask) = 0;
  v20 = v15 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v21 = v15 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  v22 = v15 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper;
  *(v15 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) = 0;
  v24 = a2[1];
  *(v15 + 120) = *a2;
  v25 = a2[3];
  *(v15 + 184) = a2[4];
  v26 = a2[2];
  *(v15 + 168) = v25;
  *(v15 + 152) = v26;
  *(v15 + 112) = v16;
  *(v15 + 136) = v24;
  *(v15 + 200) = a3;
  *(v15 + 208) = a5;
  *(v15 + 216) = a6;
  if (a7)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = a7;
    *(v27 + 24) = a8;
    v28 = &unk_240782440;
  }

  else
  {
    v28 = &unk_240782420;
    v27 = 0;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  v30 = (v15 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeHandler);
  *v30 = &unk_240782430;
  v30[1] = v29;
  *(v15 + v23) = v17;

  return v15;
}

uint64_t CommandRouter.init(for:selfAccountId:accountIDsByService:signInPreflightHelper:v1CommandHandler:handshakeHandler:)(char *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v28 = *a4;
  swift_defaultActor_initialize();
  *(v8 + 304) = 0;
  *(v8 + 272) = 0u;
  *(v8 + 288) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 256) = 0u;
  *(v8 + 224) = 0u;
  v16 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  *(v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask) = 0;
  v18 = v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) = 0;
  v21 = *a2;
  *(v8 + 136) = a2[1];
  v22 = a2[3];
  *(v8 + 152) = a2[2];
  *(v8 + 168) = v22;
  *(v8 + 184) = a2[4];
  *(v8 + 112) = v15;
  *(v8 + 120) = v21;
  *(v8 + 200) = a3;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  if (a7)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a7;
    *(v23 + 24) = a8;
    v24 = &unk_240782450;
  }

  else
  {
    v24 = &unk_240782420;
    v23 = 0;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  v26 = (v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeHandler);
  *v26 = &unk_240782448;
  v26[1] = v25;
  *(v8 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) = v28;

  return v8;
}

uint64_t sub_240722F0C(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v7 = *a2;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2405DA4B0;

  return v10(a1, v7, a3);
}

uint64_t sub_24072301C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 144);
  *(v3 + 144) = *(a3 + 128);
  *(v3 + 160) = v5;
  *(v3 + 176) = *(a3 + 160);
  v6 = *(a3 + 80);
  *(v3 + 80) = *(a3 + 64);
  *(v3 + 96) = v6;
  v7 = *(a3 + 112);
  *(v3 + 112) = *(a3 + 96);
  *(v3 + 128) = v7;
  v8 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v8;
  v9 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v9;
  v10 = swift_task_alloc();
  *(v3 + 184) = v10;
  *v10 = v3;
  v10[1] = sub_2407230EC;

  return sub_24072E2A8(a1, v3 + 16);
}

uint64_t sub_2407230EC()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_240723220, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_240723238(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_24072334C;

  return v9(a1, v4 + 16, a3);
}

uint64_t sub_24072334C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *CommandRouter.deinit()
{
  v1 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BE2B8);

  v3 = sub_240759AC4();
  v4 = sub_24075A5C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for CommandRouter(0);

    v7 = sub_24075A0E4();
    v9 = sub_2405BBA7C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_240579000, v3, v4, "CommandRouter is going away: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  sub_24072F500(v1[15], v1[16], v1[17], v1[18], v1[19], v1[20], v1[21], v1[22], v1[23], v1[24]);

  sub_24058CA60(v1[28], v1[29]);
  sub_24072F570(v1[30], v1[31], v1[32], v1[33], v1[34], v1[35], v1[36], v1[37]);
  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation, &qword_27E4BE320, &unk_240782458);

  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport, &qword_27E4BE2D8, &unk_240782408);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t CommandRouter.__deallocating_deinit()
{
  CommandRouter.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2407236B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 224);
  v6 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  sub_24057B5BC(a1, a2);
  return sub_24058CA60(v5, v6);
}

uint64_t sub_240723720(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval;
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = 0;
  v6 = a4 & 1;
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  v8 = v4 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  result = swift_beginAccess();
  *v8 = 0;
  *(v8 + 8) = v7;
  *(v8 + 16) = v6;
  return result;
}

uint64_t sub_240723790@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  if (v2)
  {
    v3 = *(v1 + 240);
    *a1 = v3;
    *(a1 + 8) = v2;
    v4 = *(v1 + 256);
    v5 = *(v1 + 272);
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    v6 = *(v1 + 288);
    *(a1 + 48) = v6;
    v7 = *(v1 + 304);
    *(a1 + 64) = v7;
    v17[0] = v3;
    v17[1] = v2;
    v18 = v4;
    v19 = v5;
    v20 = v6;
    v21 = v7;
    return sub_240619124(v17, &v16);
  }

  else
  {
    if (qword_27E4B5FA8 != -1)
    {
      swift_once();
    }

    v9 = sub_240759AE4();
    __swift_project_value_buffer(v9, qword_27E4BE2B8);
    v10 = sub_240759AC4();
    v11 = sub_24075A5E4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_240579000, v10, v11, "Failed to unwrap handshake device info", v12, 2u);
      MEMORY[0x245CC76B0](v12, -1, -1);
    }

    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
    swift_allocError();
    v14 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
    (*(*(v15 - 8) + 56))(v14, 3, 5, v15);
    return swift_willThrow();
  }
}

uint64_t sub_240723974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a1;
  v5[11] = a3;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240723A0C, v4, 0);
}

uint64_t sub_240723A0C()
{
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  __swift_project_value_buffer(v1, qword_27E4BE2B8);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Registering new transport", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[11];

  v7 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 24))(&unk_240782470, v7, v6, v5);

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v5 + 32);

  v9(sub_24072FB6C, v8, v6, v5);

  TransportBuilding.buildAny()(v6, v5, v0 + 2);
  v11 = v0[13];
  v12 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  swift_beginAccess();
  sub_240730A18((v0 + 2), v11 + v12, &qword_27E4BE2D8, &unk_240782408);
  swift_endAccess();
  v13 = *(v11 + 112);
  v14 = sub_240759AC4();
  v15 = sub_24075A5D4();
  v16 = os_log_type_enabled(v14, v15);
  if (v13)
  {
    if (v13 == 1)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_240579000, v14, v15, "Registered server transport, will now wait for handshake from client", v17, 2u);
        MEMORY[0x245CC76B0](v17, -1, -1);
      }

      v18 = swift_task_alloc();
      v0[17] = v18;
      *v18 = v0;
      v18[1] = sub_240724040;
      v19 = v0[13];
      v20 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2821372C0](v18, 0xA055690D9DB80000, 1, &unk_240782480, v19, v20);
    }

    else
    {
      if (v16)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_240579000, v14, v15, "Registered transport for ids channel", v23, 2u);
        MEMORY[0x245CC76B0](v23, -1, -1);
      }

      v24 = v0[1];

      return v24();
    }
  }

  else
  {
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_240579000, v14, v15, "Register client transport, will now perform handshake with server", v21, 2u);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    v22 = swift_task_alloc();
    v0[16] = v22;
    *v22 = v0;
    v22[1] = sub_240723F0C;

    return sub_240724B14(0);
  }
}

uint64_t sub_240723F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240724040()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_2407241F0;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_240724184;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240724184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407241F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240724264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240724340, 0, 0);
}

uint64_t sub_240724340()
{
  v26 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2407246BC;
    v3 = v0[5];
    v4 = v0[6];

    return sub_24072C054(v3, v4);
  }

  else
  {
    if (qword_27E4B5FA8 != -1)
    {
      swift_once();
    }

    v6 = v0[11];
    v7 = v0[6];
    v8 = sub_240759AE4();
    __swift_project_value_buffer(v8, qword_27E4BE2B8);
    sub_2405B044C(v7, v6, qword_27E4BA650, &qword_24076ED10);
    v9 = sub_240759AC4();
    v10 = sub_24075A5E4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    if (v11)
    {
      v13 = v0[10];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      sub_2405B044C(v12, v13, qword_27E4BA650, &qword_24076ED10);
      v16 = sub_24075A0E4();
      v18 = v17;
      sub_2405B8A50(v12, qword_27E4BA650, &qword_24076ED10);
      v19 = sub_2405BBA7C(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_240579000, v9, v10, "Unable to receive message because router is deallocated: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245CC76B0](v15, -1, -1);
      MEMORY[0x245CC76B0](v14, -1, -1);
    }

    else
    {

      sub_2405B8A50(v12, qword_27E4BA650, &qword_24076ED10);
    }

    v20 = v0[8];
    v21 = v0[9];
    v22 = v0[6];
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
    swift_allocError();
    (*(v21 + 56))(v23, 2, 5, v20);
    swift_willThrow();
    sub_2405B8A50(v22, qword_27E4BA650, &qword_24076ED10);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2407246BC()
{

  return MEMORY[0x2822009F8](sub_2407247B8, 0, 0);
}

uint64_t sub_2407247B8()
{
  v1 = *(v0 + 48);

  sub_2405B8A50(v1, qword_27E4BA650, &qword_24076ED10);

  v2 = *(v0 + 8);

  return v2();
}

void sub_240724854(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F58, &unk_24076DBF0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v13 - v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
    v6 = swift_allocError();
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
    (*(*(v9 - 8) + 56))(v8, 5, 5, v9);
    *v3 = v5;
    type metadata accessor for AnyCancellableID(0);
    swift_storeEnumTagMultiPayload();
    v10 = (v3 + *(v1 + 36));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F60, &unk_240782830);
    v10[3] = v11;
    v12 = sub_240590128(&qword_27E4B9F68, &qword_27E4B9F60, &unk_240782830, &unk_24076DBB8);
    v10[4] = v12;
    *v10 = v5;
    v13 = v6;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v12 + 24))(&v13, v11, v12);
    sub_2405B8A50(v3, &qword_27E4B9F58, &unk_24076DBF0);
  }
}

uint64_t sub_240724A84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2405CE450;

  return sub_240728CAC();
}

uint64_t sub_240724B14(char a1)
{
  *(v2 + 2088) = v1;
  *(v2 + 953) = a1;
  return MEMORY[0x2822009F8](sub_240724B38, v1, 0);
}

uint64_t sub_240724B38()
{
  v39 = v0;
  v1 = (v0 + 953);
  v2 = (v0 + 1352);
  if (*(v0 + 953))
  {
    v3 = 0;
    v4 = 1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    static IdMSAccount.DeviceInfo.current.getter(v37);
    v35 = v37[1];
    v36 = v37[0];
    v33 = v37[3];
    v34 = v37[2];
    v3 = v38;
    v4 = *v1;
  }

  v5 = *(v0 + 2088);
  *v2 = *(v5 + 120);
  v6 = *(v5 + 152);
  v7 = *(v5 + 184);
  v8 = *(v5 + 136);
  *(v0 + 1400) = *(v5 + 168);
  *(v0 + 1416) = v7;
  *(v0 + 1368) = v8;
  *(v0 + 1384) = v6;
  v9 = *(v5 + 200);
  *(v0 + 1576) = 0;
  *(v0 + 1544) = 0u;
  *(v0 + 1560) = 0u;
  *(v0 + 1512) = 0u;
  *(v0 + 1528) = 0u;
  sub_2405B044C(v0 + 1352, v0 + 1432, &qword_27E4B6420, &qword_240768F00);

  sub_2405B8A50(v0 + 1512, &qword_27E4B8B08, &qword_240768590);
  *(v0 + 1272) = 0u;
  *(v0 + 1288) = 0u;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 0u;
  *(v0 + 1336) = 0u;
  sub_2405B8A50(v0 + 1272, &qword_27E4B6420, &qword_240768F00);
  *(v0 + 16) = v4;
  *(v0 + 17) = 257;
  *(v0 + 40) = v35;
  *(v0 + 24) = v36;
  *(v0 + 72) = v33;
  *(v0 + 56) = v34;
  *(v0 + 88) = v3;
  v10 = *(v0 + 1368);
  *(v0 + 96) = *v2;
  *(v0 + 112) = v10;
  v11 = *(v0 + 1400);
  *(v0 + 128) = *(v0 + 1384);
  *(v0 + 144) = v11;
  *(v0 + 160) = *(v0 + 1416);
  *(v0 + 176) = v9;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  *(v0 + 2096) = __swift_project_value_buffer(v12, qword_27E4BE2B8);
  sub_2406BD338(v0 + 16, v0 + 184);
  v13 = sub_240759AC4();
  v14 = sub_24075A5C4();
  sub_2406BD370(v0 + 16);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *v1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v37[0] = v17;
    *v16 = 67109378;
    *(v16 + 4) = v15;
    *(v16 + 8) = 2080;
    v18 = *(v0 + 160);
    *(v0 + 648) = *(v0 + 144);
    *(v0 + 664) = v18;
    *(v0 + 680) = *(v0 + 176);
    v19 = *(v0 + 96);
    *(v0 + 584) = *(v0 + 80);
    *(v0 + 600) = v19;
    v20 = *(v0 + 128);
    *(v0 + 616) = *(v0 + 112);
    *(v0 + 632) = v20;
    v21 = *(v0 + 32);
    *(v0 + 520) = *(v0 + 16);
    *(v0 + 536) = v21;
    v22 = *(v0 + 64);
    *(v0 + 552) = *(v0 + 48);
    *(v0 + 568) = v22;
    sub_2406BD338(v0 + 16, v0 + 688);
    v23 = sub_24075A0E4();
    v25 = sub_2405BBA7C(v23, v24, v37);

    *(v16 + 10) = v25;
    _os_log_impl(&dword_240579000, v13, v14, "Performing handshake (isKeepAlive: %{BOOL}d) with request command: %s", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v26 = *(v0 + 160);
  *(v0 + 480) = *(v0 + 144);
  *(v0 + 496) = v26;
  *(v0 + 512) = *(v0 + 176);
  v27 = *(v0 + 96);
  *(v0 + 416) = *(v0 + 80);
  *(v0 + 432) = v27;
  v28 = *(v0 + 128);
  *(v0 + 448) = *(v0 + 112);
  *(v0 + 464) = v28;
  v29 = *(v0 + 32);
  *(v0 + 352) = *(v0 + 16);
  *(v0 + 368) = v29;
  v30 = *(v0 + 64);
  *(v0 + 384) = *(v0 + 48);
  *(v0 + 400) = v30;
  v31 = swift_task_alloc();
  *(v0 + 2104) = v31;
  *v31 = v0;
  v31[1] = sub_240724EF0;

  return sub_2407257B4(v0 + 856, v0 + 352, 0, 4);
}

uint64_t sub_240724EF0()
{
  v2 = *v1;
  *(*v1 + 2112) = v0;

  if (v0)
  {
    v3 = *(v2 + 2088);
    v4 = sub_240725750;
  }

  else
  {
    v5 = *(v2 + 2088);
    sub_2406BD370(v2 + 16);
    v4 = sub_240725018;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240725018(uint64_t a1)
{
  v59 = v1;
  v2 = (v1 + 960);
  *(v1 + 1056) = *(v1 + 952);
  v3 = *(v1 + 920);
  *(v1 + 1040) = *(v1 + 936);
  v4 = *(v1 + 872);
  *(v1 + 960) = *(v1 + 856);
  *(v1 + 976) = v4;
  v5 = *(v1 + 888);
  *(v1 + 1008) = *(v1 + 904);
  *(v1 + 1024) = v3;
  *(v1 + 992) = v5;
  if (*(v1 + 961) != 1)
  {
    v16 = sub_240759AC4();
    v17 = sub_24075A5E4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_240579000, v16, v17, "Handshake request was not accepted, device wants to be left alone", v18, 2u);
      MEMORY[0x245CC76B0](v18, -1, -1);
    }

    goto LABEL_20;
  }

  if (*(v1 + 953) != 1 || *v2 != 1)
  {
    if ((*(v1 + 985) & 1) != 0 || *(v1 + 984) != 1)
    {
      v16 = sub_240759AC4();
      v36 = sub_24075A5E4();
      if (os_log_type_enabled(v16, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_240579000, v16, v36, "Incompatible selected version returned", v37, 2u);
        MEMORY[0x245CC76B0](v37, -1, -1);
      }
    }

    else
    {
      v19 = *(v1 + 992);
      v20 = *(v1 + 1000);
      v52 = *(v1 + 952);
      v49 = *(v1 + 904);
      v50 = *(v1 + 920);
      v51 = *(v1 + 936);
      if (v20)
      {
        *(v1 + 1720) = *(v1 + 952);
        v21 = *(v1 + 936);
        *(v1 + 1688) = *(v1 + 920);
        *(v1 + 1704) = v21;
        v22 = *(v1 + 904);
        *(v1 + 1656) = *(v1 + 888);
        *(v1 + 1672) = v22;
        sub_240619124(v1 + 1656, v1 + 1728);
        sub_2406BFA90(v1 + 960);
        v23 = *(v1 + 1040);
        *(v1 + 1616) = *(v1 + 1024);
        *(v1 + 1632) = v23;
        *(v1 + 1648) = *(v1 + 1056);
        v24 = *(v1 + 1008);
        *(v1 + 1584) = *(v1 + 992);
        *(v1 + 1600) = v24;
        sub_240619124(v1 + 1584, v1 + 1800);
        v25 = sub_240759AC4();
        v26 = sub_24075A5C4();
        sub_2405B8A50(v1 + 992, &qword_27E4B8B08, &qword_240768590);
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v53 = v48;
          *&v54 = v19;
          *v27 = 136315138;
          *(&v54 + 1) = v20;
          v55 = v49;
          v56 = v50;
          v57 = v51;
          v58 = v52;
          v28 = *(v1 + 1040);
          *(v1 + 1976) = *(v1 + 1024);
          *(v1 + 1992) = v28;
          *(v1 + 2008) = *(v1 + 1056);
          v29 = *(v1 + 1008);
          *(v1 + 1944) = *(v1 + 992);
          *(v1 + 1960) = v29;
          sub_240619124(v1 + 1944, v1 + 2016);
          v30 = IdMSAccount.DeviceInfo.description.getter();
          v32 = v31;
          v33 = v57;
          *(v1 + 1904) = v56;
          *(v1 + 1920) = v33;
          *(v1 + 1936) = v58;
          v34 = v55;
          *(v1 + 1872) = v54;
          *(v1 + 1888) = v34;
          sub_240602EAC(v1 + 1872);
          v35 = sub_2405BBA7C(v30, v32, &v53);

          *(v27 + 4) = v35;
          _os_log_impl(&dword_240579000, v25, v26, "Successfully completed handshake! Received device info: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x245CC76B0](v48, -1, -1);
          MEMORY[0x245CC76B0](v27, -1, -1);
        }

        *&v54 = v19;
        *(&v54 + 1) = v20;
        v55 = v49;
        v56 = v50;
        v57 = v51;
        v58 = v52;
        sub_24072975C(&v54);
        sub_2405B8A50(v1 + 992, &qword_27E4B8B08, &qword_240768590);
        goto LABEL_22;
      }

      v16 = sub_240759AC4();
      v38 = sub_24075A5E4();
      if (os_log_type_enabled(v16, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_240579000, v16, v38, "Did not receive expected device info in handshake response", v39, 2u);
        MEMORY[0x245CC76B0](v39, -1, -1);
      }
    }

LABEL_20:

    type metadata accessor for CommandRouter.HandshakeFailure(0);
    sub_24072FC30(&qword_27E4BE328, type metadata accessor for CommandRouter.HandshakeFailure, &protocol conformance descriptor for CommandRouter.HandshakeFailure);
    swift_allocError();
    v41 = *(v1 + 976);
    v40 = *(v1 + 992);
    *v42 = *v2;
    *(v42 + 16) = v41;
    *(v42 + 32) = v40;
    v44 = *(v1 + 1024);
    v43 = *(v1 + 1040);
    v45 = *(v1 + 1008);
    *(v42 + 96) = *(v1 + 1056);
    *(v42 + 64) = v44;
    *(v42 + 80) = v43;
    *(v42 + 48) = v45;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v46 = *(v1 + 8);
    goto LABEL_23;
  }

  sub_2406BFA58(v1 + 960, v1 + 1064);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  sub_2406BFA90(v1 + 960);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v54 = v9;
    *v8 = 136315138;
    v10 = *(v1 + 1040);
    *(v1 + 1232) = *(v1 + 1024);
    *(v1 + 1248) = v10;
    *(v1 + 1264) = *(v1 + 1056);
    v11 = *(v1 + 976);
    *(v1 + 1168) = *v2;
    *(v1 + 1184) = v11;
    v12 = *(v1 + 1008);
    *(v1 + 1200) = *(v1 + 992);
    *(v1 + 1216) = v12;
    v13 = sub_24075A0E4();
    v15 = sub_2405BBA7C(v13, v14, &v54);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_240579000, v6, v7, "Keep alive response received: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {

    sub_2406BFA90(v1 + 960);
  }

LABEL_22:
  v46 = *(v1 + 8);
LABEL_23:

  return v46();
}

uint64_t sub_240725750()
{
  sub_2406BD370(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407257B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 928) = v4;
  *(v5 + 920) = a4;
  *(v5 + 912) = a3;
  *(v5 + 904) = a1;
  v7 = sub_240759934();
  *(v5 + 936) = v7;
  *(v5 + 944) = *(v7 - 8);
  *(v5 + 952) = swift_task_alloc();
  *(v5 + 960) = swift_task_alloc();
  v8 = *(a2 + 144);
  *(v5 + 144) = *(a2 + 128);
  *(v5 + 160) = v8;
  *(v5 + 176) = *(a2 + 160);
  v9 = *(a2 + 80);
  *(v5 + 80) = *(a2 + 64);
  *(v5 + 96) = v9;
  v10 = *(a2 + 112);
  *(v5 + 112) = *(a2 + 96);
  *(v5 + 128) = v10;
  v11 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v11;
  v12 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v12;

  return MEMORY[0x2822009F8](sub_2407258C8, v4, 0);
}

uint64_t sub_2407258C8()
{
  v25 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  *(v0 + 968) = __swift_project_value_buffer(v1, qword_27E4BE2B8);
  sub_2406BD338(v0 + 16, v0 + 184);
  v2 = sub_240759AC4();
  v3 = sub_24075A5C4();
  sub_2406BD370(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136315138;
    v6 = *(v0 + 160);
    *(v0 + 648) = *(v0 + 144);
    *(v0 + 664) = v6;
    *(v0 + 680) = *(v0 + 176);
    v7 = *(v0 + 96);
    *(v0 + 584) = *(v0 + 80);
    *(v0 + 600) = v7;
    v8 = *(v0 + 128);
    *(v0 + 616) = *(v0 + 112);
    *(v0 + 632) = v8;
    v9 = *(v0 + 32);
    *(v0 + 520) = *(v0 + 16);
    *(v0 + 536) = v9;
    v10 = *(v0 + 64);
    *(v0 + 552) = *(v0 + 48);
    *(v0 + 568) = v10;
    sub_2406BD338(v0 + 16, v0 + 688);
    v11 = sub_24075A0E4();
    v13 = sub_2405BBA7C(v11, v12, &v24);

    *(v4 + 4) = v13;
    _os_log_impl(&dword_240579000, v2, v3, "Sending handshake request command: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CC76B0](v5, -1, -1);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v14 = *(v0 + 928);
  v15 = swift_allocObject();
  v16 = *(v0 + 112);
  *(v15 + 136) = *(v0 + 128);
  v17 = *(v0 + 160);
  *(v15 + 152) = *(v0 + 144);
  *(v15 + 168) = v17;
  v18 = *(v0 + 48);
  *(v15 + 72) = *(v0 + 64);
  v19 = *(v0 + 96);
  *(v15 + 88) = *(v0 + 80);
  *(v15 + 104) = v19;
  *(v15 + 120) = v16;
  v20 = *(v0 + 32);
  *(v15 + 24) = *(v0 + 16);
  *(v15 + 40) = v20;
  *(v0 + 976) = v15;
  *(v15 + 16) = v14;
  *(v15 + 184) = *(v0 + 176);
  *(v15 + 56) = v18;
  sub_2406BD338(v0 + 16, v0 + 352);

  v21 = swift_task_alloc();
  *(v0 + 984) = v21;
  *v21 = v0;
  v21[1] = sub_240725B94;
  v22 = *(v0 + 904);

  return MEMORY[0x2821372C0](v22, 0x8AC7230489E80000, 0, &unk_240782808, v15, &type metadata for HandshakeCommand.Response);
}

uint64_t sub_240725B94()
{
  v2 = *v1;
  v2[124] = v0;

  if (v0)
  {
    v3 = v2[116];

    return MEMORY[0x2822009F8](sub_240725CE8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_240725CE8()
{
  v1 = *(v0 + 992);

  *(v0 + 872) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 992);
  if (v3)
  {
    v5 = *(v0 + 960);
    v6 = *(v0 + 952);
    v7 = *(v0 + 944);
    v8 = *(v0 + 936);

    (*(v7 + 32))(v6, v5, v8);
    sub_24072FC30(&qword_27E4BE3D8, MEMORY[0x277CE4628], MEMORY[0x277CE4630]);
    v9 = swift_allocError();
    *(v0 + 1000) = v9;
    (*(v7 + 16))(v10, v6, v8);
    v11 = swift_task_alloc();
    *(v0 + 1008) = v11;
    *v11 = v0;
    v12 = sub_2407263DC;
LABEL_3:
    v11[1] = v12;
    v13 = *(v0 + 928);
    v14 = *(v0 + 920);
    v15 = *(v0 + 912);
    v16 = *(v0 + 904);
    v17 = v0 + 16;
    v18 = v9;
LABEL_4:

    return sub_240726A84(v16, v18, v15, v14, v13, v17);
  }

  *(v0 + 880) = v4;
  v20 = v4;
  sub_240730C24();
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 888);
    *(v0 + 1024) = v21;
    v22 = [v21 domain];
    v23 = sub_24075A0B4();
    v25 = v24;

    if (v23 == sub_24075A0B4() && v25 == v26)
    {
    }

    else
    {
      v27 = sub_24075ACF4();

      if ((v27 & 1) == 0)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    if ([v21 code] == -6714)
    {

      v28 = sub_240759AC4();
      v29 = sub_24075A5E4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_240579000, v28, v29, "Retrying another handshake, we failed to send request, handler not set up yet", v30, 2u);
        MEMORY[0x245CC76B0](v30, -1, -1);
      }

      v31 = v21;
      v32 = swift_task_alloc();
      *(v0 + 1032) = v32;
      *v32 = v0;
      v32[1] = sub_240726598;
      v13 = *(v0 + 928);
      v14 = *(v0 + 920);
      v15 = *(v0 + 912);
      v16 = *(v0 + 904);
      v17 = v0 + 16;
      v18 = v31;
      goto LABEL_4;
    }

    goto LABEL_16;
  }

LABEL_17:
  v33 = *(v0 + 992);

  *(v0 + 896) = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3C8, &qword_240782810);
  if (swift_dynamicCast())
  {
    v35 = *(v0 + 864);
    if (v35 == 1)
    {

      v36 = sub_240759AC4();
      v37 = sub_24075A5E4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        sub_240590128(&qword_27E4BE3D0, &qword_27E4BE3C8, &qword_240782810, &unk_240774E48);
        swift_allocError();
        *v40 = xmmword_24075D8E0;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_240579000, v36, v37, "Retrying another handshake, we failed to receive a response: %@", v38, 0xCu);
        sub_2405B8A50(v39, &qword_27E4B92A0, &qword_240762400);
        MEMORY[0x245CC76B0](v39, -1, -1);
        MEMORY[0x245CC76B0](v38, -1, -1);
      }

      sub_240590128(&qword_27E4BE3D0, &qword_27E4BE3C8, &qword_240782810, &unk_240774E48);
      v9 = swift_allocError();
      *(v0 + 1048) = v9;
      *v42 = xmmword_24075D8E0;
      v11 = swift_task_alloc();
      *(v0 + 1056) = v11;
      *v11 = v0;
      v12 = sub_240726740;
      goto LABEL_3;
    }

    sub_240730C70(*(v0 + 856), v35);
  }

  v43 = *(v0 + 992);

  v44 = v43;
  v45 = sub_240759AC4();
  v46 = sub_24075A5E4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 992);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    v50 = v47;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_240579000, v45, v46, "Failed to perform handshake: %@", v48, 0xCu);
    sub_2405B8A50(v49, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v49, -1, -1);
    MEMORY[0x245CC76B0](v48, -1, -1);
  }

  swift_willThrow();

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_2407263DC()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = sub_2407268E0;
  }

  else
  {
    v5 = *(v2 + 928);

    v4 = sub_240726504;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240726504()
{
  (*(*(v0 + 944) + 8))(*(v0 + 952), *(v0 + 936));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240726598()
{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = sub_240726980;
  }

  else
  {
    v5 = *(v2 + 928);

    v4 = sub_2407266C0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2407266C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240726740()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = sub_240726A04;
  }

  else
  {
    v5 = *(v2 + 928);

    v4 = sub_240726868;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240726868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407268E0()
{
  v1 = *(v0 + 1000);
  (*(*(v0 + 944) + 8))(*(v0 + 952), *(v0 + 936));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240726980()
{
  v1 = *(v0 + 1024);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240726A04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240726A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v8 = sub_24075A974();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240726B50, a5, 0);
}

uint64_t sub_240726B50()
{
  v25 = v2;
  v3 = v2[25];
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  v2[32] = v5;
  if (v4)
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    v0 = 2000000000000000000 * v5;
    v1 = ((2 * v5) * 0xDE0B6B3A7640000uLL) >> 64;
    if (qword_27E4B5FA8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_4:
  v6 = sub_240759AE4();
  v2[33] = __swift_project_value_buffer(v6, qword_27E4BE2B8);
  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = sub_24075AF84();
    v13 = sub_2405BBA7C(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_240579000, v7, v8, "Timed out attempting to send handshake, will retry in %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  if (v2[25] >= v2[26])
  {
    v16 = sub_240759AC4();
    v17 = sub_24075A5E4();
    if (os_log_type_enabled(v16, v17))
    {
      v19 = v2[25];
      v18 = v2[26];
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v18;
      _os_log_impl(&dword_240579000, v16, v17, "Timed out for the %lu/%lu and final time", v20, 0x16u);
      MEMORY[0x245CC76B0](v20, -1, -1);
    }

    v21 = v2[24];

    swift_willThrow();
    v22 = v21;

    v23 = v2[1];

    return v23();
  }

  else
  {
    sub_24075ADC4();
    v14 = swift_task_alloc();
    v2[34] = v14;
    *v14 = v2;
    v14[1] = sub_240726E78;

    return sub_24072F5E8(v0, v1, 0, 0, 1);
  }
}

uint64_t sub_240726E78()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = v2[31];
  v4 = v2[30];
  v5 = v2[29];
  v6 = v2[27];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24072714C;
  }

  else
  {
    v7 = sub_240726FF4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240726FF4(uint64_t a1)
{
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Finished sleeping before next handshake attempt", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = *(v1 + 224);

  v6 = *v5;
  v7 = v5[2];
  *(v1 + 32) = v5[1];
  *(v1 + 48) = v7;
  *(v1 + 16) = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[6];
  *(v1 + 96) = v5[5];
  *(v1 + 112) = v10;
  *(v1 + 64) = v8;
  *(v1 + 80) = v9;
  v11 = v5[7];
  v12 = v5[8];
  v13 = v5[9];
  *(v1 + 176) = *(v5 + 20);
  *(v1 + 144) = v12;
  *(v1 + 160) = v13;
  *(v1 + 128) = v11;
  v14 = swift_task_alloc();
  *(v1 + 288) = v14;
  *v14 = v1;
  v14[1] = sub_2407271B0;
  v15 = *(v1 + 256);
  v16 = *(v1 + 184);

  return sub_2407257B4(v16, v1 + 16, v15, 4);
}

uint64_t sub_24072714C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407271B0()
{
  v2 = *v1;
  v2[37] = v0;

  if (v0)
  {
    v3 = v2[27];

    return MEMORY[0x2822009F8](sub_2407272EC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2407272EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240727350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2406BD338(a3, v3 + 16);
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  *v6 = v3;
  v6[1] = sub_240727420;

  return sub_240729990(a1, a3);
}

uint64_t sub_240727420()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240727514()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = (v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval);
  if ((*(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveInterval + 16) & 1) == 0)
  {
    v6 = *v5;
    v7 = v5[1];
    v8 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask;
    if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
      sub_24075A4A4();
    }

    sub_24075A3B4();
    v9 = sub_24075A3D4();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = v6;
    v11[6] = v7;
    v12 = sub_240728A40(0, 0, v4, &unk_2407827F0, v11);
    sub_2405B8A50(v4, &unk_27E4B9BF0, &qword_240762710);
    *(v0 + v8) = v12;
  }

  return result;
}

uint64_t sub_2407276D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_24075A964();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = sub_24075A974();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240727804, 0, 0);
}

uint64_t sub_240727804()
{
  swift_beginAccess();
  if ((sub_24075A4C4() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 216) = Strong) == 0))
  {

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    sub_24075ADC4();
    *(v0 + 120) = v6;
    *(v0 + 128) = v4;
    *(v0 + 104) = 0;
    *(v0 + 96) = 0;
    *(v0 + 112) = 1;
    v7 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24075ADA4();
    sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_24075A984();
    v8 = *(v3 + 8);
    *(v0 + 224) = v8;
    *(v0 + 232) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v2, v5);
    v9 = swift_task_alloc();
    *(v0 + 240) = v9;
    *v9 = v0;
    v9[1] = sub_240727A50;
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);

    return MEMORY[0x2822008C8](v11, v0 + 96, v10, v7);
  }
}

uint64_t sub_240727A50()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    (*(v2 + 224))(*(v2 + 184), *(v2 + 160));
    v3 = sub_240727CCC;
  }

  else
  {
    v5 = *(v2 + 200);
    v4 = *(v2 + 208);
    v6 = *(v2 + 192);
    (*(v2 + 224))(*(v2 + 184), *(v2 + 160));
    (*(v5 + 8))(v4, v6);
    v3 = sub_240727BA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240727BA8()
{
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  *(v0 + 256) = __swift_project_value_buffer(v1, qword_27E4BE2B8);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Running keep alive task", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_240727D6C, v5, 0);
}

uint64_t sub_240727CCC()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_240727D6C(uint64_t a1)
{
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Performing keep alive handshake", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v1 + 264) = v5;
  *v5 = v1;
  v5[1] = sub_240727E78;

  return sub_240724B14(1);
}

uint64_t sub_240727E78()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2407281C8;
  }

  else
  {
    v2 = sub_240727F8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240727F8C()
{

  if ((sub_24075A4C4() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 216) = Strong) == 0))
  {

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    sub_24075ADC4();
    *(v0 + 120) = v6;
    *(v0 + 128) = v4;
    *(v0 + 104) = 0;
    *(v0 + 96) = 0;
    *(v0 + 112) = 1;
    v7 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_24075ADA4();
    sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_24075A984();
    v8 = *(v3 + 8);
    *(v0 + 224) = v8;
    *(v0 + 232) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v2, v5);
    v9 = swift_task_alloc();
    *(v0 + 240) = v9;
    *v9 = v0;
    v9[1] = sub_240727A50;
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);

    return MEMORY[0x2822008C8](v11, v0 + 96, v10, v7);
  }
}

uint64_t sub_2407281C8()
{
  v1 = *(v0 + 272);
  v2 = v1;
  v3 = sub_240759AC4();
  v4 = sub_24075A5E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 272);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_240579000, v3, v4, "Failed to perform keep alive: %@", v6, 0xCu);
    sub_2405B8A50(v7, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v10 = sub_240759AC4();
  v11 = sub_24075A5D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_240579000, v10, v11, "Incrementing keep alive failure count", v12, 2u);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  v13 = sub_240722870(v0 + 16);
  if ((*(v14 + 16) & 1) == 0)
  {
    if (__OFADD__(*v14, 1))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v13, v14, v15);
    }

    ++*v14;
  }

  (v13)(v0 + 16, 0);
  v14 = *(v0 + 216);
  v13 = sub_2407283D4;
  v15 = 0;

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2407283D4()
{
  v1 = *(v0 + 216) + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_enforceKeepAlive;
  swift_beginAccess();
  *(v0 + 280) = *v1;
  *(v0 + 288) = *(v1 + 8);
  *(v0 + 113) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_240728470, 0, 0);
}

uint64_t sub_240728470(uint64_t a1)
{
  v2 = *(v1 + 113);
  v3 = sub_240759AC4();
  if (v2)
  {
    v4 = sub_24075A5D4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 272);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "Either not enforcing or have not hit count", v7, 2u);
      MEMORY[0x245CC76B0](v7, -1, -1);
    }

    goto LABEL_9;
  }

  v8 = sub_24075A5E4();
  if (os_log_type_enabled(v3, v8))
  {
    v10 = *(v1 + 280);
    v9 = *(v1 + 288);
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v9;
    _os_log_impl(&dword_240579000, v3, v8, "Failed to perform keep alive (for the %ld/%ld time)", v11, 0x16u);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

  v13 = *(v1 + 280);
  v12 = *(v1 + 288);

  if (v13 < v12)
  {

LABEL_9:

    if ((sub_24075A4C4() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v1 + 216) = Strong) == 0))
    {

      v25 = *(v1 + 8);

      return v25();
    }

    else
    {
      v16 = *(v1 + 168);
      v15 = *(v1 + 176);
      v17 = *(v1 + 152);
      v18 = *(v1 + 160);
      v19 = *(v1 + 144);
      sub_24075ADC4();
      *(v1 + 120) = v19;
      *(v1 + 128) = v17;
      *(v1 + 104) = 0;
      *(v1 + 96) = 0;
      *(v1 + 112) = 1;
      v20 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_24075ADA4();
      sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_24075A984();
      v21 = *(v16 + 8);
      *(v1 + 224) = v21;
      *(v1 + 232) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v21(v15, v18);
      v22 = swift_task_alloc();
      *(v1 + 240) = v22;
      *v22 = v1;
      v22[1] = sub_240727A50;
      v24 = *(v1 + 184);
      v23 = *(v1 + 192);

      return MEMORY[0x2822008C8](v24, v1 + 96, v23, v20);
    }
  }

  v26 = sub_240759AC4();
  v27 = sub_24075A5D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_240579000, v26, v27, "Invalidating command router to break it all down", v28, 2u);
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v29 = *(v1 + 216);

  type metadata accessor for CommandRouter.Failure(0);
  sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
  v30 = swift_allocError();
  v32 = v31;
  *(v1 + 296) = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  (*(*(v33 - 8) + 56))(v32, 5, 5, v33);

  return MEMORY[0x2822009F8](sub_240728934, v29, 0);
}

uint64_t sub_240728934()
{
  v1 = *(v0 + 296);
  sub_24072FC78();

  return MEMORY[0x2822009F8](sub_2407289A8, 0, 0);
}

uint64_t sub_2407289A8(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_240728A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2405B044C(a3, v22 - v9, &unk_27E4B9BF0, &qword_240762710);
  v11 = sub_24075A3D4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2405B8A50(v10, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24075A344();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24075A104() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_240728CCC()
{
  v15 = v0;
  sub_2405B8998();
  v1 = swift_allocError();
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 48) = 6;
  *(v0 + 82) = 1;
  *v14 = v1;
  *&v14[8] = *(v0 + 232);
  *&v14[24] = *(v0 + 248);
  *&v14[40] = *(v0 + 264);
  *&v14[49] = *(v0 + 273);
  v14[65] = 1;
  sub_240729278(v14);
  v3 = *&v14[48];
  *(v0 + 48) = *&v14[32];
  *(v0 + 64) = v3;
  *(v0 + 80) = *&v14[64];
  v4 = *&v14[16];
  *(v0 + 16) = *v14;
  *(v0 + 32) = v4;
  sub_2405B8A50(v0 + 16, &qword_27E4BE3A0, &unk_2407827D0);
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BE2B8);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_240579000, v6, v7, "Starting to wait for handshake", v8, 2u);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v9 = *(v0 + 296);

  v10 = sub_24072FC30(&qword_27E4BE348, type metadata accessor for CommandRouter, &protocol conformance descriptor for CommandRouter);
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_240728F48;
  v12 = *(v0 + 296);

  return MEMORY[0x2822008A0](v0 + 88, v9, v10, 0xD000000000000012, 0x800000024078A200, sub_240730A80, v12, &type metadata for IdMSAccount.DeviceInfo);
}

uint64_t sub_240728F48()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {
    v4 = sub_240729110;
  }

  else
  {
    v4 = sub_240729060;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240729060()
{
  v9 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  *(v0 + 192) = *(v0 + 120);
  *(v0 + 208) = v2;
  *(v0 + 224) = *(v0 + 152);
  *(v0 + 160) = *(v0 + 88);
  *(v0 + 176) = v1;
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v7[2] = *(v0 + 120);
  v7[3] = v4;
  v8 = *(v0 + 152);
  v7[0] = *(v0 + 88);
  v7[1] = v3;
  sub_24072975C(v7);
  sub_240602EAC(v0 + 160);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240729128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE320, &unk_240782458);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  swift_beginAccess();
  sub_240730A18(v6, a2 + v9, &qword_27E4BE320, &unk_240782458);
  return swift_endAccess();
}

uint64_t sub_240729278(__int128 *a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE320, &unk_240782458);
  v4 = MEMORY[0x28223BE20](v33);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE2F0, &qword_240782418);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v45 = a1[2];
  v46 = v12;
  v47 = *(a1 + 32);
  v13 = a1[1];
  v43 = *a1;
  v44 = v13;
  v14 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeContinuation;
  swift_beginAccess();
  sub_2405B044C(v2 + v14, v7, &qword_27E4BE320, &unk_240782458);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2405B8A50(v7, &qword_27E4BE320, &unk_240782458);
  }

  v16 = *(v9 + 32);
  v32 = v11;
  v16(v11, v7, v8);
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v17 = sub_240759AE4();
  __swift_project_value_buffer(v17, qword_27E4BE2B8);

  sub_2405B044C(&v43, &v38, &qword_27E4BE3A0, &unk_2407827D0);
  v18 = sub_240759AC4();
  v19 = sub_24075A5D4();

  sub_2405B8A50(&v43, &qword_27E4BE3A0, &unk_2407827D0);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v20 = 136315394;
    sub_2405B044C(v2 + v14, v34, &qword_27E4BE320, &unk_240782458);
    v21 = sub_24075A0E4();
    v23 = sub_2405BBA7C(v21, v22, v37);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    sub_2405B044C(&v43, v35, &qword_27E4BE3A0, &unk_2407827D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3A0, &unk_2407827D0);
    v24 = sub_24075A0E4();
    v26 = sub_2405BBA7C(v24, v25, v37);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_240579000, v18, v19, "Resuming handshake continuation: %s with result: %s", v20, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  v28 = v32;
  if ((v47 & 0x100) != 0)
  {
    *&v38 = v43;
    v29 = v43;
    sub_24075A354();
  }

  else
  {
    v35[2] = v45;
    v35[3] = v46;
    v36 = v47;
    v35[0] = v43;
    v35[1] = v44;
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    sub_240619124(&v38, v37);
    sub_24075A364();
  }

  (*(v9 + 8))(v28, v8);
  v30 = v34;
  (*(v9 + 56))(v34, 1, 1, v8);
  swift_beginAccess();
  sub_240730A18(v30, v2 + v14, &qword_27E4BE320, &unk_240782458);
  return swift_endAccess();
}

uint64_t sub_24072975C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[3];
  v32 = a1[2];
  v33 = v3;
  v34 = *(a1 + 64);
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BE2B8);
  sub_240619124(&v30, &v25);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  sub_240602EAC(&v30);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v20 = v30;
    v21 = v31;
    sub_240619124(&v30, &v25);
    v10 = IdMSAccount.DeviceInfo.description.getter();
    v12 = v11;
    v28 = v23;
    v29 = v24;
    v26 = v21;
    v27 = v22;
    v25 = v20;
    sub_240602EAC(&v25);
    v13 = sub_2405BBA7C(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_240579000, v6, v7, "Storing received handshake device info: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v14 = *(v2 + 272);
  v28 = *(v2 + 288);
  v29 = *(v2 + 304);
  v15 = *(v2 + 240);
  v26 = *(v2 + 256);
  v27 = v14;
  v25 = v15;
  v16 = v33;
  *(v2 + 272) = v32;
  *(v2 + 288) = v16;
  *(v2 + 304) = v34;
  v17 = v31;
  *(v2 + 240) = v30;
  *(v2 + 256) = v17;
  sub_240619124(&v30, &v20);
  return sub_2405B8A50(&v25, &qword_27E4B8B08, &qword_240768590);
}

uint64_t sub_240729990(uint64_t a1, uint64_t a2)
{
  v3[111] = v2;
  v3[110] = a2;
  v3[109] = a1;
  v3[112] = type metadata accessor for V1Command(0);
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v4 = sub_240759744();
  v3[115] = v4;
  v3[116] = *(v4 - 8);
  v3[117] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[118] = v5;
  v3[119] = *(v5 - 8);
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240729B20, v2, 0);
}

uint64_t sub_240729B20()
{
  v51 = v0;
  sub_2407228D0((v0 + 98));
  sub_2407597A4();
  v1 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v2 = sub_2405BB3F4(0);
  if (v3)
  {
    v4 = v2;
    v50 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v50;
    }

    sub_24065B728(v4, v1);
  }

  v5 = sub_2405BB3F4(1);
  if (v6)
  {
    v7 = v5;
    v50 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v50;
    }

    sub_24065B728(v7, v1);
  }

  v8 = sub_2405BB3F4(2);
  if (v9)
  {
    v10 = v8;
    v50 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v50;
    }

    sub_24065B728(v10, v1);
  }

  v11 = sub_2405BB3F4(3);
  if (v12)
  {
    v13 = v11;
    v50 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v50;
    }

    sub_24065B728(v13, v1);
  }

  v14 = v0[117];
  v15 = v0[116];
  v16 = v0[115];
  sub_240759724();
  sub_240759704();
  v18 = v17;
  v19 = *(v15 + 8);
  v0[124] = v19;
  v0[125] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v14, v16);
  v20 = v18 * 1000.0;
  if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v20 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 < 1.84467441e19)
  {
    v21 = v0[123];
    v22 = v0[118];
    v23 = v0[110];
    v24 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v1;
    sub_2405BCB30(v24, 0, isUniquelyReferenced_nonNull_native);

    v26 = v21 + v22[11];
    v27 = *v23;
    v28 = v23[2];
    *(v26 + 16) = v23[1];
    *(v26 + 32) = v28;
    *v26 = v27;
    v29 = v23[3];
    v30 = v23[4];
    v31 = v23[6];
    *(v26 + 80) = v23[5];
    *(v26 + 96) = v31;
    *(v26 + 48) = v29;
    *(v26 + 64) = v30;
    v32 = v23[7];
    v33 = v23[8];
    v34 = v23[9];
    *(v26 + 160) = *(v23 + 20);
    *(v26 + 128) = v33;
    *(v26 + 144) = v34;
    *(v26 + 112) = v32;
    type metadata accessor for V1Command.Request(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v21 + v22[9]) = 1;
    *(v21 + v22[10]) = v1;
    if (qword_27E4B5FA8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v35 = v0[123];
  v36 = v0[122];
  v37 = sub_240759AE4();
  v0[126] = __swift_project_value_buffer(v37, qword_27E4BE2B8);
  sub_2405B044C(v35, v36, qword_27E4BA650, &qword_24076ED10);
  v38 = sub_240759AC4();
  v39 = sub_24075A5D4();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[122];
  if (v40)
  {
    v42 = v0[121];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v43 = 136315138;
    sub_2405B044C(v41, v42, qword_27E4BA650, &qword_24076ED10);
    v45 = sub_24075A0E4();
    v47 = v46;
    sub_2405B8A50(v41, qword_27E4BA650, &qword_24076ED10);
    v48 = sub_2405BBA7C(v45, v47, &v50);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_240579000, v38, v39, "Sending outMessage: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x245CC76B0](v44, -1, -1);
    MEMORY[0x245CC76B0](v43, -1, -1);
  }

  else
  {

    sub_2405B8A50(v41, qword_27E4BA650, &qword_24076ED10);
  }

  return MEMORY[0x2822009F8](sub_24072A088, 0, 0);
}

uint64_t sub_24072A088()
{
  v1 = v0[101];
  v2 = v0[102];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 98, v1);
  v4 = swift_task_alloc();
  v0[127] = v4;
  v5 = sub_240590128(&qword_27E4BE330, qword_27E4BA650, &qword_24076ED10, &protocol conformance descriptor for Message<A>);
  *v4 = v0;
  v4[1] = sub_24072A184;
  v6 = v0[123];
  v7 = v0[120];
  v8 = v0[118];

  return sub_240656A78(v7, v3, v6, v8, v1, v5, v2);
}

uint64_t sub_24072A184()
{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  v3 = *(v2 + 888);
  if (v0)
  {
    v4 = sub_24072AB48;
  }

  else
  {
    v4 = sub_24072A2B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24072A2B0(uint64_t a1)
{
  v89 = v1;
  v2 = *(v1 + 992);
  v3 = *(v1 + 936);
  v4 = *(v1 + 920);
  sub_240759724();
  sub_240759704();
  v6 = v5;
  result = v2(v3, v4);
  v8 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = *(v1 + 960);
  v10 = v8;
  v11 = *(*(v1 + 944) + 40);
  v12 = *(v9 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v83 = v12;
  sub_2405BCB30(v10, 3, isUniquelyReferenced_nonNull_native);

  *(v9 + v11) = v12;
  v14 = sub_240759AC4();
  v15 = sub_24075A5D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v1 + 968);
    v17 = *(v1 + 960);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v83 = v19;
    *v18 = 136315138;
    swift_beginAccess();
    sub_2405B044C(v17, v16, qword_27E4BA650, &qword_24076ED10);
    v20 = sub_24075A0E4();
    v22 = sub_2405BBA7C(v20, v21, &v83);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_240579000, v14, v15, "Received response inMessage: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v18, -1, -1);
  }

  v23 = *(v1 + 960);
  v24 = *(v1 + 944);
  v25 = *(v1 + 912);
  swift_beginAccess();
  v26 = *(v24 + 44);
  v27 = type metadata accessor for V1Command;
  sub_240730948(v23 + v26, v25, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *(v1 + 912);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v52 = *(v29 + 16);
      v83 = *v29;
      v84 = v52;
      v53 = *(v29 + 32);
      v54 = *(v29 + 40);
      v55 = *(v29 + 48);
      v56 = *(v29 + 56);
      v57 = *(v29 + 64);
      v58 = *(v29 + 72);
      v60 = *(v29 + 80);
      v59 = *(v29 + 88);
      v61 = *(v29 + 96);
      *(v1 + 712) = 0u;
      *(v1 + 728) = 0u;
      *(v1 + 744) = 0u;
      *(v1 + 760) = 0u;
      *(v1 + 776) = 0;
      sub_2405B8A50(v1 + 712, &qword_27E4B8B08, &qword_240768590);
      v62 = v83;
      v63 = v84;
      *(v1 + 120) = v83;
      *(v1 + 136) = v63;
      *(v1 + 152) = v53;
      *(v1 + 160) = v54;
      *(v1 + 168) = v55;
      *(v1 + 176) = v56;
      *(v1 + 184) = v57;
      *(v1 + 192) = v58;
      *(v1 + 200) = v60;
      *(v1 + 208) = v59;
      *(v1 + 216) = v61;
      *(v1 + 16) = v62;
      *(v1 + 32) = v63;
      *(v1 + 48) = v53;
      *(v1 + 56) = v54;
      *(v1 + 64) = v55;
      *(v1 + 72) = v56;
      *(v1 + 80) = v57;
      *(v1 + 88) = v58;
      *(v1 + 96) = v60;
      *(v1 + 104) = v59;
      *(v1 + 112) = v61;
      sub_2406BFA58(v1 + 120, v1 + 224);
      sub_2406BFA90(v1 + 16);
      sub_2406BFA58(v1 + 120, v1 + 328);
      sub_2406BFA58(v1 + 120, v1 + 432);
      v64 = sub_240759AC4();
      v65 = sub_24075A5D4();
      sub_2406BFA90(v1 + 120);
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v1 + 984);
      v68 = *(v1 + 960);
      if (v66)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v87[0] = v70;
        *v69 = 136315138;
        v71 = *(v1 + 168);
        v72 = *(v1 + 200);
        *(v1 + 600) = *(v1 + 184);
        *(v1 + 616) = v72;
        *(v1 + 632) = *(v1 + 216);
        v73 = *(v1 + 136);
        *(v1 + 536) = *(v1 + 120);
        *(v1 + 552) = v73;
        *(v1 + 568) = *(v1 + 152);
        *(v1 + 584) = v71;
        v74 = sub_24075A0E4();
        v76 = sub_2405BBA7C(v74, v75, v87);

        *(v69 + 4) = v76;
        _os_log_impl(&dword_240579000, v64, v65, "Received command response: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x245CC76B0](v70, -1, -1);
        MEMORY[0x245CC76B0](v69, -1, -1);
      }

      else
      {
        sub_2406BFA90(v1 + 120);
      }

      sub_2405B8A50(v67, qword_27E4BA650, &qword_24076ED10);
      sub_2405B8A50(v1 + 784, &qword_27E4BE338, &qword_2407824A8);
      sub_2405B8A50(v68, qword_27E4BA650, &qword_24076ED10);
      v77 = *(v1 + 872);
      v78 = *(v1 + 184);
      v79 = *(v1 + 200);
      v80 = *(v1 + 168);
      *(v77 + 96) = *(v1 + 216);
      *(v77 + 64) = v78;
      *(v77 + 80) = v79;
      *(v77 + 48) = v80;
      v81 = *(v1 + 120);
      v82 = *(v1 + 152);
      *(v77 + 16) = *(v1 + 136);
      *(v77 + 32) = v82;
      *v77 = v81;

      v51 = *(v1 + 8);
      goto LABEL_16;
    }

    v27 = type metadata accessor for V1Command.Response;
  }

  sub_2405F5954(v29, v27);
  v30 = *(v1 + 960);
  v31 = *(v1 + 944);
  v32 = *(v1 + 904);
  *(v1 + 640) = 0u;
  *(v1 + 656) = 0u;
  *(v1 + 672) = 0u;
  *(v1 + 688) = 0u;
  *(v1 + 704) = 0;
  sub_2405B8A50(v1 + 640, &qword_27E4B8B08, &qword_240768590);
  sub_240730948(v30 + *(v31 + 44), v32, type metadata accessor for V1Command);
  v33 = swift_getEnumCaseMultiPayload();
  v34 = *(v1 + 904);
  if (v33 != 2)
  {
    sub_2405F5954(v34, type metadata accessor for V1Command);
LABEL_14:
    v45 = *(v1 + 984);
    v46 = *(v1 + 960);
    v47 = *(v1 + 952);
    v48 = *(v1 + 944);
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
    swift_allocError();
    v50 = v49;
    sub_2405B044C(v46, v49, qword_27E4BA650, &qword_24076ED10);
    (*(v47 + 56))(v50, 0, 5, v48);
    swift_willThrow();
    sub_2405B8A50(v45, qword_27E4BA650, &qword_24076ED10);
    sub_2405B8A50(v1 + 784, &qword_27E4BE338, &qword_2407824A8);
    v44 = v46;
    goto LABEL_15;
  }

  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  v38 = *(v34 + 24);
  v85[0] = *v34;
  v85[1] = v36;
  v85[2] = v37;
  v86 = v38;
  v87[1] = 0;
  v87[2] = 0;
  v87[0] = 4;
  v88 = 2;
  if ((static V1CommandError.== infix(_:_:)(v85, v87) & 1) == 0)
  {
    sub_2406DCA8C(v35, v36, v37, v38);
    goto LABEL_14;
  }

  v39 = *(v1 + 984);
  v40 = *(v1 + 960);
  v41 = *(v1 + 952);
  v42 = *(v1 + 944);
  type metadata accessor for CommandRouter.Failure(0);
  sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
  swift_allocError();
  (*(v41 + 56))(v43, 4, 5, v42);
  swift_willThrow();
  sub_2406DCA8C(v35, v36, v37, v38);
  sub_2405B8A50(v39, qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50(v1 + 784, &qword_27E4BE338, &qword_2407824A8);
  v44 = v40;
LABEL_15:
  sub_2405B8A50(v44, qword_27E4BA650, &qword_24076ED10);

  v51 = *(v1 + 8);
LABEL_16:

  return v51();
}

uint64_t sub_24072AB48()
{
  sub_2405B8A50(*(v0 + 984), qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50(v0 + 784, &qword_27E4BE338, &qword_2407824A8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24072AC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v5[18] = type metadata accessor for V1Command(0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[22] = AssociatedTypeWitness;
  v7 = sub_24075A714();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = *(AssociatedTypeWitness - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v8 = sub_240759744();
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072AF20, v4, 0);
}

uint64_t sub_24072AF20()
{
  v43 = v0;
  sub_2407228D0((v0 + 2));
  sub_2407597A4();
  v1 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v2 = sub_2405BB3F4(0);
  if (v3)
  {
    v4 = v2;
    v42 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v42;
    }

    sub_24065B728(v4, v1);
  }

  v5 = sub_2405BB3F4(1);
  if (v6)
  {
    v7 = v5;
    v42 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v42;
    }

    sub_24065B728(v7, v1);
  }

  v8 = sub_2405BB3F4(2);
  if (v9)
  {
    v10 = v8;
    v42 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v42;
    }

    sub_24065B728(v10, v1);
  }

  v11 = sub_2405BB3F4(3);
  if (v12)
  {
    v13 = v11;
    v42 = v1;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_24065BBDC();
      v1 = v42;
    }

    sub_24065B728(v13, v1);
  }

  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[30];
  sub_240759724();
  sub_240759704();
  v18 = v17;
  v19 = *(v15 + 8);
  v0[39] = v19;
  v0[40] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v14, v16);
  v20 = v18 * 1000.0;
  if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v20 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 < 1.84467441e19)
  {
    v21 = v0[38];
    v22 = v0[33];
    v24 = v0[15];
    v23 = v0[16];
    v25 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v1;
    sub_2405BCB30(v25, 0, isUniquelyReferenced_nonNull_native);

    (*(v23 + 24))(v24, v23);
    *(v21 + *(v22 + 36)) = 1;
    *(v21 + *(v22 + 40)) = v1;
    if (qword_27E4B5FA8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v27 = v0[37];
  v28 = v0[38];
  v29 = sub_240759AE4();
  v0[41] = __swift_project_value_buffer(v29, qword_27E4BE2B8);
  sub_2405B044C(v28, v27, qword_27E4BA650, &qword_24076ED10);
  v30 = sub_240759AC4();
  v31 = sub_24075A5D4();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[37];
  if (v32)
  {
    v34 = v0[36];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315138;
    sub_2405B044C(v33, v34, qword_27E4BA650, &qword_24076ED10);
    v37 = sub_24075A0E4();
    v39 = v38;
    sub_2405B8A50(v33, qword_27E4BA650, &qword_24076ED10);
    v40 = sub_2405BBA7C(v37, v39, &v42);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_240579000, v30, v31, "Sending outMessage: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x245CC76B0](v36, -1, -1);
    MEMORY[0x245CC76B0](v35, -1, -1);
  }

  else
  {

    sub_2405B8A50(v33, qword_27E4BA650, &qword_24076ED10);
  }

  return MEMORY[0x2822009F8](sub_24072B484, 0, 0);
}

uint64_t sub_24072B484()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[42] = v4;
  v5 = sub_240590128(&qword_27E4BE330, qword_27E4BA650, &qword_24076ED10, &protocol conformance descriptor for Message<A>);
  *v4 = v0;
  v4[1] = sub_24072B57C;
  v6 = v0[38];
  v7 = v0[35];
  v8 = v0[33];

  return sub_240656A78(v7, v3, v6, v8, v2, v5, v1);
}

uint64_t sub_24072B57C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_24072BF30;
  }

  else
  {
    v4 = sub_24072B6A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24072B6A8(uint64_t a1)
{
  v78 = v1;
  v2 = v1[39];
  v3 = v1[32];
  v4 = v1[30];
  sub_240759724();
  sub_240759704();
  v6 = v5;
  result = v2(v3, v4);
  v8 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v9 = v1[35];
  v10 = v8;
  v11 = *(v1[33] + 40);
  v12 = *(v9 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = v12;
  sub_2405BCB30(v10, 3, isUniquelyReferenced_nonNull_native);

  *(v9 + v11) = v12;
  v14 = sub_240759AC4();
  v15 = sub_24075A5D4();
  if (os_log_type_enabled(v14, v15))
  {
    v17 = v1[35];
    v16 = v1[36];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v76[0] = v19;
    *v18 = 136315138;
    swift_beginAccess();
    sub_2405B044C(v17, v16, qword_27E4BA650, &qword_24076ED10);
    v20 = sub_24075A0E4();
    v22 = sub_2405BBA7C(v20, v21, v76);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_240579000, v14, v15, "Received response inMessage: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v18, -1, -1);
  }

  v23 = v1[35];
  v24 = v1[33];
  v25 = v1[25];
  v26 = v1[26];
  v27 = v1[22];
  v28 = v1[20];
  swift_beginAccess();
  sub_240730948(v23 + *(v24 + 44), v28, type metadata accessor for V1Command);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v28, v27, AssociatedConformanceWitness);
  if ((*(v26 + 48))(v25, 1, v27) != 1)
  {
    v45 = v1[28];
    v44 = v1[29];
    v46 = v1[26];
    v47 = v1[22];
    v73 = *(v46 + 32);
    v73(v44, v1[25], v47);
    v48 = *(v46 + 16);
    v48(v45, v44, v47);
    v49 = sub_240759AC4();
    v72 = sub_24075A5D4();
    v50 = os_log_type_enabled(v49, v72);
    v51 = v1[38];
    v52 = v1[28];
    if (v50)
    {
      v53 = v1[26];
      v54 = v1[27];
      v55 = v1[22];
      v71 = v1[38];
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v76[0] = v57;
      *v56 = 136315138;
      v48(v54, v52, v55);
      v58 = sub_24075A0E4();
      v60 = v59;
      (*(v53 + 8))(v52, v55);
      v61 = sub_2405BBA7C(v58, v60, v76);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_240579000, v49, v72, "Received command response: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x245CC76B0](v57, -1, -1);
      MEMORY[0x245CC76B0](v56, -1, -1);

      v62 = v71;
    }

    else
    {
      v63 = v1[26];
      v64 = v1[22];

      (*(v63 + 8))(v52, v64);
      v62 = v51;
    }

    sub_2405B8A50(v62, qword_27E4BA650, &qword_24076ED10);
    sub_2405B8A50((v1 + 2), &qword_27E4BE338, &qword_2407824A8);
    v65 = v1[35];
    v73(v1[13], v1[29], v1[22]);
    sub_2405B8A50(v65, qword_27E4BA650, &qword_24076ED10);

    v66 = v1[1];
    goto LABEL_18;
  }

  v30 = v1[35];
  v31 = v1[33];
  v32 = v1[19];
  (*(v1[24] + 8))(v1[25], v1[23]);
  sub_240730948(v30 + *(v31 + 44), v32, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v1[19];
  if (EnumCaseMultiPayload != 2)
  {
    sub_2405F5954(v34, type metadata accessor for V1Command);
LABEL_16:
    v39 = v1[38];
    v67 = v1[34];
    v40 = v1[35];
    v68 = v1[33];
    type metadata accessor for CommandRouter.Failure(0);
    sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
    swift_allocError();
    v70 = v69;
    sub_2405B044C(v40, v69, qword_27E4BA650, &qword_24076ED10);
    (*(v67 + 56))(v70, 0, 5, v68);
    swift_willThrow();
    goto LABEL_17;
  }

  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  v38 = *(v34 + 24);
  v74[0] = *v34;
  v74[1] = v36;
  v74[2] = v37;
  v75 = v38;
  v76[1] = 0;
  v76[2] = 0;
  v76[0] = 4;
  v77 = 2;
  if ((static V1CommandError.== infix(_:_:)(v74, v76) & 1) == 0)
  {
    sub_2406DCA8C(v35, v36, v37, v38);
    goto LABEL_16;
  }

  v39 = v1[38];
  v41 = v1[34];
  v40 = v1[35];
  v42 = v1[33];
  type metadata accessor for CommandRouter.Failure(0);
  sub_24072FC30(&qword_27E4BE2E0, type metadata accessor for CommandRouter.Failure, &protocol conformance descriptor for CommandRouter.Failure);
  swift_allocError();
  (*(v41 + 56))(v43, 4, 5, v42);
  swift_willThrow();
  sub_2406DCA8C(v35, v36, v37, v38);
LABEL_17:
  sub_2405B8A50(v39, qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50((v1 + 2), &qword_27E4BE338, &qword_2407824A8);
  sub_2405B8A50(v40, qword_27E4BA650, &qword_24076ED10);

  v66 = v1[1];
LABEL_18:

  return v66();
}

uint64_t sub_24072BF30()
{
  sub_2405B8A50(*(v0 + 304), qword_27E4BA650, &qword_24076ED10);
  sub_2405B8A50(v0 + 16, &qword_27E4BE338, &qword_2407824A8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24072C054(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for V1Command(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = sub_240759744();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072C1C0, v2, 0);
}

uint64_t sub_24072C1C0()
{
  v34 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 24);
  v3 = sub_240759AE4();
  *(v0 + 136) = __swift_project_value_buffer(v3, qword_27E4BE2B8);
  sub_2405B044C(v2, v1, qword_27E4BA650, &qword_24076ED10);
  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    sub_2405B044C(v7, v8, qword_27E4BA650, &qword_24076ED10);
    v11 = sub_24075A0E4();
    v13 = v12;
    sub_2405B8A50(v7, qword_27E4BA650, &qword_24076ED10);
    v14 = sub_2405BBA7C(v11, v13, &v33);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v4, v5, "Received inMessage: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {

    sub_2405B8A50(v7, qword_27E4BA650, &qword_24076ED10);
  }

  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 72);
  sub_2405B044C(*(v0 + 24), *(v0 + 112), qword_27E4BA650, &qword_24076ED10);
  sub_240759724();
  sub_240759704();
  v19 = v18;
  v20 = *(v16 + 8);
  *(v0 + 144) = v20;
  *(v0 + 152) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v20(v15, v17);
  v22 = v19 * 1000.0;
  if (COERCE__INT64(fabs(v19 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v22 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v23 = *(v0 + 112);
  v24 = *(v0 + 96);
  v25 = v22;
  v26 = *(v24 + 40);
  *(v0 + 168) = v26;
  v27 = *(v23 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v27;
  sub_2405BCB30(v25, 1, isUniquelyReferenced_nonNull_native);
  v29 = v33;

  *(v23 + v26) = v29;
  v30 = *(v24 + 44);
  v31 = swift_task_alloc();
  *(v0 + 160) = v31;
  *v31 = v0;
  v31[1] = sub_24072C51C;
  v32 = *(v0 + 64);

  return sub_24072CB10(v32, v23 + v30);
}

uint64_t sub_24072C51C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_24072C62C, v1, 0);
}

uint64_t sub_24072C62C()
{
  v47 = v0;
  sub_240730948(*(v0 + 64), *(v0 + 56), type metadata accessor for V1Command);
  v1 = sub_240759AC4();
  v2 = sub_24075A5D4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 56);
  if (v3)
  {
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    sub_240730948(v4, v5, type metadata accessor for V1Command);
    v8 = sub_24075A0E4();
    v10 = v9;
    sub_2405F5954(v4, type metadata accessor for V1Command);
    v11 = sub_2405BBA7C(v8, v10, &v46);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_240579000, v1, v2, "Processed request and preparing response: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  else
  {

    sub_2405F5954(v4, type metadata accessor for V1Command);
  }

  v12 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  sub_2407597A4();
  v17 = *(v14 + v12);

  sub_240759724();
  sub_240759704();
  v19 = v18;
  result = v13(v15, v16);
  v21 = v19 * 1000.0;
  if (COERCE__INT64(fabs(v19 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v21 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 64);
  v25 = *(v0 + 16);
  v26 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v17;
  sub_2405BCB30(v26, 2, isUniquelyReferenced_nonNull_native);
  v28 = v46;

  sub_240730948(v24, v25 + v23[11], type metadata accessor for V1Command);
  *(v25 + v23[9]) = 1;
  *(v25 + v23[10]) = v28;
  sub_2405B044C(v25, v22, qword_27E4BA650, &qword_24076ED10);
  v29 = sub_240759AC4();
  v30 = sub_24075A5D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 120);
    v32 = *(v0 + 104);
    v44 = *(v0 + 64);
    v45 = *(v0 + 112);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46 = v34;
    *v33 = 136315138;
    sub_2405B044C(v32, v31, qword_27E4BA650, &qword_24076ED10);
    v35 = sub_24075A0E4();
    v37 = v36;
    sub_2405B8A50(v32, qword_27E4BA650, &qword_24076ED10);
    v38 = sub_2405BBA7C(v35, v37, &v46);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_240579000, v29, v30, "Returning outMessage as response: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x245CC76B0](v34, -1, -1);
    MEMORY[0x245CC76B0](v33, -1, -1);

    sub_2405F5954(v44, type metadata accessor for V1Command);
    v39 = v45;
  }

  else
  {
    v41 = *(v0 + 104);
    v40 = *(v0 + 112);
    v42 = *(v0 + 64);

    sub_2405B8A50(v41, qword_27E4BA650, &qword_24076ED10);
    sub_2405F5954(v42, type metadata accessor for V1Command);
    v39 = v40;
  }

  sub_2405B8A50(v39, qword_27E4BA650, &qword_24076ED10);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_24072CB10(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = type metadata accessor for V1Command.Response(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  type metadata accessor for V1Command.Request(0);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for V1Command(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072CC34, v2, 0);
}

uint64_t sub_24072CC34()
{
  v49 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[12];
  v3 = sub_240759AE4();
  v0[23] = __swift_project_value_buffer(v3, qword_27E4BE2B8);
  sub_240730948(v2, v1, type metadata accessor for V1Command);
  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315138;
    sub_240730948(v7, v8, type metadata accessor for V1Command);
    v11 = sub_24075A0E4();
    v13 = v12;
    sub_2405F5954(v7, type metadata accessor for V1Command);
    v14 = sub_2405BBA7C(v11, v13, &v48);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v4, v5, "Received incoming V1 command: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {

    sub_2405F5954(v7, type metadata accessor for V1Command);
  }

  sub_240730948(v0[12], v0[20], type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = v0[20];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v0[16];
      v17 = v0[17];
      sub_2407309B0(v16, v17, type metadata accessor for V1Command.Response);
      sub_240730948(v17, v18, type metadata accessor for V1Command.Response);
      v19 = sub_240759AC4();
      v20 = sub_24075A5E4();
      v21 = os_log_type_enabled(v19, v20);
      v23 = v0[16];
      v22 = v0[17];
      if (v21)
      {
        v24 = v0[15];
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v48 = v26;
        *v25 = 136315138;
        sub_240730948(v23, v24, type metadata accessor for V1Command.Response);
        v27 = sub_24075A0E4();
        v29 = v28;
        sub_2405F5954(v23, type metadata accessor for V1Command.Response);
        v30 = sub_2405BBA7C(v27, v29, &v48);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_240579000, v19, v20, "Received an unexpected response instead of request: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x245CC76B0](v26, -1, -1);
        MEMORY[0x245CC76B0](v25, -1, -1);
      }

      else
      {

        sub_2405F5954(v23, type metadata accessor for V1Command.Response);
      }

      sub_2405F5954(v22, type metadata accessor for V1Command.Response);
      v45 = 2;
    }

    else
    {
      v35 = *v16;
      v36 = *(v16 + 8);
      v37 = *(v16 + 16);
      v38 = *(v16 + 24);
      sub_2406DC950(*v16, v36, v37, v38);
      v39 = sub_240759AC4();
      v40 = sub_24075A5E4();
      sub_2406DCA8C(v35, v36, v37, v38);
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        sub_2407308F4();
        swift_allocError();
        *v43 = v35;
        *(v43 + 8) = v36;
        *(v43 + 16) = v37;
        *(v43 + 24) = v38;
        sub_2406DC950(v35, v36, v37, v38);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_240579000, v39, v40, "Received an unexpected failure as a request: %@", v41, 0xCu);
        sub_2405B8A50(v42, &qword_27E4B92A0, &qword_240762400);
        MEMORY[0x245CC76B0](v42, -1, -1);
        MEMORY[0x245CC76B0](v41, -1, -1);
        sub_2406DCA8C(v35, v36, v37, v38);
      }

      else
      {

        sub_2406DCA8C(v35, v36, v37, v38);
      }

      v45 = 3;
    }

    v46 = v0[11];
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *v46 = v45;
    *(v46 + 24) = 2;
    swift_storeEnumTagMultiPayload();

    v47 = v0[1];

    return v47();
  }

  else
  {
    sub_2407309B0(v16, v0[18], type metadata accessor for V1Command.Request);
    v31 = swift_task_alloc();
    v0[24] = v31;
    *v31 = v0;
    v31[1] = sub_24072D290;
    v32 = v0[18];
    v33 = v0[11];

    return sub_24072D904(v33, v32);
  }
}

uint64_t sub_24072D290()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_24072D498;
  }

  else
  {
    v4 = sub_24072D3BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24072D3BC()
{
  sub_2405F5954(*(v0 + 144), type metadata accessor for V1Command.Request);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24072D498()
{
  v39 = v0;
  v1 = *(v0 + 200);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 200);
  if (v3)
  {

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    sub_2406DC950(v5, v6, v7, v8);
    v9 = sub_240759AC4();
    v10 = sub_24075A5E4();
    sub_2406DCA8C(v5, v6, v7, v8);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      sub_2407308F4();
      swift_allocError();
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      *(v13 + 24) = v8;
      sub_2406DC950(v5, v6, v7, v8);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_240579000, v9, v10, "Failed to receive request with V1 command error: %@", v11, 0xCu);
      sub_2405B8A50(v12, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v12, -1, -1);
      MEMORY[0x245CC76B0](v11, -1, -1);
    }

    v15 = *(v0 + 144);
    v16 = *(v0 + 88);

    sub_2405F5954(v15, type metadata accessor for V1Command.Request);
    *v16 = v5;
    *(v16 + 8) = v6;
    *(v16 + 16) = v7;
    *(v16 + 24) = v8;
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    v17 = v4;
    v18 = sub_240759AC4();
    v19 = sub_24075A5E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 200);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v20;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_240579000, v18, v19, "Failed to receive request with error: %@", v21, 0xCu);
      sub_2405B8A50(v22, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v22, -1, -1);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    v25 = *(v0 + 200);
    v26 = *(v0 + 144);
    v27 = *(v0 + 88);

    swift_getErrorValue();
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    v30 = *(v28 - 8);
    v31 = swift_task_alloc();
    (*(v30 + 16))(v31, v29, v28);
    Error.into()(v28, &v36);

    sub_2405F5954(v26, type metadata accessor for V1Command.Request);

    v32 = v37;
    v33 = v38;
    *v27 = v36;
    *(v27 + 16) = v32;
    *(v27 + 24) = v33;
    swift_storeEnumTagMultiPayload();
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_24072D904(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  v3[60] = type metadata accessor for V1Command.Request(0);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24072D9B4, v2, 0);
}

uint64_t sub_24072D9B4()
{
  v41 = v0;
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 464);
  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4BE2B8);
  sub_240730948(v2, v1, type metadata accessor for V1Command.Request);
  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 504);
  if (v6)
  {
    v8 = *(v0 + 496);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315138;
    sub_240730948(v7, v8, type metadata accessor for V1Command.Request);
    v11 = sub_24075A0E4();
    v13 = v12;
    sub_2405F5954(v7, type metadata accessor for V1Command.Request);
    v14 = sub_2405BBA7C(v11, v13, &v40);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v4, v5, "Received incoming V1 request: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {

    sub_2405F5954(v7, type metadata accessor for V1Command.Request);
  }

  sub_240730948(*(v0 + 464), *(v0 + 488), type metadata accessor for V1Command.Request);
  if (swift_getEnumCaseMultiPayload())
  {
    v39 = (*(*(v0 + 472) + 208) + **(*(v0 + 472) + 208));
    v15 = swift_task_alloc();
    *(v0 + 528) = v15;
    *v15 = v0;
    v15[1] = sub_24072DFC4;
    v17 = *(v0 + 464);
    v16 = *(v0 + 472);
    v18 = *(v0 + 456);
  }

  else
  {
    v19 = *(v0 + 488);
    v20 = *(v0 + 472);
    v22 = *(v19 + 16);
    v21 = *(v19 + 32);
    *(v0 + 16) = *v19;
    *(v0 + 32) = v22;
    *(v0 + 48) = v21;
    v23 = *(v19 + 96);
    v25 = *(v19 + 48);
    v24 = *(v19 + 64);
    *(v0 + 96) = *(v19 + 80);
    *(v0 + 112) = v23;
    *(v0 + 64) = v25;
    *(v0 + 80) = v24;
    v27 = *(v19 + 128);
    v26 = *(v19 + 144);
    v28 = *(v19 + 160);
    v29 = *(v19 + 112);
    *(v0 + 176) = v28;
    *(v0 + 144) = v27;
    *(v0 + 160) = v26;
    *(v0 + 128) = v29;
    v30 = *(v20 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_handshakeHandler);
    v31 = *(v0 + 80);
    v32 = *(v0 + 112);
    v33 = *(v0 + 128);
    *(v0 + 264) = *(v0 + 96);
    *(v0 + 280) = v32;
    *(v0 + 248) = v31;
    v34 = *(v0 + 48);
    *(v0 + 232) = *(v0 + 64);
    *(v0 + 344) = v28;
    v35 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v35;
    *(v0 + 296) = v33;
    v36 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v36;
    *(v0 + 216) = v34;
    v39 = (v30 + *v30);
    v37 = swift_task_alloc();
    *(v0 + 512) = v37;
    *v37 = v0;
    v37[1] = sub_24072DDE0;
    v16 = *(v0 + 472);
    v18 = v0 + 352;
    v17 = v0 + 184;
  }

  return v39(v18, v16, v17);
}

uint64_t sub_24072DDE0()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 472);
    v4 = sub_24072E184;
  }

  else
  {
    v5 = *(v2 + 472);
    sub_2406BD370(v2 + 16);
    v4 = sub_24072DF08;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24072DF08()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 352);
  v3 = *(v0 + 384);
  *(v1 + 16) = *(v0 + 368);
  *(v1 + 32) = v3;
  *v1 = v2;
  v4 = *(v0 + 400);
  v5 = *(v0 + 416);
  v6 = *(v0 + 432);
  *(v1 + 96) = *(v0 + 448);
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 48) = v4;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24072DFC4()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 472);
  if (v0)
  {
    v4 = sub_24072E20C;
  }

  else
  {
    v4 = sub_24072E0F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24072E0F0()
{
  sub_2405F5954(*(v0 + 488), type metadata accessor for V1Command.Request);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24072E184()
{
  sub_2406BD370(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24072E20C()
{
  sub_2405F5954(*(v0 + 488), type metadata accessor for V1Command.Request);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24072E2A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 128);
  v5 = *(a2 + 144);
  v6 = *(a2 + 96);
  *(v3 + 296) = *(a2 + 112);
  *(v3 + 312) = v4;
  *(v3 + 328) = v5;
  v7 = *(a2 + 32);
  *(v3 + 232) = *(a2 + 48);
  v8 = *(a2 + 80);
  *(v3 + 248) = *(a2 + 64);
  *(v3 + 264) = v8;
  *(v3 + 280) = v6;
  v9 = *(a2 + 16);
  *(v3 + 184) = *a2;
  *(v3 + 200) = v9;
  *(v3 + 2720) = v2;
  *(v3 + 2712) = a1;
  *(v3 + 344) = *(a2 + 160);
  *(v3 + 216) = v7;
  return MEMORY[0x2822009F8](sub_24072E30C, v2, 0);
}

uint64_t sub_24072E30C()
{
  v96 = v0;
  v1 = (v0 + 184);
  if (qword_27E4B5FA8 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  *(v0 + 2728) = __swift_project_value_buffer(v2, qword_27E4BE2B8);
  sub_2406BD338(v0 + 184, v0 + 1528);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  sub_2406BD370(v0 + 184);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v90 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 328);
    *(v0 + 1152) = *(v0 + 312);
    *(v0 + 1168) = v7;
    *(v0 + 1184) = *(v0 + 344);
    v8 = *(v0 + 264);
    *(v0 + 1088) = *(v0 + 248);
    *(v0 + 1104) = v8;
    v9 = *(v0 + 296);
    *(v0 + 1120) = *(v0 + 280);
    *(v0 + 1136) = v9;
    v10 = *(v0 + 200);
    *(v0 + 1024) = *v1;
    *(v0 + 1040) = v10;
    v11 = *(v0 + 232);
    *(v0 + 1056) = *(v0 + 216);
    *(v0 + 1072) = v11;
    sub_2406BD338(v0 + 184, v0 + 16);
    v12 = sub_24075A0E4();
    v14 = sub_2405BBA7C(v12, v13, &v90);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_240579000, v3, v4, "Received handshake request: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v15 = *(v0 + 184);
  *(v0 + 1763) = v15;
  if (v15 == 1 && *(*(v0 + 2720) + 248))
  {
    v16 = sub_240759AC4();
    v17 = sub_24075A5D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_240579000, v16, v17, "Request is a keep alive and handshake has been received before, keeping alive", v18, 2u);
      MEMORY[0x245CC76B0](v18, -1, -1);
    }

    v19 = *(v0 + 2712);

    *v19 = 257;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 256;
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 2416) = 0u;
    *(v0 + 2432) = 0u;
    *(v0 + 2480) = 0;
    sub_2405B8A50(v0 + 2416, &qword_27E4B8B08, &qword_240768590);
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0;
LABEL_36:
    v85 = *(v0 + 8);

    return v85();
  }

  v20 = (v0 + 192);
  v21 = *(v0 + 192);
  *(v0 + 2736) = v21;
  v22 = *(v0 + 200);
  *(v0 + 2744) = v22;
  v23 = *(v0 + 224);
  *(v0 + 2560) = *(v0 + 208);
  *(v0 + 2576) = v23;
  *(v0 + 2592) = *(v0 + 240);
  *(v0 + 2608) = *(v0 + 256);
  if (!v22)
  {
    sub_2406BD338(v0 + 184, v0 + 352);
    v46 = sub_240759AC4();
    v47 = sub_24075A5E4();
    sub_2406BD370(v0 + 184);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v90 = v49;
      *v48 = 136315138;
      v50 = *(v0 + 328);
      *(v0 + 648) = *(v0 + 312);
      *(v0 + 664) = v50;
      *(v0 + 680) = *(v0 + 344);
      v51 = *(v0 + 264);
      *(v0 + 584) = *(v0 + 248);
      *(v0 + 600) = v51;
      v52 = *(v0 + 296);
      *(v0 + 616) = *(v0 + 280);
      *(v0 + 632) = v52;
      v53 = *(v0 + 200);
      *(v0 + 520) = *v1;
      *(v0 + 536) = v53;
      v54 = *(v0 + 232);
      *(v0 + 552) = *(v0 + 216);
      *(v0 + 568) = v54;
      sub_2406BD338(v0 + 184, v0 + 688);
      v55 = sub_24075A0E4();
      v57 = sub_2405BBA7C(v55, v56, &v90);

      *(v48 + 4) = v57;
      _os_log_impl(&dword_240579000, v46, v47, "REJECTION: Incoming handshake request did not contain expected device info: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x245CC76B0](v49, -1, -1);
      MEMORY[0x245CC76B0](v48, -1, -1);
    }

    v58 = *(v0 + 2712);
    *v58 = 0;
    *(v58 + 8) = 0xD000000000000015;
    *(v58 + 16) = 0x800000024078A1E0;
    *(v58 + 24) = 256;
    *(v0 + 2520) = 0u;
    *(v0 + 2536) = 0u;
    *(v0 + 2488) = 0u;
    *(v0 + 2504) = 0u;
    *(v0 + 2552) = 0;
    sub_2405B8A50(v0 + 2488, &qword_27E4B8B08, &qword_240768590);
    *(v58 + 32) = 0u;
    *(v58 + 48) = 0u;
    *(v58 + 64) = 0u;
    *(v58 + 80) = 0u;
    *(v58 + 96) = 0;
    goto LABEL_36;
  }

  v88 = (v0 + 2560);
  v24 = *(v0 + 240);
  *(v0 + 2160) = *(v0 + 224);
  *(v0 + 2176) = v24;
  *(v0 + 2192) = *(v0 + 256);
  v25 = *(v0 + 208);
  *(v0 + 2128) = *v20;
  *(v0 + 2144) = v25;
  sub_2405B044C(v0 + 192, v0 + 2056, &qword_27E4B8B08, &qword_240768590);
  sub_240619124(v0 + 2128, v0 + 1912);
  v26 = sub_240759AC4();
  v27 = sub_24075A5C4();
  sub_2405B8A50(v0 + 192, &qword_27E4B8B08, &qword_240768590);
  if (os_log_type_enabled(v26, v27))
  {
    log = v26;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v95 = v29;
    *v28 = 136315138;
    *&v90 = v21;
    *(&v90 + 1) = v22;
    v30 = *(v0 + 2576);
    v91 = *v88;
    v92 = v30;
    v93 = *(v0 + 2592);
    LOBYTE(v94) = *(v0 + 2608);
    v31 = *(v0 + 240);
    *(v0 + 2304) = *(v0 + 224);
    *(v0 + 2320) = v31;
    *(v0 + 2336) = *(v0 + 256);
    v32 = *(v0 + 208);
    *(v0 + 2272) = *v20;
    *(v0 + 2288) = v32;
    sub_240619124(v0 + 2272, v0 + 2344);
    v33 = IdMSAccount.DeviceInfo.description.getter();
    v35 = v34;
    v36 = v93;
    *(v0 + 2232) = v92;
    *(v0 + 2248) = v36;
    *(v0 + 2264) = v94;
    v37 = v91;
    *(v0 + 2200) = v90;
    *(v0 + 2216) = v37;
    sub_240602EAC(v0 + 2200);
    v38 = sub_2405BBA7C(v33, v35, &v95);

    *(v28 + 4) = v38;
    v26 = log;
    _os_log_impl(&dword_240579000, log, v27, "Received new initial handshake request from device with info: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  sub_2406BD338(v0 + 184, v0 + 856);

  v39 = sub_240759AC4();
  v40 = sub_24075A5D4();

  sub_2406BD370(v0 + 184);
  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 2720);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v90 = v43;
    *v42 = 136315394;
    if (*(v41 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper))
    {

      sub_2407598E4();
      v44 = *(v0 + 2672);
      if (v44)
      {
        v45 = *(v0 + 2680);
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    *(v0 + 2656) = v44;
    *(v0 + 2664) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3A8, &qword_2407827E0);
    v59 = sub_24075A0E4();
    v61 = sub_2405BBA7C(v59, v60, &v90);

    *(v42 + 4) = v61;
    *(v42 + 12) = 2080;
    v62 = *(v0 + 328);
    *(v0 + 1488) = *(v0 + 312);
    *(v0 + 1504) = v62;
    *(v0 + 1520) = *(v0 + 344);
    v63 = *(v0 + 264);
    *(v0 + 1424) = *(v0 + 248);
    *(v0 + 1440) = v63;
    v64 = *(v0 + 296);
    *(v0 + 1456) = *(v0 + 280);
    *(v0 + 1472) = v64;
    v65 = *(v0 + 200);
    *(v0 + 1360) = *v1;
    *(v0 + 1376) = v65;
    v66 = *(v0 + 232);
    *(v0 + 1392) = *(v0 + 216);
    *(v0 + 1408) = v66;
    sub_2406BD338(v0 + 184, v0 + 1192);
    v67 = sub_24075A0E4();
    v69 = sub_2405BBA7C(v67, v68, &v90);

    *(v42 + 14) = v69;
    _os_log_impl(&dword_240579000, v39, v40, "Calling signInRequestHandler %s, with request: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v43, -1, -1);
    MEMORY[0x245CC76B0](v42, -1, -1);
  }

  else
  {
  }

  if (!*(*(v0 + 2720) + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_signInPreflightHelper) || (, sub_2407598E4(), v70 = *(v0 + 2640), *(v0 + 2752) = v70, *(v0 + 2760) = *(v0 + 2648), , !v70))
  {
    if (*(v0 + 186) <= 1u)
    {
      v73 = 1;
    }

    else
    {
      v73 = *(v0 + 186);
    }

    v74 = sub_240759AC4();
    v75 = sub_24075A5D4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 16777472;
      v76[4] = v73;
      _os_log_impl(&dword_240579000, v74, v75, "Accepting handshake with compatible version: %hhu", v76, 5u);
      MEMORY[0x245CC76B0](v76, -1, -1);
    }

    v77 = *(v0 + 1763);
    v78 = *(v0 + 2712);
    *loga = *(v0 + 2736);

    v79 = *v88;
    v80 = *(v0 + 2592);
    v92 = *(v0 + 2576);
    v93 = v80;
    v94 = *(v0 + 2608);
    LOBYTE(v95) = 0;
    v90 = *loga;
    v91 = v79;
    sub_240729278(&v90);
    v81 = v93;
    *(v0 + 1800) = v92;
    *(v0 + 1816) = v81;
    *(v0 + 1832) = v94;
    v82 = v91;
    *(v0 + 1768) = v90;
    *(v0 + 1784) = v82;
    sub_2405B8A50(v0 + 1768, &qword_27E4BE3A0, &unk_2407827D0);
    sub_240727514();
    static IdMSAccount.DeviceInfo.current.getter(&v90);
    *v78 = v77;
    *(v78 + 1) = 1;
    *(v78 + 8) = 0;
    *(v78 + 16) = 0;
    *(v78 + 24) = v73;
    *(v78 + 25) = 0;
    *(v0 + 1904) = 0;
    *(v0 + 1872) = 0u;
    *(v0 + 1888) = 0u;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    sub_2405B8A50(v0 + 1840, &qword_27E4B8B08, &qword_240768590);
    v83 = v93;
    *(v78 + 64) = v92;
    *(v78 + 80) = v83;
    *(v78 + 96) = v94;
    v84 = v91;
    *(v78 + 32) = v90;
    *(v78 + 48) = v84;
    goto LABEL_36;
  }

  *(v0 + 2688) = *(v0 + 344);
  v89 = (v70 + *v70);
  v71 = swift_task_alloc();
  *(v0 + 2768) = v71;
  *v71 = v0;
  v71[1] = sub_24072EDC0;

  return v89();
}

uint64_t sub_24072EDC0()
{
  v2 = *v1;
  *(*v1 + 2776) = v0;

  if (v0)
  {
    v3 = v2[340];
    sub_24058CA60(v2[344], v2[345]);
    sub_2405B8A50((v2 + 24), &qword_27E4B8B08, &qword_240768590);
    v4 = sub_24072F0E8;
  }

  else
  {
    v3 = v2[340];
    sub_24058CA60(v2[344], v2[345]);
    v4 = sub_24072EF0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24072EF0C(uint64_t a1)
{
  v22 = v1;
  if (*(v1 + 186) <= 1u)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 186);
  }

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 16777472;
    v5[4] = v2;
    _os_log_impl(&dword_240579000, v3, v4, "Accepting handshake with compatible version: %hhu", v5, 5u);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v6 = *(v1 + 1763);
  v7 = *(v1 + 2712);
  v16 = *(v1 + 2736);

  v8 = *(v1 + 2560);
  v9 = *(v1 + 2592);
  v19 = *(v1 + 2576);
  v20 = v9;
  v21 = *(v1 + 2608);
  v17 = v16;
  v18 = v8;
  sub_240729278(&v17);
  v10 = v20;
  *(v1 + 1800) = v19;
  *(v1 + 1816) = v10;
  *(v1 + 1832) = v21;
  v11 = v18;
  *(v1 + 1768) = v17;
  *(v1 + 1784) = v11;
  sub_2405B8A50(v1 + 1768, &qword_27E4BE3A0, &unk_2407827D0);
  sub_240727514();
  static IdMSAccount.DeviceInfo.current.getter(&v17);
  *v7 = v6;
  *(v7 + 1) = 1;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = v2;
  *(v7 + 25) = 0;
  *(v1 + 1904) = 0;
  *(v1 + 1888) = 0u;
  *(v1 + 1872) = 0u;
  *(v1 + 1856) = 0u;
  *(v1 + 1840) = 0u;
  sub_2405B8A50(v1 + 1840, &qword_27E4B8B08, &qword_240768590);
  v12 = v20;
  *(v7 + 64) = v19;
  *(v7 + 80) = v12;
  *(v7 + 96) = v21;
  v13 = v18;
  *(v7 + 32) = v17;
  *(v7 + 48) = v13;
  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_24072F0E8()
{
  v24 = v0;
  v1 = *(v0 + 2776);
  *(v0 + 1762) = 1;
  *&v22[0] = v1;
  HIBYTE(v23) = 1;
  v2 = v1;
  sub_240729278(v22);
  v3 = v22[0];
  *(v0 + 1712) = v22[1];
  v4 = v22[3];
  *(v0 + 1728) = v22[2];
  *(v0 + 1744) = v4;
  *(v0 + 1760) = v23;
  *(v0 + 1696) = v3;
  sub_2405B8A50(v0 + 1696, &qword_27E4BE3A0, &unk_2407827D0);
  v5 = v1;
  v6 = sub_240759AC4();
  v7 = sub_24075A5E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 2776);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v22[0] = v10;
    *v9 = 136315138;
    *(v0 + 2704) = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v12 = sub_24075A0E4();
    v14 = sub_2405BBA7C(v12, v13, v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v6, v7, "REJECTION: Incoming handshake request failed due to error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  v15 = *(v0 + 2776);
  v16 = *(v0 + 2712);
  swift_getErrorValue();
  v17 = sub_24075AE04();
  v19 = v18;

  *v16 = 0;
  *(v16 + 8) = v17;
  *(v16 + 16) = v19;
  *(v16 + 24) = 256;
  *(v0 + 2032) = 0u;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  *(v0 + 1984) = 0u;
  *(v0 + 2048) = 0;
  sub_2405B8A50(v0 + 1984, &qword_27E4B8B08, &qword_240768590);
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24072F360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405DA4B0;

  return sub_240723238(a1, a2, a3, v8);
}

uint64_t sub_24072F430(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405DA4B0;

  return sub_240722F0C(a1, a2, a3, v8);
}

void sub_24072F500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
  }
}

void sub_24072F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    sub_240604C2C(a5, a6, a7, a8);
  }
}

uint64_t sub_24072F5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24075A964();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24072F6E8, 0, 0);
}

uint64_t sub_24072F6E8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24075A974();
  v5 = sub_24072FC30(&qword_27E4BE3B8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24075ADA4();
  sub_24072FC30(&qword_27E4BE3C0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24075A984();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24072F878;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24072F878()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24072FA34, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24072FA34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24072FAC0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return sub_240724264(a1, a2, v2);
}

uint64_t sub_24072FB74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2405DA4B0;

  return sub_240724A84();
}

uint64_t sub_24072FC30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24072FC78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter__activeTransport;
  swift_beginAccess();
  sub_2405B044C(v0 + v2, v31, &qword_27E4BE2D8, &unk_240782408);
  if (v32)
  {
    sub_2405B044C(v31, &v26, &qword_27E4BE338, &qword_2407824A8);
    sub_2405B8A50(v31, &qword_27E4BE2D8, &unk_240782408);
    v3 = *(&v27 + 1);
    v4 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    (*(v4 + 40))(v3, v4);
    v5 = &v26;
    v6 = &qword_27E4BE338;
    v7 = &qword_2407824A8;
  }

  else
  {
    v6 = &qword_27E4BE2D8;
    v7 = &unk_240782408;
    v5 = v31;
  }

  sub_2405B8A50(v5, v6, v7);
  *&v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_beginAccess();
  sub_240730A18(&v26, v0 + v2, &qword_27E4BE2D8, &unk_240782408);
  swift_endAccess();
  v8 = *(v0 + 288);
  v20[2] = *(v0 + 272);
  v20[3] = v8;
  v21 = *(v0 + 304);
  v9 = *(v0 + 256);
  v20[0] = *(v0 + 240);
  v20[1] = v9;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  sub_2405B8A50(v20, &qword_27E4B8B08, &qword_240768590);
  sub_2405B8998();
  v10 = swift_allocError();
  *v11 = 1;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0;
  *&v19[8] = v23;
  *&v19[24] = v24;
  *(v11 + 48) = 6;
  v22 = 1;
  *v19 = v10;
  *&v19[40] = v25[0];
  *&v19[49] = *(v25 + 9);
  v19[65] = 1;
  sub_240729278(v19);
  v28 = *&v19[32];
  v29 = *&v19[48];
  v30 = *&v19[64];
  v26 = *v19;
  v27 = *&v19[16];
  sub_2405B8A50(&v26, &qword_27E4BE3A0, &unk_2407827D0);
  v12 = OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask;
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup13CommandRouter_keepAliveTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24075A4A4();
  }

  *(v0 + v12) = 0;

  swift_beginAccess();
  v13 = *(v0 + 224);
  if (v13)
  {
    v14 = *(v0 + 232);

    v13(v15);
    sub_24058CA60(v13, v14);
    v16 = *(v1 + 224);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v1 + 232);
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  return sub_24058CA60(v16, v17);
}

unint64_t sub_24072FF80()
{
  result = qword_27E4BE340;
  if (!qword_27E4BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE340);
  }

  return result;
}

uint64_t sub_24072FFD4(uint64_t a1)
{
  result = sub_24072FC30(&qword_27E4BE348, type metadata accessor for CommandRouter, &protocol conformance descriptor for CommandRouter);
  *(a1 + 16) = result;
  return result;
}

void sub_240730034(uint64_t a1)
{
  sub_24073068C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CommandRouter.register<A>(_:ownedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 432) + **(*v4 + 432));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CommandRouter.performHandshake(forKeepingAlive:)(uint64_t a1)
{
  v6 = (*(*v1 + 440) + **(*v1 + 440));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405CE450;

  return v6(a1);
}

uint64_t dispatch thunk of CommandRouter.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 512) + **(*v4 + 512));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3, a4);
}

void sub_24073068C(uint64_t a1)
{
  if (!qword_27E4BE360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BE2F0, &qword_240782418);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4BE360);
    }
  }
}

uint64_t sub_240730728(uint64_t a1)
{
  sub_240730780(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_240730780(uint64_t a1)
{
  if (!qword_27E4BE378)
  {
    v2 = type metadata accessor for V1Command(255);
    v3 = sub_24072FC30(&qword_27E4BE380, type metadata accessor for V1Command, &protocol conformance descriptor for V1Command);
    v5 = type metadata accessor for Message(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27E4BE378);
    }
  }
}

void sub_240730814(uint64_t a1)
{
  sub_240730894();
  if (v1 <= 0x3F)
  {
    type metadata accessor for V1Command(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_240730894()
{
  if (!qword_27E4BE398)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E4BE398);
    }
  }
}

unint64_t sub_2407308F4()
{
  result = qword_27E4BE3B0;
  if (!qword_27E4BE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE3B0);
  }

  return result;
}

uint64_t sub_240730948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2407309B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240730A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_240730A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2407276D8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_240730B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_240727350(a1, v4, v1 + 24);
}

unint64_t sub_240730C24()
{
  result = qword_27E4B63F0;
  if (!qword_27E4B63F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B63F0);
  }

  return result;
}

uint64_t sub_240730C70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *SignInPreflightHelper.signInRequestHandler.getter()
{
  sub_2407598E4();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return &unk_240782898;
}

uint64_t sub_240730D34(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2405CE450;

  return v7(v4);
}

uint64_t sub_240730E28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    v6 = &unk_240782930;
    *(v5 + 16) = &unk_240782930;
    *(v5 + 24) = v4;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_24057B5BC(v2, v3);

  sub_24057B5BC(v6, v4);
  sub_2407598F4();
  sub_24058CA60(v6, v4);
}

uint64_t sub_240730F20(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24072334C;

  return v5();
}

uint64_t sub_240731018(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_240730F20(a1, v4);
}

uint64_t SignInPreflightHelper.signInRequestHandler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_24057B5BC(a1, a2);
  sub_2407598F4();
  return sub_24058CA60(a1, a2);
}

uint64_t sub_24073115C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_240730D34(a1, a2, v6);
}

void (*SignInPreflightHelper.signInRequestHandler.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = sub_2407598D4();
  v3[7] = v4;
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = &unk_2407828C0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v3[4] = v8;
  v3[5] = v7;
  sub_24057B5BC(v5, v6);
  return sub_2407312E8;
}

void sub_2407312E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v4 = v2[5];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = &unk_2407828B0;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v11 = v2[6];
    v10 = v2[7];
    v12 = *v10;
    v13 = v10[1];
    *v10 = v6;
    v10[1] = v5;
    sub_24057B5BC(v3, v4);
    sub_24058CA60(v12, v13);
    sub_24058CA60(v2[4], v2[5]);
    v11(v2, 0);
  }

  else
  {
    if (v3)
    {
      v7 = v2[5];
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      v9 = &unk_2407828B8;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v15 = v2[6];
    v14 = v2[7];
    v17 = *v14;
    v16 = v14[1];
    *v14 = v9;
    v14[1] = v8;
    sub_24058CA60(v17, v16);
    v15(v2, 0);
  }

  free(v2);
}

uint64_t sub_24073141C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return sub_240730D34(a1, a2, v6);
}

uint64_t SignInPreflightHelper.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE3E0, &qword_2407828C8);
  swift_allocObject();
  result = sub_2407598C4();
  *a1 = result;
  return result;
}

uint64_t SignInPreflightHelper.onSignInRequest(doExtra:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_24057B5BC(a1, a2);
  sub_2407598F4();
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

void (*sub_2407316C4(uint64_t *a1, uint64_t *a2))(void *, void)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_2407598E4();
  if (v4[0] == -1)
  {
    v4[0] = 0;
    sub_2407598F4();
  }

  result = sub_2407598D4();
  if (*v3 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v3;
    result(v4, 0);
    sub_2407598E4();
    return v4[0];
  }

  return result;
}

uint64_t AutomaticSetupModelExchange.init(queue:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_240782940;
  a2[1] = 0;
  a2[2] = &unk_240782948;
  a2[3] = 0;
  a2[4] = &unk_240782950;
  a2[5] = 0;
  a2[6] = &unk_240782958;
  a2[7] = 0;
  a2[8] = &unk_240782960;
  a2[9] = 0;
  a2[10] = &unk_240782968;
  a2[11] = 0;
  a2[12] = &unk_240782970;
  a2[13] = 0;
  a2[14] = &unk_240782978;
  a2[15] = 0;
  a2[16] = &unk_240782980;
  a2[17] = 0;
  a2[18] = &unk_240782988;
  a2[19] = 0;
  a2[21] = &unk_240782990;
  a2[22] = 0;
  a2[23] = &unk_240782998;
  a2[24] = 0;
  a2[25] = &unk_2407829A0;
  a2[26] = 0;
  a2[27] = &unk_2407829A8;
  a2[28] = 0;
  a2[29] = &unk_2407829B0;
  a2[30] = 0;
  a2[31] = &unk_2407829B8;
  a2[32] = 0;
  a2[33] = &unk_2407829C0;
  a2[34] = 0;
  a2[35] = &unk_2407829C8;
  a2[36] = 0;
  a2[37] = &unk_2407829D0;
  a2[38] = 0;
  a2[39] = &unk_2407829D8;
  a2[40] = 0;
  a2[41] = &unk_2407829E0;
  a2[42] = 0;
  a2[43] = &unk_2407829E8;
  a2[44] = 0;
  a2[45] = &unk_2407829F0;
  a2[46] = 0;
  a2[47] = &unk_2407829F8;
  a2[48] = 0;
  a2[49] = &unk_240782A00;
  a2[50] = 0;
  a2[51] = &unk_240782A08;
  a2[52] = 0;
  a2[53] = &unk_240782A10;
  a2[54] = 0;
  a2[55] = &unk_240782A18;
  a2[56] = 0;
  a2[57] = &unk_240782A20;
  a2[58] = 0;
  a2[59] = &unk_240782A28;
  a2[60] = 0;
  a2[61] = &unk_240782A30;
  a2[62] = 0;
  a2[63] = &unk_240782A38;
  a2[64] = 0;
  a2[65] = &unk_240782A40;
  a2[66] = 0;
  a2[67] = &unk_240782A48;
  a2[68] = 0;
  a2[69] = &unk_240782A50;
  a2[70] = 0;
  a2[71] = &unk_240782A58;
  a2[72] = 0;
  a2[73] = &unk_240782A60;
  a2[74] = 0;
  a2[75] = &unk_240782A68;
  a2[76] = 0;
  a2[77] = &unk_240782A70;
  a2[78] = 0;
  a2[79] = &unk_240782A78;
  a2[80] = 0;
  a2[81] = &unk_240782A80;
  a2[82] = 0;
  a2[83] = &unk_240782A88;
  a2[84] = 0;
  a2[85] = &unk_240782A90;
  a2[86] = 0;
  a2[87] = &unk_240782A98;
  a2[88] = 0;
  a2[89] = &unk_240782AA0;
  a2[90] = 0;
  a2[91] = &unk_240782AA8;
  a2[92] = 0;
  a2[93] = &unk_240782AB0;
  a2[94] = 0;
  a2[95] = &unk_240782AB8;
  a2[96] = 0;
  a2[97] = &unk_240782AC0;
  a2[98] = 0;
  a2[99] = &unk_240782AC8;
  a2[100] = 0;
  a2[101] = &unk_240782AD0;
  a2[102] = 0;
  a2[103] = &unk_240782AD8;
  a2[104] = 0;
  a2[105] = &unk_240782AE0;
  a2[106] = 0;
  a2[107] = &unk_240782AE8;
  a2[108] = 0;
  a2[109] = &unk_240782AF0;
  a2[110] = 0;
  a2[111] = &unk_240782AF8;
  a2[112] = 0;
  a2[20] = result;
  return result;
}

uint64_t sub_240731C20(uint64_t a1, uint64_t a2)
{
  *(v3 + 12560) = v2;
  *(v3 + 12552) = a2;
  *(v3 + 12544) = a1;
  type metadata accessor for SignInModel(0);
  *(v3 + 12568) = swift_task_alloc();
  type metadata accessor for AuthenticationModel(0);
  v4 = swift_task_alloc();
  v5 = v2[1];
  *(v3 + 12584) = *v2;
  *(v3 + 12600) = v5;
  v6 = v2[3];
  *(v3 + 12616) = v2[2];
  *(v3 + 12632) = v6;
  v7 = v2[5];
  *(v3 + 12648) = v2[4];
  *(v3 + 12664) = v7;
  v8 = v2[7];
  *(v3 + 12680) = v2[6];
  *(v3 + 12696) = v8;
  v9 = v2[9];
  *(v3 + 12712) = v2[8];
  *(v3 + 12576) = v4;
  *(v3 + 12728) = v9;

  return MEMORY[0x2822009F8](sub_240731D48, 0, 0);
}

uint64_t sub_240731D48()
{
  v1 = *(v0 + 12552);
  v2 = *(v0 + 12544);
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CA0, &qword_240768DE0);
  sub_240745520(&v1[*(v4 + 28)], v2, type metadata accessor for SetupModel);
  v5 = *(v2 + 40);
  *(v0 + 12744) = v5;
  v6 = *(v2 + 48);
  *(v0 + 12752) = v6;
  v7 = *(v2 + 56);
  *(v0 + 12760) = v7;
  v8 = *(v2 + 64);
  *(v0 + 12768) = v8;
  v9 = *(v2 + 72);
  *(v0 + 12776) = v9;
  v10 = *(v2 + 80);
  *(v0 + 12784) = v10;
  v11 = *(v2 + 88);
  *(v0 + 9361) = v11;
  if (v11 > 252)
  {
    if (v11 == 253)
    {
      v54 = *(v0 + 12736);
      v55 = *(v0 + 12728);
      v56 = *(v0 + 12720);
      v57 = *(v0 + 12712);
      v58 = *(v0 + 12704);
      v59 = *(v0 + 12696);
      v60 = *(v0 + 12688);
      v61 = *(v0 + 12680);
      v62 = *(v0 + 12672);
      v63 = *(v0 + 12664);
      v64 = *(v0 + 12656);
      v65 = *(v0 + 12648);
      v66 = *(v0 + 12640);
      v67 = *(v0 + 12632);
      v68 = *(v0 + 12624);
      v69 = *(v0 + 12616);
      v70 = *(v0 + 12608);
      v71 = *(v0 + 12600);
      v72 = *(v0 + 12592);
      v73 = *(v0 + 12584);
      v74 = *(v0 + 12560);
      v33 = *(v0 + 12544);
      if (v3)
      {
        *(v0 + 5440) = v73;
        *(v0 + 5448) = v72;
        *(v0 + 5456) = v71;
        *(v0 + 5464) = v70;
        *(v0 + 5472) = v69;
        *(v0 + 5480) = v68;
        *(v0 + 5488) = v67;
        *(v0 + 5496) = v66;
        *(v0 + 5504) = v65;
        *(v0 + 5512) = v64;
        *(v0 + 5520) = v63;
        *(v0 + 5528) = v62;
        *(v0 + 5536) = v61;
        *(v0 + 5544) = v60;
        *(v0 + 5552) = v59;
        *(v0 + 5560) = v58;
        *(v0 + 5568) = v57;
        *(v0 + 5576) = v56;
        *(v0 + 5584) = v55;
        *(v0 + 5592) = v54;
        memcpy((v0 + 5600), (v74 + 160), 0x2E8uLL);
        v34 = *(type metadata accessor for SetupModel(0) + 36);
        *(v0 + 9364) = v34;
        v119 = (v67 + *v67);
        v75 = swift_task_alloc();
        *(v0 + 12816) = v75;
        *v75 = v0;
        v75[1] = sub_240733020;
        v36 = *(v0 + 12576);
        v37 = v0 + 5440;
        goto LABEL_15;
      }

      *(v0 + 4536) = v73;
      *(v0 + 4544) = v72;
      *(v0 + 4552) = v71;
      *(v0 + 4560) = v70;
      *(v0 + 4568) = v69;
      *(v0 + 4576) = v68;
      *(v0 + 4584) = v67;
      *(v0 + 4592) = v66;
      *(v0 + 4600) = v65;
      *(v0 + 4608) = v64;
      *(v0 + 4616) = v63;
      *(v0 + 4624) = v62;
      *(v0 + 4632) = v61;
      *(v0 + 4640) = v60;
      *(v0 + 4648) = v59;
      *(v0 + 4656) = v58;
      *(v0 + 4664) = v57;
      *(v0 + 4672) = v56;
      *(v0 + 4680) = v55;
      *(v0 + 4688) = v54;
      memcpy((v0 + 4696), (v74 + 160), 0x2E8uLL);
      v106 = *(type metadata accessor for SetupModel(0) + 36);
      v124 = (v69 + *v69);
      v107 = swift_task_alloc();
      *(v0 + 12824) = v107;
      *v107 = v0;
      v107[1] = sub_2407331B0;
      v94 = v0 + 4536;
      v95 = v33 + v106;
      goto LABEL_36;
    }

    if (v11 == 254)
    {
      v99 = *(v0 + 12560);
      v100 = *(v0 + 12544);
      if (v3)
      {
        v125 = *(v0 + 12600);
        *(v0 + 7248) = *(v0 + 12584);
        v101 = *(v0 + 12632);
        *(v0 + 7280) = *(v0 + 12616);
        *(v0 + 7296) = v101;
        v102 = *(v0 + 12664);
        *(v0 + 7312) = *(v0 + 12648);
        *(v0 + 7328) = v102;
        v103 = *(v0 + 12696);
        *(v0 + 7344) = *(v0 + 12680);
        *(v0 + 7360) = v103;
        v104 = *(v0 + 12728);
        *(v0 + 7376) = *(v0 + 12712);
        *(v0 + 7264) = v125;
        *(v0 + 7392) = v104;
        memcpy((v0 + 7408), (v99 + 160), 0x2E8uLL);
        memcpy((v0 + 11240), (v100 + 96), 0x131uLL);
        memcpy((v0 + 11864), (v100 + 96), 0x131uLL);
        sub_240684CD4(v0 + 11240, v0 + 12176);
        v119 = (v125 + *v125);
        v105 = swift_task_alloc();
        *(v0 + 12800) = v105;
        *v105 = v0;
        v105[1] = sub_240732CE8;
        v36 = v0 + 11552;
        v37 = v0 + 7248;
        v76 = v0 + 11864;
        goto LABEL_26;
      }

      v116 = *(v0 + 12736);
      v117 = *(v0 + 12600);
      v127 = *(v0 + 12584);
      *(v0 + 6344) = v127;
      *(v0 + 6360) = v117;
      *(v0 + 6368) = *(v0 + 12608);
      *(v0 + 6384) = *(v0 + 12624);
      *(v0 + 6400) = *(v0 + 12640);
      *(v0 + 6416) = *(v0 + 12656);
      *(v0 + 6432) = *(v0 + 12672);
      *(v0 + 6448) = *(v0 + 12688);
      *(v0 + 6464) = *(v0 + 12704);
      *(v0 + 6480) = *(v0 + 12720);
      *(v0 + 6496) = v116;
      memcpy((v0 + 6504), (v99 + 160), 0x2E8uLL);
      memcpy((v0 + 9368), (v100 + 96), 0x131uLL);
      memcpy((v0 + 9680), (v100 + 96), 0x131uLL);
      sub_240684CD4(v0 + 9368, v0 + 9992);
      v124 = (v127 + *v127);
      v118 = swift_task_alloc();
      *(v0 + 12808) = v118;
      *v118 = v0;
      v118[1] = sub_240732EC8;
      v95 = v0 + 9680;
      v94 = v0 + 6344;
      goto LABEL_36;
    }

    if (v3)
    {
      goto LABEL_21;
    }

    v38 = *(v0 + 12736);
    v39 = *(v0 + 12696);
    v40 = *(v0 + 12672);
    v41 = *(v0 + 12560);
    *(v0 + 8152) = *(v0 + 12584);
    *(v0 + 8160) = *(v0 + 12592);
    *(v0 + 8176) = *(v0 + 12608);
    *(v0 + 0x2000) = *(v0 + 12624);
    *(v0 + 8208) = *(v0 + 12640);
    *(v0 + 8224) = *(v0 + 12656);
    *(v0 + 8240) = v40;
    v120 = *(v0 + 12680);
    *(v0 + 8248) = v120;
    *(v0 + 8264) = v39;
    *(v0 + 8272) = *(v0 + 12704);
    *(v0 + 8288) = *(v0 + 12720);
    *(v0 + 8304) = v38;
    memcpy((v0 + 8312), (v41 + 160), 0x2E8uLL);
    v121 = (v120 + *v120);
    v42 = swift_task_alloc();
    *(v0 + 12792) = v42;
    *v42 = v0;
    v42[1] = sub_240732BBC;
    v43 = v0 + 8152;
  }

  else
  {
    switch(v11)
    {
      case 250:
        if (v3)
        {
LABEL_21:

          v97 = *(v0 + 8);

          return v97();
        }

        v44 = *(v0 + 12600);
        *(v0 + 16) = *(v0 + 12584);
        v45 = *(v0 + 12616);
        v46 = *(v0 + 12632);
        *(v0 + 32) = v44;
        *(v0 + 48) = v45;
        v47 = *(v0 + 12648);
        v48 = *(v0 + 12664);
        *(v0 + 64) = v46;
        *(v0 + 80) = v47;
        v49 = *(v0 + 12680);
        v50 = *(v0 + 12696);
        *(v0 + 96) = v48;
        *(v0 + 112) = v49;
        v51 = *(v0 + 12712);
        v122 = *(v0 + 12728);
        *(v0 + 128) = v50;
        *(v0 + 144) = v51;
        v52 = *(v0 + 12560);
        *(v0 + 160) = v122;
        memcpy((v0 + 176), (v52 + 160), 0x2E8uLL);
        v121 = (v122 + *v122);
        v53 = swift_task_alloc();
        *(v0 + 12864) = v53;
        *v53 = v0;
        v53[1] = sub_2407338F0;
        v43 = v0 + 16;
        break;
      case 251:
        if (v3)
        {
          LOBYTE(v11) = -5;
LABEL_20:
          v96 = *(v0 + 12544);
          sub_240720A38(v5, v6, v7, v8, v9, v10, v11);
          *(v96 + 72) = 0u;
          *(v96 + 56) = 0u;
          *(v96 + 40) = 0u;
          *(v96 + 88) = -6;
          goto LABEL_21;
        }

        v110 = *(v0 + 12600);
        *(v0 + 1824) = *(v0 + 12584);
        *(v0 + 1840) = v110;
        v111 = *(v0 + 12632);
        *(v0 + 1856) = *(v0 + 12616);
        *(v0 + 1872) = v111;
        v112 = *(v0 + 12664);
        *(v0 + 1888) = *(v0 + 12648);
        *(v0 + 1904) = v112;
        v126 = *(v0 + 12696);
        *(v0 + 1920) = *(v0 + 12680);
        v113 = *(v0 + 12728);
        *(v0 + 1952) = *(v0 + 12712);
        v114 = *(v0 + 12560);
        *(v0 + 1936) = v126;
        *(v0 + 1968) = v113;
        memcpy((v0 + 1984), (v114 + 160), 0x2E8uLL);
        v121 = (v126 + *v126);
        v115 = swift_task_alloc();
        *(v0 + 12848) = v115;
        *v115 = v0;
        v115[1] = sub_240733598;
        v43 = v0 + 1824;
        break;
      case 252:
        v12 = *(v0 + 12736);
        v13 = *(v0 + 12728);
        v14 = *(v0 + 12720);
        v15 = *(v0 + 12712);
        v16 = *(v0 + 12704);
        v17 = *(v0 + 12696);
        v18 = *(v0 + 12688);
        v19 = *(v0 + 12680);
        v20 = *(v0 + 12672);
        v21 = *(v0 + 12664);
        v22 = *(v0 + 12656);
        v23 = *(v0 + 12648);
        v24 = *(v0 + 12640);
        v25 = *(v0 + 12632);
        v26 = *(v0 + 12624);
        v27 = *(v0 + 12616);
        v28 = *(v0 + 12608);
        v29 = *(v0 + 12600);
        v30 = *(v0 + 12592);
        v31 = *(v0 + 12584);
        v32 = *(v0 + 12560);
        v33 = *(v0 + 12544);
        if (v3)
        {
          *(v0 + 3632) = v31;
          *(v0 + 3640) = v30;
          *(v0 + 3648) = v29;
          *(v0 + 3656) = v28;
          *(v0 + 3664) = v27;
          *(v0 + 3672) = v26;
          *(v0 + 3680) = v25;
          *(v0 + 3688) = v24;
          *(v0 + 3696) = v23;
          *(v0 + 3704) = v22;
          *(v0 + 3712) = v21;
          *(v0 + 3720) = v20;
          *(v0 + 3728) = v19;
          *(v0 + 3736) = v18;
          *(v0 + 3744) = v17;
          *(v0 + 3752) = v16;
          *(v0 + 3760) = v15;
          *(v0 + 3768) = v14;
          *(v0 + 3776) = v13;
          *(v0 + 3784) = v12;
          memcpy((v0 + 3792), (v32 + 160), 0x2E8uLL);
          v34 = *(type metadata accessor for SetupModel(0) + 40);
          *(v0 + 9676) = v34;
          v119 = (v21 + *v21);
          v35 = swift_task_alloc();
          *(v0 + 12832) = v35;
          *v35 = v0;
          v35[1] = sub_2407332DC;
          v36 = *(v0 + 12568);
          v37 = v0 + 3632;
LABEL_15:
          v76 = v33 + v34;
LABEL_26:

          return v119(v36, v37, v76);
        }

        *(v0 + 2728) = v31;
        *(v0 + 2736) = v30;
        *(v0 + 2744) = v29;
        *(v0 + 2752) = v28;
        *(v0 + 2760) = v27;
        *(v0 + 2768) = v26;
        *(v0 + 2776) = v25;
        *(v0 + 2784) = v24;
        *(v0 + 2792) = v23;
        *(v0 + 2800) = v22;
        *(v0 + 2808) = v21;
        *(v0 + 2816) = v20;
        *(v0 + 2824) = v19;
        *(v0 + 2832) = v18;
        *(v0 + 2840) = v17;
        *(v0 + 2848) = v16;
        *(v0 + 2856) = v15;
        *(v0 + 2864) = v14;
        *(v0 + 2872) = v13;
        *(v0 + 2880) = v12;
        memcpy((v0 + 2888), (v32 + 160), 0x2E8uLL);
        v108 = *(type metadata accessor for SetupModel(0) + 40);
        v124 = (v23 + *v23);
        v109 = swift_task_alloc();
        *(v0 + 12840) = v109;
        *v109 = v0;
        v109[1] = sub_24073346C;
        v94 = v0 + 2728;
        v95 = v33 + v108;
        goto LABEL_36;
      default:
        if ((v3 & 1) == 0)
        {
          v77 = *(v0 + 12736);
          v78 = *(v0 + 12728);
          v79 = *(v0 + 12704);
          v80 = *(v0 + 12560);
          *(v0 + 920) = *(v0 + 12584);
          v81 = *(v0 + 12608);
          *(v0 + 928) = *(v0 + 12592);
          *(v0 + 944) = v81;
          v82 = *(v0 + 12640);
          *(v0 + 960) = *(v0 + 12624);
          *(v0 + 976) = v82;
          v83 = *(v0 + 12672);
          *(v0 + 992) = *(v0 + 12656);
          *(v0 + 1008) = v83;
          *(v0 + 1024) = *(v0 + 12688);
          *(v0 + 1040) = v79;
          v123 = *(v0 + 12712);
          *(v0 + 1048) = v123;
          *(v0 + 1064) = v78;
          *(v0 + 1072) = v77;
          v84 = v5;
          v85 = v6;
          v86 = v7;
          v87 = v8;
          v88 = v9;
          v89 = v10;
          v90 = v11;
          memcpy((v0 + 1080), (v80 + 160), 0x2E8uLL);
          *&v91 = v84;
          *(&v91 + 1) = v85;
          *&v92 = v86;
          *(&v92 + 1) = v87;
          *(v0 + 12488) = v91;
          *(v0 + 12504) = v92;
          *(v0 + 12520) = v88;
          *(v0 + 12528) = v89;
          *(v0 + 12536) = v90;
          sub_2405AF8D8(v84, v85, v86, v87, v88, v89, v90);
          v124 = (v123 + *v123);
          v93 = swift_task_alloc();
          *(v0 + 12856) = v93;
          *v93 = v0;
          v93[1] = sub_240733730;
          v94 = v0 + 920;
          v95 = v0 + 12488;
LABEL_36:

          return v124(v94, v95);
        }

        goto LABEL_20;
    }
  }

  return v121(v43);
}

uint64_t sub_240732BBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240732CE8()
{
  v1 = *v0;

  memcpy((v1 + 10928), (v1 + 11864), 0x131uLL);
  sub_240684D0C(v1 + 10928);

  return MEMORY[0x2822009F8](sub_240732E0C, 0, 0);
}

uint64_t sub_240732E0C()
{
  v1 = v0[1568];
  memcpy(v0 + 1327, v0 + 1444, 0x131uLL);
  memcpy(v0 + 1288, (v1 + 96), 0x131uLL);
  sub_240684D0C((v0 + 1288));
  memcpy((v1 + 96), v0 + 1327, 0x131uLL);

  v2 = v0[1];

  return v2();
}

uint64_t sub_240732EC8()
{
  v1 = *v0;
  v2 = *v0;

  memcpy((v1 + 9056), (v1 + 9680), 0x131uLL);
  sub_240684D0C(v1 + 9056);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_240733020()
{

  return MEMORY[0x2822009F8](sub_24073311C, 0, 0);
}

uint64_t sub_24073311C()
{
  sub_2407454B8(*(v0 + 12576), *(v0 + 12544) + *(v0 + 9364), type metadata accessor for AuthenticationModel);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407331B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2407332DC()
{

  return MEMORY[0x2822009F8](sub_2407333D8, 0, 0);
}

uint64_t sub_2407333D8()
{
  sub_2407454B8(*(v0 + 12568), *(v0 + 12544) + *(v0 + 9676), type metadata accessor for SignInModel);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24073346C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240733598()
{

  return MEMORY[0x2822009F8](sub_240733694, 0, 0);
}

uint64_t sub_240733694()
{
  v1 = *(v0 + 12544);
  sub_240720A38(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 88) = -6;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240733730()
{

  return MEMORY[0x2822009F8](sub_24073382C, 0, 0);
}

uint64_t sub_24073382C()
{
  v1 = *(v0 + 12544);
  sub_240720A38(*(v0 + 12744), *(v0 + 12752), *(v0 + 12760), *(v0 + 12768), *(v0 + 12776), *(v0 + 12784), *(v0 + 9361));
  v2 = *(v0 + 12544);
  sub_240720A38(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 88) = -6;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2407338F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240733A5C(void *__src, const void *a2)
{
  v2[351] = a2;
  memcpy(v2 + 2, __src, 0x388uLL);
  memcpy(v2 + 234, a2, 0x131uLL);

  return MEMORY[0x2822009F8](sub_240733AE4, 0, 0);
}

uint64_t sub_240733AE4()
{
  v4 = v0;
  memcpy(&__src[7], *(v0 + 2808), 0x131uLL);
  *(v0 + 1240) = 0;
  memcpy((v0 + 1241), __src, 0x138uLL);
  sub_240684CD4(v0 + 1872, v0 + 2496);
  v1 = swift_task_alloc();
  *(v0 + 2816) = v1;
  *v1 = v0;
  v1[1] = sub_240733BBC;

  return static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(v0 + 2184, v0 + 16, (v0 + 1240));
}

uint64_t sub_240733BBC()
{
  v1 = *v0;

  memcpy((v1 + 920), (v1 + 1240), 0x139uLL);
  sub_2405B8A50(v1 + 920, &qword_27E4BE478, &qword_240783178);
  memcpy((v1 + 1560), (v1 + 2184), 0x131uLL);
  sub_240684D0C(v1 + 1560);

  return MEMORY[0x2822009F8](sub_24057D000, 0, 0);
}

uint64_t static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 1912) = a1;
  *(v3 + 1920) = *(a2 + 168);
  *(v3 + 1936) = *(a2 + 184);
  *(v3 + 1952) = *(a2 + 200);
  *(v3 + 1968) = *(a2 + 216);
  *(v3 + 1984) = *(a2 + 232);
  *(v3 + 2000) = *(a2 + 248);
  *(v3 + 2016) = *(a2 + 264);
  *(v3 + 1178) = *a3;
  memcpy((v3 + 16), a3 + 8, 0x131uLL);
  sub_240684CD4(v3 + 16, v3 + 328);

  return MEMORY[0x2822009F8](sub_240733DBC, 0, 0);
}

uint64_t sub_240733DBC()
{
  v1 = *(v0 + 16);
  *(v0 + 1200) = *(v0 + 32);
  v2 = *(v0 + 64);
  *(v0 + 1216) = *(v0 + 48);
  *(v0 + 1232) = v2;
  *(v0 + 1248) = *(v0 + 80);
  *(v0 + 1184) = v1;
  v3 = *(v0 + 88);
  *(v0 + 873) = *(v0 + 89);
  *(v0 + 876) = *(v0 + 92);
  v4 = *(v0 + 96);
  *(v0 + 1179) = v4;
  *(v0 + 2168) = v4;
  v5 = *(v0 + 97);
  *(v0 + 1180) = v5;
  v6 = *(v0 + 98);
  *(v0 + 1181) = v6;
  *(v0 + 1026) = v6;
  *(v0 + 1027) = *(v0 + 99);
  *(v0 + 1031) = *(v0 + 103);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  *(v0 + 2032) = v7;
  *(v0 + 2040) = v8;
  v9 = *(v0 + 120);
  *(v0 + 2048) = v9;
  v10 = *(v0 + 128);
  *(v0 + 1182) = v10;
  v11 = *(v0 + 129);
  v12 = *(v0 + 145);
  v13 = *(v0 + 161);
  *(v0 + 1304) = *(v0 + 177);
  *(v0 + 1272) = v12;
  *(v0 + 1288) = v13;
  *(v0 + 1256) = v11;
  *(v0 + 324) = *(v0 + 188);
  *(v0 + 321) = *(v0 + 185);
  v14 = *(v0 + 192);
  *(v0 + 2056) = v14;
  v15 = *(v0 + 200);
  *(v0 + 1183) = v15;
  *(v0 + 2144) = v15;
  *(v0 + 633) = *(v0 + 201);
  *(v0 + 636) = *(v0 + 204);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  *(v0 + 2064) = v17;
  *(v0 + 2072) = v16;
  v18 = *(v0 + 224);
  *(v0 + 2080) = v18;
  v19 = *(v0 + 232);
  *(v0 + 1361) = v19;
  *(v0 + 2152) = v19;
  v20 = *(v0 + 233);
  *(v0 + 1362) = v20;
  *(v0 + 2160) = v20;
  v21 = *(v0 + 250);
  *(v0 + 786) = *(v0 + 234);
  *(v0 + 802) = v21;
  v22 = *(v0 + 266);
  v23 = *(v0 + 282);
  v24 = *(v0 + 298);
  *(v0 + 865) = *(v0 + 313);
  *(v0 + 834) = v23;
  *(v0 + 850) = v24;
  *(v0 + 818) = v22;
  v25 = *(v0 + 136);
  v26 = *(v0 + 152);
  v27 = *(v0 + 168);
  *(v0 + 1360) = *(v0 + 184);
  *(v0 + 1344) = v27;
  *(v0 + 1328) = v26;
  *(v0 + 1312) = v25;
  if (v3 <= 1)
  {
    if (v3)
    {
      v33 = *(v0 + 1920);
      v34 = *(v0 + 152);
      *(v0 + 1368) = *(v0 + 136);
      *(v0 + 1384) = v34;
      *(v0 + 1400) = *(v0 + 168);
      *(v0 + 1416) = *(v0 + 184);
      sub_2406771A8(v0 + 1312, v0 + 1424);
      v38 = (v33 + *v33);
      v35 = swift_task_alloc();
      *(v0 + 2096) = v35;
      *v35 = v0;
      v35[1] = sub_240734504;
      v30 = v0 + 1368;
    }

    else
    {
      v28 = *(v0 + 1952);
      *(v0 + 1792) = v4 & 1;
      *(v0 + 1793) = v5;
      *(v0 + 1794) = v6 & 1;
      *(v0 + 1800) = v7;
      *(v0 + 1808) = v8;
      *(v0 + 1816) = v9;
      *(v0 + 1824) = v10;
      sub_2406771E0(v7, v8, v9, v10);
      v38 = (v28 + *v28);
      v29 = swift_task_alloc();
      *(v0 + 2112) = v29;
      *v29 = v0;
      v29[1] = sub_240734D58;
      v30 = v0 + 1792;
    }

LABEL_10:

    return v38(v30);
  }

  if (v3 != 2)
  {
    v36 = *(v0 + 2000);
    *(v0 + 1648) = v14;
    *(v0 + 1656) = v15 & 1;
    *(v0 + 1664) = v17;
    *(v0 + 1672) = v16;
    *(v0 + 1680) = v18;
    *(v0 + 1688) = v19 & 1;
    *(v0 + 1689) = v20 & 1;

    sub_24067715C(v17, v16, v18);
    v38 = (v36 + *v36);
    v37 = swift_task_alloc();
    *(v0 + 2128) = v37;
    *v37 = v0;
    v37[1] = sub_24073561C;
    v30 = v0 + 1648;
    goto LABEL_10;
  }

  v39 = (*(v0 + 1984) + **(v0 + 1984));
  v31 = swift_task_alloc();
  *(v0 + 2088) = v31;
  *v31 = v0;
  v31[1] = sub_2407342D0;

  return v39();
}

uint64_t sub_2407342D0()
{

  return MEMORY[0x2822009F8](sub_2407343CC, 0, 0);
}

uint64_t sub_2407343CC()
{
  v1 = *(v0 + 1361);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 1183);
  v4 = *(v0 + 2056);
  v5 = *(v0 + 1182);
  v6 = *(v0 + 2048);
  v7 = *(v0 + 1181);
  v8 = *(v0 + 1179);
  v9 = *(v0 + 1912);
  v10 = *(v0 + 2064);
  v11 = *(v0 + 2032);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1216);
  v14 = *(v0 + 1232);
  *(v9 + 64) = *(v0 + 1248);
  *(v9 + 32) = v13;
  *(v9 + 48) = v14;
  *(v9 + 16) = v12;
  *v9 = *(v0 + 1184);
  *(v9 + 72) = 2;
  v15 = *(v0 + 873);
  *(v9 + 76) = *(v0 + 876);
  *(v9 + 73) = v15;
  *(v9 + 80) = v8;
  *(v9 + 82) = v7;
  v16 = *(v0 + 1027);
  *(v9 + 87) = *(v0 + 1031);
  *(v9 + 83) = v16;
  *(v9 + 88) = v11;
  *(v9 + 104) = v6;
  *(v9 + 112) = v5;
  v17 = *(v0 + 1256);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1288);
  *(v9 + 161) = *(v0 + 1304);
  *(v9 + 145) = v19;
  *(v9 + 129) = v18;
  *(v9 + 113) = v17;
  v20 = *(v0 + 321);
  *(v9 + 172) = *(v0 + 324);
  *(v9 + 169) = v20;
  *(v9 + 176) = v4;
  *(v9 + 184) = v3;
  v21 = *(v0 + 633);
  *(v9 + 188) = *(v0 + 636);
  *(v9 + 185) = v21;
  *(v9 + 192) = v10;
  *(v9 + 208) = v2;
  *(v9 + 216) = v1;
  v22 = *(v0 + 786);
  *(v9 + 234) = *(v0 + 802);
  *(v9 + 218) = v22;
  v23 = *(v0 + 818);
  v24 = *(v0 + 834);
  v25 = *(v0 + 850);
  *(v9 + 297) = *(v0 + 865);
  *(v9 + 266) = v24;
  *(v9 + 282) = v25;
  *(v9 + 250) = v23;
  return (*(v0 + 8))();
}

uint64_t sub_240734504()
{

  return MEMORY[0x2822009F8](sub_240734600, 0, 0);
}

uint64_t sub_240734600()
{
  v1 = (v0 + 1312);
  if (*(v0 + 1178) == 1)
  {
    v2 = *(v0 + 1936);
    v3 = *(v0 + 1328);
    *(v0 + 1592) = *v1;
    *(v0 + 1608) = v3;
    *(v0 + 1624) = *(v0 + 1344);
    *(v0 + 1640) = *(v0 + 1360);
    v30 = (v2 + *v2);
    v4 = swift_task_alloc();
    *(v0 + 2104) = v4;
    *v4 = v0;
    v4[1] = sub_24073489C;

    return v30(v0 + 1536, v0 + 1592);
  }

  else
  {
    sub_240686258(v1);
    v6 = *(v0 + 1361);
    v7 = *(v0 + 2080);
    v8 = *(v0 + 1183);
    v9 = *(v0 + 2056);
    v10 = *(v0 + 1182);
    v11 = *(v0 + 2048);
    v12 = *(v0 + 1181);
    v13 = *(v0 + 1179);
    v14 = *(v0 + 1912);
    v15 = *(v0 + 2064);
    v16 = *(v0 + 2032);
    *v14 = *(v0 + 1184);
    v17 = *(v0 + 1248);
    v18 = *(v0 + 1232);
    v19 = *(v0 + 1216);
    *(v14 + 16) = *(v0 + 1200);
    *(v14 + 32) = v19;
    *(v14 + 48) = v18;
    *(v14 + 64) = v17;
    *(v14 + 72) = 1;
    LODWORD(v17) = *(v0 + 876);
    *(v14 + 73) = *(v0 + 873);
    *(v14 + 76) = v17;
    *(v14 + 80) = v13;
    *(v14 + 82) = v12;
    v20 = *(v0 + 1027);
    *(v14 + 87) = *(v0 + 1031);
    *(v14 + 83) = v20;
    *(v14 + 88) = v16;
    *(v14 + 104) = v11;
    *(v14 + 112) = v10;
    v22 = *(v0 + 1272);
    v21 = *(v0 + 1288);
    v23 = *(v0 + 1304);
    *(v14 + 113) = *(v0 + 1256);
    *(v14 + 161) = v23;
    *(v14 + 145) = v21;
    *(v14 + 129) = v22;
    LODWORD(v23) = *(v0 + 324);
    *(v14 + 169) = *(v0 + 321);
    *(v14 + 172) = v23;
    *(v14 + 176) = v9;
    *(v14 + 184) = v8;
    v24 = *(v0 + 633);
    *(v14 + 188) = *(v0 + 636);
    *(v14 + 185) = v24;
    *(v14 + 192) = v15;
    *(v14 + 208) = v7;
    *(v14 + 216) = v6;
    v25 = *(v0 + 802);
    *(v14 + 218) = *(v0 + 786);
    *(v14 + 234) = v25;
    v27 = *(v0 + 834);
    v26 = *(v0 + 850);
    v28 = *(v0 + 865);
    *(v14 + 250) = *(v0 + 818);
    *(v14 + 297) = v28;
    *(v14 + 266) = v27;
    *(v14 + 282) = v26;
    v29 = *(v0 + 8);

    return v29();
  }
}