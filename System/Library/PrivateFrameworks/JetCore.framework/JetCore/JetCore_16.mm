id sub_1DB46D38C()
{
  v1 = v0[1];
  if (((v1 >> 60) & 3) > 1)
  {
    if (*v0 | v1 ^ 0x2000000000000000)
    {
      v5 = [objc_opt_self() defaultSignatureVerifier];
    }

    else
    {
      v5 = [objc_opt_self() unsafeIgnoreSignatureVerifier];
    }

    return v5;
  }

  else
  {
    v2 = sub_1DB509CD0();
    v3 = [objc_opt_self() signatureVerifierWithCertificate_];

    return v3;
  }
}

__int128 *Models.ToastAction.init(actionMetrics:icon:title:message:duration:)@<X0>(__int128 *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *result;
  v9 = a2[2];
  v10 = a2[4];
  *(a7 + 64) = a2[3];
  *(a7 + 80) = v10;
  v11 = *a2;
  v12 = a2[1];
  *a7 = v8;
  *(a7 + 16) = v11;
  v13 = *(a2 + 10);
  *(a7 + 32) = v12;
  *(a7 + 48) = v9;
  *(a7 + 96) = v13;
  *(a7 + 104) = a3;
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 128) = a6;
  *(a7 + 136) = a8;
  return result;
}

uint64_t sub_1DB46D4F0()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x656C746974;
  v4 = 0x6567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852793705;
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

uint64_t sub_1DB46D58C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB46E750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB46D5B4(uint64_t a1)
{
  v2 = sub_1DB46DCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB46D5F0(uint64_t a1)
{
  v2 = sub_1DB46DCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.ToastAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45B80, &qword_1DB51D240);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - v7;
  v9 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB46DCA8();
  sub_1DB50BDF0();
  if (!v2)
  {
    v10 = v6;
    v61 = a2;
    LOBYTE(v68) = 0;
    sub_1DB37C0CC();
    sub_1DB50B710();
    if (*&v74[0])
    {
      v11 = *&v74[0];
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    if (*&v74[0])
    {
      v12 = *(&v74[0] + 1);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC8];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44520, &qword_1DB5151E0);
    LOBYTE(v66[0]) = 1;
    sub_1DB46DCFC();
    sub_1DB50B710();
    v60 = v12;
    if (v68)
    {
      sub_1DB3EB6A4(&v68, v74);
      sub_1DB30623C(&v68, &qword_1ECC44520, &qword_1DB5151E0);
    }

    else
    {
      sub_1DB30623C(&v68, &qword_1ECC45B90, &qword_1DB51D248);
      memset(v74, 0, sizeof(v74));
      v75 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    LOBYTE(v66[0]) = 2;
    sub_1DB3980E8();
    sub_1DB50B710();
    v59 = v11;
    v14 = *(&v68 + 1);
    v58 = v68;
    if (*(&v68 + 1) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v68;
    }

    if (*(&v68 + 1) == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(&v68 + 1);
    }

    v56 = v16;
    v57 = v15;
    LOBYTE(v66[0]) = 3;
    sub_1DB50B710();
    v55 = v14;
    if (*(&v68 + 1) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v68;
    }

    v54 = *(&v68 + 1);
    if (*(&v68 + 1) == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(&v68 + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44390, &unk_1DB51EB60);
    LOBYTE(v66[0]) = 4;
    sub_1DB46DDE0();
    sub_1DB50B710();
    v55 = v18;
    v58 = v17;
    v19 = *&v68;
    v20 = BYTE9(v68);
    v21 = BYTE9(v68) | BYTE8(v68);
    sub_1DB46DE84(v74, v66);
    v22 = v10;
    v23 = v59;
    if (*&v66[0])
    {
      sub_1DB30623C(v74, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v10 + 8))(v8, v5);
      v70 = v66[2];
      v71 = v66[3];
      v72 = v66[4];
      v73 = v67;
      v68 = v66[0];
      v69 = v66[1];
    }

    else
    {
      *(&v72 + 1) = &_s12_EmptySourceVN;
      v73 = &off_1EECE8048;
      sub_1DB30BE90(&v71, v63);
      v53 = v20;
      v24 = v64;
      v25 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v26 = *(v25 + 24);
      LODWORD(v54) = v21;
      v52 = v26(v24, v25);
      v27 = v64;
      v28 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v51 = (*(v28 + 32))(v27, v28);
      v50 = v29;
      v30 = v64;
      v31 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v49 = (*(v31 + 40))(v30, v31);
      v33 = v64;
      v32 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v34 = *(v32 + 48);
      v35 = v32;
      v20 = v53;
      v36 = v34(v33, v35);
      LOBYTE(v21) = v54;
      v37 = v36;
      v39 = v38;
      sub_1DB30623C(v74, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v22 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_0(v63);
      *&v68 = v52;
      *(&v68 + 1) = v51;
      LOBYTE(v69) = v50 & 1;
      *(&v69 + 1) = v49;
      *&v70 = v37;
      *(&v70 + 1) = v39;
      if (*&v66[0])
      {
        sub_1DB30623C(v66, &qword_1ECC45B98, &qword_1DB51D250);
      }
    }

    v40 = 0.0;
    if (!v20)
    {
      v40 = v19;
    }

    v41 = v60;
    v42 = v61;
    *v61 = v23;
    v42[1] = v41;
    if (v21)
    {
      v40 = 1.5;
    }

    v43 = v71;
    *(v42 + 3) = v70;
    *(v42 + 4) = v43;
    *(v42 + 5) = v72;
    v44 = v73;
    v45 = v69;
    *(v42 + 1) = v68;
    *(v42 + 2) = v45;
    v47 = v56;
    v46 = v57;
    v42[12] = v44;
    v42[13] = v46;
    v48 = v58;
    v42[14] = v47;
    v42[15] = v48;
    v42[16] = v55;
    *(v42 + 17) = v40;
  }

  return __swift_destroy_boxed_opaque_existential_0(v62);
}

unint64_t sub_1DB46DCA8()
{
  result = qword_1ECC45B88;
  if (!qword_1ECC45B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45B88);
  }

  return result;
}

unint64_t sub_1DB46DCFC()
{
  result = qword_1ECC44610;
  if (!qword_1ECC44610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44520, &qword_1DB5151E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44610);
  }

  return result;
}

uint64_t sub_1DB46DD78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DB46DDE0()
{
  result = qword_1ECC44398;
  if (!qword_1ECC44398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44390, &unk_1DB51EB60);
    sub_1DB46DD78(&qword_1ECC443A0, &qword_1ECC443A8, &qword_1DB514D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44398);
  }

  return result;
}

uint64_t sub_1DB46DE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45B98, &qword_1DB51D250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Models.ToastAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v25);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v27);

  v7 = sub_1DB320870(v27, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v27);
  v23[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v27, v23, v24);
  sub_1DB3151CC(v25);
  v8 = v24[0];
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v27);
  v24[0] = v6;
  MediaArtwork.init(deserializing:using:)(v27, v24, v25);
  if (v3)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v27);
    v28 = JSONObject.string.getter();
    v22 = v10;
    sub_1DB3151CC(v27);
    JSONObject.subscript.getter(0x6567617373656DLL, 0xE700000000000000, v24);
    v11 = JSONObject.string.getter();
    v13 = v12;
    sub_1DB3151CC(v24);
    JSONObject.subscript.getter(0x6E6F697461727564, 0xE800000000000000, v23);
    v14 = JSONObject.double.getter();
    v16 = v15;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v23);
    v17 = *&v14;
    *a3 = v7;
    *(a3 + 8) = v8;
    if (v16)
    {
      v17 = 1.5;
    }

    v18 = v25[3];
    *(a3 + 48) = v25[2];
    *(a3 + 64) = v18;
    *(a3 + 80) = v25[4];
    v19 = v26;
    v20 = v25[1];
    *(a3 + 16) = v25[0];
    *(a3 + 32) = v20;
    v21 = v28;
    *(a3 + 96) = v19;
    *(a3 + 104) = v21;
    *(a3 + 112) = v22;
    *(a3 + 120) = v11;
    *(a3 + 128) = v13;
    *(a3 + 136) = v17;
  }

  return result;
}

uint64_t Models.ToastAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.ToastAction.title.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t Models.ToastAction.message.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t Models.ToastAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45BA0, &qword_1DB51D258);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB46DCA8();
  sub_1DB50BE40();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1DB37BCC8();

  sub_1DB50B8A0();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v12) = 1;
    sub_1DB46E428();
    sub_1DB50B8A0();
    LOBYTE(v12) = 2;
    sub_1DB50B800();
    LOBYTE(v12) = 3;
    sub_1DB50B800();
    LOBYTE(v12) = 4;
    sub_1DB50B880();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DB46E428()
{
  result = qword_1ECC45BA8;
  if (!qword_1ECC45BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BA8);
  }

  return result;
}

__n128 Models.ToastAction.init(actionMetrics:title:message:duration:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>, double a7@<D0>)
{
  v16 = &_s12_EmptySourceVN;
  v17 = &off_1EECE8048;
  MediaArtwork.init(_:)(&v15, &a6[1]);
  result = *a1;
  *a6 = *a1;
  a6[6].n128_u64[1] = a2;
  a6[7].n128_u64[0] = a3;
  a6[7].n128_u64[1] = a4;
  a6[8].n128_u64[0] = a5;
  a6[8].n128_f64[1] = a7;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1DB46E57C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1DB46E5C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB46E64C()
{
  result = qword_1ECC45BB0;
  if (!qword_1ECC45BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BB0);
  }

  return result;
}

unint64_t sub_1DB46E6A4()
{
  result = qword_1ECC45BB8;
  if (!qword_1ECC45BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BB8);
  }

  return result;
}

unint64_t sub_1DB46E6FC()
{
  result = qword_1ECC45BC0;
  if (!qword_1ECC45BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45BC0);
  }

  return result;
}

uint64_t sub_1DB46E750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

void sub_1DB46E918(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1DB46E9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DB509B10();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

unint64_t Bag.Stubs.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t Bag.Stubs.withArray(_:forKey:)@<X0>(void *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_1DB50A980();
  v12[3] = sub_1DB336FD4(0, &qword_1ECC45BD0, 0x1E695DEC8);
  v12[0] = v6;
  *a3 = v5;
  v7 = sub_1DB50A650();
  v9 = v8;
  sub_1DB300B14(v12, v11);

  sub_1DB30D454(v11, v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t Bag.Stubs.withBool(_:forKey:)@<X0>(char a1@<W0>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v12[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v12[0] = v6;
  *a3 = v5;
  v7 = sub_1DB50A650();
  v9 = v8;
  sub_1DB300B14(v12, v11);

  sub_1DB30D454(v11, v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t Bag.Stubs.withDouble(_:forKey:)@<X0>(void *a2@<X8>, double a3@<D0>)
{
  v5 = *v3;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v12[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v12[0] = v6;
  *a2 = v5;
  v7 = sub_1DB50A650();
  v9 = v8;
  sub_1DB300B14(v12, v11);

  sub_1DB30D454(v11, v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t Bag.Stubs.withInteger(_:forKey:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v12[3] = sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v12[0] = v6;
  *a3 = v5;
  v7 = sub_1DB50A650();
  v9 = v8;
  sub_1DB300B14(v12, v11);

  sub_1DB30D454(v11, v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t Bag.Stubs.withString(_:forKey:)@<X0>(void *a4@<X8>)
{
  v6 = *v4;
  v7 = sub_1DB50A620();
  v13[3] = sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
  v13[0] = v7;
  *a4 = v6;
  v8 = sub_1DB50A650();
  v10 = v9;
  sub_1DB300B14(v13, v12);

  sub_1DB30D454(v12, v8, v10);
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t Bag.Stubs.withURL(_:forKey:)@<X0>(void *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_1DB509BC0();
  v12[3] = sub_1DB336FD4(0, &qword_1ECC45BE8, 0x1E695DFF8);
  v12[0] = v6;
  *a3 = v5;
  v7 = sub_1DB50A650();
  v9 = v8;
  sub_1DB300B14(v12, v11);

  sub_1DB30D454(v11, v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t Bag.Stubs.withDictionary(_:forKey:)@<X0>(void *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_1DB50A490();
  v12[3] = sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  v12[0] = v6;
  *a3 = v5;
  v7 = sub_1DB50A650();
  v9 = v8;
  sub_1DB300B14(v12, v11);

  sub_1DB30D454(v11, v7, v9);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

void Bag.init(mockProfile:stubs:)(void *a3@<X8>)
{
  v18 = a3;
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E698CB38]) init];

  v8 = sub_1DB50A490();

  [v7 setData_];

  sub_1DB509D10();
  v9 = sub_1DB509D40();
  (*(v4 + 8))(v6, v3);
  [v7 setExpirationDate_];

  v10 = [objc_opt_self() currentProcess];
  [v7 setProcessInfo_];

  v11 = sub_1DB50A620();
  [v7 setProfile_];

  v12 = sub_1DB50A620();
  [v7 setProfileVersion_];

  v19[0] = 0;
  v13 = [v7 buildWithError_];
  if (v13)
  {
    v14 = v13;
    v15 = v19[0];

    *v18 = v14;
  }

  else
  {
    v16 = v19[0];
    sub_1DB509B20();

    swift_willThrow();
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52F840);
    swift_getErrorValue();
    sub_1DB50BA00();
    sub_1DB50B580();
    __break(1u);
  }
}

id sub_1DB46F4C8(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7JetCore8ProxyBag_bag];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_1DB50A650();
    v6 = sub_1DB50A620();
  }

  return v6;
}

id sub_1DB46F880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxyBag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of NetRequestEncoder.encodeRequest(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1DB46FA44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *(v3 - 2);
    v10 = *(v3 - 1);
    v11 = *v3;
    if (v8 <= 2)
    {
      if (*i)
      {
        if (v8 == 1)
        {
          if (v11 != 1)
          {
            goto LABEL_33;
          }

          sub_1DB31EB94(*(i - 2), *(i - 1), 1);
          sub_1DB31EB94(v9, v10, 1);
          if (*&v6 != *&v9)
          {
            return 0;
          }
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_33;
          }

          sub_1DB31EB94(*(i - 2), *(i - 1), 2);
          sub_1DB31EB94(v9, v10, 2);
          if (v6 != v9)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          goto LABEL_33;
        }

        sub_1DB31EB94(*(i - 2), *(i - 1), 0);
        sub_1DB31EB94(v9, v10, 0);
        if ((v9 ^ v6))
        {
          return 0;
        }
      }

      goto LABEL_6;
    }

    if (v8 != 3)
    {
      break;
    }

    if (v11 != 3)
    {
      goto LABEL_32;
    }

    if (v6 == v9 && v7 == v10)
    {
      sub_1DB314BBC(*(i - 2), *(i - 1), 3);
      sub_1DB314BBC(v6, v7, 3);
      sub_1DB31EB94(v6, v7, 3);
      sub_1DB31EB94(v6, v7, 3);
    }

    else
    {
      v5 = sub_1DB50BA30();
      sub_1DB314BBC(v9, v10, 3);
      sub_1DB314BBC(v6, v7, 3);
      sub_1DB31EB94(v6, v7, 3);
      sub_1DB31EB94(v9, v10, 3);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_6:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v8 == 4)
  {
    if (v11 != 4)
    {
      goto LABEL_32;
    }

    sub_1DB314BBC(*(v3 - 2), *(v3 - 1), 4);
    sub_1DB314BBC(v6, v7, 4);
    sub_1DB314BBC(v9, v10, 4);
    sub_1DB314BBC(v6, v7, 4);
    v12 = sub_1DB46FA44(v6, v9);
    sub_1DB31EB94(v6, v7, 4);
    sub_1DB31EB94(v9, v10, 4);
    sub_1DB31EB94(v9, v10, 4);
    sub_1DB31EB94(v6, v7, 4);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v11 == 5)
  {
    sub_1DB314BBC(*(v3 - 2), *(v3 - 1), 5);
    sub_1DB314BBC(v6, v7, 5);
    sub_1DB314BBC(v9, v10, 5);
    sub_1DB314BBC(v6, v7, 5);
    v13 = sub_1DB33C710(v6, v9);
    sub_1DB31EB94(v6, v7, 5);
    sub_1DB31EB94(v9, v10, 5);
    sub_1DB31EB94(v9, v10, 5);
    sub_1DB31EB94(v6, v7, 5);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_32:
  sub_1DB314BBC(*(i - 2), *(i - 1), *i);

LABEL_33:
  sub_1DB314BBC(v9, v10, v11);
  sub_1DB31EB94(v6, v7, v8);
  sub_1DB31EB94(v9, v10, v11);
  sub_1DB31EB94(v6, v7, v8);
  return 0;
}

uint64_t sub_1DB46FE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DB50BA30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

JetCore::JetPackPath __swiftcall JetPackPath.init(_:)(Swift::String a1)
{
  v38 = v1;
  v41[0] = 47;
  v41[1] = 0xE100000000000000;
  v40 = v41;
  result.components._rawValue = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB3F1A78, v39, a1._countAndFlagsBits, a1._object, v41);
  rawValue = result.components._rawValue;
  v4 = *(result.components._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = result.components._rawValue + 56;
    v37 = result.components._rawValue + 56;
    do
    {
      v8 = &v7[32 * v6];
      v9 = v6;
      while (1)
      {
        if (v9 >= rawValue[2])
        {
          __break(1u);
          goto LABEL_33;
        }

        v10 = *(v8 - 3);
        v11 = *(v8 - 2);
        if ((v11 ^ v10) >= 0x4000)
        {
          v12 = *(v8 - 1);
          v13 = *v8;
          v14 = v12 == 46 && v13 == 0xE100000000000000;
          v15 = v14 && v10 >> 16 == 0;
          if (!v15 || v11 >> 16 != 1)
          {
            result.components._rawValue = sub_1DB50B8E0();
            if ((result.components._rawValue & 1) == 0)
            {
              break;
            }
          }
        }

        ++v9;
        v8 += 32;
        if (v4 == v9)
        {
          goto LABEL_23;
        }
      }

      result.components._rawValue = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v5;
      if ((result.components._rawValue & 1) == 0)
      {
        result.components._rawValue = sub_1DB34142C(0, v5[2] + 1, 1);
        v5 = v41[0];
      }

      v18 = v5[2];
      v17 = v5[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v21 = v18 + 1;
        v36 = v18;
        result.components._rawValue = sub_1DB34142C((v17 > 1), v18 + 1, 1);
        v18 = v36;
        v19 = v21;
        v5 = v41[0];
      }

      v6 = v9 + 1;
      v5[2] = v19;
      v20 = &v5[4 * v18];
      v20[4] = v10;
      v20[5] = v11;
      v20[6] = v12;
      v20[7] = v13;
      v7 = v37;
    }

    while (v4 - 1 != v9);
  }

LABEL_23:

  v22 = v5[2];
  if (v22)
  {
    v41[0] = MEMORY[0x1E69E7CC0];
    result.components._rawValue = sub_1DB34130C(0, v22, 0);
    v23 = 0;
    v24 = v41[0];
    v25 = v5 + 7;
    while (v23 < v5[2])
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;

      v30 = MEMORY[0x1E1285BF0](v26, v27, v28, v29);
      v32 = v31;

      v41[0] = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        result.components._rawValue = sub_1DB34130C((v33 > 1), v34 + 1, 1);
        v24 = v41[0];
      }

      ++v23;
      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v25 += 4;
      if (v22 == v23)
      {

        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *v38 = v24;
  }

  return result;
}

JetCore::JetPackPath sub_1DB47015C()
{
  v0._countAndFlagsBits = 0x736A2E707061;
  v0._object = 0xE600000000000000;
  return JetPackPath.init(_:)(v0);
}

uint64_t static JetPackPath.sourcePath.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC42140 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECC45C00;
}

JetCore::JetPackPath __swiftcall JetPackPath.appending(_:)(JetCore::JetPackPath a1)
{
  v3 = v1;
  v4 = *a1.components._rawValue;
  v6 = *v2;

  result.components._rawValue = sub_1DB3992E4(v4);
  *v3 = v6;
  return result;
}

uint64_t JetPackPath.string.getter()
{
  if (!*(*v0 + 16))
  {
    return 46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB330B04();
  v1 = sub_1DB50A5E0();

  return v1;
}

uint64_t JetPackPath.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  result = MEMORY[0x1E12871F0](*(*v1 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_1DB50A740();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t JetPackPath.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1DB50A740();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1DB50BD30();
}

uint64_t sub_1DB47040C(uint64_t a1)
{
  v2 = *v1;
  result = MEMORY[0x1E12871F0](*(*v1 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_1DB50A740();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1DB470488(uint64_t a1)
{
  v2 = *v1;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1DB50A740();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return sub_1DB50BD30();
}

unint64_t sub_1DB470520()
{
  result = qword_1ECC45C08;
  if (!qword_1ECC45C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45C08);
  }

  return result;
}

uint64_t JetPackResourceBundle.fileData(atPath:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  JetPackPath.init(_:)(v8);
  v9 = (*(a4 + 16))(&v11, a3, a4);

  return v9;
}

uint64_t JetPackResourceBundle.version.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50A6B0();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (*(a2 + 8))(0x6E6F6973726576, 0xE700000000000000, a1, a2, v5);
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  v9 = v6;
  v10 = v7;
  sub_1DB50A690();
  v11 = sub_1DB50A670();
  sub_1DB32E340(v9, v10);
  return v11;
}

uint64_t InMemoryJetPackResourceBundle.data(withName:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 16 * v4;
  v7 = *v6;
  sub_1DB30C1AC(*v6, *(v6 + 8));
  return v7;
}

uint64_t InMemoryJetPackResourceBundle.fileData(atPath:)(uint64_t *a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1DB30EFC0(*a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 56) + 16 * v3;
  v6 = *v5;
  sub_1DB30C1AC(*v5, *(v5 + 8));
  return v6;
}

uint64_t InMemoryJetPackResourceBundle.contentsOfDirectory(atPath:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v24 = (v2 + 40);
  v23 = MEMORY[0x1E69E7CC0];
  v25 = v3;
  v26 = v2;
LABEL_5:
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v27 = *(*(v3 + 48) + ((v10 << 9) | (8 * v12)));
    v13 = *(v27 + 16);
    v14 = *(v2 + 16);
    v15 = v13 - v14;
    if (v13 >= v14)
    {
      if (v13)
      {
        v16 = (v27 + 40);
        v17 = v24;
        while (v14)
        {
          result = *(v16 - 1);
          if (result != *(v17 - 1) || *v16 != *v17)
          {
            result = sub_1DB50BA30();
            if ((result & 1) == 0)
            {
              v3 = v25;
              v2 = v26;
              goto LABEL_5;
            }
          }

          --v14;
          v16 += 2;
          v17 += 2;
          if (!--v13)
          {
            break;
          }
        }
      }

      v3 = v25;
      v2 = v26;
      if (v15 == 1)
      {

        v19 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DB34144C(0, *(v23 + 16) + 1, 1);
          v19 = v23;
        }

        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          result = sub_1DB34144C((v20 > 1), v21 + 1, 1);
          v22 = v21 + 1;
          v19 = v23;
        }

        *(v19 + 16) = v22;
        v23 = v19;
        v2 = v26;
        *(v19 + 8 * v21 + 32) = v27;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v23;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for InMemoryJetPackResourceBundle(uint64_t a1)
{
  result = qword_1ECC45C10;
  if (!qword_1ECC45C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB470B58(uint64_t a1)
{
  sub_1DB470BF4(319);
  if (v1 <= 0x3F)
  {
    sub_1DB470CAC();
    if (v2 <= 0x3F)
    {
      sub_1DB377878(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DB470BF4(uint64_t a1)
{
  if (!qword_1ECC45C20)
  {
    sub_1DB470C58();
    v1 = sub_1DB50A540();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC45C20);
    }
  }
}

unint64_t sub_1DB470C58()
{
  result = qword_1ECC45C28;
  if (!qword_1ECC45C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45C28);
  }

  return result;
}

void sub_1DB470CAC()
{
  if (!qword_1ECC45C30)
  {
    v0 = sub_1DB50A540();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC45C30);
    }
  }
}

uint64_t DiskJetPackResourceBundle.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url;
  v5 = sub_1DB509CA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DiskJetPackResourceBundle.data(withName:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DB306160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 16 * v4;
  v7 = *v6;
  sub_1DB30C1AC(*v6, *(v6 + 8));
  return v7;
}

uint64_t DiskJetPackResourceBundle.fileData(atPath:)(uint64_t *a1)
{
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  DiskJetPackResourceBundle.fileURL(atPath:)(&v10, v7);
  if (!v2)
  {
    v1 = sub_1DB509CB0();
    (*(v5 + 8))(v7, v4);
  }

  return v1;
}

uint64_t DiskJetPackResourceBundle.fileURL(atPath:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = *(v2 + 8);
  v21 = *(v5 + 16);
  v22 = v13;
  v20 = OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url;
  v21(&v19 - v10, v13 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v4, v9);
  if (*(v12 + 16))
  {
    v25 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
    sub_1DB330B04();
    sub_1DB50A5E0();
  }

  sub_1DB509BD0();

  v14 = *(v5 + 8);
  v14(v11, v4);
  (v21)(v7, v22 + v20, v4);
  v15 = v23;
  v16 = sub_1DB3DC428();
  if (v15)
  {
    v14(v7, v4);
  }

  else
  {
    v17 = v16;
    result = (v14)(v7, v4);
    if (v17)
    {
      return result;
    }

    sub_1DB471704();
    swift_allocError();
    swift_willThrow();
  }

  return (v14)(v24, v4);
}

void *DiskJetPackResourceBundle.contentsOfDirectory(atPath:)(void **a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = [objc_opt_self() defaultManager];
  v28[0] = v7;
  DiskJetPackResourceBundle.fileURL(atPath:)(v28, v6);
  if (v1)
  {
  }

  else
  {
    sub_1DB509C40();
    (*(v4 + 8))(v6, v3);
    v10 = sub_1DB50A620();

    v28[0] = 0;
    v11 = [v8 contentsOfDirectoryAtPath:v10 error:v28];

    v12 = v28[0];
    if (v11)
    {
      v13 = sub_1DB50A9A0();
      v14 = v12;

      v15 = *(v13 + 16);
      if (v15)
      {
        v28[0] = MEMORY[0x1E69E7CC0];
        sub_1DB34144C(0, v15, 0);
        v6 = v28[0];
        v25[1] = v13;
        v16 = (v13 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          swift_bridgeObjectRetain_n();
          v19._countAndFlagsBits = v17;
          v19._object = v18;
          JetPackPath.init(_:)(v19);
          v20 = v27;
          v26 = v7;

          sub_1DB3992E4(v20);

          v21 = v26;
          v28[0] = v6;
          v23 = v6[2];
          v22 = v6[3];
          if (v23 >= v22 >> 1)
          {
            sub_1DB34144C((v22 > 1), v23 + 1, 1);
            v6 = v28[0];
          }

          v6[2] = v23 + 1;
          v6[v23 + 4] = v21;
          v16 += 2;
          --v15;
        }

        while (v15);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v24 = v28[0];
      sub_1DB509B20();

      swift_willThrow();
    }
  }

  return v6;
}

uint64_t sub_1DB4715BC(uint64_t *a1)
{
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  DiskJetPackResourceBundle.fileURL(atPath:)(&v10, v7);
  if (!v2)
  {
    v1 = sub_1DB509CB0();
    (*(v5 + 8))(v7, v4);
  }

  return v1;
}

unint64_t sub_1DB471704()
{
  result = qword_1ECC45C38;
  if (!qword_1ECC45C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45C38);
  }

  return result;
}

uint64_t type metadata accessor for DiskJetPackResourceBundle(uint64_t a1)
{
  result = qword_1ECC45C40;
  if (!qword_1ECC45C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB4717CC(uint64_t a1)
{
  sub_1DB470CAC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for JetPackResourceBundleDiskLocation(319);
    if (v2 <= 0x3F)
    {
      sub_1DB377878(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Lazy.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DB50B120();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  sub_1DB35B5F8(v8, v4, &v13, v9, v10);
  result = (*(v5 + 8))(a1, v4);
  *a2 = v13;
  return result;
}

uint64_t Lazy.wrappedValue.getter()
{
  v0 = sub_1DB50B120();
  v3 = type metadata accessor for LazyValueWrapper(0, v0, v1, v2);

  sub_1DB35BAA8(v3, v4, v5, v6);
}

uint64_t Lazy.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1DB472944(a1);
  v3 = sub_1DB50B120();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*Lazy.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_1DB50B120();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Lazy.wrappedValue.getter();
  return sub_1DB471BE8;
}

void sub_1DB471BE8(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 5);
  v5 = *(*a1 + 2);
  v6 = *(*a1 + 3);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 4), v4, v5);
    sub_1DB472944(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1DB472944(*(*a1 + 5));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Lazy.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v9 = sub_1DB50B120();
  result = sub_1DB35B504(sub_1DB4729C4, v8, v9, &v12, v10);
  *a4 = v12;
  return result;
}

uint64_t sub_1DB471D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v10(v7);
  if (!v3)
  {
    (*(v6 + 32))(a3, v9, a2);
    return (*(v6 + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t Lazy.description.getter()
{
  v0 = sub_1DB50B120();
  type metadata accessor for LazyValueWrapper(0, v0, v1, v2);

  swift_getWitnessTable();
  sub_1DB50BA10();

  return 0;
}

uint64_t Lazy<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = sub_1DB50B120();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  Lazy.wrappedValue.getter();
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  sub_1DB50A5B0();
  return (*(v8 + 8))(v7, v3);
}

uint64_t Lazy<A>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1DB3171C0(a1, v15);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v15[1];
  *(v10 + 32) = v15[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v16;
  *(v10 + 72) = v9;
  v12 = sub_1DB50B120();
  sub_1DB35B504(sub_1DB4729E4, v10, v12, v15, v13);
  result = sub_1DB3151CC(a1);
  *a5 = *&v15[0];
  return result;
}

uint64_t sub_1DB472178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1DB3171C0(a1, v17);
  v14[0] = a2;
  v10 = *(a4 + 8);

  v10(v17, v14, a3, a4);
  if (!v5)
  {
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v17);
  sub_1DB3A1B94(v17, v14);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v12 + 8))(a3, v5, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_1DB3A1C04(v14);
  }

  swift_willThrow();
  return sub_1DB3A1C04(v17);
}

uint64_t static Lazy<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v49 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB50B120();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v40 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  type metadata accessor for Lazy(0, a3, v19, v20);
  Lazy.wrappedValue.getter();
  Lazy.wrappedValue.getter();
  v46 = TupleTypeMetadata2;
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = *(v10 + 16);
  v22(v9, v18, v6);
  v47 = v21;
  v23 = &v9[v21];
  v24 = v6;
  v22(v23, v15, v6);
  v25 = *(v49 + 48);
  v48 = a3;
  if (v25(v9, 1, a3) != 1)
  {
    v41 = v18;
    v28 = v44;
    v29 = v24;
    v22(v44, v9, v24);
    v30 = v47;
    v31 = v48;
    v32 = v25(&v9[v47], 1, v48);
    v33 = v49;
    v34 = (v49 + 8);
    if (v32 != 1)
    {
      v36 = v42;
      (*(v49 + 32))(v42, &v9[v30], v31);
      v27 = sub_1DB50A610();
      v37 = *(v33 + 8);
      v37(v36, v31);
      v38 = *(v10 + 8);
      v38(v15, v29);
      v38(v41, v29);
      v37(v28, v31);
      v38(v9, v29);
      return v27 & 1;
    }

    v35 = *(v10 + 8);
    v35(v15, v29);
    v35(v41, v29);
    (*v34)(v28, v31);
    goto LABEL_6;
  }

  v26 = *(v10 + 8);
  v26(v15, v24);
  v26(v18, v24);
  if (v25(&v9[v47], 1, v48) != 1)
  {
LABEL_6:
    (*(v45 + 8))(v9, v46);
    v27 = 0;
    return v27 & 1;
  }

  v26(v9, v24);
  v27 = 1;
  return v27 & 1;
}

uint64_t Lazy<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DB50B120();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  Lazy.wrappedValue.getter();
  sub_1DB50B140();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Lazy<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[9] = *v2;
  sub_1DB50BCF0();
  Lazy<A>.hash(into:)(v6, a1, a2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4728F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  Lazy<A>.hash(into:)(v6, a2, v4);
  return sub_1DB50BD30();
}

uint64_t sub_1DB472944(uint64_t a1)
{
  v2 = sub_1DB50B120();
  v5 = type metadata accessor for LazyValueWrapper(0, v2, v3, v4);

  sub_1DB35C32C(a1, v5, v6, v7);
}

uint64_t sub_1DB472A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AsyncActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v33 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v31 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v31 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v5, a3, v18);
  (*(v11 + 16))(v14, a1, AssociatedTypeWitness);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = (v16 + v20 + *(v11 + 80)) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v15 + 32))(v22 + v20, v19, a3);
  (*(v11 + 32))(v22 + v21, v14, AssociatedTypeWitness);
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = 0;
  v27 = sub_1DB50ABA0();
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_1DB51D780;
  v29[5] = v22;
  v29[6] = v24;

  sub_1DB419B9C(0, 0, v28, &unk_1DB51D788, v29);

  return v24;
}

uint64_t sub_1DB472E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (*(a6 + 16) + **(a6 + 16));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DB306AF4;

  return v14(a1, a3, a4, a5, a6);
}

uint64_t sub_1DB472F88(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v7 + *(*(v6 - 8) + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB472E3C(a1, v1 + v7, v1 + v10, v11, v6, v5);
}

uint64_t sub_1DB473120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB306AF4;

  return sub_1DB419790(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of AsyncActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB306AF4;

  return v13(a1, a2, a3, a4, a5);
}

void *static URLRequestEncoder.PropertyScope.allProperties.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45CD0, &unk_1DB51D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v1 = _s7JetCore35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  swift_arrayDestroy();
  return v1;
}

void *sub_1DB4733E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45CD0, &unk_1DB51D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v1 = _s7JetCore35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  swift_arrayDestroy();
  return v1;
}

uint64_t URLRequestEncoder.encodeRequest(fromContentsOf:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1DB509790();
  v2[4] = swift_task_alloc();
  v3 = sub_1DB5097A0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1DB50A6B0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1DB509CA0();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB473630, 0, 0);
}

uint64_t sub_1DB473630()
{
  v1 = v0[3];
  (*(v0[12] + 16))(v0[13], v1, v0[11]);
  sub_1DB509820();
  v2 = type metadata accessor for NetRequest(0);

  sub_1DB5097C0();
  sub_1DB5097D0();

  sub_1DB509800();
  sub_1DB5097E0();
  if (*(v1 + *(v2 + 40) + 8))
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    sub_1DB50A690();
    sub_1DB50A660();
    v7 = v6;
    (*(v4 + 8))(v3, v5);
    if (v7 >> 60 == 15)
    {
      v9 = v0[6];
      v8 = v0[7];
      v10 = v0[5];
      v11 = v0[2];
      sub_1DB509780();
      sub_1DB34DB68(MEMORY[0x1E69E7CC0]);
      sub_1DB344214();
      sub_1DB509B00();
      sub_1DB509770();
      (*(v9 + 8))(v8, v10);
      swift_willThrow();
      v12 = sub_1DB509860();
      (*(*(v12 - 8) + 8))(v11, v12);

      v13 = v0[1];
      goto LABEL_6;
    }

    sub_1DB509840();
  }

  v13 = v0[1];
LABEL_6:

  return v13();
}

uint64_t sub_1DB4738B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return URLRequestEncoder.encodeRequest(fromContentsOf:)(a1, a2);
}

uint64_t sub_1DB47399C@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v7 + 8 * a1;
    *a3 = *(v11 + 32);
    result = memmove((v11 + 32), (v11 + 40), 8 * (v9 - 1 - a1));
    *(v7 + 16) = v10;
    *v3 = v7;
  }

  return result;
}

char *sub_1DB473A30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB3A6D54(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DB473ABC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v6;
    while (v8 < *(v3 + 16))
    {
      v9 = *(v3 + 32 + 8 * v8);
      v10 = *(*v9 + 88);

      if ((v10(v11) & 1) == 0 || (v19[0] = a2, v12 = (*(*v9 + 104))(v19), (v10(v12) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DB302EC8(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1DB302EC8((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v8;
        v6 = v8 + 1;
        if (v4 - 1 != v8)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v8;

      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v15 = *(v7 + 2);
    if (!v15)
    {
    }

    while (v15 <= *(v7 + 2))
    {
      v16 = v15 - 1;
      v17 = *&v7[8 * v15 + 24];
      swift_beginAccess();
      sub_1DB47399C(v17, sub_1DB3A6CDC, &v20);
      swift_endAccess();

      v15 = v16;
      if (!v16)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB473D00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v6;
    while (v8 < *(v3 + 16))
    {
      v9 = *(v3 + 32 + 8 * v8);
      v10 = *(*v9 + 88);

      if ((v10(v11) & 1) == 0 || (v12 = (*(*v9 + 104))(a2), (v10(v12) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DB302EC8(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1DB302EC8((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v8;
        v6 = v8 + 1;
        if (v4 - 1 != v8)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v8;

      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v15 = *(v7 + 2);
    if (!v15)
    {
    }

    while (v15 <= *(v7 + 2))
    {
      v16 = v15 - 1;
      v17 = *&v7[8 * v15 + 24];
      swift_beginAccess();
      sub_1DB47399C(v17, sub_1DB3A6D40, &v19);
      swift_endAccess();

      v15 = v16;
      if (!v16)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB473F3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(v3 + 8);
  if (!*(v6 + 16) || (v8 = result, result = sub_1DB314CBC(), (v9 & 1) == 0))
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
LABEL_10:
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v15;
    *(a3 + 24) = v14;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
    return result;
  }

  v10 = *(v6 + 56) + 48 * result;
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = v8;
  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  v16 = *(v10 + 32);
  v17 = *(v10 + 40);
  v19 = *(v4 + 16);
  v18 = (v4 + 16);
  v28 = v13;
  v20 = sub_1DB36E7F8(v13, a2, v19);
  if ((v21 & 1) == 0)
  {
    v22 = v20;

    sub_1DB473A30(v22);

    v23 = *v18;

    result = swift_isUniquelyReferenced_nonNull_native();
    v29 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1DB303F58(0, *(v23 + 16) + 1, 1, v23);
      v23 = result;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      result = sub_1DB303F58((v24 > 1), v25 + 1, 1, v23);
      v26 = v25 + 1;
      v23 = result;
    }

    *(v23 + 16) = v26;
    v27 = v23 + 16 * v25;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    *v18 = v23;
    goto LABEL_10;
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4741A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *a1;
  v44 = a1[2];
  v45 = v10;
  v43 = *(a1 + 3);

  sub_1DB30C4B8(&v44, v42, &qword_1ECC45CE0, &qword_1DB51D858);
  sub_1DB475368(&v43, v42);
  sub_1DB30C4B8(&v45, v42, &qword_1ECC45CE8, &unk_1DB51D860);
  sub_1DB381E6C(a1, a2, a3, &v37);
  v11 = v38;
  if (!v38)
  {
    v25 = *(v4[1] + 16);
    if (v25)
    {
      v26 = *v4 >= v25;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = v4[2];
      if (v27[2])
      {
        v28 = v27[4];
        v29 = v27[5];

        sub_1DB4759B4(0, 1);
        sub_1DB30FC7C(v28, v29, v42);

        sub_1DB30623C(v42, &qword_1ECC45CD8, &qword_1DB51D850);
      }
    }

    v30 = v4[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    v31 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1DB303F58(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v33 = *(v30 + 16);
    v32 = *(v30 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_1DB303F58((v32 > 1), v33 + 1, 1, v30);
      v30 = result;
    }

    v22 = 0;
    v12 = 0;
    v13 = 0;
    *(v30 + 16) = v33 + 1;
    v34 = v30 + 16 * v33;
    *(v34 + 32) = v31;
    *(v34 + 40) = a3;
    v5[2] = v30;
    v23 = 0uLL;
    goto LABEL_19;
  }

  v36 = v37;
  v35 = v39;
  v12 = v40;
  v13 = v41;
  v14 = (v4 + 2);
  v15 = sub_1DB36E7F8(a2, a3, v4[2]);
  if ((v16 & 1) == 0)
  {
    sub_1DB473A30(v15);

    v17 = *v14;

    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1DB303F58(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
    }

    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = v36;
    v23 = v35;
    if (v21 >= v20 >> 1)
    {
      result = sub_1DB303F58((v20 > 1), v21 + 1, 1, v17);
      v23 = v35;
      v22 = v36;
      v17 = result;
    }

    *(v17 + 16) = v21 + 1;
    v24 = v17 + 16 * v21;
    *(v24 + 32) = v19;
    *(v24 + 40) = a3;
    *v14 = v17;
LABEL_19:
    *a4 = v22;
    *(a4 + 8) = v11;
    *(a4 + 16) = v23;
    *(a4 + 32) = v12;
    *(a4 + 40) = v13;
    return result;
  }

  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB474514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1DB314CBC();
  if ((v8 & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_7;
  }

  v9 = result;
  v21 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 8);
  v23 = *(v4 + 8);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DB312CF4();
    v11 = v23;
  }

  v12 = *(v11 + 56) + 48 * v9;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  sub_1DB310F5C(v9, v11);
  *(v4 + 8) = v11;
  v19 = sub_1DB36E7F8(v21, a2, *(v4 + 16));
  if ((v20 & 1) == 0)
  {
    sub_1DB473A30(v19);

LABEL_7:
    *a3 = v13;
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    *(a3 + 40) = v18;
    return result;
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52D0B0);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52D0D0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

id sub_1DB4746F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = type metadata accessor for PageRenderEventActivityChange(0);
  MEMORY[0x1EEE9AC00](v37);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB473F3C(a2, a3, v40);
  if (v40[1])
  {
    sub_1DB30623C(v40, &qword_1ECC45CD8, &qword_1DB51D850);
    sub_1DB473F3C(a2, a3, &v41);
    v38 = v41;
    v39[0] = v42[0];
    *(v39 + 9) = *(v42 + 9);
    if (*(&v41 + 1) && (sub_1DB350378(a4), *(&v38 + 1)))
    {
      v35 = a4;
      v36 = v4;
      v34 = v38;
      v46 = v38;
      v47 = v39[0];
      v48 = *&v39[1];
      v49 = BYTE8(v39[1]) & 1;
      sub_1DB4741A8(&v46, a2, a3, &v43);
      sub_1DB30623C(&v43, &qword_1ECC45CD8, &qword_1DB51D850);
      v5 = v36;

      a4 = v35;
    }

    else
    {
      sub_1DB474514(a2, a3, &v46);
      result = sub_1DB30623C(&v46, &qword_1ECC45CD8, &qword_1DB51D850);
    }

    if (qword_1EE30E190 != -1)
    {
      result = swift_once();
    }

    if (byte_1EE30E198 == 1)
    {
      if (qword_1ECC42020 != -1)
      {
        swift_once();
      }

      v12 = qword_1ECC67910;
      *v10 = a4;
      v10[1] = a2;
      v10[2] = a3;
      swift_storeEnumTagMultiPayload();
      v13 = *(v12 + 16);

      [v13 lock];
      sub_1DB473D00(v12, v10);
      if (v5)
      {

        result = [v13 unlock];
        __break(1u);
      }

      else
      {
        [v13 unlock];
        return sub_1DB47530C(v10);
      }
    }
  }

  else
  {
    v14 = a4;
    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    v15 = a3;
    sub_1DB50BEB0();
    v16 = *(&v47 + 1);
    v37 = v48;
    v36 = __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB50EE90;
    v50 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v18._object = 0x80000001DB52A9C0;
    v18._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(&v42[0] + 1) = MEMORY[0x1E69E6530];
    *&v41 = v14;
    sub_1DB30C4B8(&v41, &v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v43 = 0u;
    v44 = 0u;
    sub_1DB301D4C(&v38, &v43);
    v45 = 0;
    v19 = v50;
    v20 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[40 * v22];
    v24 = v43;
    v25 = v44;
    v23[64] = v45;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v50 = v19;
    sub_1DB30623C(&v41, &qword_1ECC426B0, &qword_1DB50EEB0);
    v26._countAndFlagsBits = 0x697669746361202CLL;
    v26._object = 0xEF20726F66207974;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(&v42[0] + 1) = &type metadata for OperationID;
    *&v41 = v20;
    *(&v41 + 1) = v15;
    sub_1DB30C4B8(&v41, &v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v43 = 0u;
    v44 = 0u;

    sub_1DB301D4C(&v38, &v43);
    v45 = 0;
    v27 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
      v50 = v27;
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v43;
    v32 = v44;
    v30[64] = v45;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v50 = v27;
    sub_1DB30623C(&v41, &qword_1ECC426B0, &qword_1DB50EEB0);
    v33._countAndFlagsBits = 0x756F6620746F6E20;
    v33._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v17 + 32) = v50;
    Logger.error(_:)(v17, v16, v37);

    return __swift_destroy_boxed_opaque_existential_0(&v46);
  }

  return result;
}

id sub_1DB474CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = type metadata accessor for PageRenderEventActivityChange(0);
  MEMORY[0x1EEE9AC00](v37);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB473F3C(a2, a3, v40);
  if (v40[1])
  {
    sub_1DB30623C(v40, &qword_1ECC45CD8, &qword_1DB51D850);
    sub_1DB473F3C(a2, a3, &v41);
    v38 = v41;
    v39[0] = v42[0];
    *(v39 + 9) = *(v42 + 9);
    if (*(&v41 + 1) && (sub_1DB350A48(a4), *(&v38 + 1)))
    {
      v35 = a4;
      v36 = v4;
      v34 = v38;
      v46 = v38;
      v47 = v39[0];
      v48 = *&v39[1];
      v49 = BYTE8(v39[1]) & 1;
      sub_1DB4741A8(&v46, a2, a3, &v43);
      sub_1DB30623C(&v43, &qword_1ECC45CD8, &qword_1DB51D850);
      v5 = v36;

      a4 = v35;
    }

    else
    {
      sub_1DB474514(a2, a3, &v46);
      result = sub_1DB30623C(&v46, &qword_1ECC45CD8, &qword_1DB51D850);
    }

    if (qword_1EE30E190 != -1)
    {
      result = swift_once();
    }

    if (byte_1EE30E198 == 1)
    {
      if (qword_1ECC42020 != -1)
      {
        swift_once();
      }

      v12 = qword_1ECC67910;
      *v10 = a4;
      v10[1] = a2;
      v10[2] = a3;
      swift_storeEnumTagMultiPayload();
      v13 = *(v12 + 16);

      [v13 lock];
      sub_1DB473D00(v12, v10);
      if (v5)
      {

        result = [v13 unlock];
        __break(1u);
      }

      else
      {
        [v13 unlock];
        return sub_1DB47530C(v10);
      }
    }
  }

  else
  {
    v14 = a4;
    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    v15 = a3;
    sub_1DB50BEB0();
    v16 = *(&v47 + 1);
    v37 = v48;
    v36 = __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB50EE90;
    v50 = sub_1DB301BC0(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v18._object = 0x80000001DB52A8F0;
    v18._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(&v42[0] + 1) = MEMORY[0x1E69E6530];
    *&v41 = v14;
    sub_1DB30C4B8(&v41, &v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v43 = 0u;
    v44 = 0u;
    sub_1DB301D4C(&v38, &v43);
    v45 = 0;
    v19 = v50;
    v20 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[40 * v22];
    v24 = v43;
    v25 = v44;
    v23[64] = v45;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v50 = v19;
    sub_1DB30623C(&v41, &qword_1ECC426B0, &qword_1DB50EEB0);
    v26._countAndFlagsBits = 0x697669746361202CLL;
    v26._object = 0xEF20726F66207974;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(&v42[0] + 1) = &type metadata for OperationID;
    *&v41 = v20;
    *(&v41 + 1) = v15;
    sub_1DB30C4B8(&v41, &v38, &qword_1ECC426B0, &qword_1DB50EEB0);
    v43 = 0u;
    v44 = 0u;

    sub_1DB301D4C(&v38, &v43);
    v45 = 0;
    v27 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
      v50 = v27;
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v43;
    v32 = v44;
    v30[64] = v45;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v50 = v27;
    sub_1DB30623C(&v41, &qword_1ECC426B0, &qword_1DB50EEB0);
    v33._countAndFlagsBits = 0x756F6620746F6E20;
    v33._object = 0xEA0000000000646ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v17 + 32) = v50;
    Logger.error(_:)(v17, v16, v37);

    return __swift_destroy_boxed_opaque_existential_0(&v46);
  }

  return result;
}

uint64_t type metadata accessor for PageRenderEventActivityChange(uint64_t a1)
{
  result = qword_1ECC45CF0;
  if (!qword_1ECC45CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB47530C(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderEventActivityChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4753C4(uint64_t a1, uint64_t a2)
{
  v58 = sub_1DB50A3A0();
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v9;
  v10 = type metadata accessor for PageRenderEventActivityChange(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v55 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v55 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D10, &qword_1DB51D8B8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v55 - v23;
  v26 = (&v55 + *(v25 + 56) - v23);
  sub_1DB475BBC(a1, &v55 - v23);
  sub_1DB475BBC(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1DB475BBC(v24, v15);
      v32 = v15[1];
      v33 = v15[2];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_30;
      }

      if (*v15 == *v26)
      {
        if (v32 != v26[1] || v33 != v26[2])
        {
          goto LABEL_20;
        }

        goto LABEL_31;
      }

LABEL_28:
      v36 = 0;
      goto LABEL_32;
    }

    sub_1DB475BBC(v24, v12);
    v37 = *v12;
    v38 = *(v12 + 1);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D18, &qword_1DB51D8C0) + 48);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v60 + 8))(&v12[v39], v58);
      goto LABEL_30;
    }

    v40 = v26[1];
    v56 = *v26;
    v41 = *(v60 + 32);
    v42 = &v12[v39];
    v43 = v58;
    v41(v59, v42, v58);
    v44 = v26 + v39;
    v45 = v57;
    v41(v57, v44, v43);
    if (v37 == v56 && v38 == v40)
    {
    }

    else
    {
      v47 = sub_1DB50BA30();

      v36 = 0;
      if ((v47 & 1) == 0)
      {
LABEL_39:
        v53 = *(v60 + 8);
        v53(v45, v43);
        v53(v59, v43);
        goto LABEL_40;
      }
    }

    v48 = *(v60 + 16);
    v48(v5, v59, v43);
    v49 = sub_1DB50A6E0();
    v51 = v50;
    v48(v5, v45, v43);
    if (v49 == sub_1DB50A6E0() && v51 == v52)
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_1DB50BA30();
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1DB475BBC(v24, v18);
    v28 = v18[1];
    v29 = v18[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_30;
    }

    v31 = v26[2];
    if (*v18 == *v26)
    {
      v30 = v26[1];
LABEL_16:
      if (v28 != v30 || v29 != v31)
      {
LABEL_20:
        v36 = sub_1DB50BA30();
LABEL_32:

LABEL_40:
        sub_1DB47530C(v24);
        return v36 & 1;
      }

LABEL_31:
      v36 = 1;
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  sub_1DB475BBC(v24, v21);
  v28 = *v21;
  v29 = v21[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    v30 = *v26;
    v31 = v26[1];
    goto LABEL_16;
  }

LABEL_30:

  sub_1DB30623C(v24, &qword_1ECC45D10, &qword_1DB51D8B8);
  v36 = 0;
  return v36 & 1;
}

unint64_t sub_1DB4758F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DB4759B4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1DB303F58(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1DB4758F4(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1DB475A74(uint64_t a1)
{
  sub_1DB475AF4();
  if (v1 <= 0x3F)
  {
    sub_1DB475B54(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DB475AF4()
{
  if (!qword_1ECC45D00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC45D00);
    }
  }
}

void sub_1DB475B54(uint64_t a1)
{
  if (!qword_1ECC45D08)
  {
    sub_1DB50A3A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC45D08);
    }
  }
}

uint64_t sub_1DB475BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderEventActivityChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JSONDateFormat.date(from:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1DB476330();
  v5 = sub_1DB50A620();

  [v4 setDateFormat_];

  v6 = sub_1DB50A620();
  v7 = [v4 dateFromString_];

  if (v7)
  {
    sub_1DB509DB0();

    v8 = 0;
    v4 = v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1DB509DD0();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

unint64_t JSONDateFormat.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t JSONDateFormat.string(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1DB509DD0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB476604(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DB30623C(v4, &qword_1ECC43838, &unk_1DB513310);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_1DB476330();
    v11 = sub_1DB50A620();

    [v10 setDateFormat_];

    v12 = sub_1DB509D40();
    v13 = [v10 stringFromDate_];

    v14 = sub_1DB50A650();
    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

JetCore::JSONDateFormat_optional __swiftcall JSONDateFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB476068(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "invocationPoints";
  }

  else
  {
    v4 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  else
  {
    v7 = "invocationPoints";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

uint64_t sub_1DB476118()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47619C(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB47620C(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47628C@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB50B680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DB4762EC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ";
  }

  else
  {
    v3 = "invocationPoints";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id sub_1DB476330()
{
  v0 = sub_1DB509E40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
  v4 = sub_1DB50B0D0();
  v5 = objc_opt_self();
  v6 = [v5 currentThread];
  v7 = [v6 threadDictionary];

  v8 = v4;
  v9 = [v7 objectForKeyedSubscript_];

  if (v9)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_1DB30623C(v19, &qword_1ECC426B0, &qword_1DB50EEB0);
    goto LABEL_8;
  }

  sub_1DB336FD4(0, &qword_1ECC45D28, 0x1E696AB78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1DB509E10();
    v11 = sub_1DB509E30();
    (*(v1 + 8))(v3, v0);
    [v10 setLocale_];

    v12 = [v5 currentThread];
    v13 = [v12 threadDictionary];

    v14 = v8;
    [v13 setObject:v10 forKeyedSubscript:v14];

    return v10;
  }

  return v16[1];
}

uint64_t sub_1DB476604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB476678()
{
  result = qword_1ECC45D20;
  if (!qword_1ECC45D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D20);
  }

  return result;
}

Swift::Bool __swiftcall ComponentID.isChild(of:)(JetCore::ShelfID of)
{
  v2 = *(of.parent.value._countAndFlagsBits + 16);
  v3 = *(of.parent.value._countAndFlagsBits + 24);
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1 == *of.parent.value._countAndFlagsBits && v1[1] == *(of.parent.value._countAndFlagsBits + 8);
  if (v6 || (v7 = sub_1DB50BA30(), result = 0, (v7 & 1) != 0))
  {
    if (v4 == v2 && v5 == v3)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

Swift::Bool __swiftcall ComponentID.isChild(of:)(JetCore::PageID of)
{
  if (*v1 == *of.value._countAndFlagsBits && v1[1] == *(of.value._countAndFlagsBits + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t static ComponentID.forItems(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  *a2 = 0;
  *(a2 + 8) = sub_1DB476944;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
}

uint64_t sub_1DB476830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a1;

  v13 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v13);

  *a6 = a2;
  a6[1] = a3;
  a6[2] = a4;
  a6[3] = a5;
  a6[4] = 35;
  a6[5] = 0xE100000000000000;
  v15 = v12 + 1;
  if (v12 == -1)
  {

    sub_1DB3DBC04("JetCore/ComponentID.swift", 25, 2, 49, a2, a3, a4, a5);

    v15 = 0;
  }

  *a1 = v15;
  return result;
}

void __swiftcall ComponentID.init(at:in:)(JetCore::ComponentID *__return_ptr retstr, Swift::UInt64 at, JetCore::ShelfID in)
{
  v7 = *in.parent.value._countAndFlagsBits;
  v4 = *(in.parent.value._countAndFlagsBits + 16);
  v5 = *(in.parent.value._countAndFlagsBits + 24);
  v6 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v6);

  retstr->value._countAndFlagsBits = 35;
  retstr->value._object = 0xE100000000000000;
  retstr->parent.parent = v7;
  retstr->parent.value._countAndFlagsBits = v4;
  retstr->parent.value._object = v5;
}

void __swiftcall ComponentID.init(randomIn:)(JetCore::ComponentID *__return_ptr retstr, JetCore::ShelfID randomIn)
{
  countAndFlagsBits = randomIn.parent.value._countAndFlagsBits;
  v4 = sub_1DB509E00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *countAndFlagsBits;
  v8 = *(countAndFlagsBits + 16);
  v9 = *(countAndFlagsBits + 24);
  sub_1DB509DF0();
  v10 = sub_1DB509DE0();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v21 = v10;
  v22 = v12;
  v19 = 45;
  v20 = 0xE100000000000000;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1DB301E30();
  v13 = sub_1DB50B1A0();
  v15 = v14;

  retstr->value._countAndFlagsBits = v13;
  retstr->value._object = v15;
  retstr->parent.parent = v16;
  retstr->parent.value._countAndFlagsBits = v8;
  retstr->parent.value._object = v9;
}

__n128 ComponentID.init<A>(id:kind:in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, __n128 *a7@<X8>)
{
  v15 = *a4;
  v12 = a4[1].n128_u64[0];
  v13 = a4[1].n128_u64[1];
  sub_1DB50A910();
  MEMORY[0x1E1285C70](a1, a2);

  (*(*(a5 - 8) + 8))(a3, a5);
  a7[2] = v16;
  result = v15;
  *a7 = v15;
  a7[1].n128_u64[0] = v12;
  a7[1].n128_u64[1] = v13;
  return result;
}

uint64_t sub_1DB476C28@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1DB50B3D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB324840(0x746E65726170, 0xE600000000000000, 1, a2);
  sub_1DB38BBA0(a1, v11, v32);
  if (v3)
  {
  }

  v14 = *a1;
  v13 = a1[1];
  if (v13 == *(*a1 + 16))
  {
    sub_1DB324840(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1DB50B3C0();
    v15 = sub_1DB50B3E0();
    swift_allocError();
    v17 = v16;
    (*(v8 + 16))(v16, v10, v7);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
  }

  v31 = v32[3];
  v33 = v32[1];
  v18 = v32[0];
  v19 = v32[2];

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v30 = v18;
    if (v13 < *(v14 + 16))
    {
      v20 = (v14 + 32 * v13);
      v21 = v20[6];
      v22 = v20[7];
      v24 = v20[4];
      v23 = v20[5];
      a1[1] = v13 + 1;

      v25 = MEMORY[0x1E1285BF0](v24, v23, v21, v22);
      v27 = v26;

      v28 = v33;
      *a3 = v30;
      a3[1] = v28;
      v29 = v31;
      a3[2] = v19;
      a3[3] = v29;
      a3[4] = v25;
      a3[5] = v27;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ComponentID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DB50B3D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v9 = sub_1DB50BA40();
  v38 = v6;
  v29 = 45;
  v30 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  *(&v24 - 2) = &v29;
  v12 = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB3F1A78, (&v24 - 4), v10, v11, &v24);
  v35 = v12;
  v36 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1DB50BDB0();
  sub_1DB476C28(&v35, v13, &v29);
  v15 = v30;
  v16 = v32;
  v26 = v31;
  v27 = v29;
  v25 = v33;
  v28 = v34;
  v17 = *(v12 + 16);

  if (v36 == v17)
  {
    __swift_destroy_boxed_opaque_existential_0(v37);
    v18 = v26;
    *a2 = v27;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v16;
    v19 = v28;
    a2[4] = v25;
    a2[5] = v19;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v36 >= v17)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v20 = sub_1DB50B3E0();
    swift_allocError();
    v22 = v21;
    v23 = v38;
    (*(v38 + 16))(v21, v8, v5);
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B00], v20);
    swift_willThrow();
    (*(v23 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(v37);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t ComponentID.encode(to:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v2, v3);
  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v4, v5);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t ComponentID.debugDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ComponentID.hash(into:)(uint64_t a1)
{
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t ComponentID.hashValue.getter()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB47748C()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB477510(uint64_t a1)
{
  sub_1DB50A740();
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t sub_1DB47757C(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB47762C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t _s7JetCore11ComponentIDV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DB50BA30() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DB50BA30() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1DB50BA30();
}

unint64_t sub_1DB47775C()
{
  result = qword_1ECC45D30;
  if (!qword_1ECC45D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D30);
  }

  return result;
}

unint64_t sub_1DB4777C0()
{
  result = qword_1ECC45D38;
  if (!qword_1ECC45D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D40, &qword_1DB51DAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D38);
  }

  return result;
}

uint64_t sub_1DB477824(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x646E696B24;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x646E696B24;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();
  }

  return v8 & 1;
}

uint64_t sub_1DB4778BC()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB477930(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB477990(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB477A0C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (!*v1)
  {
    v2 = 0x646E696B24;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB477A3C()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x646E696B24;
  }
}

uint64_t sub_1DB477A68@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DB477ACC(uint64_t a1)
{
  v2 = sub_1DB477FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB477B08(uint64_t a1)
{
  v2 = sub_1DB477FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Child.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D50, &qword_1DB51DAC8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB477FEC();
  sub_1DB50BDF0();
  if (!v2)
  {
    v26 = v5;
    v8 = v50;
    LOBYTE(v28) = 0;
    v10 = sub_1DB50B740();
    v11 = v9;
    v12 = v10 == 1835365481 && v9 == 0xE400000000000000;
    if (v12 || (sub_1DB50BA30() & 1) != 0)
    {

      sub_1DB30BE90(a1, v27);
      Models.Menu.Item.init(from:)(v27, &v28);
      (*(v26 + 8))(v7, v4);
      v13 = 0;
      v14 = v28;
      v15 = v29;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      v49 = v39;
      v42 = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v16 = v30;
      v17 = v31;
    }

    else
    {
      v22 = v10 == 0x756E656D627573 && v11 == 0xE700000000000000;
      if (!v22 && (sub_1DB50BA30() & 1) == 0)
      {
        v24 = v10 == 0x6574616C706D6574 && v11 == 0xE800000000000000;
        if (!v24 && (sub_1DB50BA30() & 1) == 0)
        {
          LOBYTE(v27[0]) = 0;
          v28 = 0;
          v29 = 0xE000000000000000;
          sub_1DB50B320();

          v28 = 0x20646E696B24;
          v29 = 0xE600000000000000;
          MEMORY[0x1E1285C70](v10, v11);

          MEMORY[0x1E1285C70](0xD000000000000024, 0x80000001DB52F990);
          sub_1DB50B3E0();
          swift_allocError();
          sub_1DB478040();
          sub_1DB50B3B0();

          swift_willThrow();
          (*(v26 + 8))(v7, v4);
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        LOBYTE(v27[0]) = 1;
        sub_1DB4780A4();
        sub_1DB50B780();
        (*(v26 + 8))(v7, v4);
        v14 = v28;
        v15 = v29;
        v13 = 2;
        goto LABEL_10;
      }

      sub_1DB30BE90(a1, v27);
      Models.Menu.init(from:)(v27, &v28);
      (*(v26 + 8))(v7, v4);
      v14 = v28;
      v15 = v29;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      v49 = v39;
      v42 = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v16 = v30;
      v17 = v31;
      v13 = 1;
    }

    v40 = v16;
    v41 = v17;
LABEL_10:
    *v8 = v14;
    *(v8 + 8) = v15;
    v18 = v47;
    *(v8 + 112) = v46;
    *(v8 + 128) = v18;
    *(v8 + 144) = v48;
    *(v8 + 160) = v49;
    v19 = v43;
    *(v8 + 48) = v42;
    *(v8 + 64) = v19;
    v20 = v45;
    *(v8 + 80) = v44;
    *(v8 + 96) = v20;
    v21 = v41;
    *(v8 + 16) = v40;
    *(v8 + 32) = v21;
    *(v8 + 161) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB477FEC()
{
  result = qword_1ECC45D58;
  if (!qword_1ECC45D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D58);
  }

  return result;
}

unint64_t sub_1DB478040()
{
  result = qword_1ECC45D60;
  if (!qword_1ECC45D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D50, &qword_1DB51DAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D60);
  }

  return result;
}

unint64_t sub_1DB4780A4()
{
  result = qword_1ECC45D68;
  if (!qword_1ECC45D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D68);
  }

  return result;
}

uint64_t Models.Menu.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D70, &qword_1DB51DAD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - v6;
  v8 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = sub_1DB47A0B4();
  sub_1DB50BDF0();
  if (!v2)
  {
    v58 = v9;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D80, &qword_1DB51DAD8);
    LOBYTE(v71) = 1;
    sub_1DB47A108();
    sub_1DB50B710();
    v11 = v77[0];
    if (*(&v77[0] + 1) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *&v77[0];
    }

    if (*(&v77[0] + 1) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(&v77[0] + 1);
    }

    LOBYTE(v77[0]) = 0;
    v14 = sub_1DB50B740();
    v54 = v13;
    v55 = *(&v11 + 1);
    v56 = v15;
    v57 = v11;
    v52 = v14;
    v53 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DA0, &qword_1DB51DAE8);
    LOBYTE(v63) = 2;
    sub_1DB47A210();
    sub_1DB50B710();
    v51 = v7;
    if (v71 == 1)
    {
      sub_1DB30623C(&v71, &qword_1ECC45DC0, &qword_1DB51DAF0);
      memset(v77, 0, sizeof(v77));
      v78 = 0;
    }

    else
    {
      sub_1DB30C4B8(&v71, v77, &qword_1ECC45B98, &qword_1DB51D250);
      sub_1DB30623C(&v71, &qword_1ECC45DA0, &qword_1DB51DAE8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DC8, &qword_1DB51DAF8);
    LOBYTE(v63) = 4;
    sub_1DB47A36C();
    sub_1DB50B710();
    v17 = v71;
    if (v71 == 3)
    {
      v17 = 2;
    }

    HIDWORD(v49) = v17;
    v18 = v79[3];
    v50 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v18);
    v19 = sub_1DB50BDE0();
    v20 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v19);
    v50 = v21;

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &type metadata for EmptyActionKindTable;
    }

    if (v20)
    {
      v23 = v50;
    }

    else
    {
      v23 = &off_1F56F1850;
    }

    LOBYTE(v71) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v22, v23, v69);
    v24 = BYTE4(v49);
    if (!v54)
    {
      v53 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
      v54 = v25;
    }

    v26 = v59;
    sub_1DB30C4B8(v77, &v63, &qword_1ECC45B98, &qword_1DB51D250);
    if (v63)
    {
      sub_1DB30623C(v77, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v10 + 8))(v51, v4);
      v73 = v65;
      v74 = v66;
      v75 = v67;
      v76 = v68;
      v71 = v63;
      v72 = v64;
    }

    else
    {
      *(&v75 + 1) = &_s12_EmptySourceVN;
      v76 = &off_1EECE8048;
      sub_1DB30BE90(&v74, v60);
      v27 = v10;
      v28 = v61;
      v29 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v58 = (*(v29 + 24))(v28, v29);
      v30 = v61;
      v31 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v57 = (*(v31 + 32))(v30, v31);
      LODWORD(v55) = v32;
      v33 = v61;
      v34 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v35 = (*(v34 + 40))(v33, v34);
      v36 = v4;
      v37 = v61;
      v38 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v39 = (*(v38 + 48))(v37, v38);
      v26 = v59;
      v40 = v39;
      v42 = v41;
      sub_1DB30623C(v77, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v27 + 8))(v51, v36);
      __swift_destroy_boxed_opaque_existential_0(v60);
      *&v71 = v58;
      *(&v71 + 1) = v57;
      LOBYTE(v72) = v55 & 1;
      *(&v72 + 1) = v35;
      *&v73 = v40;
      *(&v73 + 1) = v42;
      if (v63)
      {
        sub_1DB30623C(&v63, &qword_1ECC45B98, &qword_1DB51D250);
      }
    }

    v63 = v69[0];
    v64 = v69[1];
    *&v65 = v70;
    *(v26 + 136) = 0u;
    *(v26 + 152) = 0;
    *(v26 + 120) = 0u;
    *(v26 + 160) = 2;
    v43 = v54;
    *v26 = v53;
    *(v26 + 8) = v43;
    v44 = v56;
    *(v26 + 16) = v52;
    *(v26 + 24) = v44;
    v45 = v72;
    *(v26 + 32) = v71;
    *(v26 + 48) = v45;
    v46 = v73;
    v47 = v74;
    v48 = v75;
    *(v26 + 112) = v76;
    *(v26 + 80) = v47;
    *(v26 + 96) = v48;
    *(v26 + 64) = v46;
    sub_1DB47B410(&v63, v26 + 120);
    *(v26 + 160) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_0(v79);
}

uint64_t Models.Menu.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DF0, &qword_1DB51DB08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  v9 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB47B480();
  sub_1DB50BDF0();
  if (!v2)
  {
    v54 = a2;
    v55 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D80, &qword_1DB51DAD8);
    LOBYTE(v61) = 0;
    sub_1DB47A108();
    sub_1DB50B710();
    v10 = v5;
    v11 = v67[0];
    if (*(&v67[0] + 1) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *&v67[0];
    }

    if (*(&v67[0] + 1) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(&v67[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    LOBYTE(v61) = 1;
    sub_1DB3980E8();
    sub_1DB50B710();
    v52 = *(&v11 + 1);
    v53 = v11;
    v51 = v12;
    v14 = *&v67[0];
    if (*(&v67[0] + 1) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&v67[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DA0, &qword_1DB51DAE8);
    LOBYTE(v59[0]) = 2;
    sub_1DB47A210();
    sub_1DB50B710();
    v49 = v15;
    v50 = v14;
    if (v61 == 1)
    {
      sub_1DB30623C(&v61, &qword_1ECC45DC0, &qword_1DB51DAF0);
      memset(v67, 0, sizeof(v67));
      v68 = 0;
    }

    else
    {
      sub_1DB30C4B8(&v61, v67, &qword_1ECC45B98, &qword_1DB51D250);
      sub_1DB30623C(&v61, &qword_1ECC45DA0, &qword_1DB51DAE8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E00, &qword_1DB51DB10);
    LOBYTE(v59[0]) = 3;
    sub_1DB47B4D4();
    sub_1DB50B780();
    v17 = v61;
    if (v13)
    {
      v18 = v13;
      v19 = v54;
      v20 = v55;
      v21 = v51;
    }

    else
    {
      v21 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
      v18 = v22;
      v19 = v54;
      v20 = v55;
    }

    v23 = v50;
    if (!v49)
    {
      v23 = 0;
    }

    v55 = v23;
    v24 = 0xE000000000000000;
    if (v49)
    {
      v24 = v49;
    }

    v53 = v24;
    sub_1DB30C4B8(v67, v59, &qword_1ECC45B98, &qword_1DB51D250);
    if (*&v59[0])
    {
      sub_1DB30623C(v67, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v20 + 8))(v8, v10);
      v63 = v59[2];
      v64 = v59[3];
      v65 = v59[4];
      v66 = v60;
      v61 = v59[0];
      v62 = v59[1];
    }

    else
    {
      *(&v65 + 1) = &_s12_EmptySourceVN;
      v66 = &off_1EECE8048;
      sub_1DB30BE90(&v64, v56);
      v51 = v21;
      v52 = v18;
      v25 = v20;
      v26 = v17;
      v27 = v57;
      v28 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v50 = (*(v28 + 24))(v27, v28);
      v29 = v57;
      v30 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v49 = (*(v30 + 32))(v29, v30);
      v48 = v31;
      v32 = v57;
      v33 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v47 = (*(v33 + 40))(v32, v33);
      v35 = v57;
      v34 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v36 = *(v34 + 48);
      v37 = v34;
      v17 = v26;
      v38 = v36(v35, v37);
      v19 = v54;
      v39 = v38;
      v41 = v40;
      sub_1DB30623C(v67, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v25 + 8))(v8, v10);
      v21 = v51;
      v18 = v52;
      __swift_destroy_boxed_opaque_existential_0(v56);
      *&v61 = v50;
      *(&v61 + 1) = v49;
      LOBYTE(v62) = v48 & 1;
      *(&v62 + 1) = v47;
      *&v63 = v39;
      *(&v63 + 1) = v41;
      if (*&v59[0])
      {
        sub_1DB30623C(v59, &qword_1ECC45B98, &qword_1DB51D250);
      }
    }

    *v19 = v21;
    *(v19 + 8) = v18;
    v42 = v53;
    *(v19 + 16) = v55;
    *(v19 + 24) = v42;
    v43 = v64;
    *(v19 + 64) = v63;
    *(v19 + 80) = v43;
    *(v19 + 96) = v65;
    v44 = v66;
    v45 = v62;
    *(v19 + 32) = v61;
    *(v19 + 48) = v45;
    *(v19 + 112) = v44;
    *(v19 + 120) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t Models.Menu.Child.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E20, &qword_1DB51DB18);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB477FEC();
  sub_1DB50BE40();
  sub_1DB47B630(v1, &v25);
  if (!v36)
  {
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v24 = 0;
    v7 = v12;
    sub_1DB50B860();
    if (!v7)
    {
      Models.Menu.Item.encode(to:)(a1);
    }

    sub_1DB47B6EC(&v13);
    return (*(v37 + 8))(v5, v3);
  }

  if (v36 == 1)
  {
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v24 = 0;
    v6 = v12;
    sub_1DB50B860();
    if (!v6)
    {
      Models.Menu.encode(to:)(a1);
    }

    sub_1DB47B6BC(&v13);
    return (*(v37 + 8))(v5, v3);
  }

  v8 = v25;
  LOBYTE(v13) = 0;
  v9 = v12;
  sub_1DB50B860();
  if (!v9)
  {
    v13 = v8;
    v24 = 1;
    sub_1DB47B668();
    sub_1DB50B8A0();
  }

  (*(v37 + 8))(v5, v3);
}

uint64_t Models.Menu.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E30, &qword_1DB51DB20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1DB47A0B4();
  sub_1DB50BE40();
  v8 = *(v1 + 8);
  v19[0] = *v1;
  v19[1] = v8;
  v20 = 1;
  sub_1DB47B668();
  v9 = v18;
  sub_1DB50B8A0();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LOBYTE(v19[0]) = 0;
  sub_1DB50B860();
  LOBYTE(v19[0]) = 2;
  sub_1DB46E428();
  sub_1DB50B8A0();
  LOBYTE(v19[0]) = *(v1 + 160);
  v20 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DE0, &qword_1DB51DB00);
  sub_1DB47B71C();
  sub_1DB50B8A0();
  v18 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1DB50BE30();
  v12 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v11);
  v14 = v13;

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &type metadata for EmptyActionKindTable;
  }

  if (v12)
  {
    v16 = v14;
  }

  else
  {
    v16 = &off_1F56F1850;
  }

  LOBYTE(v19[0]) = 3;
  encodeActionModel<A, B>(_:using:container:forKey:)(v1 + 120, v15, v6, v19, v15, &_s4MenuV4ItemV10CodingKeysON, v16, v7);
  return (*(v4 + 8))(v6, v18);
}

uint64_t Models.Menu.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E48, &qword_1DB51DB28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB47B480();
  sub_1DB50BE40();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_1DB47B668();
  sub_1DB50B8A0();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1DB50B860();
    LOBYTE(v13) = 2;
    sub_1DB46E428();
    sub_1DB50B8A0();
    v13 = v3[15];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43060, &qword_1DB510218);
    sub_1DB47B7F4();
    sub_1DB50B8A0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Models.Menu.Child.init(deserializing:using:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v25);
  v7 = JSONObject.string.getter();
  v9 = v8;
  sub_1DB3151CC(v25);
  if (!v9)
  {

    v16 = 0x20000001F56FD778uLL;
    sub_1DB315178();
    swift_allocError();
    *v17 = xmmword_1DB50F500;
    goto LABEL_9;
  }

  if (v7 == 1835365481 && v9 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    sub_1DB3171C0(a1, v24);
    v23 = v6;
    Models.Menu.Item.init(deserializing:using:)(v24, &v23, v25);
    result = sub_1DB3151CC(a1);
    if (!v3)
    {
      HIBYTE(v26) = 0;
LABEL_7:
      v11 = v25[9];
      *(a3 + 128) = v25[8];
      *(a3 + 144) = v11;
      v12 = v25[5];
      *(a3 + 64) = v25[4];
      *(a3 + 80) = v12;
      v13 = v25[7];
      *(a3 + 96) = v25[6];
      *(a3 + 112) = v13;
      v14 = v25[1];
      *a3 = v25[0];
      *(a3 + 16) = v14;
      v15 = v25[3];
      *(a3 + 32) = v25[2];
      *(a3 + 48) = v15;
      *(a3 + 160) = v26;
      return result;
    }

    return result;
  }

  if ((v7 != 0x756E656D627573 || v9 != 0xE700000000000000) && (sub_1DB50BA30() & 1) == 0)
  {

    if (v7 == 0x6574616C706D6574 && v9 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
    {

      JSONObject.subscript.getter(25705, 0xE200000000000000, v25);
      v19 = sub_1DB42D77C();
      if (!v3)
      {
        v21 = v19;
        v22 = v20;
        sub_1DB3151CC(a1);
        result = sub_1DB3151CC(v25);
        *a3 = v21;
        *(a3 + 8) = v22;
        *(a3 + 161) = 2;
        return result;
      }

      sub_1DB3151CC(a1);
      v18 = v25;
      return sub_1DB3151CC(v18);
    }

    v16 = 0x80000001F56FD778;
    sub_1DB315178();
    swift_allocError();
    *v17 = v7;
    *(v17 + 8) = v9;
LABEL_9:
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    swift_willThrow();
    v18 = a1;
    return sub_1DB3151CC(v18);
  }

  sub_1DB3171C0(a1, v24);
  v23 = v6;
  Models.Menu.init(deserializing:using:)(v24, &v23, v25);
  result = sub_1DB3151CC(a1);
  if (!v3)
  {
    HIBYTE(v26) = 1;
    goto LABEL_7;
  }

  return result;
}

uint64_t Models.Menu.Item.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v26);
  v7 = JSONObject.string.getter();
  v9 = v8;
  sub_1DB3151CC(v26);
  if (!v9)
  {

    sub_1DB315178();
    swift_allocError();
    *v13 = xmmword_1DB5151C0;
    *(v13 + 16) = 0x20000001F56FD870uLL;
    *(v13 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  JSONObject.subscript.getter(25705, 0xE200000000000000, v26);
  sub_1DB30C4B8(v26, v28, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v29)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_1DB300B14(v10, v25);
    if (swift_dynamicCast())
    {
      v12 = v23[0];
      v11 = v23[1];
      __swift_destroy_boxed_opaque_existential_0(v28);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    sub_1DB30623C(v28, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v12 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
  v11 = v15;
LABEL_9:
  sub_1DB3151CC(v26);
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v28);
  v25[0] = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  MediaArtwork.init(deserializing:using:)(v28, v25, v26);
  if (v3)
  {
    sub_1DB3151CC(a1);
  }

  JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v25);
  v23[0] = v6;
  static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v25, v23, v28);
  sub_1DB3151CC(v25);

  JSONObject.subscript.getter(1701605234, 0xE400000000000000, v25);
  sub_1DB30C4B8(v25, v23, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v24)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1DB300B14(v16, v22);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v23);
      v17 = sub_1DB50B680();

      sub_1DB3151CC(a1);
      sub_1DB3151CC(v25);
      if (v17 == 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_22;
    }

    sub_1DB3151CC(a1);
    sub_1DB3151CC(v25);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB3151CC(v25);
    sub_1DB30623C(v23, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v19 = 2;
LABEL_22:
  *(a3 + 152) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 160) = 2;
  *a3 = v12;
  *(a3 + 8) = v11;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  v20 = v26[3];
  *(a3 + 64) = v26[2];
  *(a3 + 80) = v20;
  *(a3 + 96) = v26[4];
  *(a3 + 112) = v27;
  v21 = v26[1];
  *(a3 + 32) = v26[0];
  *(a3 + 48) = v21;
  result = sub_1DB47B410(v28, a3 + 120);
  *(a3 + 160) = v19;
  return result;
}

double Models.Menu.init(deserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(25705, 0xE200000000000000, v23);
  sub_1DB30C4B8(v23, v25, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v26)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1DB300B14(v7, v22);
    if (swift_dynamicCast())
    {
      v8 = v21;
      v27 = v20;
      __swift_destroy_boxed_opaque_existential_0(v25);
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_1DB30623C(v25, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v27 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
  v8 = v9;
LABEL_7:
  sub_1DB3151CC(v23);
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v23);
  v10 = JSONObject.string.getter();
  v12 = v11;
  sub_1DB3151CC(v23);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v25);
  v22[0] = v6;

  MediaArtwork.init(deserializing:using:)(v25, v22, v23);
  if (v3)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    if (v12)
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    JSONObject.subscript.getter(0x6E6572646C696863, 0xE800000000000000, v25);
    v16 = sub_1DB320C28(v25, v6);
    sub_1DB3151CC(a1);
    *a3 = v27;
    *(a3 + 8) = v8;
    *(a3 + 16) = v15;
    *(a3 + 24) = v13;
    v17 = v23[3];
    *(a3 + 64) = v23[2];
    *(a3 + 80) = v17;
    *(a3 + 96) = v23[4];
    v18 = v24;
    result = *v23;
    v19 = v23[1];
    *(a3 + 32) = v23[0];
    *(a3 + 48) = v19;
    *(a3 + 112) = v18;
    *(a3 + 120) = v16;
  }

  return result;
}

uint64_t Models.Menu.Child.id.getter()
{
  sub_1DB47B630(v0, &v14);
  if (v25)
  {
    if (v25 == 1)
    {
      v7 = v18;
      v8 = v19;
      v9 = v20;
      v10 = v21;
      v3 = v14;
      v4 = v15;
      v5 = v16;
      v6 = v17;
      v1 = v14;

      sub_1DB47B6BC(&v3);
    }

    else
    {
      return v14;
    }
  }

  else
  {
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v1 = v14;

    sub_1DB47B6EC(&v3);
  }

  return v1;
}

uint64_t sub_1DB47A004@<X0>(uint64_t *a1@<X8>)
{
  result = Models.Menu.Child.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1DB47A074()
{
  result = [objc_allocWithZone(_JEAtomicCounter) initWithInitialValue_];
  qword_1ECC45D48 = result;
  return result;
}

unint64_t sub_1DB47A0B4()
{
  result = qword_1ECC45D78;
  if (!qword_1ECC45D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D78);
  }

  return result;
}

unint64_t sub_1DB47A108()
{
  result = qword_1ECC45D88;
  if (!qword_1ECC45D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D80, &qword_1DB51DAD8);
    sub_1DB47A18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D88);
  }

  return result;
}

unint64_t sub_1DB47A18C()
{
  result = qword_1ECC45D90;
  if (!qword_1ECC45D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D98, &qword_1DB51DAE0);
    sub_1DB4780A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D90);
  }

  return result;
}

unint64_t sub_1DB47A210()
{
  result = qword_1ECC45DA8;
  if (!qword_1ECC45DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DA0, &qword_1DB51DAE8);
    sub_1DB47A294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DA8);
  }

  return result;
}

unint64_t sub_1DB47A294()
{
  result = qword_1ECC45DB0;
  if (!qword_1ECC45DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45B98, &qword_1DB51D250);
    sub_1DB47A318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DB0);
  }

  return result;
}

unint64_t sub_1DB47A318()
{
  result = qword_1ECC45DB8;
  if (!qword_1ECC45DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DB8);
  }

  return result;
}

unint64_t sub_1DB47A36C()
{
  result = qword_1ECC45DD0;
  if (!qword_1ECC45DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DC8, &qword_1DB51DAF8);
    sub_1DB47A3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DD0);
  }

  return result;
}

unint64_t sub_1DB47A3F0()
{
  result = qword_1ECC45DD8;
  if (!qword_1ECC45DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DE0, &qword_1DB51DB00);
    sub_1DB47A474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DD8);
  }

  return result;
}

unint64_t sub_1DB47A474()
{
  result = qword_1ECC45DE8;
  if (!qword_1ECC45DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DE8);
  }

  return result;
}

uint64_t Models.Menu.Item.init(id:title:icon:action:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a7;
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0;
  *(a8 + 120) = 0u;
  *(a8 + 160) = 2;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v10 = *(a5 + 48);
  *(a8 + 64) = *(a5 + 32);
  *(a8 + 80) = v10;
  *(a8 + 96) = *(a5 + 64);
  *(a8 + 112) = *(a5 + 80);
  v11 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v11;
  result = sub_1DB47B410(a6, a8 + 120);
  *(a8 + 160) = v9;
  return result;
}

uint64_t sub_1DB47A63C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1852793705;
  v4 = 0x6E6F69746361;
  if (v1 != 3)
  {
    v4 = 1701605234;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 25705;
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

uint64_t sub_1DB47A6B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB47C0E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB47A6DC(uint64_t a1)
{
  v2 = sub_1DB47A0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB47A718(uint64_t a1)
{
  v2 = sub_1DB47A0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Item.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Menu.Item.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.Item.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.Menu.Item.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.ItemRole.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t Models.Menu.ItemRole.rawValue.getter()
{
  if (*v0)
  {
    return 0x7463757274736564;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_1DB47AA14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463757274736564;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v5 = 0x7463757274736564;
  }

  else
  {
    v5 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657669;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();
  }

  return v8 & 1;
}

uint64_t sub_1DB47AAC0()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47AB48(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB47ABBC(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47AC4C@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1DB47ACA8(uint64_t *a1@<X8>)
{
  v2 = 0x6C65636E6163;
  if (*v1)
  {
    v2 = 0x7463757274736564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.Menu.init(id:title:icon:children:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v7 = *(a5 + 48);
  *(a7 + 64) = *(a5 + 32);
  *(a7 + 80) = v7;
  *(a7 + 96) = *(a5 + 64);
  v8 = *(a5 + 80);
  result = *a5;
  v10 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v10;
  *(a7 + 112) = v8;
  *(a7 + 120) = a6;
  return result;
}

uint64_t sub_1DB47ADD4()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47AE80(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB47AF18(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

unint64_t sub_1DB47AFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB47C098(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB47AFF0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1852793705;
  if (*v1 != 2)
  {
    v5 = 0x6E6572646C696863;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
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

uint64_t sub_1DB47B058()
{
  v1 = 25705;
  v2 = 1852793705;
  if (*v0 != 2)
  {
    v2 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

unint64_t sub_1DB47B0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB47C098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB47B0E4(uint64_t a1)
{
  v2 = sub_1DB47B480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB47B120(uint64_t a1)
{
  v2 = sub_1DB47B480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Menu.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.Menu.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.children.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

unint64_t _s7JetCore6ModelsO4MenuV2IDVAGycfC_0()
{
  sub_1DB50B320();

  if (qword_1ECC42148 != -1)
  {
    swift_once();
  }

  [qword_1ECC45D48 increment];
  v0 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v0);

  return 0xD00000000000001ALL;
}

uint64_t sub_1DB47B410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F50, &unk_1DB513AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB47B480()
{
  result = qword_1ECC45DF8;
  if (!qword_1ECC45DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DF8);
  }

  return result;
}

unint64_t sub_1DB47B4D4()
{
  result = qword_1ECC45E08;
  if (!qword_1ECC45E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45E00, &qword_1DB51DB10);
    sub_1DB47B558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E08);
  }

  return result;
}

unint64_t sub_1DB47B558()
{
  result = qword_1ECC45E10;
  if (!qword_1ECC45E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43060, &qword_1DB510218);
    sub_1DB47B5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E10);
  }

  return result;
}

unint64_t sub_1DB47B5DC()
{
  result = qword_1ECC45E18;
  if (!qword_1ECC45E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E18);
  }

  return result;
}

unint64_t sub_1DB47B668()
{
  result = qword_1ECC45E28;
  if (!qword_1ECC45E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E28);
  }

  return result;
}

unint64_t sub_1DB47B71C()
{
  result = qword_1ECC45E38;
  if (!qword_1ECC45E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DE0, &qword_1DB51DB00);
    sub_1DB47B7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E38);
  }

  return result;
}

unint64_t sub_1DB47B7A0()
{
  result = qword_1ECC45E40;
  if (!qword_1ECC45E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E40);
  }

  return result;
}

unint64_t sub_1DB47B7F4()
{
  result = qword_1ECC45E50;
  if (!qword_1ECC45E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43060, &qword_1DB510218);
    sub_1DB47B878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E50);
  }

  return result;
}

unint64_t sub_1DB47B878()
{
  result = qword_1ECC45E58;
  if (!qword_1ECC45E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E58);
  }

  return result;
}

unint64_t sub_1DB47B928()
{
  result = qword_1ECC45E60;
  if (!qword_1ECC45E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E60);
  }

  return result;
}

unint64_t sub_1DB47B980()
{
  result = qword_1ECC45E68;
  if (!qword_1ECC45E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E68);
  }

  return result;
}

unint64_t sub_1DB47B9D8()
{
  result = qword_1ECC45E70;
  if (!qword_1ECC45E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E70);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1DB47BA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1DB47BA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1DB47BB50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 162))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 161);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB47BB8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *(result + 161) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB47BBE8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 161) = a2;
  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1DB47BC7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1DB47BCC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB47BD84()
{
  result = qword_1ECC45E78;
  if (!qword_1ECC45E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E78);
  }

  return result;
}

unint64_t sub_1DB47BDDC()
{
  result = qword_1ECC45E80;
  if (!qword_1ECC45E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E80);
  }

  return result;
}

unint64_t sub_1DB47BE34()
{
  result = qword_1ECC45E88;
  if (!qword_1ECC45E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E88);
  }

  return result;
}

unint64_t sub_1DB47BE8C()
{
  result = qword_1ECC45E90;
  if (!qword_1ECC45E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E90);
  }

  return result;
}

unint64_t sub_1DB47BEE4()
{
  result = qword_1ECC45E98;
  if (!qword_1ECC45E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E98);
  }

  return result;
}

unint64_t sub_1DB47BF3C()
{
  result = qword_1ECC45EA0;
  if (!qword_1ECC45EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EA0);
  }

  return result;
}

unint64_t sub_1DB47BF94()
{
  result = qword_1ECC45EA8;
  if (!qword_1ECC45EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EA8);
  }

  return result;
}

unint64_t sub_1DB47BFEC()
{
  result = qword_1ECC45EB0;
  if (!qword_1ECC45EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EB0);
  }

  return result;
}

unint64_t sub_1DB47C044()
{
  result = qword_1ECC45EB8;
  if (!qword_1ECC45EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EB8);
  }

  return result;
}

unint64_t sub_1DB47C098(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50B680();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB47C0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

unint64_t sub_1DB47C284()
{
  result = qword_1ECC45EC0;
  if (!qword_1ECC45EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EC0);
  }

  return result;
}

unint64_t sub_1DB47C2D8()
{
  result = qword_1ECC45EC8[0];
  if (!qword_1ECC45EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC45EC8);
  }

  return result;
}

uint64_t Device.buildVersion.getter()
{
  v0 = JEGestaltGetBuildVersion();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.osVersion.getter()
{
  v0 = JEGestaltGetSystemVersion();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.localizedModel.getter()
{
  v0 = JEGestaltGetDeviceModel();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.marketingName.getter()
{
  v0 = JEGestaltGetMarketingName();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.marketingShortName.getter()
{
  v0 = JEGestaltGetMarketingName();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.physicalModel.getter()
{
  v0 = JEGestaltGetProductType();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.deviceClass.getter()
{
  v0 = JEGestaltGetDeviceClass();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.marketingFamilyName.getter()
{
  v0 = JEGestaltGetMarketingDeviceFamilyName();
  v1 = sub_1DB50A650();

  return v1;
}

id Device.totalSystemCapacity.getter()
{
  v0 = JEGestaltGetTotalSystemCapacity();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalSystemAvailable.getter()
{
  v0 = JEGestaltGetTotalSystemAvailable();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDataCapacity.getter()
{
  v0 = JEGestaltGetTotalDataCapacity();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDataAvailable.getter()
{
  v0 = JEGestaltGetTotalDataAvailable();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDiskCapacity.getter()
{
  v0 = JEGestaltGetTotalDiskCapacity();
  v1 = [v0 integerValue];

  return v1;
}

double IntentPreloadConfiguration.init(cachePolicy:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  return result;
}

uint64_t IntentPreloadConfiguration.withCacheKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB47C7F0(v2, a2);

  return sub_1DB36FE80(a1, a2);
}

uint64_t dispatch thunk of IntentPreloader.preload<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1DB30C7A0;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of IntentPreloader.preloadAnyIntent<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1DB306AF4;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB47CB24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457E0, &qword_1DB51BAE8);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  v6[4] = sub_1DB47CD08;
  v6[5] = v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DB46E918;
  v6[3] = &block_descriptor_17;
  v4 = _Block_copy(v6);

  [v0 createSnapshotWithCompletion_];
  _Block_release(v4);
  return v1;
}

void sub_1DB47CC40(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
    sub_1DB47CD68(v7, a3);
    v4 = v7;

LABEL_4:

    return;
  }

  if (a2)
  {
    v6 = a2;
    sub_1DB3DDB60(a2);
    v4 = a2;

    goto LABEL_4;
  }

  sub_1DB50B580();
  __break(1u);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DB47CD68(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(a2 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(a2 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = a1;
    *(a2 + 32) = 1;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    v14 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1DB47CFA0(v6, v22);
        sub_1DB47CFA0(v22, v19);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1DB47D010(v22);
        }

        else
        {
          v8 = v19[1];

          sub_1DB2FEA0C(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = *(v9 + 8);
          v13 = a1;

          v12(sub_1DB400AB8, v11, v10, v9);

          sub_1DB47D010(v22);
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB47D078(v14, 0);
  }
}

uint64_t sub_1DB47CFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC428D0, &qword_1DB50F350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB47D010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC428D0, &qword_1DB50F350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DB47D078(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_1DB47D0C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1DB47D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DB50ABF0();
  v6 = sub_1DB50B120();
  (*(*(v6 - 8) + 8))(a2, v6);
  v9 = *(v5 - 8);
  (*(v9 + 16))(a2, a1, v5);
  v7 = *(v9 + 56);

  return v7(a2, 0, 1, v5);
}

uint64_t sub_1DB47D274(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - v5;
  v7 = sub_1DB50ABB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a1, v3, v9);
  sub_1DB50ABF0();
  sub_1DB50ABE0();
  return (*(v8 + 8))(v11, v7);
}

uint64_t _AsyncChannel.Receiver.next()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB47D460, 0, 0);
}

uint64_t sub_1DB47D460()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = sub_1DB50AC20();
  *v1 = v0;
  v1[1] = sub_1DB47D540;
  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6D9D0](v3, v2);
}

uint64_t sub_1DB47D540()
{
  v3 = *v0;

  swift_endAccess();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t _AsyncChannel.Receiver.deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_1DB50ABF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_1DB50AC20();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1DB47D734(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB38ACA4;

  return _AsyncChannel.Receiver.next()(a1);
}

uint64_t sub_1DB47D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DB47D89C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1DB47D89C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB47D9B0@<X0>(uint64_t a1@<X0>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1DB50ABD0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  *(&v13 - v10) = a1;
  (*(v8 + 104))(&v13 - v10, *a3, v7, v9);
  return (*(v8 + 32))(a4, v11, v7);
}

uint64_t static _AsyncChannel.BufferingPolicy.unbounded.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1DB50ABD0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 104))(&v9 - v6, *MEMORY[0x1E69E8650], v3, v5);
  return (*(v4 + 32))(a2, v7, v3);
}

uint64_t sub_1DB47DB88()
{
  swift_weakInit();
  swift_weakAssign();
}

char *_AsyncChannel.__allocating_init(bufferingPolicy:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1DB47E830(a1);
  v7 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, *(v2 + 80), v5, v6);
  (*(*(v7 - 8) + 8))(a1, v7);
  return v4;
}

char *_AsyncChannel.init(bufferingPolicy:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DB47E830(a1);
  v7 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, *(v3 + 80), v5, v6);
  (*(*(v7 - 8) + 8))(a1, v7);
  return v4;
}

void _AsyncChannel.yield(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[2];
  os_unfair_lock_lock(v5 + 4);
  v16 = *(v4 + 80);
  v6 = *(*v2 + 112);
  swift_beginAccess();
  v9 = type metadata accessor for _AsyncChannel.WeakReceiver(255, v16, v7, v8);
  sub_1DB50AA60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DB50AEB0();
  swift_endAccess();
  v18[0] = *(v2 + v6);
  swift_getWitnessTable();
  if (sub_1DB50AE70())
  {
    swift_beginAccess();

    sub_1DB47D274(a1);

    os_unfair_lock_unlock(v5 + 4);
    return;
  }

  os_unfair_lock_unlock(v5 + 4);
  v10 = *(v2 + v6);

  if (!sub_1DB50AA00())
  {
    goto LABEL_13;
  }

  v11 = 0;
  v12 = v10 + 32;
  while (1)
  {
    v13 = sub_1DB50A9F0();
    sub_1DB50A9B0();
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v9 - 8);
    (*(v14 + 16))(v18, v12, v9);
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_12;
    }

LABEL_8:
    (*(v14 + 32))(v17, v18, v9);
    if (swift_weakLoadStrong())
    {
      sub_1DB47D274(a1);
    }

    (*(v14 + 8))(v17, v9);
    v12 += 8;
    ++v11;
    if (v15 == sub_1DB50AA00())
    {
      goto LABEL_13;
    }
  }

  v17[0] = sub_1DB50B380();
  v14 = *(v9 - 8);
  (*(v14 + 16))(v18, v17, v9);
  swift_unknownObjectRelease();
  v15 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
}

uint64_t _AsyncChannel.makeAsyncIterator()()
{
  v1 = *(v0 + 16);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1DB47E9D4(&v6, v3, v4);
  os_unfair_lock_unlock((v1 + v2));
  return v6;
}

uint64_t sub_1DB47E0DC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  type metadata accessor for _AsyncChannel.Receiver(0, v7, a3, a4);
  v8 = *(v6 + 96);
  swift_allocObject();
  *a2 = sub_1DB47E3A8(a1 + v8);
  swift_beginAccess();
  sub_1DB50BC00();
  swift_endAccess();

  sub_1DB47DB88();
  swift_beginAccess();
  type metadata accessor for _AsyncChannel.WeakReceiver(255, v7, v9, v10);
  sub_1DB50AA60();
  sub_1DB50AA10();
  return swift_endAccess();
}

char *_AsyncChannel.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  v5 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return v0;
}

uint64_t sub_1DB47E30C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1DB47E368@<X0>(uint64_t *a1@<X8>)
{
  v2 = _AsyncChannel.makeAsyncIterator()();

  *a1 = v2;
  return result;
}

uint64_t sub_1DB47E3A8(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = *(*v1 + 80);
  v4 = sub_1DB50AC20();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v27 - v5;
  v6 = sub_1DB50ABF0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v8;
  v29 = sub_1DB50ABD0();
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v27 - v10;
  v32 = sub_1DB50AC30();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v27 - v12;
  v14 = sub_1DB50B120();
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  (*(v7 + 56))(&v27 - v19, 1, 1, v6, v18);
  (*(v9 + 16))(v11, v31, v29);
  v37 = v3;
  v38 = v20;
  nullsub_8();
  v21 = v28;
  sub_1DB50AC40();
  (*(v21 + 16))(v16, v20, v14);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    result = (*(v21 + 8))(v16, v14);
    __break(1u);
  }

  else
  {
    v22 = *(v7 + 32);
    v23 = v33;
    v22(v33, v16, v6);
    v22((v2 + *(*v2 + 88)), v23, v6);
    v24 = v34;
    v25 = v32;
    sub_1DB50AC00();
    (*(v30 + 8))(v13, v25);
    (*(v35 + 32))(v2 + *(*v2 + 96), v24, v36);
    (*(v21 + 8))(v20, v14);
    return v2;
  }

  return result;
}

char *sub_1DB47E830(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 2) = v5;
  v6 = *(v4 + 96);
  v7 = *(v4 + 80);
  v10 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, v7, v8, v9);
  (*(*(v10 - 8) + 16))(&v2[v6], a1, v10);
  type metadata accessor for _AsyncChannel.Receiver(0, v7, v11, v12);
  swift_allocObject();
  *&v2[*(*v2 + 104)] = sub_1DB47E3A8(a1);
  type metadata accessor for _AsyncChannel.WeakReceiver(0, v7, v13, v14);
  *&v2[*(*v2 + 112)] = sub_1DB50A9D0();
  return v2;
}

BOOL sub_1DB47E97C(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
  }

  return Strong == 0;
}

uint64_t sub_1DB47EA30(uint64_t a1)
{
  result = sub_1DB50ABD0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB47EB28(uint64_t a1)
{
  result = sub_1DB50ABF0();
  if (v2 <= 0x3F)
  {
    result = sub_1DB50AC20();
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

uint64_t sub_1DB47EC18(uint64_t a1)
{
  result = sub_1DB50ABD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB47ECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB47ED04(uint64_t a1, uint64_t a2)
{
  v3[115] = v2;
  v3[114] = a2;
  v3[113] = a1;
  v4 = sub_1DB50A350();
  v3[116] = v4;
  v3[117] = *(v4 - 8);
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v5 = sub_1DB50A230();
  v3[125] = v5;
  v3[126] = *(v5 - 8);
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v3[129] = type metadata accessor for DaemonGetAssetRequest(0);
  v3[130] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB47EED0, v2, 0);
}

uint64_t sub_1DB47EED0()
{
  v37 = v0;
  sub_1DB488E1C(*(v0 + 912), *(v0 + 1040), type metadata accessor for DaemonGetAssetRequest);
  sub_1DB50A220();
  v1 = sub_1DB50A250();
  v2 = sub_1DB50B070();
  v3 = sub_1DB50B0E0();
  v4 = *(v0 + 1040);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    sub_1DB50B320();

    v7 = sub_1DB509B80();
    MEMORY[0x1E1285C70](v7);

    sub_1DB488DBC(v4, type metadata accessor for DaemonGetAssetRequest);
    v8 = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB52FBA0, &v36);

    *(v5 + 4) = v8;
    v9 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v1, v2, v9, "DaemonSession.send", "request=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1E1288220](v6, -1, -1);
    MEMORY[0x1E1288220](v5, -1, -1);
  }

  else
  {

    sub_1DB488DBC(v4, type metadata accessor for DaemonGetAssetRequest);
  }

  v10 = *(v0 + 1024);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 1000);
  (*(v11 + 16))(*(v0 + 1016), v10, v12);
  sub_1DB50A2C0();
  swift_allocObject();
  *(v0 + 1048) = sub_1DB50A2B0();
  (*(v11 + 8))(v10, v12);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 1032);
  v14 = *(v0 + 912);
  *(v0 + 1056) = qword_1ECC46748;
  sub_1DB50BEB0();
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v15);
  *(v0 + 1064) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB50EE90;
  v35 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = 0x80000001DB52AE10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 816) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 792));
  sub_1DB488E1C(v14, boxed_opaque_existential_0, type metadata accessor for DaemonGetAssetRequest);
  sub_1DB30C4B8(v0 + 792, v0 + 728, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1DB301D4C(v0 + 728, v0 + 336);
  *(v0 + 368) = 0;
  v20 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[40 * v22];
  v24 = *(v0 + 336);
  v25 = *(v0 + 352);
  v23[64] = *(v0 + 368);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1DB30623C(v0 + 792, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v17 + 32) = v20;
  Logger.debug(_:)(v17, v15, v16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB35F694(v0 + 56);
  v27 = *(v0 + 920);
  v28 = *(v0 + 912);
  v29 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
  v30 = swift_task_alloc();
  *(v0 + 1072) = v30;
  v30[2] = v27;
  v30[3] = v0 + 56;
  v30[4] = v28;
  v31 = swift_task_alloc();
  *(v0 + 1080) = v31;
  *v31 = v0;
  v31[1] = sub_1DB47FDF8;
  v32 = *(v0 + 984);
  v33 = *(v0 + 960);

  return MEMORY[0x1EEE6DE38](v32, v27, v29, 0x293A5F28646E6573, 0xE800000000000000, sub_1DB488E84, v30, v33);
}

uint64_t sub_1DB47FDF8()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  v3 = *(v2 + 920);

  if (v0)
  {
    v4 = sub_1DB480CDC;
  }

  else
  {
    v4 = sub_1DB47FF40;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB47FF40()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 976);
  sub_1DB488E90(*(v0 + 984), v1);
  sub_1DB50BEB0();
  v3 = *(v0 + 280);
  v98 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v101 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001DB52AEB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  sub_1DB30C4B8(v1, v2, &qword_1ECC46118, &qword_1DB51E788);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DB30623C(v2, &qword_1ECC46118, &qword_1DB51E788);
  v7 = 0x6572756C696166;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = 0x73736563637573;
  }

  *(v0 + 784) = MEMORY[0x1E69E6158];
  *(v0 + 760) = v7;
  *(v0 + 768) = 0xE700000000000000;
  sub_1DB30C4B8(v0 + 760, v0 + 824, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_1DB301D4C(v0 + 824, v0 + 416);
  *(v0 + 448) = 0;
  v8 = v101;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v101 + 2) + 1, 1, v101);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 992);
  v12 = *(v0 + 968);
  *(v8 + 2) = v10 + 1;
  v13 = &v8[40 * v10];
  v14 = *(v0 + 416);
  v15 = *(v0 + 432);
  v13[64] = *(v0 + 448);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 760, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v4 + 32) = v8;
  Logger.info(_:)(v4, v3, v98);

  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  sub_1DB30C4B8(v11, v12, &qword_1ECC46118, &qword_1DB51E788);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v0 + 1048);
    v18 = *(v0 + 968);
    v19 = *(v0 + 920);
    v20 = *(v0 + 904);
    sub_1DB30623C(*(v0 + 992), &qword_1ECC46118, &qword_1DB51E788);
    sub_1DB488F00(v18, v20);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_1DB3632DC(v19, "DaemonSession.send", 18, 2, v17);

    v21 = *(v0 + 8);
  }

  else
  {
    v22 = *(v0 + 992);
    v23 = *(v0 + 968);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    v28 = v23[4];
    *(v0 + 16) = *v23;
    *(v0 + 24) = v25;
    *(v0 + 32) = v26;
    *(v0 + 40) = v27;
    *(v0 + 48) = v28;
    sub_1DB36562C();
    swift_willThrowTypedImpl();
    v29 = swift_allocError();
    *v30 = v24;
    v30[1] = v25;
    v30[2] = v26;
    v30[3] = v27;
    v30[4] = v28;
    sub_1DB30623C(v22, &qword_1ECC46118, &qword_1DB51E788);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    *(v0 + 888) = v29;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v32 = *(v0 + 952);
      v33 = *(v0 + 944);
      v34 = *(v0 + 936);
      v35 = *(v0 + 928);

      (*(v34 + 32))(v33, v32, v35);
      sub_1DB50BEB0();
      v95 = *(v0 + 328);
      v99 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v99);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1DB50EE90;
      v102 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
      v37._object = 0x80000001DB52AE90;
      v37._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v0 + 656) = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
      v96 = *(v34 + 16);
      v96(boxed_opaque_existential_0, v33, v35);
      sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 456) = 0u;
      *(v0 + 472) = 0u;
      sub_1DB301D4C(v0 + 696, v0 + 456);
      *(v0 + 488) = 0;
      v39 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1DB301BC0(0, *(v102 + 2) + 1, 1, v102);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v39);
      }

      v42 = *(v0 + 944);
      v43 = *(v0 + 936);
      v44 = *(v0 + 928);
      *(v39 + 2) = v41 + 1;
      v45 = &v39[40 * v41];
      v46 = *(v0 + 456);
      v47 = *(v0 + 472);
      v45[64] = *(v0 + 488);
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v36 + 32) = v39;
      Logger.error(_:)(v36, v99, v95);

      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      type metadata accessor for DaemonError(0);
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v96(v49, v42, v44);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v43 + 8))(v42, v44);
      v50 = *(v0 + 888);
    }

    else
    {

      *(v0 + 880) = v29;
      v51 = v29;
      if (swift_dynamicCast())
      {

        v53 = *(v0 + 96);
        v52 = *(v0 + 104);
        v54 = *(v0 + 112);
        v55 = *(v0 + 120);
        v56 = *(v0 + 128);
        sub_1DB50BEB0();
        v93 = *(v0 + 248);
        v94 = *(v0 + 240);
        __swift_project_boxed_opaque_existential_1((v0 + 216), v94);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1DB50EE90;
        v103 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
        v58._countAndFlagsBits = 0xD000000000000027;
        v58._object = 0x80000001DB52AE60;
        LogMessage.StringInterpolation.appendLiteral(_:)(v58);
        *(v0 + 592) = &type metadata for DaemonResponseCodableError;
        v59 = swift_allocObject();
        *(v0 + 568) = v59;
        v59[2] = v53;
        v59[3] = v52;
        v100 = v54;
        v59[4] = v54;
        v59[5] = v55;
        v97 = v55;
        v59[6] = v56;
        sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 496) = 0u;
        *(v0 + 512) = 0u;

        sub_1DB301D4C(v0 + 600, v0 + 496);
        *(v0 + 528) = 0;
        v60 = v103;
        v61 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1DB301BC0(0, *(v103 + 2) + 1, 1, v103);
        }

        v63 = *(v60 + 2);
        v62 = *(v60 + 3);
        if (v63 >= v62 >> 1)
        {
          v60 = sub_1DB301BC0((v62 > 1), v63 + 1, 1, v60);
        }

        *(v60 + 2) = v63 + 1;
        v64 = &v60[40 * v63];
        v65 = *(v0 + 496);
        v66 = *(v0 + 512);
        v64[64] = *(v0 + 528);
        *(v64 + 2) = v65;
        *(v64 + 3) = v66;
        sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
        v67._countAndFlagsBits = 0;
        v67._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v67);
        *(v57 + 32) = v60;
        Logger.error(_:)(v57, v94, v93);

        __swift_destroy_boxed_opaque_existential_0((v0 + 216));
        v68 = sub_1DB3E3700();
        if (v68)
        {
          v69 = v68;

          type metadata accessor for DaemonError(0);
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
          swift_allocError();
          *v70 = v69;
        }

        else
        {
          type metadata accessor for DaemonError(0);
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
          swift_allocError();
          v89 = v88;
          v90 = swift_allocError();
          *v91 = v61;
          v91[1] = v52;
          v91[2] = v100;
          v91[3] = v97;
          v91[4] = v56;
          *v89 = v90;
        }

        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v50 = *(v0 + 880);
      }

      else
      {

        sub_1DB50BEB0();
        v71 = *(v0 + 160);
        v72 = *(v0 + 168);
        __swift_project_boxed_opaque_existential_1((v0 + 136), v71);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1DB50EE90;
        v104 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
        v74._countAndFlagsBits = 0xD00000000000002FLL;
        v74._object = 0x80000001DB52AE30;
        LogMessage.StringInterpolation.appendLiteral(_:)(v74);
        swift_getErrorValue();
        v75 = *(v0 + 856);
        v76 = *(v0 + 864);
        *(v0 + 688) = v76;
        v77 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
        (*(*(v76 - 8) + 16))(v77, v75, v76);
        sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 376) = 0u;
        *(v0 + 392) = 0u;
        sub_1DB301D4C(v0 + 536, v0 + 376);
        *(v0 + 408) = 0;
        v78 = v104;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1DB301BC0(0, *(v104 + 2) + 1, 1, v104);
        }

        v80 = *(v78 + 2);
        v79 = *(v78 + 3);
        if (v80 >= v79 >> 1)
        {
          v78 = sub_1DB301BC0((v79 > 1), v80 + 1, 1, v78);
        }

        *(v78 + 2) = v80 + 1;
        v81 = &v78[40 * v80];
        v82 = *(v0 + 376);
        v83 = *(v0 + 392);
        v81[64] = *(v0 + 408);
        *(v81 + 2) = v82;
        *(v81 + 3) = v83;
        sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
        v84._countAndFlagsBits = 0;
        v84._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v84);
        *(v73 + 32) = v78;
        Logger.error(_:)(v73, v71, v72);

        __swift_destroy_boxed_opaque_existential_0((v0 + 136));
        type metadata accessor for DaemonError(0);
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v86 = v85;
        v87 = v29;
        sub_1DB4F1C64(v29, v86);
        swift_willThrow();
        v50 = v29;
      }
    }

    sub_1DB3632DC(*(v0 + 920), "DaemonSession.send", 18, 2, *(v0 + 1048));

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_1DB480CDC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 1088);
  *(v0 + 888) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 952);
    v4 = *(v0 + 944);
    v5 = *(v0 + 936);
    v6 = *(v0 + 928);

    (*(v5 + 32))(v4, v3, v6);
    sub_1DB50BEB0();
    v67 = *(v0 + 328);
    v68 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v68);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v69 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52AE90;
    v8._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 656) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v65 = *(v5 + 16);
    v65(boxed_opaque_existential_0, v4, v6);
    sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1DB301D4C(v0 + 696, v0 + 456);
    *(v0 + 488) = 0;
    v10 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DB301BC0(0, *(v69 + 2) + 1, 1, v69);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
    }

    v13 = *(v0 + 944);
    v14 = *(v0 + 936);
    v15 = *(v0 + 928);
    *(v10 + 2) = v12 + 1;
    v16 = &v10[40 * v12];
    v17 = *(v0 + 456);
    v18 = *(v0 + 472);
    v16[64] = *(v0 + 488);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v10;
    Logger.error(_:)(v7, v68, v67);

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    type metadata accessor for DaemonError(0);
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v65(v20, v13, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    v21 = *(v0 + 888);
  }

  else
  {

    *(v0 + 880) = v1;
    v22 = v1;
    if (swift_dynamicCast())
    {

      v24 = *(v0 + 96);
      v23 = *(v0 + 104);
      v26 = *(v0 + 112);
      v25 = *(v0 + 120);
      v27 = *(v0 + 128);
      sub_1DB50BEB0();
      v64 = *(v0 + 248);
      v66 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v66);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1DB50EE90;
      v70 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v29._countAndFlagsBits = 0xD000000000000027;
      v29._object = 0x80000001DB52AE60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      *(v0 + 592) = &type metadata for DaemonResponseCodableError;
      v30 = swift_allocObject();
      *(v0 + 568) = v30;
      v30[2] = v24;
      v30[3] = v23;
      v30[4] = v26;
      v30[5] = v25;
      v30[6] = v27;
      sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;

      sub_1DB301D4C(v0 + 600, v0 + 496);
      *(v0 + 528) = 0;
      v31 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v70 + 2) + 1, 1, v70);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = *(v0 + 496);
      v36 = *(v0 + 512);
      v34[64] = *(v0 + 528);
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v28 + 32) = v31;
      Logger.error(_:)(v28, v66, v64);

      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v38 = sub_1DB3E3700();
      if (v38)
      {
        v39 = v38;

        type metadata accessor for DaemonError(0);
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        *v40 = v39;
      }

      else
      {
        type metadata accessor for DaemonError(0);
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v59 = v58;
        sub_1DB36562C();
        v60 = swift_allocError();
        *v61 = v24;
        v61[1] = v23;
        v61[2] = v26;
        v61[3] = v25;
        v61[4] = v27;
        *v59 = v60;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v21 = *(v0 + 880);
    }

    else
    {

      sub_1DB50BEB0();
      v41 = *(v0 + 160);
      v42 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v41);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1DB50EE90;
      v71 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v44._countAndFlagsBits = 0xD00000000000002FLL;
      v44._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      swift_getErrorValue();
      v45 = *(v0 + 856);
      v46 = *(v0 + 864);
      *(v0 + 688) = v46;
      v47 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v46 - 8) + 16))(v47, v45, v46);
      sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1DB301D4C(v0 + 536, v0 + 376);
      *(v0 + 408) = 0;
      v48 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1DB301BC0(0, *(v71 + 2) + 1, 1, v71);
      }

      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        v48 = sub_1DB301BC0((v49 > 1), v50 + 1, 1, v48);
      }

      *(v48 + 2) = v50 + 1;
      v51 = &v48[40 * v50];
      v52 = *(v0 + 376);
      v53 = *(v0 + 392);
      v51[64] = *(v0 + 408);
      *(v51 + 2) = v52;
      *(v51 + 3) = v53;
      sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v54);
      *(v43 + 32) = v48;
      Logger.error(_:)(v43, v41, v42);

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      type metadata accessor for DaemonError(0);
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v56 = v55;
      v57 = v1;
      sub_1DB4F1C64(v1, v56);
      swift_willThrow();
      v21 = v1;
    }
  }

  sub_1DB3632DC(*(v0 + 920), "DaemonSession.send", 18, 2, *(v0 + 1048));

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1DB4816BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[127] = v5;
  v6[126] = a5;
  v6[125] = a4;
  v6[124] = a3;
  v6[123] = a2;
  v11 = sub_1DB50A350();
  v6[128] = v11;
  v6[129] = *(v11 - 8);
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v12 = sub_1DB50A230();
  v6[132] = v12;
  v6[133] = *(v12 - 8);
  v6[134] = swift_task_alloc();
  v6[135] = swift_task_alloc();
  v6[113] = a2;
  v6[114] = a3;
  v6[115] = a4;
  v6[116] = a5;

  return MEMORY[0x1EEE6DFA0](sub_1DB481830, v5, 0);
}

uint64_t sub_1DB481830()
{
  v39 = v0;

  sub_1DB50A220();
  v1 = sub_1DB50A250();
  v2 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v3 = *(v0 + 1008);
    v4 = *(v0 + 1000);
    v5 = *(v0 + 992);
    v6 = *(v0 + 984);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52FAF0);
    MEMORY[0x1E1285C70](v4, v3);
    MEMORY[0x1E1285C70](0x6568636163202C20, 0xED0000203A79654BLL);
    MEMORY[0x1E1285C70](v6, v5);

    v9 = sub_1DB3D4EE8(0, 0xE000000000000000, &v38);

    *(v7 + 4) = v9;
    v10 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v1, v2, v10, "DaemonSession.send", "request=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E1288220](v8, -1, -1);
    MEMORY[0x1E1288220](v7, -1, -1);
  }

  else
  {
  }

  v11 = (v0 + 424);
  v12 = *(v0 + 1080);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  (*(v13 + 16))(*(v0 + 1072), v12, v14);
  sub_1DB50A2C0();
  swift_allocObject();
  *(v0 + 1088) = sub_1DB50A2B0();
  (*(v13 + 8))(v12, v14);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v36 = v0 + 184;
  *(v0 + 1096) = qword_1ECC46748;
  sub_1DB50BEB0();
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v0 + 104), v15);
  *(v0 + 1104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB50EE90;
  v37 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = 0x80000001DB52AE10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 864) = &type metadata for DaemonCacheEvictRequest;
  v19 = swift_allocObject();
  *(v0 + 840) = v19;
  v20 = *(v0 + 912);
  v21 = *(v0 + 920);
  v22 = *(v0 + 928);
  v19[2] = *(v0 + 904);
  v19[3] = v20;
  v19[4] = v21;
  v19[5] = v22;
  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v11 = 0u;
  *(v0 + 440) = 0u;

  sub_1DB301D4C(v0 + 776, v0 + 424);
  *(v0 + 456) = 0;
  v23 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[40 * v25];
  v27 = *v11;
  v28 = *(v0 + 440);
  v26[64] = *(v0 + 456);
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  *(v17 + 32) = v23;
  Logger.debug(_:)(v17, v15, v16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  sub_1DB35F694(v36);
  v30 = *(v0 + 1016);
  v31 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
  v32 = swift_task_alloc();
  *(v0 + 1112) = v32;
  v32[2] = v30;
  v32[3] = v36;
  v32[4] = v0 + 904;
  v33 = swift_task_alloc();
  *(v0 + 1120) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460E8, &qword_1DB51E740);
  *v33 = v0;
  v33[1] = sub_1DB482764;

  return MEMORY[0x1EEE6DE38](v0 + 16, v30, v31, 0x293A5F28646E6573, 0xE800000000000000, sub_1DB488B2C, v32, v34);
}

uint64_t sub_1DB482764()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  v3 = *(v2 + 1016);

  if (v0)
  {
    v4 = sub_1DB483524;
  }

  else
  {
    v4 = sub_1DB4828AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB4828AC()
{
  v1 = *(v0 + 24);
  v85 = *(v0 + 32);
  v87 = *(v0 + 16);
  v83 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1DB50BEB0();
  v4 = *(v0 + 168);
  v89 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v91 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001DB52AEB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = 0x6572756C696166;
  if (v3)
  {
    v7 = 0x73736563637573;
  }

  *(v0 + 832) = MEMORY[0x1E69E6158];
  *(v0 + 808) = v7;
  *(v0 + 816) = 0xE700000000000000;
  sub_1DB30C4B8(v0 + 808, v0 + 872, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  sub_1DB301D4C(v0 + 872, v0 + 384);
  *(v0 + 416) = 0;
  v8 = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v91 + 2) + 1, 1, v91);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = *(v0 + 384);
  v13 = *(v0 + 400);
  v11[64] = *(v0 + 416);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1DB30623C(v0 + 808, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v8;
  Logger.info(_:)(v5, v4, v89);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  if (v3)
  {
    v15 = *(v0 + 1088);
    v16 = *(v0 + 1016);
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    sub_1DB3632DC(v16, "DaemonSession.send", 18, 2, v15);

    v17 = *(v0 + 8);
  }

  else
  {
    *(v0 + 64) = v87;
    *(v0 + 72) = v1;
    *(v0 + 80) = v85;
    *(v0 + 88) = v83;
    *(v0 + 96) = v2;
    sub_1DB36562C();

    swift_willThrowTypedImpl();
    v18 = swift_allocError();
    *v19 = v87;
    v19[1] = v1;
    v19[2] = v85;
    v19[3] = v83;
    v19[4] = v2;
    sub_1DB488B40(v87, v1, v85, v83, v2, 0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    *(v0 + 976) = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v21 = *(v0 + 1048);
      v22 = *(v0 + 1040);
      v23 = *(v0 + 1032);
      v24 = *(v0 + 1024);

      (*(v23 + 32))(v22, v21, v24);
      sub_1DB50BEB0();
      v25 = *(v0 + 328);
      v90 = *(v0 + 336);
      __swift_project_boxed_opaque_existential_1((v0 + 304), v25);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1DB50EE90;
      v92 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
      v27._object = 0x80000001DB52AE90;
      v27._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      *(v0 + 736) = v24;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 712));
      v88 = *(v23 + 16);
      v88(boxed_opaque_existential_0, v22, v24);
      sub_1DB30C4B8(v0 + 712, v0 + 744, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      sub_1DB301D4C(v0 + 744, v0 + 464);
      *(v0 + 496) = 0;
      v29 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DB301BC0(0, *(v92 + 2) + 1, 1, v92);
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
      }

      v32 = *(v0 + 1040);
      v33 = *(v0 + 1032);
      v34 = *(v0 + 1024);
      *(v29 + 2) = v31 + 1;
      v35 = &v29[40 * v31];
      v36 = *(v0 + 464);
      v37 = *(v0 + 480);
      v35[64] = *(v0 + 496);
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *(v26 + 32) = v29;
      Logger.error(_:)(v26, v25, v90);

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      type metadata accessor for DaemonError(0);
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v88(v39, v32, v34);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v33 + 8))(v32, v34);
      v40 = *(v0 + 976);
    }

    else
    {

      *(v0 + 968) = v18;
      v41 = v18;
      if (swift_dynamicCast())
      {

        v42 = *(v0 + 224);
        v43 = *(v0 + 232);
        v45 = *(v0 + 240);
        v44 = *(v0 + 248);
        v46 = *(v0 + 256);
        sub_1DB50BEB0();
        v82 = *(v0 + 376);
        v84 = *(v0 + 368);
        __swift_project_boxed_opaque_existential_1((v0 + 344), v84);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1DB50EE90;
        v93 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
        v48._countAndFlagsBits = 0xD000000000000027;
        v48._object = 0x80000001DB52AE60;
        LogMessage.StringInterpolation.appendLiteral(_:)(v48);
        *(v0 + 640) = &type metadata for DaemonResponseCodableError;
        v49 = swift_allocObject();
        *(v0 + 616) = v49;
        v49[2] = v42;
        v49[3] = v43;
        v49[4] = v45;
        v49[5] = v44;
        v86 = v44;
        v49[6] = v46;
        sub_1DB30C4B8(v0 + 616, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 504) = 0u;
        *(v0 + 520) = 0u;

        sub_1DB301D4C(v0 + 648, v0 + 504);
        *(v0 + 536) = 0;
        v50 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1DB301BC0(0, *(v93 + 2) + 1, 1, v93);
        }

        v52 = *(v50 + 2);
        v51 = *(v50 + 3);
        if (v52 >= v51 >> 1)
        {
          v50 = sub_1DB301BC0((v51 > 1), v52 + 1, 1, v50);
        }

        *(v50 + 2) = v52 + 1;
        v53 = &v50[40 * v52];
        v54 = *(v0 + 504);
        v55 = *(v0 + 520);
        v53[64] = *(v0 + 536);
        *(v53 + 2) = v54;
        *(v53 + 3) = v55;
        sub_1DB30623C(v0 + 616, &qword_1ECC426B0, &qword_1DB50EEB0);
        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v56);
        *(v47 + 32) = v50;
        Logger.error(_:)(v47, v84, v82);

        __swift_destroy_boxed_opaque_existential_0((v0 + 344));
        v57 = sub_1DB3E3700();
        if (v57)
        {
          v58 = v57;

          type metadata accessor for DaemonError(0);
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
          swift_allocError();
          *v59 = v58;
        }

        else
        {
          type metadata accessor for DaemonError(0);
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
          swift_allocError();
          v78 = v77;
          v79 = swift_allocError();
          *v80 = v42;
          v80[1] = v43;
          v80[2] = v45;
          v80[3] = v86;
          v80[4] = v46;
          *v78 = v79;
        }

        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v40 = *(v0 + 968);
      }

      else
      {

        sub_1DB50BEB0();
        v60 = *(v0 + 288);
        v61 = *(v0 + 296);
        __swift_project_boxed_opaque_existential_1((v0 + 264), v60);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1DB50EE90;
        v94 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
        v63._countAndFlagsBits = 0xD00000000000002FLL;
        v63._object = 0x80000001DB52AE30;
        LogMessage.StringInterpolation.appendLiteral(_:)(v63);
        swift_getErrorValue();
        v64 = *(v0 + 936);
        v65 = *(v0 + 944);
        *(v0 + 704) = v65;
        v66 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
        (*(*(v65 - 8) + 16))(v66, v64, v65);
        sub_1DB30C4B8(v0 + 680, v0 + 584, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 544) = 0u;
        *(v0 + 560) = 0u;
        sub_1DB301D4C(v0 + 584, v0 + 544);
        *(v0 + 576) = 0;
        v67 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1DB301BC0(0, *(v94 + 2) + 1, 1, v94);
        }

        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        if (v69 >= v68 >> 1)
        {
          v67 = sub_1DB301BC0((v68 > 1), v69 + 1, 1, v67);
        }

        *(v67 + 2) = v69 + 1;
        v70 = &v67[40 * v69];
        v71 = *(v0 + 544);
        v72 = *(v0 + 560);
        v70[64] = *(v0 + 576);
        *(v70 + 2) = v71;
        *(v70 + 3) = v72;
        sub_1DB30623C(v0 + 680, &qword_1ECC426B0, &qword_1DB50EEB0);
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v73);
        *(v62 + 32) = v67;
        Logger.error(_:)(v62, v60, v61);

        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        type metadata accessor for DaemonError(0);
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v75 = v74;
        v76 = v18;
        sub_1DB4F1C64(v18, v75);
        swift_willThrow();
        v40 = v18;
      }
    }

    sub_1DB3632DC(*(v0 + 1016), "DaemonSession.send", 18, 2, *(v0 + 1088));

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1DB483524()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  v1 = *(v0 + 1128);
  *(v0 + 976) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1048);
    v4 = *(v0 + 1040);
    v5 = *(v0 + 1032);
    v6 = *(v0 + 1024);

    (*(v5 + 32))(v4, v3, v6);
    sub_1DB50BEB0();
    v7 = *(v0 + 328);
    v70 = *(v0 + 336);
    __swift_project_boxed_opaque_existential_1((v0 + 304), v7);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB50EE90;
    v71 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001DB52AE90;
    v9._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    *(v0 + 736) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 712));
    v68 = *(v5 + 16);
    v68(boxed_opaque_existential_0, v4, v6);
    sub_1DB30C4B8(v0 + 712, v0 + 744, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_1DB301D4C(v0 + 744, v0 + 464);
    *(v0 + 496) = 0;
    v11 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DB301BC0(0, *(v71 + 2) + 1, 1, v71);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1DB301BC0((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = *(v0 + 1040);
    v15 = *(v0 + 1032);
    v16 = *(v0 + 1024);
    *(v11 + 2) = v13 + 1;
    v17 = &v11[40 * v13];
    v18 = *(v0 + 464);
    v19 = *(v0 + 480);
    v17[64] = *(v0 + 496);
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v8 + 32) = v11;
    Logger.error(_:)(v8, v7, v70);

    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    type metadata accessor for DaemonError(0);
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v68(v21, v14, v16);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    v22 = *(v0 + 976);
  }

  else
  {

    *(v0 + 968) = v1;
    v23 = v1;
    if (swift_dynamicCast())
    {

      v24 = *(v0 + 224);
      v25 = *(v0 + 232);
      v26 = *(v0 + 240);
      v27 = *(v0 + 248);
      v28 = *(v0 + 256);
      sub_1DB50BEB0();
      v66 = *(v0 + 376);
      v67 = *(v0 + 368);
      __swift_project_boxed_opaque_existential_1((v0 + 344), v67);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1DB50EE90;
      v72 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v30._countAndFlagsBits = 0xD000000000000027;
      v30._object = 0x80000001DB52AE60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      *(v0 + 640) = &type metadata for DaemonResponseCodableError;
      v31 = swift_allocObject();
      *(v0 + 616) = v31;
      v31[2] = v24;
      v31[3] = v25;
      v69 = v26;
      v31[4] = v26;
      v31[5] = v27;
      v32 = v27;
      v31[6] = v28;
      sub_1DB30C4B8(v0 + 616, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 504) = 0u;
      *(v0 + 520) = 0u;

      sub_1DB301D4C(v0 + 648, v0 + 504);
      *(v0 + 536) = 0;
      v33 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v72 + 2) + 1, 1, v72);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = *(v0 + 504);
      v38 = *(v0 + 520);
      v36[64] = *(v0 + 536);
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      sub_1DB30623C(v0 + 616, &qword_1ECC426B0, &qword_1DB50EEB0);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v29 + 32) = v33;
      Logger.error(_:)(v29, v67, v66);

      __swift_destroy_boxed_opaque_existential_0((v0 + 344));
      v40 = sub_1DB3E3700();
      if (v40)
      {
        v41 = v40;

        type metadata accessor for DaemonError(0);
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        *v42 = v41;
      }

      else
      {
        type metadata accessor for DaemonError(0);
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v61 = v60;
        sub_1DB36562C();
        v62 = swift_allocError();
        *v63 = v24;
        v63[1] = v25;
        v63[2] = v69;
        v63[3] = v32;
        v63[4] = v28;
        *v61 = v62;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v22 = *(v0 + 968);
    }

    else
    {

      sub_1DB50BEB0();
      v43 = *(v0 + 288);
      v44 = *(v0 + 296);
      __swift_project_boxed_opaque_existential_1((v0 + 264), v43);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1DB50EE90;
      v73 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v46._countAndFlagsBits = 0xD00000000000002FLL;
      v46._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      swift_getErrorValue();
      v47 = *(v0 + 936);
      v48 = *(v0 + 944);
      *(v0 + 704) = v48;
      v49 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
      (*(*(v48 - 8) + 16))(v49, v47, v48);
      sub_1DB30C4B8(v0 + 680, v0 + 584, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      sub_1DB301D4C(v0 + 584, v0 + 544);
      *(v0 + 576) = 0;
      v50 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1DB301BC0(0, *(v73 + 2) + 1, 1, v73);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1DB301BC0((v51 > 1), v52 + 1, 1, v50);
      }

      *(v50 + 2) = v52 + 1;
      v53 = &v50[40 * v52];
      v54 = *(v0 + 544);
      v55 = *(v0 + 560);
      v53[64] = *(v0 + 576);
      *(v53 + 2) = v54;
      *(v53 + 3) = v55;
      sub_1DB30623C(v0 + 680, &qword_1ECC426B0, &qword_1DB50EEB0);
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      *(v45 + 32) = v50;
      Logger.error(_:)(v45, v43, v44);

      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      type metadata accessor for DaemonError(0);
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v58 = v57;
      v59 = v1;
      sub_1DB4F1C64(v1, v58);
      swift_willThrow();
      v22 = v1;
    }
  }

  sub_1DB3632DC(*(v0 + 1016), "DaemonSession.send", 18, 2, *(v0 + 1088));

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1DB483EC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a4;
  v47 = a1;
  v46 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v46);
  v44 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v35 - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v35[1] = v14 + 16;
  *(v14 + 20) = 0;
  v15 = v14;
  v16 = sub_1DB50ABA0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1DB30BE90(a3, &v48);
  v17 = *(v7 + 16);
  v37 = v7 + 16;
  v41 = v17;
  v18 = v45;
  v17(v10, v47, v45);
  v19 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
  v42 = v13;
  v20 = v19;
  v21 = *(v7 + 80);
  v22 = swift_allocObject();
  v39 = v8;
  v23 = v22;
  v22[2] = a2;
  v22[3] = v20;
  v38 = sub_1DB4892A8;
  v22[4] = a2;
  v22[5] = sub_1DB4892A8;
  v24 = v15;
  v22[6] = v15;
  sub_1DB2FEA0C(&v48, (v22 + 7));
  v36 = *(v7 + 32);
  v25 = v18;
  v36(v23 + ((v21 + 96) & ~v21), v10, v18);
  swift_retain_n();
  v26 = v24;
  swift_retain_n();
  v27 = sub_1DB388F14(0, 0, v42, &unk_1DB51E7A0, v23);
  v28 = a3[4];
  v42 = a3[3];
  v40 = __swift_project_boxed_opaque_existential_1(a3, v42);
  v29 = v44;
  sub_1DB488E1C(v43, v44, type metadata accessor for DaemonGetAssetRequest);
  swift_storeEnumTagMultiPayload();
  v41(v10, v47, v25);
  v30 = swift_allocObject();
  v30[2] = v38;
  v30[3] = v26;
  v30[4] = v27;
  v36(v30 + ((v21 + 40) & ~v21), v10, v25);
  v41 = *(v28 + 8);

  v43 = v27;

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  v32 = sub_1DB488D74(&qword_1ECC460F8, type metadata accessor for JetPackAssetDaemonMessage, &protocol conformance descriptor for JetPackAssetDaemonMessage);
  v33 = sub_1DB3370CC(&qword_1ECC46128, &qword_1ECC46118, &qword_1DB51E788, &protocol conformance descriptor for DaemonResponse<A>);
  (v41)(v29, sub_1DB489220, v30, v46, v31, v32, v33, v42, v28);
  sub_1DB488DBC(v29, type metadata accessor for JetPackAssetDaemonMessage);
}

uint64_t sub_1DB484718(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t (*)(), void *, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a7;
  v49 = a6;
  v50 = a5;
  v48 = a4;
  v54 = a1;
  v52 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v52);
  v47 = (v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v38 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v38[1] = v17 + 16;
  *(v17 + 20) = 0;
  v18 = sub_1DB50ABA0();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1DB30BE90(a3, &v55);
  v46 = v16;
  v44 = *(v10 + 16);
  v44(v13, v54, v53);
  v19 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
  v20 = *(v10 + 80);
  v40 = v13;
  v21 = swift_allocObject();
  v43 = v11;
  v22 = v10;
  v23 = v21;
  v21[2] = a2;
  v21[3] = v19;
  v42 = sub_1DB3659D8;
  v21[4] = a2;
  v21[5] = sub_1DB3659D8;
  v21[6] = v17;
  sub_1DB2FEA0C(&v55, (v21 + 7));
  v41 = *(v22 + 32);
  v24 = v13;
  v25 = v53;
  v41(v23 + ((v20 + 96) & ~v20), v24, v53);
  swift_retain_n();
  swift_retain_n();
  v26 = sub_1DB388F14(0, 0, v46, &unk_1DB51E760, v23);
  v46 = a3[3];
  v39 = a3[4];
  v45 = __swift_project_boxed_opaque_existential_1(a3, v46);
  v27 = v47;
  v28 = v50;
  *v47 = v48;
  v27[1] = v28;
  v29 = v51;
  v27[2] = v49;
  v27[3] = v29;
  swift_storeEnumTagMultiPayload();
  v30 = v40;
  v44(v40, v54, v25);
  v31 = (v20 + 40) & ~v20;
  v32 = swift_allocObject();
  v32[2] = v42;
  v32[3] = v17;
  v32[4] = v26;
  v41(v32 + v31, v30, v25);
  v33 = v39;
  v48 = *(v39 + 8);
  v49 = v17;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460E8, &qword_1DB51E740);
  v35 = sub_1DB488D74(&qword_1ECC460F8, type metadata accessor for JetPackAssetDaemonMessage, &protocol conformance descriptor for JetPackAssetDaemonMessage);
  v36 = sub_1DB3370CC(&qword_1ECC46100, &qword_1ECC460E8, &qword_1DB51E740, &protocol conformance descriptor for DaemonResponse<A>);
  v48(v27, sub_1DB488CA0, v32, v52, v34, v35, v36, v46, v33);
  sub_1DB488DBC(v27, type metadata accessor for JetPackAssetDaemonMessage);
}

uint64_t sub_1DB484FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1DB50B4F0();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB485078, a4, 0);
}

uint64_t sub_1DB485078()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 520) = qword_1ECC46748;
  sub_1DB50BEB0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52B090;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 536) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1DB301D4C(v0 + 288, v0 + 176);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v14 = sub_1DB50BE50();
  v16 = v15;
  sub_1DB50BC50();
  v17 = swift_task_alloc();
  *(v0 + 544) = v17;
  *v17 = v0;
  v17[1] = sub_1DB48536C;

  return sub_1DB487C44(v14, v16, 0, 0, 1);
}

uint64_t sub_1DB48536C()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v5 = *(*v1 + 496);
  *(*v1 + 552) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1DB4892A4;
  }

  else
  {
    v7 = sub_1DB4854F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DB4854F4()
{
  v1 = *(v0 + 536);
  sub_1DB50BEB0();
  v2 = *(v0 + 120);
  v26 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v27 = sub_1DB301BC0(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001DB52B110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1DB30C4B8(v0 + 352, v0 + 384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB301D4C(v0 + 384, v0 + 216);
  *(v0 + 248) = 0;
  v5 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB301BC0((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 464);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 216);
  v11 = *(v0 + 232);
  v9[64] = *(v0 + 248);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  sub_1DB30623C(v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v12._object = 0x80000001DB52B140;
  v12._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v5;
  Logger.error(_:)(v3, v2, v26);

  v13 = __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v8(v13))
  {
    v14 = *(v0 + 536);
    v15 = *(v0 + 480);
    sub_1DB50BEB0();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001DB52B170;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1DB301D4C(v0 + 416, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v20 = v15[3];
    v21 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v20);
    (*(v21 + 16))(0xD000000000000024, 0x80000001DB52B1A0, v20, v21);
    type metadata accessor for DaemonError(0);
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v22 = swift_allocError();
    *v23 = v14;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
    sub_1DB50AAF0();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1DB485918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1DB50B4F0();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4859E4, a4, 0);
}

uint64_t sub_1DB4859E4()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 520) = qword_1ECC46748;
  sub_1DB50BEB0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52B090;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 536) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1DB301D4C(v0 + 288, v0 + 176);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v14 = sub_1DB50BE50();
  v16 = v15;
  sub_1DB50BC50();
  v17 = swift_task_alloc();
  *(v0 + 544) = v17;
  *v17 = v0;
  v17[1] = sub_1DB485CD8;

  return sub_1DB487C44(v14, v16, 0, 0, 1);
}

uint64_t sub_1DB485CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v5 = *(*v1 + 496);
  *(*v1 + 552) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1DB486284;
  }

  else
  {
    v7 = sub_1DB485E60;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DB485E60()
{
  v1 = *(v0 + 536);
  sub_1DB50BEB0();
  v2 = *(v0 + 120);
  v26 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v27 = sub_1DB301BC0(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001DB52B110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1DB30C4B8(v0 + 352, v0 + 384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB301D4C(v0 + 384, v0 + 216);
  *(v0 + 248) = 0;
  v5 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB301BC0((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 464);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 216);
  v11 = *(v0 + 232);
  v9[64] = *(v0 + 248);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  sub_1DB30623C(v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v12._object = 0x80000001DB52B140;
  v12._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v5;
  Logger.error(_:)(v3, v2, v26);

  v13 = __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v8(v13))
  {
    v14 = *(v0 + 536);
    v15 = *(v0 + 480);
    sub_1DB50BEB0();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001DB52B170;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1DB301D4C(v0 + 416, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v20 = v15[3];
    v21 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v20);
    (*(v21 + 16))(0xD000000000000024, 0x80000001DB52B1A0, v20, v21);
    type metadata accessor for DaemonError(0);
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v22 = swift_allocError();
    *v23 = v14;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
    sub_1DB50AAF0();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1DB486284()
{
  v1 = v0[69];
  sub_1DB50BEB0();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001DB52B0C0;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1DB301D4C((v0 + 40), v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB4863E8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v39[1] = a4;
  v44 = a3;
  v45 = a2;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39[0] = v39 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46130, &qword_1DB51E7A8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v39 - v9);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v11 = v56;
  v12 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v13 = swift_allocObject();
  v46 = xmmword_1DB50EE90;
  *(v13 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v14 = swift_allocObject();
  *(v14 + 16) = v46;
  *(&v49 + 1) = MEMORY[0x1E69E6158];
  *&v48 = 0xD00000000000002DLL;
  *(&v48 + 1) = 0x80000001DB52AFE0;
  *(v14 + 48) = 0u;
  *(v14 + 32) = 0u;
  sub_1DB301D4C(&v48, v14 + 32);
  *(v14 + 64) = 0;
  *(v13 + 32) = v14;
  Logger.debug(_:)(v13, v11, v12);

  v15 = __swift_destroy_boxed_opaque_existential_0(v55);
  if ((v45(v15) & 1) == 0)
  {
    sub_1DB50BEB0();
    v17 = v56;
    v18 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v19 = swift_allocObject();
    *(v19 + 16) = v46;
    v20 = swift_allocObject();
    *(v20 + 16) = v46;
    *(&v49 + 1) = MEMORY[0x1E69E6158];
    *&v48 = 0xD000000000000044;
    *(&v48 + 1) = 0x80000001DB52B010;
    *(v20 + 48) = 0u;
    *(v20 + 32) = 0u;
    sub_1DB301D4C(&v48, v20 + 32);
    *(v20 + 64) = 0;
    *(v19 + 32) = v20;
    Logger.debug(_:)(v19, v17, v18);
LABEL_14:

    return __swift_destroy_boxed_opaque_existential_0(v55);
  }

  sub_1DB50AC60();
  v16 = v43;
  sub_1DB30C4B8(v43, v10, &qword_1ECC46130, &qword_1DB51E7A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55[0] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
    sub_1DB50AAF0();
  }

  else
  {
    sub_1DB488E90(v10, v39[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
    sub_1DB50AB00();
  }

  v21 = v16;
  v22 = v40;
  sub_1DB30C4B8(v21, v40, &qword_1ECC46130, &qword_1DB51E7A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    sub_1DB50BEB0();
    v24 = v56;
    v25 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v26 = swift_allocObject();
    *(v26 + 16) = v46;
    v54 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v27._object = 0x80000001DB52B060;
    v27._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    swift_getErrorValue();
    v28 = v51;
    v29 = v52;
    v53[3] = v52;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v53);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_0, v28, v29);
    sub_1DB30C4B8(v53, v47, &qword_1ECC426B0, &qword_1DB50EEB0);
    v48 = 0u;
    v49 = 0u;
    sub_1DB301D4C(v47, &v48);
    v50 = 0;
    v31 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
      v54 = v31;
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v48;
    v36 = v49;
    v34[64] = v50;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v54 = v31;
    sub_1DB30623C(v53, &qword_1ECC426B0, &qword_1DB50EEB0);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v26 + 32) = v54;
    Logger.error(_:)(v26, v24, v25);

    goto LABEL_14;
  }

  return sub_1DB30623C(v22, &qword_1ECC46130, &qword_1DB51E7A8);
}

uint64_t sub_1DB486A58(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v35 = *a1;
  v33 = *(a1 + 16);
  v34 = *(a1 + 8);
  v31 = *(a1 + 32);
  v32 = *(a1 + 24);
  v30 = *(a1 + 40);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v5 = v38;
  v6 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50EE90;
  *(&v43 + 1) = MEMORY[0x1E69E6158];
  *&v42 = 0xD00000000000002DLL;
  *(&v42 + 1) = 0x80000001DB52AFE0;
  *(v8 + 48) = 0u;
  *(v8 + 32) = 0u;
  sub_1DB301D4C(&v42, v8 + 32);
  *(v8 + 64) = 0;
  *(v7 + 32) = v8;
  Logger.debug(_:)(v7, v5, v6);

  v9 = __swift_destroy_boxed_opaque_existential_0(v37);
  if ((a2(v9) & 1) == 0)
  {
    sub_1DB50BEB0();
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DB50EE90;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DB50EE90;
    *(&v43 + 1) = MEMORY[0x1E69E6158];
    *&v42 = 0xD000000000000044;
    *(&v42 + 1) = 0x80000001DB52B010;
    *(v28 + 48) = 0u;
    *(v28 + 32) = 0u;
    sub_1DB301D4C(&v42, v28 + 32);
    *(v28 + 64) = 0;
    *(v27 + 32) = v28;
    Logger.debug(_:)(v27, v25, v26);
LABEL_11:

    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  sub_1DB50AC60();
  if (*(a1 + 41))
  {
    v37[0] = v35;
    v10 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
    sub_1DB50AAF0();
    sub_1DB50BEB0();
    v11 = v38;
    v12 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50EE90;
    v48 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001DB52B060;
    v14._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    swift_getErrorValue();
    v15 = v45;
    v16 = v46;
    v47[3] = v46;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v15, v16);
    sub_1DB30C4B8(v47, v41, &qword_1ECC426B0, &qword_1DB50EEB0);
    v42 = 0u;
    v43 = 0u;
    sub_1DB301D4C(v41, &v42);
    v44 = 0;
    v18 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
      v48 = v18;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v42;
    v23 = v43;
    v21[64] = v44;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v48 = v18;
    sub_1DB30623C(v47, &qword_1ECC426B0, &qword_1DB50EEB0);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v13 + 32) = v48;
    Logger.error(_:)(v13, v11, v12);
    goto LABEL_11;
  }

  v37[0] = v35;
  v37[1] = v34;
  v37[2] = v33;
  v38 = v32;
  v39 = v31;
  v40 = v30 & 1;
  sub_1DB488D30(v35, v34, v33, v32, v31, v30 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
  return sub_1DB50AB00();
}