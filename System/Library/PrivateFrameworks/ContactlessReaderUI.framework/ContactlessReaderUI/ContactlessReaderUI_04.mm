void sub_243FBE66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v7 = *(a2 + 16);
  if (v7)
  {
    v10 = *(sub_2440D2DC0() - 8);
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    do
    {
      a6(v11, v6);
      v11 += v12;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_243FBE724(uint64_t a1)
{
  v2 = sub_243FBF654(&qword_27EDC1F28, 255, type metadata accessor for VNBarcodeSymbology, &unk_2440DB448);
  v3 = sub_243FBF654(&qword_27EDC1F30, 255, type metadata accessor for VNBarcodeSymbology, &unk_2440DB3E8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_243FBE7E8(uint64_t a1)
{
  v2 = sub_2440D2DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1EF0, &qword_2440DB330);
    v9 = sub_2440D3800();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_243FBF654(&qword_27EDC1EF8, 255, MEMORY[0x277CE30B0], MEMORY[0x277CE30B8]);
      v16 = sub_2440D2F00();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_243FBF654(&qword_27EDC1F00, 255, MEMORY[0x277CE30B0], MEMORY[0x277CE30C0]);
          v23 = sub_2440D2F50();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_243FBEB10()
{
  v0 = sub_2440D2E20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1ED0, &qword_2440DB318);
  v4 = sub_2440D2DE0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v15 = xmmword_2440D5CF0;
  *(v7 + 16) = xmmword_2440D5CF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1ED8, &qword_2440DB320);
  v8 = swift_allocObject();
  *(v8 + 16) = v15;
  v9 = *MEMORY[0x277CE2EA8];
  *(v8 + 32) = *MEMORY[0x277CE2EA8];
  v10 = v9;
  sub_2440D2DD0();

  sub_243FBE7E8(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  (*(v1 + 104))(v3, *MEMORY[0x277CE30D0], v0);
  v11 = objc_allocWithZone(sub_2440D2E70());
  v12 = sub_2440D2DF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1EE0, &qword_2440DB328);
  sub_2440D2060();
  sub_243FBF654(&qword_27EDC1EE8, v13, type metadata accessor for QRCodeScannerViewCoordinator, &unk_2440DB218);
  sub_2440D2E60();
  return v12;
}

uint64_t sub_243FBEDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E038();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "Tap recognized item", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  return sub_243FBD408(a1);
}

void sub_243FBEF70(uint64_t a1)
{
  v19 = sub_2440D2D80();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2DC0();
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v18 = *(*v20 + 104);
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v16 = *(v11 + 56);
    v17 = v12;
    v14 = (v11 - 8);
    do
    {
      v17(v9, v13, v5, v7);
      sub_2440D2D90();
      v18(v4);
      (*(v2 + 8))(v4, v19);
      (*v14)(v9, v5);
      v13 += v16;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_243FBF17C(uint64_t a1)
{
  v2 = sub_2440D2E50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_243F4E038();
  sub_243F5F574(v9, v8, &qword_27EDC0A50, &qword_2440D5CB0);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    return sub_243F5EED4(v8, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  v13 = *(v3 + 16);
  v13(v5, a1, v2);
  v14 = sub_2440D11C0();
  v15 = sub_2440D3470();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v13;
    v17 = v16;
    v24 = swift_slowAlloc();
    *v17 = 138412290;
    sub_243FBF654(&qword_27EDC1EC8, 255, MEMORY[0x277CE30E0], MEMORY[0x277CE30E8]);
    swift_allocError();
    v22 = v15;
    v23(v18, v5, v2);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v17 + 4) = v19;
    v20 = v24;
    *v24 = v19;
    _os_log_impl(&dword_243F48000, v14, v22, "An error stopped QR scanner: [ %@ ]", v17, 0xCu);
    sub_243F5EED4(v20, &qword_27EDC0418, &unk_2440D6DB0);
    MEMORY[0x245D58570](v20, -1, -1);
    MEMORY[0x245D58570](v17, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return (*(v11 + 8))(v8, v10);
}

unint64_t sub_243FBF4CC()
{
  result = qword_27EDC1EB8;
  if (!qword_27EDC1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1EB8);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_243FBF54C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_243FBF594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FBF600()
{
  result = qword_27EDC1EC0;
  if (!qword_27EDC1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1EC0);
  }

  return result;
}

uint64_t sub_243FBF654(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_243FBF6B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_243FBF7E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_2440D1B10();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v31 - v6;
  v35 = sub_2440D2990();
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2740();
  v32 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F38, &qword_2440DB4E0);
  v33 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v41 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0DD0, &qword_2440DE310);
  sub_243F9140C();
  sub_2440D2870();
  v18 = &v17[*(v15 + 36)];
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_2440D1B90();
  v21 = *(*(v20 - 8) + 104);
  v21(v18, v19, v20);
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E18, &qword_2440D7FD0) + 36)] = 256;
  sub_2440D2730();
  MEMORY[0x245D56610](1);
  v22 = *(v9 + 8);
  v22(v11, v8);
  v23 = v34;
  v21(v34, v19, v20);
  sub_243FBFEC8();
  sub_243FC0014(&qword_27EDC0E40, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  v24 = v37;
  sub_2440D2390();
  sub_243F88608(v23);
  v22(v14, v32);
  sub_243FBFFAC(v17);
  v25 = v36;
  sub_2440D1B00();
  v26 = v39;
  v27 = v40;
  (*(v39 + 16))(v38, v25, v40);
  sub_243FC0014(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v28 = v27;
  v29 = sub_2440D1610();
  (*(v26 + 8))(v25, v28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F58, &qword_2440DB4F0);
  *(v24 + *(result + 36)) = v29;
  return result;
}

__n128 sub_243FBFC64@<Q0>(uint64_t a1@<X8>)
{
  v28 = *(v1 + 16);
  v3 = *v28;
  v4 = v28[1];

  sub_24401FBC0();
  v5 = sub_24401FBD4(v3, v4);
  v7 = v6;
  v9 = v8;
  sub_2440D26A0();
  v10 = sub_2440D22C0();
  v12 = v11;
  v14 = v13;

  sub_243F62C68(v5, v7, v9 & 1);

  sub_2440D2230();
  v15 = sub_2440D22E0();
  v17 = v16;
  v19 = v18;

  sub_243F62C68(v10, v12, v14 & 1);

  sub_2440D21B0();
  v20 = sub_2440D22A0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_243F62C68(v15, v17, v19 & 1);

  sub_2440D2B00();
  sub_2440D18E0();
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 96) = v33;
  *(a1 + 112) = v34;
  *(a1 + 128) = v35;
  *(a1 + 32) = v29;
  *(a1 + 48) = v30;
  result = v32;
  *(a1 + 64) = v31;
  *(a1 + 80) = v32;
  return result;
}

unint64_t sub_243FBFEC8()
{
  result = qword_27EDC1F40;
  if (!qword_27EDC1F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1F38, &qword_2440DB4E0);
    sub_243F5DD50(&qword_27EDC1F48, &qword_27EDC1F50, &qword_2440DB4E8, MEMORY[0x277CDF028]);
    sub_243F5DD50(&qword_27EDC0E38, &qword_27EDC0E18, &qword_2440D7FD0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1F40);
  }

  return result;
}

uint64_t sub_243FBFFAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F38, &qword_2440DB4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243FC0014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_243FC005C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2440707E4();
  swift_beginAccess();
  result = *v10;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = result;
  return result;
}

unint64_t sub_243FC0128()
{
  result = qword_27EDC1F60;
  if (!qword_27EDC1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1F60);
  }

  return result;
}

double sub_243FC0198@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2440707E4();
  swift_beginAccess();
  result = *v2;
  *a1 = 1162760004;
  *(a1 + 8) = 0xE400000000000000;
  *(a1 + 16) = nullsub_1;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_243FC0204(uint64_t a1)
{
  v2 = sub_243FC045C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FC0250(uint64_t a1)
{
  v2 = sub_243FC045C();

  return MEMORY[0x28212D8E0](a1, v2);
}

unint64_t sub_243FC02C0()
{
  result = qword_27EDC1F68;
  if (!qword_27EDC1F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1F58, &qword_2440DB4F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1F38, &qword_2440DB4E0);
    sub_2440D2990();
    sub_243FBFEC8();
    sub_243FC0014(&qword_27EDC0E40, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1F68);
  }

  return result;
}

unint64_t sub_243FC0408()
{
  result = qword_27EDC1F70;
  if (!qword_27EDC1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1F70);
  }

  return result;
}

unint64_t sub_243FC045C()
{
  result = qword_27EDC1F78;
  if (!qword_27EDC1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1F78);
  }

  return result;
}

uint64_t sub_243FC04B4(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v53 = a3;
  v62 = a1;
  v6 = sub_2440D0880();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D08A0();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F88, &qword_2440DB650);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90, &unk_2440DF090);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_2440D07E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v58 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2440D0810();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v63 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v49 - v21;
  v23 = sub_243F4E038();
  sub_243F4DE64(v23, v22);
  v24 = sub_2440D11E0();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    sub_243F5EED4(v22, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v51 = v16;
    v52 = v7;

    v26 = sub_2440D11C0();
    v27 = sub_2440D3490();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v49 = v6;
      v29 = v28;
      v30 = swift_slowAlloc();
      v50 = a4;
      v31 = v30;
      v64[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_243F4E6F8(v62, a2, v64);
      *(v29 + 12) = 2048;
      *(v29 + 14) = v53;
      _os_log_impl(&dword_243F48000, v26, v27, "Currency formatter - %s, %ld", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x245D58570](v31, -1, -1);
      v32 = v29;
      v6 = v49;
      MEMORY[0x245D58570](v32, -1, -1);
    }

    (*(v25 + 8))(v22, v24);
    v16 = v51;
    v7 = v52;
  }

  sub_2440D0820();
  v33 = sub_243FD157C();
  v34 = *v33;
  v35 = v58;
  if (*(*v33 + 16) && (v36 = sub_243F726DC(v53), (v37 & 1) != 0))
  {
    (*(v17 + 16))(v15, *(v34 + 56) + *(v17 + 72) * v36, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    (*(v17 + 32))(v35, v15, v16);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    sub_2440D07D0();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_243F5EED4(v15, &qword_27EDC1F90, &unk_2440DF090);
    }
  }

  v38 = sub_243FA9620();
  swift_beginAccess();
  v39 = *(**v38 + 328);

  v41 = v54;
  v39(v40);

  v42 = v60;
  sub_2440D0890();
  (*(v55 + 8))(v41, v56);
  v43 = v61;
  sub_2440D0840();
  (*(v7 + 8))(v42, v6);
  v44 = sub_2440D0750();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_243F5EED4(v43, &qword_27EDC1F88, &qword_2440DB650);
  }

  else
  {
    sub_2440D0740();
    (*(v45 + 8))(v43, v44);
  }

  v46 = v63;
  v47 = sub_2440D0B60();

  (*(v17 + 8))(v35, v16);
  (*(v57 + 8))(v46, v59);
  return v47;
}

id sub_243FC0C38(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = objc_opt_self();
  v8 = [v7 systemFontOfSize:a1 weight:a2];
  v9 = [v8 fontDescriptor];

  v10 = [v9 fontDescriptorWithDesign_];
  if (v10)
  {
    sub_243FC1944();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FA0, &qword_2440DB658);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2440D5CF0;
    v12 = *MEMORY[0x277CC48D0];
    type metadata accessor for CFString(0);
    *(v11 + 56) = v13;
    *(v11 + 32) = v12;
    *(v11 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC4B00, &qword_2440DB660);
    *(v11 + 64) = &unk_2857760D0;
    v14 = v12;
    v15 = sub_2440D3450();
    v16 = sub_2440D3440();

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v10, v16);
    v18 = [v7 fontWithDescriptor:CopyWithAttributes size:a1];

    return v18;
  }

  else
  {
    v20 = sub_243F4E038();
    sub_243F4DE64(v20, v6);
    v21 = sub_2440D11E0();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) == 1)
    {
      sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "Failed to retrieve modified CRSFPro font", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v22 + 8))(v6, v21);
    }

    v26 = [v7 systemFontOfSize:a1 weight:*MEMORY[0x277D74418]];

    return v26;
  }
}

uint64_t sub_243FC0F7C(char a1)
{
  if (a1 == 2)
  {
    return 29;
  }

  else
  {
    return 27;
  }
}

uint64_t sub_243FC0F94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - v4;
  swift_beginAccess();
  v6 = byte_27EDC1F80;
  if (byte_27EDC1F80 == 2)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
    if ([v7 canEvaluatePolicy:2 error:0])
    {
      v8 = [v7 biometryType];
      v9 = sub_243F4E038();
      sub_243F4DE64(v9, v5);
      v10 = sub_2440D11E0();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {
        sub_243F5EED4(v5, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v15 = sub_2440D11C0();
        v16 = sub_2440D3490();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v26[0] = swift_slowAlloc();
          v26[1] = v8;
          v27 = v26[0];
          *v17 = 136315138;
          type metadata accessor for LABiometryType(0);
          v18 = sub_2440D3040();
          v20 = sub_243F4E6F8(v18, v19, &v27);

          *(v17 + 4) = v20;
          _os_log_impl(&dword_243F48000, v15, v16, "BiometricType: %s", v17, 0xCu);
          v21 = v26[0];
          __swift_destroy_boxed_opaque_existential_0(v26[0]);
          MEMORY[0x245D58570](v21, -1, -1);
          MEMORY[0x245D58570](v17, -1, -1);
        }

        (*(v11 + 8))(v5, v10);
      }

      v6 = v8 == 1;
      byte_27EDC1F80 = v8 == 1;
    }

    else
    {
      v12 = sub_243F4E038();
      sub_243F4DE64(v12, v2);
      v13 = sub_2440D11E0();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v2, 1, v13) == 1)
      {

        sub_243F5EED4(v2, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v22 = sub_2440D11C0();
        v23 = sub_2440D3490();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_243F48000, v22, v23, "BiometricType - does not support any owner auth but check again)", v24, 2u);
          MEMORY[0x245D58570](v24, -1, -1);
        }

        (*(v14 + 8))(v2, v13);
      }

      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_243FC135C()
{
  result = SBSIsSystemApertureAvailable();
  byte_27EDC64A0 = result;
  return result;
}

char *sub_243FC137C()
{
  if (qword_27EDCA600 != -1)
  {
    swift_once();
  }

  return &byte_27EDC64A0;
}

uint64_t sub_243FC13CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - v4;
  swift_beginAccess();
  v6 = byte_27EDC1F81;
  if (byte_27EDC1F81 == 2)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
    if ([v7 canEvaluatePolicy:2 error:0])
    {
      v8 = [v7 biometryType];
      v9 = sub_243F4E038();
      sub_243F4DE64(v9, v5);
      v10 = sub_2440D11E0();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {
        sub_243F5EED4(v5, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v15 = sub_2440D11C0();
        v16 = sub_2440D3490();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v26[0] = swift_slowAlloc();
          v26[1] = v8;
          v27 = v26[0];
          *v17 = 136315138;
          type metadata accessor for LABiometryType(0);
          v18 = sub_2440D3040();
          v20 = sub_243F4E6F8(v18, v19, &v27);

          *(v17 + 4) = v20;
          _os_log_impl(&dword_243F48000, v15, v16, "BiometricType: %s", v17, 0xCu);
          v21 = v26[0];
          __swift_destroy_boxed_opaque_existential_0(v26[0]);
          MEMORY[0x245D58570](v21, -1, -1);
          MEMORY[0x245D58570](v17, -1, -1);
        }

        (*(v11 + 8))(v5, v10);
      }

      v6 = v8 == 2;
      byte_27EDC1F81 = v8 == 2;
    }

    else
    {
      v12 = sub_243F4E038();
      sub_243F4DE64(v12, v2);
      v13 = sub_2440D11E0();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v2, 1, v13) == 1)
      {

        sub_243F5EED4(v2, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v22 = sub_2440D11C0();
        v23 = sub_2440D3490();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_243F48000, v22, v23, "BiometricType - does not support any owner auth but check again)", v24, 2u);
          MEMORY[0x245D58570](v24, -1, -1);
        }

        (*(v14 + 8))(v2, v13);
      }

      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_243FC1794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FB8, &unk_2440DB760);
  sub_2440D07E0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2440DB640;
  sub_2440D07B0();
  sub_2440D07B0();
  sub_2440D07B0();
  sub_2440D07B0();
  sub_2440D07B0();
  sub_2440D07B0();
  sub_2440D07B0();
  result = sub_2440D07B0();
  qword_27EDC64A8 = v0;
  return result;
}

uint64_t *sub_243FC18F4()
{
  if (qword_27EDCA608 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64A8;
}

unint64_t sub_243FC1944()
{
  result = qword_27EDC1F98;
  if (!qword_27EDC1F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC1F98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MerchantCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MerchantCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_243FC1B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(a9 + 8);
  if ((a4 >> 1) - a3 != v9 || (a8 >> 1) - a7 != v9)
  {
    goto LABEL_13;
  }

  if (*a9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      vDSP_vaddD((a2 + 8 * a3), 1, (a6 + 8 * a7), 1, *a9, 1, *(a9 + 8));
      return;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void sub_243FC1B78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v9 = a9[2];
  v10 = a9[3];
  v11 = (v10 >> 1) - v9;
  if (__OFSUB__(v10 >> 1, v9))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = a7;
  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a4 >> 1) - a3 != v11 || (a8 >> 1) - a7 != v11)
  {
    goto LABEL_17;
  }

  v17 = *a9;
  if ((v10 & 1) == 0 || (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *a9 = v17, (isUniquelyReferenced_nonNull & 1) == 0))
  {
    v19 = sub_243FC251C(a9[1], v9, v10);
    v28 = v12;
    v20 = v13;
    v21 = a2;
    v22 = a6;
    v24 = v23;
    v9 = v25;
    v27 = v26;
    swift_unknownObjectRelease();
    *a9 = v19;
    a9[1] = v24;
    a6 = v22;
    a2 = v21;
    v13 = v20;
    v12 = v28;
    v17 = v19;
    a9[2] = v9;
    a9[3] = v27;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    vDSP_vaddD((a2 + 8 * v12), 1, (a6 + 8 * v13), 1, (a9[1] + 8 * v9), 1, v11);
    *a9 = v17;
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_243FC1CB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(a9 + 8);
  if ((a4 >> 1) - a3 != v9 || (a8 >> 1) - a7 != v9)
  {
    goto LABEL_13;
  }

  if (*a9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      vDSP_vsubD((a6 + 8 * a7), 1, (a2 + 8 * a3), 1, *a9, 1, *(a9 + 8));
      return;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void sub_243FC1D18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v9 = a9[2];
  v10 = a9[3];
  v11 = (v10 >> 1) - v9;
  if (__OFSUB__(v10 >> 1, v9))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = a7;
  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a4 >> 1) - a3 != v11 || (a8 >> 1) - a7 != v11)
  {
    goto LABEL_17;
  }

  v17 = *a9;
  if ((v10 & 1) == 0 || (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *a9 = v17, (isUniquelyReferenced_nonNull & 1) == 0))
  {
    v19 = sub_243FC251C(a9[1], v9, v10);
    v28 = v12;
    v20 = v13;
    v21 = a2;
    v22 = a6;
    v24 = v23;
    v9 = v25;
    v27 = v26;
    swift_unknownObjectRelease();
    *a9 = v19;
    a9[1] = v24;
    a6 = v22;
    a2 = v21;
    v13 = v20;
    v12 = v28;
    v17 = v19;
    a9[2] = v9;
    a9[3] = v27;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    vDSP_vsubD((a6 + 8 * v13), 1, (a2 + 8 * v12), 1, (a9[1] + 8 * v9), 1, v11);
    *a9 = v17;
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_243FC1E50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243FC1EAC(double a1)
{
  v2 = sub_243FC212C(*(*v1 + 16), sub_243FC2B5C);

  *v1 = v2;
  return result;
}

double sub_243FC1F20()
{
  __C[6] = *MEMORY[0x277D85DE8];
  v6 = *v0;
  __C[0] = v6;
  v1 = *(*&v6 + 16);
  *&__C[3] = __C;
  *&__C[4] = &v6;
  v2 = sub_243FC212C(v1, sub_243FC2B44);
  v3 = *(v2 + 16);
  __C[0] = NAN;
  vDSP_sveD((v2 + 32), 1, __C, v3);
  v4 = __C[0];

  return v4;
}

uint64_t sub_243FC1FE8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27EDC1FC0;
}

uint64_t sub_243FC2038@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_243FC27F8(*a1, *a2, sub_243FC2B14);
  *a3 = result;
  return result;
}

uint64_t sub_243FC20AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_243FC27F8(*a1, *a2, sub_243FC2AE4);
  *a3 = result;
  return result;
}

uint64_t sub_243FC212C(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_2440D3280();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

char *sub_243FC222C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FD8, qword_2440E6F90);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_243FC2330(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FD8, qword_2440E6F90);
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

void sub_243FC23B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (*(a1 + 16) != v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) != v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    vDSP_vmulD((a1 + 32), 1, (a2 + 32), 1, *a3, 1, v3);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_243FC23FC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t (*a5)(void, void, uint64_t, unint64_t, void, void, void, void, uint64_t))
{
  v6 = a3[2];
  v7 = a3[3];
  result = a5(*a3, a3[1], v6, v7, *a4, a4[1], a4[2], a4[3], a1);
  if (__OFSUB__(v7 >> 1, v6))
  {
    __break(1u);
  }

  else
  {
    *a2 = (v7 >> 1) - v6;
  }

  return result;
}

void sub_243FC2474(uint64_t a1, void *a2, uint64_t *a3, double a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*(*a3 + 16) != v5)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v7[0] = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  vDSP_vsmulD((v4 + 32), 1, v7, *a1, 1, v5);
  *a2 = *(v4 + 16);
}

char *sub_243FC251C(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = sub_243FC2330((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[8 * a2], 8 * v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_243FC25D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = (v10 + 32 + 8 * result);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = v11 + 8 * a3;
  v15 = (v10 + 32 + 8 * a2);
  if (result != v15 || result >= v15 + 8 * v14)
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, 8 * v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v23 = 8 * a3;

  return memcpy(v11, (a5 + 8 * a6), v23);
}

unint64_t sub_243FC26F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 3) >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_243FC222C(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_243FC25D4(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_243FC27F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t *))
{
  v3 = *(a1 + 16);
  if (*(a2 + 16) < v3)
  {
    v3 = *(a2 + 16);
  }

  return sub_243FC212C(v3, a3);
}

uint64_t sub_243FC2880(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, unint64_t, uint64_t, uint64_t, void, unint64_t, uint64_t *))
{
  v5 = *a1;
  if (*(a2 + 16) >= *(*a1 + 16))
  {
    v6 = *(*a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v8 = *a1;
  v9 = v5 + 32;
  v10 = 0;
  v11 = (2 * v6) | 1;
  swift_bridgeObjectRetain_n();
  a3(v5, v5 + 32, 0, v11, a2, a2 + 32, 0, v11, &v8);

  if (*(v5 + 16) < v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 + 32 != v9 + 8 * v10)
  {
LABEL_6:
    sub_243FC26F0(0, v6, v8, v9, v10, v11);
    goto LABEL_7;
  }

  if ((v11 >> 1) < v10)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v10 || v6 != v11 >> 1)
  {
    goto LABEL_6;
  }

LABEL_7:

  return swift_unknownObjectRelease();
}

unint64_t sub_243FC29D8()
{
  result = qword_27EDC1FC8;
  if (!qword_27EDC1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1FC8);
  }

  return result;
}

unint64_t sub_243FC2A30()
{
  result = qword_27EDC1FD0;
  if (!qword_27EDC1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1FD0);
  }

  return result;
}

void sub_243FC2A94(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  sub_243FC23B4(v5, *v4, a1);
  *a2 = *(v5 + 16);
}

uint64_t sub_243FC2B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  v4[12] = swift_task_alloc();
  v5 = sub_2440D02A0();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  v4[16] = swift_task_alloc();
  v6 = sub_2440D05F0();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243FC2D10, 0, 0);
}

uint64_t sub_243FC2D10()
{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_2440D05E0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[12];
    sub_243F5EED4(v0[16], &qword_27EDC1FE0, &qword_2440DBDF0);
    v5 = sub_243F4DFA8();
    sub_243F4DE64(v5, v4);
    v6 = sub_2440D11E0();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_243F5EED4(v0[12], &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {

      v17 = sub_2440D11C0();
      v18 = sub_2440D3470();

      if (os_log_type_enabled(v17, v18))
      {
        v20 = v0[9];
        v19 = v0[10];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_243F4E6F8(v20, v19, &v26);
        _os_log_impl(&dword_243F48000, v17, v18, "Bad configuration URL: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x245D58570](v22, -1, -1);
        MEMORY[0x245D58570](v21, -1, -1);
      }

      (*(v7 + 8))(v0[12], v6);
    }

    v23 = v0[8];

    *v23 = xmmword_2440DB860;
    *(v23 + 16) = xmmword_2440DB870;
    *(v23 + 32) = 0x80000002440EAB30;
    *(v23 + 40) = 1;
    v24 = v0[1];

    return v24();
  }

  else
  {
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[17];
    v11 = v0[18];
    v12 = v0[15];
    v13 = v0[11];
    (*(v11 + 32))(v8, v0[16], v10);
    (*(v11 + 16))(v9, v8, v10);
    sub_2440D0280();
    sub_2440D0250();
    v14 = swift_task_alloc();
    v0[21] = v14;
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v8;
    v15 = swift_task_alloc();
    v0[22] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE8, &unk_2440DB900);
    *v15 = v0;
    v15[1] = sub_243FC3108;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000018, 0x80000002440EABA0, sub_243FC572C, v14, v16);
  }
}

uint64_t sub_243FC3108()
{

  return MEMORY[0x2822009F8](sub_243FC67F8, 0, 0);
}

uint64_t sub_243FC3220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a1;
  v30 = a2;
  v5 = sub_2440D05F0();
  v6 = *(v5 - 8);
  v28 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2038, &unk_2440DBAA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v29 = sub_2440D02A0();
  v14 = *(v29 - 8);
  v15 = MEMORY[0x28223BE20](v29);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v26, v15);
  (*(v10 + 16))(v13, v27, v9);
  v18 = a4;
  v19 = v5;
  (*(v6 + 16))(v8, v18, v5);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v20, v13, v9);
  (*(v6 + 32))(v22 + v21, v25, v19);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_243FC6508;
  *(v23 + 24) = v22;

  sub_243FC4D3C(v17, sub_243FC6654, v23);

  return (*(v14 + 8))(v17, v29);
}

uint64_t sub_243FC3544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440D05F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v50 = *(a1 + 8);
    v51 = v18;
    v48 = v16;
    v49 = a2;

    v45 = sub_243F4DFA8();
    sub_243F4DE64(v45, v15);
    v21 = sub_2440D11E0();
    v46 = *(v21 - 8);
    v47 = v21;
    v22 = *(v46 + 48);
    if (v22(v15, 1) == 1)
    {
      sub_243F5EED4(v15, &qword_27EDC0A50, &qword_2440D5CB0);
      v23 = v47;
    }

    else
    {
      (*(v7 + 16))(v9, a3, v6);
      v24 = sub_2440D11C0();
      v44 = sub_2440D3470();
      if (os_log_type_enabled(v24, v44))
      {
        v25 = swift_slowAlloc();
        v42 = v22;
        v26 = v25;
        v43 = swift_slowAlloc();
        v52 = v43;
        *v26 = 136315138;
        v41 = v24;
        v40 = sub_2440D0590();
        v28 = v27;
        (*(v7 + 8))(v9, v6);
        v29 = sub_243F4E6F8(v40, v28, &v52);

        v30 = v26;
        *(v26 + 4) = v29;
        v31 = v41;
        v22 = v42;
        _os_log_impl(&dword_243F48000, v41, v44, "Issue with request: %s", v30, 0xCu);
        v32 = v43;
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x245D58570](v32, -1, -1);
        MEMORY[0x245D58570](v30, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }

      v23 = v47;
      (*(v46 + 8))(v15, v47);
    }

    sub_243F4DE64(v45, v12);
    if ((v22)(v12, 1, v23) == 1)
    {
      sub_243F5EED4(v12, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {

      v33 = sub_2440D11C0();
      v34 = sub_2440D3470();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v52 = v36;
        *v35 = 136315394;

        v37 = sub_243F4E6F8(v50, v19, &v52);

        *(v35 + 4) = v37;
        *(v35 + 12) = 2080;

        v38 = sub_243F4E6F8(v51, v20, &v52);

        *(v35 + 14) = v38;
        _os_log_impl(&dword_243F48000, v33, v34, "Error downloading configuration: %s - %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D58570](v36, -1, -1);
        MEMORY[0x245D58570](v35, -1, -1);
      }

      (*(v46 + 8))(v12, v23);
    }

    v52 = v48;
    v53 = v50;
    v54 = v19;
    v55 = v51;
    v56 = v20;
    v57 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2038, &unk_2440DBAA8);
  }

  else
  {
    v52 = *a1;
    v53 = v17;
    v54 = v19;
    v55 = v18;
    v56 = v20;
    v57 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2038, &unk_2440DBAA8);
  }

  return sub_2440D3340();
}

uint64_t sub_243FC3AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  v4[12] = swift_task_alloc();
  v5 = sub_2440D02A0();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  v4[16] = swift_task_alloc();
  v6 = sub_2440D05F0();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243FC3C40, 0, 0);
}

uint64_t sub_243FC3C40()
{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_2440D05E0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[12];
    sub_243F5EED4(v0[16], &qword_27EDC1FE0, &qword_2440DBDF0);
    v5 = sub_243F4DFA8();
    sub_243F4DE64(v5, v4);
    v6 = sub_2440D11E0();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_243F5EED4(v0[12], &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {

      v17 = sub_2440D11C0();
      v18 = sub_2440D3470();

      if (os_log_type_enabled(v17, v18))
      {
        v20 = v0[9];
        v19 = v0[10];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_243F4E6F8(v20, v19, &v26);
        _os_log_impl(&dword_243F48000, v17, v18, "Bad file URL: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x245D58570](v22, -1, -1);
        MEMORY[0x245D58570](v21, -1, -1);
      }

      (*(v7 + 8))(v0[12], v6);
    }

    v23 = v0[8];

    *v23 = xmmword_2440DB860;
    *(v23 + 16) = xmmword_2440DB870;
    *(v23 + 32) = 0x80000002440EAB30;
    *(v23 + 40) = 1;
    v24 = v0[1];

    return v24();
  }

  else
  {
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[17];
    v11 = v0[18];
    v12 = v0[15];
    v13 = v0[11];
    (*(v11 + 32))(v8, v0[16], v10);
    (*(v11 + 16))(v9, v8, v10);
    sub_2440D0280();
    sub_2440D0250();
    v14 = swift_task_alloc();
    v0[21] = v14;
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v8;
    v15 = swift_task_alloc();
    v0[22] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FF0, &qword_2440DB910);
    *v15 = v0;
    v15[1] = sub_243FC4038;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000013, 0x80000002440EABC0, sub_243FC5738, v14, v16);
  }
}

uint64_t sub_243FC4038()
{

  return MEMORY[0x2822009F8](sub_243FC4150, 0, 0);
}

uint64_t sub_243FC4150()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  (*(v3 + 8))(v1, v2);
  v6 = *(v0 + 64);

  *v6 = v10;
  *(v6 + 16) = v9;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_243FC424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a1;
  v29 = a2;
  v5 = sub_2440D05F0();
  v6 = *(v5 - 8);
  v28 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2008, &qword_2440DBA90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v25 = sub_2440D02A0();
  v14 = *(v25 - 8);
  v15 = MEMORY[0x28223BE20](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v26, v15);
  (*(v10 + 16))(v13, v27, v9);
  v18 = a4;
  v19 = v5;
  (*(v6 + 16))(v8, v18, v5);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v20, v13, v9);
  (*(v6 + 32))(v22 + v21, v24, v19);
  sub_243FC4D3C(v17, sub_243FC6200, v22);

  return (*(v14 + 8))(v17, v25);
}

uint64_t sub_243FC4534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440D05F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v50 = *(a1 + 24);
    v51 = v17;
    v48 = v16;
    v49 = a2;

    v45 = sub_243F4DFA8();
    sub_243F4DE64(v45, v15);
    v21 = sub_2440D11E0();
    v46 = *(v21 - 8);
    v47 = v21;
    v22 = *(v46 + 48);
    if (v22(v15, 1) == 1)
    {
      sub_243F5EED4(v15, &qword_27EDC0A50, &qword_2440D5CB0);
      v23 = v47;
    }

    else
    {
      (*(v7 + 16))(v9, a3, v6);
      v24 = sub_2440D11C0();
      v44 = sub_2440D3470();
      if (os_log_type_enabled(v24, v44))
      {
        v25 = swift_slowAlloc();
        v42 = v22;
        v26 = v25;
        v43 = swift_slowAlloc();
        v52 = v43;
        *v26 = 136315138;
        v41 = v24;
        v40 = sub_2440D0590();
        v28 = v27;
        (*(v7 + 8))(v9, v6);
        v29 = sub_243F4E6F8(v40, v28, &v52);

        v30 = v26;
        *(v26 + 4) = v29;
        v31 = v41;
        v22 = v42;
        _os_log_impl(&dword_243F48000, v41, v44, "Issue with request: %s", v30, 0xCu);
        v32 = v43;
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x245D58570](v32, -1, -1);
        MEMORY[0x245D58570](v30, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }

      v23 = v47;
      (*(v46 + 8))(v15, v47);
    }

    sub_243F4DE64(v45, v12);
    if ((v22)(v12, 1, v23) == 1)
    {
      sub_243F5EED4(v12, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {

      v33 = sub_2440D11C0();
      v34 = sub_2440D3470();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v52 = v36;
        *v35 = 136315394;

        v37 = sub_243F4E6F8(v51, v19, &v52);

        *(v35 + 4) = v37;
        *(v35 + 12) = 2080;

        v38 = sub_243F4E6F8(v50, v20, &v52);

        *(v35 + 14) = v38;
        _os_log_impl(&dword_243F48000, v33, v34, "Error downloading file: %s - %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D58570](v36, -1, -1);
        MEMORY[0x245D58570](v35, -1, -1);
      }

      (*(v46 + 8))(v12, v23);
    }

    v52 = v48;
    v53 = v51;
    v54 = v19;
    v55 = v50;
    v56 = v20;
    v57 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2008, &qword_2440DBA90);
  }

  else
  {
    v52 = *a1;
    v53 = v17;
    v54 = v19;
    v55 = v18;
    v56 = v20;
    v57 = 0;
    sub_243F5FECC(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2008, &qword_2440DBA90);
  }

  return sub_2440D3340();
}

uint64_t sub_243FC4A94(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5];
  v7 = *(a1 + 8);
  if (*(a1 + 40))
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 16);
    *v18 = *a1;
    *&v18[8] = v7;
    *&v18[16] = v10;
    *&v18[24] = v8;
    *&v18[32] = v9;
    v19 = 1;

    a2(v18);
    return sub_243F5EED4(a1, &qword_27EDC1FF0, &qword_2440DB910);
  }

  else
  {
    sub_243FC668C();
    sub_2440D0660();
    if (*v18)
    {
      memset(&v18[8], 0, 32);
      v19 = 0;

      a2(v18);
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      v12 = sub_243F4DFA8();
      sub_243F4DE64(v12, v6);
      v13 = sub_2440D11E0();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {
        sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v15 = sub_2440D11C0();
        v16 = sub_2440D3470();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_243F48000, v15, v16, "Download configuration - no available content", v17, 2u);
          MEMORY[0x245D58570](v17, -1, -1);
        }

        (*(v14 + 8))(v6, v13);
      }

      *v18 = xmmword_2440DB880;
      *&v18[16] = xmmword_2440DB890;
      *&v18[32] = 0x80000002440EAB60;
      v19 = 1;
      return (a2)(v18);
    }
  }
}

void sub_243FC4D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() sharedSession];
  v8 = sub_2440D0260();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v15[4] = sub_243FC62A0;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_243FC543C;
  v15[3] = &block_descriptor_12;
  v11 = _Block_copy(v15);

  v12 = [v7 dataTaskWithRequest:v8 completionHandler:v11];
  _Block_release(v11);

  v13 = *(v4 + 16);
  *(v4 + 16) = v12;
  v14 = v12;

  [v14 resume];
}

uint64_t sub_243FC4EC0(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(_BYTE *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 16);
    *(Strong + 16) = 0;
  }

  sub_243FC5744(a4, &v51);
  if (v52)
  {
    *v48 = v51;
    *&v48[8] = *(&v51 + 1);
    *&v48[16] = v52;
    v49 = v53;
LABEL_20:
    v50 = 1;
    a6(v48);
    return sub_243FC62C4(*v48, *&v48[8], *&v48[16], *&v48[24], v49, v50);
  }

  if (!a3 || (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_14:
    v27 = sub_243F4DFA8();
    sub_243F4DE64(v27, v13);
    v28 = sub_2440D11E0();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v13, 1, v28) == 1)
    {
      sub_243F5EED4(v13, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v30 = sub_2440D11C0();
      v31 = sub_2440D3470();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_243F48000, v30, v31, "Download data file - channel failure", v32, 2u);
        MEMORY[0x245D58570](v32, -1, -1);
      }

      (*(v29 + 8))(v13, v28);
    }

    *v48 = xmmword_2440DB860;
    *&v48[16] = xmmword_2440DB870;
    v49 = 0x80000002440EAB30;
    goto LABEL_20;
  }

  v20 = v19;
  *v48 = a1;
  *&v48[8] = a2;
  v21 = a3;
  sub_243F802C0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2010, &qword_2440DBA98);
  if (!swift_dynamicCast())
  {
    v47 = xmmword_2440DB8A0;
    goto LABEL_13;
  }

  v22 = *(&v47 + 1);
  if (*(&v47 + 1) >> 60 == 15)
  {
LABEL_13:

    sub_243F5FF20(v47, *(&v47 + 1));
    goto LABEL_14;
  }

  v23 = v47;
  if ([v20 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL)
  {
    *v48 = v23;
    *&v48[8] = v22;
    v49 = 0;
    *&v48[16] = 0uLL;
    v50 = 0;
    sub_243F5FECC(v23, v22);
  }

  else
  {
    v46 = v23;
    v24 = sub_243F4DFA8();
    sub_243F4DE64(v24, v16);
    v25 = sub_2440D11E0();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v16, 1, v25) == 1)
    {
      sub_243F5EED4(v16, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v44 = v25;
      v43 = v21;
      v34 = sub_2440D11C0();
      v42 = sub_2440D3470();
      v45 = v34;
      if (os_log_type_enabled(v34, v42))
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        *(v35 + 4) = [v20 statusCode];

        v36 = v45;
        _os_log_impl(&dword_243F48000, v45, v42, "Download data file - serverError - Invalid status from server: %ld", v35, 0xCu);
        MEMORY[0x245D58570](v35, -1, -1);
      }

      else
      {

        v36 = v43;
      }

      v37 = v44;

      (*(v26 + 8))(v16, v37);
    }

    v23 = v46;
    if (a2 >> 60 == 15 || (sub_243FC6314(), sub_2440D0660(), v38 = *&v48[8], !*&v48[8]))
    {
      *v48 = xmmword_2440DB880;
      *&v48[16] = xmmword_2440DB890;
      v49 = 0x80000002440EAB60;
    }

    else
    {
      v39 = *v48;
      v40 = *&v48[24];
      *v48 = 3;
      *&v48[8] = v39;
      *&v48[16] = v38;
      v49 = v40;
    }

    v50 = 1;
  }

  a6(v48);

  sub_243F5FF20(v23, v22);
  return sub_243FC62C4(*v48, *&v48[8], *&v48[16], *&v48[24], v49, v50);
}

uint64_t sub_243FC543C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_2440D0680();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_243F5FF20(v6, v10);
}

id sub_243FC5504()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t sub_243FC551C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_243FC5554()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_243FC557C()
{
  if (*v0)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_243FC55AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_2440D3A10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2440D3A10();

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

uint64_t sub_243FC5684(uint64_t a1)
{
  v2 = sub_243FC6198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243FC56C0(uint64_t a1)
{
  v2 = sub_243FC6198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243FC56FC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_243FC5E78(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_243FC5744(void *a1@<X0>, __int128 *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v50 - v7;
  v8 = sub_2440D08B0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2020, &qword_2440DBAA0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v50 - v16;
  v18 = sub_2440D08D0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    (*(v19 + 56))(v17, 1, 1, v18, v20);
    sub_243F5EED4(v17, &qword_27EDC2020, &qword_2440DBAA0);
    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    goto LABEL_19;
  }

  v55 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0, &qword_2440D6070);
  v24 = swift_dynamicCast();
  (*(v19 + 56))(v17, v24 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_243F5EED4(v17, &qword_27EDC2020, &qword_2440DBAA0);
LABEL_9:
    v33 = a1;
    v34 = sub_243F4DFA8();
    sub_243F4DE64(v34, v5);
    v35 = sub_2440D11E0();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v5, 1, v35) == 1)
    {
      sub_243F5EED4(v5, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v37 = a1;
      v38 = sub_2440D11C0();
      v39 = sub_2440D3470();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v5;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = a1;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_243F48000, v38, v39, "Download - server not reachable: %@", v41, 0xCu);
        sub_243F5EED4(v42, &qword_27EDC0418, &unk_2440D6DB0);
        MEMORY[0x245D58570](v42, -1, -1);
        v45 = v41;
        v5 = v40;
        MEMORY[0x245D58570](v45, -1, -1);
      }

      (*(v36 + 8))(v5, v35);
    }

    v25 = 0x80000002440EAB80;

    v27 = xmmword_2440DB8D0;
    v26 = xmmword_2440DB8E0;
    goto LABEL_19;
  }

  v51 = v5;
  (*(v19 + 32))(v22, v17, v18);
  sub_243FC6368(&qword_27EDC2028, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
  sub_2440D0500();
  sub_2440D08C0();
  sub_243FC6368(&qword_27EDC2030, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
  sub_2440D31F0();
  sub_2440D31F0();
  v28 = *(v9 + 8);
  v28(v11, v8);
  v28(v14, v8);
  if (v55 != v54)
  {
    (*(v19 + 8))(v22, v18);
    v5 = v51;
    goto LABEL_9;
  }

  v29 = sub_243F4DFA8();
  v30 = v52;
  sub_243F4DE64(v29, v52);
  v31 = sub_2440D11E0();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_243F5EED4(v30, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v46 = sub_2440D11C0();
    v47 = sub_2440D3470();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_243F48000, v46, v47, "Download - request cancelled", v48, 2u);
      MEMORY[0x245D58570](v48, -1, -1);
    }

    (*(v32 + 8))(v30, v31);
  }

  (*(v19 + 8))(v22, v18);
  v27 = xmmword_2440DB8B0;
  v26 = xmmword_2440DB8C0;
  v25 = 0xEE0064656C6C6563;
LABEL_19:
  v49 = v53;
  *v53 = v26;
  v49[1] = v27;
  *(v49 + 4) = v25;
}

uint64_t sub_243FC5E78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2000, &qword_2440DBA88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243FC6198();
  sub_2440D3B60();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_2440D3980();
    v10 = 1;
    sub_2440D3980();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_243FC6060()
{
  result = qword_27EDC1FF8;
  if (!qword_27EDC1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1FF8);
  }

  return result;
}

uint64_t sub_243FC60E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_243FC6130(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_243FC6198()
{
  result = qword_27EDCAB10[0];
  if (!qword_27EDCAB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDCAB10);
  }

  return result;
}

uint64_t sub_243FC6228()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_243FC6260()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243FC62C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    return sub_243F5D81C(a1, a2);
  }
}

unint64_t sub_243FC6314()
{
  result = qword_27EDC2018;
  if (!qword_27EDC2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2018);
  }

  return result;
}

uint64_t sub_243FC6368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_12(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_2440D05F0();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v2 + v5, v3);
  (*(v8 + 8))(v2 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_243FC6530(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2440D05F0() - 8);
  v10 = v4 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a4(a1, v4 + v7, v10);
}

uint64_t sub_243FC661C()
{

  return swift_deallocObject();
}

uint64_t sub_243FC6654(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_243FC4A94(&v5, v2);
}

unint64_t sub_243FC668C()
{
  result = qword_27EDC2040;
  if (!qword_27EDC2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2040);
  }

  return result;
}

unint64_t sub_243FC66F4()
{
  result = qword_27EDCAC20[0];
  if (!qword_27EDCAC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDCAC20);
  }

  return result;
}

unint64_t sub_243FC674C()
{
  result = qword_27EDCAD30;
  if (!qword_27EDCAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDCAD30);
  }

  return result;
}

unint64_t sub_243FC67A4()
{
  result = qword_27EDCAD38[0];
  if (!qword_27EDCAD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDCAD38);
  }

  return result;
}

uint64_t sub_243FC67FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2048, &qword_2440DBBD8);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v23 - v3;
  v40 = *(v1 + 24);
  v37[0] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2050, &qword_2440DBBE0);
  sub_2440D2820();
  v4 = LOBYTE(v35[0]);
  v37[0] = v40;
  sub_2440D2820();
  if (LOBYTE(v35[0]))
  {
    if (LOBYTE(v35[0]) == 1)
    {
      v23 = sub_2440D26C0();
    }

    else
    {
      sub_243FFABE4();

      v23 = sub_2440D26B0();
    }
  }

  else
  {
    v23 = *sub_243FFB17C();
  }

  v37[0] = v40;
  sub_2440D2820();
  if (LOBYTE(v35[0]))
  {
    v5 = sub_2440D2690();
  }

  else
  {
    v5 = sub_2440D26A0();
  }

  v6 = v5;
  v7 = *v2;
  v8 = *(v2 + 8);
  v24 = *(v2 + 16);
  v25 = v7;
  v39 = v7;
  v9 = *(v2 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = v4 == 2;
  v11 = *(v2 + 16);
  *(v10 + 24) = *v2;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(v2 + 32);
  *(v10 + 72) = *(v2 + 48);
  sub_243F91DD4(&v39, v37);

  sub_243FC6D68(&v40, v37);
  v26 = v9;

  v12 = sub_243FB9098();
  sub_243FB90D8(0xD000000000000011, 0x80000002440EAC50, v23, v6, 0xD00000000000001ALL, 0x80000002440EAC70, sub_243FC6D38, v10, v37, v12);
  if (v4 == 2)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v35[0] = v40;
    sub_2440D2820();
    if (v32 == 1)
    {
      v13 = 0xD000000000000018;
    }

    else
    {
      v13 = 0xD000000000000019;
    }

    if (v32 == 1)
    {
      v15 = "VO_IDENTITY_CLOSE_QR_CODE";
    }

    else
    {
      v15 = "identity_button_qr_scanner";
    }

    v14 = v15 | 0x8000000000000000;
  }

  v16 = sub_243FBC9E4();
  v17 = v27;
  sub_24408F2A0(v13, v14, &type metadata for CircularButtonGlass);

  v35[2] = v37[2];
  v35[3] = v37[3];
  v36 = v38;
  v35[1] = v37[1];
  v35[0] = v37[0];
  sub_243FBCA38(v35);
  v32 = v25;
  v33 = v8;
  v34 = v24;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0198, &qword_2440D7190);
  MEMORY[0x245D56840](&v31, v18);
  v19 = swift_allocObject();
  v20 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = *(v2 + 48);
  sub_243F91DD4(&v39, &v32);

  sub_243FC6D68(&v40, &v32);

  v32 = &type metadata for CircularButtonGlass;
  v33 = v16;
  swift_getOpaqueTypeConformance2();
  sub_243F67588();
  v21 = v30;
  sub_2440D25E0();

  return (*(v29 + 8))(v17, v21);
}

uint64_t sub_243FC6CE8()
{

  return swift_deallocObject();
}

uint64_t sub_243FC6D38()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return (*(v0 + 64))();
  }

  return result;
}

uint64_t sub_243FC6D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2050, &qword_2440DBBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FC6DD8()
{

  return swift_deallocObject();
}

uint64_t sub_243FC6E28()
{
  sub_2440D2E70();
  if ((sub_2440D2E10() & 1) != 0 && (v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0198, &qword_2440D7190), MEMORY[0x245D56840](&v3, v0), v3 <= 0xDuLL))
  {
    v1 = byte_2440DBDA6[v3];
  }

  else
  {
    v1 = 2;
  }

  LOBYTE(v3) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2050, &qword_2440DBBE0);
  return sub_2440D2830();
}

void *sub_243FC6EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_2440D2810();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

unint64_t sub_243FC6F8C()
{
  result = qword_27EDC2058;
  if (!qword_27EDC2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2058);
  }

  return result;
}

void *sub_243FC6FFC@<X0>(uint64_t a1@<X8>)
{
  sub_2440D2970();
  result = sub_2440D2810();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = 2;
  *(a1 + 32) = v3;
  *(a1 + 40) = nullsub_1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_243FC7098(uint64_t a1)
{
  v2 = sub_243FC72B4();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FC70E4(uint64_t a1)
{
  v2 = sub_243FC72B4();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243FC7150()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2048, &qword_2440DBBD8);
  sub_243FBC9E4();
  swift_getOpaqueTypeConformance2();
  sub_243F67588();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243FC71F8()
{
  result = qword_27EDC2060;
  if (!qword_27EDC2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2060);
  }

  return result;
}

unint64_t sub_243FC7260()
{
  result = qword_27EDCAF40[0];
  if (!qword_27EDCAF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDCAF40);
  }

  return result;
}

unint64_t sub_243FC72B4()
{
  result = qword_27EDC2068;
  if (!qword_27EDC2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2068);
  }

  return result;
}

uint64_t sub_243FC7308()
{
  v0 = swift_allocObject();
  sub_243FC7340();
  return v0;
}

void *sub_243FC7340()
{
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = 0;
  v0[4] = 0;
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D765F0];
  v3 = swift_allocObject();
  swift_weakInit();
  v14 = sub_243FC7568;
  v15 = v3;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v12 = sub_243F71CB4;
  ObjectType = &block_descriptor_13;
  v4 = _Block_copy(&aBlock);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  ObjectType = swift_getObjectType();
  *&aBlock = v5;
  swift_beginAccess();
  v6 = v0[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[2] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_243FC7824(0, *(v6 + 2) + 1, 1, v6);
    v0[2] = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_243FC7824((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  sub_243F734CC(&aBlock, &v6[32 * v9 + 32]);
  v0[2] = v6;
  swift_endAccess();
  return v0;
}

uint64_t sub_243FC7530()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_243FC7568()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[3];
    if (v1)
    {
      v2 = result[4];
      v3 = *(*result + 152);

      v5 = v3(v4);
      v1(v5 & 1);

      return sub_243F7EE58(v1, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_243FC7640()
{
  swift_beginAccess();
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_243F4F028(v4, v8);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      v6 = sub_2440D3A00();
      __swift_destroy_boxed_opaque_existential_0(v8);
      [v5 removeObserver_];

      swift_unknownObjectRelease();
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v0[2] = MEMORY[0x277D84F90];

  sub_243F7EE58(v0[3], v0[4]);
  return v0;
}

uint64_t sub_243FC776C()
{
  sub_243FC7640();

  return swift_deallocClassInstance();
}

uint64_t sub_243FC77CC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return sub_243F7EE58(v1, v2);
}

uint64_t sub_243FC77D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return sub_243F7EE58(v3, v4);
}

char *sub_243FC7824(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0, &qword_2440D8A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *AVLoopPlayerView.makeUIView(context:)()
{
  v1 = v0;
  v22 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21[-1] - v6;
  v8 = [objc_allocWithZone(type metadata accessor for AVLayerUIView(0)) initWithFrame_];
  sub_243F5F574(v1, v7, &qword_27EDC1FE0, &qword_2440DBDF0);
  v9 = OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_url;
  swift_beginAccess();
  sub_243F5F574(v8 + v9, v4, &qword_27EDC1FE0, &qword_2440DBDF0);
  swift_beginAccess();
  sub_243FC7C00(v7, v8 + v9);
  swift_endAccess();
  sub_243FC7FAC(v4);
  sub_243F5EED4(v4, &qword_27EDC1FE0, &qword_2440DBDF0);
  sub_243F5EED4(v7, &qword_27EDC1FE0, &qword_2440DBDF0);
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 blackColor];
  [v11 setBackgroundColor_];

  v13 = [objc_opt_self() sharedInstance];
  v14 = *MEMORY[0x277CB8020];
  v15 = *MEMORY[0x277CB80A8];
  v21[0] = 0;
  LODWORD(v10) = [v13 setCategory:v14 mode:v15 options:1 error:v21];

  if (v10)
  {
    v16 = v21[0];
  }

  else
  {
    v17 = v21[0];
    v18 = sub_2440D0550();

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_243FC7C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t AVLoopPlayerView.updateUIView(_:context:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  type metadata accessor for AVLayerUIView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v10 = result;
    sub_243F5F574(v1, v8, &qword_27EDC1FE0, &qword_2440DBDF0);
    v11 = OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_url;
    swift_beginAccess();
    sub_243F5F574(v10 + v11, v5, &qword_27EDC1FE0, &qword_2440DBDF0);
    swift_beginAccess();
    v12 = a1;
    sub_243FC7C00(v8, v10 + v11);
    swift_endAccess();
    sub_243FC7FAC(v5);

    sub_243F5EED4(v5, &qword_27EDC1FE0, &qword_2440DBDF0);
    return sub_243F5EED4(v8, &qword_27EDC1FE0, &qword_2440DBDF0);
  }

  return result;
}

uint64_t sub_243FC7E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FC904C(&qword_27EDC2090, type metadata accessor for AVLoopPlayerView, &protocol conformance descriptor for AVLoopPlayerView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243FC7E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FC904C(&qword_27EDC2090, type metadata accessor for AVLoopPlayerView, &protocol conformance descriptor for AVLoopPlayerView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243FC7F28(uint64_t a1)
{
  sub_243FC904C(&qword_27EDC2090, type metadata accessor for AVLoopPlayerView, &protocol conformance descriptor for AVLoopPlayerView);
  sub_2440D1CE0();
  __break(1u);
}

void sub_243FC7FAC(uint64_t a1)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v48 - v3;
  v4 = sub_2440D05F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2098, &qword_2440DBF20);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_url;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v53 = v1;
  sub_243F5F574(&v1[v18], v17, &qword_27EDC1FE0, &qword_2440DBDF0);
  v20 = v5;
  sub_243F5F574(v54, &v17[v19], &qword_27EDC1FE0, &qword_2440DBDF0);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v19], 1, v4) == 1)
    {
      sub_243F5EED4(v17, &qword_27EDC1FE0, &qword_2440DBDF0);
      return;
    }
  }

  else
  {
    sub_243F5F574(v17, v13, &qword_27EDC1FE0, &qword_2440DBDF0);
    if (v21(&v17[v19], 1, v4) != 1)
    {
      v34 = v50;
      (*(v20 + 32))(v50, &v17[v19], v4);
      sub_243FC904C(&qword_27EDC20A0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      LODWORD(v54) = sub_2440D2F50();
      v35 = v20;
      v36 = *(v20 + 8);
      v36(v34, v4);
      v22 = v4;
      v36(v13, v4);
      v20 = v35;
      sub_243F5EED4(v17, &qword_27EDC1FE0, &qword_2440DBDF0);
      if (v54)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v13, v4);
  }

  v22 = v4;
  sub_243F5EED4(v17, &qword_27EDC2098, &qword_2440DBF20);
LABEL_7:
  v23 = v53;
  v24 = [v53 layer];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = &v23[v18];
    v28 = v51;
    sub_243F5F574(v27, v51, &qword_27EDC1FE0, &qword_2440DBDF0);
    if (v21(v28, 1, v22) == 1)
    {
      sub_243F5EED4(v28, &qword_27EDC1FE0, &qword_2440DBDF0);
      [v26 setPlayer_];
      v29 = objc_opt_self();
      v30 = v24;
      v31 = [v29 blackColor];
      v32 = [v31 CGColor];

      [v26 setBackgroundColor_];
      v33 = *&v23[OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_looper];
      *&v23[OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_looper] = 0;
    }

    else
    {
      (*(v20 + 32))();
      [v26 setVideoGravity_];
      v37 = objc_allocWithZone(MEMORY[0x277CE65B0]);
      v38 = sub_2440D05A0();
      v39 = [v37 initWithURL_];

      v40 = sub_2440D3390();
      v41 = v49;
      (*(*(v40 - 8) + 56))(v49, 1, 1, v40);
      sub_2440D3360();
      v42 = v39;
      v43 = v23;
      v44 = v24;
      v45 = sub_2440D3350();
      v46 = swift_allocObject();
      v47 = MEMORY[0x277D85700];
      v46[2] = v45;
      v46[3] = v47;
      v46[4] = v42;
      v46[5] = v43;
      v46[6] = v26;
      sub_243F54830(0, 0, v41, &unk_2440DBF30, v46);

      (*(v20 + 8))(v52, v22);
    }
  }

  else
  {
  }
}

uint64_t sub_243FC8644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v6[6] = sub_2440D3360();
  v6[7] = sub_2440D3350();
  v8 = sub_2440D3320();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_243FC86E4, v8, v7);
}

uint64_t sub_243FC86E4()
{
  *(v0 + 80) = [*(v0 + 24) asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20A8, &qword_2440DBF40);
  v1 = sub_2440D0940();
  *(v0 + 88) = v1;
  v2 = sub_2440D3350();
  *(v0 + 96) = v2;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_243FC87F0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF00](v0 + 16, v1, v2, v4);
}

uint64_t sub_243FC87F0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_243FC918C;
  }

  else
  {
    v7 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_243FC8958;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_243FC8958()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = [objc_allocWithZone(MEMORY[0x277CE65F8]) initWithPlayerItem_];
  [v4 setPreventsDisplaySleepDuringVideoPlayback_];
  v5 = [objc_opt_self() playerLooperWithPlayer:v4 templateItem:v3];
  v6 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_looper);
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_looper) = v5;

  [v1 setPlayer_];
  v7 = [v1 player];
  [v7 play];

  v8 = v0[1];

  return v8();
}

id sub_243FC8C1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVLayerUIView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243FC8CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FC8D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243FC8E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0, &qword_2440DBDF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_243FC8E98(uint64_t a1)
{
  sub_243FC8F04(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_243FC8F04(uint64_t a1)
{
  if (!qword_27EDC2078)
  {
    sub_2440D05F0();
    v1 = sub_2440D3630();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC2078);
    }
  }
}

void sub_243FC8F64(uint64_t a1)
{
  sub_243FC8F04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_243FC9000()
{
  result = qword_27EDC2088;
  if (!qword_27EDC2088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC2088);
  }

  return result;
}

uint64_t sub_243FC904C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243FC9094()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243FC90E4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243F5DE2C;

  return sub_243FC8644(v5, v6, v7, v2, v3, v4);
}

uint64_t type metadata accessor for IdentityInformationView(uint64_t a1)
{
  result = qword_27EDCB310;
  if (!qword_27EDCB310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243FC91DC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IdentityInformationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_2440D1C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20B0, &qword_2440DBF50);
  sub_243FC93F8(v1, a1 + *(v6 + 44));
  v7 = sub_243F9A190();
  swift_beginAccess();
  v8 = *v7;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20B8, &qword_2440DBF58) + 36)) = v8;
  sub_243FCEE8C(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityInformationView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_243FCD404(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20C0, &qword_2440DBF60) + 36));
  *v11 = sub_243FCD468;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  sub_243FCEE8C(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityInformationView);
  v12 = swift_allocObject();
  sub_243FCD404(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v9);
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20C8, &qword_2440DBF68) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_243FCD804;
  v13[3] = v12;
}

uint64_t sub_243FC93F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_2440D1D70();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2258, &qword_2440DC1E0);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2260, &qword_2440DC1E8);
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v50 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2268, &qword_2440DC1F0);
  MEMORY[0x28223BE20](v62);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2270, &qword_2440DC1F8);
  v65 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v18 = type metadata accessor for IdentityInformationView(0);
  if (*(a1 + *(v18 + 24)))
  {
    v19 = v18;
    v52 = v14;
    v53 = v17;
    v54 = v8;
    v55 = v11;
    v56 = v12;
    v57 = a2;
    v20 = sub_2440D2090();
    v50 = &v50;
    MEMORY[0x28223BE20](v20);
    v51 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2278, &qword_2440DC200);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2280, &qword_2440DC208);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2288, &qword_2440DC210);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0258, &qword_2440E3AF0);
    v24 = sub_243FCF124();
    v25 = sub_243F67D98();
    *&v69 = v22;
    *(&v69 + 1) = v23;
    *&v70 = v24;
    *(&v70 + 1) = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v69 = v21;
    *(&v69 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_2440D13E0();
    sub_2440D1D60();
    v27 = sub_2440D2090();
    sub_2440D2080();
    sub_2440D2080();
    if (sub_2440D2080() != v27)
    {
      sub_2440D2080();
    }

    sub_243F5DD50(&qword_27EDC22A8, &qword_27EDC2258, &qword_2440DC1E0, MEMORY[0x277CDD6E0]);
    v28 = v64;
    v29 = v59;
    sub_2440D24B0();
    (*(v60 + 8))(v5, v61);
    (*(v58 + 8))(v7, v29);
    v30 = v51;
    v31 = v51 + *(v19 + 36);
    v33 = *(v31 + 8);
    LOBYTE(v69) = *v31;
    v32 = v69;
    *(&v69 + 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
    sub_2440D2820();
    v34 = (v30 + *(v19 + 32));
    v35 = *v34;
    v36 = v34[1];
    *&v69 = v35;
    *(&v69 + 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
    sub_2440D2820();
    v38 = v55;
    v39 = v53;
    v40 = v52;
    sub_2440D2B00();
    sub_2440D18E0();
    (*(v63 + 32))(v38, v28, v54);
    v41 = (v38 + *(v62 + 36));
    v42 = v74;
    v41[4] = v73;
    v41[5] = v42;
    v41[6] = v75;
    v43 = v70;
    *v41 = v69;
    v41[1] = v43;
    v44 = v72;
    v41[2] = v71;
    v41[3] = v44;
    v45 = sub_2440D2B50();
    LOBYTE(v67) = v32;
    v68 = v33;
    sub_2440D2820();
    LOBYTE(v29) = v66;
    sub_243F681C8(v38, v40, &qword_27EDC2268, &qword_2440DC1F0);
    v46 = v56;
    v47 = v40 + *(v56 + 36);
    *v47 = v45;
    *(v47 + 8) = v29;
    sub_243F681C8(v40, v39, &qword_27EDC2270, &qword_2440DC1F8);
    v48 = v57;
    sub_243F681C8(v39, v57, &qword_27EDC2270, &qword_2440DC1F8);
    return (*(v65 + 56))(v48, 0, 1, v46);
  }

  else
  {
    v37 = *(v65 + 56);

    return v37(a2, 1, 1, v12);
  }
}

uint64_t sub_243FC9C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v64 = a3;
  v5 = sub_2440D1F60();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityInformationView(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = v10;
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2298, &unk_2440DC218);
  MEMORY[0x28223BE20](v51);
  v13 = &v48 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC22B0, &qword_2440DC228);
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v15 = &v48 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2288, &qword_2440DC210);
  MEMORY[0x28223BE20](v61);
  v50 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2280, &qword_2440DC208);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  MEMORY[0x28223BE20](v17);
  v57 = &v48 - v19;
  *v13 = sub_2440D1C20();
  *(v13 + 1) = 0;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC22B8, &unk_2440DC230);
  v20 = *(a1 + 16);
  v65 = 0;
  v66 = v20;
  swift_getKeyPath();
  v55 = type metadata accessor for IdentityInformationView;
  v21 = a2;
  v22 = v11;
  v52 = v11;
  sub_243FCEE8C(v21, v11, type metadata accessor for IdentityInformationView);
  v53 = *(v9 + 80);
  v23 = (v53 + 24) & ~v53;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  sub_243FCD404(v22, v24 + v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0FA0, &qword_2440D8180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC22C0, &qword_2440DC260);
  sub_243F8B4B4();
  sub_243FCF4A8();
  sub_2440D29B0();
  sub_2440D1F30();
  v25 = sub_243F5DD50(&qword_27EDC22A0, &qword_27EDC2298, &unk_2440DC218, MEMORY[0x277CE1198]);
  v26 = v51;
  sub_2440D2490();
  (*(v59 + 8))(v7, v60);
  sub_243F5EED4(v13, &qword_27EDC2298, &unk_2440DC218);
  v27 = v49;
  sub_243FCCB28();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v65 = v26;
  v66 = v25;
  swift_getOpaqueTypeConformance2();
  v34 = v50;
  v35 = v56;
  sub_2440D2430();
  sub_243F62C68(v29, v31, v33 & 1);

  (*(v58 + 8))(v15, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
  v36 = v27;
  sub_2440D1E60();
  v69[0] = 6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258, &qword_2440E3AF0);
  v38 = sub_243FCF124();
  v39 = sub_243F67D98();
  v40 = v57;
  v41 = v61;
  sub_2440D24A0();

  sub_243FCF644(v34);
  v42 = v52;
  sub_243FCEE8C(v36, v52, v55);
  v43 = (v53 + 16) & ~v53;
  v44 = swift_allocObject();
  sub_243FCD404(v42, v44 + v43);
  v65 = v41;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v62;
  sub_24408F1EC(sub_243FCF830, v44, v62, OpaqueTypeConformance2);

  return (*(v63 + 8))(v40, v46);
}

void sub_243FCA304(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v352 = a4;
  v353 = a3;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC22F0, &qword_2440DC278);
  MEMORY[0x28223BE20](v338);
  v339 = &v313 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC22E8, &qword_2440DC270);
  MEMORY[0x28223BE20](v7);
  v340 = &v313 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2108, &qword_2440DBFB0);
  MEMORY[0x28223BE20](v9 - 8);
  v327 = &v313 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v322 = &v313 - v12;
  MEMORY[0x28223BE20](v13);
  v345 = &v313 - v14;
  MEMORY[0x28223BE20](v15);
  v318 = &v313 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2110, &qword_2440DBFB8);
  MEMORY[0x28223BE20](v17 - 8);
  v337 = &v313 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v335 = &v313 - v20;
  MEMORY[0x28223BE20](v21);
  v344 = &v313 - v22;
  MEMORY[0x28223BE20](v23);
  v333 = &v313 - v24;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2118, &qword_2440DBFC0);
  MEMORY[0x28223BE20](v346);
  v343 = (&v313 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v342 = &v313 - v27;
  MEMORY[0x28223BE20](v28);
  v341 = (&v313 - v29);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2120, &qword_2440DBFC8);
  MEMORY[0x28223BE20](v347);
  v326 = &v313 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v321 = &v313 - v32;
  MEMORY[0x28223BE20](v33);
  v317 = &v313 - v34;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2128, &qword_2440DBFD0);
  MEMORY[0x28223BE20](v348);
  v325 = &v313 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v313 - v37;
  MEMORY[0x28223BE20](v39);
  v316 = &v313 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2170, &unk_2440DC070);
  MEMORY[0x28223BE20](v41);
  v324 = &v313 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v328 = &v313 - v44;
  MEMORY[0x28223BE20](v45);
  v319 = &v313 - v46;
  MEMORY[0x28223BE20](v47);
  v323 = &v313 - v48;
  MEMORY[0x28223BE20](v49);
  v315 = &v313 - v50;
  MEMORY[0x28223BE20](v51);
  v320 = &v313 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC22F8, &qword_2440DC280);
  MEMORY[0x28223BE20](v53);
  v55 = &v313 - v54;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2300, &qword_2440DC288);
  MEMORY[0x28223BE20](v332);
  v334 = &v313 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC22D8, &qword_2440DC268);
  MEMORY[0x28223BE20](v57);
  v336 = &v313 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2100, &qword_2440DBFA8);
  MEMORY[0x28223BE20](v59);
  v62 = &v313 - v61;
  v63 = *a1;
  if ((v63 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v63 < *(a2 + 16))
  {
    v64 = a2 + 24 * v63;
    v65 = *(v64 + 32);
    v66 = *(v64 + 40);
    v67 = *(v64 + 48);
    v350 = v53;
    v351 = v57;
    v349 = v41;
    if (v67 > 1)
    {
      v73 = v65;
      v330 = v55;
      v331 = v7;
      v329 = v63;
      if (v67 != 2)
      {
        v145 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
        v146 = swift_allocObject();
        v147 = MEMORY[0x277D83B88];
        *(v146 + 16) = xmmword_2440D5CF0;
        v148 = MEMORY[0x277D83C10];
        *(v146 + 56) = v147;
        *(v146 + 64) = v148;
        *(v146 + 32) = v73;
        if (v145)
        {
          v334 = sub_244057E7C(0, v146, 0xD00000000000001DLL, 0x80000002440EAFC0);
          v341 = v149;

          v342 = sub_2440D26C0();
          v336 = 0;
        }

        else
        {
          v334 = sub_244057E7C(0, v146, 0xD000000000000021, 0x80000002440EAF10);
          v341 = v236;

          sub_2440D2650();

          v336 = v342;
        }

        v333 = "GE_NOT_OVER_VALUE";
        v335 = "IDENTITY_FIELD_AGE";
        v237 = sub_2440D1C20();
        v238 = v343;
        *v343 = v237;
        v238[1] = 0;
        *(v238 + 16) = 0;
        sub_24401FBC0();
        v239 = sub_24401FBD4(0xD000000000000012, 0x80000002440EAF70);
        v241 = v240;
        v243 = v242;
        sub_2440D2150();
        v244 = sub_2440D22E0();
        v246 = v245;
        v248 = v247;

        sub_243F62C68(v239, v241, v243 & 1);

        sub_2440D26D0();
        v332 = sub_2440D22C0();
        v250 = v249;
        LOBYTE(v239) = v251;
        v253 = v252;

        sub_243F62C68(v244, v246, v248 & 1);

        v254 = sub_2440D20D0();
        sub_2440D13D0();
        v256 = v255;
        v258 = v257;
        v260 = v259;
        v262 = v261;
        LOBYTE(v239) = v239 & 1;
        v387 = v239;
        v386 = 0;
        sub_2440D2B00();
        sub_2440D18E0();
        *&v388[55] = v392;
        *&v388[71] = v393;
        *&v388[87] = v394;
        *&v388[103] = v395;
        *&v388[7] = v389;
        *&v388[23] = v390;
        *&v388[39] = v391;
        *&v369 = v332;
        *(&v369 + 1) = v250;
        LOBYTE(v370) = v239;
        *(&v370 + 1) = v253;
        LOBYTE(v371) = v254;
        *(&v371 + 1) = v256;
        *&v372 = v258;
        *(&v372 + 1) = v260;
        *&v373[0] = v262;
        BYTE8(v373[0]) = 0;
        *(&v373[4] + 9) = *&v388[64];
        *(&v373[5] + 9) = *&v388[80];
        *(&v373[6] + 9) = *&v388[96];
        *(&v373[7] + 1) = *(&v395 + 1);
        *(v373 + 9) = *v388;
        *(&v373[1] + 9) = *&v388[16];
        *(&v373[2] + 9) = *&v388[32];
        *(&v373[3] + 9) = *&v388[48];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2130, &qword_2440DBFD8);
        sub_243FCDD40();
        sub_2440D24E0();
        v382 = v373[4];
        v383 = v373[5];
        v384 = v373[6];
        v385 = v373[7];
        v378 = v373[0];
        v379 = v373[1];
        v380 = v373[2];
        v381 = v373[3];
        v374 = v369;
        v375 = v370;
        v376 = v371;
        v377 = v372;
        sub_243F5EED4(&v374, &qword_27EDC2130, &qword_2440DBFD8);
        *&v369 = v334;
        *(&v369 + 1) = v341;
        sub_243F4EF64();

        v263 = sub_2440D2310();
        v265 = v264;
        v267 = v266;
        v268 = type metadata accessor for IdentityInformationView(0);
        v269 = *(v353 + *(v268 + 24));
        v334 = v268;
        if (v269 && *(v269 + 16) == 2)
        {
          sub_2440D2130();
        }

        else
        {
          sub_2440D2160();
        }

        v270 = sub_2440D22E0();
        v272 = v271;
        v274 = v273;

        sub_243F62C68(v263, v265, v267 & 1);

        sub_2440D2180();
        v275 = sub_2440D22A0();
        v277 = v276;
        v279 = v278;
        v281 = v280;
        sub_243F62C68(v270, v272, v274 & 1);

        KeyPath = swift_getKeyPath();
        v283 = swift_getKeyPath();
        v368 = v279 & 1;
        v284 = v342;

        sub_2440D2B00();
        v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2140, &qword_2440DC048);
        v333 = v343 + *(v285 + 44);
        sub_2440D18E0();
        *&v357 = v275;
        *(&v357 + 1) = v277;
        LOBYTE(v358) = v279 & 1;
        *(&v358 + 1) = v281;
        *&v359 = KeyPath;
        BYTE8(v359) = 1;
        *&v360 = v283;
        *(&v360 + 1) = v284;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2148, &qword_2440DC050);
        sub_243FCE06C();
        v286 = v327;
        sub_2440D24E0();
        v373[4] = v365;
        v373[5] = v366;
        v373[6] = v367;
        v373[0] = v361;
        v373[1] = v362;
        v373[2] = v363;
        v373[3] = v364;
        v369 = v357;
        v370 = v358;
        v371 = v359;
        v372 = v360;
        sub_243F5EED4(&v369, &qword_27EDC2148, &qword_2440DC050);
        v287 = v337;
        v288 = v344;
        sub_243F5F574(v337, v344, &qword_27EDC2110, &qword_2440DBFB8);
        v289 = v345;
        sub_243F5F574(v286, v345, &qword_27EDC2108, &qword_2440DBFB0);
        v290 = v333;
        sub_243F5F574(v288, v333, &qword_27EDC2110, &qword_2440DBFB8);
        v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2168, &qword_2440DC068);
        sub_243F5F574(v289, &v290[*(v291 + 48)], &qword_27EDC2108, &qword_2440DBFB0);
        sub_243F5EED4(v286, &qword_27EDC2108, &qword_2440DBFB0);
        sub_243F5EED4(v287, &qword_27EDC2110, &qword_2440DBFB8);
        sub_243F5EED4(v289, &qword_27EDC2108, &qword_2440DBFB0);
        sub_243F5EED4(v288, &qword_27EDC2110, &qword_2440DBFB8);

        LOBYTE(v275) = sub_2440D20C0();
        sub_2440D13D0();
        v292 = v343;
        v293 = v343 + *(v346 + 36);
        *v293 = v275;
        *(v293 + 1) = v294;
        *(v293 + 2) = v295;
        *(v293 + 3) = v296;
        *(v293 + 4) = v297;
        v293[40] = 0;
        v298 = v353 + *(v334 + 36);
        v299 = *v298;
        v300 = *(v298 + 8);
        LOBYTE(v357) = *v298;
        *(&v357 + 1) = v300;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
        sub_2440D2820();
        v301 = 0.0;
        if (v356)
        {
          v302 = 1.0;
        }

        else
        {
          v302 = 0.0;
        }

        v303 = v292;
        v304 = v326;
        sub_243F681C8(v303, v326, &qword_27EDC2118, &qword_2440DBFC0);
        *(v304 + *(v347 + 36)) = v302;
        LOBYTE(v357) = v299;
        *(&v357 + 1) = v300;
        sub_2440D2820();
        if (v356)
        {
          v305 = 0.0;
        }

        else
        {
          v305 = (v329 + 1) * 27.0;
        }

        v306 = v304;
        v307 = v325;
        sub_243F681C8(v306, v325, &qword_27EDC2120, &qword_2440DBFC8);
        v308 = v307 + *(v348 + 36);
        *v308 = 0;
        *(v308 + 8) = v305;
        LOBYTE(v357) = v299;
        *(&v357 + 1) = v300;
        sub_2440D2820();

        if (!v356)
        {
          v301 = 4.0;
        }

        v309 = v324;
        sub_243F681C8(v307, v324, &qword_27EDC2128, &qword_2440DBFD0);
        v310 = v309 + *(v349 + 36);
        *v310 = v301;
        *(v310 + 8) = 0;
        v311 = v328;
        sub_243F681C8(v309, v328, &qword_27EDC2170, &unk_2440DC070);

        sub_243F5F574(v311, v339, &qword_27EDC2170, &unk_2440DC070);
        swift_storeEnumTagMultiPayload();
        sub_243FCE820();
        v312 = v340;
        sub_2440D1D20();
        sub_243F5F574(v312, v330, &qword_27EDC22E8, &qword_2440DC270);
        swift_storeEnumTagMultiPayload();
        sub_243FCF534();
        sub_243FCF5C0();
        sub_2440D1D20();
        sub_243F5EED4(v312, &qword_27EDC22E8, &qword_2440DC270);
        v70 = v311;
        v71 = &qword_27EDC2170;
        v72 = &unk_2440DC070;
        goto LABEL_50;
      }

      v337 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
      v74 = swift_allocObject();
      v75 = MEMORY[0x277D83B88];
      *(v74 + 16) = xmmword_2440D5CF0;
      v76 = MEMORY[0x277D83C10];
      *(v74 + 56) = v75;
      *(v74 + 64) = v76;
      *(v74 + 32) = v73;
      v334 = sub_244057E7C(0, v74, 0xD000000000000021, 0x80000002440EAFE0);
      v341 = v77;

      v332 = "GE_IN_YEARS_VALUE";
      v336 = "cument_age_label";
      v343 = sub_2440D26C0();
      v78 = sub_2440D1C20();
      v79 = v342;
      *v342 = v78;
      *(v79 + 1) = 0;
      v79[16] = 0;
      sub_24401FBC0();
      v80 = sub_24401FBD4(0xD000000000000012, 0x80000002440EAF70);
      v82 = v81;
      v84 = v83;
      sub_2440D2150();
      v85 = sub_2440D22E0();
      v87 = v86;
      v89 = v88;

      sub_243F62C68(v80, v82, v84 & 1);

      sub_2440D26D0();
      v333 = sub_2440D22C0();
      v91 = v90;
      LOBYTE(v80) = v92;
      v94 = v93;

      sub_243F62C68(v85, v87, v89 & 1);

      v95 = sub_2440D20D0();
      sub_2440D13D0();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v103 = v102;
      LOBYTE(v80) = v80 & 1;
      v387 = v80;
      v386 = 0;
      sub_2440D2B00();
      sub_2440D18E0();
      *&v355[55] = v392;
      *&v355[71] = v393;
      *&v355[87] = v394;
      *&v355[103] = v395;
      *&v355[7] = v389;
      *&v355[23] = v390;
      *&v355[39] = v391;
      *&v369 = v333;
      *(&v369 + 1) = v91;
      LOBYTE(v370) = v80;
      *(&v370 + 1) = v94;
      LOBYTE(v371) = v95;
      *(&v371 + 1) = v97;
      *&v372 = v99;
      *(&v372 + 1) = v101;
      *&v373[0] = v103;
      BYTE8(v373[0]) = 0;
      *(&v373[4] + 9) = *&v355[64];
      *(&v373[5] + 9) = *&v355[80];
      *(&v373[6] + 9) = *&v355[96];
      *(&v373[7] + 1) = *(&v395 + 1);
      *(v373 + 9) = *v355;
      *(&v373[1] + 9) = *&v355[16];
      *(&v373[2] + 9) = *&v355[32];
      *(&v373[3] + 9) = *&v355[48];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2130, &qword_2440DBFD8);
      sub_243FCDD40();
      sub_2440D24E0();
      v382 = v373[4];
      v383 = v373[5];
      v384 = v373[6];
      v385 = v373[7];
      v378 = v373[0];
      v379 = v373[1];
      v380 = v373[2];
      v381 = v373[3];
      v374 = v369;
      v375 = v370;
      v376 = v371;
      v377 = v372;
      sub_243F5EED4(&v374, &qword_27EDC2130, &qword_2440DBFD8);
      *&v369 = v334;
      *(&v369 + 1) = v341;
      sub_243F4EF64();

      v104 = sub_2440D2310();
      v106 = v105;
      v108 = v107;
      v109 = type metadata accessor for IdentityInformationView(0);
      v110 = *(v353 + *(v109 + 24));
      v333 = 0xD000000000000020;
      v334 = v109;
      if (v110 && *(v110 + 16) == 2)
      {
        sub_2440D2130();
      }

      else
      {
        sub_2440D2160();
      }

      v150 = sub_2440D22E0();
      v152 = v151;
      v154 = v153;

      sub_243F62C68(v104, v106, v108 & 1);

      sub_2440D2180();
      v155 = sub_2440D22A0();
      v157 = v156;
      v159 = v158;
      v161 = v160;
      sub_243F62C68(v150, v152, v154 & 1);

      v162 = swift_getKeyPath();
      v163 = swift_getKeyPath();
      v368 = v159 & 1;
      v164 = v343;

      sub_2440D2B00();
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2140, &qword_2440DC048);
      v332 = &v342[*(v165 + 44)];
      sub_2440D18E0();
      *&v357 = v155;
      *(&v357 + 1) = v157;
      LOBYTE(v358) = v159 & 1;
      *(&v358 + 1) = v161;
      *&v359 = v162;
      BYTE8(v359) = 1;
      *&v360 = v163;
      *(&v360 + 1) = v164;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2148, &qword_2440DC050);
      sub_243FCE06C();
      v166 = v322;
      sub_2440D24E0();
      v373[4] = v365;
      v373[5] = v366;
      v373[6] = v367;
      v373[0] = v361;
      v373[1] = v362;
      v373[2] = v363;
      v373[3] = v364;
      v369 = v357;
      v370 = v358;
      v371 = v359;
      v372 = v360;
      sub_243F5EED4(&v369, &qword_27EDC2148, &qword_2440DC050);
      v167 = v335;
      v168 = v344;
      sub_243F5F574(v335, v344, &qword_27EDC2110, &qword_2440DBFB8);
      v169 = v345;
      sub_243F5F574(v166, v345, &qword_27EDC2108, &qword_2440DBFB0);
      v170 = v332;
      sub_243F5F574(v168, v332, &qword_27EDC2110, &qword_2440DBFB8);
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2168, &qword_2440DC068);
      sub_243F5F574(v169, &v170[*(v171 + 48)], &qword_27EDC2108, &qword_2440DBFB0);
      sub_243F5EED4(v166, &qword_27EDC2108, &qword_2440DBFB0);
      sub_243F5EED4(v167, &qword_27EDC2110, &qword_2440DBFB8);
      sub_243F5EED4(v169, &qword_27EDC2108, &qword_2440DBFB0);
      sub_243F5EED4(v168, &qword_27EDC2110, &qword_2440DBFB8);

      LOBYTE(v155) = sub_2440D20C0();
      sub_2440D13D0();
      v172 = v342;
      v173 = &v342[*(v346 + 36)];
      *v173 = v155;
      *(v173 + 1) = v174;
      *(v173 + 2) = v175;
      *(v173 + 3) = v176;
      *(v173 + 4) = v177;
      v173[40] = 0;
      v178 = v353 + *(v334 + 36);
      v179 = *v178;
      v180 = *(v178 + 8);
      LOBYTE(v357) = *v178;
      *(&v357 + 1) = v180;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
      sub_2440D2820();
      v181 = 0.0;
      if (v356)
      {
        v182 = 1.0;
      }

      else
      {
        v182 = 0.0;
      }

      v183 = v172;
      v184 = v321;
      sub_243F681C8(v183, v321, &qword_27EDC2118, &qword_2440DBFC0);
      *(v184 + *(v347 + 36)) = v182;
      LOBYTE(v357) = v179;
      *(&v357 + 1) = v180;
      sub_2440D2820();
      if (v356)
      {
        v185 = 0.0;
      }

      else
      {
        v185 = (v329 + 1) * 27.0;
      }

      v186 = v184;
      v187 = v337;
      sub_243F681C8(v186, v337, &qword_27EDC2120, &qword_2440DBFC8);
      v188 = v187 + *(v348 + 36);
      *v188 = 0;
      *(v188 + 8) = v185;
      LOBYTE(v357) = v179;
      *(&v357 + 1) = v180;
      sub_2440D2820();

      if (!v356)
      {
        v181 = 4.0;
      }

      v189 = v319;
      sub_243F681C8(v187, v319, &qword_27EDC2128, &qword_2440DBFD0);
      v190 = v189 + *(v349 + 36);
      *v190 = v181;
      *(v190 + 8) = 0;
      v191 = v323;
      sub_243F681C8(v189, v323, &qword_27EDC2170, &unk_2440DC070);
      sub_243F5F574(v191, v339, &qword_27EDC2170, &unk_2440DC070);
      swift_storeEnumTagMultiPayload();
      sub_243FCE820();
      v192 = v340;
      sub_2440D1D20();
      v193 = &qword_27EDC22E8;
      v194 = &qword_2440DC270;
      sub_243F5F574(v192, v330, &qword_27EDC22E8, &qword_2440DC270);
    }

    else
    {
      v343 = v60;
      v314 = v66;
      if (!v67)
      {
        v68 = v65;
        sub_243FCC738(v65, v62);
        sub_243F5F574(v62, v334, &qword_27EDC2100, &qword_2440DBFA8);
        swift_storeEnumTagMultiPayload();
        sub_243FCEA7C();
        sub_243FCE820();
        v69 = v336;
        sub_2440D1D20();
        sub_243F5F574(v69, v55, &qword_27EDC22D8, &qword_2440DC268);
        swift_storeEnumTagMultiPayload();
        sub_243FCF534();
        sub_243FCF5C0();
        sub_2440D1D20();
        sub_243FCE1B0(v68, v314, 0);
        sub_243F5EED4(v69, &qword_27EDC22D8, &qword_2440DC268);
        v70 = v62;
        v71 = &qword_27EDC2100;
        v72 = &qword_2440DBFA8;
LABEL_50:
        sub_243F5EED4(v70, v71, v72);
        return;
      }

      v329 = v63;
      v330 = v55;
      v331 = v7;
      v338 = "cument_age_value";
      v339 = "IDENTITY_FIELD_NAME";
      v342 = v65;

      v340 = sub_2440D26C0();
      v111 = sub_2440D1C20();
      v112 = v341;
      *v341 = v111;
      v112[1] = 0;
      *(v112 + 16) = 0;
      sub_24401FBC0();
      v113 = sub_24401FBD4(0xD000000000000013, 0x80000002440EB0A0);
      v115 = v114;
      v117 = v116;
      sub_2440D2150();
      v118 = sub_2440D22E0();
      v120 = v119;
      v122 = v121;

      sub_243F62C68(v113, v115, v117 & 1);

      sub_2440D26D0();
      v123 = sub_2440D22C0();
      v125 = v124;
      v127 = v126;
      v129 = v128;

      sub_243F62C68(v118, v120, v122 & 1);

      LOBYTE(v115) = sub_2440D20D0();
      sub_2440D13D0();
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v137 = v136;
      v387 = v127 & 1;
      v386 = 0;
      sub_2440D2B00();
      sub_2440D18E0();
      *(&v354[3] + 7) = v392;
      *(&v354[4] + 7) = v393;
      *(&v354[5] + 7) = v394;
      *(&v354[6] + 7) = v395;
      *(v354 + 7) = v389;
      *(&v354[1] + 7) = v390;
      *(&v354[2] + 7) = v391;
      *&v369 = v123;
      *(&v369 + 1) = v125;
      LOBYTE(v370) = v127 & 1;
      *(&v370 + 1) = v129;
      LOBYTE(v371) = v115;
      *(&v371 + 1) = v131;
      *&v372 = v133;
      *(&v372 + 1) = v135;
      *&v373[0] = v137;
      BYTE8(v373[0]) = 0;
      *(&v373[4] + 9) = v354[4];
      *(&v373[5] + 9) = v354[5];
      *(&v373[6] + 9) = v354[6];
      *(&v373[7] + 1) = *(&v395 + 1);
      *(v373 + 9) = v354[0];
      *(&v373[1] + 9) = v354[1];
      *(&v373[2] + 9) = v354[2];
      *(&v373[3] + 9) = v354[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2130, &qword_2440DBFD8);
      sub_243FCDD40();
      sub_2440D24E0();
      v382 = v373[4];
      v383 = v373[5];
      v384 = v373[6];
      v385 = v373[7];
      v378 = v373[0];
      v379 = v373[1];
      v380 = v373[2];
      v381 = v373[3];
      v374 = v369;
      v375 = v370;
      v376 = v371;
      v377 = v372;
      sub_243F5EED4(&v374, &qword_27EDC2130, &qword_2440DBFD8);
      *&v369 = v342;
      *(&v369 + 1) = v314;
      sub_243F4EF64();

      v138 = sub_2440D2310();
      v140 = v139;
      v142 = v141;
      v143 = type metadata accessor for IdentityInformationView(0);
      v144 = *(v353 + *(v143 + 24));
      v338 = v143;
      if (v144 && *(v144 + 16) == 2)
      {
        sub_2440D2130();
      }

      else
      {
        sub_2440D2160();
      }

      v195 = sub_2440D22E0();
      v197 = v196;
      v199 = v198;

      sub_243F62C68(v138, v140, v142 & 1);

      sub_2440D2180();
      v200 = sub_2440D22A0();
      v202 = v201;
      v204 = v203;
      v206 = v205;
      sub_243F62C68(v195, v197, v199 & 1);

      v207 = swift_getKeyPath();
      v208 = swift_getKeyPath();
      v368 = v204 & 1;
      v209 = v340;

      sub_2440D2B00();
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2140, &qword_2440DC048);
      v337 = v341 + *(v210 + 44);
      sub_2440D18E0();
      *&v357 = v200;
      *(&v357 + 1) = v202;
      LOBYTE(v358) = v204 & 1;
      *(&v358 + 1) = v206;
      *&v359 = v207;
      BYTE8(v359) = 1;
      *&v360 = v208;
      *(&v360 + 1) = v209;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2148, &qword_2440DC050);
      sub_243FCE06C();
      v211 = v318;
      sub_2440D24E0();
      v373[4] = v365;
      v373[5] = v366;
      v373[6] = v367;
      v373[0] = v361;
      v373[1] = v362;
      v373[2] = v363;
      v373[3] = v364;
      v369 = v357;
      v370 = v358;
      v371 = v359;
      v372 = v360;
      sub_243F5EED4(&v369, &qword_27EDC2148, &qword_2440DC050);
      v212 = v333;
      v213 = v344;
      sub_243F5F574(v333, v344, &qword_27EDC2110, &qword_2440DBFB8);
      v214 = v345;
      sub_243F5F574(v211, v345, &qword_27EDC2108, &qword_2440DBFB0);
      v215 = v337;
      sub_243F5F574(v213, v337, &qword_27EDC2110, &qword_2440DBFB8);
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2168, &qword_2440DC068);
      sub_243F5F574(v214, v215 + *(v216 + 48), &qword_27EDC2108, &qword_2440DBFB0);
      sub_243F5EED4(v211, &qword_27EDC2108, &qword_2440DBFB0);
      sub_243F5EED4(v212, &qword_27EDC2110, &qword_2440DBFB8);
      sub_243F5EED4(v214, &qword_27EDC2108, &qword_2440DBFB0);
      sub_243F5EED4(v213, &qword_27EDC2110, &qword_2440DBFB8);
      sub_243FCE1B0(v342, v314, 1);
      LOBYTE(v200) = sub_2440D20C0();
      sub_2440D13D0();
      v217 = v341;
      v218 = v341 + *(v346 + 36);
      *v218 = v200;
      *(v218 + 1) = v219;
      *(v218 + 2) = v220;
      *(v218 + 3) = v221;
      *(v218 + 4) = v222;
      v218[40] = 0;
      v223 = v353 + *(v338 + 9);
      v224 = *v223;
      v225 = *(v223 + 8);
      LOBYTE(v357) = *v223;
      *(&v357 + 1) = v225;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
      sub_2440D2820();
      v226 = 0.0;
      if (v356)
      {
        v227 = 1.0;
      }

      else
      {
        v227 = 0.0;
      }

      v228 = v217;
      v229 = v317;
      sub_243F681C8(v228, v317, &qword_27EDC2118, &qword_2440DBFC0);
      *(v229 + *(v347 + 36)) = v227;
      LOBYTE(v357) = v224;
      *(&v357 + 1) = v225;
      sub_2440D2820();
      if (v356)
      {
        v230 = 0.0;
      }

      else
      {
        v230 = (v329 + 1) * 27.0;
      }

      v231 = v229;
      v232 = v316;
      sub_243F681C8(v231, v316, &qword_27EDC2120, &qword_2440DBFC8);
      v233 = v232 + *(v348 + 36);
      *v233 = 0;
      *(v233 + 8) = v230;
      LOBYTE(v357) = v224;
      *(&v357 + 1) = v225;
      sub_2440D2820();

      if (!v356)
      {
        v226 = 4.0;
      }

      v234 = v315;
      sub_243F681C8(v232, v315, &qword_27EDC2128, &qword_2440DBFD0);
      v235 = v234 + *(v349 + 36);
      *v235 = v226;
      *(v235 + 8) = 0;
      v191 = v320;
      sub_243F681C8(v234, v320, &qword_27EDC2170, &unk_2440DC070);
      sub_243F5F574(v191, v334, &qword_27EDC2170, &unk_2440DC070);
      swift_storeEnumTagMultiPayload();
      sub_243FCEA7C();
      sub_243FCE820();
      v192 = v336;
      sub_2440D1D20();
      v193 = &qword_27EDC22D8;
      v194 = &qword_2440DC268;
      sub_243F5F574(v192, v330, &qword_27EDC22D8, &qword_2440DC268);
    }

    swift_storeEnumTagMultiPayload();
    sub_243FCF534();
    sub_243FCF5C0();
    sub_2440D1D20();
    sub_243F5EED4(v192, v193, v194);
    v70 = v191;
    v71 = &qword_27EDC2170;
    v72 = &unk_2440DC070;
    goto LABEL_50;
  }

  __break(1u);
}

uint64_t sub_243FCC738@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20D0, &qword_2440DBF70);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20D8, &qword_2440DBF78);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20E0, &qword_2440DBF80);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20E8, &qword_2440DBF88);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v46 = &v45 - v18;
  *v7 = sub_2440D1C20();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20F0, &qword_2440DBF90);
  sub_243FCD890(a1, &v7[*(v19 + 44)]);
  sub_244071168();
  sub_2440D2B00();
  sub_2440D1560();
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC20F8, &unk_2440DBF98) + 36)];
  v21 = v52;
  *v20 = v51;
  *(v20 + 1) = v21;
  *(v20 + 2) = v53;
  LOBYTE(a1) = sub_2440D20D0();
  sub_2440D13D0();
  v22 = &v7[*(v5 + 44)];
  *v22 = a1;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = (v2 + *(type metadata accessor for IdentityInformationView(0) + 36));
  v28 = *v27;
  v29 = *(v27 + 1);
  v49 = *v27;
  v50 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  if (v48)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 1.05;
  }

  sub_2440D2C40();
  v32 = v31;
  v34 = v33;
  sub_243F681C8(v7, v11, &qword_27EDC20D0, &qword_2440DBF70);
  v35 = &v11[*(v9 + 44)];
  *v35 = v30;
  *(v35 + 1) = v30;
  *(v35 + 2) = v32;
  *(v35 + 3) = v34;
  v49 = v28;
  v50 = v29;
  sub_2440D2820();
  v36 = 0.0;
  if (v48)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 4.0;
  }

  sub_243F681C8(v11, v15, &qword_27EDC20D8, &qword_2440DBF78);
  v38 = &v15[*(v13 + 44)];
  *v38 = v37;
  v38[8] = 0;
  v49 = v28;
  v50 = v29;
  sub_2440D2820();
  if (v48)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = v15;
  v41 = v46;
  sub_243F681C8(v40, v46, &qword_27EDC20E0, &qword_2440DBF80);
  *(v41 + *(v17 + 44)) = v39;
  v49 = v28;
  v50 = v29;
  sub_2440D2820();
  if (!v48)
  {
    v36 = 32.0;
  }

  v42 = v47;
  sub_243F681C8(v41, v47, &qword_27EDC20E8, &qword_2440DBF88);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2100, &qword_2440DBFA8);
  v44 = v42 + *(result + 36);
  *v44 = 0;
  *(v44 + 8) = v36;
  return result;
}

void sub_243FCCB28()
{
  v1 = v0;
  v2 = type metadata accessor for IdentityInformationView(0);
  v3 = *(v0 + *(v2 + 24));
  if (v3)
  {
    v4 = v2;
    v5 = 0;
    v6 = 0;
    v30 = 0;
    v7 = *(v3 + 16);
    v8 = 0xE000000000000000;
    v9 = 0xE000000000000000;
LABEL_3:
    v10 = (v3 + 48 + 24 * v5);
    while (v7 != v5)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      ++v5;
      v11 = v10 + 24;
      v12 = *v10;
      if (v12 == 3)
      {
        v19 = *(v10 - 2);
        v20 = *(v10 - 2);

        if (v20)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_2440D5CF0;
          *(v21 + 56) = MEMORY[0x277D83B88];
          *(v21 + 64) = MEMORY[0x277D83C10];
          *(v21 + 32) = v19;
          v22 = 0xD000000000000021;
          v23 = "_AGE_OVER_FAILED";
LABEL_13:
          v6 = sub_244057E7C(0, v21, v22, v23 | 0x8000000000000000);
          v8 = v25;

          goto LABEL_3;
        }

        v6 = sub_2440579C8(0, 0xD000000000000020, 0x80000002440EAE00);
        v8 = v26;
        goto LABEL_3;
      }

      if (v12 == 2)
      {
        v24 = *(v10 - 2);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_2440D5CF0;
        *(v21 + 56) = MEMORY[0x277D83B88];
        *(v21 + 64) = MEMORY[0x277D83C10];
        *(v21 + 32) = v24;
        v22 = 0xD000000000000014;
        v23 = "_AGE_OVER_SUCCESS";
        goto LABEL_13;
      }

      v10 += 24;
      if (v12 == 1)
      {
        v13 = v4;
        v14 = v1;
        v15 = *(v11 - 5);
        v16 = *(v11 - 4);

        v30 = sub_2440579C8(0, 0xD000000000000024, 0x80000002440EAE80);
        v9 = v17;
        v18 = v16;
        v1 = v14;
        v4 = v13;
        sub_243FCE1B0(v15, v18, 1);
        goto LABEL_3;
      }
    }

    sub_2440579C8(0, 0xD000000000000024, 0x80000002440E9020);

    MEMORY[0x245D57000](32, 0xE100000000000000);

    v27 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v27 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {

      MEMORY[0x245D57000](32, 0xE100000000000000);
      MEMORY[0x245D57000](v6, v8);
    }

    v28 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v28 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {

      MEMORY[0x245D57000](32, 0xE100000000000000);

      MEMORY[0x245D57000](v30, v9);
    }

    else
    {
    }

    if (*(v1 + *(v4 + 28)) == 1)
    {
      v29 = sub_2440579C8(0, 0xD000000000000026, 0x80000002440EAEB0);
      MEMORY[0x245D57000](v29);
    }

    sub_243F4EF64();
    sub_2440D2310();
  }

  else
  {
    sub_2440D1B70();
    sub_2440D2300();
  }
}

uint64_t sub_243FCCF40(uint64_t a1)
{
  v31 = sub_2440D2C80();
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityInformationView(0);
  v7 = v6 - 8;
  v27 = *(v6 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_2440D2CD0();
  v29 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = (a1 + *(v7 + 44));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(aBlock) = v17;
  v36 = v18;
  v41 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2830();
  sub_243F5DB84();
  v19 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v28 = *(v10 + 8);
  v28(v12, v9);
  sub_243FCEE8C(a1, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityInformationView);
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  sub_243FCD404(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v39 = sub_243FCF084;
  v40 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_243F5F604;
  v38 = &block_descriptor_19_0;
  v22 = _Block_copy(&aBlock);

  sub_2440D2C90();
  aBlock = MEMORY[0x277D84F90];
  sub_243FCF250(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  v23 = v30;
  v24 = v31;
  sub_2440D3710();
  MEMORY[0x245D57400](v15, v5, v23, v22);
  _Block_release(v22);

  (*(v34 + 8))(v23, v24);
  (*(v32 + 8))(v5, v33);
  return (v28)(v15, v29);
}

uint64_t sub_243FCD404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityInformationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FCD480(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440D2CA0();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityInformationView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243F5DB84();
  v11 = sub_2440D3530();
  sub_243FCEE8C(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentityInformationView);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243FCD404(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_243FCF064;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243FCF250(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v14);
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t sub_243FCD81C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IdentityInformationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_243FCD890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_2440D2AC0();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D18B0();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D2770();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2238, &qword_2440DC1C8);
  MEMORY[0x28223BE20](v39);
  v14 = &v39 - v13;
  v15 = a1;
  sub_2440D2750();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v16 = sub_2440D2790();

  (*(v10 + 8))(v12, v9);
  v17 = *sub_244070F98();
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2240, &unk_2440DC1D0) + 36)];
  v19 = *(v6 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_2440D1B90();
  v22 = *(*(v21 - 8) + 104);
  v22(&v18[v19], v20, v21);
  *v18 = v17;
  *(v18 + 1) = v17;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0, &unk_2440D8450) + 36)] = 256;
  *v14 = v16;
  *(v14 + 1) = 0;
  *(v14 + 8) = 1;
  v22(&v8[*(v6 + 28)], v20, v21);
  *v8 = v17;
  *(v8 + 1) = v17;
  v23 = v40;
  sub_2440D2AB0();
  sub_2440D14C0();
  v24 = &v14[*(v39 + 36)];
  sub_243FCEE8C(v8, v24, MEMORY[0x277CDFC08]);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0868, &qword_2440D7500) + 36);
  v26 = v45;
  *v25 = v44;
  *(v25 + 16) = v26;
  *(v25 + 32) = v46;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0870, &qword_2440D7508);
  v29 = v41;
  v28 = v42;
  (*(v41 + 16))(v24 + *(v27 + 52), v23, v42);
  *(v24 + *(v27 + 56)) = 256;
  v30 = sub_2440D2B00();
  v32 = v31;
  (*(v29 + 8))(v23, v28);
  sub_243F8D870(v8);
  v33 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0878, &qword_2440D7510) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = sub_2440D2B00();
  v36 = v35;
  v37 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0880, &qword_2440D7518) + 36));
  *v37 = v34;
  v37[1] = v36;
  sub_243FCEEF4();
  sub_2440D24E0();
  return sub_243F5EED4(v14, &qword_27EDC2238, &qword_2440DC1C8);
}

unint64_t sub_243FCDD40()
{
  result = qword_27EDC2138;
  if (!qword_27EDC2138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2130, &qword_2440DBFD8);
    sub_243FA8118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2138);
  }

  return result;
}

void *sub_243FCDDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_243F681C8(a1, a7, &qword_27EDBFFE0, &unk_2440D64A0);
  v13 = type metadata accessor for IdentityInformationView(0);
  v14 = a7 + v13[5];
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  *(a7 + v13[6]) = a5;
  *(a7 + v13[7]) = a6;
  v15 = (a7 + v13[8]);
  sub_2440D2810();
  *v15 = v18;
  v15[1] = v19;
  v16 = a7 + v13[9];
  result = sub_2440D2810();
  *v16 = v18;
  *(v16 + 8) = v19;
  return result;
}

void *sub_243FCDEC8@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v7) = 8;
  sub_2440D2970();
  sub_243F64688();
  sub_2440D1E70();
  v2 = type metadata accessor for IdentityInformationView(0);
  v3 = a1 + v2[5];
  *v3 = v9;
  *(v3 + 8) = v10;
  *(v3 + 16) = v11;
  *(a1 + v2[6]) = &unk_285776748;
  *(a1 + v2[7]) = 0;
  v4 = (a1 + v2[8]);
  sub_2440D2810();
  *v4 = v7;
  v4[1] = v8;
  v5 = a1 + v2[9];
  result = sub_2440D2810();
  *v5 = 8;
  *(v5 + 8) = v8;
  return result;
}

uint64_t sub_243FCDFD4(uint64_t a1)
{
  v2 = sub_243FCEE38();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FCE020(uint64_t a1)
{
  v2 = sub_243FCEE38();

  return MEMORY[0x28212D8E0](a1, v2);
}

unint64_t sub_243FCE06C()
{
  result = qword_27EDC2150;
  if (!qword_27EDC2150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2148, &qword_2440DC050);
    sub_243FCE0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2150);
  }

  return result;
}

unint64_t sub_243FCE0F8()
{
  result = qword_27EDC2158;
  if (!qword_27EDC2158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2160, &unk_2440DC058);
    sub_243F8E078();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0, &unk_2440D7640, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2158);
  }

  return result;
}

void sub_243FCE1B0(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_243FCE1F0()
{
  result = qword_27EDC2178;
  if (!qword_27EDC2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2178);
  }

  return result;
}

uint64_t sub_243FCE274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243FCE354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_243FCE41C(uint64_t a1)
{
  sub_243F67D28(319);
  if (v1 <= 0x3F)
  {
    sub_243FCE5C0(319, &qword_27EDC0268, &type metadata for IdentityUIState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_243FCE55C(319);
      if (v3 <= 0x3F)
      {
        sub_243FCE5C0(319, &qword_27EDC0278, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_243FCE5C0(319, &qword_27EDC0280, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_243FCE55C(uint64_t a1)
{
  if (!qword_27EDC2180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2188, &unk_2440DC170);
    v1 = sub_2440D3630();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC2180);
    }
  }
}

void sub_243FCE5C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_243FCE624()
{
  result = qword_27EDC2190;
  if (!qword_27EDC2190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20C8, &qword_2440DBF68);
    sub_243FCE6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2190);
  }

  return result;
}

unint64_t sub_243FCE6B0()
{
  result = qword_27EDC2198;
  if (!qword_27EDC2198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20C0, &qword_2440DBF60);
    sub_243FCE73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2198);
  }

  return result;
}

unint64_t sub_243FCE73C()
{
  result = qword_27EDC21A0;
  if (!qword_27EDC21A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20B8, &qword_2440DBF58);
    sub_243F5DD50(&qword_27EDC21A8, &qword_27EDC21B0, &unk_2440DC1A8, MEMORY[0x277CE1198]);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21A0);
  }

  return result;
}

unint64_t sub_243FCE820()
{
  result = qword_27EDC21B8;
  if (!qword_27EDC21B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2170, &unk_2440DC070);
    sub_243FCE8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21B8);
  }

  return result;
}

unint64_t sub_243FCE8AC()
{
  result = qword_27EDC21C0;
  if (!qword_27EDC21C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2128, &qword_2440DBFD0);
    sub_243FCE938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21C0);
  }

  return result;
}

unint64_t sub_243FCE938()
{
  result = qword_27EDC21C8;
  if (!qword_27EDC21C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2120, &qword_2440DBFC8);
    sub_243FCE9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21C8);
  }

  return result;
}

unint64_t sub_243FCE9C4()
{
  result = qword_27EDC21D0;
  if (!qword_27EDC21D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2118, &qword_2440DBFC0);
    sub_243F5DD50(&qword_27EDC21D8, &qword_27EDC21E0, &qword_2440DC1B8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21D0);
  }

  return result;
}

unint64_t sub_243FCEA7C()
{
  result = qword_27EDC21E8;
  if (!qword_27EDC21E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2100, &qword_2440DBFA8);
    sub_243FCEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21E8);
  }

  return result;
}

unint64_t sub_243FCEB08()
{
  result = qword_27EDC21F0;
  if (!qword_27EDC21F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20E8, &qword_2440DBF88);
    sub_243FCEB94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21F0);
  }

  return result;
}

unint64_t sub_243FCEB94()
{
  result = qword_27EDC21F8;
  if (!qword_27EDC21F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20E0, &qword_2440DBF80);
    sub_243FCEC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC21F8);
  }

  return result;
}

unint64_t sub_243FCEC20()
{
  result = qword_27EDC2200;
  if (!qword_27EDC2200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20D8, &qword_2440DBF78);
    sub_243FCECAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2200);
  }

  return result;
}

unint64_t sub_243FCECAC()
{
  result = qword_27EDC2208;
  if (!qword_27EDC2208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20D0, &qword_2440DBF70);
    sub_243FCED38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2208);
  }

  return result;
}

unint64_t sub_243FCED38()
{
  result = qword_27EDC2210;
  if (!qword_27EDC2210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC20F8, &unk_2440DBF98);
    sub_243F5DD50(&qword_27EDC2218, &qword_27EDC2220, &qword_2440DC1C0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2210);
  }

  return result;
}

unint64_t sub_243FCEE38()
{
  result = qword_27EDC2230;
  if (!qword_27EDC2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2230);
  }

  return result;
}

uint64_t sub_243FCEE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_243FCEEF4()
{
  result = qword_27EDC2248;
  if (!qword_27EDC2248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2238, &qword_2440DC1C8);
    sub_243FCEFAC();
    sub_243F5DD50(&qword_27EDC08D0, &qword_27EDC0880, &qword_2440D7518, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2248);
  }

  return result;
}

unint64_t sub_243FCEFAC()
{
  result = qword_27EDC2250;
  if (!qword_27EDC2250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2240, &unk_2440DC1D0);
    sub_243F6194C();
    sub_243F5DD50(&qword_27EDC07F8, &qword_27EDC07B0, &unk_2440D8450, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2250);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243FCF08C(char a1)
{
  type metadata accessor for IdentityInformationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
  return sub_2440D1E50();
}

unint64_t sub_243FCF124()
{
  result = qword_27EDC2290;
  if (!qword_27EDC2290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2288, &qword_2440DC210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2298, &unk_2440DC218);
    sub_243F5DD50(&qword_27EDC22A0, &qword_27EDC2298, &unk_2440DC218, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_243FCF250(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2290);
  }

  return result;
}

uint64_t sub_243FCF250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243FCF298()
{
  v1 = *(type metadata accessor for IdentityInformationView(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_2440D1F00();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);

  return swift_deallocObject();
}

void sub_243FCF424(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IdentityInformationView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_243FCA304(a1, v6, v7, a2);
}

unint64_t sub_243FCF4A8()
{
  result = qword_27EDC22C8;
  if (!qword_27EDC22C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC22C0, &qword_2440DC260);
    sub_243FCF534();
    sub_243FCF5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC22C8);
  }

  return result;
}

unint64_t sub_243FCF534()
{
  result = qword_27EDC22D0;
  if (!qword_27EDC22D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC22D8, &qword_2440DC268);
    sub_243FCEA7C();
    sub_243FCE820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC22D0);
  }

  return result;
}

unint64_t sub_243FCF5C0()
{
  result = qword_27EDC22E0;
  if (!qword_27EDC22E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC22E8, &qword_2440DC270);
    sub_243FCE820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC22E0);
  }

  return result;
}

uint64_t sub_243FCF644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2288, &qword_2440DC210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v1 = *(type metadata accessor for IdentityInformationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_2440D1F00();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);

  return swift_deallocObject();
}

uint64_t sub_243FCF830(double a1, double a2, double a3, double a4)
{
  type metadata accessor for IdentityInformationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  return sub_2440D2830();
}

uint64_t sub_243FCF924(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_243FCF998(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double sub_243FCFA28@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_243FCFAAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_243FCFB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *(**a2 + 168);
  sub_243FD0ED0(v6, v5);
  return v3(v6);
}

uint64_t sub_243FCFB88(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_243FCFC04(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_243FCFCC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2318, &qword_2440DC2E8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2310, &qword_2440DC2E0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243FCFDFC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2318, &qword_2440DC2E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI25PrivacyAuthenticatorModel__passcodeEntry[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2310, &qword_2440DC2E0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243FCFF6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_243FCFFE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_243FD0034(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(**a2 + 216);
  sub_243F7EE68(v4, v5);
  return v6(v2, v3, v4, v5);
}

uint64_t sub_243FD00B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_243FD0144(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

uint64_t sub_243FD0204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2328, qword_2440DC340);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2320, &qword_2440DC338);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243FD033C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2328, qword_2440DC340);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI25PrivacyAuthenticatorModel__glyphModel[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2320, &qword_2440DC338);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

uint64_t sub_243FD04AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void sub_243FD04BC()
{
  v1 = *v0;
  v2 = [*v0 parentViewController];
  if (v2)
  {

    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      [v1 removeFromParentViewController];

      [v1 didMoveToParentViewController_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = [v1 presentingViewController];
    if (v5)
    {
      v6 = v5;
      [v5 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_243FD05D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FD0E7C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243FD0634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FD0E7C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243FD0698(uint64_t a1)
{
  sub_243FD0E7C();
  sub_2440D2020();
  __break(1u);
}

uint64_t sub_243FD06C0()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI25PrivacyAuthenticatorModel__passcodeEntry[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2310, &qword_2440DC2E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI25PrivacyAuthenticatorModel__glyphModel[0];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2320, &qword_2440DC338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_243FD07B4()
{
  v0 = swift_allocObject();
  sub_243FD07EC();
  return v0;
}

uint64_t sub_243FD07EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2320, &qword_2440DC338);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2310, &qword_2440DC2E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v9 = OBJC_IVAR____TtC19ContactlessReaderUI25PrivacyAuthenticatorModel__passcodeEntry[0];
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2308, &qword_2440DC290);
  sub_2440D1300();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC19ContactlessReaderUI25PrivacyAuthenticatorModel__glyphModel[0];
  v12 = 6uLL;
  v13 = 0uLL;
  sub_2440D1300();
  (*(v2 + 32))(v0 + v10, v4, v1);
  return v0;
}

unint64_t sub_243FD09DC()
{
  result = qword_27EDC2330;
  if (!qword_27EDC2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2330);
  }

  return result;
}

uint64_t sub_243FD0A30@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PrivacyAuthenticatorModel(0);
  result = sub_2440D12F0();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PrivacyAuthenticatorModel(uint64_t a1)
{
  result = qword_27EDCB560;
  if (!qword_27EDCB560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243FD0AC4(uint64_t a1)
{
  sub_243FD0BC8(319);
  if (v1 <= 0x3F)
  {
    sub_243FD0E2C(319, &qword_27EDC2340, &type metadata for PrivacyAuthenticatorModel.GlyphModel, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243FD0BC8(uint64_t a1)
{
  if (!qword_27EDC2338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2308, &qword_2440DC290);
    v1 = sub_2440D1360();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDC2338);
    }
  }
}

uint64_t sub_243FD0C2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_243FD0C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_243FD0D04(uint64_t *a1, int a2)
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

uint64_t sub_243FD0D4C(uint64_t result, int a2, int a3)
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

void sub_243FD0E2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_243FD0E7C()
{
  result = qword_27EDC2358;
  if (!qword_27EDC2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2358);
  }

  return result;
}

uint64_t sub_243FD0ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2308, &qword_2440DC290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FD0F48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2360, &qword_2440DC630);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2368, &qword_2440DC638) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2440DC610;
  v4 = (v3 + v2);
  *v4 = 840;
  sub_2440D07B0();
  *(v4 + v1) = 124;
  sub_2440D07B0();
  *(v4 + 2 * v1) = 36;
  sub_2440D07B0();
  *(v4 + 3 * v1) = 76;
  sub_2440D07B0();
  *(v4 + 4 * v1) = 682;
  sub_2440D07B0();
  *(v4 + 5 * v1) = 756;
  sub_2440D07B0();
  *(v4 + 6 * v1) = 152;
  sub_2440D07B0();
  *(v4 + 7 * v1) = 616;
  sub_2440D07B0();
  v4[v1] = 642;
  sub_2440D07B0();
  *(v4 + 9 * v1) = 554;
  sub_2440D07B0();
  *(v4 + 10 * v1) = 764;
  sub_2440D07B0();
  *(v4 + 11 * v1) = 484;
  sub_2440D07B0();
  *(v4 + 12 * v1) = 630;
  sub_2440D07B0();
  *(v4 + 13 * v1) = 40;
  sub_2440D07B0();
  *(v4 + 14 * v1) = 56;
  sub_2440D07B0();
  *(v4 + 15 * v1) = 276;
  sub_2440D07B0();
  v4[2 * v1] = 280;
  sub_2440D07B0();
  *(v4 + 17 * v1) = 250;
  sub_2440D07B0();
  *(v4 + 18 * v1) = 372;
  sub_2440D07B0();
  *(v4 + 19 * v1) = 380;
  sub_2440D07B0();
  *(v4 + 20 * v1) = 528;
  sub_2440D07B0();
  *(v4 + 21 * v1) = 724;
  sub_2440D07B0();
  *(v4 + 22 * v1) = 191;
  sub_2440D07B0();
  *(v4 + 23 * v1) = 196;
  sub_2440D07B0();
  v4[3 * v1] = 233;
  sub_2440D07B0();
  *(v4 + 25 * v1) = 246;
  sub_2440D07B0();
  *(v4 + 26 * v1) = 300;
  sub_2440D07B0();
  *(v4 + 27 * v1) = 428;
  sub_2440D07B0();
  *(v4 + 28 * v1) = 442;
  sub_2440D07B0();
  *(v4 + 29 * v1) = 470;
  sub_2440D07B0();
  *(v4 + 30 * v1) = 620;
  sub_2440D07B0();
  *(v4 + 31 * v1) = 703;
  sub_2440D07B0();
  v4[4 * v1] = 705;
  sub_2440D07B0();
  *(v4 + 33 * v1) = 440;
  sub_2440D07B0();
  *(v4 + 34 * v1) = 499;
  sub_2440D07B0();
  *(v4 + 35 * v1) = 492;
  sub_2440D07B0();
  *(v4 + 36 * v1) = 100;
  sub_2440D07B0();
  v5 = sub_243FD15DC(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27EDC64B0 = v5;
  return result;
}

uint64_t *sub_243FD157C()
{
  if (qword_27EDCB570 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64B0;
}

unint64_t sub_243FD15DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2368, &qword_2440DC638);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2370, &qword_2440DC640);
    v7 = sub_2440D3910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_243FD17A4(v9, v5);
      v11 = *v5;
      result = sub_243F726DC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_2440D07E0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_243FD17A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2368, &qword_2440DC638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FD1814@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2378, &qword_2440DC650);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2380, &qword_2440DC658);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2388, &qword_2440DC660);
  sub_243FD1B3C(v2, &v5[*(v10 + 44)]);
  v11 = sub_2440CBE68();
  swift_beginAccess();
  v12 = *(v2 + 200);
  v13 = &v5[*(v3 + 36)];
  *v13 = *v11;
  v13[8] = v12;
  LOBYTE(v21) = *(v2 + 201);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v2, 0x118uLL);

  sub_243FD45A4(v2, &v22);
  v15 = sub_243FD45DC();
  v16 = MEMORY[0x277D839B0];
  sub_2440D25E0();

  sub_243F5EED4(v5, &qword_27EDC2378, &qword_2440DC650);
  v22 = *(v2 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2820();
  v17 = swift_allocObject();
  memcpy((v17 + 16), v2, 0x118uLL);
  sub_243FD45A4(v2, &v22);
  *&v22 = v3;
  *(&v22 + 1) = v16;
  v23 = v15;
  v24 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2440CC638(&v21, sub_243FD4770, v17, v6, MEMORY[0x277D839F8], OpaqueTypeConformance2, MEMORY[0x277CE1508], v20);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_243FD1B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D2C60();
  v107 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D18B0();
  MEMORY[0x28223BE20](v7);
  v105 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = (&v82 - v10);
  v100.i64[0] = sub_2440D2A70();
  v98 = *(v100.i64[0] - 8);
  MEMORY[0x28223BE20](v100.i64[0]);
  v91 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v82 - v13;
  v104 = sub_2440D2AC0();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v97 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2410, &qword_2440DCA68);
  MEMORY[0x28223BE20](v92);
  v16 = &v82 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2418, &qword_2440DCA70);
  MEMORY[0x28223BE20](v93);
  v18 = &v82 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2420, &qword_2440DCA78);
  MEMORY[0x28223BE20](v19);
  v21 = &v82 - v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2428, &qword_2440DCA80);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v82 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2430, &qword_2440DCA88);
  MEMORY[0x28223BE20](v94);
  v96 = &v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2438, &qword_2440DCA90);
  MEMORY[0x28223BE20](v24);
  v30 = MEMORY[0x28223BE20](v25);
  if (*(a1 + 200))
  {
    v83 = &v82 - v28;
    v84 = v29;
    v86 = v27;
    v87 = v26;
    v88 = v6;
    v89 = v4;
    v90 = a2;
    *v16 = sub_2440D1C20();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v31 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2440, &qword_2440DCA98) + 44)];
    *v31 = sub_2440D1C20();
    *(v31 + 1) = 0;
    v31[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2448, &qword_2440DCAA0);
    sub_243FD2760(a1, &v31[*(v32 + 44)]);
    v109 = *(a1 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
    sub_2440D2820();
    v33 = v108 * 0.0174532925;
    sub_2440D2C40();
    v35 = v34;
    v37 = v36;
    v38 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2450, &qword_2440DCAA8) + 36)];
    *v38 = v33;
    *(v38 + 1) = v35;
    *(v38 + 2) = v37;
    v109 = *(a1 + 240);
    sub_2440D2820();
    v39 = v108;
    *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2458, &qword_2440DCAB0) + 36)] = v39;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2460, &unk_2440DCAB8) + 36);
    v41 = *MEMORY[0x277CDF3D0];
    v42 = sub_2440D1410();
    v43 = v7;
    v44 = *(v42 - 8);
    (*(v44 + 104))(&v16[v40], v41, v42);
    (*(v44 + 56))(&v16[v40], 0, 1, v42);
    v45 = v43;
    v46 = sub_244070928();
    v47 = sub_244070978();
    v48 = sub_2440D20B0();
    v49 = &v16[*(v92 + 36)];
    *v49 = v48;
    *(v49 + 1) = v46;
    *(v49 + 2) = 0x4030000000000000;
    *(v49 + 3) = v47;
    *(v49 + 4) = 0x4030000000000000;
    v49[40] = 0;
    sub_2440D2B00();
    sub_2440D18E0();
    sub_243F681C8(v16, v18, &qword_27EDC2410, &qword_2440DCA68);
    v50 = &v18[*(v93 + 36)];
    v51 = v114;
    *(v50 + 4) = v113;
    *(v50 + 5) = v51;
    *(v50 + 6) = v115;
    v52 = v110;
    *v50 = v109;
    *(v50 + 1) = v52;
    v53 = v112;
    *(v50 + 2) = v111;
    *(v50 + 3) = v53;
    v93 = v19;
    v54 = &v21[*(v19 + 36)];
    v55 = *(v43 + 20);
    v56 = *MEMORY[0x277CE0118];
    v57 = sub_2440D1B90();
    v58 = *(*(v57 - 8) + 104);
    v58(&v54->i8[v55], v56, v57);
    *v54 = vdupq_n_s64(0x4043000000000000uLL);
    *(v54->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0, &unk_2440D8450) + 36)) = 256;
    sub_243F681C8(v18, v21, &qword_27EDC2418, &qword_2440DCA70);
    v59 = *(a1 + 202);
    v85 = v21;
    if (v59)
    {
      v60 = v91;
      sub_2440D2A60();
      v61 = v95;
      sub_2440D2A50();
      v62 = v98;
      v63 = v60;
      v64 = v100.i64[0];
      (*(v98 + 8))(v63, v100.i64[0]);
    }

    else
    {
      v61 = v95;
      sub_2440D2A60();
      v64 = v100.i64[0];
      v62 = v98;
    }

    v67 = v97;
    sub_2440D2A90();
    (*(v62 + 8))(v61, v64);
    v68 = v106;
    v58(&v106->i8[*(v45 + 20)], v56, v57);
    v100 = vdupq_n_s64(0x4043000000000000uLL);
    *v68 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B8, &qword_2440D7490);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_2440D5CF0;
    sub_243F8D618(v68, v105);
    sub_243FD6100(&qword_27EDC07C0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    *(v69 + 32) = sub_2440D29F0();
    v70 = v88;
    sub_2440D2C50();
    sub_243FD5C28();
    v71 = v99;
    v72 = v85;
    sub_2440D2400();
    (*(v107 + 8))(v70, v89);
    sub_243F8D870(v68);
    (*(v103 + 8))(v67, v104);
    sub_243F5EED4(v72, &qword_27EDC2420, &qword_2440DCA78);
    v73 = v96;
    v74 = &v96[*(v94 + 36)];
    v58(&v74->i8[*(v45 + 20)], v56, v57);
    *v74 = v100;
    v74->i8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2498, &qword_2440DCAD8) + 36)] = 0;
    (*(v101 + 32))(v73, v71, v102);
    v75 = *sub_243F9A04C();
    v76 = v84;
    sub_243F681C8(v73, v84, &qword_27EDC2430, &qword_2440DCA88);
    v77 = v87;
    *(v76 + *(v87 + 36)) = v75;
    v78 = v76;
    v79 = v83;
    sub_243F681C8(v78, v83, &qword_27EDC2438, &qword_2440DCA90);
    v80 = v79;
    v81 = v90;
    sub_243F681C8(v80, v90, &qword_27EDC2438, &qword_2440DCA90);
    (*(v86 + 56))(v81, 0, 1, v77);
  }

  else
  {
    v65 = *(v27 + 56);

    return v65(a2, 1, 1, v30);
  }
}

uint64_t sub_243FD2760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v293 = a2;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24A0, &qword_2440DCAE0);
  MEMORY[0x28223BE20](v292);
  v253 = &v244 - v3;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24A8, &qword_2440DCAE8);
  MEMORY[0x28223BE20](v295);
  v247 = &v244 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24B0, &qword_2440DCAF0);
  v249 = *(v5 - 8);
  v250 = v5;
  MEMORY[0x28223BE20](v5);
  v246 = &v244 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24B8, &qword_2440DCAF8);
  MEMORY[0x28223BE20](v7 - 8);
  v251 = &v244 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v252 = &v244 - v10;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24C0, &qword_2440DCB00);
  MEMORY[0x28223BE20](v285);
  v289 = &v244 - v11;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24C8, &qword_2440DCB08);
  MEMORY[0x28223BE20](v282);
  v283 = &v244 - v12;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24D0, &qword_2440DCB10);
  MEMORY[0x28223BE20](v287);
  v259 = &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v284 = &v244 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24D8, &qword_2440DCB18);
  MEMORY[0x28223BE20](v16 - 8);
  v291 = &v244 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v290 = &v244 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24E0, &qword_2440DCB20);
  v257 = *(v20 - 8);
  v258 = v20;
  MEMORY[0x28223BE20](v20);
  v256 = &v244 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24E8, &qword_2440DCB28);
  v280 = *(v22 - 8);
  v281 = v22;
  MEMORY[0x28223BE20](v22);
  v255 = &v244 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24F0, &qword_2440DCB30);
  MEMORY[0x28223BE20](v24 - 8);
  v288 = &v244 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v299 = &v244 - v27;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC24F8, &qword_2440DCB38);
  MEMORY[0x28223BE20](v278);
  v277 = &v244 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2500, &unk_2440DCB40);
  MEMORY[0x28223BE20](v29 - 8);
  v286 = &v244 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v298 = &v244 - v32;
  v267 = sub_2440D2AC0();
  v265 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v264 = &v244 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2440D18B0() - 8;
  MEMORY[0x28223BE20](v34);
  v263 = &v244 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2440D2770();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v244 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0888, &qword_2440D7520) - 8;
  MEMORY[0x28223BE20](v266);
  v41 = &v244 - v40;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2508, &qword_2440DCB50);
  MEMORY[0x28223BE20](v296);
  v274 = &v244 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2510, &qword_2440DCB58);
  MEMORY[0x28223BE20](v43 - 8);
  v272 = &v244 - v44;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2518, &qword_2440DCB60);
  MEMORY[0x28223BE20](v275);
  v273 = &v244 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2520, &unk_2440DCB68);
  MEMORY[0x28223BE20](v46 - 8);
  v297 = &v244 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v300 = &v244 - v49;
  v262 = a1;
  v50 = a1[3];
  *&v248 = a1[2];
  *(&v248 + 1) = v50;
  v51 = a1[5];
  v245 = a1[4];
  v294 = v51;
  v52 = a1[13];
  *&v279 = a1[12];
  *(&v279 + 1) = v52;
  v53 = a1[14];
  v270 = a1[15];
  v271 = v53;
  v54 = a1[16];
  v268 = a1[17];
  v269 = v54;
  v55 = a1[19];
  v254 = a1[18];
  v276 = v55;
  v56 = a1[22];
  v57 = a1[24];
  v58 = v56;
  sub_2440D2750();
  (*(v37 + 104))(v39, *MEMORY[0x277CE0FE0], v36);
  v261 = sub_2440D2790();

  (*(v37 + 8))(v39, v36);
  v260 = sub_2440D20B0();
  v59 = v57;

  v60 = *sub_2440707CC();
  v61 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0858, &qword_2440D74F0) + 36)];
  v62 = *(v34 + 28);
  v63 = *MEMORY[0x277CE0118];
  v64 = sub_2440D1B90();
  v65 = *(*(v64 - 8) + 104);
  v65(&v61[v62], v63, v64);
  *v61 = v60;
  *(v61 + 1) = v60;
  *&v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0, &unk_2440D8450) + 36)] = 256;
  *v41 = v261;
  *(v41 + 1) = 0;
  *(v41 + 8) = 1;
  *(v41 + 3) = v59;
  v41[32] = v260;
  v66 = v263;
  v65(&v263[*(v34 + 28)], v63, v64);
  *v66 = v60;
  v66[1] = v60;
  v67 = v264;
  sub_2440D2AB0();
  sub_2440D14C0();
  v68 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0860, &qword_2440D74F8) + 36)];
  sub_243F8D618(v66, v68);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0868, &qword_2440D7500) + 36);
  v70 = *&v318[11];
  *v69 = *&v318[9];
  *(v69 + 16) = v70;
  *(v69 + 32) = v318[13];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0870, &qword_2440D7508);
  v72 = v265;
  v73 = v267;
  (*(v265 + 16))(v68 + *(v71 + 52), v67, v267);
  *(v68 + *(v71 + 56)) = 256;
  v74 = sub_2440D2B00();
  v76 = v75;
  (*(v72 + 8))(v67, v73);
  sub_243F8D870(v66);
  v77 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0878, &qword_2440D7510) + 36));
  *v77 = v74;
  v77[1] = v76;
  v78 = sub_2440D2B00();
  v80 = v79;
  v81 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0880, &qword_2440D7518) + 36));
  *v81 = v78;
  v81[1] = v80;
  v82 = v262;
  sub_2440D2B00();
  sub_2440D1560();
  v83 = &v41[*(v266 + 44)];
  v84 = v319[1];
  *v83 = v319[0];
  *(v83 + 1) = v84;
  *(v83 + 2) = v319[2];
  v85 = sub_2440D20D0();
  v313 = *(v82 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  if ((v301 & 1) == 0 && !v294)
  {
    sub_244070928();
  }

  sub_2440D13D0();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v274;
  sub_243F681C8(v41, v274, &qword_27EDC0888, &qword_2440D7520);
  v95 = v94 + *(v296 + 36);
  *v95 = v85;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  sub_243FD5EDC();
  v96 = v272;
  sub_2440D2480();
  sub_243F5EED4(v94, &qword_27EDC2508, &qword_2440DCB50);
  v97 = sub_243F9A04C();
  v296 = v97;
  v98 = *v97;
  v99 = v273;
  sub_243F681C8(v96, v273, &qword_27EDC2510, &qword_2440DCB58);
  *(v99 + *(v275 + 36)) = v98;
  sub_243FD5F68();

  sub_2440D24E0();
  sub_243F5EED4(v99, &qword_27EDC2518, &qword_2440DCB60);
  v100 = v270;

  v101 = v268;

  sub_243F4E2F4();
  sub_243FAE940(v271, v100, v269, v101, v317);
  v102 = sub_2440D21E0();
  KeyPath = swift_getKeyPath();
  v313 = v317[0];
  v314 = v317[1];
  v315 = v317[2];
  *&v316 = KeyPath;
  *(&v316 + 1) = v102;
  sub_2440D21B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC08D8, &qword_2440DA8D0);
  sub_243F7C1F0();
  v104 = v277;
  sub_2440D2370();
  *v318 = v313;
  *&v318[2] = v314;
  *&v318[4] = v315;
  *&v318[6] = v316;
  sub_243F5EED4(v318, &qword_27EDC08D8, &qword_2440DA8D0);
  v105 = sub_2440D26C0();
  v106 = swift_getKeyPath();
  v107 = (v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC08F0, &qword_2440D7598) + 36));
  *v107 = v106;
  v107[1] = v105;
  v108 = swift_getKeyPath();
  v109 = (v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC08F8, &qword_2440D75D0) + 36));
  *v109 = v108;
  v109[1] = 0x3FE0000000000000;
  v110 = swift_getKeyPath();
  v111 = v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0900, &qword_2440D7608) + 36);
  *v111 = v110;
  *(v111 + 8) = 1;
  v112 = swift_getKeyPath();
  v113 = v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0820, &qword_2440DCC80) + 36);
  *v113 = v112;
  *(v113 + 8) = 3;
  *(v113 + 16) = 0;
  *(v104 + *(v278 + 36)) = *v97;
  sub_243FD6148();

  sub_2440D24E0();
  sub_243F5EED4(v104, &qword_27EDC24F8, &qword_2440DCB38);
  if (v276)
  {
    *&v313 = v254;
    *(&v313 + 1) = v276;
    sub_243F4EF64();

    v114 = sub_2440D2310();
    v116 = v115;
    v118 = v117;
    sub_2440D21E0();
    v119 = sub_2440D22E0();
    v121 = v120;
    v123 = v122;

    sub_243F62C68(v114, v116, v118 & 1);

    sub_2440D21B0();
    v124 = sub_2440D22A0();
    v126 = v125;
    v128 = v127;
    sub_243F62C68(v119, v121, v123 & 1);

    sub_243FFABE4();

    v129 = sub_2440D22C0();
    v131 = v130;
    LOBYTE(v121) = v132;
    v134 = v133;

    sub_243F62C68(v124, v126, v128 & 1);

    v135 = swift_getKeyPath();
    v136 = swift_getKeyPath();
    LOBYTE(v301) = v121 & 1;
    v137 = swift_getKeyPath();
    LOBYTE(v313) = 0;
    v138 = *v296;
    v301 = v129;
    v302 = v131;
    v303 = v121 & 1;
    v304 = v134;
    v305 = v135;
    v306 = 0x3FECCCCCCCCCCCCDLL;
    v307 = v136;
    v308 = 1;
    v309 = v137;
    v310 = 2;
    v311 = 0;
    v312 = v138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2598, &qword_2440DCCA8);
    sub_243FD64AC();
    sub_24408F1C4();
  }

  (*(v280 + 56))(v299, 1, 1, v281);
  v139 = HIBYTE(*(&v279 + 1)) & 0xFLL;
  if ((*(&v279 + 1) & 0x2000000000000000) == 0)
  {
    v139 = v279 & 0xFFFFFFFFFFFFLL;
  }

  if (v139)
  {
    v313 = v279;
    sub_243F4EF64();

    v140 = sub_2440D2310();
    v142 = v141;
    v144 = v143;
    sub_2440D26C0();
    v145 = sub_2440D22C0();
    v147 = v146;
    v149 = v148;

    sub_243F62C68(v140, v142, v144 & 1);

    sub_2440D2130();
    v150 = sub_2440D22E0();
    v152 = v151;
    v154 = v153;

    sub_243F62C68(v145, v147, v149 & 1);

    sub_2440D21B0();
    v155 = sub_2440D22A0();
    v157 = v156;
    LOBYTE(v147) = v158;
    v160 = v159;
    sub_243F62C68(v150, v152, v154 & 1);

    v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2548, &qword_2440DCC88) + 36);
    v162 = *MEMORY[0x277CE13B8];
    v163 = sub_2440D2BF0();
    v164 = v283;
    (*(*(v163 - 8) + 104))(&v283[v161], v162, v163);
    *v164 = v155;
    *(v164 + 8) = v157;
    *(v164 + 16) = v147 & 1;
    *(v164 + 24) = v160;
    v165 = swift_getKeyPath();
    v166 = v164 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2550, &qword_2440DCC90) + 36);
    *v166 = v165;
    *(v166 + 8) = 1;
    *(v166 + 16) = 0;
    v167 = swift_getKeyPath();
    v168 = (v164 + *(v295 + 36));
    *v168 = v167;
    v168[1] = 0x3FE0000000000000;
    *(v164 + *(v282 + 36)) = *v296;
    sub_243FD6200();

    v169 = v284;
    sub_2440D24E0();
    sub_243F5EED4(v164, &qword_27EDC24C8, &qword_2440DCB08);
    sub_243F5F574(v169, v289, &qword_27EDC24D0, &qword_2440DCB10);
    swift_storeEnumTagMultiPayload();
    sub_243FD604C(&qword_27EDC2578, &qword_27EDC24D0, &qword_2440DCB10, sub_243FD6200);
    sub_243F5DD50(&qword_27EDC2580, &qword_27EDC24A0, &qword_2440DCAE0, MEMORY[0x277CE14C0]);
    v170 = v290;
    sub_2440D1D20();
  }

  else
  {
    v313 = v248;
    v171 = sub_243F4EF64();

    v281 = v171;
    v172 = sub_2440D2310();
    v174 = v173;
    v176 = v175;
    sub_2440D26C0();
    v177 = sub_2440D22C0();
    v179 = v178;
    v181 = v180;

    sub_243F62C68(v172, v174, v176 & 1);

    v182 = sub_244071474();
    v183 = *MEMORY[0x277D74420];
    sub_243FC0C38(v182, *MEMORY[0x277D74420]);
    sub_2440D2240();
    v184 = sub_2440D22E0();
    v186 = v185;
    v188 = v187;
    v190 = v189;

    sub_243F62C68(v177, v179, v181 & 1);

    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2548, &qword_2440DCC88);
    v191 = *(v280 + 36);
    v192 = *MEMORY[0x277CE13B8];
    v193 = sub_2440D2BF0();
    v194 = *(v193 - 8);
    v195 = *(v194 + 104);
    v196 = v283;
    DWORD2(v279) = v192;
    v278 = v195;
    *&v279 = v193;
    v277 = (v194 + 104);
    v195(&v283[v191], v192);
    *v196 = v184;
    *(v196 + 8) = v186;
    *(v196 + 16) = v188 & 1;
    *(v196 + 24) = v190;
    v197 = swift_getKeyPath();
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2550, &qword_2440DCC90);
    v199 = v196 + *(v198 + 36);
    v200 = 1;
    *v199 = v197;
    *(v199 + 8) = 1;
    *(v199 + 16) = 0;
    v201 = swift_getKeyPath();
    v202 = (v196 + *(v295 + 36));
    *v202 = v201;
    v202[1] = 0x3FD3333333333333;
    *(v196 + *(v282 + 36)) = *v296;
    sub_243FD6200();

    v203 = v259;
    sub_2440D24E0();
    sub_243F5EED4(v196, &qword_27EDC24C8, &qword_2440DCB08);
    if (v294)
    {
      *&v313 = v245;
      *(&v313 + 1) = v294;

      v204 = sub_2440D2310();
      v206 = v205;
      v208 = v207;
      sub_2440D26C0();
      v296 = v198;
      v209 = sub_2440D22C0();
      v211 = v210;
      v213 = v212;

      sub_243F62C68(v204, v206, v208 & 1);

      v214 = sub_24407147C();
      sub_243FC0C38(v214, v183);
      sub_2440D2240();
      v215 = sub_2440D22E0();
      v217 = v216;
      LOBYTE(v204) = v218;
      v220 = v219;

      sub_243F62C68(v209, v211, v213 & 1);

      v221 = v247;
      (v278)(&v247[*(v280 + 36)], DWORD2(v279), v279);
      *v221 = v215;
      *(v221 + 8) = v217;
      v203 = v259;
      *(v221 + 16) = v204 & 1;
      *(v221 + 24) = v220;
      v222 = swift_getKeyPath();
      v223 = v221 + *(v296 + 36);
      *v223 = v222;
      *(v223 + 8) = 1;
      *(v223 + 16) = 0;
      v224 = swift_getKeyPath();
      v225 = (v221 + *(v295 + 36));
      *v225 = v224;
      v225[1] = 0x3FD3333333333333;
      sub_243FD62B8();
      v226 = v246;
      sub_2440D24E0();
      sub_243F5EED4(v221, &qword_27EDC24A8, &qword_2440DCAE8);
      v227 = v252;
      sub_243F681C8(v226, v252, &qword_27EDC24B0, &qword_2440DCAF0);
      v200 = 0;
    }

    else
    {
      v227 = v252;
    }

    (*(v249 + 56))(v227, v200, 1, v250);
    v228 = v203;
    v229 = v284;
    sub_243F5F574(v228, v284, &qword_27EDC24D0, &qword_2440DCB10);
    v230 = v251;
    sub_243F5F574(v227, v251, &qword_27EDC24B8, &qword_2440DCAF8);
    v231 = v253;
    sub_243F5F574(v229, v253, &qword_27EDC24D0, &qword_2440DCB10);
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2590, &qword_2440DCCA0);
    sub_243F5F574(v230, v231 + *(v232 + 48), &qword_27EDC24B8, &qword_2440DCAF8);
    sub_243F5EED4(v230, &qword_27EDC24B8, &qword_2440DCAF8);
    sub_243F5EED4(v229, &qword_27EDC24D0, &qword_2440DCB10);
    sub_243F5F574(v231, v289, &qword_27EDC24A0, &qword_2440DCAE0);
    swift_storeEnumTagMultiPayload();
    sub_243FD604C(&qword_27EDC2578, &qword_27EDC24D0, &qword_2440DCB10, sub_243FD6200);
    sub_243F5DD50(&qword_27EDC2580, &qword_27EDC24A0, &qword_2440DCAE0, MEMORY[0x277CE14C0]);
    v170 = v290;
    sub_2440D1D20();
    v169 = v259;
    sub_243F5EED4(v231, &qword_27EDC24A0, &qword_2440DCAE0);
    sub_243F5EED4(v227, &qword_27EDC24B8, &qword_2440DCAF8);
  }

  sub_243F5EED4(v169, &qword_27EDC24D0, &qword_2440DCB10);
  v233 = v297;
  sub_243F5F574(v300, v297, &qword_27EDC2520, &unk_2440DCB68);
  v234 = v298;
  v235 = v286;
  sub_243F5F574(v298, v286, &qword_27EDC2500, &unk_2440DCB40);
  v236 = v299;
  v237 = v288;
  sub_243F5F574(v299, v288, &qword_27EDC24F0, &qword_2440DCB30);
  v238 = v291;
  sub_243F5F574(v170, v291, &qword_27EDC24D8, &qword_2440DCB18);
  v239 = v233;
  v240 = v293;
  sub_243F5F574(v239, v293, &qword_27EDC2520, &unk_2440DCB68);
  v241 = v170;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2588, &qword_2440DCC98);
  sub_243F5F574(v235, v240 + v242[12], &qword_27EDC2500, &unk_2440DCB40);
  sub_243F5F574(v237, v240 + v242[16], &qword_27EDC24F0, &qword_2440DCB30);
  sub_243F5F574(v238, v240 + v242[20], &qword_27EDC24D8, &qword_2440DCB18);
  sub_243F5EED4(v241, &qword_27EDC24D8, &qword_2440DCB18);
  sub_243F5EED4(v236, &qword_27EDC24F0, &qword_2440DCB30);
  sub_243F5EED4(v234, &qword_27EDC2500, &unk_2440DCB40);
  sub_243F5EED4(v300, &qword_27EDC2520, &unk_2440DCB68);
  sub_243F5EED4(v238, &qword_27EDC24D8, &qword_2440DCB18);
  sub_243F5EED4(v237, &qword_27EDC24F0, &qword_2440DCB30);
  sub_243F5EED4(v235, &qword_27EDC2500, &unk_2440DCB40);
  return sub_243F5EED4(v297, &qword_27EDC2520, &unk_2440DCB68);
}

uint64_t sub_243FD452C(uint64_t a1)
{
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

unint64_t sub_243FD45DC()
{
  result = qword_27EDC2390;
  if (!qword_27EDC2390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2378, &qword_2440DC650);
    sub_243F5DD50(&qword_27EDC2398, &qword_27EDC23A0, qword_2440DC668, MEMORY[0x277CE1198]);
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220, &qword_2440D7220, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2390);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{

  return swift_deallocObject();
}

uint64_t sub_243FD4770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8, &unk_2440D8250);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

void sub_243FD4834(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a6@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  v14 = sub_2440708D8();
  v15 = *(a1 + 176);
  *(a6 + 160) = *(a1 + 160);
  *(a6 + 176) = v15;
  *(a6 + 192) = *(a1 + 192);
  v16 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v16;
  v17 = *(a1 + 144);
  *(a6 + 128) = *(a1 + 128);
  *(a6 + 144) = v17;
  v18 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v18;
  v19 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v19;
  v20 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v20;
  *(a6 + 200) = a2;
  *(a6 + 201) = a3;
  *(a6 + 202) = a4;
  *(a6 + 208) = v21;
  *(a6 + 216) = v22;
  *(a6 + 224) = v21;
  *(a6 + 232) = v22;
  *(a6 + 240) = v21;
  *(a6 + 248) = v22;
  *(a6 + 256) = v21;
  *(a6 + 264) = v22;
  *(a6 + 272) = v14;
}

uint64_t sub_243FD4AA4@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23B8, &qword_2440DCA20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23C0, &qword_2440DCA28);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  sub_243FD5980();
  v33 = sub_2440D3590();
  type metadata accessor for MerchantLogo();
  v8 = sub_243F4E2E4();
  v9 = (*(*v8 + 80))(0xD00000000000001BLL, 0x80000002440EB1A0, 5814);
  v11 = v10;
  v13 = v12;

  v14 = sub_243F4E2FC();
  v32.n128_u64[0] = 0x80000002440EB1C0;
  v32.n128_u64[1] = 0x6174757246;
  *&v31 = 0xE900000000000061;
  *(&v31 + 1) = 0xD000000000000050;
  *&v30 = 0xE900000000000061;
  *(&v30 + 1) = 0x747572460A796150;
  *&v29 = v15;
  *(&v29 + 1) = 0x7475724620796150;
  *&v28 = 0;
  *(&v28 + 1) = v14;
  sub_243FFECC0(3, v33, 0x39392E343224, 0xE600000000000000, 0, 0, 4477781, 0xE300000000000000, v35, 0, 0, v28, v29, v30, v31, v32, 0xE500000000000000, v9, v11, v13);
  *v3 = sub_2440D1C20();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23D0, &qword_2440DCA30);
  sub_243FD4E20(v35, &v3[*(v16 + 44)]);
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v3, v7, &qword_27EDC23B8, &qword_2440DCA20);
  v17 = &v7[*(v5 + 44)];
  v18 = *(&v35[17] + 8);
  *(v17 + 4) = *(&v35[16] + 8);
  *(v17 + 5) = v18;
  *(v17 + 6) = *(&v35[18] + 8);
  v19 = *(&v35[13] + 8);
  *v17 = *(&v35[12] + 8);
  *(v17 + 1) = v19;
  v20 = *(&v35[15] + 8);
  *(v17 + 2) = *(&v35[14] + 8);
  *(v17 + 3) = v20;
  v21 = sub_2440D2670();
  v22 = sub_2440D20B0();
  sub_243FD59CC(v35);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23D8, &unk_2440DCA38);
  v24 = v34;
  v34[3] = v23;
  v24[4] = sub_243FD5A20();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_243F5F574(v7, boxed_opaque_existential_1, &qword_27EDC23C0, &qword_2440DCA28);
  v26 = boxed_opaque_existential_1 + *(v23 + 36);
  *v26 = v21;
  v26[8] = v22;
  return sub_243F5EED4(v7, &qword_27EDC23C0, &qword_2440DCA28);
}

uint64_t sub_243FD4E20@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v66 = a2;
  v3 = a1[11];
  v79 = a1[10];
  v80 = v3;
  v81 = *(a1 + 24);
  v4 = a1[7];
  v75 = a1[6];
  v76 = v4;
  v5 = a1[9];
  v77 = a1[8];
  v78 = v5;
  v6 = a1[3];
  v71 = a1[2];
  v72 = v6;
  v7 = a1[5];
  v73 = a1[4];
  v74 = v7;
  v8 = a1[1];
  v69 = *a1;
  v70 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23F8, &qword_2440DCA48);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2400, &unk_2440DCA50);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v83 = 0;
  sub_2440D2810();
  v65 = *(&v82[0] + 1);
  v23 = *&v82[0];
  LOBYTE(v83) = 0;
  sub_2440D2810();
  v63 = LOBYTE(v82[0]);
  v64 = *(&v82[0] + 1);
  v83 = 0x3FF0000000000000;
  sub_2440D2810();
  v62 = *(&v82[0] + 1);
  v24 = *&v82[0];
  v83 = 0;
  sub_2440D2810();
  v61 = *(&v82[0] + 1);
  v25 = *&v82[0];
  v26 = sub_2440708D8();
  sub_243FB07E4(a1, v82);
  sub_2440D2B00();
  sub_2440D18E0();
  v27 = &v12[*(v10 + 44)];
  v28 = *(sub_2440D18B0() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_2440D1B90();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #30.0 }

  *v27 = _Q0;
  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0, &unk_2440D8450) + 36)] = 256;
  v36 = v80;
  *(v12 + 10) = v79;
  *(v12 + 11) = v36;
  *(v12 + 24) = v81;
  v37 = v76;
  *(v12 + 6) = v75;
  *(v12 + 7) = v37;
  v38 = v78;
  *(v12 + 8) = v77;
  *(v12 + 9) = v38;
  v39 = v72;
  *(v12 + 2) = v71;
  *(v12 + 3) = v39;
  v40 = v74;
  *(v12 + 4) = v73;
  *(v12 + 5) = v40;
  v41 = v70;
  *v12 = v69;
  *(v12 + 1) = v41;
  *(v12 + 100) = 1;
  v12[202] = 0;
  *(v12 + 203) = v67;
  v12[207] = v68;
  *(v12 + 26) = v23;
  *(v12 + 27) = v65;
  v12[224] = v63;
  *(v12 + 225) = v83;
  *(v12 + 57) = *(&v83 + 3);
  *(v12 + 29) = v64;
  *(v12 + 30) = v24;
  v42 = v61;
  *(v12 + 31) = v62;
  *(v12 + 32) = v25;
  *(v12 + 33) = v42;
  *(v12 + 34) = v26;
  v43 = v82[5];
  *(v12 + 344) = v82[4];
  *(v12 + 360) = v43;
  *(v12 + 376) = v82[6];
  v44 = v82[1];
  *(v12 + 280) = v82[0];
  *(v12 + 296) = v44;
  v45 = v82[3];
  *(v12 + 312) = v82[2];
  *(v12 + 328) = v45;
  LOBYTE(v29) = sub_2440D20B0();
  sub_2440D13D0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_243F681C8(v12, v19, &qword_27EDC23F8, &qword_2440DCA48);
  v54 = &v19[*(v14 + 44)];
  *v54 = v29;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_243F681C8(v19, v22, &qword_27EDC2400, &unk_2440DCA50);
  sub_243F5F574(v22, v16, &qword_27EDC2400, &unk_2440DCA50);
  v55 = v66;
  *v66 = 0;
  *(v55 + 8) = 1;
  v56 = v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2408, &qword_2440DCA60);
  sub_243F5F574(v16, v56 + *(v57 + 48), &qword_27EDC2400, &unk_2440DCA50);
  v58 = v56 + *(v57 + 64);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_243F5EED4(v22, &qword_27EDC2400, &unk_2440DCA50);
  return sub_243F5EED4(v16, &qword_27EDC2400, &unk_2440DCA50);
}

uint64_t sub_243FD5364@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a2;
  v37 = a1;
  v38 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23B8, &qword_2440DCA20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23C0, &qword_2440DCA28);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  sub_243FD5980();
  v10 = sub_2440D3590();
  type metadata accessor for MerchantLogo();
  v11 = sub_243F4E2E4();
  v12 = (*(*v11 + 80))(0xD00000000000001BLL, 0x80000002440EB1A0, 5814);
  v14 = v13;
  v16 = v15;

  v17 = sub_243F4E2FC();
  v34.n128_u64[1] = 0x6174757246;
  v34.n128_u64[0] = v36;
  *&v33 = 0xE900000000000061;
  *(&v33 + 1) = v37;
  *&v32 = 0xE900000000000061;
  *(&v32 + 1) = 0x747572460A796150;
  *&v31 = v18;
  *(&v31 + 1) = 0x7475724620796150;
  *&v30 = 0;
  *(&v30 + 1) = v17;
  sub_243FFECC0(3, v10, 0x39392E343224, 0xE600000000000000, 0, 0, 4477781, 0xE300000000000000, v39, 0, 0, v30, v31, v32, v33, v34, 0xE500000000000000, v12, v14, v16);
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23D0, &qword_2440DCA30);
  sub_243FD4E20(v39, &v5[*(v19 + 44)]);
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v5, v9, &qword_27EDC23B8, &qword_2440DCA20);
  v20 = &v9[*(v7 + 44)];
  v21 = *(&v39[17] + 8);
  *(v20 + 4) = *(&v39[16] + 8);
  *(v20 + 5) = v21;
  *(v20 + 6) = *(&v39[18] + 8);
  v22 = *(&v39[13] + 8);
  *v20 = *(&v39[12] + 8);
  *(v20 + 1) = v22;
  v23 = *(&v39[15] + 8);
  *(v20 + 2) = *(&v39[14] + 8);
  *(v20 + 3) = v23;
  v24 = sub_2440D2670();
  LOBYTE(v10) = sub_2440D20B0();
  sub_243FD59CC(v39);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC23D8, &unk_2440DCA38);
  v26 = v38;
  v38[3] = v25;
  v26[4] = sub_243FD5A20();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_243F5F574(v9, boxed_opaque_existential_1, &qword_27EDC23C0, &qword_2440DCA28);
  v28 = boxed_opaque_existential_1 + *(v25 + 36);
  *v28 = v24;
  v28[8] = v10;
  return sub_243F5EED4(v9, &qword_27EDC23C0, &qword_2440DCA28);
}

uint64_t sub_243FD5764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_243FD57AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FD5878()
{
  result = qword_27EDC23A8;
  if (!qword_27EDC23A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC23B0, &unk_2440DCA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2378, &qword_2440DC650);
    sub_243FD45DC();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238, &qword_2440D67A0, &unk_2440E7B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC23A8);
  }

  return result;
}

unint64_t sub_243FD5980()
{
  result = qword_27EDC23C8;
  if (!qword_27EDC23C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC23C8);
  }

  return result;
}

unint64_t sub_243FD5A20()
{
  result = qword_27EDC23E0;
  if (!qword_27EDC23E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC23D8, &unk_2440DCA38);
    sub_243FD5AD8();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728, &qword_2440D73F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC23E0);
  }

  return result;
}

unint64_t sub_243FD5AD8()
{
  result = qword_27EDC23E8;
  if (!qword_27EDC23E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC23C0, &qword_2440DCA28);
    sub_243F5DD50(&qword_27EDC23F0, &qword_27EDC23B8, &qword_2440DCA20, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC23E8);
  }

  return result;
}

unint64_t sub_243FD5C28()
{
  result = qword_27EDC2468;
  if (!qword_27EDC2468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2420, &qword_2440DCA78);
    sub_243FD5CE0();
    sub_243F5DD50(&qword_27EDC07F8, &qword_27EDC07B0, &unk_2440D8450, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2468);
  }

  return result;
}

unint64_t sub_243FD5CE0()
{
  result = qword_27EDC2470;
  if (!qword_27EDC2470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2418, &qword_2440DCA70);
    sub_243FD5D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2470);
  }

  return result;
}

unint64_t sub_243FD5D6C()
{
  result = qword_27EDC2478;
  if (!qword_27EDC2478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2410, &qword_2440DCA68);
    sub_243FD5DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2478);
  }

  return result;
}

unint64_t sub_243FD5DF8()
{
  result = qword_27EDC2480;
  if (!qword_27EDC2480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2460, &unk_2440DCAB8);
    sub_243F5DD50(&qword_27EDC2488, &qword_27EDC2490, &qword_2440DCAC8, MEMORY[0x277CE1198]);
    sub_243F5DD50(&qword_27EDC0710, &qword_27EDC0718, &qword_2440DCAD0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2480);
  }

  return result;
}

unint64_t sub_243FD5EDC()
{
  result = qword_27EDC2528;
  if (!qword_27EDC2528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2508, &qword_2440DCB50);
    sub_243F7BE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2528);
  }

  return result;
}

unint64_t sub_243FD5F68()
{
  result = qword_27EDC2530;
  if (!qword_27EDC2530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2518, &qword_2440DCB60);
    sub_243FD604C(&qword_27EDC2538, &qword_27EDC2510, &qword_2440DCB58, sub_243FD5EDC);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2530);
  }

  return result;
}

uint64_t sub_243FD604C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_243FD6100(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243FD6100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243FD6148()
{
  result = qword_27EDC2540;
  if (!qword_27EDC2540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC24F8, &qword_2440DCB38);
    sub_243F7C2FC();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2540);
  }

  return result;
}

unint64_t sub_243FD6200()
{
  result = qword_27EDC2558;
  if (!qword_27EDC2558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC24C8, &qword_2440DCB08);
    sub_243FD62B8();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2558);
  }

  return result;
}

unint64_t sub_243FD62B8()
{
  result = qword_27EDC2560;
  if (!qword_27EDC2560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC24A8, &qword_2440DCAE8);
    sub_243FD6370();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930, &unk_2440D7F60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2560);
  }

  return result;
}

unint64_t sub_243FD6370()
{
  result = qword_27EDC2568;
  if (!qword_27EDC2568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2550, &qword_2440DCC90);
    sub_243FD6428();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940, &unk_2440D7F50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2568);
  }

  return result;
}

unint64_t sub_243FD6428()
{
  result = qword_27EDC2570;
  if (!qword_27EDC2570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2548, &qword_2440DCC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2570);
  }

  return result;
}

unint64_t sub_243FD64AC()
{
  result = qword_27EDC25A0;
  if (!qword_27EDC25A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2598, &qword_2440DCCA8);
    sub_243F7C6CC();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC25A0);
  }

  return result;
}

uint64_t sub_243FD6570()
{
  if (qword_27EDCB7A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27EDCB7B0;
  v4 = *algn_27EDCB7B8;
  v5 = byte_27EDCB7C0;
  v6 = qword_27EDCB7C8;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25A8, &unk_2440DCCB0);
  sub_243FFE29C(v0, &v2);
  return v2;
}

uint64_t *sub_243FD662C()
{
  if (qword_27EDCB820 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64B8;
}

uint64_t sub_243FD667C()
{
  if (qword_27EDCB7D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27EDCB7D8;
  v4 = unk_27EDCB7E0;
  v5 = byte_27EDCB7E8;
  v6 = qword_27EDCB7F0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25A8, &unk_2440DCCB0);
  sub_243FFE29C(v0, &v2);
  return v2;
}

uint64_t sub_243FD6738()
{
  if (qword_27EDCB7F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27EDCB800;
  v4 = *algn_27EDCB808;
  v5 = byte_27EDCB810;
  v6 = qword_27EDCB818;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25A8, &unk_2440DCCB0);
  sub_243FFE29C(v0, &v2);
  return v2;
}

void sub_243FD67F4(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = 0;
  if (qword_27EDCB820 != -1)
  {
    swift_once();
  }

  v5 = qword_27EDC64B8;
  sub_243FFE1D0(a3, &v6, v5, MEMORY[0x277D839B0], a2);
}

void sub_243FD687C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2440D2F80();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27EDC64B8 = v2;
  }

  else
  {
    sub_2440D38D0();
    __break(1u);
  }
}

uint64_t sub_243FD6998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for IdentityScannerView(uint64_t a1)
{
  result = qword_27EDCB9B0;
  if (!qword_27EDCB9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243FD6A74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for IdentityScannerView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v5;
  v7 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C8, &qword_2440DCCE8);
  MEMORY[0x28223BE20](v8);
  v10 = (v41 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25D0, &qword_2440DCCF0);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  MEMORY[0x28223BE20](v11);
  v47 = v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25D8, &qword_2440DCCF8);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = v41 - v15;
  *v10 = sub_2440D2AE0();
  v10[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25E0, &qword_2440DCD00);
  sub_243FD713C(v1, v10 + *(v17 + 44));
  sub_243FD843C(v1, v7);
  v18 = *(v4 + 80);
  v19 = (v18 + 16) & ~v18;
  v20 = swift_allocObject();
  sub_243FD9F58(v7, v20 + v19, type metadata accessor for IdentityScannerView);
  v21 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25E8, &qword_2440DCD08) + 36));
  *v21 = sub_243FD84A4;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  sub_243FD843C(v2, v7);
  v49 = v6;
  v22 = swift_allocObject();
  v41[0] = type metadata accessor for IdentityScannerView;
  sub_243FD9F58(v7, v22 + v19, type metadata accessor for IdentityScannerView);
  v23 = (v10 + *(v8 + 36));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = sub_243FD8504;
  v23[3] = v22;
  v24 = *(v2 + 48);
  v50 = *(v2 + 32);
  v51 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
  sub_2440D2820();
  v50 = v53;
  sub_243FD843C(v2, v7);
  v25 = swift_allocObject();
  sub_243FD9F58(v7, v25 + v19, type metadata accessor for IdentityScannerView);
  v26 = sub_243FD89E8();
  sub_2440D25D0();

  sub_243F5EED4(v10, &qword_27EDC25C8, &qword_2440DCCE8);
  v27 = *(v2 + 64);
  *&v50 = *(v2 + 56);
  *(&v50 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25B0, &unk_2440DCCD0);
  sub_2440D2820();
  sub_243FD843C(v2, v7);
  v41[1] = v18;
  v28 = swift_allocObject();
  sub_243FD9F58(v7, v28 + v19, v41[0]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1EA0, &unk_2440DD4D0);
  *&v50 = v8;
  *(&v50 + 1) = MEMORY[0x277D837D0];
  v51 = v26;
  v52 = MEMORY[0x277D837F8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_243FD8C58();
  v32 = v47;
  v33 = v42;
  sub_2440D25D0();

  v34 = v33;

  (*(v43 + 8))(v32, v33);
  if (*v2)
  {
    v35 = *(**v2 + 464);

    LOBYTE(v35) = v35(v36);

    LOBYTE(v53) = v35;
    sub_243FD843C(v2, v7);
    v37 = swift_allocObject();
    sub_243FD9F58(v7, v37 + v19, type metadata accessor for IdentityScannerView);
    *&v50 = v34;
    *(&v50 + 1) = v29;
    v51 = OpaqueTypeConformance2;
    v52 = v31;
    swift_getOpaqueTypeConformance2();
    sub_243F67588();
    v38 = v45;
    v39 = v48;
    sub_2440D25D0();

    return (*(v44 + 8))(v39, v38);
  }

  else
  {
    type metadata accessor for IdentityViewModel(0);
    sub_243FD6998(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel, &unk_2440DF8C0);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243FD713C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2678, &qword_2440DCE48);
  MEMORY[0x28223BE20](v155);
  v159 = v136 - v3;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2680, &qword_2440DCE50);
  MEMORY[0x28223BE20](v163);
  v161 = v136 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2688, &qword_2440DCE58);
  MEMORY[0x28223BE20](v5 - 8);
  v165 = v136 - v6;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2690, &qword_2440DCE60);
  MEMORY[0x28223BE20](v164);
  v162 = v136 - v7;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2698, &unk_2440DCE68);
  MEMORY[0x28223BE20](v160);
  v168 = v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v158 = v136 - v10;
  MEMORY[0x28223BE20](v11);
  v166 = v136 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0, &unk_2440D64A0);
  MEMORY[0x28223BE20](v13 - 8);
  v170 = v136 - v14;
  v15 = sub_2440D1670();
  v149 = *(v15 - 8);
  v150 = v15;
  MEMORY[0x28223BE20](v15);
  v145 = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CornersHighlightView(0);
  MEMORY[0x28223BE20](v17 - 8);
  v167 = v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC26A0, &qword_2440DCE78);
  MEMORY[0x28223BE20](v154);
  v153 = v136 - v19;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC26A8, &qword_2440DCE80);
  MEMORY[0x28223BE20](v152);
  v157 = v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  KeyPath = v136 - v22;
  MEMORY[0x28223BE20](v23);
  v172 = v136 - v24;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC26B0, &qword_2440DCE88) - 8;
  MEMORY[0x28223BE20](v144);
  v156 = v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v171 = v136 - v27;
  v28 = *(a1 + 7);
  v147 = *(a1 + 8);
  v148 = v28;
  *&v178 = v28;
  *(&v178 + 1) = v147;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25B0, &unk_2440DCCD0);
  sub_2440D2840();
  v139 = v186;
  v140 = v187;
  v29 = *(a1 + 9);
  v30 = *(a1 + 10);
  v31 = *(a1 + 11);
  v141 = *(&v186 + 1);
  v142 = v31;
  *&v178 = v29;
  *(&v178 + 1) = v30;
  *&v179 = v31;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25B8, &unk_2440E7450);
  sub_2440D2840();
  v137 = *(&v186 + 1);
  v138 = v186;
  v32 = v187;
  v33 = *(a1 + 6);
  v178 = *(a1 + 2);
  *&v179 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
  sub_2440D2840();
  v34 = v186;
  v35 = v187;
  v37 = *a1;
  v36 = *(a1 + 1);
  v38 = type metadata accessor for IdentityViewModel(0);
  v39 = sub_243FD6998(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel, &unk_2440DF8C0);
  v136[1] = v38;
  v136[2] = v36;
  sub_2440D1900();
  swift_getKeyPath();
  v136[0] = v39;
  sub_2440D1920();

  *(&v135 + 1) = v186;
  *&v135 = *(&v35 + 1);
  v40 = v145;
  sub_243FBD21C(v139, v141, v140, v138, v137, v34, *(&v34 + 1), v35, v184, *&v32, *(&v32 + 1), v135, *(&v186 + 1), v187);
  v41 = sub_2440D20B0();
  v183[0] = v185[0];
  *(v183 + 9) = *(v185 + 9);
  v178 = v184[0];
  v179 = v184[1];
  v181 = v184[3];
  v182 = v184[4];
  v180 = v184[2];
  BYTE9(v183[1]) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC26B8, &qword_2440DCEB8);
  sub_243FD9ECC();
  v42 = v171;
  sub_2440D2480();
  v189 = v181;
  v190 = v182;
  v191[0] = v183[0];
  v43 = v142;
  *(v191 + 10) = *(v183 + 10);
  v186 = v178;
  v187 = v179;
  v188 = v180;
  sub_243F5EED4(&v186, &qword_27EDC26B8, &qword_2440DCEB8);
  *(v42 + *(v144 + 44)) = 0;
  v44 = type metadata accessor for IdentityScannerView(0);
  (*(v149 + 16))(v40, &a1[*(v44 + 44)], v150);
  *&v178 = v29;
  *(&v178 + 1) = v30;
  *&v179 = v43;
  sub_2440D2820();
  if (v176 == 0.0 && v177 == 0.0)
  {
    v45 = *(a1 + 14);
    v46 = *(a1 + 15);
  }

  else
  {
    *&v178 = v29;
    *(&v178 + 1) = v30;
    *&v179 = v43;
    sub_2440D2820();
    v45 = v176;
    v46 = v177;
  }

  *&v178 = v148;
  *(&v178 + 1) = v147;
  sub_2440D2820();
  if (v37)
  {
    v47 = *&v176;
    v48 = *(*v37 + 968);

    v50 = v48(v49);

    if (v50 == 2)
    {
      v51 = sub_2440D26A0();
    }

    else
    {
      v51 = sub_2440D2650();
    }

    v52 = v51;
    v53 = *(*v37 + 920);

    v55 = v53(v54);

    v56 = *(*v37 + 1016);

    v58 = v56(v57);
    v60 = v59;

    v61 = v170;
    sub_243F67654();
    sub_243F4E2F4();
    sub_243F68750();
    v62 = v55 & 1;
    v63 = v167;
    sub_2440BFBE0(v61, v40, v47, v52, v62, v167, v45, v46, v58, v60);
    v64 = sub_2440D20B0();
    v65 = v153;
    sub_243FD9F58(v63, v153, type metadata accessor for CornersHighlightView);
    *(v65 + *(v154 + 36)) = v64;
    v66 = KeyPath;
    sub_243F681C8(v65, KeyPath, &qword_27EDC26A0, &qword_2440DCE78);
    *(v66 + *(v152 + 36)) = 0x3FF0000000000000;
    sub_243F681C8(v66, v172, &qword_27EDC26A8, &qword_2440DCE80);
    v167 = a1;
    v67 = sub_243FD811C();
    v69 = v68;
    LOBYTE(v63) = v70;
    sub_2440D2210();
    v71 = sub_2440D22E0();
    v73 = v72;
    LOBYTE(v65) = v74;
    v170 = v75;

    sub_243F62C68(v67, v69, v63 & 1);

    sub_2440D21B0();
    v76 = sub_2440D22A0();
    v153 = v77;
    v154 = v76;
    v79 = v78;
    v152 = v80;
    sub_243F62C68(v71, v73, v65 & 1);

    KeyPath = swift_getKeyPath();
    v81 = *(*v37 + 968);

    LODWORD(v67) = v81(v82);

    if (v67 == 2)
    {
      v83 = sub_2440D26A0();
    }

    else
    {
      v83 = sub_2440D2650();
    }

    v170 = v83;
    v150 = swift_getKeyPath();
    LODWORD(v147) = v79 & 1;
    v173 = v79 & 1;
    LODWORD(v149) = sub_2440D20A0();
    sub_2440D13D0();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v174 = 0;
    LODWORD(v148) = sub_2440D2110();
    sub_2440D13D0();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v175 = 0;
    v100 = v159;
    v101 = &v159[*(v155 + 36)];
    sub_2440D2AA0();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC26C8, &unk_2440DCF20);
    v103 = &v101[*(v102 + 52)];
    v104 = *(sub_2440D18B0() + 20);
    LODWORD(v155) = *MEMORY[0x277CE0118];
    v105 = v155;
    v106 = sub_2440D1B90();
    v107 = *(*(v106 - 8) + 104);
    v107(&v103[v104], v105, v106);
    __asm { FMOV            V0.2D, #14.0 }

    *v103 = _Q0;
    *&v101[*(v102 + 56)] = 256;
    v113 = v153;
    *v100 = v154;
    *(v100 + 8) = v113;
    *(v100 + 16) = v147;
    v114 = KeyPath;
    *(v100 + 24) = v152;
    *(v100 + 32) = v114;
    *(v100 + 40) = 0x3FE3333333333333;
    v115 = v170;
    *(v100 + 48) = v150;
    *(v100 + 56) = v115;
    *(v100 + 64) = v149;
    *(v100 + 72) = v85;
    *(v100 + 80) = v87;
    *(v100 + 88) = v89;
    *(v100 + 96) = v91;
    *(v100 + 104) = 0;
    *(v100 + 112) = v148;
    *(v100 + 120) = v93;
    *(v100 + 128) = v95;
    *(v100 + 136) = v97;
    *(v100 + 144) = v99;
    *(v100 + 152) = 0;
    v116 = v161;
    v117 = &v161[*(v163 + 36)];
    v107(v117, v155, v106);
    *&v117[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E18, &qword_2440D7FD0) + 36)] = 256;
    sub_243F681C8(v100, v116, &qword_27EDC2678, &qword_2440DCE48);
    sub_243FD9FC0();
    v118 = v165;
    sub_2440D24E0();
    sub_243F5EED4(v116, &qword_27EDC2680, &qword_2440DCE50);
    v119 = *(v167 + 13);
    *&v178 = *(v167 + 12);
    *(&v178 + 1) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0, &qword_2440DCCE0);
    sub_2440D2820();
    v120 = v176;
    v121 = v162;
    sub_243F681C8(v118, v162, &qword_27EDC2688, &qword_2440DCE58);
    v122 = (v121 + *(v164 + 36));
    *v122 = 0.0;
    v122[1] = v120;
    v123 = v121;
    v124 = v158;
    sub_243F681C8(v123, v158, &qword_27EDC2690, &qword_2440DCE60);
    *(v124 + *(v160 + 36)) = 0x4000000000000000;
    v125 = v124;
    v126 = v166;
    sub_243F681C8(v125, v166, &qword_27EDC2698, &unk_2440DCE68);
    v127 = v171;
    v128 = v156;
    sub_243F5F574(v171, v156, &qword_27EDC26B0, &qword_2440DCE88);
    v129 = v172;
    v130 = v157;
    sub_243F5F574(v172, v157, &qword_27EDC26A8, &qword_2440DCE80);
    v131 = v168;
    sub_243F5F574(v126, v168, &qword_27EDC2698, &unk_2440DCE68);
    v132 = v169;
    sub_243F5F574(v128, v169, &qword_27EDC26B0, &qword_2440DCE88);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2718, &unk_2440DCF50);
    sub_243F5F574(v130, v132 + *(v133 + 48), &qword_27EDC26A8, &qword_2440DCE80);
    sub_243F5F574(v131, v132 + *(v133 + 64), &qword_27EDC2698, &unk_2440DCE68);
    sub_243F5EED4(v126, &qword_27EDC2698, &unk_2440DCE68);
    sub_243F5EED4(v129, &qword_27EDC26A8, &qword_2440DCE80);
    sub_243F5EED4(v127, &qword_27EDC26B0, &qword_2440DCE88);
    sub_243F5EED4(v131, &qword_27EDC2698, &unk_2440DCE68);
    sub_243F5EED4(v130, &qword_27EDC26A8, &qword_2440DCE80);
    return sub_243F5EED4(v128, &qword_27EDC26B0, &qword_2440DCE88);
  }

  else
  {
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243FD8074@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 920))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_243FD811C()
{
  if (*v0)
  {
    v1 = 0xD000000000000012;
    v2 = *(**v0 + 968);

    v4 = v2(v3);

    if (v4 == 2)
    {
      v5 = "QR_CODE_DECODE_ERROR_TITLE";
    }

    else
    {
      v6 = sub_243F7CACC(v4 & 1, 1);
      if (v6)
      {
        v1 = 0xD00000000000001ALL;
      }

      else
      {
        v1 = 0xD000000000000017;
      }

      if (v6)
      {
        v5 = "QR_CODE_NOT_VALID_TITLE";
      }

      else
      {
        v5 = "e userDefaults for suite";
      }
    }

    sub_24401FBC0();
    return sub_24401FBD4(v1, v5 | 0x8000000000000000);
  }

  else
  {
    type metadata accessor for IdentityViewModel(0);
    sub_243FD6998(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel, &unk_2440DF8C0);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

void sub_243FD8280(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(*v2 + 264);

    v3(v4);

    if (*a1)
    {
      v5 = *(**a1 + 1408);

      v5(v6);

      v7 = sub_2440D2BB0();
      MEMORY[0x28223BE20](v7);
      sub_2440D16E0();

      return;
    }

    type metadata accessor for IdentityViewModel(0);
    v8 = &qword_27EDC1DA8;
    v9 = type metadata accessor for IdentityViewModel;
    v10 = &unk_2440DF8C0;
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    v8 = &qword_27EDC0188;
    v9 = type metadata accessor for FineRotationManager;
    v10 = &unk_2440D77E0;
  }

  sub_243FD6998(v8, v9, v10);
  sub_2440D1910();
  __break(1u);
}

uint64_t sub_243FD843C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityScannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_243FD84A4()
{
  v1 = *(type metadata accessor for IdentityScannerView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_243FD8280(v2);
}

uint64_t sub_243FD8504()
{
  v1 = *(type metadata accessor for IdentityScannerView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = v2[2];
  if (v3)
  {
    v4 = *(*v3 + 256);

    v4(v5);

    if (*v2)
    {
      v6 = *(**v2 + 1416);

      v6(v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0, &qword_2440DCCE0);
      return sub_2440D2830();
    }

    type metadata accessor for IdentityViewModel(0);
    v9 = &qword_27EDC1DA8;
    v10 = type metadata accessor for IdentityViewModel;
    v11 = &unk_2440DF8C0;
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    v9 = &qword_27EDC0188;
    v10 = type metadata accessor for FineRotationManager;
    v11 = &unk_2440D77E0;
  }

  sub_243FD6998(v9, v10, v11);
  result = sub_2440D1910();
  __break(1u);
  return result;
}

void sub_243FD86CC(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_243F4E22C();
    sub_243F5F574(v10, v6, &qword_27EDC0A50, &qword_2440D5CB0);
    v11 = sub_2440D11E0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v6, 1, v11) == 1)
    {
      sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v13 = sub_2440D11C0();
      v14 = sub_2440D3460();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_243F48000, v13, v14, "Processing QR code payload", v15, 2u);
        MEMORY[0x245D58570](v15, -1, -1);
      }

      (*(v12 + 8))(v6, v11);
    }

    if (*a2)
    {
      v16 = *(**a2 + 1392);

      v16(v7, v8);

      v17 = a2[6];
      v19 = *(a2 + 2);
      v20 = v17;
      v18[1] = 0;
      v18[2] = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
      sub_2440D2830();
    }

    else
    {
      type metadata accessor for IdentityViewModel(0);
      sub_243FD6998(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel, &unk_2440DF8C0);
      sub_2440D1910();
      __break(1u);
    }
  }
}

void sub_243FD8978(uint64_t a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for IdentityScannerView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  sub_243FD86CC(a2, v5);
}

unint64_t sub_243FD89E8()
{
  result = qword_27EDC25F0;
  if (!qword_27EDC25F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC25C8, &qword_2440DCCE8);
    sub_243FD8A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC25F0);
  }

  return result;
}

unint64_t sub_243FD8A74()
{
  result = qword_27EDC25F8;
  if (!qword_27EDC25F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC25E8, &qword_2440DCD08);
    sub_243F5DD50(&qword_27EDC2600, &qword_27EDC2608, &qword_2440DCD10, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC25F8);
  }

  return result;
}

void sub_243FD8B2C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for IdentityScannerView(0) - 8);
  if (!*(*a2 + 16))
  {
    v5 = *(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
    if (v5)
    {
      v6 = *(*v5 + 1400);

      v6(v7);
    }

    else
    {
      type metadata accessor for IdentityViewModel(0);
      sub_243FD6998(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel, &unk_2440DF8C0);
      sub_2440D1910();
      __break(1u);
    }
  }
}

unint64_t sub_243FD8C58()
{
  result = qword_27EDC2610;
  if (!qword_27EDC2610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1EA0, &unk_2440DD4D0);
    sub_243FD6998(&qword_27EDC2618, type metadata accessor for CGPoint, MEMORY[0x277CBF2B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2610);
  }

  return result;
}

void sub_243FD8D0C(char *a1, void *a2)
{
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v12 == v10 && v13 == v11)
  {
  }

  else
  {
    v4 = sub_2440D3A10();

    if ((v4 & 1) == 0)
    {
      if (*a2)
      {
        v5 = *(**a2 + 1416);

        v5(v6);
LABEL_11:

        v9 = sub_2440D2BB0();
        MEMORY[0x28223BE20](v9);
        sub_2440D16E0();

        return;
      }

      goto LABEL_12;
    }
  }

  if (*a2)
  {
    v7 = *(**a2 + 1408);

    v7(v8);
    goto LABEL_11;
  }

LABEL_12:
  type metadata accessor for IdentityViewModel(0);
  sub_243FD6998(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel, &unk_2440DF8C0);
  sub_2440D1910();
  __break(1u);
}

uint64_t objectdestroyTm_15()
{
  v1 = (type metadata accessor for IdentityScannerView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[13];
  v4 = sub_2440D1670();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_243FD9044(uint64_t a1, char *a2)
{
  v4 = *(type metadata accessor for IdentityScannerView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  sub_243FD8D0C(a2, v5);
}

uint64_t sub_243FD90B4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  a1(0);
  sub_243FD6998(a2, a3, a4);

  return sub_2440D1930();
}

uint64_t sub_243FD9144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  sub_2440D2810();
  *(a9 + 32) = v17;
  *(a9 + 48) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1EA0, &unk_2440DD4D0);
  sub_2440D2810();
  *(a9 + 56) = v17;
  type metadata accessor for CGSize(0);
  sub_2440D2810();
  *(a9 + 72) = v17;
  *(a9 + 88) = v18;
  sub_2440D2810();
  *(a9 + 96) = v17;
  *(a9 + 112) = vdupq_n_s64(0x4071800000000000uLL);
  v14 = *(type metadata accessor for IdentityScannerView(0) + 44);
  v15 = sub_2440D1670();
  return (*(*(v15 - 8) + 32))(a9 + v14, a8, v15);
}

uint64_t sub_243FD92A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for IdentityScannerView(0) + 44);
  v5 = sub_2440D1670();
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  type metadata accessor for IdentityViewModel(0);
  sub_243FD6998(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel, &unk_2440DF8C0);
  v6 = sub_2440D1930();
  v8 = v7;
  type metadata accessor for FineRotationManager(0);
  sub_243FD6998(&qword_27EDC0188, type metadata accessor for FineRotationManager, &unk_2440D77E0);
  v9 = sub_2440D1930();
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  sub_2440D2810();
  *(a2 + 32) = v22;
  *(a2 + 48) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1EA0, &unk_2440DD4D0);
  sub_2440D2810();
  *(a2 + 56) = v22;
  type metadata accessor for CGSize(0);
  sub_2440D2810();
  *(a2 + 72) = v22;
  *(a2 + 88) = v23;
  sub_2440D2810();
  *(a2 + 96) = v22;
  *(a2 + 112) = vdupq_n_s64(0x4071800000000000uLL);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2660, &qword_2440DCE28) + 36);
  v12 = *MEMORY[0x277CDF3C0];
  v13 = sub_2440D1410();
  v14 = *(v13 - 8);
  (*(v14 + 104))(a2 + v11, v12, v13);
  (*(v14 + 56))(a2 + v11, 0, 1, v13);
  v15 = sub_24400C3C4();
  v16 = sub_2440D12E0();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2668, &qword_2440DCE30) + 36));
  *v17 = v16;
  v17[1] = v15;
  v18 = sub_243F7E4B0();
  v19 = sub_2440D12E0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2670, &unk_2440DCE38);
  v21 = (a2 + *(result + 36));
  *v21 = v19;
  v21[1] = v18;
  return result;
}

unint64_t sub_243FD95E4()
{
  result = qword_27EDC2620;
  if (!qword_27EDC2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2620);
  }

  return result;
}

uint64_t sub_243FD966C(uint64_t a1)
{
  v2 = sub_243FD9CE8();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FD96B8(uint64_t a1)
{
  v2 = sub_243FD9CE8();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243FD9718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440D1670();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243FD97D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_2440D1670();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243FD987C(uint64_t a1)
{
  sub_243FD99D8(319);
  if (v1 <= 0x3F)
  {
    sub_243F67C94(319);
    if (v2 <= 0x3F)
    {
      sub_243FD9B28(319, &qword_27EDC0288, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_243FD9A6C(319);
        if (v4 <= 0x3F)
        {
          sub_243FD9AD0(319);
          if (v5 <= 0x3F)
          {
            sub_243FD9B28(319, &qword_27EDC2640, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CGSize(319);
              if (v7 <= 0x3F)
              {
                sub_2440D1670();
                if (v8 <= 0x3F)
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
}