unint64_t sub_20B88FA5C()
{
  result = qword_27C766E40;
  if (!qword_27C766E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766E38, &unk_20C165AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766E40);
  }

  return result;
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = sub_20C134EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B88FC9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_20C134EC4() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_20B88FD2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20B88FD74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v8 = (a5 >> 5) & 3;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      MEMORY[0x20F2F58E0](6, a2, a3);
      v11 = a2 & 1;
    }

    else
    {
      v13 = a4 | a3;
      if (a4 | a3 | a2 || a5 != 96)
      {
        if (a5 == 96 && a2 == 1 && !v13)
        {
          v11 = 2;
        }

        else if (a5 == 96 && a2 == 2 && !v13)
        {
          v11 = 4;
        }

        else if (a5 == 96 && a2 == 3 && !v13)
        {
          v11 = 5;
        }

        else
        {
          v11 = 7;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    MEMORY[0x20F2F58E0](v11);
  }

  else
  {
    if (!v8)
    {
      MEMORY[0x20F2F58E0](0);
      sub_20C13CA64();
      if (a4)
      {
        sub_20C13E184();
        v10 = a4;
        sub_20C13D604();

        if ((a5 & 0x80) == 0)
        {
LABEL_5:
          MEMORY[0x20F2F58E0](0);
LABEL_26:
          sub_20C13CA64();

          return;
        }
      }

      else
      {
        sub_20C13E184();
        if ((a5 & 0x80) == 0)
        {
          goto LABEL_5;
        }
      }

      MEMORY[0x20F2F58E0](1);
      goto LABEL_26;
    }

    MEMORY[0x20F2F58E0](3);
    if (a2)
    {
      sub_20C13E184();
      v12 = a2;
      sub_20C13D604();

      sub_20B8403A8(a2, a3, a4, a5);
    }

    else
    {
      sub_20C13E184();
    }
  }
}

uint64_t sub_20B890004()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20C13E164();
  sub_20B88FD74(v6, v1, v2, v3, v4);
  return sub_20C13E1B4();
}

uint64_t sub_20B890078(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_20C13E164();
  sub_20B88FD74(v7, v2, v3, v4, v5);
  return sub_20C13E1B4();
}

unint64_t sub_20B890100()
{
  result = qword_27C766E80;
  if (!qword_27C766E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766E80);
  }

  return result;
}

BOOL sub_20B890154(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = (a4 >> 5) & 3;
  if (v8 <= 1)
  {
    if (!v8)
    {
      if ((a8 & 0x60) != 0)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        v9 = a3;
        v10 = a4;
        v11 = a8;
        v12 = a7;
        v13 = sub_20C13DFF4();
        a3 = v9;
        LOBYTE(a4) = v10;
        a7 = v12;
        LOBYTE(a8) = v11;
        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      if (a3)
      {
        if (!a7)
        {
          return 0;
        }

        v14 = a3;
        v15 = a8;
        v16 = a7;
        v17 = a4;
        sub_20B51C88C(0, &qword_27C7626E8, 0x277D755B8);
        v18 = v16;
        v19 = v14;
        v20 = sub_20C13D5F4();

        LOBYTE(a4) = v17;
        LOBYTE(a8) = v15;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else if (a7)
      {
        return 0;
      }

      return (sub_20B660644(a4, a8) & 1) != 0;
    }

    if ((a8 & 0x60) != 0x20)
    {
      return 0;
    }

    if (a1)
    {
      if (a5)
      {
        v24 = a3;
        v25 = a8;
        v26 = a7;
        v29 = a4;
        sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
        sub_20B890480(a5, a6, v26, v25);
        sub_20B890480(a1, a2, v24, v29);
        v30 = sub_20C13D5F4();
        sub_20B8403A8(a1, a2, v24, v29);
        sub_20B8403A8(a5, a6, v26, v25);
        if (v30)
        {
          return 1;
        }
      }

      return 0;
    }

    return !a5;
  }

  if (v8 == 2)
  {
    if ((a8 & 0x60) == 0x40)
    {
      return ((a5 ^ a1) & 1) == 0;
    }

    return 0;
  }

  v31 = a3 | a2;
  if (!(a3 | a2 | a1) && a4 == 96)
  {
    return (~a8 & 0x60) == 0 && !(a7 | a6 | a5) && a8 == 96;
  }

  if (a4 == 96 && a1 == 1 && !v31)
  {
    if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 1)
    {
      return 0;
    }
  }

  else if (a4 == 96 && a1 == 2 && !v31)
  {
    if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 96 && a1 == 3 && !v31)
  {
    if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 3)
    {
      return 0;
    }
  }

  else if ((~a8 & 0x60) != 0 || a8 != 96 || a5 != 4)
  {
    return 0;
  }

  return !(a7 | a6);
}

void sub_20B890480(void *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = (a4 >> 5) & 3;
  if (v5 == 1)
  {

    v7 = a1;
  }

  else if (!v5)
  {
    v6 = a3;
  }
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI17UpNextQueueActionO(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 5) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20B8904F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 25))
  {
    return (*a1 + 29);
  }

  v3 = (*(a1 + 24) & 0x1C | (*(a1 + 24) >> 5) & 3) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20B890548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 29;
    if (a3 >= 0x1D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
    }
  }

  return result;
}

uint64_t sub_20B8905B4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 0x83 | (32 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = 96;
  }

  return result;
}

uint64_t NavigationRequestApplying<>.allowedToApplyRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationIntent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationRequest(0);
  sub_20B895280(a1 + v10[5], v9, type metadata accessor for NavigationIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v30 = sub_20C139144();
      (*(*(v30 - 8) + 8))(v9, v30);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 4)
    {

      v35 = [v2 presentedViewController];
      if (v35)
      {
        v36 = v35;
        type metadata accessor for SessionViewController(0);
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
        }
      }

      else
      {
        v37 = 0;
      }

      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);

      sub_20B895280(a1 + v10[6], v6, type metadata accessor for NavigationSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = sub_20C135024();
        (*(*(v39 - 8) + 8))(v6, v39);
        sub_20B520158(&v9[v38], &qword_27C766E88, &qword_20C16E290);
        v22 = 1;
      }

      else
      {
        v22 = v37 == 0;
        sub_20B8954F0(v6, type metadata accessor for NavigationSource);
        sub_20B520158(&v9[v38], &qword_27C766E88, &qword_20C16E290);
      }

      return v22 & 1;
    }

    sub_20B8954F0(v9, type metadata accessor for NavigationIntent);
    v20 = [v2 presentedViewController];
    if (v20)
    {
      v21 = v20;
      type metadata accessor for QueuedSessionViewController();
      v22 = swift_dynamicCastClass() == 0;

      return v22 & 1;
    }

LABEL_25:
    v22 = 1;
    return v22 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = [v2 presentedViewController];
    if (v23)
    {
      v24 = v23;
      ObjectType = swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (!v26)
      {

        v22 = 1;
        return v22 & 1;
      }

      if (*(a1 + v10[8]))
      {
        v27 = *(v26 + 8);
        v28 = v26;
        v29 = v24;
        v22 = v27(a1, ObjectType, v28);

        return v22 & 1;
      }

LABEL_18:
      v22 = 0;
      return v22 & 1;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = [v2 topViewController];
    if (v31)
    {
      v32 = v31;
      v33 = swift_getObjectType();
      v34 = swift_conformsToProtocol2();
      if (v34)
      {
        v22 = (*(v34 + 8))(a1, v33, v34);

        return v22 & 1;
      }
    }

    v22 = *(a1 + v10[8]) != 0;
    return v22 & 1;
  }

  v12 = [v2 presentedViewController];
  v13 = v12;
  if (v12)
  {
  }

  v14 = *(a1 + v10[8]);
  v15 = [v2 presentedViewController];
  if (v15)
  {
    v16 = v15;
    v17 = swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      v19 = (*(v18 + 8))(a1, v17, v18);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v13)
  {
    v40 = v14 == 2;
  }

  else
  {
    v40 = 1;
  }

  v41 = v40;
  v22 = v41 | v19;
  return v22 & 1;
}

void NavigationRequestApplying<>.apply(request:using:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a6;
  v66 = a5;
  v63 = a2;
  v9 = type metadata accessor for NavigationRequest(0);
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = v10;
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = sub_20C13BB84();
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = a1;
  sub_20B895280(a1, v22, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v23 = *v22;
    v24 = *(a4 + 16);
    v25 = v24(a3, a4);
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v27 = v24(a3, a4);
      [v23 setDelegate_];

      v28 = swift_allocObject();
      *(v28 + 16) = Strong;
      *(v28 + 24) = v23;
      sub_20C137C94();
    }

    else
    {
      sub_20C13B424();
      v51 = sub_20C13BB74();
      v52 = sub_20C13D1E4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_20B517000, v51, v52, "Purchase handler not configured to handle Purchase!", v53, 2u);
        MEMORY[0x20F2F6A40](v53, -1, -1);
      }

      (*(v58 + 8))(v19, v59);
      sub_20B5D9BA8();
      v54 = swift_allocError();
      *v55 = 11;
      *(swift_allocObject() + 16) = v54;
      sub_20C137CA4();
    }
  }

  else
  {
    sub_20B8954F0(v22, type metadata accessor for NavigationResource);
    v59 = v13;
    v29 = a4;
    v30 = v63;
    v31 = v63[3];
    v32 = v63[4];
    v33 = __swift_project_boxed_opaque_existential_1(v63, v31);
    v57 = v16;
    v58 = v11;
    v56 = v33;
    v34 = a3;
    v35 = (*(v29 + 24))(a3, v29);
    v36 = (*(v29 + 32))(v34, v29);
    v37 = v62;
    (*(v32 + 16))(v62, v35, v36, v31, v32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v38 = v64;
    sub_20B895280(v37, v64, type metadata accessor for NavigationRequest);
    sub_20B51CC64(v30, v69);
    v39 = (*(v60 + 80) + 48) & ~*(v60 + 80);
    v40 = (v61 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 2) = v34;
    *(v41 + 3) = v29;
    v42 = v68;
    *(v41 + 4) = v66;
    *(v41 + 5) = v42;
    sub_20B895488(v38, v41 + v39, type metadata accessor for NavigationRequest);
    sub_20B51C710(v69, v41 + v40);
    v43 = v65;
    v45 = v57;
    v44 = v58;
    (*(v12 + 16))(v65, v57, v58);
    v46 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v47 = (v59 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    (*(v12 + 32))(v48 + v46, v43, v44);
    v49 = (v48 + v47);
    *v49 = sub_20B894468;
    v49[1] = v41;
    v50 = v42;
    sub_20C137C94();
    (*(v12 + 8))(v45, v44);
  }
}

double sub_20B8911B0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  (*(a6 + 56))(v9, a3, v12, a5, a6);

  return result;
}

void sub_20B89127C(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = sub_20C138F84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();

    sub_20C138F74();
    sub_20B89556C(&qword_27C76C460, MEMORY[0x277D541F0], MEMORY[0x277D541E8]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
  }

  v13 = [a4 performPurchase];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = sub_20B5DF614;
  v14[4] = v12;
  aBlock[4] = sub_20B895550;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B98FE2C;
  aBlock[3] = &block_descriptor_124_0;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  [v13 addFinishBlock_];
  _Block_release(v15);
}

uint64_t sub_20B8914F8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C13C4B4();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C13C4F4();
  v13 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v24 = sub_20C13D374();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_20B89555C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_130;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = a1;
  v20 = a2;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B89556C(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  v21 = v24;
  MEMORY[0x20F2F4AF0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v26 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v25);
}

void sub_20B8917EC(uint64_t a1, void *a2, void *a3, void (*a4)(void *, void))
{
  sub_20C065618(a2, a3, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  sub_20C13E1D4();
  a4(v5, v6);
  sub_20B583FB8(v5, v6);
}

uint64_t NavigationRequestApplying<>.apply(viewController:from:dependencies:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v145 = a5;
  v146 = a6;
  v143 = a1;
  v144 = a4;
  v141 = a3;
  v153 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410, &qword_20C155F00);
  v137 = *(v10 - 8);
  v138 = v10;
  MEMORY[0x28223BE20](v10);
  v134 = v11;
  v135 = &v130[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v136 = &v130[-v13];
  v133 = sub_20C13A484();
  MEMORY[0x28223BE20](v133);
  v142 = &v130[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for NavigationRequest(0);
  v139 = *(v15 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v15);
  v140 = &v130[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v150 = *(v17 - 8);
  v151 = v17;
  MEMORY[0x28223BE20](v17);
  v147 = v18;
  v148 = &v130[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v149 = &v130[-v20];
  v21 = type metadata accessor for NavigationIntent(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v130[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = [v8 presentedViewController];
  v26 = v25;
  if (v25)
  {
  }

  v27 = *(v15 + 32);
  v28 = a2;
  v29 = *(a2 + v27);
  v152 = v8;
  if (v29 == 2 || (v30 = [v8 presentedViewController]) != 0 && (v31 = v30, type metadata accessor for UpNextPopoverNavigationController(), v32 = swift_dynamicCastClass(), v31, v32))
  {
    v33 = 1;
    if (v26)
    {
      v34 = 0;
      v35 = v28;
      goto LABEL_15;
    }
  }

  else
  {
    v36 = [v8 presentedViewController];
    if (v36)
    {
      v37 = v36;
      type metadata accessor for UpNextQueueViewController();
      v38 = swift_dynamicCastClass();
      v34 = v38 == 0;
      v33 = v38 != 0;

      v35 = v28;
      if (v26)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v33 = 0;
    if (v26)
    {
      v34 = 1;
      v35 = v28;
      goto LABEL_15;
    }
  }

  v35 = v28;
LABEL_14:
  v34 = 1;
LABEL_15:
  sub_20B895280(v35 + *(v15 + 20), v24, type metadata accessor for NavigationIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = *v24;
        v41 = v140;
        sub_20B895280(v35, v140, type metadata accessor for NavigationRequest);
        v42 = (*(v139 + 80) + 41) & ~*(v139 + 80);
        v43 = swift_allocObject();
        v45 = v144;
        v44 = v145;
        *(v43 + 16) = v144;
        *(v43 + 24) = v44;
        v46 = v146;
        *(v43 + 32) = v146;
        *(v43 + 40) = v33;
        sub_20B895488(v41, v43 + v42, type metadata accessor for NavigationRequest);
        v47 = v43 + ((v16 + v42 + 7) & 0xFFFFFFFFFFFFFFF8);
        v48 = v152;
        *v47 = v152;
        *(v47 + 8) = v40;
        v49 = v48;
        v50 = v149;
        sub_20C137C94();
        v51 = swift_allocObject();
        *(v51 + 16) = v45;
        *(v51 + 24) = v44;
        *(v51 + 32) = v46;
        *(v51 + 40) = v49;
        v52 = v143;
        *(v51 + 48) = v143;
        *(v51 + 56) = v40;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_20B894868;
        *(v53 + 24) = v51;
        v55 = v150;
        v54 = v151;
        v56 = v148;
        (*(v150 + 16))(v148, v50, v151);
        v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
        v58 = (v147 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        (*(v55 + 32))(v59 + v57, v56, v54);
        v60 = (v59 + v58);
        *v60 = sub_20B8955C4;
        v60[1] = v53;
        v61 = v49;
        v62 = v52;
LABEL_22:
        sub_20C137C94();
        return (*(v55 + 8))(v50, v54);
      }

      v88 = *v24;
      if (v26)
      {
        if (v33)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_20C14F580;
          v90 = v143;
          *(v89 + 32) = v143;
          sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
          v91 = v90;
          v92 = sub_20C13CC54();

          v93 = v152;
          [v152 setViewControllers:v92 animated:v34 & v88];

          [v93 dismissViewControllerAnimated:v88 & 1 completion:0];
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_20C14F580;
        v96 = v143;
        *(v95 + 32) = v143;
        sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
        v97 = v96;
        v98 = sub_20C13CC54();

        [v152 setViewControllers:v98 animated:v88 & 1];
      }

      return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    }

    v83 = *v24;
    if (*(v35 + v27) == 1)
    {
      v84 = v152;
      v85 = [v152 presentedViewController];
      if (!v85)
      {
        v85 = v84;
      }

      v86 = v85;
      [v85 presentViewController:v143 animated:v83 completion:0];

      return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    }

    v94 = v152;
    if (v26)
    {
      if (!v33)
      {
        return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      }

      [v152 dismissViewControllerAnimated:0 completion:0];
    }

    [v94 presentViewController:v143 animated:v83 completion:0];
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  if (EnumCaseMultiPayload == 3)
  {
    _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    v87 = sub_20C139144();
    return (*(*(v87 - 8) + 8))(v24, v87);
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v63 = v26 != 0;
      v64 = *v24;
      v65 = objc_allocWithZone(type metadata accessor for QueuedSessionViewController());

      v67 = QueuedSessionViewController.init(dependencies:queueItems:playContext:)(v66, v64, 0, 0);
      [v67 setModalPresentationStyle_];
      v68 = swift_allocObject();
      v70 = v144;
      v69 = v145;
      *(v68 + 16) = v144;
      *(v68 + 24) = v69;
      v71 = v146;
      *(v68 + 32) = v146;
      *(v68 + 40) = v63;
      v72 = v152;
      *(v68 + 48) = v152;
      v73 = v72;
      v50 = v149;
      sub_20C137C94();
      v74 = swift_allocObject();
      v74[2] = v70;
      v74[3] = v69;
      v74[4] = v71;
      v74[5] = v73;
      v74[6] = v67;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_20B89474C;
      *(v75 + 24) = v74;
      v55 = v150;
      v54 = v151;
      v76 = v148;
      (*(v150 + 16))(v148, v50, v151);
      v77 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v78 = (v147 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      (*(v55 + 32))(v79 + v77, v76, v54);
      v80 = (v79 + v78);
      *v80 = sub_20B7F133C;
      v80[1] = v75;
      v81 = v73;
      goto LABEL_22;
    }

    if (!*(v24 + 3))
    {
      sub_20C13CA04();
    }

    v131 = v26 != 0;
    v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
    sub_20C13A334();
    swift_allocObject();
    v99 = sub_20C13A314();
    v100 = v142;
    *v142 = v99;
    v132 = v99;
    swift_storeEnumTagMultiPayload();
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = v140;
    sub_20B895280(v35, v140, type metadata accessor for NavigationRequest);
    v103 = (*(v139 + 80) + 48) & ~*(v139 + 80);
    v104 = swift_allocObject();
    v105 = v145;
    v104[2] = v144;
    v104[3] = v105;
    v104[4] = v146;
    v104[5] = v101;
    sub_20B895488(v102, v104 + v103, type metadata accessor for NavigationRequest);
    v106 = v104 + ((v16 + v103 + 7) & 0xFFFFFFFFFFFFFFF8);
    v107 = v141;
    *v106 = v141;
    v106[8] = v131;

    v108 = v136;
    sub_20BD23C88(v107, v100, v136);
    v109 = swift_allocObject();
    v152 = sub_20B894594;
    *(v109 + 16) = sub_20B894594;
    *(v109 + 24) = v104;
    v110 = swift_allocObject();
    *(v110 + 16) = sub_20B894660;
    *(v110 + 24) = v109;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_20B7DB918;
    *(v111 + 24) = v110;
    v113 = v137;
    v112 = v138;
    v114 = v135;
    v115 = v108;
    (*(v137 + 16))(v135, v108, v138);
    v116 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v117 = (v134 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    (*(v113 + 32))(v118 + v116, v114, v112);
    v119 = (v118 + v117);
    *v119 = sub_20B89467C;
    v119[1] = v111;

    v120 = v149;
    sub_20C137C94();
    (*(v113 + 8))(v115, v112);
    v121 = swift_allocObject();
    *(v121 + 16) = v152;
    *(v121 + 24) = v104;
    v122 = swift_allocObject();
    *(v122 + 16) = sub_20B8946AC;
    *(v122 + 24) = v121;
    v124 = v150;
    v123 = v151;
    v125 = v148;
    (*(v150 + 16))(v148, v120, v151);
    v126 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v127 = (v147 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
    v128 = swift_allocObject();
    (*(v124 + 32))(v128 + v126, v125, v123);
    v129 = (v128 + v127);
    *v129 = sub_20B8946F4;
    v129[1] = v122;
    sub_20C137C94();

    (*(v124 + 8))(v120, v123);
    sub_20B8954F0(v142, MEMORY[0x277D4DFB8]);
    return sub_20B520158(v143 + v24, &qword_27C766E88, &qword_20C16E290);
  }
}

void sub_20B8926F4(void (*a1)(void **), uint64_t a2, char a3, uint64_t a4, void *a5, int a6)
{
  v36 = a6;
  v37 = a5;
  v10 = type metadata accessor for NavigationRequest(0);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_20C13BB84();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  if (a3)
  {
    *v17 = 0x3932343038373431;
    *(v17 + 1) = 0xEA00000000003738;
    swift_storeEnumTagMultiPayload();

    v19 = _s9SeymourUI18NavigationResourceO2eeoiySbAC_ACtFZ_0(a4, v17);
    sub_20B8954F0(v17, type metadata accessor for NavigationResource);
    if (v19)
    {
      sub_20C13B524();
      v20 = v37;
      v21 = sub_20C13BB74();
      v22 = sub_20C13D1F4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = [v20 presentedViewController];
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&dword_20B517000, v21, v22, "[105249313] About to dismiss %@", v23, 0xCu);
        sub_20B520158(v24, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v24, -1, -1);
        MEMORY[0x20F2F6A40](v23, -1, -1);
      }

      (*(v33 + 8))(v14, v34);
    }

    sub_20B895280(a4, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v26 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v27 = swift_allocObject();
    sub_20B895488(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for NavigationRequest);
    v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_20B5D9B44;
    v28[1] = v18;
    v42 = sub_20B89519C;
    v43 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_20B7B548C;
    v41 = &block_descriptor_32;
    v29 = _Block_copy(&aBlock);

    [v37 dismissViewControllerAnimated:v36 & 1 completion:v29];
    _Block_release(v29);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    v30 = aBlock;
    v31 = v39;
    v44 = aBlock;
    v45 = v39;
    a1(&v44);
    sub_20B583FB8(v30, v31);
  }
}

void sub_20B892B80(uint64_t a1, void (*a2)(void *, void))
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0x3932343038373431;
  *(v10 + 1) = 0xEA00000000003738;
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = _s9SeymourUI18NavigationResourceO2eeoiySbAC_ACtFZ_0(a1, v10);
  sub_20B8954F0(v10, type metadata accessor for NavigationResource);
  if (a1)
  {
    sub_20C13B524();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "[105249313] Dismiss completion called", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  sub_20C13E1D4();
  v14 = v16;
  v15 = v17;
  a2(v16, v17);
  sub_20B583FB8(v14, v15);
}

void sub_20B892DBC(void (*a1)(void **), uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  if (a3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_20B5DF614;
    *(v9 + 24) = v8;
    v15 = sub_20B89522C;
    v16 = v9;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_20B7B548C;
    v14 = &block_descriptor_102_0;
    v10 = _Block_copy(&v11);

    [a4 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    v17 = v11;
    v18 = v12;
    a1(&v17);
    sub_20B583FB8(v11, v12);
  }
}

void sub_20B892F40(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  sub_20C13E1D4();
  a1(v2, v3);
  sub_20B583FB8(v2, v3);
}

void sub_20B892FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v75 = a7;
  v67 = a5;
  v71 = a4;
  v74 = a3;
  v69 = sub_20C13BB84();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v65 - v13;
  v14 = type metadata accessor for NavigationRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90, &unk_20C15F2C0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  swift_beginAccess();
  v72 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v70 = a6;
  if (Strong)
  {
    v27 = Strong;
    v28 = v21;
    v29 = v15;
    v30 = a1;
    v31 = [Strong presentedViewController];

    if (v31)
    {
      type metadata accessor for SessionViewController(0);
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
      }
    }

    else
    {
      v32 = 0;
    }

    a1 = v30;
    v15 = v29;
    v21 = v28;
  }

  else
  {
    v32 = 0;
  }

  sub_20B8952E8(a1, v25);
  sub_20B895280(v74, v19, type metadata accessor for NavigationRequest);
  sub_20B8952E8(v25, v76);
  sub_20B895280(v19, v77, type metadata accessor for NavigationRequest);
  v33 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v34 = (v22 + *(v15 + 80) + v33) & ~*(v15 + 80);
  v35 = (v16 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v70;
  v38 = v75;
  v36[2] = v70;
  v36[3] = v38;
  v39 = v73;
  v36[4] = v73;
  v36[5] = v32;
  sub_20B5DF134(v25, v36 + v33, &qword_27C766E90, &unk_20C15F2C0);
  sub_20B895488(v19, v36 + v34, type metadata accessor for NavigationRequest);
  v40 = v71;
  *(v36 + v35) = v71;
  v41 = v72;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v72;
  v42 = v41;
  swift_beginAccess();
  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    v45 = *(v39 + 8);
    v46 = v32;

    v47 = v45(v37, v39);

    if (v47)
    {
      v48 = v65;
      sub_20C13B594();
      v49 = sub_20C13BB74();
      v50 = sub_20C13D1F4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_20B517000, v49, v50, "NavigationRequest: Stopping PiP", v51, 2u);
        MEMORY[0x20F2F6A40](v51, -1, -1);
      }

      (*(v68 + 8))(v48, v69);
      swift_beginAccess();
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        v53 = v52;
        type metadata accessor for BrowsingViewController(0);
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          v55 = *(v54 + OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_pictureInPicturePresenter);

          v53 = v55;
          sub_20BDDD674();
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    v46 = v32;
  }

  if ((v67 & 1) == 0)
  {
    v64 = v76;
    v63 = v77;
    sub_20B893774(v32, v76, v77, v40, v42, v37, v75, v39);

    sub_20B8954F0(v63, type metadata accessor for NavigationRequest);
    sub_20B520158(v64, &qword_27C766E90, &unk_20C15F2C0);
    return;
  }

LABEL_18:
  sub_20B8954F0(v77, type metadata accessor for NavigationRequest);
  sub_20B520158(v76, &qword_27C766E90, &unk_20C15F2C0);
  v56 = v66;
  sub_20C13B594();
  v57 = sub_20C13BB74();
  v58 = sub_20C13D1F4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_20B517000, v57, v58, "NavigationRequest: Dismissing presented controller.", v59, 2u);
    MEMORY[0x20F2F6A40](v59, -1, -1);
  }

  (*(v68 + 8))(v56, v69);
  swift_beginAccess();
  v60 = swift_unknownObjectWeakLoadStrong();
  if (v60)
  {
    v61 = v60;
    aBlock[4] = sub_20B895358;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_111;
    v62 = _Block_copy(aBlock);

    [v61 dismissViewControllerAnimated:0 completion:v62];

    _Block_release(v62);
  }

  else
  {
  }
}

uint64_t sub_20B893774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = a3;
  v86 = a1;
  v87 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v71 - v11;
  v79 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v79);
  v81 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20C135024();
  v13 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v72 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90, &unk_20C15F2C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v71 - v18;
  v85 = type metadata accessor for WorkoutSessionConfiguration(0);
  v20 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v77 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v78 = &v71 - v23;
  MEMORY[0x28223BE20](v24);
  v80 = &v71 - v25;
  v26 = sub_20C13BB84();
  v88 = *(v26 - 8);
  v89 = v26;
  MEMORY[0x28223BE20](v26);
  v76 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v71 - v29;
  sub_20C13B594();
  v31 = sub_20C13BB74();
  v32 = sub_20C13D1F4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v71 = a5;
    v34 = v33;
    *v33 = 0;
    _os_log_impl(&dword_20B517000, v31, v32, "NavigationRequest: Presenting session controller.", v33, 2u);
    MEMORY[0x20F2F6A40](v34, -1, -1);
  }

  v36 = v88 + 8;
  v35 = *(v88 + 8);
  v35(v30, v89);
  if (v86)
  {
    sub_20BBFA2F4();
  }

  sub_20B8952E8(v87, v19);
  if ((*(v20 + 48))(v19, 1, v85) == 1)
  {
    sub_20B520158(v19, &qword_27C766E90, &unk_20C15F2C0);
    v37 = type metadata accessor for NavigationRequest(0);
    v38 = v81;
    sub_20B895280(v82 + *(v37 + 24), v81, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v83;
      v40 = v84;
      (*(v13 + 32))(v83, v38, v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850, &qword_20C176E30);
      sub_20C133AA4();
      v41 = v76;
      sub_20C13B594();
      v42 = v72;
      (*(v13 + 16))(v72, v39, v40);
      v43 = sub_20C13BB74();
      v44 = sub_20C13D1F4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v88 = v36;
        v46 = v42;
        v47 = v45;
        v48 = swift_slowAlloc();
        v90 = v48;
        *v47 = 136315138;
        sub_20B89556C(&qword_27C766E98, MEMORY[0x277D51510], MEMORY[0x277D51538]);
        v49 = sub_20C13DFA4();
        v51 = v50;
        v52 = *(v13 + 8);
        v52(v46, v84);
        v53 = sub_20B51E694(v49, v51, &v90);
        v40 = v84;

        *(v47 + 4) = v53;
        _os_log_impl(&dword_20B517000, v43, v44, "NavigationRequest: Not presenting SessionViewController - missing workout configuration. Leaving %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x20F2F6A40](v48, -1, -1);
        MEMORY[0x20F2F6A40](v47, -1, -1);

        v35(v76, v89);
      }

      else
      {

        v52 = *(v13 + 8);
        v52(v42, v40);
        v35(v41, v89);
      }

      __swift_project_boxed_opaque_existential_1(v91, v91[3]);
      v66 = v73;
      v67 = v83;
      sub_20C13A234();
      v68 = v75;
      v69 = sub_20C137CB4();
      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      *(v70 + 24) = 0;
      v69(sub_20B52347C, v70);

      (*(v74 + 8))(v66, v68);
      v52(v67, v40);
      return __swift_destroy_boxed_opaque_existential_1(v91);
    }

    else
    {
      return sub_20B8954F0(v38, type metadata accessor for NavigationSource);
    }
  }

  else
  {
    v54 = v80;
    sub_20B895488(v19, v80, type metadata accessor for WorkoutSessionConfiguration);
    v55 = v78;
    sub_20B895280(v54, v78, type metadata accessor for WorkoutSessionConfiguration);
    v56 = v77;
    sub_20B895280(v55, v77, type metadata accessor for WorkoutSessionConfiguration);

    v58 = sub_20B9C04B4(v57, v56);
    v59 = objc_allocWithZone(type metadata accessor for SessionViewController(0));

    v61 = sub_20BFE1644(v60, v58, 0, 0, 0, 0);
    sub_20B8954F0(v55, type metadata accessor for WorkoutSessionConfiguration);
    [v61 setModalPresentationStyle_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v64 = v61;
      PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:completion:)(v64, &protocol witness table for SessionViewController, 1, 0, 0, a6, a8);
    }

    return sub_20B8954F0(v54, type metadata accessor for WorkoutSessionConfiguration);
  }
}

uint64_t sub_20B8940AC(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90, &unk_20C15F2C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  sub_20B895280(a1, v9 - v5, type metadata accessor for WorkoutSessionConfiguration);
  v7 = type metadata accessor for WorkoutSessionConfiguration(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_20B520158(v6, &qword_27C766E90, &unk_20C15F2C0);
}

uint64_t sub_20B8941C8(void *a1, void (*a2)(char *), uint64_t a3)
{
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90, &unk_20C15F2C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v26 = sub_20C13BB84();
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v12 = a1;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[1] = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25[0] = a2;
    v18 = v17;
    v30 = v17;
    *v16 = 136446210;
    swift_getErrorValue();
    v19 = MEMORY[0x20F2F5850](v28, v29);
    v21 = sub_20B51E694(v19, v20, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_20B517000, v13, v14, "NavigationRequest: Unable to make workout session configuration: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v22 = v18;
    a2 = v25[0];
    MEMORY[0x20F2F6A40](v22, -1, -1);
    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v26);
  v23 = type metadata accessor for WorkoutSessionConfiguration(0);
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  a2(v8);
  return sub_20B520158(v8, &qword_27C766E90, &unk_20C15F2C0);
}

double sub_20B894468(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[5];
  v8 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20B8911B0(a1, v7, v1 + v6, v8, v3, v4);
}

void sub_20B894594(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for NavigationRequest(0) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[5];
  v9 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = v9[8];

  sub_20B892FBC(a1, v8, v1 + v7, v10, v11, v3, v4, v5);
}

uint64_t sub_20B89474C()
{
  [*(v0 + 40) presentViewController:*(v0 + 48) animated:1 completion:0];

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

void sub_20B894798(void (*a1)(void **), uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_20B8926F4(a1, a2, *(v2 + 40), v2 + v6, *v7, *(v7 + 8));
}

uint64_t sub_20B894868()
{
  [*(v0 + 40) pushViewController:*(v0 + 48) animated:*(v0 + 56)];

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B8948B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B894AC8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);

  return sub_20C137C94();
}

uint64_t sub_20B894BD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;

  v10 = a1;

  return sub_20C137C94();
}

uint64_t sub_20B894CA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = a1;
  a5(0);

  return sub_20C137C94();
}

void sub_20B894D44(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_20B583FB8(v6, 0);
}

void sub_20B894DD8(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = 0x100000000;
  if (!BYTE4(v8))
  {
    v6 = 0;
  }

  v7 = (v6 | v8);
  v8 = v7;
  v9 = 0;
  a1(&v8);

  sub_20B583FB8(v7, 0);
}

uint64_t sub_20B894E80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v22[0] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v22 - v19;
  a3(a5, v18);
  swift_storeEnumTagMultiPayload();
  sub_20B5DF134(v13, v16, a6, a7);
  sub_20B5DF134(v16, v20, a6, a7);
  (v22[0])(v20);
  return sub_20B520158(v20, a6, a7);
}

void sub_20B895000(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v7 = v7;
  v8 = 0;
  a1(&v7);

  sub_20B583FB8(v6, 0);
}

void sub_20B89519C()
{
  v1 = *(type metadata accessor for NavigationRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_20B892B80(v0 + v2, v3);
}

uint64_t objectdestroy_64Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B895280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8952E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90, &unk_20C15F2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B895358()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90, &unk_20C15F2C0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for NavigationRequest(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[5];
  v11 = *(v0 + v9);
  v12 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_20B893774(v10, v0 + v5, v0 + v8, v11, v12, v1, v2, v3);
}

uint64_t sub_20B895488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8954F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B89556C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20B8955E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];
  [v12 setAdjustsFontForContentSizeCategory_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_subtitleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  [v14 setAdjustsFontForContentSizeCategory_];
  *&v4[v13] = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_artwork;
  v16 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_platterView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v17] = v18;
  v19 = &v4[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_styleProvider];
  sub_20B8973A4(v151);
  v20 = v151[1];
  *v19 = v151[0];
  *(v19 + 1) = v20;
  *(v19 + 4) = v152;
  *(v19 + 40) = xmmword_20C15F2D0;
  *(v19 + 56) = xmmword_20C15F2E0;
  __asm { FMOV            V0.2D, #15.0 }

  *(v19 + 72) = _Q0;
  v26 = type metadata accessor for ActionButtonTemplateBuilder();
  v27 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v28 = swift_allocObject();
  v29 = qword_27C760AA0;

  v30 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v32 = qword_27C76CF78;
  v150[3] = v26;
  v150[4] = &off_2822EEB00;
  v150[0] = v27;
  v140 = v27;
  v148 = &type metadata for ActionButtonViewFactory;
  v149 = &off_2822B2B20;
  v33 = type metadata accessor for ActionButtonContainerView();
  v34 = objc_allocWithZone(v33);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v150, v26);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = (&v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
  v40 = *v38;
  v146[4] = &off_2822EEB00;
  v146[3] = v26;
  v146[0] = v40;
  v145[3] = &type metadata for ActionButtonViewFactory;
  v145[4] = &off_2822B2B20;
  *&v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v146, &v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v41 = &v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  v139 = v30;
  *v41 = v30;
  v41[1] = &off_28229AE20;
  sub_20B51CC64(v145, &v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v31;
  *&v34[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v32;
  v144.receiver = v34;
  v144.super_class = v33;
  v42 = objc_msgSendSuper2(&v144, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(v146);
  v43 = v42;
  __swift_destroy_boxed_opaque_existential_1(v147);
  __swift_destroy_boxed_opaque_existential_1(v150);
  [v43 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_actionButtonContainerView] = v43;
  v143.receiver = v4;
  v143.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v143, sel_initWithFrame_, a1, a2, a3, a4);
  v45 = *&v44[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_platterView];
  v46 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_platterView;
  v47 = v44;
  v48 = v44;
  v49 = v45;
  v50 = [v48 traitCollection];
  v51 = [objc_opt_self() systemBackgroundColor];
  v52 = sub_20C13D3B4();
  v53 = [v51 resolvedColorWithTraitCollection_];

  [v49 setBackgroundColor_];
  v54 = [*&v47[v46] layer];
  v55 = &v48[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_styleProvider];
  [v54 setCornerRadius_];

  [*&v47[v46] setClipsToBounds_];
  v56 = [v48 contentView];
  [v56 addSubview_];

  v57 = *&v48[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_artwork];
  v58 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_artwork;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = objc_opt_self();
  v61 = v57;
  v62 = [v60 bundleForClass_];
  v63 = sub_20C13C914();
  v64 = [objc_opt_self() imageNamed:v63 inBundle:v62 compatibleWithTraitCollection:0];

  [v61 setImage_];
  v141 = v58;
  [*&v48[v58] setContentMode_];
  [*&v47[v46] addSubview_];
  v65 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v65 setTranslatesAutoresizingMaskIntoConstraints_];
  [v65 setAlignment_];
  [v65 setAxis_];
  [v65 setSpacing_];
  v66 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_titleLabel;
  [*&v48[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_titleLabel] setFont_];
  [*&v48[v66] setTextColor_];
  [v65 addArrangedSubview_];
  v67 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_subtitleLabel;
  v68 = *&v48[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_subtitleLabel];
  v142 = v55;
  [v68 setFont_];
  [*&v48[v67] setTextColor_];
  v69 = *&v48[v67];
  v136 = v65;
  [v65 addArrangedSubview_];
  v70 = v48;
  v71 = [v70 contentView];
  [v71 addSubview_];

  v72 = *&v70[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_actionButtonContainerView];
  v73 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_actionButtonContainerView;
  v137 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_actionButtonContainerView;
  *(v72 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822AFD20;
  swift_unknownObjectWeakAssign();

  v74 = [v70 contentView];
  [v74 addSubview_];

  ObjectType = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_20C150930;
  v76 = v141;
  v77 = [*&v48[v141] leadingAnchor];
  v78 = [*&v47[v46] leadingAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v75 + 32) = v79;
  v80 = [*&v48[v76] trailingAnchor];
  v81 = [*&v47[v46] trailingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v75 + 40) = v82;
  v135 = v48;
  v83 = [*&v48[v76] topAnchor];
  v84 = [*&v47[v46] &selRef_setLineBreakMode_];
  v85 = [v83 constraintEqualToAnchor:v84 constant:v142[7]];

  *(v75 + 48) = v85;
  v86 = [*&v48[v76] heightAnchor];
  v87 = [v70 contentView];
  v88 = [v87 widthAnchor];

  v89 = [v86 constraintEqualToAnchor:v88 multiplier:0.34];
  *(v75 + 56) = v89;
  v90 = [*&v47[v46] leadingAnchor];
  v91 = [v70 contentView];
  v92 = [v91 leadingAnchor];

  v93 = [v90 constraintEqualToAnchor_];
  *(v75 + 64) = v93;
  v94 = [*&v47[v46] trailingAnchor];
  v95 = [v70 &selRef_setMaximumFractionDigits_];
  v96 = [v95 trailingAnchor];

  v97 = [v94 constraintEqualToAnchor_];
  *(v75 + 72) = v97;
  v98 = [*&v47[v46] topAnchor];
  v99 = [v70 &selRef_setMaximumFractionDigits_];
  v100 = [v99 topAnchor];

  v101 = [v98 constraintEqualToAnchor_];
  *(v75 + 80) = v101;
  v102 = [*&v47[v46] bottomAnchor];
  v103 = [v70 &selRef_setMaximumFractionDigits_];
  v104 = [v103 &selRef_secondaryLabel + 5];

  v105 = [v102 constraintEqualToAnchor_];
  *(v75 + 88) = v105;
  v106 = v136;
  v107 = [v136 leadingAnchor];
  v108 = [v70 &selRef_setMaximumFractionDigits_];
  v109 = [v108 leadingAnchor];

  v110 = v142;
  v111 = [v107 constraintEqualToAnchor:v109 constant:v142[8]];

  *(v75 + 96) = v111;
  v112 = [v106 trailingAnchor];
  v113 = [v70 &selRef_setMaximumFractionDigits_];
  v114 = [v113 trailingAnchor];

  v115 = [v112 constraintEqualToAnchor:v114 constant:-v110[10]];
  *(v75 + 104) = v115;
  v116 = [v106 topAnchor];
  v117 = [*&v135[v141] &selRef_secondaryLabel + 5];
  v118 = [v116 &selRef_passwordEntryCancelledHandler + 6];

  *(v75 + 112) = v118;
  v119 = v137;
  v120 = [*&v70[v137] leadingAnchor];
  v121 = [v106 leadingAnchor];
  v122 = [v120 constraintEqualToAnchor_];

  *(v75 + 120) = v122;
  v123 = [*&v70[v119] trailingAnchor];
  v124 = [v106 trailingAnchor];
  v125 = [v123 constraintEqualToAnchor_];

  *(v75 + 128) = v125;
  v126 = [*&v70[v119] topAnchor];
  v127 = [v106 &selRef_secondaryLabel + 5];

  v128 = [v126 constraintEqualToAnchor:v127 constant:v110[6]];
  *(v75 + 136) = v128;
  v129 = [*&v70[v119] &selRef_secondaryLabel + 5];
  v130 = [v70 contentView];

  v131 = [v130 &selRef_secondaryLabel + 5];
  v132 = [v129 constraintEqualToAnchor:v131 constant:-v110[9]];

  *(v75 + 144) = v132;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v133 = sub_20C13CC54();

  [(objc_class *)ObjectType activateConstraints:v133];

  return v70;
}

uint64_t type metadata accessor for WorkoutPlanBannerCell(uint64_t a1)
{
  result = qword_281102790;
  if (!qword_281102790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B896974(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B896A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_20B896A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B896ADC(uint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20B5F15A8(a1, v9);
    v12 = swift_storeEnumTagMultiPayload();
    v13 = MEMORY[0x28223BE20](v12);
    *(&v16 - 4) = 0;
    *(&v16 - 24) = 1;
    *(&v16 - 2) = v9;
    *(&v16 - 1) = v11;
    v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v14)
    {
      v15 = v14;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E27BC);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B897344(v9, type metadata accessor for ShelfItemAction);
  }

  return result;
}

double sub_20B896CF0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B896D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B896DA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B896E08(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ButtonAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767B00, &unk_20C15F3C0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v43 - v9);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x45)
  {
    v46 = v5;
    v11 = swift_projectBox();
    sub_20B52F9E8(v11, v10, &qword_27C767B00, &unk_20C15F3C0);
    v13 = *v10;
    v12 = v10[1];
    v15 = v10[2];
    v14 = v10[3];
    v16 = *(v8 + 64);

    v17 = *(v10 + *(v8 + 96));
    sub_20B520158(v10 + v16, &unk_27C766680, &unk_20C14F920);
    v18 = *&v2[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_titleLabel];
    v19 = sub_20C13C914();
    [v18 setText_];

    v20 = *&v2[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_subtitleLabel];
    v21 = sub_20C13C914();
    [v20 setText_];

    sub_20BC96528(v17, 1, 1, 0, 0, 1, 0, 1);
    v22 = [v2 contentView];
    [v22 setIsAccessibilityElement_];

    v48 = v2;
    v47 = [v2 contentView];
    v49 = v13;
    v50 = v12;

    MEMORY[0x20F2F4230](8236, 0xE200000000000000);

    MEMORY[0x20F2F4230](v15, v14);

    MEMORY[0x20F2F4230](8236, 0xE200000000000000);

    v23 = v49;
    v24 = v50;
    v25 = *(v17 + 16);
    if (v25)
    {
      v44 = v49;
      v45 = v17;
      v26 = v17 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v27 = *(v46 + 72);
      v28 = MEMORY[0x277D84F90];
      do
      {
        sub_20B5F15A8(v26, v7);
        v30 = *(v7 + 4);
        v31 = *(v7 + 5);

        sub_20B897344(v7, type metadata accessor for ButtonAction);
        if (v31)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_20BC05BA4(0, *(v28 + 2) + 1, 1, v28);
          }

          v33 = *(v28 + 2);
          v32 = *(v28 + 3);
          if (v33 >= v32 >> 1)
          {
            v28 = sub_20BC05BA4((v32 > 1), v33 + 1, 1, v28);
          }

          *(v28 + 2) = v33 + 1;
          v29 = &v28[16 * v33];
          *(v29 + 4) = v30;
          *(v29 + 5) = v31;
        }

        v26 += v27;
        --v25;
      }

      while (v25);

      v23 = v44;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v49 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
    sub_20B86A1D4();
    v34 = sub_20C13C824();
    v36 = v35;

    v49 = v23;
    v50 = v24;

    MEMORY[0x20F2F4230](v34, v36);

    v37 = sub_20C13C914();

    v38 = v47;
    [v47 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_20C14F980;
    v40 = v48;
    v41 = [v48 contentView];
    *(v39 + 56) = sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    *(v39 + 32) = v41;
    v42 = sub_20C13CC54();

    [v40 setAccessibilityElements_];

    [v40 setIsAccessibilityElement_];
  }
}

uint64_t sub_20B897344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20B8973A4@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v19 = [v2 preferredFontForTextStyle_];
  v3 = objc_opt_self();
  v18 = [v3 secondaryLabelColor];
  v4 = *MEMORY[0x277D743F8];
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v7 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v8 = swift_initStackObject();
  v9 = MEMORY[0x277D74430];
  *(v8 + 16) = xmmword_20C14F980;
  v10 = *v9;
  *(v8 + 32) = *v9;
  *(v8 + 40) = v4;
  v11 = v7;
  v12 = v10;
  v13 = sub_20B6B134C(v8);
  swift_setDeallocating();
  sub_20B520158(v8 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v13;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v14 = sub_20C13C744();

  v15 = [v5 fontDescriptorByAddingAttributes_];

  v16 = [v2 fontWithDescriptor:v15 size:0.0];
  result = [v3 whiteColor];
  *a1 = 0x4024000000000000;
  a1[1] = v19;
  a1[2] = v18;
  a1[3] = v16;
  a1[4] = result;
  return result;
}

void sub_20B897648()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_subtitleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  [v6 setAdjustsFontForContentSizeCategory_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_artwork;
  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_platterView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v11 = v0 + OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_styleProvider;
  sub_20B8973A4(v18);
  v12 = v18[1];
  *v11 = v18[0];
  *(v11 + 16) = v12;
  *(v11 + 32) = v19;
  *(v11 + 40) = xmmword_20C15F2D0;
  *(v11 + 56) = xmmword_20C15F2E0;
  __asm { FMOV            V0.2D, #15.0 }

  *(v11 + 72) = _Q0;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B8978B0(uint64_t a1)
{
  result = sub_20B8978D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20B8978D8()
{
  result = qword_27C7649B0;
  if (!qword_27C7649B0)
  {
    sub_20C1341A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7649B0);
  }

  return result;
}

SeymourUI::NavigationPriority_optional __swiftcall NavigationPriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20B897950()
{
  result = qword_27C766EA8;
  if (!qword_27C766EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766EA8);
  }

  return result;
}

id sub_20B897A14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSessionOngoingWorkoutDetectedView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B897AE8(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_20B6302C0;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20B7B548C;
  v6[3] = &block_descriptor_33;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.2];
  _Block_release(v5);
}

char *sub_20B897BF8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_blurView;
  v3 = [objc_opt_self() effectWithStyle_];
  v4 = type metadata accessor for SessionBlurView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v3;
  v90.receiver = v5;
  v90.super_class = v4;
  v6 = objc_msgSendSuper2(&v90, sel_initWithEffect_, 0);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v2] = v6;
  v86 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  v8 = sub_20C13C914();
  [v7 setText_];

  v9 = *MEMORY[0x277D74420];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v13 = swift_initStackObject();
  v14 = MEMORY[0x277D74430];
  *(v13 + 16) = xmmword_20C14F980;
  v15 = *v14;
  *(v13 + 32) = *v14;
  *(v13 + 40) = v9;
  v16 = v12;
  v17 = v15;
  v18 = sub_20B6B134C(v13);
  swift_setDeallocating();
  sub_20B520158(v13 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v18;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v19 = sub_20C13C744();

  v20 = [v10 fontDescriptorByAddingAttributes_];

  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v20 size:0.0];

  [v7 setFont_];
  v23 = objc_opt_self();
  v24 = [v23 labelColor];
  [v7 setTextColor_];

  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setTextAlignment_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v86] = v7;
  v25 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_descriptionLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v27 = sub_20C13C914();
  [v26 setText_];

  v28 = [v21 preferredFontForTextStyle_];
  [v26 setFont_];

  v29 = [v23 labelColor];
  [v26 setTextColor_];

  [v26 setTextAlignment_];
  v30 = v26;
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v25] = v30;
  *&v1[OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_presenter] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C151490;
  v33 = *&v1[v86];
  *(v32 + 32) = v33;
  *(v32 + 40) = v30;
  v34 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v35 = v30;

  v36 = v33;
  v37 = sub_20C13CC54();

  v38 = [v34 initWithArrangedSubviews_];

  [v38 setAlignment_];
  [v38 setAxis_];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_stackView] = v38;
  [v38 setCustomSpacing:*&v1[v86] afterView:40.0];
  v89.receiver = v1;
  v89.super_class = type metadata accessor for TVSessionOngoingWorkoutDetectedView();
  v39 = objc_msgSendSuper2(&v89, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v40 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_descriptionLabel;
  v41 = *&v39[OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_descriptionLabel];
  v87 = v39;
  v42 = v39;
  [v41 setContentMode_];
  [*&v39[v40] setLineBreakMode_];
  [*&v39[v40] setNumberOfLines_];
  v43 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_blurView;
  [*&v42[OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_blurView] setEffect_];
  v44 = *&v42[v43];
  v45 = v42;
  [v45 addSubview_];
  v85 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_stackView;
  [v45 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_20C14F320;
  v48 = *MEMORY[0x277D768C8];
  v47 = *(MEMORY[0x277D768C8] + 8);
  v49 = *(MEMORY[0x277D768C8] + 16);
  v50 = *(MEMORY[0x277D768C8] + 24);
  v51 = *&v42[v43];
  v52 = [v51 leadingAnchor];
  v53 = [v45 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:v47];

  LODWORD(v55) = 1148846080;
  [v54 setPriority_];
  v56 = v54;
  v57 = [v51 trailingAnchor];
  v58 = [v45 trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-v50];

  LODWORD(v60) = 1148846080;
  [v59 setPriority_];
  v61 = v59;
  v62 = [v51 topAnchor];
  v63 = [v45 topAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:v48];

  LODWORD(v65) = 1148846080;
  [v64 setPriority_];
  v66 = [v51 bottomAnchor];
  v67 = [v45 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-v49];

  LODWORD(v69) = 1148846080;
  [v68 setPriority_];
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_20C14FE90;
  *(v70 + 32) = v56;
  *(v70 + 40) = v61;
  *(v70 + 48) = v64;
  *(v70 + 56) = v68;
  v71 = v64;

  *(v46 + 32) = v70;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C150040;
  v73 = [*&v45[v85] centerXAnchor];
  v74 = [v45 centerXAnchor];

  v75 = [v73 constraintEqualToAnchor_];
  *(v72 + 32) = v75;
  v76 = [*&v45[v85] centerYAnchor];
  v77 = [v45 centerYAnchor];

  v78 = [v76 constraintEqualToAnchor_];
  *(v72 + 40) = v78;
  v79 = [*&v87[v40] widthAnchor];
  v80 = [v45 widthAnchor];

  v81 = [v79 constraintLessThanOrEqualToAnchor:v80 multiplier:0.5];
  *(v72 + 48) = v81;
  *(v46 + 40) = v72;
  v82 = objc_opt_self();
  sub_20BE54D20(v46);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v83 = sub_20C13CC54();

  [v82 activateConstraints_];

  [v45 setAlpha_];
  *(a1 + 24) = &off_2822AFEF8;
  swift_unknownObjectWeakAssign();

  return v45;
}

void sub_20B8987C4()
{
  v1 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = type metadata accessor for SessionBlurView();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v2;
  v31.receiver = v4;
  v31.super_class = v3;
  v5 = objc_msgSendSuper2(&v31, sel_initWithEffect_, 0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  v8 = sub_20C13C914();
  [v7 setText_];

  v9 = *MEMORY[0x277D74420];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A28] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_20C14F980;
  v14 = *MEMORY[0x277D74430];
  *(v13 + 32) = *MEMORY[0x277D74430];
  *(v13 + 40) = v9;
  v15 = v12;
  v16 = v14;
  v17 = sub_20B6B134C(v13);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v17;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v18 = sub_20C13C744();

  v19 = [v10 fontDescriptorByAddingAttributes_];

  v20 = objc_opt_self();
  v21 = [v20 fontWithDescriptor:v19 size:0.0];

  [v7 setFont_];
  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v7 setTextColor_];

  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setTextAlignment_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v24 = OBJC_IVAR____TtC9SeymourUI35TVSessionOngoingWorkoutDetectedView_descriptionLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v26 = sub_20C13C914();
  [v25 setText_];

  v27 = [v20 preferredFontForTextStyle_];
  [v25 setFont_];

  v28 = [v22 labelColor];
  [v25 setTextColor_];

  [v25 setTextAlignment_];
  v29 = v25;
  LODWORD(v30) = 1132068864;
  [v29 setContentCompressionResistancePriority:1 forAxis:v30];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v24) = v29;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B898CD0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI25SessionPlayButtonTintView_gradientLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v10 = type metadata accessor for SessionPlayButtonTintView();
  v19.receiver = v4;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  v18.receiver = v13;
  v18.super_class = v10;
  objc_msgSendSuper2(&v18, sel_setBackgroundColor_, v14);

  v15 = OBJC_IVAR____TtC9SeymourUI25SessionPlayButtonTintView_gradientLayer;
  [*&v13[OBJC_IVAR____TtC9SeymourUI25SessionPlayButtonTintView_gradientLayer] setNeedsDisplayOnBoundsChange_];
  v16 = [v13 layer];

  [v16 addSublayer_];
  return v13;
}

void sub_20B898F44(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25SessionPlayButtonTintView_gradientLayer);
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    v13 = sub_20C13CC54();

    [v3 setColors_];

    return;
  }

  v4 = sub_20C13DB34();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  sub_20BB5D97C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2F5430](v5, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 CGColor];
      type metadata accessor for CGColor(0);
      v15 = v10;

      *&v14 = v9;
      v16 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_20BB5D97C((v11 > 1), v12 + 1, 1);
        v6 = v16;
      }

      ++v5;
      *(v6 + 16) = v12 + 1;
      sub_20B6B3B74(&v14, (v6 + 32 * v12 + 32));
    }

    while (v4 != v5);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_20B8990F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SessionPlayButtonTintView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20B89915C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646F0, &unk_20C1560E0);
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v62);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = v15;
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v67 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v64 = &v53 - v19;
  *(v3 + 22) = a1;
  *(v3 + 23) = a2;

  if (a2)
  {
    v54 = v18;
    __swift_project_boxed_opaque_existential_1(v3 + 7, *(v3 + 10));
    v20 = v56;
    sub_20C13A0B4();
    v21 = v55;
    v22 = v58;
    (*(v6 + 16))(v55, v20, v58);
    v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v24 = swift_allocObject();
    (*(v6 + 32))(v24 + v23, v21, v22);
    v25 = (v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = sub_20B89B028;
    v25[1] = v3;
    sub_20C137C24();

    v26 = v59;
    sub_20C137C94();
    (*(v6 + 8))(v20, v22);
    v27 = v57;
    v28 = v62;
    (*(v10 + 16))(v57, v26, v62);
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v10 + 32))(v30 + v29, v27, v28);
    v31 = (v30 + ((v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B89B058;
    v31[1] = v3;
    sub_20B71D438();

    v32 = v63;
    sub_20C137C94();
    (*(v10 + 8))(v26, v28);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_20B89B088;
    *(v33 + 24) = v3;
    v35 = v65;
    v34 = v66;
    v36 = v61;
    (*(v65 + 16))(v61, v32, v66);
    v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v38 = (v60 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (*(v35 + 32))(v39 + v37, v36, v34);
    v40 = (v39 + v38);
    *v40 = sub_20B89B090;
    v40[1] = v33;

    v41 = v64;
    sub_20C137C94();
    (*(v35 + 8))(v32, v34);
    v42 = v54;
    v43 = sub_20C137CB4();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    v43(sub_20B52347C, v44);

    (*(v67 + 8))(v41, v42);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v46 = Strong;
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v48 = [swift_unknownObjectRetain() view];
      if (v48)
      {
        v49 = v48;
        v50 = objc_opt_self();
        v51 = swift_allocObject();
        v51[2] = sub_20B89B014;
        v51[3] = v47;
        v51[4] = v46;
        aBlock[4] = sub_20B89B01C;
        aBlock[5] = v51;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_20B7B548C;
        aBlock[3] = &block_descriptor_34;
        v52 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [v50 transitionWithView:v49 duration:5242880 options:v52 animations:0 completion:0.3];

        _Block_release(v52);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_20B89993C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135AE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_20C137C24();

  return sub_20C137C94();
}

void sub_20B899A94(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    [*(v4 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_artworkView) frame];
    sub_20C138B14();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_20B89B1B4();
    v5 = swift_allocError();
    *v6 = 0;
    *(swift_allocObject() + 16) = v5;
    sub_20B71D438();

    sub_20C137CA4();
  }
}

uint64_t sub_20B899BC8(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;

  return sub_20C137C94();
}

id sub_20B899C58(void (*a1)(char *), uint64_t a2, void *a3)
{
  v45 = a2;
  v46 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646F8, &qword_20C15F5E0);
  MEMORY[0x28223BE20](v44);
  v5 = &v42 - v4;
  __swift_project_boxed_opaque_existential_1(a3 + 12, a3[15]);
  sub_20C135AD4();
  v49 = sub_20C138544();

  __swift_project_boxed_opaque_existential_1(a3 + 12, a3[15]);
  sub_20C1359E4();
  v48 = sub_20C138544();

  v6 = sub_20C135A44();
  sub_20B89A5D4(v6);
  v47 = v7;

  v43 = sub_20C135A24();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [v49 string];
    if (!v10)
    {
      sub_20C13C954();
    }

    v11 = sub_20C13C954();
    v13 = v12;

    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = v13;

    result = [swift_unknownObjectRetain() view];
    if (!result)
    {
      __break(1u);
      goto LABEL_22;
    }

    v16 = result;

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    v18[2] = sub_20B89B294;
    v18[3] = v14;
    v18[4] = v9;
    v54 = sub_20B89B3E0;
    v55 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_20B7B548C;
    v53 = &block_descriptor_57_0;
    v19 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v17 transitionWithView:v16 duration:5242880 options:v19 animations:0 completion:0.3];

    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v48 string];
  if (!v22)
  {
    sub_20C13C954();
  }

  v23 = sub_20C13C954();
  v25 = v24;

  v26 = swift_allocObject();
  v26[2] = v21;
  v26[3] = v23;
  v26[4] = v25;

  result = [swift_unknownObjectRetain() view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = result;

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  v29[2] = sub_20B89B2E0;
  v29[3] = v26;
  v29[4] = v21;
  v54 = sub_20B89B3E0;
  v55 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_20B7B548C;
  v53 = &block_descriptor_67;
  v30 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v28 transitionWithView:v27 duration:5242880 options:v30 animations:0 completion:0.3];

  _Block_release(v30);
  swift_unknownObjectRelease();
LABEL_11:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BC1DA58(v47, 1);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    goto LABEL_17;
  }

  v32 = v31;
  v33 = v43 > 0;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  result = [swift_unknownObjectRetain() view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = result;
  v36 = objc_opt_self();
  v37 = swift_allocObject();
  v37[2] = sub_20B89B2EC;
  v37[3] = v34;
  v37[4] = v32;
  v54 = sub_20B89B3E0;
  v55 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_20B7B548C;
  v53 = &block_descriptor_77;
  v38 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v36 transitionWithView:v35 duration:5242880 options:v38 animations:0 completion:0.3];

  _Block_release(v38);
  swift_unknownObjectRelease();
LABEL_17:
  v39 = swift_unknownObjectWeakLoadStrong();
  if (!v39)
  {
LABEL_20:
    sub_20C135A04();
    swift_storeEnumTagMultiPayload();
    v46(v5);

    return sub_20B89B2F8(v5);
  }

  v40 = v39;
  [*(v39 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView) setHidden_];
  [*&v40[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView] setHidden_];
  [*&v40[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_artworkView] setStackImage_];
  result = [v40 view];
  if (result)
  {
    v41 = result;
    [result layoutIfNeeded];
    swift_unknownObjectRelease();

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_20B89A39C(void (*a1)(void **), uint64_t a2, uint64_t a3, void *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a4;
    v9 = a4;
    v10 = [swift_unknownObjectRetain() view];
    if (v10)
    {
      v11 = v10;
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      v13[2] = sub_20B89B208;
      v13[3] = v8;
      v13[4] = v7;
      v24 = sub_20B89B3E0;
      v25 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_20B7B548C;
      v23 = &block_descriptor_41;
      v14 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v12 transitionWithView:v11 duration:5242880 options:v14 animations:0 completion:0.3];

      _Block_release(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
      sub_20C13E1D4();
      v15 = aBlock;
      LOBYTE(v11) = v21;
      v18 = aBlock;
      v19 = v21;
      a1(&v18);
      swift_unknownObjectRelease();
      sub_20B583FB8(v15, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20B89B1B4();
    v16 = swift_allocError();
    *v17 = 0;
    aBlock = v16;
    LOBYTE(v21) = 1;
    a1(&aBlock);
  }
}

void sub_20B89A5D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C138094();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = 2;
  v32 = v7;
  swift_storeEnumTagMultiPayload();
  v35[2] = v6;

  sub_20B89AA68(0x7FFFFFFFFFFFFFFFLL, 1uLL, sub_20B89AFE4, v35, a1);
  v9 = v8;
  sub_20B6343AC(v6);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {

    v28 = *(MEMORY[0x277D84F90] + 16);
    if (v28)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v36 = MEMORY[0x277D84F90];
  sub_20BB5E314(0, v10, 0);
  v12 = v36;
  v30[1] = v9;
  v31 = v2;
  v13 = (v9 + 56);
  do
  {
    v14 = *(v13 - 2);
    v15 = *(v13 - 1);
    v16 = *v13 >> 1;
    if (*v13)
    {
      v34 = *(v13 - 2);
      sub_20C13E014();
      swift_unknownObjectRetain_n();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = MEMORY[0x277D84F90];
      }

      v25 = *(v24 + 16);
      swift_unknownObjectRelease();

      v17 = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_39;
      }

      if (v25 == v17)
      {
        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v14 = v34;
        if (v17)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v17 = v16 - v15;
      v18 = __OFSUB__(v16, v15);
      swift_unknownObjectRetain();
      if (v18)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_unknownObjectRelease();
        __break(1u);
        return;
      }

      if (v17)
      {
LABEL_9:
        v34 = v14;
        if (v17 < 1)
        {
          v21 = MEMORY[0x277D84F90];
          if (v15 == v16)
          {
            goto LABEL_42;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
          v19 = *(v33 + 72);
          v20 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v21 = swift_allocObject();
          v22 = _swift_stdlib_malloc_size_0(v21);
          if (!v19)
          {
            goto LABEL_40;
          }

          if (v22 - v20 == 0x8000000000000000 && v19 == -1)
          {
            goto LABEL_41;
          }

          v21[2] = v17;
          v21[3] = 2 * ((v22 - v20) / v19);
          v2 = v31;
          if (v15 == v16)
          {
            goto LABEL_42;
          }
        }

        swift_arrayInitWithCopy();
        goto LABEL_25;
      }
    }

    v21 = MEMORY[0x277D84F90];
LABEL_25:
    swift_unknownObjectRelease();
LABEL_26:
    v36 = v12;
    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_20BB5E314((v26 > 1), v27 + 1, 1);
      v12 = v36;
    }

    v13 += 4;
    *(v12 + 16) = v27 + 1;
    *(v12 + 8 * v27 + 32) = v21;
    --v10;
  }

  while (v10);

  v11 = MEMORY[0x277D84F90];
  v28 = *(v12 + 16);
  if (v28)
  {
LABEL_33:
    v36 = v11;
    sub_20C13DD64();
    v29 = 32;
    do
    {
      __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));

      sub_20C138544();

      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v29 += 8;
      --v28;
    }

    while (v28);
  }

LABEL_35:
}

uint64_t sub_20B89A9E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  sub_20B583E6C((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_20B89AA68(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), void *a4, uint64_t a5)
{
  v8 = v5;
  v48 = a3;
  v13 = sub_20C138094();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = *(a5 + 16);
  if (!a1 || !v7)
  {
    if (!v7 && (a2 & 1) != 0)
    {
LABEL_30:

      return;
    }

    v14 = sub_20BC0785C(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = v14[2];
    v16 = v14[3];
    a4 = (v6 + 1);
    if (v6 < v16 >> 1)
    {
LABEL_32:
      v34 = *(v49 + 80);
      v14[2] = a4;
      v35 = &v14[4 * v6];
      v35[4] = a5;
      v35[5] = a5 + ((v34 + 32) & ~v34);
      v35[6] = 0;
      v35[7] = (2 * v7) | 1;
      return;
    }

LABEL_47:
    v14 = sub_20BC0785C((v16 > 1), a4, 1, v14);
    goto LABEL_32;
  }

  v43 = a2;
  v6 = 0;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v6 == v7)
    {
      v6 = v7;
      goto LABEL_34;
    }

    v47 = v16;
    v42 = a1;
    v45 = v14;
    v50 = v8;
    v17 = (2 * v6) | 1;
LABEL_7:
    v18 = 1;
    v44 = v17;
    v46 = v6;
    while (1)
    {
      v16 = *(a5 + 16);
      if (v6 >= v16)
      {
        __break(1u);
        goto LABEL_46;
      }

      a2 = v7;
      v19 = a5;
      v20 = a5 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v21 = v47;
      sub_20B634348(v20 + *(v49 + 72) * v6, v47);
      v22 = v50;
      v23 = v48(v21);
      v50 = v22;
      if (v22)
      {
        sub_20B6343AC(v21);

        return;
      }

      v24 = v23;
      v14 = sub_20B6343AC(v21);
      if (v24)
      {
        break;
      }

      ++v6;
      v17 += 2;
      ++v18;
      v7 = a2;
      a5 = v19;
      if (a2 == v6)
      {
        v14 = v45;
        v6 = v46;
        goto LABEL_34;
      }
    }

    if (v18 == 1 && (v43 & 1) != 0)
    {
      break;
    }

    v25 = v45;
    if (v6 < v46)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    if (v46 < 0)
    {
      goto LABEL_53;
    }

    v26 = *(v19 + 16);
    if (v26 < v46 || v26 < v6)
    {
      goto LABEL_54;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_20BC0785C(0, v25[2] + 1, 1, v25);
    }

    v27 = v25;
    v28 = v25[2];
    v29 = v27;
    v30 = v27[3];
    v31 = v28 + 1;
    if (v28 >= v30 >> 1)
    {
      v29 = sub_20BC0785C((v30 > 1), v28 + 1, 1, v29);
    }

    v29[2] = v31;
    v32 = &v29[4 * v28];
    v14 = v29;
    v32[4] = v19;
    v32[5] = v20;
    a5 = v19;
    v32[6] = v46;
    v32[7] = v17;
    ++v6;
    a1 = v42;
    v33 = v31 == v42;
    v7 = a2;
    v8 = v50;
    v16 = v47;
    if (v33)
    {
      goto LABEL_34;
    }
  }

  v6 = v46 + 1;
  v17 = v44 + 2;
  v7 = a2;
  a5 = v19;
  if (v46 + 1 != a2)
  {
    goto LABEL_7;
  }

  v6 = a2;
  v14 = v45;
LABEL_34:
  if (v6 == v7 && (v43 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_49;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v36 = *(a5 + 16);
  if (v36 < v6 || v36 < v7)
  {
    goto LABEL_50;
  }

  a4 = v14;
  a2 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_51:
    a4 = sub_20BC0785C(0, a4[2] + 1, 1, a4);
  }

  v37 = a4;
  v39 = a4[2];
  v38 = a4[3];
  if (v39 >= v38 >> 1)
  {
    v37 = sub_20BC0785C((v38 > 1), v39 + 1, 1, a4);
  }

  v40 = *(v49 + 80);
  v37[2] = v39 + 1;
  v41 = &v37[4 * v39];
  v41[4] = a5;
  v41[5] = a5 + ((v40 + 32) & ~v40);
  v41[6] = a2;
  v41[7] = (2 * v7) | 1;
}

void *sub_20B89AED0()
{
  v0[25] = 0;
  v0[22] = 0;
  v0[23] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70, &unk_20C155A70);
  sub_20C133AA4();
  sub_20B51C710(v2, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v2, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v2, (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(v2, (v0 + 17));
  return v0;
}

uint64_t sub_20B89B0E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20B89B1B4()
{
  result = qword_27C766EE0;
  if (!qword_27C766EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766EE0);
  }

  return result;
}

id sub_20B89B210(void (*a1)(char *), uint64_t a2)
{
  sub_20C135AE4();
  v5 = *(v2 + 16);

  return sub_20B899C58(a1, a2, v5);
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B89B2F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646F8, &qword_20C15F5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20B89B374()
{
  result = qword_27C766EE8;
  if (!qword_27C766EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766EE8);
  }

  return result;
}

uint64_t RemoteDisplayInterceptor.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
  sub_20C133AA4();
  sub_20B52E424(&v7, v2 + 32);
  v3 = objc_allocWithZone(type metadata accessor for RemoteDisplayPresenter(0));
  v4 = RemoteDisplayPresenter.init(dependencies:)(a1);
  *(v2 + 24) = v4;
  v5 = &v4[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display];
  swift_beginAccess();
  *(v5 + 1) = &protocol witness table for RemoteDisplayInterceptor;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t RemoteDisplayInterceptor.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
  sub_20C133AA4();
  sub_20B52E424(&v8, v2 + 32);
  v4 = objc_allocWithZone(type metadata accessor for RemoteDisplayPresenter(0));
  v5 = RemoteDisplayPresenter.init(dependencies:)(a1);
  *(v2 + 24) = v5;
  v6 = &v5[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display];
  swift_beginAccess();
  *(v6 + 1) = &protocol witness table for RemoteDisplayInterceptor;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t RemoteDisplayInterceptor.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_20B89EC9C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t RemoteDisplayInterceptor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_20B89EC9C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t RemoteDisplayInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[0] = a3;
  v20[1] = a4;
  v6 = type metadata accessor for NavigationRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_20B89F58C(a1, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_20B75B150(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  *(v16 + v15) = v13;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = v20[0];
  *v17 = a2;
  v17[1] = v18;
  swift_unknownObjectRetain();
  return sub_20C137C94();
}

uint64_t sub_20B89B898(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v103 = a6;
  v104 = a5;
  v105 = a4;
  v107 = a1;
  v108 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - v8;
  v10 = type metadata accessor for NavigationRequest(0);
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = v11;
  v95 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0, &unk_20C153B90);
  v90 = *(v91 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v101 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x28223BE20](v15);
  v87 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v102 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698, &unk_20C15F7C0);
  MEMORY[0x28223BE20](v21 - 8);
  v97 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v100 = &v80 - v24;
  v25 = sub_20C132C14();
  v106 = *(v25 - 8);
  v26 = *(v106 + 64);
  MEMORY[0x28223BE20](v25);
  v89 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v80 - v28;
  v30 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B89F58C(a3, v32, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v83 = a3;
    v85 = v7;
    v86 = v9;
    v33 = v106 + 32;
    v34 = *(v106 + 32);
    v34(v29, v32, v25);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v96 = v25;
    v84 = v29;
    if (Strong)
    {
      v82 = v33;
      sub_20B51CC64(Strong + 32, v109);

      __swift_project_boxed_opaque_existential_1(v109, v109[3]);
      v36 = v101;
      sub_20C13A0E4();
      v37 = swift_allocObject();
      v38 = v108;
      v37[2] = v107;
      v37[3] = v38;
      v39 = v103;
      v37[4] = v104;
      v37[5] = v39;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_20B89F6B0;
      *(v40 + 24) = v37;
      v81 = v34;
      v41 = v90;
      v42 = v88;
      v43 = v36;
      v44 = v91;
      (*(v90 + 16))(v88, v43, v91);
      v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v46 = swift_allocObject();
      (*(v41 + 32))(v46 + v45, v42, v44);
      v47 = (v46 + ((v12 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v47 = sub_20B681EF8;
      v47[1] = v40;
      v48 = v96;

      v49 = v104;
      swift_unknownObjectRetain();
      sub_20C137C94();
      (*(v41 + 8))(v101, v44);
      __swift_destroy_boxed_opaque_existential_1(v109);
      v50 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v51 = v106 + 16;
      v52 = v89;
      (*(v106 + 16))(v89, v29, v48);
      v53 = v95;
      sub_20B89F58C(v83, v95, type metadata accessor for NavigationRequest);
      v54 = (*(v51 + 64) + 56) & ~*(v51 + 64);
      v55 = (v26 + *(v93 + 80) + v54) & ~*(v93 + 80);
      v56 = swift_allocObject();
      *(v56 + 2) = v50;
      *(v56 + 3) = v49;
      v58 = v107;
      v57 = v108;
      *(v56 + 4) = v103;
      *(v56 + 5) = v58;
      *(v56 + 6) = v57;
      v81(&v56[v54], v52, v48);
      sub_20B75B150(v53, &v56[v55]);
      v59 = swift_allocObject();
      *(v59 + 16) = sub_20B89F6F8;
      *(v59 + 24) = v56;
      v60 = v98;
      v61 = v99;
      v62 = v92;
      v63 = v102;
      (*(v98 + 16))(v92, v102, v99);
      v64 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v65 = swift_allocObject();
      (*(v60 + 32))(v65 + v64, v62, v61);
      v66 = (v65 + ((v16 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v66 = sub_20B5F7764;
      v66[1] = v59;

      swift_unknownObjectRetain();
      v67 = v60;
      v68 = v100;
      sub_20C137C94();
      (*(v60 + 8))(v63, v61);
      v69 = 0;
    }

    else
    {
      v69 = 1;
      v61 = v99;
      v68 = v100;
      v67 = v98;
    }

    (*(v67 + 56))(v68, v69, 1, v61);
    v71 = v97;
    sub_20B89F7E4(v68, v97);
    v72 = (*(v67 + 48))(v71, 1, v61);
    v73 = v86;
    if (v72 == 1)
    {
      sub_20B520158(v71, &qword_27C764698, &unk_20C15F7C0);
      v74 = sub_20C133C44();
      sub_20B89FA1C(&qword_27C7662C8, 255, MEMORY[0x277D50320], MEMORY[0x277D50328]);
      v75 = swift_allocError();
      (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D50318], v74);
      *v73 = v75;
      swift_storeEnumTagMultiPayload();
      v107(v73);
      sub_20B520158(v73, &unk_27C76D250, &unk_20C155D00);
    }

    else
    {
      v77 = v87;
      (*(v67 + 32))(v87, v71, v61);
      v78 = sub_20C137CB4();
      v79 = swift_allocObject();
      *(v79 + 16) = 0;
      *(v79 + 24) = 0;
      v78(sub_20B52E438, v79);

      (*(v67 + 8))(v77, v61);
    }

    sub_20B520158(v68, &qword_27C764698, &unk_20C15F7C0);
    return (*(v106 + 8))(v84, v96);
  }

  else
  {
    sub_20B89F58C(a3, v9, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v107(v9);
    sub_20B520158(v9, &unk_27C76D250, &unk_20C155D00);
    return sub_20B89F5F4(v32, type metadata accessor for NavigationResource);
  }
}

uint64_t sub_20B89C428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v39 - v7;
  v8 = sub_20C137EA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BB84();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  (*(v9 + 16))(v11, a1, v8);
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v5;
    v18 = v17;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v18 = 141558274;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    v19 = sub_20C137D24();
    v40 = v12;
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_20B51E694(v19, v21, aBlock);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_20B517000, v15, v16, "Remote display requested with session %{mask.hash}s already active", v18, 0x16u);
    v23 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);

    (*(v42 + 8))(v14, v40);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    (*(v42 + 8))(v14, v12);
  }

  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v24 = sub_20C13C914();
  v25 = sub_20C13C914();
  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v29 = swift_allocObject();
  *(v29 + 16) = v43;
  *(v29 + 24) = v44;

  v30 = sub_20C13C914();

  aBlock[4] = sub_20B89FA14;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B762A80;
  aBlock[3] = &block_descriptor_116;
  v31 = _Block_copy(aBlock);

  v32 = [objc_opt_self() actionWithTitle:v30 style:1 handler:v31];
  _Block_release(v31);

  [v26 addAction_];
  ObjectType = swift_getObjectType();
  v34 = v47;
  (*(v46 + 24))(v26, 1, ObjectType);
  v35 = v50;
  v36 = sub_20C137CB4();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v36(sub_20B52E438, v37);

  return (*(v48 + 8))(v34, v35);
}

uint64_t sub_20B89CA98(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - v4);
  v6 = sub_20C133CC4();
  sub_20B89FA1C(&qword_27C766EF8, 255, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
  v7 = swift_allocError();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D50380], v6);
  *v5 = v7;
  swift_storeEnumTagMultiPayload();
  a2(v5);
  return sub_20B520158(v5, &unk_27C76D250, &unk_20C155D00);
}

uint64_t sub_20B89CBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a3;
  v14 = type metadata accessor for NavigationRequest(0);
  v55 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = v15;
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_20C132C14();
  v16 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = v17;
  v57 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v18 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v19;
  MEMORY[0x28223BE20](v20);
  v69 = &v53 - v21;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v53 - v22;
  swift_beginAccess();
  v67 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v54 = a7;
    v24 = Strong[9];
    v25 = Strong[10];
    v26 = a5;
    v27 = a8;
    v28 = Strong[11];
    v29 = Strong[12];
    Strong[9] = v68;
    Strong[10] = a4;
    Strong[11] = v26;
    Strong[12] = a6;
    swift_unknownObjectRetain();

    v30 = v25;
    a7 = v54;
    v31 = v29;
    a8 = v27;
    sub_20B89EC9C(v24, v30, v28, v31);
  }

  ObjectType = swift_getObjectType();
  (*(a4 + 64))(0, ObjectType, a4);
  v34 = v57;
  v33 = v58;
  (*(v16 + 16))(v57, a7, v58);
  v35 = v61;
  sub_20B89F58C(a8, v61, type metadata accessor for NavigationRequest);
  v36 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v37 = (v56 + *(v55 + 80) + v36) & ~*(v55 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v67;
  (*(v16 + 32))(v38 + v36, v34, v33);
  sub_20B75B150(v35, v38 + v37);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B89F854;
  *(v39 + 24) = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_20B5D9CB0;
  *(v40 + 24) = v39;
  v41 = v62;
  v42 = v69;
  v43 = v65;
  (*(v18 + 16))(v62, v69, v65);
  v44 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v45 = (v59 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v18 + 32))(v46 + v44, v41, v43);
  v47 = (v46 + v45);
  *v47 = sub_20B5D9CCC;
  v47[1] = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v48 = v63;
  sub_20C137C94();
  (*(v18 + 8))(v42, v43);
  v49 = v66;
  v50 = sub_20C137CB4();
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  v50(sub_20B52347C, v51);

  return (*(v64 + 8))(v48, v49);
}

BOOL sub_20B89D1B4(uint64_t a1, char *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
    v7 = *(Strong + 24);

    v8 = type metadata accessor for NavigationRequest(0);
    sub_20B9C8D5C(a2, a3 + *(v8 + 24));
  }

  return v6 == 0;
}

uint64_t RemoteDisplayInterceptor.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  if (!*(v2 + 72))
  {
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  v14 = *(v2 + 80);
  swift_unknownObjectRetain();
  sub_20B9CB1A0();
  ObjectType = swift_getObjectType();
  (*(v14 + 56))(0, ObjectType, v14);
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000028;
  v16[3] = 0x800000020C19E390;
  v16[4] = 86;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B5D9EA0;
  *(v17 + 24) = v16;
  (*(v4 + 16))(v6, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v18, v6, v3);
  v21 = (v20 + v19);
  *v21 = sub_20B5D9EC0;
  v21[1] = v17;

  sub_20C137C94();

  swift_unknownObjectRelease();
  return (*(v4 + 8))(v9, v3);
}

uint64_t RemoteDisplayInterceptor.isPictureInPictureActive.getter()
{
  v1 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  sub_20B89F58C(v4 + v5, v3, type metadata accessor for RemoteDisplayPresenter.State);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90, &unk_20C15F6A0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_20B89F5F4(v3, type metadata accessor for RemoteDisplayPresenter.State);
  }

  else
  {
    v7 = *(v6 + 48);
    v8 = *&v3[*(v6 + 64)];
    sub_20B89F5F4(&v3[v7], type metadata accessor for NavigationSource);
    sub_20B89F5F4(v3, MEMORY[0x277D4DFB8]);
    if (v8)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t RemoteDisplayInterceptor.showSessionViewController(configuration:)(char *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - v6;
  MEMORY[0x28223BE20](v7);
  v52 = &v46 - v8;
  v9 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  result = (*(v16 + 8))(v18, v15);
  v20 = v2[9];
  if (v20)
  {
    v21 = v2[11];
    v22 = v2[12];
    v23 = v2[10];
    v24 = v2[2];
    v47 = v3;
    sub_20B89F58C(v49, v14, type metadata accessor for WorkoutSessionConfiguration);
    sub_20B89F58C(v14, v11, type metadata accessor for WorkoutSessionConfiguration);
    swift_retain_n();
    sub_20B89F30C(v20, v23, v21, v22);
    v25 = sub_20B9C04B4(v24, v11);
    v26 = objc_allocWithZone(type metadata accessor for SessionViewController(0));
    v27 = sub_20BFE1644(v24, v25, 0, 0, 0, 0);
    sub_20B89F5F4(v14, type metadata accessor for WorkoutSessionConfiguration);
    v28 = &v27[OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate];
    v29 = v27;
    v49 = v27;
    swift_beginAccess();
    *(v28 + 1) = &protocol witness table for RemoteDisplayInterceptor;
    swift_unknownObjectWeakAssign();
    ObjectType = swift_getObjectType();
    v31 = v51;
    (*(v23 + 8))(v29, 1, ObjectType, v23);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v21;
    v33[4] = v22;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20B89F34C;
    *(v34 + 24) = v33;
    v35 = v47;
    v36 = *(v48 + 16);
    v37 = v50;
    v46 = v20;
    v38 = v48;
    v36(v50, v31, v47);
    v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v40 = swift_allocObject();
    (*(v38 + 32))(v40 + v39, v37, v35);
    v41 = (v40 + ((v4 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v41 = sub_20B5DF204;
    v41[1] = v34;

    v42 = v52;
    sub_20C137C94();
    v43 = *(v38 + 8);
    v43(v31, v35);
    v44 = sub_20C137CB4();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    v44(sub_20B523484, v45);

    swift_unknownObjectRelease();

    return (v43)(v42, v35);
  }

  return result;
}

uint64_t sub_20B89DDE8(void *a1, uint64_t a2, void (*a3)(void *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong[9];
    v9 = Strong[10];
    v11 = Strong[11];
    v12 = Strong[12];
    *(Strong + 9) = 0u;
    *(Strong + 11) = 0u;
    sub_20B89EC9C(v10, v9, v11, v12);
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + 24);

    sub_20B9CB1A0();
  }

  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  v15 = a1;
  a3(v7);
  return sub_20B520158(v7, &unk_27C76D250, &unk_20C155D00);
}

uint64_t RemoteDisplayInterceptor.showError(title:message:buttonTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v25[1] = a7;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = *(v8 + 72);
  if (v19)
  {
    v20 = *(v8 + 80);
    swift_unknownObjectRetain();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = a1;
    v21[5] = a2;
    v21[6] = a3;
    v21[7] = a4;
    v21[8] = a5;
    v21[9] = a6;

    return sub_20C137C94();
  }

  else
  {
    sub_20B5D9BA8();
    v23 = swift_allocError();
    *v24 = 9;
    *(swift_allocObject() + 16) = v23;
    return sub_20C137CA4();
  }
}

uint64_t sub_20B89E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v52 = a6;
  v45 = a10;
  v46 = a5;
  v44 = a9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v51 = &v41 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  ObjectType = swift_getObjectType();
  v23 = *(a4 + 64);

  v42 = v18;
  v43 = a3;
  v24 = a3;
  v23(0, ObjectType, a4);
  v25 = swift_allocObject();
  v26 = v45;
  v27 = v52;
  v25[2] = v46;
  v25[3] = v27;
  v28 = v48;
  v25[4] = v47;
  v25[5] = v28;
  v25[6] = v44;
  v25[7] = v26;
  v25[8] = sub_20B5D9B44;
  v25[9] = v21;
  v25[10] = v24;
  v25[11] = a4;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_20B89F53C;
  *(v29 + 24) = v25;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20B5DF3B8;
  *(v30 + 24) = v29;
  v32 = v49;
  v31 = v50;
  (*(v14 + 16))(v49, v18, v50);
  v33 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v34 = swift_allocObject();
  (*(v14 + 32))(v34 + v33, v32, v31);
  v35 = (v34 + ((v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_20B5DF3D4;
  v35[1] = v30;

  swift_unknownObjectRetain();

  v36 = v51;
  sub_20C137C94();
  v37 = *(v14 + 8);
  v37(v42, v31);
  v38 = sub_20C137CB4();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v38(sub_20B52E438, v39);

  return (v37)(v36, v31);
}

uint64_t sub_20B89E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a10;
  v28[1] = a6;
  v28[2] = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  v17 = sub_20C13C914();
  if (a4)
  {
    v18 = sub_20C13C914();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;

  v21 = sub_20C13C914();
  aBlock[4] = sub_20B76BA10;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B762A80;
  aBlock[3] = &block_descriptor_35;
  v22 = _Block_copy(aBlock);

  v23 = [objc_opt_self() actionWithTitle:v21 style:2 handler:v22];
  _Block_release(v22);

  [v19 addAction_];
  ObjectType = swift_getObjectType();
  (*(v29 + 24))(v19, 1, ObjectType);
  v25 = sub_20C137CB4();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v25(sub_20B52E438, v26);

  return (*(v14 + 8))(v16, v13);
}

Swift::Void __swiftcall RemoteDisplayInterceptor.dismiss()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v2);
  v4 = (&v16 - v3);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = v1 + 9;
  v10 = v1[9];
  if (v10)
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];
    *v9 = 0u;
    v9[1] = 0u;

    sub_20B89EC9C(v10, v13, v12, v11);
    sub_20B5D9BA8();
    v14 = swift_allocError();
    *v15 = 1;
    *v4 = v14;
    swift_storeEnumTagMultiPayload();
    v12(v4);

    sub_20B520158(v4, &unk_27C76D250, &unk_20C155D00);
  }
}

Swift::Void __swiftcall RemoteDisplayInterceptor.deactivateApplication()()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if (*(v1 + 72))
  {
    v6 = *(v1 + 80);
    swift_unknownObjectRetain();
    ObjectType = swift_getObjectType();
    (*(v6 + 88))(ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall RemoteDisplayInterceptor.destroy()()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
  if (*(v0 + 72))
  {
    v5 = *(v0 + 80);
    swift_unknownObjectRetain();
    RemoteDisplayInterceptor.dismiss()();
    ObjectType = swift_getObjectType();
    (*(v5 + 96))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

double sub_20B89EC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B89ECDC(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_20B89B898(a1, a2, v2 + v6, v8, v10, v11);
}

uint64_t sub_20B89ED98(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a4;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v11 = a1;

  v12 = sub_20C13BB74();
  v13 = sub_20C13D1D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[1] = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22[0] = v7;
    v17 = v16;
    v27 = v16;
    *v15 = 136446722;
    swift_getErrorValue();
    v18 = MEMORY[0x20F2F5850](v25, v26);
    v20 = sub_20B51E694(v18, v19, &v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_20B51E694(v23, a3, &v27);
    *(v15 + 22) = 2050;
    *(v15 + 24) = v24;
    _os_log_impl(&dword_20B517000, v12, v13, "Caught %{public}s at %{public}s:%{public}lu", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v17, -1, -1);
    MEMORY[0x20F2F6A40](v15, -1, -1);

    return (*(v8 + 8))(v10, v22[0]);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_20B89EFE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_20C137C94();
}

double sub_20B89F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v9 = sub_20C137CB4();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_20B89F574, v10);

  return result;
}

uint64_t sub_20B89F180(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, double), uint64_t a4, void (*a5)(uint64_t, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_20B52E438, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18, v12);
  }
}

double sub_20B89F30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_20B89F3A0(uint64_t a1, uint64_t a2)
{
  result = sub_20B89FA1C(&qword_27C766EF0, a2, type metadata accessor for RemoteDisplayInterceptor, &protocol conformance descriptor for RemoteDisplayInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI24RemoteDisplayInterceptorC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20B89F460(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B89F4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_20B89F508(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_20B89F58C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B89F5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_69Tm(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_20B89F6F8(uint64_t a1)
{
  v3 = *(sub_20C132C14() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NavigationRequest(0) - 8);
  return sub_20B89CBFC(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_20B89F7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698, &unk_20C15F7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_20B89F854()
{
  v1 = *(sub_20C132C14() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for NavigationRequest(0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_20B89D1B4(v5, (v0 + v2), v6);
}

uint64_t sub_20B89F94C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B89FA1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20B89FA80(uint64_t a1)
{
  v76 = a1;
  v73 = sub_20C135AE4();
  v2 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1344C4();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646E8, &qword_20C15F8E0);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v69 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v70 = &v60 - v20;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_networkEvaluator), *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_networkEvaluator + 24));
  sub_20C13A884();
  v21 = sub_20C1350A4();
  v23 = v22;
  if (v21 == sub_20C1350A4() && v23 == v24)
  {
  }

  else
  {
    v25 = sub_20C13DFF4();

    if ((v25 & 1) == 0)
    {
      v61 = v1;
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_recommendationClient), *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_recommendationClient + 24));
      sub_20C135AA4();
      sub_20C134324();
      (*(v62 + 8))(v10, v63);
      v36 = v65;
      sub_20C139904();

      v37 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_lazyLockupFetcher);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_20B8A148C;
      *(v38 + 24) = v37;
      v40 = v66;
      v39 = v67;
      v41 = v64;
      (*(v66 + 16))(v64, v36, v67);
      v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v43 = (v12 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      (*(v40 + 32))(v44 + v42, v41, v39);
      v45 = (v44 + v43);
      *v45 = sub_20B8A1490;
      v45[1] = v38;

      v46 = v69;
      sub_20C137C94();
      (*(v40 + 8))(v36, v39);
      v47 = swift_allocObject();
      v48 = v61;
      *(v47 + 16) = sub_20B8A1604;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_20B849B38;
      *(v49 + 24) = v47;
      v51 = v71;
      v50 = v72;
      v52 = v68;
      (*(v71 + 16))(v68, v46, v72);
      v53 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v54 = swift_allocObject();
      (*(v51 + 32))(v54 + v53, v52, v50);
      v55 = (v54 + ((v16 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v55 = sub_20B66A8B4;
      v55[1] = v49;

      v56 = v70;
      sub_20C137C94();
      v57 = *(v51 + 8);
      v57(v46, v50);
      v58 = sub_20C137CB4();
      v59 = swift_allocObject();
      *(v59 + 16) = 0;
      *(v59 + 24) = 0;
      v58(sub_20B5DF6DC, v59);

      return (v57)(v56, v50);
    }
  }

  sub_20C13B534();
  v26 = v73;
  (*(v2 + 16))(v4, v76, v73);
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1F4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v77 = v30;
    *v29 = 141558274;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2080;
    sub_20B8A15AC();
    v31 = sub_20C13DFA4();
    v33 = v32;
    (*(v2 + 8))(v4, v26);
    v34 = sub_20B51E694(v31, v33, &v77);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_20B517000, v27, v28, "RelatedWorkoutsShelf not updating for %{mask.hash}s, network conditions unavailable", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x20F2F6A40](v30, -1, -1);
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  else
  {

    (*(v2 + 8))(v4, v26);
  }

  return (*(v74 + 8))(v7, v75);
}

void sub_20B8A02E8()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_lazyLockupFetcher);

  sub_20C02F3E0(v7, v6, 0, 0);
  v9 = v8;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_storefrontLocalizer + 24));
  v10 = sub_20C138D34();
  v33 = 0uLL;
  LOBYTE(v34) = 1;
  *(&v34 + 1) = 0;
  *&v35 = 0;
  WORD4(v35) = 128;
  v36 = 0uLL;
  v37 = xmmword_20C15F810;
  *&v38 = v10;
  *(&v38 + 1) = v11;
  LOBYTE(v39) = 0;
  *(&v39 + 1) = v9;
  v40 = MEMORY[0x277D84F90];
  *&v41 = 0;
  *(&v41 + 1) = v10;
  *v42 = v11;
  *&v42[8] = xmmword_20C150190;
  nullsub_1();
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 144);
  v43[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 128);
  v43[9] = v13;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 80);
  v43[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 64);
  v43[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 112);
  v43[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 96);
  v43[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 16);
  v43[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row);
  v43[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 48);
  v43[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 32);
  v43[3] = v17;
  v18 = *v42;
  *(v12 + 128) = v41;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v42[16];
  v19 = v38;
  *(v12 + 64) = v37;
  *(v12 + 80) = v19;
  v20 = v40;
  *(v12 + 96) = v39;
  *(v12 + 112) = v20;
  v21 = v34;
  *v12 = v33;
  *(v12 + 16) = v21;
  v22 = v36;
  *(v12 + 32) = v35;
  *(v12 + 48) = v22;

  sub_20B634408(v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61DA40(v1, Strong);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        sub_20B5E2E18();
        *v5 = sub_20C13D374();
        (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
        v31 = sub_20C13C584();
        (*(v3 + 8))(v5, v2);
        if ((v31 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B620F58(v28, v29, v30, v1, 1, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20B8A05F4()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_recommendationClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_storefrontLocalizer));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_networkEvaluator));
  return v0;
}

uint64_t sub_20B8A0708()
{
  sub_20B8A05F4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RelatedWorkoutsShelf(uint64_t a1)
{
  result = qword_27C766F10;
  if (!qword_27C766F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8A07B4(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20B8A0880(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B8A1480;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B8A0B44(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v7;
    v35 = v10;
    sub_20C13B534();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "[RelatedWorkoutsShelf] archived sessions updated; updating row", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v12 + 8))(v14, v11);

    v20 = sub_20C13AEB4();
    v21 = v34;
    sub_20C02CCD0(v20, v34);

    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B8A1604;
    *(v22 + 24) = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B849B38;
    *(v23 + 24) = v22;
    v24 = v33;
    (*(v3 + 16))(v33, v21, v2);
    v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v26 = swift_allocObject();
    (*(v3 + 32))(v26 + v25, v24, v2);
    v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_20B66A8B4;
    v27[1] = v23;

    v28 = v35;
    sub_20C137C94();
    v29 = *(v3 + 8);
    v29(v21, v2);
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v30(sub_20B5DF6DC, v31);

    return (v29)(v28, v2);
  }

  return result;
}

uint64_t sub_20B8A0F74@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8A0FEC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B8A1098()
{
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B8A1180(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_row;
  sub_20B5D8060(v17);
  v4 = v17[9];
  *(v3 + 128) = v17[8];
  *(v3 + 144) = v4;
  *(v3 + 160) = v18;
  v5 = v17[5];
  *(v3 + 64) = v17[4];
  *(v3 + 80) = v5;
  v6 = v17[7];
  *(v3 + 96) = v17[6];
  *(v3 + 112) = v6;
  v7 = v17[1];
  *v3 = v17[0];
  *(v3 + 16) = v7;
  v8 = v17[3];
  *(v3 + 32) = v17[2];
  *(v3 + 48) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_eventHub) = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190, &unk_20C15F8D0);
  sub_20C133AA4();
  sub_20B51C710(v16, v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_recommendationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v16, v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_subscriptionToken) = sub_20C13A914();
  sub_20C133AA4();
  v9 = sub_20C138104();
  v10 = v9 == sub_20C138104();
  type metadata accessor for ShelfLazyLockupFetcher();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 152) = MEMORY[0x277D84F90];

  v13 = sub_20B6B0C04(v12);
  v14 = MEMORY[0x277D84FA0];
  *(v11 + 160) = v13;
  *(v11 + 168) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();

  *(v11 + 136) = 10;
  *(v11 + 144) = 33;
  *(v11 + 145) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_lazyLockupFetcher) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40, &unk_20C16DEE0);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI20RelatedWorkoutsShelf_networkEvaluator);
  return v2;
}

uint64_t sub_20B8A14E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20B8A15AC()
{
  result = qword_27C766F20;
  if (!qword_27C766F20)
  {
    sub_20C135AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766F20);
  }

  return result;
}

void sub_20B8A160C(char a1@<W0>, unint64_t *a2@<X8>)
{
  v3 = 5;
  if (a1)
  {
    v3 = 8;
  }

  v131 = v3;
  if (a1)
  {
    v4 = &unk_28228B928;
  }

  else
  {
    v4 = &unk_28228D158;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_99;
  }

  v7 = sub_20B521948(v5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_97;
  }

  if (v7 < v4[2])
  {
    v117 = a2;
    if (a1)
    {
      v8 = &unk_28228B928;
    }

    else
    {
      v8 = &unk_28228D158;
    }

    v9 = &v8[16 * v7];
    v11 = *(v9 + 4);
    v10 = *(v9 + 5);
    swift_bridgeObjectRetain_n();
    v119 = v10;

    if (*(v11 + 16))
    {
      v12 = 0;
      v13 = 0;
      v14 = v131;
      v15 = 0.0;
      v16 = 0.0 / v131;
      v130 = v131 + 1;
      v17 = v11 + 48;
      v121 = v11 + 32;
      v18 = MEMORY[0x277D84F90];
      __asm
      {
        FMOV            V3.2D, #2.0
        FMOV            V4.2D, #-1.0
      }

      v123 = _Q4;
      v125 = _Q3;
      v127 = v11;
      while (2)
      {
        v25 = (v121 + 16 * v12);
        v26 = *v25;
        v27 = v25[1];
        v28 = *v25 >= 0.0;
        v29 = v26 <= 1.0;
        if (v28 && v29)
        {
          v30 = v26 + v26 + -1.0;
        }

        else
        {
          v30 = v26;
        }

        if (v28 && v29)
        {
          v31 = v27 + 2.0 + -1.0;
        }

        else
        {
          v31 = v27;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20BC07010(0, *(v18 + 2) + 1, 1, v18);
        }

        v33 = *(v18 + 2);
        v32 = *(v18 + 3);
        v34 = (v33 + 1);
        v35 = v131;
        v36 = v127;
        if (v33 >= v32 >> 1)
        {
          v53 = sub_20BC07010((v32 > 1), v33 + 1, 1, v18);
          v36 = v127;
          v35 = v131;
          v18 = v53;
        }

        v37 = 0;
        v38 = v15 / v14;
        *(v18 + 2) = v34;
        v39 = 40 * v33;
        v40 = &v18[40 * v33];
        *(v40 + 4) = v16;
        *(v40 + 5) = v38;
        *(v40 + 6) = v30;
        *(v40 + 7) = v31;
        *(v40 + 8) = 0x3FE0000000000000;
        v42 = v123;
        v41 = v125;
        do
        {
          v43 = v37 + 1;
          if (v37 + 1 + v12 >= *(v36 + 16))
          {
            __break(1u);
LABEL_49:
            swift_bridgeObjectRelease_n();
            if (!*(v119 + 16))
            {
              goto LABEL_94;
            }

            v66 = 0;
            v67 = 0;
            v68 = v119 + 48;
            v69 = 0.0;
            v13 = MEMORY[0x277D84F90];
LABEL_51:
            v128 = v67;
            v70 = (v119 + 32 + 16 * v66);
            v71 = *v70;
            v72 = v70[1];
            v73 = *v70 >= 0.0;
            v74 = v71 <= 1.0;
            if (v73 && v74)
            {
              v75 = v71 + v71 + -1.0;
            }

            else
            {
              v75 = v71;
            }

            if (v73 && v74)
            {
              v76 = v72 + 2.0 + -1.0;
            }

            else
            {
              v76 = v72;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_20BC07010(0, *(v13 + 2) + 1, 1, v13);
            }

            v78 = *(v13 + 2);
            v77 = *(v13 + 3);
            v12 = v78 + 1;
            v35 = v131;
            v79 = v119;
            if (v78 >= v77 >> 1)
            {
              v96 = sub_20BC07010((v77 > 1), v78 + 1, 1, v13);
              v35 = v131;
              v13 = v96;
              v79 = v119;
            }

            v80 = 0;
            v81 = v69 / v14;
            *(v13 + 2) = v12;
            v82 = 40 * v78;
            v83 = &v13[40 * v78];
            *(v83 + 4) = v16;
            *(v83 + 5) = v81;
            *(v83 + 6) = v75;
            *(v83 + 7) = v76;
            *(v83 + 8) = 0x3FE0000000000000;
            v85 = v123;
            v84 = v125;
            while (1)
            {
              v86 = v80 + 1;
              if (v80 + 1 + v66 >= *(v79 + 16))
              {
                break;
              }

              v87 = *(v68 + 16 * v80);
              v88 = v87.f64[0] <= 1.0 && v87.f64[0] >= 0.0;
              v89 = *(v13 + 3);
              v90 = v78 + v80;
              v12 = v90 + 2;
              if (v86 + v78 >= v89 >> 1)
              {
                v118 = v87;
                v95 = sub_20BC07010((v89 > 1), v90 + 2, 1, v13);
                v87 = v118;
                v85 = v123;
                v84 = v125;
                v35 = v131;
                v13 = v95;
                v79 = v119;
              }

              *&v91.f64[0] = *&vaddq_f64(v87, v87);
              v91.f64[1] = vaddq_f64(v87, v84).f64[1];
              v92 = vdup_n_s32(v88);
              v93.i64[0] = v92.u32[0];
              v93.i64[1] = v92.u32[1];
              *(v13 + 2) = v12;
              v94 = &v13[v82];
              *(v94 + 9) = v86 / v14;
              *(v94 + 10) = v81;
              *(v94 + 88) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v93, 0x3FuLL)), vaddq_f64(v91, v85), v87);
              *(v94 + 13) = 0x3FE0000000000000;
              v82 += 40;
              v80 = v86;
              if (v35 == v86)
              {
                if (v128 == v35)
                {
                  v97 = 0;
                  v98 = 0;
                  v12 = MEMORY[0x277D84F90];
                  v99 = v35;
                  while (v98 != v35)
                  {
                    v126 = v99;
                    v100 = v98;
                    v129 = v97;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v12 = sub_20BC06F0C(0, *(v12 + 16) + 1, 1, v12);
                    }

                    v101 = v126;
                    v102 = 0;
                    v98 = v100 + 1;
                    v103 = v129;
                    v104 = v129 - 0xFFFFFFFFLL;
                    v35 = v131;
                    do
                    {
                      if (!&v102[v104])
                      {
                        __break(1u);
LABEL_91:
                        __break(1u);
LABEL_92:
                        __break(1u);
                        goto LABEL_93;
                      }

                      v105 = &v102[v101];
                      if (&v102[v101] > 0xFFFFFFFDLL)
                      {
                        goto LABEL_91;
                      }

                      v106 = v103 + v102;
                      v107 = &v102[v103 + 1];
                      v108 = v105 + 2;
                      if (((v107 | &v102[v103] | (v105 + 2) | (v105 + 1)) & 0x8000000000000000) != 0)
                      {
                        goto LABEL_92;
                      }

                      v110 = *(v12 + 16);
                      v109 = *(v12 + 24);
                      if (v110 >= v109 >> 1)
                      {
                        v112 = v12;
                        v113 = v98;
                        v124 = v104;
                        v114 = sub_20BC06F0C((v109 > 1), v110 + 1, 1, v112);
                        v104 = v124;
                        v101 = v126;
                        v98 = v113;
                        v103 = v129;
                        v35 = v131;
                        v12 = v114;
                      }

                      *(v12 + 16) = v110 + 1;
                      v111 = (v12 + 32 * v110);
                      *(v111 + 8) = v106;
                      *(v111 + 9) = v107;
                      *(v111 + 10) = v108;
                      *(v111 + 11) = v101 + v102++ + 1;
                      *(v111 + 6) = 0;
                      *(v111 + 7) = 0;
                    }

                    while (v35 != v102);
                    v97 = v103 + v130;
                    v99 = &v101[v130];
                    if (v98 == v35)
                    {
                      goto LABEL_89;
                    }
                  }

                  goto LABEL_96;
                }

                v67 = v128 + 1;
                v69 = (v128 + 1);
                v66 += v130;
                v68 += 16 * v131 + 16;
                if (v66 < *(v79 + 16))
                {
                  goto LABEL_51;
                }

                goto LABEL_94;
              }
            }

LABEL_88:
            __break(1u);
LABEL_89:
            v115 = v35;

            *v117 = v115;
            v117[1] = v115;
            v117[2] = v34;
            v117[3] = v18;
            v117[4] = v115;
            v117[5] = v115;
            v117[6] = v12;
            v117[7] = v13;
            return;
          }

          v44 = *(v17 + 16 * v37);
          v45 = v44.f64[0] <= 1.0 && v44.f64[0] >= 0.0;
          v46 = *(v18 + 3);
          v47 = v33 + v37;
          v34 = (v47 + 2);
          if (v43 + v33 >= v46 >> 1)
          {
            v116 = v44;
            v52 = sub_20BC07010((v46 > 1), v47 + 2, 1, v18);
            v44 = v116;
            v36 = v127;
            v42 = v123;
            v41 = v125;
            v35 = v131;
            v18 = v52;
          }

          *&v48.f64[0] = *&vaddq_f64(v44, v44);
          v48.f64[1] = vaddq_f64(v44, v41).f64[1];
          v49 = vdup_n_s32(v45);
          v50.i64[0] = v49.u32[0];
          v50.i64[1] = v49.u32[1];
          *(v18 + 2) = v34;
          v51 = &v18[v39];
          *(v51 + 9) = v43 / v14;
          *(v51 + 10) = v38;
          *(v51 + 88) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v50, 0x3FuLL)), vaddq_f64(v48, v42), v44);
          *(v51 + 13) = 0x3FE0000000000000;
          v39 += 40;
          v37 = v43;
        }

        while (v35 != v43);
        if (v13 == v35)
        {
          v54 = 0;
          v55 = 0;
          v34 = MEMORY[0x277D84F90];
          v56 = v35;
          while (v55 != v35)
          {
            v122 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_20BC06F0C(0, *(v34 + 2) + 1, 1, v34);
            }

            v57 = 0;
            v120 = v55 + 1;
            v58 = v122;
            v35 = v131;
            do
            {
              if (!&v57[v122 - 0xFFFFFFFFLL])
              {
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }

              v59 = &v57[v56];
              if (&v57[v56] > 0xFFFFFFFDLL)
              {
                goto LABEL_86;
              }

              v13 = &v57[v58];
              v60 = &v57[v58 + 1];
              v61 = v59 + 2;
              if (((v60 | &v57[v58] | (v59 + 2) | (v59 + 1)) & 0x8000000000000000) != 0)
              {
                goto LABEL_87;
              }

              v63 = *(v34 + 2);
              v62 = *(v34 + 3);
              v12 = v63 + 1;
              if (v63 >= v62 >> 1)
              {
                v65 = sub_20BC06F0C((v62 > 1), v63 + 1, 1, v34);
                v58 = v122;
                v35 = v131;
                v34 = v65;
              }

              *(v34 + 2) = v12;
              v64 = &v34[32 * v63];
              *(v64 + 8) = v13;
              *(v64 + 9) = v60;
              *(v64 + 10) = v61;
              *(v64 + 11) = v56 + v57++ + 1;
              *(v64 + 6) = 0;
              *(v64 + 7) = 0;
            }

            while (v35 != v57);
            v54 = v58 + v130;
            v56 += v130;
            v55 = v120;
            if (v120 == v35)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_95;
        }

        v15 = ++v13;
        v12 += v130;
        v17 += 16 * v131 + 16;
        if (v12 < *(v36 + 16))
        {
          continue;
        }

        break;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  __break(1u);
LABEL_99:
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8A1E60@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D52408];
  v3 = sub_20C135ED4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

id NavigationViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

uint64_t sub_20B8A1FDC(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a1;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);

  return sub_20C137C94();
}

uint64_t sub_20B8A20D0(char a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;
  v6 = v3;

  return sub_20C137C94();
}

id NavigationViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NavigationViewController.init()()
{
  v1 = [objc_allocWithZone(type metadata accessor for PlaceholderViewController()) init];
  [*&v1[OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator] startAnimating];
  v2 = [v0 initWithRootViewController_];

  return v2;
}

char *NavigationViewController.init(rootViewController:)(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onMenuTapped];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController] = a1;
  v4 = a1;
  *&v1[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_viewControllerAppearanceCompletion] = sub_20B6B465C(MEMORY[0x277D84F90]);
  v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:0 action:0];
  v6 = OBJC_IVAR____TtC9SeymourUI24NavigationViewController_menuGestureRecognizer;
  *&v1[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_menuGestureRecognizer] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14F580;
  v8 = v5;
  *(v7 + 32) = sub_20C13D014();
  sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
  v9 = sub_20C13CC54();

  [v8 setAllowedPressTypes_];

  [*&v1[v6] setEnabled_];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for NavigationViewController();
  v10 = objc_msgSendSuper2(&v13, sel_initWithRootViewController_, v4);
  [v10 setDelegate_];
  v11 = OBJC_IVAR____TtC9SeymourUI24NavigationViewController_menuGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_menuGestureRecognizer] addTarget:v10 action:sel_menuButtonTapped];
  [*&v10[v11] setDelegate_];

  return v10;
}

id sub_20B8A25F8(void *a1, char a2, uint64_t (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v10 = [v5 parentViewController];
  if (v10)
  {

    if (!a3)
    {
LABEL_4:
      v20.receiver = v5;
      v20.super_class = type metadata accessor for NavigationViewController();
      return objc_msgSendSuper2(&v20, sel_pushViewController_animated_, a1, a2 & 1);
    }

LABEL_3:
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v12 = OBJC_IVAR____TtC9SeymourUI24NavigationViewController_viewControllerAppearanceCompletion;
    swift_beginAccess();
    sub_20B584050(a3, a4);
    v13 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *&v5[v12];
    *&v5[v12] = 0x8000000000000000;
    sub_20B91DDB4(sub_20B8A3F1C, v11, v13, isUniquelyReferenced_nonNull_native);

    *&v5[v12] = v19;
    swift_endAccess();
    goto LABEL_4;
  }

  v16 = [v5 parentViewController];
  if (v16)
  {
  }

  else
  {
    result = [v5 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    v18 = [result window];

    if (v18)
    {

      if (!a3)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }
  }

  v21.receiver = v5;
  v21.super_class = type metadata accessor for NavigationViewController();
  result = objc_msgSendSuper2(&v21, sel_pushViewController_animated_, a1, 0);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_20B8A27F4(char a1, void (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v8 = [v4 parentViewController];
  if (v8)
  {
    goto LABEL_2;
  }

  v19 = [v4 parentViewController];
  if (v19)
  {

    goto LABEL_6;
  }

  v27 = [v4 view];
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [v27 window];

  if (!v29)
  {
LABEL_6:
    v32.receiver = v4;
    v32.super_class = type metadata accessor for NavigationViewController();
    v20 = objc_msgSendSuper2(&v32, sel_popViewControllerAnimated_, 0);
    v21 = v20;
    if (a2)
    {
      a2(v20);
    }

    goto LABEL_11;
  }

  v8 = v29;
LABEL_2:

  v9 = [v4 topViewController];
  v10 = [v4 viewControllers];
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v11 = sub_20C13CC74();

  sub_20C026950(1, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v17 >> 1;
  if (v15 == v17 >> 1)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v30.receiver = v4;
    v30.super_class = type metadata accessor for NavigationViewController();
    v21 = objc_msgSendSuper2(&v30, sel_popViewControllerAnimated_, a1 & 1);

LABEL_11:
    return;
  }

  if (v18 > v15)
  {
    v22 = *(v13 + 8 * v18 - 8);
    swift_unknownObjectRelease();
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = v9;
    v24 = OBJC_IVAR____TtC9SeymourUI24NavigationViewController_viewControllerAppearanceCompletion;
    swift_beginAccess();
    sub_20B584050(a2, a3);
    v25 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *&v4[v24];
    *&v4[v24] = 0x8000000000000000;
    sub_20B91DDB4(sub_20B8A3E90, v23, v22, isUniquelyReferenced_nonNull_native);

    *&v4[v24] = v31;
    swift_endAccess();
    goto LABEL_10;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_20B8A2AA0(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = [v3 parentViewController];
  if (!v8)
  {
    v20 = [v3 parentViewController];
    if (v20)
    {
    }

    else
    {
      v37 = [v3 view];
      if (!v37)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v38 = v37;
      v39 = [v37 window];

      if (v39)
      {
        v8 = v39;
        goto LABEL_2;
      }
    }

    v45.receiver = v4;
    v45.super_class = type metadata accessor for NavigationViewController();
    v21 = objc_msgSendSuper2(&v45, sel_popToRootViewControllerAnimated_, 0);
    if (v21)
    {
      v22 = v21;
      sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
      v23 = sub_20C13CC74();

      if (!a2)
      {
LABEL_18:

        return;
      }
    }

    else
    {
      v23 = 0;
      if (!a2)
      {
        goto LABEL_18;
      }
    }

    a2(v23);
    goto LABEL_18;
  }

LABEL_2:

  v9 = [v4 topViewController];
  v10 = *&v4[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController];
  if (v9)
  {
    v11 = v9;
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v12 = v10;
    v13 = sub_20C13D5F4();

    if (v13)
    {
      if (a2)
      {
        a2(0);
      }

      return;
    }
  }

  v42 = v10;
  v14 = [v4 viewControllers];
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v15 = sub_20C13CC74();

  if (v15 >> 62)
  {
    v40 = sub_20C13DB34();
    if (v40 < 0)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v16 = v40;
    v17 = v40 != 0;
    if (sub_20C13DB34() >= v17)
    {
      if (sub_20C13DB34() >= v16)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    goto LABEL_38;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v16 != 0;
  if (v16 < v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_8:
  if ((v15 & 0xC000000000000001) != 0)
  {

    if (v16 >= 2)
    {
      v18 = v17;
      do
      {
        v19 = v18 + 1;
        sub_20C13DCB4();
        v18 = v19;
      }

      while (v16 != v19);
    }
  }

  else
  {
  }

  v41 = a1;

  if (v15 >> 62)
  {
    v24 = sub_20C13DE54();
    v25 = v27;
    v17 = v28;
    v26 = v29;
  }

  else
  {
    v24 = v15 & 0xFFFFFFFFFFFFFF8;
    v25 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
    v26 = (2 * v16) | 1;
  }

  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = v24;
  v30[5] = v25;
  v30[6] = v17;
  v30[7] = v26;
  v31 = OBJC_IVAR____TtC9SeymourUI24NavigationViewController_viewControllerAppearanceCompletion;
  swift_beginAccess();
  v32 = v42;
  swift_unknownObjectRetain();
  sub_20B584050(a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *&v4[v31];
  *&v4[v31] = 0x8000000000000000;
  sub_20B91DDB4(sub_20B8A3E80, v30, v32, isUniquelyReferenced_nonNull_native);
  *&v4[v31] = v44;
  swift_endAccess();
  v43.receiver = v4;
  v43.super_class = type metadata accessor for NavigationViewController();

  v34 = [v4 topViewController];
  if (v34)
  {
    v35 = v34;
    v36 = sub_20C13D5F4();

    if (v36)
    {
      [v4 navigationController:v4 didShowViewController:v32 animated:v41 & 1];
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
}

double sub_20B8A2F18(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a1)
  {
    return result;
  }

  if (a6)
  {
    v8 = a4;
    v9 = a5;
    v10 = a6;
    sub_20C13E014();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x277D84F90];
    }

    v12 = *(v11 + 16);

    if (__OFSUB__(v10 >> 1, v9))
    {
      __break(1u);
    }

    else if (v12 == (v10 >> 1) - v9)
    {
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    a5 = v9;
    a6 = v10;
    a4 = v8;
  }

  sub_20BCC8310(a3, a4, a5, a6);
LABEL_11:
  a1();

  return result;
}

void sub_20B8A3044(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = [v4 parentViewController];
  if (v8)
  {
LABEL_2:

    v9 = *&v4[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController];
    if (a2)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      v11 = sub_20B5E4150;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    swift_beginAccess();
    v17 = v9;
    sub_20B584050(a2, a3);
    sub_20C0C07F4(v11, v10, v17);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20C14F580;
    *(v18 + 32) = v17;
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v19 = v17;
    v20 = sub_20C13CC54();

    v27.receiver = v4;
    v27.super_class = type metadata accessor for NavigationViewController();
    objc_msgSendSuper2(&v27, sel_setViewControllers_animated_, v20, a1 & 1);

    v21 = [v4 topViewController];
    if (v21)
    {
      v22 = v21;
      v23 = sub_20C13D5F4();

      if (v23)
      {
        [v4 navigationController:v4 didShowViewController:v19 animated:a1 & 1];
      }
    }

    else
    {
    }

    return;
  }

  v12 = [v4 parentViewController];
  if (v12)
  {
  }

  else
  {
    v24 = [v4 view];
    if (!v24)
    {
      __break(1u);
      return;
    }

    v25 = v24;
    v26 = [v24 window];

    if (v26)
    {
      v8 = v26;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C14F580;
  v14 = *&v4[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController];
  *(v13 + 32) = v14;
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v15 = v14;
  v16 = sub_20C13CC54();

  v28.receiver = v4;
  v28.super_class = type metadata accessor for NavigationViewController();
  objc_msgSendSuper2(&v28, sel_setViewControllers_animated_, v16, 0);

  if (a2)
  {
    a2();
  }
}

id NavigationViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id NavigationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NavigationViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NavigationViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20B8A35D8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = v4;
  v9 = a1;

  return sub_20C137C94();
}

double sub_20B8A3660(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20B5D9B44;
  *(v10 + 24) = v9;

  sub_20B8A25F8(a4, a5, sub_20B8A3EC0, v10);

  return result;
}

double sub_20B8A372C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_20B8A3F18;
  *(v8 + 24) = v7;

  sub_20B8A27F4(a4, sub_20B8A3EE0, v8);

  return result;
}

double sub_20B8A37EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_20B8A3EDC;
  *(v8 + 24) = v7;

  sub_20B8A2AA0(a4, sub_20B8A3F20, v8);

  return result;
}

double sub_20B8A38AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_20B5DF614;
  *(v8 + 24) = v7;

  sub_20B8A3044(a4, sub_20B8A3F10, v8);

  return result;
}

void sub_20B8A396C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20B5DF614;
  *(v11 + 24) = v10;
  v13[4] = sub_20B8A3F10;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B7B548C;
  v13[3] = &block_descriptor_62_0;
  v12 = _Block_copy(v13);

  [a3 presentViewController:a4 animated:a5 & 1 completion:v12];
  _Block_release(v12);
}

void sub_20B8A3A94(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20B5DF614;
  *(v9 + 24) = v8;
  v11[4] = sub_20B8A3F10;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20B7B548C;
  v11[3] = &block_descriptor_36;
  v10 = _Block_copy(v11);

  [a3 dismissViewControllerAnimated:a4 & 1 completion:v10];
  _Block_release(v10);
}

Swift::Bool __swiftcall NavigationViewController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing);
  if (!v2)
  {
    return 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing + 8);

  v5 = v2(v1, a1);
  sub_20B583ECC(v2, v4);
  return v5 & 1;
}

double sub_20B8A3D78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24NavigationViewController_viewControllerAppearanceCompletion;
  swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {

    v6 = sub_20B65B514(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      swift_beginAccess();
      v9 = sub_20BE38588(a1);
      v11 = v10;
      swift_endAccess();
      v12 = sub_20B583ECC(v9, v11);
      v8(v12);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B8A3E90()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

double sub_20B8A3F24()
{
  swift_getObjectType();
  sub_20C138F84();
  swift_allocObject();
  swift_weakInit();
  sub_20B8A9600(&qword_27C76C460, MEMORY[0x277D541F0], MEMORY[0x277D541E8]);

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C138FA4();
  swift_allocObject();
  swift_weakInit();
  sub_20B8A9600(&qword_27C769A40, MEMORY[0x277D54200], MEMORY[0x277D541F8]);

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C139454();
  swift_allocObject();
  swift_weakInit();
  sub_20B8A9600(&unk_281103B10, MEMORY[0x277D543B0], MEMORY[0x277D543A8]);

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

uint64_t sub_20B8A4250(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for PageActionPresenter.State(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8A42E4, 0, 0);
}

uint64_t sub_20B8A42E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    swift_storeEnumTagMultiPayload();

    return MEMORY[0x2822009F8](sub_20B8A43B4, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_20B8A43B4()
{
  v1 = *(v0 + 56);
  sub_20B8A661C(v1);

  sub_20B8A96B0(v1, type metadata accessor for PageActionPresenter.State);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20B8A4468()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20B8A5B5C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B8A4570()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B86B5A4;

    return sub_20B8A5B5C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B8A4658(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767068, &qword_20C15FB10);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8A4730, v1, 0);
}

uint64_t sub_20B8A4730(uint64_t a1)
{
  v2 = v1[3];
  v3 = *(v2 + 184);
  if (v3 == 13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
    sub_20C1380D4();

    v4 = v1[1];

    return v4();
  }

  else
  {
    v6 = v1[6];
    v7 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isFetchingMarketingOffer;
    v1[7] = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isFetchingMarketingOffer;
    *(v2 + v7) = 1;
    sub_20C13CDC4();
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v9;
    *(v10 + 40) = v3;
    v11 = sub_20B61550C(0, 0, v6, &unk_20C15FB20, v10);
    v12 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
    v1[8] = v11;
    v1[9] = v12;
    *(v2 + v12) = v11;

    v13 = swift_task_alloc();
    v1[10] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    *v13 = v1;
    v13[1] = sub_20B8A49AC;
    v16 = v1[5];
    v17 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v16, v11, v14, v15, v17);
  }
}

uint64_t sub_20B8A49AC()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_20B8A4ABC, v1, 0);
}

uint64_t sub_20B8A4ABC()
{
  v1 = v0[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[7];
    v3 = v0[3];
    *(v3 + v0[9]) = 0;

    *(v3 + v2) = 0;
    swift_willThrow();
  }

  else
  {
    v5 = v0[7];
    v6 = v0[2];
    v7 = v0[3];

    sub_20B8A9580(v1, v6);
    *(v7 + v5) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B8A4BBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C138894();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_20B8A4C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 240) = a5;
  *(v5 + 112) = a1;
  *(v5 + 120) = a4;
  v6 = sub_20C139594();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_20C138E94();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60, &unk_20C152F70);
  *(v5 + 176) = v8;
  *(v5 + 184) = *(v8 - 8);
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8A4DB0, 0, 0);
}

uint64_t sub_20B8A4DB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_20B8A4F30, Strong, 0);
  }

  else
  {
    v2 = sub_20C138A74();
    sub_20B8A9600(&qword_27C767070, MEMORY[0x277D54128], MEMORY[0x277D54130]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D54100], v2);
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20B8A4F30()
{
  sub_20B51CC64(*(v0 + 200) + 144, v0 + 16);

  return MEMORY[0x2822009F8](sub_20B8A4FA8, 0, 0);
}

uint64_t sub_20B8A4FA8()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  v1 = v0[24];
  sub_20C138E74();

  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = "SeymourUI/PageActionPresenter.swift";
  *(v2 + 24) = 35;
  *(v2 + 32) = 2;
  *(v2 + 40) = 125;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[27] = v3;
  v4 = sub_20B65FE0C();
  *v3 = v0;
  v3[1] = sub_20B8A5158;

  return MEMORY[0x2822008A0](v0 + 13, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8A95F0, v2, v4);
}

uint64_t sub_20B8A5158()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v3 = sub_20B8A52B4;
  }

  else
  {
    v5 = v2[23];
    v4 = v2[24];
    v6 = v2[22];
    v2[29] = v2[13];

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = sub_20B8A5358;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B8A52B4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B8A5358()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  (*(v0[20] + 104))(v0[21], *MEMORY[0x277D54190], v0[19]);
  (*(v3 + 104))(v1, *MEMORY[0x277D54408], v2);
  sub_20C138854();
  v5 = sub_20C138894();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20B8A5494(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C13BB84();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8A5554, v1, 0);
}

uint64_t sub_20B8A5554()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    *v2 = v0;
    v2[1] = sub_20B8A56C8;
    v5 = v0[2];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5, v1, v3, v4, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_20B8A5860;
    v8 = v0[2];

    return sub_20B8A4658(v8);
  }
}

uint64_t sub_20B8A56C8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_20B8A5978;
  }

  else
  {
    v4 = sub_20B8A57F4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20B8A57F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8A5860()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B8A5978(uint64_t a1)
{
  v2 = v1[9];
  sub_20C13B454();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20B517000, v4, v5, "[ActiveWorkoutPlanProvider] Failed to query marketing offer with error: %@", v8, 0xCu);
    sub_20B520158(v9, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = v1[2];
  (*(v1[5] + 8))(v1[6], v1[4]);
  v13 = sub_20C138894();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  v14 = v1[1];

  return v14();
}

uint64_t sub_20B8A5B5C()
{
  v1[5] = v0;
  v2 = sub_20C13BB84();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_20C138894();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = type metadata accessor for PageActionPresenter.State(0);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8A5CEC, v0, 0);
}

uint64_t sub_20B8A5CEC()
{
  v1 = v0[5];
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_supportedBehaviors) & 2) != 0)
  {
    v4 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState;
    v0[16] = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState;
    if (*(v1 + v4 + 8) != 3)
    {
      v5 = v0[15];
      swift_storeEnumTagMultiPayload();
      sub_20B8A661C(v5);
      sub_20B8A96B0(v5, type metadata accessor for PageActionPresenter.State);
    }

    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_20B8A5E50;

    return sub_20B8A73EC();
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_20B8A5E50(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_20B8A5F68, v2, 0);
}

uint64_t sub_20B8A5F68()
{
  v1 = *(v0 + 160);
  *(*(v0 + 40) + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isSubscribed) = v1;
  if (v1 == 1)
  {
    v2 = *(v0 + 40) + *(v0 + 128);
    v3 = *(v2 + 8);
    if (v3 == 3)
    {
      v4 = *(v0 + 120);
      swift_storeEnumTagMultiPayload();
      sub_20B8A661C(v4);
      sub_20B8A96B0(v4, type metadata accessor for PageActionPresenter.State);
    }

    else
    {
      v8 = *v2;
      sub_20B79AD30(*v2, *(v2 + 8));
      sub_20B8A70AC(v8, v3);
      sub_20B8A91BC(v8, v3);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_20B8A6104;
    v6 = *(v0 + 104);

    return sub_20B8A5494(v6);
  }
}

uint64_t sub_20B8A6104()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_20B8A642C;
  }

  else
  {
    v4 = sub_20B8A6230;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20B8A6230()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer;
  swift_beginAccess();
  sub_20B8A944C(v2, v5 + v6);
  swift_endAccess();
  sub_20B8A9230(v5 + v6, v1);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[15];
  if (v7 == 1)
  {
    sub_20B520158(v0[12], &unk_27C768660, &unk_20C152F60);
    swift_storeEnumTagMultiPayload();
    sub_20B8A661C(v8);
    sub_20B8A96B0(v8, type metadata accessor for PageActionPresenter.State);
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    (*(v10 + 32))(v9, v0[12], v11);
    (*(v10 + 16))(v8, v9, v11);
    swift_storeEnumTagMultiPayload();
    sub_20B8A661C(v8);
    sub_20B8A96B0(v8, type metadata accessor for PageActionPresenter.State);
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_20B8A642C(uint64_t a1)
{
  v2 = v1[19];
  sub_20C13B4A4();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20B517000, v4, v5, "[PageActionPresenter] Failed to fetch marketing offer with error: %@", v7, 0xCu);
    sub_20B520158(v8, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  v11 = v1[19];
  v12 = v1[15];
  v14 = v1[7];
  v13 = v1[8];
  v15 = v1[6];

  (*(v14 + 8))(v13, v15);
  swift_storeEnumTagMultiPayload();
  sub_20B8A661C(v12);

  sub_20B8A96B0(v12, type metadata accessor for PageActionPresenter.State);

  v16 = v1[1];

  return v16();
}

double sub_20B8A661C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v57 - v5;
  v6 = sub_20C138B94();
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x28223BE20](v6);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = sub_20C138894();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PageActionPresenter.State(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v57 - v25;
  v27 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_state;
  swift_beginAccess();
  sub_20B8A92A0(a1, v2 + v27);
  swift_endAccess();
  sub_20B8A9648(a1, v26, type metadata accessor for PageActionPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v38 = 0;
      v33 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 5;
      v34 = v63;
    }

    else
    {
      v34 = v63;
      if (EnumCaseMultiPayload == 4)
      {
        v33 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 5;
        v38 = 1;
      }

      else
      {
        v38 = sub_20B8A6D84(a1);
        v33 = v44;
        sub_20B8A9648(a1, v17, type metadata accessor for PageActionPresenter.State);
        if (swift_getEnumCaseMultiPayload() - 2 >= 4)
        {
          sub_20B8A96B0(v17, type metadata accessor for PageActionPresenter.State);
        }

        v35 = 0;
        v36 = 0;
        v37 = 3;
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v39 = *v26;
      v40 = *(v26 + 1);
      swift_unknownObjectRetain();
      v57 = sub_20BC040E0(v39, v40);
      v33 = v41;
      swift_unknownObjectRelease();

      v35 = sub_20B8A6D84(a1);
      v36 = v42;

      sub_20B8A9648(a1, v20, type metadata accessor for PageActionPresenter.State);
      if (swift_getEnumCaseMultiPayload() - 2 >= 4)
      {
        v34 = v63;
        sub_20B8A96B0(v20, type metadata accessor for PageActionPresenter.State);
        v37 = 2;
      }

      else
      {
        v37 = 2;
        v34 = v63;
      }

LABEL_24:
      v38 = v57;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 1)
    {
      (*(v61 + 32))(v14, v26, v62);
      v29 = sub_20C138824();
      if (*(v29 + 16))
      {
        v30 = v59;
        v31 = v60;
        (*(v60 + 16))(v11, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v59);

        v57 = sub_20C138B64();
        v33 = v32;
        (*(v31 + 8))(v11, v30);
      }

      else
      {

        v45 = off_2822D4B28;
        type metadata accessor for WorkoutPlanCreationStringProvider();
        swift_unknownObjectRetain();
        v57 = v45();
        v33 = v46;
        swift_unknownObjectRelease();
        v30 = v59;
      }

      v47 = sub_20C138824();
      v34 = v63;
      if (*(v47 + 16))
      {
        v48 = v60;
        v49 = v58;
        (*(v60 + 16))(v58, v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v30);

        v35 = sub_20C138B84();
        v36 = v50;
        (*(v61 + 8))(v14, v62);
        (*(v48 + 8))(v49, v30);
      }

      else
      {

        (*(v61 + 8))(v14, v62);
        v35 = 0;
        v36 = 0;
      }

      v37 = 4;
      goto LABEL_24;
    }

    v38 = sub_20B8A6D84(a1);
    v33 = v43;
    sub_20B8A9648(a1, v23, type metadata accessor for PageActionPresenter.State);
    if (swift_getEnumCaseMultiPayload() - 2 >= 4)
    {
      sub_20B8A96B0(v23, type metadata accessor for PageActionPresenter.State);
    }

    v35 = 0;
    v36 = 0;
    v37 = 1;
    v34 = v63;
  }

LABEL_25:
  v51 = sub_20C13CDF4();
  (*(*(v51 - 8) + 56))(v34, 1, 1, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v53 = sub_20C13CD94();
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  *(v54 + 32) = v52;
  *(v54 + 40) = v38;
  *(v54 + 48) = v33;
  *(v54 + 56) = v35;
  *(v54 + 72) = 0;
  *(v54 + 80) = 0;
  *(v54 + 64) = v36;
  *(v54 + 88) = v37;

  sub_20B6380FC(0, 0, v34, &unk_20C15FB00, v54);

  return result;
}

uint64_t sub_20B8A6D84(uint64_t a1)
{
  v2 = type metadata accessor for PageActionPresenter.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8A9648(a1, v4, type metadata accessor for PageActionPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v7 = 0;
    if ((EnumCaseMultiPayload - 3) < 2)
    {
      return v7;
    }

    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20B8A96B0(v4, type metadata accessor for PageActionPresenter.State);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_8:
    swift_unknownObjectRetain();
    v7 = sub_20BC04000();
    swift_unknownObjectRelease();
    return v7;
  }

  v6 = off_2822D4B28;
  type metadata accessor for WorkoutPlanCreationStringProvider();
  swift_unknownObjectRetain();
  v7 = v6();
  swift_unknownObjectRelease();
  sub_20B8A96B0(v4, type metadata accessor for PageActionPresenter.State);
  return v7;
}

uint64_t sub_20B8A6F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_20C13CDA4();
  v5[8] = sub_20C13CD94();
  v7 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B8A6FB8, v7, v6);
}

uint64_t sub_20B8A6FB8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), v4 = *(v2 + 120), , v3))
  {
    v5 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(v5, ObjectType, v4);
    swift_unknownObjectRelease();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  **(v0 + 40) = v7;
  v8 = *(v0 + 8);

  return v8();
}

void sub_20B8A70AC(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for PageActionPresenter.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = (v2 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState);
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState);
  v19 = *(v2 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState + 8);
  *v17 = a1;
  v17[1] = a2;
  sub_20B79AD30(a1, a2);
  sub_20B8A91BC(v18, v19);
  if ((*(v2 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isFetchingMarketingOffer) & 1) == 0)
  {
    if (a2 < 3 || (v20 = a1, !a1) || (a1, (*(v2 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_supportedBehaviors) & 1) == 0))
    {
      if ((*(v2 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_supportedBehaviors) & 2) != 0 && *(v2 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isSubscribed) != 1)
      {
        v21 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer;
        swift_beginAccess();
        sub_20B8A9230(v2 + v21, v7);
        v22 = sub_20C138894();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v7, 1, v22) == 1)
        {
          sub_20B520158(v7, &unk_27C768660, &unk_20C152F60);
        }

        else
        {
          (*(v23 + 32))(v10, v7, v22);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_21;
      }
    }

    if (a2)
    {
      if (a2 == 1)
      {
        swift_storeEnumTagMultiPayload();
        sub_20B8A91CC(v13, v16);
LABEL_20:
        v10 = v16;
LABEL_21:
        sub_20B8A661C(v10);
        sub_20B8A96B0(v10, type metadata accessor for PageActionPresenter.State);
        return;
      }

      if (a2 != 2 && a1)
      {
        *v16 = a1;
        *(v16 + 1) = a2;
        swift_storeEnumTagMultiPayload();

        v24 = a1;
        goto LABEL_20;
      }
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_20;
  }
}

uint64_t sub_20B8A73EC()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8A74AC, v0, 0);
}

uint64_t sub_20B8A74AC()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionCache);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20B8A7570;

  return MEMORY[0x2821B5680](v3, v2);
}

uint64_t sub_20B8A7570(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = *(v4 + 48);

    return MEMORY[0x2822009F8](sub_20B8A76C8, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_20B8A76C8(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 88);
  sub_20C13B4A4();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 88);
    v7 = *(v1 + 64);
    v19 = *(v1 + 72);
    v8 = *(v1 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](*(v1 + 24), *(v1 + 32));
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "[PageActionPresenter] Failed to fetch subscription status with error: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 64);
    v14 = *(v1 + 72);
    v16 = *(v1 + 56);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17(0);
}

uint64_t sub_20B8A78A4()
{
  sub_20B583E6C(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v1 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionCache));

  sub_20B8A91BC(*(v0 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState), *(v0 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState + 8));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer, &unk_27C768660, &unk_20C152F60);
  sub_20B8A96B0(v0 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_state, type metadata accessor for PageActionPresenter.State);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_20B8A79D0()
{
  sub_20B8A78A4();

  return MEMORY[0x282200960](v0);
}

void sub_20B8A7A24(uint64_t a1)
{
  sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    sub_20B8A7BAC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PageActionPresenter.State(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B8A7BAC(uint64_t a1)
{
  if (!qword_281103B50)
  {
    sub_20C138894();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103B50);
    }
  }
}

void sub_20B8A7C24(uint64_t a1)
{
  sub_20B8A7C98(319);
  if (v1 <= 0x3F)
  {
    sub_20C138894();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20B8A7C98(uint64_t a1)
{
  if (!qword_27C767050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C762A80, &unk_20C1512F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767058, "Hj\t");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C767050);
    }
  }
}

uint64_t sub_20B8A7D30()
{
  v0[2] = sub_20C13CDA4();
  v0[3] = sub_20C13CD94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B694014;

  return sub_20B8A5B5C();
}

uint64_t sub_20B8A7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_20C13CDA4();
  v6[9] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x2822009F8](sub_20B8A7E78, v8, v7);
}

uint64_t sub_20B8A7E78()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_20B8A7F4C, Strong, 0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_20B8A7F4C()
{
  sub_20B8A70AC(*(v0 + 56), *(v0 + 64));

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_20B8A7FBC, v1, v2);
}

uint64_t sub_20B8A7FBC()
{

  **(v0 + 40) = *(v0 + 96) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8A8030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v4[18] = type metadata accessor for PageActionPresenter.State(0);
  v4[19] = swift_task_alloc();
  v4[20] = sub_20C13CDA4();
  v4[21] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[22] = v6;
  v4[23] = v5;

  return MEMORY[0x2822009F8](sub_20B8A80FC, v6, v5);
}

uint64_t sub_20B8A80FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_20B8A82D8, Strong, 0);
  }

  else
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 120);

      if (v4)
      {
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(1, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    v0[26] = v7;
    if (v7)
    {
      v8 = swift_task_alloc();
      v0[27] = v8;
      *v8 = v0;
      v8[1] = sub_20B8A873C;

      return sub_20B8A8880();
    }

    else
    {

      v9 = v0[1];

      return v9();
    }
  }
}

uint64_t sub_20B8A82D8()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_state;
  swift_beginAccess();
  sub_20B8A9648(v1 + v3, v2, type metadata accessor for PageActionPresenter.State);

  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x2822009F8](sub_20B8A8388, v4, v5);
}

uint64_t sub_20B8A8388()
{
  v1 = v0[19];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20B8A96B0(v1, type metadata accessor for PageActionPresenter.State);
  if (EnumCaseMultiPayload == 5)
  {

    return MEMORY[0x2822009F8](sub_20B8A8570, 0, 0);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();
      v6 = *(v4 + 120);

      if (v5)
      {
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(1, ObjectType, v6);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v8 = swift_weakLoadStrong();
    v0[26] = v8;
    if (v8)
    {
      v9 = swift_task_alloc();
      v0[27] = v9;
      *v9 = v0;
      v9[1] = sub_20B8A873C;

      return sub_20B8A8880();
    }

    else
    {

      v10 = v0[1];

      return v10();
    }
  }
}

uint64_t sub_20B8A8570(__n128 a1)
{
  *(v1 + 200) = sub_20C13CD94();
  v3 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B8A85FC, v3, v2);
}

uint64_t sub_20B8A85FC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 120);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_20B8A86D4, v6, v7);
}

uint64_t sub_20B8A86D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8A873C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_20B8A9950, v3, v2);
}

uint64_t sub_20B8A8880()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for NavigationRequested(0);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for NavigationRequest(0);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  v1[14] = swift_task_alloc();
  v3 = sub_20C1352E4();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_20C134F24();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  v1[21] = swift_task_alloc();
  v5 = sub_20C138894();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = sub_20C13CDA4();
  v1[26] = sub_20C13CD94();

  return MEMORY[0x2822009F8](sub_20B8A8B40, v0, 0);
}

uint64_t sub_20B8A8B40()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer;
  swift_beginAccess();
  sub_20B8A9230(v2 + v3, v1);
  v5 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B8A8BFC, v5, v4);
}

uint64_t sub_20B8A8BFC()
{
  v2 = v0 + 23;
  v1 = v0[23];
  v3 = v0[22];
  v4 = v0[21];

  if ((*(v1 + 48))(v4, 1, v3) == 1)
  {
    v5 = v0 + 9;
    sub_20B520158(v0[21], &unk_27C768660, &unk_20C152F60);
    sub_20C13B4A4();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20B517000, v6, v7, "[PageActionPresenter] No marketing offer to present", v8, 2u);
      MEMORY[0x20F2F6A40](v8, -1, -1);
    }

    v2 = v0 + 8;
    v9 = v0 + 7;
  }

  else
  {
    v27 = v0[24];
    v25 = v0[22];
    v26 = v0[23];
    v10 = v0[20];
    v11 = v0[18];
    v12 = v0[19];
    v14 = v0[16];
    v13 = v0[17];
    v24 = v10;
    v22 = v0[15];
    v23 = v0[14];
    v15 = v0[13];
    v28 = v0[12];
    v29 = v0[11];
    v16 = v0[6];
    (*(v26 + 32))();
    v0[5] = v16;
    (*(v12 + 104))(v10, *MEMORY[0x277D51398], v11);
    (*(v14 + 104))(v13, *MEMORY[0x277D51768], v22);
    sub_20C1349D4();
    v17 = *MEMORY[0x277D52400];
    v18 = sub_20C135ED4();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v23, v17, v18);
    (*(v19 + 56))(v23, 0, 1, v18);
    type metadata accessor for PageActionPresenter(0);
    sub_20B8A9600(&qword_27C767078, type metadata accessor for PageActionPresenter, &unk_20C15FA88);
    sub_20C138D94();

    sub_20B520158(v23, &unk_27C7621D0, &unk_20C14D9B0);
    (*(v14 + 8))(v13, v22);
    (*(v12 + 8))(v24, v11);
    (*(v26 + 16))(v15, v27, v25);
    type metadata accessor for NavigationResource(0);
    swift_storeEnumTagMultiPayload();
    *(v15 + v28[5]) = 1;
    type metadata accessor for NavigationIntent(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NavigationSource(0);
    swift_storeEnumTagMultiPayload();
    *(v15 + v28[7]) = 0;
    *(v15 + v28[8]) = 1;
    *(v15 + v28[9]) = 0;
    swift_getObjectType();
    sub_20B8A9648(v15, v29, type metadata accessor for NavigationRequest);
    sub_20B8A9600(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
    v5 = v0 + 24;
    sub_20C13A764();
    sub_20B8A96B0(v29, type metadata accessor for NavigationRequested);
    sub_20B8A96B0(v15, type metadata accessor for NavigationRequest);
    v9 = v0 + 22;
  }

  (*(*v2 + 8))(*v5, *v9);

  v20 = v0[1];

  return v20();
}

uint64_t sub_20B8A9164(uint64_t a1)
{
  result = sub_20B8A9600(&qword_27C767060, type metadata accessor for PageActionPresenter, &unk_20C15FACC);
  *(a1 + 8) = result;
  return result;
}

double sub_20B8A91BC(void *a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_20B7D33F0(a1, a2);
  }

  return result;
}

uint64_t sub_20B8A91CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageActionPresenter.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8A9230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8A92A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageActionPresenter.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_20B8A9304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 - 3 >= 2)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (a7)
  {
    if (a7 != 1)
    {
      if (a7 != 2)
      {
        return result;
      }
    }

LABEL_7:
  }

  return result;
}

uint64_t sub_20B8A938C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B8A6F1C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_20B8A944C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8A94BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20B8A4C28(a1, v4, v5, v6, v7);
}

uint64_t sub_20B8A9580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8A9600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B8A9648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8A96B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B8A9710()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B8A4250(v0);
}

uint64_t sub_20B8A97A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20B8A4448(v0);
}

uint64_t sub_20B8A9830()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B8A4550(v0);
}

uint64_t sub_20B8A98C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B8A4550(v0);
}

void sub_20B8A998C(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

id sub_20B8A9A8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MarketingWebUserInterfaceCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_20B8A9AF4(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x277CEE878]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 performAuthentication];
    v15[4] = sub_20B8A9ECC;
    v15[5] = v5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20BCB7130;
    v15[3] = &block_descriptor_13_0;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20B8A9ED4();
    v13 = swift_allocError();
    _Block_copy(a3);
    v14 = sub_20C132A34();
    (a3)[2](a3, 0, v14);
  }

  return result;
}

double sub_20B8A9CE0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x277CEE868]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 present];
    v15[4] = sub_20B8A9ECC;
    v15[5] = v5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20BCB7130;
    v15[3] = &block_descriptor_37;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20B8A9ED4();
    v13 = swift_allocError();
    _Block_copy(a3);
    v14 = sub_20C132A34();
    (a3)[2](a3, 0, v14);
  }

  return result;
}

unint64_t sub_20B8A9ED4()
{
  result = qword_27C767090;
  if (!qword_27C767090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767090);
  }

  return result;
}

id sub_20B8A9F38(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for MetadataEntryTitleLabel();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_20C1380F4();
  if (v10 < 2)
  {
    v11 = &selRef_whiteColor;
    v12 = MEMORY[0x277D76968];
LABEL_5:
    v13 = [objc_opt_self() preferredFontForTextStyle_];
    [v9 setFont_];

    v14 = [objc_opt_self() *v11];
    [v9 setTextColor_];

    goto LABEL_6;
  }

  if (v10 != 2)
  {
    v11 = &selRef_systemGrayColor;
    v12 = MEMORY[0x277D76940];
    goto LABEL_5;
  }

LABEL_6:
  [v9 setNumberOfLines_];
  return v9;
}

id sub_20B8AA0F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataEntryTitleLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B8AA150(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = sub_20C13C914();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v1 setText_];
}

double sub_20B8AA1B0(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v107 = a4;
  v106 = a3;
  v100 = a1;
  v105 = sub_20C134014();
  v103 = *(v105 - 8);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v97 = *(v108 - 8);
  v96 = v97[8];
  MEMORY[0x28223BE20](v108);
  v94 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v91 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v113 = *(v110 - 8);
  v92 = v113[8];
  MEMORY[0x28223BE20](v110);
  v101 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = v91 - v20;
  MEMORY[0x28223BE20](v21);
  v112 = v91 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = v91 - v24;
  MEMORY[0x28223BE20](v25);
  v114 = v91 - v26;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v109 = swift_allocBox();
  v30 = v29;
  v31 = sub_20C135734();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v95 = v5;
  sub_20BC2DA34(a1, v17);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_20B62EA5C;
  *(v32 + 24) = v28;
  v99 = v28;
  (*(v12 + 16))(v14, v17, v11);
  v33 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v12 + 32))(v35 + v33, v14, v11);
  v36 = (v35 + v34);
  *v36 = sub_20B62EA58;
  v36[1] = v32;

  sub_20C137C94();
  (*(v12 + 8))(v17, v11);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_serviceSubscriptionCache), *(v5 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_serviceSubscriptionCache + 24));
  v37 = v93;
  sub_20C1392E4();
  v38 = swift_allocObject();
  v40 = v108;
  v39 = v109;
  *(v38 + 16) = sub_20B8AEA9C;
  *(v38 + 24) = v39;
  v41 = v97;
  v42 = v94;
  (v97[2])(v94, v37, v40);
  v43 = v41;
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = (v96 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (v43[4])(v46 + v44, v42, v40);
  v47 = (v46 + v45);
  *v47 = sub_20B5DF4C8;
  v47[1] = v38;

  v48 = v112;
  sub_20C137C94();
  (v43[1])(v37, v40);
  v49 = swift_allocObject();
  v49[2] = 0xD00000000000002FLL;
  v49[3] = 0x800000020C19E960;
  v49[4] = 70;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_20B5DF5EC;
  *(v50 + 24) = v49;
  v51 = v113;
  v52 = v113[2];
  v108 = (v113 + 2);
  v53 = v98;
  v54 = v48;
  v55 = v110;
  v52(v98, v54, v110);
  v56 = *(v51 + 80);
  v57 = v51;
  v94 = ((v56 + 16) & ~v56);
  v92 = &v94[v92 + 7] & 0xFFFFFFFFFFFFFFF8;
  v58 = v92;
  v59 = swift_allocObject();
  v93 = v57[4];
  v96 = v57 + 4;
  v60 = v55;
  (v93)(v59 + ((v56 + 16) & ~v56), v53, v55);
  v61 = (v59 + v58);
  *v61 = sub_20B5DF4B0;
  v61[1] = v50;
  v62 = v111;
  sub_20C137C94();
  v63 = v57[1];
  ++v57;
  v97 = v63;
  (v63)(v112, v55);
  v113 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v64 = v57[8];
  v91[1] = v56;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_20C14F320;
  v66 = v65 + ((v56 + 32) & ~v56);
  v91[0] = v52;
  v52(v66, v114, v60);
  v52((v66 + v64), v62, v60);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v67 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = v102;
  v69 = v103;
  v71 = v105;
  (*(v103 + 16))(v102, v100, v105);
  v72 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v73 = swift_allocObject();
  v74 = v109;
  *(v73 + 16) = v99;
  *(v73 + 24) = v74;
  v75 = v106;
  *(v73 + 32) = v68;
  *(v73 + 40) = v75;
  *(v73 + 48) = v107 & 1;
  (*(v69 + 32))(v73 + v72, v70, v71);
  v76 = swift_allocObject();
  *(v76 + 16) = sub_20B8AE8F4;
  *(v76 + 24) = v73;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_20B849B38;
  *(v77 + 24) = v76;
  v78 = v101;
  v79 = v53;
  v80 = v53;
  v81 = v110;
  (v91[0])(v101, v80, v110);
  v82 = v92;
  v83 = swift_allocObject();
  (v93)(&v94[v83], v78, v81);
  v84 = (v83 + v82);
  *v84 = sub_20B66A8B4;
  v84[1] = v77;

  v85 = v75;
  v86 = v112;
  sub_20C137C94();
  v87 = v97;
  (v97)(v79, v81);
  v88 = sub_20C137CB4();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  v88(sub_20B5DF6DC, v89);

  v87(v86, v81);
  v87(v111, v81);
  v87(v114, v81);

  return result;
}

double sub_20B8AAD00(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v107 = a4;
  v106 = a3;
  v100 = a1;
  v105 = sub_20C134014();
  v103 = *(v105 - 8);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v97 = *(v108 - 8);
  v96 = v97[8];
  MEMORY[0x28223BE20](v108);
  v94 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v91 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v113 = *(v110 - 8);
  v92 = v113[8];
  MEMORY[0x28223BE20](v110);
  v101 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = v91 - v20;
  MEMORY[0x28223BE20](v21);
  v112 = v91 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = v91 - v24;
  MEMORY[0x28223BE20](v25);
  v114 = v91 - v26;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v109 = swift_allocBox();
  v30 = v29;
  v31 = sub_20C135734();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v95 = v5;
  sub_20BC2E608(a1, v17);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_20B62EA5C;
  *(v32 + 24) = v28;
  v99 = v28;
  (*(v12 + 16))(v14, v17, v11);
  v33 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v12 + 32))(v35 + v33, v14, v11);
  v36 = (v35 + v34);
  *v36 = sub_20B62EA58;
  v36[1] = v32;

  sub_20C137C94();
  (*(v12 + 8))(v17, v11);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_serviceSubscriptionCache), *(v5 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_serviceSubscriptionCache + 24));
  v37 = v93;
  sub_20C1392E4();
  v38 = swift_allocObject();
  v40 = v108;
  v39 = v109;
  *(v38 + 16) = sub_20B8AEA9C;
  *(v38 + 24) = v39;
  v41 = v97;
  v42 = v94;
  (v97[2])(v94, v37, v40);
  v43 = v41;
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = (v96 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (v43[4])(v46 + v44, v42, v40);
  v47 = (v46 + v45);
  *v47 = sub_20B5DF4C8;
  v47[1] = v38;

  v48 = v112;
  sub_20C137C94();
  (v43[1])(v37, v40);
  v49 = swift_allocObject();
  v49[2] = 0xD00000000000002FLL;
  v49[3] = 0x800000020C19E960;
  v49[4] = 70;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_20B5DF5EC;
  *(v50 + 24) = v49;
  v51 = v113;
  v52 = v113[2];
  v108 = (v113 + 2);
  v53 = v98;
  v54 = v48;
  v55 = v110;
  v52(v98, v54, v110);
  v56 = *(v51 + 80);
  v57 = v51;
  v94 = ((v56 + 16) & ~v56);
  v92 = &v94[v92 + 7] & 0xFFFFFFFFFFFFFFF8;
  v58 = v92;
  v59 = swift_allocObject();
  v93 = v57[4];
  v96 = v57 + 4;
  v60 = v55;
  (v93)(v59 + ((v56 + 16) & ~v56), v53, v55);
  v61 = (v59 + v58);
  *v61 = sub_20B5DF4B0;
  v61[1] = v50;
  v62 = v111;
  sub_20C137C94();
  v63 = v57[1];
  ++v57;
  v97 = v63;
  (v63)(v112, v55);
  v113 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v64 = v57[8];
  v91[1] = v56;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_20C14F320;
  v66 = v65 + ((v56 + 32) & ~v56);
  v91[0] = v52;
  v52(v66, v114, v60);
  v52((v66 + v64), v62, v60);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v67 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = v102;
  v69 = v103;
  v71 = v105;
  (*(v103 + 16))(v102, v100, v105);
  v72 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v73 = swift_allocObject();
  v74 = v109;
  *(v73 + 16) = v99;
  *(v73 + 24) = v74;
  v75 = v106;
  *(v73 + 32) = v68;
  *(v73 + 40) = v75;
  *(v73 + 48) = v107 & 1;
  (*(v69 + 32))(v73 + v72, v70, v71);
  v76 = swift_allocObject();
  *(v76 + 16) = sub_20B8AE73C;
  *(v76 + 24) = v73;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_20B849B38;
  *(v77 + 24) = v76;
  v78 = v101;
  v79 = v53;
  v80 = v53;
  v81 = v110;
  (v91[0])(v101, v80, v110);
  v82 = v92;
  v83 = swift_allocObject();
  (v93)(&v94[v83], v78, v81);
  v84 = (v83 + v82);
  *v84 = sub_20B66A8B4;
  v84[1] = v77;

  v85 = v75;
  v86 = v112;
  sub_20C137C94();
  v87 = v97;
  (v97)(v79, v81);
  v88 = sub_20C137CB4();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  v88(sub_20B5DF6DC, v89);

  v87(v86, v81);
  v87(v111, v81);
  v87(v114, v81);

  return result;
}

double sub_20B8AB850(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v128 = a1;
  v119 = a4;
  v118 = a3;
  v117 = sub_20C134014();
  v115 = *(v117 - 8);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v112 = *(v120 - 8);
  v111 = v112[8];
  MEMORY[0x28223BE20](v120);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v103 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v103 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v17 = *(v106 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v104 = &v103 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v131 = *(v125 - 8);
  v107 = *(v131 + 64);
  MEMORY[0x28223BE20](v125);
  v113 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v123 = &v103 - v23;
  MEMORY[0x28223BE20](v24);
  v130 = &v103 - v25;
  MEMORY[0x28223BE20](v26);
  v126 = &v103 - v27;
  MEMORY[0x28223BE20](v28);
  v129 = &v103 - v29;
  v30 = swift_allocObject();
  v124 = v30;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v121 = swift_allocBox();
  v32 = v31;
  v33 = sub_20C135734();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  v132[0] = v6;
  v34 = *(a6 + 32);
  v122 = a5;
  v35 = a5;
  v36 = a6;
  v34(v35, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v104;
  (*(AssociatedConformanceWitness + 32))(v128, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  v39 = swift_allocObject();
  v40 = v124;
  *(v39 + 16) = sub_20B62E634;
  *(v39 + 24) = v40;
  v41 = v105;
  v42 = v38;
  v43 = v106;
  (*(v17 + 16))(v105, v38, v106);
  v44 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v45 = (v18 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v17 + 32))(v46 + v44, v41, v43);
  v47 = (v46 + v45);
  *v47 = sub_20B62E604;
  v47[1] = v39;

  sub_20C137C94();
  (*(v17 + 8))(v42, v43);
  v132[5] = v127;
  v108 = v36;
  (*(v36 + 40))(v132, v122, v36);
  __swift_project_boxed_opaque_existential_1(v132, v132[3]);
  v48 = v109;
  sub_20C1392E4();
  v49 = swift_allocObject();
  v51 = v120;
  v50 = v121;
  *(v49 + 16) = sub_20B8AE4C8;
  *(v49 + 24) = v50;
  v52 = v112;
  v53 = v110;
  (v112[2])(v110, v48, v51);
  v54 = v52;
  v55 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v56 = (v111 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  (v54[4])(v57 + v55, v53, v51);
  v58 = (v57 + v56);
  *v58 = sub_20B5D9E70;
  v58[1] = v49;

  v59 = v130;
  sub_20C137C94();
  (v54[1])(v48, v51);
  __swift_destroy_boxed_opaque_existential_1(v132);
  v60 = swift_allocObject();
  v60[2] = 0xD00000000000002FLL;
  v60[3] = 0x800000020C19E960;
  v60[4] = 70;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5D9EA0;
  *(v61 + 24) = v60;
  v62 = v131;
  v63 = *(v131 + 16);
  v120 = v131 + 16;
  v64 = v123;
  v65 = v59;
  v66 = v125;
  v63(v123, v65, v125);
  v67 = *(v62 + 80);
  v110 = ((v67 + 16) & ~v67);
  v107 = &v110[v107 + 7] & 0xFFFFFFFFFFFFFFF8;
  v68 = v107;
  v69 = swift_allocObject();
  v109 = *(v62 + 32);
  v111 = v62 + 32;
  v70 = v66;
  (v109)(v69 + ((v67 + 16) & ~v67), v64, v66);
  v71 = (v69 + v68);
  *v71 = sub_20B5D9EC0;
  v71[1] = v61;
  v72 = v126;
  sub_20C137C94();
  v73 = *(v62 + 8);
  v62 += 8;
  v112 = v73;
  (v73)(v130, v66);
  v131 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v74 = *(v62 + 64);
  v106 = v67;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_20C14F320;
  v76 = v75 + ((v67 + 32) & ~v67);
  v105 = v63;
  v63(v76, v129, v70);
  v63((v76 + v74), v72, v70);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v77 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = v115;
  v80 = v114;
  v81 = v117;
  (*(v115 + 16))(v114, v128, v117);
  v82 = (*(v79 + 80) + 65) & ~*(v79 + 80);
  v83 = swift_allocObject();
  v84 = v121;
  v85 = v108;
  *(v83 + 16) = v122;
  *(v83 + 24) = v85;
  *(v83 + 32) = v124;
  *(v83 + 40) = v84;
  v86 = v118;
  *(v83 + 48) = v78;
  *(v83 + 56) = v86;
  *(v83 + 64) = v119 & 1;
  (*(v79 + 32))(v83 + v82, v80, v81);
  v87 = swift_allocObject();
  *(v87 + 16) = sub_20B8AE538;
  *(v87 + 24) = v83;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_20B622D08;
  *(v88 + 24) = v87;
  v89 = v113;
  v90 = v64;
  v91 = v125;
  (v105)(v113, v90, v125);
  v92 = v107;
  v93 = swift_allocObject();
  (v109)(&v110[v93], v89, v91);
  v94 = (v93 + v92);
  *v94 = sub_20B5DF3D4;
  v94[1] = v88;

  v95 = v86;
  v96 = v130;
  sub_20C137C94();
  v97 = v91;
  v98 = v91;
  v99 = v112;
  (v112)(v123, v98);
  v100 = sub_20C137CB4();
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  v100(sub_20B52347C, v101);

  v99(v96, v97);
  v99(v126, v97);
  v99(v129, v97);

  return result;
}

uint64_t sub_20B8AC580(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v80 = a6;
  v81 = a3;
  v82 = a5;
  v84 = a4;
  v79 = sub_20C134F24();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v71 - v14;
  v85 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v87 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v74 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20, &unk_20C15C0F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - v20;
  v22 = sub_20C134014();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v72 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v26 = sub_20C13CC54();
  sub_20B51C88C(0, &qword_27C7670A8, 0x277D546C8);
  v27 = sub_20C13CC54();
  v28 = [v25 initWithActivityItems:v26 applicationActivities:v27];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0, &unk_20C15FC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  v30 = *MEMORY[0x277D54778];
  v31 = *MEMORY[0x277D54718];
  *(inited + 32) = *MEMORY[0x277D54778];
  *(inited + 40) = v31;
  v32 = *MEMORY[0x277D54780];
  *(inited + 48) = *MEMORY[0x277D54780];
  v33 = qword_27C760900;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  aBlock[6] = qword_27C79B2E0;

  sub_20B8DA2C0(inited);

  sub_20B8DA2C0(v37);
  type metadata accessor for ActivityType(0);
  v38 = sub_20C13CC54();

  [v28 setExcludedActivityTypes_];

  v39 = [v28 popoverPresentationController];
  v40 = v84;
  if (v39)
  {
    v41 = &selRef_setSourceView_;
    if ((v84 & 1) == 0)
    {
      v41 = &selRef_setBarButtonItem_;
    }

    v42 = v39;
    [v39 *v41];
  }

  v43 = swift_allocObject();
  v44 = v83;
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v46 = v85;
  v45[2] = v85;
  v45[3] = a9;
  v45[4] = v43;
  aBlock[4] = sub_20B8AE618;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B8AE2E8;
  aBlock[3] = &block_descriptor_38;
  v47 = _Block_copy(aBlock);

  [v28 setCompletionWithItemsHandler_];
  _Block_release(v47);
  v48 = [v44 navigationController];
  if (v48)
  {
    v49 = v48;
    [v48 presentViewController:v28 animated:1 completion:0];
  }

  sub_20B8AE624(v82, v21);
  v50 = v23;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20B520158(v21, &unk_27C769C20, &unk_20C15C0F0);
    aBlock[0] = v44;
    v51 = v74;
    (*(a9 + 32))(v46, a9);
    v52 = sub_20C136664();
    v53 = v76;
    (*(*(v52 - 8) + 56))(v76, 1, 1, v52);
    v54 = v87;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v56 = v78;
    v57 = v77;
    v58 = v79;
    (*(v78 + 104))(v77, *MEMORY[0x277D51390], v79);
    sub_20BD95E28(v57, v53, v54, AssociatedConformanceWitness);

    (*(v56 + 8))(v57, v58);
    sub_20B520158(v53, &unk_27C7622E0, &unk_20C14FCF0);
    return (*(v86 + 8))(v51, v54);
  }

  else
  {
    v60 = *(v23 + 32);
    v61 = v72;
    v60(v72, v21, v22);
    aBlock[0] = v44;
    v62 = *(a9 + 32);
    v83 = v22;
    v63 = v50;
    v64 = v73;
    v62(v46, a9);
    v65 = sub_20C136664();
    v66 = *(v65 - 8);
    v67 = MEMORY[0x277D52B28];
    if ((v40 & 1) == 0)
    {
      v67 = MEMORY[0x277D52B30];
    }

    v68 = v75;
    (*(*(v65 - 8) + 104))(v75, *v67, v65);
    (*(v66 + 56))(v68, 0, 1, v65);
    v69 = v87;
    v70 = swift_getAssociatedConformanceWitness();
    sub_20BD9639C(v61, v80, v68, v69, v70);

    sub_20B520158(v68, &unk_27C7622E0, &unk_20C14FCF0);
    (*(v86 + 8))(v64, v69);
    return (*(v63 + 8))(v61, v83);
  }
}