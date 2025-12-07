void sub_26D2D2818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26D2D2CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D2FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D3C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D2D57FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TFAMPCFStringGetCharacterAtIndex(UniChar *buffer, int64_t a2, uint64_t *a3)
{
  if (a2 < 0 || (v6 = *(buffer + 36), v6 <= a2))
  {
    v9 = 0;
    goto LABEL_6;
  }

  v7 = *(buffer + 33);
  if (v7)
  {
    v8 = *(v7 + 2 * *(buffer + 35) + 2 * a2);
  }

  else
  {
    v12 = *(buffer + 34);
    if (v12)
    {
      v8 = *(v12 + *(buffer + 35) + a2);
    }

    else
    {
      if (*(buffer + 38) <= a2 || (v13 = *(buffer + 37), v13 > a2))
      {
        v14 = a2 - 4;
        if (a2 < 4)
        {
          v14 = 0;
        }

        if (v14 + 128 < v6)
        {
          v6 = v14 + 128;
        }

        *(buffer + 37) = v14;
        *(buffer + 38) = v6;
        v24.length = v6 - v14;
        v24.location = *(buffer + 35) + v14;
        CFStringGetCharacters(*(buffer + 32), v24, buffer);
        v13 = *(buffer + 37);
      }

      v8 = buffer[a2 - v13];
    }
  }

  v9 = v8;
  if (v8 >> 10 != 54 || (v15 = *(buffer + 36), (v15 - 1) <= a2))
  {
LABEL_6:
    v10 = 1;
    if (!a3)
    {
      return v9;
    }

LABEL_7:
    *a3 = v10;
    return v9;
  }

  v16 = a2 + 1;
  v17 = *(buffer + 33);
  if (v17)
  {
    v18 = *(v17 + 2 * *(buffer + 35) + 2 * v16);
  }

  else
  {
    v19 = *(buffer + 34);
    if (v19)
    {
      v18 = *(v19 + *(buffer + 35) + v16);
    }

    else
    {
      if (*(buffer + 38) <= v16 || (v20 = *(buffer + 37), v20 > v16))
      {
        v21 = a2 - 3;
        if (a2 < 3)
        {
          v21 = 0;
        }

        if (v21 + 128 < v15)
        {
          v15 = v21 + 128;
        }

        *(buffer + 37) = v21;
        *(buffer + 38) = v15;
        v25.length = v15 - v21;
        v25.location = *(buffer + 35) + v21;
        CFStringGetCharacters(*(buffer + 32), v25, buffer);
        v20 = *(buffer + 37);
      }

      v18 = buffer[v16 - v20];
    }
  }

  v22 = v18 & 0xFC00;
  v23 = (v9 << 10) + v18 - 56613888;
  v10 = 1;
  if (v22 == 56320)
  {
    v10 = 2;
    v9 = v23;
  }

  else
  {
    v9 = v9;
  }

  if (a3)
  {
    goto LABEL_7;
  }

  return v9;
}

void __defaultParagraphStyle_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:0];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultLTRParagraphStyleAttribute;
  defaultParagraphStyle_defaultLTRParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_2()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:-1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultNaturalParagraphStyleAttribute;
  defaultParagraphStyle_defaultNaturalParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_3()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultRTLParagraphStyleAttribute;
  defaultParagraphStyle_defaultRTLParagraphStyleAttribute = v0;
}

void sub_26D2DE488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26D2E418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id TFLocalizedString(void *a1)
{
  v1 = TFLocalizedString_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    TFLocalizedString_cold_1();
  }

  v3 = [TFLocalizedString_frameworkBundle localizedStringForKey:v2 value:&stru_287EAC508 table:@"Localizable"];

  return v3;
}

uint64_t __TFLocalizedString_block_invoke(uint64_t a1, uint64_t a2)
{
  TFLocalizedString_frameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_26D2E62C0(uint64_t a1@<X8>)
{
  v48 = sub_26D30FA88();
  v55 = 1;
  *&v49[0] = sub_26D2F96AC(0x4B43414244454546, 0xEE00454C5449545FLL);
  *(&v49[0] + 1) = v2;
  sub_26D2E9230(*&v49[0], v2, v3);
  v4 = sub_26D30FD58();
  v6 = v5;
  v8 = v7;
  sub_26D30FC48();
  v9 = sub_26D30FD28();
  v11 = v10;
  v13 = v12;

  sub_26D2E92E4(v4, v6, v8 & 1);

  sub_26D30FC68();
  v45 = sub_26D30FD08();
  v46 = v14;
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_26D2E92E4(v9, v11, v13 & 1);

  sub_26D2F96AC(0xD000000000000011, 0x800000026D316E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26D313B40;
  v19 = sub_26D2E96EC();
  swift_beginAccess();
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);

  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_26D2E92F4(v22, v23, v24);
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  v25 = sub_26D3100D8();
  v27 = v26;

  *&v49[0] = v25;
  *(&v49[0] + 1) = v27;
  v28 = sub_26D30FD58();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  KeyPath = swift_getKeyPath();
  v47 = sub_26D30FB58();
  LOBYTE(v49[0]) = v4 & 1;
  v32 &= 1u;
  sub_26D2E9348(v45, v16, v4 & 1);

  sub_26D2E9348(v28, v30, v32);

  sub_26D2E92E4(v28, v30, v32);

  sub_26D2E92E4(v45, v16, v4 & 1);

  *(&v57 + 1) = *v53;
  DWORD1(v57) = *&v53[3];
  *(&v59 + 1) = *v52;
  DWORD1(v59) = *&v52[3];
  BYTE11(v60) = v51;
  *(&v60 + 9) = v50;
  *&v56 = v45;
  *(&v56 + 1) = v16;
  LOBYTE(v57) = v4 & 1;
  *(&v57 + 1) = v46;
  *&v58 = v28;
  *(&v58 + 1) = v30;
  LOBYTE(v59) = v32;
  *(&v59 + 1) = v34;
  *&v60 = KeyPath;
  BYTE8(v60) = 0;
  HIDWORD(v60) = v47;
  v61[0] = v45;
  v61[1] = v16;
  v62 = v4 & 1;
  *v63 = *v53;
  *&v63[3] = *&v53[3];
  v64 = v46;
  v65 = v28;
  v66 = v30;
  v67 = v32;
  *&v68[3] = *&v52[3];
  *v68 = *v52;
  v69 = v34;
  v70 = KeyPath;
  v71 = 0;
  v72 = v50;
  v73 = v51;
  v74 = v47;
  sub_26D2E9114(&v56, v49, &qword_2804F9180, &qword_26D313B50);
  sub_26D2E9284(v61, &qword_2804F9180, &qword_26D313B50);
  *&v54[23] = v57;
  *&v54[39] = v58;
  *&v54[55] = v59;
  *&v54[71] = v60;
  *&v54[7] = v56;
  LOBYTE(v4) = v55;
  sub_26D30FFE8();
  sub_26D30F968();
  LOBYTE(v34) = sub_26D30FBC8();
  sub_26D30F7B8();
  *a1 = v48;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 49) = *&v54[32];
  *(a1 + 65) = *&v54[48];
  *(a1 + 81) = *&v54[64];
  *(a1 + 96) = *&v54[79];
  *(a1 + 17) = *v54;
  *(a1 + 33) = *&v54[16];
  v36 = v49[0];
  v37 = v49[1];
  v38 = v49[3];
  *(a1 + 136) = v49[2];
  *(a1 + 120) = v37;
  *(a1 + 104) = v36;
  v39 = v49[4];
  v40 = v49[5];
  *(a1 + 200) = v49[6];
  *(a1 + 184) = v40;
  *(a1 + 168) = v39;
  *(a1 + 152) = v38;
  *(a1 + 216) = v34;
  *(a1 + 224) = v41;
  *(a1 + 232) = v42;
  *(a1 + 240) = v43;
  *(a1 + 248) = v44;
  *(a1 + 256) = 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26D2E67D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9188, &qword_26D313B58);
  sub_26D2E6C18();
  return sub_26D2EDE0C(sub_26D2E6C10);
}

uint64_t sub_26D2E6840@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_26D30FAA8();
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91A0, &qword_26D313B68);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9198, &qword_26D313B60);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - v13;
  v40 = sub_26D2F96AC(0xD000000000000014, 0x800000026D316E30);
  v41 = v15;
  sub_26D2E97F8();
  swift_getKeyPath();
  sub_26D2E71D8(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);
  sub_26D30F8D8();

  sub_26D2E9230(v16, v17, v18);
  sub_26D310008();
  KeyPath = swift_getKeyPath();
  v20 = &v9[*(v6 + 36)];
  *v20 = KeyPath;
  v20[8] = 0;
  v21 = sub_26D2E6DB4();
  sub_26D30FE28();
  sub_26D2E9284(v9, &qword_2804F91A0, &qword_26D313B68);
  sub_26D30FA98();
  v38 = v6;
  v39 = v21;
  swift_getOpaqueTypeConformance2();
  sub_26D2E71D8(&qword_2804F91D0, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  v22 = v37;
  v23 = v35;
  sub_26D30FDB8();
  (*(v36 + 8))(v5, v23);
  (*(v11 + 8))(v14, v10);
  LOBYTE(v21) = sub_26D30FBD8();
  sub_26D30F7B8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9188, &qword_26D313B58);
  v33 = v22 + *(result + 36);
  *v33 = v21;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

unint64_t sub_26D2E6C18()
{
  result = qword_2804F9190;
  if (!qword_2804F9190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9188, &qword_26D313B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9198, &qword_26D313B60);
    sub_26D30FAA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F91A0, &qword_26D313B68);
    sub_26D2E6DB4();
    swift_getOpaqueTypeConformance2();
    sub_26D2E71D8(&qword_2804F91D0, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9190);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26D2E6DB4()
{
  result = qword_2804F91A8;
  if (!qword_2804F91A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F91A0, &qword_26D313B68);
    sub_26D2E906C(&qword_2804F91B0, &qword_2804F91B8, &qword_26D313B70, MEMORY[0x277CDF1A8]);
    sub_26D2E906C(&qword_2804F91C0, &qword_2804F91C8, &qword_26D313B78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F91A8);
  }

  return result;
}

uint64_t sub_26D2E6E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D2F334C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26D2E6EC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_26D2F33C0(v1, v2);
}

uint64_t sub_26D2E6F04()
{
  v0 = sub_26D30F398();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_26D30F3C8();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91D8, &qword_26D313B80);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_26D2E97F8();
  swift_getKeyPath();
  sub_26D2E71D8(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);
  sub_26D30F8D8();

  sub_26D310078();
  v8 = sub_26D310088();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_26D30F3B8();
  sub_26D30F388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91E8, &qword_26D313BB0);
  sub_26D2E906C(&qword_2804F91F0, &qword_2804F91E8, &qword_26D313BB0, MEMORY[0x277CE11A8]);
  return sub_26D30F3D8();
}

uint64_t sub_26D2E7180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D2F3F74();
  *a1 = result;
  return result;
}

uint64_t sub_26D2E71D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_26D2E7220@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_26D30FFE8();
  v5 = v4;
  sub_26D2EDE0C(sub_26D2E72A8);
  result = v7;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v5;
  a2[1] = v7;
  a2[2].n128_u8[0] = v8;
  a2[2].n128_u64[1] = v9;
  return result;
}

uint64_t sub_26D2E72A8@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_26D2F96AC(0xD000000000000021, 0x800000026D316E00);
  sub_26D2E9230(v8, v2, v3);
  result = sub_26D30FD58();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t View.title(appName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9);
  (v10)(a3, v9, a2);
  return (*(v7 + 8))(v9, a2);
}

uint64_t View.toolbar(isSubmissionDisabled:submitAction:cancelAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9);
  (v10)(a3, v9, a2);
  return (*(v7 + 8))(v9, a2);
}

uint64_t View.minimumFrame()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v9(v8);
  (v9)(a2, v8, a1);
  return (*(v6 + 8))(v8, a1);
}

uint64_t sub_26D2E7624()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return MEMORY[0x28212FFB0](v0);
}

double sub_26D2E7668@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26D2E7678@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_2804FAAA0 + 16);
  swift_beginAccess();
  return sub_26D2E9114(v1 + v3, a1, &qword_2804F91F8, &qword_26D313BB8);
}

id sub_26D2E7724(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_26D2E7768(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v4;
  v8 = v4 + *(v7 + qword_2804FAAA0 + 16);
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v4 + *((*v6 & *v4) + qword_2804FAAA0 + 24)) = 0;
  *(v4 + *((*v6 & *v4) + qword_2804FAAA0 + 32)) = 0;
  v9 = type metadata accessor for TFHostingController(0, *(v7 + qword_2804FAAA0), *(v7 + qword_2804FAAA0 + 8), a4);
  v12.receiver = v4;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_26D2E78E8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_26D2E8288(a1);
  (*(*(*(v2 + qword_2804FAAA0) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_26D2E7968(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_26D2E8288(a1);
  (*(*(*(v3 + qword_2804FAAA0) - 8) + 8))(a1);
  return v4;
}

void *sub_26D2E7A0C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = sub_26D2E8400(a1, a2);
  (*(*(*(v3 + qword_2804FAAA0) - 8) + 8))(a1);
  return v7;
}

void *sub_26D2E7A98(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = sub_26D2E8400(a1, a2);
  (*(*(*(v4 + qword_2804FAAA0) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_26D2E7B3C()
{
  sub_26D2E7678(v6);
  if (!v7)
  {
    return sub_26D2E9284(v6, &qword_2804F91F8, &qword_26D313BB8);
  }

  sub_26D2E8DD8(v6, v3);
  sub_26D2E9284(v6, &qword_2804F91F8, &qword_26D313BB8);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  (*(v1 + 24))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_26D2E7C08()
{
  sub_26D2E7678(v6);
  if (!v7)
  {
    return sub_26D2E9284(v6, &qword_2804F91F8, &qword_26D313BB8);
  }

  sub_26D2E8DD8(v6, v3);
  sub_26D2E9284(v6, &qword_2804F91F8, &qword_26D313BB8);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  (*(v1 + 16))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_26D2E7CD4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_26D310248();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

id sub_26D2E7D48()
{
  v1 = v0;
  sub_26D2E7678(v11);
  v2 = v12;
  if (v12)
  {
    v3 = v13;
    v4 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v5 = *(v2 - 8);
    MEMORY[0x28223BE20](v4, v4);
    v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    sub_26D2E9284(v11, &qword_2804F91F8, &qword_26D313BB8);
    v8 = (*(v3 + 8))(v2, v3);
    (*(v5 + 8))(v7, v2);
  }

  else
  {
    sub_26D2E9284(v11, &qword_2804F91F8, &qword_26D313BB8);
    v8 = 1;
  }

  result = *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_2804FAAA0 + 24));
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void sub_26D2E7F9C()
{
  v1 = MEMORY[0x277D85000];
  sub_26D2E9284(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_2804FAAA0 + 16), &qword_2804F91F8, &qword_26D313BB8);

  v2 = *(v0 + *((*v1 & *v0) + qword_2804FAAA0 + 32));
}

id sub_26D2E80A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TFHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_2804FAAA0), *((*MEMORY[0x277D85000] & *v4) + qword_2804FAAA0 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_26D2E8124(void *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_26D2E9284(a1 + *((*MEMORY[0x277D85000] & *a1) + qword_2804FAAA0 + 16), &qword_2804F91F8, &qword_26D313BB8);

  v3 = *(a1 + *((*v2 & *a1) + qword_2804FAAA0 + 32));
}

uint64_t sub_26D2E8234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D30F9C8();
  *a1 = result;
  return result;
}

uint64_t sub_26D2E8288(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  v3 = &v10 - v2;
  v5 = v1 + *(v4 + 16);
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v1 + *((*v6 & *v1) + *(v7 + 2720) + 24)) = 0;
  *(v1 + *((*v6 & *v1) + *(v7 + 2720) + 32)) = 0;
  (*(v8 + 16))(v3);
  return sub_26D30FAB8();
}

void *sub_26D2E8400(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v2;
  v6 = *(v5 + qword_2804FAAA0);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v70 - v7;
  v10 = v2 + *(v9 + 16);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *(v2 + *((*v4 & *v2) + qword_2804FAAA0 + 24)) = 0;
  *(v2 + *((*v4 & *v2) + qword_2804FAAA0 + 32)) = 0;
  (*(v11 + 16))(v8);
  v12 = sub_26D30FAB8();
  v71 = a2;
  sub_26D2E8DD8(a2, v72);
  v13 = (v12 + *((*v4 & *v12) + qword_2804FAAA0 + 16));
  swift_beginAccess();
  v70 = v13;
  sub_26D2E917C(v72, v13);
  swift_endAccess();
  if (sub_26D30FFB8())
  {
    v14 = sub_26D3100B8();
    v15 = objc_opt_self();
    v16 = v4;
    v17 = [v15 systemImageNamed_];

    v72[0] = v12;
    v18 = objc_allocWithZone(MEMORY[0x277D751E0]);
    type metadata accessor for TFHostingController(0, v6, *(v5 + qword_2804FAAA0 + 8), v19);
    v20 = [v18 initWithImage:v17 style:2 target:sub_26D3102E8() action:sel_performSubmitActionWithSender_];

    v21 = v16;
    swift_unknownObjectRelease();
    v22 = *((*v16 & *v12) + qword_2804FAAA0 + 24);
    v23 = *(v12 + v22);
    *(v12 + v22) = v20;

    v24 = sub_26D3100B8();
    v25 = [v15 systemImageNamed_];

    v72[0] = v12;
    v26 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v25 style:0 target:sub_26D3102E8() action:sel_performCancelActionWithSender_];
  }

  else
  {
    sub_26D2F96AC(0xD000000000000023, 0x800000026D316DA0);
    v28 = type metadata accessor for TFHostingController(0, v6, *(v5 + qword_2804FAAA0 + 8), v27);
    v73 = v28;
    v72[0] = v12;
    v29 = v12;
    v30 = sub_26D3100B8();

    v31 = v73;
    if (v73)
    {
      v32 = __swift_project_boxed_opaque_existential_1Tm(v72, v73);
      v33 = *(v31 - 8);
      MEMORY[0x28223BE20](v32, v32);
      v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v35);
      v36 = sub_26D3102E8();
      (*(v33 + 8))(v35, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    else
    {
      v36 = 0;
    }

    v37 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v30 style:2 target:v36 action:sel_performSubmitActionWithSender_];

    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D85000];
    v38 = *((*MEMORY[0x277D85000] & *v29) + qword_2804FAAA0 + 24);
    v39 = *(v29 + v38);
    *(v29 + v38) = v37;

    sub_26D2F96AC(0xD000000000000023, 0x800000026D316DD0);
    v73 = v28;
    v72[0] = v29;
    v40 = v29;
    v41 = sub_26D3100B8();

    v42 = v73;
    if (v73)
    {
      v43 = __swift_project_boxed_opaque_existential_1Tm(v72, v73);
      v44 = *(v42 - 8);
      MEMORY[0x28223BE20](v43, v43);
      v46 = &v70 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v46);
      v47 = sub_26D3102E8();
      (*(v44 + 8))(v46, v42);
      v21 = MEMORY[0x277D85000];
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    else
    {
      v47 = 0;
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v41 style:0 target:v47 action:sel_performCancelActionWithSender_];
  }

  swift_unknownObjectRelease();
  v48 = *((*v21 & *v12) + qword_2804FAAA0 + 32);
  v49 = *(v12 + v48);
  *(v12 + v48) = v26;

  v50 = v12;
  v51 = [v50 navigationItem];
  v52 = *(v50 + *((*v21 & *v50) + qword_2804FAAA0 + 32));
  [v51 setLeftBarButtonItem_];

  v53 = [v50 navigationItem];
  v54 = *((*v21 & *v50) + qword_2804FAAA0 + 24);
  v55 = *(v50 + v54);
  [v53 setRightBarButtonItem_];

  v56 = *(v50 + v54);
  if (v56)
  {
    v57 = v70[3];
    if (v57)
    {
      v58 = v70[4];
      v59 = __swift_project_boxed_opaque_existential_1Tm(v70, v70[3]);
      v60 = *(v57 - 8);
      MEMORY[0x28223BE20](v59, v59);
      v62 = &v70 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v62);
      v63 = *(v58 + 8);
      v64 = v56;
      v65 = v63(v57, v58);
      (*(v60 + 8))(v62, v57);
    }

    else
    {
      v66 = v56;
      v65 = 0;
    }

    [v56 setEnabled_];
  }

  v67 = [objc_opt_self() defaultCenter];
  v68 = v50;
  [v67 addObserver:v68 selector:sel_updateSubmitActionEnablementStateWithSender_ name:*sub_26D2F2608() object:0];

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return v68;
}

uint64_t sub_26D2E8DD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26D2E8EA0()
{
  result = qword_2804F9200;
  if (!qword_2804F9200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9208, &qword_26D313C40);
    sub_26D2E8F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9200);
  }

  return result;
}

unint64_t sub_26D2E8F2C()
{
  result = qword_2804F9210;
  if (!qword_2804F9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9218, &qword_26D313C48);
    sub_26D2E906C(&qword_2804F9220, &qword_2804F9228, &unk_26D313C50, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9210);
  }

  return result;
}

uint64_t sub_26D2E906C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26D2E9114(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26D2E917C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91F8, &qword_26D313BB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26D2E9230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9250;
  if (!qword_2804F9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9250);
  }

  return result;
}

uint64_t sub_26D2E9284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26D2E92E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26D2E92F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9260;
  if (!qword_2804F9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9260);
  }

  return result;
}

uint64_t sub_26D2E9348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26D2E939C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D30FA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17 - v11;
  sub_26D2E9114(v2, &v17 - v11, &qword_2804F9268, &qword_26D313D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26D30F808();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_26D310198();
    v16 = sub_26D30FB68();
    sub_26D30F718(v15, &dword_26D2C7000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26D2E959C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26D2E9620(uint64_t a1)
{
  v2 = sub_26D30F808();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26D30F998();
}

uint64_t sub_26D2E96EC()
{
  type metadata accessor for FeedbackView(0);
}

uint64_t type metadata accessor for FeedbackView(uint64_t a1)
{
  result = qword_2804FA010;
  if (!qword_2804FA010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D2E9770(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FeedbackView(0) + 20);

  *(v3 + 8) = a1;
  return result;
}

uint64_t sub_26D2E97F8()
{
  type metadata accessor for FeedbackView(0);
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);

  return sub_26D30F8C8();
}

uint64_t sub_26D2E9890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v2, v3);
  sub_26D2E9114(a1, &v6 - v4, &qword_2804F9270, &qword_26D314510);
  sub_26D30FF08();
  return sub_26D2E9284(a1, &qword_2804F9270, &qword_26D314510);
}

uint64_t sub_26D2E9958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  v10 = sub_26D30F5B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2E9114(a1, v9, &qword_2804F9270, &qword_26D314510);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    v16 = v9;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    type metadata accessor for FeedbackView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);
    sub_26D30FF18();
    if (v15(v6, 1, v10) == 1)
    {
      sub_26D2E9284(v6, &qword_2804F9270, &qword_26D314510);
      sub_26D2F97E0(v14);
      return (*(v11 + 8))(v14, v10);
    }

    (*(v11 + 8))(v14, v10);
    v16 = v6;
  }

  return sub_26D2E9284(v16, &qword_2804F9270, &qword_26D314510);
}

uint64_t sub_26D2E9BE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  type metadata accessor for FeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);
  sub_26D30FF18();
  sub_26D2E9114(a1, v6, &qword_2804F9270, &qword_26D314510);
  sub_26D30FF28();
  sub_26D2E9958(v9);
  sub_26D2E9284(a1, &qword_2804F9270, &qword_26D314510);
  return sub_26D2E9284(v9, &qword_2804F9270, &qword_26D314510);
}

void (*sub_26D2E9D24(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[4] = v7;
  *(v5 + 12) = *(type metadata accessor for FeedbackView(0) + 24);
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);
  sub_26D30FF18();
  return sub_26D2E9E6C;
}

void sub_26D2E9E6C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 8);
  if (a2)
  {
    sub_26D2E9114(*(*a1 + 32), v5, &qword_2804F9270, &qword_26D314510);
    sub_26D30FF18();
    sub_26D2E9114(v5, v6, &qword_2804F9270, &qword_26D314510);
    sub_26D30FF28();
    sub_26D2E9958(v4);
    sub_26D2E9284(v4, &qword_2804F9270, &qword_26D314510);
  }

  else
  {
    sub_26D30FF18();
    sub_26D2E9114(v3, v4, &qword_2804F9270, &qword_26D314510);
    sub_26D30FF28();
    sub_26D2E9958(v5);
  }

  sub_26D2E9284(v5, &qword_2804F9270, &qword_26D314510);
  sub_26D2E9284(v3, &qword_2804F9270, &qword_26D314510);
  free(v3);
  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_26D2E9FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D30F5B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_26D2EA06C(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for FeedbackView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);
  return a1(v2);
}

uint64_t sub_26D2EA104()
{
  type metadata accessor for FeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280, &qword_26D313D68);
  sub_26D30FF18();
  return v1;
}

uint64_t sub_26D2EA16C(char a1)
{
  type metadata accessor for FeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280, &qword_26D313D68);
  return sub_26D30FF28();
}

void (*sub_26D2EA1DC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FeedbackView(0) + 28));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280, &qword_26D313D68);
  sub_26D30FF18();
  return sub_26D2EA298;
}

void sub_26D2EA298(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_26D30FF28();

  free(v1);
}

uint64_t sub_26D2EA308()
{
  type metadata accessor for FeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9280, &qword_26D313D68);
  sub_26D30FF38();
  return v1;
}

uint64_t sub_26D2EA374@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18[-v9];
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for FeedbackView(0);
  v12 = sub_26D30F5B8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_26D2E9114(v10, v7, &qword_2804F9270, &qword_26D314510);
  sub_26D30FF08();
  sub_26D2E9284(v10, &qword_2804F9270, &qword_26D314510);
  v13 = a2 + v11[7];
  v18[15] = 0;
  sub_26D30FF08();
  v14 = v19;
  *v13 = v18[16];
  *(v13 + 1) = v14;
  *(a2 + v11[8]) = 0x403E000000000000;
  v15 = (a2 + v11[5]);
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);
  result = sub_26D30F8B8();
  *v15 = result;
  v15[1] = v17;
  return result;
}

uint64_t sub_26D2EA5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9288, &qword_26D313D70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14[-v6];
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9290, &qword_26D313D78);
  sub_26D2EABE0();
  sub_26D30F928();
  sub_26D2E906C(&qword_2804F92C0, &qword_2804F9288, &qword_26D313D70, MEMORY[0x277CDDA18]);
  View.minimumFrame()(v3, a1);
  (*(v4 + 8))(v7, v3);
  v8 = *(v1 + *(type metadata accessor for FeedbackView(0) + 20) + 8);
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);

  v9 = sub_26D30F8B8();
  v11 = v10;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92C8, &qword_26D313D90) + 36));
  *v12 = v9;
  v12[1] = v11;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D0, &unk_26D313D98) + 36)) = v8;
}

uint64_t sub_26D2EA7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for FeedbackView(0);
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v5 = *(v35 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92A8, &unk_26D313D80);
  v38 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v33 - v16;
  v33 = &v33 - v16;
  v39 = a1;
  sub_26D30FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9590, &qword_26D314260);
  sub_26D2E906C(&qword_2804F9598, &qword_2804F9590, &qword_26D314260, MEMORY[0x277CE1198]);
  sub_26D30F7C8();
  v18 = *(a1 + *(v4 + 28) + 8);
  swift_beginAccess();
  v19 = *(v18 + 32);
  sub_26D2E906C(&qword_2804F92A0, &qword_2804F92A8, &unk_26D313D80, MEMORY[0x277CDD6E0]);

  View.title(appName:)(v19, v10, v17);

  v20 = *(v38 + 8);
  v38 += 8;
  v20(v14, v10);
  LOBYTE(v19) = sub_26D2F2B84();
  v21 = v34;
  sub_26D2F1CD0(a1, v34);
  v22 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v23 = swift_allocObject();
  sub_26D2F1D38(v21, v23 + v22);
  v24 = v36;
  sub_26D2F1CD0(a1, v36);
  v25 = swift_allocObject();
  sub_26D2F1D38(v24, v25 + v22);
  v26 = v19 & 1;
  v27 = v37;
  v28 = v33;
  View.toolbar(isSubmissionDisabled:submitAction:cancelAction:)(v26, v10, v37);

  v20(v28, v10);
  sub_26D30FE58();
  v29 = sub_26D30FE88();

  v30 = sub_26D30FBB8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9290, &qword_26D313D78);
  v32 = v27 + *(result + 36);
  *v32 = v29;
  *(v32 + 8) = v30;
  return result;
}

unint64_t sub_26D2EABE0()
{
  result = qword_2804F9298;
  if (!qword_2804F9298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9290, &qword_26D313D78);
    sub_26D2E906C(&qword_2804F92A0, &qword_2804F92A8, &unk_26D313D80, MEMORY[0x277CDD6E0]);
    sub_26D2E906C(&qword_2804F92B0, &qword_2804F92B8, &unk_26D315390, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9298);
  }

  return result;
}

uint64_t sub_26D2EACC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9460, &qword_26D314188);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v136 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v132 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95A8, &qword_26D314270);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v139 = (&v132 - v12);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95B0, &qword_26D314278);
  v14 = MEMORY[0x28223BE20](v138, v13);
  v143 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v137 = &v132 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v148 = &v132 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9430, "pg");
  MEMORY[0x28223BE20](v21 - 8, v22);
  v135 = &v132 - v23;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95B8, &qword_26D314280);
  v25 = MEMORY[0x28223BE20](v134, v24);
  v142 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v132 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v150 = &v132 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95C0, &qword_26D314288);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v132 - v35;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95C8, &qword_26D314290);
  v38 = MEMORY[0x28223BE20](v133, v37);
  v141 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v132 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v149 = &v132 - v45;
  v147 = sub_26D30FA88();
  v176 = 1;
  v46 = a1;
  sub_26D2E62C0(v174);
  memcpy(v177, v174, sizeof(v177));
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9388, &qword_26D313E90);
  v47 = swift_allocObject();
  v151 = xmmword_26D313CE0;
  *(v47 + 16) = xmmword_26D313CE0;
  v48 = sub_26D30FBE8();
  *(v47 + 32) = v48;
  v49 = sub_26D30FC08();
  *(v47 + 33) = v49;
  v50 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v48)
  {
    v50 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() == v49)
  {
    v146 = v50;
  }

  else
  {
    v146 = sub_26D30FBF8();
  }

  type metadata accessor for FeedbackView(0);
  sub_26D30F7B8();
  v140 = v51;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  memcpy(v172, v177, 0x101uLL);
  v174[264] = 0;
  memcpy(&v175[7], v172, 0x108uLL);
  v145 = v176;
  *v36 = sub_26D30FA88();
  *(v36 + 1) = 0;
  v36[16] = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95D0, &qword_26D314298);
  sub_26D2EB9AC(v46, &v36[*(v58 + 44)]);
  v59 = swift_allocObject();
  *(v59 + 16) = v151;
  v60 = sub_26D30FBE8();
  *(v59 + 32) = v60;
  v61 = sub_26D30FC08();
  *(v59 + 33) = v61;
  v62 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v60)
  {
    v62 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v61)
  {
    v62 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_26D2F2534(v36, v43, &qword_2804F95C0, &qword_26D314288);
  v71 = &v43[*(v133 + 36)];
  *v71 = v62;
  *(v71 + 1) = v64;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  *(v71 + 4) = v70;
  v71[40] = 0;
  sub_26D2F2534(v43, v149, &qword_2804F95C8, &qword_26D314290);
  v72 = v135;
  v73 = v46;
  sub_26D2ED03C(v46, v135);
  v74 = swift_allocObject();
  *(v74 + 16) = v151;
  v75 = sub_26D30FBE8();
  *(v74 + 32) = v75;
  v76 = sub_26D30FC08();
  *(v74 + 33) = v76;
  v77 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v75)
  {
    v77 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v76)
  {
    v77 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  sub_26D2F2534(v72, v30, &qword_2804F9430, "pg");
  v86 = &v30[*(v134 + 36)];
  *v86 = v77;
  *(v86 + 1) = v79;
  *(v86 + 2) = v81;
  *(v86 + 3) = v83;
  *(v86 + 4) = v85;
  v86[40] = 0;
  sub_26D2F2534(v30, v150, &qword_2804F95B8, &qword_26D314280);
  v87 = sub_26D30FA88();
  v88 = v139;
  *v139 = v87;
  *(v88 + 8) = 0;
  *(v88 + 16) = 1;
  v89 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95D8, &qword_26D3142A0) + 44);
  *v9 = sub_26D30FA88();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E8, &qword_26D313DB8);
  sub_26D2ED86C(v73, &v9[*(v90 + 44)]);
  sub_26D2EC318(&v163);
  v91 = v136;
  sub_26D2E9114(v9, v136, &qword_2804F9460, &qword_26D314188);
  sub_26D2E9114(v91, v89, &qword_2804F9460, &qword_26D314188);
  v92 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95E0, &qword_26D3142A8) + 48);
  v93 = v167;
  v169 = v167;
  v94 = v166;
  v168[2] = v165;
  v168[3] = v166;
  v95 = v164;
  v96 = v163;
  v168[0] = v163;
  v168[1] = v164;
  *(v92 + 32) = v165;
  *(v92 + 48) = v94;
  *(v92 + 64) = v93;
  *v92 = v96;
  *(v92 + 16) = v95;
  sub_26D2E9114(v168, v154, &qword_2804F9470, &qword_26D314190);
  sub_26D2E9284(v9, &qword_2804F9460, &qword_26D314188);
  v170[2] = v165;
  v170[3] = v166;
  v171 = v167;
  v170[0] = v163;
  v170[1] = v164;
  sub_26D2E9284(v170, &qword_2804F9470, &qword_26D314190);
  sub_26D2E9284(v91, &qword_2804F9460, &qword_26D314188);
  v97 = swift_allocObject();
  *(v97 + 16) = v151;
  v98 = sub_26D30FBE8();
  *(v97 + 32) = v98;
  v99 = sub_26D30FC08();
  *(v97 + 33) = v99;
  v100 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v98)
  {
    v100 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v99)
  {
    v100 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v137;
  sub_26D2F2534(v88, v137, &qword_2804F95A8, &qword_26D314270);
  v110 = v109 + *(v138 + 36);
  *v110 = v100;
  *(v110 + 8) = v102;
  *(v110 + 16) = v104;
  *(v110 + 24) = v106;
  *(v110 + 32) = v108;
  *(v110 + 40) = 0;
  sub_26D2F2534(v109, v148, &qword_2804F95B0, &qword_26D314278);
  nullsub_1();
  v111 = swift_allocObject();
  *(v111 + 16) = v151;
  v112 = sub_26D30FBE8();
  *(v111 + 32) = v112;
  v113 = sub_26D30FC08();
  *(v111 + 33) = v113;
  v114 = sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v112)
  {
    v114 = sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v113)
  {
    v114 = sub_26D30FBF8();
  }

  sub_26D30F7B8();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = v141;
  sub_26D2E9114(v149, v141, &qword_2804F95C8, &qword_26D314290);
  v124 = v142;
  sub_26D2E9114(v150, v142, &qword_2804F95B8, &qword_26D314280);
  v125 = v148;
  v126 = v143;
  sub_26D2E9114(v148, v143, &qword_2804F95B0, &qword_26D314278);
  v153[0] = v147;
  v153[1] = 0;
  LOBYTE(v153[2]) = v145;
  memcpy(&v153[2] + 1, v175, 0x10FuLL);
  LOBYTE(v153[36]) = v146;
  *(&v153[36] + 1) = *v173;
  HIDWORD(v153[36]) = *&v173[3];
  v127 = v140;
  v153[37] = v140;
  v153[38] = v53;
  v153[39] = v55;
  v153[40] = v57;
  LOBYTE(v153[41]) = 0;
  v128 = v144;
  memcpy(v144, v153, 0x149uLL);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95E8, &qword_26D3142B0);
  sub_26D2E9114(v123, &v128[v129[12]], &qword_2804F95C8, &qword_26D314290);
  sub_26D2E9114(v124, &v128[v129[16]], &qword_2804F95B8, &qword_26D314280);
  sub_26D2E9114(v126, &v128[v129[20]], &qword_2804F95B0, &qword_26D314278);
  v130 = &v128[v129[24]];
  *v130 = v114;
  *(v130 + 1) = v116;
  *(v130 + 2) = v118;
  *(v130 + 3) = v120;
  *(v130 + 4) = v122;
  v130[40] = 0;
  sub_26D2E9114(v153, v154, &qword_2804F95F0, &qword_26D3142B8);
  sub_26D2E9284(v125, &qword_2804F95B0, &qword_26D314278);
  sub_26D2E9284(v150, &qword_2804F95B8, &qword_26D314280);
  sub_26D2E9284(v149, &qword_2804F95C8, &qword_26D314290);
  sub_26D2E9284(v126, &qword_2804F95B0, &qword_26D314278);
  sub_26D2E9284(v124, &qword_2804F95B8, &qword_26D314280);
  sub_26D2E9284(v123, &qword_2804F95C8, &qword_26D314290);
  v154[0] = v147;
  v154[1] = 0;
  v155 = v145;
  memcpy(v156, v175, 0x10FuLL);
  v156[271] = v146;
  *v157 = *v173;
  *&v157[3] = *&v173[3];
  v158 = v127;
  v159 = v53;
  v160 = v55;
  v161 = v57;
  v162 = 0;
  return sub_26D2E9284(v154, &qword_2804F95F0, &qword_26D3142B8);
}

uint64_t sub_26D2EB9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9248, &qword_26D313C60);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D8, &qword_26D313DA8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E0, &qword_26D313DB0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9418, "Bg");
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v37 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9238, &qword_26D3142C0);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v37 - v29;
  sub_26D2E67D0();
  v31 = *(a1 + *(type metadata accessor for FeedbackView(0) + 20) + 8);
  swift_beginAccess();
  if (*(v31 + 24) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248, &qword_26D313C60, MEMORY[0x277CE4448]);
    sub_26D30FAF8();
  }

  else
  {
    sub_26D2E6F04();
    v33 = v37;
    v32 = v38;
    (*(v37 + 16))(v10, v6, v38);
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248, &qword_26D313C60, MEMORY[0x277CE4448]);
    sub_26D30FAF8();
    (*(v33 + 8))(v6, v32);
  }

  sub_26D2F2534(v14, v22, &qword_2804F92E0, &qword_26D313DB0);
  sub_26D2E9114(v30, v27, &qword_2804F9238, &qword_26D3142C0);
  sub_26D2E9114(v22, v19, &qword_2804F9418, "Bg");
  v34 = v39;
  sub_26D2E9114(v27, v39, &qword_2804F9238, &qword_26D3142C0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95F8, &qword_26D3142C8);
  sub_26D2E9114(v19, v34 + *(v35 + 48), &qword_2804F9418, "Bg");
  sub_26D2E9284(v22, &qword_2804F9418, "Bg");
  sub_26D2E9284(v30, &qword_2804F9238, &qword_26D3142C0);
  sub_26D2E9284(v19, &qword_2804F9418, "Bg");
  return sub_26D2E9284(v27, &qword_2804F9238, &qword_26D3142C0);
}

uint64_t sub_26D2EBE28@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9248, &qword_26D313C60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D8, &qword_26D313DA8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E0, &qword_26D313DB0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v18 - v14;
  v16 = *(v1 + *(type metadata accessor for FeedbackView(0) + 20) + 8);
  swift_beginAccess();
  if (*(v16 + 24) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248, &qword_26D313C60, MEMORY[0x277CE4448]);
    sub_26D30FAF8();
  }

  else
  {
    sub_26D2E6F04();
    (*(v4 + 16))(v11, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248, &qword_26D313C60, MEMORY[0x277CE4448]);
    sub_26D30FAF8();
    (*(v4 + 8))(v7, v3);
  }

  return sub_26D2F2534(v15, a1, &qword_2804F92E0, &qword_26D313DB0);
}

uint64_t sub_26D2EC0EC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata, a2);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata, a2);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_26D310028();
}

uint64_t sub_26D2EC2C4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26D30FA88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92E8, &qword_26D313DB8);
  return sub_26D2ED86C(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_26D2EC318@<X0>(uint64_t a1@<X8>)
{
  v90 = sub_26D30F438();
  v3 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v4);
  v95 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_26D30F448();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v6);
  v93 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D30F468();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v91 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v89 = v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92F0, &qword_26D313DC0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v99 = v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92F8, &qword_26D313DC8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v100 = v87 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9300, &unk_26D313DD0);
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v20);
  v106 = v87 - v21;
  v22 = sub_26D30F4B8();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v97 = v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26D30F488();
  v103 = *(v25 - 8);
  v104 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v101 = v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v88 = v87 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v102 = v87 - v33;
  v34 = *(v1 + *(type metadata accessor for FeedbackView(0) + 20) + 8);
  swift_beginAccess();
  v35 = v34[6];
  v36 = v34[7];
  if ((v36 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  swift_beginAccess();
  v38 = v34[8];
  v39 = v34[9];
  if ((v39 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v96 = sub_26D2F96AC(0xD00000000000002BLL, 0x800000026D316F00);
  v42 = v41;
  if (v37)
  {
    if (v40)
    {
      v87[1] = sub_26D2F96AC(0xD00000000000002ALL, 0x800000026D316F30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_26D313CF0;
      v44 = v3;
      v45 = MEMORY[0x277D837D0];
      *(v43 + 56) = MEMORY[0x277D837D0];
      v48 = sub_26D2E92F4(v43, v46, v47);
      *(v43 + 32) = v35;
      *(v43 + 40) = v36;
      *(v43 + 96) = v45;
      *(v43 + 104) = v48;
      *(v43 + 64) = v48;
      *(v43 + 72) = v38;
      *(v43 + 80) = v39;
      *(v43 + 136) = v45;
      *(v43 + 144) = v48;
      v3 = v44;
      v49 = v96;
      *(v43 + 112) = v96;
      *(v43 + 120) = v42;

      goto LABEL_15;
    }

    sub_26D2F96AC(0xD000000000000024, 0x800000026D316FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_26D313CE0;
    v57 = MEMORY[0x277D837D0];
    *(v56 + 56) = MEMORY[0x277D837D0];
    v60 = sub_26D2E92F4(v56, v58, v59);
    *(v56 + 32) = v35;
    *(v56 + 40) = v36;
    *(v56 + 96) = v57;
    *(v56 + 104) = v60;
    v49 = v96;
    *(v56 + 64) = v60;
    *(v56 + 72) = v49;
    *(v56 + 80) = v42;
  }

  else
  {

    if (v40)
    {
      v50 = v3;
      sub_26D2F96AC(0xD000000000000020, 0x800000026D316FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_26D313CE0;
      v52 = MEMORY[0x277D837D0];
      *(v51 + 56) = MEMORY[0x277D837D0];
      v55 = sub_26D2E92F4(v51, v53, v54);
      *(v51 + 32) = v38;
      *(v51 + 40) = v39;
      *(v51 + 96) = v52;
      *(v51 + 104) = v55;
      v49 = v96;
      *(v51 + 64) = v55;
      *(v51 + 72) = v49;
      *(v51 + 80) = v42;

      v3 = v50;
      goto LABEL_15;
    }

    sub_26D2F96AC(0xD00000000000001ALL, 0x800000026D317000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_26D313B40;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = sub_26D2E92F4(v61, v62, v63);
    v49 = v96;
    *(v61 + 32) = v96;
    *(v61 + 40) = v42;
  }

LABEL_15:
  sub_26D3100D8();

  sub_26D30F4A8();
  v64 = v102;
  sub_26D30F498();
  v111 = v49;
  v112 = v42;
  v65 = sub_26D30F628();
  v66 = v99;
  (*(*(v65 - 8) + 56))(v99, 1, 1, v65);
  v67 = sub_26D2F1C80(&qword_2804F9308, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  sub_26D2E9230(v67, v68, v69);
  v70 = v100;
  v71 = v104;
  sub_26D30F4D8();
  sub_26D2E9284(v66, &qword_2804F92F0, &qword_26D313DC0);
  if ((*(v98 + 48))(v70, 1, v105) == 1)
  {

    sub_26D2E9284(v70, &qword_2804F92F8, &qword_26D313DC8);
    v72 = v103;
  }

  else
  {
    sub_26D2F2534(v70, v106, &qword_2804F9300, &unk_26D313DD0);
    v111 = 0;
    v112 = 0xE000000000000000;
    sub_26D310298();
    MEMORY[0x26D6BB9C0](91, 0xE100000000000000);
    MEMORY[0x26D6BB9C0](v49, v42);

    MEMORY[0x26D6BB9C0](0xD000000000000033, 0x800000026D316F60);
    v73 = sub_26D30F5B8();
    (*(*(v73 - 8) + 56))(v89, 1, 1, v73);
    (*(v92 + 104))(v93, *MEMORY[0x277CC8BB0], v94);
    (*(v3 + 104))(v95, *MEMORY[0x277CC8B98], v90);
    sub_26D30F458();
    v74 = v88;
    sub_26D30F478();
    sub_26D2E906C(&qword_2804F9310, &qword_2804F9300, &unk_26D313DD0, MEMORY[0x277D83D30]);
    v75 = v106;
    sub_26D30F428();
    v72 = v103;
    (*(v103 + 8))(v74, v71);
    sub_26D2E9284(v75, &qword_2804F9300, &unk_26D313DD0);
  }

  (*(v72 + 16))(v101, v64, v71);
  v76 = sub_26D30FD48();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  KeyPath = swift_getKeyPath();
  v84 = sub_26D30FB58();
  v110 = v80 & 1;
  v109 = 1;
  v85 = sub_26D30FCE8();
  (*(v72 + 8))(v64, v71);
  result = swift_getKeyPath();
  *a1 = v76;
  *(a1 + 8) = v78;
  *(a1 + 16) = v110;
  *(a1 + 17) = v111;
  *(a1 + 20) = *(&v111 + 3);
  *(a1 + 24) = v82;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v109;
  *(a1 + 49) = v107;
  *(a1 + 51) = v108;
  *(a1 + 52) = v84;
  *(a1 + 56) = result;
  *(a1 + 64) = v85;
  return result;
}

uint64_t sub_26D2ECF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);

  v7[0] = sub_26D30F8B8();
  v7[1] = v5;
  MEMORY[0x26D6BB6F0](v7, a2, &type metadata for FeedbackViewAlert, a3);
}

uint64_t sub_26D2ED03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9550, &qword_26D314220);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9450, &qword_26D314180);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v18 - v11;
  v13 = *(a1 + *(type metadata accessor for FeedbackView(0) + 20) + 8);
  swift_beginAccess();
  if (*(v13 + 24) == 2 || (v14 = *(sub_26D2F5034() + 16), , !v14))
  {
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9448, &qword_2804F9450, &qword_26D314180, MEMORY[0x277CDD6E0]);
    return sub_26D30FAF8();
  }

  else
  {
    v15 = sub_26D30FB78();
    v18[1] = v18;
    MEMORY[0x28223BE20](v15, v16);
    v18[2] = a2;
    v18[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9558, &qword_26D314228);
    sub_26D2E906C(&qword_2804F9560, &qword_2804F9558, &qword_26D314228, MEMORY[0x277CE1138]);
    sub_26D30F7C8();
    (*(v9 + 16))(v7, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_26D2E906C(&qword_2804F9448, &qword_2804F9450, &qword_26D314180, MEMORY[0x277CDD6E0]);
    sub_26D30FAF8();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_26D2ED35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  *a2 = sub_26D30FA48();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9568, &unk_26D314230);
  v8 = *(sub_26D2F5034() + 16);

  v15[0] = 0;
  v15[1] = v8;
  swift_getKeyPath();
  sub_26D2F1CD0(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_26D2F1D38(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9570, &qword_26D314258);
  v11 = sub_26D2F1E1C();
  sub_26D2F1EFC(v11, v12, v13);
  return sub_26D30FFA8();
}

uint64_t sub_26D2ED510@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedbackView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - v13;
  v15 = *a1;
  result = sub_26D2F5034();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *(result + 16))
  {
    v17 = *(result + 8 * v15 + 32);

    sub_26D2F1CD0(a2, v14);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_26D2F1D38(v14, v20 + v18);
    *(v20 + v19) = v15;
    sub_26D2F1CD0(a2, v11);
    v21 = swift_allocObject();
    result = sub_26D2F1D38(v11, v21 + v18);
    *(v21 + v19) = v15;
    *a3 = v17;
    a3[1] = sub_26D2F1F54;
    a3[2] = v20;
    a3[3] = sub_26D2F21C8;
    a3[4] = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2ED6E0(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v16 - v13;
  type metadata accessor for FeedbackView(0);
  sub_26D2F8F38(a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);
  sub_26D30FF18();
  sub_26D2E9114(v14, v7, &qword_2804F9270, &qword_26D314510);
  sub_26D30FF28();
  sub_26D2E9958(v11);
  sub_26D2E9284(v11, &qword_2804F9270, &qword_26D314510);
  return sub_26D2E9284(v14, &qword_2804F9270, &qword_26D314510);
}

uint64_t sub_26D2ED85C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_26D2ED86C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9540, &qword_26D3141E8);
  v3 = v2 - 8;
  v5 = MEMORY[0x28223BE20](v2, v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - v8;
  sub_26D30FA58();
  v10 = sub_26D30FD38();
  v12 = v11;
  v14 = v13;
  v40 = sub_26D30FB58();
  v15 = sub_26D30FD18();
  v17 = v16;
  v19 = v18;
  sub_26D2E92E4(v10, v12, v14 & 1);

  sub_26D30FC78();
  v20 = sub_26D30FD08();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_26D2E92E4(v15, v17, v19 & 1);

  sub_26D2EDB18(v9);
  LOBYTE(v15) = sub_26D30FBD8();
  sub_26D30F7B8();
  v27 = &v9[*(v3 + 44)];
  *v27 = v15;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = v38;
  sub_26D2E9114(v9, v38, &qword_2804F9540, &qword_26D3141E8);
  v33 = v39;
  *v39 = v20;
  v33[1] = v22;
  *(v33 + 16) = v24 & 1;
  v33[3] = v26;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9548, &unk_26D3141F0);
  sub_26D2E9114(v32, v34 + *(v35 + 48), &qword_2804F9540, &qword_26D3141E8);
  sub_26D2E9348(v20, v22, v24 & 1);

  sub_26D2E9284(v9, &qword_2804F9540, &qword_26D3141E8);
  sub_26D2E9284(v32, &qword_2804F9540, &qword_26D3141E8);
  sub_26D2E92E4(v20, v22, v24 & 1);
}

uint64_t sub_26D2EDB18@<X0>(uint64_t a2@<X8>)
{
  v19 = a2;
  v2 = sub_26D30FAA8();
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F91B8, &qword_26D313B70);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v16 - v10;
  v12 = sub_26D30FA58();
  v16[1] = v13;
  v16[2] = v12;
  type metadata accessor for FeedbackView(0);
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);
  sub_26D30F8C8();
  swift_getKeyPath();
  sub_26D30F8D8();

  sub_26D30FFF8();
  sub_26D30FA98();
  sub_26D2E906C(&qword_2804F91B0, &qword_2804F91B8, &qword_26D313B70, MEMORY[0x277CDF1A8]);
  sub_26D2F1C80(&qword_2804F91D0, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  v14 = v17;
  sub_26D30FDB8();
  (*(v18 + 8))(v6, v14);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26D2EDE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9288, &qword_26D313D70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-v8];
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9290, &qword_26D313D78);
  sub_26D2EABE0();
  sub_26D30F928();
  sub_26D2E906C(&qword_2804F92C0, &qword_2804F9288, &qword_26D313D70, MEMORY[0x277CDDA18]);
  View.minimumFrame()(v5, a2);
  (*(v6 + 8))(v9, v5);
  v10 = *(v2 + *(a1 + 20) + 8);
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);

  v11 = sub_26D30F8B8();
  v13 = v12;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92C8, &qword_26D313D90) + 36));
  *v14 = v11;
  v14[1] = v13;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F92D0, &unk_26D313D98) + 36)) = v10;
}

uint64_t sub_26D2EE084()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_26D2EE0B4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_26D2EE0E4@<X0>(uint64_t a1@<X8>)
{
  v48 = sub_26D30FB48();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9318, &qword_26D313E40);
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v8 = &v44 - v7;
  v9 = sub_26D30FEE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
  v14 = sub_26D30FEF8();
  (*(v10 + 8))(v13, v9);
  sub_26D2E7338();
  sub_26D30FFD8();
  sub_26D30F878();
  v52 = 1;
  *&v51[6] = v53;
  *&v51[22] = v54;
  *&v51[38] = v55;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9320, &qword_26D313E48) + 36));
  v16 = *(sub_26D30F958() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_26D30FA68();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9328, &qword_26D313E50) + 36)] = 256;
  v24 = *&v51[16];
  *(a1 + 18) = *v51;
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v24;
  *(a1 + 50) = *&v51[32];
  *(a1 + 64) = *&v51[46];
  v45 = sub_26D30FFC8();
  v44 = v25;
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9330, &qword_26D313E58) + 36);
  v27 = swift_allocObject();
  v28 = *(v1 + 16);
  *(v27 + 16) = *v1;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v1 + 32);
  v50 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9338, &qword_26D313E60);
  sub_26D2F0058();
  sub_26D30FF58();
  sub_26D30FB38();
  sub_26D2E906C(&qword_2804F9358, &qword_2804F9318, &qword_26D313E40, MEMORY[0x277CDF028]);
  sub_26D2F1C80(&qword_2804F9360, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v29 = v46;
  v30 = v48;
  sub_26D30FD88();
  (*(v49 + 8))(v5, v30);
  (*(v47 + 8))(v8, v29);
  *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9368, &qword_26D313E70) + 36)) = xmmword_26D313D00;
  v31 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9370, &qword_26D313E78) + 36));
  v32 = v44;
  *v31 = v45;
  v31[1] = v32;
  v33 = sub_26D30FBC8();
  sub_26D30F7B8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9378, &qword_26D313E80);
  v43 = a1 + *(result + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_26D2EE6F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9380, &qword_26D313E88);
  v4 = *(a1 + 16);
  sub_26D30F918();
  swift_getTupleTypeMetadata2();
  sub_26D310018();
  swift_getWitnessTable();
  v5 = sub_26D30FF88();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v25 - v7;
  v9 = sub_26D30F918();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v26 = &v25 - v16;
  sub_26D30FFE8();
  v17 = *(a1 + 24);
  v29 = v4;
  v30 = v17;
  v31 = v2;
  sub_26D30FF78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9388, &qword_26D313E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D313CE0;
  LOBYTE(v4) = sub_26D30FBE8();
  *(inited + 32) = v4;
  v19 = sub_26D30FC08();
  *(inited + 33) = v19;
  sub_26D30FBF8();
  sub_26D30FBF8();
  if (sub_26D30FBF8() != v4)
  {
    sub_26D30FBF8();
  }

  sub_26D30FBF8();
  if (sub_26D30FBF8() != v19)
  {
    sub_26D30FBF8();
  }

  WitnessTable = swift_getWitnessTable();
  sub_26D30FE08();
  (*(v27 + 8))(v8, v5);
  v32 = WitnessTable;
  v33 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v21 = *(v10 + 16);
  v22 = v26;
  v21(v26, v14, v9);
  v23 = *(v10 + 8);
  v23(v14, v9);
  v21(v28, v22, v9);
  return (v23)(v22, v9);
}

uint64_t sub_26D2EEAA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v39 = a3;
  v36 = a1;
  v5 = sub_26D30F918();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v38 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9380, &qword_26D313E88);
  v37 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v34 - v19;
  type metadata accessor for CornerRadiusView(0, a1, a2, v21);
  v22 = sub_26D2E7624();
  v23 = sub_26D2E761C();
  v24 = &v20[*(v13 + 36)];
  v25 = *(sub_26D30F958() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_26D30FA68();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = v23;
  v24[1] = v23;
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9328, &qword_26D313E50) + 36)) = 256;
  *v20 = v22;
  *(v20 + 4) = 256;
  sub_26D30FBB8();
  v28 = v35;
  sub_26D30FE08();
  v43[2] = v28;
  v43[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v30 = *(v6 + 16);
  v31 = v38;
  v30(v38, v10, v5);
  v32 = *(v6 + 8);
  v32(v10, v5);
  sub_26D2E9114(v20, v17, &qword_2804F9380, &qword_26D313E88);
  v43[0] = v17;
  v30(v10, v31, v5);
  v43[1] = v10;
  v42[0] = v37;
  v42[1] = v5;
  v40 = sub_26D2F1B9C();
  v41 = WitnessTable;
  sub_26D2EC0EC(v43, 2uLL, v42);
  v32(v31, v5);
  sub_26D2E9284(v20, &qword_2804F9380, &qword_26D313E88);
  v32(v10, v5);
  return sub_26D2E9284(v17, &qword_2804F9380, &qword_26D313E88);
}

uint64_t sub_26D2EEE20(uint64_t *a1)
{
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);

  return sub_26D30F8B8();
}

uint64_t sub_26D2EEEC0(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_26D2EEF0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);

  return sub_26D30F8C8();
}

uint64_t sub_26D2EEF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26D2F38F8();
  sub_26D2E9230(v5, v6, v7);
  v8 = sub_26D30FD58();
  v18 = v9;
  v19 = v8;
  v17 = v10;
  sub_26D310158();

  v11 = sub_26D310148();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = a3;

  v14 = sub_26D310148();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = a2;
  v15[5] = a3;
  sub_26D30FF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9390, &qword_26D313E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9398, &qword_26D313EA0);
  sub_26D2E906C(&qword_2804F93A0, &qword_2804F9390, &qword_26D313E98, MEMORY[0x277CE04B0]);
  sub_26D2E906C(&qword_2804F93A8, &qword_2804F9398, &qword_26D313EA0, MEMORY[0x277CDF028]);
  sub_26D30FDD8();
  sub_26D2E92E4(v19, v18, v17 & 1);
}

uint64_t sub_26D2EF1FC(uint64_t a1)
{
  type metadata accessor for FeedbackViewModel(0);
  sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);

  return sub_26D30F8B8();
}

uint64_t sub_26D2EF284(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B0, &qword_26D313EA8);
  sub_26D30F708();
  *(swift_allocObject() + 16) = xmmword_26D313D10;
  sub_26D30F6C8();
  sub_26D30F6E8();
  sub_26D30F6D8();
  sub_26D30F6F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B8, qword_26D313EB0);
  sub_26D2E906C(&qword_2804F93C0, &qword_2804F93B8, qword_26D313EB0, MEMORY[0x277CE04B0]);
  sub_26D30FDE8();
}

void sub_26D2EF420(unint64_t a1, uint64_t a2)
{
  v19 = sub_26D30F708();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = sub_26D3102C8();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = (v4 + 8);
    v17[1] = v21;
    v18 = a1 & 0xC000000000000001;
    v11 = a1;
    do
    {
      if (v18)
      {
        v12 = MEMORY[0x26D6BBB80](v9, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v9 + 32);
      }

      v13 = v12;
      ++v9;
      sub_26D30F6C8();
      sub_26D30F6B8();
      (*v10)(v7, v19);
      v14 = sub_26D3100B8();

      v21[2] = sub_26D2F1ACC;
      v21[3] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v21[0] = sub_26D2EFA34;
      v21[1] = &block_descriptor;
      v15 = _Block_copy(aBlock);

      v16 = [v13 loadFileRepresentationForTypeIdentifier:v14 completionHandler:v15];
      _Block_release(v15);

      a1 = v11;
    }

    while (v8 != v9);
  }
}

void sub_26D2EF670(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = sub_26D30F5B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2E9114(a1, v7, &qword_2804F9270, &qword_26D314510);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26D2E9284(v7, &qword_2804F9270, &qword_26D314510);
    v13 = sub_26D310188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
    v14 = swift_allocObject();
    v17 = v14;
    *(v14 + 16) = xmmword_26D313B40;
    if (a2)
    {
      swift_getErrorValue();
      v14 = sub_26D310308();
      a2 = v14;
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v17[7] = MEMORY[0x277D837D0];
    v17[8] = sub_26D2E92F4(v14, v15, v16);
    v28 = 0x800000026D317040;
    v29 = 0xD000000000000016;
    if (v18)
    {
      v29 = a2;
      v28 = v18;
    }

    v17[4] = v29;
    v17[5] = v28;
    sub_26D2F1AEC();
    v30 = sub_26D310208();
    sub_26D30F718(v13, &dword_26D2C7000, v30, "ImageDropHandler could not load an image representation: %{public}@", 67, 2, v17);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_26D30F568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9518, &qword_26D3141D0);
    v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v20 = swift_allocObject();
    v31 = xmmword_26D313B40;
    *(v20 + 16) = xmmword_26D313B40;
    (*(v9 + 16))(v20 + v19, v12, v8);
    sub_26D2F7D98(v20);

    v21 = sub_26D310178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    v23 = sub_26D30F5A8();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_26D2E92F4(v23, v24, v26);
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_26D2F1AEC();
    v27 = sub_26D310208();
    sub_26D30F718(v21, &dword_26D2C7000, v27, "ImageDropHandler loaded an image representation from %{public}@", 63, 2, v22);

    sub_26D30F548();
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_26D2EFA34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_26D30F558();
    v11 = sub_26D30F5B8();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_26D30F5B8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_26D2E9284(v9, &qword_2804F9270, &qword_26D314510);
}

uint64_t sub_26D2EFBAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B0, &qword_26D313EA8);
  sub_26D30F708();
  *(swift_allocObject() + 16) = xmmword_26D313D10;
  sub_26D30F6C8();
  sub_26D30F6E8();
  sub_26D30F6D8();
  sub_26D30F6F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93B8, qword_26D313EB0);
  sub_26D2E906C(&qword_2804F93C0, &qword_2804F93B8, qword_26D313EB0, MEMORY[0x277CE04B0]);
  sub_26D30FDE8();
}

uint64_t sub_26D2EFD4C@<X0>(uint64_t a1@<X8>)
{
  result = sub_26D30FA08();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26D2EFDB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D30F9E8();
  *a1 = result;
  return result;
}

uint64_t sub_26D2EFE08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_26D2EFE78@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26D30FFD8();
  v14 = v3;
  v15 = v2;
  v13 = sub_26D30FE78();
  sub_26D2E7320();
  sub_26D2E7320();
  sub_26D30FFD8();
  sub_26D30F878();
  v4 = sub_26D30FED8();
  v5 = sub_26D30FE78();
  v6 = sub_26D30FE58();
  v7 = sub_26D2E731C();
  *&v16 = v13;
  *(&v16 + 1) = v34;
  LOBYTE(v17) = BYTE8(v34);
  *(&v17 + 1) = v35;
  v18[0] = BYTE8(v35);
  *&v18[8] = v36;
  *&v18[24] = v4;
  *&v19 = v5;
  *(&v19 + 1) = v6;
  *&v20 = swift_getKeyPath();
  *(&v20 + 1) = v7;
  v21[0] = v13;
  v21[1] = v34;
  v22 = BYTE8(v34);
  v23 = v35;
  v24 = BYTE8(v35);
  v25 = v36;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v20;
  v30 = v7;
  sub_26D2E9114(&v16, &v34, &qword_2804F9538, &qword_26D3141E0);
  sub_26D2E9284(v21, &qword_2804F9538, &qword_26D3141E0);
  v36 = *v18;
  v37 = *&v18[16];
  v38 = v19;
  v39 = v20;
  v34 = v16;
  v35 = v17;
  sub_26D30FFD8();
  sub_26D30F878();
  *a1 = v15;
  *(a1 + 8) = v14;
  v8 = v37;
  *(a1 + 48) = v36;
  *(a1 + 64) = v8;
  v9 = v39;
  *(a1 + 80) = v38;
  *(a1 + 96) = v9;
  v10 = v35;
  *(a1 + 16) = v34;
  *(a1 + 32) = v10;
  v11 = v32;
  *(a1 + 112) = v31;
  *(a1 + 128) = v11;
  result = *&v33;
  *(a1 + 144) = v33;
  return result;
}

unint64_t sub_26D2F0058()
{
  result = qword_2804F9340;
  if (!qword_2804F9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9338, &qword_26D313E60);
    sub_26D2E906C(&qword_2804F9348, &qword_2804F9350, &qword_26D313E68, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9340);
  }

  return result;
}

uint64_t sub_26D2F0120@<X0>(BOOL *a1@<X8>)
{
  result = sub_26D2F38F8();
  v4 = v3;
  if (v3)
  {
  }

  *a1 = v4 != 0;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D2F01D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_26D2F96AC(0x4D495F5452454C41, 0xEE004B4F5F454741);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_26D2E9230(v3, v4, v5);

  return sub_26D30FF68();
}

uint64_t sub_26D2F0370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8, &qword_26D314700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26D2F04C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8, &qword_26D314700);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26D2F0604(uint64_t a1)
{
  sub_26D2F06C0(319);
  if (v1 <= 0x3F)
  {
    sub_26D2F0718(319);
    if (v2 <= 0x3F)
    {
      sub_26D2F07AC(319);
      if (v3 <= 0x3F)
      {
        sub_26D2F0810();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26D2F06C0(uint64_t a1)
{
  if (!qword_2804F93D0)
  {
    sub_26D30F808();
    v1 = sub_26D30F818();
    if (!v2)
    {
      atomic_store(v1, &qword_2804F93D0);
    }
  }
}

void sub_26D2F0718(uint64_t a1)
{
  if (!qword_2804F93D8)
  {
    type metadata accessor for FeedbackViewModel(255);
    sub_26D2F1C80(&qword_2804F91E0, type metadata accessor for FeedbackViewModel, &unk_26D314540);
    v1 = sub_26D30F8E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2804F93D8);
    }
  }
}

void sub_26D2F07AC(uint64_t a1)
{
  if (!qword_2804F93E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9270, &qword_26D314510);
    v1 = sub_26D30FF48();
    if (!v2)
    {
      atomic_store(v1, &qword_2804F93E0);
    }
  }
}

void sub_26D2F0810()
{
  if (!qword_2804F93E8)
  {
    v0 = sub_26D30FF48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804F93E8);
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

uint64_t sub_26D2F0874(uint64_t *a1, int a2)
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

uint64_t sub_26D2F08BC(uint64_t result, int a2, int a3)
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

uint64_t sub_26D2F091C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D2F098C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_26D2F0ACC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D2F0CF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26D2F0D40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26D2F0DA0()
{
  result = qword_2804F93F0;
  if (!qword_2804F93F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F92D0, &unk_26D313D98);
    v3 = sub_26D2F0E2C();
    sub_26D2F0F38(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F93F0);
  }

  return result;
}

unint64_t sub_26D2F0E2C()
{
  result = qword_2804F93F8;
  if (!qword_2804F93F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F92C8, &qword_26D313D90);
    v3 = sub_26D2E906C(&qword_2804F92C0, &qword_2804F9288, &qword_26D313D70, MEMORY[0x277CDDA18]);
    sub_26D2F0EE4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F93F8);
  }

  return result;
}

unint64_t sub_26D2F0EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9400;
  if (!qword_2804F9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9400);
  }

  return result;
}

unint64_t sub_26D2F0F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9408;
  if (!qword_2804F9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9408);
  }

  return result;
}

unint64_t sub_26D2F0FD0()
{
  result = qword_2804F9420;
  if (!qword_2804F9420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F92E0, &qword_26D313DB0);
    sub_26D2E906C(&qword_2804F9240, &qword_2804F9248, &qword_26D313C60, MEMORY[0x277CE4448]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9420);
  }

  return result;
}

uint64_t sub_26D2F10CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26D2F1148()
{
  result = qword_2804F9438;
  if (!qword_2804F9438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9440, &qword_26D314178);
    sub_26D2E906C(&qword_2804F9448, &qword_2804F9450, &qword_26D314180, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9438);
  }

  return result;
}

unint64_t sub_26D2F1248()
{
  result = qword_2804F9468;
  if (!qword_2804F9468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9470, &qword_26D314190);
    sub_26D2F1300();
    sub_26D2E906C(&qword_2804F94B8, &qword_2804F94C0, &qword_26D3141B8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9468);
  }

  return result;
}

unint64_t sub_26D2F1300()
{
  result = qword_2804F9478;
  if (!qword_2804F9478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9480, &qword_26D314198);
    sub_26D2F13B8();
    sub_26D2E906C(&qword_2804F94A8, &qword_2804F94B0, &qword_26D3141B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9478);
  }

  return result;
}

unint64_t sub_26D2F13B8()
{
  result = qword_2804F9488;
  if (!qword_2804F9488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9490, &qword_26D3141A0);
    sub_26D2E906C(&qword_2804F9498, &qword_2804F94A0, &qword_26D3141A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9488);
  }

  return result;
}

unint64_t sub_26D2F1474()
{
  result = qword_2804F94C8;
  if (!qword_2804F94C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9378, &qword_26D313E80);
    sub_26D2F1500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94C8);
  }

  return result;
}

unint64_t sub_26D2F1500()
{
  result = qword_2804F94D0;
  if (!qword_2804F94D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9330, &qword_26D313E58);
    sub_26D2F15B8();
    sub_26D2E906C(&qword_2804F9508, &qword_2804F9370, &qword_26D313E78, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94D0);
  }

  return result;
}

unint64_t sub_26D2F15B8()
{
  result = qword_2804F94D8;
  if (!qword_2804F94D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9320, &qword_26D313E48);
    sub_26D2F1670();
    sub_26D2E906C(&qword_2804F9500, &qword_2804F9328, &qword_26D313E50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94D8);
  }

  return result;
}

unint64_t sub_26D2F1670()
{
  result = qword_2804F94E0;
  if (!qword_2804F94E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F94E8, &unk_26D3141C0);
    sub_26D2F16FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94E0);
  }

  return result;
}

unint64_t sub_26D2F16FC()
{
  result = qword_2804F94F0;
  if (!qword_2804F94F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F94F8, &qword_26D3149B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F94F0);
  }

  return result;
}

uint64_t sub_26D2F1780(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9380, &qword_26D313E88);
  sub_26D30F918();
  swift_getTupleTypeMetadata2();
  sub_26D310018();
  swift_getWitnessTable();
  sub_26D30FF88();
  sub_26D30F918();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26D2F1894()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9390, &qword_26D313E98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9398, &qword_26D313EA0);
  sub_26D2E906C(&qword_2804F93A0, &qword_2804F9390, &qword_26D313E98, MEMORY[0x277CE04B0]);
  sub_26D2E906C(&qword_2804F93A8, &qword_2804F9398, &qword_26D313EA0, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26D2F1984()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F93B8, qword_26D313EB0);
  sub_26D2E906C(&qword_2804F93C0, &qword_2804F93B8, qword_26D313EB0, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx14TestFlightCore08FeedbackC5AlertVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_26D30F918();
  a3();
  return swift_getWitnessTable();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26D2F1AEC()
{
  result = qword_2804F9510;
  if (!qword_2804F9510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804F9510);
  }

  return result;
}

uint64_t sub_26D2F1B38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26D2F1B9C()
{
  result = qword_2804F9520;
  if (!qword_2804F9520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9380, &qword_26D313E88);
    sub_26D2E906C(&qword_2804F9528, &qword_2804F9530, &qword_26D3141D8, MEMORY[0x277CDF3A0]);
    sub_26D2E906C(&qword_2804F9500, &qword_2804F9328, &qword_26D313E50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9520);
  }

  return result;
}

uint64_t sub_26D2F1C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D2F1CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D2F1D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D2F1D9C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for FeedbackView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26D2ED510(a1, v6, a2);
}

unint64_t sub_26D2F1E1C()
{
  result = qword_2804F9578;
  if (!qword_2804F9578)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9570, &qword_26D314258);
    sub_26D2F1EA8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9578);
  }

  return result;
}

unint64_t sub_26D2F1EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9580;
  if (!qword_2804F9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9580);
  }

  return result;
}

unint64_t sub_26D2F1EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9588;
  if (!qword_2804F9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9588);
  }

  return result;
}

uint64_t sub_26D2F1F54()
{
  v1 = *(type metadata accessor for FeedbackView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26D2ED6E0(v0 + v2, v3);
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for FeedbackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26D30F808();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 24);
  v7 = sub_26D30F5B8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26D2F2260@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_26D30FA78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F95A0, &qword_26D314268);
  return sub_26D2EACC4(v3, (a1 + *(v4 + 44)));
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for FeedbackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26D30F808();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 24);
  v7 = sub_26D30F5B8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9278, &qword_26D313D60);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26D2F2534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26D2F25D0()
{
  result = sub_26D3100B8();
  qword_2804FAAB0 = result;
  return result;
}

uint64_t *sub_26D2F2608()
{
  if (qword_2804FA0B0 != -1)
  {
    swift_once();
  }

  return &qword_2804FAAB0;
}

uint64_t sub_26D2F2658()
{
  result = sub_26D3100B8();
  qword_2804FAAB8 = result;
  return result;
}

uint64_t *sub_26D2F2690()
{
  if (qword_2804FA0B8 != -1)
  {
    swift_once();
  }

  return &qword_2804FAAB8;
}

uint64_t sub_26D2F2718(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_26D2F27E4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_26D2F2880()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_26D2F28CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_26D2F2970()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_26D2F29BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_26D2F2A64()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_26D2F2AB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_26D2F2B84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v1;
}

uint64_t sub_26D2F2BF8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a2 = v4;
  return result;
}

uint64_t sub_26D2F2C78(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F2CEC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t (*sub_26D2F2D5C(uint64_t *a1))()
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
  *(v3 + 48) = sub_26D30F768();
  return sub_26D2FDFFC;
}

uint64_t sub_26D2F2E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9608, &qword_26D314330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600, &qword_26D314328);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F2F5C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9608, &qword_26D314330);
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

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__isSubmitButtonDisabled[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600, &qword_26D314328);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

void sub_26D2F30FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v0 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v1 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v1 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D30F778();

    v3 = *(v5 + 16);

    v2 = v3 == 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v5) = v2;

  sub_26D30F788();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  if (v0 != v2)
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_2804FA0B0 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_2804FAAB0 object:0 userInfo:{0, v5}];
  }
}

uint64_t sub_26D2F334C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v1;
}

void sub_26D2F33C0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D30F788();
  sub_26D2F30FC();
}

void (*sub_26D2F3440(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_26D2F3504;
}

void sub_26D2F3504(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v3[3] = v5;

  if (a2)
  {

    sub_26D30F788();
    sub_26D2F30FC();
  }

  else
  {
    sub_26D30F788();
    sub_26D2F30FC();
  }

  free(v3);
}

uint64_t sub_26D2F35FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9618, &qword_26D3143D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610, &qword_26D3143C8);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F3734(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9618, &qword_26D3143D0);
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

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__testerFeedbackText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610, &qword_26D3143C8);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2F38A4;
}

uint64_t sub_26D2F38F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v1;
}

double sub_26D2F396C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26D2F39EC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F3A70(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t (*sub_26D2F3AEC(uint64_t *a1))()
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
  *(v3 + 48) = sub_26D30F768();
  return sub_26D2F3B90;
}

uint64_t sub_26D2F3BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9630, &qword_26D314430);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628, &qword_26D314428);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F3CF4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9630, &qword_26D314430);
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

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__alertMessage[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628, &qword_26D314428);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

uint64_t sub_26D2F3E78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v0 = *(v4[0] + 16);

  if (v0)
  {
    v2 = sub_26D2F3F88();
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = sub_26D30F768();
    sub_26D2F4600(v2);
    v3(v4, 0);
  }

  return result;
}

void *sub_26D2F3F88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680);
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v67 = &v43 - v3;
  v4 = sub_26D30F618();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v59 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v68 = &v43 - v10;
  v58 = sub_26D30F3A8();
  v11 = *(v58 - 8);
  v13 = MEMORY[0x28223BE20](v58, v12);
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v55 = &v43 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v0;
  sub_26D30F778();

  v17 = *(v69 + 16);
  if (v17)
  {
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v52 = v19;
    v20 = *(v18 + 64);
    v50 = ~v20;
    v43 = v69;
    v21 = (v69 + ((v20 + 32) & ~v20));
    v49 = *(v18 + 56);
    v66 = v5 + 16;
    v51 = v20;
    v48 = v6 + v20;
    v47 = v5 + 32;
    v46 = (v18 + 16);
    v45 = (v18 - 8);
    v44 = (v5 + 8);
    v22 = MEMORY[0x277D84F90];
    v53 = v18;
    v54 = v5;
    do
    {
      v64 = v22;
      v65 = v17;
      v23 = v55;
      v24 = v58;
      v25 = v52;
      v52(v55, v21, v58);
      sub_26D30F608();
      v63 = *(v5 + 16);
      v26 = v59;
      v63(v59, v68, v4);
      v27 = v56;
      v25(v56, v23, v24);
      v28 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v29 = (v48 + v28) & v50;
      v30 = swift_allocObject();
      *(v30 + 16) = v62;
      v31 = v26;
      v32 = v68;
      (*(v5 + 32))(v30 + v28, v31, v4);
      v33 = (*v46)(v30 + v29, v27, v24);
      sub_26D2FD43C(v33, v34, v35);
      v36 = v67;

      v37 = sub_26D30F378();

      v38 = v23;
      v22 = v64;
      (*v45)(v38, v24);
      v39 = *(v61 + 48);
      v63(v36, v32, v4);
      *(v36 + v39) = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_26D2FA4F0(0, v22[2] + 1, 1, v22);
      }

      v41 = v22[2];
      v40 = v22[3];
      v5 = v54;
      if (v41 >= v40 >> 1)
      {
        v22 = sub_26D2FA4F0((v40 > 1), v41 + 1, 1, v22);
      }

      (*v44)(v32, v4);
      v22[2] = v41 + 1;
      sub_26D2FD490(v67, v22 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v41);
      v21 += v49;
      v17 = v65 - 1;
    }

    while (v65 != 1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t (*sub_26D2F44F4(uint64_t *a1))()
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
  *(v3 + 48) = sub_26D30F768();
  return sub_26D2FDFFC;
}

void sub_26D2F4598(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26D2F4600(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_26D2FA4F0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t (*sub_26D2F4760(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a1 = a1[1];
  return sub_26D2F47F4;
}

uint64_t sub_26D2F4844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9648, &qword_26D3144D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640, &qword_26D3144D0);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F497C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9648, &qword_26D3144D8);
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

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__selectedPhotos[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640, &qword_26D3144D0);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

uint64_t sub_26D2F4B28(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F4BA4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D30F788();
}

uint64_t sub_26D2F4C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9660, &qword_26D3144F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658, &qword_26D3144E8);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F4D68(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9660, &qword_26D3144F0);
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

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadingPhotos[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658, &qword_26D3144E8);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

uint64_t sub_26D2F4F20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_26D2F5048(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  return v3;
}

uint64_t sub_26D2F50C8@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a4 = v6;
  return result;
}

uint64_t sub_26D2F516C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_26D30F788();
  return a7(v8);
}

uint64_t sub_26D2F5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_26D30F788();
  return a4(v5);
}

uint64_t (*sub_26D2F52A4(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  *a1 = a1[1];
  return sub_26D2F5338;
}

uint64_t sub_26D2F5360(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v8;

  if (a2)
  {

    v9 = sub_26D30F788();
    a5(v9);
  }

  else
  {
    v11 = sub_26D30F788();
    return a5(v11);
  }
}

uint64_t sub_26D2F5468(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_26D30F748();
  return swift_endAccess();
}

uint64_t sub_26D2F54E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9678, &qword_26D314508);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670, &qword_26D314500);
  sub_26D30F758();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26D2F5618(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9678, &qword_26D314508);
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

  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadedPhotos[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670, &qword_26D314500);
  sub_26D30F748();
  swift_endAccess();
  return sub_26D2FDFF8;
}

void sub_26D2F5788(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_26D30F758();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_26D30F758();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_26D2F58F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  swift_beginAccess();
  return sub_26D2E9114(v1 + v3, a1, &qword_2804F9270, &qword_26D314510);
}

uint64_t sub_26D2F5958(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  swift_beginAccess();
  sub_26D2FDF70(a1, v1 + v3, &qword_2804F9270, &qword_26D314510);
  return swift_endAccess();
}

uint64_t sub_26D2F5A28()
{
  v10 = sub_26D3101C8();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D3101B8();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_26D310068();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9[1] = sub_26D2FC7CC(0, &qword_2804F9680, 0x277D85C78);
  sub_26D310058();
  v11 = MEMORY[0x277D84F90];
  sub_26D2FCA50(&qword_2804F9688, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9690, &unk_26D314518);
  sub_26D2FCA98(&qword_2804F9698, &qword_2804F9690, &unk_26D314518);
  sub_26D310258();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_26D3101F8();
}

id sub_26D2F5C80()
{
  v1 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_26D2F5CD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26D2F5D8C(void *a1)
{
  swift_allocObject();
  v2 = sub_26D2FB370(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_26D2F5DD8(void *a1)
{
  v1 = sub_26D2FB370(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_26D2F5E0C()
{
  sub_26D30F578();
  v0 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v1 = sub_26D3100B8();

  v2 = [v0 initWithContentsOfFile_];

  if (v2)
  {
    return sub_26D30FEC8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D2F5E98(uint64_t a1, uint64_t a2)
{
  v3 = sub_26D30F408();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_26D30F3E8();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

void sub_26D2F5F8C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9)
  {
    v10 = *(v9 + 16);
  }

  else
  {
    v10 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v11 = *(v24 + 16);

  if (a1 < 0 || (v10 == v11 ? (v12 = v11 <= a1) : (v12 = 1), !v12 ? (v13 = v10 <= a1) : (v13 = 1), v13))
  {
    v16 = sub_26D3101A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D83B88];
    *(v17 + 16) = xmmword_26D313B40;
    v19 = MEMORY[0x277D83C10];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = a1;
    sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);
    v20 = sub_26D310208();
    sub_26D30F718(v16, &dword_26D2C7000, v20, "Asked to remove image at index %i, but we are missing either an image at that index, or a URL backing that image", v22);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D30F778();

    sub_26D2F6280(a1);

    v14 = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v14;

    sub_26D30F788();
    sub_26D2F30FC();
    if (*(v2 + v8))
    {
      sub_26D2F6308(a1, v7);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v21 = sub_26D30F5B8();
    (*(*(v21 - 8) + 56))(v7, v15, 1, v21);
    sub_26D2E9284(v7, &qword_2804F9270, &qword_26D314510);
  }
}

uint64_t sub_26D2F6280(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26D2FB2FC(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26D2F6308@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26D2FB2B0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_26D30F5B8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

BOOL sub_26D2F6410()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v0 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v0 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v2 = *(v3 + 16);

  return v2 != 0;
}

uint64_t sub_26D2F6500()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_26D30F778();

    v3 = sub_26D3100B8();

    swift_beginAccess();

    v4 = sub_26D3100B8();

    swift_beginAccess();
    sub_26D30F5B8();

    v5 = sub_26D310108();

    [v2 feedbackWillSendFeedbackSubmissionWithFeedbackText:v3 emailAddress:v4 screenshotURLs:v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26D2F6678()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return [result feedbackWillCancelSubmission];
  }

  return result;
}

uint64_t sub_26D2F66BC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v42 = sub_26D310038();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D310068();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26D30F3A8();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v46, v13);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D30F618();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v18 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v35 = *a1;
  v34 = v19;
  v36 = *(a1 + 16);
  v20 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  v33 = a2;
  swift_beginAccess();
  v37 = *(a2 + v20);
  (*(v15 + 16))(v18, v39, v14);
  (*(v11 + 16))(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v46);
  v21 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 16) = v35;
  *(v24 + 24) = v19;
  LOBYTE(v19) = v36;
  *(v24 + 32) = v36;
  (*(v15 + 32))(v24 + v21, v18, v14);
  *(v24 + v22) = v33;
  (*(v11 + 32))(v24 + v23, v32, v46);
  aBlock[4] = sub_26D2FD688;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D2FDFE4;
  aBlock[3] = &block_descriptor_39;
  v26 = _Block_copy(aBlock);
  v27 = v37;
  sub_26D2FD76C(v25, v34, v19);

  v28 = v40;
  sub_26D310048();
  v47 = MEMORY[0x277D84F90];
  sub_26D2FCA50(&qword_2804F96B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96C0, &qword_26D314530);
  sub_26D2FCA98(&qword_2804F96C8, &qword_2804F96C0, &qword_26D314530);
  v30 = v41;
  v29 = v42;
  sub_26D310258();
  MEMORY[0x26D6BBAC0](0, v28, v30, v26);
  _Block_release(v26);

  (*(v45 + 8))(v30, v29);
  (*(v43 + 8))(v28, v44);
}

uint64_t sub_26D2F6BB4(uint64_t a1, unint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a6;
  v71 = a5;
  v80 = a1;
  v81 = a4;
  v8 = sub_26D310038();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26D310068();
  v73 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_26D30F3A8();
  v69 = *(v78 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v78, v17);
  v77 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26D30F618();
  v68 = *(v76 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x28223BE20](v76, v19);
  v75 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26D30F5B8();
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  result = MEMORY[0x28223BE20](v23, v24);
  v29 = &v62 - v28;
  if ((a3 & 1) == 0 && a2 >> 60 != 15)
  {
    v67 = v27;
    v63 = v12;
    v64 = v13;
    v65 = v9;
    v66 = v8;
    v74 = v26;
    v79 = result;
    v30 = NSTemporaryDirectory();
    v31 = sub_26D3100C8();
    v33 = v32;

    aBlock = v31;
    v83 = v33;

    MEMORY[0x26D6BB9C0](47, 0xE100000000000000);

    v34 = aBlock;
    v35 = v83;
    v36 = sub_26D30F5E8();
    v38 = v37;
    aBlock = v34;
    v83 = v35;

    MEMORY[0x26D6BB9C0](v36, v38);

    sub_26D30F508();

    sub_26D30F5D8();
    sub_26D30F578();
    v39 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v40 = sub_26D3100B8();

    v41 = [v39 initWithContentsOfFile_];

    if (v41 && (v42 = sub_26D30FEC8()) != 0)
    {
      sub_26D2FC7CC(0, &qword_2804F9680, 0x277D85C78);

      v80 = sub_26D3101D8();
      v43 = v74;
      (*(v74 + 16))(v67, v29, v79);
      v44 = v68;
      (*(v68 + 16))(v75, v81, v76);
      v45 = v69;
      (*(v69 + 16))(v77, v70, v78);
      v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
      v81 = (v21 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = (*(v44 + 80) + v81 + 8) & ~*(v44 + 80);
      v48 = (v18 + *(v45 + 80) + v47) & ~*(v45 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v71;
      (*(v43 + 32))(v49 + v46, v67, v79);
      *(v49 + v81) = v42;
      (*(v44 + 32))(v49 + v47, v75, v76);
      (*(v45 + 32))(v49 + v48, v77, v78);
      v86 = sub_26D2FD9D8;
      v87 = v49;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v84 = sub_26D2FDFE4;
      v85 = &block_descriptor_45;
      v50 = _Block_copy(&aBlock);

      v51 = v72;
      sub_26D310048();
      aBlock = MEMORY[0x277D84F90];
      sub_26D2FCA50(&qword_2804F96B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96C0, &qword_26D314530);
      sub_26D2FCA98(&qword_2804F96C8, &qword_2804F96C0, &qword_26D314530);
      v52 = v63;
      v53 = v66;
      sub_26D310258();
      v54 = v80;
      MEMORY[0x26D6BBAC0](0, v51, v52, v50);
      _Block_release(v50);

      (*(v65 + 8))(v52, v53);
      (*(v73 + 8))(v51, v64);
    }

    else
    {
      v55 = sub_26D3101A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_26D313B40;
      v57 = sub_26D30F5A8();
      v59 = v58;
      *(v56 + 56) = MEMORY[0x277D837D0];
      *(v56 + 64) = sub_26D2E92F4(v57, v58, v60);
      *(v56 + 32) = v57;
      *(v56 + 40) = v59;
      sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);
      v61 = sub_26D310208();
      sub_26D30F718(v55, &dword_26D2C7000, v61, "loadSelectedPhotos could not load image from URL %{public}@", 59, 2, v56);
    }

    return (*(v74 + 8))(v29, v79);
  }

  return result;
}

unint64_t sub_26D2F74A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v63 = sub_26D30F3A8();
  v62 = *(v63 - 8);
  v10 = MEMORY[0x28223BE20](v63 - 8, v9);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v60 = &v55 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v68 = &v55 - v16;
  v17 = sub_26D30F5B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  KeyPath = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  if (*(a1 + v22))
  {
    (*(v18 + 2))(KeyPath, a2, v17);
    v23 = *(a1 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = a1;
    *(a1 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_55:
      v23 = sub_26D2FA6E0(0, *(v23 + 16) + 1, 1, v23, &qword_2804F9518, &qword_26D3141D0, MEMORY[0x277CC9260]);
      *(v5 + v22) = v23;
    }

    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_26D2FA6E0((v25 > 1), v26 + 1, 1, v23, &qword_2804F9518, &qword_26D3141D0, MEMORY[0x277CC9260]);
    }

    *(v23 + 16) = v26 + 1;
    (*(v18 + 4))(v23 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 9) * v26, KeyPath, v17);
    a1 = v5;
    *(v5 + v22) = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  MEMORY[0x26D6BB9D0](v27);
  if (*(v69[0] + 16) >= *(v69[0] + 24) >> 1)
  {
    goto LABEL_50;
  }

LABEL_7:
  sub_26D310138();
  v28 = v69[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v28;

  sub_26D30F788();
  sub_26D2F30FC();
  v18 = &v55;
  MEMORY[0x28223BE20](v29, v30);
  *(&v55 - 2) = a4;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v22 = v69;
  v31 = sub_26D30F768();
  v17 = v32;
  v23 = 0;
  v33 = sub_26D2FAC74(sub_26D2FDB1C, (&v55 - 4));
  v34 = *(*v17 + 16);
  if (v34 < v33)
  {
    __break(1u);
    goto LABEL_52;
  }

  sub_26D2FDCA0(v33, v34);
  v31(v69, 0);

  v5 = &v55;
  MEMORY[0x28223BE20](v35, v36);
  v17 = (&v55 - 4);
  *(&v55 - 2) = v64;
  v22 = swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  v37 = v69[0];
  result = sub_26D2FAFA8(sub_26D2FDD60, (&v55 - 4), v69[0], MEMORY[0x277CE4440]);
  if (v39)
  {
    v23 = v37[2];
    v40 = v23;
    goto LABEL_14;
  }

  v23 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v66 = result;
  v56 = &v55;
  v57 = a1;
  KeyPath = v37 + 2;
  v41 = v37[2];
  if (v23 != v41)
  {
    v45 = v63;
    v65 = v62 + 16;
    v61 = (v62 + 8);
    v58 = (v62 + 40);
    while (1)
    {
      if (v23 >= v41)
      {
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
        sub_26D310128();
        goto LABEL_7;
      }

      v18 = ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v67 = v37;
      v5 = (v18 + v37);
      a4 = *(v62 + 72);
      a1 = a4 * v23;
      v46 = *(v62 + 16);
      v46(v68, v5 + a4 * v23, v45);
      v22 = sub_26D30F368();
      v48 = v47;
      v49 = sub_26D30F368();
      v17 = v50;
      if (!v48)
      {
        break;
      }

      if (!v50)
      {
        goto LABEL_33;
      }

      if (v22 == v49 && v48 == v50)
      {

LABEL_42:
        v45 = v63;
        (*v61)(v68, v63);
        v37 = v67;
        goto LABEL_25;
      }

      v22 = sub_26D3102F8();

      v45 = v63;
      (*v61)(v68, v63);
      if (v22)
      {
        v37 = v67;
        goto LABEL_25;
      }

LABEL_34:
      v51 = v66;
      if (v23 == v66)
      {
        v37 = v67;
      }

      else
      {
        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v52 = *KeyPath;
        if (v66 >= *KeyPath)
        {
          goto LABEL_47;
        }

        v17 = a4 * v66;
        v53 = v5 + a4 * v66;
        a4 = v65;
        v46(v60, v53, v45);
        if (v23 >= v52)
        {
          goto LABEL_48;
        }

        v54 = v5 + a1;
        v5 = v59;
        v46(v59, v54, v45);
        v37 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_26D2FB310(v37);
        }

        a4 = v58;
        v22 = v18 + v37;
        v18 = *v58;
        (*v58)(v22 + v17, v5, v45);
        if (v23 >= v37[2])
        {
          goto LABEL_49;
        }

        v18(v22 + a1, v60, v45);
        v51 = v66;
      }

      v66 = v51 + 1;
LABEL_25:
      ++v23;
      KeyPath = v37 + 2;
      v41 = v37[2];
      if (v23 == v41)
      {
        goto LABEL_12;
      }
    }

    if (!v50)
    {
      goto LABEL_42;
    }

LABEL_33:

    v45 = v63;
    (*v61)(v68, v63);
    goto LABEL_34;
  }

LABEL_12:
  v40 = v66;
  if (v23 < v66)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = v56;
  if ((v66 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_14:
  v22 = v40;
  v42 = v40 - v23;
  v18 = (v23 + v42);
  if (__OFADD__(v23, v42))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v37;
  if (!v43 || v18 > v37[3] >> 1)
  {
    if (v23 <= v18)
    {
      v44 = v18;
    }

    else
    {
      v44 = v23;
    }

    v37 = sub_26D2FA6E0(v43, v44, 1, v37, &qword_2804F9740, &qword_26D314690, MEMORY[0x277CE4440]);
    v69[0] = v37;
  }

  sub_26D2FDE28(v22, v23, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v37;

  sub_26D30F788();
  return sub_26D2F3E78();
}

uint64_t sub_26D2F7D54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26D2F7D98(uint64_t a1)
{
  v136 = *MEMORY[0x277D85DE8];
  v112 = sub_26D310038();
  v2 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v3);
  v111 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_26D310068();
  v5 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v6);
  v109 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_26D30F618();
  v8 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v9);
  v117 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D30F5B8();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v108 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = &v100 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v100 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v26 = &v100 - v24;
  v27 = *(a1 + 16);
  if (v27)
  {
    v132 = 0;
    v29 = *(v25 + 16);
    v28 = v25 + 16;
    v30 = *(v28 + 64);
    v31 = (a1 + ((v30 + 32) & ~v30));
    v126 = (v28 - 8);
    v127 = v29;
    v114 = (v8 + 8);
    v107 = v30;
    v106 = (v30 + 24) & ~v30;
    v105 = (v23 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v28 + 16);
    v103 = v134;
    v102 = (v2 + 8);
    v101 = (v5 + 8);
    v128 = v28;
    v124 = *(v28 + 56);
    v129 = xmmword_26D313B40;
    v32 = MEMORY[0x277D837D0];
    v122 = xmmword_26D313CE0;
    v125 = v11;
    v116 = &v100 - v24;
    v115 = v21;
    v29(v26, v31, v11);
    while (1)
    {
      v43 = [objc_opt_self() defaultManager];
      v44 = sub_26D30F518();
      aBlock[0] = 0;
      v45 = [v43 URLForDirectory:99 inDomain:1 appropriateForURL:v44 create:1 error:aBlock];

      v46 = aBlock[0];
      if (!v45)
      {
        break;
      }

      v130 = v31;
      v131 = v27;
      sub_26D30F558();
      v47 = v46;

      v48 = sub_26D310178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
      v49 = swift_allocObject();
      *(v49 + 16) = v129;
      v50 = sub_26D30F5A8();
      v52 = v51;
      *(v49 + 56) = v32;
      v54 = sub_26D2E92F4(v50, v51, v53);
      *(v49 + 64) = v54;
      *(v49 + 32) = v50;
      *(v49 + 40) = v52;
      sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);
      v55 = sub_26D310208();
      sub_26D30F718(v48, &dword_26D2C7000, v55, "loadDroppedPhotos found a temporary directory %{public}@", 56, 2, v49);

      v56 = v21;
      v57 = v132;
      v58 = sub_26D30F5C8();
      if (v57)
      {
        aBlock[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96A0, &qword_26D314528);
        v33 = sub_26D2FC7CC(0, &qword_2804F96A8, 0x277CCA9B8);
        swift_dynamicCast();
        v34 = v135;
        v35 = sub_26D310188();
        v36 = swift_allocObject();
        *(v36 + 16) = v122;
        v37 = sub_26D30F5A8();
        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 64) = v54;
        *(v36 + 32) = v37;
        *(v36 + 40) = v38;
        *(v36 + 96) = v33;
        *(v36 + 104) = sub_26D2FC814();
        *(v36 + 72) = v34;
        v39 = v34;
        v40 = sub_26D310208();
        sub_26D30F718(v35, &dword_26D2C7000, v40, "loadDroppedPhotos could not read data at @%{public}@: %{public}@", 64, 2, v36);

        v11 = v125;
        v41 = *v126;
        (*v126)(v56, v125);
        v41(v26, v11);

        v132 = 0;
        v21 = v56;
        v42 = v131;
      }

      else
      {
        v60 = v59;
        v121 = v54;
        v61 = v117;
        v62 = v58;
        sub_26D30F608();
        sub_26D30F5E8();
        (*v114)(v61, v118);
        v63 = v123;
        sub_26D30F528();

        v119 = v62;
        v120 = v60;
        sub_26D30F5D8();
        v64 = sub_26D310178();
        v65 = swift_allocObject();
        *(v65 + 16) = v129;
        v66 = sub_26D30F5A8();
        v67 = v121;
        *(v65 + 56) = MEMORY[0x277D837D0];
        *(v65 + 64) = v67;
        *(v65 + 32) = v66;
        *(v65 + 40) = v68;
        v69 = sub_26D310208();
        sub_26D30F718(v64, &dword_26D2C7000, v69, "loadDroppedPhotos wrote a copy of image data to %{public}@", 58, 2, v65);

        v42 = v131;
        v132 = 0;
        sub_26D30F578();
        v70 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v71 = sub_26D3100B8();

        v72 = [v70 initWithContentsOfFile_];

        if (v72)
        {
          v73 = sub_26D30FEC8();
          sub_26D2FC7CC(0, &qword_2804F9680, 0x277D85C78);

          v131 = sub_26D3101D8();
          v74 = v108;
          v11 = v125;
          v127(v108, v63, v125);
          v75 = v105;
          v76 = swift_allocObject();
          *(v76 + 16) = v113;
          (*v104)(v76 + v106, v74, v11);
          *(v76 + v75) = v73;
          v134[2] = sub_26D2FC9A8;
          v134[3] = v76;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v134[0] = sub_26D2FDFE4;
          v134[1] = &block_descriptor_0;
          v77 = _Block_copy(aBlock);

          v78 = v109;
          sub_26D310048();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_26D2FCA50(&qword_2804F96B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96C0, &qword_26D314530);
          sub_26D2FCA98(&qword_2804F96C8, &qword_2804F96C0, &qword_26D314530);
          v79 = v111;
          v80 = v63;
          v81 = v112;
          sub_26D310258();
          v82 = v131;
          MEMORY[0x26D6BBAC0](0, v78, v79, v77);
          _Block_release(v77);

          sub_26D2FC87C(v119, v120);

          (*v102)(v79, v81);
          (*v101)(v78, v110);
          v83 = *v126;
          (*v126)(v80, v11);
        }

        else
        {
          v84 = sub_26D310188();
          v85 = swift_allocObject();
          *(v85 + 16) = v129;
          v86 = sub_26D30F5A8();
          v87 = v121;
          *(v85 + 56) = MEMORY[0x277D837D0];
          *(v85 + 64) = v87;
          *(v85 + 32) = v86;
          *(v85 + 40) = v88;
          v89 = sub_26D310208();
          sub_26D30F718(v84, &dword_26D2C7000, v89, "loadDroppedPhotos failed to load image at URL %{public}@", 56, 2, v85);
          sub_26D2FC87C(v119, v120);

          v11 = v125;
          v83 = *v126;
          (*v126)(v63, v125);
        }

        v21 = v115;
        v83(v115, v11);
        v26 = v116;
        v83(v116, v11);
      }

      v31 = &v130[v124];
      v27 = v42 - 1;
      v32 = MEMORY[0x277D837D0];
      if (!v27)
      {
        return;
      }

      v127(v26, v31, v11);
    }

    v90 = aBlock[0];
    v91 = sub_26D30F4C8();

    swift_willThrow();
    aBlock[0] = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96A0, &qword_26D314528);
    v92 = sub_26D2FC7CC(0, &qword_2804F96A8, 0x277CCA9B8);
    swift_dynamicCast();
    v93 = v135;
    v94 = sub_26D310188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
    v95 = swift_allocObject();
    *(v95 + 16) = v129;
    *(v95 + 56) = v92;
    *(v95 + 64) = sub_26D2FC814();
    *(v95 + 32) = v93;
    sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);
    v96 = v93;
    v97 = v26;
    v98 = v96;
    v99 = sub_26D310208();
    sub_26D30F718(v94, &dword_26D2C7000, v99, "loadDroppedPhotos could not find a temporary directory: %{public}@", 66, 2, v95);

    (*v126)(v97, v11);
  }
}

void sub_26D2F8BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26D30F5B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  if (*(a1 + v10))
  {
    (*(v6 + 16))(v9, a2, v5);
    v11 = *(a1 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_26D2FA6E0(0, v11[2] + 1, 1, v11, &qword_2804F9518, &qword_26D3141D0, MEMORY[0x277CC9260]);
      *(a1 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_26D2FA6E0((v13 > 1), v14 + 1, 1, v11, &qword_2804F9518, &qword_26D3141D0, MEMORY[0x277CC9260]);
    }

    v11[2] = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v5);
    *(a1 + v10) = v11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D30F778();

  MEMORY[0x26D6BB9D0](v15);
  if (*(v25 + 16) >= *(v25 + 24) >> 1)
  {
    sub_26D310128();
  }

  sub_26D310138();
  v16 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v24[1] = v16;

  sub_26D30F788();
  sub_26D2F30FC();
  v17 = sub_26D310178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26D313B40;
  v19 = sub_26D30F5A8();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_26D2E92F4(v19, v20, v22);
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);
  v23 = sub_26D310208();
  sub_26D30F718(v17, &dword_26D2C7000, v23, "loadDroppedPhotos loaded image at URL %{public}@", 48, 2, v18);
}

uint64_t sub_26D2F8F38@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = sub_26D30F4E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v76 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v68[-v11];
  v13 = sub_26D30F5B8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v19);
  v77 = &v68[-v20];
  v21 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (!v22)
  {
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (*(v22 + 16) <= a1)
  {
    goto LABEL_15;
  }

  v74 = v6;
  v75 = v5;
  v23 = *(v14 + 16);
  v23(v18, v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a1, v13);
  v24 = v77;
  (*(v14 + 32))(v77, v18, v13);
  v23(v12, v24, v13);
  v72 = *(v14 + 56);
  v73 = v14 + 56;
  v72(v12, 0, 1, v13);
  v25 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  swift_beginAccess();
  sub_26D2FDF70(v12, v2 + v25, &qword_2804F9270, &qword_26D314510);
  swift_endAccess();
  v26 = sub_26D2F96AC(0xD00000000000002ALL, 0x800000026D3173A0);
  v28 = v27;
  v29 = NSTemporaryDirectory();
  v30 = sub_26D3100C8();
  v32 = v31;

  v78 = v30;
  v79 = v32;

  MEMORY[0x26D6BB9C0](47, 0xE100000000000000);

  MEMORY[0x26D6BB9C0](v26, v28);

  MEMORY[0x26D6BB9C0](1735290926, 0xE400000000000000);

  v33 = v78;
  v34 = v79;
  v35 = [objc_opt_self() defaultManager];
  v36 = sub_26D3100B8();
  LODWORD(v26) = [v35 fileExistsAtPath_];

  if (v26)
  {
    v37 = sub_26D3100B8();
    v78 = 0;
    v38 = [v35 removeItemAtPath:v37 error:&v78];

    if (v38)
    {
      v39 = v78;
    }

    else
    {
      v41 = v78;
      v42 = v12;
      v43 = v33;
      v44 = sub_26D30F4C8();

      swift_willThrow();
      LODWORD(v70) = sub_26D3101A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
      v45 = a2;
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_26D313B40;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = sub_26D2E92F4(v46, v47, v48);
      *(v46 + 32) = v43;
      *(v46 + 40) = v34;
      sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);

      v49 = sub_26D310208();
      sub_26D30F718(v70, &dword_26D2C7000, v49, "prepareQuickLookForImage could not remove image at path %{public}@", 66, 2, v46);
      a2 = v45;

      v50 = v44;
      v33 = v43;
      v12 = v42;
    }
  }

  v71 = v12;
  v51 = v77;
  sub_26D30F578();
  v52 = sub_26D3100B8();

  v53 = sub_26D3100B8();
  v78 = 0;
  v54 = v33;
  v55 = [v35 copyItemAtPath:v52 toPath:v53 error:&v78];

  if (v55)
  {
    v56 = v78;
  }

  else
  {
    v57 = v78;
    v70 = sub_26D30F4C8();

    swift_willThrow();
    v69 = sub_26D3101A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_26D313CE0;
    v59 = sub_26D30F578();
    v60 = a2;
    v62 = v61;
    v63 = MEMORY[0x277D837D0];
    *(v58 + 56) = MEMORY[0x277D837D0];
    v65 = sub_26D2E92F4(v59, v61, v64);
    *(v58 + 32) = v59;
    *(v58 + 40) = v62;
    a2 = v60;
    *(v58 + 96) = v63;
    *(v58 + 104) = v65;
    *(v58 + 64) = v65;
    *(v58 + 72) = v54;
    *(v58 + 80) = v34;
    sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);

    v66 = sub_26D310208();
    sub_26D30F718(v69, &dword_26D2C7000, v66, "prepareQuickLookForImage could not copy image from %{public}@ to %{public}@", 75, 2, v58);
  }

  v67 = v72;
  v72(v71, 1, 1, v13);
  (*(v74 + 104))(v76, *MEMORY[0x277CC91D8], v75);
  sub_26D30F598();
  (*(v14 + 8))(v51, v13);
  return v67(a2, 0, 1, v13);
}

uint64_t sub_26D2F96AC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_26D3100B8();
  v4 = [v2 initWithPath_];

  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_26D3100B8();
  v7 = sub_26D3100B8();
  v8 = sub_26D3100B8();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_26D3100C8();
  return v10;
}

uint64_t sub_26D2F97E0(uint64_t a1)
{
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96D0, &qword_26D314538);
  MEMORY[0x28223BE20](v93, v3);
  v5 = &v78 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v78 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v78 - v20;
  v22 = sub_26D30F5B8();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v79 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v92 = &v78 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v100 = &v78 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v83 = &v78 - v34;
  v35 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  result = swift_beginAccess();
  v98 = v35;
  v101 = v1;
  v37 = *(v1 + v35);
  if (!v37)
  {
    return result;
  }

  v82 = v14;
  v80 = v10;
  v81 = a1;
  v88 = v5;
  v38 = *(v37 + 16);
  v39 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL;
  v40 = v101;
  swift_beginAccess();
  v90 = v39;
  sub_26D2E9114(v40 + v39, v21, &qword_2804F9270, &qword_26D314510);
  v41 = *(v23 + 48);
  v89 = v23 + 48;
  if (v41(v21, 1, v22) == 1)
  {
    return sub_26D2E9284(v21, &qword_2804F9270, &qword_26D314510);
  }

  v87 = v41;
  v97 = v18;
  v91 = v23;
  v94 = *(v23 + 32);
  v95 = v23 + 32;
  result = v94(v83, v21, v22);
  if (!v38)
  {
    return (*(v91 + 8))(v83, v22);
  }

  v42 = v38;
  v43 = 0;
  v44 = 0;
  v86 = v91 + 16;
  v85 = v91 + 56;
  v96 = (v91 + 8);
  v78 = xmmword_26D313CE0;
  v84 = v38;
  while (1)
  {
    v45 = *(v101 + v98);
    if (!v45)
    {
      goto LABEL_9;
    }

    if (v43 >= *(v45 + 16))
    {
      break;
    }

    v99 = v44;
    v46 = v91;
    v47 = v92;
    v48 = *(v91 + 16);
    v48(v92, v45 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v43, v22);
    v49 = v100;
    v94(v100, v47, v22);
    v50 = v97;
    v48(v97, v49, v22);
    (*(v46 + 56))(v50, 0, 1, v22);
    v51 = *(v93 + 48);
    v52 = v88;
    sub_26D2E9114(v50, v88, &qword_2804F9270, &qword_26D314510);
    sub_26D2E9114(v101 + v90, v52 + v51, &qword_2804F9270, &qword_26D314510);
    v53 = v87;
    if (v87(v52, 1, v22) == 1)
    {
      sub_26D2E9284(v50, &qword_2804F9270, &qword_26D314510);
      v54 = v53(v52 + v51, 1, v22);
      v44 = v99;
      if (v54 == 1)
      {
        sub_26D2E9284(v52, &qword_2804F9270, &qword_26D314510);
LABEL_17:
        v59 = [objc_opt_self() defaultManager];
        v60 = v80;
        sub_26D310168();
        if (v44)
        {

          v61 = v44;
          v62 = sub_26D3101A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
          v63 = swift_allocObject();
          *(v63 + 16) = v78;
          v64 = sub_26D30F5A8();
          v66 = v65;
          v67 = MEMORY[0x277D837D0];
          *(v63 + 56) = MEMORY[0x277D837D0];
          v69 = sub_26D2E92F4(v64, v65, v68);
          *(v63 + 64) = v69;
          *(v63 + 32) = v64;
          *(v63 + 40) = v66;
          v70 = sub_26D30F5A8();
          *(v63 + 96) = v67;
          *(v63 + 104) = v69;
          *(v63 + 72) = v70;
          *(v63 + 80) = v71;
          sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);
          v72 = sub_26D310208();
          sub_26D30F718(v62, &dword_26D2C7000, v72, "quickLookDidDismiss could not replace image at %{public}@ with %{public}@", 73, 2, v63);

          v44 = 0;
        }

        else
        {
          sub_26D2E9284(v60, &qword_2804F9270, &qword_26D314510);
        }

        sub_26D30F578();
        v73 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v74 = sub_26D3100B8();

        v75 = [v73 initWithContentsOfFile_];

        if (v75)
        {
          v76 = sub_26D30FEC8();
          swift_getKeyPath();
          swift_getKeyPath();

          sub_26D30F778();

          v77 = v102;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26D2FB2FC(v77);
            v77 = result;
          }

          if (v43 >= *(v77 + 16))
          {
            goto LABEL_29;
          }

          *(v77 + 8 * v43 + 32) = v76;

          swift_getKeyPath();
          swift_getKeyPath();
          v102 = v77;

          sub_26D30F788();
          sub_26D2F30FC();
        }

        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v55 = v82;
    sub_26D2E9114(v52, v82, &qword_2804F9270, &qword_26D314510);
    if (v53(v52 + v51, 1, v22) == 1)
    {
      sub_26D2E9284(v97, &qword_2804F9270, &qword_26D314510);
      (*v96)(v55, v22);
      v44 = v99;
LABEL_7:
      sub_26D2E9284(v52, &qword_2804F96D0, &qword_26D314538);
      goto LABEL_8;
    }

    v56 = v79;
    v94(v79, (v52 + v51), v22);
    sub_26D2FCA50(&qword_2804F96D8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v57 = sub_26D3100A8();
    v58 = *v96;
    (*v96)(v56, v22);
    sub_26D2E9284(v97, &qword_2804F9270, &qword_26D314510);
    v58(v55, v22);
    sub_26D2E9284(v52, &qword_2804F9270, &qword_26D314510);
    v44 = v99;
    if (v57)
    {
      goto LABEL_17;
    }

LABEL_8:
    result = (*v96)(v100, v22);
    v42 = v84;
LABEL_9:
    if (v42 == ++v43)
    {
      return (*(v91 + 8))(v83, v22);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

char *sub_26D2FA164()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__isSubmitButtonDisabled[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600, &qword_26D314328);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__testerFeedbackText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610, &qword_26D3143C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__alertMessage[0];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628, &qword_26D314428);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__selectedPhotos[0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640, &qword_26D3144D0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadingPhotos[0];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658, &qword_26D3144E8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  v11 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadedPhotos[0];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670, &qword_26D314500);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  sub_26D2E9284(v0 + OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL, &qword_2804F9270, &qword_26D314510);

  return v0;
}

uint64_t sub_26D2FA3AC()
{
  sub_26D2FA164();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D2FA404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D30F728();
  *a1 = result;
  return result;
}

id sub_26D2FA4A0()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return [result feedbackWillCancelSubmission];
  }

  return result;
}

void *sub_26D2FA4F0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9730, &qword_26D314688);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680) - 8);
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

void *sub_26D2FA6E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_26D2FA8BC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_26D30F5B8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v42 - v16;
  v18 = *v2;
  v19 = v56;
  result = sub_26D2FAFA8(a1, a2, *v2, MEMORY[0x277CC9260]);
  if (!v19)
  {
    v52 = v17;
    v56 = 0;
    if (v21)
    {
      return *(v18 + 16);
    }

    v22 = v5;
    v44 = v10;
    v45 = v14;
    v49 = a1;
    v43 = v2;
    v54 = result;
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v18;
      v26 = (v18 + 16);
      v25 = *(v18 + 16);
      v27 = v52;
      if (v23 == v25)
      {
        return v54;
      }

      v28 = v22;
      v51 = v6 + 16;
      v47 = v6;
      v48 = (v6 + 8);
      v42 = (v6 + 40);
      v46 = a2;
      while (v23 < v25)
      {
        v29 = *(v6 + 80);
        v55 = v24;
        v50 = (v29 + 32) & ~v29;
        v30 = v24 + v50;
        v31 = *(v6 + 72);
        v32 = *(v6 + 16);
        v53 = v31 * v23;
        v32(v27, &v30[v31 * v23], v28);
        v33 = v56;
        v34 = v49(v27);
        v56 = v33;
        if (v33)
        {
          return (*v48)(v27, v28);
        }

        v35 = v34;
        result = (*v48)(v27, v28);
        if (v35)
        {
          v6 = v47;
          v27 = v52;
          v24 = v55;
        }

        else
        {
          v36 = v54;
          if (v23 == v54)
          {
            v6 = v47;
            v27 = v52;
            v24 = v55;
          }

          else
          {
            if ((v54 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v37 = *v26;
            if (v54 >= v37)
            {
              goto LABEL_27;
            }

            v38 = v31 * v54;
            result = (v32)(v45, &v30[v38], v28);
            if (v23 >= v37)
            {
              goto LABEL_28;
            }

            v39 = v44;
            v32(v44, &v30[v53], v28);
            v24 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_26D2FB2B0(v24);
            }

            v40 = v24 + v50;
            v41 = *v42;
            result = (*v42)(v24 + v50 + v38, v39, v28);
            v6 = v47;
            if (v23 >= v24[2])
            {
              goto LABEL_29;
            }

            result = v41(&v40[v53], v45, v28);
            *v43 = v24;
            v36 = v54;
            v27 = v52;
          }

          v54 = v36 + 1;
        }

        ++v23;
        v26 = v24 + 2;
        v25 = v24[2];
        if (v23 == v25)
        {
          return v54;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D2FAC74(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v36 - v17;
  v19 = *v2;
  result = sub_26D2FB098(a1, a2, *v2);
  if (!v3)
  {
    v48 = 0;
    if (v21)
    {
      return v19[2];
    }

    v41 = v18;
    v42 = a1;
    v37 = v15;
    v38 = v11;
    v36 = v2;
    v46 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v19 + 2;
      v23 = v19[2];
      if (v22 == v23)
      {
        return v46;
      }

      v39 = v7;
      v40 = a2;
      while (v22 < v23)
      {
        v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v47 = v19;
        v43 = v25;
        v26 = *(v7 + 72);
        v44 = v26 * v22;
        v45 = v19 + v25;
        v27 = v41;
        sub_26D2E9114(v19 + v25 + v26 * v22, v41, &qword_2804F9728, &qword_26D314680);
        v28 = v48;
        v29 = v42(v27);
        result = sub_26D2E9284(v27, &qword_2804F9728, &qword_26D314680);
        v48 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          v7 = v39;
          v19 = v47;
        }

        else
        {
          v30 = v46;
          if (v22 == v46)
          {
            v7 = v39;
            v19 = v47;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v24;
            if (v46 >= *v24)
            {
              goto LABEL_27;
            }

            v32 = v26 * v46;
            v33 = v45;
            result = sub_26D2E9114(&v45[v26 * v46], v37, &qword_2804F9728, &qword_26D314680);
            if (v22 >= v31)
            {
              goto LABEL_28;
            }

            v34 = v44;
            sub_26D2E9114(&v33[v44], v38, &qword_2804F9728, &qword_26D314680);
            v19 = v47;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_26D2FB35C(v19);
            }

            v35 = v19 + v43;
            result = sub_26D2FDF70(v38, v19 + v43 + v32, &qword_2804F9728, &qword_26D314680);
            if (v22 >= v19[2])
            {
              goto LABEL_29;
            }

            result = sub_26D2FDF70(v37, &v35[v34], &qword_2804F9728, &qword_26D314680);
            *v36 = v19;
            v7 = v39;
            v30 = v46;
          }

          v46 = v30 + 1;
        }

        ++v22;
        v24 = v19 + 2;
        v23 = v19[2];
        if (v22 == v23)
        {
          return v46;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D2FAFA8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_26D2FB098(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_26D2FB1A4(uint64_t a1)
{
  v2 = sub_26D310268();

  return sub_26D2FB1E8(a1, v2);
}

unint64_t sub_26D2FB1E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26D2FD1B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6BBB50](v9, a1);
      sub_26D2FD108(v9);
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

uint64_t sub_26D2FB370(void *a1)
{
  v146 = a1;
  v150 = sub_26D30F5B8();
  v145 = *(v150 - 8);
  v3 = MEMORY[0x28223BE20](v150, v2);
  v138 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v141 = &v122 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v147 = &v122 - v9;
  v143 = sub_26D3101C8();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v10);
  v140 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_26D3101B8();
  MEMORY[0x28223BE20](v139, v12);
  *&v136 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D310068();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v134 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9670, &qword_26D314500);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v17);
  v130 = &v122 - v18;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9658, &qword_26D3144E8);
  v128 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v19);
  v127 = &v122 - v20;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9640, &qword_26D3144D0);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v21);
  v124 = &v122 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9628, &qword_26D314428);
  v23 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v24);
  v26 = &v122 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9610, &qword_26D3143C8);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v122 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9600, &qword_26D314328);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v122 - v35;
  v1[2] = 0;
  v129 = v1 + 2;
  v1[4] = 0;
  v133 = v1 + 4;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v135 = v1 + 6;
  v1[8] = 0;
  v137 = (v1 + 8);
  v1[7] = 0xE000000000000000;
  v1[9] = 0xE000000000000000;
  v37 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__isSubmitButtonDisabled;
  LOBYTE(aBlock) = 1;
  sub_26D30F738();
  (*(v33 + 32))(v1 + v37, v36, v32);
  v38 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__testerFeedbackText;
  aBlock = 0;
  v149 = 0xE000000000000000;
  v153 = 0xE000000000000000;
  sub_26D30F738();
  v39 = v1 + v38;
  v40 = v1;
  (*(v28 + 32))(v39, v31, v27);
  v41 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__alertMessage;
  v153 = 0;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9620, &qword_26D3143D8);
  sub_26D30F738();
  (*(v23 + 32))(v1 + v41, v26, v123);
  v42 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__selectedPhotos;
  v43 = MEMORY[0x277D84F90];
  aBlock = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9638, &qword_26D314438);
  v44 = v124;
  sub_26D30F738();
  (*(v125 + 32))(&v40[v42], v44, v126);
  v45 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadingPhotos;
  aBlock = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9650, &qword_26D3144E0);
  v46 = v127;
  sub_26D30F738();
  (*(v128 + 32))(&v40[v45], v46, v148);
  v148 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs;
  *&v40[OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_loadedPhotoURLs] = v43;
  v47 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel__loadedPhotos;
  aBlock = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9668, &qword_26D3144F8);
  v48 = v130;
  sub_26D30F738();
  (*(v131 + 32))(&v40[v47], v48, v132);
  (*(v145 + 56))(&v40[OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_currentlyPresentedPhotoURL], 1, 1, v150);
  v49 = OBJC_IVAR____TtC14TestFlightCore17FeedbackViewModel_imageLoadingQueue;
  sub_26D2FC7CC(0, &qword_2804F9680, 0x277D85C78);
  sub_26D310058();
  aBlock = v43;
  sub_26D2FCA50(&qword_2804F9688, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9690, &unk_26D314518);
  sub_26D2FCA98(&qword_2804F9698, &qword_2804F9690, &unk_26D314518);
  sub_26D310258();
  (*(v142 + 13))(v140, *MEMORY[0x277D85260], v143);
  v50 = v40;
  *&v40[v49] = sub_26D3101F8();
  v51 = v146;
  v52 = v129;
  swift_beginAccess();
  *v52 = v51;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v40 + 3) = [v51 feedbackSessionContext];
  v53 = [v51 feedbackAppName];
  v54 = sub_26D3100C8();
  v56 = v55;

  v57 = v133;
  swift_beginAccess();
  *v57 = v54;
  *(v40 + 5) = v56;

  v58 = [v51 feedbackDeveloperName];
  v59 = sub_26D3100C8();
  v61 = v60;

  v62 = v135;
  swift_beginAccess();
  *v62 = v59;
  *(v40 + 7) = v61;

  v63 = [v51 feedbackTesterEmailAddress];
  if (v63)
  {
    v64 = v63;
    v65 = sub_26D3100C8();
    v149 = v66;
  }

  else
  {
    v65 = 0;
  }

  swift_beginAccess();
  v67 = v149;
  *(v40 + 8) = v65;
  *(v40 + 9) = v67;

  v68 = [v51 feedbackInitialScreenshotURLs];
  v69 = v150;
  v70 = v147;
  v71 = v148;
  if (v68)
  {
    v72 = v68;
    v73 = sub_26D310118();
  }

  else
  {
    v73 = 0;
  }

  swift_beginAccess();
  *(v50 + v71) = v73;

  v74 = *(v50 + v71);
  v144 = v50;
  if (v74 && (v75 = v74[2]) != 0)
  {
    v76 = (v145 + 16);
    v77 = *(v145 + 16);
    v139 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v78 = v74 + v139;
    v79 = *(v145 + 72);
    v142 = (v145 + 8);
    v137 = (v145 + 32);
    v135 = v74;

    v149 = MEMORY[0x277D84F90];
    v136 = xmmword_26D313B40;
    v146 = v76;
    v143 = v79;
    v140 = v77;
    do
    {
      v82 = v150;
      (v77)(v70, v78, v150);
      sub_26D30F578();
      v83 = v77;
      v84 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v85 = sub_26D3100B8();

      v86 = [v84 initWithContentsOfFile_];

      if (v86)
      {
        sub_26D30FEC8();
        swift_getKeyPath();
        swift_getKeyPath();

        sub_26D30F778();

        MEMORY[0x26D6BB9D0](v80);
        if (*(aBlock + 16) >= *(aBlock + 24) >> 1)
        {
          sub_26D310128();
        }

        sub_26D310138();
        v81 = aBlock;
        swift_getKeyPath();
        swift_getKeyPath();
        v151 = v81;

        sub_26D30F788();
        sub_26D2F30FC();

        v70 = v147;
        (*v142)(v147, v150);
        v71 = v148;
        v77 = v140;
        v73 = v143;
      }

      else
      {
        v87 = sub_26D3101A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9258, &qword_26D313CC0);
        v88 = swift_allocObject();
        *(v88 + 16) = v136;
        v89 = sub_26D30F4F8();
        v91 = v90;
        *(v88 + 56) = MEMORY[0x277D837D0];
        *(v88 + 64) = sub_26D2E92F4(v89, v90, v92);
        *(v88 + 32) = v89;
        *(v88 + 40) = v91;
        v70 = v147;
        sub_26D2FC7CC(0, &qword_2804F9510, 0x277D86200);
        v93 = sub_26D310208();
        sub_26D30F718(v87, &dword_26D2C7000, v93, "init could not load image from URL %{public}@", 45, 2, v88);

        (v83)(v141, v70, v82);
        v77 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_26D2FA6E0(0, v149[2] + 1, 1, v149, &qword_2804F9518, &qword_26D3141D0, MEMORY[0x277CC9260]);
        }

        v71 = v148;
        v95 = v149[2];
        v94 = v149[3];
        if (v95 >= v94 >> 1)
        {
          v149 = sub_26D2FA6E0((v94 > 1), v95 + 1, 1, v149, &qword_2804F9518, &qword_26D3141D0, MEMORY[0x277CC9260]);
        }

        v96 = v150;
        (*v142)(v70, v150);
        v97 = v149;
        v149[2] = v95 + 1;
        v73 = v143;
        (*v137)(&v97[v139 + v95 * v143], v141, v96);
      }

      v78 += v73;
      --v75;
    }

    while (v75);

    v98 = v149;
    v50 = v144;
    v69 = v150;
  }

  else
  {
    v98 = MEMORY[0x277D84F90];
  }

  v99 = v138;
  v143 = v98[2];
  if (v143)
  {
    v100 = 0;
    v101 = 0;
    v137 = ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v142 = v137 + v98;
    v141 = (v145 + 16);
    v140 = (v145 + 8);
    v149 = v98;
    do
    {
      if (v100 >= v98[2])
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v105 = *(v145 + 72);
      (*(v145 + 16))(v99, &v142[v105 * v100], v69);
      v106 = swift_beginAccess();
      if (*(v50 + v71))
      {
        v147 = &v122;
        MEMORY[0x28223BE20](v106, v107);
        *(&v122 - 2) = v99;
        v108 = sub_26D2FA8BC(sub_26D2FCF80, (&v122 - 4));
        if (v101)
        {

          result = swift_endAccess();
          __break(1u);
          return result;
        }

        v109 = v108;
        v110 = v50;
        v73 = *(v50 + v71);
        v50 = *(v73 + 16);
        v111 = v50 - v108;
        if (v50 < v108)
        {
          goto LABEL_50;
        }

        if (v108 < 0)
        {
          goto LABEL_51;
        }

        v146 = 0;
        v112 = v108;
        if (__OFADD__(v50, v108 - v50))
        {
          goto LABEL_52;
        }

        v139 = v108 - v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v110 + v71) = v73;
        if (!isUniquelyReferenced_nonNull_native || v112 > *(v73 + 24) >> 1)
        {
          if (v50 <= v112)
          {
            v114 = v50 - v111;
          }

          else
          {
            v114 = v50;
          }

          v73 = sub_26D2FA6E0(isUniquelyReferenced_nonNull_native, v114, 1, v73, &qword_2804F9518, &qword_26D3141D0, MEMORY[0x277CC9260]);
          *(v110 + v71) = v73;
        }

        v115 = v137 + v73;
        v116 = v109 * v105;
        v117 = v137 + v73 + v109 * v105;
        swift_arrayDestroy();
        if (v50 != v109)
        {
          if (v116 < v50 * v105 || v117 >= &v115[v50 * v105 + (*(v73 + 16) - v50) * v105])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v116 != v50 * v105)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v102 = *(v73 + 16);
          v103 = __OFADD__(v102, v139);
          v104 = v102 + v139;
          if (v103)
          {
            goto LABEL_53;
          }

          *(v73 + 16) = v104;
        }

        v50 = v144;
        v71 = v148;
        *(v144 + v148) = v73;
        swift_endAccess();
        v69 = v150;
        v99 = v138;
        v98 = v149;
        v101 = v146;
      }

      else
      {
        swift_endAccess();
      }

      ++v100;
      (*v140)(v99, v69);
    }

    while (v143 != v100);
  }

  v73 = [objc_opt_self() defaultCenter];
  if (qword_2804FA0B8 != -1)
  {
LABEL_54:
    swift_once();
  }

  v118 = qword_2804FAAB8;
  v156 = sub_26D2FCFB0;
  v157 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v154 = sub_26D2F5E98;
  v155 = &block_descriptor_30;
  v119 = _Block_copy(&aBlock);

  v120 = [v73 addObserverForName:v118 object:0 queue:0 usingBlock:v119];
  _Block_release(v119);
  swift_unknownObjectRelease();

  sub_26D2F30FC();
  return v50;
}

uint64_t sub_26D2FC7CC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26D2FC814()
{
  result = qword_2804F96B0;
  if (!qword_2804F96B0)
  {
    sub_26D2FC7CC(255, &qword_2804F96A8, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F96B0);
  }

  return result;
}

uint64_t sub_26D2FC87C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26D2FC8D0()
{
  v1 = sub_26D30F5B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_26D2FC9A8()
{
  v1 = *(sub_26D30F5B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26D2F8BA8(v3, v0 + v2, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D2FCA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D2FCA98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for FeedbackViewModel(uint64_t a1)
{
  result = qword_2804FA1D0;
  if (!qword_2804FA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D2FCB88(uint64_t a1)
{
  sub_26D2FCF2C(319, &qword_2804F96E0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_26D2FCF2C(319, &qword_2804F96E8, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_26D2FCE58(319, &qword_2804F96F0, &qword_2804F9620, &qword_26D3143D8);
      if (v3 <= 0x3F)
      {
        sub_26D2FCE58(319, &qword_2804F96F8, &qword_2804F9638, &qword_26D314438);
        if (v4 <= 0x3F)
        {
          sub_26D2FCE58(319, &qword_2804F9700, &qword_2804F9650, &qword_26D3144E0);
          if (v5 <= 0x3F)
          {
            sub_26D2FCE58(319, &qword_2804F9708, &qword_2804F9668, &qword_26D3144F8);
            if (v6 <= 0x3F)
            {
              sub_26D2FCEAC(319);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26D2FCE58(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26D30F798();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26D2FCEAC(uint64_t a1)
{
  if (!qword_2804F9710)
  {
    sub_26D30F5B8();
    v1 = sub_26D310218();
    if (!v2)
    {
      atomic_store(v1, &qword_2804F9710);
    }
  }
}

void sub_26D2FCF2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26D2FCFB0()
{
  v0 = sub_26D30F3F8();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_26D310288();
  if (!*(v1 + 16) || (v2 = sub_26D2FB1A4(&v7), (v3 & 1) == 0))
  {

    sub_26D2FD108(&v7);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    return sub_26D2E9284(&v9, &qword_2804F9720, "zp");
  }

  sub_26D2FD15C(*(v1 + 56) + 32 * v2, &v9);
  sub_26D2FD108(&v7);

  if (!*(&v10 + 1))
  {
    return sub_26D2E9284(&v9, &qword_2804F9720, "zp");
  }

  result = swift_dynamicCast();
  if (result)
  {
    v5 = v7;
    v6 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v5;
    v8 = v6;

    return sub_26D30F788();
  }

  return result;
}

uint64_t sub_26D2FD15C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26D2FD214()
{
  v1 = sub_26D30F618();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_26D30F3A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_26D2FD364(void **a1)
{
  v3 = *(sub_26D30F618() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26D30F3A8() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_26D2F66BC(a1, v7, v1 + v4, v8);
}

unint64_t sub_26D2FD43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9738;
  if (!qword_2804F9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9738);
  }

  return result;
}

uint64_t sub_26D2FD490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D2FD500()
{
  v1 = sub_26D30F618();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_26D30F3A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_26D2FD668(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_26D2FD668(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_26D2FD674(a1, a2);
  }
}

uint64_t sub_26D2FD674(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D2FC87C(result, a2);
  }

  return result;
}

uint64_t sub_26D2FD688()
{
  v1 = *(sub_26D30F618() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_26D30F3A8() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_26D2F6BB4(v5, v6, v7, v0 + v2, v8, v9);
}

id sub_26D2FD76C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_26D2FD778(a1, a2);
  }
}

uint64_t sub_26D2FD778(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D2FD78C(a1, a2);
  }

  return a1;
}

uint64_t sub_26D2FD78C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26D2FD7E0()
{
  v17 = sub_26D30F5B8();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 24) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_26D30F618();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_26D30F3A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;

  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v14, v12 | 7);
}

unint64_t sub_26D2FD9D8()
{
  v1 = *(sub_26D30F5B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_26D30F618() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_26D30F3A8() - 8);
  v8 = *(v0 + v3);
  v9 = *(v0 + 16);
  v10 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_26D2F74A4(v9, v0 + v2, v8, v0 + v5, v10);
}

unint64_t sub_26D2FDB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9728, &qword_26D314680);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_26D2FDCA0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_26D2FA4F0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_26D2FDB4C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26D2FDD60(uint64_t a1)
{
  v1 = sub_26D30F368();
  v3 = v2;
  v4 = sub_26D30F368();
  if (v3)
  {
    if (v5)
    {
      if (v1 == v4 && v3 == v5)
      {

        v7 = 1;
      }

      else
      {
        v7 = sub_26D3102F8();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v5)
    {
      v7 = 1;
      return v7 & 1;
    }

    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_26D2FDE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_26D30F3A8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26D2FDF70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26D2FE000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D30FA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17 - v11;
  sub_26D2E9114(v2, &v17 - v11, &qword_2804F9268, &qword_26D313D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26D30F808();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_26D310198();
    v16 = sub_26D30FB68();
    sub_26D30F718(v15, &dword_26D2C7000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26D2FE200()
{
  v1 = sub_26D30FA38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WhatToTestViewAllPlatforms(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    v9 = sub_26D310198();
    v10 = sub_26D30FB68();
    sub_26D30F718(v9, &dword_26D2C7000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v12[1];
  }

  return v7;
}

uint64_t type metadata accessor for WhatToTestViewAllPlatforms(uint64_t a1)
{
  result = qword_2804FA270;
  if (!qword_2804FA270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D2FE3A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9750, &qword_26D3146D8);
  sub_26D2FE434();
  return sub_26D30F928();
}

unint64_t sub_26D2FE434()
{
  result = qword_2804F9758;
  if (!qword_2804F9758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9750, &qword_26D3146D8);
    sub_26D2FE4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9758);
  }

  return result;
}

unint64_t sub_26D2FE4C0()
{
  result = qword_2804F9760;
  if (!qword_2804F9760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9768, &qword_26D3146E0);
    sub_26D2FE54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9760);
  }

  return result;
}

unint64_t sub_26D2FE54C()
{
  result = qword_2804F9770;
  if (!qword_2804F9770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9778, &qword_26D3146E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9780, &qword_26D3146F0);
    sub_26D2FE614();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9770);
  }

  return result;
}

unint64_t sub_26D2FE614()
{
  result = qword_2804F9788;
  if (!qword_2804F9788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9780, &qword_26D3146F0);
    sub_26D2E906C(&qword_2804F9790, &qword_2804F9798, &qword_26D3146F8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9788);
  }

  return result;
}

void sub_26D2FE6CC(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9798, &qword_26D3146F8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9780, &qword_26D3146F0);
  MEMORY[0x28223BE20](v6, v7);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9838, &qword_26D314858);
  MEMORY[0x28223BE20](v15, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9778, &qword_26D3146E8);
  MEMORY[0x28223BE20](v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9768, &qword_26D3146E0);
  MEMORY[0x28223BE20](v11, v12);
  *v5 = sub_26D30FA78();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9840, &qword_26D314860);
  sub_26D2FEAEC(v1, &v5[*(v13 + 44)]);
}

void sub_26D2FE8F0(uint64_t a1)
{
  sub_26D30FFD8();
  sub_26D30F968();
  sub_26D2F2534(v2, v1, &qword_2804F9798, &qword_26D3146F8);
  v5 = (v1 + *(v3 + 36));
  v6 = *(v4 - 152);
  v5[4] = *(v4 - 168);
  v5[5] = v6;
  v5[6] = *(v4 - 136);
  v7 = *(v4 - 216);
  *v5 = *(v4 - 232);
  v5[1] = v7;
  v8 = *(v4 - 184);
  v5[2] = *(v4 - 200);
  v5[3] = v8;
  sub_26D2FE614();
  sub_26D30C894();
}

uint64_t sub_26D2FE9A4()
{
  sub_26D2E9284(v0, &qword_2804F9780, &qword_26D3146F0);
  v8 = sub_26D30FBD8();
  sub_26D30F7B8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v5 + 32))(v1, v4, *(v7 - 248));
  v17 = v1 + *(v2 + 44);
  *v17 = v8;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_26D30FBC8();
  sub_26D30F7B8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_26D2F2534(v1, v6, &qword_2804F9778, &qword_26D3146E8);
  v27 = v6 + *(v3 + 44);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = sub_26D30F938();
  v29 = sub_26D30FBB8();
  v30 = *(v7 - 240);
  sub_26D2F2534(v6, v30, &qword_2804F9768, &qword_26D3146E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9750, &qword_26D3146D8);
  v32 = v30 + *(result + 36);
  *v32 = v28;
  *(v32 + 8) = v29;
  return result;
}

void sub_26D2FEAEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v202 = a1;
  v185 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9848, &qword_26D314868);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v201 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v200 = &v154 - v7;
  v8 = type metadata accessor for WhatToTestViewAllPlatforms(0);
  v171 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v172 = v10;
  v173 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9850, &qword_26D314870);
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v11);
  v174 = &v154 - v12;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9858, &qword_26D314878);
  MEMORY[0x28223BE20](v182, v13);
  v180 = &v154 - v14;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9860, &qword_26D314880);
  v16 = MEMORY[0x28223BE20](v183, v15);
  v184 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v199 = &v154 - v19;
  v20 = sub_26D30FB28();
  v169 = *(v20 - 8);
  v170 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v157 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9868, &qword_26D314888);
  v24 = *(v23 - 8);
  v158 = v23;
  v159 = v24;
  MEMORY[0x28223BE20](v23, v25);
  v156 = &v154 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9870, &qword_26D314890);
  v163 = *(v27 - 8);
  v164 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v155 = &v154 - v29;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9878, &qword_26D314898);
  v166 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v30);
  v161 = &v154 - v31;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9880, &qword_26D3148A0);
  MEMORY[0x28223BE20](v160, v32);
  v167 = &v154 - v33;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9888, &qword_26D3148A8);
  v35 = MEMORY[0x28223BE20](v165, v34);
  v204 = &v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v162 = &v154 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v197 = &v154 - v41;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9890, &qword_26D3148B0) - 8;
  MEMORY[0x28223BE20](v188, v42);
  v187 = (&v154 - v43);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9898, &qword_26D3148B8) - 8;
  v45 = MEMORY[0x28223BE20](v191, v44);
  v198 = &v154 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v189 = &v154 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v203 = &v154 - v51;
  sub_26D2FE200();
  sub_26D304DB4(v230);

  v52 = v230[0];

  v53 = sub_26D303430(v230);
  if (*(&v52 + 1))
  {
    v56 = v52;
  }

  else
  {
    v56 = 0;
  }

  v57 = 0xE000000000000000;
  if (*(&v52 + 1))
  {
    v57 = *(&v52 + 1);
  }

  v206 = v56;
  v207 = v57;
  v190 = sub_26D2E9230(v53, v54, v55);
  v58 = sub_26D30FD58();
  v60 = v59;
  v62 = v61;
  sub_26D30FCB8();
  v63 = sub_26D30FD28();
  v65 = v64;
  v67 = v66;

  sub_26D2E92E4(v58, v60, v62 & 1);

  sub_26D30FC68();
  v68 = sub_26D30FD08();
  v194 = v69;
  v195 = v68;
  LOBYTE(v58) = v70;
  v196 = v71;
  sub_26D2E92E4(v63, v65, v67 & 1);

  v193 = sub_26D30FBE8();
  v186 = sub_26D30ABA4();
  sub_26D30F7B8();
  v177 = v73;
  v178 = v72;
  v175 = v75;
  v176 = v74;
  v192 = v58 & 1;
  v222 = v58 & 1;
  v221 = 0;
  sub_26D30FFE8();
  sub_26D30F968();
  v226 = v230[7];
  v227 = v230[8];
  v228 = v230[9];
  v229 = v230[10];
  v223 = v230[4];
  v224 = v230[5];
  v225 = v230[6];
  v76 = sub_26D30FA48();
  v77 = v187;
  *v187 = v76;
  *(v77 + 8) = 0x402C000000000000;
  *(v77 + 16) = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98A0, &qword_26D3148C0);
  sub_26D300108(v77 + *(v78 + 44));
  LOBYTE(v58) = sub_26D30FBE8();
  sub_26D30F7B8();
  v79 = v77 + *(v188 + 44);
  *v79 = v58;
  *(v79 + 8) = v80;
  *(v79 + 16) = v81;
  *(v79 + 24) = v82;
  *(v79 + 32) = v83;
  *(v79 + 40) = 0;
  sub_26D30FFE8();
  sub_26D30F968();
  v84 = v189;
  sub_26D2F2534(v77, v189, &qword_2804F9890, &qword_26D3148B0);
  v85 = (v84 + *(v191 + 44));
  v86 = v230[16];
  v85[4] = v230[15];
  v85[5] = v86;
  v85[6] = v230[17];
  v87 = v230[12];
  *v85 = v230[11];
  v85[1] = v87;
  v88 = v230[14];
  v85[2] = v230[13];
  v85[3] = v88;
  sub_26D2F2534(v84, v203, &qword_2804F9898, &qword_26D3148B8);
  sub_26D2FE200();
  sub_26D304DB4(&v231);

  v89 = v232;
  v90 = v233;

  sub_26D303430(&v231);
  if (v90)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0;
  }

  v92 = 0xE000000000000000;
  if (v90)
  {
    v92 = v90;
  }

  v206 = v91;
  v207 = v92;
  v93 = sub_26D30FD58();
  v95 = v94;
  v97 = v96;
  sub_26D30FCC8();
  v98 = sub_26D30FD28();
  v100 = v99;
  v102 = v101;

  sub_26D2E92E4(v93, v95, v97 & 1);

  sub_26D30FC98();
  v103 = sub_26D30FD08();
  v189 = v104;
  v190 = v103;
  LOBYTE(v93) = v105;
  v191 = v106;
  v107 = v102 & 1;
  v108 = v155;
  sub_26D2E92E4(v98, v100, v107);

  LODWORD(v188) = sub_26D30FBE8();
  sub_26D30F7B8();
  LODWORD(v187) = v93 & 1;
  v213 = v93 & 1;
  v212 = 0;
  sub_26D30FFE8();
  sub_26D30F968();
  v217 = v237;
  v218 = v238;
  v219 = v239;
  v220 = v240;
  v214 = v234;
  v215 = v235;
  v216 = v236;
  v205 = v202;
  sub_26D30FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98A8, &qword_26D3148C8);
  v109 = v157;
  sub_26D2E906C(&qword_2804F98B0, &qword_2804F98A8, &qword_26D3148C8, MEMORY[0x277CE1198]);
  v110 = v156;
  v111 = v158;
  sub_26D30F7C8();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98B8, &qword_26D3148D0);
  v113 = sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868, &qword_26D314888, MEMORY[0x277CDD6E0]);
  v114 = sub_26D3035AC();
  View.conditional<A>(_:)(sub_26D301040, 0, v111, v112, v113, v114, v108);
  (*(v159 + 8))(v110, v111);
  sub_26D30FB18();
  LOBYTE(v110) = sub_26D30FB98();
  sub_26D30FB88();
  sub_26D30FB88();
  if (sub_26D30FB88() != v110)
  {
    sub_26D30FB88();
  }

  v206 = v111;
  v207 = v112;
  v208 = v113;
  v209 = v114;
  swift_getOpaqueTypeConformance2();
  v115 = v161;
  v116 = v164;
  sub_26D30FDC8();
  (*(v169 + 8))(v109, v170);
  (*(v163 + 8))(v108, v116);
  sub_26D30FFE8();
  sub_26D30F968();
  v117 = v167;
  (*(v166 + 32))(v167, v115, v168);
  v118 = &v117[*(v160 + 36)];
  v119 = v246;
  *(v118 + 4) = v245;
  *(v118 + 5) = v119;
  *(v118 + 6) = v247;
  v120 = v242;
  *v118 = v241;
  *(v118 + 1) = v120;
  v121 = v244;
  *(v118 + 2) = v243;
  *(v118 + 3) = v121;
  v122 = sub_26D30FBA8();
  sub_26D30F7B8();
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v131 = v117;
  v132 = v162;
  sub_26D2F2534(v131, v162, &qword_2804F9880, &qword_26D3148A0);
  v133 = v132 + *(v165 + 36);
  *v133 = v122;
  *(v133 + 8) = v124;
  *(v133 + 16) = v126;
  *(v133 + 24) = v128;
  *(v133 + 32) = v130;
  *(v133 + 40) = 0;
  v134 = sub_26D2F2534(v132, v197, &qword_2804F9888, &qword_26D3148A8);
  MEMORY[0x28223BE20](v134, v135);
  v136 = v202;
  v137 = sub_26D30ECB0();
  v139 = v138;
  v140 = v173;
  sub_26D3039F0(v136, v173);
  v141 = (*(v171 + 80) + 16) & ~*(v171 + 80);
  v142 = swift_allocObject();
  sub_26D303B74(v140, v142 + v141);
  v206 = v137;
  LOBYTE(v207) = v139 & 1;
  v208 = sub_26D303BD8;
  v209 = v142;
  v211 = 0;
  v210 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E0, &qword_26D3148E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E8, &qword_26D3148E8);
  sub_26D303C70();
  sub_26D303FA8();
  v143 = v174;
  sub_26D30F8A8();
  v144 = *sub_26D30AB98();
  v145 = sub_26D2E906C(&qword_2804F9958, &qword_2804F9850, &qword_26D314870, MEMORY[0x277CDD938]);
  v147 = v180;
  v146 = v181;
  View.borderModifier(radius:)(v181, v145, v144);
  (*(v179 + 8))(v143, v146);
  v148 = sub_26D30FBA8();
  sub_26D30F7B8();
  v149 = &v147[*(v182 + 36)];
  *v149 = v148;
  *(v149 + 1) = v150;
  *(v149 + 2) = v151;
  *(v149 + 3) = v152;
  *(v149 + 4) = v153;
  v149[40] = 0;
  sub_26D304088();
  sub_26D30C894();
}

uint64_t sub_26D2FFB18()
{
  sub_26D2E9284(v1, &qword_2804F9858, &qword_26D314878);
  v8 = sub_26D30FBD8();
  sub_26D30F7B8();
  v9 = v2 + *(*(v0 + 232) + 36);
  *v9 = v8;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  *(v9 + 24) = v12;
  *(v9 + 32) = v13;
  *(v9 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9920, &unk_26D314900);
  sub_26D303E98();
  v14 = *(v0 + 360);
  sub_26D30FF58();
  v15 = *(v0 + 344);
  sub_26D2E9114(*(v0 + 384), v15, &qword_2804F9898, &qword_26D3148B8);
  sub_26D2E9114(v3, *(v0 + 392), &qword_2804F9888, &qword_26D3148A8);
  v16 = v2;
  v17 = *(v0 + 240);
  sub_26D2E9114(v16, v17, &qword_2804F9860, &qword_26D314880);
  sub_26D2E9114(v14, *(v0 + 368), &qword_2804F9848, &qword_26D314868);
  v18 = *(v0 + 312);
  *(v0 + 432) = *(v0 + 320);
  *(v0 + 440) = v18;
  *(v0 + 448) = *(v0 + 304);
  *(v0 + 449) = *(v0 + 1385);
  *(v0 + 452) = *(v0 + 1388);
  *(v0 + 456) = *(v0 + 328);
  *(v0 + 464) = *(v0 + 308);
  *(v0 + 465) = *(v0 + 1378);
  *(v0 + 468) = *(v0 + 1381);
  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  *(v0 + 472) = v19;
  *(v0 + 480) = v20;
  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  *(v0 + 488) = v21;
  *(v0 + 496) = v22;
  *(v0 + 504) = 0;
  v23 = *(v0 + 1416);
  *(v0 + 505) = *(v0 + 1400);
  v24 = *(v0 + 1432);
  *(v0 + 553) = *(v0 + 1448);
  *(v0 + 537) = v24;
  *(v0 + 521) = v23;
  *(v0 + 616) = *(v0 + 1511);
  v25 = *(v0 + 1480);
  *(v0 + 601) = *(v0 + 1496);
  v26 = *(v0 + 1464);
  *(v0 + 585) = v25;
  *(v0 + 569) = v26;
  v27 = *(v0 + 432);
  v28 = *(v0 + 448);
  v29 = *(v0 + 480);
  v30 = *(v0 + 248);
  v30[2] = *(v0 + 464);
  v30[3] = v29;
  *v30 = v27;
  v30[1] = v28;
  v31 = *(v0 + 496);
  v32 = *(v0 + 512);
  v33 = *(v0 + 544);
  v30[6] = *(v0 + 528);
  v30[7] = v33;
  v30[4] = v31;
  v30[5] = v32;
  v34 = *(v0 + 560);
  v35 = *(v0 + 576);
  v36 = *(v0 + 608);
  v30[10] = *(v0 + 592);
  v30[11] = v36;
  v30[8] = v34;
  v30[9] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9968, &qword_26D314918);
  sub_26D2E9114(v15, v30 + v37[12], &qword_2804F9898, &qword_26D3148B8);
  v38 = (v30 + v37[16]);
  v39 = *(v0 + 280);
  *(v0 + 624) = *(v0 + 288);
  *(v0 + 632) = v39;
  *(v0 + 640) = *(v0 + 264);
  *(v0 + 641) = *(v0 + 1225);
  *(v0 + 644) = *(v0 + 1228);
  *(v0 + 648) = *(v0 + 296);
  *(v0 + 656) = *(v0 + 272);
  *(v0 + 657) = *(v0 + 1218);
  *(v0 + 660) = *(v0 + 1221);
  *(v0 + 664) = v4;
  *(v0 + 672) = v5;
  *(v0 + 680) = v6;
  *(v0 + 688) = v7;
  *(v0 + 696) = 0;
  v40 = *(v0 + 1256);
  *(v0 + 697) = *(v0 + 1240);
  v41 = *(v0 + 1272);
  *(v0 + 745) = *(v0 + 1288);
  *(v0 + 729) = v41;
  *(v0 + 713) = v40;
  *(v0 + 808) = *(v0 + 1351);
  v42 = *(v0 + 1320);
  *(v0 + 793) = *(v0 + 1336);
  v43 = *(v0 + 1304);
  *(v0 + 777) = v42;
  *(v0 + 761) = v43;
  v44 = *(v0 + 624);
  v45 = *(v0 + 640);
  v46 = *(v0 + 672);
  v38[2] = *(v0 + 656);
  v38[3] = v46;
  *v38 = v44;
  v38[1] = v45;
  v47 = *(v0 + 688);
  v48 = *(v0 + 704);
  v49 = *(v0 + 736);
  v38[6] = *(v0 + 720);
  v38[7] = v49;
  v38[4] = v47;
  v38[5] = v48;
  v50 = *(v0 + 752);
  v51 = *(v0 + 768);
  v52 = *(v0 + 800);
  v38[10] = *(v0 + 784);
  v38[11] = v52;
  v38[8] = v50;
  v38[9] = v51;
  sub_26D2E9114(*(v0 + 392), v30 + v37[20], &qword_2804F9888, &qword_26D3148A8);
  v53 = v30 + v37[24];
  *v53 = 0;
  v53[8] = 1;
  sub_26D2E9114(v17, v30 + v37[28], &qword_2804F9860, &qword_26D314880);
  v54 = *(v0 + 368);
  sub_26D2E9114(v54, v30 + v37[32], &qword_2804F9848, &qword_26D314868);
  sub_26D2E9114(v0 + 432, v0 + 1008, &qword_2804F9920, &unk_26D314900);
  sub_26D2E9114(v0 + 624, v0 + 1008, &qword_2804F9920, &unk_26D314900);
  sub_26D2E9284(*(v0 + 360), &qword_2804F9848, &qword_26D314868);
  sub_26D2E9284(*(v0 + 352), &qword_2804F9860, &qword_26D314880);
  sub_26D2E9284(*(v0 + 336), &qword_2804F9888, &qword_26D3148A8);
  sub_26D2E9284(*(v0 + 384), &qword_2804F9898, &qword_26D3148B8);
  sub_26D2E9284(v54, &qword_2804F9848, &qword_26D314868);
  sub_26D2E9284(v17, &qword_2804F9860, &qword_26D314880);
  sub_26D2E9284(*(v0 + 392), &qword_2804F9888, &qword_26D3148A8);
  v55 = *(v0 + 280);
  *(v0 + 816) = *(v0 + 288);
  *(v0 + 824) = v55;
  *(v0 + 832) = *(v0 + 264);
  *(v0 + 833) = *(v0 + 1225);
  *(v0 + 836) = *(v0 + 1228);
  *(v0 + 840) = *(v0 + 296);
  *(v0 + 848) = *(v0 + 272);
  *(v0 + 849) = *(v0 + 1218);
  *(v0 + 852) = *(v0 + 1221);
  *(v0 + 856) = v4;
  *(v0 + 864) = v5;
  *(v0 + 872) = v6;
  *(v0 + 880) = v7;
  *(v0 + 888) = 0;
  v56 = *(v0 + 1320);
  *(v0 + 953) = *(v0 + 1304);
  *(v0 + 969) = v56;
  *(v0 + 985) = *(v0 + 1336);
  *(v0 + 1000) = *(v0 + 1351);
  v57 = *(v0 + 1256);
  *(v0 + 889) = *(v0 + 1240);
  *(v0 + 905) = v57;
  v58 = *(v0 + 1288);
  *(v0 + 921) = *(v0 + 1272);
  *(v0 + 937) = v58;
  sub_26D2E9284(v0 + 816, &qword_2804F9920, &unk_26D314900);
  sub_26D2E9284(*(v0 + 344), &qword_2804F9898, &qword_26D3148B8);
  v59 = *(v0 + 312);
  *(v0 + 1008) = *(v0 + 320);
  *(v0 + 1016) = v59;
  *(v0 + 1024) = *(v0 + 304);
  *(v0 + 1025) = *(v0 + 1385);
  *(v0 + 1028) = *(v0 + 1388);
  *(v0 + 1032) = *(v0 + 328);
  *(v0 + 1040) = *(v0 + 308);
  *(v0 + 1041) = *(v0 + 1378);
  *(v0 + 1044) = *(v0 + 1381);
  *(v0 + 1048) = v19;
  *(v0 + 1056) = v20;
  *(v0 + 1064) = v21;
  *(v0 + 1072) = v22;
  *(v0 + 1080) = 0;
  v60 = *(v0 + 1480);
  *(v0 + 1145) = *(v0 + 1464);
  *(v0 + 1161) = v60;
  *(v0 + 1177) = *(v0 + 1496);
  *(v0 + 1192) = *(v0 + 1511);
  v61 = *(v0 + 1416);
  *(v0 + 1081) = *(v0 + 1400);
  *(v0 + 1097) = v61;
  v62 = *(v0 + 1448);
  *(v0 + 1113) = *(v0 + 1432);
  *(v0 + 1129) = v62;
  return sub_26D2E9284(v0 + 1008, &qword_2804F9920, &unk_26D314900);
}

uint64_t sub_26D300108@<X0>(uint64_t a1@<X8>)
{
  v149 = a1;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9978, &qword_26D314958);
  v140 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v1);
  v3 = &v135 - v2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9980, &qword_26D314960);
  MEMORY[0x28223BE20](v136, v4);
  v138 = &v135 - v5;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9988, &qword_26D314968);
  MEMORY[0x28223BE20](v137, v6);
  v141 = &v135 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9990, &qword_26D314970);
  MEMORY[0x28223BE20](v139, v8);
  v145 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9998, &unk_26D314978);
  v11 = *(v10 - 8);
  v146 = v10;
  v147 = v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v143 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v142 = &v135 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v135 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v135 - v27;
  v29 = sub_26D30F5B8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99A0, &qword_26D314988);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v148 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v150 = &v135 - v39;
  sub_26D2FE200();
  sub_26D3060F8(v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_26D2E9284(v28, &qword_2804F9270, &qword_26D314510);
    v40 = 1;
    v41 = v150;
    v42 = v146;
  }

  else
  {
    (*(v30 + 32))(v33, v28, v29);
    (*(v30 + 16))(v25, v33, v29);
    (*(v30 + 56))(v25, 0, 1, v29);
    sub_26D2E9114(v25, v21, &qword_2804F9270, &qword_26D314510);
    v43 = swift_allocObject();
    v43[2] = sub_26D300E40;
    v43[3] = 0;
    v43[4] = sub_26D300F5C;
    v43[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99C0, &qword_26D3149A8);
    sub_26D304268();
    sub_26D30F7A8();
    sub_26D2E9284(v25, &qword_2804F9270, &qword_26D314510);
    sub_26D2FE200();
    v44 = sub_26D307038();

    if (v44)
    {
      v45 = 2;
    }

    else
    {
      v45 = 0;
    }

    v46 = v138;
    (*(v140 + 32))(v138, v3, v144);
    v46[*(v136 + 36)] = v45;
    sub_26D30FFD8();
    sub_26D30F878();
    v47 = v46;
    v48 = v141;
    sub_26D2F2534(v47, v141, &qword_2804F9980, &qword_26D314960);
    v49 = (v48 + *(v137 + 36));
    v50 = *&v181[39];
    *v49 = *&v181[23];
    v49[1] = v50;
    v49[2] = *&v181[55];
    v51 = sub_26D30FBC8();
    sub_26D30F7B8();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v48;
    v61 = v145;
    sub_26D2F2534(v60, v145, &qword_2804F9988, &qword_26D314968);
    v62 = v61 + *(v139 + 36);
    *v62 = v51;
    *(v62 + 8) = v53;
    *(v62 + 16) = v55;
    *(v62 + 24) = v57;
    *(v62 + 32) = v59;
    *(v62 + 40) = 0;
    v63 = sub_26D30FBD8();
    sub_26D30F7B8();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    (*(v30 + 8))(v33, v29);
    v72 = v61;
    v73 = v143;
    sub_26D2F2534(v72, v143, &qword_2804F9990, &qword_26D314970);
    v74 = v146;
    v75 = v73 + *(v146 + 36);
    *v75 = v63;
    *(v75 + 8) = v65;
    *(v75 + 16) = v67;
    *(v75 + 24) = v69;
    *(v75 + 32) = v71;
    *(v75 + 40) = 0;
    v76 = v73;
    v77 = v142;
    sub_26D2F2534(v76, v142, &qword_2804F9998, &unk_26D314978);
    v78 = v150;
    sub_26D2F2534(v77, v150, &qword_2804F9998, &unk_26D314978);
    v40 = 0;
    v41 = v78;
    v42 = v74;
  }

  (*(v147 + 56))(v41, v40, 1, v42);
  v147 = sub_26D30FA88();
  v157 = 0;
  sub_26D2FE200();
  v79 = sub_26D306B90();
  v81 = v80;

  if (v81)
  {
    v85 = v79;
  }

  else
  {
    v85 = 0;
  }

  v86 = 0xE000000000000000;
  if (v81)
  {
    v87 = v81;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  v176 = v85;
  v177 = v87;
  sub_26D2E9230(v82, v83, v84);
  v88 = sub_26D30FD58();
  v90 = v89;
  v92 = v91;
  sub_26D30FCF8();
  v93 = sub_26D30FD28();
  v144 = v94;
  v145 = v93;
  LODWORD(v143) = v95;
  v146 = v96;

  sub_26D2E92E4(v88, v90, v92 & 1);

  sub_26D2FE200();
  v97 = sub_26D3066C4();

  if (v97)
  {
    v176 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99F0, &qword_26D3149C8);
    sub_26D2E906C(&qword_2804F99F8, &qword_2804F99F0, &qword_26D3149C8, MEMORY[0x277D83958]);
    v98 = sub_26D310098();
    v86 = v99;
  }

  else
  {
    v98 = 0;
  }

  v176 = v98;
  v177 = v86;
  v100 = sub_26D30FD58();
  v102 = v101;
  v104 = v103;
  sub_26D30FC28();
  v105 = sub_26D30FD28();
  v107 = v106;
  v109 = v108;
  v142 = v110;

  sub_26D2E92E4(v100, v102, v104 & 1);

  v111 = sub_26D30FBC8();
  sub_26D30F7B8();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v183 = v109 & 1;
  v181[87] = 0;
  v120 = sub_26D30FB58();
  LOBYTE(v100) = v143 & 1;
  v181[71] = v143 & 1;
  *&v174 = v105;
  *(&v174 + 1) = v107;
  v175[0] = v109 & 1;
  *&v175[1] = v158;
  *&v175[4] = *(&v158 + 3);
  *&v175[8] = v142;
  v175[16] = v111;
  *&v175[17] = *v182;
  *&v175[20] = *&v182[3];
  *&v175[24] = v113;
  *&v175[32] = v115;
  *&v175[40] = v117;
  *&v175[48] = v119;
  v175[56] = 0;
  *&v175[57] = v184;
  v175[59] = v185;
  *&v175[60] = v120;
  LODWORD(v143) = v143 & 1;
  v154 = *&v175[32];
  v155 = *&v175[48];
  v152 = *v175;
  v153 = *&v175[16];
  v151 = v174;
  v176 = v105;
  v177 = v107;
  v178 = v109 & 1;
  *(&v179 + 3) = *(&v158 + 3);
  LODWORD(v179) = v158;
  *(&v179 + 7) = v142;
  HIBYTE(v179) = v111;
  *(v180 + 3) = *&v182[3];
  LODWORD(v180[0]) = *v182;
  *(v180 + 7) = v113;
  *(v180 + 15) = v115;
  *(&v180[1] + 7) = v117;
  *(&v180[1] + 15) = v119;
  BYTE7(v180[2]) = 0;
  BYTE10(v180[2]) = v185;
  WORD4(v180[2]) = v184;
  *(&v180[2] + 11) = v120;
  v122 = v144;
  v121 = v145;
  sub_26D2E9348(v145, v144, v100);
  v123 = v146;

  sub_26D2E9114(&v174, v165, &qword_2804F9A00, &qword_26D3149D0);
  sub_26D2E9284(&v176, &qword_2804F9A00, &qword_26D3149D0);
  sub_26D2E92E4(v121, v122, v100);

  v163 = v154;
  v164 = v155;
  v161 = v152;
  v162 = v153;
  v160 = v151;
  v172 = v154;
  v173 = v155;
  *(&v159 + 1) = v174;
  DWORD1(v159) = *(&v174 + 3);
  *&v158 = v121;
  *(&v158 + 1) = v122;
  LOBYTE(v159) = v143;
  *(&v159 + 1) = v123;
  v165[0] = v121;
  v165[1] = v122;
  v166 = v143;
  *&v167[3] = *(&v174 + 3);
  *v167 = v174;
  v168 = v123;
  v170 = v152;
  v171 = v153;
  v169 = v151;
  sub_26D2E9114(&v158, &v176, &qword_2804F99A8, &qword_26D314990);
  sub_26D2E9284(v165, &qword_2804F99A8, &qword_26D314990);
  *&v156[55] = v161;
  *&v156[71] = v162;
  *&v156[87] = v163;
  *&v156[103] = v164;
  *&v156[7] = v158;
  *&v156[23] = v159;
  *&v156[39] = v160;
  LOBYTE(v123) = v157;
  v124 = v150;
  v125 = v148;
  sub_26D2E9114(v150, v148, &qword_2804F99A0, &qword_26D314988);
  v126 = v149;
  sub_26D2E9114(v125, v149, &qword_2804F99A0, &qword_26D314988);
  v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99B0, &qword_26D314998) + 48);
  *&v175[81] = *&v156[80];
  *&v175[65] = *&v156[64];
  *&v175[97] = *&v156[96];
  *&v175[1] = *v156;
  v128 = v126 + v127;
  v129 = v147;
  v174 = v147;
  v175[0] = v123;
  *&v175[112] = *&v156[111];
  *&v175[17] = *&v156[16];
  *&v175[33] = *&v156[32];
  *&v175[49] = *&v156[48];
  *(v128 + 128) = *&v156[111];
  v130 = *&v175[96];
  *(v128 + 96) = *&v175[80];
  *(v128 + 112) = v130;
  v131 = *&v175[32];
  *(v128 + 32) = *&v175[16];
  *(v128 + 48) = v131;
  v132 = *v175;
  *v128 = v174;
  *(v128 + 16) = v132;
  v133 = *&v175[64];
  *(v128 + 64) = *&v175[48];
  *(v128 + 80) = v133;
  sub_26D2E9114(&v174, &v176, &qword_2804F99B8, &qword_26D3149A0);
  sub_26D2E9284(v124, &qword_2804F99A0, &qword_26D314988);
  v180[3] = *&v156[64];
  v180[4] = *&v156[80];
  *v181 = *&v156[96];
  v179 = *v156;
  v180[0] = *&v156[16];
  v180[1] = *&v156[32];
  v176 = v129;
  v177 = 0;
  v178 = v123;
  *&v181[15] = *&v156[111];
  v180[2] = *&v156[48];
  sub_26D2E9284(&v176, &qword_2804F99B8, &qword_26D3149A0);
  return sub_26D2E9284(v125, &qword_2804F99A0, &qword_26D314988);
}

uint64_t sub_26D300E40@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26D30FEE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v8 = sub_26D30FEF8();
  result = (*(v4 + 8))(v7, v3);
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  return result;
}

uint64_t sub_26D300F5C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26D30FA78();
  sub_26D30FE98();
  v4 = sub_26D30FE88();

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = 2;
  return result;
}

uint64_t sub_26D300FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_26D307038())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  return MEMORY[0x26D6BB6F0](&v7, a2, &type metadata for IconMaskModifier, a3);
}

uint64_t sub_26D301040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9970, &qword_26D314950);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98D8, &qword_26D3148D8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98B8, &qword_26D3148D0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v32 - v14;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1)
  {
    v18 = sub_26D30FBD8();
    sub_26D30F7B8();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9868, &qword_26D314888);
    (*(*(v27 - 8) + 16))(v10, a1, v27);
    v28 = &v10[*(v7 + 36)];
    *v28 = v18;
    *(v28 + 1) = v20;
    *(v28 + 2) = v22;
    *(v28 + 3) = v24;
    *(v28 + 4) = v26;
    v28[40] = 0;
    sub_26D2E9114(v10, v6, &qword_2804F98D8, &qword_26D3148D8);
    swift_storeEnumTagMultiPayload();
    sub_26D303664();
    sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868, &qword_26D314888, MEMORY[0x277CDD6E0]);
    sub_26D30FAF8();
    sub_26D2E9284(v10, &qword_2804F98D8, &qword_26D3148D8);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9868, &qword_26D314888);
    (*(*(v29 - 8) + 16))(v6, a1, v29);
    swift_storeEnumTagMultiPayload();
    sub_26D303664();
    sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868, &qword_26D314888, MEMORY[0x277CDD6E0]);
    sub_26D30FAF8();
  }

  v30 = v33;
  sub_26D2F2534(v15, v33, &qword_2804F98B8, &qword_26D3148D0);
  return (*(v12 + 56))(v30, 0, 1, v11);
}

__n128 sub_26D301414@<Q0>(uint64_t a1@<X8>)
{
  *&v26 = sub_26D2F96AC(0x6F4D206E7261654CLL, 0xEA00000000006572);
  *(&v26 + 1) = v2;
  sub_26D2E9230(v26, v2, v3);
  v4 = sub_26D30FD58();
  v6 = v5;
  v8 = v7;
  sub_26D30FCF8();
  v9 = sub_26D30FD28();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_26D2E92E4(v4, v6, v8 & 1);

  LOBYTE(v4) = sub_26D30FC18();
  sub_26D30F7B8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_26D30FFD8();
  sub_26D30F968();
  *&v25[55] = v29;
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v4;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v25[64];
  *(a1 + 153) = *&v25[80];
  *(a1 + 169) = *&v25[96];
  *(a1 + 184) = *(&v32 + 1);
  *(a1 + 73) = *v25;
  *(a1 + 89) = *&v25[16];
  result = *&v25[32];
  *(a1 + 105) = *&v25[32];
  *(a1 + 121) = *&v25[48];
  return result;
}

uint64_t sub_26D301604@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for WhatToTestViewAllPlatforms(0) + 20);
  type metadata accessor for WhatToTestViewModel(0);
  sub_26D30236C(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  result = sub_26D30F828();
  *v2 = result;
  v2[8] = v4 & 1;
  return result;
}

uint64_t sub_26D3016C8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26D301728()
{
  type metadata accessor for WhatToTestViewModel(0);
  sub_26D30236C(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  return sub_26D30F828();
}

uint64_t sub_26D301798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_26D2F2534(a1, a4, &qword_2804F93C8, &qword_26D314700);
  result = type metadata accessor for WhatToTestViewAllPlatforms(0);
  v8 = a4 + *(result + 20);
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  return result;
}

uint64_t sub_26D3017FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9750, &qword_26D3146D8);
  sub_26D2FE434();
  return sub_26D30F928();
}

uint64_t sub_26D30186C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97A0, qword_26D314708);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v6 pointSize];

  v7 = sub_26D30FC58();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_26D30FCA8();
  sub_26D2E9284(v5, &qword_2804F97A0, qword_26D314708);
  sub_26D30FC88();
  v8 = sub_26D30FCD8();

  return v8;
}