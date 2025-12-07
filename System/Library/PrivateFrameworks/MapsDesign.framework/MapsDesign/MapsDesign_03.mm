id sub_213E13270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_213E150C8(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_213E15130(0, &unk_281182428, 0x277D75720);
    v3 = sub_213F4F3F0();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_213DE36FC(v10, &unk_27C8F8BC0, &qword_213F563F0);

  return v6;
}

uint64_t sub_213E13364(char *a1)
{
  v3 = &a1[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 3);
  v29 = *(v3 + 2);
  v30 = v5;
  v31 = *(v3 + 8);
  v28[0] = *v3;
  v28[1] = v4;
  v34 = v29;
  v35 = v5;
  v32 = v28[0];
  v33 = v4;
  *&v36 = v31;
  *(&v36 + 1) = a1;
  v6 = *v3;
  if (v3[48] == 1)
  {
    if ((v6 & 1) == 0)
    {
      v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showFavoritedToast] = 1;
      sub_213E14704(v28, &v23);
      v14 = a1;
      sub_213E105E4();
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      *&v25 = sub_213E14E14;
      *(&v25 + 1) = v16;
      *&v23 = MEMORY[0x277D85DD0];
      *(&v23 + 1) = 1107296256;
      *&v24 = sub_213E13658;
      *(&v24 + 1) = &block_descriptor;
      v10 = _Block_copy(&v23);
      v17 = v1;

      v12 = [v15 scheduledTimerWithTimeInterval:0 repeats:v10 block:2.0];
      goto LABEL_8;
    }

LABEL_6:
    sub_213E14704(v28, &v23);
    v13 = a1;
    goto LABEL_9;
  }

  if (v3[48] || (v6 & 1) != 0)
  {
    goto LABEL_6;
  }

  v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showAddedToast] = 1;
  sub_213E14704(v28, &v23);
  v7 = a1;
  sub_213E105E4();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *&v25 = sub_213E14E5C;
  *(&v25 + 1) = v9;
  *&v23 = MEMORY[0x277D85DD0];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_213E13658;
  *(&v24 + 1) = &block_descriptor_52;
  v10 = _Block_copy(&v23);
  v11 = v1;

  v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:2.0];
LABEL_8:
  v18 = v12;
  _Block_release(v10);

LABEL_9:
  v19 = &v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect];
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {
    v21 = *(v19 + 1);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v23 = v32;
    v24 = v33;

    v20(&v23);
    sub_213DD7558(v20, v21);
  }

  return sub_213E14DE4(&v32);
}

void sub_213E13658(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_213E13728(char *a1)
{
  v3 = &a1[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_model];
  swift_beginAccess();
  v4 = *(v3 + 3);
  v15 = *(v3 + 2);
  v16 = v4;
  v17 = *(v3 + 8);
  v5 = *(v3 + 1);
  v14[0] = *v3;
  v14[1] = v5;
  v20 = v15;
  v21 = v4;
  v18 = v14[0];
  v19 = v5;
  v6 = v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect;
  *&v22 = v17;
  *(&v22 + 1) = a1;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v13[2] = v20;
    v13[3] = v21;
    v13[4] = v22;
    v13[0] = v18;
    v13[1] = v19;
    sub_213E14704(v14, v12);
    v9 = a1;
    sub_213DD74C4(v7, v8);
    v7(v13);
    sub_213DD7558(v7, v8);
  }

  else
  {
    sub_213E14704(v14, v13);
    v10 = a1;
  }

  return sub_213E14DE4(&v18);
}

id _s10MapsDesign20ActionBarToastButtonC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

__n128 ActionBarWrapper.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a2 + 41) = result;
  return result;
}

char *ActionBarWrapper.makeUIView(context:)()
{
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v10[0] = v0[2];
  *(v10 + 9) = *(v0 + 41);
  v2 = objc_allocWithZone(type metadata accessor for ActionBar());
  sub_213E147B0(v9, &v8);
  v3 = ActionBar.init(model:)(v0);
  v4 = (v3 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_213E13AEC;
  v4[1] = 0;
  sub_213DD7558(v5, v6);
  return v3;
}

uint64_t *sub_213E13AEC(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  v6 = result[5];
  v7 = *(result + 48);
  if (*(result + 48))
  {
    if (v7 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_213F55C80;
      *(v12 + 56) = &type metadata for ActionBarButtonViewModel.ActionBarButtonType;
      v10 = swift_allocObject();
      *(v12 + 32) = v10;
      *(v10 + 16) = v1;
      *(v10 + 24) = v2;
      *(v10 + 32) = v3;
      *(v10 + 40) = v4;
      *(v10 + 48) = v5;
      *(v10 + 56) = v6;
      v11 = 1;
    }

    else
    {
      if (v7 != 5)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_213F55C80;
      *(v8 + 56) = &type metadata for ActionBarButtonViewModel.ActionBarButtonType;
      v9 = swift_allocObject();
      *(v8 + 32) = v9;
      *(v9 + 16) = v1;
      *(v9 + 24) = v2;
      *(v9 + 32) = v3;
      *(v9 + 40) = v4;
      *(v9 + 48) = v5;
      *(v9 + 56) = v6;
      *(v9 + 64) = 5;

      sub_213F4F860();

      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_213F51DE0;
      *(v10 + 56) = MEMORY[0x277D837D0];
      strcpy((v10 + 32), "Toast Type: ");
      *(v10 + 45) = 0;
      *(v10 + 46) = -5120;
      *(v10 + 88) = &type metadata for ActionBarButtonViewModel.ActionBarToastType;
      v11 = v1 & 1;
    }

    *(v10 + 64) = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_213F55C80;
    *(v13 + 56) = &type metadata for ActionBarButtonViewModel.ActionBarButtonType;
    v14 = swift_allocObject();
    *(v13 + 32) = v14;
    *(v14 + 16) = v1;
    *(v14 + 24) = v2;
    *(v14 + 32) = v3;
    *(v14 + 40) = v4;
    *(v14 + 48) = v5;
    *(v14 + 56) = v6;
    *(v14 + 64) = 0;
  }

  sub_213F4F860();
}

char *sub_213E13D58()
{
  v1 = v0[1];
  v13[0] = *v0;
  v13[1] = v1;
  v3 = *v0;
  v2 = v0[1];
  v14[0] = v0[2];
  *(v14 + 9) = *(v0 + 41);
  v11[0] = v3;
  v11[1] = v2;
  v12[0] = v0[2];
  *(v12 + 9) = *(v0 + 41);
  v4 = objc_allocWithZone(type metadata accessor for ActionBar());
  sub_213E147B0(v13, &v10);
  v5 = ActionBar.init(model:)(v11);
  v6 = (v5 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = sub_213E13AEC;
  v6[1] = 0;
  sub_213DD7558(v7, v8);
  return v5;
}

uint64_t sub_213E13E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E1504C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E13EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E1504C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E13F2C(uint64_t a1)
{
  sub_213E1504C();
  sub_213F4DB60();
  __break(1u);
}

uint64_t sub_213E13F54(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_213F4F7E0();
  }

  return sub_213F4F740();
}

uint64_t _s10MapsDesign24ActionBarButtonViewModelV0cdE4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v79[0] = *a1;
  v79[1] = v3;
  v79[2] = v4;
  v79[3] = v5;
  v79[4] = v7;
  v79[5] = v6;
  v80 = v8;
  v81 = v10;
  v82 = v9;
  v83 = v11;
  v84 = v12;
  v85 = v14;
  v86 = v13;
  v87 = v15;
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        if (v15 == 4)
        {
          if (v2 == v10 && v3 == v9 || (v67 = v7, v73 = v6, v16 = v2, v17 = sub_213F4F830(), v2 = v16, v7 = v67, v6 = v73, (v17 & 1) != 0))
          {
            if (v5)
            {
              if (v12)
              {
                if (v4 == v11 && v5 == v12)
                {
                  goto LABEL_17;
                }

                v68 = v7;
                v74 = v6;
                v18 = v2;
                v19 = sub_213F4F830();
                v2 = v18;
                v7 = v68;
                v6 = v74;
                if (v19)
                {
                  goto LABEL_17;
                }
              }
            }

            else if (!v12)
            {
LABEL_17:
              v20 = v2;
              if (v7 != v14 || v6 != v13)
              {
                v72 = v7;
                v78 = v6;
                v65 = sub_213F4F830();
                sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 4);
                sub_213E0CBA0(v20, v3, v4, v5, v72, v78, 4);
                sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
                v36 = v65;
                return v36 & 1;
              }

              v21 = v9;
              v22 = v11;
              v23 = v7;
              v24 = v6;
              sub_213E0CBA0(v10, v21, v22, v12, v7, v6, 4);
              v25 = v20;
              v26 = v3;
              v27 = v4;
              v28 = v5;
              v29 = v23;
              v30 = v24;
              v31 = 4;
              goto LABEL_41;
            }
          }

          v51 = v9;
          v52 = v11;
          v53 = v7;
          v54 = v6;
          v55 = v2;
          sub_213E0CBA0(v10, v51, v52, v12, v14, v13, 4);
          v38 = v55;
          v39 = v3;
          v40 = v4;
          v41 = v5;
          v42 = v53;
          v43 = v54;
          v44 = 4;
          goto LABEL_46;
        }
      }

      else if (v15 == 5)
      {
        v71 = v7;
        v77 = v6;
        v37 = v2;
        if ((v10 ^ v2))
        {
          sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 5);
          v38 = v37;
        }

        else
        {
          v64 = v2;
          if (v3 == v9 && v4 == v11 || (sub_213F4F830() & 1) != 0)
          {
            if (v5 != v12 || v71 != v14)
            {
              v63 = sub_213F4F830();
              sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 5);
              sub_213E0CBA0(v64, v3, v4, v5, v71, v77, 5);
              sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
              v36 = v63;
              return v36 & 1;
            }

            sub_213E0CBA0(v10, v9, v11, v5, v71, v13, 5);
            v25 = v64;
            v26 = v3;
            v27 = v4;
            v28 = v5;
            v29 = v71;
            v30 = v77;
            v31 = 5;
            goto LABEL_41;
          }

          sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 5);
          v38 = v64;
        }

        v39 = v3;
        v40 = v4;
        v41 = v5;
        v42 = v71;
        v43 = v77;
        v44 = 5;
        goto LABEL_46;
      }

LABEL_44:

      goto LABEL_45;
    }

    if (v15 != 3)
    {
      goto LABEL_44;
    }

    if (v2 == v10 && v3 == v9 || (v69 = v7, v75 = v6, v32 = v2, v33 = sub_213F4F830(), v2 = v32, v7 = v69, v6 = v75, (v33 & 1) != 0))
    {
      if (!v5)
      {
        v46 = v9;
        v47 = v11;
        v48 = v7;
        v49 = v6;
        v50 = v2;
        sub_213E0CBA0(v10, v46, v47, v12, v14, v13, 3);
        sub_213E0CBA0(v50, v3, v4, 0, v48, v49, 3);

        sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
        if (v12)
        {

          goto LABEL_47;
        }

        goto LABEL_61;
      }

      if (v12)
      {
        v34 = v2;
        v70 = v7;
        v76 = v6;
        if (v4 == v11 && v5 == v12)
        {
          sub_213E0CBA0(v10, v9, v4, v5, v14, v13, 3);
          v25 = v34;
          v26 = v3;
          v27 = v4;
          v28 = v5;
          v29 = v70;
          v30 = v76;
          v31 = 3;
LABEL_41:
          sub_213E0CBA0(v25, v26, v27, v28, v29, v30, v31);
          sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
          v36 = 1;
          return v36 & 1;
        }

        v66 = sub_213F4F830();
        sub_213E0CBA0(v10, v9, v11, v12, v14, v13, 3);
        sub_213E0CBA0(v34, v3, v4, v5, v70, v76, 3);
        sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
        if ((v66 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_61:
        v36 = 1;
        return v36 & 1;
      }

      v56 = v10;
      v57 = v9;
      v58 = v11;
      v59 = 0;
    }

    else
    {
      v56 = v10;
      v57 = v9;
      v58 = v11;
      v59 = v12;
    }

    v60 = v7;
    v61 = v6;
    v62 = v2;
    sub_213E0CBA0(v56, v57, v58, v59, v14, v13, 3);
    v38 = v62;
    v39 = v3;
    v40 = v4;
    v41 = v5;
    v42 = v60;
    v43 = v61;
    v44 = 3;
    goto LABEL_46;
  }

  if (!v8)
  {
    if (!v15)
    {
      goto LABEL_32;
    }

LABEL_45:
    v38 = v10;
    v39 = v9;
    v40 = v11;
    v41 = v12;
    v42 = v14;
    v43 = v13;
    v44 = v15;
LABEL_46:
    sub_213E0CBA0(v38, v39, v40, v41, v42, v43, v44);
    sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
LABEL_47:
    v36 = 0;
    return v36 & 1;
  }

  if (v8 == 1)
  {
    if (v15 != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  if (v15 != 2)
  {
    goto LABEL_45;
  }

LABEL_32:
  v35 = v2;
  sub_213DE36FC(v79, &unk_27C8F8BD0, &qword_213F563F8);
  v36 = v10 ^ v35 ^ 1;
  return v36 & 1;
}

void sub_213E14680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 3 && a7 != 5)
  {
    if (a7 != 4)
    {
      return;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_213E14840()
{
  result = qword_27C8F8B68;
  if (!qword_27C8F8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8B68);
  }

  return result;
}

unint64_t sub_213E14898()
{
  result = qword_2811847F0;
  if (!qword_2811847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811847F0);
  }

  return result;
}

unint64_t sub_213E148EC()
{
  result = qword_27C8F8B78;
  if (!qword_27C8F8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8B78);
  }

  return result;
}

unint64_t sub_213E14944()
{
  result = qword_27C8F8B80;
  if (!qword_27C8F8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8B80);
  }

  return result;
}

uint64_t sub_213E149B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_213E14A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_213E14A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213E14AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t get_enum_tag_for_layout_string_ypSgSaySo13UIMenuElementCGSgSo0A0CSgIegngo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213E14B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E14BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E14D3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_213E14D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_213E14E8C()
{
  v1 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___textsStack) = 0;
  *(v0 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack) = 0;
  sub_213F4F7C0();
  __break(1u);
}

uint64_t sub_213E14FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v3(&v5, a1, &v6);
  return v5;
}

uint64_t sub_213E15018@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_213E1504C()
{
  result = qword_27C8F8BA0;
  if (!qword_27C8F8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8BA0);
  }

  return result;
}

void sub_213E150A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_213E14680(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_213E150B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_213E0CBA0(a1, a2, a3, a4, a5, a6, a7);
  }
}

_OWORD *sub_213E150C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_213E150D8()
{
  result = qword_281182550;
  if (!qword_281182550)
  {
    sub_213F4F080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182550);
  }

  return result;
}

uint64_t sub_213E15130(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t ActionBarItemType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213E15294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E153A4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E154BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213E1575C(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213E1575C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_213E157C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E15234(v4);
  return sub_213E15900;
}

uint64_t sub_213E1596C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213E15A68@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

double sub_213E15B2C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E15C50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*sub_213E15CAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1590C(v4);
  return sub_213E15DE4;
}

uint64_t (*sub_213E15EE8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E15DF0(v4);
  return sub_213E16020;
}

uint64_t sub_213E160A0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t sub_213E161A4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_213E16280(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213E163BC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1602C(v4);
  return sub_213E164F4;
}

uint64_t (*sub_213E165F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E16500(v4);
  return sub_213E16728;
}

uint64_t sub_213E167A8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v7 = (v6 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t keypath_set_16Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_213E168EC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_213E169DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  if (v9)
  {
    if (a2)
    {
      v10 = *v8 == a1 && v9 == a2;
      if (v10 || (sub_213F4F830() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v8 = a1;
    v8[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E16B44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

uint64_t (*sub_213E16BDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E16734(v4);
  return sub_213E16D14;
}

uint64_t sub_213E16D80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_213E16E74()
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

double sub_213E16F34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {

      v4 = sub_213F4E890();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

void sub_213E17098(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_213E17124(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E16D20(v4);
  return sub_213E1725C;
}

uint64_t ActionBarItemViewModel.__allocating_init(_:disabled:toggled:symbol:label:tintColor:)(_BYTE *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  v14 = sub_213F4CB40();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_213F4CB30();
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v17, v14);
  v19 = (v18 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v18 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v20 = 0;
  v20[1] = 0;
  *(v18 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v18 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = a1;
  *(v18 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = a2;
  *(v18 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = a3;
  sub_213E165A0(a4, a5);
  sub_213E169B4(a6, v22);
  sub_213E16F34(v23);
  return v18;
}

uint64_t ActionBarItemViewModel.init(_:disabled:toggled:symbol:label:tintColor:)(_BYTE *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  v15 = sub_213F4CB40();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_213F4CB30();
  (*(v16 + 32))(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v18, v15);
  v19 = (v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v20 = 0;
  v20[1] = 0;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = a1;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = a2;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = a3;
  sub_213E165A0(a4, a5);
  sub_213E169B4(a6, v22);
  sub_213E16F34(v23);
  return v8;
}

uint64_t ActionBarItemViewModel.__allocating_init(_:)(char *a1)
{
  v2 = swift_allocObject();
  ActionBarItemViewModel.init(_:)(a1);
  return v2;
}

uint64_t ActionBarItemViewModel.init(_:)(char *a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_213F4CB30();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v7, v4);
  v9 = (v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = v8;
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v2 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v9[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16[-3] = 0;
    v16[-2] = 0;
    v16[-4] = v2;
    v16[6] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
  }

  swift_beginAccess();
  if (v10[1])
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    v16[-3] = 0;
    v16[-2] = 0;
    v16[-4] = v2;
    v16[3] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
  }

  swift_beginAccess();
  if (*(v2 + v11))
  {
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    v16[-2] = v2;
    v16[-1] = 0;
    v16[2] = v2;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return v2;
}

uint64_t ActionBarItemViewModel.init(_:toggled:)(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_213F4CB30();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v9, v6);
  v11 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = v10;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = a2;
  swift_beginAccess();
  if (v11[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v18[-3] = 0;
    v18[-2] = 0;
    v18[-4] = v3;
    v18[6] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v11 = 0;
    v11[1] = 0;
  }

  swift_beginAccess();
  if (v12[1])
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    v18[-3] = 0;
    v18[-2] = 0;
    v18[-4] = v3;
    v18[3] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v12 = 0;
    v12[1] = 0;
  }

  swift_beginAccess();
  if (*(v3 + v13))
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    v18[-2] = v3;
    v18[-1] = 0;
    v18[2] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return v3;
}

uint64_t sub_213E17DB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = swift_allocObject();
  a3(a1, a2);
  return v6;
}

uint64_t ActionBarItemViewModel.init(_:disabled:)(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_213F4CB30();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v9, v6);
  v11 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = v10;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = a2;
  *(v3 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v11[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v18[-3] = 0;
    v18[-2] = 0;
    v18[-4] = v3;
    v18[6] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v11 = 0;
    v11[1] = 0;
  }

  swift_beginAccess();
  if (v12[1])
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    v18[-3] = 0;
    v18[-2] = 0;
    v18[-4] = v3;
    v18[3] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v12 = 0;
    v12[1] = 0;
  }

  swift_beginAccess();
  if (*(v3 + v13))
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    v18[-2] = v3;
    v18[-1] = 0;
    v18[2] = v3;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  return v3;
}

unint64_t sub_213E181E0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v2 = (v0 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    swift_getKeyPath();
    sub_213F4CB80();

    v5 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
    swift_beginAccess();
    v3 = 0;
    switch(*(v1 + v5))
    {
      case 1:
        v3 = 0x6461622E74786574;
        break;
      case 2:
        v3 = 0xD000000000000028;
        break;
      case 3:
        v3 = 0xD000000000000013;
        break;
      case 4:
        v3 = 0x697966696E67616DLL;
        break;
      case 5:
        v3 = 0x6C69636E6570;
        break;
      case 6:
        v3 = 0x6873617274;
        break;
      case 7:
        swift_getKeyPath();
        sub_213F4CB80();

        v8 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v1 + v8))
        {
          v3 = 0x72616D6B63656863;
        }

        else
        {
          v3 = 1937075312;
        }

        break;
      case 8:
        swift_getKeyPath();
        sub_213F4CB80();

        v6 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v1 + v6))
        {
          v3 = 0x6C69662E72617473;
        }

        else
        {
          v3 = 1918989427;
        }

        break;
      case 9:
        swift_getKeyPath();
        sub_213F4CB80();

        v7 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v1 + v7))
        {
          v3 = 0xD000000000000012;
        }

        else
        {
          v3 = 0x7568742E646E6168;
        }

        break;
      case 0xA:
        v3 = 0xD00000000000002DLL;
        break;
      case 0xB:
        v3 = 0x6B72616D78;
        break;
      case 0xC:
        v3 = 0x72616D6B63656863;
        break;
      case 0xD:
        break;
      default:
        v3 = 0x7070612E73756C70;
        break;
    }
  }

  return v3;
}

uint64_t sub_213E185F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  result = 0x73694C6F54646441;
  switch(*(v3 + v1))
  {
    case 1:
      result = 0x6975476F54646441;
      break;
    case 2:
      result = 0x7463656C6553;
      break;
    case 3:
      result = 1953656659;
      break;
    case 4:
      result = 0x686372616553;
      break;
    case 5:
      result = 1953064005;
      break;
    case 6:
      result = 0x6574656C6544;
      break;
    case 7:
      result = 6579265;
      break;
    case 8:
      result = 0x657469726F766146;
      break;
    case 9:
      result = 1702125906;
      break;
    case 0xA:
      result = 0x6F69746365726944;
      break;
    case 0xB:
      result = 0x6C65636E6143;
      break;
    case 0xC:
      result = 1701736260;
      break;
    case 0xD:
      result = 0x7261656C43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_213E187F0()
{
  v1 = sub_213F4CB60();
  MEMORY[0x28223BE20](v1 - 8);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_213F4F210();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  swift_getKeyPath();
  v31 = v0;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v18 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  switch(*(v0 + v18))
  {
    case 7:
      swift_getKeyPath();
      v30 = v0;
      sub_213F4CB80();

      swift_beginAccess();
      sub_213F4F200();
      v24 = v28;
      v23 = v29;
      (*(v28 + 16))(v17, v12, v29);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v26 = qword_281182518;
      sub_213F4CB50();
      v20 = sub_213F4F260();
      v17 = v12;
      break;
    case 8:
      swift_getKeyPath();
      v30 = v0;
      sub_213F4CB80();

      swift_beginAccess();
      sub_213F4F200();
      v24 = v28;
      v23 = v29;
      (*(v28 + 16))(v17, v9, v29);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v22 = qword_281182518;
      sub_213F4CB50();
      v20 = sub_213F4F260();
      v17 = v9;
      break;
    case 9:
      swift_getKeyPath();
      v30 = v0;
      sub_213F4CB80();

      swift_beginAccess();
      sub_213F4F200();
      v24 = v28;
      v23 = v29;
      (*(v28 + 16))(v17, v6, v29);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v25 = qword_281182518;
      sub_213F4CB50();
      v20 = sub_213F4F260();
      v17 = v6;
      break;
    default:
      sub_213F4F200();
      v24 = v28;
      v23 = v29;
      (*(v28 + 16))(v15, v17, v29);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v19 = qword_281182518;
      sub_213F4CB50();
      v20 = sub_213F4F260();
      break;
  }

  (*(v24 + 8))(v17, v23);
  return v20;
}

uint64_t ActionBarItemViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ActionBarItemViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213E1913C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213E19294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E193A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_213F4CB40();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_213E19478@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E19570(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213E1575C(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213E19810(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  v10 = *a3;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v10, v9, v6);
  return swift_endAccess();
}

uint64_t (*sub_213E19934(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19234(v4);
  return sub_213E19A6C;
}

uint64_t (*sub_213E19B40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19A78(v4);
  return sub_213E19C78;
}

uint64_t (*sub_213E19D4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19C84(v4);
  return sub_213E19E84;
}

uint64_t (*sub_213E19F58(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E19E90(v4);
  return sub_213E1A090;
}

uint64_t (*sub_213E1A164(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1A09C(v4);
  return sub_213E1A29C;
}

uint64_t (*sub_213E1A370(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1A2A8(v4);
  return sub_213E1A4A8;
}

uint64_t sub_213E1A528@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

double sub_213E1A614(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB70();

  return result;
}

uint64_t sub_213E1A6E4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  swift_beginAccess();
}

uint64_t sub_213E1A7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E1A884(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t (*sub_213E1A8F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1A4B4(v4);
  return sub_213E1AA28;
}

uint64_t sub_213E1AA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213E1AB80()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_213E1AC3C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213E1AD68(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E1AA34(v4);
  return sub_213E1AEA0;
}

uint64_t ActionBarViewModel.__allocating_init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  sub_213F4CB30();
  sub_213F4CBB0();
  *(v14 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = a1;
  *(v14 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = a2;
  *(v14 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = a3;
  *(v14 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = a4;
  *(v14 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = a5;
  *(v14 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = a6;
  *(v14 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = a7;
  return v14;
}

uint64_t ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v20 = a7;
  v14 = sub_213F4CB40();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v15 + 32))(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id, v17, v14);
  sub_213F4CBB0();
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = a1;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = a2;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = a3;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = a4;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = a5;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = a6;
  *(v7 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = v20;
  return v7;
}

uint64_t sub_213E1B0F8(uint64_t result, char a2)
{
  v17 = *(result + 16);
  if (v17)
  {
    v15 = result + 32;
    v16 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; ; ++i)
    {
      v19 = i;
      v21 = *(v15 + i);
      swift_getKeyPath();
      sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
      sub_213F4CB80();

      v3 = *(v18 + v16);
      swift_getKeyPath();

      sub_213F4CB80();

      sub_213E27300(v4);
      swift_getKeyPath();
      sub_213F4CB80();

      sub_213E27300(v5);
      swift_getKeyPath();
      sub_213F4CB80();

      sub_213E27300(v6);
      swift_getKeyPath();
      sub_213F4CB80();

      sub_213E27300(v7);
      swift_getKeyPath();
      sub_213F4CB80();

      result = sub_213E27300(v8);
      if (v3 >> 62)
      {
        result = sub_213F4F7E0();
        v9 = result;
      }

      else
      {
        v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        break;
      }

LABEL_3:

      if (v19 + 1 == v17)
      {
        return result;
      }
    }

    if (v9 >= 1)
    {
      v10 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x216052B30](v10, v3);
        }

        else
        {
          v11 = *(v3 + 8 * v10 + 32);
        }

        swift_getKeyPath();
        sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
        sub_213F4CB80();

        v12 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
        swift_beginAccess();
        if (*(v11 + v12) == v21)
        {
          v13 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
          swift_beginAccess();
          if (*(v11 + v13) != (a2 & 1))
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_213F4CB70();

            goto LABEL_11;
          }

          *(v11 + v13) = a2 & 1;
        }

LABEL_11:
        if (v9 == ++v10)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_213E1B6E4(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v21 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v5 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  swift_beginAccess();
  v6 = *(v3 + v5);
  swift_getKeyPath();

  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v7);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v8);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v9);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v10);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  result = sub_213E27300(v11);
  v13 = v6;
  if (v6 >> 62)
  {
    result = sub_213F4F7E0();
    v13 = v6;
    v14 = result;
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v21;
  if (!v14)
  {
  }

  if (v14 >= 1)
  {
    v16 = 0;
    v22 = v13 & 0xC000000000000001;
    v23 = v13;
    while (1)
    {
      if (v22)
      {
        v17 = MEMORY[0x216052B30](v16);
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      swift_getKeyPath();
      sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
      sub_213F4CB80();

      v18 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
      swift_beginAccess();
      if (*(v17 + v18) == v15)
      {
        v19 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
        swift_beginAccess();
        if (*(v17 + v19) != (a2 & 1))
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_213F4CB70();

          v15 = v21;
          goto LABEL_8;
        }

        *(v17 + v19) = a2 & 1;
      }

LABEL_8:
      ++v16;
      v13 = v23;
      if (v14 == v16)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213E1BBE0(unsigned __int8 *a1)
{
  v2 = v1;
  v17 = *a1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  swift_beginAccess();
  v4 = *(v2 + v3);
  swift_getKeyPath();

  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v5);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v6);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v7);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v8);
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v9);
  v10 = v4;
  if (v4 >> 62)
  {
LABEL_15:
    v11 = sub_213F4F7E0();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x216052B30](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v13;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v13 = *(v10 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_12;
          }
        }

        swift_getKeyPath();
        sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
        sub_213F4CB80();

        v15 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
        swift_beginAccess();
        if (*(v13 + v15) == v17)
        {
          goto LABEL_13;
        }

        ++v12;
      }

      while (v14 != v11);
    }
  }

  return 0;
}

uint64_t ActionBarViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ActionBarViewModel.__deallocating_deinit()
{
  ActionBarViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_213E1C144@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213E1C23C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for ActionBarItem(0);
  v3 = v2 - 8;
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  *&v59 = v4;
  *&v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E00, &qword_213F56C98);
  MEMORY[0x28223BE20](v62);
  v64 = (&v55 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E08, &qword_213F56CA0);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E10, &qword_213F56CA8);
  MEMORY[0x28223BE20](v63);
  v10 = &v55 - v9;
  v11 = sub_213F4D9A0();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v65 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 28);
  v57 = v1;
  v14 = *(v1 + v13);
  swift_getKeyPath();
  *&v71 = v14;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v15 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  if (*(v14 + v15) == 4)
  {
    v16 = v65;
    sub_213F4D990();
    v17 = v61;
    (*(v61 + 2))(v8, v16, v11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E40, &qword_213F56CC8);
    sub_213E1575C(&qword_27C8F8E30, MEMORY[0x277CDDEB0], MEMORY[0x277CDDEA8]);
    sub_213E29130();
    sub_213F4DBA0();
    sub_213DE3164(v10, v64, &qword_27C8F8E10, &qword_213F56CA8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E20, &qword_213F56CC0);
    sub_213E29074();
    sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0, &unk_213F64910);
    v18 = v66;
    sub_213F4DBA0();
    sub_213DE36FC(v10, &qword_27C8F8E10, &qword_213F56CA8);
    (*(v17 + 1))(v65, v11);
    v19 = 0;
    v20 = v18;
  }

  else
  {
    v55 = v6;
    v61 = v8;
    v65 = v11;
    v56 = v10;
    swift_getKeyPath();
    *&v71 = v14;
    sub_213F4CB80();

    v21 = (v14 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
    swift_beginAccess();
    v22 = v21[1];
    if (v22)
    {
      v23 = *v21;
      swift_getKeyPath();
      *&v71 = v14;

      sub_213F4CB80();

      if (*(v14 + v15) == 10 && (v24 = sub_213E181E0(), v25))
      {
        v26 = v24;
        v27 = v25;
        v28 = v60;
        sub_213E29808(v57, v60, type metadata accessor for ActionBarItem);
        v29 = (*(v58 + 80) + 16) & ~*(v58 + 80);
        v30 = (v59 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
        v31 = swift_allocObject();
        sub_213E29870(v28, v31 + v29, type metadata accessor for ActionBarItem);
        v32 = (v31 + v30);
        *v32 = v26;
        v32[1] = v27;
        v33 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v33 = v23;
        v33[1] = v22;
        v67 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
        sub_213E29028();
        sub_213F4EA90();
        v67 = sub_213E29328;
        v68 = v31;
        v69 = v71;
        v70 = 0;
      }

      else
      {
        v34 = v60;
        sub_213E29808(v57, v60, type metadata accessor for ActionBarItem);
        v35 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = v23;
        *(v36 + 24) = v22;
        sub_213E29870(v34, v36 + v35, type metadata accessor for ActionBarItem);
        v67 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
        sub_213E29028();
        sub_213F4EA90();
        v67 = sub_213E29210;
        v68 = v36;
        v69 = v71;
        v70 = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E50, &qword_213F56CD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E60, &qword_213F56CD8);
      sub_213DE3AE4(&qword_27C8F8E48, &qword_27C8F8E50, &qword_213F56CD0, &unk_213F64910);
      sub_213DE3AE4(&qword_27C8F8E58, &qword_27C8F8E60, &qword_213F56CD8, &unk_213F64910);
      sub_213F4DBA0();
      v37 = v72;
      v38 = v73;
      v39 = v56;
      v59 = v71;
      v60 = v72;
      v40 = v61;
      *v61 = v71;
      *(v40 + 1) = v37;
      v40[32] = v38;
      swift_storeEnumTagMultiPayload();
      v41 = v59;
      v42 = v60;
      sub_213E29294(v59, *(&v59 + 1), v60, *(&v60 + 1));
      sub_213E29294(v41, *(&v41 + 1), v42, *(&v42 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E40, &qword_213F56CC8);
      sub_213E1575C(&qword_27C8F8E30, MEMORY[0x277CDDEB0], MEMORY[0x277CDDEA8]);
      sub_213E29130();
      sub_213F4DBA0();
      sub_213DE3164(v39, v64, &qword_27C8F8E10, &qword_213F56CA8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E20, &qword_213F56CC0);
      sub_213E29074();
      sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0, &unk_213F64910);
      v20 = v66;
      sub_213F4DBA0();
      sub_213E292E4(v41, *(&v41 + 1), v42, *(&v42 + 1));
      sub_213E292E4(v41, *(&v41 + 1), v42, *(&v42 + 1));
      sub_213DE36FC(v56, &qword_27C8F8E10, &qword_213F56CA8);
    }

    else
    {
      v43 = sub_213E181E0();
      if (!v44)
      {
        v19 = 1;
        v20 = v66;
        goto LABEL_12;
      }

      v45 = v43;
      v46 = v44;
      *&v71 = 0;
      *(&v71 + 1) = 0xE000000000000000;
      swift_getKeyPath();
      v67 = v14;
      sub_213F4CB80();

      LOBYTE(v67) = *(v14 + v15);
      sub_213F4F7B0();
      v47 = v71;
      v48 = v60;
      sub_213E29808(v57, v60, type metadata accessor for ActionBarItem);
      v49 = (*(v58 + 80) + 48) & ~*(v58 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v47;
      *(v50 + 32) = v45;
      *(v50 + 40) = v46;
      sub_213E29870(v48, v50 + v49, type metadata accessor for ActionBarItem);
      v67 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      sub_213E29028();
      sub_213F4EA90();
      v51 = v71;
      v52 = v64;
      *v64 = sub_213E28FA0;
      v52[1] = v50;
      *(v52 + 1) = v51;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E20, &qword_213F56CC0);
      sub_213E29074();
      sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0, &unk_213F64910);
      v20 = v66;
      sub_213F4DBA0();
    }

    v19 = 0;
  }

LABEL_12:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E18, &unk_213F56CB0);
  return (*(*(v53 - 8) + 56))(v20, v19, 1, v53);
}

uint64_t sub_213E1CE14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a6;
  v45 = a5;
  v44 = a4;
  v43 = a3;
  v42 = a1;
  v54 = a7;
  v52 = sub_213F4DCA0();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionBarItem(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E70, &qword_213F56CE0);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v16 = &v41 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E78, &qword_213F56CE8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v41 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E80, &qword_213F56CF0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v47 = &v41 - v20;
  sub_213E29808(a2, v14, type metadata accessor for ActionBarItem);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_213E29870(v14, v23 + v21, type metadata accessor for ActionBarItem);
  v24 = v42;
  *(v23 + v22) = v42;
  v55 = v43;
  v56 = v44;
  v57 = a2;
  v58 = v45;
  v59 = v46;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E88, &qword_213F56CF8);
  sub_213E29428(&qword_27C8F8E90, &qword_27C8F8E88, &qword_213F56CF8, sub_213E293F8);
  sub_213F4EB00();
  sub_213F4DC90();
  sub_213DE3AE4(&qword_27C8F8EC8, &qword_27C8F8E70, &qword_213F56CE0, MEMORY[0x277CDF028]);
  sub_213E1575C(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v26 = v41;
  v27 = v48;
  v28 = v52;
  sub_213F4E3B0();
  (*(v53 + 8))(v9, v28);
  (*(v49 + 8))(v16, v27);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v29 = v47;
  (*(v50 + 32))(v47, v26, v51);
  v30 = (v29 + *(v19 + 44));
  v31 = v66;
  v30[4] = v65;
  v30[5] = v31;
  v30[6] = v67;
  v32 = v62;
  *v30 = v61;
  v30[1] = v32;
  v33 = v64;
  v30[2] = v63;
  v30[3] = v33;
  v34 = *(a2 + *(v11 + 28));
  swift_getKeyPath();
  v60 = v34;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v35 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
  swift_beginAccess();
  LOBYTE(v34) = *(v34 + v35);
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  v38 = v54;
  sub_213DE2B44(v29, v54, &qword_27C8F8E80, &qword_213F56CF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8ED0, &qword_213F56D50);
  v40 = (v38 + *(result + 36));
  *v40 = KeyPath;
  v40[1] = sub_213E29590;
  v40[2] = v37;
  return result;
}

uint64_t sub_213E1D4D0@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = sub_213F4D290();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  *a6 = sub_213F4D8A0();
  *(a6 + 8) = 0x4010000000000000;
  *(a6 + 16) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8ED8, &qword_213F56D58);
  sub_213E1D75C(a3, a4, a5, a6 + *(v17 + 44));
  v18 = sub_213F4E8F0();
  *(a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EB0, &qword_213F56D08) + 36)) = v18;
  LOBYTE(v18) = sub_213F4E080();
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v16, v10);
  sub_213F4CDA0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EA0, &qword_213F56D00) + 36);
  *v28 = v18;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  LOBYTE(v18) = sub_213F4E0A0();
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v19(v14, v10);
  v19(v16, v10);
  sub_213F4CDA0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8E88, &qword_213F56CF8);
  v38 = a6 + *(result + 36);
  *v38 = v18;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_213E1D75C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a4;
  v57 = a5;
  v55 = a3;
  v59 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_213F4D290();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = (&v47 - v20);

  v50 = sub_213F4E9F0();
  sub_213DBBD08(v15);
  sub_213F4D280();
  sub_213F4D270();
  v22 = *(v10 + 8);
  v54 = v9;
  v22(v13, v9);
  v22(v15, v9);
  sub_213F4E110();
  v52 = sub_213F4E0F0();
  v23 = *(v52 - 8);
  v51 = *(v23 + 56);
  v53 = v23 + 56;
  v51(v8, 1, 1, v52);
  v48 = sub_213F4E190();
  sub_213DE36FC(v8, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v25 = v21;
  v26 = (v21 + *(v17 + 44));
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v28 = *MEMORY[0x277CE1050];
  v29 = sub_213F4EA30();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  v49 = v25;
  *v25 = v50;
  v25[1] = KeyPath;
  v25[2] = v48;
  v60 = v56;
  v61 = v57;
  sub_213DBC9EC();

  v30 = sub_213F4E310();
  v32 = v31;
  LOBYTE(KeyPath) = v33;
  sub_213DBBD08(v15);
  sub_213F4D280();
  sub_213F4D270();
  v34 = v13;
  v35 = v54;
  v22(v34, v54);
  v22(v15, v35);
  sub_213F4E110();
  v51(v8, 1, 1, v52);
  sub_213F4E190();
  sub_213DE36FC(v8, &qword_27C8F7668, &qword_213F52190);
  v36 = sub_213F4E2E0();
  v38 = v37;
  LOBYTE(v8) = v39;
  v41 = v40;

  sub_213DBCA40(v30, v32, KeyPath & 1);

  v42 = v49;
  v43 = v58;
  sub_213DE3164(v49, v58, &qword_27C8F7798, &unk_213F61D50);
  v44 = v59;
  sub_213DE3164(v43, v59, &qword_27C8F7798, &unk_213F61D50);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EE0, &qword_213F56DC8) + 48);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v8 & 1;
  *(v45 + 24) = v41;
  sub_213DBCA50(v36, v38, v8 & 1);

  sub_213DE36FC(v42, &qword_27C8F7798, &unk_213F61D50);
  sub_213DBCA40(v36, v38, v8 & 1);

  return sub_213DE36FC(v43, &qword_27C8F7798, &unk_213F61D50);
}

uint64_t sub_213E1DC84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v49 = a1;
  v58 = a5;
  v8 = sub_213F4DCA0();
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionBarItem(0);
  v12 = *(v11 - 8);
  v57 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EE8, &qword_213F56DD0);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EF0, &qword_213F56DD8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EF8, &qword_213F56DE0);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v53 = &v49 - v23;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  sub_213E29808(a4, v14, type metadata accessor for ActionBarItem);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_213E29870(v14, v26 + v24, type metadata accessor for ActionBarItem);
  v27 = v49;
  *(v26 + v25) = v49;
  sub_213DBC9EC();

  v28 = v27;
  sub_213F4EB10();
  v29 = v51;
  sub_213F4DC90();
  sub_213DE3AE4(&qword_281182728, &qword_27C8F8EE8, &qword_213F56DD0, MEMORY[0x277CDF028]);
  sub_213E1575C(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v30 = v50;
  v31 = v55;
  sub_213F4E3B0();
  (*(v56 + 8))(v29, v31);
  (*(v52 + 8))(v16, v30);
  LOBYTE(v16) = sub_213F4E040();
  sub_213F4CDA0();
  v32 = &v20[*(v18 + 44)];
  *v32 = v16;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v37 = v53;
  sub_213DE2B44(v20, v53, &qword_27C8F8EF0, &qword_213F56DD8);
  v38 = (v37 + *(v22 + 44));
  v39 = v65;
  v38[4] = v64;
  v38[5] = v39;
  v38[6] = v66;
  v40 = v61;
  *v38 = v60;
  v38[1] = v40;
  v41 = v63;
  v38[2] = v62;
  v38[3] = v41;
  v42 = *(v54 + *(v57 + 28));
  swift_getKeyPath();
  v59 = v42;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v43 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
  swift_beginAccess();
  LOBYTE(v42) = *(v42 + v43);
  KeyPath = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  v46 = v58;
  sub_213DE2B44(v37, v58, &qword_27C8F8EF8, &qword_213F56DE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F00, &qword_213F56DE8);
  v48 = (v46 + *(result + 36));
  *v48 = KeyPath;
  v48[1] = sub_213E2AAD8;
  v48[2] = v45;
  return result;
}

uint64_t sub_213E1E28C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a6;
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v44 = a2;
  v43 = a1;
  v52 = a7;
  v8 = sub_213F4F0A0();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4F080();
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_213F4DCA0();
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActionBarItem(0);
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - v23;
  sub_213E29808(a6, &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionBarItem);
  v25 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v26 = swift_allocObject();
  sub_213E29870(&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ActionBarItem);
  v27 = v43;
  *(v26 + ((v20 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;
  v61[0] = v44;
  v61[1] = v45;
  v58 = v61;
  v59 = v46;
  v60 = v47;

  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850, MEMORY[0x277CDEFF0]);
  sub_213F4EB00();

  sub_213F4DC90();
  sub_213DE3AE4(&qword_281182720, &qword_27C8F8F08, &unk_213F56DF0, MEMORY[0x277CDF028]);
  sub_213E1575C(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v29 = v52;
  v30 = v48;
  sub_213F4E3B0();
  (*(v49 + 8))(v16, v30);
  (*(v22 + 8))(v24, v21);
  v31 = v51;
  sub_213F4F070();
  v32 = v53;
  sub_213F4F090();
  v33 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F20, &unk_213F56E00) + 36));
  v34 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10);
  sub_213E1575C(&qword_281182550, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  v35 = v54;
  sub_213F4D550();
  (*(v56 + 8))(v32, v57);
  (*(v55 + 8))(v31, v35);
  *v33 = swift_getKeyPath();
  v36 = *(v50 + *(v18 + 28));
  swift_getKeyPath();
  v61[0] = v36;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v37 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled;
  swift_beginAccess();
  LOBYTE(v36) = *(v36 + v37);
  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F30, &qword_213F56E40);
  v41 = (v34 + *(result + 36));
  *v41 = KeyPath;
  v41[1] = sub_213E2AAD8;
  v41[2] = v39;
  return result;
}

uint64_t ActionBarModifier.init(model:onSelect:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ActionBarModifier(0);
  v8 = a4 + *(v7 + 20);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  type metadata accessor for ActionBarViewModel(0);
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  result = sub_213F4ED60();
  v10 = (a4 + *(v7 + 28));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_213E1EA2C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_213F4D7F0();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_213F4EDA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DE3164(v1, v7, &qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_213E2A810(v7, v10);
  }

  else
  {
    sub_213F4F520();
    v15 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    (*(v19 + 8))(v4, v20);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16) == 1)
  {
    sub_213DE36FC(v10, &qword_27C8F8D50, &unk_213F5E0A0);
    return (*(v12 + 104))(v21, *MEMORY[0x277CDF0D8], v11);
  }

  else
  {
    MEMORY[0x216052020](v16);
    sub_213DE36FC(v10, &qword_27C8F8FC8, &qword_213F61200);
    return (*(v12 + 32))(v21, v14, v11);
  }
}

uint64_t sub_213E1ED98()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ActionBarModifier(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_213F4F520();
    v7 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v8 = sub_213E053BC(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v6) = v10[15];
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_213E1EEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = type metadata accessor for ActionBarModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ActionBarItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90E0, &qword_213F56F78);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  sub_213E29808(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionBarModifier);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_213E29870(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ActionBarModifier);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v7 + 20)) = a1;
  v15 = (v9 + *(v7 + 24));
  *v15 = sub_213E2A698;
  v15[1] = v14;
  swift_retain_n();
  v20 = sub_213E185F8();
  v21 = v16;

  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);

  sub_213E1575C(&qword_27C8F90E8, type metadata accessor for ActionBarItem, &unk_213F56B38);
  sub_213F4E6D0();

  sub_213E2A73C(v9, type metadata accessor for ActionBarItem);
  v20 = sub_213E187F0();
  v21 = v17;
  sub_213DBC9EC();
  sub_213F4D3C0();

  return sub_213DE36FC(v12, &qword_27C8F90E0, &qword_213F56F78);
}

uint64_t sub_213E1F228@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9128, &qword_213F56F98);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v36 - v5;
  v6 = sub_213F4DC40();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9118, &qword_213F56F90);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9110, &qword_213F56F88);
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9100, &qword_213F56F80);
  v12 = MEMORY[0x28223BE20](v42);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = *a1;
  type metadata accessor for ActionBarModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  sub_213F4ED40();
  LOBYTE(v47) = v17;
  v18 = sub_213E1BBE0(&v47);

  if (v18)
  {
    v36 = v10;
    v19 = sub_213F4DC30();
    MEMORY[0x28223BE20](v19);
    *(&v36 - 2) = v3;
    *(&v36 - 1) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9130, &qword_213F56FA0);
    sub_213E2A5E0();
    sub_213F4CF90();
    swift_getKeyPath();
    v47 = v18;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB80();

    v20 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
    swift_beginAccess();
    v21 = v9;
    if (!*(v18 + v20))
    {
      sub_213F4E8B0();
    }

    v26 = v43;
    v27 = sub_213DE3AE4(&qword_27C8F9120, &qword_27C8F9118, &qword_213F56F90, MEMORY[0x277CDD7A8]);

    v28 = v38;
    sub_213F4D340();

    (*(v37 + 8))(v21, v7);
    v45 = v7;
    v46 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v40;
    v31 = v36;
    MEMORY[0x2160510F0](v28, v36, OpaqueTypeConformance2);
    v32 = v41;
    (*(v41 + 16))(v14, v30, v26);
    (*(v32 + 56))(v14, 0, 1, v26);
    v45 = v31;
    v46 = OpaqueTypeConformance2;
    v33 = swift_getOpaqueTypeConformance2();
    MEMORY[0x216051120](v14, v26, v33);

    sub_213DE36FC(v14, &qword_27C8F9100, &qword_213F56F80);
    (*(v32 + 8))(v30, v26);
    (*(v39 + 8))(v28, v31);
  }

  else
  {
    v22 = v43;
    (*(v41 + 56))(v14, 1, 1, v43);
    v23 = sub_213DE3AE4(&qword_27C8F9120, &qword_27C8F9118, &qword_213F56F90, MEMORY[0x277CDD7A8]);
    v47 = v7;
    v48 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v47 = v10;
    v48 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x216051120](v14, v22, v25);
    sub_213DE36FC(v14, &qword_27C8F9100, &qword_213F56F80);
  }

  v34 = sub_213E2A4A0();
  MEMORY[0x2160510F0](v16, v42, v34);
  return sub_213DE36FC(v16, &qword_27C8F9100, &qword_213F56F80);
}

uint64_t sub_213E1F8D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_213E1EEF8(a1, a2);
  v3 = sub_213F4E8F0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9130, &qword_213F56FA0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_213E1F920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionBarModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_213E29808(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionBarModifier);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_213E29870(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ActionBarModifier);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9140, &qword_213F56FD8);
  sub_213F4CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90E0, &qword_213F56F78);
  sub_213DE3AE4(&qword_27C8F9148, &qword_27C8F9140, &qword_213F56FD8, MEMORY[0x277D83980]);
  sub_213E2A2BC();
  sub_213E1575C(&qword_27C8F9150, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  return sub_213F4ECD0();
}

uint64_t sub_213E1FB28@<X0>(uint64_t a1@<X8>)
{
  v225 = a1;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9028, &qword_213F56EE8);
  MEMORY[0x28223BE20](v224);
  v223 = &v196 - v2;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9030, &qword_213F56EF0);
  MEMORY[0x28223BE20](v210);
  v209 = &v196 - v3;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9038, &qword_213F56EF8);
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v211 = &v196 - v4;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9040, &qword_213F56F00);
  v205 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v204 = &v196 - v5;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9048, &qword_213F56F08);
  MEMORY[0x28223BE20](v206);
  v201 = &v196 - v6;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9050, &qword_213F56F10);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v198 = &v196 - v7;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9058, &qword_213F56F18);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v197 = &v196 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9060, &qword_213F56F20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v196 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9068, &qword_213F56F28);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v219 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v196 - v15;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9070, &qword_213F56F30);
  MEMORY[0x28223BE20](v217);
  v216 = &v196 - v17;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9078, &qword_213F56F38);
  v229 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v218 = &v196 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9080, &qword_213F56F40);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v228 = &v196 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v243 = &v196 - v22;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9088, &qword_213F56F48);
  MEMORY[0x28223BE20](v212);
  v213 = &v196 - v23;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9090, &qword_213F56F50);
  v24 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v214 = &v196 - v25;
  v26 = sub_213F4D020();
  MEMORY[0x28223BE20](v26 - 8);
  v238 = &v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_213F4D1D0();
  v247 = *(v237 - 8);
  v28 = MEMORY[0x28223BE20](v237);
  v231 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v215 = &v196 - v31;
  MEMORY[0x28223BE20](v30);
  v248 = &v196 - v32;
  v33 = sub_213F4DC40();
  MEMORY[0x28223BE20](v33 - 8);
  v244 = &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9098, &qword_213F56F58);
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v233 = &v196 - v35;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90A0, &qword_213F56F60);
  v246 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v245 = &v196 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90A8, &qword_213F56F68);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v226 = &v196 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v242 = &v196 - v40;
  v41 = sub_213F4EDA0();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v196 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v47 = (&v196 - v46);
  v48 = *(type metadata accessor for ActionBarModifier(0) + 24);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  v239 = v48;
  v253 = v49;
  sub_213F4ED40();
  v50 = v262;
  v255 = v1;
  sub_213E1EA2C(v47);
  v51 = *(v42 + 104);
  v250 = *MEMORY[0x277CDF0D0];
  v251 = v42 + 104;
  v249 = v51;
  v51(v45);
  v52 = sub_213F4ED80();
  v53 = *(v42 + 8);
  v241 = v45;
  v53(v45, v41);
  v240 = v47;
  v252 = v53;
  v254 = v42 + 8;
  v53(v47, v41);
  swift_getKeyPath();
  v262 = v50;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  if (v52)
  {
    v54 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems;
  }

  else
  {
    v54 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  }

  v55 = (v50 + v54);
  swift_beginAccess();
  v56 = *v55;

  if (v56 >> 62)
  {
    v57 = sub_213F4F7E0();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v208 = v11;
  v220 = v16;
  v232 = v41;
  if (v57 < 1)
  {

    v77 = v226;
    v78 = v227;
    (*(v24 + 56))(v226, 1, 1, v227);
    v79 = sub_213DE3AE4(&qword_27C8F90B0, &qword_27C8F9090, &qword_213F56F50, MEMORY[0x277CDDF68]);
    MEMORY[0x216051120](v77, v78, v79);
    sub_213DE36FC(v77, &qword_27C8F90A8, &qword_213F56F68);
  }

  else
  {
    v58 = sub_213F4DC30();
    MEMORY[0x28223BE20](v58);
    v59 = v255;
    *(&v196 - 2) = v56;
    *(&v196 - 1) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90C8, &qword_213F56F70);
    sub_213E2A240(&qword_27C8F90D0, &qword_27C8F90C8, &qword_213F56F70, sub_213E2A2BC);
    v60 = v233;
    sub_213F4D4A0();

    v61 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58, MEMORY[0x277CDDB60]);
    v62 = v245;
    v63 = v235;
    MEMORY[0x2160510F0](v60, v235, v61);
    (*(v234 + 8))(v60, v63);
    sub_213F4D010();
    sub_213F4DC30();
    v64 = v248;
    sub_213F4D1E0();
    v65 = *(v212 + 48);
    v66 = v246;
    v67 = v213;
    v68 = v236;
    (*(v246 + 16))(v213, v62, v236);
    v69 = v247;
    v70 = &v67[v65];
    v71 = v237;
    (*(v247 + 16))(v70, v64, v237);
    v72 = v214;
    sub_213F4DAC0();
    v73 = v226;
    v74 = v227;
    (*(v24 + 16))(v226, v72, v227);
    (*(v24 + 56))(v73, 0, 1, v74);
    v75 = sub_213DE3AE4(&qword_27C8F90B0, &qword_27C8F9090, &qword_213F56F50, MEMORY[0x277CDDF68]);
    MEMORY[0x216051120](v73, v74, v75);
    sub_213DE36FC(v73, &qword_27C8F90A8, &qword_213F56F68);
    v76 = v72;
    v41 = v232;
    (*(v24 + 8))(v76, v74);
    (*(v69 + 8))(v64, v71);
    (*(v66 + 8))(v62, v68);
  }

  sub_213F4ED40();
  v80 = v261;
  v81 = v240;
  sub_213E1EA2C(v240);
  v82 = v241;
  v249(v241, v250, v41);
  v83 = sub_213F4ED80();
  v84 = v252;
  v252(v82, v41);
  v84(v81, v41);
  swift_getKeyPath();
  v261 = v80;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  if (v83)
  {
    v85 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems;
  }

  else
  {
    v85 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems;
  }

  v86 = (v80 + v85);
  swift_beginAccess();
  v87 = *v86;

  if (v87 >> 62)
  {
    if (sub_213F4F7E0() >= 1)
    {
      goto LABEL_14;
    }
  }

  else if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_14:
    sub_213F4D010();
    sub_213F4DC30();
    sub_213F4D1E0();
    v88 = sub_213F4DC30();
    MEMORY[0x28223BE20](v88);
    v89 = v255;
    *(&v196 - 2) = v87;
    *(&v196 - 1) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90C8, &qword_213F56F70);
    sub_213E2A240(&qword_27C8F90D0, &qword_27C8F90C8, &qword_213F56F70, sub_213E2A2BC);
    v90 = v233;
    sub_213F4D4A0();

    v91 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58, MEMORY[0x277CDDB60]);
    v92 = v245;
    v93 = v235;
    MEMORY[0x2160510F0](v90, v235, v91);
    (*(v234 + 8))(v90, v93);
    sub_213F4D010();
    sub_213F4DC30();
    v94 = v215;
    sub_213F4D1E0();
    v95 = *(v217 + 48);
    v96 = *(v217 + 64);
    v97 = *(v247 + 16);
    v98 = v216;
    v99 = v237;
    v97(v216, v248, v237);
    v100 = v236;
    (*(v246 + 16))(&v98[v95], v92, v236);
    v97(&v98[v96], v94, v99);
    v82 = v241;
    v101 = v218;
    sub_213F4DAC0();
    v102 = v229;
    v103 = v228;
    v104 = v230;
    (*(v229 + 16))(v228, v101, v230);
    (*(v102 + 56))(v103, 0, 1, v104);
    v105 = sub_213DE3AE4(&qword_27C8F90B8, &qword_27C8F9078, &qword_213F56F38, MEMORY[0x277CDDF68]);
    MEMORY[0x216051120](v103, v104, v105);
    sub_213DE36FC(v103, &qword_27C8F9080, &qword_213F56F40);
    (*(v102 + 8))(v101, v104);
    v41 = v232;
    v106 = *(v247 + 8);
    v106(v94, v99);
    (*(v246 + 8))(v245, v100);
    v107 = v99;
    v81 = v240;
    v106(v248, v107);
    goto LABEL_18;
  }

  v108 = v228;
  v109 = v230;
  (*(v229 + 56))(v228, 1, 1, v230);
  v110 = sub_213DE3AE4(&qword_27C8F90B8, &qword_27C8F9078, &qword_213F56F38, MEMORY[0x277CDDF68]);
  MEMORY[0x216051120](v108, v109, v110);
  sub_213DE36FC(v108, &qword_27C8F9080, &qword_213F56F40);
LABEL_18:
  sub_213F4ED40();
  v111 = v260;
  sub_213E1EA2C(v81);
  v249(v82, v250, v41);
  v112 = sub_213F4ED80();
  v113 = v252;
  v252(v82, v41);
  v113(v81, v41);
  swift_getKeyPath();
  v260 = v111;
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  if (v112)
  {
    v114 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems;
  }

  else
  {
    v114 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
  }

  v115 = (v111 + v114);
  swift_beginAccess();
  v116 = *v115;

  if (!(v116 >> 62))
  {
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_23;
    }

LABEL_67:

    v187 = v219;
    v188 = v222;
    (*(v221 + 56))(v219, 1, 1, v222);
    v189 = sub_213DE3AE4(&qword_27C8F90C0, &qword_27C8F9038, &qword_213F56EF8, MEMORY[0x277CDDF68]);
    v186 = v220;
    MEMORY[0x216051120](v187, v188, v189);
    sub_213DE36FC(v187, &qword_27C8F9068, &qword_213F56F28);
    goto LABEL_68;
  }

LABEL_66:
  if (sub_213F4F7E0() < 1)
  {
    goto LABEL_67;
  }

LABEL_23:
  sub_213F4D010();
  sub_213F4DC30();
  sub_213F4D1E0();
  sub_213F4ED40();
  v117 = v258;
  sub_213E1EA2C(v81);
  v249(v82, v250, v41);
  v118 = sub_213F4ED80();
  v119 = v252;
  v252(v82, v41);
  v119(v81, v41);
  v248 = v116;
  if (v118)
  {
    swift_getKeyPath();
    v120 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
    v258 = v117;
    v121 = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
    v230 = v120;
    v229 = v121;
    sub_213F4CB80();

    v122 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems;
    swift_beginAccess();
    v228 = v122;
    v123 = *&v117[v122];
    v238 = v117;
    v82 = v123 & 0xFFFFFFFFFFFFFF8;
    if (v123 >> 62)
    {
      v116 = sub_213F4F7E0();
    }

    else
    {
      v116 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v123 & 0xC000000000000001;

    v124 = 0;
    v81 = &qword_27C8F8BE8;
    do
    {
      if (v116 == v124)
      {
        goto LABEL_36;
      }

      if (v41)
      {
        v125 = MEMORY[0x216052B30](v124, v123);
        if (__OFADD__(v124, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:

          v41 = v232;
          v82 = v241;
          v81 = v240;
          v116 = v248;
          goto LABEL_37;
        }
      }

      else
      {
        if (v124 >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v125 = *(v123 + 8 * v124 + 32);

        if (__OFADD__(v124, 1))
        {
          goto LABEL_35;
        }
      }

      swift_getKeyPath();
      v258 = v125;
      sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
      sub_213F4CB80();

      v126 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
      swift_beginAccess();
      LODWORD(v126) = *(v125 + v126);

      ++v124;
    }

    while (v126 != 12);
LABEL_51:

    swift_getKeyPath();
    v138 = v238;
    v258 = v238;
    sub_213F4CB80();

    v139 = *&v228[v138];
    v116 = v248;
    if (v139 >> 62)
    {
      v140 = sub_213F4F7E0();
    }

    else
    {
      v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v232;
    v82 = v241;
    v81 = v240;

    if (v140 == 1)
    {

      LOBYTE(v258) = 12;
      v141 = v197;
      sub_213E1F228(&v258, v197);
      v142 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
      v143 = sub_213E2A4A0();
      v258 = v142;
      v259 = v143;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v145 = v198;
      v146 = v200;
      MEMORY[0x2160510F0](v141, v200, OpaqueTypeConformance2);
      v258 = v146;
      v259 = OpaqueTypeConformance2;
      v147 = swift_getOpaqueTypeConformance2();
      v148 = v201;
      v149 = v203;
      MEMORY[0x216051100](v145, v203, v203, v147, v147);
      v150 = sub_213E2A3A8();
      v151 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58, MEMORY[0x277CDDB60]);
      v258 = v235;
      v259 = v151;
      v152 = swift_getOpaqueTypeConformance2();
      v258 = v236;
      v259 = v152;
      goto LABEL_62;
    }
  }

  else
  {
LABEL_37:
  }

  sub_213F4ED40();
  v127 = v258;
  sub_213E1EA2C(v81);
  v249(v82, v250, v41);
  v128 = sub_213F4ED80();
  v129 = v252;
  v252(v82, v41);
  v129(v81, v41);
  if (v128)
  {
LABEL_56:
  }

  else
  {
    swift_getKeyPath();
    v130 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
    v258 = v127;
    v131 = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
    v253 = v130;
    v252 = v131;
    sub_213F4CB80();

    v132 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems;
    swift_beginAccess();
    v254 = v127;
    v251 = v132;
    v133 = *&v127[v132];
    v82 = v133 & 0xFFFFFFFFFFFFFF8;
    if (v133 >> 62)
    {
      v134 = sub_213F4F7E0();
    }

    else
    {
      v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v133 & 0xC000000000000001;

    v135 = 0;
    v116 = &qword_27C8F8000;
    v81 = &qword_27C8F8BE8;
    do
    {
      if (v134 == v135)
      {

        v116 = v248;
        goto LABEL_56;
      }

      if (v41)
      {
        v136 = MEMORY[0x216052B30](v135, v133);
        if (__OFADD__(v135, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v135 >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v136 = *(v133 + 8 * v135 + 32);

        if (__OFADD__(v135, 1))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      swift_getKeyPath();
      v256 = v136;
      sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
      sub_213F4CB80();

      v137 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
      swift_beginAccess();
      LODWORD(v137) = *(v136 + v137);

      ++v135;
    }

    while (v137 != 10);

    swift_getKeyPath();
    v166 = v254;
    v256 = v254;
    sub_213F4CB80();

    v167 = *(v166 + v251);
    v116 = v248;
    if (v167 >> 62)
    {
      v168 = sub_213F4F7E0();
    }

    else
    {
      v168 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v168 == 1)
    {

      LOBYTE(v256) = 10;
      v141 = v197;
      sub_213E1F228(&v256, v197);
      v169 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
      v170 = sub_213E2A4A0();
      v256 = v169;
      v257 = v170;
      v171 = swift_getOpaqueTypeConformance2();
      v145 = v198;
      v146 = v200;
      MEMORY[0x2160510F0](v141, v200, v171);
      v256 = v146;
      v257 = v171;
      v172 = swift_getOpaqueTypeConformance2();
      v148 = v201;
      v149 = v203;
      MEMORY[0x216051110](v145, v203, v203, v172, v172);
      v150 = sub_213E2A3A8();
      v173 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58, MEMORY[0x277CDDB60]);
      v256 = v235;
      v257 = v173;
      v174 = swift_getOpaqueTypeConformance2();
      v256 = v236;
      v257 = v174;
LABEL_62:
      v175 = swift_getOpaqueTypeConformance2();
      v164 = v208;
      MEMORY[0x216051100](v148, v206, v207, v150, v175);
      sub_213DE36FC(v148, &qword_27C8F9048, &qword_213F56F08);
      (*(v202 + 8))(v145, v149);
      (*(v199 + 8))(v141, v146);
      goto LABEL_63;
    }
  }

  v153 = sub_213F4DC30();
  MEMORY[0x28223BE20](v153);
  v154 = v255;
  *(&v196 - 2) = v116;
  *(&v196 - 1) = v154;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F90C8, &qword_213F56F70);
  sub_213E2A240(&qword_27C8F90D0, &qword_27C8F90C8, &qword_213F56F70, sub_213E2A2BC);
  v155 = v233;
  sub_213F4D4A0();

  v156 = sub_213DE3AE4(&qword_27C8F90F0, &qword_27C8F9098, &qword_213F56F58, MEMORY[0x277CDDB60]);
  v157 = v245;
  v158 = v235;
  MEMORY[0x2160510F0](v155, v235, v156);
  (*(v234 + 8))(v155, v158);
  v256 = v158;
  v257 = v156;
  v159 = swift_getOpaqueTypeConformance2();
  v160 = v204;
  v161 = v236;
  MEMORY[0x2160510F0](v157, v236, v159);
  v162 = sub_213E2A3A8();
  v256 = v161;
  v257 = v159;
  v163 = swift_getOpaqueTypeConformance2();
  v164 = v208;
  v165 = v207;
  MEMORY[0x216051110](v160, v206, v207, v162, v163);
  (*(v205 + 8))(v160, v165);
  (*(v246 + 8))(v157, v161);
LABEL_63:
  v176 = *(v210 + 48);
  v177 = v247;
  v178 = v209;
  v179 = v231;
  v180 = v237;
  (*(v247 + 16))(v209, v231, v237);
  sub_213DE3164(v164, &v178[v176], &qword_27C8F9060, &qword_213F56F20);
  v181 = v211;
  sub_213F4DAC0();
  v182 = v221;
  v183 = v219;
  v184 = v222;
  (*(v221 + 16))(v219, v181, v222);
  (*(v182 + 56))(v183, 0, 1, v184);
  v185 = sub_213DE3AE4(&qword_27C8F90C0, &qword_27C8F9038, &qword_213F56EF8, MEMORY[0x277CDDF68]);
  v186 = v220;
  MEMORY[0x216051120](v183, v184, v185);
  sub_213DE36FC(v183, &qword_27C8F9068, &qword_213F56F28);
  (*(v182 + 8))(v181, v184);
  sub_213DE36FC(v164, &qword_27C8F9060, &qword_213F56F20);
  (*(v177 + 8))(v179, v180);
LABEL_68:
  v190 = *(v224 + 48);
  v191 = *(v224 + 64);
  v192 = v242;
  v193 = v223;
  sub_213DE3164(v242, v223, &qword_27C8F90A8, &qword_213F56F68);
  v194 = v243;
  sub_213DE3164(v243, v193 + v190, &qword_27C8F9080, &qword_213F56F40);
  sub_213DE3164(v186, v193 + v191, &qword_27C8F9068, &qword_213F56F28);
  sub_213F4DAC0();
  sub_213DE36FC(v186, &qword_27C8F9068, &qword_213F56F28);
  sub_213DE36FC(v194, &qword_27C8F9080, &qword_213F56F40);
  return sub_213DE36FC(v192, &qword_27C8F90A8, &qword_213F56F68);
}

uint64_t ActionBarModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v73 = a1;
  v72 = a2;
  v63 = sub_213F4DCE0();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C88, &qword_213F566E8);
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C90, &qword_213F566F0);
  v64 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v9 = &v51 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C98, &qword_213F566F8);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v51 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CA0, &qword_213F56700);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v51 - v11;
  v74 = v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CA8, &qword_213F56708);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CB0, &qword_213F56710);
  v14 = sub_213DE3AE4(&qword_27C8F8CB8, &qword_27C8F8CA8, &qword_213F56708, MEMORY[0x277CE04B0]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CC0, &qword_213F56718);
  v16 = sub_213DE3AE4(&qword_27C8F8CC8, &qword_27C8F8CC0, &qword_213F56718, MEMORY[0x277CDDF68]);
  v75 = v15;
  v76 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v7;
  v58 = v12;
  v57 = v13;
  v56 = v14;
  v55 = OpaqueTypeConformance2;
  sub_213F4E7E0();
  type metadata accessor for ActionBarModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  sub_213F4ED40();
  v18 = v75;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel___observationRegistrar;
  v75 = v18;
  v20 = sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4CB80();

  v21 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems;
  swift_beginAccess();
  v22 = *(v18 + v21);
  swift_getKeyPath();
  v75 = v18;

  sub_213F4CB80();

  swift_beginAccess();
  v79 = v22;

  sub_213E27300(v23);
  swift_getKeyPath();
  v75 = v18;
  *&v73 = v19;
  v54 = v20;
  sub_213F4CB80();

  swift_beginAccess();

  sub_213E27300(v24);
  v25 = v79;
  if (!(v79 >> 62))
  {
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      v51 = v9;
      v52 = v5;
      v53 = v3;
      v26 = 1;
      goto LABEL_4;
    }

LABEL_21:

LABEL_22:
    v32 = v63;
    v33 = v62;
    v34 = v61;
    v35 = v58;
    goto LABEL_23;
  }

LABEL_19:
  if (sub_213F4F7E0() != 1)
  {
    goto LABEL_21;
  }

  v51 = v9;
  v52 = v5;
  v53 = v3;
  v26 = sub_213F4F7E0();
LABEL_4:
  v9 = 0;
  v5 = v25 & 0xC000000000000001;
  v3 = &qword_27C8F8BE8;
  do
  {
    if (v26 == v9)
    {
      goto LABEL_14;
    }

    if (v5)
    {
      v27 = MEMORY[0x216052B30](v9, v25);
      if (__OFADD__(v9, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:

        v5 = v52;
        v9 = v51;
        goto LABEL_22;
      }
    }

    else
    {
      if (v9 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      v27 = *(v25 + 8 * v9 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_13;
      }
    }

    swift_getKeyPath();
    v75 = v27;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB80();

    v28 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
    swift_beginAccess();
    LODWORD(v28) = *(v27 + v28);

    ++v9;
  }

  while (v28 != 4);

  swift_getKeyPath();
  v75 = v18;
  sub_213F4CB80();

  v29 = OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch;
  swift_beginAccess();
  v30 = *(v18 + v29);

  v31 = v30 == 1;
  v5 = v52;
  v9 = v51;
  v32 = v63;
  v33 = v62;
  v34 = v61;
  v35 = v58;
  if (v31)
  {
    sub_213F4DCD0();
    goto LABEL_24;
  }

LABEL_23:
  sub_213F4DCC0();
LABEL_24:
  v75 = v35;
  v76 = v57;
  v77 = v56;
  v78 = v55;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v59;
  sub_213F4E690();
  (*(v33 + 8))(v34, v32);
  (*(v60 + 8))(v37, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD8, &qword_213F56728);
  sub_213F4D4D0();
  v38 = swift_allocObject();
  v73 = xmmword_213F55C80;
  *(v38 + 16) = xmmword_213F55C80;
  sub_213F4D4B0();
  v75 = v5;
  v76 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v66;
  v41 = v70;
  MEMORY[0x2160519A0](2, v38, v70, v39);

  (*(v64 + 8))(v9, v41);
  v42 = sub_213E1ED98();
  v43 = swift_allocObject();
  *(v43 + 16) = v73;
  sub_213F4D4C0();
  v75 = v41;
  v76 = v39;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v65;
  v46 = v71;
  MEMORY[0x2160519A0](v42, v43, v71, v44);

  (*(v69 + 8))(v40, v46);
  v47 = sub_213F4EF60();
  LOBYTE(v42) = sub_213E1ED98();
  v48 = v72;
  (*(v67 + 32))(v72, v45, v68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CE0, &qword_213F56730);
  v50 = v48 + *(result + 36);
  *v50 = v47;
  *(v50 + 8) = v42;
  return result;
}

uint64_t sub_213E22DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CC0, &qword_213F56718);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_213E1FB28(&v6 - v2);
  v4 = sub_213DE3AE4(&qword_27C8F8CC8, &qword_27C8F8CC0, &qword_213F56718, MEMORY[0x277CDDF68]);
  MEMORY[0x2160510F0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t View.actionBar(_:onSelect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v8 = type metadata accessor for ActionBarModifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v12 = v10 + *(v8 + 20);
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  type metadata accessor for ActionBarViewModel(0);
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);

  sub_213F4ED60();
  v13 = (v10 + *(v8 + 28));
  *v13 = sub_213E27834;
  v13[1] = v11;
  MEMORY[0x216051BF0](v10, a4, v8, v15);
  return sub_213E2A73C(v10, type metadata accessor for ActionBarModifier);
}

uint64_t EnvironmentValues.shouldShowActionBar.getter()
{
  sub_213E2785C();
  sub_213F4D800();
  return v1;
}

void *sub_213E2310C@<X0>(_BYTE *a1@<X8>)
{
  sub_213E2785C();
  result = sub_213F4D800();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.shouldShowActionBar.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_213E2785C();
  sub_213F4D800();
  *(a1 + 16) = *(a1 + 17);
  return sub_213E2324C;
}

uint64_t UITraitCollection.shouldShowActionBar.getter()
{
  sub_213E278B0();

  return sub_213F4F590();
}

uint64_t UIMutableTraits.shouldShowActionBar.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213E278B0();

  return sub_213F4CC80();
}

uint64_t sub_213E2331C@<X0>(_BYTE *a1@<X8>)
{
  sub_213E278B0();
  result = sub_213F4F590();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213E23360(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return UIMutableTraits.shouldShowActionBar.setter(v2, v3, v4);
}

uint64_t UIMutableTraits.shouldShowActionBar.getter(uint64_t a1, uint64_t a2)
{
  sub_213E278B0();

  return sub_213F4CC70();
}

uint64_t (*UIMutableTraits.shouldShowActionBar.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_213E278B0();
  *(a1 + 24) = sub_213F4CC70() & 1;
  return sub_213E234D0;
}

uint64_t sub_213E23524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_213F4CB40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_213E23598()
{
  sub_213F4F880();
  sub_213F4F2C0();
  sub_213F4CB40();
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_213F4F1B0();
  return sub_213F4F8C0();
}

uint64_t sub_213E23640(uint64_t a1)
{
  sub_213F4F2C0();
  sub_213F4CB40();
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_213F4F1B0();
}

uint64_t sub_213E236CC(uint64_t a1)
{
  sub_213F4F880();
  sub_213F4F2C0();
  sub_213F4CB40();
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_213F4F1B0();
  return sub_213F4F8C0();
}

uint64_t sub_213E23770(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_213F4F830() & 1) == 0)
  {
    return 0;
  }

  return _s10MapsDesign26RoutePlanningCellViewModelV2eeoiySbAC_ACtFZ_0();
}

void *ActionBarModifierPreview.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4EDA0();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - v5;
  v6 = sub_213F4CB40();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CF0, &qword_213F56738);
  v8 = *(type metadata accessor for ActionBarModifierPreview.Ocean(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_213F56400;
  v12 = (v11 + v10);
  *v12 = 0x63696669636150;
  v12[1] = 0xE700000000000000;
  sub_213F4CB30();
  v13 = (v12 + v9);
  *v13 = 0x6369746E616C7441;
  v13[1] = 0xE800000000000000;
  sub_213F4CB30();
  v14 = (v12 + 2 * v9);
  *v14 = 0x6E6169646E49;
  v14[1] = 0xE600000000000000;
  sub_213F4CB30();
  v15 = (v12 + 3 * v9);
  *v15 = 0x6E72656874756F53;
  v15[1] = 0xE800000000000000;
  sub_213F4CB30();
  v16 = (v12 + 4 * v9);
  *v16 = 0x63696669636150;
  v16[1] = 0xE700000000000000;
  sub_213F4CB30();
  v17 = (v12 + 5 * v9);
  *v17 = 0x6369746E616C7441;
  v17[1] = 0xE800000000000000;
  sub_213F4CB30();
  v18 = (v12 + 6 * v9);
  *v18 = 0x6E6169646E49;
  v18[1] = 0xE600000000000000;
  sub_213F4CB30();
  v19 = (v12 + 7 * v9);
  *v19 = 0x6E72656874756F53;
  v19[1] = 0xE800000000000000;
  sub_213F4CB30();
  *a1 = v11;
  v40 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CF8, &qword_213F56740);
  sub_213F4EA90();
  v20 = *(&v42 + 1);
  *(a1 + 8) = v42;
  *(a1 + 16) = v20;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_213F4EA90();
  v21 = v43;
  *(a1 + 24) = v42;
  *(a1 + 40) = v21;
  type metadata accessor for ActionBarViewModel(0);
  v22 = swift_allocObject();
  v23 = v33;
  sub_213F4CB30();
  (*(v34 + 32))(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id, v23, v35);
  sub_213F4CBB0();
  v24 = MEMORY[0x277D84F90];
  *(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = MEMORY[0x277D84F90];
  *(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = v24;
  *(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = v24;
  *(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = v24;
  *(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = v24;
  *(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = v24;
  *(v22 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = 0;
  v40 = v22;
  sub_213F4EA90();
  v25 = *(&v42 + 1);
  *(a1 + 48) = v42;
  *(a1 + 56) = v25;
  v26 = type metadata accessor for ActionBarModifierPreview(0);
  v28 = v38;
  v27 = v39;
  v29 = v36;
  (*(v38 + 104))(v36, *MEMORY[0x277CDF0D8], v39);
  (*(v28 + 16))(v37, v29, v27);
  sub_213F4EA90();
  (*(v28 + 8))(v29, v27);
  v30 = a1 + *(v26 + 36);
  LOBYTE(v40) = 1;
  result = sub_213F4EA90();
  v32 = *(&v42 + 1);
  *v30 = v42;
  *(v30 + 8) = v32;
  return result;
}

uint64_t ActionBarModifierPreview.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D00, &qword_213F56748);
  sub_213DE3AE4(&qword_27C8F8D08, &qword_27C8F8D00, &qword_213F56748, MEMORY[0x277CE14C0]);
  return sub_213F4D410();
}

uint64_t sub_213E23DB8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v75 = sub_213F4DC20();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F38, &qword_213F56E48);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v66 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F40, &qword_213F56E50);
  MEMORY[0x28223BE20](v81);
  v70 = &v66 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F48, &qword_213F56E58);
  v84 = *(v85 - 8);
  v6 = MEMORY[0x28223BE20](v85);
  v83 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v92 = &v66 - v8;
  v9 = type metadata accessor for ActionBarModifierPreview(0);
  v10 = *(v9 - 8);
  v76 = v9 - 8;
  MEMORY[0x28223BE20](v9 - 8);
  v90 = v11;
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8EE8, &qword_213F56DD0);
  v93 = *(v82 - 8);
  v13 = MEMORY[0x28223BE20](v82);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v66 - v15;
  v87 = type metadata accessor for ActionBarModifierPreview;
  sub_213E29808(a1, v12, type metadata accessor for ActionBarModifierPreview);
  v16 = *(v10 + 80);
  v17 = (v16 + 16) & ~v16;
  v88 = v17;
  v89 = v16;
  v18 = swift_allocObject();
  sub_213E29870(v12, v18 + v17, type metadata accessor for ActionBarModifierPreview);
  sub_213F4EB00();
  v67 = a1;
  v19 = *a1;
  v79 = a1[1];
  v78 = a1[2];
  *&v99 = v79;
  *(&v99 + 1) = v78;

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F50, &qword_213F56E60);
  sub_213F4EAC0();
  v97 = v19;
  v94 = &v97;
  v95 = sub_213E24A90;
  v96 = 0;
  sub_213F4CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F58, &qword_213F56E68);
  sub_213E1575C(&qword_281188810, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_213E2A240(&qword_27C8F8F60, &qword_27C8F8F58, &qword_213F56E68, sub_213E29A60);
  v20 = v69;
  sub_213F4E250();

  v21 = v67;
  v22 = v67[5];
  v99 = *(v67 + 3);
  v100 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F98, &qword_213F56E90);
  sub_213F4EAC0();
  v23 = v71;
  sub_213F4DC10();
  sub_213DE3AE4(&qword_27C8F8FA0, &qword_27C8F8F38, &qword_213F56E48, MEMORY[0x277CDE5A0]);
  v24 = v72;
  v25 = v70;
  sub_213F4E390();

  (*(v74 + 8))(v23, v75);
  (*(v73 + 8))(v20, v24);
  v26 = *(v21 + 56);
  v97 = *(v21 + 48);
  v98 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FA8, &qword_213F56E98);
  sub_213F4EAA0();
  v27 = v68;
  v28 = v87;
  sub_213E29808(v21, v68, v87);
  v29 = v88;
  v30 = swift_allocObject();
  sub_213E29870(v27, v30 + v29, v28);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_213E29D7C;
  *(v31 + 24) = v30;
  v32 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FB0, &qword_213F56EA0) + 36)];
  v33 = v25;
  *v32 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for ActionBarModifier(0);
  v35 = v32 + *(v34 + 20);
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  type metadata accessor for ActionBarViewModel(0);
  sub_213E1575C(&qword_27C8F8C38, type metadata accessor for ActionBarViewModel, &protocol conformance descriptor for ActionBarViewModel);
  sub_213F4ED60();
  v36 = (v32 + *(v34 + 28));
  *v36 = sub_213E2A9D4;
  v36[1] = v31;
  KeyPath = swift_getKeyPath();
  v38 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FB8, &qword_213F56EA8) + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC0, &unk_213F56EB0) + 28);
  v40 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0);
  sub_213F4EAC0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
  (*(*(v41 - 8) + 56))(v38 + v39, 0, 1, v41);
  *v38 = KeyPath;
  v42 = swift_getKeyPath();
  v43 = v21 + *(v40 + 44);
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v97) = v44;
  v98 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  LOBYTE(v31) = v99;
  v46 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FD0, &qword_213F56EC8) + 36);
  *v46 = v42;
  *(v46 + 8) = v31;
  v47 = v87;
  sub_213E29808(v21, v27, v87);
  v48 = v88;
  v49 = swift_allocObject();
  sub_213E29870(v27, v49 + v48, v47);
  v50 = (v33 + *(v81 + 36));
  *v50 = sub_213E29DFC;
  v50[1] = v49;
  v50[2] = 0;
  v50[3] = 0;
  v97 = v79;
  v98 = v78;
  sub_213F4EAA0();
  v51 = *(v99 + 16);

  v97 = v51;
  sub_213E29808(v21, v27, v47);
  v52 = swift_allocObject();
  sub_213E29870(v27, v52 + v48, v47);
  sub_213E29F08();
  v53 = v92;
  sub_213F4E810();

  sub_213DE36FC(v33, &qword_27C8F8F40, &qword_213F56E50);
  v54 = *(v93 + 16);
  v55 = v80;
  v56 = v82;
  v54(v80, v91, v82);
  v57 = v84;
  v58 = *(v84 + 16);
  v59 = v83;
  v60 = v85;
  v58(v83, v53, v85);
  v61 = v86;
  v54(v86, v55, v56);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9008, &qword_213F56ED8);
  v58(&v61[*(v62 + 48)], v59, v60);
  v63 = *(v57 + 8);
  v63(v92, v60);
  v64 = *(v93 + 8);
  v64(v91, v56);
  v63(v59, v60);
  return (v64)(v55, v56);
}

double sub_213E249C4(uint64_t a1)
{
  type metadata accessor for ActionBarModifierPreview(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  sub_213F4EAB0();

  return result;
}

double sub_213E24A70@<D0>(uint64_t a1@<X8>)
{
  result = 2.78966638e39;
  *a1 = xmmword_213F56410;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

double sub_213E24A90@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *a1;
  sub_213DBC9EC();

  v3 = sub_213F4E310();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_213F4E050();
  sub_213F4EEF0();
  sub_213F4D4E0();
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 137) = *&v12[64];
  *(a2 + 153) = *&v12[80];
  *(a2 + 169) = *&v12[96];
  *(a2 + 73) = *v12;
  *(a2 + 89) = *&v12[16];
  *(a2 + 105) = *&v12[32];
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 72) = 1;
  *(a2 + 184) = *(&v19 + 1);
  *(a2 + 121) = *&v12[48];
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0;
  return result;
}

void sub_213E24BF0(uint64_t a1)
{
  v2 = sub_213F4EDA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  swift_getKeyPath();
  v21 = a1;
  sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
  sub_213F4CB80();

  v9 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type;
  swift_beginAccess();
  switch(*(a1 + v9))
  {
    case 2:
    case 5:
      v12 = MEMORY[0x277CDF0D0];
      goto LABEL_7;
    case 7:
    case 8:
    case 9:
      swift_getKeyPath();
      v20 = a1;
      sub_213F4CB80();

      v20 = a1;
      swift_getKeyPath();
      sub_213F4CBA0();

      v11 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled;
      swift_beginAccess();
      *(a1 + v11) = (*(a1 + v11) & 1) == 0;
      v18 = a1;
      swift_getKeyPath();
      sub_213F4CB90();

      return;
    case 0xA:
      swift_getKeyPath();
      v20 = a1;
      sub_213F4CB80();

      v13 = a1 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label;
      swift_beginAccess();
      if (*(v13 + 8))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v17 - 3) = 0;
        *(&v17 - 2) = 0;
        *(&v17 - 4) = a1;
        v18 = a1;
        sub_213F4CB70();

        v15 = (a1 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
        swift_beginAccess();
        if (v15[1])
        {
          v16 = swift_getKeyPath();
          MEMORY[0x28223BE20](v16);
          *(&v17 - 3) = 0;
          *(&v17 - 2) = 0;
          *(&v17 - 4) = a1;
          v19 = a1;
          sub_213F4CB70();
        }

        else
        {
          *v15 = 0;
          v15[1] = 0;
        }
      }

      else
      {
        sub_213E169B4(0x6E696D203534, 0xE600000000000000);
        sub_213E165A0(0x6C6C69662E726163, 0xE800000000000000);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_213F55C80;
      *(v10 + 56) = &type metadata for ActionBarItemType;
      swift_getKeyPath();
      v19 = a1;
      goto LABEL_3;
    case 0xB:
    case 0xC:
      v12 = MEMORY[0x277CDF0D8];
LABEL_7:
      (*(v3 + 104))(v8, *v12, v2);
      type metadata accessor for ActionBarModifierPreview(0);
      (*(v3 + 16))(v6, v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0);
      sub_213F4EAB0();
      (*(v3 + 8))(v8, v2);
      return;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_213F55C80;
      *(v10 + 56) = &type metadata for ActionBarItemType;
      swift_getKeyPath();
      v20 = a1;
LABEL_3:
      sub_213F4CB80();

      *(v10 + 32) = *(a1 + v9);
      sub_213F4F860();

      return;
  }
}

uint64_t sub_213E251A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213DE3164(a1, &v5 - v3, &qword_27C8F8D50, &unk_213F5E0A0);
  return sub_213F4D760();
}

uint64_t sub_213E25250(uint64_t a1)
{
  v76 = a1;
  v1 = sub_213F4CB40();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_213F56420;
  v83 = type metadata accessor for ActionBarItemViewModel(0);
  v5 = swift_allocObject();
  sub_213F4CB30();
  v6 = *(v2 + 32);
  v85 = v4;
  v86 = v2 + 32;
  v87 = v1;
  v84 = v6;
  v6(v5 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v4, v1);
  v7 = (v5 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v5 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v5 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v5 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 0;
  *(v5 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v5 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v7[1])
  {
    KeyPath = swift_getKeyPath();
    v80 = &v75;
    MEMORY[0x28223BE20](KeyPath);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v5;
    v113 = v5;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }

  swift_beginAccess();
  if (v8[1])
  {
    v11 = swift_getKeyPath();
    MEMORY[0x28223BE20](v11);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v5;
    v112 = v5;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
  }

  swift_beginAccess();
  if (*(v5 + v9))
  {
    v12 = swift_getKeyPath();
    MEMORY[0x28223BE20](v12);
    *(&v75 - 2) = v5;
    *(&v75 - 1) = 0;
    v111 = v5;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v82 + 32) = v5;
  v13 = swift_allocObject();
  v14 = v85;
  sub_213F4CB30();
  v84(v13 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v14, v87);
  v15 = (v13 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v13 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v13 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v13 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 2;
  *(v13 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v13 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v15[1])
  {
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v13;
    v110 = v13;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v15 = 0;
    v15[1] = 0;
  }

  swift_beginAccess();
  if (v16[1])
  {
    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v13;
    v109 = v13;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v16 = 0;
    v16[1] = 0;
  }

  swift_beginAccess();
  if (*(v13 + v17))
  {
    v20 = swift_getKeyPath();
    MEMORY[0x28223BE20](v20);
    *(&v75 - 2) = v13;
    *(&v75 - 1) = 0;
    v108 = v13;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v82 + 40) = v13;
  v21 = swift_allocObject();
  v22 = v85;
  sub_213F4CB30();
  v84(v21 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v22, v87);
  v23 = (v21 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v21 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v21 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v21 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 3;
  *(v21 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v21 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v23[1])
  {
    v26 = swift_getKeyPath();
    MEMORY[0x28223BE20](v26);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v21;
    v107 = v21;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v23 = 0;
    v23[1] = 0;
  }

  swift_beginAccess();
  if (v24[1])
  {
    v27 = swift_getKeyPath();
    MEMORY[0x28223BE20](v27);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v21;
    v106 = v21;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v24 = 0;
    v24[1] = 0;
  }

  swift_beginAccess();
  if (*(v21 + v25))
  {
    v28 = swift_getKeyPath();
    MEMORY[0x28223BE20](v28);
    *(&v75 - 2) = v21;
    *(&v75 - 1) = 0;
    v105 = v21;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v82 + 48) = v21;
  v79 = swift_allocObject();
  v77 = xmmword_213F51BA0;
  *(v79 + 16) = xmmword_213F51BA0;
  v29 = swift_allocObject();
  v30 = v85;
  sub_213F4CB30();
  v84(v29 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v30, v87);
  v31 = (v29 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v29 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v29 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v29 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 4;
  *(v29 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v29 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v31[1])
  {
    v34 = swift_getKeyPath();
    MEMORY[0x28223BE20](v34);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v29;
    v104 = v29;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v31 = 0;
    v31[1] = 0;
  }

  swift_beginAccess();
  if (v32[1])
  {
    v35 = swift_getKeyPath();
    MEMORY[0x28223BE20](v35);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v29;
    v103 = v29;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v32 = 0;
    v32[1] = 0;
  }

  swift_beginAccess();
  if (*(v29 + v33))
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36);
    *(&v75 - 2) = v29;
    *(&v75 - 1) = 0;
    v102 = v29;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v79 + 32) = v29;
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  v37 = swift_allocObject();
  v38 = v85;
  sub_213F4CB30();
  v84(v37 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v38, v87);
  v39 = (v37 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v37 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v40 = 0;
  v40[1] = 0;
  v41 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v37 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v37 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 11;
  *(v37 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 0;
  *(v37 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v39[1])
  {
    v42 = swift_getKeyPath();
    MEMORY[0x28223BE20](v42);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v37;
    v101 = v37;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v39 = 0;
    v39[1] = 0;
  }

  swift_beginAccess();
  if (v40[1])
  {
    v43 = swift_getKeyPath();
    MEMORY[0x28223BE20](v43);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v37;
    v100 = v37;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v40 = 0;
    v40[1] = 0;
  }

  swift_beginAccess();
  if (*(v37 + v41))
  {
    v44 = swift_getKeyPath();
    MEMORY[0x28223BE20](v44);
    *(&v75 - 2) = v37;
    *(&v75 - 1) = 0;
    v99 = v37;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  *(v78 + 32) = v37;
  v80 = swift_allocObject();
  *(v80 + 1) = xmmword_213F55C60;
  v45 = swift_allocObject();
  v46 = v85;
  sub_213F4CB30();
  v84(v45 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v46, v87);
  v47 = (v45 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v45 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v48 = 0;
  v48[1] = 0;
  v49 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v45 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v45 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 6;
  *(v45 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 1;
  *(v45 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v47[1])
  {
    v50 = swift_getKeyPath();
    MEMORY[0x28223BE20](v50);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v45;
    v98 = v45;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v47 = 0;
    v47[1] = 0;
  }

  swift_beginAccess();
  if (v48[1])
  {
    v51 = swift_getKeyPath();
    MEMORY[0x28223BE20](v51);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v45;
    v97 = v45;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v48 = 0;
    v48[1] = 0;
  }

  swift_beginAccess();
  if (*(v45 + v49))
  {
    v52 = swift_getKeyPath();
    MEMORY[0x28223BE20](v52);
    *(&v75 - 2) = v45;
    *(&v75 - 1) = 0;
    v96 = v45;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v80[4] = v45;
  v53 = swift_allocObject();
  v54 = v85;
  sub_213F4CB30();
  v84(v53 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v54, v87);
  v55 = (v53 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v55 = 0;
  v55[1] = 0;
  v56 = (v53 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v56 = 0;
  v56[1] = 0;
  v57 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v53 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v53 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 1;
  *(v53 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 1;
  *(v53 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v55[1])
  {
    v58 = swift_getKeyPath();
    MEMORY[0x28223BE20](v58);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v53;
    v95 = v53;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v55 = 0;
    v55[1] = 0;
  }

  swift_beginAccess();
  if (v56[1])
  {
    v59 = swift_getKeyPath();
    MEMORY[0x28223BE20](v59);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v53;
    v94 = v53;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v56 = 0;
    v56[1] = 0;
  }

  swift_beginAccess();
  if (*(v53 + v57))
  {
    v60 = swift_getKeyPath();
    MEMORY[0x28223BE20](v60);
    *(&v75 - 2) = v53;
    *(&v75 - 1) = 0;
    v93 = v53;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v80[5] = v53;
  v81 = swift_allocObject();
  *(v81 + 16) = v77;
  v61 = swift_allocObject();
  v62 = v85;
  sub_213F4CB30();
  v84(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__id, v62, v87);
  v63 = (v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__symbol);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__label);
  *v64 = 0;
  v64[1] = 0;
  v65 = OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor;
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__tintColor) = 0;
  sub_213F4CBB0();
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__type) = 12;
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__disabled) = 1;
  *(v61 + OBJC_IVAR____TtC10MapsDesign22ActionBarItemViewModel__toggled) = 0;
  swift_beginAccess();
  if (v63[1])
  {
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v61;
    v92 = v61;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v63 = 0;
    v63[1] = 0;
  }

  swift_beginAccess();
  if (v64[1])
  {
    v67 = swift_getKeyPath();
    MEMORY[0x28223BE20](v67);
    *(&v75 - 3) = 0;
    *(&v75 - 2) = 0;
    *(&v75 - 4) = v61;
    v91 = v61;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  else
  {
    *v64 = 0;
    v64[1] = 0;
  }

  swift_beginAccess();
  if (*(v61 + v65))
  {
    v68 = swift_getKeyPath();
    MEMORY[0x28223BE20](v68);
    *(&v75 - 2) = v61;
    *(&v75 - 1) = 0;
    v89 = v61;
    sub_213E1575C(&qword_27C8F8BE8, type metadata accessor for ActionBarItemViewModel, &protocol conformance descriptor for ActionBarItemViewModel);
    sub_213F4CB70();
  }

  v69 = v81;
  *(v81 + 32) = v61;
  type metadata accessor for ActionBarViewModel(0);
  v70 = swift_allocObject();
  v71 = v85;
  sub_213F4CB30();
  v84(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__id, v71, v87);
  sub_213F4CBB0();
  *(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingItems) = v82;
  *(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredItems) = MEMORY[0x277D84F90];
  v72 = v78;
  *(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingItems) = v79;
  *(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__leadingEditItems) = v72;
  *(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__centeredEditItems) = v80;
  *(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__trailingEditItems) = v69;
  *(v70 + OBJC_IVAR____TtC10MapsDesign18ActionBarViewModel__forceExpandedSearch) = 0;
  v73 = *(v76 + 56);
  v89 = *(v76 + 48);
  v90 = v73;
  v88 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FA8, &qword_213F56E98);
  return sub_213F4EAB0();
}

double sub_213E26E88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FA8, &qword_213F56E98);
  sub_213F4EAA0();
  sub_213E1B0F8(&unk_282643B08, v3 == 0);

  return result;
}

uint64_t sub_213E26EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D00, &qword_213F56748);
  sub_213DE3AE4(&qword_27C8F8D08, &qword_27C8F8D00, &qword_213F56748, MEMORY[0x277CE14C0]);
  return sub_213F4D410();
}

uint64_t sub_213E270FC(uint64_t a1)
{
  v2 = sub_213F4D560();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D660();
}

__n128 sub_213E271C4@<Q0>(void (*a1)(__int128 *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(&v11);
  v38 = v23;
  v39 = v24;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v41[12] = v23;
  v41[13] = v24;
  v41[8] = v19;
  v41[9] = v20;
  v41[10] = v21;
  v41[11] = v22;
  v41[4] = v15;
  v41[5] = v16;
  v41[6] = v17;
  v41[7] = v18;
  v41[0] = v11;
  v41[1] = v12;
  v40 = v25;
  v42 = v25;
  v41[2] = v13;
  v41[3] = v14;
  sub_213DE3164(&v26, &v10, &qword_27C8F8F70, &qword_213F56E70);
  sub_213DE36FC(v41, &qword_27C8F8F70, &qword_213F56E70);
  v3 = v39;
  *(a2 + 192) = v38;
  *(a2 + 208) = v3;
  *(a2 + 224) = v40;
  v4 = v35;
  *(a2 + 128) = v34;
  *(a2 + 144) = v4;
  v5 = v37;
  *(a2 + 160) = v36;
  *(a2 + 176) = v5;
  v6 = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v6;
  v7 = v33;
  *(a2 + 96) = v32;
  *(a2 + 112) = v7;
  v8 = v27;
  *a2 = v26;
  *(a2 + 16) = v8;
  result = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_213E27300(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_213F4F7E0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_213F4F7E0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_213E274E8(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_213E27588(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_213E273F0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_213F1E18C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_213E274E8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_213F4F7E0();
LABEL_9:
  result = sub_213F4F740();
  *v2 = result;
  return result;
}

uint64_t sub_213E27588(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_213F4F7E0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_213F4F7E0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_213DE3AE4(&qword_27C8F9158, &qword_27C8F9140, &qword_213F56FD8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9140, &qword_213F56FD8);
            v9 = sub_213E2772C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ActionBarItemViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_213E2772C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216052B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_213E277AC;
  }

  __break(1u);
  return result;
}

uint64_t sub_213E277B4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

unint64_t sub_213E2785C()
{
  result = qword_27C8F8CE8;
  if (!qword_27C8F8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8CE8);
  }

  return result;
}

unint64_t sub_213E278B0()
{
  result = qword_2811847E8;
  if (!qword_2811847E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811847E8);
  }

  return result;
}

unint64_t sub_213E27950()
{
  result = qword_27C8F8D10;
  if (!qword_27C8F8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8D10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionBarItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionBarItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_213E27B34(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_213E28088(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213E2863C(uint64_t a1)
{
  sub_213E289F4(319, &qword_281183508, &qword_27C8F8D50, &unk_213F5E0A0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213E28A58(319, &qword_281183500, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213E28990(319, &qword_27C8F8D58, type metadata accessor for ActionBarViewModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        sub_213DE22E8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213E287A8(uint64_t a1)
{
  sub_213E28990(319, &qword_27C8F8D78, type metadata accessor for ActionBarModifierPreview.Ocean, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_213E289F4(319, &qword_27C8F8D80, &qword_27C8F8CF8, &qword_213F56740, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_213E28A58(319, &qword_27C8F8D88, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_213E28990(319, &qword_27C8F8D90, type metadata accessor for ActionBarViewModel, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_213E28990(319, &qword_27C8F8D98, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_213E28A58(319, &qword_2811827B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213E28990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_213E289F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_213E28A58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_213E28AA8()
{
  result = qword_27C8F8DA0;
  if (!qword_27C8F8DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CE0, &qword_213F56730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8C98, &qword_213F566F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8C90, &qword_213F566F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8C88, &qword_213F566E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CA8, &qword_213F56708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CB0, &qword_213F56710);
    sub_213DE3AE4(&qword_27C8F8CB8, &qword_27C8F8CA8, &qword_213F56708, MEMORY[0x277CE04B0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8CC0, &qword_213F56718);
    sub_213DE3AE4(&qword_27C8F8CC8, &qword_27C8F8CC0, &qword_213F56718, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_27C8F8DA8, &qword_27C8F8DB0, &qword_213F56AE0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8DA0);
  }

  return result;
}

uint64_t sub_213E28D44(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213E28E18(uint64_t a1)
{
  sub_213E28990(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionBarItemViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_213DE22E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_213E28F4C()
{
  result = qword_27C8F8DF8;
  if (!qword_27C8F8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8DF8);
  }

  return result;
}

uint64_t sub_213E28FA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionBarItem(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_213E1E28C(a1, v6, v7, v8, v9, v10, a2);
}

unint64_t sub_213E29028()
{
  result = qword_281182328;
  if (!qword_281182328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281182328);
  }

  return result;
}

unint64_t sub_213E29074()
{
  result = qword_27C8F8E28;
  if (!qword_27C8F8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8E10, &qword_213F56CA8);
    sub_213E1575C(&qword_27C8F8E30, MEMORY[0x277CDDEB0], MEMORY[0x277CDDEA8]);
    sub_213E29130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8E28);
  }

  return result;
}

unint64_t sub_213E29130()
{
  result = qword_27C8F8E38;
  if (!qword_27C8F8E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8E40, &qword_213F56CC8);
    sub_213DE3AE4(&qword_27C8F8E48, &qword_27C8F8E50, &qword_213F56CD0, &unk_213F64910);
    sub_213DE3AE4(&qword_27C8F8E58, &qword_27C8F8E60, &qword_213F56CD8, &unk_213F64910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8E38);
  }

  return result;
}

uint64_t sub_213E29210@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionBarItem(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_213E1DC84(a1, v6, v7, v8, a2);
}

id sub_213E29294(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  return a3;
}

double sub_213E292E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  return result;
}

uint64_t sub_213E29328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionBarItem(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  return sub_213E1CE14(a1, v2 + v6, v10, v11, v12, v13, a2);
}

uint64_t sub_213E29428(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E294AC()
{
  result = qword_27C8F8EA8;
  if (!qword_27C8F8EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8EB0, &qword_213F56D08);
    sub_213DE3AE4(&qword_27C8F8EB8, &qword_27C8F8EC0, &unk_213F56D10, MEMORY[0x277CE1138]);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8EA8);
  }

  return result;
}

uint64_t objectdestroy_194Tm()
{
  v1 = *(type metadata accessor for ActionBarItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_213F4D290();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213E296DC()
{
  v1 = type metadata accessor for ActionBarItem(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  return (*(v0 + *(v1 + 24) + v3))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_213E2977C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_213DBC9EC();

  return sub_213F4EA80();
}

uint64_t sub_213E29808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E29870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E298F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9010, &qword_213F56EE0);
  sub_213F4CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F70, &qword_213F56E70);
  sub_213DE3AE4(&qword_27C8F9018, &qword_27C8F9010, &qword_213F56EE0, MEMORY[0x277D83980]);
  sub_213E29A60();
  sub_213E1575C(&qword_27C8F9020, type metadata accessor for ActionBarModifierPreview.Ocean, &unk_213F56C28);
  return sub_213F4ECD0();
}

unint64_t sub_213E29A60()
{
  result = qword_27C8F8F68;
  if (!qword_27C8F8F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F70, &qword_213F56E70);
    sub_213E29B18();
    sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8F68);
  }

  return result;
}

unint64_t sub_213E29B18()
{
  result = qword_27C8F8F78;
  if (!qword_27C8F8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F80, &qword_213F56E78);
    sub_213E29BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8F78);
  }

  return result;
}

unint64_t sub_213E29BA4()
{
  result = qword_281183338;
  if (!qword_281183338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F88, &unk_213F56E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183338);
  }

  return result;
}

uint64_t objectdestroy_231Tm()
{
  v1 = (type metadata accessor for ActionBarModifierPreview(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[10];
  v4 = sub_213F4EDA0();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0);

  return swift_deallocObject();
}

void sub_213E29D7C(uint64_t a1)
{
  type metadata accessor for ActionBarModifierPreview(0);

  sub_213E24BF0(a1);
}

uint64_t sub_213E29E14(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActionBarModifierPreview(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_213E29E88(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ActionBarModifierPreview(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213E26E88(a1, a2, v6);
}

unint64_t sub_213E29F08()
{
  result = qword_27C8F8FD8;
  if (!qword_27C8F8FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F40, &qword_213F56E50);
    sub_213E29F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FD8);
  }

  return result;
}

unint64_t sub_213E29F94()
{
  result = qword_27C8F8FE0;
  if (!qword_27C8F8FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8FD0, &qword_213F56EC8);
    sub_213E2A04C();
    sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FE0);
  }

  return result;
}

unint64_t sub_213E2A04C()
{
  result = qword_27C8F8FE8;
  if (!qword_27C8F8FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8FB8, &qword_213F56EA8);
    sub_213E2A104();
    sub_213DE3AE4(&qword_27C8F8FF8, &qword_27C8F8FC0, &unk_213F56EB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FE8);
  }

  return result;
}

unint64_t sub_213E2A104()
{
  result = qword_27C8F8FF0;
  if (!qword_27C8F8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8FB0, &qword_213F56EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F38, &qword_213F56E48);
    sub_213DE3AE4(&qword_27C8F8FA0, &qword_27C8F8F38, &qword_213F56E48, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_213E1575C(&qword_27C8F8DB8, type metadata accessor for ActionBarModifier, &protocol conformance descriptor for ActionBarModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8FF0);
  }

  return result;
}

uint64_t sub_213E2A240(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E2A2BC()
{
  result = qword_27C8F90D8;
  if (!qword_27C8F90D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F90E0, &qword_213F56F78);
    sub_213E1575C(&qword_27C8F90E8, type metadata accessor for ActionBarItem, &unk_213F56B38);
    sub_213E1575C(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F90D8);
  }

  return result;
}

unint64_t sub_213E2A3A8()
{
  result = qword_27C8F90F8;
  if (!qword_27C8F90F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9048, &qword_213F56F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9058, &qword_213F56F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
    sub_213E2A4A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F90F8);
  }

  return result;
}

unint64_t sub_213E2A4A0()
{
  result = qword_27C8F9108;
  if (!qword_27C8F9108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9100, &qword_213F56F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9110, &qword_213F56F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9118, &qword_213F56F90);
    sub_213DE3AE4(&qword_27C8F9120, &qword_27C8F9118, &qword_213F56F90, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9108);
  }

  return result;
}

unint64_t sub_213E2A5E0()
{
  result = qword_27C8F9138;
  if (!qword_27C8F9138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9130, &qword_213F56FA0);
    sub_213E2A2BC();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9138);
  }

  return result;
}

uint64_t sub_213E2A698(uint64_t a1)
{
  v3 = type metadata accessor for ActionBarModifier(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return (*(v1 + *(v3 + 28) + v5))(*(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_213E2A73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213E2A810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E2A880()
{
  result = qword_27C8F9160;
  if (!qword_27C8F9160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9168, &unk_213F56FE0);
    sub_213E2A904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9160);
  }

  return result;
}

unint64_t sub_213E2A904()
{
  result = qword_27C8F9170;
  if (!qword_27C8F9170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8E18, &unk_213F56CB0);
    sub_213E29074();
    sub_213DE3AE4(&qword_27C8F8E68, &qword_27C8F8E20, &qword_213F56CC0, &unk_213F64910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9170);
  }

  return result;
}

uint64_t sub_213E2AB40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel, &protocol conformance descriptor for CategoryTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E2AC38(uint64_t a1)
{
  v2 = sub_213F4CB40();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_213E2AE1C(v4);
}

uint64_t sub_213E2AD04@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel, &protocol conformance descriptor for CategoryTileViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E2AE1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213E2B0BC(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel, &protocol conformance descriptor for CategoryTileViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213E2B0BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213E2B104(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_213E2B23C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel, &protocol conformance descriptor for CategoryTileViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E2AAE0(v4);
  return sub_213E2B374;
}

void sub_213E2B374(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_213F4CB90();

  free(v1);
}

uint64_t CategoryTileViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title);

  return v1;
}

uint64_t CategoryTileViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle);

  return v1;
}

uint64_t CategoryTileViewModel.colorGradient.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);

  return v1;
}

uint64_t CategoryTileViewModel.__allocating_init(title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = sub_213E2EAEC(a1, a2, a3, a4, v17, a6, a7, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v18;
}

uint64_t CategoryTileViewModel.init(title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_213E2E948(a1, a2, a3, a4, v18, a6, a7, v22[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

uint64_t CategoryTileViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider));

  v3 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CategoryTileViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider));

  v3 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213E2B8DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213E2BADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CategoryTile(0);
  sub_213DE3164(v1 + *(v10 + 24), v9, &qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D390();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213E2BCE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E2B0BC(&qword_27C8F9180, type metadata accessor for CategoryTileViewModel, &protocol conformance descriptor for CategoryTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void *CategoryTile.init(model:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CategoryTile(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[9];
  result = sub_213F4EA90();
  *v11 = v14;
  *(v11 + 1) = v15;
  *(a4 + v8[7]) = a1;
  v13 = (a4 + v8[8]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

double sub_213E2BF14()
{
  v1 = sub_213F4D390();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  v8 = (v0 + *(type metadata accessor for CategoryTile(0) + 36));
  v9 = *v8;
  v10 = *(v8 + 1);
  v16[16] = v9;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v16[15])
  {
    return 32.0;
  }

  sub_213E2BADC(v7);
  v12 = *(v2 + 104);
  v12(v5, *MEMORY[0x277CDFA00], v1);
  v13 = sub_213F4D380();
  v14 = *(v2 + 8);
  v14(v5, v1);
  v14(v7, v1);
  result = 12.0;
  if ((v13 & 1) == 0)
  {
    sub_213E2BADC(v7);
    v12(v5, *MEMORY[0x277CDF988], v1);
    sub_213E2B0BC(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v15 = sub_213F4F1D0();
    v14(v5, v1);
    v14(v7, v1);
    result = 32.0;
    if (v15)
    {
      return 20.0;
    }
  }

  return result;
}

double sub_213E2C178()
{
  v1 = sub_213F4D390();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  v8 = (v0 + *(type metadata accessor for CategoryTile(0) + 36));
  v9 = *v8;
  v10 = *(v8 + 1);
  v14[16] = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  result = 0.0;
  if ((v14[15] & 1) == 0)
  {
    sub_213E2BADC(v7);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF988], v1);
    sub_213E2B0BC(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v12 = sub_213F4F1D0();
    v13 = *(v2 + 8);
    v13(v5, v1);
    v13(v7, v1);
    result = 0.0;
    if (v12)
    {
      return 12.0;
    }
  }

  return result;
}

uint64_t sub_213E2C354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = type metadata accessor for MapsDesignImage(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9300, &qword_213F57360);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9308, &qword_213F57368);
  MEMORY[0x28223BE20](v62);
  v12 = &v60 - v11;
  v61 = type metadata accessor for CategoryTile(0);
  sub_213DEBAA8(*(v2 + *(v61 + 28)) + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider, &v6[v4[10]]);
  v13 = sub_213F4EEE0();
  v60 = v14;
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v15 = v4[7];
  *&v6[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v16 = v4[8];
  *&v6[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v17 = v4[9];
  *&v6[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v18 = &v6[v4[14]];
  v19 = &v6[v4[15]];
  v20 = &v6[v4[16]];
  v64 = 0;
  v65 = 0;
  memset(v66, 0, sizeof(v66));
  sub_213F4EA90();
  v21 = v68;
  v22 = v69;
  v23 = v70;
  v24 = v71;
  v25 = v72;
  *v20 = v67;
  *(v20 + 2) = v21;
  v20[24] = v22;
  v20[25] = v23;
  v20[26] = v24;
  *(v20 + 4) = v25;
  v26 = v4[17];
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v6[v26] = v67;
  v6[v4[11]] = 0;
  v27 = &v6[v4[12]];
  v28 = v60;
  *v27 = v13;
  v27[1] = v28;
  v6[v4[13]] = 1;
  *v18 = 0;
  *(v18 + 1) = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_213E2F560(v6, v10, type metadata accessor for MapsDesignImage);
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36)];
  *v29 = 0x3FFD1745D1745D17;
  *(v29 + 4) = 0;
  sub_213DEBB74(v6);
  LOBYTE(v18) = sub_213F4E060();
  sub_213E2BF14();
  sub_213F4CDA0();
  v30 = &v10[*(v8 + 44)];
  *v30 = v18;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = sub_213F4E070();
  v36 = (v2 + *(v61 + 36));
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v67) = v37;
  *(&v67 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v64 == 1)
  {
    sub_213E2BF14();
  }

  sub_213F4CDA0();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_213DE2B44(v10, v12, &qword_27C8F9300, &qword_213F57360);
  v47 = &v12[*(v62 + 36)];
  *v47 = v35;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = sub_213F4E040();
  sub_213E2C178();
  sub_213F4CDA0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v63;
  sub_213DE2B44(v12, v63, &qword_27C8F9308, &qword_213F57368);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92E8, &qword_213F57348);
  v59 = v57 + *(result + 36);
  *v59 = v48;
  *(v59 + 8) = v50;
  *(v59 + 16) = v52;
  *(v59 + 24) = v54;
  *(v59 + 32) = v56;
  *(v59 + 40) = 0;
  return result;
}

uint64_t sub_213E2C7F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92B8, &qword_213F57310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C0, &qword_213F57318);
  v7 = MEMORY[0x28223BE20](v40);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v41 = &v39 - v12;
  v13 = type metadata accessor for CategoryTile(0);
  v14 = v13 - 8;
  v39 = *(v13 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_213F51DE0;
  v18 = (*(a1 + *(v14 + 36)) + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);
  *(v17 + 32) = *v18;
  *(v17 + 40) = v18[1];

  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v17);
  sub_213F4D2C0();
  v19 = v55;
  v20 = v56;
  v21 = v57;
  v22 = v58;
  v23 = v59;
  sub_213E2F560(a1, v16, type metadata accessor for CategoryTile);
  v24 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v25 = swift_allocObject();
  sub_213E2EC34(v16, v25 + v24);
  *v6 = sub_213F4DA40();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92D0, &unk_213F57328);
  sub_213E2CD78(a1, &v6[*(v26 + 44)]);
  v27 = (a1 + *(v14 + 44));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v60) = v28;
  *(&v60 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (LOBYTE(v49[0]) == 1)
  {
    sub_213F4EF00();
  }

  else
  {
    sub_213F4EEE0();
  }

  sub_213F4D4E0();
  sub_213DE2B44(v6, v11, &qword_27C8F92B8, &qword_213F57310);
  v30 = &v11[*(v40 + 36)];
  v31 = v65;
  *(v30 + 4) = v64;
  *(v30 + 5) = v31;
  *(v30 + 6) = v66;
  v32 = v61;
  *v30 = v60;
  *(v30 + 1) = v32;
  v33 = v63;
  *(v30 + 2) = v62;
  *(v30 + 3) = v33;
  v34 = v41;
  sub_213DE2B44(v11, v41, &qword_27C8F92C0, &qword_213F57318);
  v35 = v42;
  sub_213DE3164(v34, v42, &qword_27C8F92C0, &qword_213F57318);
  *&v43 = v19;
  *(&v43 + 1) = v20;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  *&v45 = v23;
  WORD4(v45) = 256;
  v46 = sub_213DD7524;
  v47 = 0;
  *&v48 = sub_213E2F4F0;
  *(&v48 + 1) = v25;
  a2[2] = v45;
  a2[3] = sub_213DD7524;
  a2[4] = v48;
  v36 = v44;
  *a2 = v43;
  a2[1] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92D8, &qword_213F57338);
  sub_213DE3164(v35, a2 + *(v37 + 48), &qword_27C8F92C0, &qword_213F57318);
  sub_213DE3164(&v43, v49, &qword_27C8F92E0, &qword_213F57340);
  sub_213DE36FC(v34, &qword_27C8F92C0, &qword_213F57318);
  sub_213DE36FC(v35, &qword_27C8F92C0, &qword_213F57318);
  v49[0] = v19;
  v49[1] = v20;
  v49[2] = v21;
  v49[3] = v22;
  v49[4] = v23;
  v50 = 256;
  v51 = sub_213DD7524;
  v52 = 0;
  v53 = sub_213E2F4F0;
  v54 = v25;
  return sub_213DE36FC(v49, &qword_27C8F92E0, &qword_213F57340);
}

uint64_t sub_213E2CCFC(double *a1, uint64_t a2)
{
  type metadata accessor for CategoryTile(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E2CD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_213F4D390();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92E8, &qword_213F57348);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92F0, &qword_213F57350);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  sub_213E2C354(v11);
  sub_213F4EEE0();
  v22 = 1;
  sub_213F4D4E0();
  sub_213DE2B44(v11, v19, &qword_27C8F92E8, &qword_213F57348);
  v23 = &v19[*(v13 + 44)];
  v24 = v50;
  *(v23 + 4) = v49;
  *(v23 + 5) = v24;
  *(v23 + 6) = v51;
  v25 = v46;
  *v23 = v45;
  *(v23 + 1) = v25;
  v26 = v48;
  *(v23 + 2) = v47;
  *(v23 + 3) = v26;
  sub_213DE2B44(v19, v21, &qword_27C8F92F0, &qword_213F57350);
  v27 = (a1 + *(type metadata accessor for CategoryTile(0) + 36));
  v28 = *v27;
  v29 = *(v27 + 1);
  v43 = v28;
  v44 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v42 == 1)
  {
    sub_213E2BADC(v8);
    v31 = v39;
    v30 = v40;
    (*(v39 + 104))(v6, *MEMORY[0x277CDF988], v40);
    v32 = sub_213F4D380();
    v33 = *(v31 + 8);
    v33(v6, v30);
    v33(v8, v30);
    v22 = v32 & 1;
    v34 = v32 ^ 1;
  }

  else
  {
    v34 = 0;
  }

  sub_213DE3164(v21, v16, &qword_27C8F92F0, &qword_213F57350);
  v35 = v41;
  sub_213DE3164(v16, v41, &qword_27C8F92F0, &qword_213F57350);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92F8, &qword_213F57358) + 48);
  *v36 = 0;
  *(v36 + 8) = v22;
  *(v36 + 9) = v34 & 1;
  sub_213DE36FC(v21, &qword_27C8F92F0, &qword_213F57350);
  return sub_213DE36FC(v16, &qword_27C8F92F0, &qword_213F57350);
}

uint64_t sub_213E2D158@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_213F4D290();
  v64 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v7 = MEMORY[0x28223BE20](v58);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = sub_213F4D390();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  MEMORY[0x28223BE20](v59);
  v20 = &v55 - v19;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9238, &qword_213F57258);
  MEMORY[0x28223BE20](v56);
  v22 = &v55 - v21;
  *v22 = sub_213F4DA50();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9240, &qword_213F57260) + 44);
  v57 = v22;
  v63 = v2;
  sub_213E2D7C0(v2, &v22[v23]);
  v24 = v13;
  v25 = *(v13 + 104);
  v25(v18, *MEMORY[0x277CDF9E8], v12);
  v25(v16, *MEMORY[0x277CDF998], v12);
  sub_213E2B0BC(&qword_281183490, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_213F4F1E0();
  if (result)
  {
    v27 = *(v24 + 32);
    v27(v11, v18, v12);
    v28 = v58;
    v27(&v11[*(v58 + 48)], v16, v12);
    sub_213DE3164(v11, v9, &qword_27C8F9228, &unk_213F5A640);
    v55 = v3;
    v29 = *(v28 + 48);
    v27(v20, v9, v12);
    v30 = *(v24 + 8);
    v30(&v9[v29], v12);
    sub_213DE2B44(v11, v9, &qword_27C8F9228, &unk_213F5A640);
    v27(&v20[*(v59 + 36)], &v9[*(v28 + 48)], v12);
    v30(v9, v12);
    sub_213DE3AE4(&qword_27C8F9248, &qword_27C8F9238, &qword_213F57258, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250, MEMORY[0x277D83660]);
    v31 = v60;
    v32 = v57;
    sub_213F4E570();
    sub_213DE36FC(v20, &qword_27C8F9230, &qword_213F57250);
    sub_213DE36FC(v32, &qword_27C8F9238, &qword_213F57258);
    LOBYTE(v28) = sub_213F4E070();
    v33 = v61;
    sub_213E2B8DC(v61);
    v34 = v62;
    sub_213F4D280();
    sub_213F4D270();
    v35 = *(v64 + 8);
    v36 = v55;
    v35(v34, v55);
    v35(v33, v36);
    sub_213F4CDA0();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9250, &qword_213F57268) + 36);
    *v45 = v28;
    *(v45 + 8) = v38;
    *(v45 + 16) = v40;
    *(v45 + 24) = v42;
    *(v45 + 32) = v44;
    *(v45 + 40) = 0;
    LOBYTE(v28) = sub_213F4E040();
    sub_213E2B8DC(v33);
    sub_213F4D280();
    sub_213F4D270();
    v35(v34, v36);
    v35(v33, v36);
    sub_213F4CDA0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9208, &qword_213F57228);
    v54 = v31 + *(result + 36);
    *v54 = v28;
    *(v54 + 8) = v47;
    *(v54 + 16) = v49;
    *(v54 + 24) = v51;
    *(v54 + 32) = v53;
    *(v54 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E2D7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9258, &qword_213F57270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v68 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9260, &qword_213F57278);
  v7 = MEMORY[0x28223BE20](v83);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9268, &qword_213F57280);
  MEMORY[0x28223BE20](v76);
  v72 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9270, &qword_213F57288);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v68 - v15;
  v75 = *(a1 + *(type metadata accessor for CategoryTile(0) + 28));
  v16 = *(v75 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title + 8);
  *&v87 = *(v75 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title);
  *(&v87 + 1) = v16;
  v73 = sub_213DBC9EC();

  v17 = sub_213F4E310();
  v19 = v18;
  v21 = v20;
  sub_213F4E8F0();
  v22 = sub_213F4E900();

  *&v87 = v22;
  v23 = sub_213F4E2B0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_213DBCA40(v17, v19, v21 & 1);

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9278, &qword_213F57290);
  v30 = *(v74 + 36);
  v70 = *MEMORY[0x277CE13B8];
  v31 = v70;
  v32 = sub_213F4EF90();
  v33 = *(v32 - 8);
  v69 = *(v33 + 104);
  v71 = v33 + 104;
  v69(&v10[v30], v31, v32);
  *v10 = v23;
  *(v10 + 1) = v25;
  v10[16] = v27 & 1;
  *(v10 + 3) = v29;
  sub_213F4E0C0();
  sub_213F4E180();
  v34 = sub_213F4E1D0();

  KeyPath = swift_getKeyPath();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9280, &unk_213F5A700);
  v36 = &v10[*(v68 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = swift_getKeyPath();
  v38 = &v10[*(v83 + 36)];
  *v38 = v37;
  *(v38 + 1) = 1;
  v38[16] = 0;
  sub_213F4EEB0();
  sub_213F4D4E0();
  v39 = v72;
  sub_213DE2B44(v10, v72, &qword_27C8F9260, &qword_213F57278);
  v40 = (v39 + *(v76 + 36));
  v41 = v92;
  v40[4] = v91;
  v40[5] = v41;
  v40[6] = v93;
  v42 = v88;
  *v40 = v87;
  v40[1] = v42;
  v43 = v90;
  v40[2] = v89;
  v40[3] = v43;
  sub_213E2F270();
  sub_213F4E6D0();
  sub_213DE36FC(v39, &qword_27C8F9268, &qword_213F57280);
  v44 = *(v75 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle + 8);
  v84 = *(v75 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle);
  v85 = v44;

  v45 = sub_213F4E310();
  v47 = v46;
  LOBYTE(v25) = v48;
  v84 = sub_213F4E8F0();
  v85 = 1;
  v86 = 1060320051;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92A0, &qword_213F57300);
  sub_213DE3AE4(&qword_27C8F92A8, &qword_27C8F92A0, &qword_213F57300, MEMORY[0x277CE01D8]);
  v49 = sub_213F4E2B0();
  v51 = v50;
  LOBYTE(v22) = v52;
  v54 = v53;
  sub_213DBCA40(v45, v47, v25 & 1);

  v55 = v77;
  v69(&v77[*(v74 + 36)], v70, v32);
  *v55 = v49;
  *(v55 + 8) = v51;
  *(v55 + 16) = v22 & 1;
  *(v55 + 24) = v54;
  sub_213F4E210();
  sub_213F4E180();
  v56 = sub_213F4E1D0();

  v57 = swift_getKeyPath();
  v58 = (v55 + *(v68 + 36));
  *v58 = v57;
  v58[1] = v56;
  v59 = swift_getKeyPath();
  v60 = v55 + *(v83 + 36);
  *v60 = v59;
  *(v60 + 8) = 1;
  *(v60 + 16) = 0;
  sub_213E2F2FC();
  v61 = v79;
  sub_213F4E6D0();
  sub_213DE36FC(v55, &qword_27C8F9260, &qword_213F57278);
  v62 = v82;
  v63 = v78;
  sub_213DE3164(v82, v78, &qword_27C8F9270, &qword_213F57288);
  v64 = v80;
  sub_213DE3164(v61, v80, &qword_27C8F9258, &qword_213F57270);
  v65 = v81;
  sub_213DE3164(v63, v81, &qword_27C8F9270, &qword_213F57288);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92B0, &qword_213F57308);
  sub_213DE3164(v64, v65 + *(v66 + 48), &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v61, &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v62, &qword_27C8F9270, &qword_213F57288);
  sub_213DE36FC(v64, &qword_27C8F9258, &qword_213F57270);
  return sub_213DE36FC(v63, &qword_27C8F9270, &qword_213F57288);
}

uint64_t CategoryTile.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CategoryTile(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9198, &qword_213F570D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_213E2F560(v1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CategoryTile);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_213E2EC34(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91A0, &qword_213F570D8);
  sub_213E2ECA4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F91D0, &qword_27C8F9198, &qword_213F570D0, MEMORY[0x277CDF028]);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v8, v5);
}

double sub_213E2E21C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  *a2 = sub_213F4EEE0();
  a2[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9200, &qword_213F57220);
  sub_213E2E428(a1, a2 + *(v12 + 44));
  sub_213E2B8DC(v10);
  sub_213F4D280();
  sub_213F4D270();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91B8, &qword_213F570E0) + 36);
  v15 = *(sub_213F4D470() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_213F4D950();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #20.0 }

  *v14 = _Q0;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91A0, &qword_213F570D8) + 36);
  result = 1.02122917e277;
  *v23 = xmmword_213F56FF0;
  v23[16] = 12;
  return result;
}

uint64_t sub_213E2E428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9208, &qword_213F57228);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9210, &qword_213F57230);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v20 - v14);
  *v15 = sub_213F4EEE0();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9218, &qword_213F57238);
  sub_213E2C7F4(a1, (v15 + *(v17 + 44)));
  sub_213E2D158(v9);
  sub_213DE3164(v15, v13, &qword_27C8F9210, &qword_213F57230);
  sub_213DC429C(v9, v7);
  sub_213DE3164(v13, a2, &qword_27C8F9210, &qword_213F57230);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9220, &unk_213F57240);
  sub_213DC429C(v7, a2 + *(v18 + 48));
  sub_213DC430C(v9);
  sub_213DE36FC(v15, &qword_27C8F9210, &qword_213F57230);
  sub_213DC430C(v7);
  return sub_213DE36FC(v13, &qword_27C8F9210, &qword_213F57230);
}

uint64_t sub_213E2E60C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9198, &qword_213F570D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_213E2F560(v2, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CategoryTile);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_213E2EC34(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91A0, &qword_213F570D8);
  sub_213E2ECA4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F91D0, &qword_27C8F9198, &qword_213F570D0, MEMORY[0x277CDF028]);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_213E2E880(uint64_t a1)
{
  v2 = sub_213F4D390();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D600();
}

uint64_t sub_213E2E948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a6;
  v28 = a7;
  v26 = a4;
  v15 = sub_213F4CB40();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a9;
  v31 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a5, a9);
  sub_213F4CB30();
  (*(v16 + 32))(a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id, v18, v15);
  sub_213F4CBB0();
  v20 = (a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title);
  *v20 = a1;
  v20[1] = a2;
  v21 = (a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle);
  v22 = v26;
  *v21 = a3;
  v21[1] = v22;
  sub_213DD7500(&v29, a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider);
  v23 = (a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);
  v24 = v28;
  *v23 = v27;
  v23[1] = v24;
  return a8;
}

uint64_t sub_213E2EAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a6;
  v21 = a7;
  v15 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CategoryTileViewModel(0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a5, a9);
  return sub_213E2E948(a1, a2, a3, a4, v17, v20, v21, v18, a9, a10);
}

uint64_t sub_213E2EC34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryTile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E2ECA4()
{
  result = qword_27C8F91A8;
  if (!qword_27C8F91A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F91A0, &qword_213F570D8);
    sub_213E2ED30();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F91A8);
  }

  return result;
}

unint64_t sub_213E2ED30()
{
  result = qword_27C8F91B0;
  if (!qword_27C8F91B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F91B8, &qword_213F570E0);
    sub_213DE3AE4(&qword_27C8F91C0, &qword_27C8F91C8, &unk_213F570E8, MEMORY[0x277CE11A8]);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F91B0);
  }

  return result;
}

unint64_t sub_213E2EE14()
{
  result = qword_2811882A0;
  if (!qword_2811882A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811882A0);
  }

  return result;
}

uint64_t sub_213E2EED4(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213E2F078(uint64_t a1)
{
  sub_213E2F1B0(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v1 <= 0x3F)
  {
    sub_213E2F1B0(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_213E2F1B0(319, &qword_281183518, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CategoryTileViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_213DE22E8();
          if (v5 <= 0x3F)
          {
            sub_213DFE440();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213E2F1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213E2F270()
{
  result = qword_27C8F9288;
  if (!qword_27C8F9288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9268, &qword_213F57280);
    sub_213E2F2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9288);
  }

  return result;
}

unint64_t sub_213E2F2FC()
{
  result = qword_27C8F9290;
  if (!qword_27C8F9290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9260, &qword_213F57278);
    sub_213E2F3B4();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9290);
  }

  return result;
}

unint64_t sub_213E2F3B4()
{
  result = qword_27C8F9298;
  if (!qword_27C8F9298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9280, &unk_213F5A700);
    sub_213E2F46C();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9298);
  }

  return result;
}

unint64_t sub_213E2F46C()
{
  result = qword_281183330;
  if (!qword_281183330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9278, &qword_213F57290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183330);
  }

  return result;
}

uint64_t sub_213E2F4F0(double *a1)
{
  v3 = *(type metadata accessor for CategoryTile(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E2CCFC(a1, v4);
}

uint64_t sub_213E2F560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X6>, unsigned __int8 *a8@<X7>, __n128 *a9@<X8>, unsigned __int8 a10, __n128 *a11)
{
  v11 = *a7;
  v12 = *a8;
  v13 = a11[1].n128_u8[0];
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = v11;
  a9[3].n128_u8[8] = v12;
  a9[3].n128_u8[9] = a10;
  result = *a11;
  a9[4] = *a11;
  a9[5].n128_u8[0] = v13;
  return result;
}

uint64_t CellAction.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CellAction.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

unint64_t sub_213E2F6CC()
{
  result = qword_27C8F9310;
  if (!qword_27C8F9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9310);
  }

  return result;
}

uint64_t sub_213E2F720@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign10CellActionV5StyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213E2F768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_213E2F7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E2F824(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213E2F878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_213E2F8D4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_213E2F914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    sub_213EA90C8(0, v1, 0);
    v2 = v25;
    v4 = a1 + 88;
    do
    {
      v5 = *(v4 - 8);
      v23[2] = *(v4 - 24);
      v23[3] = v5;
      v23[4] = *(v4 + 8);
      v24 = *(v4 + 24);
      v6 = *(v4 - 40);
      v23[0] = *(v4 - 56);
      v23[1] = v6;
      v7 = v5;
      v8 = *(v4 - 40);
      v20 = *(v4 - 56);
      v21 = v8;
      v22 = *(v4 - 24);
      v19[0] = *v4;
      *(v19 + 9) = *(v4 + 9);
      if (v5 == 1)
      {
        sub_213E32048(v23, &v16);
        v7 = sub_213F4E8A0();
        sub_213E3222C(1uLL);
      }

      else
      {
        sub_213E32048(v23, &v16);
      }

      v17 = v21;
      v18 = v22;
      v16 = v20;
      *&v15[9] = *(v19 + 9);
      *v15 = v19[0];
      v25 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_213EA90C8((v9 > 1), v10 + 1, 1);
        v2 = v25;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 88 * v10;
      v13 = v17;
      v12 = v18;
      *(v11 + 32) = v16;
      *(v11 + 48) = v13;
      *(v11 + 64) = v12;
      *(v11 + 80) = v7;
      *(v11 + 97) = *&v15[9];
      *(v11 + 88) = *v15;
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_213E2FAA4@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A8, &unk_213F59F90);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9360, &unk_213F59F70);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = a1[3];
  v55 = a1[2];
  v56 = v20;
  v57 = a1[4];
  v58 = *(a1 + 80);
  v21 = a1[1];
  v53 = *a1;
  v54 = v21;
  sub_213E32080(v4, &v50);
  v22 = swift_allocObject();
  v23 = v56;
  *(v22 + 48) = v55;
  *(v22 + 64) = v23;
  *(v22 + 80) = v57;
  v24 = v54;
  v25 = v53;
  *(v22 + 16) = v53;
  *(v22 + 32) = v24;
  v26 = v51;
  *(v22 + 104) = v50;
  *(v22 + 120) = v26;
  *(v22 + 136) = v52;
  *(v22 + 96) = v58;
  v59 = v25;
  v27 = v56;
  v49 = a3;
  v48 = v13;
  v47 = v19;
  v46 = v17;
  v45 = v14;
  v44 = v16;
  v43 = a2;
  if (v56 == 1)
  {
    sub_213E32048(&v53, &v50);
    sub_213E32160(&v59, &v50);
    v28 = v12;
    sub_213F4CD80();
    v29 = sub_213F4CD90();
    (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
  }

  else
  {
    v30 = sub_213F4CD90();
    v28 = v12;
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    sub_213E32048(&v53, &v50);
    sub_213E32160(&v59, &v50);
  }

  v31 = v54;
  v50 = v59;
  v32 = sub_213DE3164(v28, v42, &qword_27C8F93A8, &unk_213F59F90);
  MEMORY[0x28223BE20](v32);
  *(&v42 - 4) = &v50;
  *(&v42 - 3) = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850, MEMORY[0x277CDEFF0]);
  v33 = v44;
  sub_213F4EAF0();
  sub_213DE36FC(v28, &qword_27C8F93A8, &unk_213F59F90);
  sub_213E321BC(&v59);
  if (v43)
  {
    v34 = v48;
    v35 = v47;
    v36 = v46;
    if (v27 >= 2)
    {

      KeyPath = swift_getKeyPath();
      *&v50 = v27;

      v38 = sub_213F4D0D0();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v38 = 0;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v38 = 0;
    v34 = v48;
    v35 = v47;
    v36 = v46;
  }

  v39 = v45;
  (*(v45 + 16))(v35, v33, v34);

  v40 = (v35 + *(v36 + 36));
  *v40 = KeyPath;
  v40[1] = v38;
  (*(v39 + 8))(v33, v34);
  v50 = v57;
  LOBYTE(v51) = v58;
  sub_213DD76C0();
  sub_213E31F4C();
  sub_213F4E6D0();

  return sub_213DE36FC(v35, &qword_27C8F9360, &unk_213F59F70);
}

uint64_t sub_213E30090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9320, &qword_213F577C8);
  MEMORY[0x28223BE20](v5);
  v7 = v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9328, &qword_213F577D0);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v51 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9330, &qword_213F577D8);
  v11 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = v51 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9338, &qword_213F577E0);
  v13 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v15 = v51 - v14;
  sub_213DE3164(v3, &v67, &qword_27C8F9318, &qword_213F57710);
  if (v69)
  {
    sub_213DD7500(&v67, &v70);
    v59 = v13;
    v60 = v7;
    v16 = v73;
    v17 = v74;
    __swift_project_boxed_opaque_existential_0(&v70, v73);
    v18 = *(v17 + 136);
    v56 = v15;
    v19 = v18(v16, v17);
    v57 = v11;
    MEMORY[0x28223BE20](v19);
    *&v51[-4] = v3;
    *&v51[-2] = &v70;
    v58 = v5;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9340, &qword_213F577E8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
    v53 = v3;
    v22 = v21;
    v23 = sub_213DE3AE4(&qword_281182940, &qword_27C8F9340, &qword_213F577E8, MEMORY[0x277CE04B0]);
    v24 = sub_213E31E00();
    v55 = v20;
    v54 = v23;
    sub_213F4E490();
    v25 = v73;
    v26 = v74;
    __swift_project_boxed_opaque_existential_0(&v70, v73);
    v27 = (*(v26 + 136))(v25, v26);
    v51[3] = v27;
    v28 = v62;
    v29 = v10;
    v52 = v51;
    MEMORY[0x28223BE20](v27);
    *&v51[-4] = v3;
    *&v51[-2] = &v70;
    *&v67 = v20;
    *(&v67 + 1) = v22;
    v30 = v22;
    v68 = v23;
    v69 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v61;
    v33 = v63;
    sub_213F4E490();
    v34 = v28[1](v29, v33);
    v62 = v51;
    MEMORY[0x28223BE20](v34);
    *&v51[-4] = &v70;
    *&v51[-2] = v53;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9348, &unk_213F577F0);
    *&v67 = v33;
    *(&v67 + 1) = v30;
    v68 = OpaqueTypeConformance2;
    v69 = v24;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
    v38 = v56;
    v39 = v65;
    sub_213F4E3E0();
    (*(v57 + 8))(v32, v39);
    v40 = v59;
    v41 = v66;
    (*(v59 + 16))(v60, v38, v66);
    swift_storeEnumTagMultiPayload();
    *&v67 = v39;
    *(&v67 + 1) = v35;
    v68 = v36;
    v69 = v37;
    swift_getOpaqueTypeConformance2();
    sub_213F4DBA0();
    (*(v40 + 8))(v38, v41);
    return __swift_destroy_boxed_opaque_existential_1(&v70);
  }

  else
  {
    sub_213DE36FC(&v67, &qword_27C8F9318, &qword_213F57710);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9340, &qword_213F577E8);
    (*(*(v43 - 8) + 16))(v7, a1, v43);
    swift_storeEnumTagMultiPayload();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9350, &unk_213F59F60);
    v46 = sub_213DE3AE4(&qword_281182940, &qword_27C8F9340, &qword_213F577E8, MEMORY[0x277CE04B0]);
    v47 = sub_213E31E00();
    v70 = v43;
    v71 = v45;
    v72 = v46;
    v73 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v70 = v63;
    v71 = v45;
    v72 = v48;
    v73 = v47;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
    v70 = v65;
    v71 = v44;
    v72 = v49;
    v73 = v50;
    swift_getOpaqueTypeConformance2();
    return sub_213F4DBA0();
  }
}

uint64_t sub_213E30888(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v3);
  v5 = (*(v4 + 112))(v3, v4);
  v6 = sub_213E2F914(v5);

  v13 = v6;
  sub_213E32080(a1, v12);
  v7 = swift_allocObject();
  v8 = v12[1];
  v7[1] = v12[0];
  v7[2] = v8;
  v7[3] = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v10 = sub_213E31EC0();
  *&v12[0] = v9;
  *(&v12[0] + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E30A34(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v3);
  v5 = (*(v4 + 120))(v3, v4);
  v6 = sub_213E2F914(v5);

  v13 = v6;
  sub_213E32080(a1, v12);
  v7 = swift_allocObject();
  v8 = v12[1];
  v7[1] = v12[0];
  v7[2] = v8;
  v7[3] = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v10 = sub_213E31EC0();
  *&v12[0] = v9;
  *(&v12[0] + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E30BE0(uint64_t a1)
{
  v2 = sub_213F4D330();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v9 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v9;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  sub_213E2FAA4(v12, 1, v12 - v7);
  sub_213F4D320();
  sub_213E31EC0();
  sub_213F4E4E0();
  (*(v3 + 8))(v5, v2);
  return sub_213DE36FC(v8, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E30D80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v90 = a3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9370, &qword_213F57810);
  v93 = *(v94 - 8);
  v4 = MEMORY[0x28223BE20](v94);
  v89 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v84 - v10;
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_0(a1, v11);
  v14 = v12[16];
  v95 = v13;
  v96 = v14;
  v15 = v14(v11, v12);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 32;
    v19 = v16 - 1;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = *(v15 + 16);
      v22 = v18 + 88 * v17;
      v23 = v17;
      while (1)
      {
        if (v23 >= v21)
        {
          __break(1u);
          goto LABEL_42;
        }

        v24 = *(v22 + 64);
        v25 = *(v22 + 80);
        v26 = *(v22 + 32);
        v101 = *(v22 + 48);
        v27 = *(v22 + 16);
        v98 = *v22;
        v99 = v27;
        v103 = v25;
        v102 = v24;
        v100 = v26;
        v17 = v23 + 1;
        if (BYTE8(v101))
        {
          break;
        }

        v22 += 88;
        ++v23;
        if (v16 == v17)
        {
          goto LABEL_15;
        }
      }

      v86 = v11;
      v28 = v15;
      sub_213E32048(&v98, v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v20;
      v85 = v12;
      v84 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_213EA90C8(0, *(v20 + 16) + 1, 1);
        v20 = v104;
      }

      v31 = *(v20 + 16);
      v30 = *(v20 + 24);
      v15 = v28;
      if (v31 >= v30 >> 1)
      {
        sub_213EA90C8((v30 > 1), v31 + 1, 1);
        v15 = v28;
        v20 = v104;
      }

      *(v20 + 16) = v31 + 1;
      v32 = v20 + 88 * v31;
      v33 = v99;
      *(v32 + 32) = v98;
      *(v32 + 48) = v33;
      v34 = v100;
      v35 = v101;
      v36 = v102;
      *(v32 + 112) = v103;
      *(v32 + 80) = v35;
      *(v32 + 96) = v36;
      *(v32 + 64) = v34;
      v19 = v84;
      v11 = v86;
      v12 = v85;
    }

    while (v84 != v23);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v37 = *(v20 + 16);
  if (v37 >= 3)
  {
    if (v37 == 3)
    {

      v39 = 3;
      v38 = v20;
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  v38 = v20;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v43 = v96(v11, v12);
    v11 = *(v43 + 16);
    if (!v11)
    {
      break;
    }

    v44 = 0;
    v45 = v43 + 32;
    v46 = v11 - 1;
    v12 = MEMORY[0x277D84F90];
LABEL_25:
    v47 = *(v43 + 16);
    v48 = v45 + 88 * v44;
    v49 = v44;
    while (v49 < v47)
    {
      v50 = *(v48 + 64);
      v51 = *(v48 + 80);
      v52 = *(v48 + 32);
      v101 = *(v48 + 48);
      v53 = *(v48 + 16);
      v98 = *v48;
      v99 = v53;
      v103 = v51;
      v102 = v50;
      v100 = v52;
      v44 = v49 + 1;
      if ((BYTE8(v101) & 1) == 0)
      {
        v54 = v43;
        sub_213E32048(&v98, v97);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v104 = v12;
        v96 = v38;
        v95 = v46;
        if ((v55 & 1) == 0)
        {
          sub_213EA90C8(0, v12[2] + 1, 1);
          v12 = v104;
        }

        v57 = v12[2];
        v56 = v12[3];
        v43 = v54;
        if (v57 >= v56 >> 1)
        {
          sub_213EA90C8((v56 > 1), v57 + 1, 1);
          v43 = v54;
          v12 = v104;
        }

        v12[2] = v57 + 1;
        v58 = &v12[11 * v57];
        v59 = v99;
        *(v58 + 2) = v98;
        *(v58 + 3) = v59;
        v60 = v100;
        v61 = v101;
        v62 = v102;
        *(v58 + 112) = v103;
        *(v58 + 5) = v61;
        *(v58 + 6) = v62;
        *(v58 + 4) = v60;
        v46 = v95;
        v38 = v96;
        if (v95 != v49)
        {
          goto LABEL_25;
        }

        goto LABEL_37;
      }

      v48 += 88;
      v49 = (v49 + 1);
      if (v11 == v44)
      {
        goto LABEL_37;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    sub_213E5B720(v20, v20 + 32, 0, 7uLL);
    v38 = v82;
    v39 = *(v20 + 16);
    if (v39)
    {
LABEL_19:
      if (v39 >= 3)
      {
        v40 = 3;
      }

      else
      {
        v40 = v39;
      }

      sub_213E5B720(v20, v20 + 32, v40, (2 * v39) | 1);
      v42 = v41;

      v20 = v42;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_37:

  *&v98 = v20;
  v63 = sub_213E273F0(v12);
  v64 = v98;
  if (*(v38 + 2))
  {
    MEMORY[0x28223BE20](v63);
    v65 = v91;
    *(&v84 - 4) = v38;
    *(&v84 - 3) = v65;
    LOBYTE(v83) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
    sub_213E31E00();
    v66 = v92;
    sub_213F4CFD0();

    v67 = 0;
    v68 = v94;
    v69 = v93;
  }

  else
  {

    v67 = 1;
    v68 = v94;
    v69 = v93;
    v66 = v92;
    v65 = v91;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9380, &qword_213F57820);
  (*(*(v70 - 8) + 56))(v66, v67, 1, v70);
  v97[0] = v64;
  sub_213E32080(v65, &v98);
  v71 = swift_allocObject();
  v72 = v99;
  *(v71 + 16) = v98;
  *(v71 + 32) = v72;
  *(v71 + 48) = v100;
  *(v71 + 64) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9390, &qword_213F57830);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
  sub_213DE3AE4(&qword_281182578, &qword_27C8F9390, &qword_213F57830, MEMORY[0x277CE14C0]);
  v83 = sub_213E320C4();
  v73 = v88;
  sub_213F4ECD0();
  v74 = v66;
  v75 = v87;
  sub_213DC43A4(v74, v87);
  v76 = *(v69 + 16);
  v77 = v89;
  v76(v89, v73, v68);
  v78 = v90;
  sub_213DC43A4(v75, v90);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9398, &qword_213F57838);
  v76((v78 + *(v79 + 48)), v77, v68);
  v80 = *(v69 + 8);
  v80(v73, v68);
  sub_213DC4414(v74);
  v80(v77, v68);
  return sub_213DC4414(v75);
}

uint64_t sub_213E31608(uint64_t a1, uint64_t a2, char a3)
{
  v10 = a1;
  sub_213E32080(a2, v9);
  v4 = swift_allocObject();
  v5 = v9[1];
  *(v4 + 16) = v9[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v9[2];
  *(v4 + 64) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828, MEMORY[0x277D83980]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v7 = sub_213E31EC0();
  *&v9[0] = v6;
  *(&v9[0] + 1) = v7;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E31780(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_213F4D330();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v12;
  v15[4] = *(a1 + 64);
  v16 = *(a1 + 80);
  v13 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v13;
  sub_213E2FAA4(v15, a3, v15 - v10);
  sub_213F4D320();
  sub_213E31EC0();
  sub_213F4E4E0();
  (*(v6 + 8))(v8, v5);
  return sub_213DE36FC(v11, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E31924@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_213F4ECB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B0, &unk_213F59FD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v26[-v18];
  v20 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v20;
  *v30 = *(a1 + 32);
  *&v30[9] = *(a1 + 41);
  v21 = *(a1 + 57);
  v32[0] = *(a1 + 58);
  *(v32 + 15) = *(a1 + 73);
  v31 = v21;
  sub_213E2FAA4(v29, v27, &v26[-v18]);
  if (v21)
  {
    sub_213F4ECA0();
    (*(v5 + 32))(v13, v7, v4);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v5 + 56))(v13, v22, 1, v4);
  sub_213DE3164(v19, v17, &qword_27C8F9358, &unk_213F57800);
  sub_213DE3164(v13, v11, &qword_27C8F93B0, &unk_213F59FD0);
  v23 = v28;
  sub_213DE3164(v17, v28, &qword_27C8F9358, &unk_213F57800);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B8, &qword_213F57890);
  sub_213DE3164(v11, v23 + *(v24 + 48), &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v13, &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v19, &qword_27C8F9358, &unk_213F57800);
  sub_213DE36FC(v11, &qword_27C8F93B0, &unk_213F59FD0);
  return sub_213DE36FC(v17, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E31C34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_213DE3164(a1, v9, &qword_27C8F9318, &qword_213F57710);
  v9[5] = a2;
  v7 = a2;
  MEMORY[0x216051BF0](v9, a3, &type metadata for ViewWithCellActions, a4);
  return sub_213E31CBC(v9);
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign17ListCellProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_213E31D18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213E31D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_213E31E00()
{
  result = qword_281182610;
  if (!qword_281182610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9350, &unk_213F59F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
    sub_213E31EC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182610);
  }

  return result;
}

unint64_t sub_213E31EC0()
{
  result = qword_281182FB0;
  if (!qword_281182FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
    sub_213E31F4C();
    sub_213DD9534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FB0);
  }

  return result;
}

unint64_t sub_213E31F4C()
{
  result = qword_281183218;
  if (!qword_281183218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9360, &unk_213F59F70);
    sub_213DE3AE4(&qword_281182720, &qword_27C8F8F08, &unk_213F56DF0, MEMORY[0x277CDF028]);
    sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183218);
  }

  return result;
}

unint64_t sub_213E320C4()
{
  result = qword_281188608[0];
  if (!qword_281188608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281188608);
  }

  return result;
}

double sub_213E3222C(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

unint64_t sub_213E3223C()
{
  result = qword_281182AB8;
  if (!qword_281182AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93C0, &qword_213F57898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9330, &qword_213F577D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9328, &qword_213F577D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9350, &unk_213F59F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9340, &qword_213F577E8);
    sub_213DE3AE4(&qword_281182940, &qword_27C8F9340, &qword_213F577E8, MEMORY[0x277CE04B0]);
    sub_213E31E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AB8);
  }

  return result;
}