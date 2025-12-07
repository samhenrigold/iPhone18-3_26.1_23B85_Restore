SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanPhysicalInterface()()
{
  v54 = "vlanPhysicalInterface()";
  v55 = sub_25B910408;
  v56 = sub_25B8A3C9C;
  v57 = sub_25B8A3CE8;
  v58 = sub_25B88B5F4;
  v59 = sub_25B88B5F4;
  v60 = sub_25B8A3EB8;
  v79 = 0;
  v74 = 0uLL;
  v75 = 0;
  v68 = 0;
  v62 = sub_25B946C48();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = v26 - v65;
  v79 = MEMORY[0x28223BE20](v61);
  v67 = SCVLANInterfaceGetPhysicalInterface(v79);
  if (v67)
  {
    v52 = v67;
    result = v67;
    v68 = v67;
  }

  else
  {
    v1 = v66;
    static SCError.current(_:)(v54, 0x17uLL, 2u, &v76);
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v2 = sub_25B917470();
    (*(v63 + 16))(v1, v2, v62);
    v41 = 7;
    v3 = swift_allocObject();
    v4 = v35.n128_u64[1];
    v5 = v36;
    v6 = v37;
    v39 = v3;
    *(v3 + 16) = v35.n128_u64[0];
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    *(v3 + 36) = v6;
    sub_25B8A1C38();

    v50 = sub_25B946C18();
    v51 = sub_25B947458();
    v38 = 17;
    v44 = swift_allocObject();
    *(v44 + 16) = 64;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v40 = 32;
    v7 = swift_allocObject();
    v8 = v39;
    v42 = v7;
    *(v7 + 16) = v55;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v42;
    v43 = v9;
    *(v9 + 16) = v56;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v47 = v11;
    *(v11 + 16) = v57;
    *(v11 + 24) = v12;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v46 = sub_25B947838();
    v48 = v13;

    v14 = v44;
    v15 = v48;
    *v48 = v58;
    v15[1] = v14;

    v16 = v45;
    v17 = v48;
    v48[2] = v59;
    v17[3] = v16;

    v18 = v47;
    v19 = v48;
    v48[4] = v60;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v50, v51))
    {
      v28 = sub_25B9474D8();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v29 = sub_25B8895FC(1, v27, v27);
      v30 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v31 = &v73;
      v73 = v28;
      v32 = &v72;
      v72 = v29;
      v33 = &v71;
      v71 = v30;
      sub_25B889650(2, &v73);
      sub_25B889650(1, v31);
      v20 = v53;
      v69 = v58;
      v70 = v44;
      sub_25B889664(&v69, v31, v32, v33);
      v34 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v69 = v59;
        v70 = v45;
        sub_25B889664(&v69, &v73, &v72, &v71);
        v26[2] = 0;
        v69 = v60;
        v70 = v47;
        sub_25B889664(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to get VLAN physical interface: %@", v28, 0xCu);
        sub_25B8896B0(v29, 1, v27);
        sub_25B8896B0(v30, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v50);
    (*(v63 + 8))(v66, v62);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v35.n128_u64[1];
    v23 = v36;
    v24 = v37;
    v26[1] = v21;
    *v25 = v35.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    swift_willThrow();
    return v26[3];
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanDisplayName(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v56 = "vlanDisplayName(_:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v78 = 0uLL;
  v79 = 0;
  v63 = sub_25B946C48();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v67 = v29 - v66;
  v84 = v3;
  v85 = v2;
  v83 = v1;
  sub_25B946ED8();
  v70 = sub_25B946F58();
  v72 = SCVLANInterfaceSetLocalizedDisplayName(v69, v70);
  MEMORY[0x277D82BD8](v70);

  if (!v72)
  {
    v4 = v67;
    static SCError.current(_:)(v56, 0x13uLL, 2u, &v80);
    v38 = v80;
    v39 = v81;
    v40 = v82;
    v78 = v80;
    LOBYTE(v79) = v81;
    HIDWORD(v79) = v82;
    v5 = sub_25B917470();
    (*(v64 + 16))(v4, v5, v63);
    v44 = 7;
    v6 = swift_allocObject();
    v7 = v38.n128_u64[1];
    v8 = v39;
    v9 = v40;
    v42 = v6;
    *(v6 + 16) = v38.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v10 = swift_allocObject();
    v11 = v42;
    v45 = v10;
    *(v10 + 16) = v57;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v45;
    v46 = v12;
    *(v12 + 16) = v58;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v50 = v14;
    *(v14 + 16) = v59;
    *(v14 + 24) = v15;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v16;

    v17 = v47;
    v18 = v51;
    *v51 = v60;
    v18[1] = v17;

    v19 = v48;
    v20 = v51;
    v51[2] = v61;
    v20[3] = v19;

    v21 = v50;
    v22 = v51;
    v51[4] = v62;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      v36 = &v75;
      v75 = v33;
      sub_25B889650(2, &v77);
      sub_25B889650(1, v34);
      v23 = v55;
      v73 = v60;
      v74 = v47;
      sub_25B889664(&v73, v34, v35, v36);
      v37 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v73 = v61;
        v74 = v48;
        sub_25B889664(&v73, &v77, &v76, &v75);
        v29[1] = 0;
        v73 = v62;
        v74 = v50;
        sub_25B889664(&v73, &v77, &v76, &v75);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to set VLAN interface localized display name: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v64 + 8))(v67, v63);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v38.n128_u64[1];
    v26 = v39;
    v27 = v40;
    v29[0] = v24;
    *v28 = v38.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanRemove()()
{
  v52 = "vlanRemove()";
  v53 = sub_25B910408;
  v54 = sub_25B8A3C9C;
  v55 = sub_25B8A3CE8;
  v56 = sub_25B88B5F4;
  v57 = sub_25B88B5F4;
  v58 = sub_25B8A3EB8;
  v75 = 0;
  v70 = 0uLL;
  v71 = 0;
  v60 = sub_25B946C48();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = v25 - v63;
  v75 = MEMORY[0x28223BE20](v59);
  if (!SCVLANInterfaceRemove(v75))
  {
    v0 = v64;
    static SCError.current(_:)(v52, 0xCuLL, 2u, &v72);
    v34 = v72;
    v35 = v73;
    v36 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v1 = sub_25B917470();
    (*(v61 + 16))(v0, v1, v60);
    v40 = 7;
    v2 = swift_allocObject();
    v3 = v34.n128_u64[1];
    v4 = v35;
    v5 = v36;
    v38 = v2;
    *(v2 + 16) = v34.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v6 = swift_allocObject();
    v7 = v38;
    v41 = v6;
    *(v6 + 16) = v53;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v41;
    v42 = v8;
    *(v8 + 16) = v54;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v42;
    v46 = v10;
    *(v10 + 16) = v55;
    *(v10 + 24) = v11;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v12;

    v13 = v43;
    v14 = v47;
    *v47 = v56;
    v14[1] = v13;

    v15 = v44;
    v16 = v47;
    v47[2] = v57;
    v16[3] = v15;

    v17 = v46;
    v18 = v47;
    v47[4] = v58;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1, v26, v26);
      v29 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v30 = &v69;
      v69 = v27;
      v31 = &v68;
      v68 = v28;
      v32 = &v67;
      v67 = v29;
      sub_25B889650(2, &v69);
      sub_25B889650(1, v30);
      v19 = v51;
      v65 = v56;
      v66 = v43;
      sub_25B889664(&v65, v30, v31, v32);
      v33 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v65 = v57;
        v66 = v44;
        sub_25B889664(&v65, &v69, &v68, &v67);
        v25[1] = 0;
        v65 = v58;
        v66 = v46;
        sub_25B889664(&v65, &v69, &v68, &v67);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to remove VLAN interface: %@", v27, 0xCu);
        sub_25B8896B0(v28, 1, v26);
        sub_25B8896B0(v29, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v61 + 8))(v64, v60);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v34.n128_u64[1];
    v22 = v35;
    v23 = v36;
    v25[0] = v20;
    *v24 = v34.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

uint64_t sub_25B93BA64@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC11NetworkInfo4HTTP_logger;
  v2 = sub_25B946C48();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B93BAD8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo4HTTP_metrics);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B93BB48(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC11NetworkInfo4HTTP_metrics);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_25B93BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v17 = a1;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v19 = a5;
  v21 = a6;
  v7 = v6;
  v16[3] = v7;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7B8, &qword_25B94C8D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v16 - v18;
  v28 = MEMORY[0x28223BE20](v17);
  v27 = v9;
  v26 = v10;
  v25 = v11;
  v23 = v12;
  v24 = a6;
  v22 = v13;

  v14 = sub_25B946AD8();
  (*(*(v14 - 8) + 56))(v20, 1);
  v19(v20);
  sub_25B93BDB4(v20);
}

uint64_t sub_25B93BDB4(uint64_t a1)
{
  v3 = sub_25B946AD8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_25B93C04C(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7B8, &qword_25B94C8D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v10 = &v4 - v9;
  sub_25B93D96C(v2, &v4 - v9);
  v11 = sub_25B946AD8();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v10, 1) == 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = sub_25B946AA8();
    (*(v12 + 8))(v10, v11);
    v6 = v5;
  }

  v4 = v6;
  (*(v7 + 16))();
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B93C328(uint64_t a1)
{
  v2[18] = v1;
  v2[17] = a1;
  v2[4] = v2;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[16] = 0;
  v3 = sub_25B946B48();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_25B946AD8();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[5] = a1;
  v2[6] = v1;

  return MEMORY[0x2822009F8](sub_25B93C4E4, 0);
}

uint64_t sub_25B93C4E4()
{
  v12 = v0[25];
  v11 = v0[24];
  v10 = v0[23];
  v13 = v0[22];
  v1 = v0[20];
  v15 = v0[18];
  v0[4] = v0;
  (*(v1 + 16))();
  sub_25B90858C();
  sub_25B93D190();
  sub_25B946AC8();
  sub_25B946F48("GET", 3, 1);
  sub_25B946A98();
  v7 = [objc_opt_self() defaultSessionConfiguration];
  v0[26] = v7;
  v0[7] = v7;
  [v7 setRequestCachePolicy_];
  [v7 setTimeoutIntervalForRequest_];
  [v7 setTimeoutIntervalForResource_];
  sub_25B93D19C();
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v15);
  v9 = sub_25B93D200(v7, v15, 0);
  v0[27] = v9;
  v0[8] = v9;
  type metadata accessor for NetworkInfoURLRetrievalResult();
  v8 = NetworkInfoURLRetrievalResult.__allocating_init()();
  v0[28] = v8;
  v0[9] = v8;
  v2 = sub_25B946B28();
  sub_25B8E3D54(v2, v3);
  (*(v10 + 16))(v11, v12, v13);
  MEMORY[0x277D82BE0](v15);
  v4 = swift_task_alloc();
  v14[29] = v4;
  *v4 = v14[4];
  v4[1] = sub_25B93C780;
  v5 = v14[24];

  return MEMORY[0x28211ECF8](v5, v15);
}

uint64_t sub_25B93C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *v4;
  v11[4] = *v4;
  v11[30] = v3;
  v11[31] = a1;
  v11[32] = a2;
  v11[33] = a3;

  if (v3)
  {
    v6 = sub_25B93D014;
  }

  else
  {
    v9 = v11[24];
    v8 = v11[23];
    v10 = v11[22];
    swift_unknownObjectRelease();
    v5 = *(v8 + 8);
    v11[34] = v5;
    v11[35] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v9, v10);
    v6 = sub_25B93C954;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_25B93C954()
{
  v25 = v0[33];
  v1 = v0[32];
  v2 = v0[31];
  v0[4] = v0;
  v0[10] = v25;
  sub_25B93D284(v2, v1);
  MEMORY[0x277D82BE0](v25);
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v23 = v26;
  }

  else
  {
    MEMORY[0x277D82BD8](v24[33]);
    v23 = 0;
  }

  if (v23)
  {
    v22 = v24[27];
    v24[11] = v23;
    sub_25B8E3F98([v23 statusCode]);
    [v22 invalidateAndCancel];
    v24[12] = sub_25B93BAD8();
    if (v24[12])
    {
      v18 = v24[12];
      MEMORY[0x277D82BE0](v18);
      sub_25B8A7238(v24 + 12);
      v19 = [v18 transactionMetrics];
      sub_25B93D300();
      v20 = sub_25B9471C8();
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v21 = v20;
    }

    else
    {
      sub_25B8A7238(v24 + 12);
      v21 = 0;
    }

    v24[13] = v21;
    if (v24[13])
    {
      v27 = v24[13];
    }

    else
    {
      sub_25B93D300();
      v27 = sub_25B947838();
      if (v24[13])
      {
        sub_25B86CFA0(v24 + 13);
      }
    }

    v24[14] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7D0, &qword_25B94C8E8);
    sub_25B93D364();
    sub_25B947418();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAB7E0, &qword_25B94C8F0);
      sub_25B9475E8();
      v17 = v24[15];
      if (!v17)
      {
        break;
      }

      v24[16] = v17;
      sub_25B8E69E8(v17);
      MEMORY[0x277D82BD8](v17);
    }

    v15 = v24[34];
    v10 = v24[33];
    v11 = v24[27];
    v12 = v24[26];
    v13 = v24[25];
    v14 = v24[22];
    sub_25B86CFA0(v24 + 2);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v15(v13, v14);
    v16 = v24[28];
  }

  else
  {
    v9 = v24[34];
    v5 = v24[27];
    v6 = v24[26];
    v7 = v24[25];
    v8 = v24[22];
    MEMORY[0x277D82BD8](v24[33]);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v9(v7, v8);
    v16 = v24[28];
  }

  v3 = *(v24[4] + 8);

  return v3(v16);
}

uint64_t sub_25B93D014()
{
  v4 = v0[28];
  v5 = v0[27];
  v6 = v0[26];
  v9 = v0[25];
  v10 = v0[24];
  v3 = v0[23];
  v7 = v0[22];
  v0[4] = v0;
  swift_unknownObjectRelease();
  v8 = *(v3 + 8);
  v8(v10, v7);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v8(v9, v7);

  v1 = *(v0[4] + 8);

  return v1();
}

unint64_t sub_25B93D19C()
{
  v2 = qword_27FBAB7C0;
  if (!qword_27FBAB7C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAB7C0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_25B93D200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];
  MEMORY[0x277D82BD8](a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v6;
}

uint64_t sub_25B93D284(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_25B93D300()
{
  v2 = qword_27FBAB7C8;
  if (!qword_27FBAB7C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAB7C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_25B93D364()
{
  v2 = qword_27FBAB7D8;
  if (!qword_27FBAB7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB7D0, &qword_25B94C8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB7D8);
    return WitnessTable;
  }

  return v2;
}

id HTTP.init()()
{
  v3 = 0;
  sub_25B946F48("com.apple.NetworkInfo", 21, 1);
  sub_25B946F48("HTTP", 4, 1);
  sub_25B946C28();
  *OBJC_IVAR____TtC11NetworkInfo4HTTP_metrics = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for HTTP(0);
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

uint64_t type metadata accessor for HTTP(uint64_t a1)
{
  v2 = qword_27FBAB850;
  if (!qword_27FBAB850)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

id HTTP.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTTP(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B93D67C(uint64_t a1)
{
  updated = sub_25B946C48();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of HTTP.fetchURL(url:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0x88);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_25B8A4CA0;

  return v7(a1);
}

void *sub_25B93D96C(const void *a1, void *a2)
{
  v6 = sub_25B946AD8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7B8, &qword_25B94C8D8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_25B93DAD0@<X0>(double *a1@<X8>)
{

  *a1 = sub_25B93DB80();
}

uint64_t sub_25B93DB28(double *a1)
{
  v2 = *a1;

  sub_25B93DBD8(v2);
}

double sub_25B93DB80()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B93DBD8(double a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return swift_endAccess();
}

uint64_t sub_25B93DC38@<X0>(double *a1@<X8>)
{

  *a1 = sub_25B93DCE8();
}

uint64_t sub_25B93DC90(double *a1)
{
  v2 = *a1;

  sub_25B93DD40(v2);
}

double sub_25B93DCE8()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B93DD40(double a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_25B93DDA0@<X0>(double *a1@<X8>)
{

  *a1 = sub_25B93DE50();
}

uint64_t sub_25B93DDF8(double *a1)
{
  v2 = *a1;

  sub_25B93DEA8(v2);
}

double sub_25B93DE50()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t sub_25B93DEA8(double a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t sub_25B93DF08(void *a1)
{
  sub_25B898FF0(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_25B93DF7C(v2, v3);
}

uint64_t sub_25B93DF7C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t sub_25B93E00C(uint64_t a1)
{
  v35 = a1;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB860, &qword_25B94C930);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = v12 - v38;
  v56 = v12 - v38;
  v55 = MEMORY[0x28223BE20](v35);
  v54 = v1;
  v39 = v55[3];
  v40 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v39);
  sub_25B94058C();
  sub_25B9479C8();
  sub_25B8837AC();
  v2 = v43;
  v53 = 0;
  sub_25B947788();
  v44 = v2;
  v45 = v2;
  if (v2)
  {
    v18 = v45;
    result = (*(v36 + 8))(v41, v42);
    v19 = v18;
  }

  else
  {
    sub_25B883918();
    v3 = v44;
    v52 = 1;
    sub_25B947788();
    v33 = v3;
    v34 = v3;
    if (v3)
    {
      v17 = v34;
      result = (*(v36 + 8))(v41, v42);
      v19 = v17;
    }

    else
    {
      sub_25B868B34();
      v4 = v33;
      v51 = 2;
      sub_25B947788();
      v31 = v4;
      v32 = v4;
      if (v4)
      {
        v16 = v32;
        result = (*(v36 + 8))(v41, v42);
        v19 = v16;
      }

      else
      {
        sub_25B93DB80();
        v5 = v31;
        v50 = 3;
        sub_25B947758();
        v29 = v5;
        v30 = v5;
        if (v5)
        {
          v15 = v30;
          result = (*(v36 + 8))(v41, v42);
          v19 = v15;
        }

        else
        {
          sub_25B883E20();
          v6 = v29;
          v49 = 4;
          sub_25B947758();
          v27 = v6;
          v28 = v6;
          if (v6)
          {
            v14 = v28;
            result = (*(v36 + 8))(v41, v42);
            v19 = v14;
          }

          else
          {
            sub_25B93DCE8();
            v7 = v27;
            v48 = 5;
            sub_25B947758();
            v25 = v7;
            v26 = v7;
            if (v7)
            {
              v13 = v26;
              result = (*(v36 + 8))(v41, v42);
              v19 = v13;
            }

            else
            {
              sub_25B93DE50();
              v8 = v25;
              v47 = 6;
              sub_25B947758();
              v23 = v8;
              v24 = v8;
              if (v8)
              {
                v12[1] = v24;
                return (*(v36 + 8))(v41, v42);
              }

              else
              {
                sub_25B88417C();
                v9 = v23;
                v20 = v10;
                v46 = 7;
                sub_25B9476F8();
                v21 = v9;
                v22 = v9;
                if (v9)
                {
                  v12[0] = v22;
                }

                return (*(v36 + 8))(v41, v42);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25B93E5B4(uint64_t a1, uint64_t a2)
{
  v30[2] = a1;
  v30[3] = a2;
  sub_25B946ED8();
  v30[0] = sub_25B946F48("TTL", 3, 1);
  v30[1] = v2;
  v29[2] = a1;
  v29[3] = a2;
  v22 = MEMORY[0x25F870E10](v30[0], v2, a1, a2);
  sub_25B86AEEC(v30);
  if (v22)
  {

    v31 = 0;
    v19 = 0;
LABEL_18:

    return v19;
  }

  sub_25B946ED8();
  v29[0] = sub_25B946F48("Sent", 4, 1);
  v29[1] = v3;
  v28[2] = a1;
  v28[3] = a2;
  v18 = MEMORY[0x25F870E10](v29[0], v3, a1, a2);
  sub_25B86AEEC(v29);
  if (v18)
  {

    v31 = 1;
    v19 = 1;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v28[0] = sub_25B946F48("Lost", 4, 1);
  v28[1] = v4;
  v27[2] = a1;
  v27[3] = a2;
  v17 = MEMORY[0x25F870E10](v28[0], v4, a1, a2);
  sub_25B86AEEC(v28);
  if (v17)
  {

    v31 = 2;
    v19 = 2;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v27[0] = sub_25B946F48("Avg", 3, 1);
  v27[1] = v5;
  v26[2] = a1;
  v26[3] = a2;
  v16 = MEMORY[0x25F870E10](v27[0], v5, a1, a2);
  sub_25B86AEEC(v27);
  if (v16)
  {

    v31 = 3;
    v19 = 3;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v26[0] = sub_25B946F48("Last", 4, 1);
  v26[1] = v6;
  v25[2] = a1;
  v25[3] = a2;
  v15 = MEMORY[0x25F870E10](v26[0], v6, a1, a2);
  sub_25B86AEEC(v26);
  if (v15)
  {

    v31 = 4;
    v19 = 4;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v25[0] = sub_25B946F48("Best", 4, 1);
  v25[1] = v7;
  v24[2] = a1;
  v24[3] = a2;
  v14 = MEMORY[0x25F870E10](v25[0], v7, a1, a2);
  sub_25B86AEEC(v25);
  if (v14)
  {

    v31 = 5;
    v19 = 5;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v24[0] = sub_25B946F48("Worst", 5, 1);
  v24[1] = v8;
  v23[2] = a1;
  v23[3] = a2;
  v13 = MEMORY[0x25F870E10](v24[0], v8, a1, a2);
  sub_25B86AEEC(v24);
  if (v13)
  {

    v31 = 6;
    v19 = 6;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v23[0] = sub_25B946F48("Host", 4, 1);
  v23[1] = v9;
  v12 = MEMORY[0x25F870E10](v23[0], v9, a1, a2);
  sub_25B86AEEC(v23);
  if (v12)
  {

    v31 = 7;
    v19 = 7;
    goto LABEL_18;
  }

  return 8;
}

uint64_t sub_25B93EB3C(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_25B946F48("TTL", 3, 1);
    case 1:
      return sub_25B946F48("Sent", 4, 1);
    case 2:
      return sub_25B946F48("Lost", 4, 1);
    case 3:
      return sub_25B946F48("Avg", 3, 1);
    case 4:
      return sub_25B946F48("Last", 4, 1);
    case 5:
      return sub_25B946F48("Best", 4, 1);
    case 6:
      return sub_25B946F48("Worst", 5, 1);
  }

  return sub_25B946F48("Host", 4, 1);
}

uint64_t sub_25B93ED6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B93E5B4(a1, a2);
  *a3 = result;
  return result;
}

void *sub_25B93EEA8()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_25B947358();
  result = v3;
  v3[7] = v2;
  v3[8] = 0;
  v3[9] = 0;
  return result;
}

uint64_t SummaryTraceRouteResult.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  v5 = SummaryTraceRouteResult.init(from:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t SummaryTraceRouteResult.init(from:)(void *a1)
{
  v80 = a1;
  v96 = 0;
  v95 = 0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB878, &qword_25B94C938);
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = v24 - v79;
  v96 = MEMORY[0x28223BE20](v80);
  v95 = v1;
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  sub_25B947358();
  v2 = v80;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  v83 = v2[3];
  v84 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v83);
  sub_25B94058C();
  v4 = v82;
  sub_25B9479A8();
  v85 = v4;
  v86 = v4;
  if (v4)
  {
    v32 = v86;
  }

  else
  {
    v94[31] = 0;
    v5 = sub_25B9476E8();
    v72 = 0;
    v73 = v5;
    v74 = 0;
    v67 = v5;
    v68 = v94;
    swift_beginAccess();
    *(v75 + 16) = v67;
    swift_endAccess();
    v6 = v72;
    v93[31] = 1;
    v7 = sub_25B9476E8();
    v69 = v6;
    v70 = v7;
    v71 = v6;
    if (v6)
    {
      v31 = v71;
      (*(v77 + 8))(v81, v76);
      v32 = v31;
    }

    else
    {
      v62 = v70;
      v63 = v93;
      swift_beginAccess();
      *(v75 + 20) = v62;
      swift_endAccess();
      v8 = v69;
      v92[31] = 2;
      v9 = sub_25B9476E8();
      v64 = v8;
      v65 = v9;
      v66 = v8;
      if (v8)
      {
        v30 = v66;
        (*(v77 + 8))(v81, v76);
        v32 = v30;
      }

      else
      {
        v57 = v65;
        v58 = v92;
        swift_beginAccess();
        *(v75 + 24) = v57;
        swift_endAccess();
        v10 = v64;
        v91[31] = 3;
        sub_25B9476B8();
        v59 = v10;
        v60 = v11;
        v61 = v10;
        if (v10)
        {
          v29 = v61;
          (*(v77 + 8))(v81, v76);
          v32 = v29;
        }

        else
        {
          v52 = v60;
          v53 = v91;
          swift_beginAccess();
          *(v75 + 32) = v52;
          swift_endAccess();
          v12 = v59;
          v90[31] = 4;
          sub_25B9476B8();
          v54 = v12;
          v55 = v13;
          v56 = v12;
          if (v12)
          {
            v28 = v56;
            (*(v77 + 8))(v81, v76);
            v32 = v28;
          }

          else
          {
            v47 = v55;
            v48 = v90;
            swift_beginAccess();
            *(v75 + 40) = v47;
            swift_endAccess();
            v14 = v54;
            v89[31] = 5;
            sub_25B9476B8();
            v49 = v14;
            v50 = v15;
            v51 = v14;
            if (v14)
            {
              v27 = v51;
              (*(v77 + 8))(v81, v76);
              v32 = v27;
            }

            else
            {
              v42 = v50;
              v43 = v89;
              swift_beginAccess();
              *(v75 + 48) = v42;
              swift_endAccess();
              v16 = v49;
              v88[31] = 6;
              sub_25B9476B8();
              v44 = v16;
              v45 = v17;
              v46 = v16;
              if (v16)
              {
                v26 = v46;
                (*(v77 + 8))(v81, v76);
                v32 = v26;
              }

              else
              {
                v36 = v45;
                v37 = v88;
                swift_beginAccess();
                *(v75 + 56) = v36;
                swift_endAccess();
                v18 = v44;
                v87[31] = 7;
                v19 = sub_25B947668();
                v38 = v18;
                v39 = v19;
                v40 = v20;
                v41 = v18;
                if (!v18)
                {
                  v34 = v40;
                  v33 = v39;
                  v35 = v87;
                  swift_beginAccess();
                  v21 = v34;
                  v22 = v75;
                  *(v75 + 64) = v33;
                  *(v22 + 72) = v21;

                  swift_endAccess();
                  (*(v77 + 8))(v81, v76);
                  __swift_destroy_boxed_opaque_existential_1(v80);
                  return v75;
                }

                v25 = v41;
                (*(v77 + 8))(v81, v76);
                v32 = v25;
              }
            }
          }
        }
      }
    }
  }

  v24[1] = v32;

  __swift_destroy_boxed_opaque_existential_1(v80);
  return v24[2];
}

uint64_t sub_25B93F714@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SummaryTraceRouteResult.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t TraceRouteResultSet.destination.getter()
{
  v2 = *v0;
  sub_25B946ED8();
  return v2;
}

uint64_t TraceRouteResultSet.destination.setter(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t TraceRouteResultSet.summary.getter()
{
  v2 = *(v0 + 16);
  sub_25B946ED8();
  return v2;
}

uint64_t TraceRouteResultSet.summary.setter(uint64_t a1)
{
  sub_25B946ED8();
  *(v1 + 16) = a1;
}

uint64_t TraceRouteResultSet.encode(to:)(uint64_t a1)
{
  v7 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB880, &qword_25B94C940);
  v8 = *(v18 - 8);
  v9 = v18 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v5 - v10;
  v26 = v5 - v10;
  v25 = MEMORY[0x28223BE20](v7);
  v16 = *v1;
  v17 = v1[1];
  v11 = v1[2];
  v24 = v1;
  v12 = v25[3];
  v13 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v12);
  sub_25B940684();
  sub_25B9479C8();
  v2 = v15;
  sub_25B946ED8();
  v23 = 0;
  sub_25B9476F8();
  v19 = v2;
  v20 = v2;
  if (v2)
  {
    v5[1] = v20;

    return (*(v8 + 8))(v14, v18);
  }

  else
  {

    sub_25B946ED8();
    v5[5] = &v22;
    v22 = v11;
    v5[3] = &v21;
    v21 = 1;
    v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B940700();
    v3 = v19;
    sub_25B947708();
    v5[6] = v3;
    v6 = v3;
    if (v3)
    {
      v5[0] = v6;
    }

    sub_25B86CFA0(&v22);
    return (*(v8 + 8))(v14, v18);
  }
}

uint64_t sub_25B93FC20(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_25B946ED8();
  v12[0] = sub_25B946F48("destination", 11, 1);
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x25F870E10](v12[0], v2, a1, a2);
  sub_25B86AEEC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_25B946ED8();
  v11[0] = sub_25B946F48("summary", 7, 1);
  v11[1] = v3;
  v6 = MEMORY[0x25F870E10](v11[0], v3, a1, a2);
  sub_25B86AEEC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_25B93FE20(char a1)
{
  if (a1)
  {
    return sub_25B946F48("summary", 7, 1);
  }

  else
  {
    return sub_25B946F48("destination", 11, 1);
  }
}

uint64_t sub_25B93FEB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_25B93FF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B93FC20(a1, a2);
  *a3 = result;
  return result;
}

void TraceRouteResultSet.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v19 = a1;
  v33 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8B0, &qword_25B94C950);
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v6 - v23;
  v33 = MEMORY[0x28223BE20](v19);
  v34 = 0;
  v35 = 0;
  v26 = v33[3];
  v27 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v26);
  sub_25B940684();
  v2 = v25;
  sub_25B9479A8();
  v28 = v2;
  v29 = v2;
  if (v2)
  {
    v8 = v29;
  }

  else
  {
    v32 = 0;
    v3 = sub_25B947668();
    v14 = 0;
    v15 = v3;
    v16 = v4;
    v17 = 0;
    v34 = v3;
    v35 = v4;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB890, &qword_25B94C948);
    v10 = &v30;
    v30 = 1;
    sub_25B9408BC();
    v5 = v14;
    sub_25B9476D8();
    v12 = v5;
    v13 = v5;
    if (!v5)
    {
      v9 = &v34;
      v36 = v31;
      (*(v21 + 8))(v24, v20);
      sub_25B9409D4(v9, v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      sub_25B940A34(v9);
      return;
    }

    v7 = v13;
    (*(v21 + 8))(v24, v20);
    v8 = v7;
  }

  v6 = v8;
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_25B86AEEC(&v34);
}

uint64_t sub_25B940320()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B94037C(uint64_t a1)
{
  sub_25B946ED8();
  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_25B9403F4()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  sub_25B946ED8();
  swift_endAccess();
  return v2;
}

uint64_t sub_25B940450(uint64_t a1)
{
  sub_25B946ED8();
  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t JSONTracerouteDelegate.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8C8, &qword_25B94C958);
  sub_25B947838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
  *(v0 + 16) = sub_25B946EC8();
  sub_25B947838();
  v1 = sub_25B946EC8();
  result = v3;
  *(v3 + 24) = v1;
  return result;
}

unint64_t sub_25B94058C()
{
  v2 = qword_27FBAB868;
  if (!qword_27FBAB868)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940608()
{
  v2 = qword_27FBAB870;
  if (!qword_27FBAB870)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940684()
{
  v2 = qword_27FBAB888;
  if (!qword_27FBAB888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940700()
{
  v2 = qword_27FBAB898;
  if (!qword_27FBAB898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B940798();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940798()
{
  v2 = qword_27FBAB8A0;
  if (!qword_27FBAB8A0)
  {
    type metadata accessor for SummaryTraceRouteResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940840()
{
  v2 = qword_27FBAB8A8;
  if (!qword_27FBAB8A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9408BC()
{
  v2 = qword_27FBAB8B8;
  if (!qword_27FBAB8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B940954();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B940954()
{
  v2 = qword_27FBAB8C0;
  if (!qword_27FBAB8C0)
  {
    type metadata accessor for SummaryTraceRouteResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_25B9409D4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_25B946ED8();
  a2[1] = v4;
  v6 = a1[2];
  sub_25B946ED8();
  result = a2;
  a2[2] = v6;
  return result;
}

uint64_t sub_25B940A6C(uint64_t a1)
{
  if (sub_25B8837AC() == 30)
  {
    sub_25B868B34();

    v6 = sub_25B8689DC();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_25B940DEC;
    *(v7 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8D0, &qword_25B94C968);
    v5 = sub_25B946F08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
    sub_25B947208();
    v5();
    v6();

    v8 = sub_25B8D12E0;
    v9 = 0;
  }

  else
  {
    sub_25B868B34();

    v3 = sub_25B868BEC();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_25B940DEC;
    *(v4 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8D0, &qword_25B94C968);
    v2 = sub_25B946F08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
    sub_25B947208();
    v2();
    v3();

    v8 = 0;
    v9 = sub_25B8D12E0;
  }

  sub_25B8D0430(v8);
  return sub_25B8D0430(v9);
}

uint64_t (*sub_25B940E78(uint64_t a1))(uint64_t a1)
{
  v68[1] = 0;
  v68[0] = 0;
  v66[0] = 0;
  v66[1] = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58[0] = 0;
  v58[1] = 0;
  v51 = 0;
  v68[2] = a1;
  type metadata accessor for SummaryTraceRouteResult();
  v68[0] = sub_25B947838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
  v67 = sub_25B946ED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8D8, &qword_25B94C970);
  sub_25B94173C();
  v48 = sub_25B947168();
  sub_25B86CFA0(&v67);
  v66[2] = v48;
  sub_25B946ED8();
  v65 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8E8, &qword_25B94C978);
  sub_25B9417C4();
  sub_25B947418();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB8F8, &qword_25B94C980);
    sub_25B9475E8();
    v47 = v63;
    if (v64)
    {
      break;
    }

    v62 = v63;
    v46 = sub_25B93EE6C();
    v61 = v46;
    sub_25B947838();
    v60 = sub_25B947388();
    v59 = 0;
    v56 = v47;
    sub_25B946F18();
    if (v57)
    {
      v45 = v57;
    }

    else
    {
      sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NetworkInfo/TraceRouteDelegate.swift", 36, 2, 87, 0);
      __break(1u);
    }

    v55 = v45;
    sub_25B94184C();
    sub_25B947418();
    for (i = 0; ; i = v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB908, &qword_25B94C988);
      sub_25B9475E8();
      if (!v54)
      {
        break;
      }

      v51 = v54;
      if (sub_25B868D04())
      {
        result = sub_25B868BEC();
        if (__OFADD__(*v22, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        ++*v22;
        (result)();
        v29 = i;
      }

      else
      {
        v59 = 1;
        v41 = sub_25B88417C();
        v42 = v1;
        v2 = sub_25B946F48("", 0, 1);
        v43 = MEMORY[0x25F870E10](v41, v42, v2);

        if (v43)
        {
          v3 = sub_25B946F48("*", 1, 1);
          sub_25B93DF7C(v3, v4);
        }

        else
        {
          v50[0] = sub_25B88417C();
          v50[1] = v5;
          v40 = v5 == 0;
          sub_25B86AEEC(v50);
          if (v40)
          {
            v6 = sub_25B88417C();
            sub_25B93DF7C(v6, v7);
          }

          else
          {
            sub_25B946ED8();
            v49[0] = sub_25B88417C();
            v49[1] = v8;
            v39 = sub_25B9473A8();
            sub_25B86AEEC(v49);

            if ((v39 & 1) == 0)
            {
              v37 = sub_25B88417C();
              v38 = v9;
              if (v9)
              {
                v10 = sub_25B946F48("|", 1, 1);
                v33 = MEMORY[0x25F870DE0](v37, v38, v10);
                v34 = v11;

                v12 = sub_25B88417C();
                v35 = MEMORY[0x25F870DE0](v33, v34, v12);
                v36 = v13;

                sub_25B93DF7C(v35, v36);
              }
            }
          }
        }

        sub_25B88417C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB918, &qword_25B94C990);
        sub_25B947398();

        sub_25B883804(v47);
        result = sub_25B8839D0();
        if (__OFADD__(*v15, 1))
        {
          goto LABEL_37;
        }

        ++*v15;
        (result)();
        v17 = sub_25B883E20();
        sub_25B883E78(v17);
        v31 = sub_25B883E20();
        v18 = sub_25B869020();
        *v19 = *v19 + v31;
        v18();
        v32 = sub_25B883E20();
        if (sub_25B93DCE8() < v32)
        {
          v20 = sub_25B883E20();
          sub_25B93DD40(v20);
        }

        v30 = sub_25B883E20();
        if (v30 < sub_25B93DE50())
        {
          v21 = sub_25B883E20();
          sub_25B93DEA8(v21);
        }

        v29 = 1;
      }
    }

    sub_25B86CFA0(v58);
    if (i)
    {
      v52 = sub_25B883918();
      sub_25B9418D4();
      sub_25B947378();
      v28 = v24;
      v25 = sub_25B869020();
      *v26 = *v26 / v28;
      v25();
    }

    else
    {
      sub_25B93DEA8(0.0);
    }

    v53 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB890, &qword_25B94C948);
    sub_25B947208();
    sub_25B86CFA0(&v60);
  }

  sub_25B86CFA0(v66);
  v27 = v68[0];
  sub_25B946ED8();

  sub_25B86CFA0(v68);
  return v27;
}

unint64_t sub_25B94173C()
{
  v2 = qword_27FBAB8E0;
  if (!qword_27FBAB8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB8D8, &qword_25B94C970);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9417C4()
{
  v2 = qword_27FBAB8F0;
  if (!qword_27FBAB8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB8E8, &qword_25B94C978);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB8F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B94184C()
{
  v2 = qword_27FBAB900;
  if (!qword_27FBAB900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAB60, &qword_25B94C960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9418D4()
{
  v2 = qword_27FBAB910;
  if (!qword_27FBAB910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B94194C()
{
  v40 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v32 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v46 = v0;
  v45 = sub_25B947838();
  v26 = sub_25B940320();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB60, &qword_25B94C960);
  v27 = MEMORY[0x25F870CD0](v26, MEMORY[0x277D849A8]);

  if (v27)
  {
    v22 = sub_25B9403F4();
    v23 = MEMORY[0x25F870CD0](v22, MEMORY[0x277D849A8], v25, MEMORY[0x277D849B8]);

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v20 = v45;
    sub_25B946ED8();
    sub_25B86CFA0(&v45);
    return v20;
  }

  else
  {
    sub_25B940320();
    v43 = 1;
    sub_25B946F18();
    if (v44)
    {
      v32 = v44;

      type metadata accessor for JSONTracerouteDelegate();
      v16 = sub_25B940320();
      v17 = sub_25B940E78(v16);

      v31 = v17;
      v1 = sub_25B93FEAC();
      sub_25B93FEB8(v1, v2, v17, &v28);
      type metadata accessor for TraceRouteResult();
      sub_25B947228();
      v18 = sub_25B884700();
      v19 = v3;

      v28 = v18;
      v29 = v19;

      sub_25B946ED8();
      sub_25B946ED8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
      sub_25B947208();
      sub_25B940A34(&v28);
    }

    else
    {
    }

    sub_25B9403F4();
    v41 = 1;
    sub_25B946F18();
    if (v42)
    {
      v40 = v42;

      type metadata accessor for JSONTracerouteDelegate();
      v9 = sub_25B9403F4();
      v10 = sub_25B940E78(v9);

      v39 = v10;
      v4 = sub_25B93FEAC();
      sub_25B93FEB8(v4, v5, v10, &v36);
      type metadata accessor for TraceRouteResult();
      sub_25B947228();
      v11 = sub_25B884700();
      v12 = v6;

      v36 = v11;
      v37 = v12;

      v13 = v36;
      v14 = v37;
      v15 = v38;
      sub_25B946ED8();
      sub_25B946ED8();
      v33 = v13;
      v34 = v14;
      v35 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
      sub_25B947208();
      sub_25B940A34(&v36);
    }

    v8 = v45;
    sub_25B946ED8();
    sub_25B86CFA0(&v45);
    return v8;
  }
}

uint64_t sub_25B941E30@<X0>(void *a1@<X8>)
{
  type metadata accessor for JSONTracerouteDelegate();
  v4 = sub_25B9403F4();
  v6 = sub_25B940E78(v4);

  v1 = sub_25B93FEAC();
  return sub_25B93FEB8(v1, v2, v6, a1);
}

uint64_t JSONTracerouteDelegate.deinit()
{
  sub_25B86CFA0((v0 + 16));
  sub_25B86CFA0((v0 + 24));
  return v2;
}

uint64_t sub_25B941F50()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_25B941FAC(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t PrettyTracerouteDelegate.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_25B942084(uint64_t a1)
{
  v68 = 0;
  v64 = 0;
  v65 = 0;
  v75 = a1;
  v74 = v1;
  v62 = sub_25B941F50();
  if (!v62)
  {
    sub_25B947838();
    v47 = v27;
    v73[0] = sub_25B947818();
    v73[1] = v28;
    v29 = sub_25B946F48("traceroute to ", 14, 1);
    MEMORY[0x25F8715F0](v29);

    v72[0] = sub_25B8844CC();
    v72[1] = v30;
    v46 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    sub_25B86AEEC(v72);
    v31 = sub_25B946F48(" (", 2, 1);
    MEMORY[0x25F8715F0](v31);

    v71[0] = sub_25B884700();
    v71[1] = v32;
    sub_25B9477F8();
    sub_25B86AEEC(v71);
    v33 = sub_25B946F48(")", 1, 1);
    MEMORY[0x25F8715F0](v33);

    sub_25B946ED8();
    sub_25B86AEEC(v73);
    v34 = sub_25B946FE8();
    v47[3] = v46;
    *v47 = v34;
    v47[1] = v35;
    sub_25B8860FC();
    sub_25B942B14();
    sub_25B942B44();
    sub_25B947958();

    goto LABEL_10;
  }

  v68 = v62;
  v60 = sub_25B868B34();
  if (v60 != sub_25B868B34())
  {
    sub_25B947838();
    v48 = v24;
    v25 = sub_25B946F48("", 0, 1);
    v48[3] = MEMORY[0x277D837D0];
    *v48 = v25;
    v48[1] = v26;
    sub_25B8860FC();
    sub_25B942B14();
    sub_25B942B44();
    sub_25B947958();

LABEL_10:

    sub_25B941FAC(a1);
    sub_25B947838();
    v45 = v36;
    v70[0] = sub_25B947818();
    v70[1] = v37;
    v38 = sub_25B946F48("", 0, 1);
    MEMORY[0x25F8715F0](v38);

    v69[0] = sub_25B8856C8();
    v69[1] = v39;
    v44 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    sub_25B86AEEC(v69);
    v40 = sub_25B946F48("", 0, 1);
    MEMORY[0x25F8715F0](v40);

    sub_25B946ED8();
    sub_25B86AEEC(v70);
    v41 = sub_25B946FE8();
    v45[3] = v44;
    *v45 = v41;
    v45[1] = v42;
    sub_25B8860FC();
    sub_25B946F48("", 0, 1);
    sub_25B942B14();
    sub_25B947958();
  }

  v57 = sub_25B88417C();
  v58 = v2;
  v3 = sub_25B88417C();
  v59 = MEMORY[0x25F870E10](v57, v58, v3);

  if (v59)
  {

    sub_25B941FAC(a1);
    if (sub_25B885614())
    {
      sub_25B947838();
      v56 = v4;
      v5 = sub_25B946F48(" *", 2, 1);
      v56[3] = MEMORY[0x277D837D0];
      *v56 = v5;
      v56[1] = v6;
      sub_25B8860FC();
      sub_25B946F48("", 0, 1);
      sub_25B942B14();
      sub_25B947958();
    }

    else
    {
      sub_25B946F48("%.2f ms", v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB70, &qword_25B949960);
      sub_25B947838();
      v51 = v8;
      v9 = sub_25B883E20();
      *(v51 + 24) = MEMORY[0x277D839F8];
      *(v51 + 32) = MEMORY[0x277D83A80];
      *v51 = v9;
      sub_25B8860FC();
      v52 = sub_25B946F88();
      v55 = v10;

      v64 = v52;
      v65 = v55;
      sub_25B947838();
      v54 = v11;
      v63[0] = sub_25B947818();
      v63[1] = v12;
      v13 = sub_25B946F48(" ", 1, 1);
      MEMORY[0x25F8715F0](v13);

      v53 = MEMORY[0x277D837D0];
      sub_25B9477F8();
      v14 = sub_25B946F48("");
      MEMORY[0x25F8715F0](v14);

      sub_25B946ED8();
      sub_25B86AEEC(v63);
      v15 = sub_25B946FE8();
      v54[3] = v53;
      *v54 = v15;
      v54[1] = v16;
      sub_25B8860FC();
      sub_25B946F48("", 0, 1);
      sub_25B942B14();
      sub_25B947958();
    }
  }

  else
  {

    sub_25B941FAC(a1);
    sub_25B947838();
    v50 = v17;
    v67[0] = sub_25B947818();
    v67[1] = v18;
    v19 = sub_25B946F48("\n", 1, 1);
    MEMORY[0x25F8715F0](v19);

    v66[0] = sub_25B886140();
    v66[1] = v20;
    v49 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    sub_25B86AEEC(v66);
    v21 = sub_25B946F48(" ", 1, 1);
    MEMORY[0x25F8715F0](v21);

    sub_25B946ED8();
    sub_25B86AEEC(v67);
    v22 = sub_25B946FE8();
    v50[3] = v49;
    *v50 = v22;
    v50[1] = v23;
    sub_25B8860FC();
    sub_25B946F48("", 0, 1);
    sub_25B942B14();
    sub_25B947958();
  }
}

uint64_t sub_25B943428(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25B943540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_25B94390C()
{
  v2 = qword_27FBAB920;
  if (!qword_27FBAB920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9439A0()
{
  v2 = qword_27FBAB928;
  if (!qword_27FBAB928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943A34()
{
  v2 = qword_27FBAB930;
  if (!qword_27FBAB930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943AC8()
{
  v2 = qword_27FBAB938;
  if (!qword_27FBAB938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB938);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943B5C()
{
  v2 = qword_27FBAB940;
  if (!qword_27FBAB940)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB940);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B943BF0()
{
  v2 = qword_27FBAB948;
  if (!qword_27FBAB948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB948);
    return WitnessTable;
  }

  return v2;
}