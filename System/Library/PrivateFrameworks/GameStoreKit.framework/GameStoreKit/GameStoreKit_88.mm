Swift::Void __swiftcall VerticalFlexStackLayout.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  isa = with.super.isa;
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  v16 = *(v2 + 64);
  v17 = *(v2 + 80);
  v18 = *(v2 + 88);
  v19 = *(v17 + 16);
  v69 = v17;
  v68 = v13;
  v67 = v18;
  if (v19)
  {
    v63 = v16;
    v64 = v14;
    v65 = v12;
    v66 = v15;
    v20 = *v2;
    v71 = *(v2 + 8);
    *&v73[0] = MEMORY[0x277D84F90];
    sub_24F4587DC(0, v19, 0);
    v21 = *&v73[0];
    v22 = v17 + 32;
    v23 = *MEMORY[0x277D84680];
    v24 = (v8 + 104);
    v25 = (v8 + 8);
    do
    {
      sub_24E615E00(v22, v74);
      if (v71)
      {
        v70 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        sub_24F922C48();
        v27 = v26;
        v29 = v28;
        (*v24)(v10, v23, v7);
        v30 = v10;
        v31 = v27;
        v32 = v29;
      }

      else
      {
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v33 = CGRectGetWidth(v77);
        (*v24)(v10, v23, v7);
        v30 = v10;
        v31 = v33;
        v32 = v20;
      }

      v34 = CGSize.rounded(_:)(v30, v31, v32);
      v36 = v35;
      (*v25)(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v74);
      *&v73[0] = v21;
      v38 = *(v21 + 16);
      v37 = *(v21 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_24F4587DC((v37 > 1), v38 + 1, 1);
        v21 = *&v73[0];
      }

      *(v21 + 16) = v39;
      v40 = v21 + 16 * v38;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      v22 += 40;
      --v19;
    }

    while (v19);
    v41 = v69;
    v15 = v66;
    v12 = v65;
    LOBYTE(v14) = v64;
    v16 = v63;
    if (v39 <= 1)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v21 = MEMORY[0x277D84F90];
  v39 = *(MEMORY[0x277D84F90] + 16);
  if (v39)
  {
    v41 = v69;
    if (v39 <= 1)
    {
LABEL_10:
      v42 = 0;
      v43 = 0.0;
LABEL_16:
      v48 = v39 - v42;
      v49 = 16 * v42 + 40;
      do
      {
        v43 = v43 + *(v21 + v49);
        v49 += 16;
        --v48;
      }

      while (v48);
      goto LABEL_18;
    }

LABEL_13:
    v42 = v39 & 0xFFFFFFFFFFFFFFFELL;
    v44 = (v21 + 56);
    v43 = 0.0;
    v45 = v39 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v46 = *(v44 - 2);
      v47 = *v44;
      v44 += 4;
      v43 = v43 + v46 + v47;
      v45 -= 2;
    }

    while (v45);
    if (v39 == v42)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v43 = 0.0;
  v41 = v69;
LABEL_18:
  v50 = v15 + v16;
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  v51 = (CGRectGetHeight(v78) - v43 - v50) / v67;
  v52 = (v51 < v11) & ~v12 | v14;
  if (((v51 < v11) & ~v12) != 0)
  {
    v53 = v11;
  }

  else
  {
    v53 = v51;
  }

  if (v68 < v51)
  {
    v51 = v68;
  }

  if (v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = v51;
  }

  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  MinY = CGRectGetMinY(v79);
  v56 = *(v41 + 16);
  if (v56)
  {
    v57 = 0;
    v58 = v15 + MinY;
    v59 = v41 + 32;
    v60 = floor(v54);
    v61 = (v21 + 40);
    while (v57 < *(v41 + 16))
    {
      sub_24E615E00(v59, v73);
      if (v39 == v57)
      {
        __swift_destroy_boxed_opaque_existential_1(v73);
        goto LABEL_34;
      }

      if (v57 >= *(v21 + 16))
      {
        goto LABEL_37;
      }

      ++v57;
      v62 = *v61;
      sub_24E612C80(v73, v74);
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v80.origin.x = x;
      v80.origin.y = y;
      v80.size.width = width;
      v80.size.height = height;
      CGRectGetMinX(v80);
      v41 = v69;
      sub_24F922C38();
      __swift_destroy_boxed_opaque_existential_1(v74);
      v58 = v60 + v58 + v62;
      v59 += 40;
      v61 += 2;
      if (v56 == v57)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_34:
  }
}

uint64_t static VerticalFlexStackLayout.estimatedChildFitCount(in:metrics:)(uint64_t a1, double a2, double a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_24F92C228();
  if (v4)
  {
    return 0;
  }

  v8 = 0.0;
  if (!v6)
  {
    v8 = v5;
  }

  if (v3 >= v7)
  {
    return 0;
  }

  v9 = 0;
  v10 = v3;
  while (1)
  {
    result = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v10 = v3 + v8 + v10;
    ++v9;
    if (v10 >= v7)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_24EEF8D64@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EEF8D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEF8DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ImpressionMetrics.withParentId(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24F929598();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  if (a2)
  {
    v24[2] = a1;
    sub_24F9295B8();
    v17 = sub_24F929588();
    v24[0] = v18;
    v24[1] = v17;
    v25 = a3;
    v19 = *(v8 + 8);
    v19(v13, v7);
    sub_24F9295B8();
    sub_24F929558();
    v19(v10, v7);

    sub_24F929568();
    v20 = sub_24F929608();
    (*(*(v20 - 8) + 16))(v25, v3, v20);
    (*(v8 + 16))(v13, v16, v7);
    sub_24F9295C8();
    return (v19)(v16, v7);
  }

  else
  {
    v22 = sub_24F929608();
    v23 = *(*(v22 - 8) + 16);

    return v23(a3, v3, v22);
  }
}

void ImpressionMetrics.ID.withParentId(_:)(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_24F929588();
    sub_24F929558();

    sub_24F929568();
  }

  else
  {
    v5 = sub_24F929598();
    v6 = *(*(v5 - 8) + 16);

    v6(a3, v3, v5);
  }
}

uint64_t sub_24EEF91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EEF9278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CardSmallGameIcon(uint64_t a1)
{
  result = qword_27F233630;
  if (!qword_27F233630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EEF9380(uint64_t a1)
{
  result = sub_24F9289E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EEF9420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v41 = sub_24F924B38();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_24F921AF8();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = v2;
  sub_24F9289C8();
  v36 = *MEMORY[0x277CE0118];
  v13 = *(v3 + 104);
  v14 = v41;
  v13(v5);
  sub_24F9219A8();
  (*(v3 + 8))(v5, v14);
  sub_24EB98B30(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
  sub_24EB98B30(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
  v15 = v40;
  v16 = v37;
  sub_24F925ED8();
  (*(v6 + 8))(v8, v16);
  (*(v10 + 8))(v12, v9);
  v17 = sub_24F927618();
  v19 = v18;
  v20 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780) + 36));
  v21 = sub_24F924258();
  (v13)(v20 + *(v21 + 20), v36, v41);
  __asm { FMOV            V0.2D, #8.0 }

  *v20 = _Q0;
  v27 = (v38 + *(v39 + 24));
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v32 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36));
  *v32 = v31;
  v32[1] = v30;
  v32[2] = v28;
  v32[3] = v29;
  v33 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36));
  *v33 = v17;
  v33[1] = v19;
}

uint64_t sub_24EEF984C(unsigned __int8 *a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v87 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v85 - v6;
  v89 = sub_24F91F648();
  v8 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v17);
  v88 = &v85 - v18;
  sub_24F91F638();
  v19 = *a1;
  v20 = objc_opt_self();
  v21 = [v20 standardUserDefaults];
  v22 = v21;
  v85 = v3;
  v86 = v2;
  if (!v19)
  {
    v47 = sub_24F005EC8(v21);
    v24 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (!v24)
    {
      sub_24F007358(v48);

      if (qword_27F211430 != -1)
      {
        swift_once();
      }

      v49 = sub_24F9220D8();
      __swift_project_value_buffer(v49, qword_27F39E8E0);
      v50 = sub_24F9220B8();
      v51 = sub_24F92BD98();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        v53 = [v20 standardUserDefaults];
        v54 = sub_24F005EC8(v53);

        *(v52 + 4) = v54;
        _os_log_impl(&dword_24E5DD000, v50, v51, "Increased the Activity Sharing prompt present count to %ld", v52, 0xCu);
        MEMORY[0x2530542D0](v52, -1, -1);
      }

      v55 = [v20 standardUserDefaults];
      v56 = *(v8 + 16);
      v57 = v88;
      v35 = v89;
      v56(v7, v88, v89);
      (*(v8 + 56))(v7, 0, 1, v35);
      sub_24F007458(v7);

      v56(v16, v57, v35);
      v36 = sub_24F9220B8();
      v58 = sub_24F92BD98();
      if (!os_log_type_enabled(v36, v58))
      {

        v43 = *(v8 + 8);
        v43(v16, v35);
        goto LABEL_28;
      }

      v38 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v90 = v59;
      *v38 = 136315138;
      sub_24EEFA310(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v60 = sub_24F92CD88();
      v62 = v61;
      v43 = *(v8 + 8);
      v43(v16, v89);
      v63 = sub_24E7620D4(v60, v62, &v90);

      *(v38 + 4) = v63;
      _os_log_impl(&dword_24E5DD000, v36, v58, "The Activity Sharing prompt was last presented on %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      v64 = v59;
      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 == 1)
  {
    v23 = sub_24F0060A8(v21);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      sub_24F007740(v25);

      if (qword_27F211430 == -1)
      {
LABEL_5:
        v26 = sub_24F9220D8();
        __swift_project_value_buffer(v26, qword_27F39E8E0);
        v27 = sub_24F9220B8();
        v28 = sub_24F92BD98();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134217984;
          v30 = [v20 standardUserDefaults];
          v31 = sub_24F0060A8(v30);

          *(v29 + 4) = v31;
          _os_log_impl(&dword_24E5DD000, v27, v28, "Increased the Contacts Integration prompt present count to %ld", v29, 0xCu);
          MEMORY[0x2530542D0](v29, -1, -1);
        }

        v32 = [v20 standardUserDefaults];
        v33 = *(v8 + 16);
        v34 = v88;
        v35 = v89;
        v33(v7, v88, v89);
        (*(v8 + 56))(v7, 0, 1, v35);
        sub_24F007840(v7);

        v33(v13, v34, v35);
        v36 = sub_24F9220B8();
        v37 = sub_24F92BD98();
        if (!os_log_type_enabled(v36, v37))
        {

          v43 = *(v8 + 8);
          v43(v13, v35);
          goto LABEL_28;
        }

        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v90 = v39;
        *v38 = 136315138;
        sub_24EEFA310(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v40 = sub_24F92CD88();
        v42 = v41;
        v43 = *(v8 + 8);
        v43(v13, v89);
        v44 = sub_24E7620D4(v40, v42, &v90);

        *(v38 + 4) = v44;
        v45 = "The Contacts Integration prompt was last presented on %s";
        v46 = v37;
        goto LABEL_23;
      }

LABEL_32:
      swift_once();
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_30;
  }

  v65 = sub_24F0066F0(v21);
  v24 = __OFADD__(v65, 1);
  v66 = v65 + 1;
  if (v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_24F007B28(v66);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v67 = sub_24F9220D8();
  __swift_project_value_buffer(v67, qword_27F39E8E0);
  v68 = sub_24F9220B8();
  v69 = sub_24F92BD98();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    v71 = [v20 standardUserDefaults];
    v72 = sub_24F0066F0(v71);

    *(v70 + 4) = v72;
    _os_log_impl(&dword_24E5DD000, v68, v69, "Increased the Challenges Welcome prompt present count to %ld", v70, 0xCu);
    MEMORY[0x2530542D0](v70, -1, -1);
  }

  v73 = [v20 standardUserDefaults];
  v74 = *(v8 + 16);
  v75 = v88;
  v35 = v89;
  v74(v7, v88, v89);
  (*(v8 + 56))(v7, 0, 1, v35);
  sub_24F007C28(v7);

  v74(v10, v75, v35);
  v36 = sub_24F9220B8();
  v76 = sub_24F92BD98();
  if (!os_log_type_enabled(v36, v76))
  {

    v43 = *(v8 + 8);
    v43(v10, v35);
    goto LABEL_28;
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v90 = v39;
  *v38 = 136315138;
  sub_24EEFA310(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v77 = sub_24F92CD88();
  v79 = v78;
  v43 = *(v8 + 8);
  v43(v10, v89);
  v80 = sub_24E7620D4(v77, v79, &v90);

  *(v38 + 4) = v80;
  v45 = "The Challenges Welcome prompt was last presented on %s";
  v46 = v76;
LABEL_23:
  _os_log_impl(&dword_24E5DD000, v36, v46, v45, v38, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v64 = v39;
LABEL_24:
  MEMORY[0x2530542D0](v64, -1, -1);
  v81 = v38;
  v35 = v89;
  MEMORY[0x2530542D0](v81, -1, -1);

LABEL_28:
  v82 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v85 + 104))(v82, *MEMORY[0x277D21CA8], v86);
  v83 = sub_24F92A988();
  v43(v88, v35);
  return v83;
}

uint64_t sub_24EEFA310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

GameStoreKit::ChartOrCategoryBrickStyle_optional __swiftcall ChartOrCategoryBrickStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EEFA3E8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000033;
  if (*a1 == 1)
  {
    v3 = 0xE900000000000032;
  }

  else
  {
    v3 = 0xE900000000000033;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000031;
  }

  if (*a2 == 1)
  {
    v2 = 0xE900000000000032;
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE900000000000031;
  }

  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24F92CE08();
  }

  return v6 & 1;
}

unint64_t sub_24EEFA490()
{
  result = qword_27F2336C0;
  if (!qword_27F2336C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2336C0);
  }

  return result;
}

uint64_t sub_24EEFA4E4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEFA560(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EEFA5C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EEFA64C(void *a1@<X8>)
{
  v2 = 0xE900000000000031;
  v3 = 0xE900000000000033;
  if (*v1 == 1)
  {
    v3 = 0xE900000000000032;
  }

  if (*v1)
  {
    v2 = v3;
  }

  *a1 = 0x5F797469736E6564;
  a1[1] = v2;
}

uint64_t sub_24EEFA694(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_24F91EB08();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

double sub_24EEFA78C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return result;
}

uint64_t sub_24EEFA804()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EEFA878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

double sub_24EEFA8EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return result;
}

void sub_24EEFA964(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_24F923E98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) == 1)
  {
    v13 = 2;
LABEL_12:
    *a2 = v13;
    return;
  }

  v14 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v23 > 2u)
  {
LABEL_11:
    v13 = 4;
    goto LABEL_12;
  }

  v15 = v20;
  if (!v23)
  {

    if (v15 == 4)
    {
      *a2 = 4;
    }

    else
    {
      (*(v6 + 16))(v12, a1, v14);
      v17 = (*(v6 + 88))(v12, v14);
      if (v17 == *MEMORY[0x277CDF988])
      {
        *a2 = BYTE1(v15);
      }

      else if (v17 == *MEMORY[0x277CDF998])
      {
        *a2 = BYTE2(v15);
      }

      else if (v17 == *MEMORY[0x277CDF9A8])
      {
        *a2 = BYTE3(v15);
      }

      else if (v17 == *MEMORY[0x277CDF9B8])
      {
        *a2 = BYTE4(v15);
      }

      else if (v17 == *MEMORY[0x277CDF9D0])
      {
        *a2 = BYTE5(v15);
      }

      else
      {
        (*(v6 + 8))(v12, v14);
        *a2 = v15;
      }
    }

    return;
  }

  v16 = v21 | (v22 << 32);
  if (v23 != 1)
  {
    sub_24EEFE350(v19[0], v19[1], v19[2], v19[3], v20, v21 | (v22 << 32), 2);
    goto LABEL_11;
  }

  if (v16 == 4)
  {
    *a2 = 4;
  }

  else
  {
    (*(v6 + 16))(v8, a1, v14);
    v18 = (*(v6 + 88))(v8, v14);
    if (v18 == *MEMORY[0x277CDF988])
    {
      *a2 = BYTE1(v16);
    }

    else
    {
      if (v18 == *MEMORY[0x277CDF998])
      {
        v16 >>= 16;
      }

      else if (v18 == *MEMORY[0x277CDF9A8])
      {
        v16 = (v16 >> 24) & 0xFFFFFF;
      }

      else if (v18 == *MEMORY[0x277CDF9B8])
      {
        LOBYTE(v16) = BYTE4(v16);
      }

      else if (v18 == *MEMORY[0x277CDF9D0])
      {
        LOBYTE(v16) = BYTE5(v16);
      }

      else
      {
        (*(v6 + 8))(v8, v14);
      }

      *a2 = v16;
    }
  }
}

uint64_t sub_24EEFAD30(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v21 > 2u)
  {
    if (v21 == 3)
    {
      LOBYTE(v6) = v14;
    }

    else
    {
      LOBYTE(v6) = v15;
    }

    if (v21 == 3)
    {
      LOBYTE(v8) = BYTE1(v14);
    }

    else
    {
      LOBYTE(v8) = BYTE1(v15);
    }

    if (v21 == 3)
    {
      LOBYTE(v9) = BYTE2(v14);
    }

    else
    {
      LOBYTE(v9) = BYTE2(v15);
    }

    if (v21 == 3)
    {
      LOBYTE(v10) = BYTE3(v14);
    }

    else
    {
      LOBYTE(v10) = BYTE3(v15);
    }

    if (v21 == 3)
    {
      v11 = BYTE4(v14);
    }

    else
    {
      v11 = BYTE4(v15);
    }

    if (v21 == 3)
    {
      v12 = BYTE5(v14);
    }

    else
    {
      v12 = BYTE5(v15);
    }
  }

  else
  {
    v6 = v19 | (v20 << 32);
    if (v21 < 2u)
    {
      sub_24EEFE350(v14, v15, v16, v17, v18, v19 | (v20 << 32), v21);
      return sub_24F927618();
    }

    v8 = v6 >> 8;
    v9 = v6 >> 16;
    v10 = (v6 >> 24) & 0xFFFFFF;
    v11 = BYTE4(v6);
    v12 = BYTE5(v6);
  }

  (*(v3 + 16))(v5, a1, v2);
  v13 = (*(v3 + 88))(v5, v2);
  if (v13 != *MEMORY[0x277CDF988])
  {
    LOBYTE(v8) = v9;
    if (v13 != *MEMORY[0x277CDF998])
    {
      LOBYTE(v8) = v10;
      if (v13 != *MEMORY[0x277CDF9A8])
      {
        LOBYTE(v8) = v11;
        if (v13 != *MEMORY[0x277CDF9B8])
        {
          LOBYTE(v8) = v12;
          if (v13 != *MEMORY[0x277CDF9D0])
          {
            (*(v3 + 8))(v5, v2);
            LOBYTE(v8) = v6;
          }
        }
      }
    }
  }

  if (!v8)
  {
    return sub_24F927618();
  }

  if (v8 == 1)
  {
    return sub_24F927628();
  }

  return sub_24F927638();
}

double sub_24EEFAFD4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[15] = a1 ^ 1;

  sub_24F9230A8();
  v7 = sub_24F92B858();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_24F92B7F8();

  v8 = sub_24F92B7E8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  sub_24EA998B8(0, 0, v6, &unk_24F9AEED0, v9);

  return result;
}

uint64_t sub_24EEFB14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  sub_24F92B7F8();
  *(v4 + 104) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EEFB1E4, v6, v5);
}

uint64_t sub_24EEFB1E4()
{
  v1 = v0[12];

  v2 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  swift_beginAccess();
  sub_24EEFE158(v1 + v2, (v0 + 2));
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233740, &qword_24F9AEEE0);
    type metadata accessor for AppOfferButtonPresenter();
    if (swift_dynamicCast())
    {
      sub_24F0E3A20((v0 + 2));
      v3 = v0[2];
      if (v3)
      {
        v4 = &qword_27F2129B0;
        v5 = &unk_24F945320;
        v6 = (v0 + 3);
      }

      else
      {
        v4 = &qword_27F233748;
        v5 = &unk_24F9C8AE0;
        v6 = (v0 + 2);
      }

      sub_24E601704(v6, v4, v5);
      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = v3;

      sub_24F9230A8();

      goto LABEL_12;
    }
  }

  else
  {
    sub_24E601704((v0 + 2), &qword_27F233738, &qword_24F9AEED8);
  }

  sub_24EEFE158(v1 + v2, (v0 + 2));
  if (!v0[5])
  {
    sub_24E601704((v0 + 2), &qword_27F233738, &qword_24F9AEED8);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233740, &qword_24F9AEEE0);
  type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v7;

  sub_24F9230A8();

LABEL_12:

LABEL_13:
  v8 = v0[1];

  return v8();
}

uint64_t sub_24EEFB448(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int *a5, unsigned __int16 *a6)
{
  v6 = *(a6 + 2);
  v8 = *(a6 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v8, v6);
  return sub_24F9230A8();
}

uint64_t sub_24EEFB57C(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v3 = *(a3 + 1);
  v4 = *(a3 + 2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v3, v4);
  return sub_24F9230A8();
}

double sub_24EEFB67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v22 = a7;
      v23 = WORD2(a7);
      v17 = a8;
      v18 = BYTE2(a8);
      v19 = BYTE3(a8);
      v20 = BYTE4(a8);
      v21 = BYTE5(a8);
      sub_24EEFB79C((v13 & 0xC0) == 128, a4, a5, a6, &v22, &v17, v16);
    }
  }

  return result;
}

void sub_24EEFB79C(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int *a5, unsigned __int8 *a6, uint64_t a7)
{
  v117 = a7;
  v109 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233758, &unk_24F9AEEF0);
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v105 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v100 - v16;
  v18 = *(a5 + 2);
  v19 = *a5;
  LODWORD(v16) = a6[1];
  v110 = *a6;
  v111 = v16;
  LODWORD(v16) = a6[3];
  v112 = a6[2];
  v113 = v16;
  LODWORD(v16) = a6[5];
  v114 = a6[4];
  LODWORD(v115) = v16;
  v116 = a2;
  v20 = *(a2 + 16);
  type metadata accessor for OfferStateAction(0);
  v118 = a3;
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = *(v21 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction);
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(v135) = v20;
  if (sub_24EEFC5C8(&v135, a1 & 1, v22 != 0))
  {
    v108 = v22;
    v23 = v19 | (v18 << 32);
    if (v20 <= 1)
    {
      if (v20)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        *&v135 = v118;

        sub_24F9230A8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v135) = 1;

        sub_24F9230A8();

        return;
      }

LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
      sub_24F928F28();
      v109 = v133;
      v104 = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80, &unk_24F9AEF00);
      sub_24F928F28();
      v24 = type metadata accessor for Restrictions();
      sub_24F928F28();
      type metadata accessor for ASKBagContract(0);
      sub_24F928F28();
      if (qword_27F210B10 != -1)
      {
        swift_once();
      }

      sub_24F92A3B8();
      sub_24F92A408();

      (*(v15 + 8))(v17, v14);
      v25 = v135;
      v26 = v129[6];
      v27 = type metadata accessor for AppOfferButtonPresenter();
      v28 = swift_allocObject();
      v129[3] = v24;
      v129[4] = &protocol witness table for Restrictions;
      v129[0] = v26;
      *(v28 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v28 + 158) = 0;
      v29 = objc_opt_self();

      v30 = [v29 defaultCenter];
      *(v28 + 168) = 0u;
      v101 = v28 + 168;
      *(v28 + 184) = 0u;
      *(v28 + 280) = 0u;
      *(v28 + 296) = 0u;
      *(v28 + 312) = 0u;
      *(v28 + 328) = 0u;
      v31 = v137;
      *(v28 + 249) = v138;
      *(v28 + 233) = v31;
      v33 = v135;
      v32 = v136;
      *(v28 + 217) = v136;
      *(v28 + 160) = v30;
      *(v28 + 344) = 0;
      *(v28 + 352) = -256;
      *(v28 + 354) = 0;
      *(v28 + 200) = 0;
      *(v28 + 265) = v139;
      *(v28 + 201) = v33;
      *(v28 + 273) = 3;
      v34 = v116;
      *(v28 + 32) = v118;
      *(v28 + 40) = v34;
      v36 = v110;
      v35 = v111;
      *(v28 + 150) = v110;
      *(v28 + 151) = v35;
      v38 = v112;
      v37 = v113;
      *(v28 + 152) = v112;
      *(v28 + 153) = v37;
      v40 = v114;
      v39 = v115;
      *(v28 + 154) = v114;
      *(v28 + 155) = v39;
      v102 = v26;
      v103 = v27;
      if (v23 == 3)
      {
        v128[0] = v36;
        v128[1] = v35;
        v128[2] = v38;
        v128[3] = v37;
        v128[4] = v40;
        v128[5] = v39;
        sub_24E9536D8(v128, &v120, v32);
        LOBYTE(v23) = v120;
        v41.i32[0] = *(&v120 + 1);
        v42 = vmovl_u8(v41).u64[0];
        v43 = BYTE5(v120);
      }

      else
      {
        v53.i64[0] = 0xFFFFFFFFFFFFLL;
        v53.i64[1] = 0xFFFFFFFFFFFFLL;
        v54 = vandq_s8(vdupq_n_s64(v23), v53);
        v42 = vmovn_s32(vuzp1q_s32(vshlq_u64(v54, xmmword_24F99A2D0), vshlq_u64(v54, xmmword_24F99A2C0)));
        v43 = BYTE5(v23);
      }

      v55 = v104;
      *(v28 + 144) = v23;
      *(v28 + 145) = vuzp1_s8(v42, v42).u32[0];
      *(v28 + 149) = v43;
      *(v28 + 156) = 0;
      sub_24E615E00(v130, v28 + 48);
      sub_24E615E00(v129, v28 + 88);
      *(v28 + 159) = v25;
      *(v28 + 157) = 0;
      ObjectType = swift_getObjectType();
      v57 = *(v34 + 32);
      v120 = *(v34 + 24);
      v121 = v57;
      v58 = *(v55 + 56);
      swift_retain_n();

      v115 = ObjectType;
      v59 = v58(&v120, ObjectType, v55);
      v61 = v60;

      *(v28 + 128) = v59;
      *(v28 + 136) = v61;
      v62 = swift_getObjectType();
      v63 = swift_allocObject();
      swift_weakInit();
      v64 = *(v61 + 72);

      v64(v28, sub_24EEFE270, v63, v62, v61);
      v65 = v116;

      v66 = *(v65 + 64);
      if (!v66)
      {
        goto LABEL_34;
      }

      v120 = *(v65 + 56);
      v121 = v66;
      v58(&v120, v115, v104);
      v68 = v67;
      v69 = swift_getObjectType();
      (*(v68 + 16))(&v120, v69, v68);
      if (v126 >> 60)
      {
        if (v126 >> 60 == 8)
        {
          v70 = v125 | v127;
          v71 = v123 | v122 | v121;
          if (v126 == 0x8000000000000000 && !(v70 | v120 | v124 | v71))
          {
            LOBYTE(v72) = 0;
LABEL_33:
            *(v28 + 354) = v72;
            v73 = swift_allocObject();
            swift_weakInit();
            v74 = *(v68 + 72);

            v74(v28, sub_24EEFE348, v73, v69, v68);
            swift_unknownObjectRelease();

LABEL_34:
            v75 = *(v28 + 128);
            if (v75)
            {
              v76 = *(v28 + 136);
              v77 = swift_unknownObjectRetain();
              sub_24F0E06F0(v77, v76, 2);
              v78 = v131;
              v79 = v132;
              __swift_project_boxed_opaque_existential_1(v130, v131);
              (*(v79 + 16))(v78, v79);
              v80 = swift_allocObject();
              swift_weakInit();
              v81 = swift_allocObject();
              v81[2] = v80;
              v81[3] = v75;
              v81[4] = v76;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08, &qword_24F9971C8);
              sub_24EEFE2E4();
              swift_unknownObjectRetain();
              sub_24F9288B8();
              v82 = v105;
              sub_24F9288D8();
              swift_unknownObjectRelease();

              __swift_destroy_boxed_opaque_existential_1(&v120);
              (*(v106 + 8))(v82, v107);
            }

            v83 = v102;
            if ((*(v65 + 136) & 1) == 0)
            {
              v84 = *(v28 + 160);

              v85 = v84;
              v86 = sub_24F92B098();
              [v85 addObserver:v28 selector:sel_isEnabledDidChange_ name:v86 object:v83];
            }

            v87 = *(v28 + 160);
            v88 = *MEMORY[0x277CEC2F0];
            v89 = objc_opt_self();
            v90 = v87;
            v91 = [v89 mainQueue];
            v92 = swift_allocObject();
            swift_weakInit();
            v124 = sub_24EEFE278;
            v125 = v92;
            v120 = MEMORY[0x277D85DD0];
            v121 = 1107296256;
            v122 = sub_24EEFA694;
            v123 = &block_descriptor_90;
            v93 = _Block_copy(&v120);

            v94 = [v90 addObserverForName:v88 object:0 queue:v91 usingBlock:v93];
            _Block_release(v93);

            v123 = swift_getObjectType();

            swift_unknownObjectRelease();
            v120 = v94;
            __swift_destroy_boxed_opaque_existential_1(v129);
            v95 = v101;
            swift_beginAccess();
            sub_24E61DA68(&v120, v95, &qword_27F2129B0, &unk_24F945320);
            swift_endAccess();
            __swift_destroy_boxed_opaque_existential_1(v130);
            v52 = &protocol witness table for AppOfferButtonPresenter;
            v44 = v103;
            v141 = v103;
            v142 = &protocol witness table for AppOfferButtonPresenter;
            v140[0] = v28;
            swift_getKeyPath();
            swift_getKeyPath();
            v120 = v118;

            v51 = v119;

            sub_24F9230A8();
            v48 = v117;
            goto LABEL_39;
          }

          if (v126 == 0x8000000000000000 && v120 == 4)
          {
            v72 = v70 | v124 | v71;
            if (!v72)
            {
              goto LABEL_33;
            }
          }
        }

        sub_24E88D2AC(&v120);
        LOBYTE(v72) = 1;
        goto LABEL_33;
      }

      LOBYTE(v72) = v120 != 1;
      goto LABEL_33;
    }

    if (v20 == 2)
    {
      LOBYTE(v135) = v110;
      BYTE1(v135) = v111;
      BYTE2(v135) = v112;
      BYTE3(v135) = v113;
      BYTE4(v135) = v114;
      BYTE5(v135) = v115;
      WORD2(v120) = WORD2(v23);
      LODWORD(v120) = v23;
      v44 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();
      v45 = v109;

      v46 = v116;

      v47 = v118;

      v48 = v117;
    }

    else
    {
      if ((a1 & 1) != 0 || !v108)
      {
        goto LABEL_7;
      }

      LOBYTE(v135) = v110;
      BYTE1(v135) = v111;
      BYTE2(v135) = v112;
      BYTE3(v135) = v113;
      BYTE4(v135) = v114;
      BYTE5(v135) = v115;
      WORD2(v120) = WORD2(v23);
      LODWORD(v120) = v23;
      v44 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();
      v47 = v108;

      v46 = v116;

      v48 = v117;

      v45 = v109;
    }

    v49 = sub_24F26A038(v46, v47, v45, &v135, v48, &v120);

    v50 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v135 = v50;
    v51 = v119;

    sub_24F9230A8();
    v52 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
    v141 = v44;
    v142 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
    v140[0] = v49;
LABEL_39:
    __swift_mutable_project_boxed_opaque_existential_1(v140, v44);
    v96 = v52[2];
    v97 = swift_unknownObjectRetain();
    v96(v97, v98, &off_2861FC460);

    sub_24E615E00(v140, &v135);
    v99 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
    swift_beginAccess();
    sub_24E61DA68(&v135, v51 + v99, &qword_27F233738, &qword_24F9AEED8);
    swift_endAccess();
    *(v51 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v48;

    __swift_destroy_boxed_opaque_existential_1(v140);
    return;
  }
}

BOOL sub_24EEFC5C8(unsigned __int8 *a1, char a2, char a3)
{
  v6 = *a1;
  v7 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  swift_beginAccess();
  sub_24EEFE158(v3 + v7, &v12);
  if (!v13)
  {
    sub_24E601704(&v12, &qword_27F233738, &qword_24F9AEED8);
    return 1;
  }

  sub_24E612C80(&v12, v14);
  if (v6 > 1)
  {
    if (v6 == 2 || (a2 & 1) == 0 && (a3 & 1) != 0)
    {
      v8 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      goto LABEL_10;
    }

LABEL_4:
    v8 = type metadata accessor for AppOfferButtonPresenter();
LABEL_10:
    v10 = v8;
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v14);
    return DynamicType != v10;
  }

  if (!v6)
  {
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return 0;
}

uint64_t sub_24EEFC6D8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233768, &qword_24F9AEF10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60, &unk_24F9440B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58, &unk_24F9B2030);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter, &qword_27F233738, &qword_24F9AEED8);

  return v0;
}

uint64_t sub_24EEFC890()
{
  sub_24EEFC6D8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferButtonViewModel(uint64_t a1)
{
  result = qword_27F233708;
  if (!qword_27F233708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEFC93C(uint64_t a1)
{
  sub_24EEFCB00(319, &qword_27F233718, &type metadata for OfferButtonViewModel.State);
  if (v1 <= 0x3F)
  {
    sub_24EEFCB00(319, &qword_27F21F448, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_24EEFCB4C(319, &qword_27F233720, &qword_27F216DA8, &unk_24F944110);
      if (v3 <= 0x3F)
      {
        sub_24EEFCB4C(319, &qword_27F233728, &qword_27F216DB0, &qword_24F9B2040);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24EEFCB00(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24F9230B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24EEFCB4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24F9230B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy47_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24EEFCBD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 47))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 46);
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

uint64_t sub_24EEFCC18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 47) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 47) = 0;
    }

    if (a2)
    {
      *(result + 46) = -a2;
    }
  }

  return result;
}

unint64_t sub_24EEFCC8C()
{
  result = qword_27F233730;
  if (!qword_27F233730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233730);
  }

  return result;
}

uint64_t sub_24EEFCD34()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24EEFCD8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24EEFCE4C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

double sub_24EEFCEDC@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24EEFCF64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E969B2C(v2, v3, v4);

  return sub_24F9230A8();
}

BOOL sub_24EEFCFF8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 44);
  v9 = *(a1 + 40);
  v10 = v9 | (v8 << 32);
  v11 = *(a1 + 46);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 44);
  v18 = *(a2 + 40);
  v19 = v18 | (v17 << 32);
  v20 = *(a2 + 46);
  v78[0] = *a1;
  v78[1] = v3;
  v78[2] = v6;
  v78[3] = v5;
  v78[4] = v7;
  v80 = v8;
  v79 = v9;
  v81 = v11;
  v82 = v12;
  v83 = v13;
  v84 = v14;
  v85 = v15;
  v86 = v16;
  v88 = v17;
  v87 = v18;
  v89 = v20;
  if (v11 <= 1)
  {
    if (!v11)
    {
      if (v20)
      {
        v22 = v18 | (v17 << 32);
LABEL_33:

        v19 = v22;
        goto LABEL_34;
      }

      if (v4 != v12 || v3 != v13)
      {
        v70 = v7;
        v76 = v9 | (v8 << 32);
        v41 = v18 | (v17 << 32);
        v42 = sub_24F92CE08();
        v19 = v41;
        v7 = v70;
        v10 = v76;
        if ((v42 & 1) == 0)
        {
          v56 = v12;
          v57 = v13;
          v58 = v14;
          v59 = v15;
          goto LABEL_58;
        }
      }

      if (v5)
      {
        if (v15)
        {
          v71 = v7;
          v77 = v10;
          if (v6 == v14 && v5 == v15)
          {
            sub_24EEFE1C8(v12, v13, v6, v5, v16, v19, 0);
            v43 = v71;
            sub_24EEFE1C8(v4, v3, v6, v5, v71, v77, 0);
            sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
          }

          else
          {
            v63 = v19;
            v66 = sub_24F92CE08();
            sub_24EEFE1C8(v12, v13, v14, v15, v16, v63, 0);
            v43 = v71;
            sub_24EEFE1C8(v4, v3, v6, v5, v71, v77, 0);
            sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
            if ((v66 & 1) == 0)
            {
              return 0;
            }
          }

LABEL_60:
          v64 = v16;
          if (v43 != 4)
          {
            return v16 != 4 && ((v16 ^ v43) & 0xFFFFFFFFFFFFLL) == 0;
          }

          return v64 == 4;
        }

        v56 = v12;
        v57 = v13;
        v58 = v14;
        v59 = 0;
LABEL_58:
        v61 = v7;
        v62 = v10;
        sub_24EEFE1C8(v56, v57, v58, v59, v16, v19, 0);
        v35 = v4;
        v36 = v3;
        v37 = v6;
        v38 = v5;
        v39 = v61;
        v19 = v62;
        v40 = 0;
        goto LABEL_35;
      }

      v53 = v12;
      v54 = v14;
      v43 = v7;
      v55 = v10;
      sub_24EEFE1C8(v53, v13, v54, v15, v16, v19, 0);
      sub_24EEFE1C8(v4, v3, v6, 0, v43, v55, 0);

      sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
      if (!v15)
      {
        goto LABEL_60;
      }

LABEL_53:

      return 0;
    }

    if (v20 != 1)
    {
      v22 = v18 | (v17 << 32);
      goto LABEL_33;
    }

    if (v4 == v12 && v3 == v13 || (v69 = v7, v74 = v9 | (v8 << 32), v28 = v18 | (v17 << 32), v29 = sub_24F92CE08(), v19 = v28, v7 = v69, v10 = v74, (v29)) && *&v6 == *&v14)
    {
      if (!v7)
      {
        v60 = v14;
        v34 = v10;
        v32 = v19;
        sub_24EEFE1C8(v12, v13, v60, v15, v16, v19, 1);
        sub_24EEFE1C8(v4, v3, v6, v5, 0, v34, 1);

        sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
        if (*&v16 != 0.0)
        {
          goto LABEL_53;
        }

LABEL_66:
        v64 = v32;
        if (v34 != 4)
        {
          return v32 != 4 && (v32 & 0xFFFFFFFFFFFFLL) == (v34 & 0xFFFFFFFFFFFFLL);
        }

        return v64 == 4;
      }

      if (*&v16 != 0.0)
      {
        v75 = v10;
        if (v5 == v15 && v7 == v16)
        {
          v30 = v14;
          v31 = v7;
          v32 = v19;
          sub_24EEFE1C8(v12, v13, v30, v5, v7, v19, 1);
          v33 = v31;
          v34 = v75;
          sub_24EEFE1C8(v4, v3, v6, v5, v33, v75, 1);
          sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
        }

        else
        {
          v72 = v7;
          v32 = v19;
          v67 = sub_24F92CE08();
          sub_24EEFE1C8(v12, v13, v14, v15, v16, v32, 1);
          v34 = v75;
          sub_24EEFE1C8(v4, v3, v6, v5, v72, v75, 1);
          sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
          if ((v67 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_66;
      }

      v44 = v12;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      v48 = v7;
      v49 = 0;
    }

    else
    {
      v44 = v12;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      v48 = v7;
      v49 = v16;
    }

    v50 = v10;
    sub_24EEFE1C8(v44, v45, v46, v47, v49, v19, 1);
    v35 = v4;
    v36 = v3;
    v37 = v6;
    v38 = v5;
    v39 = v48;
    v19 = v50;
    v40 = 1;
    goto LABEL_35;
  }

  if (v11 == 2)
  {
    if (v20 == 2)
    {
      v68 = v7;
      v73 = v9 | (v8 << 32);
      if (v4 != v12 || v3 != v13)
      {
        v23 = v18 | (v17 << 32);
        v24 = sub_24F92CE08();
        v19 = v23;
        v7 = v68;
        if ((v24 & 1) == 0)
        {
          sub_24EEFE1C8(v12, v13, v14, v15, v16, v23, 2);
          v35 = v4;
          v36 = v3;
          v37 = v6;
          v38 = v5;
          v39 = v68;
          v19 = v73;
          v40 = 2;
          goto LABEL_35;
        }
      }

      v25 = *&v7;
      if (v6 == v14 && v5 == v15)
      {
        v26 = v19;
        sub_24EEFE1C8(v12, v13, v6, v5, v16, v19, 2);
        v27 = v73;
        sub_24EEFE1C8(v4, v3, v6, v5, v68, v73, 2);
        sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
        if (v25 != *&v16)
        {
          return 0;
        }
      }

      else
      {
        v51 = v19;
        v65 = sub_24F92CE08();
        v52 = v14;
        v26 = v51;
        sub_24EEFE1C8(v12, v13, v52, v15, v16, v51, 2);
        sub_24EEFE1C8(v4, v3, v6, v5, v68, v73, 2);
        sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
        result = 0;
        if ((v65 & 1) == 0)
        {
          return result;
        }

        v27 = v73;
        if (v25 != *&v16)
        {
          return result;
        }
      }

      return (v26 & 0xFFFFFFFFFFFFLL) == (v27 & 0xFFFFFFFFFFFFLL);
    }

    v22 = v18 | (v17 << 32);
    goto LABEL_33;
  }

  if (v11 == 3)
  {
    if (v20 == 3)
    {
      sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
      return ((v12 ^ v4) & 0xFFFFFFFFFFFFLL) == 0;
    }

    goto LABEL_34;
  }

  if (v20 != 4)
  {
LABEL_34:
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v20;
LABEL_35:
    sub_24EEFE1C8(v35, v36, v37, v38, v39, v19, v40);
    sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
    return 0;
  }

  sub_24E601704(v78, &qword_27F233750, &qword_24F9AEEE8);
  result = 0;
  if (*&v4 == *&v12 && ((v13 ^ v3) & 0xFFFFFFFFFFFFLL) == 0)
  {
    return HIWORD(v3) & 1 ^ ((v13 & 0x1000000000000) == 0);
  }

  return result;
}

uint64_t sub_24EEFD7F4(unsigned int *a1, unsigned __int8 *a2, double a3)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);

  sub_24F928EF8();

  if (v36)
  {
    v28 = v10;
    v29 = v11;
    v12 = v5;
    ObjectType = swift_getObjectType();
    v14 = *(v3 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties);
    v15 = *(v14 + 32);
    *&v32 = *(v14 + 24);
    *(&v32 + 1) = v15;
    v16 = v6;
    v17 = v9;
    v18 = *(v37 + 56);

    v18(&v32, ObjectType, v37);
    v9 = v17;
    v6 = v16;
    v20 = v19;
    swift_unknownObjectRelease();

    v21 = swift_getObjectType();
    v22 = *(v20 + 16);
    v23 = v20;
    v5 = v12;
    v10 = v28;
    v11 = v29;
    v22(v30, v21, v23);
    swift_unknownObjectRelease();
    v32 = v30[0];
    v33 = v30[1];
    v34 = v30[2];
    v35 = v31;
    v24 = v31;
    sub_24E88D2AC(&v32);
    v25 = (v24 >> 60 == 6) << 48;
  }

  else
  {
    v25 = 0;
  }

  v26 = v5 | (v6 << 32) | (v7 << 40) | v25;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v32 = a3;
  *(&v32 + 1) = v26;
  BYTE14(v34) = 4;

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v32 = v8 | (v9 << 8);
  *(&v32 + 1) = v10;
  *&v33 = v11;

  sub_24E9534EC(v10, v11);
  return sub_24F9230A8();
}

uint64_t sub_24EEFDA4C(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int *a5, unsigned __int16 *a6)
{
  v6 = *(a6 + 1);
  v7 = *(a6 + 2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v6, v7);
  return sub_24F9230A8();
}

uint64_t sub_24EEFDB78(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v3 = *(a3 + 1);
  v4 = *(a3 + 2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v3, v4);
  return sub_24F9230A8();
}

uint64_t sub_24EEFDC74(int *a1, unsigned __int8 *a2)
{
  v22 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v24 = *a2;
  v23 = a2[1];
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);

  sub_24F928F28();

  ObjectType = swift_getObjectType();
  v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties);
  v9 = *(v8 + 32);
  *&v30[0] = *(v8 + 24);
  *(&v30[0] + 1) = v9;
  v10 = *(v29 + 56);

  v10(v30, ObjectType, v29);
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = swift_getObjectType();
  (*(v12 + 16))(&v25, v13, v12);
  swift_unknownObjectRelease();
  v30[0] = v25;
  v30[1] = v26;
  v30[2] = v27;
  v30[3] = v28;
  if (v28 >> 60 == 4)
  {
    v14._object = 0x800000024FA62940;
    v14._countAndFlagsBits = 0xD000000000000018;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v16 = localizedString(_:comment:)(v14, v15);
    v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
    v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v16;
    *&v26 = v18;
    *(&v26 + 1) = v17;
    *&v27 = 0x4000000000000000;
    WORD6(v27) = ((v4 << 40) | (v3 << 32)) >> 32;
    DWORD2(v27) = v22;
    BYTE14(v27) = 2;
  }

  else
  {
    v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
    v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v25._countAndFlagsBits = v20;
    v25._object = v19;
    *&v27 = 0;
    v26 = 0x4000000000000000uLL;
    WORD6(v27) = 0;
    DWORD2(v27) = 4;
    BYTE14(v27) = 1;
  }

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();
  v25._countAndFlagsBits = v24 | (v23 << 8);
  v25._object = v5;
  *&v26 = v6;

  sub_24E9534EC(v5, v6);
  sub_24F9230A8();
  return sub_24E88D2AC(v30);
}

uint64_t sub_24EEFDF64(unsigned int *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v2, v3);
  return sub_24F9230A8();
}

uint64_t sub_24EEFE064()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EEFE0A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EEFB14C(a1, v4, v5, v6);
}

uint64_t sub_24EEFE158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233738, &qword_24F9AEED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_24EEFE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7 || a7 == 2 || a7 == 1)
  {
  }

  return result;
}

uint64_t sub_24EEFE238()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEFE298()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_24EEFE2E4()
{
  result = qword_27F233760;
  if (!qword_27F233760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE08, &qword_24F9971C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233760);
  }

  return result;
}

uint64_t sub_24EEFE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7 || a7 == 2 || a7 == 1)
  {
  }

  return result;
}

uint64_t sub_24EEFE3C0(void *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v361 = a5;
  v373 = a4;
  LODWORD(v375) = a3;
  v7 = sub_24F929598();
  MEMORY[0x28223BE20](v7 - 8);
  v372 = &v330 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F4A8();
  v358 = *(v9 - 8);
  v359 = v9;
  MEMORY[0x28223BE20](v9);
  v354 = &v330 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v355 = &v330 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v357 = &v330 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v367 = &v330 - v16;
  v17 = sub_24F9294C8();
  MEMORY[0x28223BE20](v17 - 8);
  v371 = &v330 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F928698();
  v369 = *(v19 - 8);
  v370 = v19;
  MEMORY[0x28223BE20](v19);
  v368 = &v330 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v21 - 8);
  v380 = &v330 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v384 = &v330 - v24;
  MEMORY[0x28223BE20](v25);
  *&v350 = &v330 - v26;
  v27 = sub_24F91F648();
  v28 = *(v27 - 8);
  v376 = v27;
  v377 = v28;
  MEMORY[0x28223BE20](v27);
  v347 = &v330 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F928AD8();
  v378 = *(v30 - 8);
  v379 = v30;
  MEMORY[0x28223BE20](v30);
  v365 = &v330 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v366 = &v330 - v33;
  MEMORY[0x28223BE20](v34);
  v349 = &v330 - v35;
  v36 = sub_24F928388();
  v37 = *(v36 - 8);
  v352 = v36;
  v353 = v37;
  MEMORY[0x28223BE20](v36);
  *(&v348 + 1) = &v330 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  *&v348 = &v330 - v40;
  MEMORY[0x28223BE20](v41);
  v351 = &v330 - v42;
  v43 = sub_24F92A538();
  v356 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = (&v330 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_24F91F6B8();
  v363 = *(v46 - 8);
  v364 = v46;
  MEMORY[0x28223BE20](v46);
  v362 = &v330 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v48 - 8);
  v374 = &v330 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v383 = &v330 - v51;
  MEMORY[0x28223BE20](v52);
  v360 = &v330 - v53;
  MEMORY[0x28223BE20](v54);
  v381 = &v330 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v330 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v330 - v60;
  v62 = sub_24F91EAA8();
  v63 = *(v62 - 8);
  *&v64 = MEMORY[0x28223BE20](v62).n128_u64[0];
  v66 = &v330 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = [a1 updateDictionary];
  if (!v67)
  {
    sub_24E601704(a2, &unk_27F22EC30, &qword_24F939880);

    return 0;
  }

  v385 = a1;
  v382 = a2;
  v68 = v67;
  v69 = sub_24F92AE38();

  *&v402 = 25705;
  *(&v402 + 1) = 0xE200000000000000;
  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v71 = sub_24E76D934(&v396), (v72 & 1) == 0))
  {

    sub_24E601704(v382, &unk_27F22EC30, &qword_24F939880);
    sub_24E6585F8(&v396);
    return 0;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v71, &v388);
  sub_24E6585F8(&v396);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24E601704(v382, &unk_27F22EC30, &qword_24F939880);

    return 0;
  }

  v344 = v402;
  *&v396 = 0x77654E7374616877;
  *(&v396 + 1) = 0xE800000000000000;
  v346 = *(&v402 + 1);

  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v73 = sub_24E76D934(&v402), (v74 & 1) == 0))
  {
    sub_24E6585F8(&v402);
    goto LABEL_14;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v73, v405);
  sub_24E6585F8(&v402);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v90 = 0;
    goto LABEL_15;
  }

  v342 = *(&v401 + 1);
  v395 = 0;
  v393 = 0u;
  v394 = 0u;
  v396 = v401;
  sub_24F91EA68();
  sub_24E600AEC();
  v343 = sub_24F92C538();
  v345 = v75;
  (*(v63 + 8))(v66, v62);

  LOBYTE(v386) = 0;

  Paragraph.Style.nqmlConfiguration.getter(&v388);
  v398 = v390;
  v399 = v391;
  v400 = v392;
  v396 = v388;
  v397 = v389;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
  v76 = swift_allocObject();
  v77 = MEMORY[0x277D74118];
  *(v76 + 16) = xmmword_24F93DE60;
  v78 = *v77;
  *(v76 + 32) = *v77;
  v79 = *(&v397 + 1);
  *(v76 + 64) = sub_24EF01BE0();
  *(v76 + 40) = v79;
  v80 = v78;
  v81 = v79;
  sub_24E608940(v76);
  swift_setDeallocating();
  sub_24E601704(v76 + 32, &qword_27F221890, &qword_24F93AD40);
  swift_deallocClassInstance();
  v82 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v83 = sub_24F92B098();

  type metadata accessor for Key(0);
  sub_24EADDED4();
  v84 = sub_24F92AE28();

  v85 = [v82 initWithString:v83 attributes:v84];

  sub_24E951D6C(&v396);

  v86 = sub_24F929608();
  (*(*(v86 - 8) + 56))(v61, 1, 1, v86);
  type metadata accessor for Paragraph(0);
  v87 = swift_allocObject();
  *(v87 + 24) = 0;
  *(v87 + 40) = 0;
  sub_24E60169C(&v393, &v388, &qword_27F235830, &qword_24F93B8C0);
  v345 = v87;
  if (*(&v389 + 1))
  {
    v88 = v389;
    *(v87 + 56) = v388;
    *(v87 + 72) = v88;
    *(v87 + 88) = v390;
  }

  else
  {
    v127 = v362;
    sub_24F91F6A8();
    v128 = sub_24F91F668();
    v130 = v129;
    (*(v363 + 8))(v127, v364);
    v386 = v128;
    v387 = v130;
    v87 = v345;
    sub_24F92C7F8();
    sub_24E601704(&v388, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(v61, v87 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  swift_beginAccess();
  v131 = byte_27F236A29;
  v343 = type metadata accessor for LanguageAwareString();
  v132 = objc_allocWithZone(v343);
  v133 = v85;
  v134 = sub_24EFF0E44(v133, 0, v131);

  v342 = v133;
  *(v345 + 16) = v134;
  v135 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v341 = [v135 length];
  v136 = [v135 mutableString];
  v137 = sub_24F92B098();
  v138 = sub_24F92B098();
  [v136 replaceOccurrencesOfString:v137 withString:v138 options:1024 range:{0, v341}];

  LOBYTE(v137) = byte_27F236A29;
  v139 = objc_allocWithZone(v343);
  v70 = sub_24EFF0E44(v135, 0, v137);

  v90 = v345;
  sub_24E601704(v61, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(&v393, &qword_27F235830, &qword_24F93B8C0);
  *(v90 + 32) = v70;
  *(v90 + 48) = 65540;

LABEL_15:
  v91 = MEMORY[0x277D84F70];
  *&v388 = 0xD000000000000014;
  *(&v388 + 1) = 0x800000024FA62960;
  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v92 = sub_24E76D934(&v396), (v93 & 1) == 0))
  {
    sub_24E6585F8(&v396);
    goto LABEL_20;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v92, &v388);
  sub_24E6585F8(&v396);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v94 = 0;
    goto LABEL_21;
  }

  v94 = v402;
LABEL_21:
  *&v388 = 0xD000000000000017;
  *(&v388 + 1) = 0x800000024FA62980;
  sub_24F92C7F8();
  v95 = *(v69 + 16);
  v345 = v90;
  if (v95 && (v70 = v69, v96 = sub_24E76D934(&v396), (v97 & 1) != 0))
  {
    sub_24E643A9C(*(v69 + 56) + 32 * v96, &v388);
    sub_24E6585F8(&v396);
    if (swift_dynamicCast())
    {
      v98 = v402;
      goto LABEL_27;
    }
  }

  else
  {
    sub_24E6585F8(&v396);
  }

  v98 = 0;
LABEL_27:
  if (!v94)
  {
    goto LABEL_46;
  }

  v70 = [objc_opt_self() mainBundle];
  v99 = [v70 bundleIdentifier];

  if (v99)
  {
    v100 = sub_24F92B0D8();
    v70 = v101;

    if (v100 == 0xD000000000000013 && 0x800000024FA59DD0 == v70)
    {

      v91 = MEMORY[0x277D84F70];
      goto LABEL_33;
    }

    v115 = sub_24F92CE08();

    v91 = MEMORY[0x277D84F70];
    if (((v115 | v98) & 1) == 0)
    {
LABEL_46:
      v338 = 0;
      goto LABEL_47;
    }
  }

  else if (!v98)
  {
    goto LABEL_46;
  }

LABEL_33:
  *&v402 = 0x777472416C61766FLL;
  *(&v402 + 1) = 0xEB000000006B726FLL;
  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v102 = sub_24E76D934(&v396), (v103 & 1) == 0))
  {
    sub_24E6585F8(&v396);
    goto LABEL_44;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v102, &v388);
  sub_24E6585F8(&v396);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v70 = v402;
  sub_24E76C374(7107189, 0xE300000000000000, v402, &v396);
  if (!*(&v397 + 1))
  {
    goto LABEL_217;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_221;
  }

  v104 = v388;
  sub_24E76C374(0x6874646977, 0xE500000000000000, v70, &v396);
  if (!*(&v397 + 1))
  {

    goto LABEL_217;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_221;
  }

  v105 = v388;
  sub_24E76C374(0x746867696568, 0xE600000000000000, v70, &v396);

  if (!*(&v397 + 1))
  {
    goto LABEL_217;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_221:

    goto LABEL_44;
  }

  v106 = v388;
  v107 = sub_24F929608();
  v108 = *(*(v107 - 8) + 56);
  v338 = 1;
  v108(v58, 1, 1, v107);
  type metadata accessor for Artwork(0);
  v109 = swift_allocObject();
  *(v109 + 152) = 0u;
  *(v109 + 168) = 0u;
  *(v109 + 184) = 0;
  v343 = v104;
  v110 = v362;
  sub_24F91F6A8();
  v111 = sub_24F91F668();
  v113 = v112;
  (*(v363 + 8))(v110, v364);
  *&v396 = v111;
  *(&v396 + 1) = v113;
  sub_24F92C7F8();
  sub_24E60169C(v58, v109 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v109 + 16) = v343;
  *(v109 + 24) = *(&v104 + 1);
  *(v109 + 32) = v105;
  *(v109 + 40) = v106;
  *(v109 + 48) = 0;
  *(v109 + 56) = 0;
  *(v109 + 72) = 25186;
  *(v109 + 80) = 0xE200000000000000;
  v114 = 5;
LABEL_60:
  *(v109 + 64) = v114;
  *(v109 + 104) = MEMORY[0x277D84F90];
  *&v396 = 25186;
  *(&v396 + 1) = 0xE200000000000000;
  v70 = Artwork.Crop.preferredContentMode.getter();
  v91 = MEMORY[0x277D84F70];
  sub_24E601704(v58, &qword_27F213E68, &unk_24F93BC80);
  *(v109 + 88) = v70;
  v341 = v109;
  *(v109 + 96) = 3;
  while (1)
  {
    *&v402 = 0xD000000000000010;
    *(&v402 + 1) = 0x800000024FA629A0;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v140 = sub_24E76D934(&v396), (v141 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v140, &v388);
    }

    else
    {
      v388 = 0u;
      v389 = 0u;
    }

    sub_24E6585F8(&v396);
    if (*(&v389 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
      if (swift_dynamicCast())
      {
        v91 = v402;
        if (*(v402 + 16))
        {
          v142 = [objc_opt_self() thinnedAppVariantId];
          v143 = sub_24F92B0D8();
          v145 = v144;

          *&v396 = v143;
          *(&v396 + 1) = v145;
          *&v388 = 32;
          *(&v388 + 1) = 0xE100000000000000;
          sub_24E600AEC();
          v146 = sub_24F92C4E8();

          sub_24F92A528();
          v70 = sub_24F92A518();
          v148 = v147;
          (*(v356 + 8))(v45, v43);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_78;
          }

          goto LABEL_229;
        }

        v91 = MEMORY[0x277D84F70];
      }
    }

    else
    {
      sub_24E601704(&v388, &qword_27F2129B0, &unk_24F945320);
    }

    *&v402 = 0x657A6953656C6966;
    *(&v402 + 1) = 0xE800000000000000;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v159 = sub_24E76D934(&v396), (v160 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v159, &v388);
    }

    else
    {
      v388 = 0u;
      v389 = 0u;
    }

    sub_24E6585F8(&v396);
    if (!*(&v389 + 1))
    {
      sub_24E601704(&v388, &qword_27F2129B0, &unk_24F945320);
LABEL_101:
      v340 = 0;
      v339 = 1;
      goto LABEL_102;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_101;
    }

    v339 = 0;
    v340 = v402;
LABEL_102:
    *&v388 = 1701667182;
    *(&v388 + 1) = 0xE400000000000000;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v161 = sub_24E76D934(&v396), (v162 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v161, &v388);
    }

    else
    {
      v388 = 0u;
      v389 = 0u;
    }

    sub_24E6585F8(&v396);
    if (*(&v389 + 1))
    {
      v163 = swift_dynamicCast();
      if (v163)
      {
        v164 = v402;
      }

      else
      {
        v164 = 0;
      }

      if (v163)
      {
        v165 = *(&v402 + 1);
      }

      else
      {
        v165 = 0;
      }

      v342 = v164;
      v343 = v165;
    }

    else
    {
      sub_24E601704(&v388, &qword_27F2129B0, &unk_24F945320);
      v342 = 0;
      v343 = 0;
    }

    *&v402 = 0x73726566666FLL;
    *(&v402 + 1) = 0xE600000000000000;
    sub_24F92C7F8();
    sub_24E76C3D8(&v396, v69, &v388);
    sub_24E6585F8(&v396);
    if (!*(&v389 + 1))
    {
      goto LABEL_142;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_146;
    }

    v166 = v402;
    v148 = *(v402 + 16);
    if (!v148)
    {
      break;
    }

    v167 = 0;
    v146 = 0x657461647075;
    while (v167 < *(v166 + 16))
    {
      v168 = *(v166 + 8 * v167 + 32);
      if (!*(v168 + 16))
      {
        goto LABEL_227;
      }

      v70 = v168;
      v169 = sub_24E76D644(1701869940, 0xE400000000000000);
      if ((v170 & 1) == 0)
      {
        goto LABEL_228;
      }

      sub_24E643A9C(*(v168 + 56) + 32 * v169, &v388);
      sub_24E612B0C(&v388, &v396);
      swift_dynamicCast();
      v70 = *(&v402 + 1);
      if (v402 == __PAIR128__(0xE600000000000000, 0x657461647075))
      {

LABEL_127:

        goto LABEL_128;
      }

      v171 = sub_24F92CE08();

      if (v171)
      {
        goto LABEL_127;
      }

      ++v167;

      v91 = MEMORY[0x277D84F70];
      if (v148 == v167)
      {
        goto LABEL_125;
      }
    }

    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    v146 = sub_24E615CF4(0, *(v146 + 16) + 1, 1, v146);
LABEL_78:
    v150 = *(v146 + 16);
    v149 = *(v146 + 24);
    v151 = v149 >> 1;
    v152 = v150 + 1;
    if (v149 >> 1 <= v150)
    {
      v146 = sub_24E615CF4((v149 > 1), v150 + 1, 1, v146);
      v149 = *(v146 + 24);
      v151 = v149 >> 1;
    }

    *(v146 + 16) = v152;
    v153 = v146 + 16 * v150;
    *(v153 + 32) = v70;
    *(v153 + 40) = v148;
    v43 = v150 + 2;
    if (v151 < v43)
    {
      v146 = sub_24E615CF4((v149 > 1), v43, 1, v146);
    }

    v58 = 0;
    *(v146 + 16) = v43;
    v154 = v146 + 16 * v152;
    *(v154 + 32) = 0x6173726576696E75;
    *(v154 + 40) = 0xE90000000000006CLL;
    v45 = (v146 + 40);
    while (v58 < *(v146 + 16))
    {
      if (*(v91 + 16))
      {
        v155 = *(v45 - 1);
        v156 = *v45;

        v70 = sub_24E76D644(v155, v156);
        v158 = v157;

        if (v158)
        {
          sub_24E643A9C(*(v91 + 56) + 32 * v70, &v396);
          if (swift_dynamicCast())
          {

            v339 = 0;
            v340 = v388;
LABEL_91:
            v91 = MEMORY[0x277D84F70];
            goto LABEL_102;
          }
        }
      }

      ++v58;
      v45 += 2;
      if (v43 == v58)
      {

        v340 = 0;
        v339 = 1;
        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_217:

    sub_24E601704(&v396, &qword_27F2129B0, &unk_24F945320);
LABEL_44:
    v338 = 1;
LABEL_47:
    *&v402 = 0x6B726F77747261;
    *(&v402 + 1) = 0xE700000000000000;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v116 = sub_24E76D934(&v396), (v117 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v116, &v388);
    }

    else
    {
      v388 = 0u;
      v389 = 0u;
    }

    sub_24E6585F8(&v396);
    if (!*(&v389 + 1))
    {
      v126 = &v388;
      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_69;
    }

    v70 = v402;
    sub_24E76C374(7107189, 0xE300000000000000, v402, &v396);
    if (!*(&v397 + 1))
    {
      goto LABEL_65;
    }

    if (swift_dynamicCast())
    {
      v118 = v388;
      sub_24E76C374(0x6874646977, 0xE500000000000000, v70, &v396);
      if (*(&v397 + 1))
      {
        if (swift_dynamicCast())
        {
          v119 = v388;
          sub_24E76C374(0x746867696568, 0xE600000000000000, v70, &v396);

          if (!*(&v397 + 1))
          {
            goto LABEL_65;
          }

          if (swift_dynamicCast())
          {
            v120 = v388;
            v121 = sub_24F929608();
            (*(*(v121 - 8) + 56))(v58, 1, 1, v121);
            type metadata accessor for Artwork(0);
            v109 = swift_allocObject();
            *(v109 + 152) = 0u;
            *(v109 + 168) = 0u;
            *(v109 + 184) = 0;
            v343 = v118;
            v122 = v362;
            sub_24F91F6A8();
            v123 = sub_24F91F668();
            v125 = v124;
            (*(v363 + 8))(v122, v364);
            *&v396 = v123;
            *(&v396 + 1) = v125;
            sub_24F92C7F8();
            sub_24E60169C(v58, v109 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
            *(v109 + 16) = v343;
            *(v109 + 24) = *(&v118 + 1);
            *(v109 + 32) = v119;
            *(v109 + 40) = v120;
            *(v109 + 48) = 0;
            *(v109 + 56) = 0;
            *(v109 + 72) = 25186;
            *(v109 + 80) = 0xE200000000000000;
            v114 = 1;
            goto LABEL_60;
          }
        }

        else
        {
        }

        goto LABEL_68;
      }

LABEL_65:

      v126 = &v396;
LABEL_66:
      sub_24E601704(v126, &qword_27F2129B0, &unk_24F945320);
      goto LABEL_69;
    }

LABEL_68:

LABEL_69:
    v341 = 0;
  }

LABEL_125:

  v168 = 0;
LABEL_128:
  *&v402 = 0x614E747369747261;
  *(&v402 + 1) = 0xEA0000000000656DLL;
  sub_24F92C7F8();
  sub_24E76C3D8(&v396, v69, &v388);
  sub_24E6585F8(&v396);
  if (*(&v389 + 1))
  {
    if (swift_dynamicCast())
    {
      v172 = *(&v402 + 1);
      v173 = v402;
      goto LABEL_133;
    }
  }

  else
  {
    sub_24E601704(&v388, &qword_27F2129B0, &unk_24F945320);
  }

  v173 = 0;
  v172 = 0xE000000000000000;
LABEL_133:
  if (!v168)
  {
    goto LABEL_145;
  }

  *&v402 = 1701667182;
  *(&v402 + 1) = 0xE400000000000000;
  sub_24F92C7F8();
  sub_24E76C3D8(&v396, v69, &v388);
  sub_24E6585F8(&v396);
  if (!*(&v389 + 1))
  {
LABEL_141:

LABEL_142:
    sub_24E601704(&v388, &qword_27F2129B0, &unk_24F945320);
LABEL_146:
    v351 = 0;
    v352 = 0;
    v349 = 0;
    v356 = 0;
    v205 = 0;
    v206 = 0;
    goto LABEL_147;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_144:

LABEL_145:

    goto LABEL_146;
  }

  v174 = v402;
  *&v402 = 0x6449656C646E7562;
  *(&v402 + 1) = 0xE800000000000000;
  sub_24F92C7F8();
  sub_24E76C3D8(&v396, v69, &v388);
  sub_24E6585F8(&v396);
  if (!*(&v389 + 1))
  {

    goto LABEL_141;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_144;
  }

  v332 = *(&v402 + 1);
  v337 = v402;
  *&v388 = 0xD000000000000016;
  *(&v388 + 1) = 0x800000024FA629E0;
  sub_24F92C7F8();
  sub_24E76C3D8(&v396, v69, &v388);
  sub_24E6585F8(&v396);
  sub_24F928378();
  v175 = v348;
  sub_24F928398();
  v356 = v174;
  v176 = *(&v348 + 1);
  sub_24F928398();
  v331 = *(&v174 + 1);
  v178 = v353 + 8;
  v177 = *(v353 + 8);
  v179 = v175;
  v180 = v352;
  v177(v179, v352);
  v336 = sub_24F928258();
  v335 = v181;
  v353 = v178;
  *(&v348 + 1) = v177;
  v177(v176, v180);
  v182._countAndFlagsBits = 0xD000000000000018;
  v182._object = 0x800000024FA5BAA0;
  v183._countAndFlagsBits = 0;
  v183._object = 0xE000000000000000;
  v184 = localizedString(_:comment:)(v182, v183);
  object = v184._object;
  countAndFlagsBits = v184._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_24F93FC20;
  *(v185 + 32) = 0x656D614E707061;
  v186 = v356;
  *(v185 + 40) = 0xE700000000000000;
  *(v185 + 48) = v186;
  *(v185 + 56) = v331;
  v187 = MEMORY[0x277D837D0];
  *(v185 + 72) = MEMORY[0x277D837D0];
  *(v185 + 80) = 0x726F646E6576;
  *(v185 + 88) = 0xE600000000000000;
  *(v185 + 96) = v173;
  *(v185 + 104) = v172;
  *(v185 + 120) = v187;
  *(v185 + 128) = 0x6449656C646E7562;
  v188 = v337;
  *(v185 + 136) = 0xE800000000000000;
  *(v185 + 144) = v188;
  v189 = v332;
  *(v185 + 152) = v332;
  *(v185 + 168) = v187;
  *(v185 + 176) = 0x6574616470557369;
  *(v185 + 184) = 0xE800000000000000;
  *(v185 + 216) = MEMORY[0x277D839B0];
  *(v185 + 192) = 1;
  v190 = v346;

  v191 = sub_24E608448(v185);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  *(&v403 + 1) = v348;
  *&v402 = v191;
  v192 = v349;
  sub_24F928A98();
  type metadata accessor for OfferAction(0);
  v193 = swift_allocObject();
  v194 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v194 = v344;
  v194[1] = v190;
  sub_24E643A9C(&v402, v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v195 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v195 = 0;
  v195[1] = 0;
  v196 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v196 = v188;
  v196[1] = v189;
  v197 = v189;
  v198 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v198 = 0;
  v198[1] = 0;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = 0;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = 0;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = 2;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = 0;
  *&v398 = 0;
  v396 = 0u;
  v397 = 0u;
  v199 = v378;
  (*(v378 + 16))(v193 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v192, v379);
  v200 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v201 = sub_24F929608();
  (*(*(v201 - 8) + 56))(v193 + v200, 1, 1, v201);
  v202 = (v193 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v202 = 0u;
  v202[1] = 0u;
  v356 = v193;
  v203 = v193 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(&v396, &v388, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v389 + 1))
  {
    v204 = v389;
    *v203 = v388;
    *(v203 + 16) = v204;
    *(v203 + 32) = v390;
  }

  else
  {

    v300 = v362;
    sub_24F91F6A8();
    v301 = sub_24F91F668();
    v303 = v302;
    (*(v363 + 8))(v300, v364);
    *&v393 = v301;
    *(&v393 + 1) = v303;
    v199 = v378;
    sub_24F92C7F8();
    sub_24E601704(&v388, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v396, &qword_27F235830, &qword_24F93B8C0);
  (*(v199 + 8))(v192, v379);
  __swift_destroy_boxed_opaque_existential_1(&v402);
  v304 = v356;
  v305 = object;
  *(v356 + 16) = countAndFlagsBits;
  v304[3] = v305;
  v304[4] = 0;
  v304[5] = 0;
  if ([v385 isArcade])
  {
    v306 = 3;
  }

  else
  {
    v306 = 0;
  }

  v307 = v346;

  v308 = MEMORY[0x277D84F90];
  v309 = sub_24E60C36C(MEMORY[0x277D84F90]);
  v310 = sub_24E60C36C(v308);
  v311 = sub_24E60C36C(v308);
  type metadata accessor for OfferDisplayProperties();
  v312 = swift_allocObject();
  *(v312 + 16) = v306;
  *(v312 + 24) = v344;
  *(v312 + 32) = v307;
  v313 = v336;
  *(v312 + 40) = v337;
  *(v312 + 48) = v197;
  *(v312 + 56) = 0;
  *(v312 + 64) = 0;
  *(v312 + 72) = v309;
  *(v312 + 80) = v310;
  *(v312 + 88) = v311;
  *(v312 + 96) = 0;
  *(v312 + 104) = 0;
  *(v312 + 112) = 0;
  *(v312 + 119) = 0;
  *(v312 + 128) = v313;
  *(v312 + 136) = v335 & 1;
  *(v312 + 240) = 0;
  *(v312 + 144) = 0u;
  *(v312 + 160) = 0u;
  *(v312 + 176) = 0u;
  *(v312 + 192) = 0u;
  *(v312 + 208) = 0;
  *(v312 + 216) = 0;
  *(v312 + 224) = 0;
  v349 = v312;
  *(v312 + 232) = 0;
  v314 = v350;
  sub_24E60169C(v382, v350, &unk_27F22EC30, &qword_24F939880);
  v315 = v376;
  v316 = v377;
  if ((*(v377 + 48))(v314, 1, v376) == 1)
  {
    sub_24E601704(v314, &unk_27F22EC30, &qword_24F939880);
    goto LABEL_197;
  }

  v317 = v347;
  v318.n128_f64[0] = (*(v316 + 32))(v347, v314, v315);
  v205 = sub_24EE59294(v317, v318);
  v206 = v319;
  (*(v316 + 8))(v317, v315);
  if (!v206)
  {
LABEL_197:
    sub_24E76C374(0x6E6F6973726576, 0xE700000000000000, v168, &v396);
    if (!*(&v397 + 1))
    {
      goto LABEL_202;
    }

    if (swift_dynamicCast())
    {
      sub_24E76C374(0x79616C70736964, 0xE700000000000000, v388, &v396);

      if (*(&v397 + 1))
      {
        v320 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v322 = *(&v388 + 1);
          v321 = v388;
          v323._countAndFlagsBits = 0x5F53455441445055;
          v323._object = 0xEF4E4F4953524556;
          v324._countAndFlagsBits = 0;
          v324._object = 0xE000000000000000;
          localizedString(_:comment:)(v323, v324);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
          v325 = swift_allocObject();
          *(v325 + 16) = xmmword_24F93DE60;
          *(v325 + 56) = v320;
          *(v325 + 64) = sub_24E90A06C();
          *(v325 + 32) = v321;
          *(v325 + 40) = v322;
          v205 = sub_24F92B118();
          v206 = v326;
        }

        else
        {
          v205 = 0;
          v206 = 0;
        }

        goto LABEL_204;
      }

LABEL_202:
      sub_24E601704(&v396, &qword_27F2129B0, &unk_24F945320);
    }

    v205 = 0;
    v206 = 0;
  }

LABEL_204:
  sub_24E76C374(0x6E6F6973726576, 0xE700000000000000, v168, &v396);

  if (!*(&v397 + 1))
  {
    (*(&v348 + 1))(v351, v352);
    goto LABEL_215;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(&v348 + 1))(v351, v352);
    goto LABEL_219;
  }

  sub_24E76C374(0x79616C70736964, 0xE700000000000000, v388, &v396);

  (*(&v348 + 1))(v351, v352);
  if (!*(&v397 + 1))
  {
LABEL_215:
    sub_24E601704(&v396, &qword_27F2129B0, &unk_24F945320);
LABEL_219:
    v351 = 0;
    v352 = 0;
    goto LABEL_147;
  }

  v327 = swift_dynamicCast();
  if (v327)
  {
    v328 = v388;
  }

  else
  {
    v328 = 0;
  }

  if (v327)
  {
    v329 = *(&v388 + 1);
  }

  else
  {
    v329 = 0;
  }

  v351 = v329;
  v352 = v328;
LABEL_147:
  v207 = v375;
  v353 = v206;
  v375 = v205;
  if (v207)
  {
    *&v402 = 7107189;
    *(&v402 + 1) = 0xE300000000000000;
    v208 = MEMORY[0x277D837D0];
    sub_24F92C7F8();
    sub_24E76C3D8(&v396, v69, &v388);
    sub_24E6585F8(&v396);
    if (*(&v389 + 1))
    {
      if (swift_dynamicCast())
      {
        v348 = v402;
        v209 = v346;
        v210 = v344;
        goto LABEL_154;
      }
    }

    else
    {
      sub_24E601704(&v388, &qword_27F2129B0, &unk_24F945320);
    }

    *&v396 = 0;
    *(&v396 + 1) = 0xE000000000000000;
    sub_24F92C888();

    *&v396 = 0xD00000000000001CLL;
    *(&v396 + 1) = 0x800000024FA629C0;
    v210 = v344;
    v209 = v346;
    MEMORY[0x253050C20](v344, v346);
    v348 = v396;
LABEL_154:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
    v212 = sub_24F92A2C8();
    v213 = *(v212 - 8);
    v214 = (*(v213 + 80) + 32) & ~*(v213 + 80);
    v215 = swift_allocObject();
    v350 = xmmword_24F93DE60;
    *(v215 + 16) = xmmword_24F93DE60;
    sub_24F92A288();
    v216 = sub_24E805DFC(v215);
    swift_setDeallocating();
    (*(v213 + 8))(v215 + v214, v212);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    v217 = swift_allocObject();
    *(v217 + 16) = v350;
    *(v217 + 32) = 0x79546E6F69746361;
    v218 = v217 + 32;
    *(v217 + 72) = v208;
    *(v217 + 40) = 0xEA00000000006570;
    *(v217 + 48) = 0x657461676976616ELL;
    *(v217 + 56) = 0xE800000000000000;
    v219 = sub_24E608448(v217);
    swift_setDeallocating();
    sub_24E601704(v218, &qword_27F2135C0, &qword_24F970400);
    swift_deallocClassInstance();
    type metadata accessor for ClickMetricsEvent();
    v220 = swift_allocObject();
    v220[6] = 0x70756B636F6CLL;
    v220[7] = 0xE600000000000000;
    v220[4] = v210;
    v220[5] = v209;
    v220[8] = v216;
    v220[9] = MEMORY[0x277D84FA0];
    v220[2] = v219;
    v220[3] = MEMORY[0x277D84F90];

    v221 = v368;
    sub_24E98C2FC();
    swift_setDeallocating();
    ClickMetricsEvent.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
    v222 = v369;
    v223 = (*(v369 + 80) + 32) & ~*(v369 + 80);
    v224 = swift_allocObject();
    *(v224 + 16) = v350;
    (*(v222 + 16))(v224 + v223, v221, v370);
    sub_24F9294B8();
    v225 = v366;
    sub_24F928AA8();
    *&v398 = 0;
    v396 = 0u;
    v397 = 0u;
    v226 = v367;
    sub_24F91F488();

    v393 = 0u;
    v394 = 0u;
    v227 = v379;
    v228 = *(v378 + 16);
    v229 = v365;
    v228(v365, v225, v379);
    v230 = sub_24F929D18();
    v232 = v231;
    type metadata accessor for FlowAction(0);
    v211 = swift_allocObject();
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v233 = v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v233 = 0u;
    *(v233 + 16) = 0u;
    *(v233 + 32) = 0;
    v234 = (v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v234 = 0;
    v234[1] = 0;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 1;
    sub_24E60169C(v226, v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    v235 = (v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v235 = 0;
    v235[1] = 0;
    v236 = v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v236 = xmmword_24F9406F0;
    *(v236 + 24) = 0;
    *(v236 + 32) = 0;
    *(v236 + 16) = 0;
    *(v236 + 40) = 0;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v237 = (v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v237 = v230;
    v237[1] = v232;
    sub_24E60169C(&v396, &v388, &qword_27F235830, &qword_24F93B8C0);
    v228((v211 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v229, v227);
    v238 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
    v239 = sub_24F929608();
    (*(*(v239 - 8) + 56))(v211 + v238, 1, 1, v239);
    v240 = (v211 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v240 = 0u;
    v240[1] = 0u;
    v241 = v211 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(&v388, &v402, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v403 + 1))
    {
      v242 = v403;
      *v241 = v402;
      *(v241 + 16) = v242;
      *(v241 + 32) = v404;
    }

    else
    {
      v243 = v362;
      sub_24F91F6A8();
      v244 = sub_24F91F668();
      v246 = v245;
      (*(v363 + 8))(v243, v364);
      v405[0] = v244;
      v405[1] = v246;
      sub_24F92C7F8();
      sub_24E601704(&v402, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(&v388, &qword_27F235830, &qword_24F93B8C0);
    *(v211 + 16) = 0u;
    *(v211 + 32) = 0u;

    FlowAction.setPageData(_:)(&v393);

    v247 = *(v378 + 8);
    v247(v365, v379);
    sub_24E601704(&v393, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v367, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(&v396, &qword_27F235830, &qword_24F93B8C0);
    v248 = sub_24F0747E8(v385, 0, 0);
    v249 = v248;
    if (v248)
    {
      v248 = type metadata accessor for ProductPage(0);
    }

    else
    {
      *&v397 = 0;
      *(&v396 + 1) = 0;
    }

    *&v396 = v249;
    *(&v397 + 1) = v248;
    FlowAction.setPageData(_:)(&v396);
    v247(v366, v379);
    (*(v369 + 8))(v368, v370);
    sub_24E601704(&v396, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    v211 = 0;
  }

  *&v402 = 7107189;
  *(&v402 + 1) = 0xE300000000000000;
  v250 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  sub_24E76C3D8(&v396, v69, &v388);

  sub_24E6585F8(&v396);
  if (*(&v389 + 1))
  {
    v251 = swift_dynamicCast();
    v252 = v346;
    if ((v251 & 1) == 0)
    {
      goto LABEL_170;
    }

    v253 = v357;
    sub_24F91F488();

    v255 = v358;
    v254 = v359;
    if ((*(v358 + 48))(v253, 1, v359) == 1)
    {
      sub_24E601704(v253, &qword_27F228530, &unk_24F93C6E0);
      goto LABEL_170;
    }

    v256 = v355;
    (*(v255 + 32))(v355, v253, v254);
    if (v343 && (v257 = v341) != 0)
    {
      *&v396 = v344;
      *(&v396 + 1) = v252;
      v258 = v354;
      (*(v255 + 16))(v354, v256, v254);

      v259 = v343;

      v379 = _s12GameStoreKit21LockupContextMenuDataC6adamId3url5title4icon17isMessagesOnlyAppAcA04AdamI0V_10Foundation3URLVSSAA7ArtworkCSbtcfC_0(&v396, v258, v342, v259, v257, v338);
      (*(v255 + 8))(v256, v254);
    }

    else
    {
      (*(v255 + 8))(v256, v254);
LABEL_170:
      v379 = 0;
    }
  }

  else
  {
    sub_24E601704(&v388, &qword_27F2129B0, &unk_24F945320);
    v379 = 0;
  }

  v260 = sub_24F929608();
  v261 = *(*(v260 - 8) + 56);
  v262 = v381;
  v261(v381, 1, 1, v260);
  if (v373)
  {
    v263 = v361;
    sub_24F929568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    v264 = swift_allocObject();
    *(v264 + 16) = xmmword_24F93FC20;
    *(v264 + 32) = 1701667182;
    v265 = v342;
    if (!v343)
    {
      v265 = 0;
    }

    v266 = 0xE000000000000000;
    if (v343)
    {
      v266 = v343;
    }

    *(v264 + 40) = 0xE400000000000000;
    *(v264 + 48) = v265;
    *(v264 + 56) = v266;
    *(v264 + 72) = v250;
    strcpy((v264 + 80), "impressionType");
    *(v264 + 95) = -18;
    *(v264 + 96) = 0x70756B636F6CLL;
    *(v264 + 104) = 0xE600000000000000;
    *(v264 + 120) = v250;
    *(v264 + 128) = 0x657079546469;
    *(v264 + 136) = 0xE600000000000000;
    *(v264 + 144) = 0x64695F737469;
    *(v264 + 152) = 0xE600000000000000;
    *(v264 + 168) = v250;
    *(v264 + 176) = 0x6973736572706D69;
    *(v264 + 216) = MEMORY[0x277D83B88];
    *(v264 + 184) = 0xEF7865646E496E6FLL;
    *(v264 + 192) = v263;

    sub_24E608448(v264);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_24F9294B8();
    v267 = MEMORY[0x277D84F90];
    sub_24EA200BC(MEMORY[0x277D84F90]);
    sub_24EA200BC(v267);
    v268 = v360;
    sub_24F9295A8();
    sub_24E601704(v262, &qword_27F213E68, &unk_24F93BC80);
    v261(v268, 0, 1, v260);
    sub_24E65E0D4(v268, v262);
  }

  else
  {
  }

  v269 = v380;
  v270 = v376;
  v271 = v345;
  v272 = [v385 bundleIdentifier];
  if (v272)
  {
    v273 = v272;
    v274 = sub_24F92B0D8();
    v276 = v275;
  }

  else
  {
    v274 = 0;
    v276 = 0;
  }

  sub_24E60169C(v262, v383, &qword_27F213E68, &unk_24F93BC80);

  v277 = v385;
  sub_24EC4C930(v384);
  v278 = [v277 installDate];
  if (v278)
  {
    v279 = v278;
    sub_24F91F608();

    v280 = 0;
  }

  else
  {
    v280 = 1;
  }

  v281 = v374;
  (*(v377 + 56))(v269, v280, 1, v270);
  type metadata accessor for UpdatesLockup(0);
  v282 = swift_allocObject();
  *(v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = v271;
  v283 = (v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  v284 = v351;
  *v283 = v352;
  v283[1] = v284;
  v285 = v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v285 = v340;
  *(v285 + 8) = v339;
  v286 = v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v286 = 0;
  *(v286 + 8) = 1;
  sub_24E60169C(v384, v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v269, v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30, &qword_24F939880);
  *&v398 = 0;
  v396 = 0u;
  v397 = 0u;
  sub_24E60169C(v383, v281, &qword_27F213E68, &unk_24F93BC80);
  v287 = v282;
  *(v282 + 424) = 4;
  sub_24E60169C(&v396, &v388, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v389 + 1))
  {
    v288 = v389;
    v289 = v282;
    *(v282 + 448) = v388;
    *(v282 + 464) = v288;
    *(v282 + 480) = v390;
  }

  else
  {
    v290 = v362;
    sub_24F91F6A8();
    v291 = sub_24F91F668();
    v293 = v292;
    (*(v363 + 8))(v290, v364);
    *&v402 = v291;
    *(&v402 + 1) = v293;
    sub_24F92C7F8();
    sub_24E601704(&v388, &qword_27F235830, &qword_24F93B8C0);
    v289 = v287;
  }

  v294 = v341;
  sub_24E60169C(v281, v289 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v295 = v356;

  v296 = v346;
  *(v287 + 16) = v344;
  *(v287 + 24) = v296;
  *(v287 + 32) = v274;
  *(v287 + 40) = v276;
  *(v287 + 48) = v294;
  *(v287 + 56) = 0;
  *(v287 + 64) = 0u;
  *(v287 + 80) = 0u;
  v297 = v343;
  *(v287 + 96) = v342;
  *(v287 + 104) = v297;
  v298 = v353;
  *(v287 + 112) = v375;
  *(v287 + 120) = v298;
  *(v287 + 128) = 0;
  *(v287 + 136) = 2;
  *(v287 + 144) = 0;
  *(v287 + 152) = 0;
  *(v287 + 184) = 0u;
  *(v287 + 200) = 0u;
  *(v287 + 216) = 0u;
  *(v287 + 376) = 0u;
  *(v287 + 392) = 0u;
  *(v287 + 408) = 0x8000;
  *(v287 + 360) = v379;
  *(v287 + 416) = 0;
  *(v287 + 432) = MEMORY[0x277D84FA0];
  *(v287 + 168) = 0;
  *(v287 + 176) = 0;
  *(v287 + 160) = 0;
  *(v287 + 248) = 0;
  *(v287 + 256) = 0;
  v299 = v349;
  *(v287 + 232) = v295;
  *(v287 + 240) = v299;
  *(v287 + 264) = v211;
  *(v287 + 272) = 0u;
  *(v287 + 288) = 0u;
  *(v287 + 304) = 0u;
  *(v287 + 320) = 0u;
  *(v287 + 336) = 0;
  sub_24E601704(v382, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v281, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(&v396, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v380, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v384, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v383, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v381, &qword_27F213E68, &unk_24F93BC80);
  result = v287;
  *(v287 + 344) = MEMORY[0x277D84F90];
  *(v287 + 352) = 0;
  *(v287 + 440) = 0;
  *(v287 + 368) = 0;
  return result;
}

unint64_t sub_24EF01BE0()
{
  result = qword_27F221898;
  if (!qword_27F221898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F221898);
  }

  return result;
}

uint64_t SearchActionCalculator.searchAction(modifying:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = sub_24F91F6B8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F928AD8();
  v7 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v60 - v10;
  v11 = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  v12 = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken + 8);
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens))
  {
    v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *&v79[0] = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *(&v79[0] + 1) = v12;
  v73 = v79;
  swift_bridgeObjectRetain_n();

  v14 = sub_24E6159B8(sub_24E7FA94C, v72, v13);

  v67 = v7;
  if ((v14 & 1) == 0)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_8:
      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = sub_24E615CF4((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v11;
      *(v21 + 5) = v12;
      goto LABEL_23;
    }

LABEL_51:
    v13 = sub_24E615CF4(0, *(v13 + 2) + 1, 1, v13);
    goto LABEL_8;
  }

  result = sub_24E8BDF64(v13, v11, v12);
  if (v16)
  {
    v17 = *(v13 + 2);
    v18 = v17;
    goto LABEL_15;
  }

  v18 = result;
  v66 = v3;
  v3 = (result + 1);
  if (__OFADD__(result, 1))
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v70 = a1;
  v22 = *(v13 + 2);

  if (v3 != v22)
  {
    a1 = 16 * v18;
    v61 = a2;
    while (v3 < v22)
    {
      v54 = *&v13[a1 + 48];
      v7 = *&v13[a1 + 56];
      if (v54 != v11 || v7 != v12)
      {
        result = sub_24F92CE08();
        if ((result & 1) == 0)
        {
          if (v3 != v18)
          {
            if (v18 >= v22)
            {
              goto LABEL_55;
            }

            v56 = &v13[16 * v18 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_24ECDE200(v13);
            }

            v59 = &v13[16 * v18];
            *(v59 + 4) = v54;
            *(v59 + 5) = v7;

            if (v3 >= *(v13 + 2))
            {
              goto LABEL_56;
            }

            v53 = &v13[a1];
            *(v53 + 6) = v58;
            *(v53 + 7) = v57;

            a2 = v61;
          }

          ++v18;
        }
      }

      v3 = (v3 + 1);
      v22 = *(v13 + 2);
      a1 += 16;
      if (v3 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_13:

  v17 = *(v13 + 2);
  v7 = v67;
  a1 = v70;
  if (v17 < v18)
  {
    __break(1u);
    goto LABEL_53;
  }

  v3 = v66;
  if (v18 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_15:
  if (__OFADD__(v17, v18 - v17))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v18 > *(v13 + 3) >> 1)
  {
    if (v17 <= v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = v17;
    }

    v13 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v24, 1, v13);
    v81 = v13;
  }

  sub_24EDAB0D8(v18, v17, 0);

LABEL_23:
  v25 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
  v70 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  if (v25 && *(v13 + 2))
  {
    v26 = v3[3];
    v27 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v26);
    v66 = (*(v27 + 8))(v70, v25, v13, v26, v27);
    v65 = v28;
  }

  else
  {
    v66 = 0;
    v65 = 0;
  }

  v29 = sub_24F91F4A8();
  (*(*(v29 - 8) + 56))(v71, 1, 1, v29);
  v30 = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin);
  v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity);
  if (*(v13 + 2))
  {
  }

  else
  {

    v13 = 0;
  }

  v32 = *(v7 + 16);
  v33 = a2 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v35 = v68;
  v34 = v69;
  v32(v68, v33, v69);
  type metadata accessor for SearchAction(0);
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v37 = v70;
  v37[1] = v25;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v30;
  v38 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  *v38 = 0;
  v38[1] = 0;
  sub_24E60169C(v71, v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530, &unk_24F93C6E0);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v31;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = 1;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = 0;
  v39 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  *v40 = 0;
  v40[1] = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v13;
  v41 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v42 = v65;
  *v41 = v66;
  v41[1] = v42;
  v43 = v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  *v43 = xmmword_24F9406F0;
  *(v43 + 3) = 0;
  *(v43 + 4) = 0;
  *(v43 + 2) = 0;
  v43[40] = 0;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v32(v36 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v35, v34);
  v44 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v45 = sub_24F929608();
  (*(*(v45 - 8) + 56))(v36 + v44, 1, 1, v45);
  v46 = (v36 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v46 = 0u;
  v46[1] = 0u;
  v47 = v36 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v79, &v76, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v77 + 1))
  {
    v48 = v77;
    *v47 = v76;
    *(v47 + 1) = v48;
    *(v47 + 4) = v78;
  }

  else
  {

    v49 = v62;
    sub_24F91F6A8();
    v50 = sub_24F91F668();
    v52 = v51;
    (*(v63 + 8))(v49, v64);
    v74 = v50;
    v75 = v52;
    sub_24F92C7F8();
    sub_24E601704(&v76, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v79, &qword_27F235830, &qword_24F93B8C0);
  (*(v67 + 8))(v68, v69);
  sub_24E601704(v71, &qword_27F228530, &unk_24F93C6E0);
  v36[2] = v70;
  v36[3] = v25;
  v36[4] = 0;
  v36[5] = 0;
  return v36;
}

void *SearchActionCalculator.searchAction(modifying:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928AD8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
  v15 = sub_24F91F4A8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = *(a2 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin);
  LOBYTE(a1) = *(a2 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity);
  v40 = v7;
  v17 = *(v7 + 16);
  v17(v9, a2 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v6);
  type metadata accessor for SearchAction(0);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v19 = v14;
  v19[1] = v13;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v16;
  v20 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  *v20 = 0;
  v20[1] = 0;
  sub_24E60169C(v12, v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530, &unk_24F93C6E0);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = a1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = 1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = 0;
  v21 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  *v22 = 0;
  v22[1] = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = 0;
  v23 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  *v23 = 0;
  v23[1] = 0;
  v24 = v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  *v24 = xmmword_24F9406F0;
  *(v24 + 3) = 0;
  *(v24 + 4) = 0;
  *(v24 + 2) = 0;
  v24[40] = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v17(v18 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v9, v6);
  v25 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v18 + v25, 1, 1, v26);
  v27 = (v18 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  v28 = v18 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v46, &v43, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v44 + 1))
  {
    v29 = v44;
    *v28 = v43;
    *(v28 + 1) = v29;
    *(v28 + 4) = v45;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v30 = v37;
    sub_24F91F6A8();
    v31 = v14;
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v38 + 8))(v30, v39);
    v41 = v32;
    v42 = v34;
    v14 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v43, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
  (*(v40 + 8))(v9, v6);
  sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
  v18[2] = v14;
  v18[3] = v13;
  v18[4] = 0;
  v18[5] = 0;
  return v18;
}

uint64_t PageHeader.init(id:badge:title:subtitle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v32 = a3;
    v33 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v35 = v22;
    v36 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v32;
    a4 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v26 = v8 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  v27 = v41;
  *v26 = v40;
  *(v26 + 16) = v27;
  *(v26 + 32) = v42;
  *(v8 + 16) = v34;
  *(v8 + 24) = a3;
  v28 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v29 = sub_24F91F008();
  (*(*(v29 - 8) + 32))(v8 + v28, a4, v29);
  v30 = (v8 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  *v30 = a5;
  v30[1] = a6;
  sub_24E65E0D4(a7, v8 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics);
  return v8;
}

uint64_t PageHeader.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v2 = sub_24F91F008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t PageHeader.__allocating_init(id:badge:title:subtitle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a2;
  v34 = a3;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v18 = v38;
    *v17 = v37;
    *(v17 + 16) = v18;
    *(v17 + 32) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v31 = a4;
    v32 = a5;
    v20 = a7;
    v21 = v19;
    v22 = a6;
    v24 = v23;
    (*(v13 + 8))(v15, v12);
    v35 = v21;
    v36 = v24;
    a7 = v20;
    a6 = v22;
    a4 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v25 = v34;
  *(v16 + 16) = v33;
  *(v16 + 24) = v25;
  v26 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v27 = sub_24F91F008();
  (*(*(v27 - 8) + 32))(v16 + v26, a4, v27);
  v28 = (v16 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  *v28 = a5;
  v28[1] = a6;
  sub_24E65E0D4(a7, v16 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics);
  return v16;
}

uint64_t PageHeader.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v69 = a2;
  v68 = sub_24F9285B8();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = v54 - v5;
  v57 = sub_24F91F6B8();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v7 - 8);
  v58 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24F91F008();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v54 - v11;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = v54 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v54 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v54 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v54 - v25;
  v75 = a1;
  sub_24F928398();
  sub_24F928348();
  v28 = v27;
  v31 = *(v14 + 8);
  v30 = v14 + 8;
  v29 = v31;
  v31(v26, v13);
  if (v28)
  {
    v64 = v29;
    sub_24F91F0B8();
    v65 = v12;
    sub_24F91F018();
    sub_24F928398();
    v32 = sub_24F928348();
    if (v33)
    {
      v72 = v32;
      v73 = v33;
    }

    else
    {
      v37 = v55;
      sub_24F91F6A8();
      v38 = sub_24F91F668();
      v40 = v39;
      (*(v56 + 8))(v37, v57);
      v72 = v38;
      v73 = v40;
    }

    sub_24F92C7F8();
    v41 = v23;
    v42 = v13;
    v43 = v64;
    v64(v41, v13);
    v54[1] = v30;
    sub_24F928398();
    v58 = sub_24F928348();
    v57 = v44;
    v43(v20, v13);
    v45 = v61;
    (*(v61 + 16))(v70, v65, v71);
    v46 = v59;
    sub_24F928398();
    v56 = sub_24F928348();
    v55 = v47;
    v43(v46, v13);
    sub_24F929608();
    sub_24F928398();
    v48 = v66;
    v50 = v68;
    v49 = v69;
    (*(v66 + 16))(v63, v69, v68);
    v51 = v42;
    v52 = v62;
    sub_24F929548();
    v34 = (*(v67 + 120))(v74, v58, v57, v70, v56, v55, v52);
    (*(v48 + 8))(v49, v50);
    v64(v75, v51);
    (*(v45 + 8))(v65, v71);
  }

  else
  {
    v34 = sub_24F92AC38();
    sub_24EF0391C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v35 = 0x656C746974;
    v36 = v67;
    v35[1] = 0xE500000000000000;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v66 + 8))(v69, v68);
    v29(v75, v13);
  }

  return v34;
}

uint64_t PageHeader.badge.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageHeader.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageHeader.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);

  return v1;
}

uint64_t PageHeader.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v2 = sub_24F91F008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EF0391C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PageHeader(uint64_t a1)
{
  result = qword_27F233778;
  if (!qword_27F233778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF039D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_24EF03A58(uint64_t a1)
{
  sub_24F91F008();
  if (v1 <= 0x3F)
  {
    sub_24E61C938(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EF03B90()
{
  result = sub_24F92B098();
  qword_27F233788 = result;
  return result;
}

uint64_t sub_24EF03BEC()
{
  result = sub_24F92B098();
  qword_27F233790 = result;
  return result;
}

uint64_t sub_24EF03C44()
{
  result = sub_24F92B098();
  qword_27F233798 = result;
  return result;
}

uint64_t sub_24EF03CA4()
{
  result = sub_24F92B098();
  qword_27F2337A0 = result;
  return result;
}

uint64_t sub_24EF03D08()
{
  result = sub_24F92B098();
  qword_27F2337A8 = result;
  return result;
}

uint64_t sub_24EF03D64()
{
  result = sub_24F92B098();
  qword_27F2337B0 = result;
  return result;
}

uint64_t sub_24EF03DC0()
{
  result = sub_24F92B098();
  qword_27F2337B8 = result;
  return result;
}

uint64_t sub_24EF03E1C()
{
  result = sub_24F92B098();
  qword_27F2337C0 = result;
  return result;
}

uint64_t sub_24EF03E78()
{
  result = sub_24F92B098();
  qword_27F2337C8 = result;
  return result;
}

uint64_t sub_24EF03EDC()
{
  result = sub_24F92B098();
  qword_27F2337D0 = result;
  return result;
}

uint64_t sub_24EF03F3C()
{
  result = sub_24F92B098();
  qword_27F2337D8 = result;
  return result;
}

uint64_t sub_24EF03F8C()
{
  result = sub_24F92B098();
  qword_27F2337E0 = result;
  return result;
}

uint64_t sub_24EF03FEC()
{
  result = sub_24F92B098();
  qword_27F2337E8 = result;
  return result;
}

uint64_t sub_24EF04048()
{
  result = sub_24F92B098();
  qword_27F2337F0 = result;
  return result;
}

uint64_t sub_24EF040A4()
{
  result = sub_24F92B098();
  qword_27F2337F8 = result;
  return result;
}

uint64_t sub_24EF04100()
{
  result = sub_24F92B098();
  qword_27F233800 = result;
  return result;
}

uint64_t sub_24EF04158()
{
  result = sub_24F92B098();
  qword_27F233808 = result;
  return result;
}

uint64_t sub_24EF041B4()
{
  result = sub_24F92B098();
  qword_27F233810 = result;
  return result;
}

uint64_t sub_24EF04210()
{
  result = sub_24F92B098();
  qword_27F233818 = result;
  return result;
}

uint64_t sub_24EF0426C()
{
  result = sub_24F92B098();
  qword_27F233820 = result;
  return result;
}

uint64_t sub_24EF042C8()
{
  result = sub_24F92B098();
  qword_27F233828 = result;
  return result;
}

uint64_t sub_24EF04324()
{
  result = sub_24F92B098();
  qword_27F233830 = result;
  return result;
}

uint64_t sub_24EF04380()
{
  result = sub_24F92B098();
  qword_27F233838 = result;
  return result;
}

uint64_t sub_24EF043DC()
{
  result = sub_24F92B098();
  qword_27F233840 = result;
  return result;
}

uint64_t sub_24EF04438()
{
  result = sub_24F92B098();
  qword_27F233848 = result;
  return result;
}

uint64_t sub_24EF04494()
{
  result = sub_24F92B098();
  qword_27F233850 = result;
  return result;
}

uint64_t sub_24EF044F0()
{
  result = sub_24F92B098();
  qword_27F233858 = result;
  return result;
}

uint64_t sub_24EF0454C()
{
  result = sub_24F92B098();
  qword_27F233860 = result;
  return result;
}

uint64_t sub_24EF045A8()
{
  result = sub_24F92B098();
  qword_27F233868 = result;
  return result;
}

uint64_t sub_24EF04604()
{
  result = sub_24F92B098();
  qword_27F233870 = result;
  return result;
}

uint64_t sub_24EF04660()
{
  result = sub_24F92B098();
  qword_27F233878 = result;
  return result;
}

uint64_t sub_24EF046C0()
{
  result = sub_24F92B098();
  qword_27F233880 = result;
  return result;
}

uint64_t sub_24EF0471C()
{
  result = sub_24F92B098();
  qword_27F233888 = result;
  return result;
}

uint64_t sub_24EF04778()
{
  result = sub_24F92B098();
  qword_27F233890 = result;
  return result;
}

uint64_t sub_24EF047D4()
{
  result = sub_24F92B098();
  qword_27F233898 = result;
  return result;
}

uint64_t sub_24EF04830()
{
  result = sub_24F92B098();
  qword_27F2338A0 = result;
  return result;
}

uint64_t sub_24EF0488C()
{
  result = sub_24F92B098();
  qword_27F2338A8 = result;
  return result;
}

uint64_t sub_24EF048E8()
{
  result = sub_24F92B098();
  qword_27F2338B0 = result;
  return result;
}

uint64_t sub_24EF04944()
{
  result = sub_24F92B098();
  qword_27F2338B8 = result;
  return result;
}

uint64_t sub_24EF049A0()
{
  result = sub_24F92B098();
  qword_27F2338C0 = result;
  return result;
}

uint64_t sub_24EF04A00()
{
  result = sub_24F92B098();
  qword_27F2338C8 = result;
  return result;
}

uint64_t sub_24EF04A5C()
{
  result = sub_24F92B098();
  qword_27F2338D0 = result;
  return result;
}

uint64_t sub_24EF04AB8()
{
  result = sub_24F92B098();
  qword_27F2338D8 = result;
  return result;
}

uint64_t sub_24EF04B14()
{
  result = sub_24F92B098();
  qword_27F2338E0 = result;
  return result;
}

uint64_t sub_24EF04B70()
{
  result = sub_24F92B098();
  qword_27F2338E8 = result;
  return result;
}

uint64_t sub_24EF04BCC()
{
  result = sub_24F92B098();
  qword_27F2338F0 = result;
  return result;
}

uint64_t sub_24EF04C28()
{
  result = sub_24F92B098();
  qword_27F2338F8 = result;
  return result;
}

uint64_t sub_24EF04C84()
{
  result = sub_24F92B098();
  qword_27F233900 = result;
  return result;
}

uint64_t sub_24EF04CE0()
{
  result = sub_24F92B098();
  qword_27F233908 = result;
  return result;
}

uint64_t sub_24EF04D3C()
{
  result = sub_24F92B098();
  qword_27F233910 = result;
  return result;
}

uint64_t sub_24EF04D98()
{
  result = sub_24F92B098();
  qword_27F233918 = result;
  return result;
}

uint64_t sub_24EF04DF4()
{
  result = sub_24F92B098();
  qword_27F233920 = result;
  return result;
}

uint64_t sub_24EF04E50()
{
  result = sub_24F92B098();
  qword_27F233928 = result;
  return result;
}

uint64_t sub_24EF04EAC()
{
  result = sub_24F92B098();
  qword_27F233930 = result;
  return result;
}

uint64_t sub_24EF04F10()
{
  result = sub_24F92B098();
  qword_27F233938 = result;
  return result;
}

uint64_t sub_24EF04F6C()
{
  result = sub_24F92B098();
  qword_27F233940 = result;
  return result;
}

uint64_t sub_24EF04FC8()
{
  result = sub_24F92B098();
  qword_27F233948 = result;
  return result;
}

uint64_t sub_24EF05024()
{
  result = sub_24F92B098();
  qword_27F233950 = result;
  return result;
}

uint64_t sub_24EF05080()
{
  result = sub_24F92B098();
  qword_27F233958 = result;
  return result;
}

uint64_t sub_24EF050E4()
{
  result = sub_24F92B098();
  qword_27F233960 = result;
  return result;
}

uint64_t sub_24EF05140()
{
  result = sub_24F92B098();
  qword_27F233968 = result;
  return result;
}

uint64_t sub_24EF0519C()
{
  result = sub_24F92B098();
  qword_27F233970 = result;
  return result;
}

uint64_t sub_24EF051F8()
{
  result = sub_24F92B098();
  qword_27F233978 = result;
  return result;
}

uint64_t sub_24EF05254()
{
  result = sub_24F92B098();
  qword_27F233980 = result;
  return result;
}

uint64_t sub_24EF052B0()
{
  result = sub_24F92B098();
  qword_27F233988 = result;
  return result;
}

uint64_t sub_24EF0530C()
{
  result = sub_24F92B098();
  qword_27F233990 = result;
  return result;
}

uint64_t sub_24EF05368()
{
  result = sub_24F92B098();
  qword_27F233998 = result;
  return result;
}

uint64_t sub_24EF053C4()
{
  result = sub_24F92B098();
  qword_27F2339A0 = result;
  return result;
}

uint64_t sub_24EF05420()
{
  result = sub_24F92B098();
  qword_27F2339A8 = result;
  return result;
}

uint64_t sub_24EF0547C()
{
  result = sub_24F92B098();
  qword_27F2339B0 = result;
  return result;
}

uint64_t sub_24EF054D8()
{
  result = sub_24F92B098();
  qword_27F2339B8 = result;
  return result;
}

uint64_t sub_24EF05534()
{
  result = sub_24F92B098();
  qword_27F2339C0 = result;
  return result;
}

uint64_t sub_24EF05590()
{
  result = sub_24F92B098();
  qword_27F2339C8 = result;
  return result;
}

uint64_t sub_24EF055EC()
{
  result = sub_24F92B098();
  qword_27F2339D0 = result;
  return result;
}

uint64_t sub_24EF05648()
{
  result = sub_24F92B098();
  qword_27F2339D8 = result;
  return result;
}

uint64_t sub_24EF056A4()
{
  result = sub_24F92B098();
  qword_27F2339E0 = result;
  return result;
}

uint64_t sub_24EF05700()
{
  result = sub_24F92B098();
  qword_27F2339E8 = result;
  return result;
}

uint64_t sub_24EF0575C()
{
  result = sub_24F92B098();
  qword_27F2339F0 = result;
  return result;
}

uint64_t sub_24EF057B8()
{
  result = sub_24F92B098();
  qword_27F2339F8 = result;
  return result;
}

uint64_t sub_24EF05814()
{
  result = sub_24F92B098();
  qword_27F233A00 = result;
  return result;
}

uint64_t sub_24EF05870()
{
  result = sub_24F92B098();
  qword_27F233A08 = result;
  return result;
}

uint64_t sub_24EF058CC()
{
  result = sub_24F92B098();
  qword_27F233A10 = result;
  return result;
}

uint64_t sub_24EF05928()
{
  result = sub_24F92B098();
  qword_27F233A18 = result;
  return result;
}

uint64_t sub_24EF05984()
{
  result = sub_24F92B098();
  qword_27F233A20 = result;
  return result;
}

uint64_t sub_24EF059E0()
{
  result = sub_24F92B098();
  qword_27F233A28 = result;
  return result;
}

uint64_t sub_24EF05A3C()
{
  result = sub_24F92B098();
  qword_27F233A30 = result;
  return result;
}

uint64_t sub_24EF05A98()
{
  result = sub_24F92B098();
  qword_27F233A38 = result;
  return result;
}

uint64_t sub_24EF05AF4()
{
  result = sub_24F92B098();
  qword_27F233A40 = result;
  return result;
}

uint64_t sub_24EF05B50()
{
  result = sub_24F92B098();
  qword_27F233A48 = result;
  return result;
}

uint64_t sub_24EF05BAC()
{
  result = sub_24F92B098();
  qword_27F233A50 = result;
  return result;
}

uint64_t sub_24EF05C08()
{
  result = sub_24F92B098();
  qword_27F233A58 = result;
  return result;
}

uint64_t sub_24EF05C64()
{
  result = sub_24F92B098();
  qword_27F233A60 = result;
  return result;
}

uint64_t sub_24EF05CC0()
{
  result = sub_24F92B098();
  qword_27F233A68 = result;
  return result;
}

uint64_t sub_24EF05D1C()
{
  result = sub_24F92B098();
  qword_27F233A70 = result;
  return result;
}

uint64_t sub_24EF05D78()
{
  result = sub_24F92B098();
  qword_27F233A78 = result;
  return result;
}

uint64_t sub_24EF05DD4()
{
  result = sub_24F92B098();
  qword_27F233A80 = result;
  return result;
}

uint64_t sub_24EF05E30()
{
  result = sub_24F92B098();
  qword_27F233A88 = result;
  return result;
}

uint64_t sub_24EF05E8C()
{
  result = sub_24F92B098();
  qword_27F233A90 = result;
  return result;
}

uint64_t sub_24EF05EE8()
{
  result = sub_24F92B098();
  qword_27F233A98 = result;
  return result;
}

uint64_t sub_24EF05F44()
{
  result = sub_24F92B098();
  qword_27F233AA0 = result;
  return result;
}

uint64_t sub_24EF05FA0()
{
  result = sub_24F92B098();
  qword_27F233AA8 = result;
  return result;
}

uint64_t sub_24EF05FFC()
{
  result = sub_24F92B098();
  qword_27F233AB0 = result;
  return result;
}

uint64_t sub_24EF06058()
{
  result = sub_24F92B098();
  qword_27F233AB8 = result;
  return result;
}

uint64_t sub_24EF060B4()
{
  result = sub_24F92B098();
  qword_27F233AC0 = result;
  return result;
}

uint64_t sub_24EF06110()
{
  result = sub_24F92B098();
  qword_27F233AC8 = result;
  return result;
}

uint64_t sub_24EF0616C()
{
  result = sub_24F92B098();
  qword_27F233AD0 = result;
  return result;
}

uint64_t sub_24EF061C8()
{
  result = sub_24F92B098();
  qword_27F233AD8 = result;
  return result;
}

uint64_t sub_24EF06224()
{
  result = sub_24F92B098();
  qword_27F233AE0 = result;
  return result;
}

uint64_t sub_24EF06280()
{
  result = sub_24F92B098();
  qword_27F233AE8 = result;
  return result;
}

uint64_t sub_24EF062DC()
{
  result = sub_24F92B098();
  qword_27F233AF0 = result;
  return result;
}

uint64_t sub_24EF06338()
{
  result = sub_24F92B098();
  qword_27F233AF8 = result;
  return result;
}

uint64_t sub_24EF06394()
{
  result = sub_24F92B098();
  qword_27F233B00 = result;
  return result;
}

uint64_t sub_24EF063F0()
{
  result = sub_24F92B098();
  qword_27F233B08 = result;
  return result;
}

uint64_t sub_24EF0644C()
{
  result = sub_24F92B098();
  qword_27F233B10 = result;
  return result;
}

uint64_t sub_24EF064A8()
{
  result = sub_24F92B098();
  qword_27F233B18 = result;
  return result;
}

uint64_t sub_24EF06504()
{
  result = sub_24F92B098();
  qword_27F233B20 = result;
  return result;
}

uint64_t sub_24EF06560()
{
  result = sub_24F92B098();
  qword_27F233B28 = result;
  return result;
}

uint64_t sub_24EF065BC()
{
  result = sub_24F92B098();
  qword_27F233B30 = result;
  return result;
}

uint64_t sub_24EF06618()
{
  result = sub_24F92B098();
  qword_27F233B38 = result;
  return result;
}

uint64_t sub_24EF06674()
{
  result = sub_24F92B098();
  qword_27F233B40 = result;
  return result;
}

uint64_t sub_24EF066D0()
{
  result = sub_24F92B098();
  qword_27F233B48 = result;
  return result;
}

uint64_t sub_24EF0672C()
{
  result = sub_24F92B098();
  qword_27F233B50 = result;
  return result;
}

uint64_t sub_24EF06788()
{
  result = sub_24F92B098();
  qword_27F233B58 = result;
  return result;
}

uint64_t sub_24EF067E4()
{
  result = sub_24F92B098();
  qword_27F233B60 = result;
  return result;
}

uint64_t sub_24EF06840()
{
  result = sub_24F92B098();
  qword_27F233B68 = result;
  return result;
}

uint64_t sub_24EF0689C()
{
  result = sub_24F92B098();
  qword_27F233B70 = result;
  return result;
}

uint64_t sub_24EF068F8()
{
  result = sub_24F92B098();
  qword_27F233B78 = result;
  return result;
}

uint64_t sub_24EF06954()
{
  result = sub_24F92B098();
  qword_27F233B80 = result;
  return result;
}

uint64_t sub_24EF069B0()
{
  result = sub_24F92B098();
  qword_27F233B88 = result;
  return result;
}

uint64_t sub_24EF06A0C()
{
  result = sub_24F92B098();
  qword_27F233B90 = result;
  return result;
}

void *ShareSheetGenericMetadata.__allocating_init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t ShareSheetGenericMetadata.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetGenericMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetGenericMetadata.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v31 = *v3;
  v33 = sub_24F9285B8();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v3[2] = v14;
    v3[3] = v16;
    v18 = v35;
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v30 = v17;
    v17(v10, v7);
    v3[4] = v19;
    v3[5] = v21;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v22 = *(v5 + 16);
    v31 = v7;
    v24 = v33;
    v23 = v34;
    v22(v32, v34, v33);
    sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    (*(v5 + 8))(v23, v24);
    v30(v18, v31);
    v3[6] = v36;
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 1954047348;
    v27 = v31;
    v26[1] = 0xE400000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v5 + 8))(v34, v33);
    v17(v35, v7);
    type metadata accessor for ShareSheetGenericMetadata();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *ShareSheetGenericMetadata.init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ShareSheetGenericMetadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetGenericMetadata.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetGenericMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetGenericMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EF07040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetGenericMetadata();
  v7 = swift_allocObject();
  result = ShareSheetGenericMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t StringBasedShelfOrderingId.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

GameStoreKit::StringBasedShelfOrderingId_optional __swiftcall StringBasedShelfOrderingId.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t sub_24EF07194()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF071E8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

void *sub_24EF07230@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t SearchChartsAndCategoriesPage.title.getter()
{
  v1 = *(v0 + qword_27F39CED8);

  return v1;
}

uint64_t *SearchChartsAndCategoriesPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v43 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v52 = sub_24F928388();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v45 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v40 - v14;
  type metadata accessor for PageTabs();
  v49 = a1;
  sub_24F928398();
  v17 = v7 + 16;
  v16 = *(v7 + 16);
  v50 = v6;
  v51 = a2;
  v44 = v16;
  v16(v11, a2, v6);
  sub_24EF0784C(&qword_27F232AC0, type metadata accessor for PageTabs, &protocol conformance descriptor for PageTabs);
  sub_24F929548();
  if (v53)
  {
    v43 = v7;
    v41 = v53;
    v18 = v49;
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v22 = v48;
    v40[1] = v17;
    v23 = v48 + 8;
    v24 = *(v48 + 8);
    v25 = v52;
    v24(v15, v52);
    v26 = (v3 + qword_27F39CED8);
    *v26 = v19;
    v26[1] = v21;
    sub_24F928398();
    v27 = sub_24F928258();
    LOBYTE(v21) = v28;
    v42 = v23;
    v24(v15, v25);
    v29 = v3 + qword_27F39CEE0;
    *v29 = v27;
    v29[8] = v21 & 1;
    *(v3 + qword_27F39CEE8) = v41;
    v30 = v45;
    v31 = v18;
    (*(v22 + 16))(v45, v18, v25);
    v32 = v46;
    v34 = v50;
    v33 = v51;
    v44(v46, v51, v50);
    v35 = v47;
    v36 = sub_24EA8B1BC(v30, v32);
    if (!v35)
    {
      v3 = v36;
    }

    (*(v43 + 8))(v33, v34);
    v24(v31, v52);
  }

  else
  {
    v37 = sub_24F92AC38();
    sub_24EF0784C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v38 = 0xD000000000000011;
    v38[1] = 0x800000024FA63C70;
    v38[2] = v43;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v7 + 8))(v51, v50);
    (*(v48 + 8))(v49, v52);
    type metadata accessor for SearchChartsAndCategoriesPage(0);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_24EF0784C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchChartsAndCategoriesPage(uint64_t a1)
{
  result = qword_27F233BA8;
  if (!qword_27F233BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24EF078E0()
{

  return result;
}

uint64_t SearchChartsAndCategoriesPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E857CC8(v0 + *(*v0 + 192));

  return v0;
}

uint64_t SearchChartsAndCategoriesPage.__deallocating_deinit()
{
  SearchChartsAndCategoriesPage.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EF07A84(uint64_t a1)
{
  *(a1 + 8) = sub_24EA909C8();
  result = sub_24EF07AB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EF07AB4()
{
  result = qword_27F233B98;
  if (!qword_27F233B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233B98);
  }

  return result;
}

unint64_t sub_24EF07B0C()
{
  result = qword_27F233BA0;
  if (!qword_27F233BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233BA0);
  }

  return result;
}

uint64_t sub_24EF07C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v49 = a2;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_24F91F4A8();
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v59[3] = type metadata accessor for ShareSheetAction(0);
  v59[0] = a1;

  sub_24F928A98();
  v19 = sub_24F929CF8();
  v21 = v20;
  v22 = type metadata accessor for FlowAction(0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 40;
  sub_24E60169C(v17, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v19;
  v28[1] = v21;
  sub_24E60169C(&v60, v58, &qword_27F235830, &qword_24F93B8C0);
  v29 = *(v9 + 16);
  v47 = v11;
  v29(v11, v14, v8);
  v30 = sub_24F929608();
  v31 = v7;
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(v58, &v52, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v53 + 1))
  {
    v55 = v52;
    v56 = v53;
    v57 = v54;
  }

  else
  {
    v33 = v44;
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v36 = v35;
    (*(v45 + 8))(v33, v46);
    v50 = v34;
    v51 = v36;
    sub_24F92C7F8();
    sub_24E601704(&v52, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v58, &qword_27F235830, &qword_24F93B8C0);
  v37 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v38 = v56;
  *v37 = v55;
  *(v37 + 16) = v38;
  *(v37 + 32) = v57;
  sub_24E65E0D4(v31, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  (*(v9 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v47, v8);

  FlowAction.setPageData(_:)(v59);

  (*(v9 + 8))(v14, v8);
  sub_24E601704(v17, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v59, &qword_27F2129B0, &unk_24F945320);
  *(&v61 + 1) = v22;
  v62 = sub_24EF082D0(&qword_27F216400, type metadata accessor for FlowAction);
  *&v60 = v23;
  type metadata accessor for ShareSheetActionImplementation(0, v48, v39, v40);

  swift_getWitnessTable();
  v41 = sub_24F1489C4(&v60, v49);

  __swift_destroy_boxed_opaque_existential_1(&v60);
  return v41;
}

uint64_t sub_24EF082D0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_24EF08334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v27 = a8;
  v28 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  sub_24EB035C0(a1, &v26 - v18);
  sub_24EB035C0(a2, &v19[*(v17 + 56)]);
  v29 = 1;
  if (qword_27F210C38 != -1)
  {
    swift_once();
  }

  v20 = qword_27F233C40;
  v21 = *MEMORY[0x277D768C8];
  v22 = *(MEMORY[0x277D768C8] + 8);
  v23 = *(MEMORY[0x277D768C8] + 16);
  v24 = *(MEMORY[0x277D768C8] + 24);

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x6972477974706D65, 0xE900000000000064, &v29, 0, v20, a3, a4, a5, a6, a7, v27, v28, v21, v22, v23, v24);
  return sub_24EB03630(v19);
}

__n128 sub_24EF084D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  if (qword_27F210640 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  *(v0 + 32) = xmmword_24F944DE0;
  *(v0 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 88) = _Q0;
  v6 = xmmword_27F22E220;
  *(v0 + 120) = xmmword_27F22E220;
  *(v0 + 104) = v6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  result = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 16);
  *(v0 + 160) = *MEMORY[0x277D768C8];
  *(v0 + 176) = v8;
  qword_27F233C40 = v0;
  return result;
}

uint64_t LegacyAppState.hasBeenPurchased.getter()
{
  v1 = *v0;
  v2 = v0[6];
  if (v2 >> 60)
  {
    if (v2 >> 60 == 8)
    {
      v3 = v0[4];
      v4 = v0[5] | v0[7];
      v5 = v0[3] | v0[2] | v0[1];
      v6 = v2 == 0x8000000000000000 && (v4 | v1 | v3 | v5) == 0;
      if (v6 || v2 == 0x8000000000000000 && v1 == 4 && !(v4 | v3 | v5))
      {
        return 0;
      }
    }
  }

  else if (*v0 == 1)
  {
    return 0;
  }

  return 1;
}

uint64_t LegacyAppState.isLocalApplication.getter()
{
  v1 = v0[3].u64[0];
  v2 = v1 >> 60;
  if (v1 >> 60 == 2 || v2 == 7)
  {
    return 1;
  }

  if (v2 == 8 && !v0[3].i64[1])
  {
    v5 = vorrq_s8(v0[1], v0[2]);
    v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v0->i64[1];
    v7 = v1 == 0x8000000000000000 && v0->i64[0] == 1;
    if (v7 && v6 == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t LegacyAppStateMachine.__allocating_init(adamId:initialState:initialBetaState:rules:appStateController:)(uint64_t *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v13 = *a1;
  v12 = a1[1];
  *(v11 + 160) = MEMORY[0x277D84F90];
  *(v11 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 192) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v14 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  v15 = sub_24F91F648();
  (*(*(v15 - 8) + 56))(v11 + v14, 1, 1, v15);
  v16 = (v11 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  *v16 = 0;
  v16[1] = 0;
  *(v11 + 16) = v13;
  *(v11 + 24) = v12;
  v17 = a2[1];
  *(v11 + 32) = *a2;
  *(v11 + 48) = v17;
  v18 = a2[3];
  *(v11 + 64) = a2[2];
  *(v11 + 80) = v18;
  v19 = a3[1];
  *(v11 + 96) = *a3;
  *(v11 + 112) = v19;
  v20 = a3[3];
  *(v11 + 128) = a3[2];
  *(v11 + 144) = v20;
  *(v11 + 168) = a4;
  swift_beginAccess();
  *(v11 + 184) = a6;
  swift_unknownObjectWeakAssign();
  v21 = qword_27F210C50;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24F92AAE8();
  __swift_project_value_buffer(v22, qword_27F39CF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  v28 = &type metadata for AdamId;
  v26 = v13;
  v27 = v12;
  sub_24F9283B8();
  sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v23 = LegacyAppState.dictionaryKey.getter();
  v28 = MEMORY[0x277D837D0];
  v26 = v23;
  v27 = v24;
  sub_24F928438();
  sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A598();
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_24EF08A14(_OWORD *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, _OWORD *, uint64_t))
{
  v4 = *v2;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v11[2] = a1[2];
  v11[3] = v6;
  v7 = v2[24];
  v8 = v4;
  [v7 lock];
  a2(&v10, v2, v11, v8);
  [v7 unlock];
  return v10;
}

uint64_t LegacyAppState.dictionaryKey.getter()
{
  v1 = v0[6];
  v2 = v1 >> 60;
  if ((v1 >> 60) <= 3)
  {
    v4 = 0x676E6974696177;
    v5 = 0x6C62617461647075;
    if (v2 != 2)
    {
      v5 = 0x64616F6C6E776F64;
    }

    if (v2)
    {
      v4 = 0x6573616863727570;
    }

    if (v2 <= 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {
      return 0x646573756170;
    }

    else
    {
      return 0x64616F6C6E776F64;
    }
  }

  else if (v2 == 6)
  {
    return 0x696C6C6174736E69;
  }

  else if (v2 == 7)
  {
    return 0x656C62616E65706FLL;
  }

  else
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[7];
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4] | v0[5];
    if (v1 != 0x8000000000000000 || v11 | v6 | v8 | v9 | v10 | v7)
    {
      v12 = v11 | v9 | v10 | v7;
      if (v8 || v1 != 0x8000000000000000 || v6 != 1 || v12)
      {
        if (v8 || v1 != 0x8000000000000000 || v6 != 2 || v12)
        {
          v13 = v8 == 0;
          v16 = v6 == 3 && v12 == 0 && v1 == 0x8000000000000000;
          if (v13 && v16)
          {
            return 0x7463697274736572;
          }

          else
          {
            return 0x6E776F6E6B6E75;
          }
        }

        else
        {
          return 0x6E4965746F6D6572;
        }
      }

      else
      {
        return 0x656C6C6174736E69;
      }
    }

    else
    {
      return 0x656C6261797562;
    }
  }
}

id LegacyAppStateMachine.currentState.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v6 = *(v1 + 80);
  v10 = *(v1 + 64);
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_24E8B9478(v9, &v8);
  return [v3 unlock];
}

BOOL LegacyAppState.isBuyable.getter()
{
  v1 = v0[6];
  result = 0;
  if (v1 >> 60 == 8)
  {
    v2 = v0[4];
    v3 = v0[5] | v0[7];
    v4 = v0[3] | v0[2] | v0[1];
    v5 = v1 == 0x8000000000000000 && (v3 | *v0 | v2 | v4) == 0;
    if (v5 || v1 == 0x8000000000000000 && *v0 == 4 && !(v3 | v2 | v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t InstallationType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x657461647075;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6E776F646572;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
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

double sub_24EF08ECC()
{
  qword_27F39CF28 = 0;
  result = 0.0;
  xmmword_27F39CEF0 = 0u;
  unk_27F39CF00 = 0u;
  xmmword_27F39CF10 = 0u;
  word_27F39CF20 = 0;
  return result;
}

void *LegacyAppState.AppInstallationDetails.progress.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.downloadingPhaseProgress.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.installingPhaseProgress.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.postProcessingPhaseProgress.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_24EF08FBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setMaximumUnitCount_];
  qword_27F233C48 = v0;
  return result;
}

uint64_t LegacyAppState.estimatedTimeRemaining.getter()
{
  if (v0[6] >> 60 != 5)
  {
    return 0;
  }

  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[4];
  if (v1)
  {
    v4 = v1;
    v5 = [v4 completedUnitCount];
    if (v5 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v6 = [v4 completedUnitCount];
  if (v6 < [v4 totalUnitCount])
  {
LABEL_10:
    v7 = sub_24F92BD18();

    return v7;
  }

LABEL_8:
  if (v2)
  {
    v4 = v2;
    goto LABEL_10;
  }

  return 0;
}

id LegacyAppState.estimatedTimeRemainingText.getter()
{
  if (v0[6] >> 60 != 5)
  {
    return 0;
  }

  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[4];
  if (v1)
  {
    v4 = v1;
    v5 = [v4 completedUnitCount];
    if (v5 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v4 = v3;
    v6 = [v4 completedUnitCount];
    if (v6 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (!v2)
  {
    return 0;
  }

  v4 = v2;
LABEL_10:
  sub_24F92BD18();
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  if (qword_27F210C48 != -1)
  {
    swift_once();
  }

  result = [qword_27F233C48 stringFromTimeInterval_];
  if (result)
  {
    v10 = result;
    v11 = sub_24F92B0D8();

    return v11;
  }

  return result;
}

GameStoreKit::InstallationType_optional __swiftcall InstallationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EF09358()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF0941C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EF094CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EF09598(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x657461647075;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6E776F646572;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
    v2 = 0xE800000000000000;
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

uint64_t PurchaseType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

GameStoreKit::OpenableDestination_optional __swiftcall OpenableDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t OpenableDestination.rawValue.getter()
{
  if (*v0)
  {
    return 0x736567617373656DLL;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_24EF09724(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736567617373656DLL;
  }

  else
  {
    v3 = 7368801;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x736567617373656DLL;
  }

  else
  {
    v5 = 7368801;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EF097C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF09840(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EF098A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF09920@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24EF09980(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x736567617373656DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EF099B8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39CF30);
  __swift_project_value_buffer(v4, qword_27F39CF30);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

double LegacyAppStateMachine.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

id LegacyAppStateMachine.startDownloadTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  swift_beginAccess();
  sub_24E60169C(v1 + v4, a1, &unk_27F22EC30, &qword_24F939880);
  return [v3 unlock];
}

uint64_t LegacyAppStateMachine.appStateController.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 184) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LegacyAppStateMachine.appStateController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 184);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EF09CDC;
}

void sub_24EF09CDC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 184) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t LegacyAppStateMachine.init(adamId:initialState:initialBetaState:rules:appStateController:)(uint64_t *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a1;
  v12 = a1[1];
  *(v7 + 160) = MEMORY[0x277D84F90];
  *(v7 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 192) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v14 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  v15 = sub_24F91F648();
  (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
  v16 = (v7 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + 16) = v13;
  *(v7 + 24) = v12;
  v17 = a2[1];
  *(v7 + 32) = *a2;
  *(v7 + 48) = v17;
  v18 = a2[3];
  *(v7 + 64) = a2[2];
  *(v7 + 80) = v18;
  v19 = a3[1];
  *(v7 + 96) = *a3;
  *(v7 + 112) = v19;
  v20 = a3[3];
  *(v7 + 128) = a3[2];
  *(v7 + 144) = v20;
  *(v7 + 168) = a4;
  swift_beginAccess();
  *(v7 + 184) = a6;
  swift_unknownObjectWeakAssign();
  v21 = qword_27F210C50;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24F92AAE8();
  __swift_project_value_buffer(v22, qword_27F39CF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  v28 = &type metadata for AdamId;
  v26 = v13;
  v27 = v12;
  sub_24F9283B8();
  sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v23 = LegacyAppState.dictionaryKey.getter();
  v28 = MEMORY[0x277D837D0];
  v26 = v23;
  v27 = v24;
  sub_24F928438();
  sub_24E601704(&v26, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A598();
  swift_unknownObjectRelease();

  return v7;
}

id LegacyAppStateMachine.currentStateIncludingBeta(_:)@<X0>(char a1@<W0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 192);
  [v5 lock];
  if ((a1 & 1) != 0 && (v6 = *(v2 + 112), v31[0] = *(v2 + 96), v31[1] = v6, v7 = *(v2 + 144), v9 = *(v2 + 96), v8 = *(v2 + 112), v31[2] = *(v2 + 128), v31[3] = v7, v27 = v9, v28 = v8, v10 = *(v2 + 144), v29 = *(v2 + 128), v30 = v10, v22 = 4, v23 = 0u, v24 = 0u, v25 = 0, v26 = xmmword_24F966510, sub_24E8B9478(v31, &v21), v11 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v27, &v22), v32 = v27, v33 = v28, v34 = v29, v35 = v30, sub_24E88D2AC(&v32), (v11 & 1) == 0))
  {
    v17 = *(v2 + 112);
    v27 = *(v2 + 96);
    v28 = v17;
    v19 = *(v2 + 144);
    v29 = *(v2 + 128);
    v18 = v29;
    v30 = v19;
    *a2 = v27;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v19;
    v15 = &v27;
    v16 = &v22;
  }

  else
  {
    v12 = *(v2 + 48);
    v32 = *(v2 + 32);
    v33 = v12;
    v14 = *(v2 + 80);
    v34 = *(v2 + 64);
    v13 = v34;
    v35 = v14;
    *a2 = v32;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    v15 = &v32;
    v16 = v31;
  }

  sub_24E8B9478(v15, v16);
  return [v5 unlock];
}

uint64_t sub_24EF0A168@<X0>(char a1@<W0>, _OWORD *a2@<X1>, __int128 *a3@<X8>)
{
  if ((a1 & 1) != 0 && (v5 = a2[7], v30[0] = a2[6], v30[1] = v5, v6 = a2[9], v8 = a2[6], v7 = a2[7], v30[2] = a2[8], v30[3] = v6, v26 = v8, v27 = v7, v9 = a2[9], v28 = a2[8], v29 = v9, v21 = 4, v22 = 0u, v23 = 0u, v24 = 0, v25 = xmmword_24F966510, sub_24E8B9478(v30, &v20), v10 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v26, &v21), v31 = v26, v32 = v27, v33 = v28, v34 = v29, sub_24E88D2AC(&v31), (v10 & 1) == 0))
  {
    v16 = a2[7];
    v26 = a2[6];
    v27 = v16;
    v18 = a2[9];
    v28 = a2[8];
    v17 = v28;
    v29 = v18;
    *a3 = v26;
    a3[1] = v16;
    a3[2] = v17;
    a3[3] = v18;
    v14 = &v26;
    v15 = &v21;
  }

  else
  {
    v11 = a2[3];
    v31 = a2[2];
    v32 = v11;
    v13 = a2[5];
    v33 = a2[4];
    v12 = v33;
    v34 = v13;
    *a3 = v31;
    a3[1] = v11;
    a3[2] = v12;
    a3[3] = v13;
    v14 = &v31;
    v15 = v30;
  }

  return sub_24E8B9478(v14, v15);
}

BOOL LegacyAppStateMachine.hasCurrentBetaState.getter()
{
  v1 = *(v0 + 192);
  [v1 lock];
  v2 = *(v0 + 112);
  v18[0] = *(v0 + 96);
  v18[1] = v2;
  v3 = *(v0 + 144);
  v5 = *(v0 + 96);
  v4 = *(v0 + 112);
  v18[2] = *(v0 + 128);
  v18[3] = v3;
  v14 = v5;
  v15 = v4;
  v6 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = v6;
  v9 = 4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = xmmword_24F966510;
  sub_24E8B9478(v18, v19);
  v7 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v14, &v9);
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  sub_24E88D2AC(v19);
  [v1 unlock];
  return (v7 & 1) == 0;
}

uint64_t LegacyAppStateMachine.redownloadBuyParams.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t LegacyAppStateMachine.redownloadBuyParams.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24EF0A45C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v13 = *(a1 + 48);
  v89[0] = *(a1 + 32);
  v89[1] = v13;
  v14 = *(a1 + 80);
  v16 = *(a1 + 32);
  v15 = *(a1 + 48);
  v89[2] = *(a1 + 64);
  v89[3] = v14;
  v85 = v16;
  v86 = v15;
  v17 = *(a1 + 80);
  v87 = *(a1 + 64);
  v88 = v17;
  v18 = a2[1];
  v81 = *a2;
  v82 = v18;
  v19 = a2[3];
  v83 = a2[2];
  v84 = v19;
  sub_24E8B9478(v89, v90);
  v20 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v85, &v81);
  v90[0] = v85;
  v90[1] = v86;
  v90[2] = v87;
  v90[3] = v88;
  result = sub_24E88D2AC(v90);
  if (v20)
  {
LABEL_14:
    *a3 = 1;
    return result;
  }

  v66 = v12;
  v70 = a3;
  v91 = v3;
  v22 = *(a1 + 168);
  v23 = LegacyAppState.dictionaryKey.getter();
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v25 = sub_24E76D644(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_7:
    v65 = v9;
    if (qword_27F210C50 != -1)
    {
      swift_once();
    }

    v69 = sub_24F92AAE8();
    v68 = __swift_project_value_buffer(v69, qword_27F39CF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    v67 = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v40 = *(a1 + 16);
    v39 = *(a1 + 24);
    *(&v86 + 1) = &type metadata for AdamId;
    *&v85 = v40;
    *(&v85 + 1) = v39;

    sub_24F9283B8();
    sub_24E601704(&v85, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v41 = LegacyAppState.dictionaryKey.getter();
    *(&v86 + 1) = MEMORY[0x277D837D0];
    *&v85 = v41;
    *(&v85 + 1) = v42;
    sub_24F928438();
    sub_24E601704(&v85, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v43 = LegacyAppState.dictionaryKey.getter();
    *(&v86 + 1) = MEMORY[0x277D837D0];
    *&v85 = v43;
    *(&v85 + 1) = v44;
    sub_24F928438();
    sub_24E601704(&v85, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A598();

    v45 = *(a1 + 48);
    v85 = *(a1 + 32);
    v86 = v45;
    v46 = *(a1 + 80);
    v87 = *(a1 + 64);
    v88 = v46;
    v47 = a2[1];
    *(a1 + 32) = *a2;
    *(a1 + 48) = v47;
    v48 = a2[3];
    *(a1 + 64) = a2[2];
    *(a1 + 80) = v48;
    sub_24E8B9478(a2, &v81);
    sub_24E88D2AC(&v85);
    if (*(a2 + 6) >> 60 == 5)
    {
      v49 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
      swift_beginAccess();
      v50 = v65;
      sub_24E60169C(a1 + v49, v65, &unk_27F22EC30, &qword_24F939880);
      v51 = sub_24F91F648();
      v52 = *(v51 - 8);
      v53 = (*(v52 + 48))(v50, 1, v51);
      sub_24E601704(v50, &unk_27F22EC30, &qword_24F939880);
      a3 = v70;
      if (v53 == 1)
      {
        v54 = v66;
        sub_24F91F638();
        (*(v52 + 56))(v54, 0, 1, v51);
        swift_beginAccess();
        sub_24E728A70(v54, a1 + v49);
        swift_endAccess();
      }
    }

    else
    {
      v55 = sub_24F91F648();
      v56 = v66;
      (*(*(v55 - 8) + 56))(v66, 1, 1, v55);
      v57 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
      swift_beginAccess();
      sub_24E728A70(v56, a1 + v57);
      swift_endAccess();
      a3 = v70;
    }

    result = sub_24EF0ACE8();
    goto LABEL_14;
  }

  sub_24E615E00(*(v22 + 56) + 40 * v25, v77);
  sub_24E612E28(v77, v78);
  v28 = v79;
  v29 = v80;
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v33 = *(a1 + 32);
  v32 = *(a1 + 48);
  v83 = *(a1 + 64);
  v84 = v31;
  v73 = v33;
  v74 = v32;
  v34 = *(a1 + 80);
  v75 = *(a1 + 64);
  v76 = v34;
  v35 = a2[1];
  v72[0] = *a2;
  v72[1] = v35;
  v36 = a2[3];
  v72[2] = a2[2];
  v72[3] = v36;
  v37 = *(v29 + 8);
  sub_24E8B9478(&v81, &v71);
  v38 = v37(&v73, v72, v28, v29);
  v85 = v73;
  v86 = v74;
  v87 = v75;
  v88 = v76;
  sub_24E88D2AC(&v85);
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
    goto LABEL_7;
  }

  if (qword_27F210C50 != -1)
  {
    swift_once();
  }

  v69 = sub_24F92AAE8();
  v68 = __swift_project_value_buffer(v69, qword_27F39CF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9AF330;
  v59 = *(a1 + 16);
  v58 = *(a1 + 24);
  *(&v74 + 1) = &type metadata for AdamId;
  *&v73 = v59;
  *(&v73 + 1) = v58;

  sub_24F9283B8();
  sub_24E601704(&v73, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v60 = LegacyAppState.dictionaryKey.getter();
  *(&v74 + 1) = MEMORY[0x277D837D0];
  *&v73 = v60;
  *(&v73 + 1) = v61;
  sub_24F928438();
  sub_24E601704(&v73, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v62 = LegacyAppState.dictionaryKey.getter();
  *(&v74 + 1) = MEMORY[0x277D837D0];
  *&v73 = v62;
  *(&v73 + 1) = v63;
  sub_24F928438();
  sub_24E601704(&v73, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  __swift_project_boxed_opaque_existential_1(v78, v79);
  DynamicType = swift_getDynamicType();
  *(&v74 + 1) = swift_getMetatypeMetadata();
  *&v73 = DynamicType;
  sub_24F928438();
  sub_24E601704(&v73, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  *v70 = 0;
  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_24EF0ACE8()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v9 = sub_24F92BEF8();
  aBlock[4] = sub_24EF0C9EC;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_91;
  v10 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EF0AF68@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(a1 + 112);
  v33[0] = *(a1 + 96);
  v33[1] = v7;
  v8 = *(a1 + 144);
  v10 = *(a1 + 96);
  v9 = *(a1 + 112);
  v33[2] = *(a1 + 128);
  v33[3] = v8;
  v29 = v10;
  v30 = v9;
  v11 = *(a1 + 144);
  v31 = *(a1 + 128);
  v32 = v11;
  v12 = a2[1];
  v28[0] = *a2;
  v28[1] = v12;
  v13 = a2[3];
  v28[2] = a2[2];
  v28[3] = v13;
  sub_24E8B9478(v33, v34);
  v14 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v29, v28);
  v34[0] = v29;
  v34[1] = v30;
  v34[2] = v31;
  v34[3] = v32;
  result = sub_24E88D2AC(v34);
  if (v14)
  {
    *a3 = 1;
  }

  else
  {
    v35 = v3;
    if (qword_27F210C50 != -1)
    {
      swift_once();
    }

    v27 = sub_24F92AAE8();
    __swift_project_value_buffer(v27, qword_27F39CF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    *(&v30 + 1) = &type metadata for AdamId;
    *&v29 = v17;
    *(&v29 + 1) = v16;

    sub_24F9283B8();
    sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v18 = LegacyAppState.dictionaryKey.getter();
    v19 = MEMORY[0x277D837D0];
    *(&v30 + 1) = MEMORY[0x277D837D0];
    *&v29 = v18;
    *(&v29 + 1) = v20;
    sub_24F928438();
    sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v21 = LegacyAppState.dictionaryKey.getter();
    *(&v30 + 1) = v19;
    *&v29 = v21;
    *(&v29 + 1) = v22;
    sub_24F928438();
    sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A598();

    v23 = *(a1 + 112);
    v29 = *(a1 + 96);
    v30 = v23;
    v24 = *(a1 + 144);
    v31 = *(a1 + 128);
    v32 = v24;
    v25 = a2[1];
    *(a1 + 96) = *a2;
    *(a1 + 112) = v25;
    v26 = a2[3];
    *(a1 + 128) = a2[2];
    *(a1 + 144) = v26;
    sub_24E8B9478(a2, v28);
    sub_24E88D2AC(&v29);
    result = sub_24EF0ACE8();
    *a3 = 1;
  }

  return result;
}

id LegacyAppStateMachine.addStateTransitionObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 192);
  [v6 lock];
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_24EF0C3F8(v13, v12);
  swift_beginAccess();
  v7 = *(v3 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 160) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24E616834(0, v7[2] + 1, 1, v7);
    *(v3 + 160) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24E616834((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_24EF0C430(v12, &v7[3 * v10 + 4]);
  *(v3 + 160) = v7;
  swift_endAccess();
  sub_24EF0C468(v13);
  return [v6 unlock];
}

void LegacyAppStateMachine.removeStateTransitionActions(for:)(uint64_t a1)
{
  v2 = v1;
  v14 = *(v1 + 192);
  [v14 lock];
  swift_beginAccess();
  v4 = *(v1 + 160);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      sub_24EF0C3F8(v7, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v10 = Strong, swift_unknownObjectRelease(), v10 == a1))
      {
        sub_24EF0C468(v16);
      }

      else
      {
        sub_24EF0C430(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457B5C(0, *(v8 + 16) + 1, 1);
          v8 = v17;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_24F457B5C((v12 > 1), v13 + 1, 1);
          v8 = v17;
        }

        *(v8 + 16) = v13 + 1;
        sub_24EF0C430(v15, v8 + 24 * v13 + 32);
      }

      ++v6;
      v7 += 24;
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    *(v2 + 160) = v8;

    [v14 unlock];
  }
}

id sub_24EF0B53C(uint64_t a1)
{
  v2 = *(a1 + 192);
  [v2 lock];
  sub_24EF0B5C8(a1);

  return [v2 unlock];
}

void sub_24EF0B5C8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_24EF0C3F8(v4, v14);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v15(a1, &protocol witness table for LegacyAppStateMachine);
      }

      sub_24EF0C468(v14);
      v4 += 24;
      --v3;
    }

    while (v3);

    v5 = *(a1 + 160);
    v6 = *(v5 + 16);

    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      v9 = MEMORY[0x277D84F90];
      while (v7 < *(v5 + 16))
      {
        sub_24EF0C3F8(v8, v14);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_24EF0C430(v14, v13);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F457B5C(0, *(v9 + 16) + 1, 1);
            v9 = v16;
          }

          v12 = *(v9 + 16);
          v11 = *(v9 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_24F457B5C((v11 > 1), v12 + 1, 1);
            v9 = v16;
          }

          *(v9 + 16) = v12 + 1;
          sub_24EF0C430(v13, v9 + 24 * v12 + 32);
        }

        else
        {
          sub_24EF0C468(v14);
        }

        ++v7;
        v8 += 24;
        if (v6 == v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return;
    }
  }

  else
  {
  }

  v9 = MEMORY[0x277D84F90];
LABEL_20:

  *(a1 + 160) = v9;
}

uint64_t LegacyAppStateMachine.deinit()
{

  sub_24EC36E00(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_24EC36E00(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_24E883630(v0 + 176);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime, &unk_27F22EC30, &qword_24F939880);

  return v0;
}

uint64_t LegacyAppStateMachine.__deallocating_deinit()
{
  LegacyAppStateMachine.deinit();

  return swift_deallocClassInstance();
}

id sub_24EF0B8B4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v6 = *(v1 + 80);
  v10 = *(v1 + 64);
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_24E8B9478(v9, &v8);
  return [v3 unlock];
}

uint64_t sub_24EF0B930()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_24EF0B988@<X0>(char a1@<W0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 192);
  [v5 lock];
  sub_24EF0A168(a1, v2, a2);

  return [v5 unlock];
}

id sub_24EF0BA20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  swift_beginAccess();
  sub_24E60169C(v1 + v4, a1, &unk_27F22EC30, &qword_24F939880);
  return [v3 unlock];
}

uint64_t sub_24EF0BAE8(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = *(v1 + 192);
  [v4 lock];
  sub_24EF0A45C(v1, v7, &v6);
  [v4 unlock];
  return v6;
}

BOOL _s12GameStoreKit14LegacyAppStateO0E19InstallationDetailsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    v28 = *(a2 + 48);
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    v26 = *(a2 + 49);
    v27 = *(a1 + 49);
    v24 = *(a2 + 56);
    v25 = *(a1 + 56);
    sub_24E69A5C4(0, &qword_27F22E980, 0x277CCAC48);
    v11 = v6;
    v12 = v2;
    v13 = sub_24F92C408();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v28 = *(a2 + 48);
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    v26 = *(a2 + 49);
    v27 = *(a1 + 49);
    v24 = *(a2 + 56);
    v25 = *(a1 + 56);
    if (v6)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_24E69A5C4(0, &qword_27F22E980, 0x277CCAC48);
    v15 = v7;
    v16 = v3;
    v17 = sub_24F92C408();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_24E69A5C4(0, &qword_27F22E980, 0x277CCAC48);
    v18 = v9;
    v19 = v5;
    v20 = sub_24F92C408();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v4)
  {
    result = 0;
    if (v8)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (!v8)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F22E980, 0x277CCAC48);
  v21 = v8;
  v22 = v4;
  v23 = sub_24F92C408();

  result = 0;
  if ((v23 & 1) == 0)
  {
    return result;
  }

LABEL_25:
  if (v30 == v10 && ((v29 ^ v28) & 1) == 0 && ((v27 ^ v26) & 1) == 0)
  {
    return v25 == v24;
  }

  return result;
}

uint64_t _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, _OWORD *a2)
{
  v2 = a2[1];
  *v42 = *a2;
  *&v42[16] = v2;
  v3 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  *&v42[32] = a2[2];
  v43 = v3;
  v6 = a1[1];
  v38 = *a1;
  v39 = v6;
  v44[0] = v38;
  v44[1] = v6;
  v7 = a1[3];
  v40 = a1[2];
  v41 = v7;
  v44[2] = v40;
  v44[3] = v7;
  v44[4] = v5;
  v44[5] = v4;
  v8 = a2[3];
  v9 = v38 | ((*(&v38 + 1) | ((*(&v38 + 5) | (BYTE7(v38) << 16)) << 32)) << 8);
  v10 = v7 >> 60;
  v44[6] = a2[2];
  v44[7] = v8;
  if ((v7 >> 60) > 3)
  {
    if (v10 > 5)
    {
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          if (v43 >> 60 == 7)
          {
            if (v38)
            {
              v11 = 0x736567617373656DLL;
            }

            else
            {
              v11 = 7368801;
            }

            if (v38)
            {
              v12 = 0xE800000000000000;
            }

            else
            {
              v12 = 0xE300000000000000;
            }

            if (v42[0])
            {
              v13 = 0x736567617373656DLL;
            }

            else
            {
              v13 = 7368801;
            }

            if (v42[0])
            {
              v14 = 0xE800000000000000;
            }

            else
            {
              v14 = 0xE300000000000000;
            }

            if (v11 == v13 && v12 == v14)
            {
              sub_24E8B9478(v42, &v33);
              sub_24E8B9478(&v38, &v33);

LABEL_58:
              sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
              v15 = sub_24F92C408();
              goto LABEL_59;
            }

            v26 = sub_24F92CE08();
            sub_24E8B9478(v42, &v33);
            sub_24E8B9478(&v38, &v33);

            if (v26)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          v25 = *(&v38 + 1);
          goto LABEL_55;
        }

        v20 = v39 | *(&v38 + 1) | *(&v39 + 1);
        if (v7 != 0x8000000000000000 || v20 | v40 | *(&v40 + 1) | *(&v41 + 1) | v9)
        {
          v24 = v20 | v40 | *(&v40 + 1);
          if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 1 || v24)
          {
            if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 2 || v24)
            {
              if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 3 || v24)
              {
                if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 4)
                {
                  goto LABEL_55;
                }
              }

              else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 3)
              {
                goto LABEL_55;
              }
            }

            else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 2)
            {
              goto LABEL_55;
            }
          }

          else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 1)
          {
            goto LABEL_55;
          }

          v23 = *&v42[8];
          v27 = vorrq_s8(*&v42[16], *&v42[32]);
          v22 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
        }

        else
        {
          if (v43 >> 60 != 8 || v43 != 0x8000000000000000)
          {
            goto LABEL_55;
          }

          v21 = vorrq_s8(*&v42[8], *&v42[24]);
          v22 = (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *&v42[40]);
          v23 = *(&v43 + 1) | *v42;
        }

        if (!(*&v22 | v23))
        {
LABEL_82:
          sub_24E601704(v44, &qword_27F233C80, &qword_24F9AF8D8);
          v19 = 1;
          return v19 & 1;
        }

LABEL_55:
        sub_24E8B9478(v42, &v33);
LABEL_56:
        sub_24E601704(v44, &qword_27F233C80, &qword_24F9AF8D8);
        v19 = 0;
        return v19 & 1;
      }

      v16 = v43;
      if (v43 >> 60 == 6)
      {
        goto LABEL_33;
      }

LABEL_31:
      v17 = a1[1];
      v33 = *a1;
      v34 = v17;
      v18 = a1[3];
      v35 = a1[2];
      v37 = *(&v18 + 1);
      v36 = v18 & 0xFFFFFFFFFFFFFFFLL;
      sub_24E60169C(&v33, v30, &qword_27F233C88, &qword_24F9AF8E0);
      goto LABEL_55;
    }

    if (v10 == 4)
    {
      v16 = v43;
      if (v43 >> 60 != 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = v43;
      if (v43 >> 60 != 5)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    LOBYTE(v33) = v38;
    *(&v33 + 1) = *(&v38 + 1);
    BYTE7(v33) = (*(&v38 + 1) | ((*(&v38 + 5) | (BYTE7(v38) << 16)) << 32)) >> 48;
    *(&v33 + 5) = *(&v38 + 5);
    *(&v33 + 1) = *(&v38 + 1);
    v34 = v39;
    v35 = v40;
    v36 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v37 = *(&v41 + 1);
    v30[0] = *v42;
    v30[1] = *&v42[16];
    v30[2] = *&v42[32];
    v31 = v16 & 0xFFFFFFFFFFFFFFFLL;
    v32 = *(&v43 + 1);
    sub_24E8B9478(v42, v29);
    sub_24E8B9478(&v38, v29);
    sub_24E8B9478(v42, v29);
    sub_24E8B9478(&v38, v29);
    v19 = _s12GameStoreKit14LegacyAppStateO0E19InstallationDetailsV2eeoiySbAE_AEtFZ_0(&v33, v30);
    sub_24E601704(v44, &qword_27F233C80, &qword_24F9AF8D8);
    sub_24E88D2AC(v42);
    sub_24E88D2AC(&v38);
    return v19 & 1;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v43 >> 60 == 2)
      {
LABEL_27:
        if (__PAIR128__(*(&v38 + 1), v9) != *v42)
        {
          v19 = sub_24F92CE08();
          sub_24E8B9478(v42, &v33);
          sub_24E8B9478(&v38, &v33);
LABEL_60:
          sub_24E601704(v44, &qword_27F233C80, &qword_24F9AF8D8);
          return v19 & 1;
        }

        sub_24E8B9478(v42, &v33);
        sub_24E8B9478(&v38, &v33);
        goto LABEL_82;
      }
    }

    else if (v43 >> 60 == 3)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  if (!v10)
  {
    if (!(v43 >> 60))
    {
      v15 = sub_24F0CF7C0(v38, v42[0]);
LABEL_59:
      v19 = v15;
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  if (v43 >> 60 != 1)
  {
    goto LABEL_55;
  }

  sub_24E601704(v44, &qword_27F233C80, &qword_24F9AF8D8);
  v19 = v38 ^ v42[0] ^ 1;
  return v19 & 1;
}

unint64_t sub_24EF0C49C()
{
  result = qword_27F233C58;
  if (!qword_27F233C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C58);
  }

  return result;
}

unint64_t sub_24EF0C4F4()
{
  result = qword_27F233C60;
  if (!qword_27F233C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C60);
  }

  return result;
}

unint64_t sub_24EF0C54C()
{
  result = qword_27F233C68;
  if (!qword_27F233C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C68);
  }

  return result;
}

uint64_t sub_24EF0C5A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 184);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EF0C5F0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
  return swift_unknownObjectWeakAssign();
}

unint64_t get_enum_tag_for_layout_string_12GameStoreKit14LegacyAppStateO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_24EF0C664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0xFFFFFF80 | (*(a1 + 48) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_24EF0C6B8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF0C730(uint64_t result, uint64_t a2)
{
  if (a2 < 8)
  {
    *(result + 48) = *(result + 48) & 0x101 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 8);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = xmmword_24F966510;
  }

  return result;
}

uint64_t sub_24EF0C784(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24EF0C7E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for LegacyAppStateMachine(uint64_t a1)
{
  result = qword_27F233C70;
  if (!qword_27F233C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF0C8D8(uint64_t a1)
{
  sub_24E728940(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 ProductReviewLayout.init(metrics:titleText:ratingView:dateText:authorText:bodyText:responseTitleText:responseDateText:responseBodyText:badgeText:actionViews:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12)
{
  memcpy((a9 + 368), __src, 0x260uLL);
  sub_24E612C80(a2, a9);
  sub_24E612C80(a3, a9 + 40);
  sub_24E612C80(a4, a9 + 80);
  sub_24E612C80(a5, a9 + 120);
  sub_24E612C80(a6, a9 + 200);
  sub_24E612C80(a7, a9 + 240);
  sub_24E612C80(a8, a9 + 280);
  sub_24E612C80(a10, a9 + 320);
  result = *a11;
  v21 = *(a11 + 16);
  *(a9 + 160) = *a11;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a11 + 32);
  *(a9 + 360) = a12;
  return result;
}

uint64_t ProductReviewLayout.Metrics.init(titleSpace:ratingSpace:dateSpace:authorSpace:bodyFirstLineSpace:bodySubsequentLineSpace:bodyEstimatedNumberOfLines:responseTitleSpace:responseDateSpace:responseBodyFirstLineSpace:horizontalInterViewSpace:horizontalEdgeSpace:bottomEdgeSpace:badgeSpace:actionsSpace:actionsInterItemSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11, __int128 *a12, __int128 *a13, __int128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a9 + 600) = 0;
  *(a9 + 568) = 0u;
  *(a9 + 584) = 0u;
  *(a9 + 536) = 0u;
  *(a9 + 552) = 0u;
  *(a9 + 504) = 0u;
  *(a9 + 520) = 0u;
  *(a9 + 488) = 0u;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  *(a9 + 240) = a7;
  sub_24E612C80(a8, a9 + 248);
  sub_24E612C80(a10, a9 + 288);
  sub_24E612C80(a11, a9 + 328);
  sub_24E612C80(a12, a9 + 368);
  sub_24E612C80(a13, a9 + 408);
  sub_24E612C80(a14, a9 + 448);
  sub_24EA63A70(a15, a9 + 488);
  sub_24EA63A70(a16, a9 + 528);

  return sub_24EA63A70(a17, a9 + 568);
}

uint64_t ProductReviewLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ProductReviewLayout.Metrics.ratingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t ProductReviewLayout.Metrics.dateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t ProductReviewLayout.Metrics.authorSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t ProductReviewLayout.Metrics.bodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t ProductReviewLayout.Metrics.bodySubsequentLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ProductReviewLayout.Metrics.responseTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 248));

  return sub_24E612C80(a1, v1 + 248);
}

uint64_t ProductReviewLayout.Metrics.responseDateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 288));

  return sub_24E612C80(a1, v1 + 288);
}

uint64_t ProductReviewLayout.Metrics.responseBodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 328));

  return sub_24E612C80(a1, v1 + 328);
}

uint64_t ProductReviewLayout.Metrics.horizontalInterViewSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 368));

  return sub_24E612C80(a1, v1 + 368);
}

uint64_t ProductReviewLayout.Metrics.horizontalEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 408));

  return sub_24E612C80(a1, v1 + 408);
}

uint64_t ProductReviewLayout.Metrics.bottomEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 448));

  return sub_24E612C80(a1, v1 + 448);
}

double ProductReviewLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v162 = sub_24F9225E8();
  v160 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v159 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_24F922618();
  v161 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v158 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9229A8();
  v166 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v152 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v157 = &v145 - v12;
  MEMORY[0x28223BE20](v13);
  v148 = &v145 - v14;
  MEMORY[0x28223BE20](v15);
  v146 = &v145 - v16;
  MEMORY[0x28223BE20](v17);
  v168 = &v145 - v18;
  MEMORY[0x28223BE20](v19);
  v167 = &v145 - v20;
  v169 = sub_24F9229F8();
  v171 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v156 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v147 = &v145 - v23;
  MEMORY[0x28223BE20](v24);
  v155 = &v145 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v145 - v27;
  v29 = sub_24F92CDB8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3[100];
  __swift_project_boxed_opaque_existential_1(v4 + 97, v33);
  sub_24E8ED7D8(v33);
  v170 = a1;
  sub_24F9223A8();
  v34 = *(v30 + 8);
  v149 = v32;
  v151 = v29;
  v150 = v30 + 8;
  v34(v32, v29);
  sub_24E60169C((v4 + 20), &v179, &unk_27F22B200, &unk_24F9674C0);
  v35 = MEMORY[0x277D226F0];
  v165 = v9;
  v145 = v34;
  if (v180)
  {
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    v36 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if ((v36 & 1) == 0)
    {
      v37 = 1;
LABEL_7:
      v40 = v4[3];
      v41 = v4[4];
      v42 = __swift_project_boxed_opaque_existential_1(v4, v40);
      v180 = v40;
      v181 = *(*(v41 + 8) + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v179);
      (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v42, v40);
      sub_24E615E00((v4 + 46), &v175);
      v173 = sub_24F922418();
      v174 = v35;
      __swift_allocate_boxed_opaque_existential_1(v172);
      sub_24F922408();
      sub_24F9229E8();
      v44 = sub_24E617A00(0, 1, 1, MEMORY[0x277D84F90]);
      v46 = v44[2];
      v45 = v44[3];
      v47 = v166;
      if (v46 >= v45 >> 1)
      {
        v44 = sub_24E617A00((v45 > 1), v46 + 1, 1, v44);
      }

      v48 = v169;
      v180 = v169;
      v181 = MEMORY[0x277D22900];
      v49 = __swift_allocate_boxed_opaque_existential_1(&v179);
      v50 = v171;
      (*(v171 + 16))(v49, v28, v48);
      v44[2] = v46 + 1;
      sub_24E612C80(&v179, &v44[5 * v46 + 4]);
      (*(v50 + 8))(v28, v48);
      v9 = v165;
      v51 = v168;
      goto LABEL_13;
    }
  }

  else
  {
    sub_24E601704(&v179, &unk_27F22B200, &unk_24F9674C0);
  }

  v38 = [v170 traitCollection];
  v39 = sub_24F92BF98();

  if (v39)
  {
    v37 = 0;
    goto LABEL_7;
  }

  v52 = v4[95];
  __swift_project_boxed_opaque_existential_1(v4 + 92, v52);
  v53 = v149;
  sub_24E8ED7D8(v52);
  sub_24F9223A8();
  v34(v53, v151);
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F922288();
  v55 = v54;
  v57 = v56;
  __swift_project_boxed_opaque_existential_1(v4 + 46, v4[49]);
  sub_24F9223C8();
  v180 = MEMORY[0x277D85048];
  v181 = MEMORY[0x277D225F8];
  *&v179 = v55 - v57 + v58;
  v59 = v167;
  sub_24F9229B8();
  v44 = sub_24E617A00(0, 1, 1, MEMORY[0x277D84F90]);
  v61 = v44[2];
  v60 = v44[3];
  if (v61 >= v60 >> 1)
  {
    v44 = sub_24E617A00((v60 > 1), v61 + 1, 1, v44);
  }

  v47 = v166;
  v51 = v168;
  v180 = v9;
  v181 = MEMORY[0x277D228E0];
  v62 = __swift_allocate_boxed_opaque_existential_1(&v179);
  (*(v47 + 16))(v62, v59, v9);
  v44[2] = v61 + 1;
  sub_24E612C80(&v179, &v44[5 * v61 + 4]);
  (*(v47 + 8))(v59, v9);
  v37 = 0;
LABEL_13:
  sub_24E615E00((v4 + 51), &v179);
  sub_24F9229B8();
  v64 = v44[2];
  v63 = v44[3];
  if (v64 >= v63 >> 1)
  {
    v44 = sub_24E617A00((v63 > 1), v64 + 1, 1, v44);
  }

  v65 = MEMORY[0x277D226F0];
  v180 = v9;
  v181 = MEMORY[0x277D228E0];
  v66 = __swift_allocate_boxed_opaque_existential_1(&v179);
  v67 = *(v47 + 16);
  v164 = v47 + 16;
  v168 = v67;
  (v67)(v66, v51, v9);
  v44[2] = v64 + 1;
  sub_24E612C80(&v179, &v44[5 * v64 + 4]);
  v69 = *(v47 + 8);
  v68 = v47 + 8;
  v167 = v69;
  (v69)(v51, v9);
  v178 = v44;
  if (v37)
  {
    sub_24E60169C((v4 + 107), &v179, &qword_27F22F780, &qword_24F968620);
    if (v180)
    {
      sub_24E612C80(&v179, &v175);
    }

    else
    {
      sub_24E615E00((v4 + 61), &v175);
      if (v180)
      {
        sub_24E601704(&v179, &qword_27F22F780, &qword_24F968620);
      }
    }

    v180 = v9;
    v181 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(&v179);
    sub_24F9229B8();
    v178 = v44;
    v71 = v44[2];
    v70 = v44[3];
    if (v71 >= v70 >> 1)
    {
      v44 = sub_24E617A00((v70 > 1), v71 + 1, 1, v44);
      v178 = v44;
    }

    v72 = v180;
    v73 = v181;
    v74 = __swift_mutable_project_boxed_opaque_existential_1(&v179, v180);
    v75 = MEMORY[0x28223BE20](v74);
    v77 = &v145 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v77, v75);
    sub_24ED43E20(v71, v77, &v178, v72, v73);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    v178 = v44;
  }

  v79 = MEMORY[0x277D22900];
  v80 = [v170 traitCollection];
  v81 = sub_24F92BF98();

  v82 = v155;
  if (v81)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_24F93A400;
    sub_24E615E00((v4 + 56), &v179);
    *(v83 + 56) = v9;
    v84 = MEMORY[0x277D228E0];
    *(v83 + 64) = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1((v83 + 32));
    sub_24F9229B8();
    sub_24E615E00((v4 + 61), &v179);
    *(v83 + 96) = v9;
    *(v83 + 104) = v84;
    __swift_allocate_boxed_opaque_existential_1((v83 + 72));
    sub_24F9229B8();
    sub_24EA0ACCC(v83);
    v44 = v178;
  }

  v85 = v4[28];
  v86 = v4[29];
  v87 = __swift_project_boxed_opaque_existential_1(v4 + 25, v85);
  v180 = v85;
  v181 = *(*(v86 + 8) + 8);
  v88 = __swift_allocate_boxed_opaque_existential_1(&v179);
  (*(*(v85 - 8) + 16))(v88, v87, v85);
  sub_24E615E00((v4 + 66), &v175);
  v154 = sub_24F922418();
  v173 = v154;
  v174 = v65;
  __swift_allocate_boxed_opaque_existential_1(v172);
  sub_24F922408();
  sub_24F9229E8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_24E617A00(0, v44[2] + 1, 1, v44);
  }

  v90 = v44[2];
  v89 = v44[3];
  if (v90 >= v89 >> 1)
  {
    v44 = sub_24E617A00((v89 > 1), v90 + 1, 1, v44);
  }

  v91 = v169;
  v180 = v169;
  v181 = v79;
  v92 = __swift_allocate_boxed_opaque_existential_1(&v179);
  v93 = v171;
  v153 = *(v171 + 16);
  v153(v92, v82, v91);
  v44[2] = v90 + 1;
  sub_24E612C80(&v179, &v44[5 * v90 + 4]);
  v94 = *(v93 + 8);
  v171 = v93 + 8;
  v155 = v94;
  (v94)(v82, v91);
  __swift_project_boxed_opaque_existential_1(v4 + 40, v4[43]);
  if (sub_24F922238())
  {
    v95 = v165;
  }

  else
  {
    v166 = v68;
    v96 = v170;
    v97 = [v170 traitCollection];
    v98 = sub_24F92BF98();

    v95 = v165;
    if (v98)
    {
      v99 = v4[33];
      v100 = v4[34];
      v101 = __swift_project_boxed_opaque_existential_1(v4 + 30, v99);
      v180 = v99;
      v181 = *(*(v100 + 8) + 8);
      v102 = __swift_allocate_boxed_opaque_existential_1(&v179);
      (*(*(v99 - 8) + 16))(v102, v101, v99);
      sub_24E615E00((v4 + 77), &v175);
      v173 = v154;
      v174 = v65;
      __swift_allocate_boxed_opaque_existential_1(v172);
      sub_24F922408();
      sub_24F9229E8();
      v104 = v44[2];
      v103 = v44[3];
      if (v104 >= v103 >> 1)
      {
        v44 = sub_24E617A00((v103 > 1), v104 + 1, 1, v44);
      }

      v105 = v170;
      v106 = v169;
      v180 = v169;
      v181 = MEMORY[0x277D22900];
      v107 = __swift_allocate_boxed_opaque_existential_1(&v179);
      v108 = v147;
      v153(v107, v147, v106);
      v44[2] = v104 + 1;
      sub_24E612C80(&v179, &v44[5 * v104 + 4]);
      (v155)(v108, v106);
    }

    else
    {
      v109 = v4[95];
      __swift_project_boxed_opaque_existential_1(v4 + 92, v109);
      v110 = v149;
      sub_24E8ED7D8(v109);
      sub_24F9223A8();
      v145(v110, v151);
      __swift_project_boxed_opaque_existential_1(v4 + 35, v4[38]);
      sub_24F922288();
      __swift_project_boxed_opaque_existential_1(v4 + 30, v4[33]);
      sub_24F922288();
      v112 = v111;
      v114 = v113;
      __swift_project_boxed_opaque_existential_1(v4 + 77, v4[80]);
      sub_24F9223C8();
      v180 = MEMORY[0x277D85048];
      v181 = MEMORY[0x277D225F8];
      *&v179 = v112 - v114 + v115;
      v116 = v146;
      sub_24F9229B8();
      v118 = v44[2];
      v117 = v44[3];
      v105 = v96;
      if (v118 >= v117 >> 1)
      {
        v44 = sub_24E617A00((v117 > 1), v118 + 1, 1, v44);
      }

      v180 = v95;
      v181 = MEMORY[0x277D228E0];
      v119 = __swift_allocate_boxed_opaque_existential_1(&v179);
      (v168)(v119, v116, v95);
      v44[2] = v118 + 1;
      sub_24E612C80(&v179, &v44[5 * v118 + 4]);
      (v167)(v116, v95);
    }

    v120 = [v105 traitCollection];
    v121 = sub_24F92BF98();

    if (v121)
    {
      sub_24E615E00((v4 + 82), &v179);
      sub_24F9229B8();
      v123 = v44[2];
      v122 = v44[3];
      if (v123 >= v122 >> 1)
      {
        v44 = sub_24E617A00((v122 > 1), v123 + 1, 1, v44);
      }

      v180 = v95;
      v181 = MEMORY[0x277D228E0];
      v124 = __swift_allocate_boxed_opaque_existential_1(&v179);
      v125 = v148;
      (v168)(v124, v148, v95);
      v44[2] = v123 + 1;
      sub_24E612C80(&v179, &v44[5 * v123 + 4]);
      (v167)(v125, v95);
    }

    v126 = v4[43];
    v127 = v4[44];
    v128 = __swift_project_boxed_opaque_existential_1(v4 + 40, v126);
    v180 = v126;
    v181 = *(*(v127 + 8) + 8);
    v129 = __swift_allocate_boxed_opaque_existential_1(&v179);
    (*(*(v126 - 8) + 16))(v129, v128, v126);
    sub_24E615E00((v4 + 87), &v175);
    v173 = v154;
    v174 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v172);
    sub_24F922408();
    sub_24F9229E8();
    v131 = v44[2];
    v130 = v44[3];
    if (v131 >= v130 >> 1)
    {
      v44 = sub_24E617A00((v130 > 1), v131 + 1, 1, v44);
    }

    v132 = v169;
    v180 = v169;
    v181 = MEMORY[0x277D22900];
    v133 = __swift_allocate_boxed_opaque_existential_1(&v179);
    v134 = v156;
    v153(v133, v156, v132);
    v44[2] = v131 + 1;
    sub_24E612C80(&v179, &v44[5 * v131 + 4]);
    (v155)(v134, v132);
  }

  sub_24E615E00((v4 + 102), &v179);
  v135 = v157;
  sub_24F9229B8();
  v137 = v44[2];
  v136 = v44[3];
  if (v137 >= v136 >> 1)
  {
    v44 = sub_24E617A00((v136 > 1), v137 + 1, 1, v44);
  }

  v180 = v95;
  v181 = MEMORY[0x277D228E0];
  v138 = __swift_allocate_boxed_opaque_existential_1(&v179);
  (v168)(v138, v135, v95);
  v44[2] = v137 + 1;
  sub_24E612C80(&v179, &v44[5 * v137 + 4]);
  (v167)(v135, v95);
  sub_24E60169C((v4 + 112), &v175, &qword_27F22F780, &qword_24F968620);
  if (v176)
  {
    sub_24E612C80(&v175, &v179);
    sub_24E615E00(&v179, &v175);
    v139 = v152;
    sub_24F9229B8();
    v141 = v44[2];
    v140 = v44[3];
    if (v141 >= v140 >> 1)
    {
      v44 = sub_24E617A00((v140 > 1), v141 + 1, 1, v44);
    }

    __swift_destroy_boxed_opaque_existential_1(&v179);
    v176 = v95;
    v177 = MEMORY[0x277D228E0];
    v142 = __swift_allocate_boxed_opaque_existential_1(&v175);
    (v168)(v142, v139, v95);
    v44[2] = v141 + 1;
    sub_24E612C80(&v175, &v44[5 * v141 + 4]);
    (v167)(v139, v95);
  }

  else
  {
    sub_24E601704(&v175, &qword_27F22F780, &qword_24F968620);
  }

  (*(v160 + 104))(v159, *MEMORY[0x277D22788], v162);
  v143 = v158;
  sub_24F9225F8();
  sub_24F9225D8();
  (*(v161 + 8))(v143, v163);
  return a2;
}

uint64_t ProductReviewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v41 = a2;
  v40 = sub_24F922C28();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F9221D8();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F92CDB8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v6 + 800);
  __swift_project_boxed_opaque_existential_1((v7 + 776), v22);
  sub_24E8ED7D8(v22);
  sub_24F9223A8();
  (*(v19 + 8))(v21, v18);
  sub_24F92C1C8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [a1 traitCollection];
  v32 = sub_24F92BF98();

  if (v32)
  {
    sub_24EF0EF8C(a1, v17);
  }

  else
  {
    sub_24EF100FC(a1, v17, v24, v26, v28, v30);
  }

  sub_24F9221A8();
  sub_24F9221A8();
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  CGRectGetWidth(v42);
  sub_24F922158();
  sub_24F9221C8();
  sub_24F922BE8();
  v33 = *(v37 + 8);
  v34 = v40;
  v33(v14, v40);
  sub_24F9221C8();
  sub_24F922BB8();
  v33(v14, v34);
  sub_24F922138();
  return (*(v38 + 8))(v17, v39);
}

uint64_t sub_24EF0EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v108 = a2;
  v104 = sub_24F922868();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24F922888();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_24F922848();
  v9 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_24F9227F8();
  v124 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F922838();
  v13 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
  v117 = *(v9 + 72);
  v95 = v9;
  v17 = *(v9 + 80);
  v18 = (v17 + 32) & ~v17;
  v101 = 2 * v117;
  v99 = v17;
  v100 = v16;
  v19 = swift_allocObject();
  v98 = v19;
  *(v19 + 16) = xmmword_24F93A400;
  v113 = v18;
  v115 = (v19 + v18);
  v20 = v6;
  v21 = v6[3];
  v22 = v20[4];
  v97 = v20;
  v23 = __swift_project_boxed_opaque_existential_1(v20, v21);
  v132 = v21;
  v133 = *(v22 + 8);
  v24 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v21 - 8) + 16))(v24, v23, v21);
  v123 = *MEMORY[0x277D22848];
  v116 = *(v13 + 104);
  v25.n128_f64[0] = v116(v15);
  *&v128 = MEMORY[0x277D84F90];
  v122 = sub_24E8EF510(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  v120 = sub_24E8EF568();
  v27 = v111;
  sub_24F92C6A8();
  sub_24F922818();
  v29 = v124 + 8;
  v28 = *(v124 + 8);
  v28(v12, v27);
  v30 = *(v13 + 8);
  v31 = v112;
  v30(v15, v112);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v118 = v13 + 104;
  (v116)(v15, v123, v31);
  v131 = MEMORY[0x277D84F90];
  v114 = v26;
  v32 = v27;
  v33 = v97;
  sub_24F92C6A8();
  sub_24F922818();
  v110 = v12;
  v34 = v12;
  v35 = v98;
  v124 = v29;
  v121 = v28;
  v28(v34, v32);
  v36 = v112;
  v119 = v13 + 8;
  v115 = v30;
  (v30)(v15);
  v134 = v35;
  sub_24E60169C((v33 + 20), &v128, &unk_27F22B200, &unk_24F9674C0);
  if (!v129)
  {
    sub_24E601704(&v128, &unk_27F22B200, &unk_24F9674C0);
    v37 = v36;
    goto LABEL_5;
  }

  sub_24E612C80(&v128, &v131);
  __swift_project_boxed_opaque_existential_1(&v131, v132);
  v37 = v36;
  if (sub_24F922238())
  {
    __swift_destroy_boxed_opaque_existential_1(&v131);
LABEL_5:
    v38 = v113;
    goto LABEL_13;
  }

  v39 = v132;
  v40 = v133;
  v41 = __swift_project_boxed_opaque_existential_1(&v131, v132);
  v129 = v39;
  v130 = *(v40 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v128);
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v41, v39);
  sub_24E60169C((v33 + 107), &v125, &qword_27F22F780, &qword_24F968620);
  v38 = v113;
  if (v126)
  {
    sub_24E612C80(&v125, &v127);
    v43 = v94;
  }

  else
  {
    sub_24E615E00((v33 + 61), &v127);
    v43 = v94;
    if (v126)
    {
      sub_24E601704(&v125, &qword_27F22F780, &qword_24F968620);
    }
  }

  (v116)(v15, v123, v36);
  *&v125 = MEMORY[0x277D84F90];
  v44 = v110;
  v45 = v111;
  sub_24F92C6A8();
  sub_24F922818();
  v121(v44, v45);
  v115(v15, v37);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  __swift_destroy_boxed_opaque_existential_1(&v128);
  v47 = v35[2];
  v46 = v35[3];
  if (v47 >= v46 >> 1)
  {
    v35 = sub_24E6179D8((v46 > 1), v47 + 1, 1, v35);
  }

  v35[2] = v47 + 1;
  (*(v95 + 32))(v35 + v38 + v47 * v117, v43, v96);
  v134 = v35;
  __swift_destroy_boxed_opaque_existential_1(&v131);
LABEL_13:
  v48 = swift_allocObject();
  v100 = v48;
  *(v48 + 16) = xmmword_24F93A070;
  v113 = v48 + v38;
  v49 = v33[13];
  v50 = v33[14];
  v51 = __swift_project_boxed_opaque_existential_1(v33 + 10, v49);
  v132 = v49;
  v133 = *(v50 + 8);
  v52 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v49 - 8) + 16))(v52, v51, v49);
  v53 = v15;
  v54 = v15;
  v55 = v37;
  v56 = v37;
  v57 = v116;
  (v116)(v54, v123, v56);
  *&v128 = MEMORY[0x277D84F90];
  v58 = v110;
  v59 = v111;
  sub_24F92C6A8();
  sub_24F922818();
  v60 = v53;
  v121(v58, v59);
  v115(v53, v55);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v61 = v33[18];
  v62 = v33[19];
  v63 = __swift_project_boxed_opaque_existential_1(v33 + 15, v61);
  v132 = v61;
  v133 = *(v62 + 8);
  v64 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v61 - 8) + 16))(v64, v63, v61);
  (v57)(v60, v123, v55);
  *&v128 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v121(v58, v59);
  v115(v60, v55);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v65 = v33[28];
  v66 = v33[29];
  v67 = __swift_project_boxed_opaque_existential_1(v33 + 25, v65);
  v132 = v65;
  v133 = *(v66 + 8);
  v68 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v65 - 8) + 16))(v68, v67, v65);
  v69 = v123;
  v70 = v112;
  (v116)(v60, v123, v112);
  *&v128 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v121(v58, v59);
  v115(v60, v70);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v101 = 3 * v117;
  v71 = v33[33];
  v72 = v33[34];
  v73 = v70;
  v74 = __swift_project_boxed_opaque_existential_1(v33 + 30, v71);
  v132 = v71;
  v133 = *(v72 + 8);
  v75 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v71 - 8) + 16))(v75, v74, v71);
  v76 = v73;
  v77 = v73;
  v78 = v116;
  (v116)(v60, v69, v77);
  *&v128 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v121(v58, v59);
  v115(v60, v76);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v101 = 4 * v117;
  v79 = v33[38];
  v80 = v33[39];
  v81 = __swift_project_boxed_opaque_existential_1(v33 + 35, v79);
  v132 = v79;
  v133 = *(v80 + 8);
  v82 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v79 - 8) + 16))(v82, v81, v79);
  v83 = v112;
  (v78)(v60, v123, v112);
  *&v128 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v84 = v101;
  sub_24F922818();
  v121(v58, v59);
  v85 = v83;
  v86 = v115;
  v115(v60, v83);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v117 += v84;
  v87 = v33[43];
  v88 = v33[44];
  v89 = __swift_project_boxed_opaque_existential_1(v33 + 40, v87);
  v132 = v87;
  v133 = *(v88 + 8);
  v90 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v87 - 8) + 16))(v90, v89, v87);
  (v116)(v60, v123, v85);
  *&v128 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v121(v58, v59);
  v86(v60, v85);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  sub_24EA0B808(v100);
  (*(v102 + 104))(v105, *MEMORY[0x277D22868], v104);
  v132 = sub_24F922418();
  v133 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v131);
  sub_24F922408();
  v91 = v103;
  sub_24F922878();
  sub_24F9227D8();
  return (*(v106 + 8))(v91, v107);
}

void sub_24EF100FC(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v231 = a6;
  v222 = COERCE_DOUBLE(sub_24F922C28());
  v215 = *(*&v222 - 8);
  MEMORY[0x28223BE20](*&v222);
  v219 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_24F9221D8();
  v217 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v205 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  *&v228 = &v200 - v16;
  MEMORY[0x28223BE20](v17);
  *&MinX = &v200 - v18;
  MEMORY[0x28223BE20](v19);
  *&v207 = &v200 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v200 - v22;
  v220 = sub_24F922B68();
  v24 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v202 = &v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v213 = &v200 - v27;
  v216 = sub_24F922B78();
  v214 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v204 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v225 = &v200 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v200 - v32;
  MEMORY[0x28223BE20](v34);
  v203 = &v200 - v35;
  MEMORY[0x28223BE20](v36);
  v210 = (&v200 - v37);
  v223 = sub_24F92CDB8();
  v38 = *(v223 - 8);
  MEMORY[0x28223BE20](v223 - 8);
  v212 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v229 = &v200 - v41;
  sub_24E60169C(v7 + 160, &v238, &unk_27F22B200, &unk_24F9674C0);
  v42 = MEMORY[0x277D84688];
  v43 = MEMORY[0x277D84680];
  v44 = MEMORY[0x277D229E0];
  v224 = a5;
  v208 = a2;
  v227 = *&v38;
  v206 = v24;
  v221 = a1;
  v230 = a4;
  if (!v239)
  {
    sub_24E601704(&v238, &unk_27F22B200, &unk_24F9674C0);
    goto LABEL_5;
  }

  v201 = v23;
  sub_24E612C80(&v238, &v241);
  __swift_project_boxed_opaque_existential_1(&v241, v242);
  if (sub_24F922238())
  {
    __swift_destroy_boxed_opaque_existential_1(&v241);
LABEL_5:
    v45 = *(v7 + 24);
    v46 = *(v7 + 32);
    v47 = __swift_project_boxed_opaque_existential_1(v7, v45);
    v242 = v45;
    v243 = *(v46 + 8);
    v48 = __swift_allocate_boxed_opaque_existential_1(&v241);
    (*(*(v45 - 8) + 16))(v48, v47, v45);
    v49 = *(v7 + 104);
    v50 = *(v7 + 112);
    v51 = __swift_project_boxed_opaque_existential_1((v7 + 80), v49);
    v239 = v49;
    v240 = *(v50 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v238);
    (*(*(v49 - 8) + 16))(boxed_opaque_existential_1, v51, v49);
    v53 = *v44;
    v210 = *(v24 + 104);
    v54 = v213;
    v210(v213, v53, v220);
    sub_24E615E00(v7 + 368, &v235);
    sub_24E615E00(v7 + 736, v234);
    v209 = v33;
    sub_24F922B48();
    v55 = MinX;
    sub_24F922B58();
    sub_24F9221A8();
    sub_24F922158();
    v56 = v219;
    sub_24F9221C8();
    sub_24F922BB8();
    v203 = *(v215 + 8);
    (v203)(v56, *&v222);
    sub_24E615E00(v7 + 40, &v241);
    v57 = *(v7 + 144);
    v58 = *(v7 + 152);
    v59 = __swift_project_boxed_opaque_existential_1((v7 + 120), v57);
    v239 = v57;
    v240 = *(v58 + 8);
    v60 = __swift_allocate_boxed_opaque_existential_1(&v238);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    v210(v54, *MEMORY[0x277D229D8], v220);
    sub_24E615E00(v7 + 408, &v235);
    sub_24E615E00(v7 + 736, v234);
    v61 = v225;
    sub_24F922B48();
    v62 = v228;
    sub_24F922B58();
    sub_24F9221C8();
    sub_24F922BE8();
    v207 = v63;
    v64 = v222;
    v65 = v203;
    (v203)(v56, *&v222);
    sub_24F9221A8();
    sub_24F922158();
    sub_24F9221C8();
    sub_24F922BB8();
    v65(v56, *&v64);
    v66 = *(v217 + 8);
    v67 = v62;
    v68 = v218;
    v66(*&v67, v218);
    v69 = *(v214 + 8);
    v70 = v61;
    v71 = v216;
    v69(v70, v216);
    v66(*&v55, v68);
    v69(v209, v71);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  v72 = v231;
  sub_24F922288();
  v225 = v73;
  v75 = v74;
  v244.origin.x = a3;
  v244.origin.y = a4;
  v244.size.width = a5;
  v244.size.height = v72;
  MinX = CGRectGetMinX(v244);
  v245.origin.x = a3;
  v245.origin.y = a4;
  v245.size.width = a5;
  v245.size.height = v72;
  CGRectGetMinY(v245);
  __swift_project_boxed_opaque_existential_1((v7 + 368), *(v7 + 392));
  v228 = v75;
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F92C1D8();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = *v42;
  v85 = *(v38 + 104);
  v86 = v229;
  v87 = v223;
  v85(v229, v84, v223);
  v88 = *v43;
  v89 = v212;
  v85(v212, v88, v87);
  CGPoint.rounded(_:)(v86, v77, v79);
  CGSize.rounded(_:)(v89, v81, v83);
  v90 = *(v38 + 8);
  v90(v89, v87);
  v90(v86, v87);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F922218();
  CGRectGetMaxY(v246);
  sub_24E615E00(v7 + 40, &v238);
  v91 = *(v7 + 104);
  v92 = *(v7 + 112);
  v93 = __swift_project_boxed_opaque_existential_1((v7 + 80), v91);
  v236 = v91;
  v237 = *(v92 + 8);
  v94 = __swift_allocate_boxed_opaque_existential_1(&v235);
  (*(*(v91 - 8) + 16))(v94, v93, v91);
  v95 = *MEMORY[0x277D229D8];
  v96 = *(v206 + 104);
  v97 = v220;
  v96(v213, v95, v220);
  sub_24E615E00(v7 + 408, v234);
  sub_24E615E00(v7 + 736, &v232);
  sub_24F922B48();
  sub_24F922B58();
  sub_24F9221A8();
  sub_24F922158();
  v98 = v219;
  sub_24F9221C8();
  sub_24F922BB8();
  v99 = *(v215 + 8);
  v99(v98, *&v222);
  v100 = v242;
  v101 = v243;
  v102 = __swift_project_boxed_opaque_existential_1(&v241, v242);
  v239 = v100;
  v240 = *(v101 + 8);
  v103 = __swift_allocate_boxed_opaque_existential_1(&v238);
  (*(*(v100 - 8) + 16))(v103, v102, v100);
  v104 = *(v7 + 144);
  v105 = *(v7 + 152);
  v106 = __swift_project_boxed_opaque_existential_1((v7 + 120), v104);
  v236 = v104;
  v237 = *(v105 + 8);
  v107 = __swift_allocate_boxed_opaque_existential_1(&v235);
  (*(*(v104 - 8) + 16))(v107, v106, v104);
  v96(v202, v95, v97);
  sub_24E60169C(v7 + 856, &v232, &qword_27F22F780, &qword_24F968620);
  if (v233)
  {
    sub_24E612C80(&v232, v234);
    v108 = v207;
    v109 = v203;
  }

  else
  {
    sub_24E615E00(v7 + 488, v234);
    v108 = v207;
    v109 = v203;
    if (v233)
    {
      sub_24E601704(&v232, &qword_27F22F780, &qword_24F968620);
    }
  }

  sub_24E615E00(v7 + 736, &v232);
  sub_24F922B48();
  v110 = v231;
  v111 = a4;
  v112 = v224;
  sub_24F922B58();
  v247.origin.x = a3;
  v247.origin.y = v111;
  v247.size.width = v112;
  v247.size.height = v110;
  v207 = v228 + CGRectGetMinY(v247);
  sub_24F9221A8();
  sub_24F922158();
  v113 = v219;
  sub_24F9221C8();
  sub_24F922BB8();
  v99(v113, *&v222);
  v114 = *(v217 + 8);
  v115 = v218;
  v114(*&v108, v218);
  v116 = *(v214 + 8);
  v117 = v216;
  v116(v109, v216);
  v114(v201, v115);
  v116(v210, v117);
  __swift_destroy_boxed_opaque_existential_1(&v241);
LABEL_11:
  v210 = *(v7 + 64);
  v228 = *(v7 + 72);
  __swift_project_boxed_opaque_existential_1((v7 + 40), v210);
  __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
  sub_24F922218();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  LODWORD(MinX) = *MEMORY[0x277D84688];
  v126 = *&v227;
  v127 = *&v227 + 104;
  v128 = *(*&v227 + 104);
  v129 = v229;
  v130 = v223;
  v128(v229);
  LODWORD(v225) = *MEMORY[0x277D84680];
  v131 = v212;
  v128(v212);
  CGPoint.rounded(_:)(v129, v119, v121);
  CGSize.rounded(_:)(v131, v123, v125);
  v132 = *(v126 + 8);
  v132(v131, v130);
  v132(v129, v130);
  sub_24F922228();
  v227 = *(v7 + 144);
  v210 = *(v7 + 152);
  v209 = __swift_project_boxed_opaque_existential_1((v7 + 120), *&v227);
  __swift_project_boxed_opaque_existential_1((v7 + 120), *(v7 + 144));
  sub_24F922218();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  (v128)(v129, LODWORD(MinX), v130);
  (v128)(v131, v225, v130);
  CGPoint.rounded(_:)(v129, v134, v136);
  CGSize.rounded(_:)(v131, v138, v140);
  v141 = v131;
  v142 = v126 + 8;
  v132(v141, v130);
  v228 = *&v132;
  v132(v129, v130);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  v143 = v224;
  v144 = v231;
  sub_24F922288();
  v146 = v145;
  __swift_project_boxed_opaque_existential_1((v7 + 528), *(v7 + 552));
  v227 = *&v146;
  sub_24F9223C8();
  v248.origin.x = a3;
  v147 = a3;
  v248.origin.y = v230;
  v248.size.width = v143;
  v248.size.height = v144;
  CGRectGetMinX(v248);
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
  LOBYTE(v130) = sub_24F922238();
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_24F922218();
  MaxY = CGRectGetMaxY(v249);
  v211 = a3;
  if (v130)
  {
    v149 = v230;
  }

  else
  {
    v150 = *(v7 + 264);
    v151 = *(v7 + 272);
    v152 = __swift_project_boxed_opaque_existential_1((v7 + 240), v150);
    v242 = v150;
    v243 = *(v151 + 8);
    v153 = __swift_allocate_boxed_opaque_existential_1(&v241);
    (*(*(v150 - 8) + 16))(v153, v152, v150);
    v154 = *(v7 + 304);
    v155 = *(v7 + 312);
    v156 = __swift_project_boxed_opaque_existential_1((v7 + 280), v154);
    v239 = v154;
    v240 = *(v155 + 8);
    v157 = __swift_allocate_boxed_opaque_existential_1(&v238);
    (*(*(v154 - 8) + 16))(v157, v156, v154);
    (*(v206 + 104))(v213, *MEMORY[0x277D229E0], v220);
    sub_24E615E00(v7 + 616, &v235);
    sub_24E615E00(v7 + 736, v234);
    v158 = v204;
    sub_24F922B48();
    v159 = v230;
    v160 = v205;
    v161 = v224;
    sub_24F922B58();
    __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
    sub_24F922288();
    v220 = v162;
    v227 = *&v163;
    v164 = v147;
    v166 = v165;
    sub_24F9221A8();
    sub_24F922158();
    v167 = v219;
    sub_24F9221C8();
    sub_24F922BB8();
    (*(v215 + 8))(v167, COERCE_DOUBLE(*&v222));
    __swift_project_boxed_opaque_existential_1((v7 + 696), *(v7 + 720));
    v227 = *&v166;
    sub_24F9223C8();
    v250.origin.x = v164;
    v250.origin.y = v159;
    v250.size.width = v161;
    v250.size.height = v231;
    CGRectGetMinX(v250);
    __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
    v149 = v159;
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
    sub_24F922218();
    MaxY = CGRectGetMaxY(v251);
    (*(v217 + 8))(v160, v218);
    v168 = v158;
    v142 = v126 + 8;
    v129 = v229;
    (*(v214 + 8))(v168, v216);
  }

  sub_24E60169C(v7 + 896, &v238, &qword_27F22F780, &qword_24F968620);
  v169 = v224;
  v170 = v227;
  if (!v239)
  {
    sub_24E601704(&v238, &qword_27F22F780, &qword_24F968620);
    v172 = v211;
LABEL_26:
    v255.origin.x = v172;
    v255.origin.y = v149;
    v255.size.width = v169;
    v198 = v231;
    v255.size.height = v231;
    CGRectGetMinY(v255);
    v199 = *(v7 + 840);
    __swift_project_boxed_opaque_existential_1((v7 + 816), v199);
    sub_24E8ED7D8(v199);
    sub_24F9223A8();
    (*&v228)(v129, v223);
    v256.origin.x = v172;
    v256.origin.y = v149;
    v256.size.width = v169;
    v256.size.height = v198;
    CGRectGetWidth(v256);
    sub_24F922138();
    return;
  }

  sub_24E612C80(&v238, &v241);
  sub_24E60169C(v7 + 936, &v238, &qword_27F22F780, &qword_24F968620);
  v171 = v239;
  v172 = v211;
  if (!v239)
  {
    sub_24E601704(&v238, &qword_27F22F780, &qword_24F968620);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(&v238, v239);
  sub_24E8ED7D8(v171);
  v173 = sub_24F9223A8();
  (*&v228)(v129, v223);
  __swift_destroy_boxed_opaque_existential_1(&v238);
  v174 = *(v7 + 360);
  if (!v174)
  {
    goto LABEL_25;
  }

  if (!*(v174 + 16))
  {
    goto LABEL_25;
  }

  v252.origin.x = v172;
  v252.origin.y = v149;
  v252.size.width = v169;
  v252.size.height = v231;
  v175 = CGRectGetMinX(v252);
  v176 = *(v174 + 16);
  if (!v176)
  {
    goto LABEL_25;
  }

  v177 = v175;
  v216 = v7;
  v222 = MaxY - v170;
  v218 = v174;
  v178 = v174 + 32;
  v220 = v127;
  v179 = v223;
  v227 = *&v142;
  v219 = v128;
  v217 = v176;
  v180 = v176;
  v181 = v212;
  do
  {
    sub_24E615E00(v178, &v238);
    __swift_project_boxed_opaque_existential_1(&v238, v239);
    sub_24F922288();
    v182 = v173;
    v184 = v183;
    v186 = v185;
    __swift_project_boxed_opaque_existential_1(&v241, v242);
    sub_24F9223C8();
    v188 = v222 + v187;
    v189 = v229;
    v190 = v219;
    (v219)(v229, LODWORD(MinX), v179);
    v190(v181, v225, v179);
    v191 = CGPoint.rounded(_:)(v189, v177, v188);
    v193 = v192;
    v194 = CGSize.rounded(_:)(v181, v184, v186);
    v196 = v195;
    v197 = v228;
    (*&v228)(v181, v179);
    (*&v197)(v189, v179);
    __swift_project_boxed_opaque_existential_1(&v238, v239);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v238);
    v253.origin.x = v191;
    v253.origin.y = v193;
    v253.size.width = v194;
    v173 = v182;
    v253.size.height = v196;
    v177 = floor(v182 + CGRectGetMaxX(v253));
    v178 += 40;
    --v180;
  }

  while (v180);
  v149 = v230;
  if (v217 <= *(v218 + 16))
  {
    sub_24E615E00(v218 + 40 * v217 - 8, &v238);
    __swift_project_boxed_opaque_existential_1(&v238, v239);
    sub_24F922218();
    CGRectGetMaxY(v254);
    __swift_destroy_boxed_opaque_existential_1(&v238);
    v169 = v224;
    v7 = v216;
    v129 = v229;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(&v241);
    goto LABEL_26;
  }

  __break(1u);
}