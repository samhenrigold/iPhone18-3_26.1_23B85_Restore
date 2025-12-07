uint64_t sub_1A97B2B38(uint64_t a1)
{
  v2 = sub_1A97B4000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B2B74(uint64_t a1)
{
  v2 = sub_1A97B4000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97B2BB0(uint64_t a1)
{
  v2 = sub_1A97B4054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B2BEC(uint64_t a1)
{
  v2 = sub_1A97B4054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97B2C28(uint64_t a1)
{
  v2 = sub_1A97B40A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B2C64(uint64_t a1)
{
  v2 = sub_1A97B40A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ContactInfo.Handle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13B0, &qword_1A9991C38);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13B8, &qword_1A9991C40);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13C0, &qword_1A9991C48);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97B4000();
  sub_1A9977AA0();
  if (v13)
  {
    v26 = 1;
    sub_1A97B4054();
    v14 = v20;
    sub_1A9977640();
    v15 = v22;
    sub_1A9977690();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1A97B40A8();
    sub_1A9977640();
    v16 = v19;
    sub_1A9977690();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t SFAirDrop.ContactInfo.Handle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13E0, &qword_1A9991C50);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13E8, &qword_1A9991C58);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13F0, &qword_1A9991C60);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1A97B4000();
  v13 = v34;
  sub_1A9977A70();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_1A9977620();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_1A97B2970();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_1A9977300();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v26 = &type metadata for SFAirDrop.ContactInfo.Handle;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_1A97B4054();
        sub_1A9977530();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_1A99775A0();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_1A97B40A8();
        v28 = v7;
        sub_1A9977530();
        v19 = v33;
        v18 = v34;
        v21 = sub_1A99775A0();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_1A97B34B4()
{
  v1 = *v0;
  sub_1A97B2A2C(*v0, v0[1]);
  return v1;
}

uint64_t SFAirDrop.ContactInfo.givenName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SFAirDrop.ContactInfo.fullName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SFAirDrop.ContactInfo.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1A97B2A2C(v2, v3);
}

uint64_t SFAirDrop.ContactInfo.vcard.getter()
{
  v1 = *(v0 + 56);
  sub_1A97B40FC(v1, *(v0 + 64));
  return v1;
}

__n128 SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v8 = a5[1].n128_u8[0];
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u64[0] = a3;
  a8[1].n128_u64[1] = a4;
  result = *a5;
  a8[2] = *a5;
  a8[3].n128_u8[0] = v8;
  a8[3].n128_u64[1] = a6;
  a8[4].n128_u64[0] = a7;
  return result;
}

uint64_t SFAirDrop.ContactInfo.description.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  if (v0[1])
  {
    v3 = *v0;
    v4 = v0[1];
  }

  else
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v3, v4);

  MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return 0x49746361746E6F43;
}

uint64_t sub_1A97B36AC()
{
  v1 = 0x6D614E6E65766967;
  v2 = 0x656C646E6168;
  if (*v0 != 2)
  {
    v2 = 0x6472616376;
  }

  if (*v0)
  {
    v1 = 0x656D614E6C6C7566;
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

uint64_t sub_1A97B3724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97B4D94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97B374C(uint64_t a1)
{
  v2 = sub_1A97B42C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B3788(uint64_t a1)
{
  v2 = sub_1A97B42C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ContactInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13F8, &qword_1A9991C68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v7;
  v8 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = v8;
  v26 = *(v1 + 48);
  v9 = *(v1 + 56);
  v16 = *(v1 + 64);
  v17 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97B42C0();
  sub_1A9977AA0();
  LOBYTE(v23) = 0;
  v10 = v22;
  sub_1A9977650();
  if (!v10)
  {
    v11 = v26;
    v13 = v18;
    v12 = v19;
    v14 = v17;
    LOBYTE(v23) = 1;
    sub_1A9977690();
    v23 = v12;
    v24 = v13;
    v25 = v11;
    v27 = 2;
    sub_1A97B2A2C(v12, v13);
    sub_1A97B4314();
    sub_1A99776E0();
    sub_1A97B4368(v23, v24);
    v23 = v14;
    v24 = v16;
    v27 = 3;
    sub_1A97B40FC(v14, v16);
    sub_1A97B4370();
    sub_1A99776E0();
    sub_1A97B43C4(v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDrop.ContactInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1410, &qword_1A9991C70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97B42C0();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v34) = 0;
  v9 = sub_1A9977550();
  v11 = v10;
  v27 = v9;
  LOBYTE(v34) = 1;
  v12 = sub_1A99775A0();
  v28 = v13;
  v26 = v12;
  LOBYTE(v29) = 2;
  sub_1A97B4418();
  sub_1A99775F0();
  v25 = v34;
  v24 = v35;
  v45 = v36;
  v46 = 3;
  sub_1A97B446C();
  sub_1A99775F0();
  (*(v6 + 8))(v8, v5);
  v14 = v44;
  v23 = v43;
  v15 = v27;
  *&v29 = v27;
  *(&v29 + 1) = v11;
  v16 = v26;
  v17 = v28;
  *&v30 = v26;
  *(&v30 + 1) = v28;
  v18 = v24;
  *&v31 = v25;
  *(&v31 + 1) = v24;
  HIDWORD(v22) = v45;
  LOBYTE(v32) = v45;
  *(&v32 + 1) = v43;
  v33 = v44;
  *(a2 + 64) = v44;
  v19 = v30;
  *a2 = v29;
  *(a2 + 16) = v19;
  v20 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v20;
  sub_1A97B44C0(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v34 = v15;
  v35 = v11;
  v36 = v16;
  v37 = v17;
  v38 = v25;
  v39 = v18;
  v40 = BYTE4(v22);
  v41 = v23;
  v42 = v14;
  return sub_1A97B44F8(&v34);
}

uint64_t SFAirDrop.ContactInfo.accountHandle.getter()
{
  v1 = *(v0 + 32);
  sub_1A97B2A2C(v1, *(v0 + 40));
  return v1;
}

uint64_t _s7Sharing9SFAirDropO11ContactInfoV6HandleO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1A97B2A2C(*a2, *(a2 + 8));
    sub_1A97B2A2C(v3, v2);
    sub_1A97B4368(v3, v2);
    sub_1A97B4368(v5, v4);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_1A99777E0();
    sub_1A97B2A2C(v5, v4);
    sub_1A97B2A2C(v3, v2);
    sub_1A97B4368(v3, v2);
    sub_1A97B4368(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_1A97B2A2C(v6, v7);
  sub_1A97B2A2C(v3, v2);
  sub_1A97B4368(v3, v2);
  sub_1A97B4368(v3, v2);
  return 1;
}

unint64_t sub_1A97B4000()
{
  result = qword_1EB3B13C8;
  if (!qword_1EB3B13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B13C8);
  }

  return result;
}

unint64_t sub_1A97B4054()
{
  result = qword_1EB3B13D0;
  if (!qword_1EB3B13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B13D0);
  }

  return result;
}

unint64_t sub_1A97B40A8()
{
  result = qword_1EB3B13D8;
  if (!qword_1EB3B13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B13D8);
  }

  return result;
}

uint64_t sub_1A97B40FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

BOOL _s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  v19 = a1[8];
  v20 = a1[7];
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v17 = *(a2 + 64);
  v18 = *(a2 + 56);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v4 != v10 || v5 != v11) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v24 = v6;
  v25 = v7;
  v26 = v8;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  sub_1A97B2A2C(v6, v7);
  sub_1A97B2A2C(v12, v13);
  v15 = _s7Sharing9SFAirDropO11ContactInfoV6HandleO2eeoiySbAG_AGtFZ_0(&v24, &v21);
  sub_1A97B4368(v21, v22);
  sub_1A97B4368(v24, v25);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return sub_1A993184C(v20, v19, v18, v17);
}

unint64_t sub_1A97B42C0()
{
  result = qword_1EB3B1400;
  if (!qword_1EB3B1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1400);
  }

  return result;
}

unint64_t sub_1A97B4314()
{
  result = qword_1EB3B1408;
  if (!qword_1EB3B1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1408);
  }

  return result;
}

unint64_t sub_1A97B4370()
{
  result = qword_1EB3AC8B8;
  if (!qword_1EB3AC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC8B8);
  }

  return result;
}

uint64_t sub_1A97B43C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1A97B4418()
{
  result = qword_1EB3B1418;
  if (!qword_1EB3B1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1418);
  }

  return result;
}

unint64_t sub_1A97B446C()
{
  result = qword_1EB3AC8B0;
  if (!qword_1EB3AC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC8B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A97B4550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A97B4598(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A97B460C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A97B4654(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s11ContactInfoV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContactInfoV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11ContactInfoV6HandleO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContactInfoV6HandleO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A97B4978()
{
  result = qword_1EB3B1420;
  if (!qword_1EB3B1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1420);
  }

  return result;
}

unint64_t sub_1A97B49D0()
{
  result = qword_1EB3B1428;
  if (!qword_1EB3B1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1428);
  }

  return result;
}

unint64_t sub_1A97B4A28()
{
  result = qword_1EB3B1430;
  if (!qword_1EB3B1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1430);
  }

  return result;
}

unint64_t sub_1A97B4A80()
{
  result = qword_1EB3B1438;
  if (!qword_1EB3B1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1438);
  }

  return result;
}

unint64_t sub_1A97B4AD8()
{
  result = qword_1EB3B1440;
  if (!qword_1EB3B1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1440);
  }

  return result;
}

unint64_t sub_1A97B4B30()
{
  result = qword_1EB3B1448;
  if (!qword_1EB3B1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1448);
  }

  return result;
}

unint64_t sub_1A97B4B88()
{
  result = qword_1EB3B1450;
  if (!qword_1EB3B1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1450);
  }

  return result;
}

unint64_t sub_1A97B4BE0()
{
  result = qword_1EB3B1458;
  if (!qword_1EB3B1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1458);
  }

  return result;
}

unint64_t sub_1A97B4C38()
{
  result = qword_1EB3B1460;
  if (!qword_1EB3B1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1460);
  }

  return result;
}

unint64_t sub_1A97B4C90()
{
  result = qword_1EB3B1468;
  if (!qword_1EB3B1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1468);
  }

  return result;
}

unint64_t sub_1A97B4CE8()
{
  result = qword_1EB3B1470;
  if (!qword_1EB3B1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1470);
  }

  return result;
}

unint64_t sub_1A97B4D40()
{
  result = qword_1EB3B1478;
  if (!qword_1EB3B1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1478);
  }

  return result;
}

uint64_t sub_1A97B4D94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6472616376 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97B4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A97C13A4(a3, v25 - v10, &qword_1EB3B29C0, &qword_1A9991A00);
  v12 = sub_1A9976C00();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A97B06FC(v11, &qword_1EB3B29C0, &qword_1A9991A00);
  }

  else
  {
    sub_1A9976BF0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A9976B80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A9976890() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A97B526C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A97B52C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFXPCBlock.dynamicallyCall(withArguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(a3 + 16);
  v4[11] = v5;
  v6 = sub_1A99770A0();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97B549C, 0, 0);
}

uint64_t sub_1A97B549C()
{
  if (v0[11] == &type metadata for VoidParameters)
  {
    v3 = v0[17];
    v0[5] = &type metadata for VoidParameters;
    tryCast<A>(_:as:description:file:line:)((v0 + 2), &type metadata for VoidParameters, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 31, &type metadata for VoidParameters, v3);
    v8 = v0[17];
    v9 = v0[18];
    v10 = v0[15];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    (*(v10 + 32))(v9, v8, &type metadata for VoidParameters);
  }

  else
  {
    v1 = v0[16];
    v2 = v0[12];
    v0[6] = v0[8];
    sub_1A9976B60();
    swift_getWitnessTable();
    sub_1A9976ED0();
    Optional.tryUnwrap(_:file:line:)(0xD000000000000021, 0x80000001A99E2EE0, 0xD00000000000004CLL, 0x80000001A99E2F10, 33, v2, v1);
    v4 = v0[18];
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[11];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v6 + 32))(v4, v5, v7);
  }

  v11 = (v0[10] + *(v0[9] + 68));
  v16 = (*v11 + **v11);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1A97B57A8;
  v13 = v0[18];
  v14 = v0[7];

  return v16(v14, v13);
}

uint64_t sub_1A97B57A8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1A97B5964;
  }

  else
  {
    v2 = sub_1A97B58BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97B58BC()
{
  (*(v0[15] + 8))(v0[18], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A97B5964()
{
  (*(v0[15] + 8))(v0[18], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A97B5A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  type metadata accessor for _SFXPCBlockContainer(0);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000014;
  v12[3] = 0x80000001A9992510;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1768, &qword_1A9992958);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000012;
  v12[3] = 0x80000001A99E31B0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  type metadata accessor for _SFXPCContainerRegistry();
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000017;
  v12[3] = 0x80000001A99E3190;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD00000000000001CLL;
  v12[3] = 0x80000001A99E30D0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000017;
  v12[3] = 0x80000001A99E2AD0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

void SFXPCBlock.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v25 = a2[3];
  v26 = v3;
  *&v30 = v3;
  *(&v30 + 1) = v25;
  *&v31 = v4;
  v24[4] = v5;
  v24[5] = v4;
  *(&v31 + 1) = v5;
  v32 = v6;
  v24[2] = v7;
  v24[3] = v6;
  v33 = v7;
  type metadata accessor for SFXPCBlock.CodingKeys(255, &v30);
  v24[1] = swift_getWitnessTable();
  v8 = sub_1A9977710();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v27 = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = sub_1A9977460();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1A9977A90();
  sub_1A9977450();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (*(v17 + 16) && (v18 = sub_1A97BCD7C(v16), (v19 & 1) != 0))
    {
      sub_1A97AF7EC(*(v17 + 56) + 32 * v18, &v30);
      (*(v14 + 8))(v16, v13);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
      v30 = 0u;
      v31 = 0u;
    }

    v20 = v34;
    v21 = sub_1A97B6540(&v30, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 39, type metadata accessor for _SFXPCBlockContainer, &unk_1EB3B1770, &qword_1A9992970, sub_1A97B5A0C);
    sub_1A97B06FC(&v30, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!v20)
    {
      sub_1A97B6A34();
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v22 = v27;
      sub_1A9977AA0();
      sub_1A99762C0();
      sub_1A97C10E0(&unk_1EB3ACFC0, MEMORY[0x1E69695B0]);
      v23 = v29;
      sub_1A99776E0();
      (*(v28 + 8))(v22, v23);
    }
  }
}

uint64_t sub_1A97B6540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t *a8, uint64_t *a9, uint64_t (*a10)(__int128 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v15 = sub_1A9977A00();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a7(0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  *&v32 = v19;
  sub_1A99779C0();
  *&v30 = 0x2874736143797274;
  *(&v30 + 1) = 0xE800000000000000;
  v20 = sub_1A99779D0();
  MEMORY[0x1AC5895B0](v20);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  v21 = v30;
  sub_1A97C13A4(a1, &v30, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v31)
  {

    sub_1A967C4DC(&v30, &v32);
    v22 = v34;
    v23 = a10(&v32, a2, a3, v27, v28, v29);
    if (!v22)
    {
      a1 = v23;
      __swift_destroy_boxed_opaque_existential_0Tm(&v32);
      (*(v16 + 8))(v18, v15);
      return a1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  }

  else
  {
    a1 = 0x80000001A99E3080;
    sub_1A97B06FC(&v30, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v24 = v21;
    *(v24 + 16) = 0xD000000000000046;
    *(v24 + 24) = 0x80000001A99E3080;
    *(v24 + 32) = 132;
    *(v24 + 80) = 0x2000000000000000;
    swift_willThrow();
  }

  (*(v16 + 8))(v18, v15);
  return a1;
}

uint64_t sub_1A97B67BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  v9 = sub_1A9977A00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B8, &qword_1A9992888);
  *&v26 = v13;
  sub_1A99779C0();
  *&v24 = 0x2874736143797274;
  *(&v24 + 1) = 0xE800000000000000;
  v14 = sub_1A99779D0();
  MEMORY[0x1AC5895B0](v14);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  v15 = v24;
  sub_1A97C13A4(a1, &v24, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v25)
  {

    sub_1A967C4DC(&v24, &v26);
    v16 = v28;
    v17 = sub_1A97B5EF8(&v26, a2, a3, v21, v22, v23);
    if (!v16)
    {
      a1 = v17;
      __swift_destroy_boxed_opaque_existential_0Tm(&v26);
      (*(v10 + 8))(v12, v9);
      return a1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  }

  else
  {
    a1 = 0x80000001A99E3080;
    sub_1A97B06FC(&v24, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v18 = v15;
    *(v18 + 16) = 0xD000000000000046;
    *(v18 + 24) = 0x80000001A99E3080;
    *(v18 + 32) = 132;
    *(v18 + 80) = 0x2000000000000000;
    swift_willThrow();
  }

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_1A97B6A34()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCBlockContainer_asyncBlocksLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1A97C1874(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t SFXPCBlock.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v113 = a7;
  v94 = a8;
  v99 = sub_1A99762C0();
  v96 = *(v99 - 8);
  v15 = MEMORY[0x1EEE9AC00](v99);
  v88 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v84 - v17;
  *&v119 = a2;
  *(&v119 + 1) = a3;
  *&v120 = a4;
  *(&v120 + 1) = a5;
  v121 = a6;
  v122 = a7;
  v18 = type metadata accessor for SFXPCBlock.CodingKeys(255, &v119);
  WitnessTable = swift_getWitnessTable();
  v101 = v18;
  v100 = WitnessTable;
  v103 = sub_1A9977630();
  v97 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v111 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v84 - v24;
  v26 = sub_1A9977460();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v105 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v84 - v29;
  v89 = a2;
  *&v119 = a2;
  *(&v119 + 1) = a3;
  v90 = a3;
  v91 = a4;
  *&v120 = a4;
  *(&v120 + 1) = a5;
  v92 = a5;
  v32 = v31;
  v93 = a6;
  v121 = a6;
  v122 = v113;
  v33 = type metadata accessor for SFXPCBlock(0, &v119);
  v86 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v95 = &v84 - v34;
  v36 = a1[3];
  v35 = a1[4];
  v112 = a1;
  v106 = __swift_project_boxed_opaque_existential_1(a1, v36);
  v108 = v35;
  v37 = sub_1A9977A60();
  sub_1A9977450();
  v107 = v32[6];
  result = v107(v25, 1, v26);
  if (result == 1)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v104 = v32[4];
  v104(v30, v25, v26);
  v39 = *(v37 + 16);
  v110 = v32;
  if (v39)
  {
    v40 = v26;
    v41 = sub_1A97BCD7C(v30);
    if (v42)
    {
      sub_1A97AF7EC(*(v37 + 56) + 32 * v41, &v119);
      v43 = *(v110 + 8);
      v43(v30, v40);
      v44 = v43;

      goto LABEL_8;
    }

    v44 = *(v110 + 8);
    v44(v30, v26);
  }

  else
  {

    v44 = v32[1];
    v40 = v26;
    v44(v30, v26);
  }

  v119 = 0u;
  v120 = 0u;
LABEL_8:
  v45 = v111;
  sub_1A97C13A4(&v119, &v116, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (!*(&v117 + 1))
  {
    sub_1A97B06FC(&v116, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v49 = 0xD000000000000011;
    v49[1] = 0x80000001A99E2F80;
    v49[2] = 0xD00000000000004CLL;
    v49[3] = 0x80000001A99E2F10;
    v49[4] = 48;
    v49[10] = 0x2000000000000000;
    swift_willThrow();
    sub_1A97B06FC(&v119, &qword_1EB3B0BA0, &unk_1A99923D0);
    v48 = v112;
    return __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  v85 = v33;
  sub_1A97B06FC(&v119, &qword_1EB3B0BA0, &unk_1A99923D0);
  sub_1A967C4DC(&v116, &v118);
  v46 = v109;
  v47 = sub_1A97B5B44(&v118, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 49);
  if (v46)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v118);
    v48 = v112;
    return __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  v109 = v44;
  v111 = v47;
  v50 = sub_1A9977A60();
  sub_1A9977450();
  result = v107(v45, 1, v40);
  if (result == 1)
  {
    goto LABEL_32;
  }

  v51 = v105;
  v104(v105, v45, v40);
  if (*(v50 + 16))
  {
    v52 = sub_1A97BCD7C(v51);
    v53 = v112;
    if (v54)
    {
      sub_1A97AF7EC(*(v50 + 56) + 32 * v52, &v116);
      v109(v51, v40);
    }

    else
    {

      v109(v51, v40);
      v116 = 0u;
      v117 = 0u;
    }
  }

  else
  {

    v109(v51, v40);
    v116 = 0u;
    v117 = 0u;
    v53 = v112;
  }

  sub_1A97C13A4(&v116, &v114, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v115)
  {
    sub_1A967C4DC(&v114, &v119);
    v110 = sub_1A97B5C88(&v119, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 54);
    __swift_destroy_boxed_opaque_existential_0Tm(&v119);
  }

  else
  {
    sub_1A97B06FC(&v114, &qword_1EB3B0BA0, &unk_1A99923D0);
    v110 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v55 = v102;
  sub_1A9977A70();
  v56 = v103;
  sub_1A97C10E0(&qword_1EB3AD060, MEMORY[0x1E69695D0]);
  v57 = v98;
  v58 = v99;
  sub_1A99775F0();
  v109 = 0;
  (*(v96 + 16))(v95, v57, v58);
  *&v114 = 0x6B636F6C42637078;
  *(&v114 + 1) = 0xEA0000000000203ALL;
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v59 = sub_1A9977A40();
  v60 = *(v59 + 16);
  if (v60)
  {
    v123 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v60, 0);
    v61 = v123;
    v62 = v59 + 32;
    do
    {
      sub_1A97BD648(v62, &v119);
      __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
      v63 = sub_1A9977AB0();
      v65 = v64;
      __swift_destroy_boxed_opaque_existential_0Tm(&v119);
      v123 = v61;
      v67 = *(v61 + 16);
      v66 = *(v61 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1A97BD628((v66 > 1), v67 + 1, 1);
        v61 = v123;
      }

      *(v61 + 16) = v67 + 1;
      v68 = v61 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v62 += 40;
      --v60;
    }

    while (v60);

    v53 = v112;
    v56 = v103;
    v55 = v102;
  }

  else
  {

    v61 = MEMORY[0x1E69E7CC0];
  }

  *&v119 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v69 = sub_1A9976760();
  v71 = v70;

  MEMORY[0x1AC5895B0](v69, v71);

  v72 = v114;
  (*(v97 + 8))(v55, v56);
  sub_1A97B06FC(&v116, &qword_1EB3B0BA0, &unk_1A99923D0);
  __swift_destroy_boxed_opaque_existential_0Tm(&v118);
  v74 = v96 + 32;
  v73 = *(v96 + 32);
  v75 = v88;
  v76 = v99;
  v73(v88, v98, v99);
  v77 = (*(v74 + 48) + 96) & ~*(v74 + 48);
  v78 = swift_allocObject();
  v79 = v90;
  *(v78 + 2) = v89;
  *(v78 + 3) = v79;
  v80 = v92;
  *(v78 + 4) = v91;
  *(v78 + 5) = v80;
  v81 = v113;
  *(v78 + 6) = v93;
  *(v78 + 7) = v81;
  *(v78 + 8) = v111;
  *(v78 + 9) = v72;
  v82 = v110;
  *(v78 + 10) = *(&v72 + 1);
  *(v78 + 11) = v82;
  v73(&v78[v77], v75, v76);
  v83 = &v95[*(v85 + 68)];
  *v83 = &unk_1A99923F0;
  *(v83 + 1) = v78;
  (*(v86 + 32))(v94);
  return __swift_destroy_boxed_opaque_existential_0Tm(v53);
}

uint64_t sub_1A97B77B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v17;
  *(v8 + 80) = v15;
  *(v8 + 96) = v16;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10 = sub_1A99762C0();
  *(v8 + 120) = v10;
  v11 = *(v10 - 8);
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 + 64);
  *(v8 + 144) = swift_task_alloc();
  v12 = *(a8 - 8);
  *(v8 + 152) = v12;
  *(v8 + 160) = *(v12 + 64);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97B7908, 0, 0);
}

uint64_t sub_1A97B7908()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v23 = v3;
  v24 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 120);
  v22 = v5;
  v6 = *(v0 + 64);
  v26 = *(v0 + 56);
  v7 = *(v0 + 48);
  v25 = *(v0 + 40);
  v8 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1758, &qword_1A9992948);
  v19 = *(v0 + 72);
  v9 = *(v0 + 72);
  v20 = *(v0 + 104);
  v21 = *(v0 + 88);
  (*(v2 + 16))(v1, v8, v9);
  (*(v4 + 16))(v3, v6, v5);
  v10 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v11 = (v24 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v4 + 80) + v11 + 8) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v0 + 176) = v13;
  *(v13 + 16) = v19;
  *(v13 + 32) = v21;
  *(v13 + 48) = v20;
  *(v13 + 64) = v25;
  *(v13 + 72) = v7;
  (*(v2 + 32))(v13 + v10, v1, v9);
  *(v13 + v11) = v26;
  (*(v4 + 32))(v13 + v12, v23, v22);

  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_1A97B7B48;
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);

  return sub_1A984F364(v17, v15, v16, v27, sub_1A97C1638, v13, ObjectType, v27);
}

uint64_t sub_1A97B7B48()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A97B7C9C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A97B7C9C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A97B7D14(id *a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v54 = a7;
  v55 = a3;
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v52 = a9;
  v18 = sub_1A9976BB0();
  v50 = *(v18 - 8);
  v51 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v48 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  (*(v23 + 16))(v22, a5, a8);

  v24 = v57;
  v25 = sub_1A984EAD4(v55, a4, v22, a6, a8, a10, a11);
  if (!v24)
  {
    v42 = a12;
    v43 = a13;
    v57 = 0;
    v47 = v25;
    v55 = v26;
    v44 = v27;
    v45 = v28;
    v54 = sub_1A9976270();
    v46 = sub_1A9976060();
    v29 = v50;
    v30 = v48;
    v31 = v51;
    (*(v50 + 16))(v48, v49, v51);
    v32 = (*(v29 + 80) + 64) & ~*(v29 + 80);
    v33 = swift_allocObject();
    v34 = v52;
    *(v33 + 2) = a8;
    *(v33 + 3) = v34;
    *(v33 + 4) = a10;
    *(v33 + 5) = a11;
    v35 = v43;
    *(v33 + 6) = v42;
    *(v33 + 7) = v35;
    (*(v29 + 32))(&v33[v32], v30, v31);
    aBlock[4] = sub_1A97C1758;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_84;
    v36 = _Block_copy(aBlock);
    v37 = v44;
    v38 = v45;

    v39 = v54;
    v40 = v46;
    [v53 invoke:v54 parametersData:v46 parametersAsyncSequenceContainer:v37 parametersBlocksContainer:v38 sync:0 completion:v36];
    _Block_release(v36);

    sub_1A97B43C4(v47, v55);
  }
}

uint64_t sub_1A97B808C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21[1] = a6;
  v21[0] = type metadata accessor for SFXPCConnection.PerformedInvocation(0, a8, a11, a12);
  v15 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v17 = v21 - v16;
  sub_1A97C1554(a1, a2);
  v18 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(a1, a2, a5, v17);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v19 = sub_1A9976BB0();
  sub_1A97DCA10(v17, v19);
  return (*(v15 + 8))(v17, v21[0]);
}

uint64_t sub_1A97B820C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A99777E0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A97B82C8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A97B830C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A97B8360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _s7Sharing10SFXPCBlockV4bodyyq_xYaKcvg_0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t sub_1A97B8420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void *))
{
  sub_1A99762B0();
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  result = a10(0, v21);
  v20 = (a9 + *(result + 68));
  *v20 = a1;
  v20[1] = a2;
  return result;
}

uint64_t SFXPCSyncBlock.dynamicallyCall(withArguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25[5] = a3;
  v5 = *(a2 + 16);
  v6 = sub_1A99770A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  Description = v5[-1].Description;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  if (v5 == &type metadata for VoidParameters)
  {
    v25[3] = &type metadata for VoidParameters;
    tryCast<A>(_:as:description:file:line:)(v25, &type metadata for VoidParameters, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 92, &type metadata for VoidParameters, v16);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v25);
    if (v3)
    {
      return result;
    }

    v20 = Description;
    Description[4](v18, v16, &type metadata for VoidParameters);
  }

  else
  {
    v25[0] = a1;
    sub_1A9976B60();
    swift_getWitnessTable();
    sub_1A9976ED0();
    Optional.tryUnwrap(_:file:line:)(0xD000000000000025, 0x80000001A99E2FC0, 0xD00000000000004CLL, 0x80000001A99E2F10, 94, v6, v13);
    if (v3)
    {
      return (*(v7 + 8))(v10, v6);
    }

    (*(v7 + 8))(v10, v6);
    v20 = Description;
    Description[4](v18, v13, v5);
  }

  (*(v24 + *(v23 + 68)))(v18);
  return (v20[1])(v18, v5);
}

uint64_t SFXPCSyncBlock.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v32 = a2[3];
  v33 = v3;
  *&v41 = v3;
  *(&v41 + 1) = v32;
  v31 = v4;
  v42 = v4;
  v43 = v5;
  v30 = v5;
  v29 = v6;
  v44 = v6;
  v45 = v7;
  v28 = v7;
  type metadata accessor for SFXPCSyncBlock.CodingKeys(255, &v41);
  v27[1] = swift_getWitnessTable();
  v8 = sub_1A9977710();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  v13 = sub_1A9977460();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1A9977A90();
  sub_1A9977450();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (*(v17 + 16) && (v19 = sub_1A97BCD7C(v16), (v20 & 1) != 0))
    {
      sub_1A97AF7EC(*(v17 + 56) + 32 * v19, v40);
      (*(v14 + 8))(v16, v13);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
      memset(v40, 0, sizeof(v40));
    }

    sub_1A97C13A4(v40, &v38, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (v39)
    {
      sub_1A97B06FC(v40, &qword_1EB3B0BA0, &unk_1A99923D0);
      sub_1A967C4DC(&v38, &v41);
      v21 = v46;
      v22 = sub_1A97B5A0C(&v41, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 101);
      if (!v21)
      {
        v23 = v22;
        sub_1A97B8CD4(v37, v33, v32, v31, v30, v29, v28);
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v24 = v34;
        sub_1A9977AA0();
        sub_1A99762C0();
        sub_1A97C10E0(&unk_1EB3ACFC0, MEMORY[0x1E69695B0]);
        v25 = v36;
        sub_1A99776E0();

        (*(v35 + 8))(v24, v25);
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(&v41);
    }

    else
    {
      sub_1A97B06FC(&v38, &qword_1EB3B0BA0, &unk_1A99923D0);
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      v26[1] = 0x80000001A99E2F80;
      v26[2] = 0xD00000000000004CLL;
      v26[3] = 0x80000001A99E2F10;
      v26[4] = 100;
      v26[10] = 0x2000000000000000;
      swift_willThrow();
      return sub_1A97B06FC(v40, &qword_1EB3B0BA0, &unk_1A99923D0);
    }
  }

  return result;
}

uint64_t sub_1A97B8CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v24 = a6;
  v25 = a7;
  v26 = a1;
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v14 = type metadata accessor for SFXPCSyncBlock(0, v28);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v15 + 16))(&v24 - v16, a1, v14);
  v18 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v25;
  *(v19 + 6) = v24;
  *(v19 + 7) = v20;
  (*(v15 + 32))(&v19[v18], v17, v14);
  v21 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v8 + v21);
  *(v8 + v21) = 0x8000000000000000;
  sub_1A97E2D7C(sub_1A97C1568, v19, v26, isUniquelyReferenced_nonNull_native);
  *(v8 + v21) = v27;
  return swift_endAccess();
}

uint64_t SFXPCSyncBlock.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v111 = a7;
  v83 = a8;
  v87 = sub_1A99762C0();
  v78 = *(v87 - 8);
  v15 = MEMORY[0x1EEE9AC00](v87);
  v76 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v72 - v17;
  *&v106 = a2;
  *(&v106 + 1) = a3;
  v107 = a4;
  v108 = a5;
  v109 = a6;
  v110 = a7;
  v18 = type metadata accessor for SFXPCSyncBlock.CodingKeys(255, &v106);
  WitnessTable = swift_getWitnessTable();
  v89 = v18;
  v88 = WitnessTable;
  v90 = sub_1A9977630();
  v85 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v96 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - v24;
  v26 = sub_1A9977460();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v92 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v72 - v29;
  v77 = a2;
  *&v106 = a2;
  *(&v106 + 1) = a3;
  v32 = v31;
  v79 = a3;
  v80 = a4;
  v107 = a4;
  v108 = a5;
  v81 = a5;
  v82 = a6;
  v109 = a6;
  v110 = v111;
  v74 = type metadata accessor for SFXPCSyncBlock(0, &v106);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v84 = &v72 - v33;
  v35 = a1[3];
  v34 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  v95 = v34;
  v36 = sub_1A9977A60();
  sub_1A9977450();
  v94 = v32[6];
  result = v94(v25, 1, v26);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v91 = v32[4];
  v91(v30, v25, v26);
  v38 = *(v36 + 16);
  v98 = v32;
  if (v38)
  {
    v39 = v26;
    v40 = sub_1A97BCD7C(v30);
    if (v41)
    {
      sub_1A97AF7EC(*(v36 + 56) + 32 * v40, &v104);
      v42 = v98[1];
      v42(v30, v26);

      goto LABEL_8;
    }

    v42 = v98[1];
    v42(v30, v26);
  }

  else
  {

    v42 = v32[1];
    v39 = v26;
    v42(v30, v26);
  }

  v104 = 0u;
  v105 = 0u;
LABEL_8:
  sub_1A97C13A4(&v104, &v102, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (!v103)
  {
    sub_1A97B06FC(&v102, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v46 = 0xD000000000000011;
    v46[1] = 0x80000001A99E2F80;
    v46[2] = 0xD00000000000004CLL;
    v46[3] = 0x80000001A99E2F10;
    v46[4] = 110;
    v46[10] = 0x2000000000000000;
    swift_willThrow();
    sub_1A97B06FC(&v104, &qword_1EB3B0BA0, &unk_1A99923D0);
    v45 = v99;
    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  sub_1A97B06FC(&v104, &qword_1EB3B0BA0, &unk_1A99923D0);
  sub_1A967C4DC(&v102, &v106);
  v43 = v97;
  v44 = sub_1A97B5B44(&v106, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 111);
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v106);
    v45 = v99;
    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  v47 = v44;
  v97 = 0;
  v48 = sub_1A9977A60();
  v49 = v96;
  sub_1A9977450();
  result = v94(v49, 1, v39);
  if (result != 1)
  {
    v50 = v92;
    v91(v92, v49, v39);
    v51 = v93;
    if (*(v48 + 16) && (v52 = sub_1A97BCD7C(v50), (v53 & 1) != 0))
    {
      v54 = v47;
      sub_1A97AF7EC(*(v48 + 56) + 32 * v52, &v104);
      v42(v50, v39);
    }

    else
    {
      v54 = v47;

      v42(v50, v39);
      v104 = 0u;
      v105 = 0u;
    }

    sub_1A97C13A4(&v104, &v100, &qword_1EB3B0BA0, &unk_1A99923D0);
    v45 = v99;
    v55 = v97;
    if (v101)
    {
      sub_1A967C4DC(&v100, &v102);
      v56 = sub_1A97B5C88(&v102, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 116);
      if (v55)
      {
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v102);
        goto LABEL_25;
      }

      v57 = v56;
      v97 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(&v102);
    }

    else
    {
      sub_1A97B06FC(&v100, &qword_1EB3B0BA0, &unk_1A99923D0);
      v57 = 0;
    }

    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v58 = v97;
    sub_1A9977A70();
    v59 = v90;
    if (!v58)
    {
      sub_1A97C10E0(&qword_1EB3AD060, MEMORY[0x1E69695D0]);
      v60 = v86;
      v61 = v87;
      sub_1A99775F0();
      v62 = v78;
      (*(v78 + 16))(v84, v60, v61);
      (*(v85 + 8))(v51, v59);
      sub_1A97B06FC(&v104, &qword_1EB3B0BA0, &unk_1A99923D0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v106);
      v63 = *(v62 + 32);
      v64 = v76;
      v63(v76, v60, v61);
      v65 = (*(v62 + 80) + 96) & ~*(v62 + 80);
      v66 = swift_allocObject();
      v97 = 0;
      v67 = v66;
      v68 = v79;
      *(v66 + 16) = v77;
      *(v66 + 24) = v68;
      v69 = v81;
      *(v66 + 32) = v80;
      *(v66 + 40) = v69;
      v70 = v111;
      *(v66 + 48) = v82;
      *(v66 + 56) = v70;
      *(v66 + 64) = v54;
      strcpy((v66 + 72), "SFXPCSyncBlock");
      *(v66 + 87) = -18;
      *(v66 + 88) = v57;
      v63((v66 + v65), v64, v61);
      v71 = &v84[*(v74 + 68)];
      *v71 = sub_1A97BD960;
      v71[1] = v67;
      (*(v73 + 32))(v83);
      return __swift_destroy_boxed_opaque_existential_0Tm(v45);
    }

    swift_unknownObjectRelease();

LABEL_25:
    sub_1A97B06FC(&v104, &qword_1EB3B0BA0, &unk_1A99923D0);
    __swift_destroy_boxed_opaque_existential_0Tm(&v106);
    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

LABEL_28:
  __break(1u);
  return result;
}

__n128 sub_1A97B9988@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  swift_getObjectType();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1758, &qword_1A9992948);
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a3;
  v29 = a4;
  v30 = a1;
  v31 = a5;
  v32 = a6;
  sub_1A984F72C(a3, a4, sub_1A97C14C4, v22, v18, a8, x8_0);
  return result;
}

void sub_1A97B9A7C(id *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a2;
  v61 = a6;
  v68 = a1;
  v69 = a4;
  v65 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v17 = sub_1A9977A20();
  v59 = *(v17 - 8);
  v60 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v66 = a8;
  v62 = a12;
  v63 = a13;
  v64 = type metadata accessor for SFXPCConnection.PerformedInvocation(0, a8, a12, a13);
  v67 = *(v64 - 8);
  v20 = MEMORY[0x1EEE9AC00](v64);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *v68;
  (*(v25 + 16))(v24, v69, a7);

  v26 = v71;
  v27 = sub_1A984EAD4(v70, a3, v24, a5, a7, a10, a11);
  if (!v26)
  {
    v31 = v28;
    v32 = v29;
    v56 = v22;
    v57 = v19;
    v70 = v30;
    v71 = 0;
    v33 = v27;
    v34 = v64;
    sub_1A99770A0();
    v35 = swift_allocBox();
    v58 = v36;
    (*(v67 + 56))(v36, 1, 1, v34);
    v61 = sub_1A9976270();
    v69 = v33;
    v37 = sub_1A9976060();
    v38 = swift_allocObject();
    v39 = v66;
    v38[2] = a7;
    v38[3] = v39;
    v38[4] = a10;
    v38[5] = a11;
    v40 = v63;
    v38[6] = v62;
    v38[7] = v40;
    v38[8] = v35;
    aBlock[4] = sub_1A97C1504;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor;
    v41 = _Block_copy(aBlock);
    v63 = v31;
    v42 = v41;
    v43 = v32;
    v44 = v70;
    v70 = v35;

    v45 = v61;
    [v68 invoke:v61 parametersData:v37 parametersAsyncSequenceContainer:v43 parametersBlocksContainer:v44 sync:1 completion:v42];
    _Block_release(v42);

    v46 = v58;
    swift_beginAccess();
    if ((*(v67 + 48))(v46, 1, v34))
    {
      sub_1A97B43C4(v69, v63);

      v47 = 1;
      v48 = v65;
LABEL_4:
      (*(*(v66 - 8) + 56))(v48, v47, 1);

      return;
    }

    v49 = v69;
    v50 = v63;
    v51 = v56;
    (*(v67 + 16))(v56, v46, v34);
    v52 = v60;
    (*(v59 + 32))(v57, v51, v60);
    v53 = v65;
    v54 = v71;
    sub_1A984F65C(v52, &v73, v65);
    if (!v54)
    {
      v71 = 0;
      sub_1A97B43C4(v49, v50);

      v47 = 0;
      v48 = v53;
      goto LABEL_4;
    }

    sub_1A97B43C4(v49, v50);
  }
}

uint64_t sub_1A97B9FA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22[0] = a11;
  v22[1] = a8;
  v15 = type metadata accessor for SFXPCConnection.PerformedInvocation(255, a8, a11, a12);
  v23 = sub_1A99770A0();
  v16 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v18 = v22 - v17;
  v19 = swift_projectBox();
  sub_1A97C1554(a1, a2);
  v20 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(a1, a2, a5, v18);
  (*(*(v15 - 8) + 56))(v18, 0, 1, v15);
  swift_beginAccess();
  return (*(v16 + 40))(v19, v18, v23);
}

id _SFXPCBlockContainer.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *&v0[OBJC_IVAR____SFXPCBlockContainer_containerRegistry];
  if (v12)
  {
    v20 = ObjectType;
    v13 = *(v6 + 16);
    v13(&v19 - v10, &v0[OBJC_IVAR____SFXPCBlockContainer_uuid], v5);
    v14 = sub_1A9976C00();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v13(v9, v11, v5);
    v15 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v12;
    v17 = v16 + v15;
    ObjectType = v20;
    (*(v6 + 32))(v17, v9, v5);
    swift_retain_n();
    sub_1A97B4F40(0, 0, v4, &unk_1A9992400, v16);

    (*(v6 + 8))(v11, v5);
  }

  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

uint64_t sub_1A97BA530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a2;
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v30[0] = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a6;
  v30[4] = a7;
  v30[5] = a8;
  v13 = type metadata accessor for SFXPCBlock(0, v30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  (*(v14 + 16))(&v25 - v15, a2, v13);
  v17 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  v19 = v26;
  v20 = v27;
  *(v18 + 4) = a5;
  *(v18 + 5) = v19;
  v21 = v28;
  *(v18 + 6) = v20;
  *(v18 + 7) = v21;
  (*(v14 + 32))(&v18[v17], v16, v13);
  v22 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_1A97E2DA8(&unk_1A9992968, v18, v29, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v31;
  return swift_endAccess();
}

uint64_t sub_1A97BA700(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v22;
  *(v8 + 248) = v23;
  *(v8 + 224) = v21;
  *(v8 + 208) = a8;
  *(v8 + 216) = v20;
  *(v8 + 192) = a1;
  *(v8 + 200) = a7;
  *(v8 + 256) = *(v20 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = *(a8 - 8);
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v15 = sub_1A9977460();
  *(v8 + 320) = v15;
  *(v8 + 328) = *(v15 - 8);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = *a2;
  v16 = *a4;
  *(v8 + 384) = *a3;
  *(v8 + 392) = v16;
  v17 = *a6;
  *(v8 + 400) = *a5;
  *(v8 + 408) = v17;

  return MEMORY[0x1EEE6DFA0](sub_1A97BA944, 0, 0);
}

uint64_t sub_1A97BA944()
{
  v34 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  sub_1A9975E40();
  swift_allocObject();
  *(v0 + 416) = sub_1A9975E30();
  sub_1A9977450();
  v4 = *(v1 + 48);
  *(v0 + 424) = v4;
  *(v0 + 432) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  result = v4(v3, 1, v2);
  if (result == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = *(v0 + 384);
  v7 = *(v0 + 360);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v10 = *(v0 + 312);
  v11 = *(v9 + 32);
  *(v0 + 440) = v11;
  *(v0 + 448) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v7, v10, v8);
  v28 = v4;
  if (v6)
  {
    v6 = *(v0 + 384);
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v31 = 0;
    v32 = 0;
  }

  v13 = *(v0 + 360);
  v14 = *(v0 + 320);
  v15 = *(v0 + 304);
  v30 = v6;
  v33 = ObjectType;
  swift_unknownObjectRetain();
  v16 = sub_1A9975E20();
  sub_1A97DCC4C(&v30, v13);
  v16(v0 + 64, 0);
  sub_1A9977450();
  result = v28(v15, 1, v14);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v17 = *(v0 + 392);
  v11(*(v0 + 352), *(v0 + 304), *(v0 + 320));
  if (v17)
  {
    v17 = *(v0 + 392);
    v18 = swift_getObjectType();
  }

  else
  {
    v18 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v17;
  v19 = *(v0 + 352);
  v33 = v18;
  swift_unknownObjectRetain();
  v20 = sub_1A9975E20();
  sub_1A97DCC4C(&v30, v19);
  v20(v0 + 96, 0);
  sub_1A9975E10();
  v21 = *(v0 + 200);
  v22 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  v23 = *(v0 + 240);
  *(v0 + 32) = v22;
  *(v0 + 48) = v23;
  v24 = (v21 + *(type metadata accessor for SFXPCBlock(0, v0 + 16) + 68));
  v29 = (*v24 + **v24);
  v25 = swift_task_alloc();
  *(v0 + 456) = v25;
  *v25 = v0;
  v25[1] = sub_1A97BAD64;
  v26 = *(v0 + 280);
  v27 = *(v0 + 264);

  return v29(v27, v26);
}

uint64_t sub_1A97BAD64()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1A97BB23C;
  }

  else
  {
    v2 = sub_1A97BAE78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A97BAE78()
{
  v37 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  sub_1A9977450();
  result = v1(v3, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 288);
  (*(v0 + 440))(v7, *(v0 + 296), v8);
  v36 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v35[0] = v6;
  v10 = v6;
  v11 = sub_1A9975E60();
  sub_1A97DCC4C(v35, v7);
  v11(v0 + 128, 0);
  sub_1A9977450();
  result = v5(v9, 1, v8);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 464);
  v13 = *(v0 + 408);
  v14 = *(v0 + 336);
  (*(v0 + 440))(v14, *(v0 + 288), *(v0 + 320));
  v36 = type metadata accessor for _SFXPCBlockContainer(0);
  v35[0] = v13;
  v15 = v13;
  v16 = sub_1A9975E60();
  sub_1A97DCC4C(v35, v14);
  v16(v0 + 160, 0);
  v17 = sub_1A9975E50();
  if (v12)
  {
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);

    (*(v22 + 8))(v21, v23);
    (*(v20 + 8))(v19, v24);
  }

  else
  {
    v26 = v17;
    v27 = v18;
    v28 = *(v0 + 272);
    v29 = *(v0 + 256);
    v30 = *(v0 + 264);
    v31 = *(v0 + 216);
    v33 = *(v0 + 208);
    v34 = *(v0 + 280);
    v32 = *(v0 + 192);

    (*(v29 + 8))(v30, v31);
    (*(v28 + 8))(v34, v33);
    *v32 = v26;
    v32[1] = v27;
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1A97BB23C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[26];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A97BB34C@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X3>, id *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v85 = a6;
  v105 = a5;
  v97 = a4;
  v74 = a8;
  v87 = a7;
  v76 = *(a7 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v86 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v17;
  v84 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v81 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v83 = &v73 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v73 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v73 - v27;
  v29 = sub_1A9977460();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v78 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v80 = &v73 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v88 = &v73 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v73 - v37;
  v39 = *a1;
  v89 = a1[1];
  v90 = v39;
  v40 = *a2;
  v41 = *a3;
  v79 = *v97;
  v77 = *v105;
  sub_1A9975E40();
  swift_allocObject();
  v42 = sub_1A9975E30();
  v82 = "rProtocol>24@_SFXPCError32";
  sub_1A9977450();
  v97 = *(v30 + 48);
  result = v97(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v44 = *(v30 + 32);
  v91 = v29;
  v93 = v44;
  v94 = v30 + 32;
  v44(v38, v28, v29);
  if (v40)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v99 = 0;
    v100 = 0;
  }

  v46 = v30 + 48;
  v98 = v40;
  v101 = ObjectType;
  swift_unknownObjectRetain();
  v105 = v42;
  v47 = sub_1A9975E20();
  sub_1A97DCC4C(&v98, v38);
  v47(v104, 0);
  sub_1A9977450();
  v48 = v91;
  result = v97(v26, 1, v91);
  if (result == 1)
  {
    goto LABEL_15;
  }

  v49 = v88;
  v93(v88, v26, v48);
  v75 = "amework/XPC/SFXPCBlock.swift";
  if (v41)
  {
    v50 = swift_getObjectType();
  }

  else
  {
    v50 = 0;
    v99 = 0;
    v100 = 0;
  }

  v98 = v41;
  v101 = v50;
  swift_unknownObjectRetain();
  v51 = sub_1A9975E20();
  sub_1A97DCC4C(&v98, v49);
  v51(v104, 0);
  v53 = v95;
  v52 = v96;
  v54 = v92;
  sub_1A9975E10();
  if (v54)
  {
  }

  v98 = v52;
  v99 = v87;
  v100 = a9;
  v101 = a10;
  v102 = a11;
  v103 = a12;
  v55 = type metadata accessor for SFXPCSyncBlock(0, &v98);
  (*(v85 + *(v55 + 68)))(v53);
  v90 = a12;
  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v56 = v83;
  sub_1A9977450();
  v57 = v97;
  result = v97(v56, 1, v48);
  v92 = v46;
  if (result == 1)
  {
    goto LABEL_16;
  }

  v58 = v80;
  v59 = v93;
  v93(v80, v56, v48);
  v101 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v98 = v79;
  v60 = v79;
  v61 = sub_1A9975E60();
  sub_1A97DCC4C(&v98, v58);
  v61(v104, 0);
  v62 = v81;
  sub_1A9977450();
  result = v57(v62, 1, v48);
  if (result != 1)
  {
    v63 = v48;
    v64 = v78;
    v59(v78, v62, v63);
    v101 = type metadata accessor for _SFXPCBlockContainer(0);
    v98 = v77;
    v65 = v77;
    v66 = sub_1A9975E60();
    sub_1A97DCC4C(&v98, v64);
    v66(v104, 0);
    v67 = v86;
    v68 = v87;
    v69 = sub_1A9975E50();
    v71 = v70;

    (*(v76 + 8))(v67, v68);
    result = (*(v84 + 8))(v95, v96);
    v72 = v74;
    *v74 = v69;
    v72[1] = v71;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void _SFXPCBlockContainer.invoke(_:parametersData:parametersAsyncSequenceContainer:parametersBlocksContainer:sync:completion:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, unint64_t, id, void *, void *), uint64_t a8)
{
  v91 = a7;
  v92 = a8;
  v89 = a6;
  v84 = a5;
  v85 = a4;
  v83 = a3;
  v82 = a2;
  v95 = a1;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = &v78 - v10;
  v11 = sub_1A99762C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v78 - v16;
  v19 = *&v8[OBJC_IVAR____SFXPCBlockContainer_name];
  v18 = *&v8[OBJC_IVAR____SFXPCBlockContainer_name + 8];
  v96 = v8;
  v20 = *&v8[OBJC_IVAR____SFXPCBlockContainer_containerRegistry];
  v87 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v21 = objc_allocWithZone(v87);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1A99762B0();
  v86 = v12;
  v22 = v12 + 16;
  v23 = *(v12 + 16);
  v97 = v11;
  v23(&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v17, v11);
  v24 = &v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v88 = v19;
  *v24 = v19;
  *(v24 + 1) = v18;
  v94 = v18;

  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v20;
  v90 = v15;
  v81 = v13;
  v80 = v22;
  v79 = v23;
  if (v20)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v98, 1, 1, v25);
    v26 = v86;
    v27 = v97;
    v23(v15, v17, v97);
    v28 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = v20;
    (*(v26 + 32))(&v30[v28], v15, v27);
    v31 = &v30[v29];
    v32 = v88;
    v33 = v94;
    *v31 = v88;
    v31[1] = v33;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v98, &unk_1A9999B40, v30);

    v34 = v26;
    (*(v26 + 8))(v17, v27);
    v35 = v32;
  }

  else
  {
    v34 = v86;
    (*(v86 + 8))(v17, v97);
    v33 = v94;

    v35 = v88;
  }

  v106.receiver = v21;
  v106.super_class = v87;
  v94 = objc_msgSendSuper2(&v106, sel_init);

  v36 = objc_allocWithZone(ObjectType);
  v37 = sub_1A97BE9E8(v35, v33, v20);

  if (v89)
  {
    v38 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
    v39 = v96;
    swift_beginAccess();
    v40 = *&v39[v38];
    if (*(v40 + 16) && (v41 = sub_1A97BCE34(v95), (v42 & 1) != 0))
    {
      v43 = *(v40 + 56) + 16 * v41;
      v44 = *v43;
      v45 = *(v43 + 8);
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v64 = v37;
    swift_endAccess();
    strcpy(v105, "no body for ");
    BYTE5(v105[1]) = 0;
    HIWORD(v105[1]) = -5120;
    sub_1A97C10E0(&qword_1EB3AC890, MEMORY[0x1E69695E0]);
    v65 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v65);

    v66 = v105[1];
    if (v44)
    {

      v105[0] = v82;
      v105[1] = v83;
      v103 = v84;
      v104 = v85;
      v101 = v37;
      v102 = v94;
      v44(&v99, v105, &v104, &v103, &v102, &v101);
      sub_1A967C46C(v44, v45);
      v73 = v99;
      v74 = v100;
      sub_1A97B40FC(v99, v100);
      v75 = v94;
      v76 = v94;
      v77 = v37;
      v91(v73, v74, v75, v64, 0);

      sub_1A97B43C4(v73, v74);
      sub_1A97B43C4(v73, v74);
    }

    else
    {
      v67 = v105[0];
      sub_1A97BCDE0();
      v68 = swift_allocError();
      *v69 = v67;
      v69[1] = v66;
      v69[2] = 0xD00000000000004CLL;
      v69[3] = 0x80000001A99E2F10;
      v69[4] = 206;
      v69[10] = 0x2000000000000000;
      swift_willThrow();

      v70 = objc_allocWithZone(type metadata accessor for _SFXPCError());
      v71 = v68;
      v72 = sub_1A99195C8(v68);

      v91(0, 0xF000000000000000, 0, 0, v72);
    }
  }

  else
  {
    v46 = sub_1A9976C00();
    (*(*(v46 - 8) + 56))(v98, 1, 1, v46);
    v47 = v97;
    v79(v90, v95, v97);
    v48 = v34;
    v49 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
    ObjectType = ((v95 + 15) & 0xFFFFFFFFFFFFFFF8);
    v51 = (ObjectType + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    v54 = v37;
    v55 = v94;
    *(v53 + 4) = v96;
    (*(v48 + 32))(&v53[v49], v90, v47);
    v56 = &v53[v50];
    v57 = v82;
    v58 = v83;
    *v56 = v82;
    v56[1] = v58;
    *&v53[v95] = v85;
    *(ObjectType + v53) = v84;
    *&v53[v51] = v55;
    *&v53[v52] = v54;
    v59 = &v53[(v52 + 15) & 0xFFFFFFFFFFFFFFF8];
    v60 = v92;
    *v59 = v91;
    v59[1] = v60;
    v61 = v55;
    v62 = v54;
    v63 = v96;
    sub_1A97B40FC(v57, v58);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1A97B4F40(0, 0, v98, &unk_1A9992420, v53);
  }
}

uint64_t sub_1A97BC43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v12;
  *(v8 + 136) = v11;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A97BC47C, 0, 0);
}

uint64_t sub_1A97BC47C()
{
  v15 = v0;
  v1 = OBJC_IVAR____SFXPCBlockContainer_asyncBlocksLock;
  v2 = swift_task_alloc();
  v3 = *(*(v0 + 80) + v1);
  *(v2 + 16) = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1A97C1124;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_1A97C1140(&v14);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v12 = *(v0 + 128);
  os_unfair_lock_unlock(v3 + 4);
  v9 = v14;
  *(v0 + 160) = *(&v14 + 1);

  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;
  *(v0 + 64) = v12;
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_1A97BC708;

  return v13(v0 + 32, v0 + 16, v0 + 48, v0 + 56, v0 + 64, v0 + 72);
}

uint64_t sub_1A97BC708()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1A97BC8F8;
  }

  else
  {
    *(v2 + 184) = *(v2 + 32);
    v3 = sub_1A97BC844;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A97BC844()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];
  v5 = v0[16];
  v4 = v0[17];
  sub_1A97B40FC(v2, v1);
  v3(v2, v1, v5, v4, 0);
  sub_1A97B43C4(v2, v1);
  sub_1A97B43C4(v2, v1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1A97BC8F8()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = objc_allocWithZone(type metadata accessor for _SFXPCError());
  v4 = v1;
  v5 = sub_1A99195C8(v1);

  v2(0, 0xF000000000000000, 0, 0, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1A97BC9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_1A97BCE34(a2), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  swift_endAccess();
  strcpy(v17, "no body for ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  sub_1A99762C0();
  sub_1A97C10E0(&qword_1EB3AC890, MEMORY[0x1E69695E0]);
  v13 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v13);

  v14 = v17[1];
  if (v12)
  {

    *a3 = v12;
    a3[1] = v11;
  }

  else
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v16 = v17[0];
    v16[1] = v14;
    v16[2] = 0xD00000000000004CLL;
    v16[3] = 0x80000001A99E2F10;
    v16[4] = 213;
    v16[10] = 0x2000000000000000;
    return swift_willThrow();
  }

  return result;
}

id _SFXPCBlockContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1A97BCD7C(uint64_t a1)
{
  sub_1A9977460();
  v2 = sub_1A9976730();

  return sub_1A97BCF74(a1, v2);
}

unint64_t sub_1A97BCDE0()
{
  result = qword_1EB3B3040[0];
  if (!qword_1EB3B3040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B3040);
  }

  return result;
}

unint64_t sub_1A97BCE34(uint64_t a1)
{
  sub_1A99762C0();
  sub_1A97C10E0(&unk_1EB3ACFB0, MEMORY[0x1E69695B8]);
  v2 = sub_1A9976730();

  return sub_1A97BD10C(a1, v2);
}

unint64_t sub_1A97BCEB8(uint64_t a1, uint64_t a2)
{
  sub_1A9977980();
  sub_1A99768D0();
  v4 = sub_1A99779B0();

  return sub_1A97BD2B8(a1, a2, v4);
}

unint64_t sub_1A97BCF30(uint64_t a1)
{
  v2 = sub_1A9977230();

  return sub_1A97BD370(a1, v2);
}

unint64_t sub_1A97BCF74(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1A9977460();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1A99767A0();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1A97BD10C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1A99762C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1A97C10E0(&qword_1EB3ACCD0, MEMORY[0x1E69695C8]);
      v15 = sub_1A99767A0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1A97BD2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A99777E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A97BD370(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A97C1030(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC589EE0](v9, a1);
      sub_1A97C108C(v9);
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

uint64_t sub_1A97BD438(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97BD530;

  return v6(a1);
}

uint64_t sub_1A97BD530()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1A97BD628(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BDCC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A97BD648(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1A97BD6AC()
{
  result = qword_1EB3AB6D0;
  if (!qword_1EB3AB6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB6D0);
  }

  return result;
}

uint64_t sub_1A97BD710(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v16 = v2[2];
  v7 = *(sub_1A99762C0() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  v12 = v2[11];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1A97B2638;

  return sub_1A97B77B4(a1, a2, v9, v10, v11, v12, v2 + v8, v16);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1A97BD960@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v11 = *(v2 + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(sub_1A99762C0() - 8);
  *&result = sub_1A97B9988(a1, *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + ((*(v9 + 80) + 96) & ~*(v9 + 80)), v5, v6, a2, v11, v7, v8).n128_u64[0];
  return result;
}

uint64_t sub_1A97BDA20(uint64_t a1)
{
  v4 = *(sub_1A99762C0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A98142B4(a1, v6, v7, v8, v1 + v5);
}

char *sub_1A97BDB18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BDDD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A97BDB38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1710, &qword_1A99919F0, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

void *sub_1A97BDB7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1708, &unk_1A99928D8, type metadata accessor for SFSandboxTokenURLPair);
  *v3 = result;
  return result;
}

void *sub_1A97BDBC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1718, &qword_1A99928E8, type metadata accessor for SFSecurityScopedURL);
  *v3 = result;
  return result;
}

char *sub_1A97BDC04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BDED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A97BDC24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BDFF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A97BDC44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BE12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A97BDC64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1688, &qword_1A999BA50, MEMORY[0x1E6966C00]);
  *v3 = result;
  return result;
}

char *sub_1A97BDCA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A97BE4F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A97BDCC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97BDDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1700, &qword_1A99928D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1A97BDED8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16F0, &qword_1A99928C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A97BDFF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1648, &qword_1A99927F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A97BE12C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1658, &qword_1A9992808);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1A97BE31C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A97BE4F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1178, &qword_1A99919C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A97BE618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1748, &qword_1A9992920);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1750, &qword_1A9992928);
    v7 = sub_1A99774B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v9, v5, &qword_1EB3B1748, &qword_1A9992920);
      result = sub_1A97BCE34(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1A99762C0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BE800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1730, &qword_1A9992908);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v11 = sub_1A99774B0();
    v12 = *(v6 + 48);
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);

    while (1)
    {
      sub_1A97C13A4(v13, v9, &qword_1EB3B1730, &qword_1A9992908);
      result = sub_1A97BCE34(v9);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v11[6];
      v19 = sub_1A99762C0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v17, v9, v19);
      *(v11[7] + 16 * v17) = *&v9[v12];
      v20 = v11[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v11[2] = v22;
      v13 += v14;
      if (!--v10)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1A97BE9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v28 - v7;
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____SFXPCBlockContainer_asyncBlocksLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1180, &qword_1A99919C8);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v3[v14] = v15;
  sub_1A99762B0();
  v16 = *(v9 + 16);
  v32 = v8;
  v16(&v3[OBJC_IVAR____SFXPCBlockContainer_uuid], v13, v8);
  v17 = &v3[OBJC_IVAR____SFXPCBlockContainer_name];
  v30 = a1;
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v31;
  v33 = a2;

  v19 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks] = sub_1A97BE800(MEMORY[0x1E69E7CC0], &qword_1EB3B1740, &qword_1A99984B0);
  *&v3[OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks] = sub_1A97BE800(v19, &qword_1EB3B1738, &unk_1A9992910);
  *&v3[OBJC_IVAR____SFXPCBlockContainer_containerRegistry] = v18;
  if (v18)
  {
    v20 = sub_1A9976C00();
    (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
    v21 = v29;
    v22 = v32;
    v16(v29, v13, v32);
    v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = v18;
    (*(v9 + 32))(&v24[v23], v21, v22);
    v25 = &v24[(v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
    v26 = v33;
    *v25 = v30;
    v25[1] = v26;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v35, &unk_1A9992900, v24);

    (*(v9 + 8))(v13, v22);
  }

  else
  {
    (*(v9 + 8))(v13, v32);
  }

  v36.receiver = v3;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t sub_1A97BED7C(uint64_t a1)
{
  v3 = *(sub_1A99762C0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v11 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = v1[4];
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A97BC43C(a1, v14, v13, v12, v1 + v4, v7, v8, v11);
}

unint64_t sub_1A97BEF14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16F8, &qword_1A99928C8);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A97BCEB8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16E0, &unk_1A99928B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B20, &unk_1A9998480);
    v7 = sub_1A99774B0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v9, v5, &unk_1EB3B16E0, &unk_1A99928B0);
      result = sub_1A97BCE34(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1A99762C0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C0, &unk_1A9992890);
    v3 = sub_1A99774B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A97C13A4(v4, &v13, &qword_1EB3B16C8, &unk_1A999CE90);
      v5 = v13;
      v6 = v14;
      result = sub_1A97BCEB8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A967C4DC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16A0, &qword_1A9992858);
    v7 = sub_1A99774B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v9, v5, &qword_1EB3B1660, &qword_1A9992810);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1A97BCEB8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1A99763B0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AF0, &qword_1A9992850);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1A97BCEB8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF670(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A97BCEB8(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF76C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1678, &qword_1A9992828);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1680, &unk_1A9992830);
    v7 = sub_1A99774B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v9, v5, &qword_1EB3B1678, &qword_1A9992828);
      result = sub_1A97BCE34(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1A99762C0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1A99763B0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1668, &qword_1A9992818);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1670, &qword_1A9992820);
    v7 = sub_1A99774B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v9, v5, &qword_1EB3B1668, &qword_1A9992818);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1A97BCEB8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1A99762C0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BFB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1640, &qword_1A99927F0);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A97BCEB8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BFC7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16D0, &unk_1A99928A0);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A97BCEB8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BFD80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1618, &qword_1A99927C8);
    v3 = sub_1A99774B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A97C13A4(v4, v13, &qword_1EB3B1620, &qword_1A99927D0);
      result = sub_1A97BCF30(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A967C4DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A97BFEBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2988;

  return sub_1A98140D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_1A97C0020()
{
  result = qword_1EB3AB5F0;
  if (!qword_1EB3AB5F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB3AB5F0);
  }

  return result;
}

unint64_t sub_1A97C0070(uint64_t a1)
{
  result = sub_1A99762C0();
  if (v2 <= 0x3F)
  {
    result = sub_1A97C0020();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for _SFXPCBlockContainer(uint64_t a1)
{
  result = qword_1ED717DC8;
  if (!qword_1ED717DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A97C02E4(uint64_t a1)
{
  result = sub_1A99762C0();
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

uint64_t sub_1A97C0468(id a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7, void (**a8)(const void *, void *, id, id, void))
{
  LODWORD(v90) = a6;
  v87 = a5;
  v94 = a4;
  v86 = a3;
  v85 = a2;
  v91 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = &v80 - v11;
  v12 = sub_1A99762C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v92 = swift_allocObject();
  *(v92 + 16) = a8;
  v18 = *&a7[OBJC_IVAR____SFXPCBlockContainer_name];
  v19 = *&a7[OBJC_IVAR____SFXPCBlockContainer_name + 8];
  v96 = a7;
  v20 = *&a7[OBJC_IVAR____SFXPCBlockContainer_containerRegistry];
  v89 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v21 = objc_allocWithZone(v89);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v84 = a8;
  _Block_copy(a8);
  sub_1A99762B0();
  v95 = v13;
  v22 = *(v13 + 16);
  v22(&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v17, v12);
  v23 = &v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v98 = v18;
  *v23 = v18;
  *(v23 + 1) = v19;
  v88 = v19;

  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v20;
  v83 = v14;
  v82 = v13 + 16;
  v81 = v22;
  if (v20)
  {
    v24 = sub_1A9976C00();
    v25 = v97;
    (*(*(v24 - 8) + 56))(v97, 1, 1, v24);
    v26 = v93;
    v22(v93, v17, v12);
    v27 = v95;
    v28 = (*(v95 + 80) + 40) & ~*(v95 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = v12;
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v20;
    (*(v27 + 32))(&v31[v28], v26, v30);
    v32 = &v31[v29];
    v33 = v88;
    *v32 = v98;
    *(v32 + 1) = v33;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v25, &unk_1A9992868, v31);

    v12 = v30;

    (*(v27 + 8))(v17, v30);
  }

  else
  {
    (*(v95 + 8))(v17, v12);
    v33 = v88;
  }

  v105.receiver = v21;
  v105.super_class = v89;
  v34 = objc_msgSendSuper2(&v105, sel_init);

  v35 = objc_allocWithZone(type metadata accessor for _SFXPCBlockContainer(0));
  v98 = sub_1A97BE9E8(v98, v33, v20);

  if (v90)
  {
    v36 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
    v37 = v96;
    swift_beginAccess();
    v38 = *&v37[v36];
    if (*(v38 + 16) && (v39 = sub_1A97BCE34(v91), (v40 & 1) != 0))
    {
      v41 = *(v38 + 56) + 16 * v39;
      v42 = *v41;
      v43 = *(v41 + 8);
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    swift_endAccess();
    strcpy(v104, "no body for ");
    BYTE5(v104[1]) = 0;
    HIWORD(v104[1]) = -5120;
    sub_1A97C10E0(&qword_1EB3AC890, MEMORY[0x1E69695E0]);
    v66 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v66);

    v67 = v104[1];
    if (v42)
    {

      v104[0] = v85;
      v104[1] = v86;
      v102 = v87;
      v103 = v94;
      v100 = v98;
      v101 = v34;
      v42(v99, v104, &v103, &v102, &v101, &v100);
      sub_1A967C46C(v42, v43);
      v74 = v99[0];
      v75 = v99[1];
      v76 = v34;
      v77 = v98;
      sub_1A97B40FC(v74, v75);
      v78 = sub_1A9976060();
      v84[2](v84, v78, v76, v77, 0);

      sub_1A97B43C4(v74, v75);
      sub_1A97B43C4(v74, v75);
    }

    else
    {
      v68 = v104[0];
      sub_1A97BCDE0();
      v69 = swift_allocError();
      *v70 = v68;
      v70[1] = v67;
      v70[2] = 0xD00000000000004CLL;
      v70[3] = 0x80000001A99E2F10;
      v70[4] = 206;
      v70[10] = 0x2000000000000000;
      swift_willThrow();

      v71 = objc_allocWithZone(type metadata accessor for _SFXPCError());
      v72 = v69;
      v73 = sub_1A99195C8(v69);

      (v84)[2](v84, 0, 0, 0, v73);
    }
  }

  else
  {
    v44 = sub_1A9976C00();
    (*(*(v44 - 8) + 56))(v97, 1, 1, v44);
    v45 = v93;
    v81(v93, v91, v12);
    v46 = v95;
    v47 = (*(v95 + 80) + 40) & ~*(v95 + 80);
    v48 = (v83 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    v90 = v12;
    v91 = v34;
    v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v46;
    v55 = v53;
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    v56 = v98;
    *(v53 + 4) = v96;
    (*(v54 + 32))(&v53[v47], v45, v90);
    v57 = (v55 + v48);
    v58 = v85;
    v59 = v86;
    *v57 = v85;
    v57[1] = v59;
    *(v55 + v49) = v94;
    *(v55 + v50) = v87;
    v60 = v91;
    v61 = v92;
    *(v55 + v51) = v91;
    *(v55 + v52) = v56;
    v62 = (v55 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v62 = sub_1A97C0D38;
    v62[1] = v61;
    v63 = v60;
    v64 = v56;
    v65 = v96;
    sub_1A97B40FC(v58, v59);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1A97B4F40(0, 0, v97, &unk_1A9992860, v55);
  }
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  sub_1A97B43C4(*(v0 + v4), *(v0 + v4 + 8));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A97C0E98(uint64_t a1)
{
  v3 = *(sub_1A99762C0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v11 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = v1[4];
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A97BC43C(a1, v14, v13, v12, v1 + v4, v7, v8, v11);
}

uint64_t sub_1A97C10E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A99762C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A97C1140@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A97C1268(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2988;

  return sub_1A9813FE4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1A97C13A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A97C140C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2988;

  return sub_1A97BD438(a1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A97C1554(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A97B40FC(result, a2);
  }

  return result;
}

uint64_t sub_1A97C1568@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X3>, id *a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  v13 = v6[7];
  v20[0] = v6[2];
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[5] = v13;
  v14 = *(type metadata accessor for SFXPCSyncBlock(0, v20) - 8);
  return sub_1A97BB34C(a1, a2, a3, a4, a5, v6 + ((*(v14 + 80) + 64) & ~*(v14 + 80)), v9, a6, v10, v11, v12, v13);
}

__n128 sub_1A97C1638(id *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v11 = *(v2 + 40);
  v12 = *(v2 + 24);
  v6 = *(v2 + 56);
  v7 = (*(*(v5 - 8) + 80) + 80) & ~*(*(v5 - 8) + 80);
  v8 = (*(*(v5 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1A99762C0() - 8);
  sub_1A97B7D14(a1, a2, *(v2 + 64), *(v2 + 72), v2 + v7, *(v2 + v8), v2 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80)), v5, v12, *(&v12 + 1), v11, *(&v11 + 1), v6);
  return result;
}

uint64_t sub_1A97C1758(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v17 = *(v5 + 32);
  v13 = *(v5 + 48);
  v14 = *(v5 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v15 = *(sub_1A9976BB0() - 8);
  return sub_1A97B808C(a1, a2, a3, a4, a5, v5 + ((*(v15 + 80) + 64) & ~*(v15 + 80)), v11, v12, v17, *(&v17 + 1), v13, v14);
}

uint64_t objectdestroy_72Tm(uint64_t (*a1)(void, _OWORD *))
{
  v2 = *(v1 + 2);
  v7[0] = *(v1 + 1);
  v7[1] = v2;
  v7[2] = *(v1 + 3);
  v3 = *(a1(0, v7) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = sub_1A99762C0();
  (*(*(v5 - 8) + 8))(&v1[v4], v5);

  return swift_deallocObject();
}

uint64_t sub_1A97C1994(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v8 = v7;
  v10 = v6[2];
  v11 = v6[3];
  v13 = v6[4];
  v12 = v6[5];
  v14 = v6[6];
  v15 = v6[7];
  v8[2] = v10;
  v8[3] = v11;
  v8[4] = v13;
  v8[5] = v12;
  v8[6] = v14;
  v8[7] = v15;
  v16 = *(type metadata accessor for SFXPCBlock(0, (v8 + 2)) - 8);
  v17 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v18 = swift_task_alloc();
  v8[8] = v18;
  *v18 = v8;
  v18[1] = sub_1A97C1AD8;

  return sub_1A97BA700(a1, a2, a3, a4, a5, a6, v6 + v17, v10);
}

uint64_t sub_1A97C1AD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SFAirDropReceive.Transfer.State.sfTransferState.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A97D82C0(v1, v7, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v20 = v7[4];
      v21 = v7[5];
      v22 = v7[7];
      v23 = v7[8];

      sub_1A97B4368(v20, v21);
      sub_1A97B43C4(v22, v23);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      v25 = &qword_1EB3B1798;
      v26 = &qword_1A99929A8;
      v27 = v7 + *(v24 + 48);
      goto LABEL_8;
    case 2:
      sub_1A97B06FC(v7, &qword_1EB3B17A8, &unk_1A9999470);
      return 5;
    case 3:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      sub_1A97C2280(*(v7 + *(v28 + 48)), *(v7 + *(v28 + 48) + 8), *(v7 + *(v28 + 48) + 16));
      goto LABEL_19;
    case 4:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
LABEL_19:

      sub_1A97C2220(v7 + *(v28 + 80), type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_20;
    case 5:
    case 6:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

      sub_1A97B06FC(v7 + *(v10 + 64), &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 5;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);

LABEL_20:
      sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 2;
    case 8:
    case 9:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      sub_1A97B06FC(v7 + *(v11 + 80), &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 7;
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);

      v12 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_13;
    case 11:
      v13 = v7[4];
      v14 = v7[5];
      v15 = v7[7];
      v16 = v7[8];

      sub_1A97B4368(v13, v14);
      sub_1A97B43C4(v15, v16);
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0) + 48);
      v18 = &qword_1EB3B17A8;
      v19 = &unk_1A9999470;
      goto LABEL_11;
    case 12:
    case 14:
      v12 = type metadata accessor for SFAirDropReceive.Transfer.State;
LABEL_13:
      sub_1A97C2220(v7, v12);
      return 4;
    case 13:
      v29 = v7[4];
      v30 = v7[5];
      v31 = v7[7];
      v32 = v7[8];

      sub_1A97B4368(v29, v30);
      sub_1A97B43C4(v31, v32);
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0) + 48);
      v18 = &qword_1EB3B1798;
      v19 = &qword_1A99929A8;
LABEL_11:
      sub_1A97B06FC(v7 + v17, v18, v19);
      return 4;
    case 15:
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998) + 48);

      sub_1A97C2220(v7 + v33, type metadata accessor for SFAirDropReceive.ItemDestination);
      goto LABEL_25;
    case 16:
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      sub_1A97C36C8(v7 + *(v34 + 48), v4, type metadata accessor for SFAirDropReceive.Failure);
      v35 = swift_getEnumCaseMultiPayload();
      if (v35 == 5)
      {
LABEL_25:
        sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        result = 8;
      }

      else if (v35 == 4)
      {
        sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        result = 3;
      }

      else
      {
        sub_1A97C2220(v4, type metadata accessor for SFAirDropReceive.Failure);
        sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        result = 9;
      }

      break;
    case 17:
      result = *v7;
      break;
    case 18:
    case 19:
    case 20:
      return result;
    case 21:
      result = 4;
      break;
    default:
      v25 = &qword_1EB3B17A8;
      v26 = &unk_1A9999470;
      v27 = v7;
LABEL_8:
      sub_1A97B06FC(v27, v25, v26);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_1A97C2220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A97C2280(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  return v3;
}

uint64_t SFAirDropReceive.Transfer.State.permissionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  sub_1A97D82C0(v2, v6, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v22 = v6[4];
      v23 = v6[5];
      v24 = v6[7];
      v25 = v6[8];

      sub_1A97B4368(v22, v23);
      sub_1A97B43C4(v24, v25);
      v26 = &qword_1EB3B17E0;
      v27 = &unk_1A99929F0;
      goto LABEL_24;
    case 3:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      sub_1A97C2280(*(v6 + *(v21 + 48)), *(v6 + *(v21 + 48) + 8), *(v6 + *(v21 + 48) + 16));
      goto LABEL_16;
    case 4:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
LABEL_16:

      sub_1A97C2220(v6 + *(v21 + 80), type metadata accessor for SFAirDrop.DeclineAction);
      v17 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_20;
    case 5:
    case 6:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

      v15 = *(v16 + 64);
      goto LABEL_5;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      goto LABEL_13;
    case 8:
    case 9:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      v15 = *(v14 + 80);
LABEL_5:
      sub_1A97D8380(v6 + v15, v10, &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v6, type metadata accessor for SFAirDropReceive.ItemDestination);
      goto LABEL_9;
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);

LABEL_13:

      v17 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_20;
    case 11:
      v18 = v6[4];
      v19 = v6[5];
      v20 = v6[8];
      v39 = v6[7];

      sub_1A97B4368(v18, v19);
      sub_1A97B43C4(v39, v20);
      v13 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0) + 48);
      goto LABEL_8;
    case 12:
    case 14:
      v17 = type metadata accessor for SFAirDropReceive.Transfer.State;
      goto LABEL_20;
    case 13:
      v33 = v6[4];
      v34 = v6[5];
      v35 = v6[7];
      v36 = v6[8];

      sub_1A97B4368(v33, v34);
      sub_1A97B43C4(v35, v36);
      v26 = &qword_1EB3B1790;
      v27 = &qword_1A99929A0;
LABEL_24:
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
      sub_1A97B06FC(v6 + *(v37 + 48), &qword_1EB3B1798, &qword_1A99929A8);
      goto LABEL_21;
    case 15:
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998) + 48);

      v29 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v30 = v6 + v28;
      goto LABEL_19;
    case 16:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      v29 = type metadata accessor for SFAirDropReceive.Failure;
      v30 = v6 + *(v31 + 48);
LABEL_19:
      sub_1A97C2220(v30, v29);
      v17 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_20:
      sub_1A97C2220(v6, v17);
LABEL_21:
      v12 = 1;
      break;
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
      return (*(v8 + 56))(a1, v12, 1, v7);
    default:
      v13 = v6;
LABEL_8:
      sub_1A97D8380(v13, v10, &qword_1EB3B17A8, &unk_1A9999470);
LABEL_9:
      sub_1A97D8380(v10, a1, &qword_1EB3B17A8, &unk_1A9999470);
      v12 = 0;
      break;
  }

  return (*(v8 + 56))(a1, v12, 1, v7);
}

uint64_t SFAirDropReceive.Transfer.State.contactResponsePermissionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  sub_1A97D82C0(v2, v6, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13)
  {
    v26 = a1;
    v18 = v6[4];
    v19 = v6[5];
    v20 = v6[7];
    v21 = v6[8];

    sub_1A97B4368(v18, v19);
    sub_1A97B43C4(v20, v21);
    v16 = &qword_1EB3B1790;
    v17 = &qword_1A99929A0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v26 = a1;
    v12 = v6[4];
    v13 = v6[5];
    v14 = v6[7];
    v15 = v6[8];

    sub_1A97B4368(v12, v13);
    sub_1A97B43C4(v14, v15);
    v16 = &qword_1EB3B17E0;
    v17 = &unk_1A99929F0;
LABEL_5:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    sub_1A97D8380(v6 + *(v22 + 48), v10, &qword_1EB3B1798, &qword_1A99929A8);
    v23 = v26;
    sub_1A97D8380(v10, v26, &qword_1EB3B1798, &qword_1A99929A8);
    return (*(v8 + 56))(v23, 0, 1, v7);
  }

  (*(v8 + 56))(a1, 1, 1, v7);
  return sub_1A97C2220(v6, type metadata accessor for SFAirDropReceive.Transfer.State);
}

uint64_t SFAirDropReceive.Transfer.State.cancelAction.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E8, &unk_1A99A4890);
  v1 = MEMORY[0x1EEE9AC00](v70);
  v68 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v66 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v5 = MEMORY[0x1EEE9AC00](v69);
  v66 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  v9 = MEMORY[0x1EEE9AC00](v72);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v16 = MEMORY[0x1EEE9AC00](v71);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v73 = &v66 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  v26 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v30 = *(v29 - 8);
  v74 = v29;
  v75 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v76, v28, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

        v51 = *(v50 + 64);
LABEL_22:
        v53 = v73;
        sub_1A97D8380(v28 + v51, v73, &qword_1EB3B17A8, &unk_1A9999470);
        sub_1A97C3508(v77);
        sub_1A97B06FC(v53, &qword_1EB3B17A8, &unk_1A9999470);
        v54 = type metadata accessor for SFAirDropReceive.ItemDestination;
        return sub_1A97C2220(v28, v54);
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_36;
      }

LABEL_21:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      v51 = *(v52 + 80);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 9)
    {
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 11)
    {
      if (EnumCaseMultiPayload == 13)
      {
        v35 = v28[4];
        v36 = v28[5];
        v37 = v28[7];
        v38 = v28[8];

        sub_1A97B4368(v35, v36);
        sub_1A97B43C4(v37, v38);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
        v40 = v66;
        sub_1A97D8380(v28 + *(v39 + 48), v66, &qword_1EB3B1798, &qword_1A99929A8);
        v41 = v68;
        sub_1A97C13A4(v40 + *(v69 + 60), v68, &qword_1EB3B17E8, &unk_1A99A4890);
        sub_1A97B06FC(v40, &qword_1EB3B1798, &qword_1A99929A8);
LABEL_18:
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*(v75 + 56))(v77, 1, 1, v74);
          v48 = &qword_1EB3B17E8;
          v49 = &unk_1A99A4890;
          return sub_1A97B06FC(v41, v48, v49);
        }

        v56 = &qword_1EB3B17F8;
        v57 = &qword_1A9992A08;
LABEL_35:
        v64 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v56, v57) + 80);
LABEL_38:
        v65 = v77;
        sub_1A97C36C8(v64, v77, type metadata accessor for SFAirDrop.DeclineAction);
        return (*(v75 + 56))(v65, 0, 1, v74);
      }

      goto LABEL_36;
    }

    v59 = v28[4];
    v60 = v28[5];
    v61 = v28[7];
    v62 = v28[8];

    sub_1A97B4368(v59, v60);
    sub_1A97B43C4(v61, v62);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
    sub_1A97D8380(v28 + *(v63 + 48), v18, &qword_1EB3B17A8, &unk_1A9999470);
    v41 = v67;
    sub_1A97C13A4(&v18[*(v71 + 60)], v67, &qword_1EB3B17F0, &qword_1A9992A00);
    sub_1A97B06FC(v18, &qword_1EB3B17A8, &unk_1A9999470);
LABEL_31:
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v75 + 56))(v77, 1, 1, v74);
      v48 = &qword_1EB3B17F0;
      v49 = &qword_1A9992A00;
      return sub_1A97B06FC(v41, v48, v49);
    }

    v56 = &qword_1EB3B1800;
    v57 = &qword_1A9992A10;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1A97D8380(v28, v25, &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C13A4(&v25[*(v71 + 60)], v15, &qword_1EB3B17F0, &qword_1A9992A00);
      sub_1A97B06FC(v25, &qword_1EB3B17A8, &unk_1A9999470);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v75 + 56))(v77, 1, 1, v74);
        return sub_1A97B06FC(v15, &qword_1EB3B17F0, &qword_1A9992A00);
      }

      v64 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80)];
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v42 = v4;
      v43 = v28[4];
      v44 = v28[5];
      v45 = v28[7];
      v46 = v28[8];

      sub_1A97B4368(v43, v44);
      sub_1A97B43C4(v45, v46);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      sub_1A97D8380(v28 + *(v47 + 48), v8, &qword_1EB3B1798, &qword_1A99929A8);
      v41 = v42;
      sub_1A97C13A4(&v8[*(v69 + 60)], v42, &qword_1EB3B17E8, &unk_1A99A4890);
      sub_1A97B06FC(v8, &qword_1EB3B1798, &qword_1A99929A8);
      goto LABEL_18;
    }

LABEL_36:
    (*(v75 + 56))(v77, 1, 1, v74);
    v54 = type metadata accessor for SFAirDropReceive.Transfer.State;
    return sub_1A97C2220(v28, v54);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1A97D8380(v28, v23, &qword_1EB3B17A8, &unk_1A9999470);
    v41 = v13;
    sub_1A97C13A4(&v23[*(v71 + 60)], v13, &qword_1EB3B17F0, &qword_1A9992A00);
    sub_1A97B06FC(v23, &qword_1EB3B17A8, &unk_1A9999470);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
    sub_1A97C2280(*(v28 + *(v34 + 48)), *(v28 + *(v34 + 48) + 8), *(v28 + *(v34 + 48) + 16));
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
  }

  sub_1A97C36C8(v28 + *(v34 + 80), v32, type metadata accessor for SFAirDrop.DeclineAction);
  sub_1A97C2220(v28, type metadata accessor for SFAirDropReceive.ItemDestination);
  v58 = v77;
  sub_1A97C36C8(v32, v77, type metadata accessor for SFAirDrop.DeclineAction);
  return (*(v75 + 56))(v58, 0, 1, v74);
}

uint64_t sub_1A97C3508@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  sub_1A97C13A4(v1 + *(v6 + 60), v5, &qword_1EB3B17F0, &qword_1A9992A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for SFAirDrop.DeclineAction(0);
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
    return sub_1A97B06FC(v5, &qword_1EB3B17F0, &qword_1A9992A00);
  }

  else
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10);
    sub_1A97C36C8(&v5[*(v9 + 80)], a1, type metadata accessor for SFAirDrop.DeclineAction);
    v10 = type metadata accessor for SFAirDrop.DeclineAction(0);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_1A97C36C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t SFAirDropReceive.Transfer.State.description.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A99762E0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1808, &qword_1A9992A18);
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v82 - v14;
  v16 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A97D82C0(v0, v18, type metadata accessor for SFAirDropReceive.Transfer.State);
  v19 = 0x646574616572632ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v18[4];
      v61 = v18[5];
      v62 = v18[7];
      v63 = v18[8];

      sub_1A97B4368(v60, v61);
      sub_1A97B43C4(v62, v63);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      sub_1A97D8380(v18 + *(v64 + 48), v12, &qword_1EB3B1798, &qword_1A99929A8);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v32 = 0x80000001A99E3480;
      v33 = 0xD00000000000002ALL;
      goto LABEL_10;
    case 2u:
      sub_1A97D8380(v18, v15, &qword_1EB3B17A8, &unk_1A9999470);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v20 = 0x80000001A99E3450;
      v21 = 0xD000000000000028;
      goto LABEL_13;
    case 3u:
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v41 = (v18 + *(v40 + 48));
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      v45 = v41[3];
      v46 = v41[4];

      v47 = *(v40 + 80);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v90 = 0xD000000000000018;
      v91 = 0x80000001A99E3430;
      v84 = v42;
      v85 = v43;
      v86 = v44;
      v87 = v45;
      v88 = v46;
      v48 = SFAirDrop.Progress.description.getter();
      v50 = v49;
      sub_1A97C2280(v42, v43, v44);
      MEMORY[0x1AC5895B0](v48, v50);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v90;
      v51 = v18 + v47;
      goto LABEL_19;
    case 4u:
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);

      v72 = *(v18 + *(v71 + 64));
      v73 = *(v71 + 80);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v84 = 0xD000000000000020;
      v85 = 0x80000001A99E3400;
      v89 = v72;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18, MEMORY[0x1E6968E60]);
      sub_1A99766D0();
      (*(v82 + 8))(v9, v7);
      MEMORY[0x1AC5895B0](v90, v91);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
      v51 = v18 + v73;
LABEL_19:
      sub_1A97C2220(v51, type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_28;
    case 5u:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

      sub_1A97D8380(v18 + *(v74 + 64), v15, &qword_1EB3B17A8, &unk_1A9999470);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v58 = 0x80000001A99E33D0;
      v59 = 0xD000000000000024;
      goto LABEL_25;
    case 6u:
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

      sub_1A97D8380(v18 + *(v67 + 64), v15, &qword_1EB3B17A8, &unk_1A9999470);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v58 = 0x80000001A99E3330;
      v59 = 0xD000000000000028;
      goto LABEL_25;
    case 7u:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);

      v80 = *(v18 + *(v79 + 64));
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v84 = 0xD000000000000015;
      v85 = 0x80000001A99E33B0;
      v89 = v80;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18, MEMORY[0x1E6968E60]);
      sub_1A99766D0();
      (*(v82 + 8))(v9, v7);
      MEMORY[0x1AC5895B0](v90, v91);
      goto LABEL_27;
    case 8u:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      sub_1A97D8380(v18 + *(v57 + 80), v15, &qword_1EB3B17A8, &unk_1A9999470);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v58 = 0x80000001A99E3390;
      v59 = 0xD000000000000018;
      goto LABEL_25;
    case 9u:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      sub_1A97D8380(v18 + *(v77 + 80), v15, &qword_1EB3B17A8, &unk_1A9999470);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v58 = 0x80000001A99E3360;
      v59 = 0xD000000000000023;
LABEL_25:
      v84 = v59;
      v85 = v58;
      v78 = sub_1A97D4358();
      MEMORY[0x1AC5895B0](v78);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
      sub_1A97B06FC(v15, &qword_1EB3B17A8, &unk_1A9999470);
      goto LABEL_28;
    case 0xAu:
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);

      v35 = *(v18 + *(v34 + 64));
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v84 = 0xD000000000000017;
      v85 = 0x80000001A99E3310;
      v36 = sub_1A9976020();
      v37 = MEMORY[0x1AC589770](v35, v36);
      v39 = v38;

      MEMORY[0x1AC5895B0](v37, v39);
LABEL_27:

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
LABEL_28:
      v25 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v26 = v18;
      goto LABEL_29;
    case 0xBu:
      v52 = v18[4];
      v53 = v18[5];
      v54 = v18[7];
      v55 = v18[8];

      sub_1A97B4368(v52, v53);
      sub_1A97B43C4(v54, v55);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      sub_1A97D8380(v18 + *(v56 + 48), v15, &qword_1EB3B17A8, &unk_1A9999470);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000030, 0x80000001A99E32A0);
      goto LABEL_14;
    case 0xCu:
      sub_1A97C2220(v18, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000019;
    case 0xDu:
      v27 = v18[4];
      v28 = v18[5];
      v29 = v18[7];
      v30 = v18[8];

      sub_1A97B4368(v27, v28);
      sub_1A97B43C4(v29, v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      sub_1A97D8380(v18 + *(v31 + 48), v12, &qword_1EB3B1798, &qword_1A99929A8);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v32 = 0x80000001A99E3250;
      v33 = 0xD00000000000002DLL;
LABEL_10:
      v84 = v33;
      v85 = v32;
      v65 = sub_1A97D4074();
      MEMORY[0x1AC5895B0](v65);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
      sub_1A97B06FC(v12, &qword_1EB3B1798, &qword_1A99929A8);
      return v19;
    case 0xEu:
      sub_1A97C2220(v18, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000013;
    case 0xFu:
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998) + 48);

      v23 = v83;
      sub_1A97C36C8(v18, v83, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v84 = 0xD000000000000017;
      v85 = 0x80000001A99E3210;
      v24 = SFAirDropReceive.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v24);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
      sub_1A97C2220(v23, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v25 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v26 = v18 + v22;
      goto LABEL_29;
    case 0x10u:
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990) + 48);
      v69 = v83;
      sub_1A97C36C8(v18, v83, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      sub_1A97C36C8(v18 + v68, v3, type metadata accessor for SFAirDropReceive.Failure);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](0x63697274656D202CLL, 0xEB00000000203A73);
      v70 = SFAirDropReceive.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v70);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
      sub_1A97C2220(v3, type metadata accessor for SFAirDropReceive.Failure);
      v25 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
      v26 = v69;
LABEL_29:
      sub_1A97C2220(v26, v25);
      break;
    case 0x11u:
      v75 = *v18;
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v84 = 0xD000000000000015;
      v85 = 0x80000001A99E31D0;
      v90 = v75;
      v76 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v76);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
      break;
    case 0x12u:
      return v19;
    case 0x13u:
      v19 = 0x6363416F7475612ELL;
      break;
    case 0x14u:
      v19 = 0xD000000000000011;
      break;
    case 0x15u:
      v19 = 0xD000000000000021;
      break;
    default:
      sub_1A97D8380(v18, v15, &qword_1EB3B17A8, &unk_1A9999470);
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A99772B0();

      v20 = 0x80000001A99E34B0;
      v21 = 0xD000000000000017;
LABEL_13:
      v84 = v21;
      v85 = v20;
LABEL_14:
      v66 = sub_1A97D4358();
      MEMORY[0x1AC5895B0](v66);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v19 = v84;
      sub_1A97B06FC(v15, &qword_1EB3B17A8, &unk_1A9999470);
      break;
  }

  return v19;
}

uint64_t SFAirDropReceive.Transfer.State.shortDescription.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A99762E0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1808, &qword_1A9992A18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - v7;
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A97D82C0(v0, v11, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574616572632ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v39 = v11[4];
      v40 = v11[5];
      v41 = v11[7];
      v42 = v11[8];

      sub_1A97B4368(v39, v40);
      sub_1A97B43C4(v41, v42);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      sub_1A97B06FC(v11 + *(v43 + 48), &qword_1EB3B1798, &qword_1A99929A8);
      return 0xD000000000000029;
    case 2:
      sub_1A97B06FC(v11, &qword_1EB3B17A8, &unk_1A9999470);
      return 0xD000000000000027;
    case 3:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v21 = (v11 + *(v20 + 48));
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = v21[4];

      v27 = *(v20 + 80);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1A99772B0();

      v62 = 0xD000000000000018;
      v63 = 0x80000001A99E3430;
      v56 = v22;
      v57 = v23;
      v58 = v24;
      v59 = v25;
      v60 = v26;
      v28 = SFAirDrop.Progress.description.getter();
      v30 = v29;
      sub_1A97C2280(v22, v23, v24);
      MEMORY[0x1AC5895B0](v28, v30);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v31 = v62;
      v32 = v11 + v27;
      goto LABEL_18;
    case 4:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);

      v48 = *(v11 + *(v47 + 64));
      v49 = *(v47 + 80);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1A99772B0();

      v56 = 0xD000000000000020;
      v57 = 0x80000001A99E3400;
      v61 = v48;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18, MEMORY[0x1E6968E60]);
      sub_1A99766D0();
      (*(v6 + 8))(v8, v5);
      MEMORY[0x1AC5895B0](v62, v63);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v31 = v56;
      v32 = v11 + v49;
LABEL_18:
      sub_1A97C2220(v32, type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_26;
    case 5:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

      sub_1A97B06FC(v11 + *(v50 + 64), &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000023;
    case 6:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

      sub_1A97B06FC(v11 + *(v44 + 64), &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000027;
    case 7:
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);

      v55 = *(v11 + *(v54 + 64));
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1A99772B0();

      v56 = 0xD000000000000015;
      v57 = 0x80000001A99E33B0;
      v61 = v55;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18, MEMORY[0x1E6968E60]);
      sub_1A99766D0();
      (*(v6 + 8))(v8, v5);
      MEMORY[0x1AC5895B0](v62, v63);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v31 = v56;
LABEL_26:
      v46 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_27;
    case 8:
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      sub_1A97B06FC(v11 + *(v38 + 80), &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000017;
    case 9:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      sub_1A97B06FC(v11 + *(v53 + 80), &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000022;
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);

      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0x676E696E65706F2ELL;
    case 11:
      v33 = v11[4];
      v34 = v11[5];
      v35 = v11[7];
      v36 = v11[8];

      sub_1A97B4368(v33, v34);
      sub_1A97B43C4(v35, v36);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      sub_1A97B06FC(v11 + *(v37 + 48), &qword_1EB3B17A8, &unk_1A9999470);
      return 0xD000000000000026;
    case 12:
      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000019;
    case 13:
      v15 = v11[4];
      v16 = v11[5];
      v17 = v11[7];
      v18 = v11[8];

      sub_1A97B4368(v15, v16);
      sub_1A97B43C4(v17, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      sub_1A97B06FC(v11 + *(v19 + 48), &qword_1EB3B1798, &qword_1A99929A8);
      return 0xD000000000000023;
    case 14:
      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000013;
    case 15:
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998) + 48);

      sub_1A97C2220(v11 + v14, type metadata accessor for SFAirDropReceive.ItemDestination);
      sub_1A97C2220(v11, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      goto LABEL_4;
    case 16:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      sub_1A97C36C8(v11 + *(v45 + 48), v3, type metadata accessor for SFAirDropReceive.Failure);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v31 = v56;
      sub_1A97C2220(v3, type metadata accessor for SFAirDropReceive.Failure);
      v46 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_27:
      sub_1A97C2220(v11, v46);
      result = v31;
      break;
    case 17:
      v51 = *v11;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1A99772B0();

      v56 = 0xD000000000000015;
      v57 = 0x80000001A99E31D0;
      v62 = v51;
      v52 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v52);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      result = v56;
      break;
    case 18:
      return result;
    case 19:
      result = 0x6363416F7475612ELL;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000021;
      break;
    default:
      sub_1A97B06FC(v11, &qword_1EB3B17A8, &unk_1A9999470);
LABEL_4:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t SFAirDropReceive.Transfer.State.currentProgressCount.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A97D82C0(v0, v3, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v20 = v3[4];
      v21 = v3[5];
      v22 = v3[7];
      v23 = v3[8];

      sub_1A97B4368(v20, v21);
      sub_1A97B43C4(v22, v23);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      v6 = &qword_1EB3B1798;
      v7 = &qword_1A99929A8;
      v8 = v3 + *(v24 + 48);
      goto LABEL_12;
    case 3:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v33 = (v3 + *(v32 + 48));
      v35 = *v33;
      v34 = v33[1];
      v37 = v33[2];
      v36 = v33[3];
      v38 = v33[4];

      if (v37 >> 62)
      {
        if (v37 >> 62 == 1)
        {
          sub_1A97C2280(v35, v34, v37);
          v39 = 900;
        }

        else
        {
          v46 = v37 != 0x8000000000000000 || (v34 | v35 | v36 | v38) != 0;
          v39 = v46 << 63 >> 63;
        }

        goto LABEL_41;
      }

      v39 = 450;
      if ((v37 & 1) != 0 || v34 < 1)
      {
LABEL_41:
        v47 = *(v32 + 80);
        v27 = v39;
        sub_1A97C2220(v3 + v47, type metadata accessor for SFAirDrop.DeclineAction);
        goto LABEL_42;
      }

      v44 = v36 * 1000.0 / v34 * 0.9;
      if (COERCE__INT64(fabs(v44)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_46;
      }

      if (v44 > -9.22337204e18)
      {
        if (v44 >= 9.22337204e18)
        {
          goto LABEL_48;
        }

        v39 = v44;
        goto LABEL_41;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    case 4:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);

      sub_1A97C2220(v3 + *(v19 + 80), type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_10;
    case 5:
    case 6:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);

      sub_1A97B06FC(v3 + *(v9 + 64), &qword_1EB3B17A8, &unk_1A9999470);
LABEL_10:
      sub_1A97C2220(v3, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 900;
    case 7:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);

      v26 = *(v3 + *(v25 + 64)) * 1000.0 * 0.1 + 900.0;
      if (COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v26 <= -9.22337204e18)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v26 >= 9.22337204e18)
      {
        goto LABEL_45;
      }

      v27 = v26;
LABEL_42:
      sub_1A97C2220(v3, type metadata accessor for SFAirDropReceive.ItemDestination);
      return v27;
    case 8:
    case 9:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);

      sub_1A97B06FC(v3 + *(v10 + 80), &qword_1EB3B17A8, &unk_1A9999470);
      goto LABEL_8;
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);

LABEL_8:
      v11 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_20;
    case 11:
      v12 = v3[4];
      v13 = v3[5];
      v14 = v3[7];
      v15 = v3[8];

      sub_1A97B4368(v12, v13);
      sub_1A97B43C4(v14, v15);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0) + 48);
      v17 = &qword_1EB3B17A8;
      v18 = &unk_1A9999470;
      goto LABEL_25;
    case 12:
    case 14:
      v11 = type metadata accessor for SFAirDropReceive.Transfer.State;
      goto LABEL_20;
    case 13:
      v40 = v3[4];
      v41 = v3[5];
      v42 = v3[7];
      v43 = v3[8];

      sub_1A97B4368(v40, v41);
      sub_1A97B43C4(v42, v43);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0) + 48);
      v17 = &qword_1EB3B1798;
      v18 = &qword_1A99929A8;
LABEL_25:
      sub_1A97B06FC(v3 + v16, v17, v18);
      return 1000;
    case 15:
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998) + 48);

      v29 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v30 = v3 + v28;
      goto LABEL_19;
    case 16:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      v29 = type metadata accessor for SFAirDropReceive.Failure;
      v30 = v3 + *(v31 + 48);
LABEL_19:
      sub_1A97C2220(v30, v29);
      v11 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_20:
      sub_1A97C2220(v3, v11);
      return 1000;
    case 17:
    case 21:
      return 1000;
    case 18:
    case 19:
    case 20:
      return result;
    default:
      v6 = &qword_1EB3B17A8;
      v7 = &unk_1A9999470;
      v8 = v3;
LABEL_12:
      sub_1A97B06FC(v8, v6, v7);
      return 0;
  }
}

unint64_t sub_1A97C5B0C(char a1)
{
  result = 0x64657461657263;
  switch(a1)
  {
    case 1:
      result = 0x656363416F747561;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
    case 9:
      result = 0xD000000000000026;
      break;
    case 6:
    case 20:
      result = 0x726566736E617274;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
    case 17:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0x6E6974726F706D69;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0x676E696E65706FLL;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000025;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A97C5D94(uint64_t a1)
{
  v2 = sub_1A97D802C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C5DD0(uint64_t a1)
{
  v2 = sub_1A97D802C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C5E0C()
{
  v1 = 0x74616E6974736564;
  v2 = 0x73736572676F7270;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    v1 = 0x726566736E617274;
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

uint64_t sub_1A97C5EA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DB410(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97C5ECC(uint64_t a1)
{
  v2 = sub_1A97D7E34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C5F08(uint64_t a1)
{
  v2 = sub_1A97D7E34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C5F44(uint64_t a1)
{
  v2 = sub_1A97D8080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C5F80(uint64_t a1)
{
  v2 = sub_1A97D8080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C5FC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DB584(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97C5FF8(uint64_t a1)
{
  v2 = sub_1A97D7804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6034(uint64_t a1)
{
  v2 = sub_1A97D7804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6070()
{
  v1 = *v0;
  v2 = 0x7363697274656DLL;
  v3 = 0x726566736E617274;
  v4 = 0x646574726F706D69;
  if (v1 != 4)
  {
    v4 = 0x525564656E65706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74616E6974736564;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
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

uint64_t sub_1A97C6150@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DBC50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97C6184(uint64_t a1)
{
  v2 = sub_1A97D7948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C61C0(uint64_t a1)
{
  v2 = sub_1A97D7948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C61FC(uint64_t a1)
{
  v2 = sub_1A97D80D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6238(uint64_t a1)
{
  v2 = sub_1A97D80D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6274()
{
  v1 = 0x726566736E617274;
  if (*v0 != 1)
  {
    v1 = 0x73736572676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1A97C62E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DBE6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97C630C(uint64_t a1)
{
  v2 = sub_1A97D7D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6348(uint64_t a1)
{
  v2 = sub_1A97D7D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C63A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A97C6438(uint64_t a1)
{
  v2 = sub_1A97D7B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6474(uint64_t a1)
{
  v2 = sub_1A97D7B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C64B0(uint64_t a1)
{
  v2 = sub_1A97D7858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C64EC(uint64_t a1)
{
  v2 = sub_1A97D7858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6528()
{
  v1 = 0x726566736E617274;
  if (*v0 != 1)
  {
    v1 = 0x646574726F706D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1A97C65A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DBF90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97C65C8(uint64_t a1)
{
  v2 = sub_1A97D7C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6604(uint64_t a1)
{
  v2 = sub_1A97D7C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6640()
{
  if (*v0)
  {
    return 0x7265766965636572;
  }

  else
  {
    return 0x6F437265646E6573;
  }
}

uint64_t sub_1A97C6694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xEF746361746E6F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C6780(uint64_t a1)
{
  v2 = sub_1A97D799C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C67BC(uint64_t a1)
{
  v2 = sub_1A97D799C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C67F8()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x7363697274656DLL;
  }
}

uint64_t sub_1A97C682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C6908(uint64_t a1)
{
  v2 = sub_1A97D78AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6944(uint64_t a1)
{
  v2 = sub_1A97D78AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A97C6980()
{
  v1 = 0x74616E6974736564;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    v1 = 0x73736572676F7270;
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

uint64_t sub_1A97C6A10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DC0B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97C6A38(uint64_t a1)
{
  v2 = sub_1A97D7E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6A74(uint64_t a1)
{
  v2 = sub_1A97D7E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6AC8(uint64_t a1)
{
  v2 = sub_1A97D7FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6B04(uint64_t a1)
{
  v2 = sub_1A97D7FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6B40(uint64_t a1)
{
  v2 = sub_1A97D7BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6B7C(uint64_t a1)
{
  v2 = sub_1A97D7BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6BB8()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x7265766965636572;
  }
}

uint64_t sub_1A97C6C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265766965636572 && a2 == 0xEF746361746E6F43;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E3BB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C6CF0(uint64_t a1)
{
  v2 = sub_1A97D7A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6D2C(uint64_t a1)
{
  v2 = sub_1A97D7A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6D68(uint64_t a1)
{
  v2 = sub_1A97D7C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6DA4(uint64_t a1)
{
  v2 = sub_1A97D7C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6DE0(uint64_t a1)
{
  v2 = sub_1A97D7CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6E1C(uint64_t a1)
{
  v2 = sub_1A97D7CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6E58(uint64_t a1)
{
  v2 = sub_1A97D7D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6E94(uint64_t a1)
{
  v2 = sub_1A97D7D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6ED0(uint64_t a1)
{
  v2 = sub_1A97D7DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6F0C(uint64_t a1)
{
  v2 = sub_1A97D7DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A97C6FD0(uint64_t a1)
{
  v2 = sub_1A97D7F30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C700C(uint64_t a1)
{
  v2 = sub_1A97D7F30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C7048()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x7265766965636572;
  }
}

uint64_t sub_1A97C7090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265766965636572 && a2 == 0xEF746361746E6F43;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C7174(uint64_t a1)
{
  v2 = sub_1A97D7F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C71B0(uint64_t a1)
{
  v2 = sub_1A97D7F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C71EC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F437265646E6573;
  }
}

uint64_t sub_1A97C7238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E3BB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C7324(uint64_t a1)
{
  v2 = sub_1A97D7B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C7360(uint64_t a1)
{
  v2 = sub_1A97D7B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Transfer.State.encode(to:)(void *a1)
{
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1820, &qword_1A9992A20);
  v307 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v290 = &v228 - v2;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1828, &qword_1A9992A28);
  v295 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v293 = &v228 - v3;
  v229 = type metadata accessor for SFAirDropReceive.Failure(0);
  MEMORY[0x1EEE9AC00](v229);
  v294 = &v228 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1830, &qword_1A9992A30);
  v298 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v297 = &v228 - v5;
  *&v316 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v6 = MEMORY[0x1EEE9AC00](v316);
  v292 = &v228 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v315 = &v228 - v8;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1838, &qword_1A9992A38);
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v287 = &v228 - v9;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1840, &qword_1A9992A40);
  v285 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v284 = &v228 - v10;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1848, &qword_1A9992A48);
  v305 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v272 = &v228 - v11;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1850, &qword_1A9992A50);
  v281[0] = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v280 = &v228 - v12;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1858, &qword_1A9992A58);
  v264 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v259 = &v228 - v13;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1860, &qword_1A9992A60);
  v306 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v274 = &v228 - v14;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1868, &qword_1A9992A68);
  v281[1] = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v279 = &v228 - v15;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1870, &qword_1A9992A70);
  v276 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v273 = &v228 - v16;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1878, &qword_1A9992A78);
  v304 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v268 = &v228 - v17;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1880, &qword_1A9992A80);
  v303 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v267 = &v228 - v18;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1888, &qword_1A9992A88);
  v302 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v258 = &v228 - v19;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1890, &qword_1A9992A90);
  v262 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v257 = &v228 - v20;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1898, &qword_1A9992A98);
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v256 = &v228 - v21;
  v228 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v22 = MEMORY[0x1EEE9AC00](v228);
  v255 = &v228 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v314 = &v228 - v24;
  v317 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  v25 = MEMORY[0x1EEE9AC00](v317);
  v271 = &v228 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v310 = &v228 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v313 = &v228 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v312 = &v228 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v251 = &v228 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v253 = &v228 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v252 = &v228 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v254 = &v228 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v311 = &v228 - v41;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18A0, &qword_1A9992AA0);
  v301 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v242 = &v228 - v42;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18A8, &qword_1A9992AA8);
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v228 - v43;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v44 = MEMORY[0x1EEE9AC00](v230);
  v247 = &v228 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v246 = &v228 - v46;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18B0, &qword_1A9992AB0);
  v300 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v228 - v47;
  *(&v316 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v48 = MEMORY[0x1EEE9AC00](*(&v316 + 1));
  v241 = &v228 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v309 = &v228 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v308 = &v228 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v244 = &v228 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v243 = &v228 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v238 = &v228 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v237 = &v228 - v60;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18B8, &qword_1A9992AB8);
  v235 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v234 = &v228 - v61;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18C0, &qword_1A9992AC0);
  v232 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v63 = &v228 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18C8, &qword_1A9992AC8);
  v231 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v228 - v65;
  v67 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v228 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18D0, &unk_1A9992AD0);
  v320 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322);
  v71 = &v228 - v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97D7804();
  v321 = v71;
  sub_1A9977AA0();
  sub_1A97D82C0(v319, v69, type metadata accessor for SFAirDropReceive.Transfer.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v163 = *(v69 + 3);
      v337 = *(v69 + 2);
      v338 = v163;
      v339 = *(v69 + 8);
      v164 = *(v69 + 1);
      v335 = *v69;
      v336 = v164;
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      v99 = v246;
      sub_1A97D8380(&v69[*(v165 + 48)], v246, &qword_1EB3B1798, &qword_1A99929A8);
      LOBYTE(v330) = 4;
      sub_1A97D7F84();
      v166 = v248;
      v82 = v322;
      v83 = v321;
      sub_1A9977640();
      v333 = v338;
      v334 = v339;
      v331 = v336;
      v332 = v337;
      v330 = v335;
      LOBYTE(v324) = 0;
      sub_1A97D7AEC();
      v167 = v250;
      v168 = v318;
      sub_1A99776E0();
      if (v168)
      {
        v169 = v281;
        goto LABEL_35;
      }

      LOBYTE(v330) = 1;
      sub_1A97AF974(&qword_1EB3B1938, &qword_1EB3B1798, &qword_1A99929A8, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      sub_1A99776E0();
      sub_1A97B44F8(&v335);
      v211 = v281;
      goto LABEL_66;
    case 2u:
      v72 = v238;
      sub_1A97D8380(v69, v238, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v335) = 5;
      sub_1A97D7F30();
      v73 = v242;
      v74 = v322;
      v75 = v321;
      sub_1A9977640();
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v76 = v245;
      sub_1A99776E0();
      v77 = &v328;
      goto LABEL_17;
    case 3u:
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v145 = &v69[v144[12]];
      v146 = v145[1];
      v313 = *v145;
      v315 = v146;
      v147 = v145[3];
      *&v316 = v145[2];
      *(&v316 + 1) = v147;
      v319 = v145[4];
      v148 = &v69[v144[16]];
      v149 = v148[1];
      v312 = *v148;
      v150 = v144[20];
      v151 = v311;
      sub_1A97C36C8(v69, v311, type metadata accessor for SFAirDropReceive.ItemDestination);
      v152 = v314;
      sub_1A97C36C8(&v69[v150], v314, type metadata accessor for SFAirDrop.DeclineAction);
      LOBYTE(v335) = 6;
      sub_1A97D7E88();
      v153 = v256;
      v154 = v322;
      v155 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v156 = v261;
      v157 = v318;
      sub_1A99776E0();
      if (v157)
      {
        sub_1A97C2280(v313, v315, v316);

        (*(v260 + 8))(v153, v156);
        sub_1A97C2220(v152, type metadata accessor for SFAirDrop.DeclineAction);
        sub_1A97C2220(v151, type metadata accessor for SFAirDropReceive.ItemDestination);
        return (*(v320 + 8))(v155, v154);
      }

      v318 = v149;
      v208 = v313;
      v209 = v315;
      *&v335 = v313;
      *(&v335 + 1) = v315;
      v210 = v316;
      v336 = v316;
      *&v337 = v319;
      LOBYTE(v330) = 1;
      sub_1A97D7EDC();
      sub_1A99776E0();
      sub_1A97C2280(v208, v209, v210);
      LOBYTE(v335) = 2;
      sub_1A9977690();
      v214 = v321;

      LOBYTE(v335) = 3;
      sub_1A97D7900(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
      v218 = v153;
      v219 = v314;
      sub_1A99776E0();
      v220 = v311;
      (*(v260 + 8))(v218, v156);
      sub_1A97C2220(v219, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A97C2220(v220, type metadata accessor for SFAirDropReceive.ItemDestination);
      v221 = *(v320 + 8);
      v222 = v214;
      v223 = v322;
      return v221(v222, v223);
    case 4u:
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v106 = *&v69[*(v105 + 48)];
      v107 = *(v105 + 80);
      v108 = v254;
      sub_1A97C36C8(v69, v254, type metadata accessor for SFAirDropReceive.ItemDestination);
      v109 = v255;
      sub_1A97C36C8(&v69[v107], v255, type metadata accessor for SFAirDrop.DeclineAction);
      LOBYTE(v335) = 7;
      sub_1A97D7E34();
      v110 = v257;
      v111 = v322;
      v112 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v113 = v263;
      v114 = v318;
      sub_1A99776E0();
      if (v114)
      {
      }

      else
      {
        *&v335 = v106;
        LOBYTE(v330) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        sub_1A99776E0();

        LOBYTE(v335) = 2;
        sub_1A99776B0();
        LOBYTE(v335) = 3;
        sub_1A97D7900(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
        sub_1A99776E0();
      }

      (*(v262 + 8))(v110, v113);
      sub_1A97C2220(v109, type metadata accessor for SFAirDrop.DeclineAction);
      v115 = v108;
      goto LABEL_43;
    case 5u:
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v176 = *&v69[*(v175 + 48)];
      v177 = *(v175 + 64);
      v159 = v252;
      sub_1A97C36C8(v69, v252, type metadata accessor for SFAirDropReceive.ItemDestination);
      v178 = v243;
      sub_1A97D8380(&v69[v177], v243, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v335) = 8;
      sub_1A97D7DE0();
      v179 = v258;
      v111 = v322;
      v112 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v180 = v265;
      v181 = v318;
      sub_1A99776E0();
      if (v181)
      {
      }

      else
      {
        *&v335 = v176;
        LOBYTE(v330) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        sub_1A99776E0();

        LOBYTE(v335) = 2;
        sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
        sub_1A99776E0();
      }

      v182 = &v329;
      goto LABEL_41;
    case 6u:
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v189 = *&v69[*(v188 + 48)];
      v190 = *(v188 + 64);
      v159 = v253;
      sub_1A97C36C8(v69, v253, type metadata accessor for SFAirDropReceive.ItemDestination);
      v178 = v244;
      sub_1A97D8380(&v69[v190], v244, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v335) = 9;
      sub_1A97D7D8C();
      v179 = v267;
      v111 = v322;
      v112 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v180 = v269;
      v191 = v318;
      sub_1A99776E0();
      if (v191)
      {
      }

      else
      {
        *&v335 = v189;
        LOBYTE(v330) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        sub_1A99776E0();

        LOBYTE(v335) = 2;
        sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
        sub_1A99776E0();
      }

      v182 = &v330;
LABEL_41:
      (*(*(v182 - 32) + 8))(v179, v180);
      sub_1A97B06FC(v178, &qword_1EB3B17A8, &unk_1A9999470);
      goto LABEL_42;
    case 7u:
      v158 = *&v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0) + 48)];
      v159 = v251;
      sub_1A97C36C8(v69, v251, type metadata accessor for SFAirDropReceive.ItemDestination);
      LOBYTE(v335) = 10;
      sub_1A97D7D38();
      v160 = v268;
      v111 = v322;
      v112 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v161 = v270;
      v162 = v318;
      sub_1A99776E0();
      if (v162)
      {
      }

      else
      {
        *&v335 = v158;
        LOBYTE(v330) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        sub_1A99776E0();

        LOBYTE(v335) = 2;
        sub_1A99776B0();
      }

      (*(v304 + 8))(v160, v161);
LABEL_42:
      v115 = v159;
LABEL_43:
      sub_1A97C2220(v115, type metadata accessor for SFAirDropReceive.ItemDestination);
      return (*(v320 + 8))(v112, v111);
    case 8u:
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v319 = *&v69[v200[12]];
      v201 = *&v69[v200[16]];
      v202 = v200[20];
      v123 = v312;
      sub_1A97C36C8(v69, v312, type metadata accessor for SFAirDropReceive.ItemDestination);
      v124 = v308;
      sub_1A97D8380(&v69[v202], v308, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v335) = 11;
      sub_1A97D7CE4();
      v125 = v273;
      v126 = v322;
      v127 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v128 = v277;
      v203 = v318;
      sub_1A99776E0();
      if (v203)
      {

        v130 = &v307;
        goto LABEL_50;
      }

      *&v335 = v319;
      LOBYTE(v330) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      v207 = v125;
      sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
      sub_1A99776E0();

      *&v335 = v201;
      LOBYTE(v330) = 2;
      sub_1A99776E0();

      LOBYTE(v335) = 3;
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v215 = v308;
      sub_1A99776E0();
      v216 = v312;
      v217 = &v307;
      goto LABEL_73;
    case 9u:
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v319 = *&v69[v120[12]];
      v121 = *&v69[v120[16]];
      v122 = v120[20];
      v123 = v313;
      sub_1A97C36C8(v69, v313, type metadata accessor for SFAirDropReceive.ItemDestination);
      v124 = v309;
      sub_1A97D8380(&v69[v122], v309, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v335) = 12;
      sub_1A97D7C90();
      v125 = v279;
      v126 = v322;
      v127 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v128 = v282;
      v129 = v318;
      sub_1A99776E0();
      if (v129)
      {

        v130 = &v313;
LABEL_50:
        (*(*(v130 - 32) + 8))(v125, v128);
        sub_1A97B06FC(v124, &qword_1EB3B17A8, &unk_1A9999470);
        goto LABEL_51;
      }

      *&v335 = v319;
      LOBYTE(v330) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      v207 = v125;
      sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
      sub_1A99776E0();

      *&v335 = v121;
      LOBYTE(v330) = 2;
      sub_1A99776E0();

      LOBYTE(v335) = 3;
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v215 = v309;
      sub_1A99776E0();
      v216 = v313;
      v217 = &v313;
LABEL_73:
      (*(*(v217 - 32) + 8))(v207, v128);
      sub_1A97B06FC(v215, &qword_1EB3B17A8, &unk_1A9999470);
      v204 = v216;
      goto LABEL_52;
    case 0xAu:
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v195 = *&v69[*(v194 + 48)];
      v196 = *&v69[*(v194 + 64)];
      v123 = v310;
      sub_1A97C36C8(v69, v310, type metadata accessor for SFAirDropReceive.ItemDestination);
      LOBYTE(v335) = 13;
      sub_1A97D7C3C();
      v197 = v274;
      v126 = v322;
      v127 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v198 = v278;
      v199 = v318;
      sub_1A99776E0();
      if (v199)
      {

        (*(v306 + 8))(v197, v198);
LABEL_51:
        v204 = v123;
LABEL_52:
        sub_1A97C2220(v204, type metadata accessor for SFAirDropReceive.ItemDestination);
        return (*(v320 + 8))(v127, v126);
      }

      else
      {
        *&v335 = v195;
        LOBYTE(v330) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        sub_1A99776E0();

        *&v335 = v196;
        LOBYTE(v330) = 2;
        sub_1A99776E0();
        (*(v306 + 8))(v197, v198);
        sub_1A97C2220(v310, type metadata accessor for SFAirDropReceive.ItemDestination);
        (*(v320 + 8))(v127, v126);
      }

    case 0xBu:
      v96 = *(v69 + 3);
      v337 = *(v69 + 2);
      v338 = v96;
      v339 = *(v69 + 8);
      v97 = *(v69 + 1);
      v335 = *v69;
      v336 = v97;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      v99 = v241;
      sub_1A97D8380(&v69[*(v98 + 48)], v241, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v330) = 15;
      sub_1A97D7B94();
      v100 = v280;
      v82 = v322;
      v83 = v321;
      sub_1A9977640();
      v333 = v338;
      v334 = v339;
      v331 = v336;
      v332 = v337;
      v330 = v335;
      LOBYTE(v324) = 0;
      sub_1A97D7AEC();
      v101 = v283;
      v102 = v318;
      sub_1A99776E0();
      if (v102)
      {
        (*(v281[0] + 8))(v100, v101);
        v103 = &qword_1EB3B17A8;
        v104 = &unk_1A9999470;
        goto LABEL_36;
      }

      LOBYTE(v330) = 1;
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      sub_1A99776E0();
      sub_1A97B44F8(&v335);
      (*(v281[0] + 8))(v100, v101);
      v205 = &qword_1EB3B17A8;
      v206 = &unk_1A9999470;
      goto LABEL_67;
    case 0xCu:
      v116 = *(v69 + 3);
      v337 = *(v69 + 2);
      v338 = v116;
      v339 = *(v69 + 8);
      v117 = *(v69 + 1);
      v335 = *v69;
      v336 = v117;
      LOBYTE(v330) = 16;
      sub_1A97D7B40();
      v118 = v272;
      v82 = v322;
      v83 = v321;
      sub_1A9977640();
      v333 = v338;
      v334 = v339;
      v331 = v336;
      v332 = v337;
      v330 = v335;
      sub_1A97D7AEC();
      v119 = v275;
      sub_1A99776E0();
      (*(v305 + 8))(v118, v119);
      goto LABEL_37;
    case 0xDu:
      v184 = *(v69 + 3);
      v337 = *(v69 + 2);
      v338 = v184;
      v339 = *(v69 + 8);
      v185 = *(v69 + 1);
      v335 = *v69;
      v336 = v185;
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      v99 = v247;
      sub_1A97D8380(&v69[*(v186 + 48)], v247, &qword_1EB3B1798, &qword_1A99929A8);
      LOBYTE(v330) = 17;
      sub_1A97D7A98();
      v166 = v284;
      v82 = v322;
      v83 = v321;
      sub_1A9977640();
      v333 = v338;
      v334 = v339;
      v331 = v336;
      v332 = v337;
      v330 = v335;
      LOBYTE(v324) = 0;
      sub_1A97D7AEC();
      v167 = v286;
      v187 = v318;
      sub_1A99776E0();
      if (v187)
      {
        v169 = &v316 + 8;
LABEL_35:
        (*(*(v169 - 32) + 8))(v166, v167);
        v103 = &qword_1EB3B1798;
        v104 = &qword_1A99929A8;
LABEL_36:
        sub_1A97B06FC(v99, v103, v104);
LABEL_37:
        (*(v320 + 8))(v83, v82);
        return sub_1A97B44F8(&v335);
      }

      else
      {
        LOBYTE(v330) = 1;
        sub_1A97AF974(&qword_1EB3B1938, &qword_1EB3B1798, &qword_1A99929A8, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
        sub_1A99776E0();
        sub_1A97B44F8(&v335);
        v211 = &v316 + 8;
LABEL_66:
        (*(*(v211 - 32) + 8))(v166, v167);
        v205 = &qword_1EB3B1798;
        v206 = &qword_1A99929A8;
LABEL_67:
        sub_1A97B06FC(v99, v205, v206);
LABEL_68:
        v221 = *(v320 + 8);
        v222 = v83;
        v223 = v82;
        return v221(v222, v223);
      }

    case 0xEu:
      v86 = *(v69 + 2);
      v333 = *(v69 + 3);
      v334 = *(v69 + 8);
      v87 = *v69;
      v331 = *(v69 + 1);
      v332 = v86;
      v330 = v87;
      v88 = *(v69 + 88);
      v89 = *(v69 + 120);
      v337 = *(v69 + 104);
      v338 = v89;
      v339 = *(v69 + 17);
      v335 = *(v69 + 72);
      v336 = v88;
      LOBYTE(v324) = 18;
      sub_1A97D799C();
      v90 = v287;
      v91 = v322;
      v92 = v321;
      sub_1A9977640();
      v326 = v332;
      v327 = v333;
      v328 = v334;
      v325 = v331;
      v324 = v330;
      v323 = 0;
      sub_1A97D79F0();
      v93 = v289;
      v94 = v318;
      sub_1A99776E0();
      if (v94)
      {
        sub_1A97D7A44(&v335);
        (*(v288 + 8))(v90, v93);
        (*(v320 + 8))(v92, v91);
        return sub_1A97D7A44(&v330);
      }

      else
      {
        v326 = v337;
        v327 = v338;
        v328 = v339;
        v325 = v336;
        v324 = v335;
        v323 = 1;
        sub_1A99776E0();
        sub_1A97D7A44(&v330);
        (*(v288 + 8))(v90, v93);
        (*(v320 + 8))(v92, v91);
        return sub_1A97D7A44(&v335);
      }

    case 0xFu:
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v132 = v131[12];
      v133 = &v69[v131[16]];
      v135 = *v133;
      v134 = v133[1];
      v313 = v135;
      v314 = v134;
      v319 = *&v69[v131[20]];
      *(&v316 + 1) = *&v69[v131[24]];
      v136 = *&v69[v131[28]];
      v137 = v315;
      sub_1A97C36C8(v69, v315, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v138 = v271;
      sub_1A97C36C8(&v69[v132], v271, type metadata accessor for SFAirDropReceive.ItemDestination);
      LOBYTE(v335) = 19;
      sub_1A97D7948();
      v139 = v297;
      v140 = v322;
      v141 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3B18F0, type metadata accessor for SFAirDropReceive.Transfer.Metrics, &protocol conformance descriptor for SFAirDropReceive.Transfer.Metrics);
      v142 = v299;
      v143 = v318;
      sub_1A99776E0();
      if (v143)
      {

        (*(v298 + 8))(v139, v142);
        sub_1A97C2220(v138, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97C2220(v137, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        return (*(v320 + 8))(v141, v140);
      }

      else
      {
        LOBYTE(v335) = 1;
        sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
        sub_1A99776E0();
        LOBYTE(v335) = 2;
        sub_1A9977650();
        v212 = *(&v316 + 1);
        v213 = v319;

        *&v335 = v213;
        LOBYTE(v330) = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        sub_1A99776E0();

        *&v335 = v212;
        LOBYTE(v330) = 4;
        sub_1A99776E0();

        *&v335 = v136;
        LOBYTE(v330) = 5;
        sub_1A99776E0();
        v224 = v142;
        v225 = v315;
        v226 = v322;
        v227 = v321;
        (*(v298 + 8))(v139, v224);
        sub_1A97C2220(v138, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97C2220(v225, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        (*(v320 + 8))(v227, v226);
      }

    case 0x10u:
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990) + 48);
      v79 = v292;
      sub_1A97C36C8(v69, v292, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v80 = v294;
      sub_1A97C36C8(&v69[v78], v294, type metadata accessor for SFAirDropReceive.Failure);
      LOBYTE(v335) = 20;
      sub_1A97D78AC();
      v81 = v293;
      v82 = v322;
      v83 = v321;
      sub_1A9977640();
      LOBYTE(v335) = 0;
      sub_1A97D7900(&qword_1EB3B18F0, type metadata accessor for SFAirDropReceive.Transfer.Metrics, &protocol conformance descriptor for SFAirDropReceive.Transfer.Metrics);
      v84 = v296;
      v85 = v318;
      sub_1A99776E0();
      if (!v85)
      {
        LOBYTE(v335) = 1;
        sub_1A97D7900(&qword_1EB3B18F8, type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        sub_1A99776E0();
      }

      (*(v295 + 8))(v81, v84);
      sub_1A97C2220(v80, type metadata accessor for SFAirDropReceive.Failure);
      sub_1A97C2220(v79, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      goto LABEL_68;
    case 0x11u:
      LOBYTE(v335) = 21;
      sub_1A97D7858();
      v170 = v290;
      v111 = v322;
      v112 = v321;
      sub_1A9977640();
      v171 = v291;
      sub_1A99776D0();
      (*(v307 + 8))(v170, v171);
      return (*(v320 + 8))(v112, v111);
    case 0x12u:
      LOBYTE(v335) = 0;
      sub_1A97D80D4();
      v192 = v322;
      v193 = v321;
      sub_1A9977640();
      (*(v231 + 8))(v66, v64);
      return (*(v320 + 8))(v193, v192);
    case 0x13u:
      LOBYTE(v335) = 1;
      sub_1A97D8080();
      v173 = v322;
      v174 = v321;
      sub_1A9977640();
      (*(v232 + 8))(v63, v233);
      return (*(v320 + 8))(v174, v173);
    case 0x14u:
      LOBYTE(v335) = 2;
      sub_1A97D802C();
      v172 = v234;
      v173 = v322;
      v174 = v321;
      sub_1A9977640();
      (*(v235 + 8))(v172, v236);
      return (*(v320 + 8))(v174, v173);
    case 0x15u:
      LOBYTE(v335) = 14;
      sub_1A97D7BE8();
      v183 = v259;
      v173 = v322;
      v174 = v321;
      sub_1A9977640();
      (*(v264 + 8))(v183, v266);
      return (*(v320 + 8))(v174, v173);
    default:
      v72 = v237;
      sub_1A97D8380(v69, v237, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v335) = 3;
      sub_1A97D7FD8();
      v73 = v239;
      v74 = v322;
      v75 = v321;
      sub_1A9977640();
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v76 = v240;
      sub_1A99776E0();
      v77 = &v327 + 8;
LABEL_17:
      (*(*(v77 - 32) + 8))(v73, v76);
      sub_1A97B06FC(v72, &qword_1EB3B17A8, &unk_1A9999470);
      return (*(v320 + 8))(v75, v74);
  }
}

uint64_t SFAirDropReceive.Transfer.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v306 = a2;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B19E0, &qword_1A9992AE0);
  v270 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v309 = &v224 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B19E8, &qword_1A9992AE8);
  v5 = *(v4 - 8);
  v271 = v4;
  v272 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v308 = &v224 - v6;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B19F0, &qword_1A9992AF0);
  v276 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v305 = &v224 - v7;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B19F8, &qword_1A9992AF8);
  v266 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v299 = &v224 - v8;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A00, &qword_1A9992B00);
  v267 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v304 = &v224 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A08, &qword_1A9992B08);
  v257 = *(v10 - 8);
  v258 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v297 = &v224 - v11;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A10, &qword_1A9992B10);
  v262 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v303 = &v224 - v12;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A18, &qword_1A9992B18);
  v247 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v294 = &v224 - v13;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A20, &qword_1A9992B20);
  v261 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v298 = &v224 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A28, &qword_1A9992B28);
  v264 = *(v15 - 8);
  v265 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v301 = &v224 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A30, &qword_1A9992B30);
  v259 = *(v17 - 8);
  v260 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v300 = &v224 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A38, &qword_1A9992B38);
  v255 = *(v19 - 8);
  v256 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v296 = &v224 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A40, &qword_1A9992B40);
  v253 = *(v21 - 8);
  v254 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v295 = &v224 - v22;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A48, &qword_1A9992B48);
  v248 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v293 = &v224 - v23;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A50, &qword_1A9992B50);
  v250 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v292 = &v224 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A58, &qword_1A9992B58);
  v274 = *(v25 - 8);
  v275 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v291 = &v224 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A60, &qword_1A9992B60);
  v244 = *(v27 - 8);
  v245 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v290 = &v224 - v28;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A68, &qword_1A9992B68);
  v246 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v302 = &v224 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A70, &qword_1A9992B70);
  v240 = *(v30 - 8);
  v241 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v289 = &v224 - v31;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A78, &qword_1A9992B78);
  v238 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v288 = &v224 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A80, &qword_1A9992B80);
  v234 = *(v33 - 8);
  v235 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v287 = &v224 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A88, &qword_1A9992B88);
  v232 = *(v35 - 8);
  v233 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v286 = &v224 - v36;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1A90, &unk_1A9992B90);
  v310 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v315 = &v224 - v37;
  v311 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v38 = MEMORY[0x1EEE9AC00](v311);
  v231 = (&v224 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x1EEE9AC00](v38);
  v239 = &v224 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v285 = &v224 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v229 = &v224 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v237 = &v224 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v230 = &v224 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v236 = &v224 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v280 = &v224 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v243 = &v224 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v242 = &v224 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v277 = &v224 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v279 = &v224 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v278 = &v224 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v281 = &v224 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v224 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v224 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v224 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72);
  v77 = &v224 - v76;
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v224 - v78;
  v80 = a1[3];
  v314 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v80);
  sub_1A97D7804();
  v81 = v313;
  sub_1A9977A70();
  if (v81)
  {
LABEL_8:
    v98 = v314;
    return __swift_destroy_boxed_opaque_existential_0Tm(v98);
  }

  v224 = v77;
  v225 = v71;
  v226 = v74;
  v227 = v68;
  v82 = v307;
  v83 = v309;
  v84 = v308;
  v313 = 0;
  v228 = v79;
  v85 = v312;
  v86 = v315;
  v87 = sub_1A9977620();
  v88 = (2 * *(v87 + 16)) | 1;
  v335 = v87;
  v336 = v87 + 32;
  v337 = 0;
  v338 = v88;
  v89 = sub_1A97AB7CC();
  if (v337 != v338 >> 1)
  {
LABEL_6:
    v94 = sub_1A9977300();
    swift_allocError();
    v95 = v86;
    v97 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v97 = v311;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v94 - 8) + 104))(v97, *MEMORY[0x1E69E6AF8], v94);
    swift_willThrow();
    (*(v310 + 8))(v95, v85);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v89)
  {
    case 0:
      LOBYTE(v316) = 0;
      sub_1A97D80D4();
      v90 = v286;
      v91 = v86;
      v92 = v313;
      sub_1A9977530();
      if (v92)
      {
        goto LABEL_44;
      }

      v313 = 0;
      (*(v232 + 8))(v90, v233);
      (*(v310 + 8))(v86, v85);
      swift_unknownObjectRelease();
      v93 = v228;
      goto LABEL_32;
    case 1:
      LOBYTE(v316) = 1;
      sub_1A97D8080();
      v134 = v287;
      v91 = v86;
      v135 = v313;
      sub_1A9977530();
      if (v135)
      {
        goto LABEL_44;
      }

      v313 = 0;
      (*(v234 + 8))(v134, v235);
      (*(v310 + 8))(v86, v85);
      swift_unknownObjectRelease();
      v93 = v228;
      goto LABEL_32;
    case 2:
      LOBYTE(v316) = 2;
      sub_1A97D802C();
      v119 = v288;
      v101 = v86;
      v120 = v313;
      sub_1A9977530();
      if (v120)
      {
        goto LABEL_50;
      }

      v313 = 0;
      (*(v238 + 8))(v119, v82);
      (*(v310 + 8))(v86, v85);
      swift_unknownObjectRelease();
      v93 = v228;
      goto LABEL_32;
    case 3:
      LOBYTE(v316) = 3;
      sub_1A97D7FD8();
      v124 = v289;
      v91 = v86;
      v125 = v313;
      sub_1A9977530();
      if (v125)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97AF974(&qword_1EB3B1AC8, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v126 = v224;
      v127 = v241;
      sub_1A99775F0();
      v128 = v310;
      v313 = 0;
      (*(v240 + 8))(v124, v127);
      (*(v128 + 8))(v91, v85);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v191 = v126;
      goto LABEL_88;
    case 4:
      LOBYTE(v316) = 4;
      sub_1A97D7F84();
      v91 = v86;
      v111 = v313;
      sub_1A9977530();
      if (v111)
      {
        goto LABEL_44;
      }

      LOBYTE(v316) = 0;
      sub_1A97D8218();
      v112 = v226;
      sub_1A99775F0();
      v113 = v310;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
      LOBYTE(v333[0]) = 1;
      sub_1A97AF974(&qword_1EB3B1AC0, &qword_1EB3B1798, &qword_1A99929A8, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v172 = v302;
      v173 = v282;
      sub_1A99775F0();
      v313 = 0;
      (*(v246 + 8))(v172, v173);
      (*(v113 + 8))(v315, v85);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v191 = v112;
      goto LABEL_88;
    case 5:
      LOBYTE(v316) = 5;
      sub_1A97D7F30();
      v142 = v290;
      v143 = v313;
      sub_1A9977530();
      if (v143)
      {
        (*(v310 + 8))(v86, v85);
        goto LABEL_7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97AF974(&qword_1EB3B1AC8, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v162 = v225;
      v163 = v245;
      sub_1A99775F0();
      v164 = v310;
      v313 = 0;
      (*(v244 + 8))(v142, v163);
      (*(v164 + 8))(v315, v85);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v191 = v162;
      goto LABEL_88;
    case 6:
      LOBYTE(v316) = 6;
      sub_1A97D7E88();
      v151 = v291;
      v91 = v86;
      v152 = v313;
      sub_1A9977530();
      if (v152)
      {
        goto LABEL_44;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      sub_1A99775F0();
      v165 = v310;
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      LOBYTE(v316) = 1;
      sub_1A97D826C();
      sub_1A99775F0();
      LOBYTE(v316) = 2;
      v195 = sub_1A99775A0();
      v214 = &v227[*(v187 + 64)];
      *v214 = v195;
      v214[1] = v215;
      v309 = v215;
      type metadata accessor for SFAirDrop.DeclineAction(0);
      LOBYTE(v316) = 3;
      sub_1A97D7900(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
      v216 = v275;
      sub_1A99775F0();
      v313 = 0;
      (*(v274 + 8))(v151, v216);
      (*(v165 + 8))(v315, v85);
      swift_unknownObjectRelease();
      v169 = v227;
      goto LABEL_69;
    case 7:
      LOBYTE(v316) = 7;
      sub_1A97D7E34();
      v129 = v292;
      v130 = v86;
      v131 = v313;
      sub_1A9977530();
      if (v131)
      {
        goto LABEL_48;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v132 = v252;
      sub_1A99775F0();
      v133 = v310;
      v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      LOBYTE(v316) = 1;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      sub_1A99775F0();
      v194 = v313;
      LOBYTE(v316) = 2;
      sub_1A99775C0();
      v211 = v281;
      *&v281[*(v194 + 64)] = v212;
      type metadata accessor for SFAirDrop.DeclineAction(0);
      v313 = 0;
      LOBYTE(v316) = 3;
      sub_1A97D7900(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
      v213 = v313;
      sub_1A99775F0();
      v313 = v213;
      if (v213)
      {
        (*(v250 + 8))(v129, v132);
        (*(v133 + 8))(v315, v85);
        swift_unknownObjectRelease();

        sub_1A97C2220(v211, type metadata accessor for SFAirDropReceive.ItemDestination);
        goto LABEL_63;
      }

      (*(v250 + 8))(v129, v132);
      (*(v133 + 8))(v315, v85);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v191 = v211;
      goto LABEL_88;
    case 8:
      LOBYTE(v316) = 8;
      sub_1A97D7DE0();
      v115 = v293;
      v101 = v86;
      v159 = v313;
      sub_1A9977530();
      if (v159)
      {
        goto LABEL_50;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v117 = v251;
      sub_1A99775F0();
      v118 = v310;
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v188 = *(v309 + 12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      v313 = 0;
      LOBYTE(v316) = 1;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      v308 = v188;
      v189 = v313;
      sub_1A99775F0();
      if (v189)
      {
        (*(v248 + 8))(v115, v117);
        (*(v118 + 8))(v101, v85);
        swift_unknownObjectRelease();
        v177 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v178 = v278;
        goto LABEL_74;
      }

      v313 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v316) = 2;
      sub_1A97AF974(&qword_1EB3B1AC8, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v185 = v278;
      v203 = v313;
      sub_1A99775F0();
      if (v203)
      {
        v193 = v248;
        goto LABEL_72;
      }

      v313 = 0;
      (*(v248 + 8))(v115, v117);
      (*(v118 + 8))(v315, v85);
      swift_unknownObjectRelease();
      goto LABEL_84;
    case 9:
      LOBYTE(v316) = 9;
      sub_1A97D7D8C();
      v115 = v295;
      v101 = v86;
      v116 = v313;
      sub_1A9977530();
      if (v116)
      {
        goto LABEL_50;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v117 = v254;
      sub_1A99775F0();
      v118 = v310;
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v175 = *(v309 + 12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      v313 = 0;
      LOBYTE(v316) = 1;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      v308 = v175;
      v176 = v313;
      sub_1A99775F0();
      if (v176)
      {
        (*(v253 + 8))(v115, v117);
        (*(v118 + 8))(v101, v85);
        swift_unknownObjectRelease();
        v177 = type metadata accessor for SFAirDropReceive.ItemDestination;
        v178 = v279;
        goto LABEL_74;
      }

      v313 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v316) = 2;
      sub_1A97AF974(&qword_1EB3B1AC8, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v185 = v279;
      v192 = v313;
      sub_1A99775F0();
      if (!v192)
      {
        v313 = 0;
        (*(v253 + 8))(v115, v117);
        (*(v118 + 8))(v315, v85);
        swift_unknownObjectRelease();
        goto LABEL_84;
      }

      v193 = v253;
LABEL_72:
      (*(v193 + 8))(v115, v117);
      (*(v118 + 8))(v315, v85);
      swift_unknownObjectRelease();

      v206 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_73;
    case 10:
      LOBYTE(v316) = 10;
      sub_1A97D7D38();
      v157 = v296;
      v130 = v86;
      v158 = v313;
      sub_1A9977530();
      if (v158)
      {
        goto LABEL_48;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v166 = v256;
      sub_1A99775F0();
      v167 = v310;
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      LOBYTE(v316) = 1;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      sub_1A99775F0();
      v202 = v309;
      LOBYTE(v316) = 2;
      sub_1A99775C0();
      v313 = 0;
      v217 = *(v202 + 16);
      v219 = v218;
      (*(v255 + 8))(v157, v166);
      (*(v167 + 8))(v315, v85);
      swift_unknownObjectRelease();
      v185 = v277;
      *&v277[v217] = v219;
      goto LABEL_84;
    case 11:
      LOBYTE(v316) = 11;
      sub_1A97D7CE4();
      v91 = v86;
      v107 = v313;
      sub_1A9977530();
      if (v107)
      {
        goto LABEL_44;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v108 = v242;
      v109 = v260;
      sub_1A99775F0();
      v110 = v310;
      v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v171 = *(v313 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      LOBYTE(v316) = 1;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      sub_1A99775F0();
      v309 = v171;
      LOBYTE(v316) = 2;
      sub_1A99775F0();
      v313 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v316) = 3;
      sub_1A97AF974(&qword_1EB3B1AC8, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v207 = v300;
      v208 = v313;
      sub_1A99775F0();
      v313 = v208;
      if (v208)
      {
        v209 = v259;
        goto LABEL_79;
      }

      (*(v259 + 8))(v207, v109);
      (*(v110 + 8))(v315, v312);
      swift_unknownObjectRelease();
      goto LABEL_87;
    case 12:
      LOBYTE(v316) = 12;
      sub_1A97D7C90();
      v91 = v86;
      v114 = v313;
      sub_1A9977530();
      if (v114)
      {
        goto LABEL_44;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v108 = v243;
      v109 = v265;
      sub_1A99775F0();
      v110 = v310;
      v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v174 = *(v313 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      LOBYTE(v316) = 1;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      sub_1A99775F0();
      v309 = v174;
      LOBYTE(v316) = 2;
      sub_1A99775F0();
      v313 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v316) = 3;
      sub_1A97AF974(&qword_1EB3B1AC8, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v207 = v301;
      v210 = v313;
      sub_1A99775F0();
      v313 = v210;
      if (!v210)
      {
        (*(v264 + 8))(v207, v109);
        (*(v110 + 8))(v315, v312);
        swift_unknownObjectRelease();
        goto LABEL_87;
      }

      v209 = v264;
LABEL_79:
      (*(v209 + 8))(v207, v109);
      (*(v110 + 8))(v315, v312);
      swift_unknownObjectRelease();

      sub_1A97C2220(v108, type metadata accessor for SFAirDropReceive.ItemDestination);
LABEL_63:
      v98 = v314;
      return __swift_destroy_boxed_opaque_existential_0Tm(v98);
    case 13:
      LOBYTE(v316) = 13;
      sub_1A97D7C3C();
      v147 = v298;
      v101 = v86;
      v148 = v313;
      sub_1A9977530();
      if (v148)
      {
        goto LABEL_50;
      }

      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v149 = v263;
      sub_1A99775F0();
      v150 = v310;
      v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v186 = *(v313 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      LOBYTE(v316) = 1;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      sub_1A99775F0();
      v309 = v186;
      LOBYTE(v316) = 2;
      v108 = v280;
      sub_1A99775F0();
      v313 = 0;
      (*(v261 + 8))(v147, v149);
      (*(v150 + 8))(v315, v85);
      swift_unknownObjectRelease();
      goto LABEL_87;
    case 14:
      LOBYTE(v316) = 14;
      sub_1A97D7BE8();
      v105 = v294;
      v91 = v86;
      v106 = v313;
      sub_1A9977530();
      if (v106)
      {
        goto LABEL_44;
      }

      v313 = 0;
      (*(v247 + 8))(v105, v249);
      (*(v310 + 8))(v86, v85);
      swift_unknownObjectRelease();
      v93 = v228;
LABEL_32:
      swift_storeEnumTagMultiPayload();
      goto LABEL_89;
    case 15:
      LOBYTE(v316) = 15;
      sub_1A97D7B94();
      v121 = v86;
      v122 = v313;
      sub_1A9977530();
      if (v122)
      {
        goto LABEL_34;
      }

      LOBYTE(v316) = 0;
      sub_1A97D8218();
      v108 = v236;
      sub_1A99775F0();
      v123 = v310;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v333[0]) = 1;
      v179 = v283;
      sub_1A97AF974(&qword_1EB3B1AC8, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v180 = v303;
      sub_1A99775F0();
      v313 = 0;
      (*(v262 + 8))(v180, v179);
      (*(v123 + 8))(v315, v85);
      swift_unknownObjectRelease();
      goto LABEL_87;
    case 16:
      LOBYTE(v316) = 16;
      sub_1A97D7B40();
      v100 = v297;
      v101 = v86;
      v102 = v313;
      sub_1A9977530();
      if (v102)
      {
        goto LABEL_50;
      }

      sub_1A97D8218();
      v103 = v258;
      sub_1A99775F0();
      v104 = v310;
      v313 = 0;
      (*(v257 + 8))(v100, v103);
      (*(v104 + 8))(v86, v85);
      swift_unknownObjectRelease();
      v168 = v319;
      v169 = v230;
      *(v230 + 2) = v318;
      *(v169 + 3) = v168;
      *(v169 + 8) = *&v320[0];
      v170 = v317;
      *v169 = v316;
      *(v169 + 1) = v170;
      goto LABEL_69;
    case 17:
      LOBYTE(v316) = 17;
      sub_1A97D7A98();
      v121 = v86;
      v136 = v313;
      sub_1A9977530();
      if (v136)
      {
LABEL_34:
        (*(v310 + 8))(v121, v85);
        goto LABEL_7;
      }

      LOBYTE(v316) = 0;
      sub_1A97D8218();
      v108 = v237;
      sub_1A99775F0();
      v161 = v310;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
      LOBYTE(v333[0]) = 1;
      v181 = v284;
      sub_1A97AF974(&qword_1EB3B1AC0, &qword_1EB3B1798, &qword_1A99929A8, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v182 = v304;
      sub_1A99775F0();
      v313 = 0;
      (*(v267 + 8))(v182, v181);
      (*(v161 + 8))(v315, v85);
      swift_unknownObjectRelease();
LABEL_87:
      swift_storeEnumTagMultiPayload();
      v191 = v108;
      goto LABEL_88;
    case 18:
      LOBYTE(v316) = 18;
      sub_1A97D799C();
      v153 = v299;
      v101 = v86;
      v154 = v313;
      sub_1A9977530();
      if (v154)
      {
LABEL_50:
        (*(v310 + 8))(v101, v85);
        goto LABEL_7;
      }

      v332 = 0;
      sub_1A97D81C4();
      v155 = v269;
      sub_1A99775F0();
      v156 = v310;
      v329 = v333[2];
      v330 = v333[3];
      v331 = v334;
      v327 = v333[0];
      v328 = v333[1];
      v321 = 1;
      sub_1A99775F0();
      v313 = 0;
      (*(v266 + 8))(v153, v155);
      (*(v156 + 8))(v101, v85);
      swift_unknownObjectRelease();
      *(&v320[1] + 8) = v323;
      *(&v320[2] + 8) = v324;
      *(&v320[3] + 8) = v325;
      *(&v320[4] + 1) = v326;
      *(v320 + 8) = v322;
      v318 = v329;
      v319 = v330;
      *&v320[0] = v331;
      v196 = v328;
      v316 = v327;
      v317 = v328;
      v197 = v327;
      v198 = v330;
      v169 = v229;
      *(v229 + 2) = v329;
      *(v169 + 3) = v198;
      *v169 = v197;
      *(v169 + 1) = v196;
      v199 = v320[4];
      *(v169 + 7) = v320[3];
      *(v169 + 8) = v199;
      v200 = v320[0];
      v201 = v320[2];
      *(v169 + 5) = v320[1];
      *(v169 + 6) = v201;
      *(v169 + 4) = v200;
LABEL_69:
      swift_storeEnumTagMultiPayload();
      v191 = v169;
      goto LABEL_88;
    case 19:
      LOBYTE(v316) = 19;
      sub_1A97D7948();
      v160 = v313;
      sub_1A9977530();
      if (v160)
      {
        (*(v310 + 8))(v86, v85);
        swift_unknownObjectRelease();
        v98 = v314;
        return __swift_destroy_boxed_opaque_existential_0Tm(v98);
      }

      type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3B1A98, type metadata accessor for SFAirDropReceive.Transfer.Metrics, &protocol conformance descriptor for SFAirDropReceive.Transfer.Metrics);
      sub_1A99775F0();
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v190 = *(v309 + 12);
      type metadata accessor for SFAirDropReceive.ItemDestination(0);
      LOBYTE(v316) = 1;
      sub_1A97D7900(&qword_1EB3AC590, type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      sub_1A99775F0();
      v308 = v190;
      v204 = v309;
      LOBYTE(v316) = 2;
      v205 = sub_1A9977550();
      v220 = &v285[*(v204 + 16)];
      *v220 = v205;
      v220[1] = v221;
      v307 = v221;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      LOBYTE(v316) = 3;
      sub_1A97D8128(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
      sub_1A99775F0();
      LOBYTE(v316) = 4;
      sub_1A99775F0();
      v313 = 0;
      LOBYTE(v316) = 5;
      sub_1A99775F0();
      (*(v276 + 8))(v305, v273);
      (*(v310 + 8))(v315, v312);
      swift_unknownObjectRelease();
      v222 = v285;
      swift_storeEnumTagMultiPayload();
      v93 = v228;
      sub_1A97C36C8(v222, v228, type metadata accessor for SFAirDropReceive.Transfer.State);
      v223 = v314;
      v313 = 0;
      goto LABEL_90;
    case 20:
      LOBYTE(v316) = 20;
      sub_1A97D78AC();
      v130 = v86;
      v137 = v313;
      sub_1A9977530();
      if (v137)
      {
LABEL_48:
        (*(v310 + 8))(v130, v85);
        goto LABEL_7;
      }

      type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
      v138 = v84;
      LOBYTE(v316) = 0;
      sub_1A97D7900(&qword_1EB3B1A98, type metadata accessor for SFAirDropReceive.Transfer.Metrics, &protocol conformance descriptor for SFAirDropReceive.Transfer.Metrics);
      v139 = v239;
      v140 = v271;
      sub_1A99775F0();
      v141 = v310;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      type metadata accessor for SFAirDropReceive.Failure(0);
      v313 = 0;
      LOBYTE(v316) = 1;
      sub_1A97D7900(&qword_1EB3B1AA0, type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      v183 = v313;
      sub_1A99775F0();
      v185 = v139;
      if (!v183)
      {
        v313 = 0;
        (*(v272 + 8))(v138, v140);
        (*(v141 + 8))(v315, v85);
        swift_unknownObjectRelease();
        goto LABEL_84;
      }

      (*(v272 + 8))(v138, v140);
      (*(v141 + 8))(v315, v85);
      swift_unknownObjectRelease();
      v206 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_73:
      v177 = v206;
      v178 = v185;
LABEL_74:
      sub_1A97C2220(v178, v177);
      goto LABEL_8;
    case 21:
      LOBYTE(v316) = 21;
      sub_1A97D7858();
      v91 = v86;
      v144 = v313;
      sub_1A9977530();
      if (v144)
      {
LABEL_44:
        (*(v310 + 8))(v91, v85);
        goto LABEL_7;
      }

      v145 = v268;
      v146 = sub_1A99775E0();
      v313 = 0;
      v184 = v146;
      (*(v270 + 8))(v83, v145);
      (*(v310 + 8))(v86, v85);
      swift_unknownObjectRelease();
      v185 = v231;
      *v231 = v184;
LABEL_84:
      swift_storeEnumTagMultiPayload();
      v191 = v185;
LABEL_88:
      v93 = v228;
      sub_1A97C36C8(v191, v228, type metadata accessor for SFAirDropReceive.Transfer.State);
LABEL_89:
      v223 = v314;
LABEL_90:
      sub_1A97C36C8(v93, v306, type metadata accessor for SFAirDropReceive.Transfer.State);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v223);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}