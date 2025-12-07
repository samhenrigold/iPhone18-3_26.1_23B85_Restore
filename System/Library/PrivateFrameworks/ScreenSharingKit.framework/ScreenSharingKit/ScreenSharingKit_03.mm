uint64_t sub_264A163A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264A164B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264A162B0(a1, v4);
}

uint64_t sub_264A16570(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return sub_264A162B0(a1, v4);
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

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit18SystemGestureEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit18SystemGestureEventOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_264A166BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_264A16704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264A1676C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89570, &qword_264B47C28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  v9 = v1[1];
  v33 = *v1;
  v34 = v9;
  *v35 = v1[2];
  *&v35[9] = *(v1 + 41);
  v10 = *(v1 + 9);
  v36 = *(v1 + 8);
  v20 = v10;
  v11 = *(v1 + 11);
  v19 = *(v1 + 10);
  v18 = v11;
  v17 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A186B4(&v33, &v30);
  sub_264A188FC();
  sub_264B41BD4();
  v30 = v33;
  v31 = v34;
  v32[0] = *v35;
  *(v32 + 9) = *&v35[9];
  v29 = 0;
  sub_264A18A60();
  sub_264B41A24();
  if (v2)
  {
    v26 = v30;
    v27 = v31;
    *v28 = v32[0];
    *&v28[9] = *(v32 + 9);
    sub_264A18710(&v26);
  }

  else
  {
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v26 = v30;
    v27 = v31;
    *v28 = v32[0];
    *&v28[9] = *(v32 + 9);
    sub_264A18710(&v26);
    v21 = v36;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89550, &qword_264B47C20);
    sub_264A18AB4(&qword_27FF89580, &qword_27FF89588, &unk_264B52AB4, MEMORY[0x277D83948]);
    sub_264B41A24();
    v21 = v14;
    v22 = v13;
    v23 = v12;
    v24 = v17;
    v25 = 2;
    sub_264A18764(v14, v13, v12, v17);
    sub_264A18B80();
    sub_264B419C4();
    sub_264A187C4(v21, v22, v23, v24);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_264A16ACC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89538, &qword_264B47C18);
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v6);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A188FC();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v5;
  v37 = 0;
  sub_264A18950();
  v10 = v44;
  sub_264B41984();
  v41 = v38;
  v42 = v39;
  *v43 = v40[0];
  *&v43[9] = *(v40 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89550, &qword_264B47C20);
  LOBYTE(v23[0]) = 1;
  sub_264A18AB4(&qword_27FF89558, &qword_27FF89560, &unk_264B52ADC, MEMORY[0x277D83978]);
  sub_264B41984();
  v22 = *&v28[0];
  v33 = 2;
  sub_264A189A4();
  sub_264B41924();
  (*(v9 + 8))(v8, v10);
  v11 = v34;
  v13 = v35;
  v12 = v36;
  v14 = v42;
  v23[0] = v41;
  v23[1] = v42;
  v15 = *v43;
  v23[2] = *v43;
  v24 = *&v43[16];
  v16 = v22;
  *&v25 = v22;
  *(&v25 + 1) = v34;
  v26 = v35;
  v27 = v36;
  *a2 = v41;
  *(a2 + 16) = v14;
  v17 = v24;
  v18 = v25;
  v19 = v26;
  *(a2 + 96) = v12;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  *(a2 + 32) = v15;
  *(a2 + 48) = v17;
  sub_264A189F8(v23, v28);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v28[0] = v41;
  v28[1] = v42;
  v28[2] = *v43;
  v28[3] = *&v43[16];
  v29 = v16;
  v30 = v11;
  v31 = v13;
  v32 = v12;
  return sub_264A18A30(v28);
}

unint64_t sub_264A16E44()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6556746E65696C63;
  }
}

uint64_t sub_264A16EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264A18DB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264A16EE0(uint64_t a1)
{
  v2 = sub_264A188FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A16F1C(uint64_t a1)
{
  v2 = sub_264A188FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_264A16F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      v6 = *v3;
      v7 = v5;
      v8 = sub_264B40374();

      if ((v8 & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_264A17054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDevice(0) - 8;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_264A18BD4(v15, v12, type metadata accessor for ContinuityDevice);
        sub_264A18BD4(v16, v8, type metadata accessor for ContinuityDevice);
        v18 = static ContinuityDevice.== infix(_:_:)(v12, v8);
        sub_264A18C3C(v8, type metadata accessor for ContinuityDevice);
        sub_264A18C3C(v12, type metadata accessor for ContinuityDevice);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_264A1720C(uint64_t a1, uint64_t a2)
{
  v133[3] = *MEMORY[0x277D85DE8];
  v4 = sub_264B40264();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v110 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89528, &qword_264B530F0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v110 - v15;
  v125 = type metadata accessor for HIDReportMessage(0);
  MEMORY[0x28223BE20](v125, v17);
  v124 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  MEMORY[0x28223BE20](v122, v19);
  v128 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89530, &qword_264B47C10);
  MEMORY[0x28223BE20](v130, v21);
  v23 = &v110 - v22;
  v129 = type metadata accessor for HIDMessage(0);
  v25 = MEMORY[0x28223BE20](v129, v24);
  v126 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v127 = &v110 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v36 = &v110 - v34;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
    return 0;
  }

  v123 = *(a1 + 16);
  if (!v37 || a1 == a2)
  {
    return 1;
  }

  v117 = v16;
  v118 = v35;
  v116 = v13;
  v113 = v12;
  v112 = v8;
  v38 = 0;
  v114 = 0;
  v39 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v121 = a1 + v39;
  v119 = a2 + v39;
  v115 = (v5 + 48);
  v120 = *(v33 + 72);
  v40 = v123;
  v41 = v124;
  v42 = v127;
  v131 = &v110 - v34;
  while (1)
  {
    v43 = v120 * v38;
    sub_264A18BD4(v121 + v120 * v38, v36, type metadata accessor for HIDMessage);
    if (v38 == v40)
    {
      goto LABEL_95;
    }

    sub_264A18BD4(v119 + v43, v42, type metadata accessor for HIDMessage);
    v44 = *(v130 + 48);
    sub_264A18BD4(v36, v23, type metadata accessor for HIDMessage);
    sub_264A18BD4(v42, &v23[v44], type metadata accessor for HIDMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v48 = v118;
    sub_264A18BD4(v23, v118, type metadata accessor for HIDMessage);
    if (swift_getEnumCaseMultiPayload())
    {
      v108 = type metadata accessor for HIDUpdateInputDevicesMessage;
      v109 = v48;
LABEL_87:
      sub_264A18C3C(v109, v108);
LABEL_88:
      sub_2649D04D4(v23, &qword_27FF89530, &qword_264B47C10);
      goto LABEL_92;
    }

    v49 = v4;
    v50 = v23;
    sub_264A18894(&v23[v44], v128, type metadata accessor for HIDUpdateInputDevicesMessage);
    if ((sub_264B400C4() & 1) == 0 || (v51 = *(v122 + 20), v52 = *(v118 + v51), v53 = *(v128 + v51), v54 = *(v52 + 16), v54 != *(v53 + 16)))
    {
LABEL_84:
      sub_264A18C3C(v128, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264A18C3C(v118, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264A18C3C(v50, type metadata accessor for HIDMessage);
      v42 = v127;
      goto LABEL_92;
    }

    if (v54)
    {
      v55 = v52 == v53;
    }

    else
    {
      v55 = 1;
    }

    if (!v55)
    {
      v56 = (v52 + 40);
      v57 = (v53 + 40);
      while (v54)
      {
        v58 = *v57;
        v59 = *v56;
        v60 = v58;
        v61 = sub_264B40374();

        v36 = v131;
        if ((v61 & 1) == 0)
        {
          goto LABEL_84;
        }

        v56 += 2;
        v57 += 2;
        if (!--v54)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
    }

LABEL_25:
    sub_264A18C3C(v128, type metadata accessor for HIDUpdateInputDevicesMessage);
    sub_264A18C3C(v118, type metadata accessor for HIDUpdateInputDevicesMessage);
    v4 = v49;
    v23 = v50;
    v41 = v124;
    v42 = v127;
LABEL_6:
    ++v38;
    sub_264A18C3C(v23, type metadata accessor for HIDMessage);
    sub_264A18C3C(v42, type metadata accessor for HIDMessage);
    sub_264A18C3C(v36, type metadata accessor for HIDMessage);
    v40 = v123;
    if (v38 == v123)
    {
      return 1;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_88;
    }

    goto LABEL_6;
  }

  v46 = v126;
  sub_264A18BD4(v23, v126, type metadata accessor for HIDMessage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v108 = type metadata accessor for HIDReportMessage;
    v109 = v46;
    goto LABEL_87;
  }

  sub_264A18894(&v23[v44], v41, type metadata accessor for HIDReportMessage);
  v47 = *(v41 + 8);
  if (*(v46 + 8))
  {
    if (!*(v41 + 8))
    {
      goto LABEL_91;
    }
  }

  else
  {
    if (*v46 != *v41)
    {
      v47 = 1;
    }

    if (v47)
    {
      goto LABEL_91;
    }
  }

  v62 = *(v125 + 20);
  v63 = v117;
  v64 = v46;
  v65 = *(v116 + 48);
  sub_264A18824(v64 + v62, v117);
  sub_264A18824(v41 + v62, v63 + v65);
  v66 = *v115;
  if ((*v115)(v63, 1, v4) == 1)
  {
    if (v66(v63 + v65, 1, v4) != 1)
    {
      goto LABEL_90;
    }

    sub_2649D04D4(v63, &qword_27FF89520, &unk_264B47C00);
    v46 = v126;
    v42 = v127;
    goto LABEL_34;
  }

  v67 = v113;
  sub_264A18824(v63, v113);
  if (v66(v63 + v65, 1, v4) != 1)
  {
    v68 = v63 + v65;
    v69 = v112;
    sub_264A18894(v68, v112, MEMORY[0x277D77AA8]);
    v70 = sub_264B40254();
    v71 = MEMORY[0x277D77AA8];
    sub_264A18C3C(v69, MEMORY[0x277D77AA8]);
    sub_264A18C3C(v67, v71);
    sub_2649D04D4(v63, &qword_27FF89520, &unk_264B47C00);
    v41 = v124;
    v46 = v126;
    v42 = v127;
    if ((v70 & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_34:
    v72 = *(v125 + 24);
    v73 = *(v46 + v72);
    v74 = *(v46 + v72 + 8);
    v75 = (v41 + v72);
    v76 = *v75;
    v77 = v75[1];
    v78 = v74 >> 62;
    v79 = v77 >> 62;
    if (v74 >> 62 == 3)
    {
      v80 = 0;
      if (!v73 && v74 == 0xC000000000000000 && v77 >> 62 == 3)
      {
        v80 = 0;
        if (!v76 && v77 == 0xC000000000000000)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (v78 <= 1)
      {
        if (v78)
        {
          LODWORD(v80) = HIDWORD(v73) - v73;
          if (__OFSUB__(HIDWORD(v73), v73))
          {
            goto LABEL_98;
          }

          v80 = v80;
          if (v79 <= 1)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v80 = BYTE6(v74);
          if (v79 <= 1)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_44;
      }

      if (v78 != 2)
      {
        v80 = 0;
        if (v79 <= 1)
        {
LABEL_51:
          if (v79)
          {
            LODWORD(v84) = HIDWORD(v76) - v76;
            if (__OFSUB__(HIDWORD(v76), v76))
            {
              goto LABEL_96;
            }

            v84 = v84;
          }

          else
          {
            v84 = BYTE6(v77);
          }

LABEL_57:
          if (v80 != v84)
          {
            goto LABEL_91;
          }

          if (v80 >= 1)
          {
            if (v78 > 1)
            {
              if (v78 != 2)
              {
                memset(v133, 0, 14);
                v105 = v76;
                sub_2649DEF18(v76, v77);
                v106 = v114;
                sub_264A17F40(v133, v105, v77, &v132);
                v114 = v106;
                v42 = v127;
                sub_2649DEF6C(v105, v77);
                if (!v132)
                {
                  goto LABEL_91;
                }

                goto LABEL_82;
              }

              v89 = v23;
              v90 = *(v73 + 16);
              v91 = *(v73 + 24);
              v92 = v76;
              sub_2649DEF18(v76, v77);
              v93 = sub_264B3FEA4();
              if (v93)
              {
                v94 = sub_264B3FEC4();
                if (__OFSUB__(v90, v94))
                {
                  goto LABEL_102;
                }

                v93 += v90 - v94;
              }

              if (__OFSUB__(v91, v90))
              {
                goto LABEL_101;
              }

              sub_264B3FEB4();
              v95 = v92;
              v96 = v92;
              v97 = v114;
              sub_264A17F40(v93, v96, v77, v133);
              v114 = v97;
              sub_2649DEF6C(v95, v77);
              v98 = v133[0];
              v23 = v89;
              v41 = v124;
            }

            else
            {
              if (!v78)
              {
                v133[0] = v73;
                LOWORD(v133[1]) = v74;
                BYTE2(v133[1]) = BYTE2(v74);
                BYTE3(v133[1]) = BYTE3(v74);
                BYTE4(v133[1]) = BYTE4(v74);
                BYTE5(v133[1]) = BYTE5(v74);
                v87 = v76;
                sub_2649DEF18(v76, v77);
                v88 = v114;
                sub_264A17F40(v133, v87, v77, &v132);
                v114 = v88;
                sub_2649DEF6C(v87, v77);
                v42 = v127;
                if (!v132)
                {
                  goto LABEL_91;
                }

                goto LABEL_82;
              }

              v99 = v23;
              v100 = v73;
              if (v73 >> 32 < v73)
              {
                goto LABEL_100;
              }

              v111 = v76;
              sub_2649DEF18(v76, v77);
              v101 = sub_264B3FEA4();
              if (v101)
              {
                v102 = sub_264B3FEC4();
                if (__OFSUB__(v100, v102))
                {
                  goto LABEL_103;
                }

                v101 += v100 - v102;
              }

              v23 = v99;
              sub_264B3FEB4();
              v103 = v111;
              v104 = v114;
              sub_264A17F40(v101, v111, v77, v133);
              v114 = v104;
              sub_2649DEF6C(v103, v77);
              v98 = v133[0];
            }

            v46 = v126;
            v42 = v127;
            if ((v98 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

LABEL_82:
          sub_264A18C3C(v41, type metadata accessor for HIDReportMessage);
          sub_264A18C3C(v46, type metadata accessor for HIDReportMessage);
          v36 = v131;
          goto LABEL_6;
        }

LABEL_44:
        if (v79 != 2)
        {
          if (v80)
          {
            goto LABEL_91;
          }

          goto LABEL_82;
        }

        v82 = *(v76 + 16);
        v81 = *(v76 + 24);
        v83 = __OFSUB__(v81, v82);
        v84 = v81 - v82;
        if (v83)
        {
          goto LABEL_97;
        }

        goto LABEL_57;
      }

      v86 = *(v73 + 16);
      v85 = *(v73 + 24);
      v83 = __OFSUB__(v85, v86);
      v80 = v85 - v86;
      if (v83)
      {
        goto LABEL_99;
      }
    }

    if (v79 <= 1)
    {
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  sub_264A18C3C(v67, MEMORY[0x277D77AA8]);
  v41 = v124;
LABEL_90:
  sub_2649D04D4(v63, &qword_27FF89528, &qword_264B530F0);
  v46 = v126;
  v42 = v127;
LABEL_91:
  sub_264A18C3C(v41, type metadata accessor for HIDReportMessage);
  sub_264A18C3C(v46, type metadata accessor for HIDReportMessage);
  sub_264A18C3C(v23, type metadata accessor for HIDMessage);
  v36 = v131;
LABEL_92:
  sub_264A18C3C(v42, type metadata accessor for HIDMessage);
  sub_264A18C3C(v36, type metadata accessor for HIDMessage);
  return 0;
}

uint64_t sub_264A17F40@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (result)
      {
        v7 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = result;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = sub_264B3FEA4();
    if (v11)
    {
      v12 = sub_264B3FEC4();
      if (__OFSUB__(v9, v12))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      result = sub_264B3FEB4();
      if (result >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = result;
      }

      if (!v8)
      {
        goto LABEL_37;
      }

      if (!v11)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v8;
      if (v11 == v8)
      {
LABEL_27:
        v7 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v11, v15);
      v7 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v6)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v7 = result == 0;
LABEL_30:
      *a4 = v7;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v16 = a2;
  v17 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v18 = result;
  v11 = sub_264B3FEA4();
  if (!v11)
  {
    goto LABEL_21;
  }

  v19 = sub_264B3FEC4();
  if (__OFSUB__(v16, v19))
  {
LABEL_34:
    __break(1u);
  }

  v11 += v16 - v19;
LABEL_21:
  result = sub_264B3FEB4();
  if (result >= v17)
  {
    v15 = v17;
  }

  else
  {
    v15 = result;
  }

  if (!v18)
  {
    goto LABEL_38;
  }

  if (v11)
  {
    result = v18;
    if (v11 == v18)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_264A18170(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v11 = sub_264A18300(v9, v10, a5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2649DEF6C(a3, a4);
    return v11 & 1;
  }

  if (v8 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_264A17F40(v14, a3, a4, &v13);
  v11 = v5;
  sub_2649DEF6C(a3, a4);
  if (!v5)
  {
    v11 = v13;
  }

  return v11 & 1;
}

uint64_t sub_264A18300(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = sub_264B3FEA4();
  v12 = result;
  if (result)
  {
    result = sub_264B3FEC4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_264B3FEB4();
  sub_264A17F40(v12, a5, a6, &v14);
  if (!v6)
  {
    return v14;
  }

  return v13;
}

BOOL sub_264A183B8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v35[0] = *a1;
  v35[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v36[0] = a1[2];
  *(v36 + 9) = *(a1 + 41);
  v5 = *a2;
  v6 = a2[1];
  *(v38 + 9) = *(a2 + 41);
  v7 = a2[2];
  v37[1] = a2[1];
  v38[0] = v7;
  v8 = *a2;
  v37[0] = v5;
  v10 = *(a1 + 8);
  v9 = *(a1 + 9);
  v12 = *(a1 + 10);
  v11 = *(a1 + 11);
  v13 = *(a1 + 12);
  v14 = *(a2 + 8);
  v15 = *(a2 + 10);
  v27 = *(a2 + 9);
  v28 = *(a2 + 11);
  v16 = *(a2 + 12);
  v32 = v4;
  v33 = v3;
  v34[0] = a1[2];
  *(v34 + 9) = *(a1 + 41);
  v29 = v8;
  v30 = v6;
  v31[0] = a2[2];
  *(v31 + 9) = *(a2 + 41);
  v17 = _s16ScreenSharingKit18ParticipantVersionV2eeoiySbAC_ACtFZ_0(&v32, &v29);
  v39[0] = v29;
  v39[1] = v30;
  v40[0] = v31[0];
  *(v40 + 9) = *(v31 + 9);
  sub_264A186B4(v35, v41);
  sub_264A186B4(v37, v41);
  sub_264A18710(v39);
  v41[0] = v32;
  v41[1] = v33;
  v42[0] = v34[0];
  *(v42 + 9) = *(v34 + 9);
  sub_264A18710(v41);
  if ((v17 & 1) == 0 || (sub_264A1720C(v10, v14) & 1) == 0)
  {
    return 0;
  }

  if (v12 == 4)
  {
    v18 = v9;
    v19 = v13;
    sub_264A18764(v9, 4uLL, v11, v13);
    v20 = v16;
    if (v15 == 4)
    {
      sub_264A18764(v27, 4uLL, v28, v16);
      sub_264A187C4(v9, 4uLL, v11, v13);
      return 1;
    }

    v22 = v15;
    v23 = v27;
    v25 = v15;
    v24 = v28;
    sub_264A18764(v27, v25, v28, v16);
    goto LABEL_9;
  }

  v18 = v9;
  *&v32 = v9;
  *(&v32 + 1) = v12;
  *&v33 = v11;
  *(&v33 + 1) = v13;
  v19 = v13;
  v22 = v15;
  v20 = v16;
  if (v15 == 4)
  {
    sub_264A18764(v18, v12, v11, v13);
    v23 = v27;
    v24 = v28;
    sub_264A18764(v27, 4uLL, v28, v16);
    sub_264A18764(v18, v12, v11, v19);
    sub_264A187D4(v18, v12, v11, v19);
LABEL_9:
    sub_264A187C4(v18, v12, v11, v19);
    sub_264A187C4(v23, v22, v24, v20);
    return 0;
  }

  *&v29 = v27;
  *(&v29 + 1) = v15;
  *&v30 = v28;
  *(&v30 + 1) = v16;
  sub_264A18764(v18, v12, v11, v13);
  sub_264A18764(v27, v15, v28, v16);
  sub_264A18764(v18, v12, v11, v13);
  v26 = _s16ScreenSharingKit18SystemGestureEventO2eeoiySbAC_ACtFZ_0(&v32, &v29);
  sub_264A187D4(v29, *(&v29 + 1), v30, *(&v30 + 1));
  sub_264A187D4(v32, *(&v32 + 1), v33, *(&v33 + 1));
  sub_264A187C4(v18, v12, v11, v13);
  return v26;
}

double sub_264A18764(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 4)
  {
    return sub_264A18774(a1, a2, a3, a4);
  }

  return result;
}

double sub_264A18774(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= 4)
  {

    return sub_2649DEF18(a3, a4);
  }

  return result;
}

void sub_264A187C4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 4)
  {
    sub_264A187D4(result, a2, a3, a4);
  }
}

void sub_264A187D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= 4)
  {

    sub_2649DEF6C(a3, a4);
  }
}

uint64_t sub_264A18824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A18894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_264A188FC()
{
  result = qword_27FF89540;
  if (!qword_27FF89540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89540);
  }

  return result;
}

unint64_t sub_264A18950()
{
  result = qword_27FF89548;
  if (!qword_27FF89548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89548);
  }

  return result;
}

unint64_t sub_264A189A4()
{
  result = qword_27FF89568;
  if (!qword_27FF89568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89568);
  }

  return result;
}

unint64_t sub_264A18A60()
{
  result = qword_27FF89578;
  if (!qword_27FF89578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89578);
  }

  return result;
}

uint64_t sub_264A18AB4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89550, &qword_264B47C20);
    sub_264A18B3C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264A18B3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HIDMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A18B80()
{
  result = qword_27FF89590;
  if (!qword_27FF89590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89590);
  }

  return result;
}

uint64_t sub_264A18BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A18C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264A18CB0()
{
  result = qword_27FF89598;
  if (!qword_27FF89598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89598);
  }

  return result;
}

unint64_t sub_264A18D08()
{
  result = qword_27FF895A0;
  if (!qword_27FF895A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895A0);
  }

  return result;
}

unint64_t sub_264A18D60()
{
  result = qword_27FF895A8;
  if (!qword_27FF895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895A8);
  }

  return result;
}

uint64_t sub_264A18DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556746E65696C63 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000264B5AD30 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B5AD50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_264A18EE4()
{
  v1 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = sub_264B40944();
  v4 = sub_264B414B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "Invalidating running board assertion", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  [*(v1 + 16) invalidate];
  return v1;
}

uint64_t sub_264A18FDC()
{
  sub_264A18EE4();

  return swift_deallocClassInstance();
}

id sub_264A19034()
{
  v0 = sub_264B41014();
  v1 = sub_264B41014();
  v2 = objc_opt_self();
  v3 = [v2 attributeWithDomain:v0 name:v1];

  v4 = sub_264B41014();
  v5 = sub_264B41014();
  v6 = [v2 attributeWithDomain:v4 name:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_264B47D50;
  *(v7 + 32) = v3;
  *(v7 + 40) = v6;
  v8 = [objc_opt_self() currentProcess];
  v9 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v10 = sub_264B41014();
  sub_264A192D0();
  v11 = sub_264B41144();

  v12 = [v9 initWithExplanation:v10 target:v8 attributes:v11];

  return v12;
}

uint64_t sub_264A19218()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = sub_264A19034();
  *(v0 + 16) = v1;
  v5[0] = 0;
  if ([v1 acquireWithError_])
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_264B3FF84();

    swift_willThrow();
  }

  return v0;
}

unint64_t sub_264A192D0()
{
  result = qword_27FF895B0;
  if (!qword_27FF895B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF895B0);
  }

  return result;
}

CGPoint __swiftcall CGPoint.percentageLocation(in:)(CGSize in)
{
  v3 = v1 * 100.0 / in.width;
  v4 = v2 * 100.0 / in.height;
  result.y = v4;
  result.x = v3;
  return result;
}

uint64_t CGPoint.locationFromPointPercentage(in:layoutDirection:)(uint64_t a1)
{
  v25 = sub_264B3FFD4();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264B40C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FFA71B8);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_264B41754();

  v27 = 0xD000000000000011;
  v28 = 0x8000000264B5AE30;
  v12 = *(v7 + 16);
  v26 = a1;
  v12(v10, a1, v6);
  v13 = sub_264B41064();
  MEMORY[0x266748390](v13);

  v23 = v27;
  v24 = v28;
  v14 = sub_264B41484();
  sub_264B3FF94();
  v15 = sub_264B3FFA4();
  v17 = v16;
  (*(v2 + 8))(v5, v25);
  v18 = sub_264B40944();
  if (os_log_type_enabled(v18, v14))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136446978;
    v21 = sub_2649CC004(v15, v17, &v27);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2050;
    *(v19 + 14) = 22;
    *(v19 + 22) = 2082;
    *(v19 + 24) = sub_2649CC004(0xD000000000000030, 0x8000000264B5AED0, &v27);
    *(v19 + 32) = 2082;
    *(v19 + 34) = sub_2649CC004(v23, v24, &v27);
    _os_log_impl(&dword_2649C6000, v18, v14, "%{public}s:%{public}ld %{public}s %{public}s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  else
  {
  }

  (*(v7 + 104))(v10, *MEMORY[0x277CDFA90], v6);
  sub_264B40C34();
  return (*(v7 + 8))(v10, v6);
}

uint64_t RemoteAuthenticationDeviceState.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A197E0()
{
  result = qword_27FF895B8;
  if (!qword_27FF895B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaSessionEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaSessionEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MediaTransportQOS.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A19A10()
{
  result = qword_27FF895C0;
  if (!qword_27FF895C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895C0);
  }

  return result;
}

uint64_t sub_264A19A9C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF895E0, &qword_264B47FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A1A120();
  sub_264B41BD4();
  v13 = 0;
  sub_264A1A1C8();
  sub_264B41A24();
  if (!v3)
  {
    v12 = 1;
    sub_264B419E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_264A19C34()
{
  if (*v0)
  {
    return 0x44496D6165727473;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_264A19C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496D6165727473 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

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

uint64_t sub_264A19D44(uint64_t a1)
{
  v2 = sub_264A1A120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A19D80(uint64_t a1)
{
  v2 = sub_264A1A120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A19DBC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_264A19F64(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_264A19E04(uint64_t a1, uint64_t a2)
{
  sub_264B41754();
  MEMORY[0x266748390](0x203A657461747320, 0xE800000000000000);
  sub_264B41864();
  MEMORY[0x266748390](0x6D6165727473203BLL, 0xEC000000203A4449);
  MEMORY[0x266748390](a1, a2);
  return 0;
}

uint64_t sub_264A19ED0(uint64_t a1, int a2)
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

uint64_t sub_264A19F18(uint64_t result, int a2, int a3)
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

uint64_t sub_264A19F64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF895C8, &qword_264B47FC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A1A120();
  sub_264B41BC4();
  v9[15] = 0;
  sub_264A1A174();
  sub_264B41984();
  v9[14] = 1;
  v7 = sub_264B41944();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_264A1A120()
{
  result = qword_27FF895D0;
  if (!qword_27FF895D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895D0);
  }

  return result;
}

unint64_t sub_264A1A174()
{
  result = qword_27FF895D8;
  if (!qword_27FF895D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895D8);
  }

  return result;
}

unint64_t sub_264A1A1C8()
{
  result = qword_27FF895E8;
  if (!qword_27FF895E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895E8);
  }

  return result;
}

unint64_t sub_264A1A230()
{
  result = qword_27FF895F0;
  if (!qword_27FF895F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895F0);
  }

  return result;
}

unint64_t sub_264A1A288()
{
  result = qword_27FF895F8;
  if (!qword_27FF895F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895F8);
  }

  return result;
}

unint64_t sub_264A1A2E0()
{
  result = qword_27FF89600;
  if (!qword_27FF89600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89600);
  }

  return result;
}

uint64_t sub_264A1A35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_264B41694();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = *(a1 + 36);

    return sub_264A1EE18(result, v5, a1, a2);
  }

  return result;
}

uint64_t MediaTransportControlStream.streamIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MediaTransportControlStream.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - v5;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);

  v8 = sub_264B40944();
  v9 = sub_264B414B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_2649CC004(*(v1 + 16), *(v1 + 24), &v18);
    _os_log_impl(&dword_2649C6000, v8, v9, "deinit control channel with streamID:%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  v12 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStreamContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStreamContinuation, v2);
  sub_264B412B4();
  v13 = *(v3 + 8);
  v13(v6, v2);

  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream, &qword_27FF89618, &qword_264B4B9F0);

  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStream;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v13((v1 + v12), v2);

  return v1;
}

uint64_t MediaTransportControlStream.__deallocating_deinit()
{
  MediaTransportControlStream.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_264A1A780@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v48 = v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v52 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FB8, &unk_264B46970);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v46 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v11 = *(v54 - 8);
  v13 = MEMORY[0x28223BE20](v54, v12);
  v46[1] = v14;
  v47 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v53 = v46 - v16;
  v17 = sub_264B3FFD4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v22 = sub_264B40964();
  __swift_project_value_buffer(v22, qword_27FFA71D0);
  v23 = sub_264B41484();
  sub_264B3FF94();
  v24 = sub_264B3FFA4();
  v26 = v25;
  (*(v18 + 8))(v21, v17);

  v27 = sub_264B40944();

  if (os_log_type_enabled(v27, v23))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v56[0] = v29;
    *v28 = 136446722;
    v30 = sub_2649CC004(v24, v26, v56);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2050;
    *(v28 + 14) = 58;
    *(v28 + 22) = 2082;
    *(v28 + 24) = sub_2649CC004(0x6574617669746361, 0xEA00000000002928, v56);
    _os_log_impl(&dword_2649C6000, v27, v23, "%{public}s:%{public}ld %{public}s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v29, -1, -1);
    MEMORY[0x266749940](v28, -1, -1);
  }

  else
  {
  }

  v31 = v54;
  v33 = v49;
  v32 = v50;
  (*(v49 + 104))(v10, *MEMORY[0x277D85778], v50);
  v34 = v53;
  sub_264B41284();
  (*(v33 + 8))(v10, v32);
  v35 = *(v11 + 16);
  v36 = v52;
  v35(v52, v34, v31);
  (*(v11 + 56))(v36, 0, 1, v31);
  v37 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream;
  v38 = v55;
  swift_beginAccess();
  sub_264A1E600(v36, v38 + v37);
  swift_endAccess();
  if (*(v38 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_role))
  {
    sub_264A1ADE8(v34);
  }

  else
  {
    v39 = sub_264B41274();
    v40 = v48;
    (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = v47;
    v35(v47, v34, v31);
    v43 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = 0;
    *(v44 + 3) = 0;
    *(v44 + 4) = v41;
    (*(v11 + 32))(&v44[v43], v42, v31);
    sub_264A10C20(0, 0, v40, &unk_264B48148, v44);
  }

  return (*(v11 + 8))(v34, v31);
}

uint64_t sub_264A1ADE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40EB4();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40EE4();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - v15;
  v24 = [*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_currentSession) dispatchQueue];
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = sub_264A1EEA4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_27;
  v20 = _Block_copy(aBlock);

  sub_264B40EC4();
  v28 = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0, MEMORY[0x277D83970]);
  sub_264B41684();
  v21 = v24;
  MEMORY[0x266748860](0, v11, v7, v20);
  _Block_release(v20);

  (*(v27 + 8))(v7, v4);
  (*(v25 + 8))(v11, v26);
}

uint64_t sub_264A1B1AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A1B1D0, 0, 0);
}

uint64_t sub_264A1B1D0()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_264A1B27C;
  v5 = v0[3];
  v6 = v0[2];

  return sub_264A1B370(v3, v2, v6, v5);
}

uint64_t sub_264A1B27C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264A1B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  return MEMORY[0x2822009F8](sub_264A1B398, 0, 0);
}

uint64_t sub_264A1B398()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[30];
  v5 = v1[28];
  v4 = v1[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89670, &qword_264B48248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  *(inited + 32) = 30836;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  sub_2649DEF18(v5, v4);
  v7 = sub_264A2454C(inited);
  swift_setDeallocating();
  sub_2649D04D4(inited + 32, &qword_27FF89678, &unk_264B48250);
  v8 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream);
  v9 = sub_264B41014();
  v1[31] = v9;
  sub_264AB4C64(v7);

  v10 = sub_264B40F54();
  v1[32] = v10;

  v1[2] = v1;
  v1[3] = sub_264A1B5C0;
  v11 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_2649F4D64;
  v1[21] = &block_descriptor_19;
  v1[22] = v11;
  [v8 sendEventID:v9 event:v10 options:0 completion:?];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_264A1B5C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_264A1B738;
  }

  else
  {
    v2 = sub_264A1B6D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A1B6D0()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A1B738(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[31];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_264A1B7B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);
  v10 = sub_264B41484();
  sub_264B3FF94();
  v11 = sub_264B3FFA4();
  v13 = v12;
  (*(v5 + 8))(v8, v4);

  v14 = sub_264B40944();

  if (os_log_type_enabled(v14, v10))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446722;
    v17 = sub_2649CC004(v11, v13, &v23);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2050;
    *(v15 + 14) = 78;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_2649CC004(0x4465766965636572, 0xED00002928617461, &v23);
    _os_log_impl(&dword_2649C6000, v14, v10, "%{public}s:%{public}ld %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  else
  {
  }

  v18 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStream;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  a1[3] = v19;
  a1[4] = sub_2649CB4C8(&qword_27FF88F90, &qword_27FF88F88, &unk_264B470C0, MEMORY[0x277D857C0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v2 + v18, v19);
}

uint64_t sub_264A1BAF0(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v45 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v44 = &v39 - v15;
  v16 = sub_264B3FFD4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  result = swift_beginAccess();
  if ((*(v2 + 32) & 1) == 0)
  {
    v41 = v21;
    v42 = v8;
    v43 = v5;
    v40 = v4;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v23 = sub_264B40964();
    __swift_project_value_buffer(v23, qword_27FFA71D0);
    v24 = sub_264B41484();
    sub_264B3FF94();
    v25 = sub_264B3FFA4();
    v27 = v26;
    (*(v17 + 8))(v20, v16);

    v28 = sub_264B40944();

    if (os_log_type_enabled(v28, v24))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47[0] = v30;
      *v29 = 136446722;
      v31 = sub_2649CC004(v25, v27, v47);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2050;
      *(v29 + 14) = 285;
      *(v29 + 22) = 2082;
      *(v29 + 24) = sub_2649CC004(0x697469736E617274, 0xEF293A6F74286E6FLL, v47);
      _os_log_impl(&dword_2649C6000, v28, v24, "%{public}s:%{public}ld %{public}s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v30, -1, -1);
      MEMORY[0x266749940](v29, -1, -1);
    }

    else
    {
    }

    v33 = v42;
    v32 = v43;
    sub_264A1DFB0();
    *(v2 + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
    sub_264B412B4();
    [*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream) invalidate];
    v34 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream;
    swift_beginAccess();
    sub_264A1ED98(v2 + v34, v12);
    v35 = v45;
    v36 = (*(v45 + 48))(v12, 1, v13);
    v37 = v41;
    if (v36 == 1)
    {
      return sub_2649D04D4(v12, &qword_27FF89618, &qword_264B4B9F0);
    }

    else
    {
      v38 = v44;
      (*(v35 + 32))(v44, v12, v13);
      v46 = v37;
      sub_264A1EE08(v37);
      sub_264B412A4();
      (*(v32 + 8))(v33, v40);
      sub_264B412B4();
      return (*(v35 + 8))(v38, v13);
    }
  }

  return result;
}

uint64_t sub_264A1C04C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A1C070, 0, 0);
}

uint64_t sub_264A1C070()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_264A1FFF8;
  v5 = v0[3];
  v6 = v0[2];

  return sub_264A1B370(v3, v2, v6, v5);
}

void sub_264A1C120(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v3 = *(v41 - 8);
  v40 = *(v3 + 64);
  MEMORY[0x28223BE20](v41, v4);
  v6 = &v40 - v5;
  v7 = sub_264B3FFD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v12 = sub_264B40964();
  v13 = __swift_project_value_buffer(v12, qword_27FFA71D0);
  v14 = sub_264B41484();
  sub_264B3FF94();
  v15 = sub_264B3FFA4();
  v17 = v16;
  (*(v8 + 8))(v11, v7);

  v43 = v13;
  v18 = sub_264B40944();

  if (os_log_type_enabled(v18, v14))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446722;
    v21 = sub_2649CC004(v15, v17, &aBlock);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2050;
    *(v19 + 14) = 89;
    *(v19 + 22) = 2082;
    *(v19 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B5B0E0, &aBlock);
    _os_log_impl(&dword_2649C6000, v18, v14, "%{public}s:%{public}ld %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  else
  {
  }

  v22 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream);
  v23 = sub_264B41014();
  [v22 setStreamID_];

  [v22 setStreamType_];
  [v22 setStreamFlags_];
  [v22 setDispatchQueue_];
  v24 = swift_allocObject();
  swift_weakInit();
  v48 = sub_264A1EFEC;
  v49 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_2649D68F4;
  v47 = &block_descriptor_38;
  v25 = _Block_copy(&aBlock);

  [v22 setDisconnectHandler_];
  _Block_release(v25);
  v26 = swift_allocObject();
  swift_weakInit();
  v48 = sub_264A1F010;
  v49 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_2649D68F4;
  v47 = &block_descriptor_42;
  v27 = _Block_copy(&aBlock);

  [v22 setInvalidationHandler_];
  _Block_release(v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v6;
  v30 = v6;
  v31 = v41;
  (*(v3 + 16))(v30, v42, v41);
  v32 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  (*(v3 + 32))(v33 + v32, v29, v31);
  v48 = sub_264A1F104;
  v49 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_264A1C9BC;
  v47 = &block_descriptor_49;
  v34 = _Block_copy(&aBlock);

  [v22 setReceivedEventHandler_];
  _Block_release(v34);
  v35 = swift_allocObject();
  swift_weakInit();
  v48 = sub_264A1F1AC;
  v49 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_2649D68F4;
  v47 = &block_descriptor_53;
  v36 = _Block_copy(&aBlock);

  [v22 setStatusChangedHandler_];
  _Block_release(v36);
  v37 = sub_264B40944();
  v38 = sub_264B41474();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_2649C6000, v37, v38, "configured rapport stream", v39, 2u);
    MEMORY[0x266749940](v39, -1, -1);
  }
}

uint64_t sub_264A1C800(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71D0);
    v6 = sub_264B40944();
    v7 = sub_264B414B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, a2, v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    swift_beginAccess();
    if ((*(v4 + 32) & 1) == 0)
    {
      v9 = 2;
      sub_264A1BAF0(&v9);
    }
  }

  return result;
}

uint64_t sub_264A1C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264A1F218(a3);
  }

  return result;
}

uint64_t sub_264A1C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = sub_264B41044();
  v8 = v7;
  v9 = sub_264B40F64();
  if (a4)
  {
    a4 = sub_264B40F64();
  }

  v5(v6, v8, v9, a4);
}

void sub_264A1CAA4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (([*(Strong + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream) statusFlags] & 0x2000000) != 0)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v2 = sub_264B40964();
      __swift_project_value_buffer(v2, qword_27FFA71D0);
      v3 = sub_264B40944();
      v4 = sub_264B41494();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2649C6000, v3, v4, "AWDL degraded", v5, 2u);
        MEMORY[0x266749940](v5, -1, -1);
      }

      sub_264A1F1B4();
      v6 = swift_allocError();
      *v7 = 1;
      v9 = v6;
      v8 = v6;
      sub_264A1BAF0(&v9);

      sub_264A1F208(v9);
    }

    else
    {
    }
  }
}

void sub_264A1CC28(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v47 - v7;
  v59 = sub_264B3FFD4();
  v9 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v55 = v8;
    v56 = v4;
    v54 = v5;
    v58 = a2;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    v16 = __swift_project_value_buffer(v15, qword_27FFA71D0);
    v17 = sub_264B414B4();
    v51 = "ayoutDirection:)";
    sub_264B3FF94();
    v18 = sub_264B3FFA4();
    v20 = v19;
    v21 = *(v9 + 8);
    v52 = v9 + 8;
    v50 = v21;
    v21(v12, v59);

    v53 = v16;
    v22 = sub_264B40944();

    v23 = os_log_type_enabled(v22, v17);
    v57 = v3;
    v49 = "sendInvalidationEvent()";
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136446722;
      v26 = sub_2649CC004(v18, v20, &aBlock);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2050;
      *(v24 + 14) = 142;
      *(v24 + 22) = 2082;
      *(v24 + 24) = sub_2649CC004(0xD000000000000023, 0x8000000264B5B070, &aBlock);
      _os_log_impl(&dword_2649C6000, v22, v17, "%{public}s:%{public}ld %{public}s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v25, -1, -1);
      MEMORY[0x266749940](v24, -1, -1);
    }

    else
    {
    }

    sub_264A1C120(v58);
    v27 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream;
    [*(v14 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream) setTrafficFlags_];
    [*(v14 + v27) setStreamQoS_];
    aBlock = 0;
    v61 = 0xE000000000000000;
    sub_264B41754();
    MEMORY[0x266748390](0xD000000000000016, 0x8000000264B5B0A0);
    v66 = 0x10000;
    type metadata accessor for CUTrafficFlags(0);
    v28 = sub_264B41064();
    MEMORY[0x266748390](v28);

    MEMORY[0x266748390](0xD00000000000001BLL, 0x8000000264B5B0C0);
    v29 = v61;
    v48 = aBlock;
    v30 = sub_264B414B4();
    sub_264B3FF94();
    v31 = sub_264B3FFA4();
    v33 = v32;
    v50(v12, v59);
    v34 = sub_264B40944();
    if (os_log_type_enabled(v34, v30))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136446978;
      v37 = sub_2649CC004(v31, v33, &aBlock);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2050;
      *(v35 + 14) = 156;
      *(v35 + 22) = 2082;
      *(v35 + 24) = sub_2649CC004(0xD000000000000023, v49 | 0x8000000000000000, &aBlock);
      *(v35 + 32) = 2082;
      *(v35 + 34) = sub_2649CC004(v48, v29, &aBlock);
      _os_log_impl(&dword_2649C6000, v34, v30, "%{public}s:%{public}ld %{public}s %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v36, -1, -1);
      MEMORY[0x266749940](v35, -1, -1);
    }

    else
    {
    }

    v38 = *(v14 + v27);
    v39 = swift_allocObject();
    swift_weakInit();
    v41 = v55;
    v40 = v56;
    v42 = v57;
    (*(v56 + 16))(v55, v58, v57);
    v43 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v39;
    (*(v40 + 32))(v44 + v43, v41, v42);
    v64 = sub_264A1EF6C;
    v65 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_2649F9844;
    v63 = &block_descriptor_34;
    v45 = _Block_copy(&aBlock);
    v46 = v38;

    [v46 activateWithCompletion_];
    _Block_release(v45);
  }

  else
  {
    sub_264B412B4();
  }
}

void sub_264A1D304(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - v6;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    goto LABEL_5;
  }

  if (a1)
  {
    v13 = a1;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
LABEL_5:
    sub_264B412B4();
    return;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B40944();
  v11 = sub_264B414B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2649C6000, v10, v11, "Rapport stream activated", v12, 2u);
    MEMORY[0x266749940](v12, -1, -1);
  }
}

uint64_t sub_264A1D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_264B3FFD4();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A1D638, 0, 0);
}

uint64_t sub_264A1D638()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[16];
    v6 = sub_264B40964();
    v0[20] = __swift_project_value_buffer(v6, qword_27FFA71D0);
    v7 = sub_264B414B4();
    sub_264B3FF94();
    v8 = sub_264B3FFA4();
    v10 = v9;
    (*(v4 + 8))(v3, v5);

    v11 = sub_264B40944();

    if (os_log_type_enabled(v11, v7))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446722;
      v14 = sub_2649CC004(v8, v10, &v20);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2050;
      *(v12 + 14) = 185;
      *(v12 + 22) = 2082;
      *(v12 + 24) = sub_2649CC004(0xD000000000000023, 0x8000000264B5B190, &v20);
      _os_log_impl(&dword_2649C6000, v11, v7, "%{public}s:%{public}ld %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    else
    {
    }

    sub_264A1C120(v0[12]);
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);
    v0[21] = v18;

    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_264A1D978;

    return sub_264A1FB60(v17, v18);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412B4();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_264A1D978()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_264A1DB6C;
  }

  else
  {

    v2 = sub_264A1DA94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A1DA94()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v0[10] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  sub_264B412A4();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_264A1DB6C()
{
  v18 = v0;
  v1 = v0[23];

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_264B41B24();
    v9 = sub_2649CC004(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "error for sending message:%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = v0[23];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  v0[8] = v10;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  sub_264B412A4();
  (*(v12 + 8))(v11, v13);
  sub_264B412B4();

  v15 = v0[1];

  return v15();
}

uint64_t sub_264A1DD68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89690, &qword_264B48270);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v24 - v13;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71D0);

  v16 = sub_264B40944();
  v17 = sub_264B41484();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24[1] = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = a1;
    v22 = v20;
    v25[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_2649CC004(v21, a2, v25);
    _os_log_impl(&dword_2649C6000, v16, v17, "Processing event for stream: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_2649DEF18(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
  sub_264B412A4();
  return (*(v11 + 8))(v14, v10);
}

void sub_264A1DFB0()
{
  v1 = v0;
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, &aBlock);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 264;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0xD000000000000017, 0x8000000264B5B050, &aBlock);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_currentSession);
  v17 = sub_264B41014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  aBlock = 0x6574617473;
  v28 = 0xE500000000000000;
  v19 = MEMORY[0x277D837D0];
  sub_264B416F4();
  *(inited + 96) = v19;
  *(inited + 72) = 0xD000000000000019;
  *(inited + 80) = 0x8000000264B58C30;
  aBlock = 0xD000000000000010;
  v28 = 0x8000000264B59590;
  sub_264B416F4();
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  *(inited + 168) = v19;
  *(inited + 144) = v21;
  *(inited + 152) = v20;

  sub_264A240D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
  swift_arrayDestroy();
  v22 = sub_264B40F54();

  v23 = *MEMORY[0x277D44228];
  v31 = sub_264A1E44C;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2649F9844;
  v30 = &block_descriptor_3;
  v24 = _Block_copy(&aBlock);
  v25 = v23;
  [v16 sendEventID:v17 event:v22 destinationID:v25 options:0 completion:v24];
  _Block_release(v24);
}

void sub_264A1E44C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = a1;
    v5 = sub_264B40944();
    v6 = sub_264B41494();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = sub_264B41B24();
      v11 = sub_2649CC004(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2649C6000, v5, v6, "%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_264A1E600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A1E670()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A1E6A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A1E780(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A1D510(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264A1E884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_264A1E8CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t type metadata accessor for MediaTransportControlStream(uint64_t a1)
{
  result = qword_27FF89650;
  if (!qword_27FF89650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A1E964(uint64_t a1)
{
  sub_264A1ECE0(319);
  if (v1 <= 0x3F)
  {
    sub_264A1ED44(319, &qword_27FF88F60, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_264A1ED44(319, &qword_27FF88F58, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MediaTransportControlStream.send(_:reliability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 232) + **(*v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2649CD850;

  return v10(a1, a2, a3);
}

void sub_264A1ECE0(uint64_t a1)
{
  if (!qword_27FF89660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88FA8, &qword_264B46960);
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF89660);
    }
  }
}

void sub_264A1ED44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CC9318]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264A1ED98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_264A1EE08(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_264A1EE18@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_264A1FB04(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_18(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
}

void sub_264A1EEA4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_264A1CC28(v2, v3);
}

unint64_t sub_264A1EF14()
{
  result = qword_27FF892C0;
  if (!qword_27FF892C0)
  {
    sub_264B40EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF892C0);
  }

  return result;
}

void sub_264A1EF6C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v3 = *(v1 + 16);

  sub_264A1D304(a1, v3);
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A1F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_264A1C948(a1, a2, a3, a4, v10, v11);
}

unint64_t sub_264A1F1B4()
{
  result = qword_27FF89680;
  if (!qword_27FF89680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89680);
  }

  return result;
}

void sub_264A1F208(id a1)
{
  if (a1 >= 3)
  {
  }
}

void sub_264A1F218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v48 = &v47 - v4;
  v5 = sub_264B3FFD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71D0);
  v11 = sub_264B41484();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);

  v15 = sub_264B40944();

  if (os_log_type_enabled(v15, v11))
  {
    v47 = a1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54[0] = v17;
    *v16 = 136446722;
    v18 = sub_2649CC004(v12, v14, v54);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 231;
    *(v16 + 22) = 2082;
    a1 = v47;
    *(v16 + 24) = sub_2649CC004(0xD000000000000031, 0x8000000264B5B150, v54);
    _os_log_impl(&dword_2649C6000, v15, v11, "%{public}s:%{public}ld %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }

  else
  {
  }

  v19 = sub_264B40944();
  v20 = sub_264B41484();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v54[0] = v22;
    *v21 = 136446210;
    *&v52 = *(a1 + 16);
    v23 = sub_264B41A64();
    v25 = sub_2649CC004(v23, v24, v54);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2649C6000, v19, v20, "Processing rapport event with count: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  *&v52 = 0x6574617473;
  *(&v52 + 1) = 0xE500000000000000;
  sub_264B416F4();
  if (!*(a1 + 16) || (v26 = sub_264A20A44(v54), (v27 & 1) == 0))
  {
    sub_2649C95C0(v54);
    v52 = 0u;
    v53 = 0u;
    sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
    *&v52 = 30836;
    *(&v52 + 1) = 0xE200000000000000;
    sub_264B416F4();
    if (*(a1 + 16) && (v34 = sub_264A20A44(v54), (v35 & 1) != 0))
    {
      sub_2649C964C(*(a1 + 56) + 32 * v34, &v52);
      sub_2649C95C0(v54);
      sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
      sub_264A1A35C(a1, v54);
      if (v55)
      {
        if (swift_dynamicCast())
        {
          v36 = v52;
          v51 = v52;

          sub_264B416F4();
          if (*(a1 + 16) && (v37 = sub_264A20A44(v54), (v38 & 1) != 0))
          {
            sub_2649C964C(*(a1 + 56) + 32 * v37, &v52);
            sub_2649C95C0(v54);
            if (swift_dynamicCast())
            {
              v39 = v51;
              sub_264A1DD68(v36, *(&v36 + 1), v51, *(&v51 + 1));
              sub_2649DEF6C(v39, *(&v39 + 1));

              return;
            }
          }

          else
          {
            sub_2649C95C0(v54);
          }

          v40 = sub_264B40944();
          v41 = sub_264B41494();
          if (!os_log_type_enabled(v40, v41))
          {
            goto LABEL_32;
          }

          v42 = swift_slowAlloc();
          *v42 = 0;
          v43 = "Unable to process event data for incoming message";
          goto LABEL_31;
        }
      }

      else
      {
        sub_2649D04D4(v54, &qword_27FF89688, &unk_264B48260);
      }

      v40 = sub_264B40944();
      v41 = sub_264B41494();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "Unable to process event key for incoming message";
        goto LABEL_31;
      }
    }

    else
    {
      sub_2649C95C0(v54);
      v52 = 0u;
      v53 = 0u;
      sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
      v40 = sub_264B40944();
      v41 = sub_264B41494();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "Unable to process received control event";
LABEL_31:
        _os_log_impl(&dword_2649C6000, v40, v41, v43, v42, 2u);
        MEMORY[0x266749940](v42, -1, -1);
      }
    }

LABEL_32:

    return;
  }

  sub_2649C964C(*(a1 + 56) + 32 * v26, &v52);
  sub_2649C95C0(v54);
  sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89218, &qword_264B470F8);
  v54[0] = a1;

  sub_2649E7454(v54, 1);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_0(v54);
  if (v29)
  {

    v30 = sub_264B40944();
    v31 = sub_264B414B4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2649C6000, v30, v31, "connection activated", v32, 2u);
      MEMORY[0x266749940](v32, -1, -1);
    }

    v54[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    v33 = v48;
    sub_264B412A4();
    (*(v49 + 8))(v33, v50);
  }

  else
  {
    sub_264A1F1B4();
    v44 = swift_allocError();
    *v45 = 0;
    v54[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    v46 = v48;
    sub_264B412A4();
    (*(v49 + 8))(v46, v50);
    sub_264B412B4();
  }
}

uint64_t sub_264A1FB60(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_264A1FB84, 0, 0);
}

uint64_t sub_264A1FB84()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891E0, &unk_264B47030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  *(inited + 32) = 0x6574617473;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x6341726576726573;
  *(inited + 56) = 0xEF64657461766974;
  *(inited + 64) = 0x44496D6165727473;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v1;

  v5 = sub_264A24438(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891E8, qword_264B51630);
  swift_arrayDestroy();
  v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream);
  v7 = sub_264B41014();
  v0[33] = v7;
  sub_264AB4F2C(v5);

  v8 = sub_264B40F54();
  v0[34] = v8;

  v0[2] = v0;
  v0[3] = sub_264A1FDE8;
  v9 = swift_continuation_init();
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[22] = MEMORY[0x277D85DD0];
  v0[23] = 1107296256;
  v0[24] = sub_2649F4D64;
  v0[25] = &block_descriptor_57_0;
  v0[26] = v9;
  [v6 sendEventID:v7 event:v8 options:0 completion:v0 + 22];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264A1FDE8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_264A1FF60;
  }

  else
  {
    v2 = sub_264A1FEF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A1FEF8()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A1FF60(uint64_t a1)
{
  v2 = v1[34];
  v3 = v1[33];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_264A2001C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A20090()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit37MockMediaTransportClientSessionVendor__mediaTransportClientSession;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896C8, qword_264B48338);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockMediaTransportClientSessionVendor(uint64_t a1)
{
  result = qword_27FF896A0;
  if (!qword_27FF896A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A2018C(uint64_t a1)
{
  sub_264A2021C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264A2021C(uint64_t a1)
{
  if (!qword_27FF896B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF896B8, qword_264B482D8);
    v1 = sub_264B40AA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF896B0);
    }
  }
}

uint64_t sub_264A202A4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264A20324(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A203A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  v5 = v9;
  if (!v9)
  {
    v6 = *a1;
    v7 = a1[1];
    type metadata accessor for MockMediaTransportClientSession(0);
    swift_allocObject();

    v5 = sub_2649DD534(v6, v7, a3, 0);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_264B40A94();
  }

  sub_264A204C8();
  return v5;
}

unint64_t sub_264A204C8()
{
  result = qword_27FF896C0;
  if (!qword_27FF896C0)
  {
    type metadata accessor for MockMediaTransportClientSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF896C0);
  }

  return result;
}

void *HIDDebugInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v0[2] = 0;
  v0[3] = v1;
  v0[4] = sub_264A2485C(v1, &qword_27FF89728, &qword_264B48438);
  return v0;
}

void *HIDDebugInfo.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = 0;
  v0[3] = v1;
  v0[4] = sub_264A2485C(v1, &qword_27FF89728, &qword_264B48438);
  return v0;
}

uint64_t sub_264A205DC()
{
  swift_beginAccess();
  v1 = 0;
  result = 0;
  v3 = *(v0 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return result;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_264A206A4()
{
  v1 = *(v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

uint64_t sub_264A206BC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    v5 = sub_264A20A88(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      v8 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  v8 = 1;
LABEL_7:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_264A22CCC(v8, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v11;
  return swift_endAccess();
}

uint64_t sub_264A20784(uint64_t a1)
{
  *(v1 + 24) = a1;
}

uint64_t HIDDebugInfo.deinit()
{

  return v0;
}

uint64_t HIDDebugInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_264A20828()
{
  if (*(v0 + 16) < 1)
  {
    return 0;
  }

  sub_264B41754();

  v1 = sub_264B41A64();
  MEMORY[0x266748390](v1);

  return 0xD000000000000016;
}

uint64_t HIDDebugInfo.description.getter()
{
  sub_264B41754();
  MEMORY[0x266748390](0xD000000000000010, 0x8000000264B5B220);
  v0 = sub_264A20828();
  MEMORY[0x266748390](v0);

  MEMORY[0x266748390](0xD00000000000001DLL, 0x8000000264B5B240);
  v1 = sub_264B41A64();
  MEMORY[0x266748390](v1);

  MEMORY[0x266748390](0xD00000000000001BLL, 0x8000000264B5B260);
  sub_264A205DC();
  v2 = sub_264B41A64();
  MEMORY[0x266748390](v2);

  return 0;
}

unint64_t sub_264A20A44(uint64_t a1)
{
  v2 = sub_264B416D4();

  return sub_264A20C44(a1, v2);
}

unint64_t sub_264A20A88(uint64_t a1)
{
  v2 = sub_264B41B74();

  return sub_264A20D0C(a1, v2);
}

unint64_t sub_264A20ACC(uint64_t a1, uint64_t a2)
{
  sub_264B41B84();
  sub_264B41084();
  v4 = sub_264B41BB4();

  return sub_264A20D78(a1, a2, v4);
}

unint64_t sub_264A20B44(char a1)
{
  sub_264B41B84();
  sub_264B41084();

  v2 = sub_264B41BB4();

  return sub_264A20E30(a1 & 1, v2);
}

unint64_t sub_264A20BD8(char a1)
{
  sub_264B41B84();
  MEMORY[0x266748E90](a1 & 1);
  v2 = sub_264B41BB4();

  return sub_264A20F30(a1 & 1, v2);
}

unint64_t sub_264A20C44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264A1FB04(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2667489E0](v9, a1);
      sub_2649C95C0(v9);
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

unint64_t sub_264A20D0C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_264A20D78(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264B41AA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264A20E30(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F65646976;
    }

    else
    {
      v6 = 0x6F69647561;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6F65646976 : 0x6F69647561;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_264B41AA4();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_264A20F30(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_264A20FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
  v33 = v4;
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_264A23FD8(v24, v34);
      }

      else
      {
        sub_2649C964C(v24, v34);
      }

      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_264A23FD8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_264A21258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89708, &qword_264B48408);
  v30 = v4;
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_264A21510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_264B418A4();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_264A217B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D0, &qword_264B483D0);
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_264A21A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89728, &qword_264B48438);
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_264B41B74();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_264A21CC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_264A23FD8((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_264A1FB04(v23, &v36);
        sub_2649C964C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_264B416D4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_264A23FD8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_264A21F80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F0, &unk_264B483F0);
  v35 = v4;
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_264A22224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89720, &qword_264B48428);
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_264B41B84();
      MEMORY[0x266748E90](v20);
      result = sub_264B41BB4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_264A224A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896E8, &qword_264B483E8);
  result = sub_264B418A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_264B41B74();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_264A22708(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_264A20ACC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_264A23238();
      v11 = v19;
      goto LABEL_8;
    }

    sub_264A20FA0(v16, a4 & 1);
    v11 = sub_264A20ACC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_264B41AE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_264A23FD8(a1, v22);
  }

  else
  {
    sub_264A231CC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_264A22858(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_264A20B44(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_264A21258(v14, a3 & 1);
      result = sub_264A20B44(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_264B41AE4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_264A233DC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_264A229CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_264A20ACC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_264A21510(v20, a4 & 1, a5, a6);
      v15 = sub_264A20ACC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_264B41AE4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_264A2354C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

unint64_t sub_264A22B6C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = a3 & 1;
  result = sub_264A20B44(a3 & 1);
  v13 = *(v9 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v9 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_264A217B0(v16, a4 & 1);
      result = sub_264A20B44(v10);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_264B41AE4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_264A236AC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = v10;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;

  return swift_unknownObjectRelease();
}

unint64_t sub_264A22CCC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_264A20A88(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_264A23810();
    result = v17;
    goto LABEL_8;
  }

  sub_264A21A64(v14, a3 & 1);
  result = sub_264A20A88(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

uint64_t sub_264A22DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_264A20ACC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_264A21F80(v16, a4 & 1);
      v11 = sub_264A20ACC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_264B41AE4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_264A23B00();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_264A22F68(char a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_264A20BD8(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_264A23C6C();
    result = v17;
    goto LABEL_8;
  }

  sub_264A22224(v14, a3 & 1);
  result = sub_264A20BD8(v8);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

unint64_t sub_264A23094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_264A20A88(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_264A23DB8();
    result = v19;
    goto LABEL_8;
  }

  sub_264A224A4(v16, a4 & 1);
  result = sub_264A20A88(a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a1;
      v22[1] = a2;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

_OWORD *sub_264A231CC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_264A23FD8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_264A23238()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2649C964C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_264A23FD8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_264A233DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89708, &qword_264B48408);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_264A2354C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264B41894();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void *sub_264A236AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D0, &qword_264B483D0);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264A23810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89728, &qword_264B48438);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264A2395C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_264A1FB04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2649C964C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_264A23FD8(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_264A23B00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F0, &unk_264B483F0);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264A23C6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89720, &qword_264B48428);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_264A23DB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896E8, &qword_264B483E8);
  v2 = *v0;
  v3 = sub_264B41894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

_OWORD *sub_264A23FD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_264A23FE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896E8, &qword_264B483E8);
    v3 = sub_264B418B4();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_264A20A88(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A240D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v3 = sub_264B418B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2649D046C(v4, v13, &qword_27FF89190, &qword_264B48240);
      result = sub_264A20A44(v13);
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
      result = sub_264A23FD8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A2420C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D0, &qword_264B483D0);
    v3 = sub_264B418B4();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      swift_unknownObjectRetain();
      result = sub_264A20B44(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A24308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
    v3 = sub_264B418B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2649D046C(v4, &v13, &qword_27FF89220, &qword_264B48430);
      v5 = v13;
      v6 = v14;
      result = sub_264A20ACC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_264A23FD8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A24438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89710, &qword_264B48410);
    v3 = sub_264B418B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_264A20ACC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A2454C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89730, &qword_264B48440);
    v3 = sub_264B418B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_2649DEF18(v7, v8);
      result = sub_264A20ACC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A24664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F0, &unk_264B483F0);
    v3 = sub_264B418B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_264A20ACC(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A24768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89720, &qword_264B48428);
    v3 = sub_264B418B4();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_264A20BD8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264A2485C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_264B418B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_264A20A88(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_264A24930(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71D0);
  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v15);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_2649C6000, v5, v6, "MediaTransportAudioStream state changed from %{public}s to %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  if (v2 == 5)
  {
    sub_264B41874();
    __break(1u);
  }
}

char *sub_264A24B48(uint64_t a1, void *a2)
{
  v103 = a1;
  v112 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v106 = &v94 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF898E0, qword_264B48650);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v8);
  v99 = &v94 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v10);
  v102 = &v94 - v11;
  v12 = sub_264B40104();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v109 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v17 = MEMORY[0x28223BE20](v98, v16);
  v108 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v107 = &v94 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v110 = &v94 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v94 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = sub_264B41044();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v29;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000264B5B600;
  *(inited + 80) = sub_264B41044();
  *(inited + 88) = v30;
  v31 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_sessionID;
  *(inited + 120) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(v13 + 16))(boxed_opaque_existential_1, &v2[v31], v12);
  *(inited + 128) = sub_264B41044();
  *(inited + 136) = v33;
  v34 = v2[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isRunInProcess];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = v34;
  v35 = sub_264A24308(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();

  v36 = sub_264AB4744(v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111[0] = a2;
  sub_264A2D2CC(v36, sub_264AE9B3C, 0, isUniquelyReferenced_nonNull_native, v111);
  if (!v3)
  {

    v38 = v111[0];
    v39 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream];
    v40 = [v39 streamType];
    v41 = v2;
    if (v40 != 1)
    {
      if (v40 == 3)
      {
        v97 = v38;

        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v42 = sub_264B40964();
        __swift_project_value_buffer(v42, qword_27FFA71D0);
        v43 = v2;
        v44 = sub_264B40944();
        v45 = sub_264B41474();

        if (os_log_type_enabled(v44, v45))
        {
          v96 = v41;
          v46 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v111[0] = v95;
          *v46 = 136315138;
          v47 = [v39 &selRef_packageWithContentsOfURL_type_options_error_ + 6];
          if (v47)
          {
            v48 = v47;
            sub_264B400D4();

            v49 = 0;
          }

          else
          {
            v49 = 1;
          }

          (*(v13 + 56))(v27, v49, 1, v12);
          v65 = sub_264B41064();
          v67 = sub_2649CC004(v65, v66, v111);

          *(v46 + 4) = v67;
          _os_log_impl(&dword_2649C6000, v44, v45, "Creating audio stream over nw path using clientID: %s", v46, 0xCu);
          v68 = v95;
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x266749940](v68, -1, -1);
          MEMORY[0x266749940](v46, -1, -1);

          v41 = v96;
        }

        else
        {
        }

        v69 = [v39 nwClientID];
        v70 = v110;
        if (v69)
        {
          v71 = v109;
          v72 = v69;
          sub_264B400D4();

          (*(v13 + 32))(v70, v71, v12);
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = v70;
        v75 = *(v13 + 56);
        v76 = 1;
        v75(v74, v73, 1, v12);
        v77 = [v39 nwClientID];
        if (v77)
        {
          v78 = v41;
          v79 = v109;
          v80 = v77;
          sub_264B400D4();

          v81 = v107;
          v82 = v79;
          v41 = v78;
          (*(v13 + 32))(v107, v82, v12);
          v76 = 0;
        }

        else
        {
          v81 = v107;
        }

        v75(v81, v76, 1, v12);
        v83 = v108;
        v75(v108, 1, 1, v12);
        v84 = objc_allocWithZone(MEMORY[0x277CE56E8]);
        v60 = sub_264A2D0B8(v81, v83, v97);
        sub_2649D04D4(v110, &unk_27FF8BFC0, &qword_264B47140);
        goto LABEL_31;
      }

      sub_264A02DF0();
      swift_allocError();
      *v62 = 0;
      goto LABEL_20;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v50 = sub_264B40964();
    __swift_project_value_buffer(v50, qword_27FFA71D0);
    v51 = sub_264B40944();
    v52 = sub_264B41474();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2649C6000, v51, v52, "Creating audio stream over socket path", v53, 2u);
      MEMORY[0x266749940](v53, -1, -1);
    }

    v54 = [v39 streamSocket];
    if ((v54 & 0x80000000) != 0)
    {

      v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v63 = sub_264B41014();
      [v27 initWithDomain:v63 code:-1 userInfo:0];

LABEL_20:
      swift_willThrow();
      return v27;
    }

    v55 = v54;
    v56 = xpc_dictionary_create(0, 0, 0);
    v57 = *MEMORY[0x277CE5788];
    if (*MEMORY[0x277CE5788])
    {
      v27 = v56;

      xpc_dictionary_set_fd(v27, v57, v55);
      v58 = objc_allocWithZone(MEMORY[0x277CE56E8]);
      v59 = sub_264B40F54();

      v111[0] = 0;
      v60 = [v58 initWithNetworkSockets:v27 options:v59 error:v111];

      if (v60)
      {
        v61 = v111[0];
        swift_unknownObjectRelease();
LABEL_31:
        v85 = v100;
        v86 = v99;
        v87 = v101;
        (*(v100 + 104))(v99, *MEMORY[0x277D85778], v101);
        v27 = v60;
        v88 = v102;
        sub_264B41284();
        (*(v85 + 8))(v86, v87);
        v89 = v104;
        v90 = v106;
        v91 = v105;
        (*(v104 + 16))(v106, v88, v105);
        (*(v89 + 56))(v90, 0, 1, v91);
        v92 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
        swift_beginAccess();
        sub_2649FECCC(v90, &v41[v92], &qword_27FF89858, &qword_264B485E8);
        swift_endAccess();
        [v27 setDelegate_];

        (*(v89 + 8))(v88, v91);
        return v27;
      }

      v64 = v111[0];
      sub_264B3FF84();

      swift_willThrow();
      swift_unknownObjectRelease();
      return v27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264A25774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF898D0, &unk_264B48640);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A258EC, 0, 0);
}

uint64_t sub_264A258EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628);
  sub_264B412C4();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_264A259D4;
  v2 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 88, 0, 0, v2);
}

uint64_t sub_264A259D4()
{

  return MEMORY[0x2822009F8](sub_264A25AD0, 0, 0);
}

uint64_t sub_264A25AD0()
{
  v42 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  v3 = *(v0 + 104);
  if (v3 == 255)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_13:

    v13 = *(v0 + 8);

    return v13();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 224) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_264A2DD5C(v1, v2, v3);
    goto LABEL_13;
  }

  v5 = Strong;
  if (v3)
  {
    if (v3 != 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FFA71D0);
      v24 = sub_264B40944();
      v25 = sub_264B414B4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2649C6000, v24, v25, "AVCAudioStream did stop", v26, 2u);
        MEMORY[0x266749940](v26, -1, -1);
      }

      v27 = *(v0 + 168);
      v29 = *(v0 + 136);
      v28 = *(v0 + 144);

      v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = 0;
      v30 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamDidStopContinuation;
      swift_beginAccess();
      sub_2649D046C(&v5[v30], v27, &unk_27FF899E0, &qword_264B53440);
      v31 = (*(v28 + 48))(v27, 1, v29);
      v32 = *(v0 + 168);
      if (v31)
      {
        sub_264A2DD5C(v1, v2, 2);
        sub_2649D04D4(v32, &unk_27FF899E0, &qword_264B53440);
      }

      else
      {
        v34 = *(v0 + 144);
        v33 = *(v0 + 152);
        v35 = *(v0 + 136);
        (*(v34 + 16))(v33, *(v0 + 168), v35);
        sub_2649D04D4(v32, &unk_27FF899E0, &qword_264B53440);
        sub_264B411E4();
        sub_264A2DD5C(v1, v2, 2);
        (*(v34 + 8))(v33, v35);
      }

      v36 = *(v0 + 160);
      (*(*(v0 + 144) + 56))(v36, 1, 1, *(v0 + 136));
      swift_beginAccess();
      sub_2649FECCC(v36, &v5[v30], &unk_27FF899E0, &qword_264B53440);
      swift_endAccess();

      goto LABEL_31;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FFA71D0);
    sub_264A2DD88(v1, v2, 1);
    v7 = sub_264B40944();
    v8 = sub_264B414B4();
    sub_264A2DD5C(v1, v2, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v9 = 136446210;
      *(v0 + 112) = v2;
      sub_264A2DD88(v1, v2, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, &v41);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v7, v8, "Audio stream didStart error=%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x266749940](v40, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = v1 & 1;
    if (v1)
    {

      sub_264A2DD5C(v1, v2, 1);
LABEL_31:
      v37 = swift_task_alloc();
      *(v0 + 200) = v37;
      *v37 = v0;
      v37[1] = sub_264A259D4;
      v38 = *(v0 + 176);

      return MEMORY[0x2822003E8](v0 + 88, 0, 0, v38);
    }

    if (v2)
    {
      v19 = v2;
    }

    else
    {
      sub_264A02DF0();
      v19 = swift_allocError();
      *v39 = 13;
    }

    *(v0 + 248) = v19;
    sub_264A2DD88(v1, v2, 1);
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v22 = sub_264A26424;
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    __swift_project_value_buffer(v15, qword_27FFA71D0);
    v16 = sub_264B40944();
    v17 = sub_264B41494();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = v1;
      _os_log_impl(&dword_2649C6000, v16, v17, "Audio stream streamDidRTCPTimeOut streamToken=%{public}ld", v18, 0xCu);
      MEMORY[0x266749940](v18, -1, -1);
    }

    v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = 0;
    sub_264A02DF0();
    v19 = swift_allocError();
    *(v0 + 232) = v19;
    *v20 = 8;
    v21 = swift_task_alloc();
    *(v0 + 240) = v21;
    *v21 = v0;
    v22 = sub_264A2625C;
  }

  v21[1] = v22;

  return sub_264ADE41C(v19);
}

uint64_t sub_264A2625C()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_264A26374, 0, 0);
}

uint64_t sub_264A26374()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_264A259D4;
  v2 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 88, 0, 0, v2);
}

uint64_t sub_264A26424()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_264A2653C, 0, 0);
}

uint64_t sub_264A2653C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);

  sub_264A2DD5C(v2, v1, 1);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_264A259D4;
  v4 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 88, 0, 0, v4);
}

id sub_264A26600()
{
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState) == 5)
  {
    v2.receiver = v0;
    v2.super_class = type metadata accessor for MediaTransportAudioStream(0);
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MediaTransportAudioStream(uint64_t a1)
{
  result = qword_27FF897B0;
  if (!qword_27FF897B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A268C4(void *a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
  if (!v2)
  {
    sub_264A02DF0();
    swift_allocError();
    v25 = 5;
LABEL_13:
    *v24 = v25;
    swift_willThrow();
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isNegotiationComplete) != 1)
  {
    sub_264A02DF0();
    swift_allocError();
    v25 = 7;
    goto LABEL_13;
  }

  v31[0] = 0;
  v3 = v2;
  v4 = [v3 generateMediaStreamConfigurationWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream);
    v7 = v31[0];
    v8 = [v6 streamKey];
    if (v8)
    {
      v9 = v8;
      v10 = sub_264B40024();
      v12 = v11;

      sub_264AE9DCC(v5, v10, v12, v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_sessionID);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v13 = sub_264B40964();
      __swift_project_value_buffer(v13, qword_27FFA71D0);
      v14 = v5;
      v15 = sub_264B40944();
      v16 = sub_264B41484();

      if (os_log_type_enabled(v15, v16))
      {
        v29 = v12;
        v17 = swift_slowAlloc();
        v18 = v10;
        v19 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v14;
        *v19 = v5;
        v20 = v14;
        _os_log_impl(&dword_2649C6000, v15, v16, "audio config: %{public}@", v17, 0xCu);
        sub_2649D04D4(v19, &unk_27FF89880, &unk_264B46B20);
        v21 = v19;
        v10 = v18;
        MEMORY[0x266749940](v21, -1, -1);
        v22 = v17;
        v12 = v29;
        MEMORY[0x266749940](v22, -1, -1);
      }

      v31[0] = 0;
      if ([a1 configure:v14 error:v31])
      {
        v23 = v31[0];
        sub_2649DEF6C(v10, v12);
      }

      else
      {
        v28 = v31[0];
        sub_264B3FF84();

        swift_willThrow();
        sub_2649DEF6C(v10, v12);
      }
    }

    else
    {
      sub_264A02DF0();
      swift_allocError();
      *v27 = 4;
      swift_willThrow();
    }
  }

  else
  {
    v26 = v31[0];
    sub_264B3FF84();

    swift_willThrow();
  }
}

uint64_t sub_264A26C3C()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v1[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628);
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v1[15] = *(v4 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_264B3FFD4();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  sub_264B41244();
  v1[21] = sub_264B41234();
  v6 = sub_264B411C4();
  v1[22] = v6;
  v1[23] = v7;

  return MEMORY[0x2822009F8](sub_264A26EF0, v6, v7);
}

uint64_t sub_264A26EF0()
{
  v75 = v0;
  v74 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState) > 3u || *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState))
  {

    goto LABEL_4;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v70 = *(v0 + 144);
  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  sub_264B41754();

  v72 = 0xD000000000000010;
  v73 = 0x8000000264B5B5C0;
  v67 = v1;
  *(v0 + 216) = *(v1 + v2);
  v8 = sub_264B41064();
  MEMORY[0x266748390](v8);

  v9 = v73;
  v68 = v72;
  v10 = sub_264B414B4();
  sub_264B3FF94();
  v11 = sub_264B3FFA4();
  v13 = v12;
  (*(v6 + 8))(v5, v70);
  v14 = sub_264B40944();
  if (os_log_type_enabled(v14, v10))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v72 = v16;
    *v15 = 136446978;
    v17 = sub_2649CC004(v11, v13, &v72);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2050;
    *(v15 + 14) = 171;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_2649CC004(0xD000000000000014, 0x8000000264B5B5E0, &v72);
    *(v15 + 32) = 2082;
    *(v15 + 34) = sub_2649CC004(v68, v9, &v72);
    _os_log_impl(&dword_2649C6000, v14, v10, "%{public}s:%{public}ld %{public}s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 48);
  v19 = *(v18 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
  *(v0 + 192) = v19;
  if (!v19 || *(v18 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isNegotiationComplete) != 1)
  {

    v27 = sub_264B40944();
    v28 = sub_264B41474();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2649C6000, v27, v28, "Not ready to complete activation, negotiation not complete", v29, 2u);
      MEMORY[0x266749940](v29, -1, -1);
    }

    goto LABEL_20;
  }

  if (*(v18 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role) == 1 && *(v18 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated) != 1)
  {
    v32 = v19;

    v27 = sub_264B40944();
    v33 = sub_264B41474();
    if (os_log_type_enabled(v27, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2649C6000, v27, v33, "Not ready to complete activation, client not activated", v34, 2u);
      MEMORY[0x266749940](v34, -1, -1);
    }

LABEL_20:
    goto LABEL_4;
  }

  *(v0 + 40) = 0;
  v20 = v19;
  v21 = [v20 generateMediaStreamInitOptionsWithError_];
  v22 = *(v0 + 40);
  if (v21)
  {
    v23 = *(v0 + 136);
    v24 = v21;
    v25 = sub_264B40F64();
    v26 = v22;

    v35 = sub_264A24B48(v23, v25);
    v65 = v20;
    v36 = *(v0 + 128);
    v37 = *(v0 + 112);
    v69 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    v66 = *(v0 + 136);
    v40 = *(v0 + 48);

    v41 = *(v40 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream);
    *(v40 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream) = v35;
    v71 = v35;

    v42 = sub_264B41274();
    (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v37 + 16))(v36, v66, v39);
    v44 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    (*(v37 + 32))(v45 + v44, v36, v39);
    *(v45 + ((v69 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;
    sub_264A10C20(0, 0, v38, &unk_264B48638, v45);

    sub_264A268C4(v71);
    v47 = *(v0 + 80);
    v49 = *(v0 + 56);
    v48 = *(v0 + 64);
    v50 = *(v0 + 48);

    [v71 start];
    v51 = *(v67 + v2);
    *(v67 + v2) = 1;
    LOBYTE(v72) = v51;
    sub_264A24930(&v72);
    v52 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v50 + v52, v47, &qword_27FF89850, &qword_264B485E0);
    v53 = (*(v48 + 48))(v47, 1, v49);
    v54 = *(v0 + 136);
    v55 = *(v0 + 104);
    v56 = *(v0 + 112);
    if (v53)
    {
      v57 = *(v0 + 80);
      (*(v56 + 8))(*(v0 + 136), *(v0 + 104));

      sub_2649D04D4(v57, &qword_27FF89850, &qword_264B485E0);
      v58 = 1;
    }

    else
    {
      v59 = *(v0 + 80);
      v61 = *(v0 + 64);
      v60 = *(v0 + 72);
      v62 = *(v0 + 56);
      (*(v61 + 16))(v60, v59, v62);
      sub_2649D04D4(v59, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 217) = *(v67 + v2);
      sub_264B41374();

      (*(v61 + 8))(v60, v62);
      (*(v56 + 8))(v54, v55);
      v58 = 0;
    }

    v63 = *(v0 + 88);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v64 - 8) + 56))(v63, v58, 1, v64);
    sub_2649D04D4(v63, &unk_27FF89870, &qword_264B48600);
LABEL_4:

    v3 = *(v0 + 8);

    return v3();
  }

  v30 = v22;
  v31 = sub_264B3FF84();

  swift_willThrow();
  *(v0 + 200) = v31;
  v46 = swift_task_alloc();
  *(v0 + 208) = v46;
  *v46 = v0;
  v46[1] = sub_264A2788C;

  return sub_264ADE41C(v31);
}

uint64_t sub_264A2788C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_264A279E0, v3, v2);
}

uint64_t sub_264A279E0()
{
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A27AD8(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v2[25] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89890, &qword_264B48610);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89898, &unk_264B48618);
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v6 = sub_264B3FFD4();
  v2[35] = v6;
  v2[36] = *(v6 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A27D34, 0, 0);
}

uint64_t sub_264A27D34()
{
  v57 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = sub_264B40964();
  v0[38] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v56[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v56);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 204;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6574617669746361, 0xEA00000000002928, v56);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[24];
  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState))
  {
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, v14, v15, "the video stream was already started", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }

    v17 = 2;
    goto LABEL_10;
  }

  v21 = v13 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[39] = Strong;
  if (!Strong)
  {
    v17 = 6;
LABEL_10:
    sub_264A02DF0();
    swift_allocError();
    *v18 = v17;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  v53 = *(v21 + 8);
  v54 = Strong;
  v23 = v0[30];
  v24 = v0[31];
  v26 = v0[28];
  v25 = v0[29];
  v28 = v0[26];
  v27 = v0[27];
  v29 = v0[25];
  v55 = v0[24];
  (*(v27 + 104))(v26, *MEMORY[0x277D858A0], v28);
  sub_264B41344();
  (*(v27 + 8))(v26, v28);
  (*(v23 + 16))(v29, v24, v25);
  (*(v23 + 56))(v29, 0, 1, v25);
  v30 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v29, v55 + v30, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  if (*(v55 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role))
  {
    v31 = *(v0[24] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream);
    v0[2] = v0;
    v0[3] = sub_264A289D4;
    v32 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2649F4D64;
    v0[13] = &block_descriptor_4;
    v0[14] = v32;
    [v31 activateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v33 = objc_allocWithZone(MEMORY[0x277CE5708]);
    v0[21] = 0;
    v34 = [v33 initWithMode:10 error:v0 + 21];
    v0[40] = v34;
    v35 = v0[21];
    if (v34)
    {
      v36 = v0[24];
      v37 = *(v36 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
      *(v36 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator) = v34;
      v38 = v34;
      v39 = v35;
      v40 = v38;

      v41 = *(v36 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType);
      v42 = [v40 offer];
      v43 = sub_264B40024();
      v45 = v44;

      v0[41] = v43;
      v0[42] = v45;
      v46 = swift_task_alloc();
      v0[43] = v46;
      *v46 = v0;
      v46[1] = sub_264A28544;

      return sub_264AEA118(v54, v53, v41, v43, v45);
    }

    else
    {
      v47 = v35;
      v48 = sub_264B3FF84();
      v0[45] = v48;

      swift_willThrow();
      v49 = sub_264B40944();
      v50 = sub_264B41494();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2649C6000, v49, v50, "failed to create negotiator for audio stream", v51, 2u);
        MEMORY[0x266749940](v51, -1, -1);
      }

      v52 = swift_task_alloc();
      v0[47] = v52;
      *v52 = v0;
      v52[1] = sub_264A28C64;

      return sub_264ADE41C(v48);
    }
  }
}

uint64_t sub_264A28544()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_264A287DC;
  }

  else
  {
    sub_2649DEF6C(*(v2 + 328), *(v2 + 336));
    v3 = sub_264A28694;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A28694()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 184);
  v7[3] = v3;
  v7[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264A287DC()
{
  v16 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = v0[44];
  sub_2649DEF6C(v0[41], v0[42]);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446210;
    v0[22] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to send negotiation offer for audio stream: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[48] = v12;
  *v12 = v0;
  v12[1] = sub_264A28ED4;
  v13 = v0[44];

  return sub_264ADE41C(v13);
}

uint64_t sub_264A289D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_264A29150;
  }

  else
  {
    v2 = sub_264A28B10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A28B10()
{
  *(v0[24] + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated) = 1;
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[23];
  v7[3] = v3;
  v7[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264A28C64()
{

  return MEMORY[0x2822009F8](sub_264A28D8C, 0, 0);
}

uint64_t sub_264A28D8C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 184);
  v7[3] = v3;
  v7[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264A28ED4()
{

  return MEMORY[0x2822009F8](sub_264A28FFC, 0, 0);
}

uint64_t sub_264A28FFC()
{
  v1 = *(v0 + 352);

  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 184);
  v8[3] = v4;
  v8[4] = sub_264A2DAB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(v3 + 32))(boxed_opaque_existential_1, v2, v4);
  swift_unknownObjectRelease();
  (*(v7 + 8))(v5, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264A29150(uint64_t a1)
{
  v3 = v1[33];
  v2 = v1[34];
  v5 = v1[31];
  v4 = v1[32];
  v6 = v1[29];
  v7 = v1[30];
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v1[1];

  return v8();
}

uint64_t sub_264A29280()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_264B41244();
  v1[7] = sub_264B41234();
  v4 = sub_264B411C4();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_264A29378, v4, v3);
}

uint64_t sub_264A29378()
{
  v46 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v45);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 254;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v45);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState];
  if (v14 == 4)
  {
    v29 = v13;
    v30 = sub_264B40944();
    v31 = sub_264B414B4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[2];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136446210;
      v35 = v32;
      v36 = [v35 description];
      v37 = sub_264B41044();
      v39 = v38;

      v40 = sub_2649CC004(v37, v39, &v45);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_2649C6000, v30, v31, "%{public}s is already invalidating, holding until complete", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x266749940](v34, -1, -1);
      MEMORY[0x266749940](v33, -1, -1);
    }

    v41 = v0[2];
    v0[12] = sub_264B41234();
    v42 = swift_task_alloc();
    v0[13] = v42;
    *(v42 + 16) = v41;
    v43 = swift_task_alloc();
    v0[14] = v43;
    *v43 = v0;
    v43[1] = sub_264A29AFC;

    return MEMORY[0x2822007B8]();
  }

  else if (v14 == 5)
  {

    v15 = v13;
    v16 = sub_264B40944();
    v17 = sub_264B414B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[2];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136446210;
      v21 = v18;
      v22 = [v21 description];
      v23 = sub_264B41044();
      v25 = v24;

      v26 = sub_2649CC004(v23, v25, &v45);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v16, v17, "%{public}s is already invalidated, bailing", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v27 = v0[1];

    return v27();
  }

  else
  {
    v13[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState] = 4;
    LOBYTE(v45) = v14;
    sub_264A24930(&v45);
    v44 = swift_task_alloc();
    v0[11] = v44;
    *v44 = v0;
    v44[1] = sub_264A29974;

    return sub_264A2A02C();
  }
}

uint64_t sub_264A29974()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_264A29A94, v3, v2);
}

uint64_t sub_264A29A94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A29AFC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_264A29C5C, v3, v2);
}

uint64_t sub_264A29C5C()
{
  v17 = v0;
  v1 = *(v0 + 16);

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_264B41044();
    v12 = v11;

    v13 = sub_2649CC004(v10, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s, existing invalidation complete, returning", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_264A29DF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - v7;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B40944();
  v11 = sub_264B414B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2649C6000, v10, v11, "Adding to tearing down continuations", v12, 2u);
    MEMORY[0x266749940](v12, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations;
  v14 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_2649D8028(0, v14[2] + 1, 1, v14);
    *(a2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_2649D8028((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v8, v4);
  *(a2 + v13) = v14;
  return result;
}

uint64_t sub_264A2A02C()
{
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600);
  v1[25] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v5 = sub_264B3FFD4();
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = sub_264B41244();
  v1[35] = sub_264B41234();
  v7 = sub_264B411C4();
  v1[36] = v7;
  v1[37] = v6;

  return MEMORY[0x2822009F8](sub_264A2A328, v7, v6);
}

uint64_t sub_264A2A328()
{
  v93 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState;
  if (*(v1 + v2) != 4)
  {
    return sub_264B41874();
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = sub_264B40964();
  *(v0 + 312) = __swift_project_value_buffer(v6, qword_27FFA71D0);
  v7 = sub_264B414B4();
  sub_264B3FF94();
  v8 = sub_264B3FFA4();
  v10 = v9;
  (*(v4 + 8))(v3, v5);

  v11 = sub_264B40944();

  if (os_log_type_enabled(v11, v7))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v92 = v13;
    *v12 = 136446722;
    v14 = sub_2649CC004(v8, v10, &v92);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2050;
    *(v12 + 14) = 285;
    *(v12 + 22) = 2082;
    *(v12 + 24) = sub_2649CC004(0x6E776F4472616574, 0xEA00000000002928, &v92);
    _os_log_impl(&dword_2649C6000, v11, v7, "%{public}s:%{public}ld %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 120);
  *(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated) = 0;
  v17 = *(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream);
  *(v0 + 320) = v17;
  if (v17)
  {
    v18 = *(v0 + 120);
    v19 = v17;
    v20 = v18;
    v21 = sub_264B40944();
    v22 = sub_264B414B4();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 120);
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 67240192;
      *(v25 + 4) = v24[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning];

      _os_log_impl(&dword_2649C6000, v21, v22, "Attempting to stop audio stream, isAudioStreamRunning == %{BOOL,public}d", v25, 8u);
      MEMORY[0x266749940](v25, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 120);
    *(v0 + 328) = sub_264B41234();
    v34 = swift_task_alloc();
    *(v0 + 336) = v34;
    *(v34 + 16) = v33;
    *(v34 + 24) = v19;
    v35 = swift_task_alloc();
    *(v0 + 344) = v35;
    *v35 = v0;
    v35[1] = sub_264A2AEE4;

    return MEMORY[0x2822007B8]();
  }

  v26 = *(v0 + 240);
  v27 = *(v0 + 208);
  v28 = *(v0 + 216);
  v29 = *(v0 + 120);
  v30 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v29 + v30, v26, &qword_27FF89858, &qword_264B485E8);
  v31 = (*(v28 + 48))(v26, 1, v27);
  v32 = *(v0 + 240);
  if (v31)
  {
    sub_2649D04D4(*(v0 + 240), &qword_27FF89858, &qword_264B485E8);
  }

  else
  {
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v38 = *(v0 + 208);
    (*(v37 + 16))(v36, *(v0 + 240), v38);
    sub_2649D04D4(v32, &qword_27FF89858, &qword_264B485E8);
    sub_264B412B4();
    (*(v37 + 8))(v36, v38);
  }

  v39 = *(v0 + 232);
  v40 = *(v0 + 120);
  (*(*(v0 + 216) + 56))(v39, 1, 1, *(v0 + 208));
  swift_beginAccess();
  sub_2649FECCC(v39, v29 + v30, &qword_27FF89858, &qword_264B485E8);
  swift_endAccess();
  v41 = v40 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {

    goto LABEL_22;
  }

  v43 = *(v0 + 120);
  if (*(v43 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError))
  {

    swift_unknownObjectRelease();
LABEL_22:
    v44 = *(v0 + 304);
    v45 = *(v0 + 192);
    v46 = *(v0 + 152);
    v47 = *(v0 + 160);
    v48 = *(v0 + 120);
    [*(v48 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
    v49 = *(v48 + v44);
    *(v48 + v44) = 5;
    v91 = v49;
    sub_264A24930(&v91);
    v50 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v48 + v50, v45, &qword_27FF89850, &qword_264B485E0);
    v51 = *(v47 + 48);
    if (v51(v45, 1, v46))
    {
      sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
      v52 = 1;
    }

    else
    {
      v53 = *(v0 + 192);
      v89 = *(v0 + 304);
      v55 = *(v0 + 160);
      v54 = *(v0 + 168);
      v56 = *(v0 + 152);
      v57 = *(v0 + 120);
      (*(v55 + 16))(v54, v53, v56);
      sub_2649D04D4(v53, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 384) = *(v57 + v89);
      sub_264B41374();
      (*(v55 + 8))(v54, v56);
      v52 = 0;
    }

    v58 = *(v0 + 200);
    v59 = *(v0 + 184);
    v60 = *(v0 + 152);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v61 - 8) + 56))(v58, v52, 1, v61);
    sub_2649D04D4(v58, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v48 + v50, v59, &qword_27FF89850, &qword_264B485E0);
    v62 = v51(v59, 1, v60);
    v63 = *(v0 + 184);
    if (v62)
    {
      sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v65 = *(v0 + 160);
      v64 = *(v0 + 168);
      v66 = *(v0 + 152);
      (*(v65 + 16))(v64, *(v0 + 184), v66);
      sub_2649D04D4(v63, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 112) = 0;
      sub_264B41384();
      (*(v65 + 8))(v64, v66);
    }

    v67 = *(v0 + 176);
    v68 = *(v0 + 120);
    (*(*(v0 + 160) + 56))(v67, 1, 1, *(v0 + 152));
    swift_beginAccess();
    sub_2649FECCC(v67, v48 + v50, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v69 = *(v68 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
    *(v68 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v70 = *(v69 + 16);
    if (v70)
    {

      v71 = sub_264B40944();
      v72 = sub_264B414B4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = *(v69 + 16);

        _os_log_impl(&dword_2649C6000, v71, v72, "Resuming %ld waiting invalidations", v73, 0xCu);
        MEMORY[0x266749940](v73, -1, -1);
      }

      else
      {
      }

      v74 = *(v0 + 136);
      v77 = *(v74 + 16);
      v75 = v74 + 16;
      v76 = v77;
      v78 = v69 + ((*(v75 + 64) + 32) & ~*(v75 + 64));
      v79 = *(v75 + 56);
      do
      {
        v80 = *(v0 + 144);
        v81 = *(v0 + 128);
        v76(v80, v78, v81);
        sub_264B411E4();
        (*(v75 - 8))(v80, v81);
        v78 += v79;
        --v70;
      }

      while (v70);
    }

    v82 = *(v0 + 8);

    return v82();
  }

  v83 = *(v41 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 385) = *(v43 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType);
  v85 = sub_264B41044();
  v87 = v86;
  *(v0 + 360) = v86;
  v90 = (*(v83 + 144) + **(v83 + 144));
  v88 = swift_task_alloc();
  *(v0 + 368) = v88;
  *v88 = v0;
  v88[1] = sub_264A2B87C;

  return v90(v0 + 385, v85, v87, ObjectType, v83);
}

uint64_t sub_264A2AEE4()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_264A2B044, v3, v2);
}

uint64_t sub_264A2B044(uint64_t a1)
{
  v70 = v1;
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Audio stream did stop cleanly", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v1 + 320);

  v6 = *(v1 + 240);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  v9 = *(v1 + 120);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v9 + v10, v6, &qword_27FF89858, &qword_264B485E8);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = *(v1 + 240);
  if (v11)
  {
    sub_2649D04D4(*(v1 + 240), &qword_27FF89858, &qword_264B485E8);
  }

  else
  {
    v14 = *(v1 + 216);
    v13 = *(v1 + 224);
    v15 = *(v1 + 208);
    (*(v14 + 16))(v13, *(v1 + 240), v15);
    sub_2649D04D4(v12, &qword_27FF89858, &qword_264B485E8);
    sub_264B412B4();
    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v1 + 232);
  v17 = *(v1 + 120);
  (*(*(v1 + 216) + 56))(v16, 1, 1, *(v1 + 208));
  swift_beginAccess();
  sub_2649FECCC(v16, v9 + v10, &qword_27FF89858, &qword_264B485E8);
  swift_endAccess();
  v18 = v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 352) = Strong;
  if (!Strong)
  {

    goto LABEL_10;
  }

  v20 = *(v1 + 120);
  if (*(v20 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError))
  {

    swift_unknownObjectRelease();
LABEL_10:
    v21 = *(v1 + 304);
    v22 = *(v1 + 192);
    v23 = *(v1 + 152);
    v24 = *(v1 + 160);
    v25 = *(v1 + 120);
    [*(v25 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
    v26 = *(v25 + v21);
    *(v25 + v21) = 5;
    v69 = v26;
    sub_264A24930(&v69);
    v27 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v25 + v27, v22, &qword_27FF89850, &qword_264B485E0);
    v28 = *(v24 + 48);
    if (v28(v22, 1, v23))
    {
      sub_2649D04D4(*(v1 + 192), &qword_27FF89850, &qword_264B485E0);
      v29 = 1;
    }

    else
    {
      v30 = *(v1 + 192);
      v67 = *(v1 + 304);
      v32 = *(v1 + 160);
      v31 = *(v1 + 168);
      v33 = *(v1 + 152);
      v34 = *(v1 + 120);
      (*(v32 + 16))(v31, v30, v33);
      sub_2649D04D4(v30, &qword_27FF89850, &qword_264B485E0);
      *(v1 + 384) = *(v34 + v67);
      sub_264B41374();
      (*(v32 + 8))(v31, v33);
      v29 = 0;
    }

    v35 = *(v1 + 200);
    v36 = *(v1 + 184);
    v37 = *(v1 + 152);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v38 - 8) + 56))(v35, v29, 1, v38);
    sub_2649D04D4(v35, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v25 + v27, v36, &qword_27FF89850, &qword_264B485E0);
    v39 = v28(v36, 1, v37);
    v40 = *(v1 + 184);
    if (v39)
    {
      sub_2649D04D4(*(v1 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v42 = *(v1 + 160);
      v41 = *(v1 + 168);
      v43 = *(v1 + 152);
      (*(v42 + 16))(v41, *(v1 + 184), v43);
      sub_2649D04D4(v40, &qword_27FF89850, &qword_264B485E0);
      *(v1 + 112) = 0;
      sub_264B41384();
      (*(v42 + 8))(v41, v43);
    }

    v44 = *(v1 + 176);
    v45 = *(v1 + 120);
    (*(*(v1 + 160) + 56))(v44, 1, 1, *(v1 + 152));
    swift_beginAccess();
    sub_2649FECCC(v44, v25 + v27, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v46 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
    *(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v47 = *(v46 + 16);
    if (v47)
    {

      v48 = sub_264B40944();
      v49 = sub_264B414B4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = *(v46 + 16);

        _os_log_impl(&dword_2649C6000, v48, v49, "Resuming %ld waiting invalidations", v50, 0xCu);
        MEMORY[0x266749940](v50, -1, -1);
      }

      else
      {
      }

      v51 = *(v1 + 136);
      v54 = *(v51 + 16);
      v52 = v51 + 16;
      v53 = v54;
      v55 = v46 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
      v56 = *(v52 + 56);
      do
      {
        v57 = *(v1 + 144);
        v58 = *(v1 + 128);
        v53(v57, v55, v58);
        sub_264B411E4();
        (*(v52 - 8))(v57, v58);
        v55 += v56;
        --v47;
      }

      while (v47);
    }

    v59 = *(v1 + 8);

    return v59();
  }

  v61 = *(v18 + 8);
  ObjectType = swift_getObjectType();
  *(v1 + 385) = *(v20 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamType);
  v63 = sub_264B41044();
  v65 = v64;
  *(v1 + 360) = v64;
  v68 = (*(v61 + 144) + **(v61 + 144));
  v66 = swift_task_alloc();
  *(v1 + 368) = v66;
  *v66 = v1;
  v66[1] = sub_264A2B87C;

  return v68(v1 + 385, v63, v65, ObjectType, v61);
}

uint64_t sub_264A2B87C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_264A2BE98;
  }

  else
  {

    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_264A2B998;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264A2B998()
{
  v43 = v0;

  swift_unknownObjectRelease();
  v1 = *(v0 + 304);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);
  [*(v5 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
  v6 = *(v5 + v1);
  *(v5 + v1) = 5;
  v42 = v6;
  sub_264A24930(&v42);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v5 + v7, v2, &qword_27FF89850, &qword_264B485E0);
  v8 = *(v4 + 48);
  if (v8(v2, 1, v3))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 192);
    v41 = *(v0 + 304);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    (*(v12 + 16))(v11, v10, v13);
    sub_2649D04D4(v10, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v14 + v41);
    sub_264B41374();
    (*(v12 + 8))(v11, v13);
    v9 = 0;
  }

  v15 = *(v0 + 200);
  v16 = *(v0 + 184);
  v17 = *(v0 + 152);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v18 - 8) + 56))(v15, v9, 1, v18);
  sub_2649D04D4(v15, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v5 + v7, v16, &qword_27FF89850, &qword_264B485E0);
  v19 = v8(v16, 1, v17);
  v20 = *(v0 + 184);
  if (v19)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 152);
    (*(v22 + 16))(v21, *(v0 + 184), v23);
    sub_2649D04D4(v20, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 176);
  v25 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v24, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v24, v5 + v7, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v26 = *(v25 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
  *(v25 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v27 = *(v26 + 16);
  if (v27)
  {

    v28 = sub_264B40944();
    v29 = sub_264B414B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v26 + 16);

      _os_log_impl(&dword_2649C6000, v28, v29, "Resuming %ld waiting invalidations", v30, 0xCu);
      MEMORY[0x266749940](v30, -1, -1);
    }

    else
    {
    }

    v31 = *(v0 + 136);
    v34 = *(v31 + 16);
    v32 = v31 + 16;
    v33 = v34;
    v35 = v26 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v36 = *(v32 + 56);
    do
    {
      v37 = *(v0 + 144);
      v38 = *(v0 + 128);
      v33(v37, v35, v38);
      sub_264B411E4();
      (*(v32 - 8))(v37, v38);
      v35 += v36;
      --v27;
    }

    while (v27);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_264A2BE98()
{
  v53 = v0;
  v1 = *(v0 + 376);

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 376);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to send stream invalidation message: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v11 = *(v0 + 304);
  v12 = *(v0 + 192);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v15 = *(v0 + 120);
  [*(v15 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream) invalidate];
  v16 = *(v15 + v11);
  *(v15 + v11) = 5;
  v52 = v16;
  sub_264A24930(&v52);
  v17 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v15 + v17, v12, &qword_27FF89850, &qword_264B485E0);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v19 = 1;
  }

  else
  {
    v20 = *(v0 + 192);
    v51 = *(v0 + 304);
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 152);
    v24 = *(v0 + 120);
    (*(v22 + 16))(v21, v20, v23);
    sub_2649D04D4(v20, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v24 + v51);
    sub_264B41374();
    (*(v22 + 8))(v21, v23);
    v19 = 0;
  }

  v25 = *(v0 + 200);
  v26 = *(v0 + 184);
  v27 = *(v0 + 152);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v28 - 8) + 56))(v25, v19, 1, v28);
  sub_2649D04D4(v25, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v15 + v17, v26, &qword_27FF89850, &qword_264B485E0);
  v29 = v18(v26, 1, v27);
  v30 = *(v0 + 184);
  if (v29)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 152);
    (*(v32 + 16))(v31, *(v0 + 184), v33);
    sub_2649D04D4(v30, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v32 + 8))(v31, v33);
  }

  v34 = *(v0 + 176);
  v35 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v34, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v34, v15 + v17, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v36 = *(v35 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations);
  *(v35 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v37 = *(v36 + 16);
  if (v37)
  {

    v38 = sub_264B40944();
    v39 = sub_264B414B4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = *(v36 + 16);

      _os_log_impl(&dword_2649C6000, v38, v39, "Resuming %ld waiting invalidations", v40, 0xCu);
      MEMORY[0x266749940](v40, -1, -1);
    }

    else
    {
    }

    v41 = *(v0 + 136);
    v44 = *(v41 + 16);
    v42 = v41 + 16;
    v43 = v44;
    v45 = v36 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    do
    {
      v47 = *(v0 + 144);
      v48 = *(v0 + 128);
      v43(v47, v45, v48);
      sub_264B411E4();
      (*(v42 - 8))(v47, v48);
      v45 += v46;
      --v37;
    }

    while (v37);
  }

  v49 = *(v0 + 8);

  return v49();
}

id sub_264A2C4A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamDidStopContinuation;
  swift_beginAccess();
  sub_2649FECCC(v9, a2 + v12, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  return [a3 stop];
}