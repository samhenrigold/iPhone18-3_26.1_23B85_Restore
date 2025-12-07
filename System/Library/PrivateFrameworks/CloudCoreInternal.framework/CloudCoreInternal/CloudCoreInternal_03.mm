void sub_1C93D6888()
{
  sub_1C93DA798();
  v1 = v0[207];
  v2 = v0[201];
  v3 = v0[200];
  v4 = v0[198];
  sub_1C939D5D4();
  sub_1C93D961C(v5, v6, protocol conformance descriptor for CloudCoreError);
  sub_1C93DA638();
  swift_allocError();
  sub_1C939EE1C();
  sub_1C93DA0BC(v1, v7, v8);
  v9 = sub_1C93DA7C0();
  sub_1C93A14F4(v9, v10);
  sub_1C93A4838(v3, &qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93DA444();
  sub_1C93DA174(v4, v11);
  sub_1C939EA94(v2);
  sub_1C939EA94(v0 + 188);
  sub_1C939EA94(v0 + 173);

  sub_1C93DA508();
  sub_1C93DA880();

  __asm { BRAA            X1, X16 }
}

uint64_t Session.init<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)()
{
  sub_1C93DA69C();
  v0[22] = v25;
  v0[23] = v26;
  v0[20] = v23;
  v0[21] = v24;
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v0[12] = v7;
  v0[13] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[24] = AssociatedTypeWitness;
  sub_1C939ED4C(AssociatedTypeWitness);
  v0[25] = v10;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  sub_1C93DA70C();
  v0[28] = type metadata accessor for SessionReadiness(v11, v12, v13, v14);
  sub_1C939D47C();
  v0[29] = v15;
  v0[30] = sub_1C93DA730();
  v16 = type metadata accessor for CloudCoreError(0);
  v0[31] = v16;
  sub_1C93A5A08(v16);
  v0[32] = sub_1C93DA730();
  v17 = type metadata accessor for Optional();
  sub_1C93A5A08(v17);
  v0[33] = sub_1C93DA730();
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C93D6B3C()
{
  static Session.acquire<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), v0 + 16, *(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_1C93A4890((v0 + 16), *(v0 + 40));
  sub_1C939D47C();
  sub_1C93DA730();
  sub_1C93DA70C();
  v1();
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  sub_1C93D11E0((v0 + 56));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  sub_1C93D95CC(v0 + 56, *(v0 + 80));
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v0 + 272) = v2;
  *v2 = v3;
  v2[1] = sub_1C93D6E04;
  sub_1C93DA518();

  return MEMORY[0x1EEE6D8D0](v4);
}

uint64_t sub_1C93D6E04()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *v1;
  sub_1C93B5C54();
  *v3 = v2;
  *(v4 + 280) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C93D6F04()
{
  v68 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  if (sub_1C93A4810(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 280);
    sub_1C939EA94((v0 + 56));
    static Task<>.checkCancellation()();
    if (v3)
    {
      v4 = *(v0 + 192);
      v5 = *(v0 + 200);
      v6 = *(v0 + 168);
      v8 = *(v0 + 128);
      v7 = *(v0 + 136);
      v10 = *(v0 + 112);
      v9 = *(v0 + 120);
      v11 = *(v0 + 104);
      sub_1C93A14F4(*(v0 + 144), *(v0 + 152));
      sub_1C93DA588();
      (*(v12 + 8))(v7, v6);
      sub_1C939EA94(v8);
      sub_1C93A4838(v9, &qword_1EC39A9F0, &qword_1C93FCE00);
      (*(v5 + 8))(v10, v4);
      sub_1C93DA444();
      sub_1C93DA174(v11, v13);
      sub_1C939EA94((v0 + 16));

      sub_1C93DA508();
      goto LABEL_10;
    }

    sub_1C93DA6A8();
    sub_1C93DA55C("Fatal error", v50, v51, v52, v53, "CloudCoreInternal/Session.CommonImplementation.swift", v54, v55, v62, v63);
    sub_1C93DA804();
  }

  else
  {
    (*(*(v0 + 232) + 32))(*(v0 + 240), v1, v2);
    sub_1C93DA7E4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = *(v0 + 192);
      v36 = *(v0 + 200);
      v38 = *(v0 + 160);
      v39 = *(v0 + 168);
      v40 = *(v0 + 128);
      v41 = *(v0 + 136);
      v43 = *(v0 + 112);
      v42 = *(v0 + 120);
      v44 = *(v0 + 104);
      v64 = *(v0 + 96);
      v65 = *(v0 + 240);
      sub_1C93A14F4(*(v0 + 144), *(v0 + 152));
      sub_1C93DA588();
      (*(v45 + 8))(v41, v39);
      sub_1C939EA94(v40);
      sub_1C93A4838(v42, &qword_1EC39A9F0, &qword_1C93FCE00);
      (*(v36 + 8))(v43, v37);
      sub_1C93DA444();
      sub_1C93DA174(v44, v46);
      sub_1C93DA588();
      (*(v47 + 32))(v64, v65, v38);
      sub_1C939EA94((v0 + 56));
      sub_1C939EA94((v0 + 16));

      sub_1C939D510();
LABEL_10:
      sub_1C93DA804();

      __asm { BRAA            X1, X16 }
    }

    v14 = **(v0 + 240);
    if (qword_1EE02B450 != -1)
    {
      sub_1C93DA48C();
      swift_once();
    }

    v15 = *(v0 + 216);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 112);
    v19 = type metadata accessor for Logger();
    sub_1C93D9664(v19, qword_1EE02B458);
    v20 = *(v17 + 16);
    v20(v15, v18, v16);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 216);
    if (v23)
    {
      v66 = v14;
      v25 = *(v0 + 200);
      v26 = *(v0 + 208);
      v27 = *(v0 + 192);
      v28 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v28 = 136315394;
      v20(v26, v24, v27);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      (*(v25 + 8))(v24, v27);
      v32 = sub_1C93D969C(v29, v31, v67);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v0 + 288) = v66;
      sub_1C93D975C();
      v33 = Error.localizedDescription.getter();
      v35 = sub_1C93D969C(v33, v34, v67);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_1C939C000, v21, v22, "Configuration %s Ignoring blocked event: %s", v28, 0x16u);
      swift_arrayDestroy();
      sub_1C93DA780();
      sub_1C93DA780();
    }

    else
    {
      v56 = *(v0 + 192);
      v57 = *(v0 + 200);

      (*(v57 + 8))(v24, v56);
    }

    sub_1C93D95CC(v0 + 56, *(v0 + 80));
    swift_task_alloc();
    sub_1C93DA6BC();
    *(v0 + 272) = v58;
    *v58 = v59;
    v58[1] = sub_1C93D6E04;
    sub_1C93DA518();
    sub_1C93DA804();

    MEMORY[0x1EEE6D8D0](v60);
  }
}

uint64_t sub_1C93D7450()
{
  sub_1C93DA7CC();
  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v17 = v0[14];
  v18 = v0[13];
  v19 = v0[24];
  sub_1C939D5D4();
  sub_1C93D961C(v9, v10, protocol conformance descriptor for CloudCoreError);
  sub_1C93DA638();
  swift_allocError();
  sub_1C939EE1C();
  sub_1C93DA0BC(v1, v11, v12);
  sub_1C93A14F4(v5, v4);
  sub_1C93DA588();
  (*(v13 + 8))(v6, v3);
  sub_1C939EA94(v7);
  sub_1C93A4838(v8, &qword_1EC39A9F0, &qword_1C93FCE00);
  (*(v2 + 8))(v17, v19);
  sub_1C93DA444();
  sub_1C93DA174(v18, v14);
  sub_1C939EA94(v0 + 7);
  sub_1C939EA94(v0 + 2);

  sub_1C939D510();

  return v15();
}

uint64_t static Session.acquire<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a6;
  v63 = a7;
  v69 = a5;
  v56 = a4;
  v61 = a3;
  v67 = a1;
  v64 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939D47C();
  v59 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v66 = v53 - v19;
  v20 = type metadata accessor for SessionID(0);
  v21 = sub_1C939ED4C(v20);
  v55 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v65 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a11;
  v60 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 56);
  v68 = a2;
  v26(__src, AssociatedTypeWitness, AssociatedConformanceWitness);
  v27 = v69;
  v57 = a10;
  v69 = a12;
  v28 = v79;
  _s17CloudCoreInternal23AnySessionConfigurationV8validate12entitlementsyx_tAC06CustomF5ErrorOYKAA20EntitlementsProtocolRzlF(v27, a10, a12, v75);
  memcpy(v74, __src, sizeof(v74));
  sub_1C93A8678(v74);
  if (v28)
  {
    v29 = v75[0];
    v30 = v76;
    v31 = v77;
    sub_1C93A888C();
    sub_1C93DA638();
    result = swift_allocError();
    *v33 = v29;
    *(v33 + 8) = v30;
    *(v33 + 16) = v31;
  }

  else
  {
    v79 = AssociatedConformanceWitness;
    v34 = v56;
    v35 = v56[3];
    v36 = v56[4];
    sub_1C93A4890(v56, v35);
    (*(v36 + 8))(v71, v35, v36);
    v54 = v72;
    v53[0] = v73;
    v53[1] = sub_1C93A4890(v71, v72);
    sub_1C93DA4F0();
    sub_1C93DA118(v67, v65, v37);
    sub_1C93D5174(v34, v70);
    v38 = v59;
    (*(v59 + 16))(v66, v68, AssociatedTypeWitness);
    v39 = (*(v55 + 80) + 48) & ~*(v55 + 80);
    v40 = (v24 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (*(v38 + 80) + v40 + 40) & ~*(v38 + 80);
    v42 = swift_allocObject();
    v43 = v57;
    v44 = v58;
    *(v42 + 2) = v60;
    *(v42 + 3) = v43;
    v45 = v69;
    *(v42 + 4) = v44;
    *(v42 + 5) = v45;
    sub_1C93DA4C0();
    sub_1C93DA0BC(v65, v46 + v39, v47);
    sub_1C93D1540(v70, &v42[v40]);
    (*(v38 + 32))(&v42[v41], v66, AssociatedTypeWitness);
    v48 = &v42[(v17 + v41 + 7) & 0xFFFFFFFFFFFFFFF8];
    v49 = v62;
    v50 = v63;
    *v48 = v62;
    v48[1] = v50;
    v51 = v53[0];
    v52 = *(v53[0] + 8);
    sub_1C93A1478(v49, v50);
    v52(v67, v68, v61, sub_1C93D97B0, v42, AssociatedTypeWitness, v79, v54, v51);

    return sub_1C939EA94(v71);
  }

  return result;
}

uint64_t sub_1C93D79D4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a4;
  v54 = a5;
  v56 = a3;
  v57 = a1;
  v55 = a6;
  v7 = type metadata accessor for SessionID(0);
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = v8;
  v52 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Entitlements.Error(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE02B078 != -1)
  {
    swift_once();
  }

  sub_1C93D5174(qword_1EE0358D0, v70);
  static Entitlements.currentProcess.getter(v11, v65);
  v12 = v65[1];
  v45 = v65[0];
  v41 = v67;
  v42 = v66;
  v43 = v68;
  LODWORD(v44) = v69;
  v13 = *(a2 + 17);
  v14 = a2[1];
  v62 = *a2;
  v63 = v14;
  v64 = *(a2 + 4);
  v15 = v64;
  v16 = v62;
  v17 = v14;
  v18 = *(&v14 + 1);

  sub_1C93A5D7C(0, 0);
  v47 = v16;
  v48 = v18;
  v73 = v16;
  v49 = *(&v16 + 1);
  v46 = v17;
  v74 = v17;
  v75 = v13 & 1;
  v76 = v18;
  v77 = v15;
  v78 = xmmword_1C93FD260;
  v79 = 0;
  v80 = 0;
  v82 = 0u;
  v83 = 0u;
  if (v41)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v42;
  v84 = 0uLL;
  v85 = 0uLL;
  v86 = 0uLL;
  if (v43)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = 0;
  }

  if (v44)
  {
    v22 = 0x1000000;
  }

  else
  {
    v22 = 0;
  }

  v81 = 1;
  v87 = 2;
  sub_1C93D2DE0(v45, v12, v20 | v21 | v22, v59);

  sub_1C93A8678(&v73);
  v23 = v71;
  v24 = v72;
  sub_1C93A4890(v70, v71);
  (*(v24 + 8))(v59, v23, v24);
  v25 = v61;
  v45 = v60;
  v44 = sub_1C93A4890(v59, v60);
  v26 = v52;
  sub_1C93DA118(v57, v52, type metadata accessor for SessionID);
  sub_1C93D5174(v70, v58);
  v27 = BYTE1(v63);
  v28 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v29 = (v51 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_1C93DA0BC(v26, v31 + v28, type metadata accessor for SessionID);
  sub_1C93D1540(v58, v31 + v29);
  v32 = v31 + v30;
  v33 = v49;
  *v32 = v47;
  *(v32 + 8) = v33;
  *(v32 + 16) = v46;
  *(v32 + 17) = v27;
  *(v32 + 24) = v48;
  *(v32 + 32) = v15;
  v34 = (v31 + ((v30 + 47) & 0xFFFFFFFFFFFFFFF8));
  v36 = v53;
  v35 = v54;
  *v34 = v53;
  v34[1] = v35;
  v37 = *(v25 + 8);

  sub_1C93A1478(v36, v35);
  v38 = sub_1C93AC5C0();
  v37(v57, &v62, v56, sub_1C93DA1CC, v31, &type metadata for AnonymousSession.Configuration, v38, v45, v25);

  sub_1C939EA94(v59);
  return sub_1C939EA94(v70);
}

uint64_t sub_1C93D8064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a4;
  v65 = a5;
  v67 = a1;
  v68 = a3;
  v66 = a6;
  v7 = type metadata accessor for SessionID(0);
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = v8;
  v63 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Entitlements.Error(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE02B078 != -1)
  {
    swift_once();
  }

  sub_1C93D5174(qword_1EE0358D0, v86);
  static Entitlements.currentProcess.getter(v11, v81);
  v60 = 0;
  v59 = v81[0];
  v55 = v81[1];
  v54 = v83;
  v56 = v84;
  v57 = v82;
  v58 = v85;
  memcpy(v79, a2, sizeof(v79));
  v53 = LOBYTE(v79[2]);
  v52[1] = v79[3];
  v12 = v79[5];
  v13 = v79[6];
  memcpy(v80, (a2 + 56), 0x60uLL);
  v14 = v79[19];
  v15 = v79[20];
  memcpy(v95, (a2 + 56), sizeof(v95));
  v89[0] = v79[0];
  v89[1] = v79[1];
  v90 = v79[2];
  v91 = v79[3];
  v92 = v79[4];
  v93 = v79[5];
  v94 = v79[6];
  v96 = v79[19];
  v97 = v79[20];

  sub_1C93A5D1C(v12, v13);
  sub_1C93A8830(v80, v75);
  v16 = v15;
  v17 = v55;
  sub_1C939EBDC(v14, v16);
  if (v54)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | v57;
  if (v56)
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  if (v58)
  {
    v21 = 0x1000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = v60;
  sub_1C93D2DE0(v59, v17, v19 | v20 | v21, v76);
  if (v22)
  {

    sub_1C93A8678(v89);
    v39 = v76[0];
    v40 = v77;
    v41 = v78;
    sub_1C93A888C();
    v42 = swift_allocError();
    *v43 = v39;
    *(v43 + 8) = v40;
    *(v43 + 16) = v41;
    sub_1C939EA94(v86);
    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1C93D9664(v44, qword_1EE02B458);
    v45 = v42;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v42;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_1C939C000, v46, v47, "The calling process cannot support the provided Configuration: %@", v48, 0xCu);
      sub_1C93A4838(v49, &qword_1EC39B3A0, &qword_1C9404BE0);
      MEMORY[0x1CCA884B0](v49, -1, -1);
      MEMORY[0x1CCA884B0](v48, -1, -1);
    }

    v79[0] = 0;
    v79[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    MEMORY[0x1CCA87780](0xD00000000000003FLL, 0x80000001C9406650);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    sub_1C93A8678(v89);
    v23 = v87;
    v24 = v88;
    sub_1C93A4890(v86, v87);
    (*(v24 + 8))(v72, v23, v24);
    v25 = v73;
    v26 = v74;
    v60 = sub_1C93A4890(v72, v73);
    v27 = v67;
    v28 = v63;
    sub_1C93DA118(v67, v63, type metadata accessor for SessionID);
    sub_1C93D5174(v86, v71);
    memcpy(v75, v79, sizeof(v75));
    memcpy(v70, v79, sizeof(v70));
    v29 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v30 = (v62 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 47) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    sub_1C93DA0BC(v28, v32 + v29, type metadata accessor for SessionID);
    sub_1C93D1540(v71, v32 + v30);
    memcpy((v32 + v31), v70, 0xA8uLL);
    v33 = (v32 + ((v31 + 175) & 0xFFFFFFFFFFFFFFF8));
    v35 = v64;
    v34 = v65;
    *v33 = v64;
    v33[1] = v34;
    v36 = *(v26 + 8);
    sub_1C93B4ED8(v75, &v69);
    sub_1C93A1478(v35, v34);
    v37 = sub_1C93B4F38();
    v36(v27, v79, v68, sub_1C93D9E60, v32, &type metadata for AuthenticatedSession.Configuration, v37, v25, v26);

    sub_1C939EA94(v72);
    return sub_1C939EA94(v86);
  }

  return result;
}

uint64_t static Session.acquire(sessionID:configuration:previousInvalidationContext:onInvalidation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for Entitlements.Error(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93A59A8();
  v18 = v17 - v16;
  if (qword_1EE02B078 != -1)
  {
    sub_1C93DA4A0(&qword_1EE02B078);
  }

  sub_1C93D5174(qword_1EE0358D0, &v31);
  static Entitlements.currentProcess.getter(v18, v26);
  v21[0] = v26[0];
  v21[1] = v26[1];
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  static Session.acquire<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)(a1, a2, a3, &v31, v21, a4, a5, a6, a8, &type metadata for Entitlements, a7, &protocol witness table for Entitlements);

  return sub_1C939EA94(&v31);
}

uint64_t sub_1C93D8AC0(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AnySessionAcquiredInfo(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SessionID(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a4[1];
  v34 = *a4;
  v35 = v18;
  v36 = *(a4 + 4);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    v20 = a3[3];
    v21 = a3[4];
    sub_1C93A4890(a3, v20);
    v29 = a6;
    v22 = v14;
    v23 = *(v21 + 16);
    v24 = sub_1C93AC5C0();
    v25 = v23(a2, &v34, a1, &type metadata for AnonymousSession.Configuration, v24, v20, v21);
    v27 = v26;
    sub_1C93DA118(a2, v17, type metadata accessor for SessionID);
    v30 = v34;
    v31 = v35;
    v32 = *(&v35 + 1);
    v33 = v36;
    sub_1C93DA118(a1, v22, type metadata accessor for AnySessionAcquiredInfo);
    type metadata accessor for AnonymousSession(0);
    swift_allocObject();

    v28 = v29;
    sub_1C93A1478(a5, v29);
    return AnonymousSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(v17, &v30, v22, v25, v27, a5, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C93D8CE0(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AnySessionAcquiredInfo(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SessionID(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v28, a4, sizeof(v28));
  if (static UUID.== infix(_:_:)())
  {
    v25 = a6;
    v19 = a3[3];
    v18 = a3[4];
    sub_1C93A4890(a3, v19);
    v24 = a5;
    v20 = v14;
    v21 = *(v18 + 16);
    v22 = sub_1C93B4F38();
    v21(a2, v28, a1, &type metadata for AuthenticatedSession.Configuration, v22, v19, v18);
    sub_1C93DA118(a2, v17, type metadata accessor for SessionID);
    memcpy(__dst, v28, 0xA8uLL);
    memcpy(v27, v28, sizeof(v27));
    sub_1C93DA118(a1, v20, type metadata accessor for AnySessionAcquiredInfo);
    type metadata accessor for AuthenticatedSession(0);
    swift_allocObject();
    sub_1C93B4ED8(__dst, &v26);
    sub_1C93A1478(v24, v25);
    AuthenticatedSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C93D8F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v42 = a5;
  v46 = a4;
  v15 = type metadata accessor for AnySessionAcquiredInfo(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = v38 - v19;
  v20 = type metadata accessor for SessionID(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    v39 = v17;
    v40 = a6;
    v38[1] = a7;
    v24 = a3[3];
    v23 = a3[4];
    sub_1C93A4890(a3, v24);
    v41 = a8;
    v25 = *(v23 + 16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = a2;
    v28 = a2;
    v29 = v46;
    v38[0] = v25(v27, v46, a1, AssociatedTypeWitness, AssociatedConformanceWitness, v24, v23);
    v31 = v30;
    v32 = v43;
    sub_1C93DA118(v28, v43, type metadata accessor for SessionID);
    v33 = v45;
    (*(v44 + 16))(v45, v29, AssociatedTypeWitness);
    v34 = v39;
    sub_1C93DA118(a1, v39, type metadata accessor for AnySessionAcquiredInfo);
    v35 = *(a9 + 88);
    v36 = v42;
    v37 = v40;
    sub_1C93A1478(v42, v40);
    return v35(v32, v33, v34, v38[0], v31, v36, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93D91DC(_BYTE *a1, uint64_t *a2, char a3, uint64_t a4)
{
  type metadata accessor for SessionValidity(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59A8();
  v11 = (v10 - v9);
  sub_1C93DA65C();
  sub_1C93DA118(a1, v11, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C93DA4D8();
    return sub_1C93DA174(v11, v13);
  }

  else
  {
    sub_1C93DA4D8();
    sub_1C93DA174(a1, v15);
    v16 = *a2;
    v17 = a2[1];
    *a2 = *v11;
    sub_1C93A14F4(v16, v17);
    sub_1C93A1890(&qword_1EC39AC70, &qword_1C93FDD98);
    *a1 = a3;
    sub_1C93DA644();
    sub_1C93DA118(a4, &a1[v18], v19);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1C93D92F4()
{
  sub_1C93DA69C();
  *(v0 + 24) = v1;
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C93B5858;
  v4 = sub_1C93DA7E4();

  return v6(v4);
}

uint64_t sub_1C93D93F4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for SessionValidity(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  v6 = (v5 - v4);
  v7 = type metadata accessor for SessionInvalidationContext(0);
  v8 = sub_1C93A5A08(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59A8();
  v11 = v10 - v9;
  sub_1C93DA65C();
  v12 = sub_1C93DA7C0();
  sub_1C93DA118(v12, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v6;
    v16 = sub_1C93A1890(&qword_1EC39AC70, &qword_1C93FDD98);
    sub_1C93DA0BC(&v6[*(v16 + 48)], v11, type metadata accessor for SessionInvalidationContext);
    type metadata accessor for CloudCoreError(0);
    sub_1C939D5D4();
    sub_1C93D961C(v17, v18, protocol conformance descriptor for CloudCoreError);
    sub_1C93DA638();
    v19 = swift_allocError();
    v21 = v20;
    v22 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);
    *v21 = v15;
    sub_1C93DA644();
    sub_1C93DA118(v11, &v21[v23], v24);
    sub_1C93A1710(v21, 0, 4, v22);
    swift_willThrow();
    result = sub_1C93DA174(v11, type metadata accessor for SessionInvalidationContext);
    *a2 = v19;
  }

  else
  {
    sub_1C93DA4D8();
    return sub_1C93DA174(v6, v26);
  }

  return result;
}

uint64_t sub_1C93D95CC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1C93D961C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C93D9664(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C93D969C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_1C93DA690();
  v9 = sub_1C93D98F4(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_1C939E974(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_1C939EA94(v14);
  return v10;
}

unint64_t sub_1C93D975C()
{
  result = qword_1EC39B398;
  if (!qword_1EC39B398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadinessError, &type metadata for SessionReadinessError, v0, v1);
    atomic_store(result, &qword_1EC39B398);
  }

  return result;
}

uint64_t sub_1C93D97B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v7);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939ED4C(AssociatedTypeWitness);
  sub_1C93DA748();
  return sub_1C93D8F04(a1, v2 + v9, (v2 + v11), v2 + v14, *(v2 + v13), *(v2 + v13 + 8), v5, a2, v6);
}

unint64_t sub_1C93D98F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C93D99F4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C93D99F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C93D9A40(a1, a2);
  sub_1C93D9B58(&unk_1F48EB810);
  return v3;
}

uint64_t sub_1C93D9A40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1C93D9C3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C93D9B58(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1C93D9CAC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C93D9C3C(uint64_t a1, uint64_t a2)
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

  sub_1C93A1890(&qword_1EC39B3A8, &qword_1C94036D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1C93D9CAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C93A1890(&qword_1EC39B3A8, &qword_1C94036D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C93D9DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v8;
  v11 = *(a4 + 32);
  result = sub_1C93D8AC0(a1, a2, a3, v10, a5, a6);
  *a7 = result;
  return result;
}

void sub_1C93D9DE4(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C93D8CE0(a2, a3, a4, __dst, a5, a6);
  *a7 = v13;
}

uint64_t sub_1C93D9EC0()
{
  v1 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 16) & ~v3;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for UUID();
  sub_1C939D430();
  (*(v8 + 8))(v0 + v5);
  sub_1C939EA94((v0 + v6));
  v9 = v0 + v7;

  if (*(v0 + v7 + 48) != 1)
  {
  }

  v10 = v7 + 175;

  sub_1C93BABF0(*(v9 + 80), *(v9 + 88), *(v9 + 96));
  if (*(v9 + 112))
  {
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFF8;
  if (*(v9 + 160) >= 2uLL)
  {
  }

  if (*(v0 + v11))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v3 | 7);
}

void sub_1C93DA020()
{
  v0 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v0);
  sub_1C93DA748();
  v1 = sub_1C93DA6C8();

  sub_1C93D9DE4(v4, v1, v2, v3, v5, v6, v7);
}

uint64_t sub_1C93DA0BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C939D430();
  v4 = sub_1C93A5A40();
  v5(v4);
  return a2;
}

uint64_t sub_1C93DA118(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C939D430();
  v4 = sub_1C93A5A40();
  v5(v4);
  return a2;
}

uint64_t sub_1C93DA174(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C939D430();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C93DA224()
{
  v1 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 16) & ~v3;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for UUID();
  sub_1C939D430();
  (*(v8 + 8))(v0 + v5);
  sub_1C939EA94((v0 + v6));

  if (*(v0 + v7))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_1C93DA334()
{
  v0 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v0);
  sub_1C93DA748();
  v1 = sub_1C93DA6C8();

  return sub_1C93D9DA0(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C93DA4A0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C93DA55C(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1C93DA604(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 136);
  *(v3 + 16) = *(v2 + 104);
  return v4;
}

uint64_t sub_1C93DA730()
{

  return swift_task_alloc();
}

uint64_t sub_1C93DA758()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  return sub_1C93A1478(v2, v3);
}

void sub_1C93DA780()
{

  JUMPOUT(0x1CCA884B0);
}

void sub_1C93DA7A4()
{

  static Entitlements.currentProcess.getter(v0, v1 + 56);
}

uint64_t sub_1C93DA820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

void sub_1C93DA840(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C93DA860()
{

  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1C93DA898(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1C93D969C(a1, a2, va);
}

uint64_t sub_1C93DA8B0(void *a1)
{
  sub_1C939EA94(a1);
  sub_1C939EA94((v1 + 184));
}

void SessionAcquiredInfo.asAnySessionAcquiredInfo.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(61);
  MEMORY[0x1CCA87780](0xD000000000000021, 0x80000001C94066C0);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v1);

  MEMORY[0x1CCA87780](0xD00000000000001ALL, 0x80000001C94066F0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void SessionConfiguration.asAnySessionConfiguration.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(62);
  MEMORY[0x1CCA87780](0xD000000000000021, 0x80000001C94066C0);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v1);

  MEMORY[0x1CCA87780](0xD00000000000001BLL, 0x80000001C9406740);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1C93DAB68(uint64_t a1)
{
  v2 = sub_1C93DAC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DABA4(uint64_t a1)
{
  v2 = sub_1C93DAC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C93DAC24()
{
  result = qword_1EE02BF18;
  if (!qword_1EE02BF18)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for ServerDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02BF18);
  }

  return result;
}

uint64_t sub_1C93DAC78(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void ServerDate.init(from:)()
{
  sub_1C93C0358();
  sub_1C93E1CD0(v2);
  sub_1C939D44C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  v4 = sub_1C93A1890(&qword_1EC39B3C8, &qword_1C9403768);
  sub_1C939D44C();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C93E19CC();
  v7 = type metadata accessor for ServerDate(v6);
  v8 = sub_1C93A5A08(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59A8();
  v11 = v10 - v9;
  v12 = sub_1C939D460();
  sub_1C93E1BC8(v12, v13);
  v14 = sub_1C93DAC24();
  sub_1C93E1BA4(&type metadata for ServerDate.CodingKeys, v15, v14);
  if (!v1)
  {
    sub_1C93E187C();
    sub_1C93DAC78(v16, v17, MEMORY[0x1E6969558]);
    sub_1C93E1B14();
    v18 = sub_1C93E1B98();
    v19(v18, v4);
    v20 = sub_1C93E1C30();
    v21(v20);
    sub_1C93E196C();
    sub_1C93DB654(v11, v22);
  }

  sub_1C939EA94(v0);
  sub_1C93E1C50();
  sub_1C939EDBC();
}

uint64_t sub_1C93DAEE8()
{
  sub_1C93E1C90();
  type metadata accessor for Date();
  sub_1C939D430();
  v0 = sub_1C93A5A40();

  return v1(v0);
}

uint64_t sub_1C93DAF44()
{
  sub_1C93A59DC();
  type metadata accessor for Date();
  sub_1C939D430();
  v0 = sub_1C93BD618();

  return v1(v0);
}

uint64_t sub_1C93DAFC4()
{
  type metadata accessor for Date();
  sub_1C939D430();
  v0 = sub_1C93BD618();

  return v1(v0);
}

uint64_t sub_1C93DB02C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93DB0A4(uint64_t a1)
{
  v2 = sub_1C93DB2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DB0E0(uint64_t a1)
{
  v2 = sub_1C93DB2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C93DB160()
{
  sub_1C93C0358();
  v2 = v1;
  v4 = v3;
  v7 = sub_1C93A1890(v5, v6);
  sub_1C939D44C();
  v9 = v8;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C939D578();
  v11 = sub_1C93E1BC8(v4, v4[3]);
  v2(v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v12, v13, MEMORY[0x1E6969538]);
  sub_1C93A5B9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v9 + 8))(v0, v7);
  sub_1C939EDBC();
}

unint64_t sub_1C93DB2A0()
{
  result = qword_1EE02BF68[0];
  if (!qword_1EE02BF68[0])
  {
    result = swift_getWitnessTable(byte_1C9404520, &type metadata for DeviceDate.CodingKeys, v0, v1);
    atomic_store(result, qword_1EE02BF68);
  }

  return result;
}

uint64_t sub_1C93DB2F8()
{
  sub_1C93A59DC();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v0, v1, MEMORY[0x1E6969540]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1C93DB36C(uint64_t a1)
{
  sub_1C93E1C18(a1);
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v1, v2, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void DeviceDate.init(from:)()
{
  sub_1C93C0358();
  sub_1C93E1CD0(v2);
  sub_1C939D44C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  v4 = sub_1C93A1890(&qword_1EC39B3D8, &qword_1C9403778);
  sub_1C939D44C();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C93E19CC();
  v7 = type metadata accessor for DeviceDate(v6);
  v8 = sub_1C93A5A08(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59A8();
  v11 = v10 - v9;
  v12 = sub_1C939D460();
  sub_1C93E1BC8(v12, v13);
  v14 = sub_1C93DB2A0();
  sub_1C93E1BA4(&type metadata for DeviceDate.CodingKeys, v15, v14);
  if (!v1)
  {
    sub_1C93E187C();
    sub_1C93DAC78(v16, v17, MEMORY[0x1E6969558]);
    sub_1C93E1B14();
    v18 = sub_1C93E1B98();
    v19(v18, v4);
    v20 = sub_1C93E1C30();
    v21(v20);
    sub_1C93DB654(v11, v22);
  }

  sub_1C939EA94(v0);
  sub_1C93E1C50();
  sub_1C939EDBC();
}

Swift::Int sub_1C93DB5C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v1, v2, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1C93DB654(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C93E1AD8();
  v4(v3);
  sub_1C939D430();
  v5 = sub_1C93A5A40();
  v6(v5);
  return a2;
}

uint64_t SessionInvalidationContext.deviceIDHash.getter()
{
  v2 = sub_1C93E1C90();
  v3 = (v1 + *(type metadata accessor for SessionInvalidationContext(v2) + 20));
  v4 = v3[1];
  v5 = v3[2];
  *v0 = *v3;
  v0[1] = v4;
  v0[2] = v5;

  return sub_1C93A1988(v4, v5);
}

__n128 SessionInvalidationContext.deviceIDHash.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for SessionInvalidationContext(0) + 20));
  sub_1C93A17C8(v3->n128_i64[1], v3[1].n128_u64[0]);
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t SessionInvalidationContext.deviceIDHash.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext(v0);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.primaryServiceName.getter()
{
  type metadata accessor for SessionInvalidationContext(0);

  return sub_1C93A5A40();
}

uint64_t SessionInvalidationContext.primaryServiceName.setter()
{
  v3 = (v1 + *(sub_1C93E1BFC() + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SessionInvalidationContext.primaryServiceName.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext(v0);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.privilegedInfoHash.getter()
{
  type metadata accessor for SessionInvalidationContext(0);
  v0 = sub_1C93A5A40();
  sub_1C93DB974(v0, v1);
  return sub_1C93A5A40();
}

uint64_t sub_1C93DB974(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C93A1988(result, a2);
  }

  return result;
}

uint64_t SessionInvalidationContext.privilegedInfoHash.setter()
{
  v3 = v1 + *(sub_1C93E1BFC() + 28);
  result = sub_1C93D152C(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t SessionInvalidationContext.privilegedInfoHash.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext(v0);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.userPersonaUniqueString.getter()
{
  type metadata accessor for SessionInvalidationContext(0);

  return sub_1C93A5A40();
}

uint64_t SessionInvalidationContext.userPersonaUniqueString.setter()
{
  v3 = (v1 + *(sub_1C93E1BFC() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SessionInvalidationContext.userPersonaUniqueString.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext(v0);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.keySyncRequest.getter()
{
  v2 = sub_1C93E1C90();
  v3 = v1 + *(type metadata accessor for SessionInvalidationContext(v2) + 36);

  return sub_1C93DBAFC(v3, v0);
}

uint64_t sub_1C93DBAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionInvalidationContext.keySyncRequest.setter()
{
  v2 = sub_1C93A59DC();
  v3 = v1 + *(type metadata accessor for SessionInvalidationContext(v2) + 36);

  return sub_1C93DBBAC(v0, v3);
}

uint64_t sub_1C93DBBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SessionInvalidationContext.keySyncRequest.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext(v0);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.KeySyncRequest.serviceName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SessionInvalidationContext.KeySyncRequest.reason.getter()
{
  v2 = sub_1C93E1C90();
  type metadata accessor for SessionInvalidationContext.KeySyncRequest(v2);
  sub_1C93E18C4();
  return sub_1C93DBD38(v1 + v3, v0);
}

uint64_t sub_1C93DBD38(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C93E1AD8();
  v4(v3);
  sub_1C939D430();
  v5 = sub_1C93A5A40();
  v6(v5);
  return a2;
}

uint64_t SessionInvalidationContext.KeySyncRequest.reason.setter()
{
  v2 = sub_1C93A59DC();
  v3 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v2);
  return sub_1C93DBDF8(v0, v1 + *(v3 + 20));
}

uint64_t sub_1C93DBDF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C93E1AD8();
  v4(v3);
  sub_1C939D430();
  v5 = sub_1C93A5A40();
  v6(v5);
  return a2;
}

uint64_t SessionInvalidationContext.KeySyncRequest.reason.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext.KeySyncRequest(v0);
  return sub_1C93A5AA4();
}

uint64_t SessionInvalidationContext.KeySyncRequest.retryCount.setter()
{
  v2 = sub_1C93A59DC();
  result = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t SessionInvalidationContext.KeySyncRequest.retryCount.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext.KeySyncRequest(v0);
  return sub_1C93A5AA4();
}

void static SessionInvalidationContext.KeySyncRequest.Reason.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C93A5B40();
  v22 = v21;
  v23 = type metadata accessor for ServerDate(0);
  v24 = sub_1C93A5A08(v23);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C93A59A8();
  v27 = v26 - v25;
  type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C93A59B8();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v33 = sub_1C93A1890(&qword_1EC39B3E8, &qword_1C9403788);
  sub_1C93A5A08(v33);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C93E1B78();
  v36 = (v20 + *(v35 + 56));
  sub_1C93DBD38(v22, v20);
  v37 = sub_1C93A8E04();
  sub_1C93DBD38(v37, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C93E18C4();
    v45 = sub_1C939D460();
    sub_1C93DBD38(v45, v46);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C93E196C();
      sub_1C93DB654(v36, v27);
      sub_1C93E1B40();
      static Date.== infix(_:_:)();
      sub_1C93E1A88();
      sub_1C93DC1C4();
      sub_1C93DC1C4();
      sub_1C93E1894();
      sub_1C93DC1C4();
      goto LABEL_13;
    }

    sub_1C93E1924();
    sub_1C93DC1C4();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C93E18C4();
    sub_1C93DBD38(v20, v31);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v31 == *v36)
      {
        v40 = sub_1C93E1B40();
        MEMORY[0x1CCA874A0](v40);
      }

      v41 = sub_1C93A8E10();
      sub_1C93A17C8(v41, v42);
      v43 = sub_1C93E1B40();
      sub_1C93A17C8(v43, v44);
      goto LABEL_10;
    }

    v47 = sub_1C93E1B40();
    sub_1C93A17C8(v47, v48);
LABEL_12:
    sub_1C93A4838(v20, &qword_1EC39B3E8, &qword_1C9403788);
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1C93E1894();
  sub_1C93DC1C4();
LABEL_13:
  sub_1C93A5B58();
}

uint64_t sub_1C93DC1C4()
{
  v1 = sub_1C93A59DC();
  v2(v1);
  sub_1C939D430();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C93DC218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564496F6ELL && a2 == 0xED00007465537974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C94067A0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x80000001C94067C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C93DC33C(char a1)
{
  if (!a1)
  {
    return 0x69746E6564496F6ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_1C93DC3A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001C94067E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93DC440(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001C9406800 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_1C93DC4C0(uint64_t a1)
{
  sub_1C93E1C18(a1);
  MEMORY[0x1CCA87E40](0);
  return Hasher._finalize()();
}

uint64_t sub_1C93DC520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DC218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93DC548(uint64_t a1)
{
  v2 = sub_1C93DCC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC584(uint64_t a1)
{
  v2 = sub_1C93DCC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93DC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DC3A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93DC5F0(uint64_t a1)
{
  v2 = sub_1C93DCC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC62C(uint64_t a1)
{
  v2 = sub_1C93DCC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93DC66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DC440(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93DC698(uint64_t a1)
{
  v2 = sub_1C93DCCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC6D4(uint64_t a1)
{
  v2 = sub_1C93DCCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93DC710(uint64_t a1)
{
  v2 = sub_1C93DCD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DC74C(uint64_t a1)
{
  v2 = sub_1C93DCD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionInvalidationContext.KeySyncRequest.Reason.encode(to:)()
{
  sub_1C93C0358();
  v51 = v0;
  v2 = v1;
  sub_1C93A1890(&qword_1EC39B3F0, &qword_1C9403790);
  sub_1C939D44C();
  v49 = v4;
  v50 = v3;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939ED24();
  v48 = v6;
  sub_1C93A1890(&qword_1EC39B3F8, &qword_1C9403798);
  sub_1C939D44C();
  v46 = v8;
  v47 = v7;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C939ED24();
  v45 = v10;
  v11 = sub_1C93E1C84();
  v43 = type metadata accessor for ServerDate(v11);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C93A59A8();
  v44 = v14 - v13;
  sub_1C93A1890(&qword_1EC39B400, &qword_1C94037A0);
  sub_1C939D44C();
  v41 = v16;
  v42 = v15;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C93A59A8();
  v23 = (v22 - v21);
  sub_1C93A1890(&qword_1EC39B408, &qword_1C94037A8);
  sub_1C939D44C();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C939D578();
  sub_1C93E1BC8(v2, v2[3]);
  sub_1C93DCC08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1C93E18C4();
  sub_1C93DBD38(v51, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v23;
      v26 = v23[1];
      v28 = v23[2];
      LOBYTE(v52[0]) = 2;
      sub_1C93DCC5C();
      v29 = v48;
      sub_1C939EE00(&type metadata for SessionInvalidationContext.KeySyncRequest.Reason.IdentityKeyNoLongerCurrentCodingKeys, v52);
      v52[0] = v27;
      v52[1] = v26;
      v52[2] = v28;
      sub_1C93A49D0();
      v30 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v49 + 8))(v29, v30);
      v31 = sub_1C93E1B88();
      v32(v31);
      sub_1C93A17C8(v26, v28);
    }

    else
    {
      LOBYTE(v52[0]) = 0;
      sub_1C93DCD04();
      sub_1C939EE00(&type metadata for SessionInvalidationContext.KeySyncRequest.Reason.NoIdentitySetCodingKeys, v52);
      (*(v41 + 8))(v19, v42);
      v39 = sub_1C93E1B88();
      v40(v39);
    }
  }

  else
  {
    sub_1C93DB654(v23, v44);
    LOBYTE(v52[0]) = 1;
    sub_1C93DCCB0();
    v33 = v45;
    sub_1C939EE00(&type metadata for SessionInvalidationContext.KeySyncRequest.Reason.MissingIdentityKeyCodingKeys, v52);
    sub_1C93E199C();
    sub_1C93DAC78(v34, v35, protocol conformance descriptor for ServerDate);
    v36 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v46 + 8))(v33, v36);
    sub_1C93E1924();
    sub_1C93DC1C4();
    v37 = sub_1C93E1B88();
    v38(v37);
  }

  sub_1C939EDBC();
}

unint64_t sub_1C93DCC08()
{
  result = qword_1EE02B4C8;
  if (!qword_1EE02B4C8)
  {
    result = swift_getWitnessTable(byte_1C94044D0, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4C8);
  }

  return result;
}

unint64_t sub_1C93DCC5C()
{
  result = qword_1EC39B410;
  if (!qword_1EC39B410)
  {
    result = swift_getWitnessTable(a9, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.IdentityKeyNoLongerCurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B410);
  }

  return result;
}

unint64_t sub_1C93DCCB0()
{
  result = qword_1EE02B4F0;
  if (!qword_1EE02B4F0)
  {
    result = swift_getWitnessTable(byte_1C9404430, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.MissingIdentityKeyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4F0);
  }

  return result;
}

unint64_t sub_1C93DCD04()
{
  result = qword_1EE02ADB8[0];
  if (!qword_1EE02ADB8[0])
  {
    result = swift_getWitnessTable(byte_1C94043E0, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.NoIdentitySetCodingKeys, v0, v1);
    atomic_store(result, qword_1EE02ADB8);
  }

  return result;
}

uint64_t SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)()
{
  v1 = sub_1C93E1AD8();
  v2 = type metadata accessor for ServerDate(v1);
  v3 = sub_1C93A5A08(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v7 = (v6 - v5);
  sub_1C93E18C4();
  sub_1C93DBD38(v0, v7);
  sub_1C93A8E10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      v10 = v7[1];
      v11 = v7[2];
      MEMORY[0x1CCA87E40](2);
      MEMORY[0x1CCA87E60](v9);
      Data.hash(into:)();
      return sub_1C93A17C8(v10, v11);
    }

    else
    {
      return MEMORY[0x1CCA87E40](0);
    }
  }

  else
  {
    sub_1C93E196C();
    v13 = sub_1C93E1B08();
    sub_1C93DB654(v13, v14);
    MEMORY[0x1CCA87E40](1);
    type metadata accessor for Date();
    sub_1C93E187C();
    sub_1C93DAC78(v15, v16, MEMORY[0x1E6969540]);
    dispatch thunk of Hashable.hash(into:)();
    sub_1C93E1924();
    return sub_1C93DC1C4();
  }
}

void SessionInvalidationContext.KeySyncRequest.Reason.init(from:)()
{
  sub_1C93C0358();
  v3 = v2;
  v77 = v4;
  v74 = sub_1C93A1890(&qword_1EC39B418, &qword_1C94037B0);
  sub_1C939D44C();
  v78 = v5;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C939ED24();
  v76 = v7;
  sub_1C93A1890(&qword_1EC39B420, &qword_1C94037B8);
  sub_1C939D44C();
  v72 = v8;
  v73 = v9;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C939ED24();
  v81 = v11;
  sub_1C93A1890(&qword_1EC39B428, &qword_1C94037C0);
  sub_1C939D44C();
  v70 = v13;
  v71 = v12;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C939ED24();
  v75 = v15;
  sub_1C93A1890(&qword_1EC39B430, &unk_1C94037C8);
  sub_1C939D44C();
  v79 = v17;
  v80 = v16;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1C93E19CC();
  v20 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(v19);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C93A59B8();
  v24 = (v22 - v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v66 - v29;
  sub_1C93E1BC8(v3, v3[3]);
  sub_1C93DCC08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v66 = v24;
  v67 = v28;
  v68 = v30;
  v69 = v20;
  v84 = v3;
  v31 = v80;
  KeyedDecodingContainer.allKeys.getter();
  sub_1C93C0330();
  if (v33 == v34 >> 1)
  {
LABEL_8:
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    sub_1C93A1890(&qword_1EC39AAB0, "̗");
    *v47 = v69;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_1C93E1B98();
    v49(v48, v31);
    v3 = v84;
LABEL_9:
    v50 = v3;
LABEL_10:
    sub_1C939EA94(v50);
    sub_1C93E1C50();
    sub_1C939EDBC();
    return;
  }

  if (v33 < (v34 >> 1))
  {
    v35 = v1;
    v36 = *(v32 + v33);
    sub_1C93C0328();
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    if (v38 == v40 >> 1)
    {
      if (v36)
      {
        if (v36 != 1)
        {
          LOBYTE(v82) = 2;
          sub_1C93DCC5C();
          sub_1C93E1AE4(&type metadata for SessionInvalidationContext.KeySyncRequest.Reason.IdentityKeyNoLongerCurrentCodingKeys, &v82);
          v54 = v77;
          sub_1C93A4B14();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v55 = v79;
          swift_unknownObjectRelease();
          v61 = sub_1C93DA7C0();
          v62(v61);
          (*(v55 + 8))(v35, v31);
          v63 = v83;
          v64 = v66;
          *v66 = v82;
          *(v64 + 2) = v63;
          swift_storeEnumTagMultiPayload();
          sub_1C93E18F4();
          v65 = v64;
          v60 = v68;
          sub_1C93DB654(v65, v68);
LABEL_14:
          sub_1C93E18F4();
          sub_1C93DB654(v60, v54);
          v50 = v84;
          goto LABEL_10;
        }

        LOBYTE(v82) = 1;
        sub_1C93DCCB0();
        sub_1C93E1AE4(&type metadata for SessionInvalidationContext.KeySyncRequest.Reason.MissingIdentityKeyCodingKeys, &v82);
        type metadata accessor for ServerDate(0);
        sub_1C93E199C();
        sub_1C93DAC78(v41, v42, protocol conformance descriptor for ServerDate);
        v43 = v67;
        v44 = v72;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v56 = sub_1C93E1B98();
        v57(v56, v44);
        v58 = sub_1C93E1AB8();
        v59(v58, v31);
        swift_storeEnumTagMultiPayload();
        sub_1C93E18F4();
        v60 = v68;
        sub_1C93DB654(v43, v68);
      }

      else
      {
        LOBYTE(v82) = 0;
        sub_1C93DCD04();
        v51 = v75;
        sub_1C93E1AE4(&type metadata for SessionInvalidationContext.KeySyncRequest.Reason.NoIdentitySetCodingKeys, &v82);
        swift_unknownObjectRelease();
        (*(v70 + 8))(v51, v71);
        v52 = sub_1C93E1AB8();
        v53(v52, v31);
        v60 = v68;
        sub_1C93BD618();
        swift_storeEnumTagMultiPayload();
      }

      v54 = v77;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t SessionInvalidationContext.KeySyncRequest.init(serviceName:reason:retryCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  sub_1C93E18F4();
  result = sub_1C93DB654(a3, a5 + v9);
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

uint64_t sub_1C93DD70C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C93DD824(char a1)
{
  if (!a1)
  {
    return 0x4E65636976726573;
  }

  if (a1 == 1)
  {
    return 0x6E6F73616572;
  }

  return 0x756F437972746572;
}

uint64_t sub_1C93DD88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DD70C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93DD8B4(uint64_t a1)
{
  v2 = sub_1C93E06F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DD8F0(uint64_t a1)
{
  v2 = sub_1C93E06F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionInvalidationContext.KeySyncRequest.encode(to:)(void *a1)
{
  sub_1C93A1890(&qword_1EC39B438, &qword_1C94037D8);
  sub_1C939D44C();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93E1B4C();
  sub_1C93E1BC8(a1, a1[3]);
  v4 = sub_1C93E06F0();
  sub_1C93E1CB0(&type metadata for SessionInvalidationContext.KeySyncRequest.CodingKeys, v5, v4);
  sub_1C93AEBF4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
    type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
    sub_1C93E1A70();
    sub_1C93DAC78(v6, v7, protocol conformance descriptor for SessionInvalidationContext.KeySyncRequest.Reason);
    sub_1C93A5B9C();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v8 = sub_1C93AB0E4();
  return v9(v8);
}

uint64_t SessionInvalidationContext.KeySyncRequest.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  v2 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
  return MEMORY[0x1CCA87E40](*(v1 + *(v2 + 24)));
}

Swift::Int SessionInvalidationContext.KeySyncRequest.hashValue.getter(uint64_t a1)
{
  sub_1C93E1C18(a1);
  String.hash(into:)();
  v2 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
  MEMORY[0x1CCA87E40](*(v1 + *(v2 + 24)));
  return Hasher._finalize()();
}

void SessionInvalidationContext.KeySyncRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C93C0358();
  v54 = v24;
  v27 = v26;
  v50 = v28;
  type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C93A59A8();
  sub_1C93E1B4C();
  sub_1C93A1890(&qword_1EC39B440, &qword_1C94037E0);
  sub_1C939D44C();
  v51 = v31;
  v52 = v30;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v49 - v33;
  v35 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C93A59A8();
  v39 = (v38 - v37);
  sub_1C93E1BC8(v27, v27[3]);
  sub_1C93E06F0();
  v53 = v34;
  v40 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v40)
  {
    sub_1C939EA94(v27);
  }

  else
  {
    v54 = v27;
    v41 = v51;
    *v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v39[1] = v42;
    v49 = v42;
    sub_1C93E1A70();
    sub_1C93DAC78(v43, v44, protocol conformance descriptor for SessionInvalidationContext.KeySyncRequest.Reason);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93E18F4();
    sub_1C93DB654(v25, v39 + v45);
    v46 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v54;
    v48 = v46;
    (*(v41 + 8))(v53, v52);
    *(v39 + *(v35 + 24)) = v48;
    sub_1C93DBD38(v39, v50);
    sub_1C939EA94(v47);
    sub_1C93E1984();
    sub_1C93DC1C4();
  }

  sub_1C939EDBC();
}

Swift::Int sub_1C93DDEA8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
  MEMORY[0x1CCA87E40](*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = *a1;
  v13 = *(a1 + 2);
  Date.init()();
  v14 = type metadata accessor for SessionInvalidationContext(0);
  v15 = (a9 + v14[6]);
  v16 = a9 + v14[7];
  *v16 = xmmword_1C9403750;
  v17 = v14[9];
  v18 = (a9 + v14[8]);
  v19 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  sub_1C93A1710(a9 + v17, 1, 1, v19);
  v20 = a9 + v14[5];
  *v20 = v22;
  *(v20 + 16) = v13;
  *v15 = a2;
  v15[1] = a3;
  sub_1C93D152C(*v16, *(v16 + 8));
  *v16 = a4;
  *(v16 + 8) = a5;
  *v18 = a6;
  v18[1] = a7;

  return sub_1C93DBBAC(a8, a9 + v17);
}

uint64_t sub_1C93DE414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656369766564 && a2 == 0xEC00000068736148;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C9406780 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C9405FF0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C9406060 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x52636E795379656BLL && a2 == 0xEE00747365757165)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

Swift::Int sub_1C93DE620(uint64_t a1)
{
  v1 = a1;
  sub_1C93E1C18(a1);
  MEMORY[0x1CCA87E40](v1);
  return Hasher._finalize()();
}

unint64_t sub_1C93DE660(char a1)
{
  result = 0x6E6F697461657263;
  switch(a1)
  {
    case 1:
      result = 0x4449656369766564;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x52636E795379656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93DE744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DE414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93DE76C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93DE618();
  *a1 = result;
  return result;
}

uint64_t sub_1C93DE794(uint64_t a1)
{
  v2 = sub_1C93E0744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93DE7D0(uint64_t a1)
{
  v2 = sub_1C93E0744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionInvalidationContext.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1C93A1890(&qword_1EC39B450, &qword_1C94037F0);
  sub_1C939D44C();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C93E1B4C();
  sub_1C93E1BC8(a1, a1[3]);
  v6 = sub_1C93E0744();
  sub_1C93E1CB0(&type metadata for SessionInvalidationContext.CodingKeys, v7, v6);
  type metadata accessor for DeviceDate(0);
  sub_1C93E19B4();
  sub_1C93DAC78(v8, v9, protocol conformance descriptor for DeviceDate);
  sub_1C93A5B9C();
  sub_1C93AEBF4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for SessionInvalidationContext(0);
    v11 = v3 + *(v10 + 20);
    v19 = *(v11 + 8);
    v21 = *(v11 + 16);
    sub_1C93A1988(v19, v21);
    sub_1C93A49D0();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v19, v21);
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = (v3 + *(v10 + 28));
    v18 = *v12;
    v20 = v12[1];
    sub_1C93DB974(*v12, v20);
    sub_1C93A4928();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93D152C(v18, v20);
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
    sub_1C93E1AA0();
    sub_1C93DAC78(v13, v14, protocol conformance descriptor for SessionInvalidationContext.KeySyncRequest);
    sub_1C93A5B9C();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v15 = sub_1C93AB0E4();
  return v16(v15);
}

void SessionInvalidationContext.hash(into:)()
{
  sub_1C93A5B40();
  v3 = sub_1C93A59DC();
  v4 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v3);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C93A59A8();
  sub_1C93E1B4C();
  v6 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  sub_1C93A5A08(v6);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C939D578();
  type metadata accessor for Date();
  sub_1C93E187C();
  sub_1C93DAC78(v8, v9, MEMORY[0x1E6969540]);
  dispatch thunk of Hashable.hash(into:)();
  v10 = type metadata accessor for SessionInvalidationContext(0);
  MEMORY[0x1CCA87E60](*(v0 + v10[5]));
  Data.hash(into:)();
  if (*(v0 + v10[6] + 8))
  {
    sub_1C93E1BE0();
    sub_1C93E1B58();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  if (*(v0 + v10[7] + 8) >> 60 == 15)
  {
    sub_1C93A5B28();
  }

  else
  {
    sub_1C93E1BE0();
    sub_1C93E1B58();
    Data.hash(into:)();
  }

  if (*(v0 + v10[8] + 8))
  {
    sub_1C93E1BE0();
    sub_1C93E1B58();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  sub_1C93DBAFC(v0 + v10[9], v2);
  sub_1C93E1CF0(v2, 1);
  if (v11)
  {
    sub_1C93A5B28();
  }

  else
  {
    sub_1C93E1954();
    sub_1C93DB654(v2, v1);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    SessionInvalidationContext.KeySyncRequest.Reason.hash(into:)();
    MEMORY[0x1CCA87E40](*(v1 + *(v4 + 24)));
    sub_1C93E1984();
    sub_1C93DC1C4();
  }

  sub_1C93A5B58();
}

Swift::Int sub_1C93DECE4(void (*a1)(_BYTE *))
{
  sub_1C93E1C18(a1);
  a1(v3);
  return Hasher._finalize()();
}

void SessionInvalidationContext.init(from:)()
{
  sub_1C93C0358();
  v5 = v4;
  v31 = v6;
  v7 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  sub_1C93A5A08(v7);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C939D578();
  type metadata accessor for DeviceDate(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93A59A8();
  v33 = v11 - v10;
  v34 = sub_1C93A1890(&qword_1EC39B458, &unk_1C94037F8);
  sub_1C939D44C();
  v32 = v12;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C93E19CC();
  v15 = type metadata accessor for SessionInvalidationContext(v14);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C93A59A8();
  sub_1C93E1B4C();
  Date.init()();
  v17 = v1 + *(v15 + 28);
  *v17 = xmmword_1C9403750;
  v35 = v15;
  v18 = *(v15 + 36);
  v19 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  sub_1C93A1710(v1 + v18, 1, 1, v19);
  sub_1C93E1BC8(v5, v5[3]);
  sub_1C93E0744();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_1C939EA94(v5);
    sub_1C93E1A58();
    sub_1C93DC1C4();

    sub_1C93D152C(*v17, *(v17 + 8));

    sub_1C93A4838(v1 + v18, &qword_1EC39B3E0, &qword_1C9403780);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1C93E19B4();
    sub_1C93DAC78(v20, v21, protocol conformance descriptor for DeviceDate);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93E1A40();
    sub_1C93DBDF8(v33, v1);
    sub_1C93A4B14();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v1 + v35[5];
    *v22 = v36;
    *(v22 + 16) = v37;
    LOBYTE(v36) = 2;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = (v1 + v35[6]);
    *v24 = v23;
    v24[1] = v25;
    sub_1C93A4A6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1C93D152C(*v17, *(v17 + 8));
    *v17 = v36;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = (v1 + v35[8]);
    *v27 = v26;
    v27[1] = v28;
    sub_1C93E1AA0();
    sub_1C93DAC78(v29, v30, protocol conformance descriptor for SessionInvalidationContext.KeySyncRequest);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v32 + 8))(v3, v34);
    sub_1C93DBBAC(v2, v1 + v18);
    sub_1C93DBD38(v1, v31);
    sub_1C939EA94(v5);
    sub_1C93DC1C4();
  }

  sub_1C93E1C50();
  sub_1C939EDBC();
}

Swift::Int sub_1C93DF29C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void SessionInvalidationContext.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v137 = v0;
  v141 = type metadata accessor for PropertyDescription(0);
  v2 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  sub_1C93A59B8();
  v130 = (v3 - v4);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v5);
  v135 = (&v125 - v6);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v7);
  v136 = (&v125 - v8);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v125 - v10;
  v11 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
  sub_1C93A5A08(v11);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C939ED24();
  v134 = v13;
  v14 = sub_1C93E1C84();
  v133 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(v14);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93A59B8();
  v126 = v16 - v17;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v125 - v19;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v125 - v21;
  sub_1C93E1C84();
  v22 = type metadata accessor for OSLogPrivacy();
  v23 = sub_1C93A5A08(v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C93A59B8();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v125 - v28;
  type metadata accessor for DeviceDate(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C93A59B8();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C93E1B68();
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v142 = *(v2 + 72);
  v140 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v35 = v140;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C93FE890;
  v139 = v36;
  v37 = v36 + v35;
  sub_1C93DBD38(v0, v1);
  static OSLogPrivacy.auto.getter();
  sub_1C93DBD38(v1, v33);
  sub_1C93E1B40();
  v38 = String.init<A>(describing:)();
  v40 = v39;
  v41 = v26;
  sub_1C93DBD38(v29, v26);
  v42 = v141;
  v43 = *(v141 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C939D5EC();
  v138 = v44;
  sub_1C93DC1C4();
  strcpy(v37, "creationDate");
  *(v37 + 13) = 0;
  *(v37 + 14) = -5120;
  *(v37 + 16) = v38;
  *(v37 + 24) = v40;
  sub_1C93E18AC();
  v131 = v45;
  sub_1C93DBDF8(v41, v37 + v43);
  sub_1C93E1A58();
  sub_1C93DC1C4();
  v46 = v37 + v142;
  v47 = type metadata accessor for SessionInvalidationContext(0);
  v48 = v137;
  v49 = (v137 + *(v47 + 20));
  v51 = *v49;
  v50 = v49[1];
  v52 = v49[2];
  static OSLogPrivacy.auto.getter();
  v143 = v51;
  v144 = v50;
  v145 = v52;
  sub_1C93A1988(v50, v52);
  v53 = String.init<A>(describing:)();
  v55 = v54;
  v56 = sub_1C93A5A40();
  sub_1C93DBD38(v56, v57);
  v58 = *(v42 + 24);
  static OSLogPrivacy.auto.getter();
  v132 = v29;
  v60 = v133;
  v59 = v134;
  sub_1C93DC1C4();
  strcpy(v46, "deviceIDHash");
  *(v46 + 13) = 0;
  *(v46 + 14) = -5120;
  *(v46 + 16) = v53;
  *(v46 + 24) = v55;
  v61 = v48;
  v62 = v41;
  sub_1C93DBDF8(v41, v46 + v58);
  v138 = v47;
  sub_1C93DBAFC(v48 + *(v47 + 36), v59);
  if (sub_1C93A4810(v59, 1, v60) == 1)
  {
    sub_1C93A4838(v59, &qword_1EC39B3E0, &qword_1C9403780);
    v63 = v141;
    v64 = v41;
    v65 = v132;
  }

  else
  {
    v131 = 2 * v142;
    sub_1C93E1954();
    v66 = v128;
    sub_1C93DB654(v59, v128);
    v67 = v127;
    sub_1C93DBD38(v66, v127);
    v68 = v132;
    static OSLogPrivacy.auto.getter();
    sub_1C93DBD38(v67, v126);
    v69 = String.init<A>(describing:)();
    v71 = v70;
    sub_1C93E18DC();
    v72 = sub_1C93A8E04();
    sub_1C93DBD38(v72, v73);
    v74 = v62;
    v75 = v141;
    v76 = *(v141 + 24);
    v77 = v129;
    static OSLogPrivacy.auto.getter();
    sub_1C939D5EC();
    sub_1C93DC1C4();
    strcpy(v77, "keySyncRequest");
    *(v77 + 15) = -18;
    *(v77 + 16) = v69;
    *(v77 + 24) = v71;
    sub_1C93E18AC();
    sub_1C93DBDF8(v74, v77 + v76);
    sub_1C93E193C();
    sub_1C93DC1C4();
    v58 = sub_1C93A4F7C(1, 3, 1, v139);
    sub_1C93E1B08();
    sub_1C93DC1C4();
    *(v58 + 16) = 3;
    sub_1C93E190C();
    v139 = v58;
    sub_1C93DB654(v77, v58 + v78);
    v63 = v75;
    v64 = v74;
    v65 = v68;
  }

  v79 = v138;
  v80 = (v61 + *(v138 + 24));
  v81 = v80[1];
  if (v81)
  {
    v82 = *v80;
    sub_1C93E1C9C();
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v143 = v82;
    v144 = v81;
    v83 = String.init<A>(describing:)();
    v85 = v84;
    sub_1C93E18DC();
    sub_1C93DBD38(v65, v64);
    v86 = *(v63 + 24);
    v87 = v136;
    static OSLogPrivacy.auto.getter();

    sub_1C939D5EC();
    sub_1C93DC1C4();
    *v87 = 0xD000000000000012;
    v87[1] = v58;
    v87[2] = v83;
    v87[3] = v85;
    sub_1C93E18AC();
    sub_1C93DBDF8(v64, v87 + v86);
    v88 = v139;
    v90 = v139[2];
    v89 = v139[3];
    if (v90 >= v89 >> 1)
    {
      v88 = sub_1C93A4F7C((v89 > 1), v90 + 1, 1, v139);
    }

    v88[2] = v90 + 1;
    sub_1C93E190C();
    sub_1C93DB654(v136, v91);
    v63 = v141;
    v79 = v138;
  }

  else
  {
    v88 = v139;
  }

  v92 = (v61 + *(v79 + 28));
  v93 = v92[1];
  if (v93 >> 60 != 15)
  {
    v94 = *v92;
    v139 = 0x80000001C9405FF0;
    v95 = sub_1C93BD618();
    sub_1C93DB974(v95, v96);
    v97 = sub_1C93BD618();
    sub_1C93A1988(v97, v98);
    static OSLogPrivacy.auto.getter();
    v143 = v94;
    v144 = v93;
    v99 = sub_1C93BD618();
    sub_1C93A1988(v99, v100);
    v101 = String.init<A>(describing:)();
    v103 = v102;
    sub_1C93E18DC();
    sub_1C93DBD38(v65, v64);
    v104 = *(v63 + 24);
    v105 = v64;
    v106 = v135;
    static OSLogPrivacy.auto.getter();
    v107 = sub_1C93BD618();
    sub_1C93D152C(v107, v108);
    sub_1C939D5EC();
    sub_1C93DC1C4();
    *v106 = 0xD000000000000012;
    v106[1] = v139;
    v106[2] = v101;
    v106[3] = v103;
    sub_1C93E18AC();
    v109 = v106 + v104;
    v64 = v105;
    sub_1C93DBDF8(v105, v109);
    v58 = v88[2];
    v110 = v88[3];
    if (v58 >= v110 >> 1)
    {
      v88 = sub_1C93A4F7C((v110 > 1), v58 + 1, 1, v88);
    }

    v111 = sub_1C93BD618();
    sub_1C93D152C(v111, v112);
    v88[2] = v58 + 1;
    sub_1C93E190C();
    sub_1C93DB654(v135, v113);
    v63 = v141;
    v61 = v137;
  }

  v114 = (v61 + *(v79 + 32));
  v115 = v114[1];
  if (v115)
  {
    v116 = *v114;
    sub_1C93E1C9C();
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v143 = v116;
    v144 = v115;
    v117 = String.init<A>(describing:)();
    v119 = v118;
    sub_1C93E18DC();
    sub_1C93DBD38(v65, v64);
    v120 = *(v63 + 24);
    v121 = v130;
    static OSLogPrivacy.auto.getter();

    sub_1C939D5EC();
    sub_1C93DC1C4();
    *v121 = 0xD000000000000018;
    v121[1] = v58;
    v121[2] = v117;
    v121[3] = v119;
    sub_1C93E18AC();
    sub_1C93DBDF8(v64, v121 + v120);
    v123 = v88[2];
    v122 = v88[3];
    if (v123 >= v122 >> 1)
    {
      v88 = sub_1C93A4F7C((v122 > 1), v123 + 1, 1, v88);
    }

    v88[2] = v123 + 1;
    sub_1C93E190C();
    sub_1C93DB654(v121, v124);
  }

  sub_1C93A5B58();
}

void SessionInvalidationContext.KeySyncRequest.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v52 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C93A59B8();
  v51 = v2 - v3;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v46 - v5;
  sub_1C93E1C84();
  v6 = type metadata accessor for OSLogPrivacy();
  v7 = sub_1C93A5A08(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C93A59B8();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C93E1B68();
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v12 = (type metadata accessor for PropertyDescription(0) - 8);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v49 = *(*v12 + 72);
  v13 = v49;
  v15 = swift_allocObject();
  v53 = v15;
  *(v15 + 16) = xmmword_1C93FDC70;
  v16 = (v15 + v14);
  v18 = *v0;
  v17 = v0[1];
  v47 = v0;
  swift_bridgeObjectRetain_n();
  static OSLogPrivacy.auto.getter();
  v56 = v18;
  v57 = v17;
  v19 = String.init<A>(describing:)();
  v21 = v20;
  sub_1C93E18DC();
  v50 = v22;
  v23 = sub_1C93E1B08();
  sub_1C93DBD38(v23, v24);
  v25 = v12[8];
  static OSLogPrivacy.auto.getter();
  sub_1C939D5EC();
  v54 = v26;
  sub_1C93DC1C4();
  *v16 = 0x4E65636976726573;
  v16[1] = 0xEB00000000656D61;
  v16[2] = v19;
  v16[3] = v21;
  sub_1C93E18AC();
  v48 = v27;
  sub_1C93DBDF8(v10, v16 + v25);

  v28 = (v16 + v13);
  v29 = type metadata accessor for SessionInvalidationContext.KeySyncRequest(0);
  v30 = v0 + *(v29 + 20);
  v31 = v55;
  sub_1C93DBD38(v30, v55);
  static OSLogPrivacy.auto.getter();
  sub_1C93DBD38(v31, v51);
  v32 = String.init<A>(describing:)();
  v34 = v33;
  v35 = sub_1C93E1B08();
  sub_1C93DBD38(v35, v36);
  v37 = v12[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93DC1C4();
  *v28 = 0x6E6F73616572;
  v28[1] = 0xE600000000000000;
  v28[2] = v32;
  v28[3] = v34;
  sub_1C93DBDF8(v10, v28 + v37);
  sub_1C93E1894();
  sub_1C93DC1C4();
  v38 = (v16 + 2 * v49);
  v39 = *(v47 + *(v29 + 24));
  static OSLogPrivacy.auto.getter();
  v56 = v39;
  v40 = String.init<A>(describing:)();
  v42 = v41;
  v43 = sub_1C93E1B08();
  sub_1C93DBD38(v43, v44);
  v45 = v12[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93DC1C4();
  *v38 = 0x756F437972746572;
  v38[1] = 0xEA0000000000746ELL;
  v38[2] = v40;
  v38[3] = v42;
  sub_1C93DBDF8(v10, v38 + v45);
  sub_1C93A5B58();
}

void SessionInvalidationContext.KeySyncRequest.Reason.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C93A5B40();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = type metadata accessor for ServerDate(0);
  v27 = sub_1C93A5A08(v26);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C93A59B8();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C93E1B68();
  type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C93A59B8();
  v35 = (v33 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  v39 = sub_1C93A1890(&qword_1EC39B3E8, &qword_1C9403788);
  sub_1C93A5A08(v39);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C93E1B78();
  v42 = (v20 + *(v41 + 56));
  sub_1C93DBD38(v25, v20);
  v43 = sub_1C93DA7C0();
  sub_1C93DBD38(v43, v44);
  sub_1C939D460();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C93E18C4();
    sub_1C93DBD38(v20, v38);
    sub_1C93E1C44();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C93E1924();
      sub_1C93DC1C4();
      goto LABEL_11;
    }

    sub_1C93DB654(v38, v22);
    sub_1C93DB654(v42, v30);
    sub_1C93DA7E4();
    static Date.== infix(_:_:)();
    sub_1C93E1A88();
    sub_1C93DC1C4();
    sub_1C93A8E10();
    sub_1C93DC1C4();
LABEL_13:
    sub_1C93DC1C4();
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1C93E1C44();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  sub_1C93DBD38(v20, v35);
  sub_1C93E1C44();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v35 != *v42)
    {
      v53 = sub_1C93DA7C0();
      sub_1C93A17C8(v53, v54);
      v55 = sub_1C93DA7E4();
      sub_1C93A17C8(v55, v56);
      sub_1C93E1894();
      sub_1C93DC1C4();
      goto LABEL_14;
    }

    v46 = sub_1C93DA7E4();
    MEMORY[0x1CCA874A0](v46);
    v47 = sub_1C93DA7C0();
    sub_1C93A17C8(v47, v48);
    v49 = sub_1C93DA7E4();
    sub_1C93A17C8(v49, v50);
    goto LABEL_13;
  }

  v51 = sub_1C93DA7E4();
  sub_1C93A17C8(v51, v52);
LABEL_11:
  sub_1C93A4838(v20, &qword_1EC39B3E8, &qword_1C9403788);
LABEL_14:
  sub_1C93A5B58();
}

unint64_t sub_1C93E06F0()
{
  result = qword_1EE02B508;
  if (!qword_1EE02B508)
  {
    result = swift_getWitnessTable(asc_1C9404390, &type metadata for SessionInvalidationContext.KeySyncRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B508);
  }

  return result;
}

unint64_t sub_1C93E0744()
{
  result = qword_1EE02B520;
  if (!qword_1EE02B520)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for SessionInvalidationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B520);
  }

  return result;
}

uint64_t sub_1C93E0870(uint64_t a1)
{
  result = sub_1C93DAC78(&qword_1EC39B478, type metadata accessor for SessionInvalidationContext, protocol conformance descriptor for SessionInvalidationContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93E08C8(uint64_t a1)
{
  result = sub_1C93DAC78(&qword_1EC39B480, type metadata accessor for SessionInvalidationContext.KeySyncRequest, protocol conformance descriptor for SessionInvalidationContext.KeySyncRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93E0970(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E0A04(uint64_t a1)
{
  v1 = type metadata accessor for DeviceDate(319);
  if (v2 <= 0x3F)
  {
    sub_1C93B8A1C(319, qword_1EE02C1D8, MEMORY[0x1E69E6158]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C93B8A1C(319, &qword_1EE02C1C0, MEMORY[0x1E6969080]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1C93E0AFC(319);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1C93E0AFC(uint64_t a1)
{
  if (!qword_1EE02C370)
  {
    type metadata accessor for SessionInvalidationContext.KeySyncRequest(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE02C370);
    }
  }
}

uint64_t sub_1C93E0B7C(uint64_t a1)
{
  result = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C93E0C00(uint64_t a1)
{
  sub_1C93E0C74();
  if (v1 <= 0x3F)
  {
    sub_1C93E0CBC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C93E0C74()
{
  if (!qword_1EE02C620)
  {
    v0 = type metadata accessor for ServerDate(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02C620);
    }
  }
}

ValueMetadata *sub_1C93E0CBC()
{
  result = qword_1EE02C630[0];
  if (!qword_1EE02C630[0])
  {
    result = &type metadata for SaltedHash;
    atomic_store(&type metadata for SaltedHash, qword_1EE02C630);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionInvalidationContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionInvalidationContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93E0E58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93E0F74(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93E1024()
{
  result = qword_1EC39B488;
  if (!qword_1EC39B488)
  {
    result = swift_getWitnessTable(byte_1C9403E78, &type metadata for ServerDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B488);
  }

  return result;
}

unint64_t sub_1C93E107C()
{
  result = qword_1EC39B490;
  if (!qword_1EC39B490)
  {
    result = swift_getWitnessTable(byte_1C9403F30, &type metadata for DeviceDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B490);
  }

  return result;
}

unint64_t sub_1C93E10D4()
{
  result = qword_1EC39B498;
  if (!qword_1EC39B498)
  {
    result = swift_getWitnessTable(aAn_0, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.IdentityKeyNoLongerCurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B498);
  }

  return result;
}

unint64_t sub_1C93E112C()
{
  result = qword_1EC39B4A0;
  if (!qword_1EC39B4A0)
  {
    result = swift_getWitnessTable(byte_1C94040A0, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.MissingIdentityKeyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B4A0);
  }

  return result;
}

unint64_t sub_1C93E1184()
{
  result = qword_1EC39B4A8;
  if (!qword_1EC39B4A8)
  {
    result = swift_getWitnessTable(byte_1C94041A8, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B4A8);
  }

  return result;
}

unint64_t sub_1C93E11DC()
{
  result = qword_1EC39B4B0;
  if (!qword_1EC39B4B0)
  {
    result = swift_getWitnessTable(byte_1C9404260, &type metadata for SessionInvalidationContext.KeySyncRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39B4B0);
  }

  return result;
}

unint64_t sub_1C93E1234()
{
  result = qword_1EC39B4B8[0];
  if (!qword_1EC39B4B8[0])
  {
    result = swift_getWitnessTable(a1k_0, &type metadata for SessionInvalidationContext.CodingKeys, v0, v1);
    atomic_store(result, qword_1EC39B4B8);
  }

  return result;
}

unint64_t sub_1C93E128C()
{
  result = qword_1EE02B510;
  if (!qword_1EE02B510)
  {
    result = swift_getWitnessTable(aIx, &type metadata for SessionInvalidationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B510);
  }

  return result;
}

unint64_t sub_1C93E12E4()
{
  result = qword_1EE02B518;
  if (!qword_1EE02B518)
  {
    result = swift_getWitnessTable(byte_1C94042B0, &type metadata for SessionInvalidationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B518);
  }

  return result;
}

unint64_t sub_1C93E133C()
{
  result = qword_1EE02B4F8;
  if (!qword_1EE02B4F8)
  {
    result = swift_getWitnessTable(aY_6, &type metadata for SessionInvalidationContext.KeySyncRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4F8);
  }

  return result;
}

unint64_t sub_1C93E1394()
{
  result = qword_1EE02B500;
  if (!qword_1EE02B500)
  {
    result = swift_getWitnessTable(a9u, &type metadata for SessionInvalidationContext.KeySyncRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B500);
  }

  return result;
}

unint64_t sub_1C93E13EC()
{
  result = qword_1EE02B4A8;
  if (!qword_1EE02B4A8)
  {
    result = swift_getWitnessTable(aZ, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.NoIdentitySetCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4A8);
  }

  return result;
}

unint64_t sub_1C93E1444()
{
  result = qword_1EE02B4B0;
  if (!qword_1EE02B4B0)
  {
    result = swift_getWitnessTable(aAv, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.NoIdentitySetCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4B0);
  }

  return result;
}

unint64_t sub_1C93E149C()
{
  result = qword_1EE02B4E0;
  if (!qword_1EE02B4E0)
  {
    result = swift_getWitnessTable(byte_1C9404010, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.MissingIdentityKeyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4E0);
  }

  return result;
}

unint64_t sub_1C93E14F4()
{
  result = qword_1EE02B4E8;
  if (!qword_1EE02B4E8)
  {
    result = swift_getWitnessTable(byte_1C9404038, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.MissingIdentityKeyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4E8);
  }

  return result;
}

unint64_t sub_1C93E154C()
{
  result = qword_1EE02B4D0;
  if (!qword_1EE02B4D0)
  {
    result = swift_getWitnessTable(byte_1C9403F58, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.IdentityKeyNoLongerCurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4D0);
  }

  return result;
}

unint64_t sub_1C93E15A4()
{
  result = qword_1EE02B4D8;
  if (!qword_1EE02B4D8)
  {
    result = swift_getWitnessTable(byte_1C9403F80, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.IdentityKeyNoLongerCurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4D8);
  }

  return result;
}

unint64_t sub_1C93E15FC()
{
  result = qword_1EE02B4B8;
  if (!qword_1EE02B4B8)
  {
    result = swift_getWitnessTable(byte_1C9404118, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4B8);
  }

  return result;
}

unint64_t sub_1C93E1654()
{
  result = qword_1EE02B4C0;
  if (!qword_1EE02B4C0)
  {
    result = swift_getWitnessTable(byte_1C9404140, &type metadata for SessionInvalidationContext.KeySyncRequest.Reason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B4C0);
  }

  return result;
}

unint64_t sub_1C93E16AC()
{
  result = qword_1EE02BF58;
  if (!qword_1EE02BF58)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for DeviceDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02BF58);
  }

  return result;
}

unint64_t sub_1C93E1704()
{
  result = qword_1EE02BF60;
  if (!qword_1EE02BF60)
  {
    result = swift_getWitnessTable(aIx_0, &type metadata for DeviceDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02BF60);
  }

  return result;
}

unint64_t sub_1C93E175C()
{
  result = qword_1EE02BF08;
  if (!qword_1EE02BF08)
  {
    result = swift_getWitnessTable(asc_1C9403DE8, &type metadata for ServerDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02BF08);
  }

  return result;
}

unint64_t sub_1C93E17B4()
{
  result = qword_1EE02BF10;
  if (!qword_1EE02BF10)
  {
    result = swift_getWitnessTable(aY_7, &type metadata for ServerDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02BF10);
  }

  return result;
}

uint64_t sub_1C93E19E0()
{
  sub_1C93DB974(v1, v0);
  sub_1C93DB974(v3, v2);
  return v1;
}

uint64_t sub_1C93E1A10()
{
  sub_1C93DB974(v0, v2);
  sub_1C93DB974(v1, v3);
  return v0;
}

uint64_t sub_1C93E1AE4(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93E1B14()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1C93E1BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void sub_1C93E1BE0()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_1C93E1BFC()
{

  return type metadata accessor for SessionInvalidationContext(0);
}

void *sub_1C93E1C18(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1C93E1CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1C93E1CD0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return type metadata accessor for Date();
}

uint64_t ActorPropertyDescribable.propertyDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(a2 + 16))(a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C939DC14(0, v9, 0);
    v10 = v25;
    v11 = *(v5 + 80);
    v22 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v5 + 72);
    do
    {
      sub_1C93E202C(v12, v7);
      v14 = v7[1];
      v23 = *v7;
      v24 = v14;

      MEMORY[0x1CCA87780](61, 0xE100000000000000);
      MEMORY[0x1CCA87780](v7[2], v7[3]);
      v15 = v23;
      v16 = v24;
      sub_1C93E2090(v7);
      v25 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C939DC14((v17 > 1), v18 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v12 += v13;
      --v9;
    }

    while (v9);

    v23 = v10;
    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    v20 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0x746C7561666564;
  }

  return v20;
}

uint64_t ActorPropertyDescribable.actorDescription.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCA87780](60, 0xE100000000000000);
  swift_getObjectType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1CCA87780](8251, 0xE200000000000000);
  v5 = ActorPropertyDescribable.propertyDescription.getter(a1, a2);
  MEMORY[0x1CCA87780](v5);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C93E202C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93E2090(uint64_t a1)
{
  v2 = type metadata accessor for PropertyDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s17CloudCoreInternal30NonCopyablePropertyDescribablePAARi_zrlE19propertyDescriptionSSvg(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(a2 + 8))(a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C939DC14(0, v9, 0);
    v10 = v25;
    v11 = *(v5 + 80);
    v22 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v5 + 72);
    do
    {
      sub_1C93E202C(v12, v7);
      v14 = v7[1];
      v23 = *v7;
      v24 = v14;

      MEMORY[0x1CCA87780](61, 0xE100000000000000);
      MEMORY[0x1CCA87780](v7[2], v7[3]);
      v15 = v23;
      v16 = v24;
      sub_1C93E2090(v7);
      v25 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C939DC14((v17 > 1), v18 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v12 += v13;
      --v9;
    }

    while (v9);

    v23 = v10;
    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    v20 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0x746C7561666564;
  }

  return v20;
}

uint64_t _s17CloudCoreInternal30NonCopyablePropertyDescribablePAARi_zrlE11descriptionSSvg(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCA87780](60, 0xE100000000000000);
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  v4 = _s17CloudCoreInternal30NonCopyablePropertyDescribablePAARi_zrlE19propertyDescriptionSSvg(a1, a2);
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 0;
}

uint64_t PropertyDescribable.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  v5 = PropertyDescribable.propertyDescription.getter(a1, a2);
  MEMORY[0x1CCA87780](v5);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 60;
}

uint64_t PropertyDescribable<>.description.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCA87780](60, 0xE100000000000000);
  swift_getObjectType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1CCA87780](v4);

  MEMORY[0x1CCA87780](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1CCA87780](8251, 0xE200000000000000);
  v5 = PropertyDescribable.propertyDescription.getter(a1, a2);
  MEMORY[0x1CCA87780](v5);

  MEMORY[0x1CCA87780](62, 0xE100000000000000);
  return 0;
}

uint64_t PropertyDescribable.propertyDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(a2 + 16))(a1, a2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C939DC14(0, v9, 0);
    v10 = v25;
    v11 = *(v5 + 80);
    v22 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v5 + 72);
    do
    {
      sub_1C93E202C(v12, v7);
      v14 = v7[1];
      v23 = *v7;
      v24 = v14;

      MEMORY[0x1CCA87780](61, 0xE100000000000000);
      MEMORY[0x1CCA87780](v7[2], v7[3]);
      v15 = v23;
      v16 = v24;
      sub_1C93E2090(v7);
      v25 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C939DC14((v17 > 1), v18 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v12 += v13;
      --v9;
    }

    while (v9);

    v23 = v10;
    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    v20 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0x746C7561666564;
  }

  return v20;
}

uint64_t sub_1C93E27E0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for PropertyDescription(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for PropertyDescription(0);
    sub_1C93E28B0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_1C93E28B0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t PropertyDescription.init(_:_:privacy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C93A4890(a3, a3[3]);
  MEMORY[0x1EEE9AC00](v13);
  (*(v15 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = String.init<A>(describing:)();
  v18 = v17;
  sub_1C93A86A8(a4, v12);
  v19 = *(type metadata accessor for PropertyDescription(0) + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(a4);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v16;
  a5[3] = v18;
  sub_1C93A8768(v12, a5 + v19);
  return sub_1C939EA94(a3);
}

uint64_t PropertyDescription.description.getter()
{
  v2 = *v0;

  MEMORY[0x1CCA87780](61, 0xE100000000000000);
  MEMORY[0x1CCA87780](v0[2], v0[3]);
  return v2;
}

uint64_t PropertyDescription.init(label:value:privacy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(type metadata accessor for PropertyDescription(0) + 24);
  static OSLogPrivacy.auto.getter();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;

  return sub_1C93A8768(a5, a6 + v12);
}

uint64_t type metadata accessor for PropertyDescription(uint64_t a1)
{
  result = qword_1EE02BB98;
  if (!qword_1EE02BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93E2B94(uint64_t a1)
{
  result = type metadata accessor for OSLogPrivacy();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E2C10@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v5 = type metadata accessor for AsyncThrowingStream();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t static CloudCoreThrowingStream.makeStream(of:throwing:bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a2;
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E3D78();
  v9 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v10 = *(v9 - 8);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1C93E3D78();
  type metadata accessor for AsyncThrowingStream.Continuation();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1C93E3D78();
  type metadata accessor for AsyncThrowingStream();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v21 - v18;
  sub_1C93E2E78(v13);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v10 + 8))(v13, v9);
  sub_1C93E2C10(v19, a1);
  return sub_1C93E3D98(v16, v22);
}

uint64_t sub_1C93E2E78@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v3 = type metadata accessor for AsyncThrowingStream.Continuation.BufferingPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C93E2F1C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v5 = type metadata accessor for AsyncThrowingStream.Iterator();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t _s17CloudCoreInternal0aB14ThrowingStreamV8IteratorV4nextxSgyYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[7] = a2;
  v4[8] = a3;
  v6 = *(a2 + 24);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[13] = v7;
  v4[14] = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v8 = type metadata accessor for AsyncThrowingStream.Iterator();
  *v7 = v4;
  v7[1] = sub_1C93E3104;

  return MEMORY[0x1EEE6DB98](a1, v8);
}

uint64_t sub_1C93E3104()
{
  v2 = *v1;
  sub_1C93E3D8C();
  *v3 = v2;
  v4 = *v1;
  sub_1C93E3D8C();
  *v5 = v4;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C93E3240, 0, 0);
  }

  else
  {

    sub_1C939D510();

    return v6();
  }
}

uint64_t sub_1C93E3240()
{
  v1 = *(v0 + 120);
  *(v0 + 40) = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);

    (*(v6 + 32))(v3, v4, v5);
    (*(v6 + 16))(v7, v3, v5);
    swift_willThrowTypedImpl();
    (*(v6 + 8))(v3, v5);

    sub_1C939D510();

    return v8();
  }

  else
  {

    _StringGuts.grow(_:)(67);
    MEMORY[0x1CCA87780](0xD000000000000034, 0x80000001C9406860);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1CCA87780](0x746365707865202CLL, 0xEB00000000206465);
    v10 = _typeName(_:qualified:)();
    MEMORY[0x1CCA87780](v10);

    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1C93E3478(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = *(a2 + 24);
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v2[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_1C93E3590;

  return _s17CloudCoreInternal0aB14ThrowingStreamV8IteratorV4nextxSgyYaq_YKF(a1, a2, v6);
}

uint64_t sub_1C93E3590(uint64_t a1)
{
  v3 = *v2;
  sub_1C93E3D8C();
  *v4 = v3;
  v5 = *v2;
  sub_1C93E3D8C();
  *v6 = v5;

  if (v1)
  {
    v7 = *(v3[4] + 32);
    v7(v3[5], v3[6], v3[3]);
    v8 = _getErrorEmbeddedNSError<A>(_:)();
    v9 = v3[5];
    if (v8)
    {
      (*(v3[4] + 8))(v3[5], v3[3]);
    }

    else
    {
      v10 = v3[3];
      swift_allocError();
      v7(v11, v9, v10);
    }
  }

  sub_1C939D510();

  return v12();
}

uint64_t sub_1C93E3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 24);
  v6[3] = v12;
  v6[4] = *(v12 - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_1C93E3890;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_1C93E3890(uint64_t a1)
{
  v3 = *v2;
  sub_1C93E3D8C();
  *v4 = v3;
  v5 = *v2;
  sub_1C93E3D8C();
  *v6 = v5;

  if (v1)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);
  }

  sub_1C939D510();

  return v7();
}

uint64_t CloudCoreThrowingStream.makeAsyncIterator()@<X0>(uint64_t a2@<X8>)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D604();
  type metadata accessor for AsyncThrowingStream.Iterator();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  sub_1C939D604();
  type metadata accessor for AsyncThrowingStream();
  AsyncStream.makeAsyncIterator()();
  return sub_1C93E2F1C(v5, a2);
}

uint64_t sub_1C93E3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CloudCoreThrowingStream.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1C93E3B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  result = a4(319, v5, v6, MEMORY[0x1E69E7288]);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v9 = a4(0, v7, v8, MEMORY[0x1E69E7288]);

  return sub_1C93A4810(a1, a2, v9);
}

uint64_t sub_1C93E3CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v10 = a5(0, v8, v9, MEMORY[0x1E69E7288]);

  return sub_1C93A1710(a1, a2, a2, v10);
}

uint64_t sub_1C93E3D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  type metadata accessor for AsyncThrowingStream.Continuation();
  sub_1C939D430();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t CloudCoreThrowingStream.Continuation.yield(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  v4 = *(a2 + 16);
  sub_1C939D47C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v10 = type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
  sub_1C939D47C();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v23 - v14);
  (*(v6 + 16))(v9, a1, v4);
  sub_1C93E5F20();
  type metadata accessor for AsyncThrowingStream.Continuation();
  AsyncThrowingStream.Continuation.yield(_:)();
  v16 = (*(v12 + 88))(v15, v10);
  v17 = v16;
  if (v16 == *MEMORY[0x1E69E8778])
  {
    (*(v6 + 8))(a1, v4);
    (*(v12 + 96))(v15, v10);
    v18 = v24;
    *v24 = *v15;
    sub_1C93E5F20();
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
    sub_1C939D430();
    return (*(v19 + 104))(v18, v17);
  }

  v21 = v24;
  if (v16 == *MEMORY[0x1E69E8770])
  {
    (*(v6 + 8))(a1, v4);
    (*(v12 + 96))(v15, v10);
    (*(v6 + 32))(v21, v15, v4);
  }

  else
  {
    if (v16 != *MEMORY[0x1E69E8768])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    (*(v6 + 8))(a1, v4);
  }

  sub_1C93E5F20();
  type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
  sub_1C939D430();
  return (*(v22 + 104))(v21, v17);
}

uint64_t CloudCoreThrowingStream.Continuation.finish(throwing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 24);
  sub_1C939D47C();
  v27 = v6;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C939D618();
  v9 = type metadata accessor for Optional();
  sub_1C939D47C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v15 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_1C939D47C();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  (*(v17 + 16))(&v26 - v19, v3, v15);
  (*(v11 + 16))(v14, v28, v9);
  if (sub_1C93A4810(v14, 1, v4) == 1)
  {
    (*(v11 + 8))(v14, v9);
    v21 = 0;
  }

  else
  {
    v22 = v27;
    (*(v27 + 16))(v8, v14, v4);
    v21 = _getErrorEmbeddedNSError<A>(_:)();
    v23 = *(v22 + 8);
    v23(v8, v4);
    if (v21)
    {
      v23(v14, v4);
    }

    else
    {
      v21 = swift_allocError();
      (*(v27 + 32))(v24, v14, v4);
    }
  }

  v29 = v21;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  return (*(v17 + 8))(v20, v15);
}

void (*(*CloudCoreThrowingStream.Continuation.onTermination.getter(uint64_t a1))(uint64_t a1))(char *)
{
  sub_1C939D47C();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 32) = *(a1 + 32);
  (*(v3 + 32))(v9 + v8, v7, a1);
  return sub_1C93E4DF0;
}

uint64_t (*sub_1C93E4584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  v4 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = type metadata accessor for CloudCoreThrowingStream.Continuation(0, v4, v5, v6);
  CloudCoreThrowingStream.Continuation.onTermination.getter(v7);
  v9 = v8;
  result = swift_allocObject();
  *(result + 2) = v4;
  *(result + 3) = v5;
  *(result + 4) = v6;
  *(result + 5) = sub_1C93E4DF0;
  *(result + 6) = v9;
  *a3 = sub_1C93E5EF4;
  a3[1] = result;
  return result;
}

uint64_t sub_1C93E4624(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = v8;
    v10 = sub_1C93E5ECC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_1C93A1478(v7, v8);
  v11 = type metadata accessor for CloudCoreThrowingStream.Continuation(0, v4, v5, v6);
  return CloudCoreThrowingStream.Continuation.onTermination.setter(v10, v9, v11);
}

uint64_t CloudCoreThrowingStream.Continuation.onTermination.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = *(a3 + 16);
    *(v6 + 32) = *(a3 + 32);
    *(v6 + 40) = a1;
    *(v6 + 48) = a2;
    sub_1C93B27AC(&qword_1EC39B3B0, "T8");
    v7 = type metadata accessor for AsyncThrowingStream.Continuation();
    v8 = sub_1C93E53F4;
    v9 = v6;
  }

  else
  {
    sub_1C93B27AC(&qword_1EC39B3B0, "T8");
    sub_1C939D618();
    v7 = type metadata accessor for AsyncThrowingStream.Continuation();
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DB58](v8, v9, v7);
}

void (*sub_1C93E47F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5))(char *)
{
  v58 = a2;
  v59 = a1;
  v53 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v8 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = (&v48 - v12);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v54 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v52 = a5;
  v19 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  (*(v20 + 16))(&v48 - v21, v59, v19);
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == *MEMORY[0x1E69E8758])
  {
    LODWORD(v59) = v23;
    (*(v20 + 96))(v22, v19);
    v24 = v14;
    (*(v14 + 32))(v18, v22, v13);
    type metadata accessor for AsyncThrowingStream.Continuation();
    v25 = AsyncThrowingStream.Continuation.onTermination.getter();
    v27 = v14;
    v28 = v18;
    if (v25)
    {
      v29 = v25;
      v30 = v26;
      v31 = v54;
      (*(v24 + 16))(v54, v18, v13);
      if (sub_1C93A4810(v31, 1, a4) == 1)
      {
        (*(v24 + 8))(v31, v13);
        v32 = 0;
      }

      else
      {
        v49 = v30;
        v50 = v24;
        v58 = v18;
        v41 = v53;
        v42 = v51;
        (*(v53 + 16))(v51, v31, a4);
        v32 = _getErrorEmbeddedNSError<A>(_:)();
        v43 = *(v41 + 8);
        v43(v42, a4);
        if (v32)
        {
          v43(v31, a4);
        }

        else
        {
          v32 = swift_allocError();
          (*(v41 + 32))(v44, v31, a4);
        }

        v30 = v49;
        v27 = v50;
        v28 = v58;
      }

      v46 = v55;
      v45 = v56;
      *v55 = v32;
      v47 = v57;
      (*(v45 + 104))(v46, v59, v57);
      v29(v46);
      sub_1C93A14F4(v29, v30);
      (*(v45 + 8))(v46, v47);
    }

    return (*(v27 + 8))(v28, v13);
  }

  else if (v23 == *MEMORY[0x1E69E8760])
  {
    v33 = v23;
    type metadata accessor for AsyncThrowingStream.Continuation();
    result = AsyncThrowingStream.Continuation.onTermination.getter();
    if (result)
    {
      v36 = result;
      v37 = v35;
      v38 = v56;
      v39 = v33;
      v40 = v57;
      (*(v56 + 104))(v11, v39, v57);
      v36(v11);
      sub_1C93A14F4(v36, v37);
      return (*(v38 + 8))(v11, v40);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*sub_1C93E4DF0(uint64_t a1))(char *)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_1C93E5F20();
  v8 = *(type metadata accessor for CloudCoreThrowingStream.Continuation(v6, v7, v4, v5) - 8);
  v9 = v1 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1C93E47F0(a1, v9, v3, v4, v5);
}

uint64_t sub_1C93E4E8C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v36 = a2;
  v34 = a1;
  v37 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v17 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v32 - v19);
  (*(v18 + 16))(&v32 - v19, v34, v17);
  v21 = (*(v18 + 88))(v20, v17);
  v22 = v21;
  if (v21 == *MEMORY[0x1E69E8758])
  {
    (*(v18 + 96))(v20, v17);
    v23 = *v20;
    sub_1C93A1710(v16, 1, 1, a5);
    v24 = v32;
    if (!v23)
    {
LABEL_5:
      v27 = v33;
      (*(v33 + 16))(v9, v16, v24);
      v28 = v37;
      (*(v7 + 104))(v9, v22, v37);
      v36(v9);

      (*(v7 + 8))(v9, v28);
      return (*(v27 + 8))(v16, v24);
    }

    v38 = v23;
    v25 = v23;
    v26 = v23;
    if (swift_dynamicCast())
    {
      (*(v33 + 8))(v16, v24);

      sub_1C93A1710(v14, 0, 1, a5);
      (*(*(a5 - 8) + 32))(v16, v14, a5);
      sub_1C93A1710(v16, 0, 1, a5);
      goto LABEL_5;
    }

    sub_1C93A1710(v14, 1, 1, a5);
    (*(v33 + 8))(v14, v24);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(93);
    MEMORY[0x1CCA87780](0xD00000000000004ELL, 0x80000001C94068E0);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1CCA87780](0x746365707865202CLL, 0xEB00000000206465);
    v31 = _typeName(_:qualified:)();
    MEMORY[0x1CCA87780](v31);
  }

  else if (v21 == *MEMORY[0x1E69E8760])
  {
    v30 = v37;
    (*(v7 + 104))(v9, v21, v37);
    v36(v9);
    return (*(v7 + 8))(v9, v30);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*CloudCoreThrowingStream.Continuation.onTermination.modify(void (*(**a1)(uint64_t a1))(char *), uint64_t (*a2)(uint64_t a1)))(uint64_t a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  CloudCoreThrowingStream.Continuation.onTermination.getter(a2);
  *a1 = sub_1C93E4DF0;
  a1[1] = v4;
  return sub_1C93E5460;
}

uint64_t sub_1C93E5460(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = sub_1C93C316C();
    sub_1C93A1478(v3, v4);
    v5 = sub_1C93C316C();
    CloudCoreThrowingStream.Continuation.onTermination.setter(v5, v6, v2);
    v7 = sub_1C93C316C();

    return sub_1C93A14F4(v7, v8);
  }

  else
  {
    v10 = sub_1C93C316C();
    return CloudCoreThrowingStream.Continuation.onTermination.setter(v10, v11, v2);
  }
}

uint64_t sub_1C93E54D4(uint64_t a1)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  result = type metadata accessor for AsyncThrowingStream.Continuation();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93E5590(uint64_t a1)
{
  v1 = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1C93E55EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 > 3)
        {
          LODWORD(v8) = 4;
        }

        switch(v8)
        {
          case 2:
            LODWORD(v8) = *a1;
            break;
          case 3:
            LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v8) = *a1;
            break;
          default:
            LODWORD(v8) = *a1;
            break;
        }
      }

      return v7 + (v8 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_25:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1C93A4810(a1, v5, v4);
  v15 = v14 >= 2;
  result = v14 - 2;
  if (result == 0 || !v15)
  {
    return 0;
  }

  return result;
}

void sub_1C93E5770(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 - 1;
  v11 = *(*(v7 - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  if (v8 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (a2 + 1 <= v9)
          {
            if (a2 != -1 && v8 >= 2)
            {
              v24 = a2 + 2;

              sub_1C93A1710(a1, v24, v8, v7);
            }
          }

          else
          {
            if (v11 <= 3)
            {
              v21 = ~(-1 << (8 * v11));
            }

            else
            {
              v21 = -1;
            }

            if (v11)
            {
              v22 = v21 & (a2 - v9);
              if (v11 <= 3)
              {
                v23 = v11;
              }

              else
              {
                v23 = 4;
              }

              bzero(a1, v11);
              switch(v23)
              {
                case 2:
                  *a1 = v22;
                  break;
                case 3:
                  *a1 = v22;
                  a1[2] = BYTE2(v22);
                  break;
                case 4:
                  *a1 = v22;
                  break;
                default:
                  *a1 = v22;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C93E5A4C(uint64_t a1)
{
  result = sub_1C93E5DC4();
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

uint64_t sub_1C93E5AC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1C93E5BE8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1C93E5DC4()
{
  result = qword_1EC39B5C0;
  if (!qword_1EC39B5C0)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EC39B5C0);
  }

  return result;
}

uint64_t sub_1C93E5DEC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C93E5E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93E5E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C93E5E84(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C93E5E9C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C93E5F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

Swift::Void __swiftcall Task.CancelHandle.cancel()()
{
  sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  sub_1C939EE34();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v5 - v3;
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4);
}

uint64_t Task.CancelHandle.hash(into:)(uint64_t a1)
{
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C93E60E4();

  return dispatch thunk of Hashable.hash(into:)();
}

unint64_t sub_1C93E60E4()
{
  result = qword_1EE02B3A0;
  if (!qword_1EE02B3A0)
  {
    v3 = sub_1C93B27AC(&qword_1EC39B5D0, &qword_1C9404AB0);
    result = swift_getWitnessTable(MEMORY[0x1E69E8668], v3, v0, v1);
    atomic_store(result, &qword_1EE02B3A0);
  }

  return result;
}

Swift::Int Task.CancelHandle.hashValue.getter()
{
  Hasher.init(_seed:)();
  Task.CancelHandle.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1C93E6190(uint64_t a1)
{
  Hasher.init(_seed:)();
  Task.CancelHandle.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t _s17CloudCoreInternal26withInterruptibleChildTask4name18executorPreference8priority9isolation9operationxSSSg_Sch_pSgScPSgScA_pSgYixScTAAE12CancelHandleVyxs5Error_p_GYaKYAcntYaKs8SendableRzlF()
{
  sub_1C939ED74();
  v0[11] = v1;
  v0[12] = v16;
  v0[9] = v2;
  v0[10] = v3;
  v0[7] = v4;
  v0[8] = v5;
  v0[5] = v6;
  v0[6] = v7;
  v0[3] = v15;
  v0[4] = v8;
  v0[2] = v14;
  if (v3)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v0[13] = v9;
  v0[14] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C93E6280, v9, v11);
}

uint64_t sub_1C93E6280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 96);
  v7 = *(v4 + 64);
  v6 = *(v4 + 72);
  v8 = *(v4 + 56);
  v15 = *(v4 + 40);
  v9 = type metadata accessor for RacingTaskResult(0, v5, a3, a4);
  v10 = swift_task_alloc();
  *(v4 + 120) = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v15;
  *(v10 + 40) = v6;
  *(v10 + 48) = v4 + 16;
  *(v10 + 56) = v8;
  *(v10 + 64) = v7;
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v4 + 128) = v11;
  *v11 = v12;
  v11[1] = sub_1C93E63A8;
  v13 = *(v4 + 32);

  return MEMORY[0x1EEE6DD58](v13, v9);
}

uint64_t sub_1C93E63A8()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  v3[17] = v0;

  if (v0)
  {
    v6 = v3[13];
    v7 = v3[14];
    v8 = sub_1C93E650C;
  }

  else
  {

    v6 = v3[13];
    v7 = v3[14];
    v8 = sub_1C93E64B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1C93E64B4()
{
  sub_1C939ED74();

  sub_1C939D624();

  return v0();
}

uint64_t sub_1C93E650C()
{
  sub_1C939ED74();

  sub_1C939D510();

  return v0();
}

uint64_t sub_1C93E6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v19;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v8[6] = a2;
  v8[7] = a3;
  v8[5] = a1;
  v9 = type metadata accessor for RacingTaskResult(255, v19, a3, a4);
  v8[14] = v9;
  type metadata accessor for Optional();
  v8[15] = swift_task_alloc();
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v8[19] = v10;
  v11 = type metadata accessor for Task.CancelHandle(0, v19, v10, MEMORY[0x1E69E7288]);
  v8[20] = v11;
  v12 = *(v11 - 8);
  v8[21] = v12;
  v8[22] = *(v12 + 64);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v13 = sub_1C93A1890(&qword_1EC39B5D8, &unk_1C9404910);
  v8[25] = v13;
  v8[26] = *(v13 - 8);
  v8[27] = swift_task_alloc();
  v14 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  v8[28] = v14;
  v8[29] = *(v14 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v15 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  v8[32] = v15;
  v16 = *(v15 - 8);
  v8[33] = v16;
  v8[34] = *(v16 + 64);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E6894, 0, 0);
}

uint64_t sub_1C93E6894()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v36 = v0[24];
  v39 = v0[8];
  (*(v6 + 104))(v5, *MEMORY[0x1E69E8650], v7);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  sub_1C93E5F2C(v2, v36);
  if (v39)
  {
    v9 = v0[7];
    v8 = v0[8];
    _StringGuts.grow(_:)(16);

    MEMORY[0x1CCA87780](0x7265746E49202D20, 0xEE00726F74707572);
    v29 = v9;
    v31 = v8;
  }

  else
  {
    v31 = 0x80000001C9406930;
    v29 = 0xD000000000000010;
  }

  v10 = v0[35];
  v11 = v0[33];
  v12 = v0[32];
  v33 = v0[23];
  v34 = v0[24];
  v13 = v0[21];
  v28 = v0[20];
  v14 = v0[13];
  v40 = v0[12];
  v30 = v0[10];
  v37 = v0[8];
  v38 = v0[11];
  v35 = v0[7];
  v27 = v0[9];
  (*(v11 + 16))(v10, v0[36], v12);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v14;
  (*(v11 + 32))(&v16[v15], v10, v12);
  v32 = type metadata accessor for ThrowingTaskGroup();
  sub_1C93E7C7C(v29, v31, v27, &unk_1C9404928, v16, v32);

  v0[4] = v28;
  ExtendedFunctionTypeMetadata = swift_getExtendedFunctionTypeMetadata();
  type metadata accessor for UnsafeSendableTransfer(0, ExtendedFunctionTypeMetadata, v18, v19);
  v20 = v30[1];
  v0[2] = *v30;
  v0[3] = v20;

  v21 = UnsafeSendableTransfer.__allocating_init(_:)((v0 + 2));
  v0[37] = v21;
  (*(v13 + 16))(v33, v34, v28);
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v14;
  *(v23 + 5) = v21;
  (*(v13 + 32))(&v23[v22], v33, v28);

  sub_1C93E8438(v35, v37, v38, v40, v27, &unk_1C9404938, v23, v32);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[38] = v24;
  *v24 = v25;
  v24[1] = sub_1C93E6CC8;
  sub_1C93DA690();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1C93E6CC8()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *v1;
  sub_1C93B5C54();
  *v3 = v2;
  *(v4 + 312) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C93E6DC8()
{
  v3 = v0[14];
  v2 = v0[15];
  result = sub_1C93A4810(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[6];
  (*(v8 + 32))(v6, v2, v3);
  MEMORY[0x1CCA87910](*v9, v3, v5, MEMORY[0x1E69E7288]);
  (*(v8 + 16))(v7, v6, v3);
  v10 = type metadata accessor for Result();
  if (sub_1C93A4810(v7, 1, v10) == 1)
  {
    v11 = v0[37];
    v12 = v0[18];
    v13 = v0[16];
    v14 = v0[14];
    v15 = type metadata accessor for CancellationError();
    sub_1C93E8744();
    v16 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v18 = *(v13 + 8);
    v17 = v13 + 8;
    v18(v12, v14);
  }

  else
  {
    v15 = v0[17];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v1 = v0[37];
    if (EnumCaseMultiPayload != 1)
    {
      v36 = v0[36];
      v23 = v0[33];
      v35 = v0[32];
      v24 = v0[29];
      v32 = v0[28];
      v33 = v0[31];
      v25 = v0[21];
      v30 = v0[20];
      v31 = v0[24];
      v26 = v0[18];
      v27 = v0[16];
      v28 = v0[13];
      v29 = v0[14];
      v34 = v0[5];

      (*(v27 + 8))(v26, v29);
      (*(v25 + 8))(v31, v30);
      (*(v24 + 8))(v33, v32);
      (*(v23 + 8))(v36, v35);
      (*(*(v28 - 8) + 32))(v34, v15, v28);

      sub_1C939D624();
      goto LABEL_8;
    }

    v11 = v0[18];
    v20 = v0[16];
    v14 = v0[14];
    v16 = *v15;
    swift_willThrow();

    v21 = *(v20 + 8);
    v17 = v20 + 8;
    v21(v11, v14);
  }

  sub_1C93E8968();
  (*(v0[21] + 8))(v11, v0[20]);
  (*(v1 + 8))(v17, v9);
  (*(v15 + 8))(v16, v14);

  sub_1C939D510();
LABEL_8:

  return v22();
}

uint64_t sub_1C93E7194()
{

  sub_1C93E8968();
  (*(*(v3 + 168) + 8))(v0, *(v3 + 160));
  (*(v7 + 8))(v5, v6);
  (*(v1 + 8))(v2, v4);

  sub_1C939D510();

  return v8();
}

uint64_t sub_1C93E72CC(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v3 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_1C93B5BC4;

  return sub_1C93E6588(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_1C93E73D4(uint64_t a1)
{
  sub_1C93E7480();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C93E7480()
{
  if (!qword_1EE02B398)
  {
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02B398);
    }
  }
}

uint64_t sub_1C93E74D4(uint64_t a1)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v1 = type metadata accessor for Result();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1C93E7554(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_22:
    v11 = *(a1 + v4);
    if (v11 >= 2)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v9 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1C93E7684(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = ~a2;
        }

        break;
    }
  }
}

uint64_t sub_1C93E7848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1C93A1890(&qword_1EC39B5E8, &qword_1C9404948);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E7918, 0, 0);
}

uint64_t sub_1C93E7918()
{
  sub_1C939ED74();
  sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  AsyncStream.makeAsyncIterator()();
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C93E79D4;
  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6D9D0](v0 + 72, v3);
}

uint64_t sub_1C93E79D4()
{
  sub_1C939ED74();
  sub_1C939D504();
  v1 = *v0;
  sub_1C93B5C54();
  *v2 = v1;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C93E7ABC()
{
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v2 = type metadata accessor for Result();
  sub_1C93A1710(v1, 1, 1, v2);

  sub_1C939D624();

  return v3();
}

uint64_t sub_1C93E7B7C(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C93B5BC4;

  return sub_1C93E7848(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_1C93E7C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v12 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25[-v13];
  v27[4] = a4;
  v27[5] = a5;
  sub_1C93B5474(a3, &v25[-v13]);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_1C93A4810(v14, 1, v15);

  if (v16 == 1)
  {
    sub_1C93B54E4(v14);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      sub_1C93E879C(v21 + 32, v26);
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = *v7;
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v27[0] = 0;
    v27[1] = 0;
    v23 = v27;
    v27[2] = v18;
    v27[3] = v20;
  }

  v26[1] = 1;
  v26[2] = v23;
  v26[3] = v22;
  swift_task_create();
}

uint64_t sub_1C93E7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  v6[8] = *(a6 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E7F60, 0, 0);
}

uint64_t sub_1C93E7F60()
{
  sub_1C939ED74();
  UnsafeSendableTransfer.extractValue()((v0 + 2));
  v1 = v0[2];
  v0[10] = v0[3];
  v7 = (v1 + *v1);
  swift_task_alloc();
  sub_1C93DA6BC();
  v0[11] = v2;
  *v2 = v3;
  v2[1] = sub_1C93E805C;
  v4 = v0[9];
  v5 = v0[6];

  return v7(v4, v5);
}

uint64_t sub_1C93E805C()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *v1;
  sub_1C93B5C54();
  *v3 = v2;
  *(v4 + 96) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C93E815C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[4];

  (*(v3 + 32))(v4, v1, v2);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v5 = type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  sub_1C93A1710(v4, 0, 1, v5);

  sub_1C939D624();

  return v6();
}

uint64_t sub_1C93E823C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);

  *v2 = v1;
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v3 = type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  sub_1C93A1710(v2, 0, 1, v3);

  sub_1C939D624();

  return v4();
}

uint64_t sub_1C93E830C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v6 = sub_1C939D618();
  v10 = *(type metadata accessor for Task.CancelHandle(v6, v7, v8, v9) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[5];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1C93B5858;

  return sub_1C93E7EA8(a1, v12, v13, v14, v1 + v11, v5);
}

uint64_t sub_1C93E8438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v30 = a4;
  v16 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v29 - v17;
  v29[1] = a6;
  v36[0] = a6;
  v36[1] = a7;
  sub_1C93B5474(a5, v29 - v17);
  v19 = type metadata accessor for TaskPriority();
  LODWORD(a6) = sub_1C93A4810(v18, 1, v19);

  if (a6 == 1)
  {
    sub_1C93B54E4(v18);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v19 - 8) + 8))(v18, v19);
  }

  v20 = *(a7 + 16);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter();
      sub_1C93E886C(v24 + 32, v31, v36, a8[2]);

LABEL_18:
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = *v9;
  if (a3)
  {

    swift_unknownObjectRetain();
    if (v23 | v21)
    {
      v33[0] = 0;
      v33[1] = 0;
      v26 = v33;
      v33[2] = v21;
      v33[3] = v23;
    }

    else
    {
      v26 = 0;
    }

    v32[0] = 1;
    v32[1] = v26;
    v32[2] = v25;
    if (a3 != 1)
    {
      v31[1] = 6;
      v31[2] = v32;
      v31[3] = a3;
      v31[4] = v30;
    }

    swift_task_create();
    goto LABEL_18;
  }

  v27 = (v23 | v21);
  if (v23 | v21)
  {
    v35[0] = 0;
    v35[1] = 0;
    v27 = v35;
    v35[2] = v21;
    v35[3] = v23;
  }

  v34[0] = 1;
  v34[1] = v27;
  v34[2] = v25;
  v33[4] = 6;
  v33[5] = v34;
  v33[6] = 0;
  v33[7] = v30;
  swift_task_create();
}

unint64_t sub_1C93E8744()
{
  result = qword_1EE02AD80;
  if (!qword_1EE02AD80)
  {
    v3 = type metadata accessor for CancellationError();
    result = swift_getWitnessTable(MEMORY[0x1E69E8558], v3, v0, v1);
    atomic_store(result, &qword_1EE02AD80);
  }

  return result;
}

uint64_t sub_1C93E879C@<X0>(uint64_t result@<X0>, uint64_t *a8@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93E886C@<X0>(uint64_t result@<X0>, uint64_t *a8@<X8>, uint64_t *a9, uint64_t a10)
{
  if (result)
  {

    swift_unknownObjectRetain();
    result = swift_task_create();
    *a8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93E8984()
{
  sub_1C939ED74();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[5] = v5;
  v0[6] = v6;
  v0[4] = v7;
  v8 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C939ED4C(v8);
  v0[11] = v9;
  v0[12] = *(v10 + 64);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v11 = sub_1C93A1890(&qword_1EC39B5D8, &unk_1C9404910);
  v0[15] = v11;
  sub_1C939ED4C(v11);
  v0[16] = v12;
  v0[17] = sub_1C93DA730();
  v13 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  v0[18] = v13;
  sub_1C939ED4C(v13);
  v0[19] = v14;
  v0[20] = sub_1C93DA730();
  v15 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  v0[21] = v15;
  sub_1C939ED4C(v15);
  v0[22] = v16;
  v0[23] = *(v17 + 64);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C93E8B80()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[6];
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1C93BD618();
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 16))(v7, v1, v3);
  if (v8)
  {
    v10 = v0[5];
    v9 = v0[6];
    _StringGuts.grow(_:)(16);

    MEMORY[0x1CCA87780](0x7265746E49202D20, 0xEE00726F74707572);
    v11 = v10;
  }

  else
  {
    v9 = 0x80000001C9406930;
    v11 = 0xD000000000000010;
  }

  v25 = v11;
  v12 = v0[24];
  v13 = v0[22];
  v14 = v0[21];
  v26 = v0[13];
  v27 = v0[14];
  v28 = v0[11];
  v31 = v0[9];
  v32 = v0[10];
  v15 = v0[7];
  v29 = v0[5];
  v30 = v0[6];
  (*(v13 + 16))(v12, v0[25], v14);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v13 + 32))(v17 + v16, v12, v14);
  sub_1C93E96A4(v25, v9, v15, &unk_1C9404A40, v17);

  sub_1C93A1890(&qword_1EC39B618, &qword_1C9404A48);
  swift_allocObject();
  v18 = sub_1C93BD618();
  v20 = sub_1C93EDA50(v18, v19);
  v0[26] = v20;
  sub_1C93EFDB4(v27, v26, &qword_1EC39B5F8, qword_1C9404A00);
  v21 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  sub_1C93EFC18(v26, v22 + v21);

  sub_1C93E9C5C(v29, v30, v31, v32, v15, &unk_1C9404A58, v22);
  v23 = swift_task_alloc();
  v0[27] = v23;
  sub_1C93A1890(&qword_1EC39B620, &qword_1C9404A60);
  *v23 = v0;
  v23[1] = sub_1C93E8F00;
  sub_1C93DA690();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1C93E8F00()
{
  sub_1C939ED74();
  sub_1C939D504();
  sub_1C93E3D8C();
  *v3 = v2;
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C93E8FFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 254)
  {
    __break(1u);
    return;
  }

  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  sub_1C93A1890(&qword_1EC39B3B0, "T8");
  v3 = sub_1C93A8E10();
  MEMORY[0x1CCA87910](v3);
  if (v2 == 255)
  {
    v24 = *(v0 + 200);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    v15 = *(v0 + 112);
    type metadata accessor for CancellationError();
    sub_1C93E8744();
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    sub_1C93A4838(v15, &qword_1EC39B5F8, qword_1C9404A00);
    (*(v12 + 8))(v13, v14);
    (*(v11 + 8))(v24, v10);
  }

  else
  {
    v4 = *(v0 + 200);
    if ((v2 & 1) == 0)
    {
      v17 = *(v0 + 176);
      v22 = *(v0 + 168);
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = *(v0 + 144);
      v21 = *(v0 + 112);

      sub_1C93A4838(v21, &qword_1EC39B5F8, qword_1C9404A00);
      (*(v18 + 8))(v19, v20);
      (*(v17 + 8))(v4, v22);
      sub_1C93EFD7C(v1, v2);

      sub_1C939D510();
      goto LABEL_8;
    }

    v5 = *(v0 + 176);
    v23 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = *(v0 + 112);
    swift_willThrow();

    sub_1C93A4838(v9, &qword_1EC39B5F8, qword_1C9404A00);
    (*(v6 + 8))(v7, v8);
    (*(v5 + 8))(v4, v23);
  }

  sub_1C93EFFD4();

  sub_1C939D510();
LABEL_8:

  v16();
}

void sub_1C93E92C4()
{
  sub_1C93DA798();
  v1 = *(v0 + 112);

  sub_1C93A4838(v1, &qword_1EC39B5F8, qword_1C9404A00);
  v2 = sub_1C93A8E10();
  v3(v2);
  v4 = sub_1C93BD618();
  v5(v4);
  sub_1C93EFFD4();

  sub_1C939D510();
  sub_1C93DA880();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C93E93AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_1C93A1890(&qword_1EC39B5E8, &qword_1C9404948);
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93E9478, 0, 0);
}

uint64_t sub_1C93E9478()
{
  sub_1C939ED74();
  sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C93E9538;
  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6D9D0](v0 + 56, v2);
}

uint64_t sub_1C93E9538()
{
  sub_1C939ED74();
  sub_1C939D504();
  v1 = *v0;
  sub_1C93B5C54();
  *v2 = v1;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C93E9620()
{
  sub_1C939ED74();
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1(0, 255);
}

uint64_t sub_1C93E96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_1C93EFDB4(a3, v25 - v11, &qword_1EC39ADF0, &qword_1C9404940);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_1C93A4810(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1C93A4838(v12, &qword_1EC39ADF0, &qword_1C9404940);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = *v6;

      sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v27[0] = 0;
        v27[1] = 0;
        v21 = v27;
        v27[2] = v16;
        v27[3] = v18;
      }

      v26[0] = 1;
      v26[1] = v21;
      v26[2] = v20;
      v25[1] = 7;
      v25[2] = v26;
      v25[3] = v19;
      swift_task_create();
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

  v22 = *v6;
  sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v23 = (v18 | v16);
  if (v18 | v16)
  {
    v28[0] = 0;
    v28[1] = 0;
    v23 = v28;
    v28[2] = v16;
    v28[3] = v18;
  }

  v27[4] = 1;
  v27[5] = v23;
  v27[6] = v22;
  swift_task_create();
}

uint64_t sub_1C93E9934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C93E9954, 0, 0);
}

uint64_t sub_1C93E9954()
{
  sub_1C939ED74();
  v1 = sub_1C93E9C18();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1C93E9A48;

  return v5();
}

uint64_t sub_1C93E9A48()
{
  sub_1C939ED74();
  sub_1C939D504();
  sub_1C93E3D8C();
  *v3 = v2;
  v4 = *v1;
  sub_1C93B5C54();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C93E9B44()
{
  sub_1C939ED74();

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_1C93E9BAC()
{
  sub_1C939ED74();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1, 1);
}

uint64_t sub_1C93E9C18()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C93E9C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v30 = a4;
  v31 = a6;
  v13 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  sub_1C93EFDB4(a5, &v29 - v14, &qword_1EC39ADF0, &qword_1C9404940);
  v16 = type metadata accessor for TaskPriority();
  LODWORD(a5) = sub_1C93A4810(v15, 1, v16);

  if (a5 == 1)
  {
    sub_1C93A4838(v15, &qword_1EC39ADF0, &qword_1C9404940);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  v17 = *(a7 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = *v8;
      swift_unknownObjectRetain();

      sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v37[0] = 0;
        v37[1] = 0;
        v23 = v37;
        v37[2] = v18;
        v37[3] = v20;
      }

      v36[0] = 1;
      v36[1] = v23;
      v36[2] = v22;
      v24 = v36;
      if (a3 != 1)
      {
        v35[0] = 6;
        v35[1] = v36;
        v35[2] = a3;
        v35[3] = v30;
        v24 = v35;
      }

      v32 = 7;
      v33 = v24;
      v34 = v21;
      swift_task_create();
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = *v8;
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
    v26 = (v20 | v18);
    if (v20 | v18)
    {
      v39[0] = 0;
      v39[1] = 0;
      v26 = v39;
      v39[2] = v18;
      v39[3] = v20;
    }

    v38[0] = 1;
    v38[1] = v26;
    v38[2] = v25;
    if (a3 != 1)
    {
      v37[4] = 6;
      v37[5] = v38;
      v37[6] = a3;
      v37[7] = v30;
    }
  }

  else
  {
    sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
    v27 = (v20 | v18);
    if (v20 | v18)
    {
      v41[0] = 0;
      v41[1] = 0;
      v27 = v41;
      v41[2] = v18;
      v41[3] = v20;
    }

    v40[0] = 1;
    v40[1] = v27;
    v40[2] = v25;
    v39[4] = 6;
    v39[5] = v40;
    v39[6] = 0;
    v39[7] = v30;
  }

  swift_task_create();
}

uint64_t sub_1C93E9F90(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t sub_1C93EA058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v17 = type metadata accessor for ExponentialBackoff.State(0, a11, a12, a4);
  (*(*(a11 - 8) + 32))(&a8[v17[9]], a3, a11);
  *&a8[v17[10]] = a4;
  v18 = v17[11];
  sub_1C93EFF28();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939D430();
  v21 = *(v20 + 32);
  (v21)(&a8[v18], a5, AssociatedTypeWitness);
  sub_1C93EFFA8();
  v21();
  v22 = v17[13];
  sub_1C93EFF28();
  type metadata accessor for Optional();
  sub_1C939D430();
  (*(v23 + 32))(&a8[v22], a6);
  *&a8[v17[14]] = a7;
  result = (v21)(&a8[v17[15]], a9, AssociatedTypeWitness);
  *&a8[v17[16]] = a10;
  return result;
}

void ExponentialBackoff.clock.getter()
{
  sub_1C93EFF10();
  v2 = (v0 + *(v1 + 96));
  os_unfair_lock_lock(v2);
  sub_1C93EFF10();
  sub_1C93EFF10();
  sub_1C93EFEC8(v3, v4, v5, v6);
  sub_1C93EFF1C();
  sub_1C93EA2B4(v7, v8, v9, v11, v10);

  j__os_unfair_lock_unlock(v2);
}

uint64_t ExponentialBackoff.label.getter()
{
  sub_1C93EFF04();
  v2 = (v0 + *(v1 + 96));
  os_unfair_lock_lock(v2);
  sub_1C93EFF04();
  sub_1C93EFF04();
  type metadata accessor for ExponentialBackoff.State(255, v4, *(v3 + 88), v5);
  v6 = *(&v2->_os_unfair_lock_opaque + *(type metadata accessor for Mutex() + 28));

  v7 = sub_1C93E1B08();
  j__os_unfair_lock_unlock(v7);
  return v6;
}

uint64_t ExponentialBackoff.backoffCountBeforeDelay.getter(uint64_t a1, uint64_t a2)
{
  sub_1C93EFF04();
  v5 = (v2 + *(v4 + 96));
  os_unfair_lock_lock(v5);
  sub_1C93EFF04();
  v7 = *(v6 + 80);
  sub_1C93EFF04();
  type metadata accessor for ExponentialBackoff.State(255, v7, *(v8 + 88), v9);
  sub_1C93EFF28();
  v10 = type metadata accessor for Mutex();
  v14 = *(v3 + *(sub_1C93EFF70(v10, v11, v12, v13) + 40));
  j__os_unfair_lock_unlock(v5);
  return v14;
}

uint64_t sub_1C93EA4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(type metadata accessor for ExponentialBackoff.State(0, a2, a3, a4) + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a5, a1 + v7, AssociatedTypeWitness);
}

uint64_t sub_1C93EA58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(type metadata accessor for ExponentialBackoff.State(0, a2, a3, a4) + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a5, a1 + v7, AssociatedTypeWitness);
}

void ExponentialBackoff.tolerance.getter(uint64_t a1)
{
  sub_1C93EFF10();
  v3 = (v1 + *(v2 + 96));
  os_unfair_lock_lock(v3);
  sub_1C93EFF10();
  sub_1C93EFF10();
  sub_1C93EFEC8(v4, v5, v6, v7);
  sub_1C93EFF1C();
  sub_1C93EA71C(v8, v9, v10, v11, v12);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();

  j__os_unfair_lock_unlock(v3);
}

uint64_t sub_1C93EA71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(type metadata accessor for ExponentialBackoff.State(0, a2, a3, a4) + 52);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  return (*(*(v8 - 8) + 16))(a5, a1 + v7, v8);
}

uint64_t ExponentialBackoff.currentBackoffCount.getter(uint64_t a1, uint64_t a2)
{
  sub_1C93EFF04();
  v5 = (v2 + *(v4 + 96));
  os_unfair_lock_lock(v5);
  sub_1C93EFF04();
  v7 = *(v6 + 80);
  sub_1C93EFF04();
  type metadata accessor for ExponentialBackoff.State(255, v7, *(v8 + 88), v9);
  sub_1C93EFF28();
  v10 = type metadata accessor for Mutex();
  v14 = *(v3 + *(sub_1C93EFF70(v10, v11, v12, v13) + 56));
  j__os_unfair_lock_unlock(v5);
  return v14;
}

void sub_1C93EA8A0(void (*a1)(void))
{
  v3 = (v1 + *(*v1 + 96));
  os_unfair_lock_lock(v3);
  sub_1C93EFFA8();
  type metadata accessor for ExponentialBackoff.State(v4, v5, v6, v7);
  type metadata accessor for Mutex();
  sub_1C93EFFA8();
  a1();
  sub_1C93EFF28();
  swift_getAssociatedTypeWitness();

  j__os_unfair_lock_unlock(v3);
}

uint64_t sub_1C93EA9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(type metadata accessor for ExponentialBackoff.State(0, a2, a3, a4) + 60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a5, a1 + v7, AssociatedTypeWitness);
}

uint64_t ExponentialBackoff.__allocating_init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = swift_allocObject();
  ExponentialBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)();
  return v7;
}

void sub_1C93EAAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_1C93A5B40();
  v76 = v24;
  v77 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v73 = v34;
  v74 = v35;
  v36 = sub_1C93A1890(&qword_1EC39B600, &qword_1C9404A18);
  sub_1C939D430();
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v68 - v40;
  v42 = sub_1C93A1890(&qword_1EC39B608, &qword_1C9404A20);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v68 - v44);
  if (v31 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  static Duration.zero.getter();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (static Duration.< infix(_:_:)())
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v71 = v31;
  v72 = v36;
  v75 = a22;
  if ((a23 & 1) == 0)
  {
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      goto LABEL_12;
    }
  }

  v68 = v41;
  v69 = v38;
  v70 = v23;
  v46 = v33;
  v47 = v42[9];
  v48 = type metadata accessor for ContinuousClock();
  sub_1C939D47C();
  v50 = v49;
  v52 = v45 + v47;
  v53 = v46;
  (*(v51 + 16))(v52, v46, v48);
  static Duration.zero.getter();
  v54 = (v45 + v42[11]);
  *v54 = v29;
  v54[1] = v27;
  v55 = (v45 + v42[12]);
  v56 = v77;
  *v55 = v76;
  v55[1] = v56;
  v57 = v45 + v42[13];
  v58 = v75;
  *v57 = a21;
  *(v57 + 1) = v58;
  v57[16] = a23 & 1;
  v59 = v42[15];
  v60 = v74;
  *v45 = v73;
  v45[1] = v60;
  v61 = v71;
  *(v45 + v42[10]) = v71;
  *(v45 + v42[14]) = 0;
  *(v45 + v42[16]) = MEMORY[0x1E69E7CD0];
  if (v61)
  {
    v29 = static Duration.zero.getter();
    v27 = v62;
  }

  v63 = (v45 + v59);
  *v63 = v29;
  v63[1] = v27;
  v64 = v68;
  *v68 = 0;
  v65 = *(v72 + 28);
  v66 = sub_1C93A1890(&qword_1EC39B610, &qword_1C9404A28);
  sub_1C93A5A08(v66);
  bzero(&v64[v65], *(v67 + 64));
  sub_1C93EFDB4(v45, &v64[v65], &qword_1EC39B608, &qword_1C9404A20);
  (*(v50 + 8))(v53, v48);
  sub_1C93A4838(v45, &qword_1EC39B608, &qword_1C9404A20);
  memcpy((v70 + *(*v70 + 96)), v64, v69);
  sub_1C93A5B58();
}

void ExponentialBackoff.init(label:clock:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)()
{
  sub_1C93A5B40();
  v102 = v2;
  v103 = v1;
  v104 = v3;
  v101 = v4;
  v99 = v5;
  v86 = v6;
  v87 = v7;
  sub_1C93EFFC8();
  v9 = *(v8 + 80);
  sub_1C93EFFC8();
  v11 = *(v10 + 88);
  v13 = type metadata accessor for ExponentialBackoff.State(255, v9, v11, v12);
  v89 = type metadata accessor for Mutex();
  sub_1C939D430();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v76 - v17;
  sub_1C939D47C();
  v98 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v76 - v20;
  sub_1C939D47C();
  v91 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C93A59B8();
  v88 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v76 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = type metadata accessor for Optional();
  sub_1C939D47C();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C93A59B8();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v76 - v30;
  sub_1C939D47C();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C93A59B8();
  v37 = MEMORY[0x1EEE9AC00](v35 - v36);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v76 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v46 = &v76 - v45;
  if (v101 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v78 = v41;
  v79 = v44;
  v84 = v0;
  v80 = v43;
  v97 = v42;
  v82 = v15;
  v83 = v13;
  swift_getAssociatedTypeWitness();
  v81 = v11;
  v96 = v9;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C93EFF60();
  v93 = v47;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v48 = dispatch thunk of static Comparable.> infix(_:_:)();
  v94 = *(v33 + 8);
  v95 = v33 + 8;
  v94(v46, AssociatedTypeWitness);
  if ((v48 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v49 = v97;
  v50 = v100;
  v77 = *(v97 + 16);
  v77(v31, v102, v100);
  if (sub_1C93A4810(v31, 1, AssociatedTypeWitness) != 1)
  {
    v51 = v33;
    (*(v33 + 32))(v40, v31, AssociatedTypeWitness);
    sub_1C93EFF60();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v52 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v53 = v94;
    v94(v46, AssociatedTypeWitness);
    v53(v40, AssociatedTypeWitness);
    if (v52)
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return;
  }

  (*(v49 + 8))(v31, v50);
  v51 = v33;
LABEL_7:
  v54 = v85;
  v55 = v50;
  v56 = v96;
  (*(v98 + 16))(v85, v99, v96);
  v57 = *(v51 + 16);
  v57(v46, v104, AssociatedTypeWitness);
  v57(v79, v103, AssociatedTypeWitness);
  v58 = v80;
  v77(v80, v102, v55);
  v59 = v78;
  v60 = v81;
  sub_1C93E9F90(v56, v81);
  v75 = v60;
  v74 = v59;
  v61 = v51;
  v62 = v90;
  v63 = v101;
  sub_1C93EA058(v86, v87, v54, v101, v46, v58, 0, v90, v74, MEMORY[0x1E69E7CD0], v56, v75);
  if (v63)
  {
    sub_1C93EFF60();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v64 = v83;
    (*(v61 + 40))(&v62[*(v83 + 60)], v46, AssociatedTypeWitness);
  }

  else
  {
    v64 = v83;
    (*(v61 + 24))(&v62[*(v83 + 60)], &v62[*(v83 + 44)], AssociatedTypeWitness);
  }

  v65 = v84;
  v66 = v82;
  v67 = v91;
  v68 = v88;
  (*(v91 + 16))(v88, v62, v64);
  v69 = v92;
  *v92 = 0;
  v70 = *(v89 + 28);
  v71 = type metadata accessor for _Cell();
  sub_1C93A5A08(v71);
  bzero(&v69[v70], *(v72 + 64));
  (*(v67 + 32))(&v69[v70], v68, v64);
  (*(v97 + 8))(v102, v100);
  v73 = v94;
  v94(v103, AssociatedTypeWitness);
  v73(v104, AssociatedTypeWitness);
  (*(v98 + 8))(v99, v96);
  memcpy((v65 + *(*v65 + 96)), v69, v66);
  (*(v67 + 8))(v62, v64);
  sub_1C93A5B58();
}

uint64_t sub_1C93EB598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = sub_1C93A1890(&qword_1EC39B5C8, &unk_1C9404820);
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - v6;
  v7 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v31 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v31 - v11;
  v14 = type metadata accessor for ExponentialBackoff.State(0, a2, a3, v13);
  v15 = v14;
  *(a1 + v14[14]) = 0;
  v16 = v14[10];
  v37 = a1;
  if (*(a1 + v16))
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v17 = v37;
    (*(v10 + 40))(v37 + v15[15], v12, AssociatedTypeWitness);
  }

  else
  {
    v17 = v37;
    (*(v10 + 24))(v37 + v14[15], v37 + v14[11], AssociatedTypeWitness);
  }

  v18 = *(v17 + v15[16]);
  v19 = v18 + 56;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 56);
  v23 = (v20 + 63) >> 6;
  v24 = (v32 + 8);
  v37 = v18;

  for (i = 0; v22; result = sub_1C93A4838(v29, &qword_1EC39B5F8, qword_1C9404A00))
  {
    v27 = i;
LABEL_12:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v33;
    sub_1C93EFDB4(*(v37 + 48) + *(v34 + 72) * (v28 | (v27 << 6)), v33, &qword_1EC39B5F8, qword_1C9404A00);
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    v30 = v35;
    AsyncStream.Continuation.yield(_:)();
    (*v24)(v30, v36);
  }

  while (1)
  {
    v27 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
    }

    v22 = *(v19 + 8 * v27);
    ++i;
    if (v22)
    {
      i = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1C93EB9A4(void (*a1)(void))
{
  sub_1C93EFF10();
  v4 = (v1 + *(v3 + 96));
  os_unfair_lock_lock(v4);
  sub_1C93EFF10();
  sub_1C93EFEC8(v5, v6, v7, v8);
  sub_1C93EFF1C();
  a1();

  j__os_unfair_lock_unlock(v4);
}

int *sub_1C93EBA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v18 - v8;
  result = type metadata accessor for ExponentialBackoff.State(0, a2, a3, v10);
  v12 = result[14];
  v13 = *(a1 + v12);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v12) = v15;
    v16 = *(a1 + result[10]);
    if (v15 >= v16)
    {
      if (v15 == v16)
      {
        return (*(v7 + 24))(a1 + result[15], a1 + result[11], AssociatedTypeWitness);
      }

      else if (v16 < v15)
      {
        v19 = result[15];
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        v17 = v19;
        dispatch thunk of static DurationProtocol.*= infix(_:_:)();
        min<A>(_:_:)();
        return (*(v7 + 40))(a1 + v17, v9, AssociatedTypeWitness);
      }
    }
  }

  return result;
}

uint64_t _s17CloudCoreInternal18ExponentialBackoffC3run9isolation_qd__ScA_pSgYi_qd__yYaKYTXEtYaKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v9 = *v6;
  v10 = type metadata accessor for CancellationError();
  v7[12] = v10;
  sub_1C939ED4C(v10);
  v7[13] = v11;
  v7[14] = sub_1C93DA730();
  v12 = sub_1C93A1890(&qword_1EC39ADF0, &qword_1C9404940);
  sub_1C93A5A08(v12);
  v7[15] = sub_1C93DA730();
  v7[16] = *(v9 + 88);
  v7[17] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[18] = AssociatedTypeWitness;
  sub_1C939ED4C(AssociatedTypeWitness);
  v7[19] = v14;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v7[22] = v15;
  v7[23] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1C93EBE44, v15, v17);
}

uint64_t sub_1C93EBE44()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  ExponentialBackoff.currentDelay.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if ((v5 & 1) == 0)
  {
    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1C93D9664(v7, qword_1EE02B458);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315394;
      v12 = ExponentialBackoff.label.getter();
      v14 = sub_1C93D969C(v12, v13, &v28);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      ExponentialBackoff.currentDelay.getter();
      v15 = String.init<A>(describing:)();
      v17 = sub_1C93D969C(v15, v16, &v28);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1C939C000, v8, v9, "%s: delaying next iteration for %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA884B0](v11, -1, -1);
      MEMORY[0x1CCA884B0](v10, -1, -1);
    }
  }

  v18 = v0[15];
  v20 = v0[10];
  v19 = v0[11];
  v21 = type metadata accessor for TaskPriority();
  sub_1C93A1710(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v19;
  v0[2] = &unk_1C9404968;
  v0[3] = v22;

  v23 = sub_1C93A1890(&qword_1EC39B5F0, &qword_1C9404970);
  v24 = swift_task_alloc();
  v0[24] = v24;
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v18;
  v24[5] = v0 + 2;
  v24[6] = 0;
  v24[7] = 0;
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_1C93EC20C;

  return MEMORY[0x1EEE6DD58](v25, v23);
}

uint64_t sub_1C93EC20C()
{
  sub_1C939ED74();
  sub_1C939D504();
  v3 = v2;
  sub_1C93E3D8C();
  *v4 = v3;
  v5 = *v1;
  sub_1C93B5C54();
  *v6 = v5;
  v3[26] = v0;

  if (v0)
  {
    v7 = v3[22];
    v8 = v3[23];
    v9 = sub_1C93EC448;
  }

  else
  {

    v7 = v3[22];
    v8 = v3[23];
    v9 = sub_1C93EC314;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C93EC314()
{
  sub_1C93DA724();
  v1 = v0[15];

  sub_1C93A4838(v1, &qword_1EC39ADF0, &qword_1C9404940);
  v2 = v0[26];
  static Task<>.checkCancellation()();
  if (v2)
  {

    sub_1C939D510();

    return v3();
  }

  else
  {
    sub_1C93EFE60();
    v5 = swift_task_alloc();
    v0[27] = v5;
    *v5 = v0;
    v6 = sub_1C93EFE98(v5);

    return v7(v6);
  }
}

uint64_t sub_1C93EC448()
{
  sub_1C93DA724();
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);

  sub_1C93A4838(v2, &qword_1EC39ADF0, &qword_1C9404940);
  *(v0 + 32) = v1;
  v3 = v1;
  sub_1C93A1890(&qword_1EC39B3B0, "T8");
  sub_1C93E1B08();
  if (swift_dynamicCast())
  {

    v4 = sub_1C93BD618();
    v5(v4);

    static Task<>.checkCancellation()();
    sub_1C93EFE60();
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v7 = sub_1C93EFE98(v6);

    return v8(v7);
  }

  else
  {

    sub_1C939D510();

    return v10();
  }
}

uint64_t sub_1C93EC600()
{
  sub_1C93DA724();
  v1 = *v0;
  sub_1C93B5C54();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C93EC768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a2;
  v7 = *a5;
  v6[5] = *(*a5 + 88);
  v8 = *(v7 + 80);
  v6[6] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[7] = AssociatedTypeWitness;
  v10 = type metadata accessor for Optional();
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93EC928, 0, 0);
}

uint64_t sub_1C93EC928()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(*v3 + 96);
  *(v0 + 120) = v6;
  v7 = (v3 + v6);
  os_unfair_lock_lock((v3 + v6));
  *(v0 + 128) = type metadata accessor for ExponentialBackoff.State(255, v1, v2, v8);
  v9 = *(type metadata accessor for Mutex() + 28);
  *(v0 + 152) = v9;
  sub_1C93ECFE0(v7 + v9, v5, v1, v4, v2);
  j__os_unfair_lock_unlock(v7);
  ExponentialBackoff.clock.getter();
  ExponentialBackoff.currentDelay.getter();
  ExponentialBackoff.tolerance.getter(v10);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1C93ECB0C;
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);

  return sub_1C93ED0F8(v12, v13, v14, v15);
}

uint64_t sub_1C93ECB0C()
{
  v2 = *v1;
  sub_1C93E3D8C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v0;

  v17 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[10];
  v9 = v2[9];
  v10 = v2[8];
  v11 = v2[7];
  v12 = v2[6];
  if (v0)
  {

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    (*(v9 + 8))(v2[10], v2[8]);
  }

  (*(v7 + 8))(v6, v11);
  (*(v5 + 8))(v17, v12);
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1C93ECD88()
{
  sub_1C93DA798();
  v1 = v0[18];
  v2 = v0[5];
  v3 = v0[4];
  os_unfair_lock_lock((v0[3] + v0[15]));
  sub_1C93EFFA8();
  sub_1C93ED514(v4, v5, v6, v3, v2);
  if (!v1)
  {
    sub_1C93EFFB4();
    j__os_unfair_lock_unlock((v10 + v9));

    sub_1C939D510();
    sub_1C93DA880();

    __asm { BRAA            X1, X16 }
  }

  sub_1C93EFF50(v0[15]);
  sub_1C93DA880();

  j__os_unfair_lock_unlock(v7);
}

uint64_t sub_1C93ECEAC()
{
  sub_1C93DA798();
  v1 = v0[5];
  v2 = v0[4];
  os_unfair_lock_lock((v0[3] + v0[15]));
  sub_1C93EFF1C();
  sub_1C93ED514(v3, v4, v5, v2, v1);
  sub_1C93EFFB4();
  j__os_unfair_lock_unlock((v7 + v6));

  sub_1C939D510();

  return v8();
}

uint64_t sub_1C93ECFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  sub_1C93EFDB4(a2, v11, &qword_1EC39B5F8, qword_1C9404A00);
  type metadata accessor for ExponentialBackoff.State(0, a3, a5, v14);
  sub_1C93EDC48(v13, v11);
  return sub_1C93A4838(v13, &qword_1EC39B5F8, qword_1C9404A00);
}

uint64_t sub_1C93ED0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93ED1E4, 0, 0);
}

uint64_t sub_1C93ED1E4()
{
  sub_1C93DA798();
  v1 = v0[8];
  dispatch thunk of Clock.now.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.advanced(by:)();
  v0[11] = *(v1 + 8);
  v0[12] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = sub_1C93A8E10();
  v3(v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1C93ED314;
  v5 = v0[10];
  v6 = v0[5];
  v7 = v0[3];
  v8 = v0[4];

  return MEMORY[0x1EEE6DE58](v5, v7, v8, v6);
}

uint64_t sub_1C93ED314()
{
  sub_1C93DA724();
  sub_1C939D504();
  v3 = v2;
  sub_1C93E3D8C();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_1C93B5C54();
  *v8 = v7;
  *(v3 + 112) = v0;

  v9 = sub_1C93A8E10();
  v6(v9);
  if (v0)
  {
    sub_1C93DA690();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    sub_1C939D510();

    return v13();
  }
}

uint64_t sub_1C93ED4B0()
{
  sub_1C939ED74();

  sub_1C939D510();

  return v0();
}

uint64_t sub_1C93ED514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  type metadata accessor for ExponentialBackoff.State(0, a3, a5, v10);
  sub_1C93EEA50(v9);
  return sub_1C93A4838(v9, &qword_1EC39B628, &qword_1C9404A88);
}

uint64_t ExponentialBackoff.deinit(uint64_t a1)
{
  sub_1C93EFFC8();
  sub_1C93EFFC8();
  type metadata accessor for ExponentialBackoff.State(255, v3, *(v2 + 88), v4);
  sub_1C93EFF28();
  type metadata accessor for Mutex();
  sub_1C93EFF28();
  v5 = type metadata accessor for _Cell();
  sub_1C93EEFBC(v5);
  return v1;
}

uint64_t ExponentialBackoff.__deallocating_deinit(uint64_t a1)
{
  ExponentialBackoff.deinit(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void ExponentialBackoff.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v0 = type metadata accessor for OSLogPrivacy();
  v1 = sub_1C93A5A08(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C93A59B8();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v8 = (type metadata accessor for PropertyDescription(0) - 8);
  v9 = *v8;
  v33 = *(*v8 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C93FE890;
  v12 = (v11 + v10);
  v13 = ExponentialBackoff.label.getter();
  v15 = v14;

  static OSLogPrivacy.auto.getter();
  v34 = v13;
  v35 = v15;
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v19 = sub_1C93E1B08();
  sub_1C93A86A8(v19, v20);
  v21 = v8[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v7);
  *v12 = 0x6C6562616CLL;
  v12[1] = 0xE500000000000000;
  v12[2] = v16;
  v12[3] = v18;
  sub_1C93A8768(v4, v12 + v21);

  v23 = (v12 + v33);
  v25 = ExponentialBackoff.currentBackoffCount.getter(v22, v24);
  static OSLogPrivacy.auto.getter();
  v34 = v25;
  v26 = String.init<A>(describing:)();
  v28 = v27;
  v29 = sub_1C93E1B08();
  sub_1C93A86A8(v29, v30);
  v31 = v8[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v7);
  *v23 = 0xD000000000000013;
  v23[1] = 0x80000001C9406950;
  v23[2] = v26;
  v23[3] = v28;
  sub_1C93A8768(v4, v23 + v31);
  sub_1C93A5B58();
}

uint64_t sub_1C93EDA50(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C93EDAE4()
{
  sub_1C93DA724();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C93B5C44(v3);
  *v4 = v5;
  v6 = sub_1C93EFF34(v4);

  return sub_1C93EC768(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1C93EDB8C()
{
  sub_1C93DA798();
  v0 = swift_task_alloc();
  v1 = sub_1C93B5C44(v0);
  *v1 = v2;
  sub_1C93EFF34(v1);

  return sub_1C93E8984();
}

BOOL sub_1C93EDC48(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v24 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v21 - v8;
  v22 = v2;
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0, MEMORY[0x1E69E8668]);
  v25 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v12 = v10 & v11;
    v13 = (1 << (v10 & v11)) & *(v9 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      v16 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v25;
      v19 = v21;
      sub_1C93EFDB4(v25, v21, &qword_1EC39B5F8, qword_1C9404A00);
      v26 = *v16;
      sub_1C93EE240(v19, v12, isUniquelyReferenced_nonNull_native);
      *v16 = v26;
      sub_1C93EFC18(v18, v23);
      return v13 == 0;
    }

    v14 = *(v24 + 72) * v12;
    sub_1C93EFDB4(*(v9 + 48) + v14, v7, &qword_1EC39B5F8, qword_1C9404A00);
    v15 = static AsyncStream.Continuation.== infix(_:_:)();
    sub_1C93A4838(v7, &qword_1EC39B5F8, qword_1C9404A00);
    if (v15)
    {
      break;
    }

    v10 = v12 + 1;
  }

  sub_1C93A4838(v25, &qword_1EC39B5F8, qword_1C9404A00);
  sub_1C93EFDB4(*(v9 + 48) + v14, v23, &qword_1EC39B5F8, qword_1C9404A00);
  return v13 == 0;
}

Swift::Int sub_1C93EDEF8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = *v1;
  sub_1C93A1890(&qword_1EC39B630, &qword_1C9404A90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v30 = v2;
  v31 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      sub_1C93EE4B0(0, (v28 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48);
    v33 = *(v32 + 72);
    sub_1C93EFC18(v19 + v33 * (v16 | (v9 << 6)), v5);
    Hasher.init(_seed:)();
    sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
    sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0, MEMORY[0x1E69E8668]);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v8 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_1C93EFC18(v5, *(v8 + 48) + v23 * v33);
    ++*(v8 + 16);
    v6 = v31;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v15 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C93EE240(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v22 = v8;
      sub_1C93EDEF8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      v22 = v8;
      sub_1C93EE728(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      Hasher.init(_seed:)();
      sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
      sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0, MEMORY[0x1E69E8668]);
      dispatch thunk of Hashable.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        sub_1C93EFDB4(*(v13 + 48) + *(v7 + 72) * a2, v10, &qword_1EC39B5F8, qword_1C9404A00);
        v16 = static AsyncStream.Continuation.== infix(_:_:)();
        sub_1C93A4838(v10, &qword_1EC39B5F8, qword_1C9404A00);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1C93EE514();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1C93EFC18(v24, *(v17 + 48) + *(v7 + 72) * a2);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1C93EE4B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C93FD260;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1C93EE514()
{
  v1 = v0;
  v2 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  sub_1C93A1890(&qword_1EC39B630, &qword_1C9404A90);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1C93EFDB4(*(v6 + 48) + v21, v5, &qword_1EC39B5F8, qword_1C9404A00);
        result = sub_1C93EFC18(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

Swift::Int sub_1C93EE728(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_1C93A1890(&qword_1EC39B630, &qword_1C9404A90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v6 + 48);
        v32 = *(v31 + 72);
        sub_1C93EFDB4(v19 + v32 * (v16 | (v9 << 6)), v5, &qword_1EC39B5F8, qword_1C9404A00);
        Hasher.init(_seed:)();
        sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
        sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0, MEMORY[0x1E69E8668]);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v8 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        result = sub_1C93EFC18(v5, *(v8 + 48) + v23 * v32);
        ++*(v8 + 16);
        v6 = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1C93EEA50@<X0>(uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v17 - v3;
  v18 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C93EFE14(&qword_1EE02B3A0, &qword_1EC39B5D0, &qword_1C9404AB0, MEMORY[0x1E69E8668]);
  dispatch thunk of Hashable.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      v11 = 1;
      v12 = v20;
      return sub_1C93A1710(v12, v11, 1, v19);
    }

    v9 = *(v21 + 72) * v8;
    sub_1C93EFDB4(*(v5 + 48) + v9, v4, &qword_1EC39B5F8, qword_1C9404A00);
    v10 = static AsyncStream.Continuation.== infix(_:_:)();
    sub_1C93A4838(v4, &qword_1EC39B5F8, qword_1C9404A00);
    if (v10)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v13 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v13;
  v22 = *v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C93EE514();
    v15 = v22;
  }

  v12 = v20;
  sub_1C93EFC18(*(v15 + 48) + v9, v20);
  sub_1C93EECA0(v8);
  v11 = 0;
  *v13 = v22;
  return sub_1C93A1710(v12, v11, 1, v19);
}