uint64_t sub_2173660E8(char a1)
{
  if (a1)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_21736612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217366018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217366154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369340(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217366190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369340(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Station._AirTime.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25E68, &qword_2177607A0);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_111();
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217369340(v10, v11, v12);
  sub_2177532F8();
  v18 = 0;
  sub_2177517D8();
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v13, v14, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_30_13(v4, &v18);
  if (!v2)
  {
    v15 = *(type metadata accessor for Station._AirTime(0) + 20);
    v17 = 1;
    OUTLINED_FUNCTION_30_13(v4 + v15, &v17);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t Station._AirTime.hash(into:)()
{
  sub_2177517D8();
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v0, v1, MEMORY[0x277CC9588]);
  OUTLINED_FUNCTION_25_15();
  sub_217751EB8();
  type metadata accessor for Station._AirTime(0);
  OUTLINED_FUNCTION_25_15();
  return sub_217751EB8();
}

uint64_t Station._AirTime.hashValue.getter()
{
  sub_2177531E8();
  sub_2177517D8();
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v0, v1, MEMORY[0x277CC9588]);
  sub_217751EB8();
  type metadata accessor for Station._AirTime(0);
  sub_217751EB8();
  return sub_217753238();
}

uint64_t Station._AirTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v38 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v34 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25E80, &qword_2177607A8);
  OUTLINED_FUNCTION_0_0();
  v36 = v10;
  v37 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for Station._AirTime(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217369340(v17, v18, v19);
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v13;
  v31 = v7;
  v32 = v16;
  v20 = v34;
  v40 = 0;
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v21, v22, MEMORY[0x277CC95A0]);
  v23 = v35;
  sub_217752EA8();
  v35 = *(v20 + 32);
  (v35)(v32, v23, v38);
  v39 = 1;
  v24 = v31;
  sub_217752EA8();
  v25 = OUTLINED_FUNCTION_20_17();
  v26(v25);
  v27 = v32;
  (v35)(&v32[*(v30 + 20)], v24, v38);
  sub_217369394(v27, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2173693F8(v27);
}

uint64_t sub_2173667E0(uint64_t a1)
{
  sub_2177531E8();
  sub_2177517D8();
  sub_2173699E0(&qword_27CB25C68, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_217751EB8();
  sub_217751EB8();
  return sub_217753238();
}

BOOL static Station._Kind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
    case 5:
      return v3 == 5;
    case 6:
      return v3 == 6;
    case 7:
      return v3 == 7;
    case 8:
      return v3 == 8;
    case 9:
      return v3 == 9;
    case 0xA:
      return v3 == 10;
    case 0xB:
      return v3 == 11;
    case 0xC:
      return v3 == 12;
    case 0xD:
      return v3 == 13;
    default:
      if ((v3 - 3) < 0xB)
      {
        return 0;
      }

      if (v2 != 2)
      {
        return v3 != 2 && (sub_217706B60(v2 & 1) & 1) != 0;
      }

      return v3 == 2;
  }
}

uint64_t sub_2173669A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565536D75626C61 && a2 == 0xEB00000000646564;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4F747369747261 && a2 == 0xEA0000000000796CLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553747369747261 && a2 == 0xEC00000064656465;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000002177AC080 == a2;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7473696C79616C70 && a2 == 0xEE00646564656553;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x64656553676E6F73 && a2 == 0xEA00000000006465;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 1919251317 && a2 == 0xE400000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_217753058();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217366D60(char a1)
{
  result = 0x6565536D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x6E4F747369747261;
      break;
    case 2:
      result = 0x6553747369747261;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x65726E6567;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x7972657571;
      break;
    case 9:
      result = 0x64656553676E6F73;
      break;
    case 10:
      result = 0x6E696D6165727473;
      break;
    case 11:
      result = 1919251317;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217366EC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217366F34()
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

uint64_t sub_217366F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369898(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217366FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369898(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217366FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369844(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217367038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369844(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217367074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173697F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173670B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173697F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173670F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173669A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21736711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369454(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217367158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369454(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217367194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21736979C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173671D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21736979C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21736720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369748(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217367248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217369748(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217367284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173696F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173672C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173696F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173672FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173696A0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217367338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173696A0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217367374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21736964C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173673B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21736964C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173673EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173695F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217367428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173695F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217367464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173695A4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173674A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173695A4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173674E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173694FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217367524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173694FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217367560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173694A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21736759C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173694A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Station._Kind.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25E90, &qword_2177607B0);
  OUTLINED_FUNCTION_0_0();
  v96 = v6;
  v97 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_150();
  v93 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25E98, &qword_2177607B8);
  OUTLINED_FUNCTION_0_0();
  v94 = v10;
  v95 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_150();
  v92 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EA0, &qword_2177607C0);
  OUTLINED_FUNCTION_0_0();
  v90 = v14;
  v91 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_150();
  v89 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EA8, &qword_2177607C8);
  OUTLINED_FUNCTION_0_0();
  v87 = v18;
  v88 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_150();
  v86 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EB0, &qword_2177607D0);
  OUTLINED_FUNCTION_0_0();
  v84 = v22;
  v85 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_150();
  v83 = v24;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EB8, &qword_2177607D8);
  OUTLINED_FUNCTION_0_0();
  v81[15] = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v27);
  v81[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EC0, &qword_2177607E0);
  OUTLINED_FUNCTION_0_0();
  v81[12] = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v30);
  v81[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EC8, &qword_2177607E8);
  OUTLINED_FUNCTION_0_0();
  v81[9] = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v33);
  v81[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25ED0, &qword_2177607F0);
  OUTLINED_FUNCTION_0_0();
  v81[6] = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v36);
  v81[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25ED8, &qword_2177607F8);
  OUTLINED_FUNCTION_0_0();
  v81[3] = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_28_11(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EE0, &qword_217760800);
  OUTLINED_FUNCTION_0_0();
  v81[1] = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  v44 = v81 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EE8, &qword_217760808);
  OUTLINED_FUNCTION_0_0();
  v81[0] = v46;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_111();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25EF0, &qword_217760810);
  OUTLINED_FUNCTION_0_0();
  v99 = v48;
  v100 = v49;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50);
  v52 = v81 - v51;
  v53 = *v3;
  v54 = a1[4];
  v55 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217369454(v55, v56, v57);
  v98 = v52;
  v58 = sub_2177532F8();
  switch(v53)
  {
    case 3:
      v101[3] = 0;
      sub_217369898(v58, v59, v60);
      v55 = v98;
      v54 = v99;
      sub_217752EE8();
      OUTLINED_FUNCTION_12_1();
      v62 = v2;
      v63 = v45;
      goto LABEL_15;
    case 4:
      v101[4] = 1;
      sub_217369844(v58, v59, v60);
      v55 = v98;
      v54 = v99;
      sub_217752EE8();
      OUTLINED_FUNCTION_12_1();
      v62 = v44;
      v63 = v40;
      goto LABEL_15;
    case 5:
      v102 = 2;
      sub_2173697F0(v58, v59, v60);
      v68 = v81[2];
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.ArtistSeededCodingKeys, &v102);
      OUTLINED_FUNCTION_12_1();
      v62 = v68;
      v65 = v101;
      goto LABEL_10;
    case 6:
      v103 = 3;
      sub_21736979C(v58, v59, v60);
      v69 = v81[5];
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.EditorialCodingKeys, &v103);
      OUTLINED_FUNCTION_12_1();
      v62 = v69;
      v65 = &v105;
      goto LABEL_10;
    case 7:
      v104 = 4;
      sub_217369748(v58, v59, v60);
      v64 = v81[8];
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.FormatCodingKeys, &v104);
      OUTLINED_FUNCTION_12_1();
      v62 = v64;
      v65 = &v111;
      goto LABEL_10;
    case 8:
      v105 = 5;
      sub_2173696F4(v58, v59, v60);
      v70 = v81[11];
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.GenreCodingKeys, &v105);
      OUTLINED_FUNCTION_12_1();
      v62 = v70;
      v65 = &v112;
LABEL_10:
      v63 = *(v65 - 32);
      goto LABEL_15;
    case 9:
      v106 = 6;
      sub_2173696A0(v58, v59, v60);
      v71 = v81[14];
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.LibraryPlaylistSeededCodingKeys, &v106);
      OUTLINED_FUNCTION_12_1();
      v62 = v71;
      v63 = v82;
      goto LABEL_15;
    case 10:
      v107 = 7;
      sub_21736964C(v58, v59, v60);
      v66 = v83;
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.PlaylistSeededCodingKeys, &v107);
      v67 = v84;
      v63 = v85;
      goto LABEL_14;
    case 11:
      v108 = 8;
      sub_2173695F8(v58, v59, v60);
      v66 = v86;
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.QueryCodingKeys, &v108);
      v67 = v87;
      v63 = v88;
      goto LABEL_14;
    case 12:
      v109[0] = 9;
      sub_2173695A4(v58, v59, v60);
      v66 = v89;
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.SongSeededCodingKeys, v109);
      v67 = v90;
      v63 = v91;
      goto LABEL_14;
    case 13:
      v110 = 11;
      sub_2173694A8(v58, v59, v60);
      v66 = v93;
      OUTLINED_FUNCTION_7_19(&type metadata for Station._Kind.UserCodingKeys, &v110);
      v67 = v96;
      v63 = v97;
LABEL_14:
      v61 = *(v67 + 8);
      v62 = v66;
LABEL_15:
      v61(v62, v63);
      result = (*(v100 + 8))(v55, v54);
      break;
    default:
      v109[2] = 10;
      sub_2173694FC(v58, v59, v60);
      v74 = v98;
      v73 = v99;
      v75 = sub_217752EE8();
      v109[1] = v53;
      sub_217369550(v75, v76, v77);
      v78 = v95;
      sub_217752F38();
      v79 = OUTLINED_FUNCTION_14_18();
      v80(v79, v78);
      result = (*(v100 + 8))(v74, v73);
      break;
  }

  return result;
}

double Station._Kind.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1)
  {
    case 3:
      v3 = 0;
      goto LABEL_13;
    case 4:
      v3 = 1;
      goto LABEL_13;
    case 5:
      v3 = 2;
      goto LABEL_13;
    case 6:
      v3 = 3;
      goto LABEL_13;
    case 7:
      v3 = 4;
      goto LABEL_13;
    case 8:
      v3 = 5;
      goto LABEL_13;
    case 9:
      v3 = 6;
      goto LABEL_13;
    case 0xA:
      v3 = 7;
      goto LABEL_13;
    case 0xB:
      v3 = 8;
      goto LABEL_13;
    case 0xC:
      v3 = 9;
      goto LABEL_13;
    case 0xD:
      v3 = 11;
LABEL_13:
      MEMORY[0x21CEA3550](v3);
      break;
    default:
      MEMORY[0x21CEA3550](10);
      if (v2 == 2)
      {
        sub_217753208();
      }

      else
      {
        sub_217753208();
        sub_217751FF8();
      }

      break;
  }

  return result;
}

uint64_t Station._Kind.hashValue.getter()
{
  v2[79] = *v0;
  sub_2177531E8();
  Station._Kind.hash(into:)(v2);
  return sub_217753238();
}

uint64_t Station._Kind.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v163 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25F68, &qword_217760818);
  OUTLINED_FUNCTION_0_0();
  v153 = v4;
  v154 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v161 = v6;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25F70, &qword_217760820);
  OUTLINED_FUNCTION_0_0();
  v133 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_150();
  v162 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25F78, &qword_217760828);
  OUTLINED_FUNCTION_0_0();
  v151 = v11;
  v152 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_150();
  v160 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25F80, &qword_217760830);
  OUTLINED_FUNCTION_0_0();
  v149 = v15;
  v150 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_150();
  v159 = v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25F88, &qword_217760838);
  OUTLINED_FUNCTION_0_0();
  v147 = v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_150();
  v166 = v20;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25F90, &qword_217760840);
  OUTLINED_FUNCTION_0_0();
  v146 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_150();
  v165 = v23;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25F98, &qword_217760848);
  OUTLINED_FUNCTION_0_0();
  v143 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_150();
  v164 = v26;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25FA0, &qword_217760850);
  OUTLINED_FUNCTION_0_0();
  v141 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_150();
  v158 = v29;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25FA8, &qword_217760858);
  OUTLINED_FUNCTION_0_0();
  v139 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_150();
  v157 = v32;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25FB0, &qword_217760860);
  OUTLINED_FUNCTION_0_0();
  v137 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_150();
  v156 = v35;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25FB8, &qword_217760868);
  OUTLINED_FUNCTION_0_0();
  v135 = v36;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v39 = &v127 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25FC0, &qword_217760870);
  OUTLINED_FUNCTION_0_0();
  v134 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  v44 = &v127 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25FC8, &unk_217760878);
  OUTLINED_FUNCTION_0_0();
  v47 = v46;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v48);
  v50 = &v127 - v49;
  v51 = a1[3];
  v167 = a1;
  v52 = __swift_project_boxed_opaque_existential_1(a1, v51);
  sub_217369454(v52, v53, v54);
  v55 = v168;
  sub_2177532C8();
  if (v55)
  {
    goto LABEL_8;
  }

  v131 = v44;
  v130 = v40;
  v132 = v39;
  v56 = v165;
  v168 = v47;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v59 == v60 >> 1)
  {
LABEL_7:
    v74 = v50;
    v75 = v45;
    v76 = sub_217752B48();
    swift_allocError();
    v78 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v78 = &type metadata for Station._Kind;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v168 + 8))(v74, v75);
LABEL_8:
    v79 = v167;
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v129 = 0;
  if (v59 < (v60 >> 1))
  {
    v128 = *(v58 + v59);
    sub_21733CF64();
    v62 = v61;
    v64 = v63;
    v65 = swift_unknownObjectRelease();
    if (v62 == v64 >> 1)
    {
      v68 = v163;
      switch(v128)
      {
        case 1:
          v170 = 1;
          sub_217369844(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.ArtistOnlyCodingKeys, &v170);
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_8_22();
          v105(v104, v136);
          v106 = OUTLINED_FUNCTION_2_31();
          v107(v106);
          v73 = 4;
          break;
        case 2:
          v171 = 2;
          sub_2173697F0(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.ArtistSeededCodingKeys, &v171);
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_8_22();
          v93(v92, v138);
          v94 = OUTLINED_FUNCTION_2_31();
          v95(v94);
          v73 = 5;
          break;
        case 3:
          v172 = 3;
          sub_21736979C(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.EditorialCodingKeys, &v172);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_8_22();
          v97(v96, v140);
          v98 = OUTLINED_FUNCTION_2_31();
          v99(v98);
          v73 = 6;
          break;
        case 4:
          v173 = 4;
          sub_217369748(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.FormatCodingKeys, &v173);
          swift_unknownObjectRelease();
          v84 = OUTLINED_FUNCTION_8_22();
          v85(v84, v142);
          v86 = OUTLINED_FUNCTION_2_31();
          v87(v86);
          v73 = 7;
          break;
        case 5:
          v174 = 5;
          sub_2173696F4(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.GenreCodingKeys, &v174);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_8_22();
          v109(v108, v144);
          v110 = OUTLINED_FUNCTION_2_31();
          v111(v110);
          v73 = 8;
          break;
        case 6:
          v175 = 6;
          sub_2173696A0(v65, v66, v67);
          OUTLINED_FUNCTION_5_23(&type metadata for Station._Kind.LibraryPlaylistSeededCodingKeys, &v175);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12_1();
          v112(v56, v145);
          v113 = OUTLINED_FUNCTION_2_31();
          v114(v113);
          v73 = 9;
          break;
        case 7:
          v176 = 7;
          sub_21736964C(v65, v66, v67);
          OUTLINED_FUNCTION_5_23(&type metadata for Station._Kind.PlaylistSeededCodingKeys, &v176);
          swift_unknownObjectRelease();
          v100 = OUTLINED_FUNCTION_8_22();
          v101(v100, v148);
          v102 = OUTLINED_FUNCTION_2_31();
          v103(v102);
          v73 = 10;
          break;
        case 8:
          v177 = 8;
          sub_2173695F8(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.QueryCodingKeys, &v177);
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_14_18();
          v123(v122);
          v124 = OUTLINED_FUNCTION_2_31();
          v125(v124);
          v73 = 11;
          break;
        case 9:
          v178[0] = 9;
          sub_2173695A4(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.SongSeededCodingKeys, v178);
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_14_18();
          v89(v88);
          v90 = OUTLINED_FUNCTION_2_31();
          v91(v90);
          v73 = 12;
          break;
        case 10:
          v179 = 10;
          sub_2173694FC(v65, v66, v67);
          v115 = v162;
          v117 = v45;
          v116 = OUTLINED_FUNCTION_5_23(&type metadata for Station._Kind.StreamingCodingKeys, &v179);
          sub_2173698EC(v116, v118, v119);
          v120 = v155;
          sub_217752E58();
          v121 = v168;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12_1();
          v126(v115, v120);
          (*(v121 + 8))(v50, v117);
          v73 = v178[1];
          break;
        case 11:
          v180 = 11;
          sub_2173694A8(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.UserCodingKeys, &v180);
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_14_18();
          v81(v80);
          v82 = OUTLINED_FUNCTION_2_31();
          v83(v82);
          v73 = 13;
          break;
        default:
          v169 = 0;
          sub_217369898(v65, v66, v67);
          OUTLINED_FUNCTION_4_32(&type metadata for Station._Kind.AlbumSeededCodingKeys, &v169);
          swift_unknownObjectRelease();
          v69 = OUTLINED_FUNCTION_8_22();
          v70(v69, v130);
          v71 = OUTLINED_FUNCTION_2_31();
          v72(v71);
          v73 = 3;
          break;
      }

      v79 = v167;
      *v68 = v73;
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_217368F0C(uint64_t a1)
{
  v3[79] = *v1;
  sub_2177531E8();
  Station._Kind.hash(into:)(v3);
  return sub_217753238();
}

MusicKit::Station::_StreamingKind_optional __swiftcall Station._StreamingKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

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

uint64_t Station._StreamingKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x73616364616F7262;
  }

  else
  {
    return 0x65646F73697065;
  }
}

uint64_t sub_217369010@<X0>(uint64_t *a1@<X8>)
{
  result = Station._StreamingKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Station.typeValue.getter()
{
  if (qword_280BE26C0 != -1)
  {
    OUTLINED_FUNCTION_15_20(&qword_280BE26C0);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE26C8);

  return sub_217751DE8();
}

uint64_t sub_2173691D0()
{
  if (qword_280BE26C0 != -1)
  {
    OUTLINED_FUNCTION_15_20(&qword_280BE26C0);
  }

  xmmword_280BE6250 = xmmword_280BE26C8;
  xmmword_280BE6260 = xmmword_280BE26D8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.station.getter()
{
  if (qword_280BE6248 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6250);

  return sub_217751DE8();
}

unint64_t sub_2173692A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E60;
  if (!qword_27CB25E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E60);
  }

  return result;
}

uint64_t type metadata accessor for Station._AirTime(uint64_t a1)
{
  result = qword_280BE2770;
  if (!qword_280BE2770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_217369340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25E70;
  if (!qword_27CB25E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E70);
  }

  return result;
}

uint64_t sub_217369394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Station._AirTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2173693F8(uint64_t a1)
{
  v2 = type metadata accessor for Station._AirTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217369454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25EF8;
  if (!qword_27CB25EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25EF8);
  }

  return result;
}

unint64_t sub_2173694A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F00;
  if (!qword_27CB25F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F00);
  }

  return result;
}

unint64_t sub_2173694FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F08;
  if (!qword_27CB25F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F08);
  }

  return result;
}

unint64_t sub_217369550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F10;
  if (!qword_27CB25F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F10);
  }

  return result;
}

unint64_t sub_2173695A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F18;
  if (!qword_27CB25F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F18);
  }

  return result;
}

unint64_t sub_2173695F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F20;
  if (!qword_27CB25F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F20);
  }

  return result;
}

unint64_t sub_21736964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F28;
  if (!qword_27CB25F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F28);
  }

  return result;
}

unint64_t sub_2173696A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F30;
  if (!qword_27CB25F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F30);
  }

  return result;
}

unint64_t sub_2173696F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F38;
  if (!qword_27CB25F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F38);
  }

  return result;
}

unint64_t sub_217369748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F40;
  if (!qword_27CB25F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F40);
  }

  return result;
}

unint64_t sub_21736979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F48;
  if (!qword_27CB25F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F48);
  }

  return result;
}

unint64_t sub_2173697F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F50;
  if (!qword_27CB25F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F50);
  }

  return result;
}

unint64_t sub_217369844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F58;
  if (!qword_27CB25F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F58);
  }

  return result;
}

unint64_t sub_217369898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25F60;
  if (!qword_27CB25F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25F60);
  }

  return result;
}

unint64_t sub_2173698EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25FD0;
  if (!qword_27CB25FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25FD0);
  }

  return result;
}

unint64_t sub_217369944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25FD8;
  if (!qword_27CB25FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25FD8);
  }

  return result;
}

uint64_t sub_2173699E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_217369A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25FE8;
  if (!qword_27CB25FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25FE8);
  }

  return result;
}

unint64_t sub_217369A84()
{
  result = qword_27CB25FF0;
  if (!qword_27CB25FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25FF8, &qword_217760C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25FF0);
  }

  return result;
}

unint64_t sub_217369AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26000;
  if (!qword_27CB26000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26000);
  }

  return result;
}

uint64_t sub_217369B7C(uint64_t a1)
{
  result = sub_2177517D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for Station._Kind(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 < 2)
    {
      v8 = 0;
    }

    if (v8 >= 0xC)
    {
      return (v8 - 11);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 13;
    if (a2 + 13 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 13);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Station._Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 13;
  if (a3 + 13 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF2)
  {
    v7 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_217369D74(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = v1 - 2;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_217369D90(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Station._Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Station._Kind.StreamingCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_217369FF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21736A0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26008;
  if (!qword_27CB26008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26008);
  }

  return result;
}

unint64_t sub_21736A130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26010;
  if (!qword_27CB26010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26010);
  }

  return result;
}

unint64_t sub_21736A188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26018;
  if (!qword_27CB26018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26018);
  }

  return result;
}

unint64_t sub_21736A1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26020;
  if (!qword_27CB26020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26020);
  }

  return result;
}

unint64_t sub_21736A238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26028;
  if (!qword_27CB26028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26028);
  }

  return result;
}

unint64_t sub_21736A290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26030;
  if (!qword_27CB26030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26030);
  }

  return result;
}

unint64_t sub_21736A2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26038;
  if (!qword_27CB26038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26038);
  }

  return result;
}

unint64_t sub_21736A340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26040;
  if (!qword_27CB26040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26040);
  }

  return result;
}

unint64_t sub_21736A398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26048;
  if (!qword_27CB26048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26048);
  }

  return result;
}

unint64_t sub_21736A3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26050;
  if (!qword_27CB26050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26050);
  }

  return result;
}

unint64_t sub_21736A448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26058;
  if (!qword_27CB26058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26058);
  }

  return result;
}

unint64_t sub_21736A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26060;
  if (!qword_27CB26060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26060);
  }

  return result;
}

unint64_t sub_21736A4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26068;
  if (!qword_27CB26068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26068);
  }

  return result;
}

unint64_t sub_21736A550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26070;
  if (!qword_27CB26070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26070);
  }

  return result;
}

unint64_t sub_21736A5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26078;
  if (!qword_27CB26078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26078);
  }

  return result;
}

unint64_t sub_21736A600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26080;
  if (!qword_27CB26080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26080);
  }

  return result;
}

unint64_t sub_21736A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26088;
  if (!qword_27CB26088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26088);
  }

  return result;
}

unint64_t sub_21736A6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26090;
  if (!qword_27CB26090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26090);
  }

  return result;
}

unint64_t sub_21736A708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26098;
  if (!qword_27CB26098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26098);
  }

  return result;
}

unint64_t sub_21736A760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260A0;
  if (!qword_27CB260A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260A0);
  }

  return result;
}

unint64_t sub_21736A7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260A8;
  if (!qword_27CB260A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260A8);
  }

  return result;
}

unint64_t sub_21736A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260B0;
  if (!qword_27CB260B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260B0);
  }

  return result;
}

unint64_t sub_21736A868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260B8;
  if (!qword_27CB260B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260B8);
  }

  return result;
}

unint64_t sub_21736A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260C0;
  if (!qword_27CB260C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260C0);
  }

  return result;
}

unint64_t sub_21736A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260C8;
  if (!qword_27CB260C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260C8);
  }

  return result;
}

unint64_t sub_21736A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260D0;
  if (!qword_27CB260D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260D0);
  }

  return result;
}

unint64_t sub_21736A9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260D8;
  if (!qword_27CB260D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260D8);
  }

  return result;
}

unint64_t sub_21736AA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260E0;
  if (!qword_27CB260E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260E0);
  }

  return result;
}

unint64_t sub_21736AA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260E8;
  if (!qword_27CB260E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260E8);
  }

  return result;
}

unint64_t sub_21736AAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260F0;
  if (!qword_27CB260F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260F0);
  }

  return result;
}

unint64_t sub_21736AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB260F8;
  if (!qword_27CB260F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB260F8);
  }

  return result;
}

unint64_t sub_21736AB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26100;
  if (!qword_27CB26100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26100);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_20(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_22_15()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t RecordLabel.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RecordLabel.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_21736ADF0(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t sub_21736AE8C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_2172A4004();
}

void *sub_21736AEF4(void *a1, uint64_t *a2, uint64_t a3, uint64_t x3_0, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v28 = *a2;

  return sub_2176CA854(v28, a2, a3, x3_0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t RecordLabel.name.getter()
{
  if (qword_27CB23B30 != -1)
  {
    OUTLINED_FUNCTION_1_24(&qword_27CB23B30);
  }

  result = sub_2172A4004();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void RecordLabel.url.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_27CB23B48 != -1)
  {
    OUTLINED_FUNCTION_4_33(&qword_27CB23B48);
  }

  v30 = qword_27CB8A280;

  sub_2176CA39C(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static RecordLabel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t RecordLabel.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t RecordLabel.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_21736B284@<X0>(uint64_t *a1@<X8>)
{
  result = RecordLabel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RecordLabel.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_2172E20E0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_2172E20E0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_2172E20E0(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t sub_21736B47C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261B8, &qword_217761CE8);
  swift_allocObject();
  result = sub_217729830();
  qword_27CB8A250 = result;
  return result;
}

uint64_t sub_21736B4FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261B0, &qword_217761CE0);
  swift_allocObject();
  result = sub_217729830();
  qword_27CB8A258 = result;
  return result;
}

uint64_t sub_21736B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261A8, &qword_217761CD8);
  OUTLINED_FUNCTION_189(v5);
  v16 = MEMORY[0x277D84F90];
  *&v15 = MEMORY[0x277D84F90];
  *(&v15 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_0_27();
  result = sub_2173C381C(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, qword_282959AF8);
  *a4 = result;
  return result;
}

uint64_t sub_21736B638()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261A0, &qword_217761CD0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_0_27();
  result = sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_27CB8A268 = result;
  return result;
}

uint64_t sub_21736B6A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261A0, &qword_217761CD0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_0_27();
  result = sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_27CB8A270 = result;
  return result;
}

uint64_t sub_21736B724()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261A0, &qword_217761CD0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_0_27();
  result = sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_27CB8A278 = result;
  return result;
}

uint64_t sub_21736B7A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26198, &qword_217761CC8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_0_27();
  result = sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_27CB8A280 = result;
  return result;
}

uint64_t static RecordLabel.catalogFilterID(for:)@<X0>(void *a2@<X8>)
{
  swift_getKeyPath("@[=e");
  sub_2177529D8();
  v3 = sub_217751F08();

  if (v3)
  {
    *a2 = 25705;
    a2[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21736B950@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t RecordLabel.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE7D0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t RecordLabel.description.getter()
{
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v0, v0[1], v1);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_27CB23B30 != -1)
  {
    OUTLINED_FUNCTION_1_24(&qword_27CB23B30);
  }

  v2 = sub_2172A4004();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v2, v4);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000, v5);
  return 0xD000000000000011;
}

uint64_t static RecordLabel.typeValue.getter()
{
  if (qword_280BE5130 != -1)
  {
    OUTLINED_FUNCTION_5_24(&qword_280BE5130);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE5138);

  return sub_217751DE8();
}

uint64_t sub_21736C01C()
{
  if (qword_280BE5130 != -1)
  {
    OUTLINED_FUNCTION_5_24(&qword_280BE5130);
  }

  xmmword_280BE6350 = xmmword_280BE5138;
  xmmword_280BE6360 = xmmword_280BE5148;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.recordLabel.getter()
{
  if (qword_280BE6348 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6350);

  return sub_217751DE8();
}

uint64_t sub_21736C0EC(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v13 = MEMORY[0x277D84F90];
  *&v12 = MEMORY[0x277D84F90];
  *(&v12 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v4, v5, v6, v7, v8, v9, v10, 0, v12, v13, qword_282959AF8);
}

uint64_t sub_21736C160(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v13 = MEMORY[0x277D84F90];
  *&v12 = MEMORY[0x277D84F90];
  *(&v12 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v4, v5, v6, v7, v8, v9, v10, 0, v12, v13, qword_282959AF8);
}

uint64_t sub_21736C1C8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v13 = MEMORY[0x277D84F90];
  *&v12 = MEMORY[0x277D84F90];
  *(&v12 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v4, v5, v6, v7, v8, v9, v10, 0, v12, v13, qword_282959AF8);
}

uint64_t sub_21736C234(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v13 = MEMORY[0x277D84F90];
  *&v12 = MEMORY[0x277D84F90];
  *(&v12 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v4, v5, v6, v7, v8, v9, v10, 0, v12, v13, qword_282959AF8);
}

uint64_t sub_21736C2A4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v13 = MEMORY[0x277D84F90];
  *&v12 = MEMORY[0x277D84F90];
  *(&v12 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v4, v5, v6, v7, v8, v9, v10, 0, v12, v13, qword_282959AF8);
}

unint64_t sub_21736C310()
{
  result = qword_27CB254C8;
  if (!qword_27CB254C8)
  {
    sub_2177516D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254C8);
  }

  return result;
}

unint64_t sub_21736C36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26190;
  if (!qword_27CB26190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26190);
  }

  return result;
}

void Track.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  v7 = static LegacyModel.innerModelObject(for:)(a2);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    swift_unknownObjectRetain();
    v8 = a2;
  }

  if (([v8 respondsToSelector_] & 1) != 0 && (v9 = objc_msgSend(v8, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v10 = v9;
    v11 = sub_217751D98();
  }

  else
  {
    v11 = sub_217751DC8();
  }

  sub_2173ACA4C(0xD00000000000001BLL, 0x80000002177A8C80, v11);

  if (v89)
  {
    if ((swift_dynamicCast() & 1) != 0 && v131 == 1)
    {
      if (qword_280BE6378 != -1)
      {
        swift_once();
      }

      v71 = xmmword_280BE6380;
      v12 = objc_opt_self();
      sub_217751DE8();
      v13 = [v12 identifierSetFromLegacyModelObject_];
      OUTLINED_FUNCTION_1_25();
      v14 = sub_217751DE8();
      OUTLINED_FUNCTION_4_34(v14, v15, v16, v17, v18, v19, v20, v21, v71, *(&v71 + 1), v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132);
      sub_217269F50(__dst);

      v22 = sub_21736C814(a3, &v81);
      OUTLINED_FUNCTION_3_30(v22, v23, v24, v25, v26, v27, v28, v29, v72, v77, v81, v82, v83, v84, v85, v86);
      MusicVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
      swift_unknownObjectRelease();
      v30 = sub_2171F06D8(a3, &qword_27CB27590, &qword_21776ADF0);
      OUTLINED_FUNCTION_2_32(v30, v31, v32, v33, v34, v35, v36, v37, v38, v73, v78, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
      *(a4 + 56) = 1;
      return;
    }
  }

  else
  {
    sub_2171F06D8(&v86, &qword_27CB2AD40, &qword_2177583F0);
  }

  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  v74 = xmmword_280BEB140;
  v39 = objc_opt_self();
  sub_217751DE8();
  v40 = [v39 identifierSetFromLegacyModelObject_];
  OUTLINED_FUNCTION_1_25();
  v41 = sub_217751DE8();
  OUTLINED_FUNCTION_4_34(v41, v42, v43, v44, v45, v46, v47, v48, v74, *(&v74 + 1), v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132);
  sub_217269F50(__dst);

  v49 = sub_21736C814(a3, &v81);
  v57 = OUTLINED_FUNCTION_3_30(v49, v50, v51, v52, v53, v54, v55, v56, v75, v79, v81, v82, v83, v84, v85, v86);
  Song.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v57, v58, v59, v60, v61);
  swift_unknownObjectRelease();
  v62 = sub_2171F06D8(a3, &qword_27CB27590, &qword_21776ADF0);
  OUTLINED_FUNCTION_2_32(v62, v63, v64, v65, v66, v67, v68, v69, v70, v76, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  *(a4 + 56) = 0;
}

uint64_t Track.underlyingLegacyModelObjectType.getter@<X0>(char *a1@<X8>)
{
  sub_217275710(v1, v5);
  if (v5[56])
  {
    v3 = 12;
  }

  else
  {
    v3 = 25;
  }

  *a1 = v3;
  return sub_21727576C(v5);
}

uint64_t Track.convertToLegacyModelStorageDictionary(for:)()
{
  sub_217275710(v0, &v23);
  if (v28)
  {
    OUTLINED_FUNCTION_0_28(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    MusicVideo.convertToLegacyModelStorageDictionary(for:)();
    v10 = v9;
    sub_217283C08(&v15);
  }

  else
  {
    OUTLINED_FUNCTION_0_28(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    v10 = Song.convertToLegacyModelStorageDictionary(for:)(v11);
    sub_217283B58(&v15);
  }

  return v10;
}

uint64_t sub_21736C814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27590, &qword_21776ADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21736C888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB261C0;
  if (!qword_27CB261C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB261C0);
  }

  return result;
}

void sub_21736C8DC()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v95 = type metadata accessor for CloudTrack(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_81();
  v89 = v4;
  v5 = OUTLINED_FUNCTION_206();
  v88 = type metadata accessor for CloudPlaylistEntry(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_81();
  v93 = v7;
  v8 = &qword_27CB264F8;
  v9 = OUTLINED_FUNCTION_1_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_80();
  v86 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB26500, &qword_217763648);
  OUTLINED_FUNCTION_45_0(v17);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  OUTLINED_FUNCTION_0_0();
  v74[1] = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_31();
  v74[3] = v21;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_80();
  v74[0] = v23;
  v75 = MEMORY[0x277D84F90];
  v24 = *(v2 + 16);
  v90 = v2;
  v91 = v24;
  v25 = 0;
  v87 = v14;
  v84 = v26;
  v85 = v0;
  while (v91 != v25)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    OUTLINED_FUNCTION_86_3();
    v29 = v28;
    v31 = v30;
    v32 = v90 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v33 = *(v31 + 72);
    v92 = v25;
    v34 = v32 + v33 * v25;
    sub_21737C674();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v95);
      sub_21737C6CC(v93, type metadata accessor for CloudPlaylistEntry);
    }

    else
    {
      sub_21737DE4C();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v95);
    }

    v41 = v87;
    OUTLINED_FUNCTION_46_3();
    sub_2172E21DC();
    if (__swift_getEnumTagSinglePayload(v41, 1, v95) == 1)
    {
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v42, v43, v44);
      v46 = v84;
      v45 = v85;
      v47 = v85;
      v48 = 1;
    }

    else
    {
      sub_21737DE4C();
      v83 = type metadata accessor for CloudTrack;
      v45 = v85;
      sub_21737C674();
      v49 = v27[10];
      v50 = (v34 + v27[9]);
      v51 = *v50;
      v52 = v50[1];
      v78 = *(v50 + 16);
      v53 = v34 + v49;
      v54 = *(v34 + v49);
      v55 = *(v53 + 8);
      v81 = v52;
      v82 = v54;
      v56 = v27[11];
      v79 = v51;
      v80 = v56;
      memcpy(v94, (v34 + v56), sizeof(v94));
      v57 = *(v34 + v27[12]);
      v58 = *(v34 + v27[13]);
      v59 = *(v34 + v27[14]);
      v76 = *(v34 + v27[15]);
      v77 = v58;
      v46 = v84;
      v60 = v45 + v84[9];
      *v60 = v79;
      *(v60 + 8) = v52;
      *(v60 + 16) = v78;
      v61 = (v45 + v46[10]);
      *v61 = v82;
      v61[1] = v55;
      memcpy((v45 + v46[11]), (v34 + v80), 0x180uLL);
      *(v45 + v46[12]) = v57;
      v62 = v76;
      *(v45 + v46[13]) = v77;
      *(v45 + v46[14]) = v59;
      *(v45 + v46[15]) = v62;
      v8 = &qword_27CB264F8;
      sub_217751DE8();
      sub_217751DE8();
      sub_2172E3D54();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_21737C6CC(v89, v83);
      v47 = v45;
      v48 = 0;
    }

    __swift_storeEnumTagSinglePayload(v47, v48, 1, v46);
    v63 = v92;
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
    {
      sub_2171F0738(v45, qword_27CB26500, &qword_217763648);
      v25 = v63 + 1;
    }

    else
    {
      sub_2172E21DC();
      sub_2172E21DC();
      v64 = v75;
      v65 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = OUTLINED_FUNCTION_17();
        sub_2172B1E48(v69, v70, v71, v64);
        v64 = v72;
      }

      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      v68 = v92;
      if (v67 >= v66 >> 1)
      {
        sub_2172B1E48(v66 > 1, v67 + 1, 1, v64);
        v64 = v73;
      }

      v25 = v68 + 1;
      *(v64 + 16) = v67 + 1;
      v75 = v64;
      sub_2172E21DC();
      v8 = v65;
    }
  }

  OUTLINED_FUNCTION_170();
}

void sub_21736CF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v13 = type metadata accessor for CloudRadioShow(0);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_81();
  v77 = v15;
  v16 = OUTLINED_FUNCTION_206();
  v76 = type metadata accessor for CloudRawCurator(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264F0, &qword_217786380);
  OUTLINED_FUNCTION_45_0(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = v64 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  OUTLINED_FUNCTION_0_0();
  v64[2] = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_87_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_80();
  v64[1] = v25;
  v26 = 0;
  v65 = MEMORY[0x277D84F90];
  v66 = v10;
  v78 = *(v12 + 16);
  v67 = v12;
  v75 = v27;
  while (v78 != v26)
  {
    v28 = v26;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
    OUTLINED_FUNCTION_86_3();
    OUTLINED_FUNCTION_57_7();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = v77;
      sub_21737DE4C();
      v74 = type metadata accessor for CloudRadioShow;
      sub_21737C674();
      v31 = v29[10];
      v32 = (v28 + v29[9]);
      v33 = *v32;
      v34 = v32[1];
      v70 = *(v32 + 16);
      v35 = v28 + v31;
      v36 = *(v28 + v31);
      v37 = *(v35 + 8);
      v71 = v33;
      v72 = v36;
      v38 = v29[11];
      memcpy(v79, (v28 + v38), sizeof(v79));
      OUTLINED_FUNCTION_133_6();
      v73 = v30;
      v68 = *(v28 + v39);
      v69 = v40;
      v41 = v75;
      v42 = &v21[v75[9]];
      *v42 = v71;
      *(v42 + 1) = v34;
      v42[16] = v70;
      v43 = &v21[*(v41 + 40)];
      *v43 = v72;
      *(v43 + 1) = v37;
      v44 = (v28 + v38);
      v45 = v41;
      memcpy(&v21[*(v41 + 44)], v44, 0x180uLL);
      *&v21[v45[12]] = v10;
      v46 = v68;
      *&v21[v45[13]] = v69;
      *&v21[v45[14]] = v30;
      *&v21[v45[15]] = v46;
      sub_217751DE8();
      sub_217751DE8();
      sub_2172E3D54();
      v10 = v66;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_21737C6CC(v77, v74);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v45);
    }

    else
    {
      OUTLINED_FUNCTION_5_5();
      v45 = v75;
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v75);
      OUTLINED_FUNCTION_71_8();
    }

    if (__swift_getEnumTagSinglePayload(v21, 1, v45) == 1)
    {
      v53 = OUTLINED_FUNCTION_153();
      sub_2171F0738(v53, v54, &qword_217786380);
      v26 = a10 + 1;
    }

    else
    {
      sub_2172E21DC();
      sub_2172E21DC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = OUTLINED_FUNCTION_17();
        sub_2172B1E84(v58, v59, v60, v61);
        v65 = v62;
      }

      OUTLINED_FUNCTION_158_3();
      if (v57)
      {
        sub_2172B1E84(v56 > 1, &qword_27CB247C0, 1, v65);
        v65 = v63;
      }

      v26 = a10 + 1;
      *(v65 + 16) = &qword_27CB247C0;
      OUTLINED_FUNCTION_97_5();
      sub_2172E21DC();
      v21 = v64[0];
    }
  }

  OUTLINED_FUNCTION_170();
}

void sub_21736D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v13 = type metadata accessor for CloudCurator(0);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_81();
  v70 = v15;
  v16 = OUTLINED_FUNCTION_206();
  v71 = type metadata accessor for CloudRawCurator(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264E8, &qword_217763640);
  OUTLINED_FUNCTION_45_0(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_0_0();
  v58[2] = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_87_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_80();
  v58[1] = v26;
  v27 = 0;
  v59 = MEMORY[0x277D84F90];
  v60 = v10;
  v72 = *(v12 + 16);
  v61 = v12;
  while (v72 != v27)
  {
    v28 = v22;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
    OUTLINED_FUNCTION_86_3();
    OUTLINED_FUNCTION_57_7();
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_5_5();
      v22 = v28;
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
      OUTLINED_FUNCTION_71_8();
    }

    else
    {
      sub_21737DE4C();
      v69 = type metadata accessor for CloudCurator;
      sub_21737C674();
      v33 = v29[10];
      v34 = (v27 + v29[9]);
      v35 = *v34;
      v64 = v34[1];
      v65 = *(v34 + 16);
      v36 = v27 + v33;
      v37 = *(v27 + v33);
      v38 = *(v36 + 8);
      v66 = v35;
      v67 = v37;
      v39 = v29[11];
      memcpy(v73, (v27 + v39), sizeof(v73));
      OUTLINED_FUNCTION_133_6();
      v68 = &qword_27CB264E8;
      v62 = *(v27 + v40);
      v63 = v41;
      v42 = &v21[v28[9]];
      v43 = v64;
      *v42 = v66;
      *(v42 + 1) = v43;
      v42[16] = v65;
      v44 = &v21[v28[10]];
      *v44 = v67;
      *(v44 + 1) = v38;
      memcpy(&v21[v28[11]], (v27 + v39), 0x180uLL);
      *&v21[v28[12]] = v10;
      v45 = v62;
      *&v21[v28[13]] = v63;
      *&v21[v28[14]] = &qword_27CB264E8;
      *&v21[v28[15]] = v45;
      sub_217751DE8();
      sub_217751DE8();
      sub_2172E3D54();
      v10 = v60;
      sub_217751DE8();
      sub_217751DE8();
      v22 = v28;
      sub_217751DE8();
      sub_217751DE8();
      sub_21737C6CC(v70, v69);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v28);
    }

    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      sub_2171F0738(v21, &qword_27CB264E8, &qword_217763640);
      v27 = a10 + 1;
    }

    else
    {
      sub_2172E21DC();
      sub_2172E21DC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = OUTLINED_FUNCTION_17();
        sub_2172B1EC0(v52, v53, v54, v55);
        v59 = v56;
      }

      OUTLINED_FUNCTION_158_3();
      if (v51)
      {
        sub_2172B1EC0(v50 > 1, &qword_21775A250, 1, v59);
        v59 = v57;
      }

      *(v59 + 16) = &qword_21775A250;
      v27 = a10 + 1;
      OUTLINED_FUNCTION_97_5();
      sub_2172E21DC();
    }
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudPlaylist.Attributes.artwork.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_2172E3D54();
}

uint64_t CloudPlaylist.Attributes.description.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[59];
  v3 = v1[60];
  v4 = v1[61];
  v5 = v1[62];
  v6 = v1[63];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_21733B8BC(v2, v3, v4, v5, v6);
}

uint64_t CloudPlaylist.Attributes.editorialNotes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 520), sizeof(__dst));
  memcpy(a1, (v1 + 520), 0x48uLL);
  return sub_2172E3D54();
}

uint64_t CloudPlaylist.Attributes.geoLocation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[75];
  v3 = v1[76];
  v4 = v1[77];
  v5 = v1[78];
  v6 = v1[79];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_21733B8BC(v2, v3, v4, v5, v6);
}

uint64_t CloudPlaylist.Attributes.playlistType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 688);
  *a1 = *(v1 + 680);
  a1[1] = v2;
  return sub_217751DE8();
}

uint64_t CloudPlaylist.Attributes.playParams.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 696), sizeof(__dst));
  memcpy(a1, (v1 + 696), 0x78uLL);
  return sub_2172E3D54();
}

uint64_t CloudPlaylist.Attributes.url.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = type metadata accessor for CloudPlaylist.Attributes(v0);
  OUTLINED_FUNCTION_217(*(v1 + 88));
  return sub_2172E3D54();
}

uint64_t CloudPlaylist.Attributes.versionHash.getter()
{
  type metadata accessor for CloudPlaylist.Attributes(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void static CloudPlaylist.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v4 = v3;
  v6 = v5;
  v7 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_161_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_152_5();
  OUTLINED_FUNCTION_149_4();
  memcpy(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_150_4();
  OUTLINED_FUNCTION_173_4(v21);
  OUTLINED_FUNCTION_149_4();
  memcpy(v22, v23, v24);
  OUTLINED_FUNCTION_173_4(&v179[27] + 8);
  OUTLINED_FUNCTION_149_4();
  memcpy(v25, v26, v27);
  if (sub_217220898(&v206) == 1)
  {
    OUTLINED_FUNCTION_176(v178);
    if (sub_217220898(v178) == 1)
    {
      v165 = v13;
      v166 = v9;
      v167 = v7;
      v28 = OUTLINED_FUNCTION_151_2();
      memcpy(v28, v179, 0x1B8uLL);
      v7 = &qword_27CB25000;
      OUTLINED_FUNCTION_152_5();
      OUTLINED_FUNCTION_119_6();
      sub_2172E3D54();
      OUTLINED_FUNCTION_150_4();
      OUTLINED_FUNCTION_119_6();
      sub_2172E3D54();
      v29 = OUTLINED_FUNCTION_151_2();
      sub_2171F0738(v29, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v178, v179, sizeof(v178));
    OUTLINED_FUNCTION_152_5();
    OUTLINED_FUNCTION_117_0();
    sub_2172E3D54();
    OUTLINED_FUNCTION_150_4();
    OUTLINED_FUNCTION_117_0();
    sub_2172E3D54();
    v30 = &unk_27CB25008;
    v31 = &unk_21778F850;
    v32 = v178;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_176(v177);
  if (sub_217220898(v177) == 1)
  {
    goto LABEL_5;
  }

  v165 = v13;
  v166 = v9;
  v167 = v7;
  OUTLINED_FUNCTION_176(v168);
  OUTLINED_FUNCTION_176(v178);
  v33 = OUTLINED_FUNCTION_151_2();
  memcpy(v33, v179, 0x1B8uLL);
  OUTLINED_FUNCTION_152_5();
  sub_2172E3D54();
  OUTLINED_FUNCTION_150_4();
  sub_2172E3D54();
  OUTLINED_FUNCTION_151_2();
  sub_2172A92BC();
  LOBYTE(v7) = v34;
  sub_2171F0738(v168, &qword_27CB25000, &unk_21776EA00);
  memcpy(v169, v179, sizeof(v169));
  sub_2171F0738(v169, &qword_27CB25000, &unk_21776EA00);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v35 = *(v4 + 440);
  if (*(v6 + 440))
  {
    if (!v35)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_21727208C();
    OUTLINED_FUNCTION_175_3();
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v35)
  {
    goto LABEL_7;
  }

  v36 = *(v4 + 448);
  if (*(v6 + 448))
  {
    if (!v36)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_21727208C();
    OUTLINED_FUNCTION_175_3();
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v36)
  {
    goto LABEL_7;
  }

  v37 = *(v6 + 464);
  v38 = *(v4 + 464);
  if (v37)
  {
    if (!v38)
    {
      goto LABEL_7;
    }

    v39 = *(v6 + 456) == *(v4 + 456) && v37 == v38;
    if (!v39 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v38)
  {
    goto LABEL_7;
  }

  v41 = *(v6 + 472);
  v40 = *(v6 + 480);
  v42 = *(v6 + 488);
  v43 = *(v6 + 496);
  v44 = *(v6 + 504);
  v45 = *(v4 + 480);
  v47 = *(v4 + 488);
  v46 = *(v4 + 496);
  v48 = *(v4 + 504);
  v159 = *(v4 + 472);
  v161 = v45;
  if (!v44)
  {
    if (!v48)
    {
      v154 = *(v6 + 472);
      v157 = *(v4 + 488);
      v60 = *(v6 + 480);
      v61 = *(v6 + 488);
      v151 = *(v4 + 496);
      sub_21733B8BC(v41, v40, v42, v43, 0);
      sub_21733B8BC(v159, v161, v157, v151, 0);
      sub_21733B90C(v154, v60, v61, v43, 0);
      goto LABEL_36;
    }

LABEL_33:
    v50 = *(v4 + 472);
    v51 = *(v6 + 488);
    v52 = v47;
    v53 = v46;
    sub_21733B8BC(v41, v40, v42, v43, v44);
    sub_21733B8BC(v50, v161, v52, v53, v48);
    v54 = OUTLINED_FUNCTION_13_2();
    sub_21733B90C(v54, v55, v51, v43, v44);
    v56 = v159;
    v57 = v161;
    v58 = v52;
    v59 = v53;
LABEL_34:
    sub_21733B90C(v56, v57, v58, v59, v48);
    goto LABEL_7;
  }

  if (!v48)
  {
    goto LABEL_33;
  }

  v201 = *(v4 + 472);
  v202 = v45;
  v203 = v47;
  v204 = v46;
  v205 = v48;
  v196 = v41;
  v197 = v40;
  v198 = v42;
  v199 = v43;
  v49 = v43;
  v143 = v43;
  v200 = v44;
  v153 = v41;
  v156 = v47;
  v146 = v40;
  v147 = v42;
  v43 = v46;
  v150 = v46;
  sub_21733B8BC(v41, v40, v42, v49, v44);
  sub_21733B8BC(v159, v161, v156, v43, v48);
  v144 = sub_2172AA368();
  sub_21733B90C(v159, v161, v156, v150, v48);
  sub_21733B90C(v153, v146, v147, v143, v44);
  if ((v144 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_36:
  v62 = *(v4 + 512);
  if (*(v6 + 512))
  {
    if (!v62)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_217262A00();
    OUTLINED_FUNCTION_175_3();
    if ((v43 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v62)
  {
    goto LABEL_7;
  }

  v63 = v169;
  v64 = (v6 + 520);
  memcpy(v175, (v6 + 520), sizeof(v175));
  v65 = (v4 + 520);
  memcpy(v176, (v4 + 520), sizeof(v176));
  v66 = *(v6 + 536);
  *v169 = *(v6 + 520);
  *&v169[16] = v66;
  v67 = *(v6 + 568);
  *&v169[32] = *(v6 + 552);
  *&v169[48] = v67;
  if (!v175[8])
  {
    if (!v176[8])
    {
      v78 = *(v6 + 536);
      v179[0] = *v64;
      v179[1] = v78;
      v79 = *(v6 + 568);
      v179[2] = *(v6 + 552);
      v179[3] = v79;
      *&v179[4] = 0;
      v63 = &qword_27CB25010;
      OUTLINED_FUNCTION_119_6();
      sub_2172E3D54();
      OUTLINED_FUNCTION_119_6();
      sub_2172E3D54();
      sub_2171F0738(v179, &qword_27CB25010, &qword_21775B4F8);
      goto LABEL_49;
    }

LABEL_46:
    v74 = *(v6 + 536);
    v179[0] = *v64;
    v179[1] = v74;
    v75 = *(v6 + 568);
    v179[2] = *(v6 + 552);
    v179[3] = v75;
    v76 = *(v4 + 536);
    *(&v179[4] + 8) = *v65;
    *(&v179[5] + 8) = v76;
    v77 = *(v4 + 568);
    *(&v179[6] + 8) = *(v4 + 552);
    *(&v179[7] + 8) = v77;
    *&v179[4] = v175[8];
    *(&v179[8] + 1) = v176[8];
    OUTLINED_FUNCTION_117_0();
    sub_2172E3D54();
    OUTLINED_FUNCTION_117_0();
    sub_2172E3D54();
    v30 = &unk_27CB25018;
    v31 = &unk_21775B500;
LABEL_47:
    v32 = v179;
    goto LABEL_6;
  }

  if (!v176[8])
  {
    goto LABEL_46;
  }

  v68 = *(v4 + 536);
  v177[0] = *v65;
  v177[1] = v68;
  v69 = *(v4 + 568);
  v177[2] = *(v4 + 552);
  v177[3] = v69;
  *&v177[4] = v176[8];
  v162 = v175[8];
  memcpy(v195, v177, sizeof(v195));
  v70 = *(v6 + 536);
  v190 = *v64;
  v191 = v70;
  v71 = *(v6 + 568);
  v192 = *(v6 + 552);
  v193 = v71;
  v194 = v175[8];
  sub_2172E3D54();
  sub_2172E3D54();
  sub_2172A9570();
  v73 = v72;
  sub_2171F0738(v177, &qword_27CB25010, &qword_21775B4F8);
  v179[0] = *v169;
  v179[1] = *&v169[16];
  v179[2] = *&v169[32];
  v179[3] = *&v169[48];
  *&v179[4] = v162;
  sub_2171F0738(v179, &qword_27CB25010, &qword_21775B4F8);
  if ((v73 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_49:
  v80 = *(v4 + 592);
  if (*(v6 + 592))
  {
    if (!v80)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_217262CB4();
    OUTLINED_FUNCTION_175_3();
    if ((v63 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v80)
  {
    goto LABEL_7;
  }

  v81 = *(v6 + 600);
  v82 = *(v6 + 608);
  v83 = *(v6 + 616);
  v84 = *(v6 + 624);
  v85 = *(v6 + 632);
  v86 = *(v4 + 608);
  v87 = *(v4 + 616);
  v88 = *(v4 + 624);
  v48 = *(v4 + 632);
  v160 = *(v4 + 600);
  v163 = v86;
  if (!v85)
  {
    if (!v48)
    {
      v145 = *(v4 + 616);
      v149 = *(v4 + 624);
      sub_21733B8BC(v81, v82, v83, v84, 0);
      sub_21733B8BC(v160, v163, v145, v149, 0);
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_46_3();
      sub_21733B90C(v104, v105, v106, v107, 0);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (!v48)
  {
LABEL_59:
    v97 = *(v6 + 624);
    sub_21733B8BC(v81, v82, v83, v84, v85);
    OUTLINED_FUNCTION_184_1();
    sub_21733B8BC(v98, v99, v100, v101, v48);
    v102 = OUTLINED_FUNCTION_240();
    sub_21733B90C(v102, v103, v83, v97, v85);
    OUTLINED_FUNCTION_184_1();
    goto LABEL_34;
  }

  v185 = *(v4 + 600);
  v186 = v86;
  v187 = v87;
  v188 = v88;
  v189 = v48;
  v180 = v81;
  v181 = v82;
  v182 = v83;
  v183 = v84;
  v184 = v85;
  v155 = v81;
  v158 = v82;
  v152 = v84;
  sub_21733B8BC(v81, v82, v83, v84, v85);
  OUTLINED_FUNCTION_46_3();
  sub_21733B8BC(v89, v90, v91, v92, v48);
  v148 = sub_2172AA368();
  OUTLINED_FUNCTION_46_3();
  sub_21733B90C(v93, v94, v95, v96, v48);
  sub_21733B90C(v155, v158, v83, v152, v85);
  if ((v148 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_61:
  v108 = *(v6 + 640);
  v109 = *(v4 + 640);
  if (v108 == 2)
  {
    if (v109 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v109 == 2 || ((v109 ^ v108) & 1) != 0)
  {
    goto LABEL_7;
  }

  v110 = *(v6 + 641);
  v111 = *(v4 + 641);
  if (v110 == 2)
  {
    if (v111 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v111 == 2 || ((v111 ^ v110) & 1) != 0)
  {
    goto LABEL_7;
  }

  v112 = *(v6 + 656);
  v113 = *(v4 + 656);
  if (v112)
  {
    if (!v113)
    {
      goto LABEL_7;
    }

    v114 = *(v6 + 648) == *(v4 + 648) && v112 == v113;
    if (!v114 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v113)
  {
    goto LABEL_7;
  }

  v115 = *(v6 + 672);
  v116 = *(v4 + 672);
  if (v115)
  {
    if (!v116)
    {
      goto LABEL_7;
    }

    v117 = *(v6 + 664) == *(v4 + 664) && v115 == v116;
    if (!v117 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v116)
  {
    goto LABEL_7;
  }

  v118 = *(v6 + 688);
  v119 = *(v4 + 688);
  if (v118)
  {
    if (!v119)
    {
      goto LABEL_7;
    }

    v120 = *(v6 + 680) == *(v4 + 680) && v118 == v119;
    if (!v120 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v119)
    {
      goto LABEL_7;
    }
  }

  memcpy(v169, (v6 + 696), 0x78uLL);
  memcpy(v177, (v4 + 696), 0x78uLL);
  v121 = *v169;
  v122 = *&v169[8];
  memcpy(v174, (v6 + 712), sizeof(v174));
  v124 = *(&v177[0] + 1);
  v123 = *&v177[0];
  memcpy(v173, (v4 + 712), sizeof(v173));
  if (!*&v169[8])
  {
    if (!*(&v177[0] + 1))
    {
      v179[0] = *v169;
      OUTLINED_FUNCTION_145_2(v179);
      sub_2172E3D54();
      sub_2172E3D54();
      sub_2171F0738(v179, &qword_27CB244D0, &unk_21775D620);
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_54_7();
    sub_2172E3D54();
    OUTLINED_FUNCTION_54_7();
    sub_2172E3D54();
    goto LABEL_106;
  }

  v179[0] = *v169;
  OUTLINED_FUNCTION_145_2(v179);
  memcpy(v168, v179, 0x78uLL);
  if (!v124)
  {
    memcpy(v172, v179, sizeof(v172));
    OUTLINED_FUNCTION_54_7();
    sub_2172E3D54();
    OUTLINED_FUNCTION_54_7();
    sub_2172E3D54();
    OUTLINED_FUNCTION_54_7();
    sub_2172E3D54();
    sub_2172848C0(v172);
LABEL_106:
    *&v179[0] = v121;
    *(&v179[0] + 1) = v122;
    memcpy(&v179[1], v174, 0x68uLL);
    *(&v179[7] + 1) = v123;
    *&v179[8] = v124;
    memcpy(&v179[8] + 8, v173, 0x68uLL);
    v30 = &qword_27CB24AE8;
    v31 = &unk_2177590C0;
    goto LABEL_47;
  }

  memcpy(&v172[2], (v4 + 712), 0x68uLL);
  v172[0] = v123;
  v172[1] = v124;
  OUTLINED_FUNCTION_144_4();
  OUTLINED_FUNCTION_144_4();
  OUTLINED_FUNCTION_144_4();
  static PlayParameters.== infix(_:_:)(v168, v172);
  v126 = v125;
  memcpy(v170, v172, sizeof(v170));
  sub_2172848C0(v170);
  memcpy(v171, v168, sizeof(v171));
  sub_2172848C0(v171);
  v172[0] = v121;
  v172[1] = v122;
  memcpy(&v172[2], v174, 0x68uLL);
  sub_2171F0738(v172, &qword_27CB244D0, &unk_21775D620);
  if ((v126 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_108:
  v127 = *(v6 + 816);
  v128 = *(v4 + 816);
  if (v127 == 2)
  {
    if (v128 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v128 == 2 || ((v128 ^ v127) & 1) != 0)
  {
    goto LABEL_7;
  }

  v129 = *(v4 + 832);
  if (*(v6 + 832))
  {
    if (!*(v4 + 832))
    {
      goto LABEL_7;
    }

    goto LABEL_119;
  }

  if (*(v6 + 824) != *(v4 + 824))
  {
    v129 = 1;
  }

  if ((v129 & 1) == 0)
  {
LABEL_119:
    v130 = *(v4 + 840);
    if (*(v6 + 840))
    {
      if (!v130)
      {
        goto LABEL_7;
      }

      sub_217270790();
      if ((v131 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v130)
    {
      goto LABEL_7;
    }

    v164 = type metadata accessor for CloudPlaylist.Attributes(0);
    v132 = *(v16 + 48);
    sub_2172E3D54();
    sub_2172E3D54();
    OUTLINED_FUNCTION_133(v0, 1, v167);
    if (v39)
    {
      OUTLINED_FUNCTION_133(v0 + v132, 1, v167);
      if (v39)
      {
        sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
LABEL_134:
        v137 = *(v164 + 92);
        v138 = (v6 + v137);
        v139 = *(v6 + v137 + 8);
        v140 = (v4 + v137);
        v141 = v140[1];
        if (v139 && v141 && (*v138 != *v140 || v139 != v141))
        {
          sub_217753058();
        }

        goto LABEL_7;
      }
    }

    else
    {
      sub_2172E3D54();
      OUTLINED_FUNCTION_133(v0 + v132, 1, v167);
      if (!v133)
      {
        (*(v166 + 32))(v165, v0 + v132, v167);
        OUTLINED_FUNCTION_12_15();
        sub_21737AD5C(v134);
        v135 = sub_217751F08();
        v136 = *(v166 + 8);
        v136(v165, v167);
        v136(v1, v167);
        sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
        if ((v135 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_134;
      }

      (*(v166 + 8))(v1, v167);
    }

    v30 = &qword_27CB24840;
    v31 = &unk_217758DD0;
    v32 = v0;
LABEL_6:
    sub_2171F0738(v32, v30, v31);
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21736EABC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261566F69647561 && a2 == 0xED000073746E6169;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E726F7461727563 && a2 == 0xEB00000000656D61;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461636F4C6F6567 && a2 == 0xEB000000006E6F69;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000002177AC1A0 == a2;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74726168437369 && a2 == 0xE700000000000000;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x80000002177AC1C0 == a2;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 1701667182 && a2 == 0xE400000000000000;
                          if (v17 || (sub_217753058() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954;
                            if (v18 || (sub_217753058() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                              if (v19 || (sub_217753058() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7374726F70707573 && a2 == 0xEC000000676E6953;
                                if (v20 || (sub_217753058() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                                  if (v21 || (sub_217753058() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7079546B63617274 && a2 == 0xEA00000000007365;
                                    if (v22 || (sub_217753058() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 7107189 && a2 == 0xE300000000000000;
                                      if (v23 || (sub_217753058() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_217753058();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21736F0F0(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      v3 = 0x546F69647561;
      goto LABEL_5;
    case 2:
      result = 0x7261566F69647561;
      break;
    case 3:
      result = 0x4E726F7461727563;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x7461636F4C6F6567;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x74726168437369;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 1701667182;
      break;
    case 13:
      result = 0x7473696C79616C70;
      break;
    case 14:
      v3 = 0x615079616C70;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 15:
      result = 0x7374726F70707573;
      break;
    case 16:
      result = 0x756F436B63617274;
      break;
    case 17:
      result = 0x7079546B63617274;
      break;
    case 18:
      result = 7107189;
      break;
    case 19:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21736F348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21736EABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21736F370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21736F0E8();
  *a1 = result;
  return result;
}

uint64_t sub_21736F398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737AB58(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21736F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737AB58(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylist.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261D0, &qword_217761D30);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_153();
  v6 = OUTLINED_FUNCTION_160(v4, v5);
  sub_21737AB58(v6, v7, v8);
  sub_2177532F8();
  memcpy(v72, v0, sizeof(v72));
  memcpy(v71, v0, sizeof(v71));
  v70 = 0;
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v9 = sub_2172DEEB4();
  OUTLINED_FUNCTION_28_12(v71, &v70, v10, v11, v9);
  if (v1)
  {
    memcpy(v69, v71, 0x1B8uLL);
    sub_2171F0738(v69, &qword_27CB25000, &unk_21776EA00);
    v12 = OUTLINED_FUNCTION_13_2();
    v13(v12);
  }

  else
  {
    memcpy(v69, v71, 0x1B8uLL);
    sub_2171F0738(v69, &qword_27CB25000, &unk_21776EA00);
    v59[0] = v0[55];
    v58[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25028, &qword_21775B510);
    sub_2172DF02C();
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    v59[0] = v0[56];
    v58[0] = 2;
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    LOBYTE(v59[0]) = 3;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v16 = v0[60];
    v17 = v0[61];
    v18 = v0[62];
    v19 = v0[63];
    v59[0] = v0[59];
    v59[1] = v16;
    v59[2] = v17;
    v59[3] = v18;
    v59[4] = v19;
    v58[0] = 4;
    sub_21733B8BC(v59[0], v16, v17, v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261D8, &qword_217761D38);
    v20 = sub_21737ABAC();
    OUTLINED_FUNCTION_28_12(v59, v58, v21, v22, v20);
    OUTLINED_FUNCTION_142_5();
    v68 = v0[64];
    v67 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v23 = sub_21737AFB4(&unk_280BE23A0);
    OUTLINED_FUNCTION_28_12(&v68, &v67, v24, v25, v23);
    memcpy(v66, v0 + 65, sizeof(v66));
    memcpy(v65, v0 + 65, sizeof(v65));
    v64 = 6;
    sub_2172E3D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    v26 = sub_2172DF104();
    OUTLINED_FUNCTION_28_12(v65, &v64, v27, v28, v26);
    memcpy(v63, v65, 0x48uLL);
    sub_2171F0738(v63, &qword_27CB25010, &qword_21775B4F8);
    v59[0] = v0[74];
    v58[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v29 = sub_21737ACE0(&qword_280BE23B0);
    OUTLINED_FUNCTION_28_12(v59, v58, v30, v31, v29);
    v32 = v0[76];
    v33 = v0[77];
    v34 = v0[78];
    v35 = v0[79];
    v59[0] = v0[75];
    v59[1] = v32;
    v59[2] = v33;
    v59[3] = v34;
    v59[4] = v35;
    v58[0] = 8;
    sub_21733B8BC(v59[0], v32, v33, v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF0, &qword_21775EA20);
    v36 = sub_21737ADA0();
    OUTLINED_FUNCTION_28_12(v59, v58, v37, v38, v36);
    OUTLINED_FUNCTION_142_5();
    LOBYTE(v59[0]) = 9;
    OUTLINED_FUNCTION_38_7();
    sub_217752F08();
    LOBYTE(v59[0]) = 10;
    OUTLINED_FUNCTION_38_7();
    sub_217752F08();
    LOBYTE(v59[0]) = 11;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    LOBYTE(v59[0]) = 12;
    OUTLINED_FUNCTION_38_7();
    v39 = sub_217752EF8();
    v42 = v0[86];
    v61 = v2[85];
    v62 = v42;
    v60 = 13;
    v43 = sub_21737AED4(v39, v40, v41);
    sub_217751DE8();
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();

    if (!v43)
    {
      memcpy(v59, v2 + 87, sizeof(v59));
      memcpy(v58, v2 + 87, sizeof(v58));
      v57[127] = 14;
      v44 = sub_2172E3D54();
      sub_2172DF550(v44, v45, v46);
      OUTLINED_FUNCTION_38_7();
      sub_217752F38();
      memcpy(v57, v58, 0x78uLL);
      sub_2171F0738(v57, &qword_27CB244D0, &unk_21775D620);
      OUTLINED_FUNCTION_38_7();
      sub_217752F08();
      LOBYTE(v56) = 16;
      OUTLINED_FUNCTION_38_7();
      sub_217752F28();
      v56 = v2[105];
      v55 = 17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
      v47 = sub_2172DF950(&unk_280BE2328);
      OUTLINED_FUNCTION_28_12(&v56, &v55, v48, v49, v47);
      v50 = *(type metadata accessor for CloudPlaylist.Attributes(0) + 88);
      LOBYTE(v56) = 18;
      sub_2177516D8();
      OUTLINED_FUNCTION_12_15();
      v52 = sub_21737AD5C(v51);
      OUTLINED_FUNCTION_28_12(v2 + v50, &v56, v53, v54, v52);
      LOBYTE(v56) = 19;
      OUTLINED_FUNCTION_38_7();
      sub_217752EF8();
    }

    v14 = OUTLINED_FUNCTION_13_2();
    v15(v14);
  }

  OUTLINED_FUNCTION_170();
}

void CloudPlaylist.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v27 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_161_3();
  memcpy(v37, v0, sizeof(v37));
  v10 = *(v0 + 432);
  memcpy(v38, v0, sizeof(v38));
  v39 = v10;
  if (sub_217220898(v38) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v32, v37, 0x1B0uLL);
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v4);
    sub_217751DE8();
    v11 = OUTLINED_FUNCTION_179();
    sub_217265A08(v11, v12);
  }

  if (*(v0 + 440))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217281490();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 448))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217281490();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 464))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v13 = *(v0 + 504);
  if (v13)
  {
    v14 = *(v0 + 488);
    v34 = *(v0 + 472);
    v35 = v14;
    v36 = v13;
    OUTLINED_FUNCTION_119();
    sub_2172E3DD4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 512))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 584))
  {
    v15 = *(v0 + 536);
    v32[0] = *(v0 + 520);
    v32[1] = v15;
    v16 = *(v0 + 568);
    v32[2] = *(v0 + 552);
    v32[3] = v16;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)(v4);
    sub_217751DE8();
    v17 = OUTLINED_FUNCTION_179();
    sub_217265A08(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 592))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v19 = *(v0 + 632);
  if (v19)
  {
    v20 = *(v0 + 616);
    v32[27] = *(v0 + 600);
    v32[28] = v20;
    v33 = v19;
    OUTLINED_FUNCTION_119();
    sub_2172E3DD4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 640) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 641) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 656))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 672))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 688))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v21 = *(v0 + 696);
  v22 = *(v0 + 704);
  memcpy(v31, (v0 + 712), sizeof(v31));
  if (v22)
  {
    OUTLINED_FUNCTION_145_2(v28);
    v28[0] = v21;
    v28[1] = v22;
    OUTLINED_FUNCTION_119();
    v29[0] = v21;
    v29[1] = v22;
    memcpy(v30, v31, sizeof(v30));
    sub_2172DF5A4(v29, v32);
    PlayParameters.hash(into:)(v4);
    memcpy(v32, v28, 0x78uLL);
    sub_2172848C0(v32);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 816) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + 832) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v23 = *(v0 + 824);
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v23);
  }

  if (*(v0 + 840))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217281100();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v24 = type metadata accessor for CloudPlaylist.Attributes(0);
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v2, 1, v5);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v27 + 32))(v1, v2, v5);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_12_15();
    sub_21737AD5C(v26);
    sub_217751EB8();
    (*(v27 + 8))(v1, v5);
  }

  if (*(v0 + *(v24 + 92) + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_13();
}

uint64_t CloudPlaylist.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPlaylist.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudPlaylist.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v32);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = &v114 - v34;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261F8, &qword_217761D40);
  OUTLINED_FUNCTION_0_0();
  v37 = v36;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_87_2();
  v115 = type metadata accessor for CloudPlaylist.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_81();
  v124 = v40;
  v41 = v29[3];
  v118 = v29;
  v42 = OUTLINED_FUNCTION_160(v29, v41);
  sub_21737AB58(v42, v43, v44);
  v121 = v25;
  sub_2177532C8();
  if (v24)
  {
    v123 = v24;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    LODWORD(v35) = 0;
    v48 = 0;
    OUTLINED_FUNCTION_4_35();
  }

  else
  {
    v117 = v35;
    v119 = v31;
    v120 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    a14 = 0;
    sub_2172DF600();
    v48 = v122;
    v46 = v121;
    sub_217752E58();
    v54 = v124;
    memcpy(v124, v128, 0x1B8uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25028, &qword_21775B510);
    v127[0] = 1;
    sub_2172DF68C();
    OUTLINED_FUNCTION_116_7();
    sub_217752E58();
    *(v54 + 55) = *v126;
    v127[0] = 2;
    OUTLINED_FUNCTION_116_7();
    sub_217752E58();
    *(v54 + 56) = *v126;
    v126[0] = 3;
    v55 = sub_217752E18();
    v47 = v120;
    *(v54 + 57) = v55;
    *(v54 + 58) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261D8, &qword_217761D38);
    v127[0] = 4;
    sub_21737AF28();
    OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_45_11();
    sub_217752E58();
    v45 = v54 + 472;
    v57 = *&v126[32];
    v58 = *&v126[16];
    *(v54 + 472) = *v126;
    *(v54 + 488) = v58;
    *(v54 + 63) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v127[0] = 5;
    sub_21737AFB4(&unk_280BE2398);
    OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_45_11();
    sub_217752E58();
    *(v54 + 64) = *v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    a13 = 6;
    sub_2172DF7DC();
    OUTLINED_FUNCTION_45_11();
    sub_217752E58();
    memcpy(v54 + 520, v127, 0x48uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    LOBYTE(v125) = 7;
    sub_21737ACE0(&qword_280BE23A8);
    OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_45_11();
    sub_217752E58();
    v123 = 0;
    *(v124 + 74) = *v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF0, &qword_21775EA20);
    LOBYTE(v125) = 8;
    sub_21737B030();
    OUTLINED_FUNCTION_156_5();
    OUTLINED_FUNCTION_45_11();
    v59 = v123;
    sub_217752E58();
    v123 = v59;
    if (v59)
    {
      v60 = OUTLINED_FUNCTION_30_14();
      v61(v60);
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_1_26();
      v116 = v62;
      LODWORD(v117) = 0;
      a10 = v62;
    }

    else
    {
      v63 = *&v126[32];
      v64 = *&v126[16];
      *(v54 + 600) = *v126;
      *(v54 + 616) = v64;
      v65 = v123;
      *(v124 + 79) = v63;
      v126[0] = 9;
      v66 = sub_217752E28();
      v123 = v65;
      if (v65)
      {
        v69 = OUTLINED_FUNCTION_24_15();
        v70(v69);
        OUTLINED_FUNCTION_8_24();
        OUTLINED_FUNCTION_0_29();
      }

      else
      {
        v124[640] = v66;
        OUTLINED_FUNCTION_124_6(10);
        v67 = sub_217752E28();
        v123 = 0;
        v124[641] = v67;
        OUTLINED_FUNCTION_124_6(11);
        v68 = sub_217752E18();
        v123 = 0;
        v71 = v124;
        *(v124 + 81) = v68;
        *(v71 + 82) = v72;
        OUTLINED_FUNCTION_124_6(12);
        v73 = sub_217752E18();
        v123 = 0;
        v76 = v124;
        *(v124 + 83) = v73;
        *(v76 + 84) = v74;
        LOBYTE(v125) = 13;
        sub_21737B0BC(v73, v74, v75);
        v46 = v121;
        v77 = v123;
        v78 = sub_217752E58();
        v123 = v77;
        if (v77)
        {
          v81 = OUTLINED_FUNCTION_24_15();
          v82(v81);
          LODWORD(v121) = 0;
          LODWORD(v122) = 0;
          v45 = 1;
          OUTLINED_FUNCTION_0_29();
          LODWORD(v119) = v83;
          LODWORD(v120) = v83;
        }

        else
        {
          *(v54 + 680) = *v126;
          a12 = 14;
          sub_2172DFAC8(v78, v79, v80);
          v46 = v121;
          v84 = v123;
          sub_217752E58();
          v123 = v84;
          if (v84)
          {
            v85 = OUTLINED_FUNCTION_24_15();
            v86(v85);
            LODWORD(v122) = 0;
            v45 = 1;
            OUTLINED_FUNCTION_0_29();
            LODWORD(v119) = v87;
            LODWORD(v120) = v87;
            LODWORD(v121) = v87;
          }

          else
          {
            memcpy(v124 + 696, v126, 0x78uLL);
            OUTLINED_FUNCTION_123_5(15);
            v88 = v123;
            v89 = sub_217752E28();
            v123 = v88;
            if (!v88)
            {
              v124[816] = v89;
              OUTLINED_FUNCTION_123_5(16);
              v93 = sub_217752E48();
              v123 = 0;
              *(v124 + 103) = v93;
              v54[832] = v94 & 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
              a11 = 17;
              v95 = sub_2172DF950(&unk_280BE2318);
              OUTLINED_FUNCTION_172_4(v95, &a11, v96, v97, v95);
              v123 = 0;
              *(v124 + 105) = v125;
              LOBYTE(v46) = sub_2177516D8();
              LOBYTE(v125) = 18;
              OUTLINED_FUNCTION_12_15();
              v99 = sub_21737AD5C(v98);
              OUTLINED_FUNCTION_172_4(v99, &v125, v100, v101, v99);
              v123 = 0;
              sub_2172E21DC();
              OUTLINED_FUNCTION_123_5(19);
              v102 = v123;
              v103 = sub_217752E18();
              v123 = v102;
              if (!v102)
              {
                v108 = v103;
                v109 = v104;
                v110 = OUTLINED_FUNCTION_24_15();
                v111(v110);
                v112 = v124;
                v113 = &v124[*(v115 + 92)];
                *v113 = v108;
                *(v113 + 1) = v109;
                sub_21737C674();
                __swift_destroy_boxed_opaque_existential_1(v118);
                sub_21737C6CC(v112, type metadata accessor for CloudPlaylist.Attributes);
                goto LABEL_35;
              }

              v105 = OUTLINED_FUNCTION_24_15();
              v106(v105);
              __swift_destroy_boxed_opaque_existential_1(v118);
              OUTLINED_FUNCTION_0_29();
              OUTLINED_FUNCTION_37_9(v107);
              v45 = 1;
              v50 = 1;
              v49 = v124;
LABEL_6:
              OUTLINED_FUNCTION_149_4();
              memcpy(v51, v52, v53);
              sub_2171F0738(v128, &qword_27CB25000, &unk_21776EA00);
              if (v46)
              {
                goto LABEL_7;
              }

              goto LABEL_21;
            }

            v90 = OUTLINED_FUNCTION_24_15();
            v91(v90);
            v45 = 1;
            OUTLINED_FUNCTION_0_29();
            OUTLINED_FUNCTION_37_9(v92);
          }
        }
      }
    }
  }

  v49 = v124;
  __swift_destroy_boxed_opaque_existential_1(v118);
  if (v45)
  {
    v45 = 0;
    v50 = 0;
    goto LABEL_6;
  }

  v50 = 0;
  if (v46)
  {
LABEL_7:

    if ((v47 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v47)
  {
LABEL_8:
    if (v35)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:

  if (v35)
  {
LABEL_9:

    if ((v48 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_21733B90C(v49[59], v49[60], v49[61], v49[62], v49[63]);
    goto LABEL_25;
  }

LABEL_23:
  if (v48)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (!v116)
  {
    if (!a10)
    {
      goto LABEL_27;
    }

LABEL_12:

    if (v117)
    {
      goto LABEL_28;
    }

LABEL_13:
    if (!v119)
    {
      goto LABEL_29;
    }

LABEL_14:

    if (v120)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (!v121)
    {
      goto LABEL_31;
    }

LABEL_16:

    if (v122)
    {
      goto LABEL_32;
    }

LABEL_17:
    if (!v45)
    {
      goto LABEL_33;
    }

LABEL_18:

    if ((v50 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  memcpy(v128, v49 + 65, 0x48uLL);
  sub_2171F0738(v128, &qword_27CB25010, &qword_21775B4F8);
  if (a10)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (!v117)
  {
    goto LABEL_13;
  }

LABEL_28:
  sub_21733B90C(v49[75], v49[76], v49[77], v49[78], v49[79]);
  if (v119)
  {
    goto LABEL_14;
  }

LABEL_29:
  if (!v120)
  {
    goto LABEL_15;
  }

LABEL_30:

  if (v121)
  {
    goto LABEL_16;
  }

LABEL_31:
  if (!v122)
  {
    goto LABEL_17;
  }

LABEL_32:
  memcpy(v128, v49 + 87, 0x78uLL);
  sub_2171F0738(v128, &qword_27CB244D0, &unk_21775D620);
  if (v45)
  {
    goto LABEL_18;
  }

LABEL_33:
  if (v50)
  {
LABEL_34:
    sub_2171F0738(v49 + *(v115 + 88), &unk_27CB277C0, &qword_217758DC0);
  }

LABEL_35:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217370DB4(uint64_t a1)
{
  sub_2177531E8();
  CloudPlaylist.Attributes.hash(into:)();
  return sub_217753238();
}

void *CloudPlaylist.Relationships.init(catalog:collaborations:curator:entries:library:parent:tracks:)@<X0>(void *__src@<X0>, const void *a2@<X1>, const void *a3@<X2>, const void *a4@<X3>, const void *a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, uint64_t a8@<X8>)
{
  memcpy(a8, __src, 0x80uLL);
  memcpy((a8 + 128), a2, 0x80uLL);
  memcpy((a8 + 256), a3, 0x80uLL);
  memcpy((a8 + 384), a4, 0x80uLL);
  memcpy((a8 + 512), a5, 0x80uLL);
  memcpy((a8 + 640), a6, 0x80uLL);

  return memcpy((a8 + 768), a7, 0x80uLL);
}

MusicKit::CloudPlaylist::Relationships::CodingKeys_optional __swiftcall CloudPlaylist.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_177_1();
  v2 = sub_217752DC8();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

MusicKit::CloudPlaylist::Relationships::CodingKeys_optional __swiftcall CloudPlaylist.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudPlaylist.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2173710B4()
{
  result = 0x676F6C61746163;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x726F7461727563;
      break;
    case 3:
      result = 0x73656972746E65;
      break;
    case 4:
      result = 0x7972617262696CLL;
      break;
    case 5:
      result = 0x746E65726170;
      break;
    case 6:
      result = 0x736B63617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21737119C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylist.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2173711E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737B110(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21737121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737B110(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudPlaylist.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v203)
  {
    v0 = OUTLINED_FUNCTION_159_1();
    if (!v204)
    {
LABEL_33:
      sub_2171F0738(v201, &qword_27CB242C8, &unk_217758970);
      goto LABEL_34;
    }

    v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v178);
    v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v179, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201[0]);
    v18 = sub_2172DE118(v16, v17);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v19, v20, v21);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v22, v23, v24);
    sub_2171F0738(v202, &qword_27CB242C0, &unk_21775D650);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v204)
    {
LABEL_34:
      v75 = &qword_27CB25198;
      v76 = &qword_21775B550;
      goto LABEL_35;
    }

    sub_2171F0738(v202, &qword_27CB242C0, &unk_21775D650);
  }

  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v203)
  {
    if (!v204)
    {
      sub_2171F0738(v202, &qword_27CB24360, &qword_217758690);
      goto LABEL_13;
    }

LABEL_18:
    v75 = &unk_27CB26200;
    v76 = &unk_217761D48;
LABEL_35:
    sub_2171F0738(v202, v75, v76);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_159_1();
  if (!v204)
  {
    sub_2171F0738(v201, &qword_27CB24368, &qword_217758698);
    goto LABEL_18;
  }

  v33 = OUTLINED_FUNCTION_75(v25, v26, v27, v28, v29, v30, v31, v32, v178);
  v41 = OUTLINED_FUNCTION_87_1(v33, v34, v35, v36, v37, v38, v39, v40, v180, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201[0]);
  v43 = sub_2172DE1C0(v41, v42);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v44, v45, v46);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v47, v48, v49);
  sub_2171F0738(v202, &qword_27CB24360, &qword_217758690);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v203)
  {
    if (!v204)
    {
      sub_2171F0738(v202, &qword_27CB24290, &unk_21775D550);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v50 = OUTLINED_FUNCTION_159_1();
  if (!v204)
  {
    sub_2171F0738(v201, &qword_27CB24298, &qword_21777CD60);
LABEL_26:
    v75 = &unk_27CB26208;
    v76 = &unk_21777EF20;
    goto LABEL_35;
  }

  v58 = OUTLINED_FUNCTION_75(v50, v51, v52, v53, v54, v55, v56, v57, v178);
  v66 = OUTLINED_FUNCTION_87_1(v58, v59, v60, v61, v62, v63, v64, v65, v181, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201[0]);
  v68 = sub_2172DE0E8(v66, v67);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v69, v70, v71);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v72, v73, v74);
  sub_2171F0738(v202, &qword_27CB24290, &unk_21775D550);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v203)
  {
    if (!v204)
    {
      sub_2171F0738(v202, &qword_27CB24370, &qword_2177586A0);
      goto LABEL_29;
    }

LABEL_39:
    v75 = &unk_27CB26210;
    v76 = &unk_217761D50;
    goto LABEL_35;
  }

  v77 = OUTLINED_FUNCTION_159_1();
  if (!v204)
  {
    sub_2171F0738(v201, &qword_27CB24378, &qword_21775D7D0);
    goto LABEL_39;
  }

  v85 = OUTLINED_FUNCTION_75(v77, v78, v79, v80, v81, v82, v83, v84, v178);
  v93 = OUTLINED_FUNCTION_87_1(v85, v86, v87, v88, v89, v90, v91, v92, v182, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201[0]);
  v95 = sub_2172DE1D8(v93, v94);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v96, v97, v98);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v99, v100, v101);
  sub_2171F0738(v202, &qword_27CB24370, &qword_2177586A0);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v203)
  {
    if (!v204)
    {
      sub_2171F0738(v202, &qword_27CB242C0, &unk_21775D650);
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  v102 = OUTLINED_FUNCTION_159_1();
  if (!v204)
  {
    goto LABEL_33;
  }

  v110 = OUTLINED_FUNCTION_75(v102, v103, v104, v105, v106, v107, v108, v109, v178);
  v118 = OUTLINED_FUNCTION_87_1(v110, v111, v112, v113, v114, v115, v116, v117, v183, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201[0]);
  v120 = sub_2172DE118(v118, v119);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v121, v122, v123);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v124, v125, v126);
  sub_2171F0738(v202, &qword_27CB242C0, &unk_21775D650);
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v203)
  {
    if (!v204)
    {
      sub_2171F0738(v202, &qword_27CB24380, &unk_217759010);
      goto LABEL_48;
    }

    goto LABEL_53;
  }

  v128 = OUTLINED_FUNCTION_159_1();
  if (!v204)
  {
    sub_2171F0738(v201, &qword_27CB24388, &unk_217781F60);
LABEL_53:
    v75 = &unk_27CB26218;
    v76 = &unk_217761D58;
    goto LABEL_35;
  }

  v136 = OUTLINED_FUNCTION_75(v128, v129, v130, v131, v132, v133, v134, v135, v178);
  v144 = OUTLINED_FUNCTION_87_1(v136, v137, v138, v139, v140, v141, v142, v143, v184, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201[0]);
  v146 = sub_2172DE190(v144, v145);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v147, v148, v149);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v150, v151, v152);
  sub_2171F0738(v202, &qword_27CB24380, &unk_217759010);
  if ((v146 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v203)
  {
    if (!v204)
    {
      sub_2171F0738(v202, &qword_27CB24390, &unk_21775D7C0);
      return 1;
    }

    goto LABEL_58;
  }

  v153 = OUTLINED_FUNCTION_159_1();
  if (!v204)
  {
    sub_2171F0738(v201, &qword_27CB24398, &unk_2177784D0);
LABEL_58:
    v75 = &unk_27CB26220;
    v76 = &unk_217761D60;
    goto LABEL_35;
  }

  v161 = OUTLINED_FUNCTION_75(v153, v154, v155, v156, v157, v158, v159, v160, v178);
  v169 = OUTLINED_FUNCTION_87_1(v161, v162, v163, v164, v165, v166, v167, v168, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201[0]);
  v171 = sub_2172DE1F0(v169, v170);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0738(v172, v173, v174);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0738(v175, v176, v177);
  sub_2171F0738(v202, &qword_27CB24390, &unk_21775D7C0);
  return (v171 & 1) != 0;
}

void CloudPlaylist.Relationships.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26228, &qword_217761D68);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_87_2();
  v2 = OUTLINED_FUNCTION_68();
  v5 = sub_21737B110(v2, v3, v4);
  OUTLINED_FUNCTION_105(&type metadata for CloudPlaylist.Relationships.CodingKeys, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2172E0A8C();
  OUTLINED_FUNCTION_106();
  sub_217752F38();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24368, &qword_217758698);
    sub_21737B184();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24298, &qword_21777CD60);
    sub_21737B2F0();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24378, &qword_21775D7D0);
    sub_21737B45C();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    OUTLINED_FUNCTION_106();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24388, &unk_217781F60);
    sub_21737B5C8();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24398, &unk_2177784D0);
    sub_21737B780();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
  }

  v7 = OUTLINED_FUNCTION_113_3();
  v8(v7);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudPlaylist.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v0 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE724(v8);
    sub_2171F0738(&v64, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_11_7();
    sub_2172DE7E4(v17);
    sub_2171F0738(&v64, &qword_27CB24368, &qword_217758698);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE7FC(v26);
    sub_2171F0738(&v64, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v27 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v27, v28, v29, v30, v31, v32, v33, v34, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v35 = OUTLINED_FUNCTION_11_7();
    sub_2172DE7CC(v35);
    sub_2171F0738(&v64, &qword_27CB24378, &qword_21775D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v36 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v36, v37, v38, v39, v40, v41, v42, v43, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v44 = OUTLINED_FUNCTION_11_7();
    sub_2172DE724(v44);
    sub_2171F0738(&v64, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v45 = sub_2172E3D54();
  if (v80)
  {
    OUTLINED_FUNCTION_10_1(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    OUTLINED_FUNCTION_24();
    v53 = OUTLINED_FUNCTION_11_7();
    sub_2172DE79C(v53);
    sub_2171F0738(&v64, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v54 = sub_2172E3D54();
  if (!v80)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  OUTLINED_FUNCTION_24();
  v62 = OUTLINED_FUNCTION_11_7();
  sub_2172DE784(v62);
  return sub_2171F0738(&v64, &qword_27CB24398, &unk_2177784D0);
}

uint64_t CloudPlaylist.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_192_1();
  v0 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE724(v8);
    sub_2171F0738(v65, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE7E4(v17);
    sub_2171F0738(v65, &qword_27CB24368, &qword_217758698);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v26 = OUTLINED_FUNCTION_89_0();
    sub_2172DE7FC(v26);
    sub_2171F0738(v65, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v27 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v27, v28, v29, v30, v31, v32, v33, v34, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v35 = OUTLINED_FUNCTION_89_0();
    sub_2172DE7CC(v35);
    sub_2171F0738(v65, &qword_27CB24378, &qword_21775D7D0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v36 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v36, v37, v38, v39, v40, v41, v42, v43, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v44 = OUTLINED_FUNCTION_89_0();
    sub_2172DE724(v44);
    sub_2171F0738(v65, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v45 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v53 = OUTLINED_FUNCTION_89_0();
    sub_2172DE79C(v53);
    sub_2171F0738(v65, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v54 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_180(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_157_0();
    v62 = OUTLINED_FUNCTION_89_0();
    sub_2172DE784(v62);
    sub_2171F0738(v65, &qword_27CB24398, &unk_2177784D0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudPlaylist.Relationships.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB262D8, &qword_217761D70);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_21_2();
  v29 = OUTLINED_FUNCTION_160(v25, v25[3]);
  sub_21737B110(v29, v30, v31);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0D64();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24368, &qword_217758698);
    OUTLINED_FUNCTION_72_6();
    sub_21737B8EC();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24298, &qword_21777CD60);
    OUTLINED_FUNCTION_121_5();
    sub_21737BA58();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24378, &qword_21775D7D0);
    OUTLINED_FUNCTION_207_1();
    sub_21737BBC4();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v37);
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24388, &unk_217781F60);
    sub_21737BD30();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24398, &unk_2177784D0);
    sub_21737BE40();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    v32 = OUTLINED_FUNCTION_82();
    v33(v32);
    OUTLINED_FUNCTION_168_2(&v40);
    sub_21737BFAC(v34, v27);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_21726A354(v34);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173725F4(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v4);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7E4(v4);
    sub_2171F0738(__dst, &qword_27CB24368, &qword_217758698);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v4);
    sub_2171F0738(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7CC(v4);
    sub_2171F0738(__dst, &qword_27CB24378, &qword_21775D7D0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v4);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE79C(v4);
    sub_2171F0738(__dst, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE784(v4);
    sub_2171F0738(__dst, &qword_27CB24398, &unk_2177784D0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void *CloudPlaylist.Associations.init(collaborators:contributors:featuredArtists:moreByCurator:)@<X0>(void *__src@<X0>, const void *a2@<X1>, const void *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(a5, __src, 0x80uLL);
  memcpy((a5 + 128), a2, 0x80uLL);
  memcpy((a5 + 256), a3, 0x80uLL);

  return memcpy((a5 + 384), a4, 0x80uLL);
}

MusicKit::CloudPlaylist::Associations::CodingKeys_optional __swiftcall CloudPlaylist.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_177_1();
  v2 = sub_217752DC8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t CloudPlaylist.Associations.CodingKeys.stringValue.getter()
{
  result = 0x726F62616C6C6F63;
  switch(*v0)
  {
    case 1:
      result = 0x75626972746E6F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x2D79622D65726F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_217372BE0@<X0>(unint64_t *a1@<X8>)
{
  result = CloudPlaylist.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217372C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737BFE4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217372C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737BFE4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudPlaylist.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v125)
  {
    if (!v126)
    {
      sub_2171F0738(v124, &qword_27CB24258, &unk_217791F50);
      goto LABEL_7;
    }

LABEL_12:
    v50 = &unk_27CB26330;
    v51 = &unk_217791F60;
    goto LABEL_34;
  }

  v0 = OUTLINED_FUNCTION_159_1();
  if (!v126)
  {
    sub_2171F0738(v123, &qword_27CB24260, &qword_217758678);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v103);
  v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v104, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123[0]);
  v18 = sub_2172DE208(v16, v17);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v19, v20, v21);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v22, v23, v24);
  sub_2171F0738(v124, &qword_27CB24258, &unk_217791F50);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v125)
  {
    if (!v126)
    {
      sub_2171F0738(v124, &qword_27CB24230, &unk_21775E9D0);
      goto LABEL_15;
    }

LABEL_20:
    v50 = &unk_27CB25220;
    v51 = &unk_21775ED30;
    goto LABEL_34;
  }

  v25 = OUTLINED_FUNCTION_159_1();
  if (!v126)
  {
    sub_2171F0738(v123, &qword_27CB24238, &unk_21775EA00);
    goto LABEL_20;
  }

  v33 = OUTLINED_FUNCTION_75(v25, v26, v27, v28, v29, v30, v31, v32, v103);
  v41 = OUTLINED_FUNCTION_87_1(v33, v34, v35, v36, v37, v38, v39, v40, v105, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123[0]);
  v43 = sub_2172DE0D0(v41, v42);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v44, v45, v46);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v47, v48, v49);
  sub_2171F0738(v124, &qword_27CB24230, &unk_21775E9D0);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v125)
  {
    v52 = OUTLINED_FUNCTION_159_1();
    if (v126)
    {
      v60 = OUTLINED_FUNCTION_75(v52, v53, v54, v55, v56, v57, v58, v59, v103);
      v68 = OUTLINED_FUNCTION_87_1(v60, v61, v62, v63, v64, v65, v66, v67, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123[0]);
      v70 = sub_2172DE010(v68, v69);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v71, v72, v73);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v74, v75, v76);
      sub_2171F0738(v124, &qword_27CB24280, &unk_21775D680);
      if ((v70 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_2171F0738(v123, &qword_27CB24288, &qword_217758F80);
LABEL_28:
    v50 = &qword_27CB25068;
    v51 = &qword_21775B528;
    goto LABEL_34;
  }

  if (v126)
  {
    goto LABEL_28;
  }

  sub_2171F0738(v124, &qword_27CB24280, &unk_21775D680);
LABEL_23:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v125)
  {
    v77 = OUTLINED_FUNCTION_159_1();
    if (v126)
    {
      v85 = OUTLINED_FUNCTION_75(v77, v78, v79, v80, v81, v82, v83, v84, v103);
      v93 = OUTLINED_FUNCTION_87_1(v85, v86, v87, v88, v89, v90, v91, v92, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123[0]);
      v95 = sub_2172DE118(v93, v94);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v96, v97, v98);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v99, v100, v101);
      sub_2171F0738(v124, &qword_27CB242C0, &unk_21775D650);
      return (v95 & 1) != 0;
    }

    sub_2171F0738(v123, &qword_27CB242C8, &unk_217758970);
  }

  else if (!v126)
  {
    sub_2171F0738(v124, &qword_27CB242C0, &unk_21775D650);
    return 1;
  }

  v50 = &qword_27CB25198;
  v51 = &qword_21775B550;
LABEL_34:
  sub_2171F0738(v124, v50, v51);
  return 0;
}

void CloudPlaylist.Associations.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26338, &qword_217761D78);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_87_2();
  v2 = OUTLINED_FUNCTION_68();
  v5 = sub_21737BFE4(v2, v3, v4);
  OUTLINED_FUNCTION_105(&type metadata for CloudPlaylist.Associations.CodingKeys, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24260, &qword_217758678);
  sub_21737C038();
  OUTLINED_FUNCTION_28_8();
  sub_217752F38();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
    sub_2172E110C();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0A8C();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
  }

  v7 = OUTLINED_FUNCTION_113_3();
  v8(v7);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudPlaylist.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v0 = sub_2172E3D54();
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE73C(v8);
    sub_2171F0738(&v37, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_11_7();
    sub_2172DE694(v17);
    sub_2171F0738(&v37, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_24();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v26);
    sub_2171F0738(&v37, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v27 = sub_2172E3D54();
  if (!v53)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  OUTLINED_FUNCTION_24();
  v35 = OUTLINED_FUNCTION_11_7();
  sub_2172DE724(v35);
  return sub_2171F0738(&v37, &qword_27CB242C8, &unk_217758970);
}

uint64_t CloudPlaylist.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_192_1();
  v0 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE73C(v8);
    sub_2171F0738(v38, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE694(v17);
    sub_2171F0738(v38, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    v26 = OUTLINED_FUNCTION_89_0();
    sub_2172DE754(v26);
    sub_2171F0738(v38, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v27 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    v35 = OUTLINED_FUNCTION_89_0();
    sub_2172DE724(v35);
    sub_2171F0738(v38, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudPlaylist.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26368, &qword_217761D80);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = OUTLINED_FUNCTION_166_4();
  v8 = OUTLINED_FUNCTION_160(v6, v7);
  v11 = sub_21737BFE4(v8, v9, v10);
  OUTLINED_FUNCTION_139(&type metadata for CloudPlaylist.Associations.CodingKeys, v12, v11);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24260, &qword_217758678);
    sub_21737C1A4();
    OUTLINED_FUNCTION_20_5();
    sub_217752E58();
    OUTLINED_FUNCTION_141_4(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
    OUTLINED_FUNCTION_72_6();
    sub_2172E1278();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    OUTLINED_FUNCTION_141_4(&v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    OUTLINED_FUNCTION_121_5();
    sub_2172E02E4();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    OUTLINED_FUNCTION_141_4(&v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    OUTLINED_FUNCTION_207_1();
    sub_2172E0D64();
    OUTLINED_FUNCTION_9_18();
    sub_217752E58();
    v13 = OUTLINED_FUNCTION_65_0();
    v14(v13);
    OUTLINED_FUNCTION_141_4(&v18);
    sub_21737C310(v15, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21726A300(v15);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173738C8(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE73C(v4);
    sub_2171F0738(__dst, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE694(v4);
    sub_2171F0738(__dst, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v4);
    sub_2171F0738(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v4);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void *CloudPlaylist.Metadata.init(pivot:reason:snippets:associations:)@<X0>(void *__src@<X3>, _OWORD *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  v6 = a2[1];
  *a5 = *a2;
  *(a5 + 16) = v6;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v5;
  *(a5 + 56) = a4;
  return memcpy((a5 + 64), __src, 0x100uLL);
}

void CloudPlaylist.Metadata.pivot.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2172838F8(v2, v3, v4, v5);
}

uint64_t CloudPlaylist.Metadata.reason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2172E1074(v2, v3, v4);
}

unint64_t CloudPlaylist.Metadata.Associations.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_217373C24@<X0>(unint64_t *a1@<X8>)
{
  result = CloudPlaylist.Metadata.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217373C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737C348(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217373CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737C348(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudPlaylist.Metadata.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v73)
  {
    v0 = OUTLINED_FUNCTION_159_1();
    if (v74)
    {
      v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v53);
      v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v54, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
      v18 = sub_2172DE0D0(v16, v17);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v19, v20, v21);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v22, v23, v24);
      sub_2171F0738(v72, &qword_27CB24230, &unk_21775E9D0);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_2171F0738(v71, &qword_27CB24238, &unk_21775EA00);
LABEL_12:
    v50 = &unk_27CB25220;
    v51 = &unk_21775ED30;
    goto LABEL_18;
  }

  if (v74)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v72, &qword_27CB24230, &unk_21775E9D0);
LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v73)
  {
    v25 = OUTLINED_FUNCTION_159_1();
    if (v74)
    {
      v33 = OUTLINED_FUNCTION_75(v25, v26, v27, v28, v29, v30, v31, v32, v53);
      v41 = OUTLINED_FUNCTION_87_1(v33, v34, v35, v36, v37, v38, v39, v40, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
      v43 = sub_2172DE1A8(v41, v42);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v44, v45, v46);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v47, v48, v49);
      sub_2171F0738(v72, &qword_27CB24240, &qword_217758668);
      return (v43 & 1) != 0;
    }

    sub_2171F0738(v71, &qword_27CB24248, &qword_217758670);
  }

  else if (!v74)
  {
    sub_2171F0738(v72, &qword_27CB24240, &qword_217758668);
    return 1;
  }

  v50 = &unk_27CB25080;
  v51 = &unk_21775B538;
LABEL_18:
  sub_2171F0738(v72, v50, v51);
  return 0;
}

void CloudPlaylist.Metadata.Associations.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26380, &qword_217761D88);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = OUTLINED_FUNCTION_68();
  sub_21737C348(v7, v8, v9);
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
  sub_2172E110C();
  OUTLINED_FUNCTION_38_7();
  sub_217752F38();
  if (!v0)
  {
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24248, &qword_217758670);
    sub_2172E000C();
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
  }

  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudPlaylist.Metadata.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v0 = sub_2172E3D54();
  if (v35)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE694(v8);
    sub_2171F0738(&v19, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (!v35)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_24();
  v17 = OUTLINED_FUNCTION_11_7();
  sub_2172DE67C(v17);
  return sub_2171F0738(&v19, &qword_27CB24248, &qword_217758670);
}

uint64_t CloudPlaylist.Metadata.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_192_1();
  v0 = sub_2172E3D54();
  if (v36)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE694(v8);
    sub_2171F0738(v20, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v36)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE67C(v17);
    sub_2171F0738(v20, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudPlaylist.Metadata.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v22 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26390, &qword_217761D90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_166_4();
  v7 = OUTLINED_FUNCTION_160(v5, v6);
  sub_21737C348(v7, v8, v9);
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
    sub_2172E1278();
    v10 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_169_4(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_141_4(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24248, &qword_217758670);
    OUTLINED_FUNCTION_72_6();
    sub_2172E0728();
    v15 = OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_169_4(v15, v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_86();
    v21(v20);
    OUTLINED_FUNCTION_141_4(&v24);
    sub_21737C39C(v23, v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21726A3A8(v23);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217374464(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE694(v4);
    sub_2171F0738(__dst, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE67C(v4);
    sub_2171F0738(__dst, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void static CloudPlaylist.Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_169();
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_54_7();
    sub_2172838F8(v11, v12, v13, v14);
    if (v8 == 1)
    {
      OUTLINED_FUNCTION_184_1();
      sub_2172838F8(v15, v16, v17, v18);
      OUTLINED_FUNCTION_54_7();
      sub_217283940(v19, v20, v21, v22);
      goto LABEL_9;
    }

    v35 = OUTLINED_FUNCTION_80_5();
    sub_2172838F8(v35, v36, v37, v38);
LABEL_7:
    v39 = OUTLINED_FUNCTION_47_0();
    sub_217283940(v39, v40, v41, v42);
    v43 = OUTLINED_FUNCTION_80_5();
    sub_217283940(v43, v44, v45, v46);
    goto LABEL_15;
  }

  v101[0] = *v2;
  v101[1] = v3;
  v102 = v5;
  v103 = v4;
  if (v8 == 1)
  {
    v23 = OUTLINED_FUNCTION_47_0();
    sub_2172838F8(v23, v24, v25, v26);
    OUTLINED_FUNCTION_184_1();
    sub_2172838F8(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_47_0();
    sub_2172838F8(v31, v32, v33, v34);

    goto LABEL_7;
  }

  v100[0] = v7;
  v100[1] = v8;
  v100[2] = v10;
  v100[3] = v9;
  v98 = static CloudPivotMetadata.== infix(_:_:)(v101, v100);
  v47 = OUTLINED_FUNCTION_47_0();
  sub_2172838F8(v47, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_80_5();
  sub_2172838F8(v51, v52, v53, v54);
  v55 = OUTLINED_FUNCTION_47_0();
  sub_2172838F8(v55, v56, v57, v58);

  v59 = OUTLINED_FUNCTION_47_0();
  sub_217283940(v59, v60, v61, v62);
  if ((v98 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v64 = v0[4];
  v63 = v0[5];
  v65 = v0[6];
  if (*(v1 + 48))
  {
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_83_1();
      sub_2172E1074(v66, v67, v68);
      v69 = OUTLINED_FUNCTION_83_6();
      sub_2172E1074(v69, v70, v71);
      OUTLINED_FUNCTION_83_1();
      v72 = sub_2172AA364();
      v73 = OUTLINED_FUNCTION_83_6();
      sub_2172E141C(v73, v74, v75);
      v76 = OUTLINED_FUNCTION_83_1();
      sub_2172E141C(v76, v77, v78);
      if ((v72 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

LABEL_14:
    v79 = OUTLINED_FUNCTION_83_1();
    sub_2172E1074(v79, v80, v81);
    v82 = OUTLINED_FUNCTION_83_6();
    sub_2172E1074(v82, v83, v84);
    v85 = OUTLINED_FUNCTION_83_1();
    sub_2172E141C(v85, v86, v87);
    v88 = OUTLINED_FUNCTION_83_6();
    sub_2172E141C(v88, v89, v90);
    goto LABEL_15;
  }

  if (v65)
  {
    goto LABEL_14;
  }

  v91 = OUTLINED_FUNCTION_240();
  sub_2172E1074(v91, v92, 0);
  sub_2172E1074(v64, v63, 0);
  v93 = OUTLINED_FUNCTION_240();
  sub_2172E141C(v93, v94, 0);
LABEL_17:
  v95 = v0[7];
  if (*(v1 + 56))
  {
    if (v95)
    {
      sub_217751DE8();
      OUTLINED_FUNCTION_240();
      sub_21726F358();
      v97 = v96;

      if (v97)
      {
LABEL_22:
        OUTLINED_FUNCTION_39_0();
        sub_2172E3D54();
        OUTLINED_FUNCTION_39_0();
        sub_2172E3D54();
        if (v102 == 1)
        {
          if (v104[2] == 1)
          {
            sub_2171F0738(v101, &qword_27CB243A0, &qword_2177586A8);
            goto LABEL_15;
          }
        }

        else
        {
          sub_2172E3D54();
          if (v104[2] != 1)
          {
            memcpy(__dst, v104, sizeof(__dst));
            static CloudPlaylist.Metadata.Associations.== infix(_:_:)();
            sub_21726A3A8(__dst);
            sub_21726A3A8(v100);
            sub_2171F0738(v101, &qword_27CB243A0, &qword_2177586A8);
            goto LABEL_15;
          }

          sub_21726A3A8(v100);
        }

        sub_2171F0738(v101, &qword_27CB26398, &qword_217761D98);
      }
    }
  }

  else if (!v95)
  {
    goto LABEL_22;
  }

LABEL_15:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2173748D8(char a1)
{
  result = 0x746F766970;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73616572;
      break;
    case 2:
      result = 0x7374657070696E73;
      break;
    case 3:
      result = 0x746169636F737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217374964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737C3D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173749A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737C3D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylist.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB263A0, &qword_217761DA0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_87_2();
  v3 = OUTLINED_FUNCTION_68();
  v6 = sub_21737C3D4(v3, v4, v5);
  OUTLINED_FUNCTION_105(&type metadata for CloudPlaylist.Metadata.CodingKeys, v7, v6);
  v16 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v22 = v1[3];
  sub_2172838F8(*v1, v18, v20, v22);
  sub_2172E14B4(v8, v9, v10);
  OUTLINED_FUNCTION_67_0();
  sub_217752F38();
  sub_217283940(v16, v18, v20, v22);
  if (!v0)
  {
    v17 = v1[4];
    v19 = v1[5];
    v21 = v1[6];
    sub_2172E1074(v17, v19, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    sub_2172E1508();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    sub_2172E141C(v17, v19, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E163C();
    OUTLINED_FUNCTION_28_8();
    v11 = sub_217752F38();
    sub_21737C428(v11, v12, v13);
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
  }

  v14 = OUTLINED_FUNCTION_113_3();
  v15(v14);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudPlaylist.Metadata.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v3 = *(v1 + 8);
  if (v3 != 1)
  {
    v4 = v2[3];
    OUTLINED_FUNCTION_24();
    if (v3)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
      if (v4)
      {
LABEL_4:
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_171_1();
        sub_217751FF8();
        goto LABEL_7;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_7:
  v5 = v2[6];
  if (v5)
  {
    v6 = v2[5];
    OUTLINED_FUNCTION_24();
    if (v6)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217751DE8();
    sub_217265A08(v0, v5);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v7 = v2[7];
  if (v7)
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0(v0, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  return sub_217264904();
}

uint64_t CloudPlaylist.Metadata.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPlaylist.Metadata.hash(into:)();
  return sub_217753238();
}

void CloudPlaylist.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB263B8, &qword_217761DA8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_2();
  v31 = OUTLINED_FUNCTION_166_4();
  v33 = OUTLINED_FUNCTION_160(v31, v32);
  v36 = sub_21737C3D4(v33, v34, v35);
  v38 = OUTLINED_FUNCTION_139(&type metadata for CloudPlaylist.Metadata.CodingKeys, v37, v36);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    a13 = 0;
    v41 = sub_2172E1848(v38, v39, v40);
    OUTLINED_FUNCTION_220_1(&type metadata for CloudPivotMetadata, &a13, v42, v43, v41);
    v53[0] = v52[0];
    v53[1] = v52[1];
    v53[2] = v52[2];
    v53[3] = v52[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    OUTLINED_FUNCTION_72_6();
    sub_2172E189C();
    OUTLINED_FUNCTION_55_0();
    sub_217752E58();
    v53[4] = v52[0];
    v53[5] = v52[1];
    v53[6] = v52[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    OUTLINED_FUNCTION_121_5();
    sub_2172E1928();
    OUTLINED_FUNCTION_55_0();
    sub_217752E58();
    v53[7] = v52[0];
    OUTLINED_FUNCTION_207_1();
    v47 = sub_21737C47C(v44, v45, v46);
    OUTLINED_FUNCTION_220_1(&type metadata for CloudPlaylist.Metadata.Associations, &a13, v48, v49, v47);
    v50 = OUTLINED_FUNCTION_86();
    v51(v50);
    memcpy(v54, v52, sizeof(v54));
    sub_21733C1C4(v53, v29);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_21726A2AC(v53);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217375008(uint64_t a1)
{
  sub_2177531E8();
  CloudPlaylist.Metadata.hash(into:)();
  return sub_217753238();
}

uint64_t CloudPlaylist.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudPlaylist(v0);
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_217(v1);
  return sub_21737C674();
}

uint64_t CloudPlaylist.relationships.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = type metadata accessor for CloudPlaylist(v0);
  OUTLINED_FUNCTION_217(*(v1 + 24));
  return sub_2172E3D54();
}

double static CloudPlaylist.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB261C8 = a1;
}

uint64_t sub_2173751D4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB261C8;
  return sub_217751DE8();
}

double sub_217375224(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB261C8 = v1;
  sub_217751DE8();
}

uint64_t CloudPlaylist.views.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = type metadata accessor for CloudPlaylist(v0);
  OUTLINED_FUNCTION_217(*(v1 + 28));
  return sub_2172E3D54();
}

uint64_t CloudPlaylist.meta.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = type metadata accessor for CloudPlaylist(v0);
  OUTLINED_FUNCTION_217(*(v1 + 32));
  return sub_2172E3D54();
}

uint64_t sub_2173753A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE8A38 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BE8A48;
  v2 = byte_280BE8A50;
  *(v0 + 32) = qword_280BE8A40;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE4618 = v0;

  return sub_217751DE8();
}

uint64_t static CloudPlaylist.catalogTypes.getter()
{
  if (qword_280BE4610 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2173754AC()
{
  if (qword_280BE8AA8 != -1)
  {
    swift_once();
  }

  qword_280BE4790 = qword_280BE8AB0;
  *algn_280BE4798 = *algn_280BE8AB8;
  byte_280BE47A0 = byte_280BE8AC0;

  return sub_217751DE8();
}

uint64_t static CloudPlaylist.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE4788 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE4798;
  v3 = byte_280BE47A0;
  *a1 = qword_280BE4790;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

BOOL static CloudPlaylist.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudPlaylist(0);
  static CloudPlaylist.Attributes.== infix(_:_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  if (v15 == 1)
  {
    if (*&v17[592] == 1)
    {
      sub_2171F0738(v14, &qword_27CB24358, &unk_21775D510);
      goto LABEL_14;
    }

LABEL_12:
    v5 = &unk_27CB263C8;
    v6 = &unk_217761DB0;
LABEL_27:
    sub_2171F0738(v14, v5, v6);
    return 0;
  }

  sub_2172E3D54();
  if (*&v17[592] == 1)
  {
    sub_21726A354(v13);
    goto LABEL_12;
  }

  memcpy(v12, &v17[576], sizeof(v12));
  v7 = static CloudPlaylist.Relationships.== infix(_:_:)();
  sub_21726A354(v12);
  sub_21726A354(v13);
  sub_2171F0738(v14, &qword_27CB24358, &unk_21775D510);
  if (!v7)
  {
    return 0;
  }

LABEL_14:
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  if (v15 != 1)
  {
    sub_2172E3D54();
    if (*&v17[208] != 1)
    {
      memcpy(v12, &v17[192], 0x200uLL);
      v8 = static CloudPlaylist.Associations.== infix(_:_:)();
      sub_21726A300(v12);
      sub_21726A300(v13);
      sub_2171F0738(v14, &qword_27CB24350, &unk_21776A5D0);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_21;
    }

    sub_21726A300(v13);
    goto LABEL_19;
  }

  if (*&v17[208] != 1)
  {
LABEL_19:
    v5 = &unk_27CB263D0;
    v6 = &unk_217761DB8;
    goto LABEL_27;
  }

  sub_2171F0738(v14, &qword_27CB24350, &unk_21776A5D0);
LABEL_21:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v16 == 1)
  {
    if (*&v17[48] == 1)
    {
      sub_2171F0738(v14, &qword_27CB24348, &unk_21775D520);
      return 1;
    }

    goto LABEL_26;
  }

  sub_2172E3D54();
  if (*&v17[48] == 1)
  {
    sub_21726A2AC(v13);
LABEL_26:
    v5 = &unk_27CB263D8;
    v6 = &unk_217761DC0;
    goto LABEL_27;
  }

  memcpy(v12, v17, 0x140uLL);
  static CloudPlaylist.Metadata.== infix(_:_:)();
  v11 = v10;
  sub_21726A2AC(v12);
  sub_21726A2AC(v13);
  sub_2171F0738(v14, &qword_27CB24348, &unk_21775D520);
  return (v11 & 1) != 0;
}

uint64_t sub_217375920(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](a1);
  return sub_217753238();
}

uint64_t sub_217375960(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173759F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_217375A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737C4D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217375A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21737C4D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylist.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB263E0, &qword_217761DC8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_87_2();
  v2 = OUTLINED_FUNCTION_68();
  v5 = sub_21737C4D0(v2, v3, v4);
  v7 = OUTLINED_FUNCTION_105(&type metadata for CloudPlaylist.CodingKeys, v6, v5);
  sub_2172E1B18(v7, v8, v9);
  OUTLINED_FUNCTION_67_0();
  sub_217752F88();
  if (!v0)
  {
    type metadata accessor for CloudPlaylist(0);
    type metadata accessor for CloudPlaylist.Attributes(0);
    OUTLINED_FUNCTION_62_8();
    sub_21737AD5C(v10);
    OUTLINED_FUNCTION_28_8();
    v11 = sub_217752F88();
    sub_21733C170(v11, v12, v13);
    OUTLINED_FUNCTION_67_0();
    v14 = sub_217752F38();
    sub_21733C11C(v14, v15, v16);
    OUTLINED_FUNCTION_67_0();
    v17 = sub_217752F38();
    sub_21737C524(v17, v18, v19);
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
  }

  v20 = OUTLINED_FUNCTION_113_3();
  v21(v20);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudPlaylist.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  type metadata accessor for CloudPlaylist(0);
  CloudPlaylist.Attributes.hash(into:)();
  sub_217264C3C(a1);
  sub_21726492C(a1);
  return sub_2172647B8(a1);
}

uint64_t CloudPlaylist.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  type metadata accessor for CloudPlaylist(0);
  CloudPlaylist.Attributes.hash(into:)();
  sub_217264C3C(v1);
  sub_21726492C(v1);
  sub_2172647B8(v1);
  return sub_217753238();
}

void CloudPlaylist.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v66 = v23;
  v25 = v24;
  v61[2] = v26;
  v62 = type metadata accessor for CloudPlaylist.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB263F0, &qword_217761DD0);
  OUTLINED_FUNCTION_0_0();
  v63 = v29;
  v64 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = v61 - v31;
  v33 = type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v37 = (v36 - v35);
  v39 = v36 - v35 + *(v38 + 32);
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *v39 = 0u;
  *(v39 + 48) = 1;
  v67 = v39;
  bzero((v39 + 56), 0x108uLL);
  v40 = OUTLINED_FUNCTION_160(v25, v25[3]);
  sub_21737C4D0(v40, v41, v42);
  v65 = v32;
  v43 = v66;
  v44 = sub_2177532C8();
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_2171F0738(v67, &qword_27CB24348, &unk_21775D520);
  }

  else
  {
    v66 = v33;
    sub_2172E1C68(v44, v45, v46);
    sub_217752EA8();
    v47 = v68[1];
    *v37 = v68[0];
    v37[1] = v47;
    v61[1] = v47;
    LOBYTE(v68[0]) = 1;
    OUTLINED_FUNCTION_62_8();
    sub_21737AD5C(v48);
    sub_217752EA8();
    v49 = v66;
    OUTLINED_FUNCTION_11_24();
    v50 = sub_21737DE4C();
    sub_21737C578(v50, v51, v52);
    OUTLINED_FUNCTION_81_3();
    v62 = 0;
    sub_217752E58();
    memcpy(v37 + *(v49 + 24), v68, 0x380uLL);
    OUTLINED_FUNCTION_207_1();
    sub_21737C5CC(v53, v54, v55);
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    v56 = memcpy(v37 + *(v49 + 28), v68, 0x200uLL);
    sub_21737C620(v56, v57, v58);
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    v59 = OUTLINED_FUNCTION_62_6();
    v60(v59);
    sub_2172E1F3C();
    sub_21737C674();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_21737C6CC(v37, type metadata accessor for CloudPlaylist);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173762E0(uint64_t a1)
{
  sub_2177531E8();
  sub_217751FF8();
  CloudPlaylist.Attributes.hash(into:)();
  sub_217264C3C(v2);
  sub_21726492C(v2);
  sub_2172647B8(v2);
  return sub_217753238();
}

void Playlist.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v462 = v2;
  v459 = v3;
  v460 = v4;
  v466 = v5;
  v7 = v6;
  v454 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31();
  v428 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  v469 = &v425 - v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_80();
  v443 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B8, &qword_21775D770);
  OUTLINED_FUNCTION_45_0(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v438 = &v425 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v426 = (&v425 - v21);
  v22 = OUTLINED_FUNCTION_206();
  v464 = type metadata accessor for CloudPlaylist(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_87_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_80();
  v468 = v25;
  v457 = 0;
  v26 = type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (qword_280BE6220 != -1)
  {
    swift_once();
  }

  memset(v481, 0, sizeof(v481));
  sub_2172DA9A0();
  memcpy(v483, v480, sizeof(v483));
  v465 = *(&v480[17] + 1);
  memcpy(v482, &v480[18], sizeof(v482));
  v28 = v19[10];
  v29 = (v7 + v19[9]);
  v30 = v29[1];
  v458 = *v29;
  LODWORD(v437) = *(v29 + 16);
  v31 = *(v7 + v28 + 8);
  v436 = *(v7 + v28);
  v32 = *(v7 + v19[12]);
  v33 = *(v7 + v19[13]);
  v34 = v19[14];
  v35 = v19[15];
  v434 = v19;
  v36 = *(v7 + v34);
  v431 = v32;
  v432 = v36;
  v461 = v7;
  v430 = *(v7 + v35);
  sub_2172A497C(&v484);
  OUTLINED_FUNCTION_136_5();
  memcpy(v0, v37, 0x221uLL);
  OUTLINED_FUNCTION_136_5();
  memcpy(v38, v39, 0x221uLL);
  sub_21733B8A4(v485);
  memcpy((v0 + 1112), v485, 0xE8uLL);
  *(v0 + 1360) = 0;
  *(v0 + 1368) = 1;
  v467 = xmmword_2177586D0;
  *(v0 + 1384) = xmmword_2177586D0;
  v455 = (v0 + 1384);
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = 0u;
  *(v0 + 1432) = 0u;
  *(v0 + 1456) = 2;
  *(v0 + 1464) = 0u;
  *(v0 + 1480) = 0u;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = 514;
  *(v0 + 1509) = 1282;
  v40 = v26[22];
  v41 = sub_2177517D8();
  v439 = v40;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  OUTLINED_FUNCTION_136_5();
  memcpy(v45, v46, 0x221uLL);
  v440 = v26[25];
  memcpy((v0 + v440), v481, 0x78uLL);
  OUTLINED_FUNCTION_136_5();
  memcpy(v47, v48, 0x221uLL);
  v49 = v26[32];
  sub_2177516D8();
  v441 = v49;
  v50 = v41;
  v51 = v30;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v56 = (v0 + v26[34]);
  *v56 = 0;
  v56[1] = 0;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v50);
  *(v0 + v26[36]) = 3;
  *(v0 + v26[37]) = 2;
  *(v0 + v26[38]) = 5;
  *(v0 + v26[39]) = 7;
  v60 = v0 + v26[40];
  *v60 = 0;
  *(v60 + 8) = 1;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v50);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v50);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v50);
  *(v0 + v26[44]) = 2;
  *(v0 + v26[45]) = 2;
  *(v0 + v26[46]) = 2;
  *(v0 + v26[47]) = 2;
  *(v0 + v26[48]) = 2;
  v70 = (v0 + v26[49]);
  *v70 = 0u;
  v70[1] = 0u;
  v71 = v0 + v26[50];
  *v71 = 0;
  *(v71 + 8) = 1;
  *(v0 + v26[51]) = 10;
  OUTLINED_FUNCTION_7_20(v26[52], 0);
  v442 = v72;
  OUTLINED_FUNCTION_7_20(v26[53], v73);
  v444 = v74;
  OUTLINED_FUNCTION_7_20(v26[54], v75);
  v446 = v76;
  OUTLINED_FUNCTION_7_20(v26[55], v77);
  v445 = v78;
  OUTLINED_FUNCTION_7_20(v26[56], v79);
  v447 = v80;
  OUTLINED_FUNCTION_7_20(v26[57], v81);
  v427 = v82;
  OUTLINED_FUNCTION_7_20(v26[58], v83);
  v448 = v84;
  OUTLINED_FUNCTION_7_20(v26[59], v85);
  v449 = v86;
  v87 = (v0 + v26[60]);
  *v87 = v467;
  v87[2] = 0;
  v87[3] = 0;
  v450 = v87;
  v88 = (v0 + v26[63]);
  v88[6] = v89;
  v88[7] = v89;
  v88[4] = v89;
  v88[5] = v89;
  v88[2] = v89;
  v88[3] = v89;
  *v88 = v89;
  v88[1] = v89;
  v451 = v88;
  OUTLINED_FUNCTION_7_20(v26[64], v89);
  v452 = v90;
  v463 = v26;
  v91 = v26[65];
  *&v467 = v0;
  v92 = v0 + v91;
  *(v92 + 32) = 0;
  *v92 = v93;
  *(v92 + 16) = v93;
  v453 = v92;
  v94 = qword_280BE8800;
  v435 = v51;
  sub_217751DE8();
  v433 = v31;
  sub_217751DE8();
  v95 = v431;
  sub_217751DE8();
  v96 = v33;
  v97 = v430;
  sub_217751DE8();
  v98 = v432;
  sub_217751DE8();
  sub_217751DE8();
  if (v94 != -1)
  {
    swift_once();
  }

  v99 = qword_280C02598;
  if (qword_280C02598 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v419 = sub_217752D28();

    v99 = v419;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v456 = v50;
  v100 = v463;
  v101 = v467;
  *(v467 + v463[66]) = v99;
  v102 = (v101 + v100[69]);
  v103 = (v101 + v100[67]);
  memcpy(v103, v483, 0x118uLL);
  v103[35] = v465;
  memcpy(v103 + 36, v482, 0x41uLL);
  v104 = v101 + v100[68];
  v105 = v435;
  *v104 = v458;
  *(v104 + 1) = v105;
  v104[16] = v437;
  v106 = v433;
  *v102 = v436;
  v102[1] = v106;
  *(v101 + v100[70]) = v95;
  *(v101 + v100[71]) = v96;
  *(v101 + v100[72]) = v98;
  *(v101 + v100[73]) = v97;
  OUTLINED_FUNCTION_60_9();
  v107 = v468;
  sub_21737C674();
  v458 = v464[6];
  sub_2172E3D54();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    sub_2171F0738(v480, &qword_27CB24358, &unk_21775D510);
    v109 = v438;
    v110 = v434;
LABEL_20:
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v110);
    goto LABEL_21;
  }

  sub_2172E3D54();
  sub_21726A354(v480);
  v109 = v438;
  v110 = v434;
  if (!v477[2])
  {
    sub_2171F0738(v477, &qword_27CB242C0, &unk_21775D650);
    goto LABEL_20;
  }

  sub_217751DE8();
  sub_2171F0738(v477, &qword_27CB242C8, &unk_217758970);
  sub_2172CE7F4();

  OUTLINED_FUNCTION_133(v109, 1, v110);
  if (v108)
  {
LABEL_21:
    sub_2171F0738(v109, &qword_27CB256B8, &qword_21775D770);
    goto LABEL_22;
  }

  v111 = v426;
  sub_2172E21DC();
  v113 = *v111;
  v112 = v111[1];
  sub_217751DE8();

  v103[2] = v113;
  v103[3] = v112;
  *(v103 + 32) = 2;
  v480[0] = 0uLL;
  MEMORY[0x28223BE20](v114);
  v115 = v457;
  v116 = sub_2173DDA80();
  v457 = v115;
  if (!v116)
  {
    v117 = v103[35];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103[35] = v117;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v420 = OUTLINED_FUNCTION_17();
      sub_2172B1F4C(v420, v421, v422, v117);
      v117 = v423;
      v103[35] = v423;
    }

    v120 = *(v117 + 16);
    v119 = *(v117 + 24);
    if (v120 >= v119 >> 1)
    {
      sub_2172B1F4C(v119 > 1, v120 + 1, 1, v117);
      v117 = v424;
    }

    *(v117 + 16) = v120 + 1;
    v121 = v117 + 16 * v120;
    *(v121 + 32) = 0;
    *(v121 + 40) = 0;
    v103[35] = v117;
  }

  OUTLINED_FUNCTION_60_9();
  v122 = v429;
  sub_21737C674();
  sub_2171F0738(v111, &qword_27CB24790, &unk_21775A220);
  v107 = v468;
  sub_21737C820(v122, v468);
LABEL_22:
  v126 = (v107 + v464[5]);
  OUTLINED_FUNCTION_173_4(v478);
  OUTLINED_FUNCTION_173_4(v479);
  if (sub_217220898(v479) == 1)
  {
    OUTLINED_FUNCTION_136_5();
  }

  else
  {
    memcpy(v480, v479, 0x1B8uLL);
    memcpy(v470, v478, 0x1B8uLL);
    OUTLINED_FUNCTION_170_0();
    sub_2172E3D54();
    CloudAttribute<A>.convertToArtwork()(v476);
    memcpy(v471, v480, 0x1B8uLL);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v129, v130, v131);
    memcpy(v480, v476, 0x221uLL);
    nullsub_1();
    v127 = v477;
    v128 = v480;
  }

  memcpy(v127, v128, 0x221uLL);
  memcpy(v476, v101, 0x221uLL);
  sub_2171F0738(v476, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v101, v477, 0x221uLL);
  swift_getKeyPath(byte_217761DD8);
  swift_getKeyPath(byte_217761DF8);
  v132 = sub_2172E3DDC();

  v101[69] = v132;
  v133 = v126[58];
  v101[168] = v126[57];
  v101[169] = v133;
  v101[172] = v126[64];
  if (v126[73])
  {
    v134 = v126[72];
    v465 = v126[71];
    v135 = v126[70];
    v438 = v126[69];
    v136 = v126[68];
    v137 = v126[67];
    v138 = v126[66];
    v139 = v126[65];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v139 = 0;
    v137 = 0;
    v136 = 0;
    v438 = 0;
    v135 = 0;
    v465 = 0;
    v134 = 0;
    v138 = 1;
  }

  v140 = v455[1];
  v475[0] = *v455;
  v475[1] = v140;
  v141 = v455[3];
  v475[2] = v455[2];
  v475[3] = v141;
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v475, &qword_27CB24B70, &unk_217759460);
  v142 = v467;
  *(v467 + 1384) = v139;
  v142[174] = v138;
  v142[175] = v137;
  v142[176] = v136;
  v142[177] = v438;
  v142[178] = v135;
  v142[179] = v465;
  v142[180] = v134;
  v142[181] = v126[74];
  v143 = v126[75];
  v144 = v126[76];
  v145 = v126[77];
  v146 = v126[78];
  v147 = v126[79];
  v148 = v142[183];
  v149 = v142[184];
  v150 = v142[185];
  v151 = v142[186];
  v152 = v142[187];
  v142[183] = v143;
  v142[184] = v144;
  v142[185] = v145;
  v142[186] = v146;
  v142[187] = v147;
  sub_21733B8BC(v143, v144, v145, v146, v147);
  sub_217751DE8();
  v153 = sub_21733B90C(v148, v149, v150, v151, v152);
  KeyPath = swift_getKeyPath(byte_217761DD8, v153);
  v155 = swift_getKeyPath(byte_217761DF8);
  v455 = KeyPath;
  v156 = sub_2172E3DE0();
  if (v156)
  {
    v437 = v155;
    v438 = v156;
    v157 = *(v156 + 16);
    v158 = (v156 + 32);
    v465 = 0x80000002177AA7E0;
    v159 = (v156 + 32);
    v160 = v469;
    while (v157)
    {
      switch(*v159)
      {
        case 1:
        case 8:
          break;
        case 2:
          OUTLINED_FUNCTION_98_9();
          break;
        case 3:
          OUTLINED_FUNCTION_130_4();
          break;
        case 4:
          OUTLINED_FUNCTION_92_5();
          break;
        case 5:
          OUTLINED_FUNCTION_96_5();
          break;
        case 6:
        case 7:
          OUTLINED_FUNCTION_65();
          break;
        case 9:
          OUTLINED_FUNCTION_155_5();
          break;
        case 0xA:
          OUTLINED_FUNCTION_131_6();
          break;
        default:
          goto LABEL_154;
      }

      v161 = sub_217753058();

      ++v159;
      --v157;
      v160 = v469;
      if (v161)
      {
LABEL_40:

        v162 = 1;
        goto LABEL_55;
      }
    }

    v165 = *(v438 + 2);
    while (2)
    {
      if (v165)
      {
        switch(*v158)
        {
          case 2:
            OUTLINED_FUNCTION_98_9();
            goto LABEL_52;
          case 3:
            OUTLINED_FUNCTION_130_4();
            goto LABEL_52;
          case 4:
            OUTLINED_FUNCTION_92_5();
            goto LABEL_52;
          case 5:
            OUTLINED_FUNCTION_96_5();
            goto LABEL_52;
          case 6:
          case 7:
            OUTLINED_FUNCTION_65();
            goto LABEL_52;
          case 8:
LABEL_154:

            v162 = 1;
            v160 = v469;
            goto LABEL_55;
          case 9:
            OUTLINED_FUNCTION_155_5();
            goto LABEL_52;
          case 0xA:
            OUTLINED_FUNCTION_131_6();
            goto LABEL_52;
          default:
LABEL_52:
            v166 = sub_217753058();

            ++v158;
            --v165;
            v160 = v469;
            if (v166)
            {
              goto LABEL_40;
            }

            continue;
        }
      }

      break;
    }

    v162 = 0;
LABEL_55:

    v163 = v461;
    v164 = v459;
  }

  else
  {

    v162 = 2;
    v163 = v461;
    v164 = v459;
    v160 = v469;
  }

  v167 = v467;
  *(v467 + 1506) = v162;
  v167[1507] = *(v126 + 641);
  v167[1508] = *(v126 + 640);
  v168 = v126[86];
  if (v168)
  {
    *&v480[0] = v126[85];
    *(&v480[0] + 1) = v168;
    CloudPlaylist.Kind.convertToPlaylistKind()();
    sub_217751DE8();

    v169 = v471[0];
  }

  else
  {
    v169 = 5;
  }

  v167[1510] = v169;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v170 = type metadata accessor for CloudFormatter(0);
  v171 = __swift_project_value_buffer(v170, qword_280BE8918);
  v172 = v126[82];
  OUTLINED_FUNCTION_5_5();
  v173 = v456;
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v456);
  if (v172)
  {
    v177 = *(v171 + *(v170 + 24));
    v178 = sub_217751F18();
    v179 = [v177 dateFromString_];

    if (v179)
    {
      v180 = v428;
      sub_2177517C8();

      v181 = 0;
      v182 = v467;
    }

    else
    {
      v181 = 1;
      v182 = v467;
      v180 = v428;
    }

    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v186, v187, v188);
    __swift_storeEnumTagSinglePayload(v180, v181, 1, v456);
    OUTLINED_FUNCTION_170_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_170_0();
    sub_2172E21DC();
  }

  else
  {
    sub_2171F0738(v160, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v183, v184, v185, v173);
    v182 = v467;
  }

  v189 = v163;
  v190 = v164;
  v191 = v460;
  v192 = v463;
  v193 = (v182 + v463[24]);
  sub_2172E1F3C();
  v194 = v126[84];
  *v193 = v126[83];
  v193[1] = v194;
  memcpy(v473, v126 + 87, sizeof(v473));
  memcpy(v474, (v182 + v440), sizeof(v474));
  memcpy((v182 + v440), v126 + 87, 0x78uLL);
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  sub_217751DE8();
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v195, v196, v197);
  if (v126[63])
  {
    v198 = v126[60];
    v199 = (v182 + v192[26]);
    *v199 = v126[59];
    v199[1] = v198;
    v201 = v126[61];
    v200 = v126[62];
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v201 = 0;
    v200 = 0;
    v202 = (v182 + v192[26]);
    *v202 = 0;
    v202[1] = 0;
  }

  v203 = v192[28];
  v204 = (v182 + v192[27]);
  v205 = v182 + v192[29];
  v206 = v192[31];
  v207 = v192[33];
  v208 = v182;
  v209 = (v182 + v207);
  *v204 = v201;
  v204[1] = v200;
  *(v208 + v203) = *(v126 + 816);
  LOBYTE(v203) = *(v126 + 832);
  *v205 = v126[103];
  *(v205 + 8) = v203;
  *(v208 + v206) = v126[105];
  v210 = type metadata accessor for CloudPlaylist.Attributes(0);
  sub_217751DE8();
  sub_21737C724();
  v211 = (v126 + *(v210 + 92));
  v212 = v211[1];
  *v209 = *v211;
  v209[1] = v212;
  v213 = v468;
  sub_2172E3D54();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    sub_217751DE8();
    sub_2171F0738(v480, &qword_27CB24358, &unk_21775D510);
  }

  else
  {
    sub_2172E3D54();
    sub_217751DE8();
    sub_21726A354(v480);
    if (*&v471[1])
    {
      OUTLINED_FUNCTION_25_16();
      v126 = &qword_27CB242C8;
      v214 = OUTLINED_FUNCTION_16_0();
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v214, v215);
      sub_2172E208C(v213, v216, v217);
      OUTLINED_FUNCTION_22_16();
      v218 = OUTLINED_FUNCTION_5_25();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v218, v219, v220, v221, v222, v223, v224, v225, v425);
      sub_2171F0738(v472, &qword_27CB24188, &dword_217758930);
      v226 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v226, v227, v228);
      goto LABEL_77;
    }

    sub_2171F0738(v471, &qword_27CB242C0, &unk_21775D650);
  }

  OUTLINED_FUNCTION_16_19();
  *&v470[6] = 0;
LABEL_77:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    v229 = &qword_27CB24358;
    v230 = &unk_21775D510;
    v231 = v480;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A354(v480);
    if (*&v470[1])
    {
      v232 = OUTLINED_FUNCTION_108_5();
      sub_21736D3E8(v232, v233, v234, v235, v236, v237, v238, v239, v425, v426);
      v469 = v240;
      v457 = v126;
      OUTLINED_FUNCTION_48_8();
      sub_2172E3D54();
      OUTLINED_FUNCTION_18_16();
      sub_217751DE8();
      sub_217751DE8();
      v191 = v460;
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v470, &qword_27CB24298, &qword_21777CD60);
      OUTLINED_FUNCTION_46_11();
      v126 = &qword_27CB242A8;
      v241 = OUTLINED_FUNCTION_16_0();
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v241, v242);
      sub_2173363C0(v213, v243, v244);
      OUTLINED_FUNCTION_22_16();
      v245 = OUTLINED_FUNCTION_5_25();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v245, v246, v247, v248, v249, v250, v251, v252, v425);
      sub_2171F0738(v470, &qword_27CB24188, &dword_217758930);
      v253 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v253, v254, v255);
      goto LABEL_84;
    }

    v229 = &qword_27CB24290;
    v230 = &unk_21775D550;
    v231 = v470;
  }

  sub_2171F0738(v231, v229, v230);
  OUTLINED_FUNCTION_26_15();
LABEL_84:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    v256 = &qword_27CB24358;
    v257 = &unk_21775D510;
    v258 = v480;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A354(v480);
    if (*&v471[1])
    {
      OUTLINED_FUNCTION_25_16();
      v126 = &qword_27CB242C8;
      v259 = OUTLINED_FUNCTION_16_0();
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v259, v260);
      sub_2172E208C(v213, v261, v262);
      OUTLINED_FUNCTION_22_16();
      v263 = OUTLINED_FUNCTION_5_25();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v263, v264, v265, v266, v267, v268, v269, v270, v425);
      sub_2171F0738(v472, &qword_27CB24188, &dword_217758930);
      v271 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v271, v272, v273);
      goto LABEL_91;
    }

    v256 = &qword_27CB242C0;
    v257 = &unk_21775D650;
    v258 = v471;
  }

  sub_2171F0738(v258, v256, v257);
  OUTLINED_FUNCTION_16_19();
  *&v470[6] = 0;
LABEL_91:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    v274 = &qword_27CB24358;
    v275 = &unk_21775D510;
    v276 = v480;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A354(v480);
    if (*&v470[1])
    {
      v277 = OUTLINED_FUNCTION_108_5();
      sub_21736CF48(v277, v278, v279, v280, v281, v282, v283, v284, v425, v426);
      v469 = v285;
      v457 = v126;
      OUTLINED_FUNCTION_48_8();
      sub_2172E3D54();
      OUTLINED_FUNCTION_18_16();
      sub_217751DE8();
      sub_217751DE8();
      v191 = v460;
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v470, &qword_27CB24298, &qword_21777CD60);
      OUTLINED_FUNCTION_46_11();
      v286 = OUTLINED_FUNCTION_16_0();
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v286, v287);
      sub_21737C7CC(v213, v288, v289);
      OUTLINED_FUNCTION_22_16();
      v290 = OUTLINED_FUNCTION_5_25();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v290, v291, v292, v293, v294, v295, v296, v297, v425);
      sub_2171F0738(v470, &qword_27CB24188, &dword_217758930);
      v298 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v298, v299, v300);
      goto LABEL_98;
    }

    v274 = &qword_27CB24290;
    v275 = &unk_21775D550;
    v276 = v470;
  }

  sub_2171F0738(v276, v274, v275);
  OUTLINED_FUNCTION_26_15();
LABEL_98:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    v301 = &qword_27CB24358;
    v302 = &unk_21775D510;
    v303 = v480;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A354(v480);
    if (*&v470[1])
    {
      OUTLINED_FUNCTION_108_5();
      sub_21736C8DC();
      v469 = v304;
      OUTLINED_FUNCTION_48_8();
      sub_2172E3D54();
      OUTLINED_FUNCTION_18_16();
      sub_217751DE8();
      sub_217751DE8();
      v191 = v460;
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v470, &qword_27CB24398, &unk_2177784D0);
      OUTLINED_FUNCTION_46_11();
      v305 = OUTLINED_FUNCTION_16_0();
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v305, v306);
      sub_2172E1F90(v213, v307, v308);
      OUTLINED_FUNCTION_22_16();
      v309 = OUTLINED_FUNCTION_5_25();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v309, v310, v311, v312, v313, v314, v315, v316, v425);
      sub_2171F0738(v470, &qword_27CB24188, &dword_217758930);
      v317 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v317, v318, v319);
      goto LABEL_105;
    }

    v301 = &qword_27CB24390;
    v302 = &unk_21775D7C0;
    v303 = v470;
  }

  sub_2171F0738(v303, v301, v302);
  OUTLINED_FUNCTION_26_15();
LABEL_105:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    sub_2171F0738(v480, &qword_27CB24358, &unk_21775D510);
    *&v320 = OUTLINED_FUNCTION_16_19();
    v470[6] = v320;
    v470[7] = v320;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A354(v480);
    if (*&v470[1])
    {
      memcpy(v471, v470, 0x80uLL);
      OUTLINED_FUNCTION_46_11();
      v321 = OUTLINED_FUNCTION_16_0();
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v321, v322);
      sub_21737C778(v213, v323, v324);
      OUTLINED_FUNCTION_22_16();
      v325 = OUTLINED_FUNCTION_5_25();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v325, v326, v327, v328, v329, v330, v331, v332, v425);
      sub_2171F0738(v470, &qword_27CB24188, &dword_217758930);
      v333 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v333, v334, v335);
      sub_2172E1F3C();
      *(v467 + 1456) = 0;
      goto LABEL_117;
    }
  }

  sub_2171F0738(v470, &qword_27CB24370, &qword_2177586A0);
  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    sub_2171F0738(v480, &qword_27CB24358, &unk_21775D510);
    *&v336 = OUTLINED_FUNCTION_16_19();
    v470[6] = v336;
    v470[7] = v336;
LABEL_115:
    v344 = &qword_27CB24390;
    v345 = &unk_21775D7C0;
    v343 = v470;
    goto LABEL_116;
  }

  sub_2172E3D54();
  sub_21726A354(v480);
  if (!*&v470[1])
  {
    goto LABEL_115;
  }

  memcpy(v471, v470, 0x80uLL);
  sub_21754D058();
  v338 = v337;
  OUTLINED_FUNCTION_46_11();
  v339 = v462;
  sub_21754D3F8();
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v340, v341, v342);
  sub_21769A3D0(v338, *(*&v471[1] + 16), v191, v339, v470);

  OUTLINED_FUNCTION_170_0();
  v213 = v468;
  sub_2172E1F3C();
  sub_2171F0738(v427, &unk_27CB28A30, &unk_21775E9C0);
  OUTLINED_FUNCTION_117_0();
  sub_2172E3D54();
  sub_2171F0738(v471, &qword_27CB24398, &unk_2177784D0);
  *(v467 + 1456) = 1;
  OUTLINED_FUNCTION_80_3();
LABEL_116:
  sub_2171F0738(v343, v344, v345);
LABEL_117:
  sub_2172E3D54();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    v346 = &qword_27CB24350;
    v347 = &unk_21776A5D0;
    v348 = v480;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A300(v480);
    if (*&v471[1])
    {
      OUTLINED_FUNCTION_25_16();
      v349 = OUTLINED_FUNCTION_16_0();
      v351 = __swift_instantiateConcreteTypeFromMangledNameV2(v349, v350);
      sub_2172E2188(v351, v352, v353);
      OUTLINED_FUNCTION_22_16();
      v213 = v468;
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v190, v466, v472, &type metadata for Artist, v191, v354, &protocol witness table for Artist, v470, v425);
      sub_2171F0738(v472, &qword_27CB24188, &dword_217758930);
      v355 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v355, v356, v357);
      goto LABEL_124;
    }

    v346 = &qword_27CB24280;
    v347 = &unk_21775D680;
    v348 = v471;
  }

  sub_2171F0738(v348, v346, v347);
  OUTLINED_FUNCTION_16_19();
  *&v470[6] = 0;
LABEL_124:
  sub_2172E1F3C();
  sub_2172E3D54();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    v358 = &qword_27CB24350;
    v359 = &unk_21776A5D0;
    v360 = v480;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A300(v480);
    if (*&v471[1])
    {
      OUTLINED_FUNCTION_25_16();
      v361 = OUTLINED_FUNCTION_16_0();
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v361, v362);
      sub_2172E208C(v213, v363, v364);
      OUTLINED_FUNCTION_22_16();
      v365 = OUTLINED_FUNCTION_5_25();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v365, v366, v367, v368, v369, v370, v371, v372, v425);
      sub_2171F0738(v472, &qword_27CB24188, &dword_217758930);
      v373 = OUTLINED_FUNCTION_23_18();
      sub_2171F0738(v373, v374, v375);
      goto LABEL_131;
    }

    v358 = &qword_27CB242C0;
    v359 = &unk_21775D650;
    v360 = v471;
  }

  sub_2171F0738(v360, v358, v359);
  OUTLINED_FUNCTION_16_19();
  *&v470[6] = 0;
LABEL_131:
  sub_2172E1F3C();
  v376 = (v213 + v464[8]);
  if (v376[6] == 1)
  {
    v377 = 0;
    v378 = 0;
    v379 = 0;
    v380 = 1;
  }

  else
  {
    v377 = *v376;
    v380 = v376[1];
    v378 = v376[2];
    v379 = v376[3];
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_39_0();
    sub_2172838F8(v381, v382, v383, v384);
  }

  v385 = v450;
  sub_217283940(*v450, v450[1], v450[2], v450[3]);
  *v385 = v377;
  v385[1] = v380;
  v385[2] = v378;
  v385[3] = v379;
  v386 = v376[6];
  if (v386)
  {
    v387 = v468;
    v388 = v463;
    if (v386 == 1)
    {
      v389 = v467;
      v390 = (v467 + v463[61]);
      *v390 = 0;
      v390[1] = 0;
      *(v389 + v388[62]) = 0;
      goto LABEL_142;
    }

    v386 = v376[4];
    v391 = sub_217751DE8();
  }

  else
  {
    v391 = 0;
    v387 = v468;
    v388 = v463;
  }

  v392 = v467;
  v393 = (v467 + v388[61]);
  *v393 = v386;
  v393[1] = v391;
  *(v392 + v388[62]) = v376[7];
  sub_217751DE8();
  sub_2172E3D54();
  OUTLINED_FUNCTION_58_7();
  if (!v108)
  {
    sub_2172E3D54();
    sub_21726A3A8(v480);
    goto LABEL_143;
  }

  sub_2171F0738(v480, &qword_27CB243A0, &qword_2177586A8);
LABEL_142:
  memset(v471, 0, 128);
LABEL_143:
  sub_2172E1F3C();
  if (v376[6] == 1)
  {
LABEL_147:
    OUTLINED_FUNCTION_16_19();
    *&v470[6] = 0;
    goto LABEL_148;
  }

  sub_2172E3D54();
  OUTLINED_FUNCTION_58_7();
  if (v108)
  {
    sub_2171F0738(v480, &qword_27CB243A0, &qword_2177586A8);
    goto LABEL_147;
  }

  sub_2172E3D54();
  sub_21726A3A8(v480);
  if (!*&v471[1])
  {
    sub_2171F0738(v471, &qword_27CB24240, &qword_217758668);
    goto LABEL_147;
  }

  OUTLINED_FUNCTION_25_16();
  v404 = OUTLINED_FUNCTION_16_0();
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(v404, v405);
  sub_2172E1F90(v387, v406, v407);
  OUTLINED_FUNCTION_22_16();
  v408 = OUTLINED_FUNCTION_5_25();
  CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v408, v409, v410, v411, v412, v413, v414, v415, v425);
  sub_2171F0738(v472, &qword_27CB24188, &dword_217758930);
  v416 = OUTLINED_FUNCTION_23_18();
  v388 = v463;
  sub_2171F0738(v416, v417, v418);
LABEL_148:
  sub_2172E1F3C();
  memset(v480, 0, 40);
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for CloudMusicItemExtendedConvertible))
  {
    v395 = v394;
    v396 = v429;
    sub_21737C674();
    v397 = *(v395 + 16);
    OUTLINED_FUNCTION_64_10();
    sub_21737AD5C(v398);
    v399 = OUTLINED_FUNCTION_83();
    v397(v399);
    v387 = v468;
    v388 = v463;
    sub_21737C6CC(v396, type metadata accessor for CloudPlaylist);
    sub_2171F0738(v480, &qword_27CB24BA8, &unk_217772FF0);
    v480[0] = v471[0];
    v480[1] = v471[1];
    *&v480[2] = *&v471[2];
  }

  OUTLINED_FUNCTION_117_0();
  sub_21737C724();
  *(&v471[1] + 1) = v388;
  *&v471[2] = &protocol witness table for PlaylistPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v471);
  v400 = v467;
  sub_21737C674();
  Playlist.init(propertyProvider:)(v471, v454);

  (*(*(v191 - 8) + 8))(v190, v191);
  sub_2171F0738(v189, &qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0738(v401, v402, v403);
  sub_21737C6CC(v387, type metadata accessor for CloudPlaylist);
  sub_21737C6CC(v400, type metadata accessor for PlaylistPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void Playlist.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v465 = v9;
  v10 = type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_81();
  v464 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255F0, &unk_21775D4E0);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_87_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_80();
  v433 = v16;
  v471 = v6;
  v429 = *(v6 - 1);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_81();
  v430 = v18;
  OUTLINED_FUNCTION_206();
  v19 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v439 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_81();
  v438 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v428 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_80();
  v29 = v28;
  v30 = OUTLINED_FUNCTION_206();
  v467 = type metadata accessor for CloudPlaylist.Attributes(v30);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_31();
  v431 = v32;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_80();
  v472 = v41;
  if (qword_280BE91E8 != -1)
  {
    swift_once();
  }

  sub_2176CA830(qword_280C025C8, v34, v35, v36, v37, v38, v39, v40, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1));
  memcpy(v525, v524, 0x221uLL);
  if (sub_217220898(v525) == 1)
  {
    sub_2172E22C0(v523);
  }

  else
  {
    memcpy(v475, v525, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v494);
    v42 = OUTLINED_FUNCTION_66_7();
    memcpy(v42, v475, 0x221uLL);
    v43 = OUTLINED_FUNCTION_66_7();
    sub_217284084(v43);
    memcpy(v475, v494, 0x1B8uLL);
    nullsub_1();
    memcpy(v523, v475, sizeof(v523));
  }

  if (qword_280BE9390 != -1)
  {
    swift_once();
  }

  v470 = v8;
  v468 = v4;
  v44 = qword_280C026B0;
  v52 = sub_2172A47FC(qword_280C026B0);
  if (qword_280BE9268 != -1)
  {
    swift_once();
  }

  v53 = qword_280C02618;
  sub_2172A40F0(qword_280C02618, v45, v46, v47, v48, v49, v50, v51, v428, v429, v430, v431, v432, v433, SWORD2(v433), SBYTE6(v433), HIBYTE(v433), v434, v435, v436, v437, v438, v439, v440, v441);
  *&v466 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v52, v54, 0);

  v55 = sub_2172A47FC(v44);
  sub_2172A40F0(v53, v56, v57, v58, v59, v60, v61, v62, v428, v429, v430, v431, v432, v433, SWORD2(v433), SBYTE6(v433), HIBYTE(v433), v434, v435, v436, v437, v438, v439, v440, v441);
  *&v463 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v55, v63, 1);

  if (qword_280BE93B0 != -1)
  {
    swift_once();
  }

  v64 = sub_2172A3F14(qword_280C026C8);
  v461 = v65;
  v462 = v64;
  v66 = v29;
  if (qword_280BE92A8 != -1)
  {
    swift_once();
  }

  v67 = sub_2172A3F14(qword_280C02648);
  v459 = v68;
  v460 = v67;
  if (qword_280BE9270 != -1)
  {
    swift_once();
  }

  v469 = v10;
  v69 = sub_2172A3F14(qword_280C02620);
  v457 = v70;
  v458 = v69;
  v456 = sub_217751DC8();
  if (qword_280BE9298 != -1)
  {
    swift_once();
  }

  v455 = sub_2172A47E0(qword_280C02640);
  if (qword_280BE8100 != -1)
  {
    swift_once();
  }

  sub_2176CAC88(qword_280C02428, v71, v72, v73, v74, v75, v76, v77, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1));
  v519 = v501;
  v520 = v502[0];
  v521 = v502[1];
  v522 = v502[2];
  v78 = *(&v501 + 1);
  if (*(&v501 + 1) == 1)
  {
    v448 = 0;
    v449 = 0;
    v78 = 0;
    v450 = 0;
    v451 = 0;
    v452 = 0;
    v453 = 0uLL;
    v447 = 0;
  }

  else
  {
    v453 = v522;
    v79 = *(&v521 + 1);
    v451 = v521;
    v80 = *(&v520 + 1);
    v448 = v519;
    v449 = v520;
    sub_217751DE8();
    sub_217751DE8();
    v450 = v80;
    sub_217751DE8();
    v452 = v79;
    sub_217751DE8();
    v447 = sub_217751DC8();
    sub_2171F0738(&v519, &qword_27CB24B70, &unk_217759460);
  }

  v454 = v78;
  if (qword_280BE9238 != -1)
  {
    swift_once();
  }

  v446 = sub_2172A47C4(qword_280C025F8);
  if (qword_280BE93A0 != -1)
  {
    swift_once();
  }

  sub_2176CAC94(qword_280C026C0, v81, v82, v83, v84, v85, v86, v87, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1));
  v444 = v517;
  v445 = v516;
  v443 = v518;
  if (qword_280BE92E8 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02670, v88, v89, v90, v91, v92, v93, v94, v428, v429, v430, v431, v432, v433, SWORD2(v433), SBYTE6(v433), HIBYTE(v433), v434, v435, v436, v437, v438, v439, v440, v441);
  HIDWORD(v442) = v95;
  LODWORD(v442) = Playlist.isChart.getter(v95, v96);
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v97 = type metadata accessor for CloudFormatter(0);
  v105 = __swift_project_value_buffer(v97, qword_280BE8918);
  if (qword_280BE92C8 != -1)
  {
    swift_once();
  }

  sub_2176CA4A8(qword_280C02658, v98, v99, v100, v101, v102, v103, v104, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
  OUTLINED_FUNCTION_166_4();
  sub_2172E3D54();
  v106 = v19;
  OUTLINED_FUNCTION_133(v26, 1, v19);
  if (v107)
  {
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v108, v109, v110);
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v111, v112, v113);
    v440 = 0;
    v441 = 0;
  }

  else
  {
    v114 = v66;
    v116 = v438;
    v115 = v439;
    (*(v439 + 32))(v438, v26, v106);
    v117 = *(v105 + *(v97 + 24));
    v118 = v106;
    v119 = sub_2177517A8();
    v120 = [v117 stringFromDate_];

    v121 = sub_217751F48();
    v440 = v122;
    v441 = v121;

    (*(v115 + 8))(v116, v118);
    sub_2171F0738(v114, &qword_27CB241C0, &qword_217759480);
  }

  if (qword_280BE9208 != -1)
  {
    swift_once();
  }

  v123 = sub_2172A3F14(qword_280C025D0);
  if (v124)
  {
    v131 = v123;
  }

  else
  {
    v131 = 0;
  }

  v132 = 0xE000000000000000;
  if (v124)
  {
    v132 = v124;
  }

  v438 = v132;
  v439 = v131;
  if (qword_280BE9210 != -1)
  {
    swift_once();
  }

  sub_2176CA4C8(qword_280C025D8, v124, v125, v126, v127, v128, v129, v130, v428, v429, v430, v431, v432, v433, v434, v435, v436, v472 + 600, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1));
  v140 = 0x6169726F74696465;
  v141 = 0;
  v142 = 0;
  switch(v515[127])
  {
    case 1:
      v143 = 0x6E7265747865;
      goto LABEL_49;
    case 2:
      v143 = 0x6E6F73726570;
LABEL_49:
      v140 = v143 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
      goto LABEL_51;
    case 3:
      v140 = 0x79616C706572;
      goto LABEL_51;
    case 4:
      v140 = 0x6168732D72657375;
      goto LABEL_51;
    case 5:
      goto LABEL_52;
    default:
LABEL_51:
      v141 = v140;
      v142 = sub_217751DE8();
LABEL_52:
      v436 = v142;
      if (qword_280BE9340 != -1)
      {
        swift_once();
      }

      sub_2176CAD44(qword_280C02688, v133, v134, v135, v136, v137, v138, v139, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1));
      if (qword_280BE9398 != -1)
      {
        swift_once();
      }

      sub_2172A40F0(qword_280C026B8, v144, v145, v146, v147, v148, v149, v150, v428, v429, v430, v431, v432, v433, SWORD2(v433), SBYTE6(v433), HIBYTE(v433), v434, v435, v436, v437, v438, v439, v440, v441);
      HIDWORD(v435) = v151;
      if (qword_280BE93C0 != -1)
      {
        swift_once();
      }

      v434 = sub_2172A47B0();
      v153 = v152;
      if (qword_280BE93D0 != -1)
      {
        swift_once();
      }

      v161 = sub_2172A4794(qword_280C026E0);
      if (qword_280BE9218 != -1)
      {
        swift_once();
      }

      v162 = v467;
      v163 = v472;
      sub_2176CA488(qword_280C025E0, v154, v155, v156, v157, v158, v159, v160, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (qword_280BE8128 != -1)
      {
        swift_once();
      }

      v164 = sub_2172A3F14(qword_280C02448);
      v166 = v165;
      memcpy(v163, v523, 0x1B8uLL);
      v168 = v462;
      v167 = v463;
      *(v163 + 440) = v466;
      *(v163 + 448) = v167;
      v170 = v460;
      v169 = v461;
      *(v163 + 456) = v168;
      *(v163 + 464) = v169;
      v172 = v458;
      v171 = v459;
      *(v163 + 472) = v170;
      *(v163 + 480) = v171;
      v174 = v456;
      v173 = v457;
      *(v163 + 488) = v172;
      *(v163 + 496) = v173;
      v175 = v455;
      *(v163 + 504) = v174;
      *(v163 + 512) = v175;
      *(v163 + 520) = v448;
      *(v163 + 528) = v454;
      v176 = v450;
      *(v163 + 536) = v449;
      *(v163 + 544) = v176;
      v177 = v452;
      *(v163 + 552) = v451;
      *(v163 + 560) = v177;
      v178 = *(&v453 + 1);
      *(v163 + 568) = v453;
      *(v163 + 576) = v178;
      v179 = v446;
      *(v163 + 584) = v447;
      *(v163 + 592) = v179;
      v180 = v444;
      v181 = v437;
      *v437 = v445;
      v181[1] = v180;
      *(v163 + 632) = v443;
      LOBYTE(v179) = v442;
      *(v163 + 640) = BYTE4(v442);
      *(v163 + 641) = v179;
      v182 = v440;
      *(v163 + 648) = v441;
      *(v163 + 656) = v182;
      v183 = v438;
      *(v163 + 664) = v439;
      *(v163 + 672) = v183;
      *(v163 + 680) = v141;
      *(v163 + 688) = v436;
      memcpy((v163 + 696), v515, 0x78uLL);
      *(v163 + 816) = BYTE4(v435);
      *(v163 + 824) = v434;
      *(v181 + 232) = v153 & 1;
      *(v163 + 840) = v161;
      v184 = (v163 + *(v162 + 92));
      *v184 = v164;
      v184[1] = v166;
      v501 = 0uLL;
      *&v502[0] = 1;
      bzero(v502 + 8, 0x368uLL);
      if (qword_280BE92D0 != -1)
      {
        swift_once();
      }

      sub_2176CAD50(qword_280C02660, v185, v186, v187, v188, v189, v190, v191, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      v199 = v468;
      v200 = v470;
      if (qword_280BE91D8 != -1)
      {
        swift_once();
      }

      sub_2176CAD6C(qword_280BE91E0, v192, v193, v194, v195, v196, v197, v198, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (qword_280BE9230 != -1)
      {
        swift_once();
      }

      sub_2172A40F0(qword_280C025F0, v201, v202, v203, v204, v205, v206, v207, v428, v429, v430, v431, v432, v433, SWORD2(v433), SBYTE6(v433), HIBYTE(v433), v434, v435, v436, v437, v438, v439, v440, v441);
      if (v208 == 2 || (v208 & 1) != 0)
      {
        v499 = 0;
        v498 = 0u;
        memset(v497, 0, sizeof(v497));
      }

      else
      {
        if (qword_280BE91C0 != -1)
        {
          swift_once();
        }

        sub_2176CAD88(qword_280BE91C8, v209, v210, v211, v212, v213, v214, v215, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      }

      if (qword_280BE9188 != -1)
      {
        swift_once();
      }

      sub_2176CADA4(qword_280BE9190, v209, v210, v211, v212, v213, v214, v215, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (qword_280BE91A8 != -1)
      {
        swift_once();
      }

      sub_2176CAD50(qword_280BE91B0, v216, v217, v218, v219, v220, v221, v222, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (qword_280BE91F0 != -1)
      {
        swift_once();
      }

      sub_2176CA46C(qword_280BE91F8, v223, v224, v225, v226, v227, v228, v229, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (qword_280BE9308 != -1)
      {
        swift_once();
      }

      sub_2176CADC0(qword_280BE9310, v230, v231, v232, v233, v234, v235, v236, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1));
      if (v500[24] || v500[11] || *(&v498 + 1) || v495[29] || v496[11] || v495[16] || v495[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25618, &qword_21775D548);
        v237 = swift_allocObject();
        v237[1] = xmmword_217759200;
        v238 = sub_2172E3D54();
        if (*(&v475[5] + 1))
        {
          v241 = sub_2173363C0(v238, v239, v240);
          LOBYTE(v494[0]) = 0;
          v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25638, &unk_21775EA10);
          MusicItemCollection<>.convertToCloudRawCuratorResourceCollection<A>(configuration:incrementalLoadingEncoding:)(v494, v242, v471, v241, v199, &protocol witness table for CloudCurator, (v237 + 2));
          sub_2171F0738(v475, &qword_27CB25638, &unk_21775EA10);
        }

        else
        {
          sub_2171F0738(v475, &qword_27CB25610, &qword_21775D540);
          v237[8] = 0u;
          v237[9] = 0u;
          v237[6] = 0u;
          v237[7] = 0u;
          v237[4] = 0u;
          v237[5] = 0u;
          v237[2] = 0u;
          v237[3] = 0u;
        }

        v243 = sub_2172E3D54();
        if (*(&v475[5] + 1))
        {
          v246 = sub_21737C7CC(v243, v244, v245);
          LOBYTE(v494[0]) = 0;
          v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25630, &qword_21775D568);
          MusicItemCollection<>.convertToCloudRawCuratorResourceCollection<A>(configuration:incrementalLoadingEncoding:)(v494, v247, v471, v246, v199, &protocol witness table for CloudRadioShow, (v237 + 10));
          v248 = v470;
          sub_2171F0738(v475, &qword_27CB25630, &qword_21775D568);
        }

        else
        {
          sub_2171F0738(v475, &qword_27CB25608, &unk_21775D530);
          v237[16] = 0u;
          v237[17] = 0u;
          v237[14] = 0u;
          v237[15] = 0u;
          v237[12] = 0u;
          v237[13] = 0u;
          v237[10] = 0u;
          v237[11] = 0u;
          v248 = v200;
        }

        *&v494[0] = v237;
        v249 = OUTLINED_FUNCTION_83();
        v250(v249);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
        v251 = OUTLINED_FUNCTION_16_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v251, v252);
        OUTLINED_FUNCTION_36();
        sub_21737CD60(v253);
        OUTLINED_FUNCTION_106();
        CloudResourceCollection.init<A, B>(merging:configuration:)();
        v254 = sub_2172E3D54();
        if (*&v483[88])
        {
          sub_2172E208C(v254, v255, v256);
          OUTLINED_FUNCTION_56_6(v482);
          LOBYTE(v487[0]) = v482[0];
          v257 = OUTLINED_FUNCTION_85();
          __swift_instantiateConcreteTypeFromMangledNameV2(v257, v258);
          OUTLINED_FUNCTION_125_5();
          MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
          OUTLINED_FUNCTION_137_3(v483);
        }

        else
        {
          sub_2171F0738(v483, &qword_27CB25330, &unk_21775E9B0);
          memset(v494, 0, 128);
        }

        sub_2172E3D54();
        v259 = sub_2172E3D54();
        if (v487[11])
        {
          sub_21737C778(v259, v260, v261);
          LOBYTE(v490[0]) = 0;
          v262 = OUTLINED_FUNCTION_85();
          __swift_instantiateConcreteTypeFromMangledNameV2(v262, v263);
          OUTLINED_FUNCTION_125_5();
          MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
          OUTLINED_FUNCTION_137_3(v487);
        }

        else
        {
          sub_2171F0738(v487, &unk_27CB28A30, &unk_21775E9C0);
          OUTLINED_FUNCTION_73_9();
        }

        v264 = sub_2172E3D54();
        if (*(&v490[5] + 1))
        {
          sub_2172E208C(v264, v265, v266);
          OUTLINED_FUNCTION_56_6(v485);
          v488[0] = v485[0];
          v267 = OUTLINED_FUNCTION_85();
          __swift_instantiateConcreteTypeFromMangledNameV2(v267, v268);
          v200 = v248;
          OUTLINED_FUNCTION_125_5();
          MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
          OUTLINED_FUNCTION_137_3(v490);
        }

        else
        {
          sub_2171F0738(v490, &qword_27CB25330, &unk_21775E9B0);
          memset(v487, 0, 128);
          v200 = v248;
        }

        v269 = sub_2172E3D54();
        if (*(&v490[5] + 1))
        {
          sub_2172E1F90(v269, v270, v271);
          OUTLINED_FUNCTION_56_6(v488);
          v492[0] = v488[0];
          v272 = OUTLINED_FUNCTION_85();
          v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v272, v273);
          OUTLINED_FUNCTION_54_5(v274, v492, v274);
          OUTLINED_FUNCTION_137_3(v490);
          sub_2174CF9BC();
          sub_2171F0738(v485, &qword_27CB24248, &qword_217758670);
          sub_2171F0738(v475, &qword_27CB24290, &unk_21775D550);
          v275 = OUTLINED_FUNCTION_66_7();
          sub_2171F0738(v275, v276, v277);
        }

        else
        {
          sub_2171F0738(v475, &qword_27CB24290, &unk_21775D550);
          v278 = OUTLINED_FUNCTION_66_7();
          sub_2171F0738(v278, v279, v280);
          sub_2171F0738(v490, &unk_27CB28A60, &qword_217770B60);
          memset(v490, 0, 128);
        }

        v281 = OUTLINED_FUNCTION_66_7();
        memcpy(v281, v494, 0x80uLL);
        memcpy(v503, v483, sizeof(v503));
        memcpy(v504, v482, sizeof(v504));
        memcpy(v505, v487, sizeof(v505));
        memcpy(v514, v490, sizeof(v514));
        memset(&v502[7], 0, 128);
        v506 = 0u;
        v507 = 0u;
        v508 = 0u;
        v509 = 0u;
        v510 = 0u;
        v511 = 0u;
        v512 = 0u;
        v513 = 0u;
      }

      v494[0] = 0uLL;
      *&v494[1] = 1;
      bzero(&v494[1] + 8, 0x1E8uLL);
      if (qword_280BE92F8 != -1)
      {
        swift_once();
      }

      sub_2176CADCC(qword_280BE9300, v282, v283, v284, v285, v286, v287, v288, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (qword_280BE9370 != -1)
      {
        swift_once();
      }

      sub_2176CAD50(qword_280BE9378, v289, v290, v291, v292, v293, v294, v295, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (v493 | v491)
      {
        v296 = sub_2172E3D54();
        if (*(&v475[5] + 1))
        {
          sub_2172E2188(v296, v297, v298);
          OUTLINED_FUNCTION_146_4();
          v482[0] = v483[0];
          v299 = OUTLINED_FUNCTION_85();
          v301 = __swift_instantiateConcreteTypeFromMangledNameV2(v299, v300);
          OUTLINED_FUNCTION_126_5(v301, v302, v301);
          OUTLINED_FUNCTION_137_3(v475);
        }

        else
        {
          sub_2171F0738(v475, &qword_27CB25310, &unk_21775D3D0);
          memset(v474, 0, sizeof(v474));
        }

        v303 = sub_2172E3D54();
        if (*(&v475[5] + 1))
        {
          sub_2172E208C(v303, v304, v305);
          OUTLINED_FUNCTION_146_4();
          v482[0] = v483[0];
          v306 = OUTLINED_FUNCTION_85();
          v308 = __swift_instantiateConcreteTypeFromMangledNameV2(v306, v307);
          OUTLINED_FUNCTION_126_5(v308, v309, v308);
          sub_2171F0738(v494, &qword_27CB24350, &unk_21776A5D0);
          OUTLINED_FUNCTION_137_3(v475);
        }

        else
        {
          sub_2171F0738(v494, &qword_27CB24350, &unk_21776A5D0);
          sub_2171F0738(v475, &qword_27CB25330, &unk_21775E9B0);
          memset(v473, 0, sizeof(v473));
        }

        bzero(v494, 0x100uLL);
        memcpy(&v494[16], v474, 0x80uLL);
        memcpy(&v494[24], v473, 0x80uLL);
      }

      v490[0] = 0uLL;
      *&v490[1] = 1;
      bzero(&v490[1] + 8, 0xE8uLL);
      if (qword_280BE9290 != -1)
      {
        swift_once();
      }

      sub_2176CADE8(qword_280C02638, v310, v311, v312, v313, v314, v315, v316, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      v324 = v471;
      if (qword_280BE80B0 != -1)
      {
        swift_once();
      }

      sub_2176CA46C(qword_280C023F8, v317, v318, v319, v320, v321, v322, v323, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1), v446, v447);
      if (v489 | v487[52])
      {
        sub_2172E3D54();
        v325 = sub_2172E3D54();
        if (*(&v475[5] + 1))
        {
          sub_2172E1F90(v325, v326, v327);
          OUTLINED_FUNCTION_56_6(v487);
          v485[0] = v487[0];
          v328 = OUTLINED_FUNCTION_85();
          v330 = __swift_instantiateConcreteTypeFromMangledNameV2(v328, v329);
          OUTLINED_FUNCTION_54_5(v330, v485, v330);
          sub_2171F0738(v490, &qword_27CB243A0, &qword_2177586A8);
          OUTLINED_FUNCTION_137_3(v475);
        }

        else
        {
          sub_2171F0738(v490, &qword_27CB243A0, &qword_2177586A8);
          sub_2171F0738(v475, &unk_27CB28A60, &qword_217770B60);
          OUTLINED_FUNCTION_73_9();
        }

        memcpy(v475, v483, 0x80uLL);
        memcpy(&v475[8], v482, 0x80uLL);
        memcpy(v490, v475, 0x100uLL);
      }

      memset(v487, 0, 48);
      v487[6] = 1;
      bzero(&v487[7], 0x108uLL);
      if (qword_280BE8108 != -1)
      {
        swift_once();
      }

      sub_2176CAE04(qword_280C02430, v331, v332, v333, v334, v335, v336, v337, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, *(&v444 + 1), v445, *(&v445 + 1));
      v463 = v475[1];
      v466 = v475[0];
      if (qword_280BE9260 != -1)
      {
        swift_once();
      }

      v338 = sub_2172A3F14(qword_280C02610);
      v340 = v339;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A8, &unk_21775D4F0);
      swift_allocObject();
      v341 = sub_2172E3DC4();
      v342 = sub_2172A46BC(v341);

      sub_2172E3D54();
      if (*(&v466 + 1) != 1 || v340 || v342 || v486 != 1)
      {
        if (v340)
        {
          v341 = sub_217751DC8();
          sub_2171F0738(v487, &qword_27CB24348, &unk_21775D520);
        }

        else
        {
          sub_2171F0738(v487, &qword_27CB24348, &unk_21775D520);
          v338 = 0;
          v341 = 0;
        }

        sub_2172E3D54();
        v475[0] = v466;
        v475[1] = v463;
        *&v475[2] = v338;
        *(&v475[2] + 1) = v340;
        *&v475[3] = v341;
        *(&v475[3] + 1) = v342;
        memcpy(v487, v475, 0x140uLL);
      }

      sub_2172757C0(v2, v475);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255F8, &qword_21775D500);
      if (swift_dynamicCast())
      {
        *&v466 = v2;
        sub_21726B918(v483, v484);
        v462 = OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_19_9();
        v343 = v432;
        sub_21737C674();
        OUTLINED_FUNCTION_4_14();
        v344 = v467;
        __swift_storeEnumTagSinglePayload(v345, v346, v347, v467);
        v348 = *(v341 + 24);
        OUTLINED_FUNCTION_64_10();
        v350 = sub_21737AD5C(v349);
        v351 = v433;
        *&v463 = v350;
        v348(v343, v200, v469, v469, v324);
        sub_2171F0738(v343, &qword_27CB255F0, &unk_21775D4E0);
        OUTLINED_FUNCTION_133(v351, 1, v344);
        if (v107)
        {
          OUTLINED_FUNCTION_11_24();
          sub_21737DE4C();
          OUTLINED_FUNCTION_133(v351, 1, v344);
          if (!v107)
          {
            sub_2171F0738(v351, &qword_27CB255F0, &unk_21775D4E0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_63_8();
          sub_21737C6CC(v472, v352);
          OUTLINED_FUNCTION_11_24();
          sub_21737DE4C();
        }

        OUTLINED_FUNCTION_11_24();
        sub_21737DE4C();
        OUTLINED_FUNCTION_69_9();
        v353 = OUTLINED_FUNCTION_66_7();
        v354(v353, v470, v469, v469, v471, v463, v468, v338, v351);
        v355 = OUTLINED_FUNCTION_66_7();
        sub_2171F0738(v355, v356, v357);
        v358 = OUTLINED_FUNCTION_66_7();
        memcpy(v358, v475, 0x380uLL);
        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_101_4();
        v360(v359);
        sub_2171F0738(v494, &qword_27CB24350, &unk_21776A5D0);
        memcpy(v494, v475, sizeof(v494));
        OUTLINED_FUNCTION_69_9();
        OUTLINED_FUNCTION_101_4();
        v362(v361);
        sub_2171F0738(v487, &qword_27CB24348, &unk_21775D520);
        memcpy(v487, v475, 0x140uLL);
        __swift_destroy_boxed_opaque_existential_1(v484);
        v2 = v466;
      }

      else
      {
        memset(v483, 0, 40);
        sub_2171F0738(v483, &qword_27CB25600, &qword_21775D508);
      }

      v364 = *v2;
      v363 = v2[1];
      OUTLINED_FUNCTION_19_9();
      v471 = v365;
      v366 = v464;
      sub_21737C674();
      OUTLINED_FUNCTION_66_7();
      sub_2172E3D54();
      sub_2172E3D54();
      sub_2172E3D54();
      *v366 = v364;
      v366[1] = v363;
      v367 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      v368 = *(v367 + 24);
      sub_217751DE8();
      v369 = OUTLINED_FUNCTION_16_0();
      v368(v369);
      nullsub_1();
      memcpy(v483, v482, 0x161uLL);
      v370 = v465;
      sub_21737C674();
      OUTLINED_FUNCTION_146();
      v371 = OUTLINED_FUNCTION_16_0();
      v372(v371);
      __swift_project_boxed_opaque_existential_1(v475, *(&v475[1] + 1));
      v373 = OUTLINED_FUNCTION_5_4();
      v374(v373);
      __swift_destroy_boxed_opaque_existential_1(v475);
      v469 = v480;
      v470 = v479;
      LODWORD(v468) = v481;
      OUTLINED_FUNCTION_146();
      v375 = OUTLINED_FUNCTION_16_0();
      v376(v375);
      __swift_project_boxed_opaque_existential_1(v475, *(&v475[1] + 1));
      v377 = OUTLINED_FUNCTION_5_4();
      v467 = v378(v377);
      *&v466 = v379;
      __swift_destroy_boxed_opaque_existential_1(v475);
      memcpy(v475, v483, 0x168uLL);
      *(&v475[22] + 1) = 0;
      v475[23] = 0uLL;
      nullsub_1();
      OUTLINED_FUNCTION_146();
      v380 = OUTLINED_FUNCTION_16_0();
      v381(v380);
      OUTLINED_FUNCTION_81_7();
      v382 = OUTLINED_FUNCTION_5_4();
      *&v463 = v383(v382);
      __swift_destroy_boxed_opaque_existential_1(v476);
      v384 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      v385 = OUTLINED_FUNCTION_5_4();
      v386(v385, v384);
      OUTLINED_FUNCTION_81_7();
      v387 = OUTLINED_FUNCTION_5_4();
      v389 = v388(v387);
      __swift_destroy_boxed_opaque_existential_1(v476);
      v390 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      v391 = OUTLINED_FUNCTION_5_4();
      v392(v391, v390);
      OUTLINED_FUNCTION_81_7();
      v393 = OUTLINED_FUNCTION_5_4();
      v395 = v394(v393);
      __swift_destroy_boxed_opaque_existential_1(v476);
      v396 = v2[5];
      v397 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v396);
      (*(v397 + 96))(v476, v396, v397);
      v398 = v477;
      v399 = v478;
      __swift_project_boxed_opaque_existential_1(v476, v477);
      v400 = (*(*(v399 + 8) + 88))(v398);
      sub_21737C6CC(v366, type metadata accessor for CloudPlaylist);
      sub_2171F0738(v487, &qword_27CB24348, &unk_21775D520);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v401, v402, v403);
      sub_2171F0738(v494, &qword_27CB24350, &unk_21776A5D0);
      v404 = OUTLINED_FUNCTION_66_7();
      sub_2171F0738(v404, &qword_27CB24358, &unk_21775D510);
      sub_21737C6CC(v472, v471);
      __swift_destroy_boxed_opaque_existential_1(v476);
      v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
      v406 = v370 + v405[9];
      v407 = v469;
      *v406 = v470;
      *(v406 + 8) = v407;
      *(v406 + 16) = v468;
      v408 = (v370 + v405[10]);
      v409 = v466;
      *v408 = v467;
      v408[1] = v409;
      memcpy((v370 + v405[11]), v475, 0x180uLL);
      *(v370 + v405[12]) = v463;
      *(v370 + v405[13]) = v389;
      *(v370 + v405[14]) = v395;
      *(v370 + v405[15]) = v400;
      sub_2171F0738(v488, &qword_27CB24230, &unk_21775E9D0);
      sub_2171F0738(v492, &qword_27CB25310, &unk_21775D3D0);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v410, v411, v412);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v413, v414, v415);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v416, v417, v418);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v419, v420, v421);
      sub_2171F0738(v495, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v422, v423, v424);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v425, v426, v427);
      sub_2171F0738(v496, &qword_27CB25608, &unk_21775D530);
      sub_2171F0738(v497, &unk_27CB28A30, &unk_21775E9C0);
      sub_2171F0738(v500, &qword_27CB25610, &qword_21775D540);
      OUTLINED_FUNCTION_13();
      return;
  }
}