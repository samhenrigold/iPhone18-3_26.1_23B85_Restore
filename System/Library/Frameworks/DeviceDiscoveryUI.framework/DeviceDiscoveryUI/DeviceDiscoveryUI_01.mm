uint64_t storeEnumTagSinglePayload for DDUIString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 106 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 106) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x96)
  {
    v4 = 0;
  }

  if (a2 > 0x95)
  {
    v5 = ((a2 - 150) >> 8) + 1;
    *result = a2 + 106;
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
    *result = a2 + 106;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23807CB28(uint64_t a1)
{
  v1 = a1;
  type metadata accessor for DeviceBrowserViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_23807CC40(v1);
  v4 = sub_238154C8C();

  v5 = sub_238154C8C();

  v6 = sub_238154C8C();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_238154CCC();
  return v8;
}

uint64_t sub_23807CC40(char a1)
{
  result = 0x4C45434E4143;
  switch(a1)
  {
    case 1:
      result = 1162760004;
      break;
    case 2:
      result = 0x45554E49544E4F43;
      break;
    case 3:
    case 33:
    case 39:
    case 45:
    case 57:
    case 77:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 21:
    case 25:
    case 59:
    case 78:
    case 81:
    case 91:
    case 97:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
    case 15:
    case 18:
    case 22:
    case 66:
    case 73:
    case 86:
      result = 0xD000000000000018;
      break;
    case 8:
    case 16:
    case 26:
    case 30:
    case 65:
    case 95:
      result = 0xD00000000000001DLL;
      break;
    case 9:
    case 11:
    case 17:
    case 64:
      result = 0xD000000000000016;
      break;
    case 10:
    case 35:
    case 55:
    case 58:
      result = 0xD000000000000013;
      break;
    case 12:
    case 19:
    case 23:
    case 31:
      result = 0xD00000000000001BLL;
      break;
    case 13:
    case 46:
    case 47:
    case 56:
    case 93:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 20:
    case 24:
    case 27:
    case 60:
      result = 0xD000000000000020;
      break;
    case 28:
    case 72:
    case 74:
      result = 0xD00000000000001ELL;
      break;
    case 29:
    case 69:
    case 102:
      result = 0xD00000000000001ALL;
      break;
    case 32:
    case 67:
    case 68:
    case 80:
    case 94:
    case 103:
    case 105:
      result = 0xD00000000000001CLL;
      break;
    case 34:
      result = 0xD000000000000015;
      break;
    case 36:
      result = 0x43495645445F594DLL;
      break;
    case 37:
      result = 0x454C504F4550;
      break;
    case 38:
      result = 0xD000000000000015;
      break;
    case 40:
      result = 0x535F444552494150;
      break;
    case 41:
      result = 0x415F524145505041;
      break;
    case 42:
      result = 0x4E49524145505041;
      break;
    case 43:
      result = 0x5F504F5244524941;
      break;
    case 44:
      result = 0x454D414E5F5341;
      break;
    case 48:
      v3 = 1414086999;
      goto LABEL_21;
    case 49:
      v3 = 1145980243;
LABEL_21:
      result = v3 | 0x474E4900000000;
      break;
    case 50:
      result = 0x4E49564945434552;
      break;
    case 51:
      result = 1414415699;
      break;
    case 52:
      result = 0x44454C494146;
      break;
    case 53:
      result = 0x44454E494C434544;
      break;
    case 54:
      result = 0x41505F5453455547;
      break;
    case 61:
      result = 0xD000000000000022;
      break;
    case 62:
    case 63:
      result = 0xD000000000000023;
      break;
    case 70:
      result = 0xD000000000000015;
      break;
    case 71:
      result = 0xD000000000000015;
      break;
    case 75:
    case 83:
      result = 0xD000000000000012;
      break;
    case 76:
      result = 0xD000000000000021;
      break;
    case 79:
    case 96:
      result = 0xD000000000000017;
      break;
    case 82:
      result = 0x4941575F504F4F42;
      break;
    case 84:
      result = 0x4148535F504F4F42;
      break;
    case 85:
      result = 0xD000000000000015;
      break;
    case 87:
      result = 0xD000000000000011;
      break;
    case 88:
      result = 0x545045434341;
      break;
    case 89:
      result = 0x454E494C434544;
      break;
    case 90:
      result = 0x574F4E5F544F4ELL;
      break;
    case 92:
    case 100:
    case 101:
    case 104:
      result = 0xD00000000000001FLL;
      break;
    case 98:
      result = 0xD000000000000024;
      break;
    case 99:
      result = 0xD000000000000025;
      break;
    case 106:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23807D634(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23807CC40(*a1);
  v5 = v4;
  if (v3 == sub_23807CC40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2381555CC();
  }

  return v8 & 1;
}

uint64_t sub_23807D6BC()
{
  v1 = *v0;
  sub_23815568C();
  sub_23807CC40(v1);
  sub_238154C5C();

  return sub_2381556BC();
}

uint64_t sub_23807D720(uint64_t a1)
{
  sub_23807CC40(*v1);
  sub_238154C5C();
}

uint64_t sub_23807D774(uint64_t a1)
{
  v2 = *v1;
  sub_23815568C();
  sub_23807CC40(v2);
  sub_238154C5C();

  return sub_2381556BC();
}

unint64_t sub_23807D7D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23807D888(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23807D804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23807CC40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23807D834()
{
  result = qword_27DEEACA0;
  if (!qword_27DEEACA0)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for DDUIString, v0, v1);
    atomic_store(result, &qword_27DEEACA0);
  }

  return result;
}

unint64_t sub_23807D888(uint64_t a1, uint64_t a2)
{
  v2 = sub_2381555DC();

  if (v2 >= 0x6B)
  {
    return 107;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23807D8DC()
{
  MEMORY[0x2383EA980](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23807D944@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for ViewHolder(0, a1);
  result = sub_2381529DC();
  *a2 = result;
  return result;
}

uint64_t sub_23807D984()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEACA8);
  v1 = __swift_project_value_buffer(v0, qword_27DEEACA8);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static CNBoopSessionViewOld.initFromNFC(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_23815313C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  memset(v13, 0, 32);
  v13[2] = xmmword_2381587F0;
  v14 = 0;
  type metadata accessor for CNBoopSessionViewModel(0);
  swift_allocObject();
  sub_2380C981C(v13);
  if (!v3)
  {
    v15 = 0;
    sub_2380859C0();

    *a3 = sub_2381539BC();
    a3[1] = v11;
    a3[3] = a1;
    a3[4] = a2;
    sub_2381531EC();
    *v10 = 0x654D6F54706F6F42;
    v10[1] = 0xEA00000000007465;
    v10[2] = 1;
    (*(v8 + 104))(v10, *MEMORY[0x277D54990], v7);

    v12 = sub_23815314C();

    a3[2] = v12;
  }
}

uint64_t sub_23807DC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF18, &qword_238158FE8);
  MEMORY[0x28223BE20](v134);
  v135 = &v123 - v3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF20, &qword_238158FF0);
  MEMORY[0x28223BE20](v123);
  v124 = &v123 - v4;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF28, &qword_238158FF8);
  MEMORY[0x28223BE20](v133);
  v125 = &v123 - v5;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF30, &qword_238159000);
  MEMORY[0x28223BE20](v146);
  v136 = (&v123 - v6);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF38, &qword_238159008);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v123 - v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF40, &qword_238159010);
  MEMORY[0x28223BE20](v132);
  v9 = &v123 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF48, &qword_238159018);
  MEMORY[0x28223BE20](v10);
  v12 = &v123 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF50, &qword_238159020);
  v13 = MEMORY[0x28223BE20](v141);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v123 - v16;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF58, &qword_238159028);
  MEMORY[0x28223BE20](v143);
  v145 = &v123 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF60, &qword_238159030);
  MEMORY[0x28223BE20](v138);
  v140 = &v123 - v19;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF68, &qword_238159038);
  MEMORY[0x28223BE20](v126);
  v127 = &v123 - v20;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF70, &qword_238159040);
  MEMORY[0x28223BE20](v139);
  v128 = &v123 - v21;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF78, &qword_238159048);
  MEMORY[0x28223BE20](v144);
  v142 = &v123 - v22;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF80, &qword_238159050);
  MEMORY[0x28223BE20](v137);
  v24 = &v123 - v23;
  v25 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v26 = v153;
  if (LOBYTE(v155[0]) <= 2u)
  {
    v134 = v25;
    v30 = v129;
    v31 = v130;
    v32 = v131;
    v133 = v15;
    v125 = v17;
    v135 = v10;
    v136 = v12;
    if (LOBYTE(v155[0]))
    {
      if (LOBYTE(v155[0]) == 1)
      {
        sub_238085BD0(v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), 1u);
        *&v152 = sub_23807CB28(81);
        *(&v152 + 1) = v33;
        sub_2380704A0();
        v34 = sub_23815438C();
        v36 = v35;
        v38 = v37;

        v39 = sub_23815431C();
        v41 = v40;
        v43 = v42;
        sub_238070490(v34, v36, v38 & 1);

        sub_23815423C();
        sub_2381541FC();
        sub_23815425C();

        v44 = sub_23815435C();
        v46 = v45;
        v48 = v47;
        v50 = v49;

        sub_238070490(v39, v41, v43 & 1);

        v51 = sub_2381540FC();
        v151 = v48 & 1;
        v149 = 0;
        *&v152 = v44;
        *(&v152 + 1) = v46;
        LOBYTE(v153) = v48 & 1;
        *(&v153 + 1) = v148[0];
        DWORD1(v153) = *(v148 + 3);
        *(&v153 + 1) = v50;
        LOBYTE(v154) = v51;
        *(&v154 + 1) = *v150;
        DWORD1(v154) = *&v150[3];
        *(&v154 + 1) = 0x4057800000000000;
        memset(v155, 0, 25);
        v52 = v136;
        v136[2] = v154;
        v52[3] = 0uLL;
        *(v52 + 57) = *(v155 + 9);
        v53 = v153;
        *v52 = v152;
        v52[1] = v53;
        swift_storeEnumTagMultiPayload();
        sub_2380712E4(&v152, v148, &qword_27DEEAFC8, &qword_238159060);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v54 = v133;
        sub_238153ECC();
        sub_2380712E4(v54, v140, &qword_27DEEAF50, &qword_238159020);
        swift_storeEnumTagMultiPayload();
        sub_23808812C();
        sub_2380881B8();
        v55 = v142;
        sub_238153ECC();
        sub_238071284(v54, &qword_27DEEAF50, &qword_238159020);
        sub_2380712E4(v55, v145, &qword_27DEEAF78, &qword_238159048);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        sub_238071284(&v152, &qword_27DEEAFC8, &qword_238159060);
        return sub_238071284(v55, &qword_27DEEAF78, &qword_238159048);
      }

      else
      {
        v75 = v9;
        sub_238085BD0(v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), 2u);
        *&v152 = sub_23807CB28(82);
        *(&v152 + 1) = v76;
        sub_2380704A0();
        sub_23815389C();
        sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008, MEMORY[0x277CDD7F8]);
        sub_238088600();
        sub_2381543BC();
        (*(v31 + 8))(v30, v32);
        v77 = *(v134 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
        KeyPath = swift_getKeyPath();
        v79 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB000, &qword_238159078) + 36)];
        *v79 = KeyPath;
        v79[1] = v77;

        v80 = sub_2381545FC();
        v81 = swift_getKeyPath();
        v82 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFF0, &qword_238159070) + 36)];
        *v82 = v81;
        v82[1] = v80;
        sub_23815423C();
        sub_2381541FC();
        v83 = sub_23815425C();

        v84 = swift_getKeyPath();
        v85 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFE0, &qword_238159068) + 36)];
        *v85 = v84;
        v85[1] = v83;
        v86 = sub_2381540FC();
        v87 = &v9[*(v132 + 36)];
        *v87 = v86;
        *(v87 + 1) = 0x4057800000000000;
        *(v87 + 2) = 0;
        *(v87 + 3) = 0;
        *(v87 + 4) = 0;
        v87[40] = 0;
        sub_2380712E4(v9, v136, &qword_27DEEAF40, &qword_238159010);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v88 = v133;
        sub_238153ECC();
        sub_2380712E4(v88, v140, &qword_27DEEAF50, &qword_238159020);
        swift_storeEnumTagMultiPayload();
        sub_23808812C();
        sub_2380881B8();
        v89 = v142;
        sub_238153ECC();
        sub_238071284(v88, &qword_27DEEAF50, &qword_238159020);
        sub_2380712E4(v89, v145, &qword_27DEEAF78, &qword_238159048);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        sub_238071284(v89, &qword_27DEEAF78, &qword_238159048);
        return sub_238071284(v75, &qword_27DEEAF40, &qword_238159010);
      }
    }

    else
    {
      sub_23807A454(v152, *(&v152 + 1));
      sub_23807A454(v26, *(&v26 + 1));
      swift_getKeyPath();
      swift_getKeyPath();
      v61 = v134;
      sub_238152A8C();

      if (v152)
      {
        *&v152 = sub_23807CB28(82);
        *(&v152 + 1) = v62;
        sub_2380704A0();
        sub_23815389C();
        sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008, MEMORY[0x277CDD7F8]);
        sub_238088600();
        sub_2381543BC();
        (*(v31 + 8))(v30, v32);
        v63 = *(v61 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
        v64 = swift_getKeyPath();
        v65 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB000, &qword_238159078) + 36)];
        *v65 = v64;
        v65[1] = v63;

        v66 = sub_2381545FC();
        v67 = swift_getKeyPath();
        v68 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFF0, &qword_238159070) + 36)];
        *v68 = v67;
        v68[1] = v66;
        sub_23815423C();
        sub_2381541FC();
        v69 = sub_23815425C();

        v70 = swift_getKeyPath();
        v71 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFE0, &qword_238159068) + 36)];
        *v71 = v70;
        v71[1] = v69;
        v72 = sub_2381540FC();
        v73 = &v9[*(v132 + 36)];
        *v73 = v72;
        *(v73 + 1) = 0x4057800000000000;
        *(v73 + 2) = 0;
        *(v73 + 3) = 0;
        *(v73 + 4) = 0;
        v73[40] = 0;
        sub_2380712E4(v9, v136, &qword_27DEEAF40, &qword_238159010);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v74 = v125;
        sub_238153ECC();
        sub_238071284(v9, &qword_27DEEAF40, &qword_238159010);
      }

      else
      {
        *&v152 = sub_23807CB28(80);
        *(&v152 + 1) = v100;
        sub_2380704A0();
        v101 = sub_23815438C();
        v103 = v102;
        v105 = v104;

        v106 = sub_23815431C();
        v108 = v107;
        v110 = v109;
        sub_238070490(v101, v103, v105 & 1);

        sub_23815423C();
        sub_2381541FC();
        sub_23815425C();

        v111 = sub_23815435C();
        v113 = v112;
        v115 = v114;
        v117 = v116;

        sub_238070490(v106, v108, v110 & 1);

        v118 = sub_2381540FC();
        LOBYTE(v152) = v115 & 1;
        LOBYTE(v148[0]) = 0;
        v119 = v136;
        *v136 = v111;
        *(v119 + 8) = v113;
        *(v119 + 16) = v115 & 1;
        *(v119 + 24) = v117;
        *(v119 + 32) = v118;
        *(v119 + 40) = 0x4057800000000000;
        *(v119 + 48) = 0;
        *(v119 + 56) = 0;
        *(v119 + 64) = 0;
        *(v119 + 72) = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v74 = v125;
        sub_238153ECC();
      }

      v120 = v145;
      sub_2380712E4(v74, v127, &qword_27DEEAF50, &qword_238159020);
      swift_storeEnumTagMultiPayload();
      sub_238087FE8();
      sub_2380881B8();
      v121 = v128;
      sub_238153ECC();
      sub_2380712E4(v121, v140, &qword_27DEEAF70, &qword_238159040);
      swift_storeEnumTagMultiPayload();
      sub_23808812C();
      v122 = v142;
      sub_238153ECC();
      sub_238071284(v121, &qword_27DEEAF70, &qword_238159040);
      sub_2380712E4(v122, v120, &qword_27DEEAF78, &qword_238159048);
      swift_storeEnumTagMultiPayload();
      sub_2380880A0();
      sub_238088654();
      sub_238153ECC();
      sub_238071284(v122, &qword_27DEEAF78, &qword_238159048);
      return sub_238071284(v74, &qword_27DEEAF50, &qword_238159020);
    }
  }

  else
  {
    if (LOBYTE(v155[0]) > 4u)
    {
      if (LOBYTE(v155[0]) == 5)
      {

        swift_storeEnumTagMultiPayload();
        sub_238087F64();
        v57 = v136;
        sub_238153ECC();
        v58 = &qword_27DEEAF30;
        v59 = &qword_238159000;
        sub_2380712E4(v57, v145, &qword_27DEEAF30, &qword_238159000);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        v60 = v57;
      }

      else
      {
        *v24 = sub_238153D1C();
        *(v24 + 1) = 0;
        v24[16] = 1;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB020, &qword_238159080);
        sub_23807F444(a1, &v24[*(v95 + 44)]);
        v96 = sub_2381540FC();
        v97 = &v24[*(v137 + 36)];
        *v97 = v96;
        *(v97 + 8) = 0u;
        *(v97 + 24) = 0u;
        v97[40] = 1;
        v58 = &qword_27DEEAF80;
        v59 = &qword_238159050;
        sub_2380712E4(v24, v127, &qword_27DEEAF80, &qword_238159050);
        swift_storeEnumTagMultiPayload();
        sub_238087FE8();
        sub_2380881B8();
        v98 = v128;
        sub_238153ECC();
        sub_2380712E4(v98, v140, &qword_27DEEAF70, &qword_238159040);
        swift_storeEnumTagMultiPayload();
        sub_23808812C();
        v99 = v142;
        sub_238153ECC();
        sub_238071284(v98, &qword_27DEEAF70, &qword_238159040);
        sub_2380712E4(v99, v145, &qword_27DEEAF78, &qword_238159048);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        sub_238071284(v99, &qword_27DEEAF78, &qword_238159048);
        v60 = v24;
      }

      v93 = v58;
      v94 = v59;
    }

    else
    {
      if (LOBYTE(v155[0]) == 3)
      {
        sub_238085BD0(v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), 3u);
        *v24 = sub_238153D1C();
        *(v24 + 1) = 0;
        v24[16] = 1;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB020, &qword_238159080);
        sub_23807F72C(&v24[*(v27 + 44)]);
      }

      else
      {
        sub_238085BD0(v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), 4u);
        *v24 = sub_238153D1C();
        *(v24 + 1) = 0;
        v24[16] = 1;
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB020, &qword_238159080);
        sub_23807FA64(a1, &v24[*(v90 + 44)]);
      }

      v28 = sub_2381540FC();
      v29 = &v24[*(v137 + 36)];
      *v29 = v28;
      *(v29 + 1) = 0x4057800000000000;
      *(v29 + 2) = 0;
      *(v29 + 3) = 0;
      *(v29 + 4) = 0;
      v29[40] = 0;
      sub_2380712E4(v24, v124, &qword_27DEEAF80, &qword_238159050);
      swift_storeEnumTagMultiPayload();
      sub_238087FE8();
      v91 = v125;
      sub_238153ECC();
      sub_2380712E4(v91, v135, &qword_27DEEAF28, &qword_238158FF8);
      swift_storeEnumTagMultiPayload();
      sub_238087F64();
      v92 = v136;
      sub_238153ECC();
      sub_238071284(v91, &qword_27DEEAF28, &qword_238158FF8);
      sub_2380712E4(v92, v145, &qword_27DEEAF30, &qword_238159000);
      swift_storeEnumTagMultiPayload();
      sub_2380880A0();
      sub_238088654();
      sub_238153ECC();
      sub_238071284(v92, &qword_27DEEAF30, &qword_238159000);
      v60 = v24;
      v93 = &qword_27DEEAF80;
      v94 = &qword_238159050;
    }

    return sub_238071284(v60, v93, v94);
  }
}

uint64_t sub_23807F444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB028, &qword_2381590B8);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v33 - v7);
  v9 = sub_23815469C();
  v10 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v12 = *MEMORY[0x277CE1048];
  v13 = sub_2381546BC();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v8 = v9;
  v14 = *(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
  KeyPath = swift_getKeyPath();
  v16 = (v8 + *(v4 + 44));
  *v16 = KeyPath;
  v16[1] = v14;

  v36 = sub_23807CB28(79);
  v37 = v17;
  sub_2380704A0();
  v18 = sub_23815438C();
  v20 = v19;
  LOBYTE(v10) = v21;

  v22 = sub_23815431C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_238070490(v18, v20, v10 & 1);

  v29 = v34;
  sub_2380712E4(v8, v34, &qword_27DEEB028, &qword_2381590B8);
  v30 = v35;
  sub_2380712E4(v29, v35, &qword_27DEEB028, &qword_2381590B8);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB038, &qword_2381590C8) + 48);
  *v31 = v22;
  *(v31 + 8) = v24;
  *(v31 + 16) = v26 & 1;
  *(v31 + 24) = v28;
  sub_238070430(v22, v24, v26 & 1);

  sub_238071284(v8, &qword_27DEEB028, &qword_2381590B8);
  sub_238070490(v22, v24, v26 & 1);

  return sub_238071284(v29, &qword_27DEEB028, &qword_2381590B8);
}

uint64_t sub_23807F72C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB028, &qword_2381590B8);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v35 - v5);
  v7 = sub_23815467C();
  v8 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v10 = *MEMORY[0x277CE1058];
  v11 = sub_2381546BC();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  v12 = sub_2381545AC();
  KeyPath = swift_getKeyPath();
  v14 = (v6 + *(v2 + 44));
  *v14 = KeyPath;
  v14[1] = v12;
  v37 = sub_23807CB28(83);
  v38 = v15;
  sub_2380704A0();
  v16 = sub_23815438C();
  v18 = v17;
  v20 = v19;
  sub_2381545AC();
  v21 = sub_23815431C();
  v23 = v22;
  LOBYTE(v9) = v24;

  sub_238070490(v16, v18, v20 & 1);

  sub_23815423C();
  sub_2381541FC();
  sub_23815425C();

  v25 = sub_23815435C();
  v27 = v26;
  LOBYTE(v8) = v28;
  v30 = v29;

  sub_238070490(v21, v23, v9 & 1);

  v31 = v35;
  sub_2380712E4(v6, v35, &qword_27DEEB028, &qword_2381590B8);
  v32 = v36;
  sub_2380712E4(v31, v36, &qword_27DEEB028, &qword_2381590B8);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB038, &qword_2381590C8) + 48);
  *v33 = v25;
  *(v33 + 8) = v27;
  *(v33 + 16) = v8 & 1;
  *(v33 + 24) = v30;
  sub_238070430(v25, v27, v8 & 1);

  sub_238071284(v6, &qword_27DEEB028, &qword_2381590B8);
  sub_238070490(v25, v27, v8 & 1);

  return sub_238071284(v31, &qword_27DEEB028, &qword_2381590B8);
}

uint64_t sub_23807FA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB028, &qword_2381590B8);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v36 - v7);
  v9 = sub_23815467C();
  v10 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v12 = *MEMORY[0x277CE1058];
  v13 = sub_2381546BC();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v8 = v9;
  v14 = *(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
  KeyPath = swift_getKeyPath();
  v16 = (v8 + *(v4 + 44));
  *v16 = KeyPath;
  v16[1] = v14;

  v38 = sub_23807CB28(84);
  v39 = v17;
  sub_2380704A0();
  v18 = sub_23815438C();
  v20 = v19;
  LOBYTE(v12) = v21;

  v22 = sub_23815431C();
  v24 = v23;
  LOBYTE(v11) = v25;
  sub_238070490(v18, v20, v12 & 1);

  sub_23815423C();
  sub_2381541FC();
  sub_23815425C();

  v26 = sub_23815435C();
  v28 = v27;
  LOBYTE(v10) = v29;
  v31 = v30;

  sub_238070490(v22, v24, v11 & 1);

  v32 = v36;
  sub_2380712E4(v8, v36, &qword_27DEEB028, &qword_2381590B8);
  v33 = v37;
  sub_2380712E4(v32, v37, &qword_27DEEB028, &qword_2381590B8);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB038, &qword_2381590C8) + 48);
  *v34 = v26;
  *(v34 + 8) = v28;
  *(v34 + 16) = v10 & 1;
  *(v34 + 24) = v31;
  sub_238070430(v26, v28, v10 & 1);

  sub_238071284(v8, &qword_27DEEB028, &qword_2381590B8);
  sub_238070490(v26, v28, v10 & 1);

  return sub_238071284(v32, &qword_27DEEB028, &qword_2381590B8);
}

uint64_t sub_23807FDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  *&v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD70, &qword_238158D48);
  MEMORY[0x28223BE20](v102);
  v4 = v89 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD78, &qword_238158D50);
  MEMORY[0x28223BE20](v108);
  v6 = v89 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD80, &qword_238158D58);
  MEMORY[0x28223BE20](v113);
  v114 = v89 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD88, &qword_238158D60);
  MEMORY[0x28223BE20](v105);
  v107 = v89 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD90, &qword_238158D68);
  MEMORY[0x28223BE20](v98);
  v99 = v89 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD98, &qword_238158D70);
  MEMORY[0x28223BE20](v106);
  v100 = v89 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADA0, &qword_238158D78);
  MEMORY[0x28223BE20](v112);
  v111 = v89 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADA8, &unk_238158D80);
  MEMORY[0x28223BE20](v97);
  v101 = v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v104 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADB0, &qword_238158D90);
  v109 = *(v16 - 8);
  v110 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v89 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v103 = v89 - v24;
  MEMORY[0x28223BE20](v23);
  v116 = v89 - v25;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v26 = v117;
  v27 = v118;
  v28 = v121;
  if (v122 > 2u)
  {
    if (v122 - 3 < 2)
    {
      v44 = swift_allocObject();
      v45 = *(a1 + 16);
      *(v44 + 16) = *a1;
      *(v44 + 32) = v45;
      *(v44 + 48) = *(a1 + 32);
      *(v44 + 56) = v26;
      *(v44 + 64) = v27;
      sub_238086794(a1, &v117);
      sub_23815474C();
      LOBYTE(v117) = 2;
      v118 = xmmword_238158800;
      v119 = 0x403E000000000000;
      v46 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
      v47 = sub_238086A48();
      v38 = v116;
      sub_2381543EC();
      (v104[1])(v15, v13);
      v39 = v109;
      v41 = v110;
      (*(v109 + 16))(v4, v38, v110);
      swift_storeEnumTagMultiPayload();
      v117 = v13;
      *&v118 = &type metadata for BoopButtonStyle;
      *(&v118 + 1) = v46;
      v119 = v47;
      swift_getOpaqueTypeConformance2();
      sub_238153ECC();
      sub_2380712E4(v6, v107, &qword_27DEEAD78, &qword_238158D50);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v43 = v111;
      sub_238153ECC();
      sub_238071284(v6, &qword_27DEEAD78, &qword_238158D50);
      sub_2380712E4(v43, v114, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  switch(v122)
  {
    case 0u:
      v49 = *(&v118 + 1);
      v91 = v120;
      *&v102 = v22;
      v50 = v119;
      v51 = swift_allocObject();
      v93 = v89;
      v52 = *(a1 + 16);
      *(v51 + 16) = *a1;
      *(v51 + 32) = v52;
      *(v51 + 48) = *(a1 + 32);
      *(v51 + 56) = v49;
      v96 = v49;
      v95 = v50;
      *(v51 + 64) = v50;
      MEMORY[0x28223BE20](v51);
      v94 = v27;
      v89[-2] = a1;
      sub_238086794(a1, &v117);
      sub_238086B74(v49, v50);
      sub_23815474C();
      LOBYTE(v117) = 2;
      v90 = xmmword_238158800;
      v118 = xmmword_238158800;
      v119 = 0x403E000000000000;
      v89[1] = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
      v89[0] = sub_238086A48();
      sub_2381543EC();
      v53 = v104[1];
      v53(v15, v13);
      v54 = swift_allocObject();
      v93 = v28;
      v104 = v89;
      v55 = *(a1 + 16);
      *(v54 + 16) = *a1;
      *(v54 + 32) = v55;
      *(v54 + 48) = *(a1 + 32);
      *(v54 + 56) = v26;
      v92 = v26;
      v56 = v94;
      *(v54 + 64) = v94;
      MEMORY[0x28223BE20](v54);
      v89[-2] = a1;
      sub_238086794(a1, &v117);
      sub_238086B74(v26, v56);
      sub_23815474C();
      v57 = v103;
      LOBYTE(v117) = 2;
      v118 = v90;
      v119 = 0x403E000000000000;
      sub_2381543EC();
      v53(v15, v13);
      v59 = v109;
      v58 = v110;
      v60 = *(v109 + 16);
      v61 = v102;
      (v60)(v102, v116, v110);
      (v60)(v19, v57, v58);
      v62 = v101;
      v60();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE0, &qword_238158D98);
      (v60)(v62 + *(v63 + 48), v19, v58);
      v64 = *(v59 + 8);
      v64(v19, v58);
      v64(v61, v58);
      v65 = v62;
      sub_2380712E4(v62, v99, &qword_27DEEADA8, &unk_238158D80);
      swift_storeEnumTagMultiPayload();
      sub_2380711D4(&qword_27DEEADC8, &qword_27DEEADA8, &unk_238158D80, MEMORY[0x277CE14C0]);
      v66 = v100;
      sub_238153ECC();
      sub_2380712E4(v66, v107, &qword_27DEEAD98, &qword_238158D70);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v67 = v111;
      sub_238153ECC();
      sub_238071284(v66, &qword_27DEEAD98, &qword_238158D70);
      sub_2380712E4(v67, v114, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      v68 = v92;
      v69 = v94;
      v70 = v96;
      v71 = v95;
      v72 = v91;
      v73 = v93;
      v74 = 0;
LABEL_11:
      sub_238085BD0(v68, v69, v70, v71, v72, v73, v74);
      sub_238071284(v67, &qword_27DEEADA0, &qword_238158D78);
      sub_238071284(v65, &qword_27DEEADA8, &unk_238158D80);
      v64(v103, v58);
      return (v64)(v116, v58);
    case 1u:
      v96 = *(&v118 + 1);
      v75 = v120;
      v91 = v120;
      v95 = v119;
      v76 = swift_allocObject();
      v77 = *(a1 + 16);
      *(v76 + 16) = *a1;
      *(v76 + 32) = v77;
      *(v76 + 48) = *(a1 + 32);
      *(v76 + 56) = v75;
      *(v76 + 64) = v28;
      sub_238086794(a1, &v117);

      sub_23815474C();
      LOBYTE(v117) = 0;
      v102 = xmmword_238158800;
      v118 = xmmword_238158800;
      v119 = 0x403E000000000000;
      v78 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
      v93 = v28;
      *&v90 = v78;
      sub_238086A48();
      sub_2381543EC();
      v92 = v26;
      v79 = v104[1];
      v79(v15, v13);
      v80 = swift_allocObject();
      v94 = v27;
      v81 = *(a1 + 16);
      *(v80 + 16) = *a1;
      *(v80 + 32) = v81;
      v82 = v96;
      *(v80 + 48) = *(a1 + 32);
      *(v80 + 56) = v82;
      *(v80 + 64) = v95;
      sub_238086794(a1, &v117);

      sub_23815474C();
      LOBYTE(v117) = 2;
      v118 = v102;
      v119 = 0x403E000000000000;
      v83 = v103;
      sub_2381543EC();
      v79(v15, v13);
      v84 = v109;
      v58 = v110;
      v85 = *(v109 + 16);
      (v85)(v22, v116, v110);
      (v85)(v19, v83, v58);
      v86 = v101;
      v85();
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE0, &qword_238158D98);
      (v85)(v86 + *(v87 + 48), v19, v58);
      v64 = *(v84 + 8);
      v64(v19, v58);
      v64(v22, v58);
      v65 = v86;
      sub_2380712E4(v86, v99, &qword_27DEEADA8, &unk_238158D80);
      swift_storeEnumTagMultiPayload();
      sub_2380711D4(&qword_27DEEADC8, &qword_27DEEADA8, &unk_238158D80, MEMORY[0x277CE14C0]);
      v88 = v100;
      sub_238153ECC();
      sub_2380712E4(v88, v107, &qword_27DEEAD98, &qword_238158D70);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v67 = v111;
      sub_238153ECC();
      sub_238071284(v88, &qword_27DEEAD98, &qword_238158D70);
      sub_2380712E4(v67, v114, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      v68 = v92;
      v69 = v94;
      v70 = v96;
      v71 = v95;
      v72 = v91;
      v73 = v93;
      v74 = 1;
      goto LABEL_11;
    case 2u:
      v103 = v6;
      v29 = *(&v118 + 1);
      v96 = *(&v118 + 1);
      v30 = v120;
      v101 = v4;
      v31 = v119;
      v95 = v119;
      v32 = swift_allocObject();
      v33 = *(a1 + 16);
      *(v32 + 16) = *a1;
      *(v32 + 32) = v33;
      *(v32 + 48) = *(a1 + 32);
      *(v32 + 56) = v26;
      *(v32 + 64) = v27;
      sub_238086794(a1, &v117);
      v34 = v31;
      v35 = v30;
      sub_238086AA0(v26, v27, v29, v34, v30, v28, 2u);
      sub_23815474C();
      LOBYTE(v117) = 2;
      v118 = xmmword_238158800;
      v119 = 0x403E000000000000;
      v36 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
      v37 = sub_238086A48();
      v94 = v27;
      v93 = v28;
      v38 = v116;
      sub_2381543EC();
      (v104[1])(v15, v13);
      v39 = v109;
      v40 = *(v109 + 16);
      v92 = v26;
      v41 = v110;
      v40(v101, v38, v110);
      swift_storeEnumTagMultiPayload();
      v117 = v13;
      *&v118 = &type metadata for BoopButtonStyle;
      *(&v118 + 1) = v36;
      v119 = v37;
      swift_getOpaqueTypeConformance2();
      v42 = v103;
      sub_238153ECC();
      sub_2380712E4(v42, v107, &qword_27DEEAD78, &qword_238158D50);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v43 = v111;
      sub_238153ECC();
      sub_238071284(v42, &qword_27DEEAD78, &qword_238158D50);
      sub_2380712E4(v43, v114, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      sub_238085BD0(v92, v94, v96, v95, v35, v93, 2u);
LABEL_8:
      sub_238071284(v43, &qword_27DEEADA0, &qword_238158D78);
      return (*(v39 + 8))(v38, v41);
  }

LABEL_12:
  sub_238085BD0(v117, v118, *(&v118 + 1), v119, v120, v121, v122);
  swift_storeEnumTagMultiPayload();
  sub_238086804();
  return sub_238153ECC();
}

uint64_t sub_2380812E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  sub_238086794(a1, v8);
  sub_238086B74(a2, a3);
  sub_238086C28(v9, a1, a2, a3, &unk_284AEF5C8, sub_23808876C, sub_238088754, sub_2380872B8);
  sub_23807A454(a2, a3);
  return sub_2380867CC(a1);
}

double sub_2380813A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(a1 + 8);
  v10 = sub_238154FBC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_238154F8C();
  sub_238086B74(a2, a3);
  v11 = sub_238154F7C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = a3;
  *(v9 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask) = sub_238134F10(0, 0, v8, &unk_238158E10, v12);

  return result;
}

uint64_t sub_2380814FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_238154F8C();
  v5[5] = sub_238154F7C();
  v7 = sub_238154F3C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_238081598, v7, v6);
}

uint64_t sub_238081598()
{
  v1 = v0[3];
  if (v1)
  {
    v12 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2380817D0;

    return v12();
  }

  else
  {

    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v4 = sub_23815293C();
    __swift_project_value_buffer(v4, qword_27DEEACA8);
    v5 = sub_23815291C();
    v6 = sub_2381550FC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_238060000, v5, v6, "CNBoopSessionView Recording preTransferShareContactResponseTask - RECEIVE ONLY", v7, 2u);
      MEMORY[0x2383EA8A0](v7, -1, -1);
    }

    v8 = v0[2];

    v9 = *MEMORY[0x277D54B80];
    v10 = sub_23815362C();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2380817D0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_238081A78;
  }

  else
  {
    v5 = sub_23808190C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23808190C()
{

  if (qword_27DEEA020 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  __swift_project_value_buffer(v1, qword_27DEEACA8);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "CNBoopSessionView Recording preTransferShareContactResponseTask - RECEIVE ONLY", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *MEMORY[0x277D54B80];
  v7 = sub_23815362C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_238081A78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238081ADC@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v7 & 1) == 0)
  {
    sub_23807CB28(86);
  }

  sub_2380704A0();
  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_238081B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  sub_238086794(a1, v8);
  sub_238086B74(a2, a3);
  sub_238086C28(v9, a1, a2, a3, &unk_284AEF578, sub_23808876C, sub_238086FFC, sub_238087018);
  sub_23807A454(a2, a3);
  return sub_2380867CC(a1);
}

uint64_t sub_238081C64(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

double sub_238081CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7 - 8];
  v9 = *(a1 + 8);
  v10 = sub_238154FBC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_238154F8C();
  sub_238086794(a1, v17);
  sub_238086B74(a2, a3);
  v11 = sub_238154F7C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;
  *(v9 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask) = sub_238134F10(0, 0, v8, &unk_238158DF8, v12);

  return result;
}

uint64_t sub_238081E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = sub_23815352C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_23815354C();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  sub_238154F8C();
  v6[17] = sub_238154F7C();
  v10 = sub_238154F3C();
  v6[18] = v10;
  v6[19] = v9;

  return MEMORY[0x2822009F8](sub_238081FA0, v10, v9);
}

uint64_t sub_238081FA0()
{
  v39 = v0;
  CNBoopSessionViewOld.vCardForBooping()();
  v0[4] = v1;
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE8, &qword_238158E00);
  sub_2381552FC();
  v4 = v0[9];
  sub_238087244(v0[4], v0[5]);
  v5 = v0[2];
  v6 = v0[3];
  v0[20] = v5;
  v0[21] = v6;
  if (v4)
  {
    v37 = (v0[9] + *v0[9]);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_2380824B8;

    return v37(v5, v6);
  }

  v8 = *(*(v0[8] + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  v9 = v0[6];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v9 >= *(v8 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[11];
  v15 = v8 + 16 * v9;
  v16 = *(v15 + 40);
  *v13 = *(v15 + 32);
  v13[1] = v16;
  (*(v12 + 104))(v13, *MEMORY[0x277D54B40], v14);

  sub_238085D80(v11, v10);
  sub_23815353C();
  if (qword_27DEEA020 != -1)
  {
LABEL_18:
    swift_once();
  }

  v18 = v0[20];
  v17 = v0[21];
  v19 = sub_23815293C();
  __swift_project_value_buffer(v19, qword_27DEEACA8);
  sub_238085D80(v18, v17);
  v20 = sub_23815291C();
  v21 = sub_2381550FC();
  sub_238085CA0(v18, v17);
  v22 = os_log_type_enabled(v20, v21);
  v24 = v0[20];
  v23 = v0[21];
  if (v22)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    sub_238085D80(v24, v23);
    v27 = sub_2381526EC();
    v29 = v28;
    sub_238085CA0(v24, v23);
    v30 = sub_238085EAC(v27, v29, &v38);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_238060000, v20, v21, "CNBoopSessionView Recording preTransferShareContactResponseTask - SHARE {contact: %s}", v25, 0xCu);
    v31 = __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2383EA8A0](v26, -1, -1, v31);
    MEMORY[0x2383EA8A0](v25, -1, -1);
    sub_238085CA0(v24, v23);
  }

  else
  {

    v32.n128_f64[0] = sub_238085CA0(v24, v23);
  }

  v33 = v0[7];
  (*(v0[15] + 32))(v33, v0[16], v0[14], v32);
  v34 = *MEMORY[0x277D54B78];
  v35 = sub_23815362C();
  (*(*(v35 - 8) + 104))(v33, v34, v35);

  v36 = v0[1];

  return v36();
}

uint64_t sub_2380824B8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_238082970;
  }

  else
  {
    v5 = sub_2380825F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2380825F4()
{
  v32 = v0;

  v1 = *(*(v0[8] + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  v2 = v0[6];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(v1 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[11];
    v8 = v1 + 16 * v2;
    v9 = *(v8 + 40);
    *v6 = *(v8 + 32);
    v6[1] = v9;
    (*(v5 + 104))(v6, *MEMORY[0x277D54B40], v7);

    sub_238085D80(v4, v3);
    sub_23815353C();
    if (qword_27DEEA020 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v11 = v0[20];
  v10 = v0[21];
  v12 = sub_23815293C();
  __swift_project_value_buffer(v12, qword_27DEEACA8);
  sub_238085D80(v11, v10);
  v13 = sub_23815291C();
  v14 = sub_2381550FC();
  sub_238085CA0(v11, v10);
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[20];
  v16 = v0[21];
  if (v15)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    sub_238085D80(v17, v16);
    v20 = sub_2381526EC();
    v22 = v21;
    sub_238085CA0(v17, v16);
    v23 = sub_238085EAC(v20, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238060000, v13, v14, "CNBoopSessionView Recording preTransferShareContactResponseTask - SHARE {contact: %s}", v18, 0xCu);
    v24 = __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EA8A0](v19, -1, -1, v24);
    MEMORY[0x2383EA8A0](v18, -1, -1);
    sub_238085CA0(v17, v16);
  }

  else
  {

    v25.n128_f64[0] = sub_238085CA0(v17, v16);
  }

  v26 = v0[7];
  (*(v0[15] + 32))(v26, v0[16], v0[14], v25);
  v27 = *MEMORY[0x277D54B78];
  v28 = sub_23815362C();
  (*(*(v28 - 8) + 104))(v26, v27, v28);

  v29 = v0[1];

  return v29();
}

uint64_t sub_238082970()
{
  v1 = v0[20];
  v2 = v0[21];

  sub_238085CA0(v1, v2);

  v3 = v0[1];

  return v3();
}

void CNBoopSessionViewOld.vCardForBooping()()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_contact);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACC8, &qword_238158830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238157F20;
  v4 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  sub_238152A8C();

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v4 + 16))
  {
    v6 = v4 + 16 * v9;
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);

    *(inited + 32) = v8;
    *(inited + 40) = v7;
    sub_23815527C();

    swift_setDeallocating();
    sub_238085A20(inited + 32);
    return;
  }

  __break(1u);
}

uint64_t sub_238082B38@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v8)
  {
    v3 = 0;
  }

  else
  {
    v3 = 87;
  }

  sub_23807CB28(v3);
  sub_2380704A0();
  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

double sub_238082BF8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);

  sub_2380873CC(v6, a2);

  return result;
}

uint64_t sub_238082C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23807CB28(a1);
  sub_2380704A0();
  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void CNBoopSessionViewOld.body.getter(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACD0, &qword_238158880);
  MEMORY[0x28223BE20](v26);
  v3 = (&v25 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACD8, &qword_238158888);
  MEMORY[0x28223BE20](v4);
  v6 = (&v25 - v5);
  v7 = *(v1 + 16);
  v36[0] = *v1;
  v36[1] = v7;
  v37 = *(v1 + 32);
  v38 = v36[0];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();
  sub_238071284(&v38, &qword_27DEEACE0, &qword_2381588D8);

  v9 = v29;
  v10 = v30;
  v11 = v31;
  v12 = v33;
  v13 = v34;
  if (v35 == 5)
  {
    v25 = v32;
    v14 = type metadata accessor for SnapshottingContactViewController(0, v8);
    v15 = objc_allocWithZone(v14);
    v15[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase] = 0;
    v16 = &v15[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss];
    *v16 = 0;
    v16[1] = 0;
    *&v15[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] = 0;
    *&v15[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] = 0;
    *&v15[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_contact] = v9;
    v28.receiver = v15;
    v28.super_class = v14;
    v17 = v9;
    v18 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
    sub_23813275C(v18[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase], v19);
    v20 = swift_allocObject();
    *(v20 + 16) = v10;
    *(v20 + 24) = v11;
    *v6 = v18;
    v6[1] = sub_23807BEF4;
    v6[2] = v20;
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_2380711D4(&qword_27DEEACF8, &qword_27DEEACD0, &qword_238158880, MEMORY[0x277CE11A8]);
    v21 = v18;
    swift_retain_n();
    v22 = v21;

    sub_238153ECC();
    sub_238085BD0(v9, v10, v11, v25, v12, v13, 5u);
  }

  else
  {
    sub_238085BD0(v29, v30, v31, v32, v33, v34, v35);
    *v3 = sub_2381548DC();
    v3[1] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACE8, &unk_2381588E0);
    sub_2380830B0(v36, (v3 + *(v24 + 44)));
    sub_2380712E4(v3, v6, &qword_27DEEACD0, &qword_238158880);
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_2380711D4(&qword_27DEEACF8, &qword_27DEEACD0, &qword_238158880, MEMORY[0x277CE11A8]);
    sub_238153ECC();
    sub_238071284(v3, &qword_27DEEACD0, &qword_238158880);
  }
}

double sub_2380830B0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD20, &qword_238158CA0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = *(a1 + 8);
  v21[5] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC070, &qword_238158CA8);
  sub_2381546FC();
  v13 = v21[0];
  v12 = v21[1];
  *v10 = sub_238153DEC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD28, &qword_238158CB0);
  sub_2380832C8(a1, &v10[*(v14 + 44)]);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  v17 = &v10[*(v5 + 44)];
  *v17 = sub_23808678C;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  sub_2380712E4(v10, v8, &qword_27DEEAD20, &qword_238158CA0);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD30, &qword_238158CB8);
  sub_2380712E4(v8, a2 + *(v18 + 48), &qword_27DEEAD20, &qword_238158CA0);
  sub_238086794(a1, v21);

  v19 = v13;
  sub_238071284(v10, &qword_27DEEAD20, &qword_238158CA0);
  sub_238071284(v8, &qword_27DEEAD20, &qword_238158CA0);

  return result;
}

uint64_t sub_2380832C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD38, &qword_238158CC0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v54[-v5];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD40, &qword_238158CC8);
  v7 = MEMORY[0x28223BE20](v66);
  v61 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54[-v10];
  MEMORY[0x28223BE20](v9);
  v71 = &v54[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD48, &qword_238158CD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v68 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v54[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD50, &qword_238158CD8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v67 = &v54[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v54[-v21];
  *v22 = sub_238153DEC();
  *(v22 + 1) = 0x4054000000000000;
  v22[16] = 0;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD58, &qword_238158CE0) + 44);
  v70 = v22;
  sub_23807DC10(a1, &v22[v23]);
  *v17 = sub_238153DEC();
  *(v17 + 1) = 0x4024000000000000;
  v17[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD60, &qword_238158CE8);
  sub_238083A7C(a1, &v17[*(v24 + 44)]);
  sub_2381548DC();
  sub_2381538EC();
  v65 = v78;
  v64 = v80;
  v63 = v82;
  v62 = v83;
  v77 = 1;
  v76 = v79;
  v75 = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *v6 = v84;
  sub_23807FDB8(a1, &v6[*(v4 + 52)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  LOBYTE(a1) = sub_23815412C();
  *(inited + 32) = a1;
  v26 = sub_23815414C();
  *(inited + 33) = v26;
  v27 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != a1)
  {
    v27 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v26)
  {
    v27 = sub_23815413C();
  }

  sub_23815377C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_23807121C(v6, v11, &qword_27DEEAD38, &qword_238158CC0);
  v36 = &v11[*(v66 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = v71;
  sub_23807121C(v11, v71, &qword_27DEEAD40, &qword_238158CC8);
  sub_2381548DC();
  sub_2381538EC();
  v66 = v84;
  v60 = v86;
  v59 = v88;
  v58 = v89;
  v74 = 1;
  v73 = v85;
  v72 = v87;
  v38 = v67;
  sub_2380712E4(v70, v67, &qword_27DEEAD50, &qword_238158CD8);
  v39 = v17;
  v40 = v68;
  sub_2380712E4(v17, v68, &qword_27DEEAD48, &qword_238158CD0);
  v41 = v77;
  v42 = v76;
  v43 = v75;
  v44 = v37;
  v45 = v61;
  sub_2380712E4(v44, v61, &qword_27DEEAD40, &qword_238158CC8);
  v55 = v74;
  v56 = v73;
  v57 = v72;
  v46 = v69;
  sub_2380712E4(v38, v69, &qword_27DEEAD50, &qword_238158CD8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD68, &qword_238158D40);
  v48 = v46 + v47[12];
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_2380712E4(v40, v46 + v47[16], &qword_27DEEAD48, &qword_238158CD0);
  v49 = v46 + v47[20];
  *v49 = 0;
  *(v49 + 8) = v41;
  *(v49 + 16) = v65;
  *(v49 + 24) = v42;
  *(v49 + 32) = v64;
  *(v49 + 40) = v43;
  v50 = v62;
  *(v49 + 48) = v63;
  *(v49 + 56) = v50;
  sub_2380712E4(v45, v46 + v47[24], &qword_27DEEAD40, &qword_238158CC8);
  v51 = v46 + v47[28];
  *v51 = 0;
  *(v51 + 8) = v55;
  *(v51 + 16) = v66;
  *(v51 + 24) = v56;
  *(v51 + 32) = v60;
  *(v51 + 40) = v57;
  v52 = v58;
  *(v51 + 48) = v59;
  *(v51 + 56) = v52;
  sub_238071284(v71, &qword_27DEEAD40, &qword_238158CC8);
  sub_238071284(v39, &qword_27DEEAD48, &qword_238158CD0);
  sub_238071284(v70, &qword_27DEEAD50, &qword_238158CD8);
  sub_238071284(v45, &qword_27DEEAD40, &qword_238158CC8);
  sub_238071284(v40, &qword_27DEEAD48, &qword_238158CD0);
  return sub_238071284(v38, &qword_27DEEAD50, &qword_238158CD8);
}

uint64_t sub_238083A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADF0, &qword_238158E18);
  MEMORY[0x28223BE20](v102);
  v104 = &v79 - v3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADF8, &qword_238158E20);
  MEMORY[0x28223BE20](v103);
  v80 = &v79 - v4;
  v5 = sub_2381549AC();
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x28223BE20](v5);
  v94 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE00, &qword_238158E28);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v79 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE08, &qword_238158E30);
  MEMORY[0x28223BE20](v98);
  v99 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE10, &qword_238158E38);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v101 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v79 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE18, &qword_238158E40);
  MEMORY[0x28223BE20](v86);
  v88 = &v79 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE20, &qword_238158E48);
  MEMORY[0x28223BE20](v87);
  v79 = &v79 - v14;
  v108 = sub_2381530DC();
  v110 = *(v108 - 8);
  v15 = MEMORY[0x28223BE20](v108);
  v107 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v106 = &v79 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE28, &qword_238158E50);
  MEMORY[0x28223BE20](v81);
  v82 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE30, &qword_238158E58);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v97 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v109 = &v79 - v22;
  v91 = a1;
  v23 = *(a1 + 8);
  v24 = *(v23 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8);
  v111 = *(v23 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName);
  v112 = v24;
  sub_2380704A0();

  v25 = sub_23815438C();
  v27 = v26;
  v29 = v28;

  v30 = sub_23815435C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v27;
  v38 = v81;
  sub_238070490(v25, v37, v29 & 1);

  v111 = v30;
  v112 = v32;
  LOBYTE(a1) = v34 & 1;
  v39 = v82;
  v113 = a1;
  v114 = v36;
  sub_23815446C();
  sub_238070490(v30, v32, a1);

  v83 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor;
  v40 = *(v23 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
  KeyPath = swift_getKeyPath();
  v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE38, &qword_238158E90) + 36));
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = swift_getKeyPath();
  v44 = v39 + *(v38 + 36);
  *v44 = v43;
  *(v44 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  v45 = v106;
  v89 = v23;
  sub_238152A8C();

  v46 = v110;
  v47 = *(v110 + 104);
  v48 = v107;
  v85 = *MEMORY[0x277D54940];
  v49 = v108;
  v84 = v47;
  v47(v107);
  v50 = v45;
  v51 = v48;
  LOBYTE(v48) = sub_2381530CC();
  v52 = *(v46 + 8);
  v52(v51, v49);
  v110 = v46 + 8;
  v52(v50, v49);
  if (v48)
  {
    v53 = v79;
    sub_2380712E4(v39, v79, &qword_27DEEAE28, &qword_238158E50);
    v54 = v53 + *(v87 + 36);
    *v54 = 0x4024000000000000;
    *(v54 + 8) = 0;
    sub_2380712E4(v53, v88, &qword_27DEEAE20, &qword_238158E48);
    swift_storeEnumTagMultiPayload();
    sub_23808763C();
    sub_2380876C8();
    sub_238153ECC();
    sub_238071284(v53, &qword_27DEEAE20, &qword_238158E48);
  }

  else
  {
    sub_2380712E4(v39, v88, &qword_27DEEAE28, &qword_238158E50);
    swift_storeEnumTagMultiPayload();
    sub_23808763C();
    sub_2380876C8();
    sub_238153ECC();
  }

  v55 = sub_238071284(v39, &qword_27DEEAE28, &qword_238158E50);
  v56 = MEMORY[0x28223BE20](v55);
  *(&v79 - 2) = v91;
  MEMORY[0x28223BE20](v56);
  *(&v79 - 2) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE58, &qword_238158EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE60, &unk_238158ED0);
  sub_238087878();
  sub_2380711D4(&qword_27DEEAEA8, &qword_27DEEAE60, &unk_238158ED0, MEMORY[0x277CDF038]);
  v58 = v90;
  sub_2381542EC();
  v59 = v94;
  sub_23815499C();
  sub_2380711D4(&qword_27DEEAEB0, &qword_27DEEAE00, &qword_238158E28, MEMORY[0x277CDE5B0]);
  v60 = v99;
  v61 = v93;
  sub_23815458C();
  (*(v95 + 8))(v59, v96);
  (*(v92 + 8))(v58, v61);
  v62 = *(v89 + v83);
  v63 = swift_getKeyPath();
  v64 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEB8, &qword_238158EF8) + 36));
  *v64 = v63;
  v64[1] = v62;
  v65 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEC0, &qword_238158F00) + 36));
  *v65 = sub_23806AF5C;
  v65[1] = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  *(v60 + *(v98 + 36)) = v111;
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v106;
  sub_238152A8C();

  v68 = v107;
  v67 = v108;
  v84(v107, v85, v108);
  LOBYTE(v62) = sub_2381530CC();
  v52(v68, v67);
  v52(v66, v67);
  if (v62)
  {
    v69 = v80;
    sub_2380712E4(v60, v80, &qword_27DEEAE08, &qword_238158E30);
    v70 = v104;
    v71 = v69 + *(v103 + 36);
    *v71 = 0x4024000000000000;
    *(v71 + 8) = 0;
    sub_2380712E4(v69, v70, &qword_27DEEADF8, &qword_238158E20);
    swift_storeEnumTagMultiPayload();
    sub_238087AC8();
    sub_238087B54();
    v72 = v100;
    sub_238153ECC();
    sub_238071284(v69, &qword_27DEEADF8, &qword_238158E20);
  }

  else
  {
    sub_2380712E4(v60, v104, &qword_27DEEAE08, &qword_238158E30);
    swift_storeEnumTagMultiPayload();
    sub_238087AC8();
    sub_238087B54();
    v72 = v100;
    sub_238153ECC();
  }

  v73 = v109;
  sub_238071284(v60, &qword_27DEEAE08, &qword_238158E30);
  v74 = v97;
  sub_2380712E4(v73, v97, &qword_27DEEAE30, &qword_238158E58);
  v75 = v101;
  sub_2380712E4(v72, v101, &qword_27DEEAE10, &qword_238158E38);
  v76 = v105;
  sub_2380712E4(v74, v105, &qword_27DEEAE30, &qword_238158E58);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEE8, &qword_238158F50);
  sub_2380712E4(v75, v76 + *(v77 + 48), &qword_27DEEAE10, &qword_238158E38);
  sub_238071284(v72, &qword_27DEEAE10, &qword_238158E38);
  sub_238071284(v73, &qword_27DEEAE30, &qword_238158E58);
  sub_238071284(v75, &qword_27DEEAE10, &qword_238158E38);
  return sub_238071284(v74, &qword_27DEEAE30, &qword_238158E58);
}

uint64_t sub_23808482C(void *a1)
{
  sub_238153D8C();
  type metadata accessor for CNBoopSessionViewModel(0);
  sub_2380859C0();
  sub_2381539CC();
  swift_getKeyPath();
  sub_2381539DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEF0, &unk_238158FB8);
  sub_238087DAC();
  return sub_2381547AC();
}

void sub_23808497C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2380849FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_238084A70(uint64_t a1)
{
  v2 = *(*(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles) + 16);
  v7 = 0;
  v8 = v2;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  sub_238086794(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
  sub_238087E84();
  return sub_23815480C();
}

unint64_t *sub_238084B6C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result < *(*(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles) + 16))
  {
    sub_2380704A0();

    result = sub_23815438C();
    *a3 = result;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5 & 1;
    *(a3 + 24) = v6;
    return result;
  }

  __break(1u);
  return result;
}

void sub_238084C0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE80, &qword_238158EE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = *(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v18[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18[0] < *(v8 + 16))
  {
    v9 = v8 + 16 * v18[0];
    v10 = *(v9 + 40);
    v18[0] = *(v9 + 32);
    v18[1] = v10;
    sub_2380704A0();

    sub_2381546EC();
    sub_2380711D4(&qword_27DEEAE88, &qword_27DEEAE80, &qword_238158EE0, MEMORY[0x277CDEFF0]);
    sub_238087A6C();
    sub_2381543CC();
    (*(v5 + 8))(v7, v4);
    v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE78, &unk_238159EE0) + 36));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
    v13 = *MEMORY[0x277CE1050];
    v14 = sub_2381546BC();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = swift_getKeyPath();
    sub_23815424C();
    sub_23815421C();
    v15 = sub_23815425C();

    KeyPath = swift_getKeyPath();
    v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE58, &qword_238158EC8) + 36));
    *v17 = KeyPath;
    v17[1] = v15;
    return;
  }

  __break(1u);
}

void sub_238084ED8(uint64_t a1)
{
  if (qword_27DEEA020 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEACA8);
  sub_238086794(a1, v16);
  v3 = sub_23815291C();
  v4 = sub_2381550BC();
  sub_2380867CC(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = *(a1 + 8);
    *(v5 + 4) = sub_238085EAC(*(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName), *(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8), &v15);
    *(v5 + 12) = 2080;
    v8 = [*(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_contact) identifier];
    v9 = sub_238154CCC();
    v11 = v10;

    v16[0] = v9;
    v16[1] = v11;
    v12 = sub_238154D2C();
    v14 = sub_238085EAC(v12, v13, &v15);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_238060000, v3, v4, "CNBookSessionView appeared with contact: %s, %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v6, -1, -1);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }
}

uint64_t sub_2380850D0(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

void CNBoopSessionViewOld.transitionUI(receivedVCard:doneButtonCallback:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = sub_2381528BC();
  v11 = v10;
  sub_238085D80(a1, a2);
  v12 = sub_2381528CC();
  v13.n128_f64[0] = sub_238085CA0(v9, v11);
  if (v12 >> 62)
  {
    if (sub_2381554FC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2383E9A70](0, v12, v13);
      goto LABEL_6;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v12 + 32);
LABEL_6:
      v15 = v14;

      [v15 mutableCopy];
      sub_23815534C();
      swift_unknownObjectRelease();
      sub_238085DD4(0, v16);
      swift_dynamicCast();
      if (qword_27DEEA020 != -1)
      {
        swift_once();
      }

      v17 = sub_23815293C();
      __swift_project_value_buffer(v17, qword_27DEEACA8);
      v18 = v57;
      v19 = sub_23815291C();
      v20 = sub_2381550FC();
      v21 = v18;

      v49 = a3;
      if (os_log_type_enabled(v19, v20))
      {
        v48 = v15;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v50 = v23;
        *v22 = 136315138;
        v24 = [v21 identifier];
        v47 = a4;
        v25 = sub_238154CCC();
        v27 = v26;

        v28 = sub_238085EAC(v25, v27, &v50);

        *(v22 + 4) = v28;
        a4 = v47;
        _os_log_impl(&dword_238060000, v19, v20, "CNBoopSessionView saving to contact store {id: %s}", v22, 0xCu);
        v29 = __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x2383EA8A0](v23, -1, -1, v29);
        v30 = v22;
        v15 = v48;
        MEMORY[0x2383EA8A0](v30, -1, -1);
      }

      sub_23815512C();
      if (v4)
      {
        v31 = v4;
        v32 = sub_23815291C();
        v33 = sub_2381550DC();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          v36 = v4;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 4) = v37;
          *v35 = v37;
          _os_log_impl(&dword_238060000, v32, v33, "Failed to save contact: %@", v34, 0xCu);
          sub_238071284(v35, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v35, -1, -1);
          MEMORY[0x2383EA8A0](v34, -1, -1);
        }

        v50 = 0;
        v51 = 0xE000000000000000;
        sub_23815541C();
        MEMORY[0x2383E9410](0xD000000000000018, 0x8000000238161430);
        v57 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
        sub_2381554DC();
        v38 = v50;
        v39 = v51;
        sub_238085E58();
        swift_allocError();
        *v40 = v38;
        *(v40 + 8) = v39;
        *(v40 + 16) = 4;
        swift_willThrow();
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v50 = v21;
        v51 = v49;
        v52 = a4;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 5;
        swift_retain_n();
        v41 = v21;

        sub_238152A9C();
      }

      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_27DEEA020 != -1)
  {
LABEL_22:
    swift_once();
  }

  v42 = sub_23815293C();
  __swift_project_value_buffer(v42, qword_27DEEACA8);
  v43 = sub_23815291C();
  v44 = sub_2381550DC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_238060000, v43, v44, "Failed to import contact which could not be deserialized", v45, 2u);
    MEMORY[0x2383EA8A0](v45, -1, -1);
  }

  sub_238085E58();
  swift_allocError();
  *v46 = 0xD000000000000022;
  *(v46 + 8) = 0x8000000238161450;
  *(v46 + 16) = 3;
  swift_willThrow();
}

void CNBoopSessionViewOld.transitionUI(receivedContactID:doneButtonCallback:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v9 = sub_2380FEF6C(a1, a2);
  if (v9)
  {
    v10 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v19[0] = v10;
    v19[1] = a3;
    v19[2] = a4;
    memset(&v19[3], 0, 24);
    v20 = 5;
    swift_retain_n();

    v11 = v10;
    sub_238152A9C();
  }

  else
  {
    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v12 = sub_23815293C();
    __swift_project_value_buffer(v12, qword_27DEEACA8);

    v13 = sub_23815291C();
    v14 = sub_2381550DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_238085EAC(a1, a2, v19);
      _os_log_impl(&dword_238060000, v13, v14, "Failed to fetch contact from identifier: %s", v15, 0xCu);
      v17 = __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x2383EA8A0](v16, -1, -1, v17);
      MEMORY[0x2383EA8A0](v15, -1, -1);
    }

    sub_238085E58();
    swift_allocError();
    *v18 = 0xD000000000000022;
    *(v18 + 8) = 0x8000000238161450;
    *(v18 + 16) = 3;
    swift_willThrow();
  }
}

unint64_t sub_2380859C0()
{
  result = qword_27DEEACC0;
  if (!qword_27DEEACC0)
  {
    v3 = type metadata accessor for CNBoopSessionViewModel(255);
    result = swift_getWitnessTable(byte_23815B768, v3, v0, v1);
    atomic_store(result, &qword_27DEEACC0);
  }

  return result;
}

double sub_238085A74@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_238085B08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238086AA0(v2, v3, v4, v5, v6, v7, v8);
  return sub_238152A9C();
}

double sub_238085BD0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3 && a7 != 4)
    {
      if (a7 != 5)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  if (a7)
  {
    if (a7 == 1)
    {
      sub_238085CA0(a1, a2);
    }

    else if (a7 != 2)
    {
      return result;
    }

LABEL_16:

    return result;
  }

  sub_23807A454(a1, a2);

  return sub_23807A454(a3, a4);
}

double sub_238085CA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_238085CF4()
{
  result = qword_27DEEACF0;
  if (!qword_27DEEACF0)
  {
    result = swift_getWitnessTable(byte_23815EE08, &type metadata for SnapshottingContactView, v0, v1);
    atomic_store(result, &qword_27DEEACF0);
  }

  return result;
}

uint64_t sub_238085D48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

uint64_t sub_238085D80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_238085DD4(uint64_t a1, uint64_t a2)
{
  result = qword_27DEEC050;
  if (!qword_27DEEC050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEC050);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_238085E58()
{
  result = qword_27DEEAD00;
  if (!qword_27DEEAD00)
  {
    result = swift_getWitnessTable(aE, &type metadata for BoopSessionViewInitError, v0, v1);
    atomic_store(result, &qword_27DEEAD00);
  }

  return result;
}

unint64_t sub_238085EAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238086264(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_238086370(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_238085FA8()
{
  result = qword_27DEEAD08;
  if (!qword_27DEEAD08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAD10, &qword_2381589B8);
    v4[0] = sub_238085CF4();
    v4[1] = sub_2380711D4(&qword_27DEEACF8, &qword_27DEEACD0, &qword_238158880, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEAD08);
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

uint64_t sub_238086080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2380860C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI16BoopSessionStateO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 5)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_238086190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2380861D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_23808622C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_238086264(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2380863CC(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_23815544C();
    a6 = v11;
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

uint64_t sub_238086370(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2380863CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_238086418(a1, a2);
  sub_238086548(&unk_284AEE900);
  return v3;
}

void *sub_238086418(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23813189C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23815544C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_238154E0C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23813189C(v10, 0);
        result = sub_23815540C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_238086548(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_238086634(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_238086634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD18, &qword_238158C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_238086804()
{
  result = qword_27DEEADB8;
  if (!qword_27DEEADB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEADA0, &qword_238158D78);
    v4[0] = sub_238086890();
    v4[1] = sub_238086940();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEADB8);
  }

  return result;
}

unint64_t sub_238086890()
{
  result = qword_27DEEADC0;
  if (!qword_27DEEADC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAD98, &qword_238158D70);
    v4[0] = sub_2380711D4(&qword_27DEEADC8, &qword_27DEEADA8, &unk_238158D80, MEMORY[0x277CE14C0]);
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEADC0);
  }

  return result;
}

unint64_t sub_238086940()
{
  result = qword_27DEEADD0;
  if (!qword_27DEEADD0)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAD78, &qword_238158D50);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    v4[3] = &type metadata for BoopButtonStyle;
    v4[4] = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
    v4[5] = sub_238086A48();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEADD0);
  }

  return result;
}

unint64_t sub_238086A48()
{
  result = qword_27DEEADD8;
  if (!qword_27DEEADD8)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for BoopButtonStyle, v0, v1);
    atomic_store(result, &qword_27DEEADD8);
  }

  return result;
}

void *sub_238086AA0(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3 && a7 != 4)
    {
      if (a7 != 5)
      {
        return result;
      }

      v7 = result;
    }

    goto LABEL_16;
  }

  if (a7)
  {
    if (a7 == 1)
    {
      sub_238085D80(result, a2);
    }

    else if (a7 != 2)
    {
      return result;
    }

LABEL_16:
  }

  sub_238086B74(result, a2);

  return sub_238086B74(a3, a4);
}

uint64_t sub_238086B74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7, v1);
}

uint64_t sub_238086C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v33 = a4;
  v34 = a6;
  v31[1] = a5;
  v32 = a3;
  v37 = sub_23815400C();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2381530DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v31 - v17;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  (*(v13 + 104))(v16, *MEMORY[0x277D54940], v12);
  v19 = sub_2381530CC();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v20(v18, v12);
  if (v19)
  {
    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v21 = sub_23815293C();
    __swift_project_value_buffer(v21, qword_27DEEACA8);
    v22 = sub_23815291C();
    v23 = sub_2381550DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_238060000, v22, v23, "Unlock from view buttons is not yet implemented.", v24, 2u);
      MEMORY[0x2383EA8A0](v24, -1, -1);
    }
  }

  sub_23815490C();
  v25 = sub_238153FFC();
  MEMORY[0x28223BE20](v25);
  v31[-2] = a2;
  v26 = swift_allocObject();
  v27 = *(a2 + 16);
  *(v26 + 16) = *a2;
  *(v26 + 32) = v27;
  v29 = v32;
  v28 = v33;
  *(v26 + 48) = *(a2 + 32);
  *(v26 + 56) = v29;
  *(v26 + 64) = v28;
  sub_238086794(a2, v38);
  v34(v29, v28);
  sub_23815397C();

  return (*(v9 + 8))(v11, v37);
}

uint64_t sub_238087024()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7, v1);
}

uint64_t sub_23808708C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_238081E4C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_238087150()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_238087244(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238085CA0(a1, a2);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7, v1);
}

uint64_t sub_2380872C4()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7, v1);
}

uint64_t sub_23808730C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_2380814FC(a1, v4, v5, v7, v6);
}

uint64_t sub_2380873CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_2381530DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  (*(v4 + 104))(v7, *MEMORY[0x277D54940], v3);
  v10 = sub_2381530CC();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v12 = (v11)(v9, v3);
  if (v10)
  {
    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v13 = sub_23815293C();
    __swift_project_value_buffer(v13, qword_27DEEACA8);
    v14 = sub_23815291C();
    v15 = sub_2381550DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_238060000, v14, v15, "Unlock from view buttons is not yet implemented.", v16, 2u);
      MEMORY[0x2383EA8A0](v16, -1, -1);
    }
  }

  return a2(v12);
}

unint64_t sub_23808763C()
{
  result = qword_27DEEAE40;
  if (!qword_27DEEAE40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE20, &qword_238158E48);
    v4[0] = sub_2380876C8();
    v4[1] = MEMORY[0x277CDF4D0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAE40);
  }

  return result;
}

unint64_t sub_2380876C8()
{
  result = qword_27DEEAE48;
  if (!qword_27DEEAE48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE28, &qword_238158E50);
    v4[0] = sub_238087780();
    v4[1] = sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAE48);
  }

  return result;
}

unint64_t sub_238087780()
{
  result = qword_27DEEAE50;
  if (!qword_27DEEAE50)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE38, &qword_238158E90);
    v4[2] = MEMORY[0x277CE0BD8];
    v4[3] = MEMORY[0x277CE0BC8];
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAE50);
  }

  return result;
}

unint64_t sub_238087878()
{
  result = qword_27DEEAE68;
  if (!qword_27DEEAE68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE58, &qword_238158EC8);
    v4[0] = sub_238087930();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAE68);
  }

  return result;
}

unint64_t sub_238087930()
{
  result = qword_27DEEAE70;
  if (!qword_27DEEAE70)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE78, &unk_238159EE0);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE80, &qword_238158EE0);
    v4[3] = &type metadata for HandlePopupStyle;
    v4[4] = sub_2380711D4(&qword_27DEEAE88, &qword_27DEEAE80, &qword_238158EE0, MEMORY[0x277CDEFF0]);
    v4[5] = sub_238087A6C();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_2380711D4(&qword_27DEEAE98, &qword_27DEEAEA0, &unk_238158EE8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAE70);
  }

  return result;
}

unint64_t sub_238087A6C()
{
  result = qword_27DEEAE90;
  if (!qword_27DEEAE90)
  {
    result = swift_getWitnessTable(byte_23815CBE4, &type metadata for HandlePopupStyle, v0, v1);
    atomic_store(result, &qword_27DEEAE90);
  }

  return result;
}

unint64_t sub_238087AC8()
{
  result = qword_27DEEAEC8;
  if (!qword_27DEEAEC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEADF8, &qword_238158E20);
    v4[0] = sub_238087B54();
    v4[1] = MEMORY[0x277CDF4D0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAEC8);
  }

  return result;
}

unint64_t sub_238087B54()
{
  result = qword_27DEEAED0;
  if (!qword_27DEEAED0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE08, &qword_238158E30);
    v4[0] = sub_238087BE0();
    v4[1] = MEMORY[0x277CE0770];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAED0);
  }

  return result;
}

unint64_t sub_238087BE0()
{
  result = qword_27DEEAED8;
  if (!qword_27DEEAED8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAEC0, &qword_238158F00);
    v4[0] = sub_238087C6C();
    v4[1] = MEMORY[0x277CE03F0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAED8);
  }

  return result;
}

unint64_t sub_238087C6C()
{
  result = qword_27DEEAEE0;
  if (!qword_27DEEAEE0)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAEB8, &qword_238158EF8);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE00, &qword_238158E28);
    v4[3] = sub_2380711D4(&qword_27DEEAEB0, &qword_27DEEAE00, &qword_238158E28, MEMORY[0x277CDE5B0]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAEE0);
  }

  return result;
}

unint64_t sub_238087DAC()
{
  result = qword_27DEEAEF8;
  if (!qword_27DEEAEF8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAEF0, &unk_238158FB8);
    v4[0] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27DEEAEF8);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7, v1);
}

unint64_t sub_238087E84()
{
  result = qword_27DEEAF08;
  if (!qword_27DEEAF08)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF00, &qword_238158FE0);
    v4 = sub_238087F10();
    v5[0] = MEMORY[0x277D83BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83D40], v3, v5);
    atomic_store(result, &qword_27DEEAF08);
  }

  return result;
}

unint64_t sub_238087F10()
{
  result = qword_27DEEAF10;
  if (!qword_27DEEAF10)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BB0], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &qword_27DEEAF10);
  }

  return result;
}

unint64_t sub_238087F64()
{
  result = qword_27DEEAF88;
  if (!qword_27DEEAF88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF28, &qword_238158FF8);
    v4[0] = sub_238087FE8();
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEAF88);
  }

  return result;
}

unint64_t sub_238087FE8()
{
  result = qword_27DEEAF90;
  if (!qword_27DEEAF90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF80, &qword_238159050);
    v4[0] = sub_2380711D4(&qword_27DEEAF98, &qword_27DEEAFA0, &qword_238159058, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAF90);
  }

  return result;
}

unint64_t sub_2380880A0()
{
  result = qword_27DEEAFA8;
  if (!qword_27DEEAFA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF78, &qword_238159048);
    v4[0] = sub_23808812C();
    v4[1] = sub_2380881B8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEAFA8);
  }

  return result;
}

unint64_t sub_23808812C()
{
  result = qword_27DEEAFB0;
  if (!qword_27DEEAFB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF70, &qword_238159040);
    v4[0] = sub_238087FE8();
    v4[1] = sub_2380881B8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEAFB0);
  }

  return result;
}

unint64_t sub_2380881B8()
{
  result = qword_27DEEAFB8;
  if (!qword_27DEEAFB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF50, &qword_238159020);
    v4[0] = sub_238088244();
    v4[1] = sub_2380882C8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEAFB8);
  }

  return result;
}

unint64_t sub_238088244()
{
  result = qword_27DEEAFC0;
  if (!qword_27DEEAFC0)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAFC8, &qword_238159060);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAFC0);
  }

  return result;
}

unint64_t sub_2380882C8()
{
  result = qword_27DEEAFD0;
  if (!qword_27DEEAFD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF40, &qword_238159010);
    v4[0] = sub_238088354();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAFD0);
  }

  return result;
}

unint64_t sub_238088354()
{
  result = qword_27DEEAFD8;
  if (!qword_27DEEAFD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAFE0, &qword_238159068);
    v4[0] = sub_23808840C();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAFD8);
  }

  return result;
}

unint64_t sub_23808840C()
{
  result = qword_27DEEAFE8;
  if (!qword_27DEEAFE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAFF0, &qword_238159070);
    v4[0] = sub_2380884C4();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAFE8);
  }

  return result;
}

unint64_t sub_2380884C4()
{
  result = qword_27DEEAFF8;
  if (!qword_27DEEAFF8)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB000, &qword_238159078);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF38, &qword_238159008);
    v4[3] = &type metadata for HorizontalProgressViewStyle;
    v4[4] = sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008, MEMORY[0x277CDD7F8]);
    v4[5] = sub_238088600();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEAFF8);
  }

  return result;
}

unint64_t sub_238088600()
{
  result = qword_27DEEB010;
  if (!qword_27DEEB010)
  {
    result = swift_getWitnessTable(byte_23815CBAC, &type metadata for HorizontalProgressViewStyle, v0, v1);
    atomic_store(result, &qword_27DEEB010);
  }

  return result;
}

unint64_t sub_238088654()
{
  result = qword_27DEEB018;
  if (!qword_27DEEB018)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF30, &qword_238159000);
    v4[0] = sub_238087F64();
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEB018);
  }

  return result;
}

uint64_t sub_2380886E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153CCC();
  *a1 = result;
  return result;
}

uint64_t sub_238088784()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEB040);
  v1 = __swift_project_value_buffer(v0, qword_27DEEB040);
  if (qword_27DEEA040 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF31B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_23808884C()
{
  v1 = *v0;
  if (*(v0 + 64) > 1u)
  {
    if (*(v0 + 64) == 2)
    {
      sub_23815541C();

      v18 = 0xD000000000000016;
      v19 = 0x80000002381616C0;
      v13[0] = v1;
      v3 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB0E0, &qword_238159370);
      v4 = sub_238154D2C();
      MEMORY[0x2383E9410](v4);

      return v18;
    }

    return 1701602409;
  }

  else
  {
    v2 = *(v0 + 8);
    if (!*(v0 + 64))
    {
      v18 = 0x28676E6974696177;
      v19 = 0xE800000000000000;
      MEMORY[0x2383E9410](v1, v2);
      MEMORY[0x2383E9410](41, 0xE100000000000000);
      return v18;
    }

    v18 = *v0;
    v19 = v2;
    v6 = *(v0 + 32);
    v20 = *(v0 + 16);
    v21 = v6;
    v22 = *(v0 + 48);
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_2380712E4(&v18, v13, &qword_27DEEB0E8, &qword_238159378);
    sub_23815541C();
    v17 = v12;
    MEMORY[0x2383E9410](0xD000000000000011, 0x80000002381616E0);
    v7 = v19;
    if (v19)
    {
      v8 = v18;
      v9 = v20;
      v10 = v21;
      v11 = v22;
    }

    else
    {
      sub_23808E828(v0);
      v9 = 0uLL;
      v7 = 0xE600000000000000;
      v8 = 0x3E656E6F6E3CLL;
      v10 = 0uLL;
      v11 = 0uLL;
    }

    v13[0] = v8;
    v13[1] = v7;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    sub_2381554DC();
    sub_23808E858(v13);
    MEMORY[0x2383E9410](41, 0xE100000000000000);
    return v17;
  }
}

BOOL sub_238088A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v4 = v2 == 3 && (*(a2 + 8) | *a2 | *(a2 + 16) | *(a2 + 24) | *(a2 + 32) | *(a2 + 40) | *(a2 + 48) | *(a2 + 56)) == 0;
  if (*(a1 + 64) == 2)
  {
    v4 = v2 == 2;
  }

  v5 = v2 == 0;
  if (*(a1 + 64))
  {
    v5 = v2 == 1;
  }

  if (*(a1 + 64) <= 1u)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

id sub_238088AD0()
{
  result = [objc_allocWithZone(type metadata accessor for DDDeviceAccessController(0)) init];
  qword_27DEF3190 = result;
  return result;
}

void sub_238088B04(uint64_t a1)
{
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v3 = sub_23815293C();
  __swift_project_value_buffer(v3, qword_27DEEB040);
  sub_23808E888(a1, v22);
  v4 = v1;
  v5 = sub_23815291C();
  v6 = sub_2381550FC();
  sub_23808E828(a1);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    v9 = sub_23808884C();
    v11 = sub_238085EAC(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v22[2] = v18;
    v22[3] = v19;
    v23 = v20;
    v22[0] = v16;
    v22[1] = v17;
    v12 = sub_23808884C();
    v14 = v13;
    sub_23808E828(v22);
    v15 = sub_238085EAC(v12, v14, &v21);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_238060000, v5, v6, "currentState changed from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v8, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }
}

__n128 sub_238088D20@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

id sub_238088DC0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB0F0, &unk_2381593D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID];
  *v8 = 0;
  v8[1] = 0;
  v9 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role] = 0;
  v10 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted] = 0;
  v12 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
  *&v0[v12] = sub_2380EE4C8(v9);
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest] = 0;
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery] = 0;
  v13 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController__currentState;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v23 = 3;
  sub_238152A5C();
  (*(v3 + 32))(&v0[v13], v5, v2);
  sub_2380BDAE8();
  v14 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_localDeviceName];
  *v14 = v15;
  v14[1] = v16;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_238088FC4(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID];
  if (*&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8] && (v3 = v1, *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName + 8]))
  {
    v4 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery;
    if (*&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery])
    {
      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v5 = sub_23815293C();
      __swift_project_value_buffer(v5, qword_27DEEB040);
      v6 = sub_23815291C();
      v7 = sub_2381550DC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_238060000, v6, v7, "Invalidating existing discovery before starting new one.", v8, 2u);
        MEMORY[0x2383EA8A0](v8, -1, -1);
      }

      v9 = *&v3[v4];
      if (v9)
      {
        [v9 invalidate];
        v10 = *&v3[v4];
      }

      else
      {
        v10 = 0;
      }

      *&v3[v4] = 0;
    }

    sub_2380BDAE8();
    v14 = &v3[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_localDeviceName];
    *v14 = v15;
    v14[1] = v16;

    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v17 = sub_23815293C();
    __swift_project_value_buffer(v17, qword_27DEEB040);
    v18 = v3;
    v19 = sub_23815291C();
    v20 = sub_2381550FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 136315138;
      oslog = v2;
      aBlock[0] = v22;
      v23 = v18;
      v24 = v4;
      v25 = *v14;
      v26 = v14[1];

      v27 = sub_238085EAC(v25, v26, aBlock);
      v4 = v24;

      *(v21 + 4) = v27;
      v18 = v23;
      v2 = oslog;
      _os_log_impl(&dword_238060000, v19, v20, "Starting DDDeviceAccessController with device name: %s", v21, 0xCu);
      v28 = __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2383EA8A0](v22, -1, -1, v28);
      MEMORY[0x2383EA8A0](v21, -1, -1);
    }

    v29 = sub_2380895BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2381590E0;
    *(v30 + 32) = v29;
    objc_allocWithZone(MEMORY[0x277D04748]);
    v31 = v29;
    v32 = sub_23808E8C0(v30);
    v33 = *&v3[v4];
    *&v3[v4] = v32;

    v34 = *&v3[v4];
    if (v34)
    {
      if (v2[1].isa)
      {
        v35 = v34;

        v36 = sub_238154C8C();
      }

      else
      {
        v35 = v34;
        v36 = 0;
      }

      [v35 setBundleID_];

      v37 = *&v3[v4];
      if (v37)
      {
        v38 = v37;
        [v38 setFlags_];

        v39 = *&v3[v4];
        if (v39)
        {
          v40 = v39;

          v41 = sub_238154C8C();

          [v40 setDeviceOTANameToBroadcast_];

          v42 = *&v3[v4];
          if (v42)
          {
            v43 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_23808EA80;
            aBlock[5] = v43;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_23808BDF8;
            aBlock[3] = &block_descriptor_20;
            v44 = _Block_copy(aBlock);
            v45 = v42;

            [v45 setEventHandler_];
            _Block_release(v44);

            v46 = *&v3[v4];
            if (v46)
            {
              v47 = v46;
              [v47 activate];
            }
          }
        }
      }
    }

    v18[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted] = 1;
  }

  else
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v11 = sub_23815293C();
    __swift_project_value_buffer(v11, qword_27DEEB040);
    osloga = sub_23815291C();
    v12 = sub_2381550DC();
    if (os_log_type_enabled(osloga, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238060000, osloga, v12, "Error starting device access discovery with no bundle id or service name.", v13, 2u);
      MEMORY[0x2383EA8A0](v13, -1, -1);
    }
  }
}

id sub_2380895BC()
{
  v1 = v0;
  v2 = sub_2381527EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D04750]) init];
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8))
  {

    v7 = sub_238154C8C();
  }

  else
  {
    v7 = 0;
  }

  [v6 setBundleID_];

  sub_2381527DC();
  sub_23815279C();
  (*(v3 + 8))(v5, v2);
  v8 = sub_238154C8C();

  [v6 setAssociationIdentifier_];

  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8))
  {

    v9 = sub_238154C8C();
  }

  else
  {
    v9 = 0;
  }

  [v6 setDisplayName_];

  [v6 setFlags_];
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName + 8))
  {

    v10 = sub_238154C8C();
  }

  else
  {
    v10 = 0;
  }

  [v6 setWifiAwareServiceName_];

  v11 = objc_allocWithZone(MEMORY[0x277D04778]);
  v12 = sub_238154C8C();
  v13 = [v11 initWithString:v12 compareOptions:2];

  [v6 setWifiAwareVendorNameMatch_];
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role))
  {
    v14 = 20;
  }

  else
  {
    v14 = 10;
  }

  [v6 setWifiAwareServiceType_];
  return v6;
}

void sub_2380898A4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_238089900(a1);
  }
}

void sub_238089900(void *a1)
{
  v2 = v1;
  v4 = [a1 eventType];
  if (v4 > 41)
  {
    if (v4 > 55)
    {
      if (v4 == 56)
      {
        if (qword_27DEEA028 != -1)
        {
          swift_once();
        }

        v106 = sub_23815293C();
        __swift_project_value_buffer(v106, qword_27DEEB040);
        v107 = sub_23815291C();
        v108 = sub_2381550FC();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_238060000, v107, v108, "DAEvent wiFiAwarePairingRequest", v109, 2u);
          MEMORY[0x2383EA8A0](v109, -1, -1);
        }

        objc_opt_self();
        v110 = swift_dynamicCastObjCClass();
        if (!v110)
        {
          sub_23815541C();
          MEMORY[0x2383E9410](0xD00000000000005DLL, 0x8000000238161780);
          v252 = [a1 description];
          v253 = sub_238154CCC();
          v255 = v254;

          MEMORY[0x2383E9410](v253, v255);

          sub_2381554EC();
          __break(1u);
          return;
        }

        v111 = v110;
        oslog = a1;
        v112 = sub_23815291C();
        v113 = sub_2381550FC();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_238060000, v112, v113, "Calling handleWiFiAwarePairingRequest", v114, 2u);
          MEMORY[0x2383EA8A0](v114, -1, -1);
        }

        sub_23808E034(v111);
        goto LABEL_104;
      }

      if (v4 != 60)
      {
        return;
      }

      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v35 = sub_23815293C();
      __swift_project_value_buffer(v35, qword_27DEEB040);
      oslog = sub_23815291C();
      v6 = sub_2381550FC();
      if (!os_log_type_enabled(oslog, v6))
      {
        goto LABEL_104;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "DAEvent xpcInterrupted";
      goto LABEL_36;
    }

    if (v4 != 42)
    {
      if (v4 != 50)
      {
        return;
      }

      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v9 = sub_23815293C();
      __swift_project_value_buffer(v9, qword_27DEEB040);
      v10 = a1;
      oslog = sub_23815291C();
      v11 = sub_2381550FC();

      if (!os_log_type_enabled(oslog, v11))
      {
        goto LABEL_104;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v292 = v13;
      *v12 = 136315138;
      v14 = v10;
      v15 = [v14 description];
      v16 = sub_238154CCC();
      v18 = v17;

      v19 = sub_238085EAC(v16, v18, &v292);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_238060000, oslog, v11, "DAEvent devicesPresentChanged %s", v12, 0xCu);
      v20 = __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2383EA8A0](v13, -1, -1, v20);
      MEMORY[0x2383EA8A0](v12, -1, -1);
      goto LABEL_101;
    }

    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v37 = sub_23815293C();
    __swift_project_value_buffer(v37, qword_27DEEB040);
    v38 = sub_23815291C();
    v39 = sub_2381550FC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_238060000, v38, v39, "DAEvent deviceChanged", v40, 2u);
      MEMORY[0x2383EA8A0](v40, -1, -1);
    }

    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    oslog = a1;
    if (v41)
    {
      v42 = [v41 device];
      v43 = [v42 identifier];
      if (v43)
      {
        v44 = v43;
        v45 = sub_238154CCC();
        v47 = v46;

        v48 = [v42 wifiAwareOTAName];
        if (v48)
        {
          v49 = v48;
          v279 = sub_238154CCC();
          v280 = v50;

          v51 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
          swift_beginAccess();

          v52 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v287 = *(v2 + v51);
          *(&v2->isa + v51) = 0x8000000000000000;
          sub_2380C73E4(v52, v45, v47, isUniquelyReferenced_nonNull_native, v54);

          *(&v2->isa + v51) = v287;
          swift_endAccess();
          v55 = v52;
          v56 = sub_23815291C();
          v57 = sub_2381550FC();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = v2;
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *v59 = 138412290;
            *(v59 + 4) = v55;
            *v60 = v55;
            v61 = v55;
            _os_log_impl(&dword_238060000, v56, v57, "Device changed: %@", v59, 0xCu);
            sub_238071284(v60, &unk_27DEECA10, &qword_2381588F0);
            MEMORY[0x2383EA8A0](v60, -1, -1);
            v62 = v59;
            v2 = v58;
            MEMORY[0x2383EA8A0](v62, -1, -1);
          }

          v63 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
          if (v63)
          {
            log = v2;
            v275 = *(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);

            v64 = [v55 appAccessInfoMap];
            if (v64)
            {
              v65 = v64;
              v273 = v45;
              v277 = v47;
              sub_23807A3F8(0, &qword_27DEEB100, 0x277D04730);
              v66 = sub_238154C1C();

              v67 = 1 << *(v66 + 32);
              v68 = -1;
              if (v67 < 64)
              {
                v68 = ~(-1 << v67);
              }

              v69 = v68 & *(v66 + 64);
              v70 = (v67 + 63) >> 6;

              v71 = 0;
              while (v69)
              {
                v72 = v71;
LABEL_56:
                v73 = __clz(__rbit64(v69));
                v69 &= v69 - 1;
                v74 = v73 | (v72 << 6);
                v75 = (*(v66 + 48) + 16 * v74);
                v76 = *v75;
                v77 = v75[1];
                v78 = *(*(v66 + 56) + 8 * v74);

                v79 = v78;
                sub_23808D450(v76, v77, v79, v275, v63, log, v279, v280, v55, v273, v277);
              }

              while (1)
              {
                v72 = v71 + 1;
                if (__OFADD__(v71, 1))
                {
                  break;
                }

                if (v72 >= v70)
                {

                  return;
                }

                v69 = *(v66 + 64 + 8 * v72);
                ++v71;
                if (v69)
                {
                  v71 = v72;
                  goto LABEL_56;
                }
              }

              __break(1u);
LABEL_202:
              __break(1u);
              goto LABEL_203;
            }
          }

          if (![v55 state])
          {
            v140 = v55;
            v141 = sub_23815291C();
            v142 = sub_2381550DC();

            if (os_log_type_enabled(v141, v142))
            {
              v143 = v2;
              v144 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              *&v292 = v145;
              *v144 = 136315138;
              v146 = [v140 wifiAwareOTAName];
              if (v146)
              {
                v147 = v146;
                v148 = sub_238154CCC();
                v150 = v149;
              }

              else
              {
                v150 = 0xEE00656369766544;
                v148 = 0x206E776F6E6B6E55;
              }

              v248 = sub_238085EAC(v148, v150, &v292);

              *(v144 + 4) = v248;
              _os_log_impl(&dword_238060000, v141, v142, "Pairing failed for %s", v144, 0xCu);
              v249 = __swift_destroy_boxed_opaque_existential_1(v145);
              MEMORY[0x2383EA8A0](v145, -1, -1, v249);
              MEMORY[0x2383EA8A0](v144, -1, -1);

              v2 = v143;
            }

            else
            {
            }

            sub_23808EA88();
            v250 = swift_allocError();
            swift_getKeyPath();
            swift_getKeyPath();
            sub_238152A8C();

            v294 = v289;
            v295 = v290;
            v296 = v291;
            v292 = v287;
            v293 = v288;
            swift_getKeyPath();
            swift_getKeyPath();
            v2;
            v251 = v250;
            sub_238152A9C();
            sub_238088B04(&v292);
            sub_23808E828(&v292);

            goto LABEL_199;
          }

          return;
        }
      }

      v129 = v42;
      v124 = sub_23815291C();
      v130 = sub_2381550DC();

      if (os_log_type_enabled(v124, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v131 = 138412290;
        *(v131 + 4) = v129;
        *v132 = v129;
        logb = v129;
        v133 = "Device changed without expected identifier and name information %@";
LABEL_92:
        _os_log_impl(&dword_238060000, v124, v130, v133, v131, 0xCu);
        sub_238071284(v132, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v132, -1, -1);
        v128 = v131;
        goto LABEL_93;
      }

LABEL_94:

      goto LABEL_103;
    }

    loga = sub_23815291C();
    v115 = sub_2381550DC();

    if (!os_log_type_enabled(loga, v115))
    {
      goto LABEL_83;
    }

    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v116 = 138412290;
    *(v116 + 4) = oslog;
    *v117 = oslog;
    v118 = oslog;
    v119 = "Received device changed event but the event object cannot be cast to device event %@";
LABEL_82:
    _os_log_impl(&dword_238060000, loga, v115, v119, v116, 0xCu);
    sub_238071284(v117, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v117, -1, -1);
    MEMORY[0x2383EA8A0](v116, -1, -1);
    goto LABEL_83;
  }

  if (v4 <= 39)
  {
    if (v4 != 10)
    {
      if (v4 != 20)
      {
        return;
      }

      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v5 = sub_23815293C();
      __swift_project_value_buffer(v5, qword_27DEEB040);
      oslog = sub_23815291C();
      v6 = sub_2381550FC();
      if (!os_log_type_enabled(oslog, v6))
      {
        goto LABEL_104;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "DAEvent invalidated";
      goto LABEL_36;
    }

    if (qword_27DEEA028 == -1)
    {
LABEL_34:
      v36 = sub_23815293C();
      __swift_project_value_buffer(v36, qword_27DEEB040);
      oslog = sub_23815291C();
      v6 = sub_2381550FC();
      if (!os_log_type_enabled(oslog, v6))
      {
LABEL_104:
        v122 = oslog;
        goto LABEL_105;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "DAEvent activated";
LABEL_36:
      _os_log_impl(&dword_238060000, oslog, v6, v8, v7, 2u);
      MEMORY[0x2383EA8A0](v7, -1, -1);
      goto LABEL_104;
    }

LABEL_203:
    swift_once();
    goto LABEL_34;
  }

  if (v4 != 40)
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v21 = sub_23815293C();
    __swift_project_value_buffer(v21, qword_27DEEB040);
    v22 = sub_23815291C();
    v23 = sub_2381550FC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_238060000, v22, v23, "DAEvent deviceLost", v24, 2u);
      MEMORY[0x2383EA8A0](v24, -1, -1);
    }

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    oslog = a1;
    if (v25)
    {
      v26 = [v25 device];
      v27 = [v26 identifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_238154CCC();
        v31 = v30;

        swift_beginAccess();
        v32 = sub_2380E7C8C(v29, v31);
        swift_endAccess();

        v33 = (&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
        v34 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
        if (v34)
        {
          if (v29 == *v33 && v34 == v31)
          {

            goto LABEL_98;
          }

          v134 = sub_2381555CC();

          if (v134)
          {
LABEL_98:
            *v33 = 0;
            v33[1] = 0;

            v135 = [oslog error];
            if (v135)
            {
              v136 = v135;
              swift_getKeyPath();
              swift_getKeyPath();
              v137 = v136;
              sub_238152A8C();

              v294 = v289;
              v295 = v290;
              v296 = v291;
              v292 = v287;
              v293 = v288;
              swift_getKeyPath();
              swift_getKeyPath();
              v138 = v2;
              v139 = v137;
              sub_238152A9C();
              sub_238088B04(&v292);
              sub_23808E828(&v292);

LABEL_166:
            }

            else
            {
            }

            return;
          }
        }

        else
        {
        }

LABEL_101:
        return;
      }

      v123 = v26;
      v124 = sub_23815291C();
      v125 = sub_2381550DC();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *v126 = 138412290;
        *(v126 + 4) = v123;
        *v127 = v123;
        logb = v123;
        _os_log_impl(&dword_238060000, v124, v125, "Device lost with no identifier %@", v126, 0xCu);
        sub_238071284(v127, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v127, -1, -1);
        v128 = v126;
LABEL_93:
        MEMORY[0x2383EA8A0](v128, -1, -1);

        v122 = logb;
        goto LABEL_105;
      }

LABEL_103:
      goto LABEL_104;
    }

    loga = sub_23815291C();
    v115 = sub_2381550DC();

    if (os_log_type_enabled(loga, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v116 = 138412290;
      *(v116 + 4) = oslog;
      *v117 = oslog;
      v121 = oslog;
      v119 = "Received device lost event but the event object cannot be cast to device event %@";
      goto LABEL_82;
    }

LABEL_83:
    v122 = loga;
LABEL_105:

    return;
  }

  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v80 = sub_23815293C();
  __swift_project_value_buffer(v80, qword_27DEEB040);
  v81 = sub_23815291C();
  v82 = sub_2381550FC();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_238060000, v81, v82, "DAEvent deviceFound", v83, 2u);
    MEMORY[0x2383EA8A0](v83, -1, -1);
  }

  objc_opt_self();
  v84 = swift_dynamicCastObjCClass();
  oslog = a1;
  if (!v84)
  {
    loga = sub_23815291C();
    v115 = sub_2381550DC();

    if (!os_log_type_enabled(loga, v115))
    {
      goto LABEL_83;
    }

    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v116 = 138412290;
    *(v116 + 4) = oslog;
    *v117 = oslog;
    v120 = oslog;
    v119 = "Received device found event but the event object cannot be cast to device event %@";
    goto LABEL_82;
  }

  v85 = [v84 device];
  v86 = [v85 identifier];
  if (!v86)
  {
    goto LABEL_90;
  }

  v87 = v86;
  v88 = sub_238154CCC();
  v90 = v89;

  v91 = [v85 wifiAwareOTAName];
  if (!v91)
  {

LABEL_90:
    v129 = v85;
    v124 = sub_23815291C();
    v130 = sub_2381550DC();

    if (os_log_type_enabled(v124, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v131 = 138412290;
      *(v131 + 4) = v129;
      *v132 = v129;
      logb = v129;
      v133 = "Device found without expected identifier and name information %@";
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v281 = v90;
  v92 = v91;
  v274 = sub_238154CCC();
  v278 = v93;

  v94 = v85;
  v95 = sub_23815291C();
  v96 = sub_2381550FC();

  v276 = v88;
  if (os_log_type_enabled(v95, v96))
  {
    v97 = v2;
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *&v292 = v100;
    *v98 = 136315394;
    v101 = [v94 wifiAwareOTAName];
    if (v101)
    {
      v102 = v101;
      v103 = sub_238154CCC();
      v105 = v104;
    }

    else
    {
      v103 = 0xD000000000000010;
      v105 = 0x80000002381617E0;
    }

    v151 = sub_238085EAC(v103, v105, &v292);

    *(v98 + 4) = v151;
    *(v98 + 12) = 2112;
    *(v98 + 14) = v94;
    *v99 = v94;
    v152 = v94;
    _os_log_impl(&dword_238060000, v95, v96, "Got deviceFound event for %s: %@", v98, 0x16u);
    sub_238071284(v99, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v99, -1, -1);
    v153 = __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x2383EA8A0](v100, -1, -1, v153);
    MEMORY[0x2383EA8A0](v98, -1, -1);

    v2 = v97;
    v88 = v276;
  }

  else
  {
  }

  v154 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
  swift_beginAccess();
  v155 = v94;

  v156 = swift_isUniquelyReferenced_nonNull_native();
  *&v287 = *(v2 + v154);
  *(&v2->isa + v154) = 0x8000000000000000;
  sub_2380C73E4(v155, v88, v281, v156, v157);

  *(&v2->isa + v154) = v287;
  swift_endAccess();
  v158 = v155;
  v159 = sub_23815291C();
  v160 = sub_2381550FC();

  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *&v292 = v162;
    *v161 = 136315138;
    v163 = [v158 appAccessInfoMap];
    if (v163)
    {
      v164 = v163;
      sub_23807A3F8(0, &qword_27DEEB100, 0x277D04730);
      v165 = sub_238154C1C();
    }

    else
    {
      v165 = 0;
    }

    *&v287 = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB108, &qword_2381593E0);
    v166 = sub_238154D1C();
    v168 = sub_238085EAC(v166, v167, &v292);

    *(v161 + 4) = v168;
    _os_log_impl(&dword_238060000, v159, v160, "appAccessInfoMap info: %s", v161, 0xCu);
    v169 = __swift_destroy_boxed_opaque_existential_1(v162);
    MEMORY[0x2383EA8A0](v162, -1, -1, v169);
    MEMORY[0x2383EA8A0](v161, -1, -1);
  }

  v170 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  if (!v170)
  {
    goto LABEL_168;
  }

  logc = v2;
  v171 = *(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);

  v172 = [v158 appAccessInfoMap];
  if (!v172)
  {

    v2 = logc;
LABEL_168:
    if (*(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v294 = v289;
      v295 = v290;
      v296 = v291;
      v292 = v287;
      v293 = v288;
      swift_getKeyPath();
      swift_getKeyPath();
      v211 = v2;

      sub_238152A9C();
      sub_238088B04(&v292);
      sub_23808E828(&v292);

      v212 = (v211 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
      *v212 = v276;
      v212[1] = v281;

      v213 = [v158 wifiAwareOTAName];
      if (v213)
      {
        v214 = v213;
        v215 = sub_238154CCC();
        v217 = v216;
      }

      else
      {
        v215 = 0;
        v217 = 0;
      }

      v228 = (v211 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
      *v228 = v215;
      v228[1] = v217;

      v229 = [v158 signature];
      v230 = v211 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature;
      *v230 = v229;
      v230[8] = 0;
    }

    else
    {
    }

    v231 = [v158 signature];
    v232 = v158;
    v233 = *(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
    v234 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
    v140 = v232;
    v218 = sub_23815291C();
    if ((v234 & 1) == 0 && v231 == v233)
    {
      v235 = sub_2381550FC();
      if (os_log_type_enabled(v218, v235))
      {
        v236 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        *v236 = 138412546;
        *(v236 + 4) = v140;
        *v237 = v140;
        *(v236 + 12) = 2048;
        *(v236 + 14) = [v140 signature];
        _os_log_impl(&dword_238060000, v218, v235, "Found non-system paired device that matches active pairing device signature: %@, %ld", v236, 0x16u);
        sub_238071284(v237, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v237, -1, -1);
        MEMORY[0x2383EA8A0](v236, -1, -1);
      }

      else
      {
LABEL_197:

        v218 = v140;
      }

LABEL_198:

      sub_23808C2CC(v140);
      goto LABEL_199;
    }

    v238 = sub_2381550DC();

    if (os_log_type_enabled(v218, v238))
    {
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      *v239 = 138412290;
      *(v239 + 4) = v140;
      *v240 = v140;
      v140 = v140;
      _os_log_impl(&dword_238060000, v218, v238, "Got deviceFound event for %@ but the device does not match the active pairing device", v239, 0xCu);
      sub_238071284(v240, &unk_27DEECA10, &qword_2381588F0);
      v241 = v240;
      goto LABEL_184;
    }

    goto LABEL_193;
  }

  v173 = v172;
  v272 = v158;
  sub_23807A3F8(0, &qword_27DEEB100, 0x277D04730);
  v174 = sub_238154C1C();

  v175 = 1 << *(v174 + 32);
  v176 = -1;
  if (v175 < 64)
  {
    v176 = ~(-1 << v175);
  }

  v177 = v176 & *(v174 + 64);
  v271 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role;
  v270 = logc + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature;
  v269 = (logc + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
  v268 = (&logc->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
  v178 = (v175 + 63) >> 6;

  v179 = 0;
  v180 = 0;
  while (v177)
  {
LABEL_134:
    v182 = __clz(__rbit64(v177));
    v177 &= v177 - 1;
    v183 = v182 | (v179 << 6);
    v184 = (*(v174 + 48) + 16 * v183);
    v185 = *(*(v174 + 56) + 8 * v183);
    v186 = *v184 == v171 && v170 == v184[1];
    if (v186 || (sub_2381555CC() & 1) != 0)
    {

      v187 = v185;
      v188 = [v187 state];
      if (v188)
      {
        if (v188 == 10)
        {
          v267 = v187;
          if ((*(&logc->isa + v271) & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_238152A8C();

            v294 = v289;
            v295 = v290;
            v296 = v291;
            v292 = v287;
            v293 = v288;
            swift_getKeyPath();
            swift_getKeyPath();
            *&v287 = v274;
            *(&v287 + 1) = v278;
            v291 = 0;
            v189 = logc;

            sub_238152A9C();
            sub_238088B04(&v292);
            sub_23808E828(&v292);
          }

          *v269 = v276;
          v269[1] = v281;

          v190 = v272;
          v191 = [v272 wifiAwareOTAName];
          if (v191)
          {
            v192 = v191;
            v265 = sub_238154CCC();
            v194 = v193;

            v195 = v194;
            v190 = v272;
            v196 = v265;
          }

          else
          {
            v196 = 0;
            v195 = 0;
          }

          *v268 = v196;
          v268[1] = v195;

          *v270 = [v190 signature];
          v270[8] = 0;
LABEL_155:

          goto LABEL_163;
        }

LABEL_162:

LABEL_163:

        v180 = 1;
      }

      else
      {
        v267 = v187;
        if (*(&logc->isa + v271))
        {
          v197 = v272;
          v257 = sub_23815291C();
          v198 = sub_2381550FC();

          if (os_log_type_enabled(v257, v198))
          {
            bufa = swift_slowAlloc();
            v256 = swift_slowAlloc();
            *bufa = 138412290;
            *(bufa + 4) = v197;
            *v256 = v272;
            v199 = v197;
            _os_log_impl(&dword_238060000, v257, v198, "Found previously system paired device %@ for existing bundleID, calling to initiate authorization", bufa, 0xCu);
            sub_238071284(v256, &unk_27DEECA10, &qword_2381588F0);
            MEMORY[0x2383EA8A0](v256, -1, -1);
            MEMORY[0x2383EA8A0](bufa, -1, -1);
          }

          sub_23808C2CC(v197);
          goto LABEL_155;
        }

        v200 = [v272 signature];
        v258 = *v270;
        buf = v200;
        v201 = v270[8];
        v266 = v272;
        v202 = sub_23815291C();
        if ((v201 & 1) == 0 && buf == v258)
        {
          v259 = sub_2381550FC();
          if (os_log_type_enabled(v202, v259))
          {
            bufb = v202;
            v203 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            *v203 = 138412546;
            *(v203 + 4) = v266;
            *v204 = v272;
            *(v203 + 12) = 2048;
            *(v203 + 14) = [v266 signature];
            _os_log_impl(&dword_238060000, bufb, v259, "Found device that matches active pairing device signature for existing bundleID: %@, %ld", v203, 0x16u);
            sub_238071284(v204, &unk_27DEECA10, &qword_2381588F0);
            MEMORY[0x2383EA8A0](v204, -1, -1);
            v205 = v203;
            v206 = bufb;
            MEMORY[0x2383EA8A0](v205, -1, -1);
          }

          else
          {

            v206 = v266;
          }

          v187 = v267;

          sub_23808C2CC(v266);
          goto LABEL_162;
        }

        v207 = sub_2381550DC();

        v260 = v207;
        if (os_log_type_enabled(v202, v207))
        {
          v208 = swift_slowAlloc();
          bufc = v202;
          v209 = swift_slowAlloc();
          *v208 = 138412290;
          *(v208 + 4) = v266;
          *v209 = v272;
          v210 = v266;
          _os_log_impl(&dword_238060000, bufc, v260, "Got deviceFound event for %@ with existing bundleID but the device does not match the active pairing device", v208, 0xCu);
          sub_238071284(v209, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v209, -1, -1);
          MEMORY[0x2383EA8A0](v208, -1, -1);
        }

        else
        {
        }

        v180 = 1;
      }
    }
  }

  v139 = v272;
  while (1)
  {
    v181 = v179 + 1;
    if (__OFADD__(v179, 1))
    {
      goto LABEL_202;
    }

    if (v181 >= v178)
    {
      break;
    }

    v177 = *(v174 + 64 + 8 * v181);
    ++v179;
    if (v177)
    {
      v179 = v181;
      goto LABEL_134;
    }
  }

  if (v180)
  {

    goto LABEL_166;
  }

  if (*(&logc->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) == 1)
  {
    v140 = v272;
    v218 = sub_23815291C();
    v219 = sub_2381550FC();

    if (!os_log_type_enabled(v218, v219))
    {
      goto LABEL_198;
    }

    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    *v220 = 138412290;
    *(v220 + 4) = v140;
    *v221 = v272;
    v222 = v140;
    v223 = "Found previously system paired device %@ for new bundleID, calling to initiate authorization";
    v224 = v219;
    v225 = v218;
    v226 = v220;
    v227 = 12;
LABEL_190:
    _os_log_impl(&dword_238060000, v225, v224, v223, v226, v227);
    sub_238071284(v221, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v221, -1, -1);
    MEMORY[0x2383EA8A0](v220, -1, -1);
    goto LABEL_198;
  }

  v242 = [v272 signature];
  v243 = *(&logc->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
  v244 = *(&logc[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
  v140 = v272;
  v218 = sub_23815291C();
  if ((v244 & 1) == 0 && v242 == v243)
  {
    v245 = sub_2381550FC();
    if (!os_log_type_enabled(v218, v245))
    {
      goto LABEL_197;
    }

    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    *v220 = 138412546;
    *(v220 + 4) = v140;
    *v221 = v272;
    *(v220 + 12) = 2048;
    *(v220 + 14) = [v140 signature];
    v223 = "Found device that matches active pairing device signature for new bundleID: %@, %ld";
    v224 = v245;
    v225 = v218;
    v226 = v220;
    v227 = 22;
    goto LABEL_190;
  }

  v246 = sub_2381550DC();

  if (!os_log_type_enabled(v218, v246))
  {
LABEL_193:

    goto LABEL_101;
  }

  v239 = swift_slowAlloc();
  v247 = swift_slowAlloc();
  *v239 = 138412290;
  *(v239 + 4) = v140;
  *v247 = v272;
  v140 = v140;
  _os_log_impl(&dword_238060000, v218, v246, "Got deviceFound event for %@ with new bundleID but the device does not match the active pairing device", v239, 0xCu);
  sub_238071284(v247, &unk_27DEECA10, &qword_2381588F0);
  v241 = v247;
LABEL_184:
  MEMORY[0x2383EA8A0](v241, -1, -1);
  MEMORY[0x2383EA8A0](v239, -1, -1);

LABEL_199:
}

void sub_23808BDF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_23808BE60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238152BAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_23812F9BC();
  if (v12)
  {
    v13 = (v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
    *v13 = v11;
    v13[1] = v12;

    v14 = sub_23812FBA4();
    v15 = v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature;
    *v15 = v14;
    *(v15 + 8) = v16 & 1;

    sub_238088FC4(v14);
  }

  else
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v17 = sub_23815293C();
    __swift_project_value_buffer(v17, qword_27DEEB040);
    v18 = *(v5 + 16);
    v18(v10, a1, v4);
    v19 = sub_23815291C();
    v20 = sub_2381550DC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v18(v8, v10, v4);
      v23 = sub_238154D2C();
      v25 = v24;
      (*(v5 + 8))(v10, v4);
      v26 = sub_238085EAC(v23, v25, &v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_238060000, v19, v20, "No name for endpoint trying to start pairing with: %s", v21, 0xCu);
      v27 = __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2383EA8A0](v22, -1, -1, v27);
      MEMORY[0x2383EA8A0](v21, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

void sub_23808C144()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted;
  if (v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted] == 1)
  {
    v2 = v0;
    v3 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
    *v3 = 0;
    *(v3 + 1) = 0;

    v4 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
    swift_beginAccess();
    *&v2[v4] = MEMORY[0x277D84F90];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v13[2] = v10;
    v13[3] = v11;
    v14 = v12;
    v13[0] = v8;
    v13[1] = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v12) = 3;
    v5 = v2;
    sub_238152A9C();
    sub_238088B04(v13);
    sub_23808E828(v13);
    v6 = *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest];
    *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest] = 0;

    v7 = *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery];
    if (v7)
    {
      [v7 invalidate];
    }

    v2[v1] = 0;
  }
}

void sub_23808C2CC(void *a1)
{
  v2 = v1;
  v4 = [a1 discoveryConfiguration];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 wifiAwareOTAName];
    [v5 setDisplayName_];
  }

  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEEB040);
  v8 = a1;
  v9 = sub_23815291C();
  v10 = sub_2381550FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = [v8 description];
    v14 = sub_238154CCC();
    v16 = v15;

    v17 = sub_238085EAC(v14, v16, aBlock);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_238060000, v9, v10, "Initiating Pairing: %s", v11, 0xCu);
    v18 = __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1, v18);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  v19 = [v8 identifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_238154CCC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = (v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
  *v24 = v21;
  v24[1] = v23;

  [v8 setFlags_];
  if (!*(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8))
  {
    goto LABEL_17;
  }

  v25 = [v8 identifier];
  if (!v25)
  {

LABEL_17:
    v43 = sub_23815291C();
    v41 = sub_2381550DC();
    if (os_log_type_enabled(v43, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_238060000, v43, v41, "Unable to initiate pairing without bundleID or identifier", v42, 2u);
      MEMORY[0x2383EA8A0](v42, -1, -1);
    }

    goto LABEL_19;
  }

  v26 = v25;
  v27 = objc_allocWithZone(MEMORY[0x277D04730]);
  v28 = sub_238154C8C();

  v29 = [v27 initWithBundleIdentifier:v28 deviceIdentifier:v26 state:10];

  v30 = sub_2380895BC();
  [v29 setAppDiscoveryConfiguration_];

  v31 = v8;
  v43 = v29;
  v32 = sub_23815291C();
  v33 = sub_2381550FC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412546;
    *(v34 + 4) = v43;
    *(v34 + 12) = 2112;
    *(v34 + 14) = v31;
    *v35 = v43;
    v35[1] = v31;
    v36 = v31;
    v37 = v43;
    _os_log_impl(&dword_238060000, v32, v33, "Setting appAccessInfo: %@ for %@", v34, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECA10, &qword_2381588F0);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v35, -1, -1);
    MEMORY[0x2383EA8A0](v34, -1, -1);
  }

  v38 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery);
  if (v38)
  {
    aBlock[4] = sub_23808C824;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23808CA44;
    aBlock[3] = &block_descriptor_23;
    v39 = _Block_copy(aBlock);
    v40 = v38;
    [v40 setDeviceAppAccessInfo:v43 device:v31 completionHandler:v39];

    _Block_release(v39);
    return;
  }

LABEL_19:
}

void sub_23808C824(NSObject *a1)
{
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB040);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Callback from deviceAppAccessInfo", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  if (a1)
  {
    v6 = a1;
    oslog = sub_23815291C();
    v7 = sub_2381550DC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_238060000, oslog, v7, "Error when initiating pairing to device: %@", v8, 0xCu);
      sub_238071284(v9, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v9, -1, -1);
      MEMORY[0x2383EA8A0](v8, -1, -1);

      v12 = oslog;
    }

    else
    {

      v12 = a1;
    }
  }
}

void sub_23808CA44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_23808CAB0(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEEB040);

  v8 = sub_23815291C();
  v9 = sub_2381550FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v67 = v11;
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2080;
    v12 = a1;
    if (a3)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_238085EAC(v13, v14, &v67);

    *(v10 + 10) = v15;
    a1 = v12;
    _os_log_impl(&dword_238060000, v8, v9, "Accepting pairing %{BOOL}d and pin %s", v10, 0x12u);
    v16 = __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2383EA8A0](v11, -1, -1, v16);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  v17 = *&v3[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest];
  if (v17)
  {
    v18 = v17;
    v19 = sub_23815291C();
    v20 = sub_2381550FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v17;
      v23 = v18;
      _os_log_impl(&dword_238060000, v19, v20, "Current pairing request: %@", v21, 0xCu);
      sub_238071284(v22, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v22, -1, -1);
      MEMORY[0x2383EA8A0](v21, -1, -1);
    }

    v24 = [v18 pairingInfo];
    [v24 setAccept_];
    if ((a1 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v69 = v64;
      v70 = v65;
      v71 = v66;
      v67 = aBlock;
      v68 = v63;
      swift_getKeyPath();
      swift_getKeyPath();
      v64 = 0u;
      v65 = 0u;
      aBlock = 0u;
      v63 = 0u;
      v66 = 3;
      v4;
      sub_238152A9C();
      sub_238088B04(&v67);
      sub_23808E828(&v67);
      goto LABEL_34;
    }

    if (v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role] == 1)
    {
      v25 = *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier + 8];
      if (!v25)
      {
        goto LABEL_34;
      }

      v26 = *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
      v27 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
      swift_beginAccess();
      v28 = *&v4[v27];
      v29 = *(v28 + 16);

      if (!v29 || (v30 = sub_2380E6CD8(v26, v25), (v31 & 1) == 0))
      {
        swift_endAccess();

LABEL_34:
        v47 = *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery];
        if (v47)
        {
          v48 = swift_allocObject();
          *(v48 + 16) = v4;
          *(v48 + 24) = a1 & 1;
          *&v64 = sub_23808E9EC;
          *(&v64 + 1) = v48;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v63 = sub_23808CA44;
          *(&v63 + 1) = &block_descriptor_0;
          v49 = _Block_copy(&aBlock);
          v50 = v4;
          v51 = v47;

          [v51 respondToWiFiAwarePairingRequest:v24 completionHandler:v49];

          _Block_release(v49);
        }

        else
        {
        }

        return;
      }

      v32 = *(*(v28 + 56) + 8 * v30);
      swift_endAccess();
      v33 = v32;

      v34 = [v33 wifiAwareOTAName];
      if (v34)
      {
        osloga = v33;
        v35 = a1;
        v36 = v34;
        v37 = sub_238154CCC();
        v39 = v38;

        v40 = [v18 pairingInfo];
        v41 = [v40 passkey];

        if (v41)
        {
          v42 = sub_238154CCC();
          v44 = v43;
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        a1 = v35;
        *&v56[0] = v37;
        *(&v56[0] + 1) = v39;
        memset(&v56[1], 0, 32);
        *&v57 = v42;
        *(&v57 + 1) = v44;
        v58 = v56[0];
        v59 = 0u;
        v60 = 0u;
        v61 = v57;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_238152A8C();

        v69 = v64;
        v70 = v65;
        v71 = v66;
        v67 = aBlock;
        v68 = v63;
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = v56[0];
        v63 = 0u;
        v64 = 0u;
        v65 = v57;
        v66 = 1;
        v4;
        sub_23808EA10(v56, v55);
        sub_238152A9C();
        sub_238088B04(&v67);
        sub_23808E828(&v67);
        sub_23808E858(v56);

        goto LABEL_34;
      }
    }

    else
    {
      if (!a3)
      {
        goto LABEL_34;
      }

      v33 = sub_238154C8C();
      [v24 setPasskey_];
    }

    goto LABEL_34;
  }

  oslogb = sub_23815291C();
  v45 = sub_2381550DC();
  if (os_log_type_enabled(oslogb, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_238060000, oslogb, v45, "No current WiFi Aware pairing request to respond to", v46, 2u);
    MEMORY[0x2383EA8A0](v46, -1, -1);
  }
}

void sub_23808D200(void *a1, uint64_t a2, char a3)
{
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEB040);
  v7 = a1;
  v8 = sub_23815291C();
  v9 = sub_2381550FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB0E0, &qword_238159370);
    v13 = sub_238154D1C();
    v15 = sub_238085EAC(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_238060000, v8, v9, "Responded to pairing request. Error: %s", v10, 0xCu);
    v16 = __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2383EA8A0](v11, -1, -1, v16);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  if ((*(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) & 1) == 0 && (a3 & 1) == 0)
  {
    v17 = sub_23815291C();
    v18 = sub_2381550FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_238060000, v17, v18, "Invalidating discovery since pairing was cancelled", v19, 2u);
      MEMORY[0x2383EA8A0](v19, -1, -1);
    }

    v20 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery;
    v21 = *(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery);
    if (v21)
    {
      [v21 invalidate];
      v22 = *(a2 + v20);
    }

    else
    {
      v22 = 0;
    }

    *(a2 + v20) = 0;

    v23 = *(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest);
    *(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest) = 0;
  }
}

void sub_23808D450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  *(&v105 + 1) = a8;
  *&v105 = a7;
  v107 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB110, &qword_2381593E8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v102 - v17;
  v19 = sub_238154B6C();
  v106 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v102 - v26;
  if ((a1 != a4 || a2 != a5) && (sub_2381555CC() & 1) == 0)
  {
    return;
  }

  v28 = [a3 state];
  if (v28 > 19)
  {
    if (v28 != 20 && v28 != 25)
    {
      return;
    }

    *(&v105 + 1) = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v107;
    sub_238152A8C();

    v115 = v110;
    v116 = v111;
    v117 = v112;
    v113 = v108;
    v114 = v109;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v108 = 0;
    v112 = 2;
    v42 = v41;
    sub_238152A9C();
    sub_238088B04(&v113);
    sub_23808E828(&v113);
    v43 = &v42[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
    *v43 = 0;
    *(v43 + 1) = 0;

    v44 = &v42[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
    *v44 = 0;
    *(v44 + 1) = 0;

    v45 = &v42[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature];
    *v45 = 0;
    v45[8] = 1;
    sub_23815522C();
    sub_2380712E4(v27, v25, &unk_27DEED890, &qword_2381593F0);
    v46 = sub_238152BAC();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v25, 1, v46) == 1)
    {
      sub_238071284(v25, &unk_27DEED890, &qword_2381593F0);
      (*(v106 + 56))(v18, 1, 1, *(&v105 + 1));
    }

    else
    {
      sub_23812FEFC(v18);
      (*(v47 + 8))(v25, v46);
      v49 = *(&v105 + 1);
      v48 = v106;
      if ((*(v106 + 48))(v18, 1, *(&v105 + 1)) != 1)
      {
        (*(v48 + 32))(v21, v18, v49);
        v74 = sub_238154B4C();
        v76 = v75;
        v107 = sub_238154B5C();
        *&v105 = v77;
        v104 = sub_238154B3C();
        v103 = v78;
        v79 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
        swift_beginAccess();
        v80 = *&v42[v79];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v42[v79] = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v80 = sub_2380BB438(0, *(v80 + 2) + 1, 1, v80);
          *&v42[v79] = v80;
        }

        v83 = *(v80 + 2);
        v82 = *(v80 + 3);
        if (v83 >= v82 >> 1)
        {
          v80 = sub_2380BB438((v82 > 1), v83 + 1, 1, v80);
        }

        *(v80 + 2) = v83 + 1;
        v84 = &v80[48 * v83];
        *(v84 + 4) = v74;
        *(v84 + 5) = v76;
        v85 = v105;
        *(v84 + 6) = v107;
        *(v84 + 7) = v85;
        v86 = v103;
        *(v84 + 8) = v104;
        *(v84 + 9) = v86;
        *&v42[v79] = v80;
        swift_endAccess();
        (*(v106 + 8))(v21, v49);
        goto LABEL_36;
      }
    }

    sub_238071284(v18, &qword_27DEEB110, &qword_2381593E8);
    v50 = [a9 wifiAwareOTAName];
    if (v50)
    {
      v51 = v50;
      v52 = sub_238154CCC();
      v54 = v53;
    }

    else
    {
      v52 = 0x206E776F6E6B6E55;
      v54 = 0xEE00656369766544;
    }

    v68 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
    swift_beginAccess();
    v69 = *&v42[v68];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *&v42[v68] = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_2380BB438(0, *(v69 + 2) + 1, 1, v69);
      *&v42[v68] = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    if (v72 >= v71 >> 1)
    {
      v69 = sub_2380BB438((v71 > 1), v72 + 1, 1, v69);
    }

    *(v69 + 2) = v72 + 1;
    v73 = &v69[48 * v72];
    *(v73 + 4) = v52;
    *(v73 + 5) = v54;
    *(v73 + 6) = 0;
    *(v73 + 7) = 0xE000000000000000;
    *(v73 + 8) = 0;
    *(v73 + 9) = 0xE000000000000000;
    *&v42[v68] = v69;
    swift_endAccess();
LABEL_36:
    sub_238071284(v27, &unk_27DEED890, &qword_2381593F0);
    return;
  }

  if (v28)
  {
    if (v28 == 10)
    {
      v29 = v107;
      if ((*(v107 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_238152A8C();

        v115 = v110;
        v116 = v111;
        v117 = v112;
        v113 = v108;
        v114 = v109;
        swift_getKeyPath();
        swift_getKeyPath();
        v108 = v105;
        v112 = 0;
        v29;

        sub_238152A9C();
        sub_238088B04(&v113);
        sub_23808E828(&v113);
        if (qword_27DEEA028 != -1)
        {
          swift_once();
        }

        v30 = sub_23815293C();
        __swift_project_value_buffer(v30, qword_27DEEB040);
        v31 = a9;
        v32 = sub_23815291C();
        v33 = sub_2381550BC();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *&v108 = v35;
          *v34 = 136315138;
          v36 = [v31 wifiAwareOTAName];
          if (v36)
          {
            v37 = v36;
            v38 = sub_238154CCC();
            v40 = v39;

            v29 = v107;
          }

          else
          {
            v40 = 0x8000000238161800;
            v38 = 0xD000000000000010;
          }

          v91 = sub_238085EAC(v38, v40, &v108);

          *(v34 + 4) = v91;
          _os_log_impl(&dword_238060000, v32, v33, "Transitioning state to waiting for %s", v34, 0xCu);
          v92 = __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x2383EA8A0](v35, -1, -1, v92);
          MEMORY[0x2383EA8A0](v34, -1, -1);
        }
      }

      v93 = &v29[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
      *v93 = a10;
      *(v93 + 1) = a11;

      v94 = [a9 wifiAwareOTAName];
      if (v94)
      {
        v95 = v94;
        v96 = sub_238154CCC();
        v98 = v97;
      }

      else
      {
        v96 = 0;
        v98 = 0;
      }

      v99 = &v29[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
      *v99 = v96;
      v99[1] = v98;

      v100 = [a9 signature];
      v101 = &v29[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature];
      *v101 = v100;
      v101[8] = 0;
    }
  }

  else
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v55 = sub_23815293C();
    __swift_project_value_buffer(v55, qword_27DEEB040);
    v56 = a9;
    v57 = sub_23815291C();
    v58 = sub_2381550DC();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v107;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v113 = v62;
      *v61 = 136315138;
      v63 = [v56 wifiAwareOTAName];
      if (v63)
      {
        v64 = v63;
        v65 = sub_238154CCC();
        v67 = v66;
      }

      else
      {
        v65 = 0x206E776F6E6B6E55;
        v67 = 0xEE00656369766544;
      }

      v87 = sub_238085EAC(v65, v67, &v113);

      *(v61 + 4) = v87;
      _os_log_impl(&dword_238060000, v57, v58, "Pairing failed for %s", v61, 0xCu);
      v88 = __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x2383EA8A0](v62, -1, -1, v88);
      MEMORY[0x2383EA8A0](v61, -1, -1);
    }

    sub_23808EA88();
    v89 = swift_allocError();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v115 = v110;
    v116 = v111;
    v117 = v112;
    v113 = v108;
    v114 = v109;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v108 = v89;
    v112 = 2;
    v60;
    v90 = v89;
    sub_238152A9C();
    sub_238088B04(&v113);
    sub_23808E828(&v113);
  }
}

void sub_23808E034(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest];
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest] = a1;

  v4 = [a1 pairingInfo];
  v5 = [v4 pairingType];

  if (v5 == 30)
  {
    v6 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier + 8];
    if (v6)
    {
      v7 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
      v8 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
      swift_beginAccess();
      v9 = *&v1[v8];
      v10 = *(v9 + 16);

      if (v10 && (v11 = sub_2380E6CD8(v7, v6), (v12 & 1) != 0))
      {
        v13 = *(*(v9 + 56) + 8 * v11);
        swift_endAccess();
        v14 = v13;

        v15 = [v14 name];
        if (v15)
        {
          v16 = v15;
          v17 = sub_238154CCC();
          v19 = v18;

          *&v27[0] = v17;
          *(&v27[0] + 1) = v19;
          memset(&v27[1], 0, 48);
          v27[4] = v27[0];
          memset(&v27[5], 0, 48);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_238152A8C();

          v28[2] = v24;
          v28[3] = v25;
          v29 = v26;
          v28[0] = v22;
          v28[1] = v23;
          swift_getKeyPath();
          swift_getKeyPath();
          v22 = v27[0];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 1;
          v20 = v1;
          sub_23808EA10(v27, &v21);
          sub_238152A9C();
          sub_238088B04(v28);
          sub_23808E828(v28);
          sub_23808E858(v27);
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  else if (v5 == 20)
  {

    sub_23808CAB0(1, 0, 0);
  }
}

id sub_23808E2C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DDDeviceAccessController(uint64_t a1)
{
  result = qword_27DEEB0C0;
  if (!qword_27DEEB0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23808E468(uint64_t a1)
{
  sub_23808E544();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23808E544()
{
  if (!qword_27DEEB0D0)
  {
    v0 = sub_238152AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB0D0);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23808E5B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23808E600(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI13DDPairingInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI14DAPairingStateO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23808E6B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23808E6FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_23808E754(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_23808E794()
{
  result = qword_27DEEB0D8;
  if (!qword_27DEEB0D8)
  {
    result = swift_getWitnessTable(byte_238159310, &type metadata for DAPairingRole, v0, v1);
    atomic_store(result, &qword_27DEEB0D8);
  }

  return result;
}

uint64_t sub_23808E7E8@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_2381529DC();
  *a2 = result;
  return result;
}

id sub_23808E8C0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_23807A3F8(0, &qword_27DEEB118, 0x277D04750);
  v2 = sub_238154ECC();

  v7[0] = 0;
  v3 = [v1 initWithConfigurations:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_23815266C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_23808E9B4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7, v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23808EA48()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

unint64_t sub_23808EA88()
{
  result = qword_27DEEB0F8;
  if (!qword_27DEEB0F8)
  {
    result = swift_getWitnessTable(byte_2381594B0, &type metadata for DAError, v0, v1);
    atomic_store(result, &qword_27DEEB0F8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23808EB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23808EB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23808EBAC()
{
  result = qword_27DEEB120;
  if (!qword_27DEEB120)
  {
    result = swift_getWitnessTable(aA, &type metadata for DAError, v0, v1);
    atomic_store(result, &qword_27DEEB120);
  }

  return result;
}

uint64_t sub_23808EC10()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF3198);
  __swift_project_value_buffer(v0, qword_27DEF3198);
  return sub_23815292C();
}

uint64_t sub_23808EC88()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF31B0);
  __swift_project_value_buffer(v0, qword_27DEF31B0);
  return sub_23815292C();
}

uint64_t sub_23808ED08()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF31C8);
  __swift_project_value_buffer(v0, qword_27DEF31C8);
  return sub_23815292C();
}

uint64_t sub_23808ED88()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEB128);
  v1 = __swift_project_value_buffer(v0, qword_27DEEB128);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_23808EE50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238153CFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2380712E4(v2, &v14 - v9, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A2C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t NameDropView.init(transactionIdentifier:dismissViewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for NameDropView(0);
  v9 = a4 + v8[5];
  sub_2381546FC();
  *v9 = v19;
  *(v9 + 1) = v20;
  v10 = sub_2381527EC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v12, a1, v10);
  v15 = (v14 + v13);
  *v15 = a2;
  v15[1] = a3;
  v16 = a4 + v8[6];
  *v16 = sub_23809B2B4;
  *(v16 + 1) = v14;
  v16[16] = 0;
  v17 = (a4 + v8[7]);
  *v17 = a2;
  v17[1] = a3;
}

uint64_t sub_23808F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381527EC();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  type metadata accessor for NameDropSessionController(0);
  swift_allocObject();

  v10 = sub_23811D914(v8, a2, a3);

  return v10;
}

uint64_t sub_23808F2F4@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v37 = v28;
  v38 = v29;
  v39 = v30;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v31[0] = v20;
  v31[1] = v21;
  v31[2] = v22;
  v32 = v23;
  sub_23809B34C(v31);
  v2 = v32;
  *a1 = (v32 & 3) != 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB608, &qword_238159D88);
  sub_23808F578(v1, v2, &a1[*(v3 + 44)]);
  v4 = sub_23815490C();
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v28 = v17;
  v29 = v18;
  v30 = v19;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  sub_23809B34C(&v20);
  v5 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A8, &qword_238159CD8);
  v7 = &a1[*(result + 36)];
  *v7 = v4;
  *(v7 + 1) = v5;
  return result;
}

uint64_t sub_23808F578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v40 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB610, &qword_238159D90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v37 - v7);
  v9 = type metadata accessor for NameDropView(0);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADB0, &qword_238158D90);
  v38 = *(v41 - 8);
  v15 = v38;
  v16 = MEMORY[0x28223BE20](v41);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  sub_23809BCF4(a1, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v22 = swift_allocObject();
  sub_23809BD60(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_23815474C();
  v45[0] = 2;
  v46 = xmmword_238158800;
  v47 = 0x403E000000000000;
  sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
  sub_238086A48();
  v23 = v20;
  sub_2381543EC();
  (*(v12 + 8))(v14, v11);
  v24 = v8;
  *v8 = sub_2381548DC();
  v8[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB618, &qword_238159D98);
  sub_23808FA1C(v40, v43, v8 + *(v26 + 44));
  v27 = *(v15 + 16);
  v28 = v18;
  v29 = v18;
  v30 = v23;
  v31 = v41;
  v27(v29, v23, v41);
  v32 = v42;
  sub_2380712E4(v24, v42, &qword_27DEEB610, &qword_238159D90);
  v33 = v44;
  v27(v44, v28, v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB620, &qword_238159DA0);
  sub_2380712E4(v32, &v33[*(v34 + 48)], &qword_27DEEB610, &qword_238159D90);
  sub_238071284(v24, &qword_27DEEB610, &qword_238159D90);
  v35 = *(v38 + 8);
  v35(v30, v31);
  sub_238071284(v32, &qword_27DEEB610, &qword_238159D90);
  return (v35)(v28, v31);
}

uint64_t sub_23808FA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v103 = a1;
  v96 = a3;
  v4 = type metadata accessor for NameDropView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v114 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v84 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADB0, &qword_238158D90);
  v10 = *(v111 - 8);
  v11 = MEMORY[0x28223BE20](v111);
  v94 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v84 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v84 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v84 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB628, &qword_238159DA8) - 8;
  v19 = MEMORY[0x28223BE20](v105);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v84 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v92 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v91 = &v84 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v84 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v90 = &v84 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v87 = &v84 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v106 = &v84 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v85 = &v84 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v108 = &v84 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v84 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v84 - v42;
  v107 = &v84 - v42;
  v102 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23809BCF4(a1, v102);
  v110 = *(v5 + 80);
  v44 = (v110 + 16) & ~v110;
  v99 = v6;
  v45 = swift_allocObject();
  sub_23809BD60(&v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44);
  sub_23815474C();
  v115[0] = 2;
  v112 = xmmword_238158800;
  v116 = xmmword_238158800;
  v117 = 0x403E000000000000;
  v101 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
  v100 = sub_238086A48();
  v97 = v7;
  sub_2381543EC();
  v46 = *(v114 + 8);
  v114 += 8;
  v109 = v46;
  v46(v9, v7);
  v47 = 1.0;
  if ((v113 & 4) != 0)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = *(v10 + 32);
  v98 = v10 + 32;
  v104 = v49;
  v50 = v111;
  v49(v41, v18, v111);
  v51 = v105;
  *&v41[*(v105 + 44)] = v48;
  sub_23807121C(v41, v43, &qword_27DEEB628, &qword_238159DA8);
  v52 = v103;
  v53 = v102;
  sub_23809BCF4(v103, v102);
  v54 = swift_allocObject();
  sub_23809BD60(v53, v54 + v44);
  v84 = v9;
  sub_23815474C();
  v115[0] = 2;
  v116 = v112;
  v117 = 0x403E000000000000;
  v55 = v86;
  v56 = v97;
  sub_2381543EC();
  v109(v9, v56);
  v57 = v113;
  if ((v113 & 0x10) != 0)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v85;
  v104(v85, v55, v50);
  v60 = v51;
  *(v59 + *(v51 + 44)) = v58;
  sub_23807121C(v59, v108, &qword_27DEEB628, &qword_238159DA8);
  v61 = v102;
  sub_23809BCF4(v52, v102);
  v62 = swift_allocObject();
  sub_23809BD60(v61, v62 + v44);
  v63 = v84;
  sub_23815474C();
  v115[0] = 2;
  v116 = v112;
  v117 = 0x403E000000000000;
  v64 = v88;
  v65 = v97;
  sub_2381543EC();
  v66 = v65;
  v109(v63, v65);
  if ((v57 & 2) != 0)
  {
    v67 = 1.0;
  }

  else
  {
    v67 = 0.0;
  }

  v68 = v87;
  v69 = v104;
  v104(v87, v64, v111);
  *(v68 + *(v60 + 44)) = v67;
  v70 = v106;
  sub_23807121C(v68, v106, &qword_27DEEB628, &qword_238159DA8);
  sub_23809BCF4(v103, v61);
  v71 = swift_allocObject();
  sub_23809BD60(v61, v71 + v44);
  sub_23815474C();
  v115[0] = 2;
  v116 = v112;
  v117 = 0x403E000000000000;
  v72 = v94;
  sub_2381543EC();
  v109(v63, v66);
  if ((v113 & 1) == 0)
  {
    v47 = 0.0;
  }

  v73 = v89;
  v69(v89, v72, v111);
  *(v73 + *(v105 + 44)) = v47;
  v74 = v90;
  sub_23807121C(v73, v90, &qword_27DEEB628, &qword_238159DA8);
  v75 = v91;
  sub_2380712E4(v107, v91, &qword_27DEEB628, &qword_238159DA8);
  v76 = v108;
  v77 = v92;
  sub_2380712E4(v108, v92, &qword_27DEEB628, &qword_238159DA8);
  v78 = v93;
  sub_2380712E4(v70, v93, &qword_27DEEB628, &qword_238159DA8);
  v79 = v74;
  v80 = v95;
  sub_2380712E4(v74, v95, &qword_27DEEB628, &qword_238159DA8);
  v81 = v96;
  sub_2380712E4(v75, v96, &qword_27DEEB628, &qword_238159DA8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB630, &qword_238159DB0);
  sub_2380712E4(v77, v81 + v82[12], &qword_27DEEB628, &qword_238159DA8);
  sub_2380712E4(v78, v81 + v82[16], &qword_27DEEB628, &qword_238159DA8);
  sub_2380712E4(v80, v81 + v82[20], &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v79, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v106, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v76, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v107, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v80, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v78, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v77, &qword_27DEEB628, &qword_238159DA8);
  return sub_238071284(v75, &qword_27DEEB628, &qword_238159DA8);
}

double sub_2380905B0(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  a2();

  return result;
}

void sub_238090684(uint64_t a1)
{
  v2 = type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  sub_238111A30();

  v4 = (a1 + *(v2 + 28));
  if (*v4)
  {
    (*v4)(v3);
  }
}

uint64_t sub_238090754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB638, &qword_238159DB8);
  v149 = *(v3 - 8);
  v150 = v3;
  MEMORY[0x28223BE20](v3);
  v143 = &v126 - v4;
  v5 = type metadata accessor for NameDropView(0);
  v6 = v5 - 8;
  v133 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v134 = v7;
  v135 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB640, &qword_238159DC0);
  v139 = *(v8 - 8);
  v140 = v8;
  MEMORY[0x28223BE20](v8);
  v144 = &v126 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB648, &qword_238159DC8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v142 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v141 = &v126 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB360, &qword_238159998);
  MEMORY[0x28223BE20](v126);
  v131 = &v126 - v14;
  v15 = sub_238153A2C();
  v129 = *(v15 - 8);
  v130 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v128 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v127 = &v126 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB650, &qword_238159DD0);
  v136 = *(v19 - 8);
  v137 = v19;
  MEMORY[0x28223BE20](v19);
  v132 = &v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB658, &qword_238159DD8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v138 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v160 = &v126 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB660, &qword_238159DE0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v148 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v147 = &v126 - v28;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB668, &qword_238159DE8) - 8;
  v29 = MEMORY[0x28223BE20](v159);
  v146 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v161 = &v126 - v31;
  v32 = *(v6 + 32);
  v145 = a1;
  v33 = (a1 + v32);
  v34 = *v33;
  v163 = v33[1];
  v35 = *(v33 + 16);
  v162 = type metadata accessor for NameDropSessionController(0);
  v164 = sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  v165 = v34;
  v166 = v35;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v189[8] = v205;
  v189[9] = v206;
  v190 = v207;
  v189[4] = v201;
  v189[5] = v202;
  v189[6] = v203;
  v189[7] = v204;
  v189[0] = v197;
  v189[1] = v198;
  v189[2] = v199;
  v189[3] = v200;
  v36 = v203;

  sub_23809B34C(v189);
  v197 = v36;
  sub_2380704A0();
  v158 = sub_23815438C();
  v155 = v38;
  v156 = v37;
  v40 = v39;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v191[8] = v205;
  v191[9] = v206;
  v192 = v207;
  v191[4] = v201;
  v191[5] = v202;
  v191[6] = v203;
  v191[7] = v204;
  v191[0] = v197;
  v191[1] = v198;
  v191[2] = v199;
  v191[3] = v200;
  v41 = v202;
  sub_23809B34C(v191);
  sub_2381542DC();
  v42 = v158;
  v43 = v156;
  KeyPath = sub_23815435C();
  v153 = v45;
  v154 = v44;
  LOBYTE(v35) = v46;

  sub_238070490(v42, v43, v40 & 1);

  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v193[8] = v205;
  v193[9] = v206;
  v194 = v207;
  v193[4] = v201;
  v193[5] = v202;
  v193[6] = v203;
  v193[7] = v204;
  v193[0] = v197;
  v193[1] = v198;
  v193[2] = v199;
  v193[3] = v200;

  sub_23809B34C(v193);
  v47 = KeyPath;
  v48 = v154;
  v49 = sub_23815431C();
  v155 = v50;
  v156 = v49;
  v51 = v50;
  v152 = v52;
  v54 = v53;
  v158 = v53;

  sub_238070490(v47, v48, v35 & 1);

  KeyPath = swift_getKeyPath();
  *&v178 = v49;
  *(&v178 + 1) = v51;
  LOBYTE(v49) = v152 & 1;
  LOBYTE(v179) = v152 & 1;
  *(&v179 + 1) = v54;
  *&v180 = KeyPath;
  BYTE8(v180) = 1;
  v55 = 1;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v195[8] = v205;
  v195[9] = v206;
  v196 = v207;
  v195[4] = v201;
  v195[5] = v202;
  v195[6] = v203;
  v195[7] = v204;
  v195[0] = v197;
  v195[1] = v198;
  v195[2] = v199;
  v195[3] = v200;
  v56 = v202;
  sub_23809B34C(v195);
  [v56 lineHeight];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB28, &unk_238159E20);
  sub_23807B920();
  v57 = v161;
  sub_23815447C();
  sub_238070490(v156, v155, v49);

  v58 = swift_getKeyPath();
  v59 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB670, &qword_238159E30) + 36);
  *v59 = v58;
  *(v59 + 8) = 2;
  *(v59 + 16) = 0;
  v60 = swift_getKeyPath();
  v61 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB678, &qword_238159E38) + 36);
  *v61 = v60;
  *(v61 + 8) = 1;
  v62 = swift_getKeyPath();
  v63 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB680, &qword_238159E40) + 36));
  *v63 = v62;
  v63[1] = 0x3FE0000000000000;
  *(v57 + *(v159 + 44)) = 256;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v206 = v187;
  v207 = v188;
  v201 = v182;
  v202 = v183;
  v204 = v185;
  v205 = v186;
  v203 = v184;
  v197 = v178;
  v198 = v179;
  v199 = v180;
  v200 = v181;
  v64 = v185;
  v65 = *(&v186 + 1);
  v66 = v186;
  v67 = v187;
  sub_23809E938(v185, *(&v185 + 1), v186, *(&v186 + 1), v187);
  sub_23809B34C(&v197);
  v159 = v64;
  if (!v64)
  {
    v100 = v147;
LABEL_12:
    (*(v149 + 56))(v100, v55, 1, v150);
    v121 = v161;
    v122 = v146;
    sub_2380712E4(v161, v146, &qword_27DEEB668, &qword_238159DE8);
    v123 = v148;
    sub_2380712E4(v100, v148, &qword_27DEEB660, &qword_238159DE0);
    v124 = v151;
    sub_2380712E4(v122, v151, &qword_27DEEB668, &qword_238159DE8);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB688, &qword_238159E48);
    sub_2380712E4(v123, v124 + *(v125 + 48), &qword_27DEEB660, &qword_238159DE0);
    sub_238071284(v100, &qword_27DEEB660, &qword_238159DE0);
    sub_238071284(v121, &qword_27DEEB668, &qword_238159DE8);
    sub_238071284(v123, &qword_27DEEB660, &qword_238159DE0);
    return sub_238071284(v122, &qword_27DEEB668, &qword_238159DE8);
  }

  v156 = v65;
  KeyPath = v67;
  v158 = *(&v64 + 1);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v178 != 1)
  {
    (*(v136 + 56))(v160, 1, 1, v137);
LABEL_7:
    v101 = v145;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    if (v178 == 1 && (sub_23815381C(), swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , , v178 != 1))
    {

      v115 = 1;
      v112 = v140;
      v113 = v141;
    }

    else
    {
      v102 = v135;
      sub_23809BCF4(v101, v135);
      v103 = (*(v133 + 80) + 16) & ~*(v133 + 80);
      v154 = swift_allocObject();
      v104 = sub_23809BD60(v102, v154 + v103);
      v155 = &v126;
      MEMORY[0x28223BE20](v104);
      v105 = v158;
      v106 = v159;
      *(&v126 - 6) = v101;
      *(&v126 - 5) = v106;
      *(&v126 - 4) = v105;
      *(&v126 - 3) = v66;
      v107 = KeyPath;
      *(&v126 - 2) = v156;
      *(&v126 - 1) = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB690, &qword_238159E98);
      sub_23809EA58();
      sub_23815474C();

      sub_23815381C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      LOBYTE(v106) = v178;
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB720, &qword_238159F40);
      v109 = v144;
      v144[*(v108 + 36)] = v106;
      sub_23815490C();
      v110 = sub_23815491C();

      sub_23815381C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v111 = v178;
      v112 = v140;
      v113 = v141;
      v114 = (v109 + *(v140 + 36));
      *v114 = v110;
      v114[1] = v111;
      sub_23807121C(v109, v113, &qword_27DEEB640, &qword_238159DC0);
      v115 = 0;
    }

    (*(v139 + 56))(v113, v115, 1, v112);
    v116 = v160;
    v117 = v138;
    sub_2380712E4(v160, v138, &qword_27DEEB658, &qword_238159DD8);
    v118 = v142;
    sub_2380712E4(v113, v142, &qword_27DEEB648, &qword_238159DC8);
    v119 = v143;
    sub_2380712E4(v117, v143, &qword_27DEEB658, &qword_238159DD8);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB728, &qword_238159F48);
    sub_2380712E4(v118, v119 + *(v120 + 48), &qword_27DEEB648, &qword_238159DC8);
    sub_238071284(v113, &qword_27DEEB648, &qword_238159DC8);
    sub_238071284(v116, &qword_27DEEB658, &qword_238159DD8);
    sub_238071284(v118, &qword_27DEEB648, &qword_238159DC8);
    sub_238071284(v117, &qword_27DEEB658, &qword_238159DD8);
    v100 = v147;
    sub_23807121C(v119, v147, &qword_27DEEB638, &qword_238159DB8);
    v55 = 0;
    goto LABEL_12;
  }

  v68 = v159;

  v69 = v127;
  sub_23808EE50(v127);
  v70 = *MEMORY[0x277CDFA90];
  v72 = v128;
  v71 = v129;
  v73 = *(v129 + 104);
  v155 = v66;
  v74 = v68;
  v75 = v130;
  v73(v128, v70, v130);
  v76 = sub_238153A1C();
  v77 = *(v71 + 8);
  v77(v72, v75);
  v77(v69, v75);
  v78 = swift_getKeyPath();
  v79 = type metadata accessor for NameDropView.fieldSummaryView(0);
  v80 = v132;
  *&v132[*(v79 + 28)] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v81 = v158;
  *v80 = v74;
  *(v80 + 8) = v81;
  *(v80 + 16) = v155;
  *(v80 + 24) = v76 & 1;
  v82 = *(v79 + 32);
  *&v178 = sub_23815467C();
  v83 = *MEMORY[0x277CDF9D8];
  v84 = sub_238153A0C();
  v85 = v131;
  (*(*(v84 - 8) + 104))(v131, v83, v84);
  sub_23809E560(&qword_27DEEB370, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_238154C7C();
  if (result)
  {
    sub_2380711D4(&qword_27DEEB378, &qword_27DEEB360, &qword_238159998, MEMORY[0x277D84470]);
    sub_23815445C();
    sub_238071284(v85, &qword_27DEEB360, &qword_238159998);

    sub_2381549DC();
    v88 = v87;
    v90 = v89;
    v91 = (v80 + v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB310, &qword_238159928) + 36));
    *v91 = vdupq_n_s64(0x3FD51EB851EB851FuLL);
    v91[1].i64[0] = v88;
    v91[1].i64[1] = v90;
    sub_2381542CC();
    sub_23815421C();
    v92 = sub_23815425C();

    v93 = swift_getKeyPath();
    v94 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB730, &qword_238159F80) + 36));
    *v94 = v93;
    v94[1] = v92;
    v66 = v155;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v186 = v175;
    v187 = v176;
    v188 = v177;
    v182 = v171;
    v183 = v172;
    v184 = v173;
    v185 = v174;
    v178 = v167;
    v179 = v168;
    v180 = v169;
    v181 = v170;
    v95 = *(&v171 + 1);

    sub_23809B34C(&v178);
    v96 = swift_getKeyPath();
    v97 = v137;
    v98 = (v80 + *(v137 + 36));
    *v98 = v96;
    v98[1] = v95;
    v99 = v160;
    sub_23807121C(v80, v160, &qword_27DEEB650, &qword_238159DD0);
    (*(v136 + 56))(v99, 0, 1, v97);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_238091D24(uint64_t a1)
{
  type metadata accessor for NameDropView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_238091D98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a3;
  v4 = a2[2];
  v122 = a2[1];
  v5 = a2[4];
  v94 = a2[3];
  v95 = v4;
  v93 = v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE80, &qword_238158EE0);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v97 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB738, &qword_238159F88);
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x28223BE20](v7);
  v99 = &v93 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE78, &unk_238159EE0);
  MEMORY[0x28223BE20](v96);
  v102 = &v93 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE58, &qword_238158EC8);
  MEMORY[0x28223BE20](v101);
  v112 = &v93 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB708, &unk_238159ED0);
  MEMORY[0x28223BE20](v109);
  v110 = &v93 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6F8, &qword_238159EC8);
  MEMORY[0x28223BE20](v106);
  v111 = &v93 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6E8, &qword_238159EC0);
  MEMORY[0x28223BE20](v107);
  v108 = &v93 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6D8, &qword_238159EB8);
  MEMORY[0x28223BE20](v105);
  v114 = &v93 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6C8, &qword_238159EB0);
  MEMORY[0x28223BE20](v113);
  v116 = &v93 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6B8, &qword_238159EA8);
  MEMORY[0x28223BE20](v115);
  v118 = &v93 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6A8, &qword_238159EA0);
  MEMORY[0x28223BE20](v117);
  v119 = &v93 - v17;
  v18 = *(type metadata accessor for NameDropView(0) + 24);
  v120 = a1;
  v19 = *(a1 + v18);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (LOBYTE(v134[0]))
  {
    v20 = v94;
  }

  else
  {
    v20 = v122;
  }

  v136 = v20;
  v137 = v21;
  v122 = v19;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v134[0] & 1) == 0)
  {
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();
  }

  sub_2380704A0();
  v22 = v97;
  sub_2381546EC();
  sub_2380711D4(&qword_27DEEAE88, &qword_27DEEAE80, &qword_238158EE0, MEMORY[0x277CDEFF0]);
  sub_238087A6C();
  v24 = v99;
  v23 = v100;
  sub_2381543CC();
  (*(v98 + 8))(v22, v23);
  v25 = v102;
  v26 = &v102[*(v96 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v28 = *MEMORY[0x277CE1050];
  v29 = sub_2381546BC();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  (*(v103 + 32))(v25, v24, v104);
  sub_2381542CC();
  sub_23815421C();
  v30 = sub_23815425C();

  KeyPath = swift_getKeyPath();
  v32 = v112;
  sub_23807121C(v25, v112, &qword_27DEEAE78, &unk_238159EE0);
  v33 = (v32 + *(v101 + 36));
  *v33 = KeyPath;
  v33[1] = v30;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v134[8] = v131;
  v134[9] = v132;
  v135 = v133;
  v134[4] = v127;
  v134[5] = v128;
  v134[6] = v129;
  v134[7] = v130;
  v134[0] = v123;
  v134[1] = v124;
  v134[2] = v125;
  v134[3] = v126;
  v34 = *(&v127 + 1);

  sub_23809B34C(v134);
  v35 = swift_getKeyPath();
  v36 = v110;
  sub_23807121C(v32, v110, &qword_27DEEAE58, &qword_238158EC8);
  v37 = (v36 + *(v109 + 36));
  *v37 = v35;
  v37[1] = v34;
  v38 = swift_getKeyPath();
  v39 = v36;
  v40 = v111;
  sub_23807121C(v39, v111, &qword_27DEEB708, &unk_238159ED0);
  v41 = v40 + *(v106 + 36);
  *v41 = v38;
  *(v41 + 8) = 1;
  *(v41 + 16) = 0;
  v42 = swift_getKeyPath();
  v43 = v40;
  v44 = v108;
  sub_23807121C(v43, v108, &qword_27DEEB6F8, &qword_238159EC8);
  v45 = v44 + *(v107 + 36);
  *v45 = v42;
  *(v45 + 8) = 1;
  v46 = swift_getKeyPath();
  v47 = v114;
  sub_23807121C(v44, v114, &qword_27DEEB6E8, &qword_238159EC0);
  v48 = (v47 + *(v105 + 36));
  *v48 = v46;
  v48[1] = 0x3FE0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  LOBYTE(v32) = sub_23815410C();
  *(inited + 32) = v32;
  v50 = sub_23815411C();
  *(inited + 33) = v50;
  v51 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v32)
  {
    v51 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v50)
  {
    v51 = sub_23815413C();
  }

  sub_23815377C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v116;
  sub_23807121C(v47, v116, &qword_27DEEB6D8, &qword_238159EB8);
  v61 = v60 + *(v113 + 36);
  *v61 = v51;
  *(v61 + 8) = v53;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v59;
  *(v61 + 40) = 0;
  v62 = sub_23815412C();
  sub_23815377C();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v60;
  v72 = v118;
  sub_23807121C(v71, v118, &qword_27DEEB6C8, &qword_238159EB0);
  v73 = v72 + *(v115 + 36);
  *v73 = v62;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70;
  *(v73 + 40) = 0;
  v74 = sub_23815414C();
  sub_23815377C();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v119;
  sub_23807121C(v72, v119, &qword_27DEEB6B8, &qword_238159EA8);
  v84 = v83 + *(v117 + 36);
  *v84 = v74;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  v85 = sub_2381548DC();
  v87 = v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB690, &qword_238159E98);
  v89 = v121;
  v90 = v121 + *(v88 + 36);
  sub_2380929C8(v90);
  v91 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB718, &qword_238159EF0) + 36));
  *v91 = v85;
  v91[1] = v87;
  return sub_23807121C(v83, v89, &qword_27DEEB6A8, &qword_238159EA0);
}

uint64_t sub_2380929C8@<X0>(uint64_t a2@<X8>)
{
  v14 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB740, &qword_238159F90);
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v13 - v3;
  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v15 & 1) != 0 || (sub_23815381C(), swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , , v15 == 1))
  {
    v5 = *MEMORY[0x277CE0118];
    v6 = sub_238153DDC();
    (*(*(v6 - 8) + 104))(v4, v5, v6);
    v7 = v13;
    v8 = &v4[*(v13 + 36)];
    v15 = xmmword_2381594F0;
    v16 = xmmword_238159500;
    v17 = xmmword_238159510;
    v18 = xmmword_238159520;
    v19 = xmmword_238159530;
    sub_2381543FC();
    v9 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB748, &qword_238159F98) + 36)];
    *v9 = 0x4024000000000000;
    v9[8] = 1;
    v10 = v14;
    sub_23807121C(v4, v14, &qword_27DEEB740, &qword_238159F90);
    v11 = 0;
  }

  else
  {
    v11 = 1;
    v7 = v13;
    v10 = v14;
  }

  return (*(v2 + 56))(v10, v11, 1, v7);
}

uint64_t sub_238092CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB360, &qword_238159998);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB368, &qword_2381599A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v29 - v9;
  v10 = *(v1 + 16);
  v36 = *(v1 + 8);
  v37 = v10;
  sub_2380704A0();

  v11 = sub_23815438C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v36 = v11;
  v37 = v13;
  v33 = KeyPath;
  v34 = v13;
  v32 = v15 & 1;
  LOBYTE(v38) = v15 & 1;
  v39 = v17;
  v40 = KeyPath;
  v41 = 1;
  v42 = 0;
  v19 = *MEMORY[0x277CDF9D8];
  v20 = sub_238153A0C();
  (*(*(v20 - 8) + 104))(v6, v19, v20);
  sub_23809E560(&qword_27DEEB370, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_238154C7C();
  if (result)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA628, &unk_238157D20);
    v23 = sub_238070C9C();
    v30 = v7;
    v31 = a1;
    v24 = v23;
    v29 = v2;
    v25 = sub_2380711D4(&qword_27DEEB378, &qword_27DEEB360, &qword_238159998, MEMORY[0x277D84470]);
    v26 = v35;
    sub_23815445C();
    sub_238071284(v6, &qword_27DEEB360, &qword_238159998);
    sub_238070490(v11, v34, v32);

    MEMORY[0x28223BE20](v27);
    *(&v29 - 2) = v29;
    v36 = v22;
    v37 = v4;
    v38 = v24;
    v39 = v25;
    swift_getOpaqueTypeConformance2();
    v28 = v30;
    sub_2381544DC();
    return (*(v8 + 8))(v26, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238093084@<X0>(uint64_t a2@<X8>)
{
  sub_2380704A0();

  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2380930F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2F8, &qword_238159910);
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v73 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB300, &qword_238159918);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v84 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v68 - v7;
  v8 = type metadata accessor for NameDropView.fieldSummaryView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB308, &qword_238159920);
  v81 = *(v83 - 8);
  v12 = MEMORY[0x28223BE20](v83);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB310, &qword_238159928);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB318, &qword_238159930);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB320, &qword_238159938);
  v23 = *(v22 - 8);
  v76 = v22;
  v77 = v23;
  v24 = MEMORY[0x28223BE20](v22);
  v75 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v74 = &v68 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB328, &unk_238159940);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v87 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v78 = *(a1 + 24);
  v72 = v8;
  v89 = &v68 - v30;
  if (v78 != 1)
  {
    goto LABEL_6;
  }

  v31 = a1[2];
  v32 = a1[1] & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v31) & 0xF;
  }

  if (v32)
  {
    v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v74;
    sub_238092CF0(v74);
    v34 = *(v8 + 32);
    v69 = v9;
    v35 = *(v77 + 16);
    v70 = v10;
    v36 = v75;
    v68 = v18;
    v37 = v76;
    v35(v75, v33, v76);
    sub_2380712E4(a1 + v34, v17, &qword_27DEEB310, &qword_238159928);
    v35(v21, v36, v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB358, &qword_238159990);
    sub_2380712E4(v17, &v21[*(v38 + 48)], &qword_27DEEB310, &qword_238159928);
    v39 = *(v77 + 8);
    v40 = v33;
    v11 = v71;
    v39(v40, v37);
    sub_238071284(v17, &qword_27DEEB310, &qword_238159928);
    v39(v36, v37);
    v9 = v69;
    v41 = v89;
    sub_23807121C(v21, v89, &qword_27DEEB318, &qword_238159930);
    (*(v19 + 56))(v41, 0, 1, v68);
  }

  else
  {
LABEL_6:
    (*(v19 + 56))(&v68 - v30, 1, 1, v18);
  }

  v90 = *a1;
  swift_getKeyPath();
  sub_23809CDF8(a1, v11);
  v42 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v43 = swift_allocObject();
  sub_23809CFD4(v11, v43 + v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB330, &qword_238159978);
  sub_2380711D4(&qword_27DEEB338, &qword_27DEEBB70, &qword_238159970, MEMORY[0x277D83980]);
  sub_2380711D4(&qword_27DEEB340, &qword_27DEEB330, &qword_238159978, MEMORY[0x277CE14C0]);
  sub_23815480C();
  if (v78)
  {
    goto LABEL_12;
  }

  v44 = a1[2];
  v45 = a1[1] & 0xFFFFFFFFFFFFLL;
  if ((v44 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v44) & 0xF;
  }

  if (!v45)
  {
LABEL_12:
    v55 = 1;
  }

  else
  {
    v46 = *(v72 + 32);
    v47 = v74;
    sub_238092CF0(v74);
    sub_2380712E4(a1 + v46, v17, &qword_27DEEB310, &qword_238159928);
    v48 = v76;
    v49 = v77;
    v50 = *(v77 + 16);
    v51 = v75;
    v50(v75, v47, v76);
    v52 = v73;
    sub_2380712E4(v17, v73, &qword_27DEEB310, &qword_238159928);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB348, &qword_238159980);
    v50((v52 + *(v53 + 48)), v51, v48);
    v54 = *(v49 + 8);
    v54(v47, v48);
    v54(v51, v48);
    sub_238071284(v17, &qword_27DEEB310, &qword_238159928);
    sub_23807121C(v52, v86, &qword_27DEEB2F8, &qword_238159910);
    v55 = 0;
  }

  v56 = v86;
  (*(v79 + 56))(v86, v55, 1, v82);
  v57 = v87;
  sub_2380712E4(v89, v87, &qword_27DEEB328, &unk_238159940);
  v59 = v80;
  v58 = v81;
  v60 = *(v81 + 16);
  v61 = v88;
  v62 = v83;
  v60(v80, v88, v83);
  v63 = v84;
  sub_2380712E4(v56, v84, &qword_27DEEB300, &qword_238159918);
  v64 = v85;
  sub_2380712E4(v57, v85, &qword_27DEEB328, &unk_238159940);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB350, &qword_238159988);
  v60((v64 + *(v65 + 48)), v59, v62);
  sub_2380712E4(v63, v64 + *(v65 + 64), &qword_27DEEB300, &qword_238159918);
  sub_238071284(v56, &qword_27DEEB300, &qword_238159918);
  v66 = *(v58 + 8);
  v66(v61, v62);
  sub_238071284(v89, &qword_27DEEB328, &unk_238159940);
  sub_238071284(v63, &qword_27DEEB300, &qword_238159918);
  v66(v59, v62);
  return sub_238071284(v87, &qword_27DEEB328, &unk_238159940);
}

uint64_t sub_238093AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB380, &qword_2381599D8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB360, &qword_238159998);
  MEMORY[0x28223BE20](v52);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760);
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB388, &qword_2381599E0);
  v57 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v56 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v58 = &v47 - v19;
  v21 = *a1;
  v20 = a1[1];

  v51 = v21;
  v59 = sub_23815469C();
  v22 = *MEMORY[0x277CDF9D8];
  v23 = sub_238153A0C();
  (*(*(v23 - 8) + 104))(v12, v22, v23);
  sub_23809E560(&qword_27DEEB370, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_238154C7C();
  if (result)
  {
    v47 = v16;
    v49 = a3;
    v50 = v8;
    v25 = sub_2380711D4(&qword_27DEEB378, &qword_27DEEB360, &qword_238159998, MEMORY[0x277D84470]);
    v48 = v10;
    v26 = MEMORY[0x277CE1088];
    v27 = v52;
    sub_23815445C();
    sub_238071284(v12, &qword_27DEEB360, &qword_238159998);

    MEMORY[0x28223BE20](v28);
    v29 = v51;
    *(&v47 - 2) = v51;
    *(&v47 - 1) = v20;
    v59 = v26;
    v60 = v27;
    v61 = MEMORY[0x277CE1078];
    v62 = v25;
    swift_getOpaqueTypeConformance2();
    v30 = v58;
    v31 = v54;
    v32 = v48;
    sub_2381544DC();
    (*(v53 + 8))(v15, v31);
    v33 = v55;
    v34 = *(*v55 + 16);
    if (v34 && ((v35 = (*v55 + 16 + 16 * v34), v29 == *v35) && v20 == v35[1] || (sub_2381555CC() & 1) != 0))
    {
      v36 = 1;
    }

    else
    {
      v37 = type metadata accessor for NameDropView.fieldSummaryView(0);
      sub_2380712E4(v33 + *(v37 + 32), v32, &qword_27DEEB310, &qword_238159928);
      v36 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB310, &qword_238159928);
    (*(*(v38 - 8) + 56))(v32, v36, 1, v38);
    v40 = v56;
    v39 = v57;
    v41 = *(v57 + 16);
    v42 = v47;
    v41(v56, v30, v47);
    v43 = v50;
    sub_2380712E4(v32, v50, &qword_27DEEB380, &qword_2381599D8);
    v44 = v49;
    v41(v49, v40, v42);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB390, &qword_2381599E8);
    sub_2380712E4(v43, &v44[*(v45 + 48)], &qword_27DEEB380, &qword_2381599D8);
    sub_238071284(v32, &qword_27DEEB380, &qword_2381599D8);
    v46 = *(v39 + 8);
    v46(v58, v42);
    sub_238071284(v43, &qword_27DEEB380, &qword_2381599D8);
    return (v46)(v40, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2380940B0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_238153D1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2F0, &qword_238159908);
  return sub_2380930F0(v2, a2 + *(v4 + 44));
}

uint64_t NameDropView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v2 = sub_23815459C();
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x28223BE20](v2);
  v92 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB140, &qword_2381595D8);
  MEMORY[0x28223BE20](v93);
  v91 = (&v88 - v4);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB148, &qword_2381595E0);
  MEMORY[0x28223BE20](v96);
  v99 = &v88 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB150, &qword_2381595E8);
  MEMORY[0x28223BE20](v98);
  v101 = &v88 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB158, &qword_2381595F0);
  v7 = MEMORY[0x28223BE20](v109);
  v100 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v102 = &v88 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB160, &qword_2381595F8);
  MEMORY[0x28223BE20](v116);
  v119 = (&v88 - v10);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB168, &qword_238159600);
  MEMORY[0x28223BE20](v106);
  v108 = &v88 - v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB170, &qword_238159608);
  MEMORY[0x28223BE20](v118);
  v110 = &v88 - v12;
  v13 = type metadata accessor for NameDropView(0);
  v103 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v105 = v14;
  v114 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB178, &qword_238159610);
  MEMORY[0x28223BE20](v115);
  v112 = (&v88 - v15);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB180, &qword_238159618);
  v97 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v88 - v16;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB188, &qword_238159620);
  MEMORY[0x28223BE20](v120);
  v117 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB190, &qword_238159628);
  MEMORY[0x28223BE20](v18);
  v20 = (&v88 - v19);
  v90 = v13;
  v21 = *(v13 + 24);
  v113 = v1;
  v22 = *(v1 + v21);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  v111 = v22;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v149[8] = v146;
  v149[9] = v147;
  v150 = v148;
  v149[4] = v142;
  v149[5] = v143;
  v149[6] = v144;
  v149[7] = v145;
  v149[0] = v138;
  v149[1] = v139;
  v149[2] = v140;
  v149[3] = v141;
  v23 = v148;
  v24 = v148;
  sub_23809B34C(v149);
  if (v23)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *v20 = v24;
    v20[1] = sub_23809C188;
    v20[2] = v25;
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_23809BC68();
    v26 = v24;
    return sub_238153ECC();
  }

  else
  {
    v28 = v112;
    v29 = v113;
    v88 = v18;
    v89 = v20;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v146 = v135;
    v147 = v136;
    v148 = v137;
    v142 = v131;
    v143 = v132;
    v144 = v133;
    v145 = v134;
    v138 = v127;
    v139 = v128;
    v140 = v129;
    v141 = v130;
    v30 = *(&v136 + 1);
    sub_23809B3A0(*(&v136 + 1));
    sub_23809B34C(&v138);
    if (v30)
    {
      v32 = v114;
      v31 = v115;
      if (v30 == 1)
      {
        sub_2381545CC();
        v33 = sub_23815462C();

        v34 = sub_2381540FC();
        sub_2381548DC();
        sub_238153A8C();
        *&v126[7] = v127;
        *&v126[23] = v128;
        *&v126[39] = v129;
        *&v126[55] = v130;
        *&v126[103] = v133;
        *&v126[87] = v132;
        *&v126[71] = v131;
        v35 = v119;
        *v119 = v33;
        *(v35 + 8) = v34;
        v36 = *v126;
        v37 = *&v126[16];
        v38 = *&v126[32];
        *(v35 + 57) = *&v126[48];
        *(v35 + 41) = v38;
        *(v35 + 25) = v37;
        *(v35 + 9) = v36;
        v39 = *&v126[64];
        v40 = *&v126[80];
        v41 = *&v126[96];
        v35[15] = *&v126[111];
        *(v35 + 105) = v41;
        *(v35 + 89) = v40;
        *(v35 + 73) = v39;
        v35[16] = sub_238099C70;
        v35[17] = 0;
        v35[18] = 0;
        v35[19] = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1A0, &qword_238159678);
        sub_23809B3B0();
        sub_23809BA44();
        v42 = v117;
        sub_238153ECC();
      }

      else
      {
        *v28 = sub_2381548DC();
        v28[1] = v69;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB290, &qword_2381596D8);
        sub_23809521C(v29, v30, v28 + *(v70 + 44));
        sub_23809BCF4(v29, v32);
        v71 = *(v103 + 80);
        v72 = (v71 + 16) & ~v71;
        v73 = swift_allocObject();
        sub_23809BD60(v32, v73 + v72);
        v74 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1C8, &qword_238159688) + 36));
        *v74 = sub_23809BF54;
        v74[1] = v73;
        v74[2] = 0;
        v74[3] = 0;
        sub_23809BCF4(v29, v32);
        v75 = swift_allocObject();
        sub_23809BD60(v32, v75 + v72);
        v76 = (v28 + *(v31 + 36));
        *v76 = 0;
        v76[1] = 0;
        v76[2] = sub_23809BF6C;
        v76[3] = v75;
        v77 = v29 + *(v90 + 20);
        v78 = *v77;
        v79 = *(v77 + 8);
        LOBYTE(v122) = v78;
        v123 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
        sub_23815472C();
        v111 = v127;
        sub_23809BCF4(v29, v32);
        v80 = swift_allocObject();
        *(v80 + 16) = v30;
        sub_23809BD60(v32, v80 + ((v71 + 24) & ~v71));
        v81 = v30;
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1B0, &qword_238159680);
        v114 = sub_23809B4A4();
        v87 = sub_23809B5E8();
        v82 = v104;
        sub_23815451C();

        sub_238071284(v28, &qword_27DEEB178, &qword_238159610);
        v83 = v97;
        v84 = v82;
        v85 = v107;
        (*(v97 + 16))(v108, v84, v107);
        swift_storeEnumTagMultiPayload();
        *&v127 = v31;
        *(&v127 + 1) = v113;
        *&v128 = v114;
        *(&v128 + 1) = v87;
        swift_getOpaqueTypeConformance2();
        sub_23809B7BC();
        v86 = v110;
        sub_238153ECC();
        sub_2380712E4(v86, v119, &qword_27DEEB170, &qword_238159608);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1A0, &qword_238159678);
        sub_23809B3B0();
        sub_23809BA44();
        v42 = v117;
        sub_238153ECC();
        sub_23809BF44(v30);
        sub_238071284(v86, &qword_27DEEB170, &qword_238159608);
        (*(v83 + 8))(v104, v85);
      }
    }

    else
    {
      v43 = sub_238153DEC();
      v44 = v91;
      *v91 = v43;
      *(v44 + 8) = 0;
      *(v44 + 16) = 1;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB288, &qword_2381596D0);
      v46 = v29;
      sub_238098214(v29, (v44 + *(v45 + 44)));
      (*(v94 + 104))(v92, *MEMORY[0x277CE0EE0], v95);
      v47 = sub_23815464C();
      v48 = sub_2381540FC();
      v49 = v44 + *(v93 + 36);
      *v49 = v47;
      *(v49 + 8) = v48;
      sub_2381548DC();
      sub_238153A8C();
      v50 = v99;
      sub_23807121C(v44, v99, &qword_27DEEB140, &qword_2381595D8);
      v51 = (v50 + *(v96 + 36));
      v52 = v132;
      v51[4] = v131;
      v51[5] = v52;
      v51[6] = v133;
      v53 = v128;
      *v51 = v127;
      v51[1] = v53;
      v54 = v130;
      v51[2] = v129;
      v51[3] = v54;
      v55 = v114;
      sub_23809BCF4(v46, v114);
      v56 = (*(v103 + 80) + 16) & ~*(v103 + 80);
      v57 = swift_allocObject();
      sub_23809BD60(v55, v57 + v56);
      v58 = v50;
      v59 = v101;
      sub_23807121C(v58, v101, &qword_27DEEB148, &qword_2381595E0);
      v60 = (v59 + *(v98 + 36));
      *v60 = sub_23809BDC4;
      v60[1] = v57;
      v60[2] = 0;
      v60[3] = 0;
      sub_23809BCF4(v46, v55);
      v61 = swift_allocObject();
      sub_23809BD60(v55, v61 + v56);
      v62 = v100;
      sub_23807121C(v59, v100, &qword_27DEEB150, &qword_2381595E8);
      v63 = (v62 + *(v109 + 36));
      *v63 = 0;
      v63[1] = 0;
      v63[2] = sub_23809BF2C;
      v63[3] = v61;
      v64 = v102;
      sub_23807121C(v62, v102, &qword_27DEEB158, &qword_2381595F0);
      sub_2380712E4(v64, v108, &qword_27DEEB158, &qword_2381595F0);
      swift_storeEnumTagMultiPayload();
      v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1B0, &qword_238159680);
      v66 = sub_23809B4A4();
      v67 = sub_23809B5E8();
      v122 = v115;
      v123 = v65;
      v124 = v66;
      v125 = v67;
      swift_getOpaqueTypeConformance2();
      sub_23809B7BC();
      v68 = v110;
      sub_238153ECC();
      sub_2380712E4(v68, v119, &qword_27DEEB170, &qword_238159608);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1A0, &qword_238159678);
      sub_23809B3B0();
      sub_23809BA44();
      v42 = v117;
      sub_238153ECC();
      sub_23809BF44(0);
      sub_238071284(v68, &qword_27DEEB170, &qword_238159608);
      sub_238071284(v64, &qword_27DEEB158, &qword_2381595F0);
    }

    sub_2380712E4(v42, v89, &qword_27DEEB188, &qword_238159620);
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_23809BC68();
    sub_238153ECC();
    return sub_238071284(v42, &qword_27DEEB188, &qword_238159620);
  }
}

void sub_2380951B0(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_23809521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v54 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB560, &qword_238159C98);
  v4 = MEMORY[0x28223BE20](v51);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v46 = sub_23815468C();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB568, &qword_238159CA0);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB570, &qword_238159CA8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  type metadata accessor for NameDropView(0);
  v52 = a1;
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v69[8] = v66;
  v69[9] = v67;
  v70 = v68;
  v69[4] = v62;
  v69[5] = v63;
  v69[6] = v64;
  v69[7] = v65;
  v69[0] = v58;
  v69[1] = v59;
  v69[2] = v60;
  v69[3] = v61;
  v20 = *(&v63 + 1);
  v21 = *(&v63 + 1);
  sub_23809B34C(v69);
  if (v20)
  {
    v22 = v21;
    sub_23815466C();
    v23 = v46;
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v46);
    v24 = sub_2381546CC();

    (*(v8 + 8))(v10, v23);
    v25 = sub_2381548DC();
    v27 = v26;
    v28 = v47;
    v29 = &v14[*(v47 + 36)];
    v58 = xmmword_238159540;
    v59 = xmmword_238159550;
    v60 = xmmword_238159560;
    v61 = xmmword_238159570;
    v62 = xmmword_238159580;
    sub_2381543FC();

    v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB588, &qword_238159CC0) + 36)];
    *v30 = v25;
    v30[1] = v27;
    *v14 = v24;
    *(v14 + 1) = 0;
    *(v14 + 8) = 257;
    sub_23807121C(v14, v19, &qword_27DEEB568, &qword_238159CA0);
    v31 = 0;
    v32 = v28;
  }

  else
  {
    v31 = 1;
    v32 = v47;
  }

  (*(v48 + 56))(v19, v31, 1, v32);
  *v7 = sub_238153DEC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB578, &qword_238159CB0);
  sub_238095814(v52, v50, &v7[*(v33 + 44)]);
  v34 = sub_2381548DC();
  v36 = v35;
  sub_238096CDC(&v55);
  v37 = v56;
  v38 = v57;
  v39 = &v7[*(v51 + 36)];
  *v39 = v55;
  *(v39 + 4) = v37;
  v39[10] = v38;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  v40 = v49;
  sub_2380712E4(v19, v49, &qword_27DEEB570, &qword_238159CA8);
  v41 = v53;
  sub_2380712E4(v7, v53, &qword_27DEEB560, &qword_238159C98);
  v42 = v54;
  sub_2380712E4(v40, v54, &qword_27DEEB570, &qword_238159CA8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB580, &qword_238159CB8);
  sub_2380712E4(v41, v42 + *(v43 + 48), &qword_27DEEB560, &qword_238159C98);
  sub_238071284(v7, &qword_27DEEB560, &qword_238159C98);
  sub_238071284(v19, &qword_27DEEB570, &qword_238159CA8);
  sub_238071284(v41, &qword_27DEEB560, &qword_238159C98);
  return sub_238071284(v40, &qword_27DEEB570, &qword_238159CA8);
}

uint64_t sub_238095814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v198 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A0, &qword_238159CD0);
  v200 = *(v4 - 8);
  v201 = v4;
  MEMORY[0x28223BE20](v4);
  v190 = &v173[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A8, &qword_238159CD8);
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v173[-v7];
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B0, &qword_238159CE0);
  MEMORY[0x28223BE20](v180);
  v183 = &v173[-v8];
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B8, &qword_238159CE8);
  MEMORY[0x28223BE20](v182);
  v187 = &v173[-v9];
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5C0, &qword_238159CF0);
  v10 = MEMORY[0x28223BE20](v186);
  v189 = &v173[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v185 = &v173[-v13];
  MEMORY[0x28223BE20](v12);
  v188 = &v173[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5C8, &qword_238159CF8);
  MEMORY[0x28223BE20](v15 - 8);
  v191 = &v173[-v16];
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5D0, &qword_238159D00);
  MEMORY[0x28223BE20](v175);
  v178 = &v173[-v17];
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5D8, &qword_238159D08);
  v18 = MEMORY[0x28223BE20](v177);
  v184 = &v173[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v176 = &v173[-v21];
  MEMORY[0x28223BE20](v20);
  v199 = &v173[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5E0, &qword_238159D10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v204 = &v173[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v206 = &v173[-v26];
  v27 = *(type metadata accessor for NameDropView(0) + 24);
  v179 = a1;
  v28 = *(a1 + v27);
  type metadata accessor for NameDropSessionController(0);
  v29 = sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v285[8] = v282;
  v285[9] = v283;
  v286 = v284;
  v285[4] = v278;
  v285[5] = v279;
  v285[7] = v281;
  v285[6] = v280;
  v285[0] = v274;
  v285[1] = v275;
  v285[3] = v277;
  v285[2] = v276;
  v30 = v274;
  v31 = v275;
  v196 = v276;
  sub_23809E74C(v274, *(&v274 + 1), v275, *(&v275 + 1), v276);
  sub_23809B34C(v285);
  v197 = *(&v31 + 1);
  v202 = v29;
  v203 = v28;
  if (*(&v31 + 1) == 3)
  {
    sub_23809E7A4(&v274);
  }

  else
  {
    v193 = v31;
    v194 = *(&v30 + 1);
    v195 = v30;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v215 = v282;
    v216 = v283;
    *&v217 = v284;
    v211 = v278;
    v212 = v279;
    v213 = v280;
    v214 = v281;
    v207 = v274;
    v208 = v275;
    v209 = v276;
    v210 = v277;
    v192 = *(&v277 + 1);

    sub_23809B34C(&v207);
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v226 = v282;
    v227 = v283;
    *&v228 = v284;
    v222 = v278;
    v223 = v279;
    v224 = v280;
    v225 = v281;
    v218 = v274;
    v219 = v275;
    v220 = v276;
    v221 = v277;
    sub_23809B34C(&v218);
    v32 = objc_opt_self();
    v33 = [v32 mainScreen];
    [v33 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v287.origin.x = v35;
    v287.origin.y = v37;
    v287.size.width = v39;
    v287.size.height = v41;
    if (CGRectGetHeight(v287) > 750.0)
    {
      v42 = 94.0;
    }

    else
    {
      v42 = 54.0;
    }

    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v258 = v282;
    v259 = v283;
    v260 = v284;
    v254 = v278;
    v255 = v279;
    v257 = v281;
    v256 = v280;
    v250 = v274;
    v251 = v275;
    v253 = v277;
    v252 = v276;
    sub_23809B34C(&v250);
    v43 = [v32 mainScreen];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v288.origin.x = v45;
    v288.origin.y = v47;
    v288.size.width = v49;
    v288.size.height = v51;
    CGRectGetWidth(v288);
    sub_2381548DC();
    LOBYTE(v43) = BYTE8(v220);
    sub_238153A8C();
    *&v229 = v195;
    *(&v229 + 1) = v194;
    *&v230 = v193;
    *(&v230 + 1) = v197;
    *&v231 = v196;
    *(&v231 + 1) = v192;
    LOBYTE(v232) = v43;
    *(&v232 + 1) = v42;
    CGSizeMake();
    v282 = v237;
    v283 = v238;
    v284 = v239;
    v278 = v233;
    v279 = v234;
    v281 = v236;
    v280 = v235;
    v274 = v229;
    v275 = v230;
    v277 = v232;
    v276 = v231;
  }

  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v258 = v237;
  v259 = v238;
  v260 = v239;
  v254 = v233;
  v255 = v234;
  v257 = v236;
  v256 = v235;
  v250 = v229;
  v251 = v230;
  v253 = v232;
  v252 = v231;
  v52 = *(&v234 + 1);
  v53 = *(&v234 + 1);
  sub_23809B34C(&v250);
  if (v52)
  {

    v196 = 0;
    v197 = 0;
    v194 = 0;
    v195 = 0;
    v192 = 0;
    v193 = 0;
    v205 = 1;
  }

  else
  {
    v54 = v205;
    sub_2381548DC();
    sub_2381538EC();
    v196 = v262;
    v197 = v261;
    v194 = v264;
    v195 = v263;
    v192 = v266;
    v193 = v265;
    v55 = v54;
  }

  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v247 = v237;
  v248 = v238;
  v249 = v239;
  v243 = v233;
  v244 = v234;
  v245 = v235;
  v246 = v236;
  v240[0] = v229;
  v240[1] = v230;
  v241 = v231;
  v242 = v232;
  sub_23809B34C(v240);
  v56 = 1;
  if ((BYTE8(v241) & 1) == 0)
  {
    v57 = sub_238153DEC();
    v58 = objc_opt_self();
    v59 = [v58 mainScreen];
    [v59 bounds];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v289.origin.x = v61;
    v289.origin.y = v63;
    v289.size.width = v65;
    v289.size.height = v67;
    v68 = CGRectGetHeight(v289) > 750.0;
    v69 = 16.0;
    v70 = v191;
    *v191 = v57;
    if (!v68)
    {
      v69 = 9.0;
    }

    *(v70 + 8) = v69;
    *(v70 + 16) = 0;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5E8, &qword_238159D18);
    sub_238090754(v179, v70 + *(v71 + 44));
    v174 = v58;
    v72 = [v58 mainScreen];
    [v72 bounds];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v290.origin.x = v74;
    v290.origin.y = v76;
    v290.size.width = v78;
    v290.size.height = v80;
    CGRectGetWidth(v290);
    sub_2381548DC();
    sub_238153A8C();
    v81 = v178;
    sub_23807121C(v70, v178, &qword_27DEEB5C8, &qword_238159CF8);
    v82 = &v81[*(v175 + 36)];
    v83 = v272;
    v82[4] = v271;
    v82[5] = v83;
    v82[6] = v273;
    v84 = v268;
    *v82 = v267;
    v82[1] = v84;
    v85 = v270;
    v82[2] = v269;
    v82[3] = v85;
    v86 = sub_23815490C();
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v87 = v229;
    v88 = v81;
    v89 = v176;
    sub_23807121C(v88, v176, &qword_27DEEB5D0, &qword_238159D00);
    v90 = &v89[*(v177 + 36)];
    *v90 = v86;
    v90[1] = v87;
    sub_23807121C(v89, v199, &qword_27DEEB5D8, &qword_238159D08);
    v91 = v181;
    sub_23808F2F4(v181);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_238158810;
    v93 = sub_23815412C();
    *(v92 + 32) = v93;
    v94 = sub_23815414C();
    *(v92 + 33) = v94;
    v95 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v93)
    {
      v95 = sub_23815413C();
    }

    sub_23815413C();
    if (sub_23815413C() != v94)
    {
      v95 = sub_23815413C();
    }

    v96 = v187;
    sub_23815377C();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = v91;
    v106 = v183;
    sub_23807121C(v105, v183, &qword_27DEEB5A8, &qword_238159CD8);
    v107 = &v106[*(v180 + 36)];
    *v107 = v95;
    *(v107 + 1) = v98;
    *(v107 + 2) = v100;
    *(v107 + 3) = v102;
    *(v107 + 4) = v104;
    v107[40] = 0;
    v108 = sub_23815411C();
    v109 = v174;
    v110 = [v174 mainScreen];
    [v110 bounds];
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;

    v291.origin.x = v112;
    v291.origin.y = v114;
    v291.size.width = v116;
    v291.size.height = v118;
    CGRectGetHeight(v291);
    sub_23815377C();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    sub_23807121C(v106, v96, &qword_27DEEB5B0, &qword_238159CE0);
    v127 = v96 + *(v182 + 36);
    *v127 = v108;
    *(v127 + 8) = v120;
    *(v127 + 16) = v122;
    *(v127 + 24) = v124;
    *(v127 + 32) = v126;
    *(v127 + 40) = 0;
    v128 = sub_23815410C();
    v129 = [v109 mainScreen];
    [v129 bounds];
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v137 = v136;

    v292.origin.x = v131;
    v292.origin.y = v133;
    v292.size.width = v135;
    v292.size.height = v137;
    CGRectGetHeight(v292);
    sub_23815377C();
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v146 = v185;
    sub_23807121C(v96, v185, &qword_27DEEB5B8, &qword_238159CE8);
    v147 = &v146[*(v186 + 36)];
    *v147 = v128;
    *(v147 + 1) = v139;
    *(v147 + 2) = v141;
    *(v147 + 3) = v143;
    *(v147 + 4) = v145;
    v147[40] = 0;
    v148 = v188;
    sub_23807121C(v146, v188, &qword_27DEEB5C0, &qword_238159CF0);
    v149 = v199;
    v150 = v184;
    sub_2380712E4(v199, v184, &qword_27DEEB5D8, &qword_238159D08);
    v151 = v189;
    sub_2380712E4(v148, v189, &qword_27DEEB5C0, &qword_238159CF0);
    v152 = v190;
    sub_2380712E4(v150, v190, &qword_27DEEB5D8, &qword_238159D08);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5F0, &qword_238159D70);
    sub_2380712E4(v151, &v152[*(v153 + 48)], &qword_27DEEB5C0, &qword_238159CF0);
    sub_238071284(v148, &qword_27DEEB5C0, &qword_238159CF0);
    sub_238071284(v149, &qword_27DEEB5D8, &qword_238159D08);
    sub_238071284(v151, &qword_27DEEB5C0, &qword_238159CF0);
    sub_238071284(v150, &qword_27DEEB5D8, &qword_238159D08);
    sub_23807121C(v152, v206, &qword_27DEEB5A0, &qword_238159CD0);
    v56 = 0;
  }

  v154 = v206;
  (*(v200 + 56))(v206, v56, 1, v201);
  v215 = v282;
  v216 = v283;
  v217 = v284;
  v211 = v278;
  v212 = v279;
  v213 = v280;
  v214 = v281;
  v207 = v274;
  v208 = v275;
  v209 = v276;
  v210 = v277;
  v155 = v204;
  sub_2380712E4(v154, v204, &qword_27DEEB5E0, &qword_238159D10);
  v156 = v216;
  v226 = v215;
  v227 = v216;
  v157 = v217;
  v228 = v217;
  v158 = v211;
  v159 = v212;
  v222 = v211;
  v223 = v212;
  v161 = v213;
  v160 = v214;
  v224 = v213;
  v225 = v214;
  v162 = v207;
  v163 = v208;
  v218 = v207;
  v219 = v208;
  v165 = v209;
  v164 = v210;
  v220 = v209;
  v221 = v210;
  v167 = v197;
  v166 = v198;
  *(v198 + 128) = v215;
  *(v166 + 144) = v156;
  *(v166 + 160) = v157;
  *(v166 + 64) = v158;
  *(v166 + 80) = v159;
  *(v166 + 96) = v161;
  *(v166 + 112) = v160;
  *v166 = v162;
  *(v166 + 16) = v163;
  *(v166 + 32) = v165;
  *(v166 + 48) = v164;
  *(v166 + 176) = 0;
  *(v166 + 184) = 1;
  v168 = v205;
  *(v166 + 192) = v205;
  *(v166 + 200) = v167;
  v169 = v195;
  *(v166 + 208) = v196;
  *(v166 + 216) = v169;
  v170 = v193;
  *(v166 + 224) = v194;
  *(v166 + 232) = v170;
  *(v166 + 240) = v192;
  *(v166 + 248) = 0;
  *(v166 + 256) = 1;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5F8, &qword_238159D78);
  sub_2380712E4(v155, v166 + *(v171 + 96), &qword_27DEEB5E0, &qword_238159D10);
  sub_2380712E4(&v218, &v229, &qword_27DEEB600, &qword_238159D80);
  sub_23809B3A0(v168);
  sub_23809BF44(v168);
  sub_238071284(v206, &qword_27DEEB5E0, &qword_238159D10);
  sub_238071284(v204, &qword_27DEEB5E0, &qword_238159D10);
  sub_23809BF44(v168);
  v237 = v215;
  v238 = v216;
  v239 = v217;
  v233 = v211;
  v234 = v212;
  v235 = v213;
  v236 = v214;
  v229 = v207;
  v230 = v208;
  v231 = v209;
  v232 = v210;
  return sub_238071284(&v229, &qword_27DEEB600, &qword_238159D80);
}