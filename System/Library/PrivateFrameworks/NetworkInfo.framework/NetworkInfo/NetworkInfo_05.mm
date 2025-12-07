uint64_t sub_25B914EC4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  SCDynamicStoreRef.dispatchQueue(_:)(0);
  return MEMORY[0x277D82BD8](a2);
}

uint64_t sub_25B914F70@<X0>(uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
  v2 = sub_25B9472D8();
  return (*(*(v2 - 8) + 104))(a2, v4);
}

CFDictionaryRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCDynamicStoreRef.values(keys:patterns:)(Swift::OpaquePointer keys, Swift::OpaquePointer patterns)
{
  rawValue = keys._rawValue;
  v124 = patterns._rawValue;
  v105 = "values(keys:patterns:)";
  v106 = sub_25B86F500;
  v107 = sub_25B86F500;
  v108 = sub_25B88983C;
  v109 = sub_25B88B668;
  v110 = sub_25B88983C;
  v111 = sub_25B88B668;
  v112 = sub_25B910408;
  v113 = sub_25B8A3C9C;
  v114 = sub_25B8A3CE8;
  v115 = sub_25B88B5F4;
  v116 = sub_25B88B5F4;
  v117 = sub_25B88B6B4;
  v118 = sub_25B88B5F4;
  v119 = sub_25B88B5F4;
  v120 = sub_25B88B6B4;
  v121 = sub_25B88B5F4;
  v122 = sub_25B88B5F4;
  v123 = sub_25B8A3EB8;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v140 = 0uLL;
  v141 = 0;
  v134 = 0;
  v126 = sub_25B946C48();
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v125);
  v130 = v55 - v129;
  v149 = v3;
  v148 = v4;
  v147 = v2;
  MEMORY[0x277D82BE0](v2);
  v146 = rawValue;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  v133 = sub_25B89906C();
  if (sub_25B9473E8())
  {
    v103 = 0;
  }

  else
  {
    sub_25B946ED8();
    v102 = sub_25B9471B8();

    v103 = v102;
  }

  v101 = v103;
  v145 = v124;
  if (sub_25B9473E8())
  {
    v100 = 0;
  }

  else
  {
    sub_25B946ED8();
    v99 = sub_25B9471B8();

    v100 = v99;
  }

  v97 = v100;
  v98 = SCDynamicStoreCopyMultiple(v125, v101, v100);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v125);
  if (v98)
  {
    v96 = v98;
    result = v98;
    v134 = v98;
  }

  else
  {
    v6 = v130;
    SCError.init(context:rawValue:)(v105, 0x16uLL, 2u, 1004, &v142);
    v67 = v142;
    v68 = v143;
    v69 = v144;
    v140 = v142;
    LOBYTE(v141) = v143;
    HIDWORD(v141) = v144;
    v7 = sub_25B91292C();
    (*(v127 + 16))(v6, v7, v126);
    sub_25B946ED8();
    v65 = 24;
    v79 = 7;
    v64 = swift_allocObject();
    *(v64 + 16) = rawValue;

    v78 = 32;
    v8 = swift_allocObject();
    v9 = v64;
    v70 = v8;
    *(v8 + 16) = v106;
    *(v8 + 24) = v9;

    sub_25B946ED8();
    v66 = swift_allocObject();
    *(v66 + 16) = v124;

    v10 = swift_allocObject();
    v11 = v66;
    v73 = v10;
    *(v10 + 16) = v107;
    *(v10 + 24) = v11;

    v12 = swift_allocObject();
    v13 = v67.n128_u64[1];
    v14 = v68;
    v15 = v69;
    v77 = v12;
    *(v12 + 16) = v67.n128_u64[0];
    *(v12 + 24) = v13;
    *(v12 + 32) = v14;
    *(v12 + 36) = v15;
    sub_25B8A1C38();

    v94 = sub_25B946C18();
    v95 = sub_25B947458();
    v75 = 17;
    v82 = swift_allocObject();
    v72 = 32;
    *(v82 + 16) = 32;
    v83 = swift_allocObject();
    v76 = 8;
    *(v83 + 16) = 8;
    v16 = swift_allocObject();
    v17 = v70;
    v71 = v16;
    *(v16 + 16) = v108;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v71;
    v84 = v18;
    *(v18 + 16) = v109;
    *(v18 + 24) = v19;
    v85 = swift_allocObject();
    *(v85 + 16) = v72;
    v86 = swift_allocObject();
    *(v86 + 16) = v76;
    v20 = swift_allocObject();
    v21 = v73;
    v74 = v20;
    *(v20 + 16) = v110;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v74;
    v87 = v22;
    *(v22 + 16) = v111;
    *(v22 + 24) = v23;
    v88 = swift_allocObject();
    *(v88 + 16) = 64;
    v89 = swift_allocObject();
    *(v89 + 16) = v76;
    v24 = swift_allocObject();
    v25 = v77;
    v80 = v24;
    *(v24 + 16) = v112;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v80;
    v81 = v26;
    *(v26 + 16) = v113;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v81;
    v91 = v28;
    *(v28 + 16) = v114;
    *(v28 + 24) = v29;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v90 = sub_25B947838();
    v92 = v30;

    v31 = v82;
    v32 = v92;
    *v92 = v115;
    v32[1] = v31;

    v33 = v83;
    v34 = v92;
    v92[2] = v116;
    v34[3] = v33;

    v35 = v84;
    v36 = v92;
    v92[4] = v117;
    v36[5] = v35;

    v37 = v85;
    v38 = v92;
    v92[6] = v118;
    v38[7] = v37;

    v39 = v86;
    v40 = v92;
    v92[8] = v119;
    v40[9] = v39;

    v41 = v87;
    v42 = v92;
    v92[10] = v120;
    v42[11] = v41;

    v43 = v88;
    v44 = v92;
    v92[12] = v121;
    v44[13] = v43;

    v45 = v89;
    v46 = v92;
    v92[14] = v122;
    v46[15] = v45;

    v47 = v91;
    v48 = v92;
    v92[16] = v123;
    v48[17] = v47;
    sub_25B8860FC();

    if (os_log_type_enabled(v94, v95))
    {
      v57 = sub_25B9474D8();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v58 = sub_25B8895FC(1, v56, v56);
      v59 = sub_25B8895FC(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v60 = &v139;
      v139 = v57;
      v61 = &v138;
      v138 = v58;
      v62 = &v137;
      v137 = v59;
      sub_25B889650(2, &v139);
      sub_25B889650(3, v60);
      v49 = v104;
      v135 = v115;
      v136 = v82;
      sub_25B889664(&v135, v60, v61, v62);
      v63 = v49;
      if (v49)
      {

        __break(1u);
      }

      else
      {
        v135 = v116;
        v136 = v83;
        sub_25B889664(&v135, &v139, &v138, &v137);
        v55[7] = 0;
        v135 = v117;
        v136 = v84;
        sub_25B889664(&v135, &v139, &v138, &v137);
        v55[6] = 0;
        v135 = v118;
        v136 = v85;
        sub_25B889664(&v135, &v139, &v138, &v137);
        v55[5] = 0;
        v135 = v119;
        v136 = v86;
        sub_25B889664(&v135, &v139, &v138, &v137);
        v55[4] = 0;
        v135 = v120;
        v136 = v87;
        sub_25B889664(&v135, &v139, &v138, &v137);
        v55[3] = 0;
        v135 = v121;
        v136 = v88;
        sub_25B889664(&v135, &v139, &v138, &v137);
        v55[2] = 0;
        v135 = v122;
        v136 = v89;
        sub_25B889664(&v135, &v139, &v138, &v137);
        v55[1] = 0;
        v135 = v123;
        v136 = v91;
        sub_25B889664(&v135, &v139, &v138, &v137);
        _os_log_impl(&dword_25B859000, v94, v95, "Unable to find values for keys %s and patterns %s: %@", v57, 0x20u);
        sub_25B8896B0(v58, 1, v56);
        sub_25B8896B0(v59, 2, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v94);
    (*(v127 + 8))(v130, v126);
    sub_25B9115BC();
    v50 = swift_allocError();
    v51 = v67.n128_u64[1];
    v52 = v68;
    v53 = v69;
    v55[0] = v50;
    *v54 = v67.n128_u64[0];
    *(v54 + 8) = v51;
    *(v54 + 16) = v52;
    *(v54 + 20) = v53;
    swift_willThrow();
    return v55[8];
  }

  return result;
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkInterface()()
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(allocator, domain);
  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v4 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkInterface);
  return v4;
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkServiceEntity(serviceID:entity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  sub_25B946ED8();
  serviceID = sub_25B946F58();
  sub_25B946ED8();
  v5 = sub_25B946F58();
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(allocator, domain, serviceID, v5);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](serviceID);

  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v10 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkServiceEntity);
  return v10;
}

uint64_t static SCDynamicStoreRef.Patterns.createIPv4NetworkService()()
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  serviceID = *MEMORY[0x277CE1628];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1628]);
  entity = *MEMORY[0x277CE1688];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1688]);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(allocator, domain, serviceID, entity);
  MEMORY[0x277D82BD8](entity);
  MEMORY[0x277D82BD8](serviceID);
  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v6 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkServiceEntity);
  return v6;
}

uint64_t _s4InfoCMa(uint64_t a1)
{
  v2 = qword_27FBAB6E8;
  if (!qword_27FBAB6E8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_25B916E5C(uint64_t a1)
{
  updated = sub_25B916F30(319);
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

unint64_t sub_25B916F30(uint64_t a1)
{
  v5 = qword_27FBAB6F8;
  if (!qword_27FBAB6F8)
  {
    type metadata accessor for SCDynamicStore(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
    v4 = sub_25B947318();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27FBAB6F8);
      return v2;
    }
  }

  return v5;
}

double static SCError.current(_:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>)
{
  v4 = SCError();
  *&result = SCError.init(context:rawValue:)(a1, a2, a3, v4, a4).n128_u64[0];
  return result;
}

__n128 SCError.init(context:rawValue:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, __n128 *a5@<X8>)
{
  v6.n128_u64[0] = a1;
  v6.n128_u64[1] = a2;
  LODWORD(v7) = a3;
  HIDWORD(v7) = a4;
  result = v6;
  *a5 = v6;
  a5[1].n128_u64[0] = v7;
  return result;
}

uint64_t SCError.context.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t SCError.description.getter()
{
  v12 = 0;
  v10 = 0;
  v11 = 0;
  SCErrorString(*(v0 + 20));
  v10 = sub_25B947058();
  v11 = v1;
  v9[0] = sub_25B947818();
  v9[1] = v2;
  MEMORY[0x25F8715F0](v3);

  sub_25B9477E8();
  MEMORY[0x25F8715F0](v4);

  sub_25B9477E8();
  v5 = sub_25B946F48(": ", 2, 1);
  MEMORY[0x25F8715F0](v5);

  sub_25B9477F8();
  v6 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v6);

  sub_25B946ED8();
  sub_25B86AEEC(v9);
  v8 = sub_25B946FE8();

  return v8;
}

uint64_t sub_25B917470()
{
  if (qword_27FBAAA80 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1178);
}

uint64_t sub_25B9174DC()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1178);
  __swift_project_value_buffer(v1, qword_27FBB1178);
  return sub_25B946C38();
}

uint64_t sub_25B917528@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B917470();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static SCNetworkInterfaceRef.allInterfaces()()
{
  v7 = 0;
  v2 = SCNetworkInterfaceCopyAll();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
    MEMORY[0x277D82BE0](v3);
    sub_25B9176E8();
    sub_25B9478B8();
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v3);
    if (v4)
    {
      v1 = v4;
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v2);
  }

  v1 = 0;
LABEL_6:
  v5 = v1;
  if (v1)
  {
    return v5;
  }

  type metadata accessor for SCNetworkInterface(0);
  return sub_25B947838();
}

unint64_t sub_25B9176E8()
{
  v2 = qword_27FBAB710;
  if (!qword_27FBAB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB708, "\\z");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB710);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SCNetworkInterfaceRef.interface(bsdName:)(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  v135 = a2;
  v123 = sub_25B8A3B24;
  v124 = sub_25B8A3C9C;
  v125 = sub_25B8A3CE8;
  v126 = sub_25B88B5F4;
  v127 = sub_25B88B5F4;
  v128 = sub_25B8A3EB8;
  v129 = sub_25B8994FC;
  v130 = sub_25B88B668;
  v131 = sub_25B88B5F4;
  v132 = sub_25B88B5F4;
  v133 = sub_25B88B6B4;
  v134 = "interface(bsdName:)";
  v165 = 0;
  v166 = 0;
  v164 = 0;
  v144 = v163;
  v163[0] = 0;
  v163[1] = 0;
  v155 = 0;
  v154 = 0;
  v148 = 0;
  v137 = sub_25B946C48();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v136);
  v141 = v46 - v140;
  v142 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v143 = v46 - v142;
  v165 = v5;
  v166 = v6;
  v164 = v2;
  v162 = static SCNetworkInterfaceRef.allInterfaces()();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v146; ; i = v110)
  {
    v121 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v122 = v161;
    if (!v161)
    {
      break;
    }

    v120 = v122;
    v116 = v122;
    v155 = v122;
    v7 = SCNetworkInterfaceRef.bsdName()();
    v117 = v8;
    v118 = v7;
    v119 = v8;
    if (v8)
    {
      v28 = v141;
      v71 = v119;
      v70 = 0;
      v29 = v119;
      v154 = v71;
      v30 = sub_25B917470();
      (*(v138 + 16))(v28, v30, v137);
      v31 = v71;
      v75 = 7;
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      sub_25B8A1C38();

      v84 = sub_25B946C18();
      v85 = sub_25B947448();
      v72 = 17;
      v78 = swift_allocObject();
      *(v78 + 16) = 64;
      v79 = swift_allocObject();
      *(v79 + 16) = 8;
      v74 = 32;
      v32 = swift_allocObject();
      v33 = v73;
      v76 = v32;
      *(v32 + 16) = v123;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v76;
      v77 = v34;
      *(v34 + 16) = v124;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v77;
      v81 = v36;
      *(v36 + 16) = v125;
      *(v36 + 24) = v37;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v80 = sub_25B947838();
      v82 = v38;

      v39 = v78;
      v40 = v82;
      *v82 = v126;
      v40[1] = v39;

      v41 = v79;
      v42 = v82;
      v82[2] = v127;
      v42[3] = v41;

      v43 = v81;
      v44 = v82;
      v82[4] = v128;
      v44[5] = v43;
      sub_25B8860FC();

      if (os_log_type_enabled(v84, v85))
      {
        v60 = sub_25B9474D8();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v61 = sub_25B8895FC(1, v59, v59);
        v62 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v63 = &v153;
        v153 = v60;
        v64 = &v152;
        v152 = v61;
        v65 = &v151;
        v151 = v62;
        sub_25B889650(2, &v153);
        sub_25B889650(1, v63);
        v45 = v70;
        v149 = v126;
        v150 = v78;
        sub_25B889664(&v149, v63, v64, v65);
        v66 = v45;
        v67 = v78;
        v68 = v79;
        v69 = v81;
        if (v45)
        {
          v55 = v67;
          v56 = v68;
          v57 = v69;
          v46[2] = v69;
          v46[1] = v68;

          __break(1u);
        }

        else
        {
          v149 = v127;
          v150 = v79;
          sub_25B889664(&v149, &v153, &v152, &v151);
          v51 = 0;
          v52 = v78;
          v53 = v79;
          v54 = v81;
          v149 = v128;
          v150 = v81;
          sub_25B889664(&v149, &v153, &v152, &v151);
          v47 = 0;
          v48 = v78;
          v49 = v79;
          v50 = v81;
          _os_log_impl(&dword_25B859000, v84, v85, "Ignoring interface without a BSD name: %@", v60, 0xCu);
          sub_25B8896B0(v61, 1, v59);
          sub_25B8896B0(v62, 0, MEMORY[0x277D84F70] + 8);
          sub_25B9474B8();

          v58 = v47;
        }
      }

      else
      {

        v58 = v70;
      }

      v46[0] = v58;
      MEMORY[0x277D82BD8](v84);
      (*(v138 + 8))(v141, v137);

      v111 = v46[0];
    }

    else
    {
      object = v118._object;
      v148 = v118;
      v9 = MEMORY[0x25F870E10]();
      v114 = v116;
      v115 = object;
      if (v9)
      {
        v112 = v114;

        sub_25B86CFA0(v163);
        return v112;
      }

      v111 = v117;
    }

    v110 = v111;
    MEMORY[0x277D82BD8](v116);
  }

  v11 = v143;
  sub_25B86CFA0(v163);
  v12 = sub_25B917470();
  (*(v138 + 16))(v11, v12, v137);
  sub_25B946ED8();
  v98 = 32;
  v99 = 7;
  v13 = swift_allocObject();
  v14 = v135;
  v100 = v13;
  *(v13 + 16) = v136;
  *(v13 + 24) = v14;
  v108 = sub_25B946C18();
  v109 = sub_25B947458();
  v97 = 17;
  v102 = swift_allocObject();
  *(v102 + 16) = 32;
  v103 = swift_allocObject();
  *(v103 + 16) = 8;
  v15 = swift_allocObject();
  v16 = v100;
  v101 = v15;
  *(v15 + 16) = v129;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v101;
  v105 = v17;
  *(v17 + 16) = v130;
  *(v17 + 24) = v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v104 = sub_25B947838();
  v106 = v19;

  v20 = v102;
  v21 = v106;
  *v106 = v131;
  v21[1] = v20;

  v22 = v103;
  v23 = v106;
  v106[2] = v132;
  v23[3] = v22;

  v24 = v105;
  v25 = v106;
  v106[4] = v133;
  v25[5] = v24;
  sub_25B8860FC();

  if (os_log_type_enabled(v108, v109))
  {
    v90 = sub_25B9474D8();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v91 = sub_25B8895FC(0, v89, v89);
    v92 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v93 = &v160;
    v160 = v90;
    v94 = &v159;
    v159 = v91;
    v95 = &v158;
    v158 = v92;
    sub_25B889650(2, &v160);
    sub_25B889650(1, v93);
    v26 = v121;
    v156 = v131;
    v157 = v102;
    sub_25B889664(&v156, v93, v94, v95);
    v96 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v156 = v132;
      v157 = v103;
      sub_25B889664(&v156, &v160, &v159, &v158);
      v87 = 0;
      v156 = v133;
      v157 = v105;
      sub_25B889664(&v156, &v160, &v159, &v158);
      _os_log_impl(&dword_25B859000, v108, v109, "Interface %s not found.", v90, 0xCu);
      sub_25B8896B0(v91, 0, v89);
      sub_25B8896B0(v92, 1, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v108);
  (*(v138 + 8))(v143, v137);
  sub_25B9115BC();
  v86 = swift_allocError();
  SCError.init(context:rawValue:)(v134, 0x13uLL, 2u, 1004, v27);
  swift_willThrow();
  return v88;
}

unint64_t sub_25B918968()
{
  v2 = qword_27FBAB718;
  if (!qword_27FBAB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB708, "\\z");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB718);
    return WitnessTable;
  }

  return v2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bsdName()()
{
  v60 = "bsdName()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v85 = 0;
  v80 = 0uLL;
  v81 = 0;
  v74 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v29 - v71;
  v85 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkInterfaceGetBSDName(v85);
  if (v73)
  {
    v58 = v73;
    v55 = v73;
    v74 = v73;
    MEMORY[0x277D82BE0](v73);
    v56 = sub_25B946F78();
    v57 = v0;
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v55);
    v1 = v56;
    v2 = v57;
  }

  else
  {
    v3 = v72;
    static SCError.current(_:)(v60, 9uLL, 2u, &v82);
    v38 = v82;
    v39 = v83;
    v40 = v84;
    v80 = v82;
    LOBYTE(v81) = v83;
    HIDWORD(v81) = v84;
    v4 = sub_25B917470();
    (*(v69 + 16))(v3, v4, v68);
    v44 = 7;
    v5 = swift_allocObject();
    v6 = v38.n128_u64[1];
    v7 = v39;
    v8 = v40;
    v42 = v5;
    *(v5 + 16) = v38.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v9 = swift_allocObject();
    v10 = v42;
    v45 = v9;
    *(v9 + 16) = v61;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v45;
    v46 = v11;
    *(v11 + 16) = v62;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v46;
    v50 = v13;
    *(v13 + 16) = v63;
    *(v13 + 24) = v14;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v15;

    v16 = v47;
    v17 = v51;
    *v51 = v64;
    v17[1] = v16;

    v18 = v48;
    v19 = v51;
    v51[2] = v65;
    v19[3] = v18;

    v20 = v50;
    v21 = v51;
    v51[4] = v66;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v79;
      v79 = v31;
      v35 = &v78;
      v78 = v32;
      v36 = &v77;
      v77 = v33;
      sub_25B889650(2, &v79);
      sub_25B889650(1, v34);
      v22 = v59;
      v75 = v64;
      v76 = v47;
      sub_25B889664(&v75, v34, v35, v36);
      v37 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v65;
        v76 = v48;
        sub_25B889664(&v75, &v79, &v78, &v77);
        v29[3] = 0;
        v75 = v66;
        v76 = v50;
        sub_25B889664(&v75, &v79, &v78, &v77);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to get network interface BSD name: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v69 + 8))(v72, v68);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v38.n128_u64[1];
    v25 = v39;
    v26 = v40;
    v29[2] = v23;
    *v27 = v38.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.autoConfigure(_:)(Swift::Bool a1)
{
  v70 = a1;
  v57 = "autoConfigure(_:)";
  v58 = sub_25B910408;
  v59 = sub_25B8A3C9C;
  v60 = sub_25B8A3CE8;
  v61 = sub_25B88B5F4;
  v62 = sub_25B88B5F4;
  v63 = sub_25B8A3EB8;
  v82 = 0;
  v81 = 0;
  v76 = 0uLL;
  v77 = 0;
  v65 = sub_25B946C48();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v64);
  v69 = v28 - v68;
  v82 = v2 & 1;
  v81 = v1;
  MEMORY[0x277D82BE0](v1);
  v55 = v70;
  v54 = SCNetworkInterfaceSetAutoConfigure();
  MEMORY[0x277D82BD8](v64);
  if (!v54)
  {
    v3 = v69;
    v40 = 17;
    static SCError.current(_:)(v57, 0x11uLL, 2u, &v78);
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v76 = v78;
    LOBYTE(v77) = v79;
    HIDWORD(v77) = v80;
    v4 = sub_25B917470();
    (*(v66 + 16))(v3, v4, v65);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v58;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v59;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v60;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v61;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v62;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v63;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1, v29, v29);
      v32 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v33 = &v75;
      v75 = v30;
      v34 = &v74;
      v74 = v31;
      v35 = &v73;
      v73 = v32;
      sub_25B889650(2, &v75);
      sub_25B889650(1, v33);
      v22 = v56;
      v71 = v61;
      v72 = v46;
      sub_25B889664(&v71, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v71 = v62;
        v72 = v47;
        sub_25B889664(&v71, &v75, &v74, &v73);
        v28[2] = 0;
        v71 = v63;
        v72 = v49;
        sub_25B889664(&v71, &v75, &v74, &v73);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set network interface auto configure: %@", v30, 0xCu);
        sub_25B8896B0(v31, 1, v29);
        sub_25B8896B0(v32, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v66 + 8))(v69, v65);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v28[1] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.allowConfiguredMembers(_:)(Swift::Bool a1)
{
  v70 = a1;
  v57 = "allowConfiguredMembers(_:)";
  v58 = sub_25B910408;
  v59 = sub_25B8A3C9C;
  v60 = sub_25B8A3CE8;
  v61 = sub_25B88B5F4;
  v62 = sub_25B88B5F4;
  v63 = sub_25B8A3EB8;
  v82 = 0;
  v81 = 0;
  v76 = 0uLL;
  v77 = 0;
  v65 = sub_25B946C48();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v64);
  v69 = v28 - v68;
  v82 = v2 & 1;
  v81 = v1;
  MEMORY[0x277D82BE0](v1);
  v55 = v70;
  v54 = SCBridgeInterfaceSetAllowConfiguredMembers();
  MEMORY[0x277D82BD8](v64);
  if (!v54)
  {
    v3 = v69;
    static SCError.current(_:)(v57, 0x1AuLL, 2u, &v78);
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v76 = v78;
    LOBYTE(v77) = v79;
    HIDWORD(v77) = v80;
    v4 = sub_25B917470();
    (*(v66 + 16))(v3, v4, v65);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v58;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v59;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v60;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v61;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v62;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v63;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1, v29, v29);
      v32 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v33 = &v75;
      v75 = v30;
      v34 = &v74;
      v74 = v31;
      v35 = &v73;
      v73 = v32;
      sub_25B889650(2, &v75);
      sub_25B889650(1, v33);
      v22 = v56;
      v71 = v61;
      v72 = v46;
      sub_25B889664(&v71, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v71 = v62;
        v72 = v47;
        sub_25B889664(&v71, &v75, &v74, &v73);
        v28[2] = 0;
        v71 = v63;
        v72 = v49;
        sub_25B889664(&v71, &v75, &v74, &v73);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set network interface allow configured members: %@", v30, 0xCu);
        sub_25B8896B0(v31, 1, v29);
        sub_25B8896B0(v32, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v66 + 8))(v69, v65);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v28[1] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.displayName()()
{
  v60 = "displayName()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v85 = 0;
  v80 = 0uLL;
  v81 = 0;
  v74 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v29 - v71;
  v85 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkInterfaceGetLocalizedDisplayName(v85);
  if (v73)
  {
    v58 = v73;
    v55 = v73;
    v74 = v73;
    MEMORY[0x277D82BE0](v73);
    v56 = sub_25B946F78();
    v57 = v0;
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v55);
    v1 = v56;
    v2 = v57;
  }

  else
  {
    v3 = v72;
    static SCError.current(_:)(v60, 0xDuLL, 2u, &v82);
    v38 = v82;
    v39 = v83;
    v40 = v84;
    v80 = v82;
    LOBYTE(v81) = v83;
    HIDWORD(v81) = v84;
    v4 = sub_25B917470();
    (*(v69 + 16))(v3, v4, v68);
    v44 = 7;
    v5 = swift_allocObject();
    v6 = v38.n128_u64[1];
    v7 = v39;
    v8 = v40;
    v42 = v5;
    *(v5 + 16) = v38.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v9 = swift_allocObject();
    v10 = v42;
    v45 = v9;
    *(v9 + 16) = v61;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v45;
    v46 = v11;
    *(v11 + 16) = v62;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v46;
    v50 = v13;
    *(v13 + 16) = v63;
    *(v13 + 24) = v14;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v15;

    v16 = v47;
    v17 = v51;
    *v51 = v64;
    v17[1] = v16;

    v18 = v48;
    v19 = v51;
    v51[2] = v65;
    v19[3] = v18;

    v20 = v50;
    v21 = v51;
    v51[4] = v66;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v79;
      v79 = v31;
      v35 = &v78;
      v78 = v32;
      v36 = &v77;
      v77 = v33;
      sub_25B889650(2, &v79);
      sub_25B889650(1, v34);
      v22 = v59;
      v75 = v64;
      v76 = v47;
      sub_25B889664(&v75, v34, v35, v36);
      v37 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v65;
        v76 = v48;
        sub_25B889664(&v75, &v79, &v78, &v77);
        v29[3] = 0;
        v75 = v66;
        v76 = v50;
        sub_25B889664(&v75, &v79, &v78, &v77);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to get network interface localized display name: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v69 + 8))(v72, v68);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v38.n128_u64[1];
    v25 = v39;
    v26 = v40;
    v29[2] = v23;
    *v27 = v38.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.forceConfigurationRefresh()()
{
  v52 = "forceConfigurationRefresh()";
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
  if (!SCNetworkInterfaceForceConfigurationRefresh(v75))
  {
    v0 = v64;
    static SCError.current(_:)(v52, 0x1BuLL, 2u, &v72);
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
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to force configuration refresh: %@", v27, 0xCu);
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

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.mtu()()
{
  v57 = "mtu()";
  v64 = 0;
  v58 = sub_25B910408;
  v59 = sub_25B8A3C9C;
  v60 = sub_25B8A3CE8;
  v61 = sub_25B88B5F4;
  v62 = sub_25B88B5F4;
  v63 = sub_25B8A3EB8;
  v83[1] = *MEMORY[0x277D85DE8];
  v76 = 0;
  v65 = &v75;
  v75 = 0;
  v77 = 0uLL;
  v78 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v28 - v70;
  v76 = MEMORY[0x28223BE20](v66);
  v75 = 0;
  if (SCNetworkInterfaceCopyMTU(v76, v0, v1, v1))
  {
    return v75;
  }

  v3 = v71;
  static SCError.current(_:)(v57, 5uLL, 2u, &v79);
  v39 = v79;
  v40 = v80;
  v41 = v81;
  v77 = v79;
  LOBYTE(v78) = v80;
  HIDWORD(v78) = v81;
  v4 = sub_25B917470();
  (*(v68 + 16))(v3, v4, v67);
  v45 = 7;
  v5 = swift_allocObject();
  v6 = v39.n128_u64[1];
  v7 = v40;
  v8 = v41;
  v43 = v5;
  *(v5 + 16) = v39.n128_u64[0];
  *(v5 + 24) = v6;
  *(v5 + 32) = v7;
  *(v5 + 36) = v8;
  sub_25B8A1C38();

  v54 = sub_25B946C18();
  v55 = sub_25B947458();
  v42 = 17;
  v48 = swift_allocObject();
  *(v48 + 16) = 64;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v44 = 32;
  v9 = swift_allocObject();
  v10 = v43;
  v46 = v9;
  *(v9 + 16) = v58;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v46;
  v47 = v11;
  *(v11 + 16) = v59;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v47;
  v51 = v13;
  *(v13 + 16) = v60;
  *(v13 + 24) = v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v50 = sub_25B947838();
  v52 = v15;

  v16 = v48;
  v17 = v52;
  *v52 = v61;
  v17[1] = v16;

  v18 = v49;
  v19 = v52;
  v52[2] = v62;
  v19[3] = v18;

  v20 = v51;
  v21 = v52;
  v52[4] = v63;
  v21[5] = v20;
  sub_25B8860FC();

  if (os_log_type_enabled(v54, v55))
  {
    v32 = sub_25B9474D8();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v33 = sub_25B8895FC(1, v31, v31);
    v34 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = &v74;
    v74 = v32;
    v36 = v83;
    v83[0] = v33;
    v37 = &v82;
    v82 = v34;
    sub_25B889650(2, &v74);
    sub_25B889650(1, v35);
    v22 = v56;
    v72 = v61;
    v73 = v48;
    sub_25B889664(&v72, v35, v36, v37);
    v38 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v72 = v62;
      v73 = v49;
      sub_25B889664(&v72, &v74, v83, &v82);
      v30 = 0;
      v72 = v63;
      v73 = v51;
      sub_25B889664(&v72, &v74, v83, &v82);
      _os_log_impl(&dword_25B859000, v54, v55, "Unable to get MTU: %@", v32, 0xCu);
      sub_25B8896B0(v33, 1, v31);
      sub_25B8896B0(v34, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v54);
  (*(v68 + 8))(v71, v67);
  sub_25B9115BC();
  v23 = swift_allocError();
  v24 = v39.n128_u64[1];
  v25 = v40;
  v26 = v41;
  v29 = v23;
  *v27 = v39.n128_u64[0];
  *(v27 + 8) = v24;
  *(v27 + 16) = v25;
  *(v27 + 20) = v26;
  swift_willThrow();
  return v28[3];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.mtu(_:)(Swift::Int32 a1)
{
  v62 = a1;
  v55 = "mtu(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v80 = 0;
  v79 = 0;
  v74 = 0uLL;
  v75 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v68 = v28 - v67;
  v80 = v2;
  v79 = v1;
  if (!SCNetworkInterfaceSetMTU(v1, v2))
  {
    v3 = v68;
    v43 = 7;
    static SCError.current(_:)(v55, 7uLL, 2u, &v76);
    v37 = v76;
    v38 = v77;
    v39 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v4 = sub_25B917470();
    (*(v65 + 16))(v3, v4, v64);
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v56;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v57;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v58;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v59;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v60;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v61;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1, v29, v29);
      v32 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v33 = &v73;
      v73 = v30;
      v34 = &v72;
      v72 = v31;
      v35 = &v71;
      v71 = v32;
      sub_25B889650(2, &v73);
      sub_25B889650(1, v33);
      v22 = v54;
      v69 = v59;
      v70 = v46;
      sub_25B889664(&v69, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v69 = v60;
        v70 = v47;
        sub_25B889664(&v69, &v73, &v72, &v71);
        v28[1] = 0;
        v69 = v61;
        v70 = v49;
        sub_25B889664(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set MTU: %@", v30, 0xCu);
        sub_25B8896B0(v31, 1, v29);
        sub_25B8896B0(v32, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v28[0] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.type()()
{
  v60 = "type()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v85 = 0;
  v80 = 0uLL;
  v81 = 0;
  v74 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v29 - v71;
  v85 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkInterfaceGetInterfaceType(v85);
  if (v73)
  {
    v58 = v73;
    v55 = v73;
    v74 = v73;
    MEMORY[0x277D82BE0](v73);
    v56 = sub_25B946F78();
    v57 = v0;
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v55);
    v1 = v56;
    v2 = v57;
  }

  else
  {
    v3 = v72;
    static SCError.current(_:)(v60, 6uLL, 2u, &v82);
    v38 = v82;
    v39 = v83;
    v40 = v84;
    v80 = v82;
    LOBYTE(v81) = v83;
    HIDWORD(v81) = v84;
    v4 = sub_25B917470();
    (*(v69 + 16))(v3, v4, v68);
    v44 = 7;
    v5 = swift_allocObject();
    v6 = v38.n128_u64[1];
    v7 = v39;
    v8 = v40;
    v42 = v5;
    *(v5 + 16) = v38.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v9 = swift_allocObject();
    v10 = v42;
    v45 = v9;
    *(v9 + 16) = v61;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v45;
    v46 = v11;
    *(v11 + 16) = v62;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v46;
    v50 = v13;
    *(v13 + 16) = v63;
    *(v13 + 24) = v14;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v15;

    v16 = v47;
    v17 = v51;
    *v51 = v64;
    v17[1] = v16;

    v18 = v48;
    v19 = v51;
    v51[2] = v65;
    v19[3] = v18;

    v20 = v50;
    v21 = v51;
    v51[4] = v66;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v79;
      v79 = v31;
      v35 = &v78;
      v78 = v32;
      v36 = &v77;
      v77 = v33;
      sub_25B889650(2, &v79);
      sub_25B889650(1, v34);
      v22 = v59;
      v75 = v64;
      v76 = v47;
      sub_25B889664(&v75, v34, v35, v36);
      v37 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v65;
        v76 = v48;
        sub_25B889664(&v75, &v79, &v78, &v77);
        v29[3] = 0;
        v75 = v66;
        v76 = v50;
        sub_25B889664(&v75, &v79, &v78, &v77);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to get network interface type: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v69 + 8))(v72, v68);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v38.n128_u64[1];
    v25 = v39;
    v26 = v40;
    v29[2] = v23;
    *v27 = v38.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.hardwareAddress()()
{
  v60 = "hardwareAddress()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v85 = 0;
  v80 = 0uLL;
  v81 = 0;
  v74 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v29 - v71;
  v85 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkInterfaceGetHardwareAddressString(v85);
  if (v73)
  {
    v58 = v73;
    v55 = v73;
    v74 = v73;
    MEMORY[0x277D82BE0](v73);
    v56 = sub_25B946F78();
    v57 = v0;
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v55);
    v1 = v56;
    v2 = v57;
  }

  else
  {
    v3 = v72;
    v41 = 17;
    static SCError.current(_:)(v60, 0x11uLL, 2u, &v82);
    v38 = v82;
    v39 = v83;
    v40 = v84;
    v80 = v82;
    LOBYTE(v81) = v83;
    HIDWORD(v81) = v84;
    v4 = sub_25B917470();
    (*(v69 + 16))(v3, v4, v68);
    v44 = 7;
    v5 = swift_allocObject();
    v6 = v38.n128_u64[1];
    v7 = v39;
    v8 = v40;
    v42 = v5;
    *(v5 + 16) = v38.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v9 = swift_allocObject();
    v10 = v42;
    v45 = v9;
    *(v9 + 16) = v61;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v45;
    v46 = v11;
    *(v11 + 16) = v62;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v46;
    v50 = v13;
    *(v13 + 16) = v63;
    *(v13 + 24) = v14;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v15;

    v16 = v47;
    v17 = v51;
    *v51 = v64;
    v17[1] = v16;

    v18 = v48;
    v19 = v51;
    v51[2] = v65;
    v19[3] = v18;

    v20 = v50;
    v21 = v51;
    v51[4] = v66;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v79;
      v79 = v31;
      v35 = &v78;
      v78 = v32;
      v36 = &v77;
      v77 = v33;
      sub_25B889650(2, &v79);
      sub_25B889650(1, v34);
      v22 = v59;
      v75 = v64;
      v76 = v47;
      sub_25B889664(&v75, v34, v35, v36);
      v37 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v65;
        v76 = v48;
        sub_25B889664(&v75, &v79, &v78, &v77);
        v29[3] = 0;
        v75 = v66;
        v76 = v50;
        sub_25B889664(&v75, &v79, &v78, &v77);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to get network interface hardware address string: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v69 + 8))(v72, v68);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v38.n128_u64[1];
    v25 = v39;
    v26 = v40;
    v29[2] = v23;
    *v27 = v38.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_25B91E258()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1190);
  __swift_project_value_buffer(v1, qword_27FBB1190);
  return sub_25B946C38();
}

uint64_t sub_25B91E2A4()
{
  if (qword_27FBAAA88 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1190);
}

uint64_t sub_25B91E310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B91E2A4();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t SCNetworkProtocolRef.configuration()()
{
  v60 = "configuration()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v88 = 0;
  v83 = 0uLL;
  v84 = 0;
  v77 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v26 - v71;
  v88 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkProtocolGetConfiguration(v88);
  if (v73)
  {
    v58 = v73;
    v56 = v73;
    v77 = v73;
    MEMORY[0x277D82BE0](v73);
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    if (v57)
    {
      v55 = v57;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB730, &qword_25B94C888);
      MEMORY[0x277D82BE0](v55);
      sub_25B920840();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v55);
      if (v74)
      {
        v53 = v74;
LABEL_7:
        v75 = v53;
        if (v53)
        {
          v76 = v75;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB728, &qword_25B94C880);
          sub_25B947838();
          v76 = sub_25B946EC8();
          if (v75)
          {
            sub_25B86CFA0(&v75);
          }
        }

        v52 = v76;
        MEMORY[0x277D82BD8](v56);
        return v52;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v56);
    }

    v53 = 0;
    goto LABEL_7;
  }

  v1 = v72;
  static SCError.current(_:)(v60, 0xFuLL, 2u, &v85);
  v35 = v85;
  v36 = v86;
  v37 = v87;
  v83 = v85;
  LOBYTE(v84) = v86;
  HIDWORD(v84) = v87;
  v2 = sub_25B91E2A4();
  (*(v69 + 16))(v1, v2, v68);
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
  *(v7 + 16) = v61;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v42;
  v43 = v9;
  *(v9 + 16) = v62;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v43;
  v47 = v11;
  *(v11 + 16) = v63;
  *(v11 + 24) = v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v46 = sub_25B947838();
  v48 = v13;

  v14 = v44;
  v15 = v48;
  *v48 = v64;
  v15[1] = v14;

  v16 = v45;
  v17 = v48;
  v48[2] = v65;
  v17[3] = v16;

  v18 = v47;
  v19 = v48;
  v48[4] = v66;
  v19[5] = v18;
  sub_25B8860FC();

  if (os_log_type_enabled(v50, v51))
  {
    v28 = sub_25B9474D8();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v29 = sub_25B8895FC(1, v27, v27);
    v30 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = &v82;
    v82 = v28;
    v32 = &v81;
    v81 = v29;
    v33 = &v80;
    v80 = v30;
    sub_25B889650(2, &v82);
    sub_25B889650(1, v31);
    v20 = v59;
    v78 = v64;
    v79 = v44;
    sub_25B889664(&v78, v31, v32, v33);
    v34 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v78 = v65;
      v79 = v45;
      sub_25B889664(&v78, &v82, &v81, &v80);
      v26[1] = 0;
      v78 = v66;
      v79 = v47;
      sub_25B889664(&v78, &v82, &v81, &v80);
      _os_log_impl(&dword_25B859000, v50, v51, "Unable to get configuration: %@", v28, 0xCu);
      sub_25B8896B0(v29, 1, v27);
      sub_25B8896B0(v30, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v50);
  (*(v69 + 8))(v72, v68);
  sub_25B9115BC();
  v21 = swift_allocError();
  v22 = v35.n128_u64[1];
  v23 = v36;
  v24 = v37;
  v26[0] = v21;
  *v25 = v35.n128_u64[0];
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 20) = v24;
  swift_willThrow();
  return v26[2];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkProtocolRef.configuration(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v80 = "configuration(_:)";
  v81 = sub_25B86F500;
  v82 = sub_25B920948;
  v83 = sub_25B88B668;
  v84 = sub_25B910408;
  v85 = sub_25B8A3C9C;
  v86 = sub_25B8A3CE8;
  v87 = sub_25B88B5F4;
  v88 = sub_25B88B5F4;
  v89 = sub_25B88B6B4;
  v90 = sub_25B88B5F4;
  v91 = sub_25B88B5F4;
  v92 = sub_25B8A3EB8;
  v113 = 0;
  v112 = 0;
  v107 = 0uLL;
  v108 = 0;
  v93 = sub_25B946C48();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = v39 - v96;
  v113 = MEMORY[0x28223BE20](rawValue);
  v112 = v1;
  sub_25B946ED8();
  v99 = sub_25B946E98();
  v101 = SCNetworkProtocolSetConfiguration(v98, v99);
  MEMORY[0x277D82BD8](v99);

  if (!v101)
  {
    v2 = v97;
    v61 = 17;
    static SCError.current(_:)(v80, 0x11uLL, 2u, &v109);
    v56 = v109;
    v57 = v110;
    v58 = v111;
    v107 = v109;
    LOBYTE(v108) = v110;
    HIDWORD(v108) = v111;
    v3 = sub_25B91E2A4();
    (*(v94 + 16))(v2, v3, v93);
    sub_25B946ED8();
    v65 = 7;
    v55 = swift_allocObject();
    *(v55 + 16) = rawValue;

    v64 = 32;
    v4 = swift_allocObject();
    v5 = v55;
    v59 = v4;
    *(v4 + 16) = v81;
    *(v4 + 24) = v5;

    v6 = swift_allocObject();
    v7 = v56.n128_u64[1];
    v8 = v57;
    v9 = v58;
    v63 = v6;
    *(v6 + 16) = v56.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v77 = sub_25B946C18();
    v78 = sub_25B947458();
    v68 = swift_allocObject();
    *(v68 + 16) = 32;
    v69 = swift_allocObject();
    v62 = 8;
    *(v69 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v59;
    v60 = v10;
    *(v10 + 16) = v82;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v60;
    v70 = v12;
    *(v12 + 16) = v83;
    *(v12 + 24) = v13;
    v71 = swift_allocObject();
    *(v71 + 16) = 64;
    v72 = swift_allocObject();
    *(v72 + 16) = v62;
    v14 = swift_allocObject();
    v15 = v63;
    v66 = v14;
    *(v14 + 16) = v84;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v66;
    v67 = v16;
    *(v16 + 16) = v85;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v67;
    v74 = v18;
    *(v18 + 16) = v86;
    *(v18 + 24) = v19;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v73 = sub_25B947838();
    v75 = v20;

    v21 = v68;
    v22 = v75;
    *v75 = v87;
    v22[1] = v21;

    v23 = v69;
    v24 = v75;
    v75[2] = v88;
    v24[3] = v23;

    v25 = v70;
    v26 = v75;
    v75[4] = v89;
    v26[5] = v25;

    v27 = v71;
    v28 = v75;
    v75[6] = v90;
    v28[7] = v27;

    v29 = v72;
    v30 = v75;
    v75[8] = v91;
    v30[9] = v29;

    v31 = v74;
    v32 = v75;
    v75[10] = v92;
    v32[11] = v31;
    sub_25B8860FC();

    if (os_log_type_enabled(v77, v78))
    {
      v47 = sub_25B9474D8();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v46 = 1;
      v48 = sub_25B8895FC(1, v45, v45);
      v49 = sub_25B8895FC(v46, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v51 = &v106;
      v106 = v47;
      v52 = &v105;
      v105 = v48;
      v53 = &v104;
      v104 = v49;
      v50 = 2;
      sub_25B889650(2, &v106);
      sub_25B889650(v50, v51);
      v33 = v79;
      v102 = v87;
      v103 = v68;
      sub_25B889664(&v102, v51, v52, v53);
      v54 = v33;
      if (v33)
      {

        __break(1u);
      }

      else
      {
        v102 = v88;
        v103 = v69;
        sub_25B889664(&v102, &v106, &v105, &v104);
        v44 = 0;
        v102 = v89;
        v103 = v70;
        sub_25B889664(&v102, &v106, &v105, &v104);
        v43 = 0;
        v102 = v90;
        v103 = v71;
        sub_25B889664(&v102, &v106, &v105, &v104);
        v42 = 0;
        v102 = v91;
        v103 = v72;
        sub_25B889664(&v102, &v106, &v105, &v104);
        v41 = 0;
        v102 = v92;
        v103 = v74;
        sub_25B889664(&v102, &v106, &v105, &v104);
        _os_log_impl(&dword_25B859000, v77, v78, "Unable to set configuration %s: %@", v47, 0x16u);
        v40 = 1;
        sub_25B8896B0(v48, 1, v45);
        sub_25B8896B0(v49, v40, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v77);
    (*(v94 + 8))(v97, v93);
    sub_25B9115BC();
    v34 = swift_allocError();
    v35 = v56.n128_u64[1];
    v36 = v57;
    v37 = v58;
    v39[1] = v34;
    *v38 = v56.n128_u64[0];
    *(v38 + 8) = v35;
    *(v38 + 16) = v36;
    *(v38 + 20) = v37;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkProtocolRef.enabled(_:)(Swift::Bool a1)
{
  v92 = a1;
  v78 = "enabled(_:)";
  v79 = sub_25B920C80;
  v80 = sub_25B920DA4;
  v81 = sub_25B920E18;
  v82 = sub_25B8A396C;
  v83 = sub_25B910408;
  v84 = sub_25B8A3C9C;
  v85 = sub_25B8A3CE8;
  v86 = sub_25B88B5F4;
  v87 = sub_25B88B5F4;
  v88 = sub_25B8A39B8;
  v89 = sub_25B88B5F4;
  v90 = sub_25B88B5F4;
  v91 = sub_25B8A3EB8;
  v109 = 0;
  v108 = 0;
  v103 = 0uLL;
  v104 = 0;
  v93 = sub_25B946C48();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = v41 - v96;
  v109 = MEMORY[0x28223BE20](v92) & 1;
  v108 = v1;
  v75 = v109 != 0;
  if (!SCNetworkProtocolSetEnabled(v76, v75))
  {
    v2 = v97;
    static SCError.current(_:)(v78, 0xBuLL, 2u, &v105);
    v51 = v105;
    v52 = v106;
    v53 = v107;
    v103 = v105;
    LOBYTE(v104) = v106;
    HIDWORD(v104) = v107;
    v3 = sub_25B91E2A4();
    (*(v94 + 16))(v2, v3, v93);
    v58 = 17;
    v61 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v92;
    v4 = swift_allocObject();
    v5 = v51.n128_u64[1];
    v6 = v52;
    v7 = v53;
    v59 = v4;
    *(v4 + 16) = v51.n128_u64[0];
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    *(v4 + 36) = v7;
    sub_25B8A1C38();

    v73 = sub_25B946C18();
    v74 = sub_25B947458();
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = 4;
    v60 = 32;
    v8 = swift_allocObject();
    v9 = v54;
    v55 = v8;
    *(v8 + 16) = v79;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v55;
    v56 = v10;
    *(v10 + 16) = v80;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v56;
    v57 = v12;
    *(v12 + 16) = v81;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v57;
    v66 = v14;
    *(v14 + 16) = v82;
    *(v14 + 24) = v15;
    v67 = swift_allocObject();
    *(v67 + 16) = 64;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v16 = swift_allocObject();
    v17 = v59;
    v62 = v16;
    *(v16 + 16) = v83;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v62;
    v63 = v18;
    *(v18 + 16) = v84;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v63;
    v70 = v20;
    *(v20 + 16) = v85;
    *(v20 + 24) = v21;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v69 = sub_25B947838();
    v71 = v22;

    v23 = v64;
    v24 = v71;
    *v71 = v86;
    v24[1] = v23;

    v25 = v65;
    v26 = v71;
    v71[2] = v87;
    v26[3] = v25;

    v27 = v66;
    v28 = v71;
    v71[4] = v88;
    v28[5] = v27;

    v29 = v67;
    v30 = v71;
    v71[6] = v89;
    v30[7] = v29;

    v31 = v68;
    v32 = v71;
    v71[8] = v90;
    v32[9] = v31;

    v33 = v70;
    v34 = v71;
    v71[10] = v91;
    v34[11] = v33;
    sub_25B8860FC();

    if (os_log_type_enabled(v73, v74))
    {
      v43 = sub_25B9474D8();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v44 = sub_25B8895FC(1, v42, v42);
      v45 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v47 = &v102;
      v102 = v43;
      v48 = &v101;
      v101 = v44;
      v49 = &v100;
      v100 = v45;
      v46 = 2;
      sub_25B889650(2, &v102);
      sub_25B889650(v46, v47);
      v35 = v77;
      v98 = v86;
      v99 = v64;
      sub_25B889664(&v98, v47, v48, v49);
      v50 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v98 = v87;
        v99 = v65;
        sub_25B889664(&v98, &v102, &v101, &v100);
        v41[4] = 0;
        v98 = v88;
        v99 = v66;
        sub_25B889664(&v98, &v102, &v101, &v100);
        v41[3] = 0;
        v98 = v89;
        v99 = v67;
        sub_25B889664(&v98, &v102, &v101, &v100);
        v41[2] = 0;
        v98 = v90;
        v99 = v68;
        sub_25B889664(&v98, &v102, &v101, &v100);
        v41[1] = 0;
        v98 = v91;
        v99 = v70;
        sub_25B889664(&v98, &v102, &v101, &v100);
        _os_log_impl(&dword_25B859000, v73, v74, "Unable to set enabled %{BOOL}d: %@", v43, 0x12u);
        sub_25B8896B0(v44, 1, v42);
        sub_25B8896B0(v45, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v73);
    (*(v94 + 8))(v97, v93);
    sub_25B9115BC();
    v36 = swift_allocError();
    v37 = v51.n128_u64[1];
    v38 = v52;
    v39 = v53;
    v41[0] = v36;
    *v40 = v51.n128_u64[0];
    *(v40 + 8) = v37;
    *(v40 + 16) = v38;
    *(v40 + 20) = v39;
    swift_willThrow();
  }
}

Swift::String_optional __swiftcall SCNetworkProtocolRef.type()()
{
  v9 = SCNetworkProtocolGetProtocolType(v0);
  if (v9)
  {
    v5 = sub_25B946F78();
    v6 = v1;
    MEMORY[0x277D82BD8](v9);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v2 = v7;
  v3 = v8;
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

unint64_t sub_25B920840()
{
  v2 = qword_27FBAB738;
  if (!qword_27FBAB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB730, &qword_25B94C888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB738);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B920948()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB730, &qword_25B94C888);
  v1 = sub_25B9209B0();

  return sub_25B889718(v5, v3, v4, v1);
}

unint64_t sub_25B9209B0()
{
  v2 = qword_27FBAB740;
  if (!qword_27FBAB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB730, &qword_25B94C888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B920FBC()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB11A8);
  __swift_project_value_buffer(v1, qword_27FBB11A8);
  return sub_25B946C38();
}

uint64_t sub_25B921008()
{
  if (qword_27FBAAA90 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB11A8);
}

uint64_t sub_25B921074@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B921008();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.establishDefaultConfiguration()()
{
  v52 = "establishDefaultConfiguration()";
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
  if (!SCNetworkServiceEstablishDefaultConfiguration(v75))
  {
    v0 = v64;
    static SCError.current(_:)(v52, 0x1FuLL, 2u, &v72);
    v34 = v72;
    v35 = v73;
    v36 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v1 = sub_25B921008();
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
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to establish default configuration for service: %@", v27, 0xCu);
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

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.interface()()
{
  v54 = "interface()";
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
  v67 = SCNetworkServiceGetInterface(v79);
  if (v67)
  {
    v52 = v67;
    result = v67;
    v68 = v67;
  }

  else
  {
    v1 = v66;
    static SCError.current(_:)(v54, 0xBuLL, 2u, &v76);
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v2 = sub_25B921008();
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
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to get service interface: %@", v28, 0xCu);
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.serviceID()()
{
  v60 = "serviceID()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v85 = 0;
  v80 = 0uLL;
  v81 = 0;
  v74 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v29 - v71;
  v85 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkServiceGetServiceID(v85);
  if (v73)
  {
    v58 = v73;
    v55 = v73;
    v74 = v73;
    MEMORY[0x277D82BE0](v73);
    v56 = sub_25B946F78();
    v57 = v0;
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v55);
    v1 = v56;
    v2 = v57;
  }

  else
  {
    v3 = v72;
    static SCError.current(_:)(v60, 0xBuLL, 2u, &v82);
    v38 = v82;
    v39 = v83;
    v40 = v84;
    v80 = v82;
    LOBYTE(v81) = v83;
    HIDWORD(v81) = v84;
    v4 = sub_25B921008();
    (*(v69 + 16))(v3, v4, v68);
    v44 = 7;
    v5 = swift_allocObject();
    v6 = v38.n128_u64[1];
    v7 = v39;
    v8 = v40;
    v42 = v5;
    *(v5 + 16) = v38.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v9 = swift_allocObject();
    v10 = v42;
    v45 = v9;
    *(v9 + 16) = v61;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v45;
    v46 = v11;
    *(v11 + 16) = v62;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v46;
    v50 = v13;
    *(v13 + 16) = v63;
    *(v13 + 24) = v14;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v15;

    v16 = v47;
    v17 = v51;
    *v51 = v64;
    v17[1] = v16;

    v18 = v48;
    v19 = v51;
    v51[2] = v65;
    v19[3] = v18;

    v20 = v50;
    v21 = v51;
    v51[4] = v66;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v79;
      v79 = v31;
      v35 = &v78;
      v78 = v32;
      v36 = &v77;
      v77 = v33;
      sub_25B889650(2, &v79);
      sub_25B889650(1, v34);
      v22 = v59;
      v75 = v64;
      v76 = v47;
      sub_25B889664(&v75, v34, v35, v36);
      v37 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v65;
        v76 = v48;
        sub_25B889664(&v75, &v79, &v78, &v77);
        v29[3] = 0;
        v75 = v66;
        v76 = v50;
        sub_25B889664(&v75, &v79, &v78, &v77);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to get service id: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v69 + 8))(v72, v68);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v38.n128_u64[1];
    v25 = v39;
    v26 = v40;
    v29[2] = v23;
    *v27 = v38.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.name()()
{
  v60 = "name()";
  v61 = sub_25B910408;
  v62 = sub_25B8A3C9C;
  v63 = sub_25B8A3CE8;
  v64 = sub_25B88B5F4;
  v65 = sub_25B88B5F4;
  v66 = sub_25B8A3EB8;
  v85 = 0;
  v80 = 0uLL;
  v81 = 0;
  v74 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v29 - v71;
  v85 = MEMORY[0x28223BE20](v67);
  v73 = SCNetworkServiceGetName(v85);
  if (v73)
  {
    v58 = v73;
    v55 = v73;
    v74 = v73;
    MEMORY[0x277D82BE0](v73);
    v56 = sub_25B946F78();
    v57 = v0;
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v55);
    v1 = v56;
    v2 = v57;
  }

  else
  {
    v3 = v72;
    static SCError.current(_:)(v60, 6uLL, 2u, &v82);
    v38 = v82;
    v39 = v83;
    v40 = v84;
    v80 = v82;
    LOBYTE(v81) = v83;
    HIDWORD(v81) = v84;
    v4 = sub_25B921008();
    (*(v69 + 16))(v3, v4, v68);
    v44 = 7;
    v5 = swift_allocObject();
    v6 = v38.n128_u64[1];
    v7 = v39;
    v8 = v40;
    v42 = v5;
    *(v5 + 16) = v38.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v9 = swift_allocObject();
    v10 = v42;
    v45 = v9;
    *(v9 + 16) = v61;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v45;
    v46 = v11;
    *(v11 + 16) = v62;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v46;
    v50 = v13;
    *(v13 + 16) = v63;
    *(v13 + 24) = v14;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v15;

    v16 = v47;
    v17 = v51;
    *v51 = v64;
    v17[1] = v16;

    v18 = v48;
    v19 = v51;
    v51[2] = v65;
    v19[3] = v18;

    v20 = v50;
    v21 = v51;
    v51[4] = v66;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v79;
      v79 = v31;
      v35 = &v78;
      v78 = v32;
      v36 = &v77;
      v77 = v33;
      sub_25B889650(2, &v79);
      sub_25B889650(1, v34);
      v22 = v59;
      v75 = v64;
      v76 = v47;
      sub_25B889664(&v75, v34, v35, v36);
      v37 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v75 = v65;
        v76 = v48;
        sub_25B889664(&v75, &v79, &v78, &v77);
        v29[3] = 0;
        v75 = v66;
        v76 = v50;
        sub_25B889664(&v75, &v79, &v78, &v77);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to get service name: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v69 + 8))(v72, v68);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v38.n128_u64[1];
    v25 = v39;
    v26 = v40;
    v29[2] = v23;
    *v27 = v38.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
    v1 = v29[1];
    v2 = v29[4];
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.name(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v56 = "name(_:)";
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
  v72 = SCNetworkServiceSetName(v69, v70);
  MEMORY[0x277D82BD8](v70);

  if (!v72)
  {
    v4 = v67;
    static SCError.current(_:)(v56, 8uLL, 2u, &v80);
    v38 = v80;
    v39 = v81;
    v40 = v82;
    v78 = v80;
    LOBYTE(v79) = v81;
    HIDWORD(v79) = v82;
    v5 = sub_25B921008();
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
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to set service name: %@", v31, 0xCu);
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.enable(_:)(Swift::Bool a1)
{
  v63 = a1;
  v56 = "enable(_:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v80 = 0;
  v79 = 0;
  v74 = 0uLL;
  v75 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v27 - v67;
  v80 = MEMORY[0x28223BE20](v63) & 1;
  v79 = v1;
  v53 = v80 != 0;
  if (!SCNetworkServiceSetEnabled(v54, v53))
  {
    v2 = v68;
    static SCError.current(_:)(v56, 0xAuLL, 2u, &v76);
    v36 = v76;
    v37 = v77;
    v38 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v3 = sub_25B921008();
    (*(v65 + 16))(v2, v3, v64);
    v42 = 7;
    v4 = swift_allocObject();
    v5 = v36.n128_u64[1];
    v6 = v37;
    v7 = v38;
    v40 = v4;
    *(v4 + 16) = v36.n128_u64[0];
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    *(v4 + 36) = v7;
    sub_25B8A1C38();

    v51 = sub_25B946C18();
    v52 = sub_25B947458();
    v39 = 17;
    v45 = swift_allocObject();
    *(v45 + 16) = 64;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v41 = 32;
    v8 = swift_allocObject();
    v9 = v40;
    v43 = v8;
    *(v8 + 16) = v57;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v43;
    v44 = v10;
    *(v10 + 16) = v58;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v44;
    v48 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v47 = sub_25B947838();
    v49 = v14;

    v15 = v45;
    v16 = v49;
    *v49 = v60;
    v16[1] = v15;

    v17 = v46;
    v18 = v49;
    v49[2] = v61;
    v18[3] = v17;

    v19 = v48;
    v20 = v49;
    v49[4] = v62;
    v20[5] = v19;
    sub_25B8860FC();

    if (os_log_type_enabled(v51, v52))
    {
      v29 = sub_25B9474D8();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(1, v28, v28);
      v31 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v32 = &v73;
      v73 = v29;
      v33 = &v72;
      v72 = v30;
      v34 = &v71;
      v71 = v31;
      sub_25B889650(2, &v73);
      sub_25B889650(1, v32);
      v21 = v55;
      v69 = v60;
      v70 = v45;
      sub_25B889664(&v69, v32, v33, v34);
      v35 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v69 = v61;
        v70 = v46;
        sub_25B889664(&v69, &v73, &v72, &v71);
        v27[1] = 0;
        v69 = v62;
        v70 = v48;
        sub_25B889664(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_25B859000, v51, v52, "Unable to enable service name: %@", v29, 0xCu);
        sub_25B8896B0(v30, 1, v28);
        sub_25B8896B0(v31, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v51);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v22 = swift_allocError();
    v23 = v36.n128_u64[1];
    v24 = v37;
    v25 = v38;
    v27[0] = v22;
    *v26 = v36.n128_u64[0];
    *(v26 + 8) = v23;
    *(v26 + 16) = v24;
    *(v26 + 20) = v25;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.remove()()
{
  v52 = "remove()";
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
  if (!SCNetworkServiceRemove(v75))
  {
    v0 = v64;
    static SCError.current(_:)(v52, 8uLL, 2u, &v72);
    v34 = v72;
    v35 = v73;
    v36 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v1 = sub_25B921008();
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
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to remove network service: %@", v27, 0xCu);
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

uint64_t SCNetworkServiceRef.protocols()()
{
  v61 = "protocols()";
  v62 = sub_25B910408;
  v63 = sub_25B8A3C9C;
  v64 = sub_25B8A3CE8;
  v65 = sub_25B88B5F4;
  v66 = sub_25B88B5F4;
  v67 = sub_25B8A3EB8;
  v89 = 0;
  v84 = 0uLL;
  v85 = 0;
  v78 = 0;
  v69 = sub_25B946C48();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v26 - v72;
  v89 = MEMORY[0x28223BE20](v68);
  v74 = SCNetworkServiceCopyProtocols(v89);
  if (v74)
  {
    v59 = v74;
    v57 = v74;
    v78 = v74;
    MEMORY[0x277D82BE0](v74);
    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (v58)
    {
      v56 = v58;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB748, &qword_25B94C890);
      MEMORY[0x277D82BE0](v56);
      sub_25B9281C4();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v56);
      if (v75)
      {
        v54 = v75;
LABEL_7:
        v76 = v54;
        if (v54)
        {
          v77 = v76;
        }

        else
        {
          v53 = 0;
          type metadata accessor for SCNetworkProtocol(0);
          v77 = sub_25B947838();
          if (v76)
          {
            sub_25B86CFA0(&v76);
          }
        }

        v52 = v77;
        MEMORY[0x277D82BD8](v57);
        return v52;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v57);
    }

    v54 = 0;
    goto LABEL_7;
  }

  v1 = v73;
  static SCError.current(_:)(v61, 0xBuLL, 2u, &v86);
  v35 = v86;
  v36 = v87;
  v37 = v88;
  v84 = v86;
  LOBYTE(v85) = v87;
  HIDWORD(v85) = v88;
  v2 = sub_25B921008();
  (*(v70 + 16))(v1, v2, v69);
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
  *(v7 + 16) = v62;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v42;
  v43 = v9;
  *(v9 + 16) = v63;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v43;
  v47 = v11;
  *(v11 + 16) = v64;
  *(v11 + 24) = v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v46 = sub_25B947838();
  v48 = v13;

  v14 = v44;
  v15 = v48;
  *v48 = v65;
  v15[1] = v14;

  v16 = v45;
  v17 = v48;
  v48[2] = v66;
  v17[3] = v16;

  v18 = v47;
  v19 = v48;
  v48[4] = v67;
  v19[5] = v18;
  sub_25B8860FC();

  if (os_log_type_enabled(v50, v51))
  {
    v28 = sub_25B9474D8();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v29 = sub_25B8895FC(1, v27, v27);
    v30 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v31 = &v83;
    v83 = v28;
    v32 = &v82;
    v82 = v29;
    v33 = &v81;
    v81 = v30;
    sub_25B889650(2, &v83);
    sub_25B889650(1, v31);
    v20 = v60;
    v79 = v65;
    v80 = v44;
    sub_25B889664(&v79, v31, v32, v33);
    v34 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v79 = v66;
      v80 = v45;
      sub_25B889664(&v79, &v83, &v82, &v81);
      v26[2] = 0;
      v79 = v67;
      v80 = v47;
      sub_25B889664(&v79, &v83, &v82, &v81);
      _os_log_impl(&dword_25B859000, v50, v51, "Unable to get protocols: %@", v28, 0xCu);
      sub_25B8896B0(v29, 1, v27);
      sub_25B8896B0(v30, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v50);
  (*(v70 + 8))(v73, v69);
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

SCNetworkProtocolRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.protocol(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v84 = "protocol(_:)";
  v85 = sub_25B8994FC;
  v86 = sub_25B88B668;
  v87 = sub_25B910408;
  v88 = sub_25B8A3C9C;
  v89 = sub_25B8A3CE8;
  v90 = sub_25B88B5F4;
  v91 = sub_25B88B5F4;
  v92 = sub_25B88B6B4;
  v93 = sub_25B88B5F4;
  v94 = sub_25B88B5F4;
  v95 = sub_25B8A3EB8;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  v112 = 0uLL;
  v113 = 0;
  v106 = 0;
  v96 = sub_25B946C48();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v100 = v42 - v99;
  v118 = v3;
  v119 = v2;
  v117 = v1;
  sub_25B946ED8();
  v103 = sub_25B946F58();
  v105 = SCNetworkServiceCopyProtocol(v102, v103);
  MEMORY[0x277D82BD8](v103);

  if (v105)
  {
    v82 = v105;
    result = v105;
    v106 = v105;
  }

  else
  {
    v5 = v100;
    static SCError.current(_:)(v84, 0xCuLL, 2u, &v114);
    v59 = v114;
    v60 = v115;
    v61 = v116;
    v112 = v114;
    LOBYTE(v113) = v115;
    HIDWORD(v113) = v116;
    v6 = sub_25B921008();
    (*(v97 + 16))(v5, v6, v96);
    sub_25B946ED8();
    v67 = 32;
    v68 = 7;
    v7 = swift_allocObject();
    v8 = object;
    v62 = v7;
    *(v7 + 16) = countAndFlagsBits;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v59.n128_u64[1];
    v11 = v60;
    v12 = v61;
    v66 = v9;
    *(v9 + 16) = v59.n128_u64[0];
    *(v9 + 24) = v10;
    *(v9 + 32) = v11;
    *(v9 + 36) = v12;
    sub_25B8A1C38();

    v80 = sub_25B946C18();
    v81 = sub_25B947458();
    v64 = 17;
    v71 = swift_allocObject();
    *(v71 + 16) = 32;
    v72 = swift_allocObject();
    v65 = 8;
    *(v72 + 16) = 8;
    v13 = swift_allocObject();
    v14 = v62;
    v63 = v13;
    *(v13 + 16) = v85;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v63;
    v73 = v15;
    *(v15 + 16) = v86;
    *(v15 + 24) = v16;
    v74 = swift_allocObject();
    *(v74 + 16) = 64;
    v75 = swift_allocObject();
    *(v75 + 16) = v65;
    v17 = swift_allocObject();
    v18 = v66;
    v69 = v17;
    *(v17 + 16) = v87;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v69;
    v70 = v19;
    *(v19 + 16) = v88;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v70;
    v77 = v21;
    *(v21 + 16) = v89;
    *(v21 + 24) = v22;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v76 = sub_25B947838();
    v78 = v23;

    v24 = v71;
    v25 = v78;
    *v78 = v90;
    v25[1] = v24;

    v26 = v72;
    v27 = v78;
    v78[2] = v91;
    v27[3] = v26;

    v28 = v73;
    v29 = v78;
    v78[4] = v92;
    v29[5] = v28;

    v30 = v74;
    v31 = v78;
    v78[6] = v93;
    v31[7] = v30;

    v32 = v75;
    v33 = v78;
    v78[8] = v94;
    v33[9] = v32;

    v34 = v77;
    v35 = v78;
    v78[10] = v95;
    v35[11] = v34;
    sub_25B8860FC();

    if (os_log_type_enabled(v80, v81))
    {
      v51 = sub_25B9474D8();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v50 = 1;
      v52 = sub_25B8895FC(1, v49, v49);
      v53 = sub_25B8895FC(v50, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v55 = &v111;
      v111 = v51;
      v56 = &v110;
      v110 = v52;
      v57 = &v109;
      v109 = v53;
      v54 = 2;
      sub_25B889650(2, &v111);
      sub_25B889650(v54, v55);
      v36 = v83;
      v107 = v90;
      v108 = v71;
      sub_25B889664(&v107, v55, v56, v57);
      v58 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v107 = v91;
        v108 = v72;
        sub_25B889664(&v107, &v111, &v110, &v109);
        v47 = 0;
        v107 = v92;
        v108 = v73;
        sub_25B889664(&v107, &v111, &v110, &v109);
        v46 = 0;
        v107 = v93;
        v108 = v74;
        sub_25B889664(&v107, &v111, &v110, &v109);
        v45 = 0;
        v107 = v94;
        v108 = v75;
        sub_25B889664(&v107, &v111, &v110, &v109);
        v44 = 0;
        v107 = v95;
        v108 = v77;
        sub_25B889664(&v107, &v111, &v110, &v109);
        _os_log_impl(&dword_25B859000, v80, v81, "Unable to get protocol %s: %@", v51, 0x16u);
        v43 = 1;
        sub_25B8896B0(v52, 1, v49);
        sub_25B8896B0(v53, v43, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v80);
    (*(v97 + 8))(v100, v96);
    sub_25B9115BC();
    v37 = swift_allocError();
    v38 = v59.n128_u64[1];
    v39 = v60;
    v40 = v61;
    v42[1] = v37;
    *v41 = v59.n128_u64[0];
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    *(v41 + 20) = v40;
    swift_willThrow();
    return v48;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.add(protocolType:)(Swift::String protocolType)
{
  countAndFlagsBits = protocolType._countAndFlagsBits;
  object = protocolType._object;
  v81 = "add(protocolType:)";
  v82 = sub_25B8994FC;
  v83 = sub_25B88B668;
  v84 = sub_25B910408;
  v85 = sub_25B8A3C9C;
  v86 = sub_25B8A3CE8;
  v87 = sub_25B88B5F4;
  v88 = sub_25B88B5F4;
  v89 = sub_25B88B6B4;
  v90 = sub_25B88B5F4;
  v91 = sub_25B88B5F4;
  v92 = sub_25B8A3EB8;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  v108 = 0uLL;
  v109 = 0;
  v93 = sub_25B946C48();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v97 = v41 - v96;
  v114 = v3;
  v115 = v2;
  v113 = v1;
  sub_25B946ED8();
  v100 = sub_25B946F58();
  v102 = SCNetworkServiceAddProtocolType(v99, v100);
  MEMORY[0x277D82BD8](v100);

  if (!v102)
  {
    v4 = v97;
    static SCError.current(_:)(v81, 0x12uLL, 2u, &v110);
    v57 = v110;
    v58 = v111;
    v59 = v112;
    v108 = v110;
    LOBYTE(v109) = v111;
    HIDWORD(v109) = v112;
    v5 = sub_25B921008();
    (*(v94 + 16))(v4, v5, v93);
    sub_25B946ED8();
    v65 = 32;
    v66 = 7;
    v6 = swift_allocObject();
    v7 = object;
    v60 = v6;
    *(v6 + 16) = countAndFlagsBits;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v57.n128_u64[1];
    v10 = v58;
    v11 = v59;
    v64 = v8;
    *(v8 + 16) = v57.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v78 = sub_25B946C18();
    v79 = sub_25B947458();
    v62 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    v63 = 8;
    *(v70 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v60;
    v61 = v12;
    *(v12 + 16) = v82;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v61;
    v71 = v14;
    *(v14 + 16) = v83;
    *(v14 + 24) = v15;
    v72 = swift_allocObject();
    *(v72 + 16) = 64;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v16 = swift_allocObject();
    v17 = v64;
    v67 = v16;
    *(v16 + 16) = v84;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v67;
    v68 = v18;
    *(v18 + 16) = v85;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v68;
    v75 = v20;
    *(v20 + 16) = v86;
    *(v20 + 24) = v21;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v74 = sub_25B947838();
    v76 = v22;

    v23 = v69;
    v24 = v76;
    *v76 = v87;
    v24[1] = v23;

    v25 = v70;
    v26 = v76;
    v76[2] = v88;
    v26[3] = v25;

    v27 = v71;
    v28 = v76;
    v76[4] = v89;
    v28[5] = v27;

    v29 = v72;
    v30 = v76;
    v76[6] = v90;
    v30[7] = v29;

    v31 = v73;
    v32 = v76;
    v76[8] = v91;
    v32[9] = v31;

    v33 = v75;
    v34 = v76;
    v76[10] = v92;
    v34[11] = v33;
    sub_25B8860FC();

    if (os_log_type_enabled(v78, v79))
    {
      v49 = sub_25B9474D8();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v48 = 1;
      v50 = sub_25B8895FC(1, v47, v47);
      v51 = sub_25B8895FC(v48, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v53 = &v107;
      v107 = v49;
      v54 = &v106;
      v106 = v50;
      v55 = &v105;
      v105 = v51;
      v52 = 2;
      sub_25B889650(2, &v107);
      sub_25B889650(v52, v53);
      v35 = v80;
      v103 = v87;
      v104 = v69;
      sub_25B889664(&v103, v53, v54, v55);
      v56 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v103 = v88;
        v104 = v70;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v46 = 0;
        v103 = v89;
        v104 = v71;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v45 = 0;
        v103 = v90;
        v104 = v72;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v44 = 0;
        v103 = v91;
        v104 = v73;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v43 = 0;
        v103 = v92;
        v104 = v75;
        sub_25B889664(&v103, &v107, &v106, &v105);
        _os_log_impl(&dword_25B859000, v78, v79, "Unable to add protocol type %s: %@", v49, 0x16u);
        v42 = 1;
        sub_25B8896B0(v50, 1, v47);
        sub_25B8896B0(v51, v42, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v78);
    (*(v94 + 8))(v97, v93);
    sub_25B9115BC();
    v36 = swift_allocError();
    v37 = v57.n128_u64[1];
    v38 = v58;
    v39 = v59;
    v41[1] = v36;
    *v40 = v57.n128_u64[0];
    *(v40 + 8) = v37;
    *(v40 + 16) = v38;
    *(v40 + 20) = v39;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkServiceRef.remove(protocolType:)(Swift::String protocolType)
{
  countAndFlagsBits = protocolType._countAndFlagsBits;
  object = protocolType._object;
  v81 = "remove(protocolType:)";
  v82 = sub_25B8994FC;
  v83 = sub_25B88B668;
  v84 = sub_25B910408;
  v85 = sub_25B8A3C9C;
  v86 = sub_25B8A3CE8;
  v87 = sub_25B88B5F4;
  v88 = sub_25B88B5F4;
  v89 = sub_25B88B6B4;
  v90 = sub_25B88B5F4;
  v91 = sub_25B88B5F4;
  v92 = sub_25B8A3EB8;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  v108 = 0uLL;
  v109 = 0;
  v93 = sub_25B946C48();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](object);
  v97 = v41 - v96;
  v114 = v3;
  v115 = v2;
  v113 = v1;
  sub_25B946ED8();
  v100 = sub_25B946F58();
  v102 = SCNetworkServiceRemoveProtocolType(v99, v100);
  MEMORY[0x277D82BD8](v100);

  if (!v102)
  {
    v4 = v97;
    static SCError.current(_:)(v81, 0x15uLL, 2u, &v110);
    v57 = v110;
    v58 = v111;
    v59 = v112;
    v108 = v110;
    LOBYTE(v109) = v111;
    HIDWORD(v109) = v112;
    v5 = sub_25B921008();
    (*(v94 + 16))(v4, v5, v93);
    sub_25B946ED8();
    v65 = 32;
    v66 = 7;
    v6 = swift_allocObject();
    v7 = object;
    v60 = v6;
    *(v6 + 16) = countAndFlagsBits;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v57.n128_u64[1];
    v10 = v58;
    v11 = v59;
    v64 = v8;
    *(v8 + 16) = v57.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v78 = sub_25B946C18();
    v79 = sub_25B947458();
    v62 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    v63 = 8;
    *(v70 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v60;
    v61 = v12;
    *(v12 + 16) = v82;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v61;
    v71 = v14;
    *(v14 + 16) = v83;
    *(v14 + 24) = v15;
    v72 = swift_allocObject();
    *(v72 + 16) = 64;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v16 = swift_allocObject();
    v17 = v64;
    v67 = v16;
    *(v16 + 16) = v84;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v67;
    v68 = v18;
    *(v18 + 16) = v85;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v68;
    v75 = v20;
    *(v20 + 16) = v86;
    *(v20 + 24) = v21;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v74 = sub_25B947838();
    v76 = v22;

    v23 = v69;
    v24 = v76;
    *v76 = v87;
    v24[1] = v23;

    v25 = v70;
    v26 = v76;
    v76[2] = v88;
    v26[3] = v25;

    v27 = v71;
    v28 = v76;
    v76[4] = v89;
    v28[5] = v27;

    v29 = v72;
    v30 = v76;
    v76[6] = v90;
    v30[7] = v29;

    v31 = v73;
    v32 = v76;
    v76[8] = v91;
    v32[9] = v31;

    v33 = v75;
    v34 = v76;
    v76[10] = v92;
    v34[11] = v33;
    sub_25B8860FC();

    if (os_log_type_enabled(v78, v79))
    {
      v49 = sub_25B9474D8();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v48 = 1;
      v50 = sub_25B8895FC(1, v47, v47);
      v51 = sub_25B8895FC(v48, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v53 = &v107;
      v107 = v49;
      v54 = &v106;
      v106 = v50;
      v55 = &v105;
      v105 = v51;
      v52 = 2;
      sub_25B889650(2, &v107);
      sub_25B889650(v52, v53);
      v35 = v80;
      v103 = v87;
      v104 = v69;
      sub_25B889664(&v103, v53, v54, v55);
      v56 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v103 = v88;
        v104 = v70;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v46 = 0;
        v103 = v89;
        v104 = v71;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v45 = 0;
        v103 = v90;
        v104 = v72;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v44 = 0;
        v103 = v91;
        v104 = v73;
        sub_25B889664(&v103, &v107, &v106, &v105);
        v43 = 0;
        v103 = v92;
        v104 = v75;
        sub_25B889664(&v103, &v107, &v106, &v105);
        _os_log_impl(&dword_25B859000, v78, v79, "Unable to remove protocol type %s: %@", v49, 0x16u);
        v42 = 1;
        sub_25B8896B0(v50, 1, v47);
        sub_25B8896B0(v51, v42, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v78);
    (*(v94 + 8))(v97, v93);
    sub_25B9115BC();
    v36 = swift_allocError();
    v37 = v57.n128_u64[1];
    v38 = v58;
    v39 = v59;
    v41[1] = v36;
    *v40 = v57.n128_u64[0];
    *(v40 + 8) = v37;
    *(v40 + 16) = v38;
    *(v40 + 20) = v39;
    swift_willThrow();
  }
}

unint64_t sub_25B9281C4()
{
  v2 = qword_27FBAB750;
  if (!qword_27FBAB750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB748, &qword_25B94C890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB750);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B928960()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB11C0);
  __swift_project_value_buffer(v1, qword_27FBB11C0);
  return sub_25B946C38();
}

uint64_t sub_25B9289AC()
{
  if (qword_27FBAAA98 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB11C0);
}

uint64_t sub_25B928A18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B9289AC();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkSetRef.addService(service:)(SCNetworkServiceRef service)
{
  v62 = service;
  v55 = "addService(service:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v80 = 0;
  v79 = 0;
  v74 = 0uLL;
  v75 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v68 = v28 - v67;
  v80 = v2;
  v79 = v1;
  if (!SCNetworkSetAddService(v1, v2))
  {
    v3 = v68;
    static SCError.current(_:)(v55, 0x14uLL, 2u, &v76);
    v37 = v76;
    v38 = v77;
    v39 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v4 = sub_25B9289AC();
    (*(v65 + 16))(v3, v4, v64);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v56;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v57;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v58;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v59;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v60;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v61;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1, v29, v29);
      v32 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v33 = &v73;
      v73 = v30;
      v34 = &v72;
      v72 = v31;
      v35 = &v71;
      v71 = v32;
      sub_25B889650(2, &v73);
      sub_25B889650(1, v33);
      v22 = v54;
      v69 = v59;
      v70 = v46;
      sub_25B889664(&v69, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v69 = v60;
        v70 = v47;
        sub_25B889664(&v69, &v73, &v72, &v71);
        v28[1] = 0;
        v69 = v61;
        v70 = v49;
        sub_25B889664(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to add service to network set: %@", v30, 0xCu);
        sub_25B8896B0(v31, 1, v29);
        sub_25B8896B0(v32, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v28[0] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkSetRef.removeService(service:)(SCNetworkServiceRef service)
{
  v62 = service;
  v55 = "removeService(service:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v80 = 0;
  v79 = 0;
  v74 = 0uLL;
  v75 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v68 = v28 - v67;
  v80 = v2;
  v79 = v1;
  if (!SCNetworkSetRemoveService(v1, v2))
  {
    v3 = v68;
    static SCError.current(_:)(v55, 0x17uLL, 2u, &v76);
    v37 = v76;
    v38 = v77;
    v39 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v4 = sub_25B9289AC();
    (*(v65 + 16))(v3, v4, v64);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v56;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v57;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v58;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v59;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v60;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v61;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1, v29, v29);
      v32 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v33 = &v73;
      v73 = v30;
      v34 = &v72;
      v72 = v31;
      v35 = &v71;
      v71 = v32;
      sub_25B889650(2, &v73);
      sub_25B889650(1, v33);
      v22 = v54;
      v69 = v59;
      v70 = v46;
      sub_25B889664(&v69, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v69 = v60;
        v70 = v47;
        sub_25B889664(&v69, &v73, &v72, &v71);
        v28[1] = 0;
        v69 = v61;
        v70 = v49;
        sub_25B889664(&v69, &v73, &v72, &v71);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to remove service from network set: %@", v30, 0xCu);
        sub_25B8896B0(v31, 1, v29);
        sub_25B8896B0(v32, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v65 + 8))(v68, v64);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v28[0] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

uint64_t SCNetworkSetRef.services()()
{
  v7 = SCNetworkSetCopyServices(v0);
  if (v7)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
      MEMORY[0x277D82BE0](v6);
      sub_25B929EB4();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v6);
      if (v8)
      {
        v5 = v8;
LABEL_7:
        v4 = v5;
        goto LABEL_8;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v7);
    }

    v5 = 0;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:
  if (v4)
  {
    return v4;
  }

  sub_25B9115BC();
  swift_allocError();
  SCError.init(context:rawValue:)("services()", 0xAuLL, 2u, 1004, v2);
  swift_willThrow();
  return v3;
}

unint64_t sub_25B929EB4()
{
  v2 = qword_27FBAB760;
  if (!qword_27FBAB760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB758, &qword_25B94C898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB760);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B929F60()
{
  sub_25B946E58();
  sub_25B947838();
  sub_25B939428();
  return sub_25B947548();
}

uint64_t sub_25B929FC4()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB11D8);
  __swift_project_value_buffer(v1, qword_27FBB11D8);
  return sub_25B946C38();
}

uint64_t sub_25B92A010()
{
  if (qword_27FBAAAA0 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB11D8);
}

uint64_t sub_25B92A07C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B92A010();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

SCPreferencesRef static SCPreferencesRef.create(_:)(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v74 = a2;
  v59 = "create(_:)";
  v72 = 0;
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v82 = 0uLL;
  v83 = 0;
  v76 = 0;
  v66 = sub_25B946C48();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v74);
  v70 = v31 - v69;
  v88 = v4;
  v89 = v3;
  v87 = v2;
  sub_25B946ED8();
  v73 = sub_25B946F58();
  v75 = SCPreferencesCreate(v72, v73, v72);
  MEMORY[0x277D82BD8](v73);

  if (v75)
  {
    v57 = v75;
    result = v75;
    v76 = v75;
  }

  else
  {
    v6 = v70;
    static SCError.current(_:)(v59, 0xAuLL, 2u, &v84);
    v40 = v84;
    v41 = v85;
    v42 = v86;
    v82 = v84;
    LOBYTE(v83) = v85;
    HIDWORD(v83) = v86;
    v7 = sub_25B92A010();
    (*(v67 + 16))(v6, v7, v66);
    v46 = 7;
    v8 = swift_allocObject();
    v9 = v40.n128_u64[1];
    v10 = v41;
    v11 = v42;
    v44 = v8;
    *(v8 + 16) = v40.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v55 = sub_25B946C18();
    v56 = sub_25B947458();
    v43 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = 64;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = 32;
    v12 = swift_allocObject();
    v13 = v44;
    v47 = v12;
    *(v12 + 16) = v60;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v47;
    v48 = v14;
    *(v14 + 16) = v61;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v48;
    v52 = v16;
    *(v16 + 16) = v62;
    *(v16 + 24) = v17;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v51 = sub_25B947838();
    v53 = v18;

    v19 = v49;
    v20 = v53;
    *v53 = v63;
    v20[1] = v19;

    v21 = v50;
    v22 = v53;
    v53[2] = v64;
    v22[3] = v21;

    v23 = v52;
    v24 = v53;
    v53[4] = v65;
    v24[5] = v23;
    sub_25B8860FC();

    if (os_log_type_enabled(v55, v56))
    {
      v33 = sub_25B9474D8();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v34 = sub_25B8895FC(1, v32, v32);
      v35 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v36 = &v81;
      v81 = v33;
      v37 = &v80;
      v80 = v34;
      v38 = &v79;
      v79 = v35;
      sub_25B889650(2, &v81);
      sub_25B889650(1, v36);
      v25 = v58;
      v77 = v63;
      v78 = v49;
      sub_25B889664(&v77, v36, v37, v38);
      v39 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v77 = v64;
        v78 = v50;
        sub_25B889664(&v77, &v81, &v80, &v79);
        v31[1] = 0;
        v77 = v65;
        v78 = v52;
        sub_25B889664(&v77, &v81, &v80, &v79);
        _os_log_impl(&dword_25B859000, v55, v56, "Unable to create SCPreferences: %@", v33, 0xCu);
        sub_25B8896B0(v34, 1, v32);
        sub_25B8896B0(v35, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v55);
    (*(v67 + 8))(v70, v66);
    sub_25B9115BC();
    v26 = swift_allocError();
    v27 = v40.n128_u64[1];
    v28 = v41;
    v29 = v42;
    v31[0] = v26;
    *v30 = v40.n128_u64[0];
    *(v30 + 8) = v27;
    *(v30 + 16) = v28;
    *(v30 + 20) = v29;
    swift_willThrow();
    return v31[2];
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.commit()()
{
  v52 = "commit()";
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
  if (!SCPreferencesCommitChanges(v75))
  {
    v0 = v64;
    static SCError.current(_:)(v52, 8uLL, 2u, &v72);
    v34 = v72;
    v35 = v73;
    v36 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v1 = sub_25B92A010();
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
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to commit SCPreferences: %@", v27, 0xCu);
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.apply()()
{
  v52 = "apply()";
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
  if (!SCPreferencesApplyChanges(v75))
  {
    v0 = v64;
    v40 = 7;
    static SCError.current(_:)(v52, 7uLL, 2u, &v72);
    v34 = v72;
    v35 = v73;
    v36 = v74;
    v70 = v72;
    LOBYTE(v71) = v73;
    HIDWORD(v71) = v74;
    v1 = sub_25B92A010();
    (*(v61 + 16))(v0, v1, v60);
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
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to apply SCPreferences: %@", v27, 0xCu);
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

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.interfaceWith(bsdName:)(Swift::String bsdName)
{
  countAndFlagsBits = bsdName._countAndFlagsBits;
  object = bsdName._object;
  v128 = sub_25B8994FC;
  v129 = sub_25B88B668;
  v130 = sub_25B88B5F4;
  v131 = sub_25B88B5F4;
  v132 = sub_25B88B6B4;
  v133 = sub_25B8994FC;
  v134 = sub_25B88B668;
  v135 = sub_25B88B5F4;
  v136 = sub_25B88B5F4;
  v137 = sub_25B88B6B4;
  v138 = "interfaceWith(bsdName:)";
  v170 = 0;
  v171 = 0;
  v169 = 0;
  v168[0] = 0;
  v168[1] = 0;
  v167 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v2 = v139;
  v142 = sub_25B946C48();
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](countAndFlagsBits);
  v146 = &v48 - v145;
  v147 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v148 = &v48 - v147;
  v170 = v5;
  v171 = v6;
  v169 = v1;
  v7 = SCPreferencesRef.services()();
  v149 = v2;
  v150 = v7;
  v151 = v2;
  if (!v2)
  {
    v161 = v150;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
    sub_25B937FE4();
    sub_25B947418();
    for (i = v149; ; i = v81)
    {
      v124 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB770, &qword_25B94C8A0);
      sub_25B9475E8();
      v125 = v160;
      if (!v160)
      {
        sub_25B86CFA0(v168);
        v80 = v124;
        goto LABEL_16;
      }

      v123 = v125;
      v119 = v125;
      v159 = v125;
      v8 = SCNetworkServiceRef.interface()();
      v120 = v9;
      v121 = v8;
      v122 = v9;
      if (v9)
      {
        break;
      }

      v115 = v121;
      v157 = v121;
      v10 = SCNetworkInterfaceRef.bsdName()();
      v116 = v11;
      v117 = v10;
      v118 = v11;
      if (v11)
      {
        v48 = v118;
        v49 = 0;
        MEMORY[0x277D82BD8](v115);
        v51 = v48;
        v50 = v49;
        goto LABEL_23;
      }

      v111 = v117._object;
      v112 = MEMORY[0x25F870E10](v117._countAndFlagsBits);

      v113 = v115;
      v114 = v119;
      if (v112)
      {
        v12 = v148;
        v96 = v114;
        v97 = v113;
        v13 = sub_25B92A010();
        (*(v143 + 16))(v12, v13, v142);
        sub_25B946ED8();
        v99 = 32;
        v100 = 7;
        v14 = swift_allocObject();
        v15 = object;
        v101 = v14;
        *(v14 + 16) = countAndFlagsBits;
        *(v14 + 24) = v15;
        v109 = sub_25B946C18();
        v110 = sub_25B947438();
        v98 = 17;
        v103 = swift_allocObject();
        *(v103 + 16) = 32;
        v104 = swift_allocObject();
        *(v104 + 16) = 8;
        v16 = swift_allocObject();
        v17 = v101;
        v102 = v16;
        *(v16 + 16) = v128;
        *(v16 + 24) = v17;
        v18 = swift_allocObject();
        v19 = v102;
        v106 = v18;
        *(v18 + 16) = v129;
        *(v18 + 24) = v19;
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
        v105 = sub_25B947838();
        v107 = v20;

        v21 = v103;
        v22 = v107;
        *v107 = v130;
        v22[1] = v21;

        v23 = v104;
        v24 = v107;
        v107[2] = v131;
        v24[3] = v23;

        v25 = v106;
        v26 = v107;
        v107[4] = v132;
        v26[5] = v25;
        sub_25B8860FC();

        if (os_log_type_enabled(v109, v110))
        {
          v89 = sub_25B9474D8();
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
          v90 = sub_25B8895FC(0, v88, v88);
          v91 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v92 = &v156;
          v156 = v89;
          v93 = &v155;
          v155 = v90;
          v94 = &v154;
          v154 = v91;
          sub_25B889650(2, &v156);
          sub_25B889650(1, v92);
          v27 = v116;
          v152 = v130;
          v153 = v103;
          sub_25B889664(&v152, v92, v93, v94);
          v95 = v27;
          if (v27)
          {

            __break(1u);
          }

          else
          {
            v152 = v131;
            v153 = v104;
            sub_25B889664(&v152, &v156, &v155, &v154);
            v85 = 0;
            v152 = v132;
            v153 = v106;
            sub_25B889664(&v152, &v156, &v155, &v154);
            v84 = 0;
            _os_log_impl(&dword_25B859000, v109, v110, "Found interface for %s", v89, 0xCu);
            sub_25B8896B0(v90, 0, v88);
            sub_25B8896B0(v91, 1, MEMORY[0x277D84F70] + 8);
            sub_25B9474B8();

            v86 = v84;
          }
        }

        else
        {

          v86 = v116;
        }

        v83 = v86;
        MEMORY[0x277D82BD8](v109);
        (*(v143 + 8))(v148, v142);
        MEMORY[0x277D82BD8](v96);
        sub_25B86CFA0(v168);
        return v97;
      }

      MEMORY[0x277D82BD8](v115);
      v82 = v116;
LABEL_14:
      v81 = v82;
      MEMORY[0x277D82BD8](v119);
    }

    v51 = v122;
    v50 = 0;
LABEL_23:
    v53 = v50;
    v52 = v51;
    v47 = v51;
    v158 = v52;

    v82 = v53;
    goto LABEL_14;
  }

  v54 = v151;
  v55 = 0;
  v46 = v151;
  v167 = v54;

  v80 = v55;
LABEL_16:
  v29 = v146;
  v66 = v80;
  v30 = sub_25B92A010();
  (*(v143 + 16))(v29, v30, v142);
  sub_25B946ED8();
  v68 = 32;
  v69 = 7;
  v31 = swift_allocObject();
  v32 = object;
  v70 = v31;
  *(v31 + 16) = countAndFlagsBits;
  *(v31 + 24) = v32;
  v78 = sub_25B946C18();
  v79 = sub_25B947458();
  v67 = 17;
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v33 = swift_allocObject();
  v34 = v70;
  v71 = v33;
  *(v33 + 16) = v133;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v71;
  v75 = v35;
  *(v35 + 16) = v134;
  *(v35 + 24) = v36;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v74 = sub_25B947838();
  v76 = v37;

  v38 = v72;
  v39 = v76;
  *v76 = v135;
  v39[1] = v38;

  v40 = v73;
  v41 = v76;
  v76[2] = v136;
  v41[3] = v40;

  v42 = v75;
  v43 = v76;
  v76[4] = v137;
  v43[5] = v42;
  sub_25B8860FC();

  if (os_log_type_enabled(v78, v79))
  {
    v59 = sub_25B9474D8();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v60 = sub_25B8895FC(0, v58, v58);
    v61 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v62 = &v166;
    v166 = v59;
    v63 = &v165;
    v165 = v60;
    v64 = &v164;
    v164 = v61;
    sub_25B889650(2, &v166);
    sub_25B889650(1, v62);
    v44 = v66;
    v162 = v135;
    v163 = v72;
    sub_25B889664(&v162, v62, v63, v64);
    v65 = v44;
    if (v44)
    {

      __break(1u);
    }

    else
    {
      v162 = v136;
      v163 = v73;
      sub_25B889664(&v162, &v166, &v165, &v164);
      v57 = 0;
      v162 = v137;
      v163 = v75;
      sub_25B889664(&v162, &v166, &v165, &v164);
      _os_log_impl(&dword_25B859000, v78, v79, "Unable to find interface for %s", v59, 0xCu);
      sub_25B8896B0(v60, 0, v58);
      sub_25B8896B0(v61, 1, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v78);
  (*(v143 + 8))(v146, v142);
  sub_25B9115BC();
  v56 = swift_allocError();
  SCError.init(context:rawValue:)(v138, 0x17uLL, 2u, 1004, v45);
  swift_willThrow();
  return v87;
}

uint64_t SCPreferencesRef.services()()
{
  v7 = SCNetworkServiceCopyAll(v0);
  if (v7)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
      MEMORY[0x277D82BE0](v6);
      sub_25B929EB4();
      sub_25B9478B8();
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v6);
      if (v8)
      {
        v5 = v8;
LABEL_7:
        v4 = v5;
        goto LABEL_8;
      }
    }

    else
    {
      MEMORY[0x277D82BD8](v7);
    }

    v5 = 0;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:
  if (v4)
  {
    return v4;
  }

  sub_25B9115BC();
  swift_allocError();
  SCError.init(context:rawValue:)("services()", 0xAuLL, 2u, 1004, v2);
  swift_willThrow();
  return v3;
}

uint64_t sub_25B92CD04()
{
  v53 = "lock()";
  v54 = sub_25B910408;
  v55 = sub_25B8A3C9C;
  v56 = sub_25B8A3CE8;
  v57 = sub_25B88B5F4;
  v58 = sub_25B88B5F4;
  v59 = sub_25B8A3EB8;
  v76 = 0;
  v71 = 0uLL;
  v72 = 0;
  v61 = sub_25B946C48();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v26 - v64;
  v76 = MEMORY[0x28223BE20](v60);
  result = SCPreferencesLock(v76, 1u);
  if (!result)
  {
    v1 = v65;
    static SCError.current(_:)(v53, 6uLL, 2u, &v73);
    v35 = v73;
    v36 = v74;
    v37 = v75;
    v71 = v73;
    LOBYTE(v72) = v74;
    HIDWORD(v72) = v75;
    v2 = sub_25B92A010();
    (*(v62 + 16))(v1, v2, v61);
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
    *(v7 + 16) = v54;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v42;
    v43 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v47 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v46 = sub_25B947838();
    v48 = v13;

    v14 = v44;
    v15 = v48;
    *v48 = v57;
    v15[1] = v14;

    v16 = v45;
    v17 = v48;
    v48[2] = v58;
    v17[3] = v16;

    v18 = v47;
    v19 = v48;
    v48[4] = v59;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v50, v51))
    {
      v28 = sub_25B9474D8();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v29 = sub_25B8895FC(1, v27, v27);
      v30 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v31 = &v70;
      v70 = v28;
      v32 = &v69;
      v69 = v29;
      v33 = &v68;
      v68 = v30;
      sub_25B889650(2, &v70);
      sub_25B889650(1, v31);
      v20 = v52;
      v66 = v57;
      v67 = v44;
      sub_25B889664(&v66, v31, v32, v33);
      v34 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v66 = v58;
        v67 = v45;
        sub_25B889664(&v66, &v70, &v69, &v68);
        v26[1] = 0;
        v66 = v59;
        v67 = v47;
        sub_25B889664(&v66, &v70, &v69, &v68);
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to lock SCPreferences: %@", v28, 0xCu);
        sub_25B8896B0(v29, 1, v27);
        sub_25B8896B0(v30, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v50);
    (*(v62 + 8))(v65, v61);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v35.n128_u64[1];
    v23 = v36;
    v24 = v37;
    v26[0] = v21;
    *v25 = v35.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25B92D4C0()
{
  v53 = "unlock()";
  v54 = sub_25B910408;
  v55 = sub_25B8A3C9C;
  v56 = sub_25B8A3CE8;
  v57 = sub_25B88B5F4;
  v58 = sub_25B88B5F4;
  v59 = sub_25B8A3EB8;
  v76 = 0;
  v71 = 0uLL;
  v72 = 0;
  v61 = sub_25B946C48();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v26 - v64;
  v76 = MEMORY[0x28223BE20](v60);
  result = SCPreferencesUnlock(v76);
  if (!result)
  {
    v1 = v65;
    static SCError.current(_:)(v53, 8uLL, 2u, &v73);
    v35 = v73;
    v36 = v74;
    v37 = v75;
    v71 = v73;
    LOBYTE(v72) = v74;
    HIDWORD(v72) = v75;
    v2 = sub_25B92A010();
    (*(v62 + 16))(v1, v2, v61);
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
    *(v7 + 16) = v54;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v42;
    v43 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v47 = v11;
    *(v11 + 16) = v56;
    *(v11 + 24) = v12;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v46 = sub_25B947838();
    v48 = v13;

    v14 = v44;
    v15 = v48;
    *v48 = v57;
    v15[1] = v14;

    v16 = v45;
    v17 = v48;
    v48[2] = v58;
    v17[3] = v16;

    v18 = v47;
    v19 = v48;
    v48[4] = v59;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v50, v51))
    {
      v28 = sub_25B9474D8();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v29 = sub_25B8895FC(1, v27, v27);
      v30 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v31 = &v70;
      v70 = v28;
      v32 = &v69;
      v69 = v29;
      v33 = &v68;
      v68 = v30;
      sub_25B889650(2, &v70);
      sub_25B889650(1, v31);
      v20 = v52;
      v66 = v57;
      v67 = v44;
      sub_25B889664(&v66, v31, v32, v33);
      v34 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v66 = v58;
        v67 = v45;
        sub_25B889664(&v66, &v70, &v69, &v68);
        v26[1] = 0;
        v66 = v59;
        v67 = v47;
        sub_25B889664(&v66, &v70, &v69, &v68);
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to unlock SCPreferences: %@", v28, 0xCu);
        sub_25B8896B0(v29, 1, v27);
        sub_25B8896B0(v30, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v50);
    (*(v62 + 8))(v65, v61);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v35.n128_u64[1];
    v23 = v36;
    v24 = v37;
    v26[0] = v21;
    *v25 = v35.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    return swift_willThrow();
  }

  return result;
}

uint64_t SCPreferencesRef.withLock<A>(lockRetryLimit:_:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v8;
  *(v9 + 120) = v22;
  *(v9 + 112) = a8;
  *(v9 + 104) = a7;
  *(v9 + 33) = a3;
  *(v9 + 96) = a2;
  *(v9 + 88) = a1;
  *(v9 + 136) = swift_getObjectType();
  *(v9 + 72) = v9;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 80) = 0;
  v10 = sub_25B946E58();
  *(v9 + 144) = v10;
  *(v9 + 152) = *(v10 - 8);
  *(v9 + 160) = swift_task_alloc();
  v11 = sub_25B946E88();
  *(v9 + 168) = v11;
  *(v9 + 176) = *(v11 - 8);
  *(v9 + 184) = swift_task_alloc();
  v12 = sub_25B946E68();
  *(v9 + 192) = v12;
  *(v9 + 200) = *(v12 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 56) = a2;
  *(v9 + 64) = a3 & 1;
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 48) = a8;
  *(v9 + 80) = v8;

  return MEMORY[0x2822009F8](sub_25B92DF0C, 0);
}

uint64_t sub_25B92DF0C()
{
  v9 = *(v0 + 208);
  v7 = *(v0 + 200);
  v8 = *(v0 + 192);
  v15 = *(v0 + 136);
  v10 = *(v0 + 128);
  v16 = *(v0 + 120);
  v14 = *(v0 + 112);
  v13 = *(v0 + 104);
  v12 = *(v0 + 33);
  v11 = *(v0 + 96);
  *(v0 + 72) = v0;
  sub_25B8A4858();
  sub_25B92E4CC(v9);
  *(v0 + 216) = sub_25B9474A8();
  (*(v7 + 8))(v9, v8);
  MEMORY[0x277D82BE0](v10);

  v18 = swift_allocObject();
  *(v0 + 224) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v10;
  *(v18 + 32) = v11;
  *(v18 + 40) = v12 & 1;
  *(v18 + 48) = v13;
  *(v18 + 56) = v14;
  *(v18 + 64) = v15;
  sub_25B929F3C();
  sub_25B929F60();
  v1 = swift_task_alloc();
  v17[29] = v1;
  *v1 = v17[9];
  v1[1] = sub_25B92E13C;
  v2 = v17[23];
  v3 = v17[20];
  v4 = v17[15];
  v5 = v17[11];

  return sub_25B9063D4(v5, 0, v2, v3, sub_25B938464, v18, v4);
}

uint64_t sub_25B92E13C()
{
  v8 = *v1;
  v8[9] = *v1;
  v8[30] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25B92E388, 0);
  }

  else
  {
    v6 = v8[27];
    v7 = v8[23];
    v4 = v8[22];
    v5 = v8[21];
    (*(v8[19] + 8))();
    (*(v4 + 8))(v7, v5);

    v2 = *(v8[9] + 8);

    return v2();
  }
}

uint64_t sub_25B92E388()
{
  v6 = v0[27];
  v7 = v0[23];
  v4 = v0[22];
  v5 = v0[21];
  v1 = v0[19];
  v0[9] = v0;
  (*(v1 + 8))();
  (*(v4 + 8))(v7, v5);

  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[9] + 8);

  return v2();
}

uint64_t sub_25B92E4CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D851C8];
  v1 = sub_25B946E68();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void sub_25B92E538(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v93 = a2;
  v92 = a1;
  v85 = a7;
  v90 = 0;
  var20[0] = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v102 = 0;
  v86 = a3;
  var20[1] = a6;
  v94 = sub_25B946C48();
  v95 = *(v94 - 8);
  v96 = v95;
  v97 = *(v95 + 64);
  v98 = v26 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  var20[0] = MEMORY[0x28223BE20](v92);
  v118 = v8;
  v119 = v9 & 1;
  v116 = v10;
  v117 = v11;
  v115 = v12;
  v99 = v12;
  v100 = v12;
  for (i = v91; ; i = v30)
  {
    v13 = i;
    v81 = v100;
    v82 = v99;
    sub_25B92CD04();
    v83 = v13;
    v84 = v13;
    if (!v13)
    {

      v88(v92);
      v79 = 0;
      v80 = 0;
      v78 = 0;

      sub_25B92EEC8();
      return;
    }

    v72 = v84;
    v26[2] = 0;
    v35 = 0;
    v24 = v84;
    v114 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB688, &qword_25B94C730);
    v25 = swift_dynamicCast();
    v27 = v72;
    if ((v25 & 1) == 0)
    {
      v28 = v27;

      v64 = v28;
      return;
    }

    v73 = v110;
    v74 = v111;
    v75 = v112;
    v76 = v113;
    v77 = v72;
    if (v113 != 3005)
    {
      v29 = v77;

      v64 = v29;
      return;
    }

    v107 = v73;
    v108 = v74;
    LOBYTE(v109) = v75;
    HIDWORD(v109) = 3005;
    if (v86)
    {
      v70 = v82;
    }

    else
    {
      v71 = v93;
      v102 = v71;
      v65 = v73;
      v66 = v74;
      v67 = v75;
      v68 = v76;
      v69 = v72;
      if (v81 >= v71)
      {
        v62 = v69;
        v60 = v68;
        v59 = v67;
        v58 = v66;
        v57 = v65;
        sub_25B9115BC();
        v61 = 0;
        v14 = swift_allocError();
        v15 = v58;
        v16 = v59;
        v17 = v60;
        v63 = v14;
        *v18 = v57;
        *(v18 + 8) = v15;
        *(v18 + 16) = v16;
        *(v18 + 20) = v17;
        swift_willThrow();

        v64 = v63;
        return;
      }

      v70 = v81;
    }

    v19 = v98;
    v51 = v70;
    v20 = sub_25B92A010();
    (*(v96 + 16))(v19, v20, v94);
    v55 = sub_25B946C18();
    v52 = v55;
    v54 = sub_25B947458();
    v53 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v56 = sub_25B947838();
    if (os_log_type_enabled(v55, v54))
    {
      v47 = v35;
      v40 = sub_25B9474D8();
      v36 = v40;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v38 = 0;
      v41 = sub_25B8895FC(0, v37, v37);
      v39 = v41;
      v42 = sub_25B8895FC(v38, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v106 = v40;
      v105 = v41;
      v104 = v42;
      v43 = 0;
      v44 = &v106;
      sub_25B889650(0, &v106);
      sub_25B889650(v43, v44);
      v103 = v56;
      v48 = &a8;
      MEMORY[0x28223BE20](&a8);
      v45 = var20;
      var20[2] = v21;
      var20[3] = &v105;
      var20[4] = &v104;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      v22 = v47;
      sub_25B947158();
      v49 = v22;
      v50 = v48;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v52, v53, "Synchronizing and trying to lock again", v36, 2u);
        v33 = 0;
        sub_25B8896B0(v39, 0, v37);
        sub_25B8896B0(v42, v33, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();

        v34 = v49;
      }
    }

    else
    {

      v34 = v35;
    }

    v31 = v34;

    (*(v96 + 8))(v98, v94);
    SCPreferencesRef.synchronize()();
    v23 = __OFADD__(v51, 1);
    v32 = v51 + 1;
    if (v23)
    {
      break;
    }

    v30 = v31;
    v115 = v32;

    v99 = v32;
    v100 = v32;
  }

  __break(1u);
}

uint64_t sub_25B92EF2C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B92EFF0(uint64_t a1)
{
  v10 = a1;
  v13 = 0;
  v12 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v7 + 16))();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation, v6, v9);
  (*(v7 + 8))(v10, v9);
  return v11;
}

uint64_t sub_25B92F130()
{
  v3 = OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t SCPreferencesRef.callback(callback:context:)(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v65 = a2;
  v58 = "callback(callback:context:)";
  v59 = sub_25B910408;
  v60 = sub_25B8A3C9C;
  v61 = sub_25B8A3CE8;
  v62 = sub_25B88B5F4;
  v63 = sub_25B88B5F4;
  v64 = sub_25B8A3EB8;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v78 = 0uLL;
  v79 = 0;
  v68 = sub_25B946C48();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v67);
  v72 = v31 - v71;
  v86 = v3;
  v85 = v4;
  v84 = v2;
  result = SCPreferencesSetCallback(v2, v3, v4);
  v83 = result != 0;
  if (!result)
  {
    v6 = v72;
    static SCError.current(_:)(v58, 0x1BuLL, 2u, &v80);
    v40 = v80;
    v41 = v81;
    v42 = v82;
    v78 = v80;
    LOBYTE(v79) = v81;
    HIDWORD(v79) = v82;
    v7 = sub_25B92A010();
    (*(v69 + 16))(v6, v7, v68);
    v46 = 7;
    v8 = swift_allocObject();
    v9 = v40.n128_u64[1];
    v10 = v41;
    v11 = v42;
    v44 = v8;
    *(v8 + 16) = v40.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v55 = sub_25B946C18();
    v56 = sub_25B947458();
    v43 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = 64;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = 32;
    v12 = swift_allocObject();
    v13 = v44;
    v47 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v47;
    v48 = v14;
    *(v14 + 16) = v60;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v48;
    v52 = v16;
    *(v16 + 16) = v61;
    *(v16 + 24) = v17;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v51 = sub_25B947838();
    v53 = v18;

    v19 = v49;
    v20 = v53;
    *v53 = v62;
    v20[1] = v19;

    v21 = v50;
    v22 = v53;
    v53[2] = v63;
    v22[3] = v21;

    v23 = v52;
    v24 = v53;
    v53[4] = v64;
    v24[5] = v23;
    sub_25B8860FC();

    if (os_log_type_enabled(v55, v56))
    {
      v33 = sub_25B9474D8();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v34 = sub_25B8895FC(1, v32, v32);
      v35 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v36 = &v77;
      v77 = v33;
      v37 = &v76;
      v76 = v34;
      v38 = &v75;
      v75 = v35;
      sub_25B889650(2, &v77);
      sub_25B889650(1, v36);
      v25 = v57;
      v73 = v62;
      v74 = v49;
      sub_25B889664(&v73, v36, v37, v38);
      v39 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v73 = v63;
        v74 = v50;
        sub_25B889664(&v73, &v77, &v76, &v75);
        v31[2] = 0;
        v73 = v64;
        v74 = v52;
        sub_25B889664(&v73, &v77, &v76, &v75);
        _os_log_impl(&dword_25B859000, v55, v56, "Unable to set callback: %@", v33, 0xCu);
        sub_25B8896B0(v34, 1, v32);
        sub_25B8896B0(v35, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v55);
    (*(v69 + 8))(v72, v68);
    sub_25B9115BC();
    v26 = swift_allocError();
    v27 = v40.n128_u64[1];
    v28 = v41;
    v29 = v42;
    v31[1] = v26;
    *v30 = v40.n128_u64[0];
    *(v30 + 8) = v27;
    *(v30 + 16) = v28;
    *(v30 + 20) = v29;
    return swift_willThrow();
  }

  return result;
}

uint64_t SCPreferencesRef.dispatchQueue(_:)(uint64_t a1)
{
  v63 = a1;
  v56 = "dispatchQueue(_:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v81 = 0;
  v80 = 0;
  v75 = 0uLL;
  v76 = 0;
  v65 = sub_25B946C48();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v64);
  v69 = v29 - v68;
  v81 = v2;
  v80 = v1;
  result = SCPreferencesSetDispatchQueue(v1, v2);
  if (!result)
  {
    v4 = v69;
    v41 = 17;
    static SCError.current(_:)(v56, 0x11uLL, 2u, &v77);
    v38 = v77;
    v39 = v78;
    v40 = v79;
    v75 = v77;
    LOBYTE(v76) = v78;
    HIDWORD(v76) = v79;
    v5 = sub_25B92A010();
    (*(v66 + 16))(v4, v5, v65);
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
      v34 = &v74;
      v74 = v31;
      v35 = &v73;
      v73 = v32;
      v36 = &v72;
      v72 = v33;
      sub_25B889650(2, &v74);
      sub_25B889650(1, v34);
      v23 = v55;
      v70 = v60;
      v71 = v47;
      sub_25B889664(&v70, v34, v35, v36);
      v37 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v70 = v61;
        v71 = v48;
        sub_25B889664(&v70, &v74, &v73, &v72);
        v29[1] = 0;
        v70 = v62;
        v71 = v50;
        sub_25B889664(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to set dispatch queue: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v66 + 8))(v69, v65);
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
    return swift_willThrow();
  }

  return result;
}

uint64_t SCPreferencesRef.notifications(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v10 = a1;
  v8 = a2;
  v9 = a3;
  v14 = sub_25B93873C;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB780, &qword_25B94C8B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v8 - v11;
  v21 = MEMORY[0x28223BE20](v10);
  v22 = v5;
  v23 = v6;
  v20 = v4;
  MEMORY[0x277D82BE0](v4);
  v15 = &v18;
  v19 = v4;
  v16 = type metadata accessor for SCPreferencesNotification(0);
  sub_25B914F5C();
  sub_25B914F70(v13);
  sub_25B947348();
  return MEMORY[0x277D82BD8](v17);
}

uint64_t sub_25B930354(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v48 = a2;
  v49 = sub_25B930B5C;
  v50 = sub_25B930B74;
  v51 = sub_25B930CDC;
  v53 = sub_25B930F18;
  v29 = sub_25B939420;
  __b[5] = *MEMORY[0x277D85DE8];
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v52 = __b;
  memset(__b, 0, 0x28uLL);
  v60 = 0;
  v57 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7A0, &qword_25B94C8D0);
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v34 = &v14[-v33];
  v41 = 0;
  v35 = (*(*(sub_25B947478() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v36 = &v14[-v35];
  v37 = (*(*(sub_25B947468() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v38 = &v14[-v37];
  v2 = sub_25B946E88();
  v39 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v40 = &v14[-v39];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  v43 = *(v45 - 8);
  v44 = v45 - 8;
  v42 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v41);
  v47 = &v14[-v42];
  v63 = v4;
  v62 = v5;
  _s4InfoCMa_0(v3);
  (*(v43 + 16))(v47, v46, v45);
  v54 = sub_25B92EFA4(v47);
  v61 = v54;
  __b[0] = 1;
  __b[1] = v54;
  __b[2] = v49;
  __b[3] = v50;
  __b[4] = v51;
  SCPreferencesRef.callback(callback:context:)(v53, v52);
  v55 = 0;
  v56 = 0;
  v26 = 0;
  v19 = sub_25B8A4858();
  v15 = 30;
  v6 = sub_25B947818();
  v21 = &v58;
  v58 = v6;
  v59 = v7;
  v18 = 1;
  v8 = sub_25B946F48("com.apple.Manta.SCPreferences.", v15, 1);
  v16 = v9;
  MEMORY[0x25F8715F0](v8);

  v17 = v66;
  v66[0] = __b[0];
  v66[1] = __b[1];
  v66[2] = __b[2];
  v66[3] = __b[3];
  v66[4] = __b[4];
  type metadata accessor for SCPreferencesContext(v26);
  sub_25B9477D8();
  v10 = sub_25B946F48("", v26, v18 & 1);
  v20 = v11;
  MEMORY[0x25F8715F0](v10);

  v23 = v58;
  v22 = v59;
  sub_25B946ED8();
  sub_25B86AEEC(v21);
  v24 = sub_25B946FE8();
  v25 = v12;
  sub_25B89CE88();
  sub_25B89CEA0();
  sub_25B89CF40(v36);
  v27 = sub_25B947498();
  v57 = v27;
  MEMORY[0x277D82BE0](v27);
  SCPreferencesRef.dispatchQueue(_:)(v27);
  v28 = 0;
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BE0](v48);
  *(swift_allocObject() + 16) = v48;
  sub_25B9472C8();
  v64 = 1;
  v65 = 0;
  sub_25B9472E8();
  (*(v31 + 8))(v34, v30);
  sub_25B913870();
}

uint64_t sub_25B930B8C(uint64_t a1)
{
  v7[3] = a1;

  v7[2] = a1;
  v7[0] = sub_25B947818();
  v7[1] = v1;
  v2 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v2);

  _s4InfoCMa_0(0);
  sub_25B9477D8();
  v3 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v3);

  sub_25B946ED8();
  sub_25B86AEEC(v7);
  sub_25B946FE8();
  v6 = sub_25B946F58();
  MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BD8](v6);

  return v6;
}

uint64_t sub_25B930CF4(uint64_t a1, int a2, uint64_t a3)
{
  v15 = a1;
  v13 = a2;
  v14 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB778, &qword_25B94C8B0);
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v12 = v7 - v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB7A0, &qword_25B94C8D0);
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v15);
  v20 = v7 - v19;
  v25 = result;
  v24 = v4;
  v23 = v5;
  if (v5)
  {
    v7[1] = v14;
    v6 = v12;
    v7[0] = v14;
    v22 = v14;

    (*(v9 + 16))(v6, v7[0] + OBJC_IVAR____TtCE11NetworkInfoaSo16SCPreferencesRef4Info_continuation, v8);

    v21 = v13;
    sub_25B9472F8();
    (*(v9 + 8))(v12, v8);
    return (*(v17 + 8))(v20, v16);
  }

  return result;
}

uint64_t sub_25B930F18(uint64_t a1, int a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  sub_25B930CF4(a1, a2, a3);
  return MEMORY[0x277D82BD8](a1);
}

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.createBridgeInterface()()
{
  v58 = "createBridgeInterface()";
  v59 = sub_25B910408;
  v60 = sub_25B8A3C9C;
  v61 = sub_25B8A3CE8;
  v62 = sub_25B88B5F4;
  v63 = sub_25B88B5F4;
  v64 = sub_25B8A3EB8;
  v84 = 0;
  v83 = 0;
  v78 = 0uLL;
  v79 = 0;
  v72 = 0;
  v65 = sub_25B946C48();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = v26 - v68;
  v84 = MEMORY[0x28223BE20](v70);
  MEMORY[0x277D82BE0](v84);
  v71 = SCBridgeInterfaceCreate();
  MEMORY[0x277D82BD8](v70);
  v83 = v71;
  if (v71)
  {
    v56 = v71;
    v54 = v71;
    MEMORY[0x277D82BE0](v71);
    MEMORY[0x277D82BE0](v54);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v54);
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v53 = v55;
  if (v55)
  {
    v52 = v53;
    result = v53;
    v72 = v53;
  }

  else
  {
    v1 = v69;
    static SCError.current(_:)(v58, 0x17uLL, 2u, &v80);
    v35 = v80;
    v36 = v81;
    v37 = v82;
    v78 = v80;
    LOBYTE(v79) = v81;
    HIDWORD(v79) = v82;
    v2 = sub_25B92A010();
    (*(v66 + 16))(v1, v2, v65);
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
    *(v7 + 16) = v59;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v42;
    v43 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v47 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v46 = sub_25B947838();
    v48 = v13;

    v14 = v44;
    v15 = v48;
    *v48 = v62;
    v15[1] = v14;

    v16 = v45;
    v17 = v48;
    v48[2] = v63;
    v17[3] = v16;

    v18 = v47;
    v19 = v48;
    v48[4] = v64;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v50, v51))
    {
      v28 = sub_25B9474D8();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v29 = sub_25B8895FC(1, v27, v27);
      v30 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v31 = &v77;
      v77 = v28;
      v32 = &v76;
      v76 = v29;
      v33 = &v75;
      v75 = v30;
      sub_25B889650(2, &v77);
      sub_25B889650(1, v31);
      v20 = v57;
      v73 = v62;
      v74 = v44;
      sub_25B889664(&v73, v31, v32, v33);
      v34 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v73 = v63;
        v74 = v45;
        sub_25B889664(&v73, &v77, &v76, &v75);
        v26[1] = 0;
        v73 = v64;
        v74 = v47;
        sub_25B889664(&v73, &v77, &v76, &v75);
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to create bridge interface: %@", v28, 0xCu);
        sub_25B8896B0(v29, 1, v27);
        sub_25B8896B0(v30, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v50);
    (*(v66 + 8))(v69, v65);
    sub_25B9115BC();
    v21 = swift_allocError();
    v22 = v35.n128_u64[1];
    v23 = v36;
    v24 = v37;
    v26[0] = v21;
    *v25 = v35.n128_u64[0];
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 20) = v24;
    swift_willThrow();
    return v26[2];
  }

  return result;
}

uint64_t SCPreferencesRef.bridgeInterfaces()()
{
  v66 = 0;
  v65 = 0;
  v50 = 0;
  v60 = 0;
  v51 = sub_25B946C48();
  v52 = *(v51 - 8);
  v53 = v52;
  MEMORY[0x28223BE20](v51 - 8);
  v54 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v0;
  v2 = v0;
  v56 = SCBridgeInterfaceCopyAll();
  v55 = v56;

  v65 = v56;
  if (v56)
  {
    v49 = v55;
    v47 = v55;
    v3 = v55;
    v4 = v47;

    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v46 = v48;
  if (!v48)
  {
    v7 = v54;
    v8 = sub_25B92A010();
    (*(v53 + 16))(v7, v8, v51);
    v33 = sub_25B946C18();
    v30 = v33;
    v32 = sub_25B947458();
    v31 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v34 = sub_25B947838();
    if (os_log_type_enabled(v33, v32))
    {
      v9 = v50;
      v21 = sub_25B9474D8();
      v17 = v21;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v19 = 0;
      v22 = sub_25B8895FC(0, v18, v18);
      v20 = v22;
      v23 = sub_25B8895FC(v19, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v64 = v21;
      v63 = v22;
      v62 = v23;
      v24 = 0;
      v25 = &v64;
      sub_25B889650(0, &v64);
      sub_25B889650(v24, v25);
      v61 = v34;
      v26 = v12;
      MEMORY[0x28223BE20](v12);
      v27 = &v12[-6];
      v12[-4] = v10;
      v12[-3] = &v63;
      v12[-2] = &v62;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();
      v29 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v30, v31, "Unexpected nil list of bridge interfaces.", v17, 2u);
        v15 = 0;
        sub_25B8896B0(v20, 0, v18);
        sub_25B8896B0(v23, v15, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();

        v16 = v29;
      }
    }

    else
    {

      v16 = v50;
    }

    v13 = v16;

    (*(v53 + 8))(v54, v51);
    v12[0] = 0;
    v12[1] = type metadata accessor for SCNetworkInterface(0);
    v14 = sub_25B947838();
    v36 = v14;
    v37 = v13;
    return v36;
  }

  v45 = v46;
  v43 = v46;
  v60 = v46;
  v5 = v46;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {

LABEL_8:
    v40 = 0;
    goto LABEL_9;
  }

  v42 = v44;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  v6 = v42;
  sub_25B9176E8();
  sub_25B9478B8();

  if (!v57)
  {
    goto LABEL_8;
  }

  v40 = v57;
LABEL_9:
  v58 = v40;
  if (v40)
  {
    v59 = v58;
  }

  else
  {
    v38 = 0;
    v39 = type metadata accessor for SCNetworkInterface(0);
    v59 = sub_25B947838();
    if (v58)
    {
      sub_25B86CFA0(&v58);
    }
  }

  v35 = v59;

  v36 = v35;
  v37 = v50;
  return v36;
}

id SCPreferencesRef.bridgeInterface(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v118 = a2;
  v117 = a1;
  v116 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142[1] = 0;
  v142[0] = 0;
  v135 = 0;
  v134 = 0;
  v119 = sub_25B946C48();
  v120 = *(v119 - 8);
  v121 = v120;
  v122 = *(v120 + 64);
  v3 = MEMORY[0x28223BE20](v117);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v32 - v124;
  v4 = MEMORY[0x28223BE20](v3);
  v125 = v32 - v124;
  v144 = v4;
  v145 = v5;
  v143 = v2;
  v141 = SCPreferencesRef.bridgeInterfaces()();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v127; ; i = v104)
  {
    v114 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v115 = v140;
    if (!v140)
    {
      break;
    }

    v113 = v115;
    v6 = v114;
    v109 = v115;
    v135 = v115;
    v7 = v117();
    v110 = v6;
    v111 = v7;
    v112 = v6;
    if (v6)
    {
      v14 = v123;
      v63 = v112;
      v62 = 0;
      v15 = v112;
      v134 = v63;
      v16 = sub_25B92A010();
      (*(v121 + 16))(v14, v16, v119);
      v17 = v63;
      v71 = 7;
      v69 = swift_allocObject();
      *(v69 + 16) = v63;
      sub_25B8A1C38();

      v82 = sub_25B946C18();
      v64 = v82;
      v81 = sub_25B947448();
      v65 = v81;
      v66 = 17;
      v75 = swift_allocObject();
      v67 = v75;
      *(v75 + 16) = 64;
      v76 = swift_allocObject();
      v68 = v76;
      *(v76 + 16) = 8;
      v70 = 32;
      v18 = swift_allocObject();
      v19 = v69;
      v72 = v18;
      *(v18 + 16) = sub_25B8A3B24;
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v72;
      v73 = v20;
      *(v20 + 16) = sub_25B8A3C9C;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v73;
      v79 = v22;
      v74 = v22;
      *(v22 + 16) = sub_25B8A3CE8;
      *(v22 + 24) = v23;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v77 = sub_25B947838();
      v78 = v24;

      v25 = v75;
      v26 = v78;
      *v78 = sub_25B88B5F4;
      v26[1] = v25;

      v27 = v76;
      v28 = v78;
      v78[2] = sub_25B88B5F4;
      v28[3] = v27;

      v29 = v78;
      v30 = v79;
      v78[4] = sub_25B8A3EB8;
      v29[5] = v30;
      sub_25B8860FC();

      if (os_log_type_enabled(v82, v81))
      {
        v56 = v62;
        v51 = sub_25B9474D8();
        v48 = v51;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v54 = 1;
        v52 = sub_25B8895FC(1, v49, v49);
        v50 = v52;
        v53 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v133 = v51;
        v132 = v52;
        v131 = v53;
        v55 = &v133;
        sub_25B889650(2, &v133);
        sub_25B889650(v54, v55);
        v31 = v56;
        v129 = sub_25B88B5F4;
        v130 = v67;
        sub_25B889664(&v129, v55, &v132, &v131);
        v57 = v31;
        v58 = v67;
        v59 = v68;
        v60 = v74;
        v61 = v31;
        if (v31)
        {
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = 0;
          v32[2] = v60;
          v32[1] = v59;

          __break(1u);
        }

        else
        {
          v129 = sub_25B88B5F4;
          v130 = v68;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v38 = 0;
          v39 = v67;
          v40 = v68;
          v41 = v74;
          v42 = 0;
          v129 = sub_25B8A3EB8;
          v130 = v74;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v33 = 0;
          v34 = v67;
          v35 = v68;
          v36 = v74;
          v37 = 0;
          _os_log_impl(&dword_25B859000, v64, v65, "Ignoring interface interface: %@", v48, 0xCu);
          sub_25B8896B0(v50, 1, v49);
          sub_25B8896B0(v53, 0, MEMORY[0x277D84F70] + 8);
          sub_25B9474B8();

          v47 = v33;
        }
      }

      else
      {

        v47 = v62;
      }

      v32[0] = v47;

      (*(v121 + 8))(v123, v119);
      v105 = v32[0];
    }

    else
    {
      v108 = v109;
      if (v111)
      {
        v107 = v108;
        v106 = v110;
        sub_25B86CFA0(v142);
        return v107;
      }

      v105 = v110;
    }

    v104 = v105;
  }

  v9 = v125;
  sub_25B86CFA0(v142);
  v10 = sub_25B92A010();
  (*(v121 + 16))(v9, v10, v119);
  v102 = sub_25B946C18();
  v99 = v102;
  v101 = sub_25B947458();
  v100 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v103 = sub_25B947838();
  if (os_log_type_enabled(v102, v101))
  {
    v98 = v114;
    v90 = sub_25B9474D8();
    v86 = v90;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v88 = 0;
    v91 = sub_25B8895FC(0, v87, v87);
    v89 = v91;
    v92 = sub_25B8895FC(v88, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v139 = v90;
    v138 = v91;
    v137 = v92;
    v93 = 0;
    v94 = &v139;
    sub_25B889650(0, &v139);
    sub_25B889650(v93, v94);
    v136 = v103;
    v95 = v32;
    MEMORY[0x28223BE20](v32);
    v96 = &v32[-6];
    v32[-4] = v11;
    v32[-3] = &v138;
    v32[-2] = &v137;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
    sub_25B8A3F58();
    v12 = v98;
    sub_25B947158();
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25B859000, v99, v100, "Bridge interface matching predicate not found.", v86, 2u);
      v85 = 0;
      sub_25B8896B0(v89, 0, v87);
      sub_25B8896B0(v92, v85, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  (*(v121 + 8))(v125, v119);
  sub_25B9115BC();
  v83 = 0;
  v84 = swift_allocError();
  SCError.init(context:rawValue:)("bridgeInterface(matching:)", 0x1AuLL, 2u, 1004, v13);
  swift_willThrow();
  return v83;
}

uint64_t SCPreferencesRef.bridgeableInterfaces()()
{
  v66 = 0;
  v65 = 0;
  v50 = 0;
  v60 = 0;
  v51 = sub_25B946C48();
  v52 = *(v51 - 8);
  v53 = v52;
  MEMORY[0x28223BE20](v51 - 8);
  v54 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v0;
  v2 = v0;
  v56 = SCBridgeInterfaceCopyAvailableMemberInterfaces();
  v55 = v56;

  v65 = v56;
  if (v56)
  {
    v49 = v55;
    v47 = v55;
    v3 = v55;
    v4 = v47;

    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v46 = v48;
  if (!v48)
  {
    v7 = v54;
    v8 = sub_25B92A010();
    (*(v53 + 16))(v7, v8, v51);
    v33 = sub_25B946C18();
    v30 = v33;
    v32 = sub_25B947458();
    v31 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v34 = sub_25B947838();
    if (os_log_type_enabled(v33, v32))
    {
      v9 = v50;
      v21 = sub_25B9474D8();
      v17 = v21;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v19 = 0;
      v22 = sub_25B8895FC(0, v18, v18);
      v20 = v22;
      v23 = sub_25B8895FC(v19, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v64 = v21;
      v63 = v22;
      v62 = v23;
      v24 = 0;
      v25 = &v64;
      sub_25B889650(0, &v64);
      sub_25B889650(v24, v25);
      v61 = v34;
      v26 = v12;
      MEMORY[0x28223BE20](v12);
      v27 = &v12[-6];
      v12[-4] = v10;
      v12[-3] = &v63;
      v12[-2] = &v62;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();
      v29 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v30, v31, "Unexpected nil list of bridgeable interfaces.", v17, 2u);
        v15 = 0;
        sub_25B8896B0(v20, 0, v18);
        sub_25B8896B0(v23, v15, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();

        v16 = v29;
      }
    }

    else
    {

      v16 = v50;
    }

    v13 = v16;

    (*(v53 + 8))(v54, v51);
    v12[0] = 0;
    v12[1] = type metadata accessor for SCNetworkInterface(0);
    v14 = sub_25B947838();
    v36 = v14;
    v37 = v13;
    return v36;
  }

  v45 = v46;
  v43 = v46;
  v60 = v46;
  v5 = v46;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {

LABEL_8:
    v40 = 0;
    goto LABEL_9;
  }

  v42 = v44;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  v6 = v42;
  sub_25B9176E8();
  sub_25B9478B8();

  if (!v57)
  {
    goto LABEL_8;
  }

  v40 = v57;
LABEL_9:
  v58 = v40;
  if (v40)
  {
    v59 = v58;
  }

  else
  {
    v38 = 0;
    v39 = type metadata accessor for SCNetworkInterface(0);
    v59 = sub_25B947838();
    if (v58)
    {
      sub_25B86CFA0(&v58);
    }
  }

  v35 = v59;

  v36 = v35;
  v37 = v50;
  return v36;
}

id SCPreferencesRef.bridgeableInterface(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v118 = a2;
  v117 = a1;
  v116 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142[1] = 0;
  v142[0] = 0;
  v135 = 0;
  v134 = 0;
  v119 = sub_25B946C48();
  v120 = *(v119 - 8);
  v121 = v120;
  v122 = *(v120 + 64);
  v3 = MEMORY[0x28223BE20](v117);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v32 - v124;
  v4 = MEMORY[0x28223BE20](v3);
  v125 = v32 - v124;
  v144 = v4;
  v145 = v5;
  v143 = v2;
  v141 = SCPreferencesRef.bridgeableInterfaces()();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v127; ; i = v104)
  {
    v114 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v115 = v140;
    if (!v140)
    {
      break;
    }

    v113 = v115;
    v6 = v114;
    v109 = v115;
    v135 = v115;
    v7 = v117();
    v110 = v6;
    v111 = v7;
    v112 = v6;
    if (v6)
    {
      v14 = v123;
      v63 = v112;
      v62 = 0;
      v15 = v112;
      v134 = v63;
      v16 = sub_25B92A010();
      (*(v121 + 16))(v14, v16, v119);
      v17 = v63;
      v71 = 7;
      v69 = swift_allocObject();
      *(v69 + 16) = v63;
      sub_25B8A1C38();

      v82 = sub_25B946C18();
      v64 = v82;
      v81 = sub_25B947448();
      v65 = v81;
      v66 = 17;
      v75 = swift_allocObject();
      v67 = v75;
      *(v75 + 16) = 64;
      v76 = swift_allocObject();
      v68 = v76;
      *(v76 + 16) = 8;
      v70 = 32;
      v18 = swift_allocObject();
      v19 = v69;
      v72 = v18;
      *(v18 + 16) = sub_25B8A3B24;
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v72;
      v73 = v20;
      *(v20 + 16) = sub_25B8A3C9C;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v73;
      v79 = v22;
      v74 = v22;
      *(v22 + 16) = sub_25B8A3CE8;
      *(v22 + 24) = v23;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v77 = sub_25B947838();
      v78 = v24;

      v25 = v75;
      v26 = v78;
      *v78 = sub_25B88B5F4;
      v26[1] = v25;

      v27 = v76;
      v28 = v78;
      v78[2] = sub_25B88B5F4;
      v28[3] = v27;

      v29 = v78;
      v30 = v79;
      v78[4] = sub_25B8A3EB8;
      v29[5] = v30;
      sub_25B8860FC();

      if (os_log_type_enabled(v82, v81))
      {
        v56 = v62;
        v51 = sub_25B9474D8();
        v48 = v51;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v54 = 1;
        v52 = sub_25B8895FC(1, v49, v49);
        v50 = v52;
        v53 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v133 = v51;
        v132 = v52;
        v131 = v53;
        v55 = &v133;
        sub_25B889650(2, &v133);
        sub_25B889650(v54, v55);
        v31 = v56;
        v129 = sub_25B88B5F4;
        v130 = v67;
        sub_25B889664(&v129, v55, &v132, &v131);
        v57 = v31;
        v58 = v67;
        v59 = v68;
        v60 = v74;
        v61 = v31;
        if (v31)
        {
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = 0;
          v32[2] = v60;
          v32[1] = v59;

          __break(1u);
        }

        else
        {
          v129 = sub_25B88B5F4;
          v130 = v68;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v38 = 0;
          v39 = v67;
          v40 = v68;
          v41 = v74;
          v42 = 0;
          v129 = sub_25B8A3EB8;
          v130 = v74;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v33 = 0;
          v34 = v67;
          v35 = v68;
          v36 = v74;
          v37 = 0;
          _os_log_impl(&dword_25B859000, v64, v65, "Ignoring bridgeable interface: %@", v48, 0xCu);
          sub_25B8896B0(v50, 1, v49);
          sub_25B8896B0(v53, 0, MEMORY[0x277D84F70] + 8);
          sub_25B9474B8();

          v47 = v33;
        }
      }

      else
      {

        v47 = v62;
      }

      v32[0] = v47;

      (*(v121 + 8))(v123, v119);
      v105 = v32[0];
    }

    else
    {
      v108 = v109;
      if (v111)
      {
        v107 = v108;
        v106 = v110;
        sub_25B86CFA0(v142);
        return v107;
      }

      v105 = v110;
    }

    v104 = v105;
  }

  v9 = v125;
  sub_25B86CFA0(v142);
  v10 = sub_25B92A010();
  (*(v121 + 16))(v9, v10, v119);
  v102 = sub_25B946C18();
  v99 = v102;
  v101 = sub_25B947458();
  v100 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v103 = sub_25B947838();
  if (os_log_type_enabled(v102, v101))
  {
    v98 = v114;
    v90 = sub_25B9474D8();
    v86 = v90;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v88 = 0;
    v91 = sub_25B8895FC(0, v87, v87);
    v89 = v91;
    v92 = sub_25B8895FC(v88, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v139 = v90;
    v138 = v91;
    v137 = v92;
    v93 = 0;
    v94 = &v139;
    sub_25B889650(0, &v139);
    sub_25B889650(v93, v94);
    v136 = v103;
    v95 = v32;
    MEMORY[0x28223BE20](v32);
    v96 = &v32[-6];
    v32[-4] = v11;
    v32[-3] = &v138;
    v32[-2] = &v137;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
    sub_25B8A3F58();
    v12 = v98;
    sub_25B947158();
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25B859000, v99, v100, "Bridgeable interface matching predicate not found.", v86, 2u);
      v85 = 0;
      sub_25B8896B0(v89, 0, v87);
      sub_25B8896B0(v92, v85, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  (*(v121 + 8))(v125, v119);
  sub_25B9115BC();
  v83 = 0;
  v84 = swift_allocError();
  SCError.init(context:rawValue:)("bridgeableInterface(matching:)", 0x1EuLL, 2u, 1004, v13);
  swift_willThrow();
  return v83;
}

SCNetworkServiceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.createService(interface:)(SCNetworkInterfaceRef interface)
{
  v64 = interface;
  v57 = "createService(interface:)";
  v58 = sub_25B910408;
  v59 = sub_25B8A3C9C;
  v60 = sub_25B8A3CE8;
  v61 = sub_25B88B5F4;
  v62 = sub_25B88B5F4;
  v63 = sub_25B8A3EB8;
  v84 = 0;
  v83 = 0;
  v78 = 0uLL;
  v79 = 0;
  v72 = 0;
  v66 = sub_25B946C48();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v65);
  v70 = v29 - v69;
  v84 = v2;
  v83 = v1;
  v71 = SCNetworkServiceCreate(v1, v2);
  if (v71)
  {
    v55 = v71;
    result = v71;
    v72 = v71;
  }

  else
  {
    v4 = v70;
    static SCError.current(_:)(v57, 0x19uLL, 2u, &v80);
    v38 = v80;
    v39 = v81;
    v40 = v82;
    v78 = v80;
    LOBYTE(v79) = v81;
    HIDWORD(v79) = v82;
    v5 = sub_25B92A010();
    (*(v67 + 16))(v4, v5, v66);
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
    *(v10 + 16) = v58;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v45;
    v46 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v50 = v14;
    *(v14 + 16) = v60;
    *(v14 + 24) = v15;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v16;

    v17 = v47;
    v18 = v51;
    *v51 = v61;
    v18[1] = v17;

    v19 = v48;
    v20 = v51;
    v51[2] = v62;
    v20[3] = v19;

    v21 = v50;
    v22 = v51;
    v51[4] = v63;
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
      v23 = v56;
      v73 = v61;
      v74 = v47;
      sub_25B889664(&v73, v34, v35, v36);
      v37 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v73 = v62;
        v74 = v48;
        sub_25B889664(&v73, &v77, &v76, &v75);
        v29[2] = 0;
        v73 = v63;
        v74 = v50;
        sub_25B889664(&v73, &v77, &v76, &v75);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to create network service: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v67 + 8))(v70, v66);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v38.n128_u64[1];
    v26 = v39;
    v27 = v40;
    v29[1] = v24;
    *v28 = v38.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
    return v29[3];
  }

  return result;
}

id SCPreferencesRef.service(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v128 = a2;
  v127 = a1;
  v125 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152[1] = 0;
  v152[0] = 0;
  v145 = 0;
  v144 = 0;
  v3 = v126;
  v129 = sub_25B946C48();
  v130 = *(v129 - 8);
  v131 = v130;
  v132 = *(v130 + 64);
  v4 = MEMORY[0x28223BE20](v127);
  v134 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v133 = &v34 - v134;
  v5 = MEMORY[0x28223BE20](v4);
  v135 = &v34 - v134;
  v154 = v5;
  v155 = v6;
  v153 = v2;
  v7 = SCPreferencesRef.services()();
  v136 = v3;
  v137 = v7;
  v138 = v3;
  if (v3)
  {
    result = v138;
    v91 = v138;
  }

  else
  {
    v151 = v137;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB758, &qword_25B94C898);
    sub_25B937FE4();
    sub_25B947418();
    for (i = v136; ; i = v111)
    {
      v121 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB770, &qword_25B94C8A0);
      sub_25B9475E8();
      v122 = v150;
      if (!v150)
      {
        break;
      }

      v120 = v122;
      v8 = v121;
      v116 = v122;
      v145 = v122;
      v9 = v127();
      v117 = v8;
      v118 = v9;
      v119 = v8;
      if (v8)
      {
        v16 = v133;
        v68 = v119;
        v67 = 0;
        v17 = v119;
        v144 = v68;
        v18 = sub_25B92A010();
        (*(v131 + 16))(v16, v18, v129);
        v19 = v68;
        v76 = 7;
        v74 = swift_allocObject();
        *(v74 + 16) = v68;
        sub_25B8A1C38();

        v87 = sub_25B946C18();
        v69 = v87;
        v86 = sub_25B947448();
        v70 = v86;
        v71 = 17;
        v80 = swift_allocObject();
        v72 = v80;
        *(v80 + 16) = 64;
        v81 = swift_allocObject();
        v73 = v81;
        *(v81 + 16) = 8;
        v75 = 32;
        v20 = swift_allocObject();
        v21 = v74;
        v77 = v20;
        *(v20 + 16) = sub_25B8A3B24;
        *(v20 + 24) = v21;
        v22 = swift_allocObject();
        v23 = v77;
        v78 = v22;
        *(v22 + 16) = sub_25B8A3C9C;
        *(v22 + 24) = v23;
        v24 = swift_allocObject();
        v25 = v78;
        v84 = v24;
        v79 = v24;
        *(v24 + 16) = sub_25B8A3CE8;
        *(v24 + 24) = v25;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
        v82 = sub_25B947838();
        v83 = v26;

        v27 = v80;
        v28 = v83;
        *v83 = sub_25B88B5F4;
        v28[1] = v27;

        v29 = v81;
        v30 = v83;
        v83[2] = sub_25B88B5F4;
        v30[3] = v29;

        v31 = v83;
        v32 = v84;
        v83[4] = sub_25B8A3EB8;
        v31[5] = v32;
        sub_25B8860FC();

        if (os_log_type_enabled(v87, v86))
        {
          v61 = v67;
          v56 = sub_25B9474D8();
          v53 = v56;
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
          v59 = 1;
          v57 = sub_25B8895FC(1, v54, v54);
          v55 = v57;
          v58 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v143 = v56;
          v142 = v57;
          v141 = v58;
          v60 = &v143;
          sub_25B889650(2, &v143);
          sub_25B889650(v59, v60);
          v33 = v61;
          v139 = sub_25B88B5F4;
          v140 = v72;
          sub_25B889664(&v139, v60, &v142, &v141);
          v62 = v33;
          v63 = v72;
          v64 = v73;
          v65 = v79;
          v66 = v33;
          if (v33)
          {
            v48 = v63;
            v49 = v64;
            v50 = v65;
            v51 = 0;
            v37 = v65;
            v36 = v64;

            __break(1u);
          }

          else
          {
            v139 = sub_25B88B5F4;
            v140 = v73;
            sub_25B889664(&v139, &v143, &v142, &v141);
            v43 = 0;
            v44 = v72;
            v45 = v73;
            v46 = v79;
            v47 = 0;
            v139 = sub_25B8A3EB8;
            v140 = v79;
            sub_25B889664(&v139, &v143, &v142, &v141);
            v38 = 0;
            v39 = v72;
            v40 = v73;
            v41 = v79;
            v42 = 0;
            _os_log_impl(&dword_25B859000, v69, v70, "Ignoring service service: %@", v53, 0xCu);
            sub_25B8896B0(v55, 1, v54);
            sub_25B8896B0(v58, 0, MEMORY[0x277D84F70] + 8);
            sub_25B9474B8();

            v52 = v38;
          }
        }

        else
        {

          v52 = v67;
        }

        v35 = v52;

        (*(v131 + 8))(v133, v129);
        v112 = v35;
      }

      else
      {
        v115 = v116;
        if (v118)
        {
          v114 = v115;
          v113 = v117;
          sub_25B86CFA0(v152);
          return v114;
        }

        v112 = v117;
      }

      v111 = v112;
    }

    v11 = v135;
    sub_25B86CFA0(v152);
    v12 = sub_25B92A010();
    (*(v131 + 16))(v11, v12, v129);
    v109 = sub_25B946C18();
    v106 = v109;
    v108 = sub_25B947458();
    v107 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v110 = sub_25B947838();
    if (os_log_type_enabled(v109, v108))
    {
      v105 = v121;
      v97 = sub_25B9474D8();
      v93 = v97;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v95 = 0;
      v98 = sub_25B8895FC(0, v94, v94);
      v96 = v98;
      v99 = sub_25B8895FC(v95, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v149 = v97;
      v148 = v98;
      v147 = v99;
      v100 = 0;
      v101 = &v149;
      sub_25B889650(0, &v149);
      sub_25B889650(v100, v101);
      v146 = v110;
      v102 = &v34;
      MEMORY[0x28223BE20](&v34);
      v103 = &v34 - 6;
      *(&v34 - 4) = v13;
      *(&v34 - 3) = &v148;
      *(&v34 - 2) = &v147;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      v14 = v105;
      sub_25B947158();
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25B859000, v106, v107, "Service matching predicate not found.", v93, 2u);
        v92 = 0;
        sub_25B8896B0(v96, 0, v94);
        sub_25B8896B0(v99, v92, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    (*(v131 + 8))(v135, v129);
    sub_25B9115BC();
    v89 = 0;
    v88 = swift_allocError();
    v90 = v88;
    SCError.init(context:rawValue:)("service(matching:)", 0x12uLL, 2u, 1004, v15);
    swift_willThrow();
    result = v90;
    v91 = v90;
  }

  return result;
}

SCNetworkSetRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.networkSet()()
{
  v54 = "networkSet()";
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
  v67 = SCNetworkSetCopyCurrent(v79);
  if (v67)
  {
    v52 = v67;
    result = v67;
    v68 = v67;
  }

  else
  {
    v1 = v66;
    static SCError.current(_:)(v54, 0xCuLL, 2u, &v76);
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v74 = v76;
    LOBYTE(v75) = v77;
    HIDWORD(v75) = v78;
    v2 = sub_25B92A010();
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
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to copy current network set: %@", v28, 0xCu);
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

SCNetworkInterfaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.createVLANInterface(physicalInterface:vlanTag:)(SCNetworkInterfaceRef physicalInterface, Swift::Int vlanTag)
{
  v72 = physicalInterface;
  v66 = vlanTag;
  v59 = "createVLANInterface(physicalInterface:vlanTag:)";
  v60 = sub_25B910408;
  v61 = sub_25B8A3C9C;
  v62 = sub_25B8A3CE8;
  v63 = sub_25B88B5F4;
  v64 = sub_25B88B5F4;
  v65 = sub_25B8A3EB8;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v82 = 0uLL;
  v83 = 0;
  v76 = 0;
  v67 = sub_25B946C48();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v66);
  v71 = v31 - v70;
  v89 = v4;
  v88 = v3;
  v87 = v2;
  v74 = sub_25B9473B8();
  v75 = SCVLANInterfaceCreate(v73, v72, v74);
  MEMORY[0x277D82BD8](v74);
  if (v75)
  {
    v57 = v75;
    result = v75;
    v76 = v75;
  }

  else
  {
    v6 = v71;
    static SCError.current(_:)(v59, 0x2FuLL, 2u, &v84);
    v40 = v84;
    v41 = v85;
    v42 = v86;
    v82 = v84;
    LOBYTE(v83) = v85;
    HIDWORD(v83) = v86;
    v7 = sub_25B92A010();
    (*(v68 + 16))(v6, v7, v67);
    v46 = 7;
    v8 = swift_allocObject();
    v9 = v40.n128_u64[1];
    v10 = v41;
    v11 = v42;
    v44 = v8;
    *(v8 + 16) = v40.n128_u64[0];
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    *(v8 + 36) = v11;
    sub_25B8A1C38();

    v55 = sub_25B946C18();
    v56 = sub_25B947458();
    v43 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = 64;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = 32;
    v12 = swift_allocObject();
    v13 = v44;
    v47 = v12;
    *(v12 + 16) = v60;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v47;
    v48 = v14;
    *(v14 + 16) = v61;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v48;
    v52 = v16;
    *(v16 + 16) = v62;
    *(v16 + 24) = v17;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v51 = sub_25B947838();
    v53 = v18;

    v19 = v49;
    v20 = v53;
    *v53 = v63;
    v20[1] = v19;

    v21 = v50;
    v22 = v53;
    v53[2] = v64;
    v22[3] = v21;

    v23 = v52;
    v24 = v53;
    v53[4] = v65;
    v24[5] = v23;
    sub_25B8860FC();

    if (os_log_type_enabled(v55, v56))
    {
      v33 = sub_25B9474D8();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v34 = sub_25B8895FC(1, v32, v32);
      v35 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v36 = &v81;
      v81 = v33;
      v37 = &v80;
      v80 = v34;
      v38 = &v79;
      v79 = v35;
      sub_25B889650(2, &v81);
      sub_25B889650(1, v36);
      v25 = v58;
      v77 = v63;
      v78 = v49;
      sub_25B889664(&v77, v36, v37, v38);
      v39 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v77 = v64;
        v78 = v50;
        sub_25B889664(&v77, &v81, &v80, &v79);
        v31[1] = 0;
        v77 = v65;
        v78 = v52;
        sub_25B889664(&v77, &v81, &v80, &v79);
        _os_log_impl(&dword_25B859000, v55, v56, "Unable to create vlan interface: %@", v33, 0xCu);
        sub_25B8896B0(v34, 1, v32);
        sub_25B8896B0(v35, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v55);
    (*(v68 + 8))(v71, v67);
    sub_25B9115BC();
    v26 = swift_allocError();
    v27 = v40.n128_u64[1];
    v28 = v41;
    v29 = v42;
    v31[0] = v26;
    *v30 = v40.n128_u64[0];
    *(v30 + 8) = v27;
    *(v30 + 16) = v28;
    *(v30 + 20) = v29;
    swift_willThrow();
    return v31[2];
  }

  return result;
}

uint64_t SCPreferencesRef.vlanInterfaces()()
{
  v8 = v0;
  v3 = SCVLANInterfaceCopyAll(v0);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
    MEMORY[0x277D82BE0](v4);
    sub_25B9176E8();
    sub_25B9478B8();
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      v2 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v3);
  }

  v2 = 0;
LABEL_6:
  v6 = v2;
  if (v2)
  {
    return v6;
  }

  type metadata accessor for SCNetworkInterface(0);
  return sub_25B947838();
}

id SCPreferencesRef.vlanInterface(matching:)(uint64_t (*a1)(void), uint64_t a2)
{
  v118 = a2;
  v117 = a1;
  v116 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142[1] = 0;
  v142[0] = 0;
  v135 = 0;
  v134 = 0;
  v119 = sub_25B946C48();
  v120 = *(v119 - 8);
  v121 = v120;
  v122 = *(v120 + 64);
  v3 = MEMORY[0x28223BE20](v117);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v32 - v124;
  v4 = MEMORY[0x28223BE20](v3);
  v125 = v32 - v124;
  v144 = v4;
  v145 = v5;
  v143 = v2;
  v141 = SCPreferencesRef.vlanInterfaces()();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB708, "\\z");
  sub_25B918968();
  sub_25B947418();
  for (i = v127; ; i = v104)
  {
    v114 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB720, "^z");
    sub_25B9475E8();
    v115 = v140;
    if (!v140)
    {
      break;
    }

    v113 = v115;
    v6 = v114;
    v109 = v115;
    v135 = v115;
    v7 = v117();
    v110 = v6;
    v111 = v7;
    v112 = v6;
    if (v6)
    {
      v14 = v123;
      v63 = v112;
      v62 = 0;
      v15 = v112;
      v134 = v63;
      v16 = sub_25B92A010();
      (*(v121 + 16))(v14, v16, v119);
      v17 = v63;
      v71 = 7;
      v69 = swift_allocObject();
      *(v69 + 16) = v63;
      sub_25B8A1C38();

      v82 = sub_25B946C18();
      v64 = v82;
      v81 = sub_25B947448();
      v65 = v81;
      v66 = 17;
      v75 = swift_allocObject();
      v67 = v75;
      *(v75 + 16) = 64;
      v76 = swift_allocObject();
      v68 = v76;
      *(v76 + 16) = 8;
      v70 = 32;
      v18 = swift_allocObject();
      v19 = v69;
      v72 = v18;
      *(v18 + 16) = sub_25B8A3B24;
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v72;
      v73 = v20;
      *(v20 + 16) = sub_25B8A3C9C;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v73;
      v79 = v22;
      v74 = v22;
      *(v22 + 16) = sub_25B8A3CE8;
      *(v22 + 24) = v23;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v77 = sub_25B947838();
      v78 = v24;

      v25 = v75;
      v26 = v78;
      *v78 = sub_25B88B5F4;
      v26[1] = v25;

      v27 = v76;
      v28 = v78;
      v78[2] = sub_25B88B5F4;
      v28[3] = v27;

      v29 = v78;
      v30 = v79;
      v78[4] = sub_25B8A3EB8;
      v29[5] = v30;
      sub_25B8860FC();

      if (os_log_type_enabled(v82, v81))
      {
        v56 = v62;
        v51 = sub_25B9474D8();
        v48 = v51;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v54 = 1;
        v52 = sub_25B8895FC(1, v49, v49);
        v50 = v52;
        v53 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v133 = v51;
        v132 = v52;
        v131 = v53;
        v55 = &v133;
        sub_25B889650(2, &v133);
        sub_25B889650(v54, v55);
        v31 = v56;
        v129 = sub_25B88B5F4;
        v130 = v67;
        sub_25B889664(&v129, v55, &v132, &v131);
        v57 = v31;
        v58 = v67;
        v59 = v68;
        v60 = v74;
        v61 = v31;
        if (v31)
        {
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = 0;
          v32[2] = v60;
          v32[1] = v59;

          __break(1u);
        }

        else
        {
          v129 = sub_25B88B5F4;
          v130 = v68;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v38 = 0;
          v39 = v67;
          v40 = v68;
          v41 = v74;
          v42 = 0;
          v129 = sub_25B8A3EB8;
          v130 = v74;
          sub_25B889664(&v129, &v133, &v132, &v131);
          v33 = 0;
          v34 = v67;
          v35 = v68;
          v36 = v74;
          v37 = 0;
          _os_log_impl(&dword_25B859000, v64, v65, "Ignoring vlan interface: %@", v48, 0xCu);
          sub_25B8896B0(v50, 1, v49);
          sub_25B8896B0(v53, 0, MEMORY[0x277D84F70] + 8);
          sub_25B9474B8();

          v47 = v33;
        }
      }

      else
      {

        v47 = v62;
      }

      v32[0] = v47;

      (*(v121 + 8))(v123, v119);
      v105 = v32[0];
    }

    else
    {
      v108 = v109;
      if (v111)
      {
        v107 = v108;
        v106 = v110;
        sub_25B86CFA0(v142);
        return v107;
      }

      v105 = v110;
    }

    v104 = v105;
  }

  v9 = v125;
  sub_25B86CFA0(v142);
  v10 = sub_25B92A010();
  (*(v121 + 16))(v9, v10, v119);
  v102 = sub_25B946C18();
  v99 = v102;
  v101 = sub_25B947458();
  v100 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v103 = sub_25B947838();
  if (os_log_type_enabled(v102, v101))
  {
    v98 = v114;
    v90 = sub_25B9474D8();
    v86 = v90;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v88 = 0;
    v91 = sub_25B8895FC(0, v87, v87);
    v89 = v91;
    v92 = sub_25B8895FC(v88, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v139 = v90;
    v138 = v91;
    v137 = v92;
    v93 = 0;
    v94 = &v139;
    sub_25B889650(0, &v139);
    sub_25B889650(v93, v94);
    v136 = v103;
    v95 = v32;
    MEMORY[0x28223BE20](v32);
    v96 = &v32[-6];
    v32[-4] = v11;
    v32[-3] = &v138;
    v32[-2] = &v137;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
    sub_25B8A3F58();
    v12 = v98;
    sub_25B947158();
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25B859000, v99, v100, "VLAN interface matching predicate not found.", v86, 2u);
      v85 = 0;
      sub_25B8896B0(v89, 0, v87);
      sub_25B8896B0(v92, v85, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }
  }

  else
  {
  }

  (*(v121 + 8))(v125, v119);
  sub_25B9115BC();
  v83 = 0;
  v84 = swift_allocError();
  SCError.init(context:rawValue:)("vlanInterface(matching:)", 0x18uLL, 2u, 1004, v13);
  swift_willThrow();
  return v83;
}

unint64_t sub_25B937FE4()
{
  v2 = qword_27FBAB768;
  if (!qword_27FBAB768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB758, &qword_25B94C898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB768);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B93840C()
{
  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t _s4InfoCMa_0(uint64_t a1)
{
  v2 = qword_27FBAB788;
  if (!qword_27FBAB788)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_25B939244(uint64_t a1)
{
  updated = sub_25B939318(319);
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

unint64_t sub_25B939318(uint64_t a1)
{
  v5 = qword_27FBAB798;
  if (!qword_27FBAB798)
  {
    type metadata accessor for SCPreferencesNotification(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
    v4 = sub_25B947318();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27FBAB798);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_25B939428()
{
  v2 = qword_27FBAB7A8;
  if (!qword_27FBAB7A8)
  {
    sub_25B946E58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB7A8);
    return WitnessTable;
  }

  return v2;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.vlanTag()()
{
  v56 = "vlanTag()";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v81 = 0;
  v76 = 0uLL;
  v77 = 0;
  v70 = 0;
  v64 = sub_25B946C48();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v26 - v67;
  v81 = MEMORY[0x28223BE20](v63);
  v69 = SCVLANInterfaceGetTag(v81);
  if (v69)
  {
    v54 = v69;
    v52 = v69;
    v70 = v69;
    MEMORY[0x277D82BE0](v69);
    v53 = [(__CFNumber *)v52 integerValue];
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v52);
    return v53;
  }

  else
  {
    v1 = v68;
    static SCError.current(_:)(v56, 9uLL, 2u, &v78);
    v35 = v78;
    v36 = v79;
    v37 = v80;
    v76 = v78;
    LOBYTE(v77) = v79;
    HIDWORD(v77) = v80;
    v2 = sub_25B917470();
    (*(v65 + 16))(v1, v2, v64);
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
    *(v7 + 16) = v57;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v42;
    v43 = v9;
    *(v9 + 16) = v58;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v43;
    v47 = v11;
    *(v11 + 16) = v59;
    *(v11 + 24) = v12;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v46 = sub_25B947838();
    v48 = v13;

    v14 = v44;
    v15 = v48;
    *v48 = v60;
    v15[1] = v14;

    v16 = v45;
    v17 = v48;
    v48[2] = v61;
    v17[3] = v16;

    v18 = v47;
    v19 = v48;
    v48[4] = v62;
    v19[5] = v18;
    sub_25B8860FC();

    if (os_log_type_enabled(v50, v51))
    {
      v28 = sub_25B9474D8();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v29 = sub_25B8895FC(1, v27, v27);
      v30 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v31 = &v75;
      v75 = v28;
      v32 = &v74;
      v74 = v29;
      v33 = &v73;
      v73 = v30;
      sub_25B889650(2, &v75);
      sub_25B889650(1, v31);
      v20 = v55;
      v71 = v60;
      v72 = v44;
      sub_25B889664(&v71, v31, v32, v33);
      v34 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v71 = v61;
        v72 = v45;
        sub_25B889664(&v71, &v75, &v74, &v73);
        v26[2] = 0;
        v71 = v62;
        v72 = v47;
        sub_25B889664(&v71, &v75, &v74, &v73);
        _os_log_impl(&dword_25B859000, v50, v51, "Unable to get VLAN interface tag: %@", v28, 0xCu);
        sub_25B8896B0(v29, 1, v27);
        sub_25B8896B0(v30, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v50);
    (*(v65 + 8))(v68, v64);
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
    return v26[0];
  }
}