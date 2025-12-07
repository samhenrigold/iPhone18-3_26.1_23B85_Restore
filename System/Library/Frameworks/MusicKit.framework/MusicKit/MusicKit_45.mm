void CloudCurator.init(id:attributes:relationships:views:meta:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  v13 = *v12;
  v14 = type metadata accessor for CloudCurator(0);
  v15 = v14[8];
  *(v9 + v15) = 1;
  *v9 = v7;
  v9[1] = v5;
  sub_2175D3B4C(v3, v9 + v14[5]);
  memcpy(v9 + v14[6], v1, 0x80uLL);
  *(v9 + v14[7]) = v11;
  sub_21733CF74(*(v9 + v15));
  *(v9 + v15) = v13;
  OUTLINED_FUNCTION_13();
}

uint64_t CloudCurator.Attributes.init(artwork:editorialArtwork:editorialNotes:editorialVideo:kind:name:url:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a5;
  memcpy(a9, __src, 0x1B8uLL);
  *(a9 + 440) = a2;
  memcpy((a9 + 448), a3, 0x48uLL);
  *(a9 + 520) = a4;
  *(a9 + 528) = v16;
  *(a9 + 536) = a6;
  *(a9 + 544) = a7;
  v17 = a9 + *(type metadata accessor for CloudCurator.Attributes(0) + 40);

  return sub_21751AF10(a8, v17);
}

uint64_t CloudCurator.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudCurator.Attributes.editorialNotes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 448), sizeof(__dst));
  memcpy(a1, (v1 + 448), 0x48uLL);
  return sub_21738C4B0(__dst, &v4, &qword_27CB25010, &qword_21775B4F8);
}

uint64_t CloudCurator.Attributes.url.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudCurator.Attributes(v2);
  return sub_21738C4B0(v1 + *(v3 + 40), v0, &unk_27CB277C0, &qword_217758DC0);
}

void static CloudCurator.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_111();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - v16;
  OUTLINED_FUNCTION_12_33();
  memcpy(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_39_24();
  memcpy(v21, v3, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v22, v23, v24);
  memcpy(&v99[55], v3, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v25, v26, v27);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v102) == 1)
  {
    OUTLINED_FUNCTION_19_26(v98);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v98) == 1)
    {
      v85 = v6;
      v86 = v12;
      v84 = v8;
      memcpy(v100, v99, sizeof(v100));
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v28, v29, v30, &unk_21776EA00);
      OUTLINED_FUNCTION_39_24();
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v31, v32, v33, &unk_21776EA00);
      sub_2171F0738(v100, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v98, v99, sizeof(v98));
    OUTLINED_FUNCTION_33_1(v101, v100);
    v34 = OUTLINED_FUNCTION_39_24();
    OUTLINED_FUNCTION_33_1(v34, v100);
    v35 = &unk_27CB25008;
    v36 = &unk_21778F850;
    v37 = v98;
LABEL_6:
    sub_2171F0738(v37, v35, v36);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_19_26(v96);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v96) == 1)
  {
    goto LABEL_5;
  }

  v85 = v6;
  v86 = v12;
  v84 = v8;
  OUTLINED_FUNCTION_19_26(v87);
  OUTLINED_FUNCTION_19_26(v98);
  memcpy(v100, v99, sizeof(v100));
  sub_21738C4B0(v101, v88, &qword_27CB25000, &unk_21776EA00);
  v38 = OUTLINED_FUNCTION_39_24();
  sub_21738C4B0(v38, v88, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v40 = v39;
  sub_2171F0738(v87, &qword_27CB25000, &unk_21776EA00);
  memcpy(v88, v99, sizeof(v88));
  sub_2171F0738(v88, &qword_27CB25000, &unk_21776EA00);
  if ((v40 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v41 = *(v3 + 440);
  if (*(v5 + 440))
  {
    if (!v41)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262A00();
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v41)
  {
    goto LABEL_7;
  }

  memcpy(v87, (v5 + 448), 0x48uLL);
  memcpy(v88, (v3 + 448), 0x48uLL);
  v44 = *(v5 + 464);
  v92 = *(v5 + 448);
  v93 = v44;
  v45 = *(v5 + 496);
  v94 = *(v5 + 480);
  v95 = v45;
  v46 = v87[8];
  if (v87[8])
  {
    if (v88[8])
    {
      v47 = *(v3 + 464);
      v89[0] = *(v3 + 448);
      v89[1] = v47;
      v48 = *(v3 + 496);
      v89[2] = *(v3 + 480);
      v89[3] = v48;
      *&v89[4] = v88[8];
      memcpy(v99, v89, 0x48uLL);
      v49 = *(v5 + 464);
      v96[0] = *(v5 + 448);
      v96[1] = v49;
      v50 = *(v5 + 496);
      v96[2] = *(v5 + 480);
      v96[3] = v50;
      v97 = v87[8];
      sub_21738C4B0(v87, v90, &qword_27CB25010, &qword_21775B4F8);
      sub_21738C4B0(v88, v90, &qword_27CB25010, &qword_21775B4F8);
      sub_2172A9570();
      v52 = v51;
      sub_2171F0738(v89, &qword_27CB25010, &qword_21775B4F8);
      v90[0] = v92;
      v90[1] = v93;
      v90[2] = v94;
      v90[3] = v95;
      v91 = v46;
      sub_2171F0738(v90, &qword_27CB25010, &qword_21775B4F8);
      if ((v52 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v88[8])
  {
LABEL_19:
    OUTLINED_FUNCTION_22_2();
    v53 = *(v3 + 464);
    *&v99[9] = *(v3 + 448);
    *&v99[11] = v53;
    v54 = *(v3 + 496);
    *&v99[13] = *(v3 + 480);
    *&v99[15] = v54;
    v99[8] = v46;
    v99[17] = v55;
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v56, v57, v58, &qword_21775B4F8);
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v59, v60, v61, &qword_21775B4F8);
    v35 = &unk_27CB25018;
    v36 = &unk_21775B500;
    v37 = v99;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_22_2();
  v99[8] = 0;
  OUTLINED_FUNCTION_23_5();
  sub_21738C4B0(v62, v63, v64, &qword_21775B4F8);
  OUTLINED_FUNCTION_23_5();
  sub_21738C4B0(v65, v66, v67, &qword_21775B4F8);
  sub_2171F0738(v99, &qword_27CB25010, &qword_21775B4F8);
LABEL_21:
  v68 = *(v3 + 520);
  if (*(v5 + 520))
  {
    if (!v68)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262CB4();
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v68)
  {
    goto LABEL_7;
  }

  v71 = *(v5 + 528);
  v72 = *(v3 + 528);
  if (v71 == 3)
  {
    v73 = v86;
    if (v72 != 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v73 = v86;
    if (v72 == 3 || (sub_2177072D0(v71, v72) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v74 = *(v5 + 544);
  v75 = *(v3 + 544);
  if (!v74)
  {
    if (v75)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

  if (v75)
  {
    v76 = *(v5 + 536) == *(v3 + 536) && v74 == v75;
    if (v76 || (sub_217753058() & 1) != 0)
    {
LABEL_40:
      v77 = *(type metadata accessor for CloudCurator.Attributes(0) + 40);
      v78 = *(v14 + 48);
      sub_21738C4B0(v5 + v77, v17, &unk_27CB277C0, &qword_217758DC0);
      sub_21738C4B0(v3 + v77, &v17[v78], &unk_27CB277C0, &qword_217758DC0);
      v79 = v85;
      if (__swift_getEnumTagSinglePayload(v17, 1, v85) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v17[v78], 1, v79) == 1)
        {
          sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }
      }

      else
      {
        sub_21738C4B0(v17, v0, &unk_27CB277C0, &qword_217758DC0);
        if (__swift_getEnumTagSinglePayload(&v17[v78], 1, v79) != 1)
        {
          v80 = v84;
          (*(v84 + 32))(v73, &v17[v78], v79);
          OUTLINED_FUNCTION_2_98();
          sub_2175D3D04(v81);
          sub_217751F08();
          v82 = *(v80 + 8);
          v82(v73, v79);
          v82(v0, v79);
          sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }

        (*(v84 + 8))(v0, v79);
      }

      v35 = &qword_27CB24840;
      v36 = &unk_217758DD0;
      v37 = v17;
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175D1E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1684957547 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 7107189 && a2 == 0xE300000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_217753058();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2175D2060(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 1684957547;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175D213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175D1E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175D2164@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2174E75C4();
  *a1 = result;
  return result;
}

uint64_t sub_2175D218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D49B0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175D21C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D49B0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudCurator.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v27;
  a24 = v28;
  v29 = v24;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A850, &qword_217783138);
  OUTLINED_FUNCTION_0_0();
  v34 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_111();
  v36 = OUTLINED_FUNCTION_160(v31, v31[3]);
  sub_2175D49B0(v36, v37, v38);
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v39, v40, v41);
  OUTLINED_FUNCTION_12_33();
  memcpy(v42, v43, v44);
  a14 = 0;
  sub_21738C4B0(&v72, v70, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v45 = sub_2172DEEB4();
  OUTLINED_FUNCTION_28_12(v71, &a14, v46, v47, v45);
  memcpy(v70, v71, sizeof(v70));
  if (v25)
  {
    sub_2171F0738(v70, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    sub_2171F0738(v70, &qword_27CB25000, &unk_21776EA00);
    v69 = *(v29 + 440);
    a13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v48 = sub_2175D4B00(&unk_280BE23A0);
    OUTLINED_FUNCTION_28_12(&v69, &a13, v49, v50, v48);
    memcpy(v68, (v29 + 448), sizeof(v68));
    memcpy(v67, (v29 + 448), sizeof(v67));
    a12 = 2;
    sub_21738C4B0(v68, v66, &qword_27CB25010, &qword_21775B4F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    v51 = sub_2172DF104();
    OUTLINED_FUNCTION_28_12(v67, &a12, v52, v53, v51);
    memcpy(v66, v67, sizeof(v66));
    sub_2171F0738(v66, &qword_27CB25010, &qword_21775B4F8);
    v65 = *(v29 + 520);
    a11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v54 = sub_2175D4A04();
    v57 = OUTLINED_FUNCTION_28_12(&v65, &a11, v55, v56, v54);
    LOBYTE(v65) = *(v29 + 528);
    a11 = 4;
    sub_2175D4AAC(v57, v58, v59);
    sub_217752F38();
    LOBYTE(v65) = 5;
    sub_217752EF8();
    v60 = *(type metadata accessor for CloudCurator.Attributes(0) + 40);
    LOBYTE(v65) = 6;
    sub_2177516D8();
    OUTLINED_FUNCTION_2_98();
    v62 = sub_2175D3D04(v61);
    OUTLINED_FUNCTION_28_12(v29 + v60, &v65, v63, v64, v62);
  }

  (*(v34 + 8))(v26, v32);
  OUTLINED_FUNCTION_170();
}

void CloudCurator.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  memcpy(v23, v0, sizeof(v23));
  v13 = *(v0 + 432);
  memcpy(v24, v0, sizeof(v24));
  v25 = v13;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v24) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v22, v23, sizeof(v22));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    v14 = OUTLINED_FUNCTION_179();
    sub_217265A08(v14, v15);
  }

  if (*(v0 + 440))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 512))
  {
    v16 = *(v0 + 464);
    v22[0] = *(v0 + 448);
    v22[1] = v16;
    v17 = *(v0 + 496);
    v22[2] = *(v0 + 480);
    v22[3] = v17;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)(v2);
    sub_217751DE8();
    v18 = OUTLINED_FUNCTION_179();
    sub_217265A08(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 520))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 528) == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  if (*(v0 + 544))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v20 = type metadata accessor for CloudCurator.Attributes(0);
  sub_21738C4B0(v0 + *(v20 + 40), v12, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v5 + 32))(v9, v12, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_2_98();
    sub_2175D3D04(v21);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_13();
}

void CloudCurator.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v69 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = &v66 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A860, &qword_217783140);
  OUTLINED_FUNCTION_0_0();
  v70 = v34;
  v71 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v36 = type metadata accessor for CloudCurator.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v72 = (v39 - v38);
  v73 = v28;
  v40 = OUTLINED_FUNCTION_160(v28, v28[3]);
  sub_2175D49B0(v40, v41, v42);
  sub_2177532C8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    v67 = v36;
    v68 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    a14 = 0;
    sub_2172DF600();
    sub_217752E58();
    v43 = v72;
    memcpy(v72, v76, 0x1B8uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    LOBYTE(v74) = 1;
    v44 = sub_2175D4B00(&unk_280BE2398);
    OUTLINED_FUNCTION_14_50(v44, &v74, v45, v46, v44);
    v43[55] = v75[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    a13 = 2;
    v47 = sub_2172DF7DC();
    OUTLINED_FUNCTION_14_50(v47, &a13, v48, v49, v47);
    memcpy(v43 + 56, v75, 0x48uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    a12 = 3;
    v50 = sub_2175D4B80();
    v53 = OUTLINED_FUNCTION_14_50(v50, &a12, v51, v52, v50);
    v43[65] = v74;
    a12 = 4;
    sub_21738B1DC(v53, v54, v55);
    sub_217752E58();
    *(v43 + 528) = v74;
    LOBYTE(v74) = 5;
    v43[67] = sub_217752E18();
    v43[68] = v56;
    sub_2177516D8();
    LOBYTE(v74) = 6;
    OUTLINED_FUNCTION_2_98();
    v58 = sub_2175D3D04(v57);
    v59 = v68;
    OUTLINED_FUNCTION_14_50(v58, &v74, v60, v61, v58);
    v62 = OUTLINED_FUNCTION_8_63();
    v63(v62);
    sub_21751AF10(v59, v43 + *(v67 + 40));
    OUTLINED_FUNCTION_4_92();
    sub_2175D494C(v43, v69, v64);
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_6_73();
    sub_2175D3CAC(v43, v65);
  }

  OUTLINED_FUNCTION_170();
}

void CloudCurator.Relationships.CodingKeys.init(rawValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

void CloudCurator.Relationships.CodingKeys.init(stringValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

uint64_t sub_2175D309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C620(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175D30D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C620(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudCurator.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_1(a1, v7);
  OUTLINED_FUNCTION_33_1(a2, v9);
  if (v8)
  {
    sub_21738C4B0(v7, v6, &qword_27CB242C0, &unk_21775D650);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE118(v6, v5);
      sub_2171F0738(v5, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
      return (v3 & 1) != 0;
    }

    sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
  }

  else if (!v9[2])
  {
    sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
    return 1;
  }

  sub_2171F0738(v7, &qword_27CB25198, &qword_21775B550);
  return 0;
}

uint64_t CloudCurator.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A868, &qword_217783148);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_0();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C620(v7, v8, v9);
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2175D4DA8(&qword_27CB251B8);
  sub_217752F38();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudCurator.Relationships.hash(into:)(uint64_t a1)
{
  sub_21738C4B0(v1, __src, &qword_27CB242C0, &unk_21775D650);
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE724(a1);
  return sub_2171F0738(v4, &qword_27CB242C8, &unk_217758970);
}

uint64_t CloudCurator.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_21738C4B0(v0, __src, &qword_27CB242C0, &unk_21775D650);
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

void CloudCurator.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v16 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A870, &qword_217783150);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8 - 8];
  v10 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21738C620(v10, v11, v12);
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2175D4DA8(&qword_27CB25200);
    sub_217752E58();
    (*(v6 + 8))(v9, v4);
    memcpy(v15, v14, sizeof(v15));
    memcpy(v16, v15, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175D3710(uint64_t a1)
{
  sub_2177531E8();
  sub_21738C4B0(v1, __src, &qword_27CB242C0, &unk_21775D650);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v5);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175D37C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D4E2C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175D37FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D4E2C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudCurator.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A878, &qword_217783158);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175D4E2C(v7, v8, v9);
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

MusicKit::CloudCurator::Metadata __swiftcall CloudCurator.Metadata.init(snippets:)(Swift::OpaquePointer_optional snippets)
{
  rawValue = snippets.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.snippets.value._rawValue = v4;
  result.snippets.is_nil = v5;
  return result;
}

uint64_t static CloudCurator.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_217751DE8();
      sub_21726F358();
      v4 = v3;

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2175D3AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4FE0[0];
  if (!qword_280BE4FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE4FE0);
  }

  return result;
}

uint64_t sub_2175D3B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudCurator.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2175D3BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4FA0;
  if (!qword_280BE4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4FA0);
  }

  return result;
}

unint64_t sub_2175D3C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4FC8;
  if (!qword_280BE4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4FC8);
  }

  return result;
}

unint64_t sub_2175D3C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4F78;
  if (!qword_280BE4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4F78);
  }

  return result;
}

uint64_t sub_2175D3CAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2175D3D04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2175D3D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D4E80(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175D3D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D4E80(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudCurator.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A888, &qword_217783160);
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_111();
  v27 = OUTLINED_FUNCTION_160(v22, v22[3]);
  sub_2175D4E80(v27, v28, v29);
  sub_217751DE8();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  sub_2175D4ED4(&qword_27CB25298);
  sub_217752F38();

  (*(v25 + 8))(v20, v23, v30);
  OUTLINED_FUNCTION_170();
}

void CloudCurator.Metadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    OUTLINED_FUNCTION_119();

    sub_21727DDE0(a1, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CloudCurator.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727DDE0(v8, v1, v2, v3, v4, v5, v6);
  }

  return sub_217753238();
}

void CloudCurator.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A898, &qword_217783168);
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_131_0();
  v20 = OUTLINED_FUNCTION_160(v13, v13[3]);
  sub_2175D4E80(v20, v21, v22);
  sub_2177532C8();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2175D4ED4(&qword_280BE2358);
    sub_217752E58();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCurator.attributes.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudCurator(v2);
  OUTLINED_FUNCTION_4_92();
  return sub_2175D494C(v1 + v3, v0, v4);
}

uint64_t CloudCurator.relationships.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudCurator(v2);
  return sub_21738C4B0(v1 + *(v3 + 24), v0, &qword_27CB24498, &unk_217758960);
}

uint64_t CloudCurator.views.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudCurator(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudCurator.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(v1 + *(type metadata accessor for CloudCurator(v2) + 32));
  *v0 = v3;

  return sub_217221020(v3);
}

uint64_t CloudCurator.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudCurator(0) + 32);
  result = sub_21733CF74(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_2175D4398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217759200;
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4C00;
  v2 = byte_280BE4C08;
  *(v0 + 32) = qword_280BE4BF8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280BE7E50;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = unk_280BE7E60;
  v5 = byte_280BE7E68;
  *(v0 + 56) = qword_280BE7E58;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  off_280BE4FB8 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175D44B4(char a1)
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

uint64_t sub_2175D4548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2175D459C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D3AF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175D45D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175D3AF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudCurator.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = type metadata accessor for CloudCurator(0);
  CloudCurator.Attributes.hash(into:)();
  sub_21738C4B0(v1 + *(v3 + 24), __src, &qword_27CB24498, &unk_217758960);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    sub_21738C4B0(__dst, v11, &qword_27CB242C0, &unk_21775D650);
    if (v11[2])
    {
      memcpy(v10, v11, sizeof(v10));
      OUTLINED_FUNCTION_24();
      sub_2172DE724(a1);
      sub_2171F0738(v10, &qword_27CB242C8, &unk_217758970);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_2172831A8(__dst);
  }

  sub_217753208();
  v4 = *(v1 + *(v3 + 32));
  if (v4 == 1 || (OUTLINED_FUNCTION_24(), !v4))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0(a1, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_2175D4788(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2175D4840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudCurator.convertToCloudRawCurator()()
{
  OUTLINED_FUNCTION_1_104();
  sub_2175D494C(v1, v3, v2);
  type metadata accessor for CloudRawCurator(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2175D48DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25330, &unk_21775E9B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2175D494C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

unint64_t sub_2175D49B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50A8;
  if (!qword_280BE50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50A8);
  }

  return result;
}

unint64_t sub_2175D4A04()
{
  result = qword_280BE23B0;
  if (!qword_280BE23B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_2175D4C28(&qword_280BE4328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE23B0);
  }

  return result;
}

unint64_t sub_2175D4AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A858;
  if (!qword_27CB2A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A858);
  }

  return result;
}

unint64_t sub_2175D4B00(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE8, &qword_2177595F0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175D4B80()
{
  result = qword_280BE23A8;
  if (!qword_280BE23A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_2175D4C28(&qword_280BE4320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE23A8);
  }

  return result;
}

unint64_t sub_2175D4C28(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243D8, &qword_217788BC0);
    sub_2175D3D04(&unk_280BE3CA8);
    v3 = sub_2175D3D04(&unk_280BE3CB0);
    result = OUTLINED_FUNCTION_44(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175D4CE8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2175D3D04(&unk_27CB251C8);
    v3 = sub_2175D3D04(&unk_27CB251D0);
    result = OUTLINED_FUNCTION_44(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175D4DA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2175D4CE8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175D4E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A880;
  if (!qword_27CB2A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A880);
  }

  return result;
}

unint64_t sub_2175D4E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A890;
  if (!qword_27CB2A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A890);
  }

  return result;
}

unint64_t sub_2175D4ED4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BD8, &unk_2177595E0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175D4F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A8A8;
  if (!qword_27CB2A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8A8);
  }

  return result;
}

unint64_t sub_2175D4FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A8B0;
  if (!qword_27CB2A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8B0);
  }

  return result;
}

unint64_t sub_2175D5044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A8B8;
  if (!qword_27CB2A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8B8);
  }

  return result;
}

unint64_t sub_2175D509C()
{
  result = qword_27CB2A8C0;
  if (!qword_27CB2A8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A8C8, &qword_217783318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8C0);
  }

  return result;
}

unint64_t sub_2175D5104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A8D0;
  if (!qword_27CB2A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8D0);
  }

  return result;
}

unint64_t sub_2175D515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A8D8;
  if (!qword_27CB2A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8D8);
  }

  return result;
}

unint64_t sub_2175D51B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A8E0;
  if (!qword_27CB2A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8E0);
  }

  return result;
}

void sub_2175D536C(uint64_t a1)
{
  type metadata accessor for CloudCurator.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE4F98, &type metadata for CloudCurator.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE4FC0, &type metadata for CloudCurator.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE4F70, &type metadata for CloudCurator.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2175D5488(uint64_t a1)
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  if (v1 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v2 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE4308, &qword_27CB25040, &qword_21775B518);
      if (v3 <= 0x3F)
      {
        sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
        if (v4 <= 0x3F)
        {
          sub_2172E2E58(319, &qword_280BE4F80, &type metadata for CloudCurator.Kind);
          if (v5 <= 0x3F)
          {
            sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_2172E2DB0(319);
              if (v7 <= 0x3F)
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

_BYTE *sub_2175D5644(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudCurator.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudCurator.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175D58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A8F8;
  if (!qword_27CB2A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A8F8);
  }

  return result;
}

unint64_t sub_2175D5914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A900;
  if (!qword_27CB2A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A900);
  }

  return result;
}

unint64_t sub_2175D596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A908;
  if (!qword_27CB2A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A908);
  }

  return result;
}

unint64_t sub_2175D59C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A910;
  if (!qword_27CB2A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A910);
  }

  return result;
}

unint64_t sub_2175D5A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A918;
  if (!qword_27CB2A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A918);
  }

  return result;
}

unint64_t sub_2175D5A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A920;
  if (!qword_27CB2A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A920);
  }

  return result;
}

unint64_t sub_2175D5ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A928;
  if (!qword_27CB2A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A928);
  }

  return result;
}

unint64_t sub_2175D5B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5098;
  if (!qword_280BE5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5098);
  }

  return result;
}

unint64_t sub_2175D5B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50A0;
  if (!qword_280BE50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50A0);
  }

  return result;
}

unint64_t sub_2175D5BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4FD0;
  if (!qword_280BE4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4FD0);
  }

  return result;
}

unint64_t sub_2175D5C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4FD8;
  if (!qword_280BE4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4FD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

void RecordLabelPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v27 = v0;
  v28 = v1;
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memcpy(__dst, v13, sizeof(__dst));
  v14 = *v10;
  v15 = v10[1];
  v16 = *(v10 + 16);
  sub_2172A497C(__src);
  memcpy(v12, __src, 0x221uLL);
  *(v12 + 552) = 0u;
  *(v12 + 568) = 0u;
  *(v12 + 584) = 0u;
  memcpy(v12 + 600, __src, 0x221uLL);
  v17 = type metadata accessor for RecordLabelPropertyProvider(0);
  v12[72] = 0u;
  v18 = v17[11];
  v19 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v12 + v18, 1, 1, v19);
  v20 = v12 + v17[12];
  *(v20 + 12) = 0;
  *(v20 + 4) = 0u;
  *(v20 + 5) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = v12 + v17[13];
  *(v21 + 12) = 0;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v12 + v17[14]) = 0;
  if (qword_27CB23D38 != -1)
  {
    swift_once();
  }

  v22 = qword_27CB8A2E0;
  if (qword_27CB8A2E0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v25 = sub_217752D28();

    v22 = v25;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v12 + v17[15]) = v22;
  v23 = (v12 + v17[18]);
  memcpy(v12 + v17[16], __dst, 0x161uLL);
  v24 = v12 + v17[17];
  *v24 = v14;
  *(v24 + 1) = v15;
  v24[16] = v16;
  *v23 = v8;
  v23[1] = v6;
  *(v12 + v17[19]) = v4;
  *(v12 + v17[20]) = v26;
  *(v12 + v17[21]) = v27;
  *(v12 + v17[22]) = v28;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for RecordLabelPropertyProvider(uint64_t a1)
{
  result = qword_27CB2A938;
  if (!qword_27CB2A938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecordLabelPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *RecordLabelPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

void RecordLabelPropertyProvider.shortDescription.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 568) = v2;
  *(v1 + 576) = v0;
}

void RecordLabelPropertyProvider.standardDescription.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 584) = v2;
  *(v1 + 592) = v0;
}

uint64_t RecordLabelPropertyProvider.mainUberArtwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 600), 0x221uLL);
  memcpy(a1, (v1 + 600), 0x221uLL);
  return sub_21726A630(__dst, v4, &qword_27CB24400, &unk_21775E9A0);
}

void *RecordLabelPropertyProvider.mainUberArtwork.setter(const void *a1)
{
  memcpy(v4, (v1 + 600), 0x221uLL);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + 600), a1, 0x221uLL);
}

void RecordLabelPropertyProvider.name.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 1152) = v2;
  *(v1 + 1160) = v0;
}

uint64_t RecordLabelPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for RecordLabelPropertyProvider(0);

  return sub_217751DE8();
}

void RecordLabelPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_22_48() + 56);

  *(v1 + v2) = v0;
}

void RecordLabelPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A930, &qword_217783C68);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177B24F0);
    v46[0] = v3;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_55_12();
    v42 = 47;
    goto LABEL_64;
  }

  v10 = qword_27CB23B10;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_14_51(&qword_27CB23B10);
  }

  if (OUTLINED_FUNCTION_168(qword_27CB8A248))
  {
    memcpy(v46, v1, 0x221uLL);
    v11 = v1;
LABEL_6:
    memcpy(v47, v11, 0x221uLL);
    OUTLINED_FUNCTION_104(v47);
    if (v12)
    {

      v18 = 0;
      v17 = 0;
    }

    else
    {
      v17 = swift_allocObject();
      memcpy(v45, v46, 0x221uLL);
      sub_217284028(v45, &v44);

      memcpy((v17 + 16), v47, 0x221uLL);
      v18 = &type metadata for Artwork;
    }

    *v5 = v17;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v18;
    goto LABEL_62;
  }

  v13 = qword_27CB23B18;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_1_105(&qword_27CB23B18);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A250);
  OUTLINED_FUNCTION_161();
  if (v13)
  {
    v14 = v1[69];
    if (v14)
    {
      v15 = &qword_27CB24BE8;
      v16 = &qword_2177595F0;
LABEL_20:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      sub_217751DE8();
LABEL_61:

      *v5 = v14;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = v20;
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v19 = qword_27CB23B20;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_0_113(&qword_27CB23B20);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A258);
  OUTLINED_FUNCTION_161();
  if (v19)
  {
    v14 = v1[70];
    if (v14)
    {
      v15 = &qword_27CB24BE0;
      v16 = &unk_2177657E0;
      goto LABEL_20;
    }

LABEL_60:
    v20 = 0;
    goto LABEL_61;
  }

  v21 = qword_27CB23B38;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_13_52(&qword_27CB23B38);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A270);
  OUTLINED_FUNCTION_161();
  if (v21)
  {
    v22 = v1[72];
    if (v22)
    {
      v23 = v1[71];
LABEL_31:
      sub_217751DE8();
      v25 = MEMORY[0x277D837D0];
LABEL_33:

      *v5 = v23;
      v5[1] = v22;
      v5[2] = 0;
      v5[3] = v25;
      goto LABEL_62;
    }

    goto LABEL_32;
  }

  v24 = qword_27CB23B40;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_12_46(&qword_27CB23B40);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A278);
  OUTLINED_FUNCTION_161();
  if (v24)
  {
    v22 = v1[74];
    if (v22)
    {
      v23 = v1[73];
      goto LABEL_31;
    }

LABEL_32:
    v25 = 0;
    v23 = 0;
    goto LABEL_33;
  }

  v26 = qword_27CB23B28;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_11_62(&qword_27CB23B28);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A260);
  OUTLINED_FUNCTION_161();
  if (v26)
  {
    memcpy(v46, v1 + 75, 0x221uLL);
    v11 = v1 + 75;
    goto LABEL_6;
  }

  v27 = qword_27CB23B30;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_10_53(&qword_27CB23B30);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A268);
  OUTLINED_FUNCTION_161();
  if (v27)
  {
    v22 = v1[145];
    if (!v22)
    {
      v23 = 0;
      v25 = 0;
      goto LABEL_33;
    }

    v23 = v1[144];
    goto LABEL_31;
  }

  v28 = qword_27CB23B48;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_9_61(&qword_27CB23B48);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A280);
  OUTLINED_FUNCTION_161();
  if (v28)
  {
    v29 = type metadata accessor for RecordLabelPropertyProvider(0);
    sub_21726A630(v1 + *(v29 + 44), v9, &unk_27CB277C0, &qword_217758DC0);
    v30 = sub_2177516D8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v30) == 1)
    {

      sub_2171F0738(v9, &unk_27CB277C0, &qword_217758DC0);
      memset(v47, 0, 32);
    }

    else
    {
      *(&v47[1] + 1) = v30;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
      (*(*(v30 - 8) + 32))(boxed_opaque_existential_0, v9, v30);
    }

    v34 = v47[1];
    *v5 = v47[0];
    *(v5 + 1) = v34;
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
    OUTLINED_FUNCTION_60(v31);
    v32 = OUTLINED_FUNCTION_2_99();
    OUTLINED_FUNCTION_168(v32);
    OUTLINED_FUNCTION_6_23();

    OUTLINED_FUNCTION_60(v31);
    v35 = OUTLINED_FUNCTION_3_93();
    v36 = OUTLINED_FUNCTION_168(v35);

    if ((v36 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
      swift_allocObject();
      v40 = OUTLINED_FUNCTION_54_0();
      v41 = OUTLINED_FUNCTION_168(v40);

      if ((v41 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_52_17();
          sub_217752AA8();
          OUTLINED_FUNCTION_49_16();
          MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
          v46[0] = v3;
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_55_12();
          v42 = 77;
LABEL_64:
          v43 = v42;
          OUTLINED_FUNCTION_231("Fatal error");
          __break(1u);
        }
      }

      v14 = *(v1 + *(type metadata accessor for RecordLabelPropertyProvider(0) + 56));
      if (v14)
      {
        v15 = &qword_27CB24BD8;
        v16 = &unk_2177595E0;
        goto LABEL_20;
      }

      goto LABEL_60;
    }

    v37 = *(type metadata accessor for RecordLabelPropertyProvider(0) + 52);
    sub_21726A630(v1 + v37, v47, &qword_27CB25318, &qword_2177657C0);
    if (*(&v47[5] + 1))
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
      v39 = swift_allocObject();
      memcpy((v39 + 16), v47, 0x68uLL);
    }

    else
    {

      sub_2171F0738(v47, &qword_27CB25318, &qword_2177657C0);
      v39 = 0;
      v38 = 0;
    }

    *v5 = v39;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v38;
  }

LABEL_62:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175D6D48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_21726A630(a1, &v4, &qword_27CB2AD40, &qword_2177583F0);

  return RecordLabelPropertyProvider.subscript.setter();
}

uint64_t RecordLabelPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A930, &qword_217783C68);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177B24F0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    goto LABEL_19;
  }

  v1 = qword_27CB23B18;
  swift_retain_n();
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_1_105(&qword_27CB23B18);
  }

  v2 = OUTLINED_FUNCTION_139_7(qword_27CB8A250);

  if (v2)
  {
    swift_getKeyPath(asc_217783CF8);
    OUTLINED_FUNCTION_15_6();
    sub_217351C74(v3, v4);
    goto LABEL_17;
  }

  v5 = qword_27CB23B20;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_0_113(&qword_27CB23B20);
  }

  v6 = OUTLINED_FUNCTION_139_7(qword_27CB8A258);

  if (v6)
  {
    swift_getKeyPath(asc_217783CD8);
    OUTLINED_FUNCTION_15_6();
    sub_217351C78(v7, v8);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
  swift_initStackObject();
  v9 = OUTLINED_FUNCTION_2_99();
  v10 = OUTLINED_FUNCTION_139_7(v9);

  if (v10)
  {
    swift_getKeyPath(a8_0);
LABEL_14:
    OUTLINED_FUNCTION_15_6();
    sub_217351CA0(v13, v14);
    goto LABEL_17;
  }

  swift_initStackObject();
  v11 = OUTLINED_FUNCTION_3_93();
  v12 = OUTLINED_FUNCTION_139_7(v11);

  if (v12)
  {
    swift_getKeyPath(aP_2);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
  swift_initStackObject();
  v15 = OUTLINED_FUNCTION_54_0();
  v16 = OUTLINED_FUNCTION_139_7(v15);

  if ((v16 & 1) == 0)
  {
    while (1)
    {
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
      type metadata accessor for AnyMusicProperty();
      sub_217752C78();
      OUTLINED_FUNCTION_217_0();
LABEL_19:
      OUTLINED_FUNCTION_231("Fatal error");
      __break(1u);
    }
  }

  swift_getKeyPath(aP_3);
  OUTLINED_FUNCTION_15_6();
  sub_217351C8C(v17, v18);
LABEL_17:

  return sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
}

void (*RecordLabelPropertyProvider.subscript.modify())(void **a1, char a2)
{
  OUTLINED_FUNCTION_143();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  RecordLabelPropertyProvider.subscript.getter();
  return sub_2175D7158;
}

void sub_2175D7158(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    RecordLabelPropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    RecordLabelPropertyProvider.subscript.setter();
  }

  free(v2);
}

void RecordLabelPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DE0, &qword_21777BE00);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v12 = type metadata accessor for RecordLabelPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27FA8, &qword_21776BF00);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000031, 0x80000002177B2520);
    v34[0] = v6;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v7 + 216), v31, v32);
    sub_217753018();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v33 = 108;
    goto LABEL_28;
  }

  v1 = v17;
  sub_2171FF30C(v4, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_2171F0738(v11, &qword_27CB29DE0, &qword_21777BE00);
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000034, 0x80000002177B2560);
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v33 = 111;
    goto LABEL_28;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_21758BAF8(v11, v16);
  v18 = qword_27CB23B18;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_1_105(&qword_27CB23B18);
  }

  v19 = OUTLINED_FUNCTION_174(qword_27CB8A250);

  if (v19)
  {

    v20 = *(v16 + 552);
    sub_217751DE8();
    sub_21758BA9C(v16);
    if (!v20)
    {
      v20 = sub_217751DE8();
    }

    *(v2 + 552) = v20;
  }

  else
  {
    v21 = qword_27CB23B20;

    if (v21 != -1)
    {
      OUTLINED_FUNCTION_0_113(&qword_27CB23B20);
    }

    v22 = OUTLINED_FUNCTION_174(qword_27CB8A258);

    if (v22)
    {

      v23 = *(v16 + 560);
      sub_217751DE8();
      sub_21758BA9C(v16);
      if (!v23)
      {
        v23 = sub_217751DE8();
      }

      *(v2 + 560) = v23;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
      swift_initStackObject();
      v24 = OUTLINED_FUNCTION_2_99();
      v25 = OUTLINED_FUNCTION_174(v24);

      if (v25)
      {

        sub_21726A630(v16 + *(v12 + 48), v34, &qword_27CB25318, &qword_2177657C0);
        sub_21758BA9C(v16);
        if (v34[11])
        {
          memcpy(v35, v34, 0x68uLL);
        }

        else
        {
          sub_21726A630(v2 + *(v12 + 48), v35, &qword_27CB25318, &qword_2177657C0);
          if (v34[11])
          {
            sub_2171F0738(v34, &qword_27CB25318, &qword_2177657C0);
          }
        }

        sub_21733BBDC(v35, v2 + *(v12 + 48), &qword_27CB25318, &qword_2177657C0);
      }

      else
      {
        swift_initStackObject();
        v26 = OUTLINED_FUNCTION_3_93();
        OUTLINED_FUNCTION_174(v26);
        OUTLINED_FUNCTION_6_23();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
        swift_initStackObject();
        v27 = OUTLINED_FUNCTION_54_0();
        v28 = OUTLINED_FUNCTION_174(v27);

        if ((v28 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_28_23();
            sub_217752AA8();
            MEMORY[0x21CEA23B0](0xD000000000000028, 0x80000002177B25A0);
            v34[0] = v1;
            sub_217752C78();
            OUTLINED_FUNCTION_217_0();
            OUTLINED_FUNCTION_30_22();
            v33 = 129;
LABEL_28:
            v34[0] = v33;
            OUTLINED_FUNCTION_231("Fatal error");
            __break(1u);
          }
        }

        v29 = *(v16 + *(v12 + 56));
        sub_217751DE8();
        sub_21758BA9C(v16);
        v30 = *(v12 + 56);
        if (!v29)
        {
          v29 = sub_217751DE8();
        }

        *(v2 + v30) = v29;
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175D7824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217783C50;
  if (qword_27CB23B10 != -1)
  {
    OUTLINED_FUNCTION_14_51(&qword_27CB23B10);
  }

  *(v0 + 32) = qword_27CB8A248;
  v1 = qword_27CB23B18;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_1_105(&qword_27CB23B18);
  }

  *(v0 + 40) = qword_27CB8A250;
  v2 = qword_27CB23B20;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_0_113(&qword_27CB23B20);
  }

  *(v0 + 48) = qword_27CB8A258;
  v3 = qword_27CB23B38;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_13_52(&qword_27CB23B38);
  }

  *(v0 + 56) = qword_27CB8A270;
  v4 = qword_27CB23B40;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_12_46(&qword_27CB23B40);
  }

  *(v0 + 64) = qword_27CB8A278;
  v5 = qword_27CB23B28;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_11_62(&qword_27CB23B28);
  }

  *(v0 + 72) = qword_27CB8A260;
  v6 = qword_27CB23B30;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_10_53(&qword_27CB23B30);
  }

  *(v0 + 80) = qword_27CB8A268;
  v7 = qword_27CB23B48;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_9_61(&qword_27CB23B48);
  }

  *(v0 + 88) = qword_27CB8A280;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
  OUTLINED_FUNCTION_60(v8);
  *(v0 + 96) = OUTLINED_FUNCTION_2_99();
  OUTLINED_FUNCTION_60(v8);
  *(v0 + 104) = OUTLINED_FUNCTION_3_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
  swift_allocObject();
  *(v0 + 112) = OUTLINED_FUNCTION_54_0();
  qword_27CB8A2E0 = v0;
}

uint64_t RecordLabelPropertyProvider.knownProperties.getter()
{
  type metadata accessor for RecordLabelPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RecordLabelPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_49_27() + 64);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *RecordLabelPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_22_48() + 64);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t RecordLabelPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_49_27() + 68));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void RecordLabelPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RecordLabelPropertyProvider(0) + 68);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t RecordLabelPropertyProvider.href.getter()
{
  type metadata accessor for RecordLabelPropertyProvider(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void RecordLabelPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = (v1 + *(type metadata accessor for RecordLabelPropertyProvider(0) + 72));

  *v3 = v2;
  v3[1] = v0;
}

uint64_t RecordLabelPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for RecordLabelPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RecordLabelPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for RecordLabelPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RecordLabelPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for RecordLabelPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RecordLabelPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for RecordLabelPropertyProvider(0);

  return sub_217751DE8();
}

void static RecordLabelPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v2 = v1;
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v127 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v127 - v18;
  v20 = OUTLINED_FUNCTION_32_36();
  memcpy(v20, v4, 0x221uLL);
  v21 = OUTLINED_FUNCTION_162();
  memcpy(v21, v2, 0x221uLL);
  v22 = OUTLINED_FUNCTION_93_0();
  memcpy(v22, v4, 0x221uLL);
  memcpy(&v140[69], v2, 0x221uLL);
  memcpy(v141, v4, 0x221uLL);
  OUTLINED_FUNCTION_104(v141);
  if (v29)
  {
    OUTLINED_FUNCTION_20_40();
    OUTLINED_FUNCTION_104(v138);
    if (!v29)
    {
      v34 = OUTLINED_FUNCTION_32_36();
      OUTLINED_FUNCTION_157(v34, v139);
      v35 = OUTLINED_FUNCTION_162();
      v36 = v139;
LABEL_10:
      OUTLINED_FUNCTION_157(v35, v36);
      goto LABEL_11;
    }

    v129 = v7;
    v130 = v5;
    v23 = OUTLINED_FUNCTION_16_56();
    OUTLINED_FUNCTION_6_74(v23);
    v24 = &qword_27CB24400;
    v25 = OUTLINED_FUNCTION_32_36();
    OUTLINED_FUNCTION_40_2(v25, v137);
    v26 = OUTLINED_FUNCTION_162();
    OUTLINED_FUNCTION_40_2(v26, v137);
    v27 = OUTLINED_FUNCTION_16_56();
    sub_2171F0738(v27, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_16_56();
    OUTLINED_FUNCTION_6_74(v28);
    OUTLINED_FUNCTION_6_74(v137);
    OUTLINED_FUNCTION_20_40();
    OUTLINED_FUNCTION_104(v138);
    if (v29)
    {
      OUTLINED_FUNCTION_6_74(v136);
      v30 = OUTLINED_FUNCTION_32_36();
      OUTLINED_FUNCTION_25_47(v30);
      v31 = OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_25_47(v31);
      v32 = OUTLINED_FUNCTION_16_56();
      OUTLINED_FUNCTION_25_47(v32);
      v33 = v136;
LABEL_9:
      sub_217284084(v33);
LABEL_11:
      memcpy(v138, v140, 0x449uLL);
      v37 = &unk_27CB25C18;
      v38 = &unk_21775ECE0;
      v39 = v138;
LABEL_12:
      sub_2171F0738(v39, v37, v38);
      goto LABEL_13;
    }

    v129 = v7;
    v130 = v5;
    memcpy(v136, &v140[69], 0x221uLL);
    v40 = OUTLINED_FUNCTION_32_36();
    OUTLINED_FUNCTION_42_32(v40);
    v41 = OUTLINED_FUNCTION_162();
    OUTLINED_FUNCTION_42_32(v41);
    v42 = OUTLINED_FUNCTION_16_56();
    OUTLINED_FUNCTION_42_32(v42);
    LOBYTE(v24) = static Artwork.== infix(_:_:)(v137, v136);
    memcpy(v134, v136, 0x221uLL);
    sub_217284084(v134);
    memcpy(v135, v137, 0x221uLL);
    sub_217284084(v135);
    OUTLINED_FUNCTION_6_74(v136);
    sub_2171F0738(v136, &qword_27CB24400, &unk_21775E9A0);
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v43 = v2[69];
  if (v4[69])
  {
    if (!v43)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262A00();
    OUTLINED_FUNCTION_6_23();

    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v43)
  {
    goto LABEL_13;
  }

  v44 = v2[70];
  if (v4[70])
  {
    if (!v44)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262CB4();
    OUTLINED_FUNCTION_6_23();

    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v44)
  {
    goto LABEL_13;
  }

  v45 = v4[72];
  v46 = v2[72];
  if (v45)
  {
    if (!v46)
    {
      goto LABEL_13;
    }

    v47 = v4[71] == v2[71] && v45 == v46;
    if (!v47 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v46)
  {
    goto LABEL_13;
  }

  v48 = v4[74];
  v49 = v2[74];
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_13;
    }

    v50 = v4[73] == v2[73] && v48 == v49;
    if (!v50 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v49)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_47_23(v136);
  memcpy(v137, v2 + 75, 0x221uLL);
  v51 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_47_23(v51);
  memcpy(&v140[69], v2 + 75, 0x221uLL);
  v52 = OUTLINED_FUNCTION_16_56();
  OUTLINED_FUNCTION_47_23(v52);
  v53 = OUTLINED_FUNCTION_16_56();
  OUTLINED_FUNCTION_104(v53);
  if (v29)
  {
    OUTLINED_FUNCTION_20_40();
    OUTLINED_FUNCTION_104(v138);
    if (v29)
    {
      OUTLINED_FUNCTION_6_74(v135);
      OUTLINED_FUNCTION_40_2(v136, v134);
      OUTLINED_FUNCTION_40_2(v137, v134);
      sub_2171F0738(v135, &qword_27CB24400, &unk_21775E9A0);
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_25_47(v136);
    v35 = v137;
    v36 = v135;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_74(v135);
  OUTLINED_FUNCTION_6_74(v134);
  OUTLINED_FUNCTION_20_40();
  OUTLINED_FUNCTION_104(v138);
  if (v54)
  {
    OUTLINED_FUNCTION_6_74(v133);
    OUTLINED_FUNCTION_157(v136, v132);
    OUTLINED_FUNCTION_157(v137, v132);
    OUTLINED_FUNCTION_157(v135, v132);
    v33 = v133;
    goto LABEL_9;
  }

  memcpy(v133, &v140[69], 0x221uLL);
  OUTLINED_FUNCTION_40_29(v136);
  OUTLINED_FUNCTION_40_29(v137);
  OUTLINED_FUNCTION_40_29(v135);
  v55 = static Artwork.== infix(_:_:)(v134, v133);
  memcpy(v131, v133, 0x221uLL);
  sub_217284084(v131);
  memcpy(v132, v134, 0x221uLL);
  sub_217284084(v132);
  OUTLINED_FUNCTION_6_74(v133);
  sub_2171F0738(v133, &qword_27CB24400, &unk_21775E9A0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_52:
  v56 = v4[145];
  v57 = v2[145];
  if (v56)
  {
    if (!v57)
    {
      goto LABEL_13;
    }

    v58 = v4[144] == v2[144] && v56 == v57;
    if (!v58 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v57)
  {
    goto LABEL_13;
  }

  v128 = type metadata accessor for RecordLabelPropertyProvider(0);
  v59 = v128[11];
  v60 = *(v16 + 48);
  sub_21726A630(v4 + v59, v19, &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(v2 + v59, &v19[v60], &unk_27CB277C0, &qword_217758DC0);
  v61 = v130;
  if (__swift_getEnumTagSinglePayload(v19, 1, v130) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v19[v60], 1, v61) == 1)
    {
      sub_2171F0738(v19, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  sub_21726A630(v19, v15, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(&v19[v60], 1, v61) == 1)
  {
    (*(v129 + 8))(v15, v61);
LABEL_66:
    v37 = &qword_27CB24840;
    v38 = &unk_217758DD0;
    v39 = v19;
    goto LABEL_12;
  }

  v62 = v129;
  (*(v129 + 32))(v11, &v19[v60], v61);
  OUTLINED_FUNCTION_8_64();
  sub_2175D8FD0(v63, v64, MEMORY[0x277CC9278]);
  v65 = sub_217751F08();
  v66 = *(v62 + 8);
  v66(v11, v61);
  v66(v15, v61);
  sub_2171F0738(v19, &unk_27CB277C0, &qword_217758DC0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_68:
  OUTLINED_FUNCTION_39_25();
  OUTLINED_FUNCTION_34_13();
  if (v140[11])
  {
    v67 = OUTLINED_FUNCTION_93_0();
    sub_21726A630(v67, v138, v68, v69);
    if (!v140[24])
    {
LABEL_78:
      sub_2171F0738(v138, &qword_27CB25388, &unk_21775D410);
      goto LABEL_80;
    }

    memcpy(v135, &v140[13], 0x68uLL);
    v70 = sub_21733E33C(v138, v135);
    OUTLINED_FUNCTION_59_19(v135);
    OUTLINED_FUNCTION_59_19(v138);
    v71 = OUTLINED_FUNCTION_93_0();
    sub_2171F0738(v71, v72, v73);
    if ((v70 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v140[24])
    {
LABEL_80:
      v39 = OUTLINED_FUNCTION_93_0();
      goto LABEL_12;
    }

    v74 = OUTLINED_FUNCTION_93_0();
    sub_2171F0738(v74, v75, v76);
  }

  OUTLINED_FUNCTION_39_25();
  OUTLINED_FUNCTION_34_13();
  if (!v140[11])
  {
    if (!v140[24])
    {
      v84 = OUTLINED_FUNCTION_93_0();
      sub_2171F0738(v84, v85, v86);
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v77 = OUTLINED_FUNCTION_93_0();
  sub_21726A630(v77, v138, v78, v79);
  if (!v140[24])
  {
    goto LABEL_78;
  }

  memcpy(v135, &v140[13], 0x68uLL);
  v80 = sub_21733E33C(v138, v135);
  OUTLINED_FUNCTION_59_19(v135);
  OUTLINED_FUNCTION_59_19(v138);
  v81 = OUTLINED_FUNCTION_93_0();
  sub_2171F0738(v81, v82, v83);
  if ((v80 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_82:
  v87 = v128[14];
  v88 = *(v2 + v87);
  if (*(v4 + v87))
  {
    if (!v88)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_21726F358();
    v90 = v89;

    if ((v90 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v88)
  {
    goto LABEL_13;
  }

  v91 = OUTLINED_FUNCTION_136(v128[15]);
  sub_217270140(v91, v92, v93, v94, v95, v96, v97, v98, v127, v128, v129, v130);
  if (v99)
  {
    v100 = v128[16];
    memcpy(v134, v4 + v100, 0x161uLL);
    memcpy(v133, v4 + v100, 0x161uLL);
    v101 = v128[16];
    memcpy(v135, v2 + v101, 0x161uLL);
    memcpy(v132, v2 + v101, 0x161uLL);
    sub_217269EF4(v134, v131);
    sub_217269EF4(v135, v131);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v101) = v102;
    memcpy(v138, v132, 0x161uLL);
    sub_217269F50(v138);
    v103 = OUTLINED_FUNCTION_93_0();
    memcpy(v103, v133, 0x161uLL);
    v104 = OUTLINED_FUNCTION_93_0();
    sub_217269F50(v104);
    if (v101)
    {
      v105 = v128[17];
      v106 = *(v4 + v105);
      v107 = *(v4 + v105 + 8);
      v108 = (v2 + v105);
      v109 = v106 == *v108 && v107 == v108[1];
      if (v109 || (sub_217753058() & 1) != 0)
      {
        v110 = v128[18];
        v111 = (v4 + v110);
        v112 = *(v4 + v110 + 8);
        v113 = (v2 + v110);
        v114 = v113[1];
        if (!v112)
        {
          if (v114)
          {
            goto LABEL_13;
          }

          goto LABEL_103;
        }

        if (v114)
        {
          v115 = *v111 == *v113 && v112 == v114;
          if (v115 || (sub_217753058() & 1) != 0)
          {
LABEL_103:
            v116 = OUTLINED_FUNCTION_136(v128[19]);
            sub_217261FB0(v116, v117);
            if (v118)
            {
              v119 = OUTLINED_FUNCTION_136(v128[20]);
              sub_217261FB0(v119, v120);
              if (v121)
              {
                v122 = OUTLINED_FUNCTION_136(v128[21]);
                sub_217261FB0(v122, v123);
                if (v124)
                {
                  v125 = OUTLINED_FUNCTION_136(v128[22]);
                  sub_217261FB0(v125, v126);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}

void RecordLabelPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v34[-v12];
  OUTLINED_FUNCTION_225_3(v39);
  OUTLINED_FUNCTION_225_3(v40);
  OUTLINED_FUNCTION_104(v40);
  if (v14)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v36, v39, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v37, v39, 0x221uLL);
    sub_217284028(v37, v38);
    Artwork.hash(into:)(v2);
    memcpy(v38, v36, 0x221uLL);
    sub_217284084(v38);
  }

  if (v0[69])
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v0[70])
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v0[72])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v0[74])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_47_23(v37);
  OUTLINED_FUNCTION_47_23(v38);
  OUTLINED_FUNCTION_104(v38);
  if (v14)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v34, v37, sizeof(v34));
    OUTLINED_FUNCTION_119();
    memcpy(v35, v37, 0x221uLL);
    sub_217284028(v35, v36);
    Artwork.hash(into:)(v2);
    memcpy(v36, v34, 0x221uLL);
    sub_217284084(v36);
  }

  if (v0[145])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v15 = type metadata accessor for RecordLabelPropertyProvider(0);
  sub_21726A630(v0 + v15[11], v13, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_8_64();
    sub_2175D8FD0(v16, v17, MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  sub_21726A630(v0 + v15[12], v36, &qword_27CB25318, &qword_2177657C0);
  if (v36[11])
  {
    memcpy(v35, v36, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v35, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v0 + v15[13], v36, &qword_27CB25318, &qword_2177657C0);
  if (v36[11])
  {
    memcpy(v35, v36, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v35, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v18 = *(v0 + v15[14]);
  if (v18)
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0(v2, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v24 = OUTLINED_FUNCTION_201();
  sub_217281970(v24, v25);
  memcpy(v36, v0 + v15[16], 0x161uLL);
  MusicIdentifierSet.hash(into:)(v2);
  sub_217751FF8();
  if (*(v0 + v15[18] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v26 = OUTLINED_FUNCTION_201();
  sub_217265A08(v26, v27);
  v28 = OUTLINED_FUNCTION_201();
  sub_217265A08(v28, v29);
  v30 = OUTLINED_FUNCTION_201();
  sub_217265A08(v30, v31);
  v32 = OUTLINED_FUNCTION_201();
  sub_217265A08(v32, v33);
  OUTLINED_FUNCTION_13();
}

uint64_t RecordLabelPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  RecordLabelPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_2175D8E88(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  RecordLabelPropertyProvider.subscript.getter();
  return sub_2175D7158;
}

uint64_t sub_2175D8F04(uint64_t a1)
{
  sub_2177531E8();
  RecordLabelPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175D8FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2175D9040(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        sub_2174B3A3C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_217351B44(319, &qword_280BE7FB8, &qword_27CB25388, &unk_21775D410);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
            v2 = v13;
            if (v14 <= 0x3F)
            {
              sub_2174B3A3C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
              v2 = v15;
              if (v16 <= 0x3F)
              {
                sub_217351BFC();
                v2 = v17;
                if (v18 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_11_62(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_51(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_20_40()
{

  return memcpy((v0 + 3896), (v1 + 552), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_22_48()
{

  return type metadata accessor for RecordLabelPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_40_29(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 584, v2, v3);
}

uint64_t OUTLINED_FUNCTION_42_32(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2240, v2, v3);
}

void *OUTLINED_FUNCTION_47_23(void *a1)
{

  return memcpy(a1, (v1 + 600), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_49_27()
{

  return type metadata accessor for RecordLabelPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_59_19(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

MusicKit::LegacyModelPlaylistEditableComponents sub_2175D94AC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = LegacyModelPlaylistEditableComponents.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2175D94EC@<X0>(uint64_t *a1@<X8>)
{
  result = LegacyModelPlaylistEditableComponents.rawValue.getter();
  *a1 = result;
  return result;
}

MusicKit::LegacyModelPlaylistEditableComponents_optional __swiftcall LegacyModelPlaylistEditableComponents.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() editableComponentsForRawValue_];
  *v2 = v3 & 3;
  *(v2 + 8) = 0;
  result.value.rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::Int __swiftcall LegacyModelPlaylistEditableComponents.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForEditableComponents_];
}

Swift::Int sub_2175D95B4@<X0>(Swift::Int *a1@<X8>)
{
  result = LegacyModelPlaylistEditableComponents.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_2175D95E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A948;
  if (!qword_27CB2A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A948);
  }

  return result;
}

unint64_t sub_2175D9638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A950;
  if (!qword_27CB2A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A950);
  }

  return result;
}

unint64_t sub_2175D968C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2B68[0];
  if (!qword_280BE2B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE2B68);
  }

  return result;
}

unint64_t sub_2175D96E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A958;
  if (!qword_27CB2A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A958);
  }

  return result;
}

uint64_t sub_2175D974C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a1;
  v5[13] = a3;
  v5[16] = *a2;
  return MEMORY[0x2822009F8](sub_2175D9778, 0, 0);
}

uint64_t sub_2175D9778()
{
  v1 = v0[15];
  type metadata accessor for DefaultMusicTokenProvider();
  v2 = swift_dynamicCastClass();
  v3 = v0[16];
  if (v2)
  {
    v0[11] = v3;

    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_2175D9950;

    return sub_21758D624((v0 + 2), v0 + 11);
  }

  else
  {
    v0[7] = v1;
    v0[8] = v3;
    v9 = (*(v0[14] + 8) + **(v0[14] + 8));
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_2175D9ACC;
    v7 = v0[13];
    v8 = v0[14];

    return v9(v0 + 8, v7, v8);
  }
}

uint64_t sub_2175D9950()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_2175D9E4C;
  }

  else
  {
    v7 = sub_2175D9A58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2175D9A58()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 96);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 32) = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2175D9ACC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_42_0();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_42_0();
  *v9 = v8;
  v6[20] = a1;
  v6[21] = v10;
  v6[22] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2175D9EAC, 0, 0);
  }

  else
  {
    v6[9] = v6[16];
    v11 = v6 + 9;
    v14 = (*(*v11[6] + 96) + **(*v11[6] + 96));
    v12 = swift_task_alloc();
    v11[14] = v12;
    *v12 = v8;
    v12[1] = sub_2175D9CF0;

    return v14(a1, a2, v11);
  }
}

uint64_t sub_2175D9CF0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_42_0();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_42_0();
  *v9 = v8;
  v6[24] = v2;

  if (v2)
  {
    v10 = sub_2175D9EC4;
  }

  else
  {
    v6[25] = a2;
    v6[26] = a1;
    v10 = sub_2175D9E1C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2175D9E1C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 96);
  *v3 = *(v0 + 160);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_2175D9E4C()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2175D9EC4()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 80) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 168);
  if (v1)
  {
    v3 = *(v0 + 49);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 96);
  *v4 = *(v0 + 160);
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_2175DA04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A960;
  if (!qword_27CB2A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A960);
  }

  return result;
}

unint64_t sub_2175DA0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE82F0;
  if (!qword_280BE82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82F0);
  }

  return result;
}

void sub_2175DA0F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x676F6C61746163 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_114(0x676F6C61746163, 0xE700000000000000) & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else
  {
    v7 = v4 == 0x62694C64756F6C63 && v3 == 0xEC00000079726172;
    if (v7 || (OUTLINED_FUNCTION_0_114(0x62694C64756F6C63, 0xEC00000079726172) & 1) != 0)
    {

      v4 = 0;
      v3 = 1;
    }

    else
    {
      v8 = v4 == 0x656C6261646F63 && v3 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_114(0x656C6261646F63, 0xE700000000000000) & 1) != 0)
      {

        v4 = 0;
        v3 = 2;
      }

      else
      {
        v9 = v4 == 0x616C5065726F7473 && v3 == 0xED00006D726F6674;
        if (v9 || (OUTLINED_FUNCTION_0_114(0x616C5065726F7473, 0xED00006D726F6674) & 1) != 0)
        {

          v4 = 0;
          v3 = 3;
        }

        else
        {
          v10 = v4 == 0xD000000000000013 && 0x80000002177B25D0 == v3;
          if (v10 || (OUTLINED_FUNCTION_0_114(0xD000000000000013, 0x80000002177B25D0) & 1) != 0)
          {

            v4 = 0;
            v3 = 8;
          }

          else
          {
            v11 = v4 == 0xD000000000000010 && 0x80000002177B2610 == v3;
            if (v11 || (OUTLINED_FUNCTION_0_114(0xD000000000000010, 0x80000002177B2610) & 1) != 0)
            {

              v4 = 0;
              v3 = 4;
            }

            else
            {
              v12 = v4 == 0x6F4D79636167656CLL && v3 == 0xEB000000006C6564;
              if (v12 || (OUTLINED_FUNCTION_0_114(0x6F4D79636167656CLL, 0xEB000000006C6564) & 1) != 0)
              {

                v4 = 0;
                v3 = 5;
              }

              else
              {
                v13 = v4 == 0x62694C6C61636F6CLL && v3 == 0xEC00000079726172;
                if (v13 || (OUTLINED_FUNCTION_0_114(0x62694C6C61636F6CLL, 0xEC00000079726172) & 1) != 0)
                {

                  v4 = 0;
                  v3 = 6;
                }

                else
                {
                  v14 = v4 == 0xD000000000000012 && 0x80000002177B25F0 == v3;
                  if (v14 || (OUTLINED_FUNCTION_0_114(0xD000000000000012, 0x80000002177B25F0) & 1) != 0 || (v4 == 0x6F44746E65746E69 ? (v15 = v3 == 0xEE006E6F6974616ELL) : (v15 = 0), v15 || (OUTLINED_FUNCTION_0_114(0x6F44746E65746E69, 0xEE006E6F6974616ELL) & 1) != 0))
                  {

                    v4 = 0;
                    v3 = 7;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = v4;
  a3[1] = v3;
}

uint64_t sub_2175DA3B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x676F6C61746163;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v4 = 0x4C64756F6C63;
      goto LABEL_9;
    case 2uLL:
      v3 = 0x656C6261646F63;
      break;
    case 3uLL:
      v3 = 0x616C5065726F7473;
      break;
    case 4uLL:
      v3 = 0xD000000000000010;
      break;
    case 5uLL:
      v3 = 0x6F4D79636167656CLL;
      break;
    case 6uLL:
      v4 = 0x4C6C61636F6CLL;
LABEL_9:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6269000000000000;
      break;
    case 7uLL:
      OUTLINED_FUNCTION_42();
      v3 = v5 | 2;
      break;
    case 8uLL:
      OUTLINED_FUNCTION_42();
      v3 = v6 | 3;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_21726B87C(v1, v2);
  return v3;
}

uint64_t sub_2175DA4F4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2175DA54C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217759C00;
  KeyPath = swift_getKeyPath(a0_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A970, &qword_217784290);
  swift_allocObject();
  result = sub_217383700(KeyPath);
  *(v0 + 32) = result;
  qword_27CB8A2E8 = v0;
  return result;
}

uint64_t sub_2175DA5E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_2175DA63C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217759C00;
  KeyPath = swift_getKeyPath(aX);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A968, &qword_217784260);
  swift_allocObject();
  result = sub_217383590(KeyPath, 24, 12);
  *(v0 + 32) = result;
  qword_280C01F88 = v0;
  return result;
}

uint64_t static CloudRadioShow.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_186_0(a1) == *a2 && *(v2 + 8) == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudRadioShow(0);
  static CloudRadioShow.Attributes.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  sub_21738C4B0(v2 + v7, v20, &qword_27CB25640, &qword_217764750);
  sub_21738C4B0(a2 + v7, v22, &qword_27CB25640, &qword_217764750);
  if (v21 == 1)
  {
    if (v22[2] == 1)
    {
      sub_2171F0738(v20, &qword_27CB25640, &qword_217764750);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_21738C4B0(v20, v19, &qword_27CB25640, &qword_217764750);
  if (v22[2] == 1)
  {
    sub_21733BB04(v19);
LABEL_12:
    sub_2171F0738(v20, &qword_27CB2A988, &qword_217784298);
    return 0;
  }

  memcpy(v18, v22, sizeof(v18));
  v8 = static CloudRadioShow.Relationships.== infix(_:_:)(v19, v18);
  sub_21733BB04(v18);
  sub_21733BB04(v19);
  sub_2171F0738(v20, &qword_27CB25640, &qword_217764750);
  if (!v8)
  {
    return 0;
  }

LABEL_14:
  if (*(v2 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v9 = v5[8];
  v10 = *(v2 + v9);
  v11 = *(a2 + v9);
  if (v10 != 1)
  {
    if (v11 == 1)
    {
      sub_21733CF78(v10);
      sub_21733CF78(1);
      sub_21733CF78(v10);

LABEL_21:
      sub_21733CF74(v10);
      v13 = v11;
LABEL_32:
      sub_21733CF74(v13);
      return 0;
    }

    if (v10)
    {
      if (v11)
      {
        sub_21733CF78(v10);
        sub_21733CF78(v11);
        sub_21733CF78(v10);
        sub_21733CF78(v11);
        OUTLINED_FUNCTION_93();
        sub_21726F358();
        v15 = v14;
        sub_21733CF74(v11);
        sub_21733CF74(v11);
        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:

        sub_21733CF74(v10);
        return 1;
      }

      sub_21733CF78(v10);
      v16 = v10;
    }

    else
    {
      sub_21733CF78(0);
      v16 = 0;
      if (!v11)
      {
        sub_21733CF78(0);
        sub_21733CF78(0);
        sub_21733CF74(0);
        goto LABEL_28;
      }
    }

    sub_21733CF78(v11);
    sub_21733CF78(v16);
    sub_21733CF74(v11);
LABEL_31:

    v13 = v10;
    goto LABEL_32;
  }

  sub_21733CF78(1);
  if (v11 != 1)
  {
    sub_21733CF78(v11);
    goto LABEL_21;
  }

  v12 = 1;
  sub_21733CF78(1);
  sub_21733CF74(1);
  return v12;
}

void CloudRadioShow.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v45 = v3;
  type metadata accessor for CloudRadioShow.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A990, &qword_2177842A0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_131_0();
  v9 = type metadata accessor for CloudRadioShow(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v46 = *(v11 + 32);
  v14 = (v13 - v12);
  *(v13 - v12 + v46) = 1;
  v15 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2175DE9C4(v15, v16, v17);
  v18 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21733CF74(*(v14 + v46));
  }

  else
  {
    sub_2172E1C68(v18, v19, v20);
    OUTLINED_FUNCTION_42_31();
    sub_217752EA8();
    v21 = v47[1];
    *v14 = v47[0];
    v14[1] = v21;
    LOBYTE(v47[0]) = 1;
    OUTLINED_FUNCTION_12_47();
    sub_2175DEBD0(v22);
    sub_217752EA8();
    v23 = sub_2175DEA18(v7, v14 + v9[5]);
    sub_2175DEA7C(v23, v24, v25);
    OUTLINED_FUNCTION_42_31();
    sub_217752E58();
    v26 = memcpy(v14 + v9[6], v47, 0x80uLL);
    v29 = sub_2175DEAD0(v26, v27, v28);
    v33 = OUTLINED_FUNCTION_34(&type metadata for CloudRadioShow.Associations, v30, v31, v32, v29);
    *v9[7] = v47[0];
    v36 = sub_2175DEB24(v33, v34, v35);
    OUTLINED_FUNCTION_34(&type metadata for CloudRadioShow.Metadata, v37, v38, v39, v36);
    v40 = OUTLINED_FUNCTION_16_3();
    v41(v40);
    v42 = v47[0];
    sub_21733CF74(*(v14 + v46));
    *(v14 + v46) = v42;
    OUTLINED_FUNCTION_1_106();
    sub_2175DEC14(v14, v45, v43);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_4_93();
    sub_2175DEB78(v14, v44);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudRadioShow.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A998, &qword_2177842A8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175DE9C4(v11, v12, v13);
  v14 = sub_2177532F8();
  v15 = v3[1];
  v32 = *v3;
  v33 = v15;
  v31 = 0;
  sub_2172E1B18(v14, v16, v17);
  OUTLINED_FUNCTION_4_5();
  sub_217752F88();
  if (!v2)
  {
    v18 = type metadata accessor for CloudRadioShow(0);
    LOBYTE(v32) = 1;
    type metadata accessor for CloudRadioShow.Attributes(0);
    OUTLINED_FUNCTION_12_47();
    sub_2175DEBD0(v19);
    v20 = sub_217752F88();
    LOBYTE(v32) = 2;
    sub_21733CA00(v20, v21, v22);
    v23 = sub_217752F38();
    LOBYTE(v32) = *(v3 + *(v18 + 28));
    v31 = 3;
    sub_21733C9AC(v23, v24, v25);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v32 = *(v3 + *(v18 + 32));
    v31 = 4;
    v26 = sub_21733CF78(v32);
    sub_2174D7B74(v26, v27, v28);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    sub_21733CF74(v32);
  }

  return (*(v7 + 8))(v10, v5);
}

void RadioShow.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v63 = v1;
  v75 = v2;
  v76 = v3;
  v73 = v5;
  v74 = v4;
  v7 = v6;
  v79 = type metadata accessor for CloudRadioShow(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v80 = v10 - v9;
  v11 = type metadata accessor for RadioShowPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  if (qword_280BE61F8 != -1)
  {
    swift_once();
  }

  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  sub_2172DADE8();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v17 = v16[10];
  v18 = v7 + v16[9];
  v19 = *(v18 + 8);
  v77 = *v18;
  v67 = *(v18 + 16);
  v20 = *(v7 + v17 + 8);
  v65 = *(v7 + v17);
  v64 = *(v7 + v16[12]);
  v21 = *(v7 + v16[13]);
  v22 = *(v7 + v16[14]);
  v23 = *(v7 + v16[15]);
  sub_2172A497C(v100);
  memcpy(v15, v100, 0x221uLL);
  *(v15 + 560) = xmmword_2177586D0;
  *(v15 + 576) = 0u;
  *(v15 + 592) = 0u;
  *(v15 + 608) = 0u;
  memcpy((v15 + 648), v100, 0x221uLL);
  v24 = v11[11];
  v25 = sub_2177516D8();
  v71 = v24;
  __swift_storeEnumTagSinglePayload(v15 + v24, 1, 1, v25);
  v26 = v15 + v11[12];
  *(v26 + 96) = 0;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v72 = v26;
  v27 = qword_280BE3578;
  v69 = v19;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_280C01FB8;
  if (qword_280C01FB8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v62 = sub_217752D28();

    v28 = v62;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v15 + v11[14]) = v28;
  v29 = (v15 + v11[17]);
  memcpy((v15 + v11[15]), v99, 0x161uLL);
  v30 = v15 + v11[16];
  *v30 = v77;
  *(v30 + 8) = v69;
  *(v30 + 16) = v67;
  *v29 = v65;
  v29[1] = v20;
  *(v15 + v11[18]) = v64;
  *(v15 + v11[19]) = v21;
  *(v15 + v11[20]) = v22;
  *(v15 + v11[21]) = v23;
  OUTLINED_FUNCTION_1_106();
  sub_2175DEC14(v7, v80, v31);
  v32 = (v80 + v79[5]);
  OUTLINED_FUNCTION_12_33();
  memcpy(v33, v34, v35);
  OUTLINED_FUNCTION_12_33();
  memcpy(v36, v37, v38);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v90) == 1)
  {
    v39 = v100;
  }

  else
  {
    memcpy(v88, v90, 0x1B8uLL);
    memcpy(v81, v89, 0x1B8uLL);
    sub_21738C4B0(v81, v87, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v83);
    memcpy(v82, v88, sizeof(v82));
    sub_2171F0738(v82, &qword_27CB243F0, &qword_21775D690);
    memcpy(v87, v83, 0x221uLL);
    nullsub_1();
    v39 = v87;
  }

  memcpy(v88, v39, sizeof(v88));
  v78 = v7;
  memcpy(v87, v15, 0x221uLL);
  sub_2171F0738(v87, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v15, v88, 0x221uLL);
  *(v15 + 552) = v32[55];
  if (v32[64])
  {
    v40 = v32[63];
    v41 = v32[61];
    v68 = v32[60];
    v70 = v32[62];
    v42 = v32[59];
    v66 = v32[58];
    v43 = v32[56];
    v44 = v32[57];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v43 = 0;
    v66 = 0;
    v68 = 0;
    v42 = 0;
    v41 = 0;
    v70 = 0;
    v40 = 0;
    v44 = 1;
  }

  v45 = *(v15 + 576);
  v86[0] = *(v15 + 560);
  v86[1] = v45;
  v46 = *(v15 + 608);
  v86[2] = *(v15 + 592);
  v86[3] = v46;
  sub_217751DE8();
  sub_2171F0738(v86, &qword_27CB24B70, &unk_217759460);
  *(v15 + 560) = v43;
  *(v15 + 568) = v44;
  *(v15 + 576) = v66;
  *(v15 + 584) = v42;
  *(v15 + 592) = v68;
  *(v15 + 600) = v41;
  *(v15 + 608) = v70;
  *(v15 + 616) = v40;
  *(v15 + 624) = v32[65];
  v47 = v32[68];
  *(v15 + 632) = v32[67];
  *(v15 + 640) = v47;
  v48 = v32[70];
  *(v15 + 1200) = v32[69];
  *(v15 + 1208) = v48;
  v49 = *(type metadata accessor for CloudRadioShow.Attributes(0) + 44);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v32 + v49, v15 + v71);
  sub_21738C4B0(v80 + v79[6], v82, &qword_27CB25640, &qword_217764750);
  if (v82[2] == 1)
  {
    sub_2171F0738(v82, &qword_27CB25640, &qword_217764750);
    v50 = v78;
    v51 = v75;
  }

  else
  {
    sub_21738C4B0(v82, v83, &qword_27CB242C0, &unk_21775D650);
    sub_21733BB04(v82);
    v50 = v78;
    v51 = v75;
    if (v83[2])
    {
      v85 = 0;
      memset(v84, 0, sizeof(v84));
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
      v55 = sub_2172E208C(v52, v53, v54);
      v56 = v76;
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v75, v74, v84, &type metadata for Playlist, v76, v55, &protocol witness table for Playlist, v81, v63);
      sub_2171F0738(v84, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v83, &qword_27CB242C8, &unk_217758970);
      goto LABEL_19;
    }

    sub_2171F0738(v83, &qword_27CB242C0, &unk_21775D650);
  }

  memset(v81, 0, 104);
  v56 = v76;
LABEL_19:
  sub_2175D48DC(v81, v72);
  v57 = v79[8];
  v58 = *(v80 + v57);
  if (v58 == 1)
  {
    v59 = 0;
  }

  else
  {
    v59 = *(v80 + v57);
  }

  *(v15 + v11[13]) = v59;
  v83[3] = v11;
  v83[4] = &protocol witness table for RadioShowPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v83);
  sub_2175DEC14(v15, boxed_opaque_existential_0, type metadata accessor for RadioShowPropertyProvider);
  sub_21733CF78(v58);
  RadioShow.init(propertyProvider:)(v83, v73);

  (*(*(v56 - 8) + 8))(v51, v56);
  sub_2171F0738(v50, &qword_27CB247C0, &unk_21779AA10);
  OUTLINED_FUNCTION_4_93();
  sub_2175DEB78(v80, v61);
  sub_2175DEB78(v15, type metadata accessor for RadioShowPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void RadioShow.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v116 = v2;
  v120 = v3;
  v112 = v4;
  v177 = v5;
  v171 = type metadata accessor for CloudRadioShow(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  type metadata accessor for CloudRadioShow.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v182 = v19 - v18;
  if (qword_280BE6648 != -1)
  {
    swift_once();
  }

  sub_2176CAC70(qword_280C01FF8, v11, v12, v13, v14, v15, v16, v17, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v157, v162, v166, v171, v177, v182);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v207) == 1)
  {
    sub_2172E22C0(v187);
  }

  else
  {
    memcpy(v187, v207, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v189);
    memcpy(v188, v187, 0x221uLL);
    sub_217284084(v188);
    memcpy(v190, v189, sizeof(v190));
    nullsub_1();
    memcpy(v187, v190, 0x1B8uLL);
  }

  if (qword_280BE6680 != -1)
  {
    swift_once();
  }

  v167 = sub_2172A4724(qword_280C02018);
  if (qword_280BE6698 != -1)
  {
    swift_once();
  }

  sub_2176CA348(qword_280C02028, v20, v21, v22, v23, v24, v25, v26, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v158, v163, v167, v172, v178, v183);
  v27 = v200;
  if (v200 == 1)
  {
    v134 = 0;
    v138 = 0;
    v27 = 0;
    v142 = 0;
    v146 = 0;
    v150 = 0;
    v154 = 0;
    v159 = 0;
    v130 = 0;
  }

  else
  {
    v154 = v205;
    v159 = v206;
    v28 = v204;
    v146 = v203;
    v29 = v202;
    v134 = v199;
    v138 = v201;
    sub_217751DE8();
    sub_217751DE8();
    v142 = v29;
    sub_217751DE8();
    v150 = v28;
    sub_217751DE8();
    v130 = sub_217751DC8();
    sub_2171F0738(&v199, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE6670 != -1)
  {
    swift_once();
  }

  v126 = sub_2172A4708(qword_280C02010);
  if (qword_280BE6638 != -1)
  {
    swift_once();
  }

  v30 = sub_2172A3F00(qword_280C01FF0);
  v32 = v31;
  if (qword_280BE6658 != -1)
  {
    swift_once();
  }

  v33 = sub_2172A3F00(qword_280C02000);
  if (v34)
  {
    v41 = v33;
  }

  else
  {
    v41 = 0;
  }

  if (v34)
  {
    v42 = v34;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  if (qword_280BE6660 != -1)
  {
    swift_once();
  }

  v43 = v184;
  sub_2176CA328(qword_280C02008, v34, v35, v36, v37, v38, v39, v40, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v159, v27, v168, v173, v179, v184, v187[0], v187[1], v187[2], v187[3]);
  memcpy(v43, v187, 0x1B8uLL);
  *(v43 + 440) = v169;
  *(v43 + 448) = v135;
  *(v43 + 456) = v164;
  *(v43 + 464) = v139;
  *(v43 + 472) = v143;
  *(v43 + 480) = v147;
  *(v43 + 488) = v151;
  *(v43 + 496) = v155;
  *(v43 + 504) = v160;
  *(v43 + 512) = v131;
  *(v43 + 520) = v127;
  *(v43 + 528) = 2;
  *(v43 + 536) = v30;
  *(v43 + 544) = v32;
  *(v43 + 552) = v41;
  *(v43 + 560) = v42;
  v198[1] = 0;
  v198[0] = 0;
  memset(&v198[3], 0, 104);
  v198[2] = 1;
  if (qword_280BE6628 != -1)
  {
    swift_once();
  }

  sub_2176CA30C(qword_280BE6630, v44, v45, v46, v47, v48, v49, v50, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v160, v164, v169, v174, v180, v185, v187[0], v187[1], v187[2], v187[3]);
  if (v197[11])
  {
    v51 = sub_21738C4B0(v197, v188, &qword_27CB25330, &unk_21775E9B0);
    if (v188[11])
    {
      sub_2172E208C(v51, v52, v53);
      sub_217230490(v190);
      v189[0] = v190[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
      MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
      sub_2171F0738(v198, &qword_27CB25640, &qword_217764750);
      sub_2171F0738(v188, &unk_27CB28230, &unk_21775CD50);
    }

    else
    {
      sub_2171F0738(v198, &qword_27CB25640, &qword_217764750);
      sub_2171F0738(v188, &qword_27CB25330, &unk_21775E9B0);
      memset(v191, 0, sizeof(v191));
    }

    memcpy(v198, v191, sizeof(v198));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
  swift_allocObject();
  v54 = sub_2172E3DC4();
  sub_2172A46EC(v54);
  OUTLINED_FUNCTION_5_4();

  if ((v1 + 2) <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = (v1 + 2);
  }

  v57 = *v1;
  v56 = v1[1];
  OUTLINED_FUNCTION_5_76();
  sub_2175DEC14(v186, v9 + v58, v59);
  sub_21738C4B0(v198, v9 + v175[6], &qword_27CB25640, &qword_217764750);
  v60 = v175[8];
  *(v9 + v60) = 1;
  *v9 = v57;
  v9[1] = v56;
  *(v9 + v175[7]) = 1;
  v61 = *(v9 + v60);
  sub_217751DE8();
  sub_21733CF74(v61);
  *(v9 + v60) = v55;
  OUTLINED_FUNCTION_31_35();
  v62 = OUTLINED_FUNCTION_5_4();
  v63(v62, v60);
  nullsub_1();
  memcpy(v190, v189, 0x161uLL);
  OUTLINED_FUNCTION_1_106();
  sub_2175DEC14(v9, v181, v64);
  OUTLINED_FUNCTION_31_35();
  v65 = OUTLINED_FUNCTION_5_4();
  v66(v65, v60);
  __swift_project_boxed_opaque_existential_1(v188, v188[3]);
  v67 = OUTLINED_FUNCTION_5_4();
  v68(v67);
  __swift_destroy_boxed_opaque_existential_1(v188);
  v170 = v195;
  v176 = v194;
  v165 = v196;
  OUTLINED_FUNCTION_31_35();
  v69 = OUTLINED_FUNCTION_5_4();
  v70(v69, v60);
  OUTLINED_FUNCTION_67(v188, v188[3]);
  v71 = OUTLINED_FUNCTION_5_4();
  v73 = v72(v71);
  v156 = v74;
  v161 = v73;
  __swift_destroy_boxed_opaque_existential_1(v188);
  memcpy(v188, v190, 0x168uLL);
  memset(&v188[45], 0, 24);
  nullsub_1();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  OUTLINED_FUNCTION_18_47();
  v75 = OUTLINED_FUNCTION_179();
  v76(v75);
  v77 = v193;
  v78 = OUTLINED_FUNCTION_44_24();
  OUTLINED_FUNCTION_67(v78, v77);
  v79 = OUTLINED_FUNCTION_5_4();
  v81 = v80(v79);
  __swift_destroy_boxed_opaque_existential_1(v192);
  v82 = v1[5];
  v83 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v82);
  OUTLINED_FUNCTION_18_47();
  v84(v82, v83);
  v85 = v193;
  v86 = OUTLINED_FUNCTION_44_24();
  OUTLINED_FUNCTION_67(v86, v85);
  v88 = (*(v87 + 72))(v85);
  __swift_destroy_boxed_opaque_existential_1(v192);
  v90 = v1[5];
  v89 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v90);
  OUTLINED_FUNCTION_18_47();
  v91(v90, v89);
  v92 = v193;
  v93 = OUTLINED_FUNCTION_44_24();
  OUTLINED_FUNCTION_67(v93, v92);
  v95 = (*(v94 + 80))(v92);
  __swift_destroy_boxed_opaque_existential_1(v192);
  v96 = v1[5];
  v97 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v96);
  OUTLINED_FUNCTION_18_47();
  v98(v96, v97);
  v99 = v193;
  v100 = OUTLINED_FUNCTION_44_24();
  OUTLINED_FUNCTION_67(v100, v99);
  v102 = (*(v101 + 88))(v99);
  sub_2171F0738(v198, &qword_27CB25640, &qword_217764750);
  OUTLINED_FUNCTION_6_75();
  sub_2175DEB78(v186, v103);
  __swift_destroy_boxed_opaque_existential_1(v192);
  OUTLINED_FUNCTION_4_93();
  sub_2175DEB78(v9, v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v106 = v181 + v105[9];
  *v106 = v176;
  *(v106 + 8) = v170;
  *(v106 + 16) = v165;
  v107 = (v181 + v105[10]);
  *v107 = v161;
  v107[1] = v156;
  memcpy((v181 + v105[11]), v188, 0x180uLL);
  *(v181 + v105[12]) = v81;
  *(v181 + v105[13]) = v88;
  *(v181 + v105[14]) = v95;
  *(v181 + v105[15]) = v102;
  sub_2171F0738(v197, &qword_27CB25330, &unk_21775E9B0);
  OUTLINED_FUNCTION_13();
}

void CloudRadioShow.init(id:attributes:relationships:views:meta:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  v13 = *v12;
  v14 = type metadata accessor for CloudRadioShow(0);
  v15 = v14[8];
  *(v9 + v15) = 1;
  *v9 = v7;
  v9[1] = v5;
  sub_2175DEA18(v3, v9 + v14[5]);
  memcpy(v9 + v14[6], v1, 0x80uLL);
  *(v9 + v14[7]) = v11;
  sub_21733CF74(*(v9 + v15));
  *(v9 + v15) = v13;
  OUTLINED_FUNCTION_13();
}

uint64_t CloudRadioShow.Attributes.init(artwork:editorialArtwork:editorialNotes:editorialVideo:kind:showHostName:name:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_12();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = *v35;
  memcpy(v33, v37, 0x1B8uLL);
  v34[55] = v32;
  memcpy(v34 + 56, v30, 0x48uLL);
  v34[65] = v28;
  *(v34 + 528) = v36;
  v34[67] = v26;
  v34[68] = v24;
  v34[69] = v22;
  v34[70] = a21;
  type metadata accessor for CloudRadioShow.Attributes(0);
  OUTLINED_FUNCTION_13();

  return sub_21751AF10(v38, v39);
}

uint64_t CloudRadioShow.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudRadioShow.Attributes.editorialNotes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 448), sizeof(__dst));
  memcpy(a1, (v1 + 448), 0x48uLL);
  return sub_21738C4B0(__dst, &v4, &qword_27CB25010, &qword_21775B4F8);
}

uint64_t CloudRadioShow.Attributes.url.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudRadioShow.Attributes(v2);
  return sub_21738C4B0(v1 + *(v3 + 44), v0, &unk_27CB277C0, &qword_217758DC0);
}

void static CloudRadioShow.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_111();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  OUTLINED_FUNCTION_12_33();
  memcpy(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_39_24();
  memcpy(v21, v3, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v22, v23, v24);
  memcpy(&v102[55], v3, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v25, v26, v27);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v105) == 1)
  {
    OUTLINED_FUNCTION_19_26(v101);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v101) == 1)
    {
      v88 = v6;
      v89 = v12;
      v87 = v8;
      memcpy(v103, v102, sizeof(v103));
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v28, v29, v30, &unk_21776EA00);
      OUTLINED_FUNCTION_39_24();
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v31, v32, v33, &unk_21776EA00);
      sub_2171F0738(v103, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v101, v102, sizeof(v101));
    OUTLINED_FUNCTION_33_1(v104, v103);
    v34 = OUTLINED_FUNCTION_39_24();
    OUTLINED_FUNCTION_33_1(v34, v103);
    v35 = &unk_27CB25008;
    v36 = &unk_21778F850;
    v37 = v101;
LABEL_6:
    sub_2171F0738(v37, v35, v36);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_19_26(v99);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v99) == 1)
  {
    goto LABEL_5;
  }

  v88 = v6;
  v89 = v12;
  v87 = v8;
  OUTLINED_FUNCTION_19_26(v90);
  OUTLINED_FUNCTION_19_26(v101);
  memcpy(v103, v102, sizeof(v103));
  sub_21738C4B0(v104, v91, &qword_27CB25000, &unk_21776EA00);
  v38 = OUTLINED_FUNCTION_39_24();
  sub_21738C4B0(v38, v91, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v40 = v39;
  sub_2171F0738(v90, &qword_27CB25000, &unk_21776EA00);
  memcpy(v91, v102, sizeof(v91));
  sub_2171F0738(v91, &qword_27CB25000, &unk_21776EA00);
  if ((v40 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v41 = *(v3 + 440);
  if (*(v5 + 440))
  {
    if (!v41)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262A00();
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v41)
  {
    goto LABEL_7;
  }

  memcpy(v90, (v5 + 448), 0x48uLL);
  memcpy(v91, (v3 + 448), 0x48uLL);
  v44 = *(v5 + 464);
  v95 = *(v5 + 448);
  v96 = v44;
  v45 = *(v5 + 496);
  v97 = *(v5 + 480);
  v98 = v45;
  v46 = v90[8];
  if (!v90[8])
  {
    if (!v91[8])
    {
      OUTLINED_FUNCTION_22_2();
      v102[8] = 0;
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v62, v63, v64, &qword_21775B4F8);
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v65, v66, v67, &qword_21775B4F8);
      sub_2171F0738(v102, &qword_27CB25010, &qword_21775B4F8);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (!v91[8])
  {
LABEL_19:
    OUTLINED_FUNCTION_22_2();
    v53 = *(v3 + 464);
    *&v102[9] = *(v3 + 448);
    *&v102[11] = v53;
    v54 = *(v3 + 496);
    *&v102[13] = *(v3 + 480);
    *&v102[15] = v54;
    v102[8] = v46;
    v102[17] = v55;
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v56, v57, v58, &qword_21775B4F8);
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v59, v60, v61, &qword_21775B4F8);
    v35 = &unk_27CB25018;
    v36 = &unk_21775B500;
    v37 = v102;
    goto LABEL_6;
  }

  v47 = *(v3 + 464);
  v92[0] = *(v3 + 448);
  v92[1] = v47;
  v48 = *(v3 + 496);
  v92[2] = *(v3 + 480);
  v92[3] = v48;
  *&v92[4] = v91[8];
  memcpy(v102, v92, 0x48uLL);
  v49 = *(v5 + 464);
  v99[0] = *(v5 + 448);
  v99[1] = v49;
  v50 = *(v5 + 496);
  v99[2] = *(v5 + 480);
  v99[3] = v50;
  v100 = v90[8];
  sub_21738C4B0(v90, v93, &qword_27CB25010, &qword_21775B4F8);
  sub_21738C4B0(v91, v93, &qword_27CB25010, &qword_21775B4F8);
  sub_2172A9570();
  v52 = v51;
  sub_2171F0738(v92, &qword_27CB25010, &qword_21775B4F8);
  v93[0] = v95;
  v93[1] = v96;
  v93[2] = v97;
  v93[3] = v98;
  v94 = v46;
  sub_2171F0738(v93, &qword_27CB25010, &qword_21775B4F8);
  if ((v52 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:
  v68 = *(v3 + 520);
  if (*(v5 + 520))
  {
    if (!v68)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262CB4();
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v68)
  {
    goto LABEL_7;
  }

  v71 = *(v5 + 528);
  v72 = *(v3 + 528);
  if (v71 == 3)
  {
    v73 = v89;
    if (v72 != 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v73 = v89;
    if (v72 == 3 || (sub_2177072D0(v71, v72) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v74 = *(v5 + 544);
  v75 = *(v3 + 544);
  if (v74)
  {
    if (!v75)
    {
      goto LABEL_7;
    }

    v76 = *(v5 + 536) == *(v3 + 536) && v74 == v75;
    if (!v76 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v75)
  {
    goto LABEL_7;
  }

  v77 = *(v5 + 560);
  v78 = *(v3 + 560);
  if (!v77)
  {
    if (v78)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

  if (v78)
  {
    v79 = *(v5 + 552) == *(v3 + 552) && v77 == v78;
    if (v79 || (sub_217753058() & 1) != 0)
    {
LABEL_49:
      v80 = *(type metadata accessor for CloudRadioShow.Attributes(0) + 44);
      v81 = *(v14 + 48);
      sub_21738C4B0(v5 + v80, v17, &unk_27CB277C0, &qword_217758DC0);
      sub_21738C4B0(v3 + v80, &v17[v81], &unk_27CB277C0, &qword_217758DC0);
      v82 = v88;
      if (__swift_getEnumTagSinglePayload(v17, 1, v88) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v17[v81], 1, v82) == 1)
        {
          sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }
      }

      else
      {
        sub_21738C4B0(v17, v0, &unk_27CB277C0, &qword_217758DC0);
        if (__swift_getEnumTagSinglePayload(&v17[v81], 1, v82) != 1)
        {
          v83 = v87;
          (*(v87 + 32))(v73, &v17[v81], v82);
          OUTLINED_FUNCTION_2_100();
          sub_2175DEBD0(v84);
          sub_217751F08();
          v85 = *(v83 + 8);
          v85(v73, v82);
          v85(v0, v82);
          sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }

        (*(v87 + 8))(v0, v82);
      }

      v35 = &qword_27CB24840;
      v36 = &unk_217758DD0;
      v37 = v17;
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175DCCE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1684957547 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74736F48776F6873 && a2 == 0xEC000000656D614ELL;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 7107189 && a2 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_217753058();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2175DCF84(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 1684957547;
      break;
    case 5:
      result = 0x74736F48776F6873;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175DD080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175DCCE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175DD0A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2175DCF7C();
  *a1 = result;
  return result;
}

uint64_t sub_2175DD0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DF7C0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175DD10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DF7C0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudRadioShow.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v27;
  a24 = v28;
  v29 = v24;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A9A0, &qword_2177842B0);
  OUTLINED_FUNCTION_0_0();
  v34 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_111();
  v36 = OUTLINED_FUNCTION_160(v31, v31[3]);
  sub_2175DF7C0(v36, v37, v38);
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v39, v40, v41);
  OUTLINED_FUNCTION_12_33();
  memcpy(v42, v43, v44);
  a14 = 0;
  sub_21738C4B0(&v72, v70, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v45 = sub_2172DEEB4();
  OUTLINED_FUNCTION_28_12(v71, &a14, v46, v47, v45);
  memcpy(v70, v71, sizeof(v70));
  if (v25)
  {
    sub_2171F0738(v70, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    sub_2171F0738(v70, &qword_27CB25000, &unk_21776EA00);
    v69 = *(v29 + 440);
    a13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v48 = sub_2175D4B00(&unk_280BE23A0);
    OUTLINED_FUNCTION_28_12(&v69, &a13, v49, v50, v48);
    memcpy(v68, (v29 + 448), sizeof(v68));
    memcpy(v67, (v29 + 448), sizeof(v67));
    a12 = 2;
    sub_21738C4B0(v68, v66, &qword_27CB25010, &qword_21775B4F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    v51 = sub_2172DF104();
    OUTLINED_FUNCTION_28_12(v67, &a12, v52, v53, v51);
    memcpy(v66, v67, sizeof(v66));
    sub_2171F0738(v66, &qword_27CB25010, &qword_21775B4F8);
    v65 = *(v29 + 520);
    a11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v54 = sub_2175D4A04();
    v57 = OUTLINED_FUNCTION_28_12(&v65, &a11, v55, v56, v54);
    LOBYTE(v65) = *(v29 + 528);
    a11 = 4;
    sub_2175D4AAC(v57, v58, v59);
    sub_217752F38();
    OUTLINED_FUNCTION_36_32(5);
    OUTLINED_FUNCTION_36_32(6);
    v60 = *(type metadata accessor for CloudRadioShow.Attributes(0) + 44);
    LOBYTE(v65) = 7;
    sub_2177516D8();
    OUTLINED_FUNCTION_2_100();
    v62 = sub_2175DEBD0(v61);
    OUTLINED_FUNCTION_28_12(v29 + v60, &v65, v63, v64, v62);
  }

  (*(v34 + 8))(v26, v32);
  OUTLINED_FUNCTION_170();
}

void CloudRadioShow.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  memcpy(v23, v0, sizeof(v23));
  v13 = *(v0 + 432);
  memcpy(v24, v0, sizeof(v24));
  v25 = v13;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v24) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v22, v23, sizeof(v22));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    v14 = OUTLINED_FUNCTION_179();
    sub_217265A08(v14, v15);
  }

  if (*(v0 + 440))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 512))
  {
    v16 = *(v0 + 464);
    v22[0] = *(v0 + 448);
    v22[1] = v16;
    v17 = *(v0 + 496);
    v22[2] = *(v0 + 480);
    v22[3] = v17;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)(v2);
    sub_217751DE8();
    v18 = OUTLINED_FUNCTION_179();
    sub_217265A08(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 520))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 528) == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  if (*(v0 + 544))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 560))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v20 = type metadata accessor for CloudRadioShow.Attributes(0);
  sub_21738C4B0(v0 + *(v20 + 44), v12, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v5 + 32))(v9, v12, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_2_100();
    sub_2175DEBD0(v21);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_13();
}

void CloudRadioShow.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v62 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_131_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A9A8, &qword_2177842B8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v33 = type metadata accessor for CloudRadioShow.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v63 = v36 - v35;
  v37 = OUTLINED_FUNCTION_160(v29, v29[3]);
  sub_2175DF7C0(v37, v38, v39);
  sub_2177532C8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    a14 = 0;
    sub_2172DF600();
    sub_217752E58();
    memcpy(v63, v66, 0x1B8uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    LOBYTE(v64) = 1;
    v40 = sub_2175D4B00(&unk_280BE2398);
    OUTLINED_FUNCTION_14_52(v40, &v64, v41, v42, v40);
    *(v63 + 440) = v65[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    a13 = 2;
    v43 = sub_2172DF7DC();
    OUTLINED_FUNCTION_14_52(v43, &a13, v44, v45, v43);
    memcpy((v63 + 448), v65, 0x48uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    a12 = 3;
    v46 = sub_2175D4B80();
    v49 = OUTLINED_FUNCTION_14_52(v46, &a12, v47, v48, v46);
    *(v63 + 520) = v64;
    a12 = 4;
    sub_21738B1DC(v49, v50, v51);
    sub_217752E58();
    *(v63 + 528) = v64;
    *(v63 + 536) = OUTLINED_FUNCTION_47_24(5);
    *(v63 + 544) = v52;
    *(v63 + 552) = OUTLINED_FUNCTION_47_24(6);
    *(v63 + 560) = v53;
    sub_2177516D8();
    LOBYTE(v64) = 7;
    OUTLINED_FUNCTION_2_100();
    v55 = sub_2175DEBD0(v54);
    OUTLINED_FUNCTION_14_52(v55, &v64, v56, v57, v55);
    v58 = OUTLINED_FUNCTION_8_65();
    v59(v58);
    sub_21751AF10(v25, v63 + *(v33 + 44));
    OUTLINED_FUNCTION_5_76();
    sub_2175DEC14(v63, v62, v60);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_75();
    sub_2175DEB78(v63, v61);
  }

  OUTLINED_FUNCTION_170();
}

void CloudRadioShow.Relationships.CodingKeys.init(rawValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

void CloudRadioShow.Relationships.CodingKeys.init(stringValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

uint64_t sub_2175DE010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C674(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175DE04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C674(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudRadioShow.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_1(a1, v7);
  OUTLINED_FUNCTION_33_1(a2, v9);
  if (v8)
  {
    sub_21738C4B0(v7, v6, &qword_27CB242C0, &unk_21775D650);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE118(v6, v5);
      sub_2171F0738(v5, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
      return (v3 & 1) != 0;
    }

    sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
  }

  else if (!v9[2])
  {
    sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
    return 1;
  }

  sub_2171F0738(v7, &qword_27CB25198, &qword_21775B550);
  return 0;
}

uint64_t CloudRadioShow.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A9B0, &qword_2177842C0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_0();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C674(v7, v8, v9);
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2175DF8D4(&qword_27CB251B8);
  sub_217752F38();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudRadioShow.Relationships.hash(into:)(uint64_t a1)
{
  sub_21738C4B0(v1, __src, &qword_27CB242C0, &unk_21775D650);
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE724(a1);
  return sub_2171F0738(v4, &qword_27CB242C8, &unk_217758970);
}

uint64_t CloudRadioShow.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_21738C4B0(v0, __src, &qword_27CB242C0, &unk_21775D650);
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

void CloudRadioShow.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v16 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A9B8, &qword_2177842C8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8 - 8];
  v10 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21738C674(v10, v11, v12);
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2175DF8D4(&qword_27CB25200);
    sub_217752E58();
    (*(v6 + 8))(v9, v4);
    memcpy(v15, v14, sizeof(v15));
    memcpy(v16, v15, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175DE68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DF958(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175DE6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DF958(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudRadioShow.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A9C0, &qword_2177842D0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175DF958(v7, v8, v9);
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

MusicKit::CloudRadioShow::Metadata __swiftcall CloudRadioShow.Metadata.init(snippets:)(Swift::OpaquePointer_optional snippets)
{
  rawValue = snippets.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.snippets.value._rawValue = v4;
  result.snippets.is_nil = v5;
  return result;
}

uint64_t static CloudRadioShow.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_217751DE8();
      sub_21726F358();
      v4 = v3;

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2175DE9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE41F8[0];
  if (!qword_280BE41F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE41F8);
  }

  return result;
}

uint64_t sub_2175DEA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudRadioShow.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2175DEA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE41D0;
  if (!qword_280BE41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE41D0);
  }

  return result;
}

unint64_t sub_2175DEAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE41E0;
  if (!qword_280BE41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE41E0);
  }

  return result;
}

unint64_t sub_2175DEB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE41C0;
  if (!qword_280BE41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE41C0);
  }

  return result;
}

uint64_t sub_2175DEB78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2175DEBD0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2175DEC14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_2175DEC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DF9AC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175DECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DF9AC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudRadioShow.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A9D0, &qword_2177842D8);
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_111();
  v27 = OUTLINED_FUNCTION_160(v22, v22[3]);
  sub_2175DF9AC(v27, v28, v29);
  sub_217751DE8();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  sub_2175D4ED4(&qword_27CB25298);
  sub_217752F38();

  (*(v25 + 8))(v20, v23, v30);
  OUTLINED_FUNCTION_170();
}

void CloudRadioShow.Metadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    OUTLINED_FUNCTION_119();

    sub_21727DDE0(a1, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CloudRadioShow.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727DDE0(v8, v1, v2, v3, v4, v5, v6);
  }

  return sub_217753238();
}

void CloudRadioShow.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A9E0, &qword_2177842E0);
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_131_0();
  v20 = OUTLINED_FUNCTION_160(v13, v13[3]);
  sub_2175DF9AC(v20, v21, v22);
  sub_2177532C8();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2175D4ED4(&qword_280BE2358);
    sub_217752E58();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudRadioShow.attributes.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudRadioShow(v2);
  OUTLINED_FUNCTION_5_76();
  return sub_2175DEC14(v1 + v3, v0, v4);
}

uint64_t CloudRadioShow.relationships.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudRadioShow(v2);
  return sub_21738C4B0(v1 + *(v3 + 24), v0, &qword_27CB25640, &qword_217764750);
}

uint64_t CloudRadioShow.views.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudRadioShow(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudRadioShow.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(v1 + *(type metadata accessor for CloudRadioShow(v2) + 32));
  *v0 = v3;

  return sub_21733CF78(v3);
}

uint64_t CloudRadioShow.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudRadioShow(0) + 32);
  result = sub_21733CF74(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_2175DF2C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4C00;
  v2 = byte_280BE4C08;
  *(v0 + 32) = qword_280BE4BF8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_27CB2A980 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175DF390(char a1)
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

uint64_t sub_2175DF424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2175DF478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DE9C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175DF4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175DE9C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudRadioShow.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = type metadata accessor for CloudRadioShow(0);
  CloudRadioShow.Attributes.hash(into:)();
  sub_21738C4B0(v1 + *(v3 + 24), __src, &qword_27CB25640, &qword_217764750);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    sub_21738C4B0(__dst, v11, &qword_27CB242C0, &unk_21775D650);
    if (v11[2])
    {
      memcpy(v10, v11, sizeof(v10));
      OUTLINED_FUNCTION_24();
      sub_2172DE724(a1);
      sub_2171F0738(v10, &qword_27CB242C8, &unk_217758970);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_21733BB04(__dst);
  }

  sub_217753208();
  v4 = *(v1 + *(v3 + 32));
  if (v4 == 1 || (OUTLINED_FUNCTION_24(), !v4))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0(a1, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_2175DF664(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2175DF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudRadioShow.convertToCloudRawCurator()()
{
  OUTLINED_FUNCTION_1_106();
  sub_2175DEC14(v1, v3, v2);
  type metadata accessor for CloudRawCurator(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2175DF7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE42C0;
  if (!qword_280BE42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42C0);
  }

  return result;
}

unint64_t sub_2175DF814(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2175DEBD0(&unk_27CB251C8);
    v3 = sub_2175DEBD0(&unk_27CB251D0);
    result = OUTLINED_FUNCTION_44(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175DF8D4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2175DF814(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175DF958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A9C8;
  if (!qword_27CB2A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A9C8);
  }

  return result;
}

unint64_t sub_2175DF9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A9D8;
  if (!qword_27CB2A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A9D8);
  }

  return result;
}

unint64_t sub_2175DFA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A9F0;
  if (!qword_27CB2A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A9F0);
  }

  return result;
}

unint64_t sub_2175DFAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A9F8;
  if (!qword_27CB2A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A9F8);
  }

  return result;
}

unint64_t sub_2175DFAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA00;
  if (!qword_27CB2AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA00);
  }

  return result;
}

unint64_t sub_2175DFB54()
{
  result = qword_27CB2AA08;
  if (!qword_27CB2AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2AA10, &qword_217784490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA08);
  }

  return result;
}

unint64_t sub_2175DFBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA18;
  if (!qword_27CB2AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA18);
  }

  return result;
}

unint64_t sub_2175DFC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA20;
  if (!qword_27CB2AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA20);
  }

  return result;
}

unint64_t sub_2175DFC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA28;
  if (!qword_27CB2AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA28);
  }

  return result;
}

void sub_2175DFE24(uint64_t a1)
{
  type metadata accessor for CloudRadioShow.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE41C8, &type metadata for CloudRadioShow.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE41D8, &type metadata for CloudRadioShow.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE41B8, &type metadata for CloudRadioShow.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2175DFF40(uint64_t a1)
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  if (v1 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v2 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE4308, &qword_27CB25040, &qword_21775B518);
      if (v3 <= 0x3F)
      {
        sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
        if (v4 <= 0x3F)
        {
          sub_2172E2E58(319, &qword_280BE4F80, &type metadata for CloudCurator.Kind);
          if (v5 <= 0x3F)
          {
            sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_2172E2DB0(319);
              if (v7 <= 0x3F)
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

_BYTE *sub_2175E00FC(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CloudRadioShow.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudRadioShow.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudRadioShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175E03FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA40;
  if (!qword_27CB2AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA40);
  }

  return result;
}

unint64_t sub_2175E0454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA48;
  if (!qword_27CB2AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA48);
  }

  return result;
}

unint64_t sub_2175E04AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA50;
  if (!qword_27CB2AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA50);
  }

  return result;
}

unint64_t sub_2175E0504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA58;
  if (!qword_27CB2AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA58);
  }

  return result;
}

unint64_t sub_2175E055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA60;
  if (!qword_27CB2AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA60);
  }

  return result;
}

unint64_t sub_2175E05B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA68;
  if (!qword_27CB2AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA68);
  }

  return result;
}

unint64_t sub_2175E060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AA70;
  if (!qword_27CB2AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA70);
  }

  return result;
}

unint64_t sub_2175E0664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE42B0;
  if (!qword_280BE42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42B0);
  }

  return result;
}

unint64_t sub_2175E06BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE42B8;
  if (!qword_280BE42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42B8);
  }

  return result;
}

unint64_t sub_2175E0714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE41E8;
  if (!qword_280BE41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE41E8);
  }

  return result;
}

unint64_t sub_2175E076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE41F0;
  if (!qword_280BE41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE41F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_47_24@<X0>(char a1@<W8>)
{
  *(v1 + 64) = a1;

  return sub_217752E18();
}

uint64_t static CloudGenre.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_186_0(a1) == *a2 && *(v2 + 8) == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudGenre(0);
  static CloudGenre.Attributes.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  sub_21738C4B0(v2 + v7, v20, &qword_27CB24AA0, &qword_21775D8F0);
  sub_21738C4B0(a2 + v7, v22, &qword_27CB24AA0, &qword_21775D8F0);
  if (v21 == 1)
  {
    if (v22[2] == 1)
    {
      sub_2171F0738(v20, &qword_27CB24AA0, &qword_21775D8F0);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_21738C4B0(v20, v19, &qword_27CB24AA0, &qword_21775D8F0);
  if (v22[2] == 1)
  {
    sub_217284594(v19);
LABEL_12:
    sub_2171F0738(v20, &qword_27CB2AA88, &qword_217784DC8);
    return 0;
  }

  memcpy(v18, v22, sizeof(v18));
  v8 = static CloudGenre.Relationships.== infix(_:_:)(v19, v18);
  sub_217284594(v18);
  sub_217284594(v19);
  sub_2171F0738(v20, &qword_27CB24AA0, &qword_21775D8F0);
  if (!v8)
  {
    return 0;
  }

LABEL_14:
  if (*(v2 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v9 = v5[8];
  v10 = *(v2 + v9);
  v11 = *(a2 + v9);
  if (v10 != 1)
  {
    if (v11 == 1)
    {
      sub_21733CF78(v10);
      sub_21733CF78(1);
      sub_21733CF78(v10);

LABEL_21:
      sub_217221010(v10);
      v13 = v11;
LABEL_32:
      sub_217221010(v13);
      return 0;
    }

    if (v10)
    {
      if (v11)
      {
        sub_21733CF78(v10);
        sub_21733CF78(v11);
        sub_21733CF78(v10);
        sub_21733CF78(v11);
        OUTLINED_FUNCTION_93();
        sub_21726F358();
        v15 = v14;
        sub_217221010(v11);
        sub_217221010(v11);
        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:

        sub_217221010(v10);
        return 1;
      }

      sub_21733CF78(v10);
      v16 = v10;
    }

    else
    {
      sub_21733CF78(0);
      v16 = 0;
      if (!v11)
      {
        sub_21733CF78(0);
        sub_21733CF78(0);
        sub_217221010(0);
        goto LABEL_28;
      }
    }

    sub_21733CF78(v11);
    sub_21733CF78(v16);
    sub_217221010(v11);
LABEL_31:

    v13 = v10;
    goto LABEL_32;
  }

  sub_21733CF78(1);
  if (v11 != 1)
  {
    sub_21733CF78(v11);
    goto LABEL_21;
  }

  v12 = 1;
  sub_21733CF78(1);
  sub_217221010(1);
  return v12;
}

void CloudGenre.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v45 = v3;
  type metadata accessor for CloudGenre.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AA90, &qword_217784DD0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_131_0();
  v9 = type metadata accessor for CloudGenre(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v46 = *(v11 + 32);
  v14 = (v13 - v12);
  *(v13 - v12 + v46) = 1;
  v15 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2175E39D4(v15, v16, v17);
  v18 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217221010(*(v14 + v46));
  }

  else
  {
    sub_2172E1C68(v18, v19, v20);
    OUTLINED_FUNCTION_42_31();
    sub_217752EA8();
    v21 = v47[1];
    *v14 = v47[0];
    v14[1] = v21;
    LOBYTE(v47[0]) = 1;
    OUTLINED_FUNCTION_15_55();
    sub_2175E3BE0(v22);
    sub_217752EA8();
    v23 = sub_2175E3A28(v7, v14 + v9[5]);
    sub_2175E3A8C(v23, v24, v25);
    OUTLINED_FUNCTION_42_31();
    sub_217752E58();
    v26 = memcpy(v14 + v9[6], v47, 0x80uLL);
    v29 = sub_2175E3AE0(v26, v27, v28);
    v33 = OUTLINED_FUNCTION_34(&type metadata for CloudGenre.Associations, v30, v31, v32, v29);
    *v9[7] = v47[0];
    v36 = sub_2175E3B34(v33, v34, v35);
    OUTLINED_FUNCTION_34(&type metadata for CloudGenre.Metadata, v37, v38, v39, v36);
    v40 = OUTLINED_FUNCTION_16_3();
    v41(v40);
    v42 = v47[0];
    sub_217221010(*(v14 + v46));
    *(v14 + v46) = v42;
    OUTLINED_FUNCTION_1_107();
    sub_2175E5E44(v14, v45, v43);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_4_94();
    sub_2175E3B88(v14, v44);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudGenre.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AA98, &qword_217784DD8);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_87_2();
  v10 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175E39D4(v10, v11, v12);
  v13 = sub_2177532F8();
  sub_2172E1B18(v13, v14, v15);
  OUTLINED_FUNCTION_4_5();
  sub_217752F88();
  if (!v2)
  {
    v17 = type metadata accessor for CloudGenre(0);
    type metadata accessor for CloudGenre.Attributes(0);
    OUTLINED_FUNCTION_15_55();
    sub_2175E3BE0(v18);
    v19 = sub_217752F88();
    sub_21733C378(v19, v20, v21);
    v22 = sub_217752F38();
    sub_21733C324(v22, v23, v24);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v29 = *(v4 + *(v17 + 32));
    v25 = sub_21733CF78(v29);
    sub_2174D7BC8(v25, v26, v27);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v16.n128_f64[0] = sub_217221010(v29);
  }

  return (*(v8 + 8))(v3, v6, v16);
}

uint64_t CloudGenre.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

void static CloudGenre.Attributes.== infix(_:_:)()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_111();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_12_33();
  memcpy(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_39_24();
  memcpy(v20, v4, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v21, v22, v23);
  memcpy(&v106[55], v4, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v24, v25, v26);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v109) == 1)
  {
    OUTLINED_FUNCTION_19_26(v105);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v105) == 1)
    {
      v91 = v13;
      v92 = v9;
      v93 = v7;
      memcpy(v107, v106, sizeof(v107));
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v27, v28, v29, &unk_21776EA00);
      OUTLINED_FUNCTION_39_24();
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v30, v31, v32, &unk_21776EA00);
      sub_2171F0738(v107, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v105, v106, sizeof(v105));
    OUTLINED_FUNCTION_33_1(v108, v107);
    v33 = OUTLINED_FUNCTION_39_24();
    OUTLINED_FUNCTION_33_1(v33, v107);
    v34 = &unk_27CB25008;
    v35 = &unk_21778F850;
    v36 = v105;
LABEL_6:
    sub_2171F0738(v36, v34, v35);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_19_26(v103);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v103) == 1)
  {
    goto LABEL_5;
  }

  v91 = v13;
  v92 = v9;
  v93 = v7;
  OUTLINED_FUNCTION_19_26(v94);
  OUTLINED_FUNCTION_19_26(v105);
  memcpy(v107, v106, sizeof(v107));
  sub_21738C4B0(v108, v95, &qword_27CB25000, &unk_21776EA00);
  v37 = OUTLINED_FUNCTION_39_24();
  sub_21738C4B0(v37, v95, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v39 = v38;
  sub_2171F0738(v94, &qword_27CB25000, &unk_21776EA00);
  memcpy(v95, v106, sizeof(v95));
  sub_2171F0738(v95, &qword_27CB25000, &unk_21776EA00);
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v40 = *(v6 + 448);
  v41 = *(v4 + 448);
  if (v40)
  {
    if (!v41)
    {
      goto LABEL_7;
    }

    v42 = *(v6 + 440) == *(v4 + 440) && v40 == v41;
    if (!v42 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v41)
  {
    goto LABEL_7;
  }

  v43 = *(v4 + 456);
  if (*(v6 + 456))
  {
    if (!v43)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262A00();
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v43)
  {
    goto LABEL_7;
  }

  memcpy(v94, (v6 + 464), 0x48uLL);
  memcpy(v95, (v4 + 464), 0x48uLL);
  v46 = *(v6 + 480);
  v99 = *(v6 + 464);
  v100 = v46;
  v47 = *(v6 + 512);
  v101 = *(v6 + 496);
  v102 = v47;
  v48 = v94[8];
  if (v94[8])
  {
    if (v95[8])
    {
      v49 = *(v4 + 480);
      v96[0] = *(v4 + 464);
      v96[1] = v49;
      v50 = *(v4 + 512);
      v96[2] = *(v4 + 496);
      v96[3] = v50;
      *&v96[4] = v95[8];
      memcpy(v106, v96, 0x48uLL);
      v51 = *(v6 + 480);
      v103[0] = *(v6 + 464);
      v103[1] = v51;
      v52 = *(v6 + 512);
      v103[2] = *(v6 + 496);
      v103[3] = v52;
      v104 = v94[8];
      sub_21738C4B0(v94, v97, &qword_27CB25010, &qword_21775B4F8);
      sub_21738C4B0(v95, v97, &qword_27CB25010, &qword_21775B4F8);
      sub_2172A9570();
      v54 = v53;
      sub_2171F0738(v96, &qword_27CB25010, &qword_21775B4F8);
      v97[0] = v99;
      v97[1] = v100;
      v97[2] = v101;
      v97[3] = v102;
      v98 = v48;
      sub_2171F0738(v97, &qword_27CB25010, &qword_21775B4F8);
      if ((v54 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v95[8])
  {
LABEL_28:
    OUTLINED_FUNCTION_35_30();
    v55 = *(v4 + 480);
    *&v106[9] = *(v4 + 464);
    *&v106[11] = v55;
    v56 = *(v4 + 512);
    *&v106[13] = *(v4 + 496);
    *&v106[15] = v56;
    v106[8] = v48;
    v106[17] = v57;
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v58, v59, v60, &qword_21775B4F8);
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v61, v62, v63, &qword_21775B4F8);
    v34 = &unk_27CB25018;
    v35 = &unk_21775B500;
    v36 = v106;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_35_30();
  v106[8] = 0;
  OUTLINED_FUNCTION_23_5();
  sub_21738C4B0(v64, v65, v66, &qword_21775B4F8);
  OUTLINED_FUNCTION_23_5();
  sub_21738C4B0(v67, v68, v69, &qword_21775B4F8);
  sub_2171F0738(v106, &qword_27CB25010, &qword_21775B4F8);
LABEL_30:
  v70 = *(v4 + 536);
  if (*(v6 + 536))
  {
    if (!v70)
    {
      goto LABEL_7;
    }

    sub_217751DE8();
    sub_217262CB4();
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v70)
  {
    goto LABEL_7;
  }

  v73 = *(v6 + 544);
  v74 = *(v4 + 544);
  if (v73 == 3)
  {
    if (v74 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v74 == 3 || (sub_2177072D0(v73, v74) & 1) == 0)
  {
    goto LABEL_7;
  }

  v75 = *(v6 + 560);
  v76 = *(v4 + 560);
  if (v75)
  {
    if (!v76)
    {
      goto LABEL_7;
    }

    v77 = *(v6 + 552) == *(v4 + 552) && v75 == v76;
    if (!v77 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v76)
  {
    goto LABEL_7;
  }

  v78 = *(v6 + 576);
  v79 = *(v4 + 576);
  if (v78)
  {
    if (!v79)
    {
      goto LABEL_7;
    }

    v80 = *(v6 + 568) == *(v4 + 568) && v78 == v79;
    if (!v80 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v79)
  {
    goto LABEL_7;
  }

  v81 = *(v6 + 592);
  v82 = *(v4 + 592);
  if (v81)
  {
    if (!v82)
    {
      goto LABEL_7;
    }

    v83 = *(v6 + 584) == *(v4 + 584) && v81 == v82;
    if (!v83 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v82)
  {
    goto LABEL_7;
  }

  v84 = *(v6 + 608);
  v85 = *(v4 + 608);
  if (!v84)
  {
    if (v85)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

  if (v85)
  {
    v86 = *(v6 + 600) == *(v4 + 600) && v84 == v85;
    if (v86 || (sub_217753058() & 1) != 0)
    {
LABEL_76:
      v87 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
      v88 = *(v15 + 48);
      sub_21738C4B0(v6 + v87, v0, &unk_27CB277C0, &qword_217758DC0);
      sub_21738C4B0(v4 + v87, v0 + v88, &unk_27CB277C0, &qword_217758DC0);
      if (__swift_getEnumTagSinglePayload(v0, 1, v93) == 1)
      {
        if (__swift_getEnumTagSinglePayload(v0 + v88, 1, v93) == 1)
        {
          sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }
      }

      else
      {
        sub_21738C4B0(v0, v1, &unk_27CB277C0, &qword_217758DC0);
        if (__swift_getEnumTagSinglePayload(v0 + v88, 1, v93) != 1)
        {
          (*(v92 + 32))(v91, v0 + v88, v93);
          OUTLINED_FUNCTION_2_101();
          sub_2175E3BE0(v89);
          sub_217751F08();
          v90 = *(v92 + 8);
          v90(v91, v93);
          v90(v1, v93);
          sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }

        (*(v92 + 8))(v1, v93);
      }

      v34 = &qword_27CB24840;
      v35 = &unk_217758DD0;
      v36 = v0;
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175E19CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x62614C7472616863 && a2 == 0xEA00000000006C65;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1684957547 && a2 == 0xE400000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x614E746E65726170 && a2 == 0xEA0000000000656DLL;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 7107189 && a2 == 0xE300000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_217753058();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_2175E1D40(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x62614C7472616863;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 4:
      result = 0x6169726F74696465;
      break;
    case 5:
      result = 1684957547;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6449746E65726170;
      break;
    case 8:
      result = 0x614E746E65726170;
      break;
    case 9:
      result = 0x6D614E74726F6873;
      break;
    case 10:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175E1E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175E19CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175E1EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E5DF0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175E1EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E5DF0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudGenre.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v27;
  a24 = v28;
  v29 = v24;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAA0, &qword_217784DE0);
  OUTLINED_FUNCTION_0_0();
  v34 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_111();
  v36 = OUTLINED_FUNCTION_160(v31, v31[3]);
  sub_2175E5DF0(v36, v37, v38);
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v39, v40, v41);
  OUTLINED_FUNCTION_12_33();
  memcpy(v42, v43, v44);
  a14 = 0;
  sub_21738C4B0(&v75, v73, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v45 = sub_2172DEEB4();
  OUTLINED_FUNCTION_28_12(v74, &a14, v46, v47, v45);
  memcpy(v73, v74, sizeof(v73));
  if (v25)
  {
    sub_2171F0738(v73, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    sub_2171F0738(v73, &qword_27CB25000, &unk_21776EA00);
    v71[0] = 1;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v72 = *(v29 + 456);
    a13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v48 = sub_2175D4B00(&unk_280BE23A0);
    OUTLINED_FUNCTION_28_12(&v72, &a13, v49, v50, v48);
    memcpy(v71, (v29 + 464), sizeof(v71));
    memcpy(v70, (v29 + 464), sizeof(v70));
    a12 = 3;
    sub_21738C4B0(v71, v69, &qword_27CB25010, &qword_21775B4F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    v51 = sub_2172DF104();
    OUTLINED_FUNCTION_28_12(v70, &a12, v52, v53, v51);
    memcpy(v69, v70, sizeof(v69));
    sub_2171F0738(v69, &qword_27CB25010, &qword_21775B4F8);
    *&v68 = *(v29 + 536);
    a11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v54 = sub_2175D4A04();
    v57 = OUTLINED_FUNCTION_28_12(&v68, &a11, v55, v56, v54);
    LOBYTE(v68) = *(v29 + 544);
    a11 = 5;
    sub_2175D4AAC(v57, v58, v59);
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    LOBYTE(v68) = 6;
    OUTLINED_FUNCTION_38_7();
    v60 = sub_217752EF8();
    v68 = *(v29 + 568);
    a11 = 7;
    sub_2172E1B18(v60, v61, v62);
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    LOBYTE(v68) = 8;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    LOBYTE(v68) = 9;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v63 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
    LOBYTE(v68) = 10;
    sub_2177516D8();
    OUTLINED_FUNCTION_2_101();
    v65 = sub_2175E3BE0(v64);
    OUTLINED_FUNCTION_28_12(v29 + v63, &v68, v66, v67, v65);
  }

  (*(v34 + 8))(v26, v32);
  OUTLINED_FUNCTION_170();
}

void CloudGenre.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  memcpy(v23, v0, sizeof(v23));
  v13 = *(v0 + 432);
  memcpy(v24, v0, sizeof(v24));
  v25 = v13;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v24) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v22, v23, sizeof(v22));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    v14 = OUTLINED_FUNCTION_179();
    sub_217265A08(v14, v15);
  }

  if (*(v0 + 448))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 456))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 528))
  {
    v16 = *(v0 + 480);
    v22[0] = *(v0 + 464);
    v22[1] = v16;
    v17 = *(v0 + 512);
    v22[2] = *(v0 + 496);
    v22[3] = v17;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)(v2);
    sub_217751DE8();
    v18 = OUTLINED_FUNCTION_179();
    sub_217265A08(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 536))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 544) == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  if (*(v0 + 560))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 576))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 592))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 608))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v20 = type metadata accessor for CloudGenre.Attributes(0);
  sub_21738C4B0(v0 + *(v20 + 56), v12, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v5 + 32))(v9, v12, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_2_101();
    sub_2175E3BE0(v21);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_13();
}

void CloudGenre.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  v74 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_131_0();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAA8, &qword_217784DE8);
  OUTLINED_FUNCTION_0_0();
  v34 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_87_2();
  v36 = type metadata accessor for CloudGenre.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v76 = v39 - v38;
  v41 = v30[3];
  v40 = v30[4];
  v42 = OUTLINED_FUNCTION_160(v30, v41);
  sub_2175E5DF0(v42, v43, v44);
  sub_2177532C8();
  if (v24)
  {
    OUTLINED_FUNCTION_52_25();
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (v30)
    {

      if ((v41 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v41)
    {
LABEL_5:
      if (v40)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v40)
    {
LABEL_6:
      memcpy(v79, (v76 + 464), 0x48uLL);
      sub_2171F0738(v79, &qword_27CB25010, &qword_21775B4F8);
      if ((v34 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v34)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  a14 = 0;
  sub_2172DF600();
  sub_217752E58();
  memcpy(v76, v79, 0x1B8uLL);
  LOBYTE(v78[0]) = 1;
  *(v76 + 440) = sub_217752E18();
  *(v76 + 448) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
  LOBYTE(v77) = 2;
  v46 = sub_2175D4B00(&unk_280BE2398);
  OUTLINED_FUNCTION_31_36(v46, &v77, v47, v48, v46);
  *(v76 + 456) = v78[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
  a13 = 3;
  v49 = sub_2172DF7DC();
  OUTLINED_FUNCTION_31_36(v49, &a13, v50, v51, v49);
  memcpy((v76 + 464), v78, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
  a12 = 4;
  v52 = sub_2175D4B80();
  v55 = OUTLINED_FUNCTION_31_36(v52, &a12, v53, v54, v52);
  *(v76 + 536) = v77;
  a12 = 5;
  v58 = sub_21738B1DC(v55, v56, v57);
  OUTLINED_FUNCTION_45_31(&type metadata for CloudCurator.Kind, v59, v60, v61, v58);
  *(v76 + 544) = v77;
  OUTLINED_FUNCTION_37_31(6);
  v62 = sub_217752E18();
  *(v76 + 552) = v62;
  *(v76 + 560) = v63;
  a12 = 7;
  v65 = sub_2172E1C68(v62, v63, v64);
  OUTLINED_FUNCTION_45_31(&type metadata for MusicItemID, v66, v67, v68, v65);
  *(v76 + 568) = v77;
  OUTLINED_FUNCTION_37_31(8);
  *(v76 + 584) = sub_217752E18();
  *(v76 + 592) = v69;
  OUTLINED_FUNCTION_37_31(9);
  *(v76 + 600) = sub_217752E18();
  *(v76 + 608) = v70;
  sub_2177516D8();
  LOBYTE(v77) = 10;
  OUTLINED_FUNCTION_2_101();
  sub_2175E3BE0(v71);
  sub_217752E58();
  (*(v34 + 8))(v25, v75);
  sub_21751AF10(v26, v76 + *(v36 + 56));
  OUTLINED_FUNCTION_6_76();
  sub_2175E5E44(v76, v74, v72);
  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_5_77();
  sub_2175E3B88(v76, v73);
LABEL_12:
  OUTLINED_FUNCTION_170();
}

void CloudGenre.Relationships.CodingKeys.init(rawValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

void CloudGenre.Relationships.CodingKeys.init(stringValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

uint64_t sub_2175E3018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C6C8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175E3054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C6C8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudGenre.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_1(a1, v7);
  OUTLINED_FUNCTION_33_1(a2, v9);
  if (v8)
  {
    sub_21738C4B0(v7, v6, &qword_27CB242C0, &unk_21775D650);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE118(v6, v5);
      sub_2171F0738(v5, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
      return (v3 & 1) != 0;
    }

    sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
  }

  else if (!v9[2])
  {
    sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
    return 1;
  }

  sub_2171F0738(v7, &qword_27CB25198, &qword_21775B550);
  return 0;
}

uint64_t CloudGenre.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAB0, &qword_217784DF0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_0();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C6C8(v7, v8, v9);
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2175E5F60(&qword_27CB251B8);
  sub_217752F38();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudGenre.Relationships.hash(into:)(uint64_t a1)
{
  sub_21738C4B0(v1, __src, &qword_27CB242C0, &unk_21775D650);
  if (!__src[2])
  {
    return sub_217753208();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE724(a1);
  return sub_2171F0738(v4, &qword_27CB242C8, &unk_217758970);
}

uint64_t CloudGenre.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_21738C4B0(v0, __src, &qword_27CB242C0, &unk_21775D650);
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

void CloudGenre.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v16 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAB8, &qword_217784DF8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8 - 8];
  v10 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21738C6C8(v10, v11, v12);
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2175E5F60(&qword_27CB25200);
    sub_217752E58();
    (*(v6 + 8))(v9, v4);
    memcpy(v15, v14, sizeof(v15));
    memcpy(v16, v15, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175E369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E5FE4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175E36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E5FE4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudGenre.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAC0, &qword_217784E00);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175E5FE4(v7, v8, v9);
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

MusicKit::CloudGenre::Metadata __swiftcall CloudGenre.Metadata.init(snippets:)(Swift::OpaquePointer_optional snippets)
{
  rawValue = snippets.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.snippets.value._rawValue = v4;
  result.snippets.is_nil = v5;
  return result;
}

uint64_t static CloudGenre.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_217751DE8();
      sub_21726F358();
      v4 = v3;

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2175E39D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5568[0];
  if (!qword_280BE5568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5568);
  }

  return result;
}

uint64_t sub_2175E3A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudGenre.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2175E3A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5528;
  if (!qword_280BE5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5528);
  }

  return result;
}

unint64_t sub_2175E3AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5550;
  if (!qword_280BE5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5550);
  }

  return result;
}

unint64_t sub_2175E3B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5518;
  if (!qword_280BE5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5518);
  }

  return result;
}

uint64_t sub_2175E3B88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2175E3BE0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2175E3C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E6038(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175E3C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E6038(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudGenre.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAD0, &qword_217784E08);
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_111();
  v27 = OUTLINED_FUNCTION_160(v22, v22[3]);
  sub_2175E6038(v27, v28, v29);
  sub_217751DE8();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  sub_2175D4ED4(&qword_27CB25298);
  sub_217752F38();

  (*(v25 + 8))(v20, v23, v30);
  OUTLINED_FUNCTION_170();
}

void CloudGenre.Metadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    OUTLINED_FUNCTION_119();

    sub_21727DDE0(a1, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CloudGenre.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727DDE0(v8, v1, v2, v3, v4, v5, v6);
  }

  return sub_217753238();
}

void CloudGenre.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAE0, &qword_217784E10);
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_131_0();
  v20 = OUTLINED_FUNCTION_160(v13, v13[3]);
  sub_2175E6038(v20, v21, v22);
  sub_2177532C8();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2175D4ED4(&qword_280BE2358);
    sub_217752E58();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudGenre.attributes.getter()
{
  OUTLINED_FUNCTION_61_17();
  OUTLINED_FUNCTION_6_76();
  return sub_2175E5E44(v1 + v2, v0, v3);
}

uint64_t CloudGenre.views.getter()
{
  result = OUTLINED_FUNCTION_61_17();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudGenre.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_61_17() + 32));
  *v0 = v2;

  return sub_21733CF78(v2);
}

void CloudGenre.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudGenre(0) + 32);
  sub_217221010(*(v1 + v3));
  *(v1 + v3) = v2;
}

uint64_t sub_2175E4264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217759200;
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_25_49(&qword_280BE4A88);
  }

  v1 = *algn_280BE4A98;
  v2 = byte_280BE4AA0;
  *(v0 + 32) = qword_280BE4A90;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280BE4BF0;
  sub_217751DE8();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_23_3(&qword_280BE4BF0);
  }

  v4 = unk_280BE4C00;
  v5 = byte_280BE4C08;
  *(v0 + 56) = qword_280BE4BF8;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  off_280BE5540 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175E4360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4C00;
  v2 = byte_280BE4C08;
  *(v0 + 32) = qword_280BE4BF8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2AA80 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175E4430(char a1)
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

uint64_t sub_2175E44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2175E4518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E39D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175E4554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175E39D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudGenre.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = type metadata accessor for CloudGenre(0);
  CloudGenre.Attributes.hash(into:)();
  sub_21738C4B0(v1 + *(v3 + 24), __src, &qword_27CB24AA0, &qword_21775D8F0);
  if (__src[2] == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v17, __src, sizeof(v17));
    OUTLINED_FUNCTION_24();
    sub_21726473C(a1, v4, v5, v6, v7, v8, v9, v10);
    sub_217284594(v17);
  }

  sub_217753208();
  v11 = *(v1 + *(v3 + 32));
  if (v11 == 1 || (OUTLINED_FUNCTION_24(), !v11))
  {
    sub_217753208();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0(a1, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_2175E46BC(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2175E4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudGenre.convertToCloudRawCurator()()
{
  OUTLINED_FUNCTION_1_107();
  sub_2175E5E44(v1, v3, v2);
  type metadata accessor for CloudRawCurator(0);

  return swift_storeEnumTagMultiPayload();
}

void Genre.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v128 = v1;
  v129 = v2;
  v126 = v4;
  v127 = v3;
  v6 = v5;
  v132 = type metadata accessor for CloudGenre(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v133 = (v9 - v8);
  v10 = type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v120 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v109 - v14;
  if (qword_280BE62C8 != -1)
  {
    swift_once();
  }

  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0;
  sub_2172DB230();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v17 = v16[10];
  v18 = v6 + v16[9];
  v19 = *(v18 + 8);
  v124 = *v18;
  LODWORD(v123) = *(v18 + 16);
  v20 = *(v6 + v17 + 8);
  v130 = *(v6 + v17);
  v21 = v16[13];
  v121 = *(v6 + v16[12]);
  v22 = *(v6 + v21);
  v23 = *(v6 + v16[14]);
  v24 = *(v6 + v16[15]);
  sub_2172A497C(v154);
  memcpy(v15, v154, 0x221uLL);
  *(v15 + 36) = xmmword_2177586D0;
  *(v15 + 37) = 0u;
  *(v15 + 38) = 0u;
  *(v15 + 39) = 0u;
  sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  v118 = v25;
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  memcpy(&v15[v10[10]], v154, 0x221uLL);
  v29 = &v15[v10[12]];
  *(v29 + 48) = 0;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *v29 = 0u;
  v119 = v29;
  *(v29 + 56) = -1;
  v30 = v10[13];
  sub_2177516D8();
  v125 = v30;
  OUTLINED_FUNCTION_5_5();
  v117 = v31;
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_112_2(&v15[v10[15]]);
  v35 = qword_280BE3A58;
  v122 = v19;
  sub_217751DE8();
  v131 = v20;
  v36 = v22;
  v37 = v121;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v35 != -1)
  {
    swift_once();
  }

  v38 = qword_280C01FD0;
  v134 = v6;
  v115 = qword_280C01FD0 >> 62;
  v116 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v38 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v39 = &v15[v10[11]];
  *&v15[v10[17]] = v38;
  v40 = &v15[v10[20]];
  memcpy(&v15[v10[18]], v153, 0x161uLL);
  v41 = &v15[v10[19]];
  v42 = v122;
  *v41 = v124;
  *(v41 + 1) = v42;
  v41[16] = v123;
  v43 = v131;
  *v40 = v130;
  v40[1] = v43;
  *&v15[v10[21]] = v37;
  *&v15[v10[22]] = v36;
  *&v15[v10[23]] = v23;
  *&v15[v10[24]] = v24;
  OUTLINED_FUNCTION_1_107();
  v44 = v133;
  sub_2175E5E44(v134, v133, v45);
  v46 = (v44 + *(v132 + 20));
  v47 = v46[70];
  *v39 = v46[69];
  *(v39 + 1) = v47;
  memcpy(v143, v46, sizeof(v143));
  memcpy(v144, v46, sizeof(v144));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v144) == 1)
  {
    memcpy(v142, v154, sizeof(v142));
    sub_217751DE8();
  }

  else
  {
    memcpy(v142, v144, 0x1B8uLL);
    sub_217751DE8();
    sub_21738C4B0(v143, v141, &qword_27CB25000, &unk_21776EA00);
    CloudAttribute<A>.convertToArtwork()(v136);
    memcpy(v135, v142, sizeof(v135));
    sub_2171F0738(v135, &qword_27CB243F0, &qword_21775D690);
    memcpy(v141, v136, 0x221uLL);
    nullsub_1();
    memcpy(v142, v141, sizeof(v142));
  }

  memcpy(v141, v15, 0x221uLL);
  sub_2171F0738(v141, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v15, v142, 0x221uLL);
  *(v15 + 71) = v46[57];
  if (v46[66])
  {
    v48 = v46[65];
    v50 = v46[63];
    v49 = v46[64];
    v51 = v46[61];
    v123 = v46[62];
    v124 = v49;
    v53 = v46[59];
    v52 = v46[60];
    v121 = v46[58];
    v122 = v52;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v121 = 0;
    v122 = 0;
    v51 = 0;
    v123 = 0;
    v124 = 0;
    v50 = 0;
    v48 = 0;
    v53 = 1;
  }

  v54 = &v15[v10[14]];
  v55 = *(v15 + 37);
  v136[0] = *(v15 + 36);
  v136[1] = v55;
  v56 = *(v15 + 39);
  v136[2] = *(v15 + 38);
  v136[3] = v56;
  sub_217751DE8();
  sub_2171F0738(v136, &qword_27CB24B70, &unk_217759460);
  v57 = v122;
  *(v15 + 72) = v121;
  *(v15 + 73) = v53;
  *(v15 + 74) = v57;
  *(v15 + 75) = v51;
  v58 = v124;
  *(v15 + 76) = v123;
  *(v15 + 77) = v50;
  *(v15 + 78) = v58;
  *(v15 + 79) = v48;
  *(v15 + 80) = v46[67];
  v59 = v46[76];
  *v54 = v46[75];
  *(v54 + 1) = v59;
  v60 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v46 + v60, &v15[v125]);
  v61 = v46[56];
  *(v15 + 69) = v46[55];
  *(v15 + 70) = v61;
  v62 = v46[72];
  if (v62)
  {
    v63 = v46[74];
    v64 = v134;
    if (v63)
    {
      v125 = v46[71];
      v123 = v46[73];
      v65 = qword_280BE4A88;
      sub_217751DE8();
      sub_217751DE8();
      if (v65 != -1)
      {
        OUTLINED_FUNCTION_25_49(&qword_280BE4A88);
      }

      v124 = v63;
      v67 = qword_280BE4A90;
      v66 = *algn_280BE4A98;
      v114 = byte_280BE4AA0;
      v113 = xmmword_280BE62D0;
      v68 = unk_280BE62E8;
      v111 = qword_280BE62E0;
      swift_bridgeObjectRetain_n();
      v112 = v68;
      sub_217751DE8();

      v121 = v66;
      v122 = v67;
      if (v131)
      {
        *v135 = v130;
        *&v135[8] = v131;
        v139 = 47;
        v140 = 0xE100000000000000;
        sub_217751DE8();
        sub_217751DE8();
        MEMORY[0x21CEA23B0](v67, v66);
        MEMORY[0x21CEA23B0](47, 0xE100000000000000);
        MEMORY[0x21CEA23B0](*v133, v133[1]);
        v137 = 47;
        v138 = 0xE100000000000000;
        v64 = v134;
        MEMORY[0x21CEA23B0](v67, v66);
        MEMORY[0x21CEA23B0](47, 0xE100000000000000);
        v69 = MEMORY[0x21CEA23B0](v125, v62);
        sub_21733A5C8(v69, v70, v71);
        v130 = sub_217752998();
        v110 = v72;
      }

      else
      {
        sub_217751DE8();
        v130 = 0;
        v110 = 0;
      }

      v134 = OUTLINED_FUNCTION_20_41();
      v131 = OUTLINED_FUNCTION_20_41();
      v109 = OUTLINED_FUNCTION_20_41();
      v73 = OUTLINED_FUNCTION_20_41();
      v74 = v120;
      memcpy(v120, v154, 0x221uLL);
      *(v74 + 552) = 0u;
      *(v74 + 568) = 0u;
      *(v74 + 73) = 1;
      *(v74 + 37) = 0u;
      *(v74 + 38) = 0u;
      *(v74 + 39) = 0u;
      *(v74 + 80) = 0;
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v118);
      memcpy(&v74[v10[10]], v154, 0x221uLL);
      v78 = &v74[v10[12]];
      *(v78 + 6) = 0;
      *(v78 + 1) = 0u;
      *(v78 + 2) = 0u;
      *v78 = 0u;
      v78[56] = -1;
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v117);
      v82 = &v74[v10[14]];
      *v82 = 0;
      *(v82 + 1) = 0;
      OUTLINED_FUNCTION_112_2(&v74[v10[15]]);
      *&v74[v10[16]] = 0;
      if (v115)
      {
        type metadata accessor for AnyMusicProperty();
        sub_217751DE8();
        v83 = sub_217752D28();
      }

      else
      {
        v83 = v116;
        sub_217751DE8();
        sub_217753128();
        type metadata accessor for AnyMusicProperty();
      }

      v84 = v120;
      v85 = &v120[v10[11]];
      *&v120[v10[17]] = v83;
      v86 = &v84[v10[20]];
      v87 = &v84[v10[18]];
      v88 = v125;
      *v87 = v125;
      *(v87 + 1) = v62;
      *(v87 + 2) = v88;
      *(v87 + 3) = v62;
      v87[32] = 0;
      *(v87 + 33) = v139;
      *(v87 + 9) = *(&v139 + 3);
      bzero(v87 + 40, 0xE0uLL);
      *(v87 + 33) = MEMORY[0x277D84FA0];
      v87[272] = 0;
      *(v87 + 273) = v137;
      *(v87 + 69) = *(&v137 + 3);
      *(v87 + 35) = &unk_28295F2E0;
      *(v87 + 18) = v113;
      v89 = v112;
      *(v87 + 38) = v111;
      *(v87 + 39) = v89;
      *(v87 + 20) = 0u;
      *(v87 + 21) = 0u;
      v87[352] = 4;
      v90 = &v84[v10[19]];
      v91 = v121;
      *v90 = v122;
      *(v90 + 1) = v91;
      v90[16] = v114;
      v92 = v110;
      *v86 = v130;
      v86[1] = v92;
      *&v84[v10[21]] = v134;
      *&v84[v10[22]] = v131;
      *&v84[v10[23]] = v109;
      *&v84[v10[24]] = v73;
      v93 = v124;
      *v85 = v123;
      *(v85 + 1) = v93;
      *&v135[40] = v10;
      *&v135[48] = &protocol witness table for GenrePropertyProvider;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v135[16]);
      OUTLINED_FUNCTION_17_47();
      sub_2175E5E44(v84, boxed_opaque_existential_0, v95);
      v96 = (boxed_opaque_existential_0 + v10[18]);
      v97 = v96[1];
      *v135 = *v96;
      *&v135[8] = v97;
      sub_217751DE8();
      v98 = v119;
      sub_2171F0738(v119, &qword_27CB256A0, &unk_21775D750);
      v99 = *&v135[16];
      *v98 = *v135;
      *(v98 + 16) = v99;
      *(v98 + 32) = *&v135[32];
      *(v98 + 48) = *&v135[48];
      *(v98 + 56) = 0;
      OUTLINED_FUNCTION_16_57();
      sub_2175E3B88(v84, v100);
    }

    else
    {
      sub_217751DE8();
    }
  }

  else
  {
    sub_217751DE8();
    v64 = v134;
  }

  v101 = v133;
  v102 = *(v132 + 32);
  v103 = *(v133 + v102);
  if (v103 == 1)
  {
    v104 = 0;
  }

  else
  {
    v104 = *(v133 + v102);
  }

  *&v15[v10[16]] = v104;
  *&v135[24] = v10;
  *&v135[32] = &protocol witness table for GenrePropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v135);
  OUTLINED_FUNCTION_17_47();
  sub_2175E5E44(v15, v105, v106);
  sub_21733CF78(v103);
  Genre.init(propertyProvider:)(v135, v126);

  (*(*(v129 - 8) + 8))(v128);
  sub_2171F0738(v64, &qword_27CB24768, &qword_217758CF0);
  OUTLINED_FUNCTION_4_94();
  sub_2175E3B88(v101, v107);
  OUTLINED_FUNCTION_16_57();
  sub_2175E3B88(v15, v108);
  OUTLINED_FUNCTION_13();
}

void Genre.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v231 = v2;
  v226 = type metadata accessor for CloudGenre(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v229 = v5 - v4;
  v220 = type metadata accessor for CloudGenre.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  if (qword_280BE6A70 != -1)
  {
    swift_once();
  }

  sub_2176CAE18(qword_280C021E8, v7, v8, v9, v10, v11, v12, v13, v116, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v206, v213, v220);
  memcpy(v252, v251, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v252) == 1)
  {
    sub_2172E22C0(v233);
  }

  else
  {
    memcpy(v233, v252, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v235);
    memcpy(v234, v233, 0x221uLL);
    sub_217284084(v234);
    memcpy(v236, v235, sizeof(v236));
    nullsub_1();
    memcpy(v233, v236, 0x1B8uLL);
  }

  if (qword_280BE6AE0 != -1)
  {
    swift_once();
  }

  v17 = sub_2172A4344();
  v207 = v18;
  v214 = v17;
  if (qword_280BE6AA8 != -1)
  {
    swift_once();
  }

  v200 = sub_2172A4850(qword_280C02210);
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  sub_2176CAE24(qword_280C02228, v19, v20, v21, v22, v23, v24, v25, v117, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v207, v214, v221);
  v26 = v244;
  if (v244 == 1)
  {
    v153 = 0;
    v159 = 0;
    v26 = 0;
    v165 = 0;
    v171 = 0;
    v177 = 0;
    v183 = 0;
    v189 = 0;
    v147 = 0;
  }

  else
  {
    v183 = v249;
    v189 = v250;
    v27 = v248;
    v171 = v247;
    v28 = v246;
    v153 = v243;
    v159 = v245;
    sub_217751DE8();
    sub_217751DE8();
    v165 = v28;
    sub_217751DE8();
    v177 = v27;
    sub_217751DE8();
    v147 = sub_217751DC8();
    sub_2171F0738(&v243, &qword_27CB24B70, &unk_217759460);
  }

  v195 = v26;
  if (qword_280BE6A98 != -1)
  {
    swift_once();
  }

  v141 = sub_2172A4834(qword_280C02208);
  OUTLINED_FUNCTION_28_41();
  v29 = OUTLINED_FUNCTION_10_54();
  v30(v29);
  OUTLINED_FUNCTION_30_36();
  v31 = OUTLINED_FUNCTION_5_4();
  v32(v31);
  __swift_destroy_boxed_opaque_existential_1(v234);
  v33 = v236[0];
  v34 = v236[1];
  if (qword_280BE4BF0 != -1)
  {
    OUTLINED_FUNCTION_23_3(&qword_280BE4BF0);
  }

  if (v33 == qword_280BE4BF8 && v34 == unk_280BE4C00)
  {

    v37 = 1;
  }

  else
  {
    v36 = sub_217753058();

    if (v36)
    {
      v37 = 1;
    }

    else
    {
      v37 = 3;
    }
  }

  HIDWORD(v135) = v37;
  if (qword_280BE6A88 != -1)
  {
    swift_once();
  }

  v45 = sub_2172A4344();
  v46 = v38;
  if (qword_280BE6A80 != -1)
  {
    swift_once();
  }

  v47 = qword_280C021F0;
  sub_2176CA6B8(qword_280C021F0, v38, v39, v40, v41, v42, v43, v44, v118, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v208, v215, v222);
  v48 = v234[1];
  if (v234[1])
  {
    v130 = v234[0];
    sub_217751DE8();
    sub_21728418C(v234);
  }

  else
  {
    sub_2171F0738(v234, &unk_27CB27760, &unk_21775A2D0);
    v130 = 0;
  }

  sub_2176CA6B8(v47, v49, v50, v51, v52, v53, v54, v55, v119, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v209, v216, v223);
  if (v234[1])
  {
    v56 = sub_2172A4344();
    if (v57)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0;
    }

    v125 = v58;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    sub_21728418C(v234);
  }

  else
  {
    sub_2171F0738(v234, &unk_27CB27760, &unk_21775A2D0);
    v125 = 0;
    v59 = 0;
  }

  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v67 = sub_2172A4344();
  v68 = v60;
  if (qword_280BE6A90 != -1)
  {
    swift_once();
  }

  if (!v46)
  {
    v46 = 0xE000000000000000;
    v45 = 0;
  }

  sub_2176CAEB4(qword_280C02200, v60, v61, v62, v63, v64, v65, v66, v120, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v210, v217, v224, v226, v229, v231, v233[0]);
  memcpy(v16, v233, 0x1B8uLL);
  *(v16 + 440) = v218;
  *(v16 + 448) = v211;
  *(v16 + 456) = v204;
  *(v16 + 464) = v156;
  *(v16 + 472) = v198;
  *(v16 + 480) = v162;
  *(v16 + 488) = v168;
  *(v16 + 496) = v174;
  *(v16 + 504) = v180;
  *(v16 + 512) = v186;
  *(v16 + 520) = v192;
  *(v16 + 528) = v150;
  *(v16 + 536) = v144;
  *(v16 + 544) = v138;
  *(v16 + 552) = v45;
  *(v16 + 560) = v46;
  *(v16 + 568) = v132;
  *(v16 + 576) = v48;
  *(v16 + 584) = v126;
  *(v16 + 592) = v59;
  *(v16 + 600) = v67;
  *(v16 + 608) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
  swift_allocObject();
  v69 = sub_2172E3DC4();
  sub_2172A4818(v69);
  OUTLINED_FUNCTION_5_4();

  if ((v1 + 2) <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = (v1 + 2);
  }

  v72 = *v1;
  v71 = v1[1];
  v73 = v227;
  OUTLINED_FUNCTION_6_76();
  sub_2175E5E44(v16, v230 + v74, v75);
  v76 = v230 + v227[6];
  *v76 = 0;
  *(v76 + 1) = 0;
  *(v76 + 2) = 1;
  *(v76 + 24) = 0u;
  *(v76 + 40) = 0u;
  *(v76 + 56) = 0u;
  *(v76 + 72) = 0u;
  *(v76 + 88) = 0u;
  *(v76 + 104) = 0u;
  *(v76 + 15) = 0;
  *v230 = v72;
  v230[1] = v71;
  *(v230 + v227[7]) = 1;
  *(v230 + v227[8]) = v70;
  OUTLINED_FUNCTION_28_41();
  v77 = *(v227 + 3);
  sub_217751DE8();
  v77(v235, v70, v227);
  nullsub_1();
  memcpy(v236, v235, 0x161uLL);
  OUTLINED_FUNCTION_1_107();
  sub_2175E5E44(v230, v232, v78);
  OUTLINED_FUNCTION_28_41();
  v79 = OUTLINED_FUNCTION_10_54();
  v80(v79);
  OUTLINED_FUNCTION_30_36();
  v81 = OUTLINED_FUNCTION_5_4();
  v82(v81);
  __swift_destroy_boxed_opaque_existential_1(v234);
  v225 = v241;
  v228 = v240;
  v219 = v242;
  OUTLINED_FUNCTION_28_41();
  v83 = OUTLINED_FUNCTION_10_54();
  v84(v83);
  OUTLINED_FUNCTION_30_36();
  v85 = OUTLINED_FUNCTION_5_4();
  v87 = v86(v85);
  v205 = v88;
  v212 = v87;
  __swift_destroy_boxed_opaque_existential_1(v234);
  memcpy(v234, v236, 0x168uLL);
  memset(&v234[45], 0, 24);
  nullsub_1();
  v89 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v90 = OUTLINED_FUNCTION_5_4();
  v91(v90, v89);
  OUTLINED_FUNCTION_26_36();
  v92 = OUTLINED_FUNCTION_5_4();
  v94 = v93(v92);
  __swift_destroy_boxed_opaque_existential_1(v237);
  v95 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v96 = OUTLINED_FUNCTION_5_4();
  v97(v96, v95);
  OUTLINED_FUNCTION_26_36();
  v98 = OUTLINED_FUNCTION_5_4();
  v100 = v99(v98);
  __swift_destroy_boxed_opaque_existential_1(v237);
  OUTLINED_FUNCTION_28_41();
  v101 = OUTLINED_FUNCTION_5_4();
  v102(v101, v73);
  OUTLINED_FUNCTION_26_36();
  v103 = OUTLINED_FUNCTION_5_4();
  v105 = v104(v103);
  __swift_destroy_boxed_opaque_existential_1(v237);
  v106 = v1[5];
  v107 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v106);
  (*(v107 + 96))(v237, v106, v107);
  v108 = v238;
  v109 = v239;
  __swift_project_boxed_opaque_existential_1(v237, v238);
  v110 = (*(*(v109 + 8) + 88))(v108);
  OUTLINED_FUNCTION_4_94();
  sub_2175E3B88(v230, v111);
  OUTLINED_FUNCTION_5_77();
  sub_2175E3B88(v16, v112);
  __swift_destroy_boxed_opaque_existential_1(v237);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v114 = v232 + v113[9];
  *v114 = v228;
  *(v114 + 8) = v225;
  *(v114 + 16) = v219;
  v115 = (v232 + v113[10]);
  *v115 = v212;
  v115[1] = v205;
  memcpy((v232 + v113[11]), v234, 0x180uLL);
  *(v232 + v113[12]) = v94;
  *(v232 + v113[13]) = v100;
  *(v232 + v113[14]) = v105;
  *(v232 + v113[15]) = v110;
  OUTLINED_FUNCTION_13();
}

unint64_t sub_2175E5DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5640[0];
  if (!qword_280BE5640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5640);
  }

  return result;
}

uint64_t sub_2175E5E44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

unint64_t sub_2175E5EA0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2175E3BE0(&unk_27CB251C8);
    v3 = sub_2175E3BE0(&unk_27CB251D0);
    result = OUTLINED_FUNCTION_44(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175E5F60(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2175E5EA0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175E5FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AAC8;
  if (!qword_27CB2AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAC8);
  }

  return result;
}

unint64_t sub_2175E6038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AAD8;
  if (!qword_27CB2AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAD8);
  }

  return result;
}

unint64_t sub_2175E60D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AAF0;
  if (!qword_27CB2AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAF0);
  }

  return result;
}

unint64_t sub_2175E6130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AAF8;
  if (!qword_27CB2AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAF8);
  }

  return result;
}