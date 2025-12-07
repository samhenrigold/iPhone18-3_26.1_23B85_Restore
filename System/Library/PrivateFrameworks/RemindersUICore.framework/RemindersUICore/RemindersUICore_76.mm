unint64_t sub_21D803A20()
{
  result = qword_27CE61F68;
  if (!qword_27CE61F68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert, &type metadata for TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert, v0, v1);
    atomic_store(result, &qword_27CE61F68);
  }

  return result;
}

uint64_t TTRListProtocol.isListRepresentationOfTemplate.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v3 = [v2 entityName];

  v4 = sub_21DBFA16C();
  v6 = v5;

  v7 = [objc_opt_self() cdEntityName];
  v8 = sub_21DBFA16C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21DBFC64C();
  }

  return v12 & 1;
}

uint64_t sub_21D803BC4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21D830500(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21D804E5C(v6);
  return sub_21DBFBFFC();
}

unint64_t TTRListShareeContextProtocol.sortedSharees.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  v2 = sub_21DBF8E0C();
  v5 = sub_21D2FB25C(v3, v2);
  sub_21D803BC4(&v5);

  return v5;
}

uint64_t TTRListShareeContextProtocol.assignableSharees.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v3 = v2;
  v11 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 status] == 1)
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  return v9;
}

unint64_t TTRListShareeContextProtocol.sortedAssignableSharees.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(a1);
  v2 = sub_21DBF8E0C();
  v5 = sub_21D2FB25C(v3, v2);
  sub_21D803BC4(&v5);

  return v5;
}

void *sub_21D803EDC(uint64_t a1, uint64_t a2)
{
  v27 = sub_21DBF56BC();
  v4 = *(v27 - 8);
  v5 = MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 + 8) + 96))(v31, a1, v5);
  v8 = v32;
  if (v32)
  {
    v9 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v26 = (*(a2 + 16))(a1, a2);
    v28 = v11;
    if (v11)
    {
      if (v10 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v13 = 0;
        v24 = v10 & 0xFFFFFFFFFFFFFF8;
        v25 = v10 & 0xC000000000000001;
        v14 = (v4 + 8);
        while (1)
        {
          if (v25)
          {
            v15 = MEMORY[0x223D44740](v13, v10);
          }

          else
          {
            if (v13 >= *(v24 + 16))
            {
              goto LABEL_17;
            }

            v15 = *(v10 + 8 * v13 + 32);
          }

          v16 = v15;
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v17 = [v15 objectID];
          v18 = [v17 uuid];

          sub_21DBF568C();
          v19 = sub_21DBF565C();
          v21 = v20;
          (*v14)(v7, v27);
          v31[0] = v19;
          v31[1] = v21;
          v29 = v26;
          v30 = v28;
          sub_21D176F0C();
          v22 = sub_21DBFBB7C();

          if (!v22)
          {

            return v16;
          }

          ++v13;
          if (v4 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
    }
  }

  else
  {
    sub_21D0CF7E0(v31, &qword_27CE62630, &qword_21DC187E0);
  }

  return 0;
}

uint64_t sub_21D8041CC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_21D0CF7E0(v5, qword_27CE61F88, &qword_21DC2AE18);
  }

  return v2;
}

uint64_t sub_21D804280(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_21D0CF7E0(v5, qword_27CE61F88, &qword_21DC2AE18);
  }

  return v2;
}

id sub_21D804330@<X0>(void *a1@<X8>)
{
  result = [*v1 customContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F80, 0x277D44808);
    v5 = &off_282ED41A0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D8043E4@<X0>(void *a1@<X8>)
{
  result = [*v1 customContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F78, 0x277D44810);
    v5 = &off_282ED41C0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMList.ttrShareeContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 shareeContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D177C8, 0x277D446B8);
    v5 = &protocol witness table for REMListShareeContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMList.ttrSectionContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 sectionContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F70, 0x277D446A8);
    v5 = &protocol witness table for REMListSectionContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMList.ttrGroceryContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 groceryContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &unk_280D0C250, 0x277D44688);
    v5 = &protocol witness table for REMListGroceryContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804610@<X0>(void *a1@<X8>)
{
  result = [*v1 shareeContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D177C8, 0x277D446B8);
    v5 = &protocol witness table for REMListShareeContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804684@<X0>(void *a1@<X8>)
{
  result = [*v1 sectionContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F70, 0x277D446A8);
    v5 = &protocol witness table for REMListSectionContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D8046F8@<X0>(void *a1@<X8>)
{
  result = [*v1 groceryContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &unk_280D0C250, 0x277D44688);
    v5 = &protocol witness table for REMListGroceryContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804770()
{
  v1 = [v0 appearanceContext];
  v2 = [v1 badge];

  return v2;
}

uint64_t REMListChangeItem.ttrShareeContext.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 accountCapabilities];
  v4 = [v3 supportsListSharees];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_];
    result = sub_21D0D8CF0(0, &qword_280D176F0, 0x277D446C0);
    v7 = &protocol witness table for REMListShareeContextChangeItem;
  }

  else
  {
    result = 0;
    v7 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = result;
  a1[4] = v7;
  *a1 = v5;
  return result;
}

id REMListChangeItem.ttrSectionContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 sectionsContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE59228, 0x277D446B0);
    v5 = &protocol witness table for REMListSectionContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMListChangeItem.ttrGroceryContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 groceryContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C220, 0x277D44690);
    v5 = &protocol witness table for REMListGroceryContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804968()
{
  v1 = [*v0 appearanceContext];
  v2 = [v1 badge];

  return v2;
}

uint64_t sub_21D8049D8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 accountCapabilities];
  v5 = [v4 supportsListSharees];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_];
    result = sub_21D0D8CF0(0, &qword_280D176F0, 0x277D446C0);
    v8 = &protocol witness table for REMListShareeContextChangeItem;
  }

  else
  {
    result = 0;
    v8 = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = result;
  a1[4] = v8;
  *a1 = v6;
  return result;
}

id sub_21D804A94@<X0>(void *a1@<X8>)
{
  result = [*v1 sectionsContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE59228, 0x277D446B0);
    v5 = &protocol witness table for REMListSectionContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804B08@<X0>(void *a1@<X8>)
{
  result = [*v1 groceryContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C220, 0x277D44690);
    v5 = &protocol witness table for REMListGroceryContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_21D804B7C()
{
  v1 = [*v0 sharees];
  sub_21D0D8CF0(0, &qword_280D17640, 0x277D447E8);
  v2 = sub_21DBFA5EC();

  return v2;
}

uint64_t _sSo21REMListGroceryContextC15RemindersUICoreE03ttrB8LocaleIDSSSgvg_0()
{
  v1 = [v0 groceryLocaleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t sub_21D804C98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();

  return v6;
}

id sub_21D804D38(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v4 *a2];

  return v5;
}

uint64_t sub_21D804DD4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_21DBFA16C();

  return v5;
}

void sub_21D804E5C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21DBFC59C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21D0D8CF0(0, &qword_280D17640, 0x277D447E8);
        v6 = sub_21DBFA69C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21D80505C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21D804F70(0, v2, 1, a1);
  }
}

void sub_21D804F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = sub_21DBFB65C();
      v14 = sub_21DBFB65C();

      if (v13 >= v14)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v15;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D80505C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_86:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v9 = sub_21D82E300(v9);
    }

    v91 = *(v9 + 2);
    if (v91 >= 2)
    {
      while (*v6)
      {
        v92 = v9;
        v9 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_21D805684((*v6 + 8 * v93), (*v6 + 8 * *&v92[16 * v91 + 16]), (*v6 + 8 * v94), v8);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v94 < v93)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_21D82E300(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_112;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_21D82E274(v91 - 1);
        v9 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_122;
    }

LABEL_96:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v104 = v7;
      v100 = v9;
      v11 = 8 * v10;
      v12 = (*v6 + 8 * v10);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = *(*v6 + 8 * v8);
      v16 = v14;
      v106 = sub_21DBFB65C();
      v17 = sub_21DBFB65C();

      v98 = v10;
      v18 = (v10 + 2);
      while (1)
      {
        v8 = v104;
        if (v104 == v18)
        {
          break;
        }

        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        v22 = sub_21DBFB65C();
        v23 = sub_21DBFB65C();

        ++v18;
        ++v13;
        if (v106 < v17 == v22 >= v23)
        {
          v8 = (v18 - 1);
          break;
        }
      }

      v9 = v100;
      v6 = a3;
      v10 = v98;
      if (v106 < v17)
      {
        if (v8 < v98)
        {
          goto LABEL_115;
        }

        if (v98 < v8)
        {
          v24 = 8 * v8 - 8;
          v25 = v8;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v27 = *(v28 + v11);
              *(v28 + v11) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v11 += 8;
          }

          while (v26 < v25);
        }
      }
    }

    v29 = v6[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_114;
      }

      if (v8 - v10 < a4)
      {
        v30 = (v10 + a4);
        if (__OFADD__(v10, a4))
        {
          goto LABEL_116;
        }

        if (v30 >= v29)
        {
          v30 = v6[1];
        }

        if (v30 < v10)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v8 != v30)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v8 < v10)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21D210B90(0, *(v9 + 2) + 1, 1, v9);
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v9 = sub_21D210B90((v44 > 1), v45 + 1, 1, v9);
    }

    *(v9 + 2) = v46;
    v47 = &v9[16 * v45];
    *(v47 + 4) = v10;
    *(v47 + 5) = v8;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_123;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v9 + 4);
          v51 = *(v9 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_55:
          if (v53)
          {
            goto LABEL_102;
          }

          v66 = &v9[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_105;
          }

          v72 = &v9[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_109;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v76 = &v9[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_69:
        if (v71)
        {
          goto LABEL_104;
        }

        v79 = &v9[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_107;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_76:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        if (!*v6)
        {
          goto LABEL_120;
        }

        v88 = *&v9[16 * v87 + 32];
        v89 = *&v9[16 * v49 + 40];
        sub_21D805684((*v6 + 8 * v88), (*v6 + 8 * *&v9[16 * v49 + 32]), (*v6 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v89 < v88)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_21D82E300(v9);
        }

        if (v87 >= *(v9 + 2))
        {
          goto LABEL_99;
        }

        v90 = &v9[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_21D82E274(v49);
        v46 = *(v9 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v9[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_100;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_101;
      }

      v61 = &v9[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_103;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_106;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_86;
    }
  }

  v101 = v9;
  v102 = v5;
  v31 = *v6;
  v32 = *v6 + 8 * v8 - 8;
  v99 = v10;
  v33 = v10 - v8;
  v105 = v30;
LABEL_28:
  v107 = v8;
  v34 = *(v31 + 8 * v8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = sub_21DBFB65C();
    v41 = sub_21DBFB65C();

    if (v40 >= v41)
    {
LABEL_27:
      v8 = (v107 + 1);
      v32 += 8;
      --v33;
      if (v107 + 1 != v105)
      {
        goto LABEL_28;
      }

      v8 = v105;
      v9 = v101;
      v5 = v102;
      v6 = a3;
      v10 = v99;
      goto LABEL_35;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

uint64_t sub_21D805684(char *__src, void **a2, id *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v38 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v15 = v5;
      goto LABEL_36;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v18 = *v14;
      v19 = *v12;
      v20 = v18;
      v21 = sub_21DBFB65C();
      v22 = sub_21DBFB65C();

      if (v21 < v22)
      {
        break;
      }

      v16 = v14;
      v17 = v5 == v14++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 8;
      if (v14 >= v38)
      {
        goto LABEL_10;
      }
    }

    v16 = v12;
    v17 = v5 == v12++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v5 = *v16;
    goto LABEL_13;
  }

  v14 = a4;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v23 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v23;
  }

  v15 = a2;
  v38 = &v14[v11];
  if (v9 >= 8 && a2 > v5)
  {
    v36 = v5;
LABEL_25:
    __dst = v15;
    v24 = v15 - 1;
    --v4;
    v25 = v38;
    do
    {
      v26 = v14;
      v27 = v4 + 1;
      v28 = *(v25 - 1);
      v25 -= 8;
      v29 = v24;
      v30 = *v24;
      v31 = v28;
      v32 = v30;
      v33 = sub_21DBFB65C();
      v34 = sub_21DBFB65C();

      if (v33 < v34)
      {
        if (v27 != __dst)
        {
          *v4 = *v29;
        }

        v14 = v26;
        if (v38 <= v26 || (v15 = v29, v29 <= v36))
        {
          v15 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v27 != v38)
      {
        *v4 = *v25;
      }

      --v4;
      v38 = v25;
      v14 = v26;
      v24 = v29;
    }

    while (v25 > v26);
    v38 = v25;
    v15 = __dst;
  }

LABEL_36:
  if (v15 != v14 || v15 >= (v14 + ((v38 - v14 + (v38 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v14, 8 * ((v38 - v14) / 8));
  }

  return 1;
}

id TTRShowCustomSmartListTemplateContext.sourceListForSavingAsTemplate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 1;
  return v2;
}

uint64_t TTRShowCustomSmartListTemplateContext.__allocating_init(customSmartList:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRShowCustomSmartListTemplateContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D805C04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 1;
  return v2;
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(reminder:forEvaluatingAgainst:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v115 - v8;
  MEMORY[0x28223BE20](v9);
  v131 = &v115 - v10;
  v11 = sub_21DBF7F4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v15 - 8);
  v121 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = &v115 - v18;
  MEMORY[0x28223BE20](v19);
  v130 = &v115 - v20;
  MEMORY[0x28223BE20](v21);
  v132 = &v115 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v115 - v24;
  MEMORY[0x28223BE20](v26);
  v128 = &v115 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v115 - v29;
  v31 = sub_21DBF56BC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v124 = v30;
  v33(v30, 1, 1, v31);
  sub_21DBF7F0C();
  v134 = a2;
  LOBYTE(v30) = sub_21D1E3158(v14, a2);
  v35 = *(v12 + 8);
  v35(v14, v11);
  v126 = v12 + 8;
  v127 = v25;
  v133 = v35;
  if (v30)
  {
    v36 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v36);
    v38 = (*(v37 + 8))(v36, v37);
    v39 = [v38 uuid];

    v40 = v128;
    sub_21DBF568C();

    v41 = v11;
    v42 = v124;
    sub_21D0CF7E0(v124, &qword_27CE58370, &unk_21DC091F0);
    v33(v40, 0, 1, v31);
    v43 = v40;
    v44 = v42;
    v11 = v41;
    v25 = v127;
    v35 = v133;
    sub_21D0D523C(v43, v44, &qword_27CE58370, &unk_21DC091F0);
  }

  v125 = v34;
  v33(v25, 1, 1, v31);
  sub_21DBF7EDC();
  v45 = sub_21D1E3158(v14, v134);
  v35(v14, v11);
  if (v45)
  {
    v46 = a1[3];
    v47 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v46);
    (*(v47 + 184))(v135, v46, v47);
    v48 = v136;
    if (v136)
    {
      v49 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v50 = (*(v49 + 8))(v48, v49);
      v51 = [v50 uuid];

      v52 = v132;
      sub_21DBF568C();

      v25 = v127;
      sub_21D0CF7E0(v127, &qword_27CE58370, &unk_21DC091F0);
      v33(v52, 0, 1, v31);
      __swift_destroy_boxed_opaque_existential_0(v135);
    }

    else
    {
      v25 = v127;
      sub_21D0CF7E0(v127, &qword_27CE58370, &unk_21DC091F0);
      sub_21D0CF7E0(v135, &qword_27CE59DC0, &qword_21DC0FBF0);
      v52 = v132;
      v33(v132, 1, 1, v31);
    }

    sub_21D0D523C(v52, v25, &qword_27CE58370, &unk_21DC091F0);
    v35 = v133;
  }

  v33(v130, 1, 1, v31);
  sub_21DBF7EEC();
  v53 = sub_21D1E3158(v14, v134);
  v132 = v11;
  v35(v14, v11);
  if (v53)
  {
    v54 = a1[3];
    v55 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v54);
    v56 = (*(v55 + 16))(v54, v55);
    v57 = [v56 uuid];

    v58 = v25;
    v59 = v128;
    sub_21DBF568C();

    v60 = v130;
    sub_21D0CF7E0(v130, &qword_27CE58370, &unk_21DC091F0);
    v33(v59, 0, 1, v31);
    v61 = v59;
    v25 = v58;
    v62 = v60;
    v35 = v133;
    sub_21D0D523C(v61, v62, &qword_27CE58370, &unk_21DC091F0);
  }

  v63 = sub_21DBF563C();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v66 = v64 + 56;
  v65(v131, 1, 1, v63);
  sub_21DBF7ECC();
  v67 = sub_21D1E3158(v14, v134);
  v35(v14, v132);
  v129 = a1;
  if (v67 & 1) != 0 || (sub_21DBF7F3C(), v68 = sub_21D1E3158(v14, v134), v35(v14, v132), (v68))
  {
    v117 = v66;
    v118 = v65;
    v125 = v63;
    v70 = a1[3];
    v69 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v70);
    v71 = *(v69 + 104);
    v72 = v71(v70, v69);
    v116 = v71;
    if (v72)
    {
      v73 = v72;
      v74 = [v72 date];

      v75 = v119;
      sub_21DBF55FC();

      v76 = 0;
    }

    else
    {
      v76 = 1;
      v75 = v119;
    }

    v77 = v131;
    sub_21D0CF7E0(v131, &qword_27CE58D68, &unk_21DC0C060);
    v118(v75, v76, 1, v125);
    sub_21D0D523C(v75, v77, &qword_27CE58D68, &unk_21DC0C060);
    v78 = v116;
    v79 = v116(v70, v69);
    if (v79)
    {
      v80 = v79;
      LODWORD(v125) = [v79 isAllDay];
    }

    else
    {
      LODWORD(v125) = 2;
    }

    v25 = v127;
    v81 = v132;
    v82 = v78(v70, v69);
    if (v82)
    {
      v83 = v82;
      v119 = [v82 floatingDateSecondsFromGMT];

      LODWORD(v118) = 0;
    }

    else
    {
      v119 = 0;
      LODWORD(v118) = 1;
    }

    a1 = v129;
    v35 = v133;
  }

  else
  {
    v119 = 0;
    LODWORD(v125) = 2;
    LODWORD(v118) = 1;
    v81 = v132;
  }

  sub_21DBF7F1C();
  v84 = sub_21D1E3158(v14, v134);
  v35(v14, v81);
  if (v84)
  {
    v85 = a1[3];
    v86 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v85);
    v87 = (*(v86 + 80))(v85, v86);
    if (v87)
    {
      v88 = v87;
      if (v87 >> 62)
      {
        v89 = sub_21DBFBD7C();
        if (v89)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v89)
        {
LABEL_27:
          v135[0] = MEMORY[0x277D84F90];
          result = sub_21DBFC01C();
          if (v89 < 0)
          {
            __break(1u);
            return result;
          }

          v91 = 0;
          do
          {
            if ((v88 & 0xC000000000000001) != 0)
            {
              v92 = MEMORY[0x223D44740](v91, v88);
            }

            else
            {
              v92 = *(v88 + 8 * v91 + 32);
            }

            v93 = v92;
            ++v91;
            v94 = [v92 trigger];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v89 != v91);

          v117 = v135[0];
          a1 = v129;
          v25 = v127;
          goto LABEL_38;
        }
      }

      v117 = MEMORY[0x277D84F90];
    }

    else
    {
      v117 = 0;
    }

LABEL_38:
    v81 = v132;
    v35 = v133;
    goto LABEL_39;
  }

  v117 = 0;
LABEL_39:
  sub_21DBF7EBC();
  v95 = sub_21D1E3158(v14, v134);
  v35(v14, v81);
  LODWORD(v132) = v95;
  if (v95)
  {
    v96 = v25;
    v97 = a1[3];
    v98 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v97);
    v99 = *(v98 + 88);
    v100 = v97;
    v35 = v133;
    v101 = v98;
    v25 = v96;
    v99(v100, v101);
    v127 = REMReminderPriorityLevelForPriority();
  }

  else
  {
    v127 = 0;
  }

  sub_21DBF7EFC();
  v102 = sub_21D1E3158(v14, v134);
  v35(v14, v81);
  if (v102)
  {
    v103 = v25;
    v104 = a1[3];
    v105 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v104);
    (*(v105 + 200))(v135, v104, v105);
    v106 = v136;
    if (v136)
    {
      v107 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      LOBYTE(v126) = (*(v107 + 16))(v106, v107) & 1;
      LODWORD(v126) = v126;
      __swift_destroy_boxed_opaque_existential_0(v135);
    }

    else
    {
      sub_21D0CF7E0(v135, &qword_27CE5D100, &unk_21DC25DD0);
      LODWORD(v126) = 2;
    }

    v25 = v103;
    v35 = v133;
  }

  else
  {
    LODWORD(v126) = 2;
  }

  sub_21DBF7F2C();
  v108 = sub_21D1E3158(v14, v134);

  v35(v14, v81);
  if (v108)
  {
    v109 = v129[3];
    v110 = v129[4];
    __swift_project_boxed_opaque_existential_1(v129, v109);
    v111 = (*(v110 + 64))(v109, v110) & 1;
  }

  else
  {
    v111 = 2;
  }

  LODWORD(v134) = v111;
  v112 = v124;
  sub_21D0D3954(v124, v128, &qword_27CE58370, &unk_21DC091F0);
  sub_21D0D3954(v25, v120, &qword_27CE58370, &unk_21DC091F0);
  v113 = v130;
  sub_21D0D3954(v130, v121, &qword_27CE58370, &unk_21DC091F0);
  v114 = v131;
  sub_21D0D3954(v131, v122, &qword_27CE58D68, &unk_21DC0C060);
  sub_21DBF7EAC();
  sub_21D0CF7E0(v114, &qword_27CE58D68, &unk_21DC0C060);
  sub_21D0CF7E0(v113, &qword_27CE58370, &unk_21DC091F0);
  sub_21D0CF7E0(v25, &qword_27CE58370, &unk_21DC091F0);
  sub_21D0CF7E0(v112, &qword_27CE58370, &unk_21DC091F0);
  return __swift_destroy_boxed_opaque_existential_0(v129);
}

uint64_t sub_21D806A14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_21D806ACC(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  sub_21D807088(&v11 - v6);
  (*(*((v3 & v2) + 0x58) + 8))(v4);
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
  }

  return v9 != 0;
}

uint64_t sub_21D806BF0(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v47 = (*MEMORY[0x277D85000] & *v2);
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_21DBFB95C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB97C();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_21D3032C8(v17);
  }

  v42 = v14;
  v43 = v19;
  v44 = v18;
  v45 = a1;
  (*(v19 + 32))(v21, v17, v18);
  sub_21D807088(v11);
  v23 = v47[11];
  v41 = *(v23 + 8);
  v41(v6, v23);
  v47 = v24;
  v25 = v46;
  v26 = *(v7 + 8);
  v26(v11, v6);
  sub_21DBFB92C();
  v47 = v2;
  sub_21D807088(v25);
  v41(v6, v23);
  v28 = v27;
  v26(v25, v6);
  if (v28)
  {
    v29 = sub_21DBFA12C();
  }

  else
  {
    v29 = 0;
  }

  v30 = v45;
  v31 = MEMORY[0x277D85000];
  [v45 setAccessibilityValue_];

  v32 = v47;
  v33 = (*((*v31 & *v47) + 0x80))();
  v35 = v43;
  v34 = v44;
  if ((v33 & 1) == 0)
  {
    v36 = [objc_opt_self() secondaryLabelColor];
  }

  sub_21DBFB89C();
  v37 = v42;
  (*(v35 + 16))(v42, v21, v34);
  (*(v35 + 56))(v37, 0, 1, v34);
  v38 = sub_21DBFB98C();
  if (sub_21D8071F0(v38))
  {
    LODWORD(v39) = *(v32 + *((*v31 & *v32) + 0x70));
  }

  else
  {
    LODWORD(v39) = 1148846080;
  }

  [v30 setContentCompressionResistancePriority:0 forAxis:v39];
  return (*(v35 + 8))(v21, v34);
}

uint64_t sub_21D807088@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

void (*sub_21D80713C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D8071BC;
}

void sub_21D8071BC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_21D807330();
  }
}

BOOL sub_21D8071F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - v6;
  sub_21D807088(&v13 - v6);
  v8 = (*(*((v3 & v2) + 0x58) + 8))(v4);
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (!v10)
  {
    return 0;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 != 0;
}

void sub_21D807330()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  sub_21D806BF0(v1);
}

id sub_21D8073D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRIReminderCellQuickBarMenuButtonViewController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_21D807444(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  swift_unknownObjectRelease();
  v3 = *&a1[*((*v2 & *a1) + 0x78)];
}

id sub_21D807534()
{
  v0 = sub_21D807674();

  return v0;
}

uint64_t sub_21D80756C(uint64_t a1, uint64_t a2)
{
  sub_21D8076A0(a1);
  v4 = *(*(*(a2 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_21D8075D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21D80713C(v2);
  return sub_21D25A3E8;
}

id sub_21D807648()
{
  v0 = sub_21D807674();

  return v0;
}

void sub_21D8076A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  sub_21D807330();
}

void *TTRDeferredAction.__allocating_init(queue:)(uint64_t a1)
{
  v2 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v2);
  v3 = swift_allocObject();
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0D8A50(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v3[5] = sub_21DBF5EEC();
  v3[6] = v4;
  v3[4] = a1;
  return v3;
}

Swift::Void __swiftcall TTRDeferredAction.scheduleNextRunLoop(reason:)(Swift::String reason)
{
  v2 = v1;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = *(v2 + 40);
  v18 = v2;
  v19 = countAndFlagsBits;
  v20 = object;
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v21 == 1)
  {
    v16 = *(v2 + 32);
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_21D808210;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_91;
    v13 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v21 = MEMORY[0x277D84F90];
    sub_21D0D8A50(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v11, v8, v13);
    _Block_release(v13);
    (*(v6 + 8))(v8, v5);
    (*(v17 + 8))(v11, v15);
  }
}

uint64_t TTRDeferredAction.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRDeferredAction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

void *TTRDeferredAction.init(queue:)(uint64_t a1)
{
  v3 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v3);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0D8A50(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v1[5] = sub_21DBF5EEC();
  v1[6] = v4;
  v1[4] = a1;
  return v1;
}

uint64_t sub_21D807F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(v8 + 2);
  swift_beginAccess();
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_21D210A84(0, v9 + 1, 1, v8);
    *(a1 + 48) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_21D210A84((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  *(a1 + 48) = v8;
  result = swift_endAccess();
  *a4 = v9 == 0;
  return result;
}

double sub_21D80804C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_21DBF5EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21DBF814C();

    if (*(v9 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
      v6 = sub_21DBFA07C();
      v8 = v7;

      (*(v4 + 8))(v3, v6, v8, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t TTRDeferredAction.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRDeferredAction.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

void _s15RemindersUICore17TTRDeferredActionC5drain6reasonySS_tF_0()
{
  v1 = v0;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[4];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_21DBF9DAC();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v16 = v1[5];
    sub_21DBF5EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21DBF814C();

    v9 = v15;
    if (*(v15 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v10 = v1[3];
      ObjectType = swift_getObjectType();
      v16 = v9;
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
      v12 = sub_21DBFA07C();
      v14 = v13;

      (*(v10 + 8))(v1, v12, v14, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D808544(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 48);
  *(v1 + 48) = MEMORY[0x277D84F90];
}

uint64_t sub_21D808598()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62010);
  v1 = __swift_project_value_buffer(v0, qword_27CE62010);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_21D808660(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  v5 = type metadata accessor for TTRReminderDetailViewModel(0);
  result = (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController] = 0;
  v7 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_preferredContentSizeUpdater] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_firstViewDidAppearCalled] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_prefersHalfPageSheetPresentation] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_textSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personUnsetDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___pickersSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtaskSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentsGroup] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_urlSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___organizationSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flagAndPrioritySection] = 0;
  if (qword_280D19D68 != -1)
  {
    result = swift_once();
  }

  v8 = *(off_280D19D70 + 2);
  if (v8)
  {
    sub_21D0CEB98(off_280D19D70 + 32 * v8, v20);
    swift_dynamicCast();
    v18 = v21;
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter] = v21;
    v9 = v22;
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_localUndoManager] = v22;
    v10 = &v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration];
    v11 = *&v24[16];
    v12 = v23[3];
    v10[2] = v23[2];
    v10[3] = v12;
    v10[4] = *v24;
    *(v10 + 73) = *&v24[9];
    v13 = v23[1];
    *v10 = v23[0];
    v10[1] = v13;
    v14 = v23[0];
    type metadata accessor for TTRIReminderDetailDueDateViewControllerCapability();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0u;
    *(v15 + 120) = 0u;
    *(v15 + 136) = 0u;
    *(v15 + 152) = 0u;
    *(v15 + 168) = 0u;
    *(v15 + 184) = 0u;
    *(v15 + 200) = 0u;
    *(v15 + 216) = 0;
    *(v15 + 224) = 0x1FFFFFFFCLL;
    *(v15 + 232) = 0u;
    *(v15 + 248) = 0u;
    *(v15 + 264) = 0;
    *(v15 + 40) = v18;
    *(v15 + 48) = &off_282ED50F0;
    *(v15 + 56) = v11;
    *(v15 + 64) = v14;
    *&v1[v7] = v15;
    swift_unknownObjectRetain_n();
    v16 = v9;
    sub_21D81A254(v23, v20);

    v19.receiver = v1;
    v19.super_class = ObjectType;
    result = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
    v17 = result;
    if (!result)
    {
      sub_21D81A2B0(&v21);

      return v17;
    }

    if (*&result[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability])
    {

      sub_21D81A2B0(&v21);
      swift_unknownObjectWeakAssign();

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21D808B50()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = sub_21DBFA12C();
  [v3 setAccessibilityIdentifier_];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  [result setEditing_];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTableHeaderView_];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  [result setKeyboardDismissMode_];

  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration];
  if (v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 88] != 1)
  {
LABEL_9:
    sub_21D808DEC();
    v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] = v9[64];
    type metadata accessor for TTRICurrentTextInputModeObserver();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    swift_allocObject();
    *(v12 + 24) = sub_21DBF907C();
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver] = v12;

    v13 = *(*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper);

    sub_21D8442C8(v14, v13);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    type metadata accessor for TTRIPreferredContentSizeUpdater();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 24) = v10;
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_preferredContentSizeUpdater] = v11;

    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21D808DEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - v4;
  v6 = v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 24];
  v7 = v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 25];
  v8 = *&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 32];
  v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 40];
  if (*&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 16])
  {
    v10 = sub_21DBFA12C();
    [v1 setTitle_];

    v11 = &selRef_keyboardType;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v22 = *&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
  sub_21D81D608(v5);
  v23 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v23 - 8) + 48))(v5, 1, v23) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE62270, &unk_21DC2B5E0);
    v24 = 0;
  }

  else
  {
    v24 = v5[*(v23 + 40)];
    sub_21D819F20(v5, type metadata accessor for TTRReminderDetailViewModel);
  }

  _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO21assignmentPickerTitle9withCount14isForGroceriesSSSi_SbtFZ_0(*(v22 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_itemCount), v24);
  v25 = sub_21DBFA12C();

  [v1 setTitle_];

  v11 = &selRef_keyboardType;
  if (v6)
  {
LABEL_3:
    v12 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel_];
    v13 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton;
    v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton];
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton] = v12;

    v15 = [v1 v11[417]];
    v16 = *&v1[v13];
    [v15 setLeftBarButtonItem_];
  }

LABEL_4:
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
    v26[3] = ObjectType;
    v26[0] = v1;
    sub_21DBF8E0C();
    v17 = v1;
    v18 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)(v8, v9, v26, sel_didTapCommit_);
    v19 = *&v17[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton];
    *&v17[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton] = v18;
    v20 = v18;

    v21 = [v17 v11[417]];
    [v21 setRightBarButtonItem_];
  }
}

void sub_21D809134(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRReminderDetailViewModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = aBlock - v14;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewWillAppear_, a1 & 1, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_21D8178CC(Strong, a1 & 1, v2);

    sub_21D81D608(v15);
    v18 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
    swift_beginAccess();
    sub_21D0F02F4(v15, &v2[v18], &qword_27CE62270, &unk_21DC2B5E0);
    swift_endAccess();
    sub_21D0D3954(&v2[v18], v11, &qword_27CE62270, &unk_21DC2B5E0);
    if ((*(v6 + 48))(v11, 1, v5) == 1)
    {
      sub_21D0CF7E0(v11, &qword_27CE62270, &unk_21DC2B5E0);
    }

    else
    {
      sub_21D819EB0(v11, v8, type metadata accessor for TTRReminderDetailViewModel);
      if (!*&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController])
      {
        sub_21D809510(v8);
      }

      v19 = *&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton];
      if (v19)
      {
        [v19 setEnabled_];
      }

      sub_21D819F20(v8, type metadata accessor for TTRReminderDetailViewModel);
    }

    sub_21DA94AA8();
    if (*&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver])
    {

      TTRICurrentTextInputModeObserver.startObserving()();
    }

    v20 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance;
    if (v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] == 1)
    {
      v21 = [v2 transitionCoordinator];
      if (v21)
      {
        v22 = v21;
        if ([v21 isAnimated])
        {
          v2[v20] = 0;
          v23 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_21D819EA8;
          aBlock[5] = v23;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21D83EFE8;
          aBlock[3] = &block_descriptor_44_2;
          v24 = _Block_copy(aBlock);

          [v22 animateAlongsideTransition:v24 completion:0];
          _Block_release(v24);
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D809510(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController))
  {
    v90 = a1;
    v91 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 56) & 0x81;
    v92 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController;
    v93 = (v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
    v94 = v5;
    v107 = 0uLL;
    memset(v108, 0, sizeof(v108));
    v105 = 0uLL;
    v106 = 0uLL;
    v103 = 0uLL;
    memset(v104, 0, sizeof(v104));
    v101 = 0uLL;
    v102 = 0uLL;
    if (v11 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21DC08D20;
      *(v12 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C);
      *(v12 + 40) = &protocol witness table for TTRITableCell<A>;
      *(v12 + 48) = sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4);
      *(v12 + 56) = &protocol witness table for TTRITableCell<A>;
      type metadata accessor for TTRITableSection();
      v13 = swift_allocObject();
      *(v13 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v13 + 200) = 0;
      *(v13 + 208) = 0;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 89) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 169) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 216) = 1;
      swift_beginAccess();
      sub_21D0F02F4(&v105, v13 + 32, &qword_27CE5E690, &unk_21DC103B0);
      swift_endAccess();
      swift_beginAccess();
      sub_21D0F02F4(&v101, v13 + 112, &qword_27CE5E690, &unk_21DC103B0);
      swift_endAccess();
      *(v13 + 192) = v12;
      v107 = 0u;
      memset(v108, 0, sizeof(v108));
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      memset(v104, 0, sizeof(v104));
      v101 = 0u;
      v102 = 0u;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_21DC08D00;

      *(v14 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC);
      *(v14 + 40) = &protocol witness table for TTRITableCell<A>;
      v15 = swift_allocObject();
      *(v15 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v15 + 200) = 0;
      *(v15 + 208) = 0;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 80) = 0u;
      *(v15 + 89) = 0u;
      *(v15 + 32) = 0u;
      *(v15 + 128) = 0u;
      *(v15 + 144) = 0u;
      *(v15 + 160) = 0u;
      *(v15 + 169) = 0u;
      *(v15 + 112) = 0u;
      *(v15 + 216) = 1;
      swift_beginAccess();
      sub_21D0F02F4(&v105, v15 + 32, &qword_27CE5E690, &unk_21DC103B0);
      swift_endAccess();
      swift_beginAccess();
      v16 = v13;
      sub_21D0F02F4(&v101, v15 + 112, &qword_27CE5E690, &unk_21DC103B0);
      swift_endAccess();
      v96 = v15;
      *(v15 + 192) = v14;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21DC08D10;
      *(v17 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C);
      *(v17 + 40) = &protocol witness table for TTRITableCell<A>;
      *(v17 + 48) = sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4);
      *(v17 + 56) = &protocol witness table for TTRITableCell<A>;
      *(v17 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC);
      *(v17 + 72) = &protocol witness table for TTRITableCell<A>;
      type metadata accessor for TTRITableSection();
      v16 = swift_allocObject();
      *(v16 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v16 + 200) = 0;
      *(v16 + 208) = 0;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 89) = 0u;
      *(v16 + 32) = 0u;
      *(v16 + 128) = 0u;
      *(v16 + 144) = 0u;
      *(v16 + 160) = 0u;
      *(v16 + 169) = 0u;
      *(v16 + 112) = 0u;
      *(v16 + 216) = 1;
      swift_beginAccess();
      sub_21D0F02F4(&v105, v16 + 32, &qword_27CE5E690, &unk_21DC103B0);
      swift_endAccess();
      swift_beginAccess();
      sub_21D0F02F4(&v101, v16 + 112, &qword_27CE5E690, &unk_21DC103B0);
      swift_endAccess();
      *(v16 + 192) = v17;

      v96 = 0;
    }

    v99[0] = v16;
    v99[1] = &protocol witness table for TTRITableSection;

    v99[2] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14);
    v99[3] = &protocol witness table for TTRITableSection;
    v18 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability;
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability))
    {
      v95 = v16;

      v19 = sub_21D52E3C4();

      v99[4] = v19;
      v99[5] = &protocol witness table for TTRITableSection;
      if (*(v2 + v18))
      {

        v20 = sub_21D52E6EC();

        v21 = 0;
        v99[6] = v20;
        v99[7] = &protocol witness table for TTRITableSection;
        v22 = MEMORY[0x277D84F90];
LABEL_14:
        v23 = 4;
        if (v21 > 4)
        {
          v23 = v21;
        }

        v24 = v23 + 1;
        v25 = &v99[2 * v21];
        while (v21 != 4)
        {
          if (v24 == ++v21)
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v26 = v25 + 2;
          v27 = *v25;
          v25 += 2;
          if (v27)
          {
            v28 = *(v26 - 1);
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_21D214B74(0, v22[2] + 1, 1, v22);
            }

            v30 = v22[2];
            v29 = v22[3];
            if (v30 >= v29 >> 1)
            {
              v22 = sub_21D214B74((v29 > 1), v30 + 1, 1, v22);
            }

            v22[2] = v30 + 1;
            v31 = &v22[2 * v30];
            v31[4] = v27;
            v31[5] = v28;
            goto LABEL_14;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62278, &qword_21DC2B1E0);
        swift_arrayDestroy();
        v100 = v22;
        if (*v93)
        {
          v97[0] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___organizationSection, sub_21D811E88);
          v97[1] = &protocol witness table for TTRITableSection;
          v97[2] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flagAndPrioritySection, sub_21D8121EC);
          v97[3] = &protocol witness table for TTRITableSection;
          v97[4] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
          v97[5] = &protocol witness table for TTRITableSection;
          v97[6] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection, sub_21D80D35C);
          v97[7] = &protocol witness table for TTRITableSection;
          v97[8] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
          v97[9] = &protocol witness table for TTRITableSection;
          v97[10] = sub_21D810A64();
          v97[11] = &protocol witness table for TTRITableSection;
          if (v96)
          {
            v32 = &protocol witness table for TTRITableSection;
          }

          else
          {
            v32 = 0;
          }

          v97[12] = v96;
          v97[13] = v32;

          v33 = 0;
          v34 = MEMORY[0x277D84F90];
LABEL_30:
          v35 = 7;
          if (v33 > 7)
          {
            v35 = v33;
          }

          v36 = v35 + 1;
          v37 = &v97[2 * v33];
          while (v33 != 7)
          {
            if (v36 == ++v33)
            {
              goto LABEL_61;
            }

            v38 = v37 + 2;
            v39 = *v37;
            v37 += 2;
            if (v39)
            {
              v40 = *(v38 - 1);
              swift_unknownObjectRetain();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_21D214B74(0, v34[2] + 1, 1, v34);
              }

              v42 = v34[2];
              v41 = v34[3];
              if (v42 >= v41 >> 1)
              {
                v34 = sub_21D214B74((v41 > 1), v42 + 1, 1, v34);
              }

              v34[2] = v42 + 1;
              v43 = &v34[2 * v42];
              v43[4] = v39;
              v43[5] = v40;
              goto LABEL_30;
            }
          }
        }

        else
        {
          v98[0] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
          v98[1] = &protocol witness table for TTRITableSection;
          v98[2] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
          v98[3] = &protocol witness table for TTRITableSection;
          v98[4] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection, sub_21D80D35C);
          v98[5] = &protocol witness table for TTRITableSection;
          v98[6] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
          v98[7] = &protocol witness table for TTRITableSection;
          v98[8] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
          v98[9] = &protocol witness table for TTRITableSection;
          v98[10] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___pickersSection, sub_21D80EC88);
          v98[11] = &protocol witness table for TTRITableSection;
          v98[12] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtaskSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
          v98[13] = &protocol witness table for TTRITableSection;
          v98[14] = sub_21D810A64();
          v98[15] = &protocol witness table for TTRITableSection;
          if (v96)
          {
            v44 = &protocol witness table for TTRITableSection;
          }

          else
          {
            v44 = 0;
          }

          v98[16] = v96;
          v98[17] = v44;

          v45 = 0;
          v34 = MEMORY[0x277D84F90];
LABEL_45:
          v46 = 9;
          if (v45 > 9)
          {
            v46 = v45;
          }

          v47 = v46 + 1;
          v48 = &v98[2 * v45];
          while (v45 != 9)
          {
            if (v47 == ++v45)
            {
              goto LABEL_62;
            }

            v49 = v48 + 2;
            v50 = *v48;
            v48 += 2;
            if (v50)
            {
              v51 = *(v49 - 1);
              swift_unknownObjectRetain();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_21D214B74(0, v34[2] + 1, 1, v34);
              }

              v53 = v34[2];
              v52 = v34[3];
              if (v53 >= v52 >> 1)
              {
                v34 = sub_21D214B74((v52 > 1), v53 + 1, 1, v34);
              }

              v34[2] = v53 + 1;
              v54 = &v34[2 * v53];
              v54[4] = v50;
              v54[5] = v51;
              goto LABEL_45;
            }
          }
        }

        swift_arrayDestroy();
        sub_21D563434(v34);
        v55 = v96;
        *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_textSection) = v95;

        v56 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_urlSection;
        swift_beginAccess();
        *(v2 + v56) = v55;

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v58 = Strong;
          v59 = v100;
          sub_21DBF8E0C();
          v60 = sub_21D5E8D34(v58, v59, 0, 0);
          v61 = &v60[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_customSectionSpacing];
          swift_beginAccess();
          *v61 = 0x4030000000000000;
          v61[8] = 0;
          v62 = *(v2 + v92);
          *(v2 + v92) = v60;
          v63 = v60;

          v64 = swift_unknownObjectWeakLoadStrong();
          if (!v64)
          {
            goto LABEL_67;
          }

          v65 = v64;
          [v64 setDataSource_];

          v66 = swift_unknownObjectWeakLoadStrong();
          if (v66)
          {
            v67 = v66;

            [v67 setDelegate_];

            LOBYTE(v105) = 2;
            MEMORY[0x28223BE20](v68);
            v69 = v90;
            *(&v87 - 2) = v2;
            *(&v87 - 1) = v69;
            TTRITableDataController.performBatchUpdates(by:updates:)(&v105, sub_21D819F18);
            v90 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

            v70 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
            v71 = *(v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellTitleModule);
            v72 = v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor;
            v73 = *(v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
            ObjectType = swift_getObjectType();
            v75 = (*(v73 + 16))(ObjectType, v73);
            v76 = [v75 objectID];

            v92 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
            v77 = *(v92 + 20);
            v78 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v79 = *(v78 - 8);
            v88 = *(v79 + 56);
            v89 = v79 + 56;
            v93 = v63;
            v80 = v91;
            v88(&v91[v77], 1, 1, v78);
            *v80 = v76;
            swift_storeEnumTagMultiPayload();
            v71(&v105, v80, v70, &off_282ED4FB8, v2, &off_282ED4718, v2);
            sub_21D819F20(v80, type metadata accessor for TTRRemindersListViewModel.Item);
            v81 = v90;
            TTRIReminderTitleCellContent.titleModule.setter(&v105);

            v82 = *(sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4) + 32);

            v90 = *(v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellNotesModule);
            v83 = *(v72 + 8);
            v84 = swift_getObjectType();
            v85 = (*(v83 + 16))(v84, v83);
            v86 = [v85 objectID];

            v88(&v80[*(v92 + 20)], 1, 1, v78);
            *v80 = v86;
            swift_storeEnumTagMultiPayload();
            (v90)(&v105, v80, v70, &off_282ED4FB8, v2, &off_282ED4708, v2);
            sub_21D819F20(v80, type metadata accessor for TTRRemindersListViewModel.Item);
            TTRIReminderNotesCellContent.notesModule.setter(&v105);

            return;
          }

          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_66;
  }

  if (qword_27CE56D00 != -1)
  {
LABEL_63:
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE62010);
  v96 = sub_21DBF84AC();
  v8 = sub_21DBFAECC();
  if (os_log_type_enabled(v96, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21D0C9000, v96, v8, "buildSections is called more than once", v9, 2u);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  v10 = v96;
}

void sub_21D80A4E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

    v5 = MEMORY[0x277D85000];
    v6 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
    swift_beginAccess();
    v7 = *(v4 + v6);
    if (v7)
    {
      v8 = *(v7 + qword_27CE63F48);
      v9 = [v8 window];
      [v9 makeKeyWindow];

      [v8 becomeFirstResponder];
      v4 = v8;
    }

    v10 = *(*&v3[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell] + 32);
    v11 = *((*v5 & *v10) + 0x68);
    swift_beginAccess();
    v12 = *(v10 + v11);
    if (v12)
    {
      v13 = *(v12 + qword_27CE63F48);
      v14 = v10;
      v15 = [v13 beginningOfDocument];
      v16 = [v13 endOfDocument];
      v17 = [v13 textRangeFromPosition:v15 toPosition:v16];

      [v13 setSelectedTextRange_];
    }
  }
}

void sub_21D80A7C4(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver];
  if (v4)
  {
    *(v4 + 16) = 0;
  }

  v5 = [v2 viewIfLoaded];
  if (v5)
  {
    v6 = v5;
    v7 = UIView.firstResponderDescendant.getter();

    if (v7)
    {
      [v7 resignFirstResponder];
    }
  }

  [v2 resignFirstResponder];
  if ([v2 isMovingFromParentViewController] && v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 65] == 1)
  {
    v8 = 0;
    sub_21D826274(&v8);
  }

  TTRModuleState.viewWillDisappear()();

  sub_21DA9555C();
}

void sub_21D80A954()
{
  if (v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] == 1)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] = 0;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_21D819E80;
    *(v3 + 24) = v2;
    v7[4] = sub_21D0E6070;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_21D0E6204;
    v7[3] = &block_descriptor_92;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 performWithoutAnimation_];
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_21D80AB90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  if (!*(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState))
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v7 = *(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 16))(ObjectType, v7);
    v10 = [v9 objectID];

    *(inited + 72) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    *(inited + 48) = v10;
    v11 = sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
    sub_21DAEACDC("Reminder Detail Cancel {objectID: %@}", 37, 2, v11);

    v12 = sub_21DBFA89C();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_21DBFA84C();
    swift_unknownObjectRetain();
    v13 = sub_21DBFA83C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    *(v14 + 16) = v13;
    *(v14 + 24) = v15;
    *(v14 + 32) = v4;
    *(v14 + 40) = 1;
    sub_21D1B5178(0, 0, v3, &unk_21DC2B1D8, v14);
  }
}

uint64_t sub_21D80AF6C(uint64_t a1)
{
  v34 = sub_21DBF56BC();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240, &unk_21DC32120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF516C();
  v13 = v12;
  v32 = v11;
  v33 = 0x800000021DC6C9E0;
  v14 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
  v15 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleCellContent(0));
  v17 = (v16 + qword_27CE8EBC8);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v35, "ReminderTitle-");
  HIBYTE(v35[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v2 + 8))(v4, v34);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = v35[0];
  v22 = v35[1];
  v23 = (v16 + qword_27CE63F98);
  *v23 = v32;
  v23[1] = v13;
  *(v16 + qword_27CE63FA0) = v14;
  v24 = (v16 + qword_27CE8EBD0);
  *v24 = 0xD000000000000017;
  v24[1] = v33;
  sub_21D0D3954(v10, v7, &qword_27CE62240, &unk_21DC32120);
  v25 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x68)) = 0;
  *(v16 + *((*v25 & *v16) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v25 & *v16) + 0x90)) = 0;
  sub_21D0D3954(v7, v16 + *((*v25 & *v16) + 0x78), &qword_27CE62240, &unk_21DC32120);
  *(v16 + *((*v25 & *v16) + 0x80)) = 0;
  v26 = (v16 + *((*v25 & *v16) + 0x88));
  *v26 = v21;
  v26[1] = v22;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62248, &qword_21DC2B1A0);
  v36.receiver = v16;
  v36.super_class = v27;
  v28 = objc_msgSendSuper2(&v36, sel_init);
  sub_21D0CF7E0(v7, &qword_27CE62240, &unk_21DC32120);
  sub_21D0CF7E0(v10, &qword_27CE62240, &unk_21DC32120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62250, &qword_21DC2B1A8);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 48) = 1;
  *(v29 + 49) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  *(v29 + 72) = 1;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v30 = v28 + *((*v25 & *v28) + 0x70);
  swift_beginAccess();
  *(v30 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v29;
}

uint64_t sub_21D80B4A4()
{
  v31 = sub_21DBF56BC();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF516C();
  v11 = v10;
  v30 = 0x800000021DC6CA00;
  v12 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = objc_allocWithZone(type metadata accessor for TTRIReminderNotesCellContent(0));
  v14 = (v13 + qword_27CE8EBF0);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v32, "ReminderNotes-");
  HIBYTE(v32[1]) = -18;
  sub_21DBF56AC();
  v15 = sub_21DBF565C();
  v17 = v16;
  (*(v0 + 8))(v2, v31);
  MEMORY[0x223D42AA0](v15, v17);

  v18 = v32[0];
  v19 = v32[1];
  v20 = (v13 + qword_27CE64028);
  *v20 = v9;
  v20[1] = v11;
  v21 = (v13 + qword_27CE8EBF8);
  *v21 = 0xD000000000000016;
  v21[1] = v30;
  *(v13 + qword_27CE64030) = 0;
  sub_21D0D3954(v8, v5, &qword_27CE5E9D0, &unk_21DC1D5F0);
  v22 = MEMORY[0x277D85000];
  *(v13 + *((*MEMORY[0x277D85000] & *v13) + 0x68)) = 0;
  *(v13 + *((*v22 & *v13) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + *((*v22 & *v13) + 0x90)) = 0;
  sub_21D0D3954(v5, v13 + *((*v22 & *v13) + 0x78), &qword_27CE5E9D0, &unk_21DC1D5F0);
  *(v13 + *((*v22 & *v13) + 0x80)) = 0;
  v23 = (v13 + *((*v22 & *v13) + 0x88));
  *v23 = v18;
  v23[1] = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA40, &unk_21DC1D640);
  v33.receiver = v13;
  v33.super_class = v24;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  sub_21D0CF7E0(v5, &qword_27CE5E9D0, &unk_21DC1D5F0);
  sub_21D0CF7E0(v8, &qword_27CE5E9D0, &unk_21DC1D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA48, &unk_21DC2B1B0);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + 48) = 1;
  *(v26 + 49) = 0;
  *(v26 + 56) = 0;
  *(v26 + 64) = 0;
  *(v26 + 72) = 1;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = v25 + *((*v22 & *v25) + 0x70);
  swift_beginAccess();
  *(v27 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v26;
}

uint64_t sub_21D80B9AC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21D80BA14()
{
  v0 = objc_allocWithZone(type metadata accessor for TTRIAppLinkCellContent(0));
  v1 = sub_21D3EC840(0, 0, 0, 0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE5BF98);
  v4 = *(v1 + qword_27CE5BF98);
  v5 = *(v1 + qword_27CE5BF98 + 8);
  *v3 = sub_21D81A228;
  v3[1] = v2;

  sub_21D0D0E88(v4, v5);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v1 + qword_27CE5BFA0);
  v8 = *(v1 + qword_27CE5BFA0);
  v9 = *(v1 + qword_27CE5BFA0 + 8);
  *v7 = sub_21D81A230;
  v7[1] = v6;

  sub_21D0D0E88(v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62378, &qword_21DC2B2C0);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 48) = 1;
  *(v10 + 49) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 32) = v1;
  *(v10 + 40) = 0;
  v11 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v10;
}

void sub_21D80BBE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = UIView.firstResponderDescendant.getter();

      if (v5)
      {
        [v5 resignFirstResponder];
      }
    }

    v6 = *&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
    v7 = qword_27CE56D10;
    swift_unknownObjectRetain();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE62470);
    v9 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Reminder Detail Launch User Activity", 36, 2, v9);

    v10 = *(v6 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 16))(ObjectType, v10);
    v13 = [v12 userActivity];

    if (v13)
    {
      sub_21DBFAFBC();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

char *sub_21D80BD88(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = UIView.firstResponderDescendant.getter();

      if (v5)
      {
        [v5 resignFirstResponder];
      }
    }

    swift_unknownObjectRetain();
    sub_21D822344();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D80BE44()
{
  sub_21D80C18C(&v22);
  v20 = v23;
  v21 = v22;
  v18 = v25;
  v19 = v24;
  v0 = v26;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v41, 0, 24);
  v41[3] = 0x1FFFFFFFELL;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  sub_21D0CF7E0(v41, &unk_27CE5EA00, &unk_21DC0A7C0);
  v22 = v21;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v0;
  v27 = v1;
  v28 = v3;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0xE000000000000000;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v36 = 2;
  v4 = type metadata accessor for TTRIDetailDisclosureCellContent(0);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = objc_allocWithZone(v4);
  v6 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, &v22);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = MEMORY[0x277D85000];
  v11 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x108));
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = sub_21D819FE8;
  v11[1] = v9;
  v14 = v6;

  sub_21D0D0E88(v12, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958, &unk_21DC1A250);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = v14 + *((*v10 & *v14) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

void sub_21D80C18C(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16900 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16908;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

void sub_21D80C280(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0, &unk_21DC1CB70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = UIView.firstResponderDescendant.getter();

      if (v9)
      {
        [v9 resignFirstResponder];
      }
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *((*MEMORY[0x277D85000] & *v10) + 0x68);
      v12 = v10;
      swift_beginAccess();
      v13 = *&v12[v11];
      v14 = v13;
      static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(v13, 3, 0, v26);

      v23 = v26[0];
      v24 = v26[1];
      v25[0] = v27[0];
      *(v25 + 9) = *(v27 + 9);
      v15 = *&v6[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
      __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
      v16 = *(v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
      v17 = *(v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
      v18 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
      swift_beginAccess();
      sub_21D0D3954(v15 + v18, v4, &unk_27CE622B0, &unk_21DC1CB70);
      ObjectType = swift_getObjectType();
      v20 = (*(v17 + 8))(ObjectType, v17);
      v21[0] = v23;
      v21[1] = v24;
      v22[0] = v25[0];
      *(v22 + 9) = *(v25 + 9);
      sub_21D81C504(v16, v17, v4, v15, &off_282ED4F60, v20, v21);

      sub_21D0CF7E0(v4, &unk_27CE622B0, &unk_21DC1CB70);
      sub_21D0CF7E0(&v23, &qword_27CE5D558, &qword_21DC1CB50);
    }
  }
}

uint64_t sub_21D80C538()
{
  sub_21D80C910(v23);
  v20 = v23[1];
  v21 = v23[0];
  v18 = v23[3];
  v19 = v23[2];
  v0 = v24;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v25, 0, 24);
  v25[3] = 0x1FFFFFFFELL;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  sub_21D0CF7E0(v25, &unk_27CE5EA00, &unk_21DC0A7C0);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v21;
  *(v8 + 1) = v20;
  *(v8 + 2) = v19;
  *(v8 + 3) = v18;
  v8[64] = v0;
  *(v8 + 65) = *v29;
  *(v8 + 17) = *&v29[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 119) = 0;
  *(v8 + 123) = 1;
  v8[125] = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v22.receiver = v4;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0, &unk_21DC1A290);
  v10 = objc_msgSendSuper2(&v22, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = sub_21D81A114;
  v12[1] = v11;

  sub_21D0D0E88(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980, &unk_21DC2B210);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  v16 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

id sub_21D80C910@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = [objc_opt_self() ttr_systemBlueColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D80CA14()
{
  v9 = MEMORY[0x277D84F90];
  v10 = 6;
  v11 = 0;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v0 = objc_allocWithZone(type metadata accessor for TTRILocationQuickPickersCellContent(0));
  v1 = TTRILocationQuickPickersCellContent.init(state:)(&v9);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE5BE50);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = sub_21D81A220;
  v3[1] = v2;

  sub_21D0D0E88(v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62370, &qword_21DC2B2B8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 1;
  *(v6 + 49) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 32) = v1;
  *(v6 + 40) = 0;
  v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v7 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v6;
}

void sub_21D80CBA8(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong viewIfLoaded];
    if (v5)
    {
      v6 = v5;
      v7 = UIView.firstResponderDescendant.getter();

      if (v7)
      {
        [v7 resignFirstResponder];
      }
    }

    v8 = v2;
    sub_21D8203C4(&v8);
  }
}

uint64_t sub_21D80CC60()
{
  v0 = objc_allocWithZone(type metadata accessor for TTRILocationCellContent(0));
  v1 = (v0 + qword_27CE65698);
  *v1 = 0;
  v1[1] = 0;
  v2 = MEMORY[0x277D85000];
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68)) = 0;
  *(v0 + *((*v2 & *v0) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v2 & *v0) + 0x90)) = 0;
  v3 = v0 + *((*v2 & *v0) + 0x78);
  *v3 = xmmword_21DC0E710;
  *(v3 + 2) = 0;
  v3[24] = 0;
  *(v0 + *((*v2 & *v0) + 0x80)) = 0;
  v4 = v0 + *((*v2 & *v0) + 0x88);
  strcpy(v4, "LocationCell");
  v4[13] = 0;
  *(v4 + 7) = -5120;
  v13.receiver = v0;
  v13.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622F8, &qword_21DC2B250);
  v5 = objc_msgSendSuper2(&v13, sel_init);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v5 + qword_27CE65698);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_21D81A0E4;
  v7[1] = v6;

  sub_21D0D0E88(v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62300, &qword_21DC2B258);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 48) = 1;
  *(v10 + 49) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 32) = v5;
  *(v10 + 40) = 0;
  v11 = v5 + *((*v2 & *v5) + 0x70);
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v10;
}

uint64_t sub_21D80CF08(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2();
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21D80CF6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622E0, &qword_21DC2B238);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D20;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_21DBF516C();
  *(v0 + 40) = v1;
  *(v0 + 48) = xmmword_21DC19C40;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = sub_21DBF516C();
  *(v0 + 88) = v2;
  *(v0 + 96) = xmmword_21DC22F10;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  v5 = sub_21DBF516C();
  v7 = v6;
  memset(v29, 0, 24);
  v29[3] = 0x1FFFFFFFELL;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  sub_21D0CF7E0(v29, &unk_27CE5EA00, &unk_21DC0A7C0);
  v18 = v4;
  v19 = 0;
  v20 = 0;
  v21 = 0x80;
  v22 = v5;
  v23 = v7;
  v24 = 0;
  v25 = 0;
  v26 = v0;
  v27 = 1;
  v28 = 0;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622E8, &qword_21DC2B240));
  v9 = sub_21D538160(&v18, 0, 0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x277D85000];
  v12 = (v9 + *((*MEMORY[0x277D85000] & *v9) + 0x100));
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = sub_21D81A0B4;
  v12[1] = v10;

  sub_21D0D0E88(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622F0, &qword_21DC2B248);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v9;
  *(v15 + 40) = 0;
  v16 = v9 + *((*v11 & *v9) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

uint64_t sub_21D80D35C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v20 = 0;
    v1 = 0x4010000000000000;
    v2 = sub_21D539DCC;
    v3 = sub_21D539DD0;
    v4 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v20 = 0;
    memset(v19, 0, 24);
  }

  v19[3] = v4;
  v19[4] = v3;
  v19[5] = 0;
  v19[6] = v2;
  v19[7] = 0;
  v19[8] = v1;
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  v6 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v5 + *(v6 + 40));
  }

  ShouldCategorizeGroceryItemsSSSb_tFZ_0 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO30personTriggerSectionFooterText32listShouldCategorizeGroceryItemsSSSb_tFZ_0(v7);
  v10 = v9;
  sub_21D0D3954(v19, v18, &qword_27CE5E690, &unk_21DC103B0);
  v16[3] = &type metadata for TTRITablePlainTextContentConfigurationProvider;
  v16[0] = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  v16[1] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *(v11 + 24) = v10;
  v16[4] = sub_21D81A6A8;
  v16[5] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *(v12 + 24) = v10;
  v16[6] = sub_21D81A6B4;
  v16[7] = v12;
  v16[8] = 0;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC08D10;
  swift_bridgeObjectRetain_n();
  *(v13 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell, sub_21D80D6B0);
  *(v13 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v13 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personUnsetDetailCell, sub_21D80DD10);
  *(v13 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v13 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell, sub_21D80E230);
  *(v13 + 72) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 200) = 0;
  *(v14 + 208) = 0;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 89) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 169) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v18, v14 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v16, v14 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v14 + 192) = v13;
  sub_21D0CF7E0(v19, &qword_27CE5E690, &unk_21DC103B0);
  return v14;
}

uint64_t sub_21D80D6B0()
{
  sub_21D80DABC(v23);
  v20 = v23[1];
  v21 = v23[0];
  v18 = v23[3];
  v19 = v23[2];
  v0 = v24;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v25, 0, 24);
  v25[3] = 0x1FFFFFFFELL;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  sub_21D0CF7E0(v25, &unk_27CE5EA00, &unk_21DC0A7C0);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v21;
  *(v8 + 1) = v20;
  *(v8 + 2) = v19;
  *(v8 + 3) = v18;
  v8[64] = v0;
  *(v8 + 65) = *v29;
  *(v8 + 17) = *&v29[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 118) = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v22.receiver = v4;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0, &unk_21DC1A290);
  v10 = objc_msgSendSuper2(&v22, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = sub_21D81A1F0;
  v12[1] = v11;

  sub_21D0D0E88(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980, &unk_21DC2B210);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  v16 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

id sub_21D80DABC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = [objc_opt_self() ttr_systemGreenColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

double sub_21D80DBA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 120);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong viewIfLoaded];
    if (v8)
    {
      v9 = v8;
      v10 = UIView.firstResponderDescendant.getter();

      if (v10)
      {
        [v10 resignFirstResponder];
      }
    }

    swift_unknownObjectRetain();
    a3(v4);
    swift_unknownObjectRelease();
    if (v4)
    {
      if (qword_27CE57188 != -1)
      {
        swift_once();
      }

      v11 = &qword_27CE66AD0;
    }

    else
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v11 = &qword_27CE66AE0;
    }

    v12 = *v11;
    v13 = v11[1];
    sub_21DBF8E0C();
    sub_21D818548(v12, v13);
  }

  return result;
}

uint64_t sub_21D80DD10(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF516C();
    v3 = v2;
    v4 = sub_21DBFA12C();
    v5 = [objc_opt_self() _systemImageNamed_];

    v6 = 0;
    v7 = 0x80;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF516C();
    v3 = v8;
    v5 = 0;
    v7 = 0;
    v6 = 0x1FFFFFFFELL;
  }

  memset(v22, 0, 24);
  v22[3] = 0x1FFFFFFFELL;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  sub_21D0CF7E0(v22, &unk_27CE5EA00, &unk_21DC0A7C0);
  *&v26 = v1;
  *(&v26 + 1) = v3;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v5;
  v31 = 0;
  v32 = 0;
  v33 = v6;
  v34 = 0u;
  v35 = 0u;
  v36 = v7;
  v9 = objc_allocWithZone(type metadata accessor for TTRIActionCellContent(0));
  v10 = sub_21DA884EC(0, 0x65436E6F69746341, 0xEA00000000006C6CLL, 0, &v26);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = MEMORY[0x277D85000];
  v15 = (v10 + *((*MEMORY[0x277D85000] & *v10) + 0x108));
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = sub_21D81A1E8;
  v15[1] = v13;
  v18 = v10;

  sub_21D0D0E88(v16, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62368, &qword_21DC2B2B0);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 48) = 1;
  *(v19 + 49) = 0;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 1;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = v18 + *((*v14 & *v18) + 0x70);
  swift_beginAccess();
  *(v20 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v19;
}

void sub_21D80E138(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4 && (v5 = *((*MEMORY[0x277D85000] & *v4) + 0x68), v6 = v4, swift_beginAccess(), v7 = *&v6[v5], v8 = v7, v6, v7))
    {
      swift_unknownObjectRetain();
      sub_21D82222C();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21D80E230()
{
  v0 = objc_allocWithZone(type metadata accessor for TTRIPersonCellContent(0));
  v1 = sub_21D933E54(0, 0, 0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE63E60);
  v4 = *(v1 + qword_27CE63E60);
  v5 = *(v1 + qword_27CE63E60 + 8);
  *v3 = sub_21D81A1E0;
  v3[1] = v2;

  sub_21D0D0E88(v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62360, &qword_21DC2B2A8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 1;
  *(v6 + 49) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 32) = v1;
  *(v6 + 40) = 0;
  v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v7 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v6;
}

void *sub_21D80E390(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    sub_21D82222C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D80E400(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v11 = 0;
    v1 = 0x4010000000000000;
    v2 = sub_21D539DCC;
    v3 = sub_21D539DD0;
    v4 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v11 = 0;
    memset(v10, 0, 24);
  }

  v10[3] = v4;
  v10[4] = v3;
  v10[5] = 0;
  v10[6] = v2;
  v10[7] = 0;
  v10[8] = v1;
  sub_21D0D3954(v10, v9, &qword_27CE5E690, &unk_21DC103B0);
  memset(v8, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  *(v5 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell, sub_21D80E620);
  *(v5 + 40) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 89) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 169) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v9, v6 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v8, v6 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v6 + 192) = v5;
  sub_21D0CF7E0(v10, &qword_27CE5E690, &unk_21DC103B0);
  return v6;
}

uint64_t sub_21D80E620(uint64_t a1)
{
  sub_21D80DABC(v32);
  v25 = v32[1];
  v26 = v32[0];
  v23 = v32[3];
  v24 = v32[2];
  v2 = v33;
  v3 = a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  v4 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + *(v4 + 40));
  }

  ShouldCategorizeGroceryItemsSSSb_tFZ_0 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO08assigneeE9CellTitle32listShouldCategorizeGroceryItemsSSSb_tFZ_0(v5);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59980, &qword_21DC2B290);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *&v27 = sub_21DBF516C();
  *(&v27 + 1) = v10;
  nullsub_1();
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 176) = 0;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 32) = v27;
  *(v9 + 48) = 0u;
  memset(v28, 0, 24);
  v28[3] = 0x1FFFFFFFELL;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_21D0CF7E0(v28, &unk_27CE5EA00, &unk_21DC0A7C0);
  v34[1] = v25;
  v34[0] = v26;
  v34[3] = v23;
  v34[2] = v24;
  v35 = v2;
  v36 = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  v37 = v8;
  v39 = 0;
  v38 = 0;
  v40 = v9;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  v48 = 0;
  v12 = *(v11 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_assigneeMenuItemAvatarProvider);
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62350, &qword_21DC2B298));

  v14 = sub_21D538380(v34, v12, &off_282EDBC08);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = MEMORY[0x277D85000];
  v17 = (v14 + *((*MEMORY[0x277D85000] & *v14) + 0x100));
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_21D81A1D8;
  v17[1] = v15;

  sub_21D0D0E88(v18, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62358, &qword_21DC2B2A0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + 48) = 1;
  *(v20 + 49) = 0;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 1;
  *(v20 + 32) = v14;
  *(v20 + 40) = 0;
  v21 = v14 + *((*v16 & *v14) + 0x70);
  swift_beginAccess();
  *(v21 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v20;
}

void sub_21D80EAB8(_OWORD *a1, uint64_t a2)
{
  v2 = a1[12];
  v34 = a1[11];
  v35 = v2;
  v36 = a1[13];
  v3 = a1[8];
  v30 = a1[7];
  v31 = v3;
  v4 = a1[10];
  v32 = a1[9];
  v33 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
    swift_beginAccess();
    v8 = type metadata accessor for TTRReminderDetailViewModel(0);
    if ((*(*(v8 - 8) + 48))(v7, 1, v8) || (v9 = v7 + *(v8 + 104), v10 = *(v9 + 48), v12 = *v9, v11 = *(v9 + 16), v28[2] = *(v9 + 32), v28[3] = v10, v28[0] = v12, v28[1] = v11, v14 = *(v9 + 80), v13 = *(v9 + 96), v15 = *(v9 + 112), v28[4] = *(v9 + 64), v28[5] = v14, v29 = v15, v28[6] = v13, !v12))
    {
    }

    else
    {
      v17 = *&v6[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
      v16 = *&v6[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter + 8];
      ObjectType = swift_getObjectType();
      v27 = v17;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      sub_21D7A9690(v28, v19);
      swift_unknownObjectRetain();
      sub_21D1D9A84(&v30, v19);
      TTRReminderDetailPresenterCapability.request(updateAssignee:)(&v20, ObjectType, *(v16 + 16));

      sub_21D7A96C8(v28);
      v19[4] = v24;
      v19[5] = v25;
      v19[6] = v26;
      v19[0] = v20;
      v19[1] = v21;
      v19[2] = v22;
      v19[3] = v23;
      sub_21D1D9AE0(v19);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D80EC88()
{
  memset(v4, 0, 73);
  memset(v3, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D10;
  *(v0 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell, sub_21D80EE68);
  *(v0 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v0 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell, sub_21D80FAAC);
  *(v0 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v0 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8);
  *(v0 + 72) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 89) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 169) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v4, v1 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v3, v1 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v1 + 192) = v0;
  return v1;
}

uint64_t sub_21D80EE68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62280, &unk_21DC2B1E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC1C120;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_21DBF516C();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = sub_21DBF516C();
  *(v0 + 136) = v2;
  *(v0 + 144) = xmmword_21DC19C40;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = sub_21DBF516C();
  *(v0 + 184) = v3;
  *(v0 + 192) = xmmword_21DC22F10;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = sub_21DBF516C();
  *(v0 + 232) = v4;
  *(v0 + 240) = xmmword_21DC2B090;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  sub_21D80F2E0(&v19);
  v5 = v20;
  v6 = sub_21DBF516C();
  v8 = v7;
  memset(v28, 0, 24);
  v28[3] = 0x1FFFFFFFELL;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_21D0CF7E0(v28, &unk_27CE5EA00, &unk_21DC0A7C0);
  v20 = v5;
  v21 = v6;
  v22 = v8;
  v23 = 0;
  v24 = 0;
  v25 = v0;
  v26 = 1;
  v27 = 0;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62290, &qword_21DC2B1F8));
  v10 = sub_21D53814C(&v19, 0, 0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x277D85000];
  v13 = (v10 + *((*MEMORY[0x277D85000] & *v10) + 0x100));
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = sub_21D819F80;
  v13[1] = v11;

  sub_21D0D0E88(v14, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62298, &unk_21DC2B200);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 48) = 1;
  *(v16 + 49) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 1;
  *(v16 + 32) = v10;
  *(v16 + 40) = 0;
  v17 = v10 + *((*v12 & *v10) + 0x70);
  swift_beginAccess();
  *(v17 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v16;
}

id sub_21D80F2E0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = [objc_opt_self() configurationWithWeight_];
    v8 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    result = [objc_opt_self() ttr_systemRedColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

void *sub_21D80F428(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 112);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    a3(v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D80F4B4()
{
  sub_21D80F880(v23);
  v20 = v23[1];
  v21 = v23[0];
  v18 = v23[3];
  v19 = v23[2];
  v0 = v24;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v25, 0, 24);
  v25[3] = 0x1FFFFFFFELL;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  sub_21D0CF7E0(v25, &unk_27CE5EA00, &unk_21DC0A7C0);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v21;
  *(v8 + 1) = v20;
  *(v8 + 2) = v19;
  *(v8 + 3) = v18;
  v8[64] = v0;
  *(v8 + 65) = *v29;
  *(v8 + 17) = *&v29[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 118) = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v22.receiver = v4;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0, &unk_21DC1A290);
  v10 = objc_msgSendSuper2(&v22, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = sub_21D819FB0;
  v12[1] = v11;

  sub_21D0D0E88(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980, &unk_21DC2B210);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  v16 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

void sub_21D80F880(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D16948 != -1)
    {
      swift_once();
    }

    v7 = qword_280D16950;
    *a1 = v6;
    *(a1 + 8) = 0;
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v8 = v7;
  }
}

void sub_21D80F9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong viewIfLoaded];
    if (v5)
    {
      v6 = v5;
      v7 = UIView.firstResponderDescendant.getter();

      if (v7)
      {
        [v7 resignFirstResponder];
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    TTRReminderDetailPresenterCapability.request(updateFlagged:)(v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D80FAAC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v27[0] = xmmword_21DC19C40;
  memset(&v27[1], 0, 73);
  sub_21D0CF7E0(v27, &unk_27CE5E9E0, &unk_21DC1D600);
  *&v16 = v0;
  *(&v16 + 1) = v2;
  v17 = 0;
  v18 = 0xE000000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v3 = objc_allocWithZone(type metadata accessor for TTRIListCellContent(0));
  v4 = sub_21DA87F1C(0, 0x6C6C65437473694CLL, 0xE800000000000000, 1, &v16);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = MEMORY[0x277D85000];
  v9 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x108));
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = sub_21D81A020;
  v9[1] = v7;
  v12 = v4;

  sub_21D0D0E88(v10, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622D0, &qword_21DC2B230);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 48) = 1;
  *(v13 + 49) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = v12 + *((*v8 & *v12) + 0x70);
  swift_beginAccess();
  *(v14 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v13;
}

uint64_t sub_21D80FDB8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v20, ObjectType, v2);
    swift_unknownObjectRelease();
    if (LOBYTE(v20[0]) != 2 && (v20[0] & 1) != 0)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  v4 = sub_21DBF516C();
  v6 = v5;
  sub_21D810174(v21);
  v20[0] = v4;
  v20[1] = v6;
  v20[2] = 0;
  v20[3] = 0xE000000000000000;
  v7 = objc_allocWithZone(type metadata accessor for TTRISectionCellContent(0));
  v8 = sub_21DA882F0(0, 0x436E6F6974636553, 0xEB000000006C6C65, 1, v20);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = MEMORY[0x277D85000];
  v13 = (v8 + *((*MEMORY[0x277D85000] & *v8) + 0x108));
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = sub_21D819FF0;
  v13[1] = v11;
  v16 = v8;

  sub_21D0D0E88(v14, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622C0, &unk_21DC2B220);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 48) = 1;
  *(v17 + 49) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 1;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = v16 + *((*v12 & *v16) + 0x70);
  swift_beginAccess();
  *(v18 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v17;
}

id sub_21D810174@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D168D8 != -1)
  {
    swift_once();
  }

  v3 = qword_280D168E0;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v4 = qword_280D168E0;
    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = v3;
    result = [v7 ttr_systemBlueColor];
    v6 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

void sub_21D810234(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v8 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      if (v10 == 1)
      {
        v11 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
        swift_beginAccess();
        v12 = *(v7 + v11);
        v13 = v12;
        static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(v12, 0, 1, &v14);

        v17 = v14;
        v18 = v15;
        *v19 = v16[0];
        *&v19[9] = *(v16 + 9);
      }

      else
      {
        *v19 = 0;
        v17 = 0u;
        v18 = 0u;
        *&v19[8] = xmmword_21DC0A830;
        v19[24] = 0;
      }

      v14 = v17;
      v15 = v18;
      v16[0] = *v19;
      *(v16 + 9) = *&v19[9];
      a3(1, &v14);

      sub_21D0CF7E0(&v17, &qword_27CE5D558, &qword_21DC1CB50);
    }

    else
    {
    }
  }
}

uint64_t sub_21D8103F8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    memset(v12, 0, 73);
    memset(v11, 0, 73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC08D00;
    *(v9 + 32) = sub_21D80B9AC(a2, a3);
    *(v9 + 40) = &protocol witness table for TTRITableCell<A>;
    type metadata accessor for TTRITableSection();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 89) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 169) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 216) = 1;
    swift_beginAccess();
    sub_21D0F02F4(v12, v6 + 32, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    swift_beginAccess();
    sub_21D0F02F4(v11, v6 + 112, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    *(v6 + 192) = v9;
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_21D8105B4()
{
  sub_21D810920(&v26);
  v24 = v27;
  v25 = v26;
  v22 = v29;
  v23 = v28;
  v0 = v30;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  v4 = objc_opt_self();
  sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
  v5 = sub_21DBFB61C();
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:{1, 0x800000021DC547E0}];

  v7 = sub_21DBFA16C();
  v9 = v8;

  memset(v45, 0, 24);
  v45[3] = 0x1FFFFFFFELL;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  sub_21D0CF7E0(v45, &unk_27CE5EA00, &unk_21DC0A7C0);
  v26 = v25;
  v27 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v0;
  v31 = v1;
  v32 = v3;
  v33 = 0;
  v34 = 0;
  v35 = v7;
  v36 = v9;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v40 = 2;
  v10 = type metadata accessor for TTRIDetailDisclosureCellContent(0);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = objc_allocWithZone(v10);
  v12 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, &v26);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = MEMORY[0x277D85000];
  v15 = (v12 + *((*MEMORY[0x277D85000] & *v12) + 0x108));
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = sub_21D819FB8;
  v15[1] = v13;
  v18 = v12;

  sub_21D0D0E88(v16, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958, &unk_21DC1A250);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 48) = 1;
  *(v19 + 49) = 0;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 1;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = v18 + *((*v14 & *v18) + 0x70);
  swift_beginAccess();
  *(v20 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v19;
}

id sub_21D810920@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration))
  {
    result = 0;
    v6 = 0x80;
  }

  else
  {
    result = [objc_opt_self() ttr_systemBrownColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

void *sub_21D8109E0(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();
    a2(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D810A64()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21DC08D20;
    *(v3 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell, sub_21D811290);
    *(v3 + 40) = &protocol witness table for TTRITableCell<A>;
    *(v3 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentsGroup, sub_21D810C60);
    *(v3 + 56) = &protocol witness table for TTRITableGroup;
    memset(v6, 0, 73);
    type metadata accessor for TTRITableSection();
    memset(v5, 0, 73);
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 89) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 169) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 216) = 1;
    swift_beginAccess();
    sub_21D0F02F4(v6, v2 + 32, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    swift_beginAccess();
    sub_21D0F02F4(v5, v2 + 112, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    *(v2 + 192) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21D810C60()
{
  type metadata accessor for TTRITableGroup();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 96) = 2;
  *(v0 + 48) = MEMORY[0x277D84F90];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_beginAccess();
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  *(v0 + 56) = 1;
  *(v0 + 64) = sub_21D81A15C;
  *(v0 + 72) = v3;

  sub_21D0E5BE4(v4, v5, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  *(v0 + 80) = sub_21D81A164;
  *(v0 + 88) = v7;
  v10 = *(v0 + 96);
  *(v0 + 96) = 1;

  sub_21D81A16C(v8, v9, v10);

  return v0;
}

void sub_21D810E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8, &qword_21DC2B260);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v12 = v11;
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_8:

    return;
  }

  v14 = v13;
  v11 = v12;
LABEL_10:
  v15 = *&v10[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
  v16 = MEMORY[0x277D85000];
  v17 = *(v11 + 32) + *((*MEMORY[0x277D85000] & **(v11 + 32)) + 0x78);
  swift_beginAccess();
  v18 = *v17;
  v38 = *(v17 + 24);
  if (v14)
  {
    v19 = *(v14 + 32) + *((*v16 & **(v14 + 32)) + 0x78);
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 8);
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    v24 = *(v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    v25 = v20;
    v26 = v20;
    sub_21DBF8E0C();
    v27 = v22;
    v35 = v21;
    v36 = v22;
    v34 = v25;
    if (v23)
    {
      v28 = v27;
      v33 = v22;
      v37 = v23;
    }

    else
    {
      v37 = 0;
      v33 = 0;
    }
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v24 = *(v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  }

  ObjectType = swift_getObjectType();
  v30 = *(v24 + 336);
  v32 = v18;
  sub_21DBF8E0C();
  v31 = v38;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30(v31, v33, a5 & 1, ObjectType, v24);
  swift_unknownObjectRelease();

  sub_21D81A184(v34, v35, v37, v36);
  swift_unknownObjectRelease();
}

void sub_21D811128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8, &qword_21DC2B260);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *&v5[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
      v8 = *(v6 + 32) + *((*MEMORY[0x277D85000] & **(v6 + 32)) + 0x78);
      swift_beginAccess();
      v9 = *v8;
      v10 = *(v8 + 24);
      v11 = *(v7 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 328);
      v14 = v9;
      sub_21DBF8E0C();
      v15 = v10;
      swift_unknownObjectRetain();
      v13(v15, ObjectType, v11);

      swift_unknownObjectRelease();

      v5 = v14;
    }
  }
}

uint64_t sub_21D811290(UIViewController *a1)
{
  v2 = *(*(&a1->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentImportingController);
  v3.super.super.isa = TTRIAttachmentImportingController.menuForAvailableSources(presentingIn:)(a1).super.super.isa;

  v4 = *(&a1->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
  if (v4 == 1)
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v24 = 0x800000021DC54840;
    v7 = sub_21DBF516C();
    v9 = v8;
    v10 = 0;
    v11 = 0x80;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v24 = 0x800000021DC547E0;
    v7 = sub_21DBF516C();
    v9 = v12;
    v6 = 0;
    v11 = 0;
    v10 = 0x1FFFFFFFELL;
  }

  v13 = v4 ^ 1;
  memset(v26, 0, 24);
  v26[3] = 0x1FFFFFFFELL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v14 = v3.super.super.isa;
  sub_21D0CF7E0(v26, &unk_27CE5EA00, &unk_21DC0A7C0);
  v15 = objc_allocWithZone(type metadata accessor for TTRIMenuCellContent(0));
  v16 = MEMORY[0x277D85000];
  *(v15 + *((*MEMORY[0x277D85000] & *v15) + 0x68)) = 0;
  *(v15 + *((*v16 & *v15) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + *((*v16 & *v15) + 0x90)) = 0;
  v17 = v15 + *((*v16 & *v15) + 0x78);
  *v17 = v6;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = v10;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  v17[64] = v11;
  *(v17 + 65) = *v31;
  *(v17 + 17) = *&v31[3];
  *(v17 + 9) = v7;
  *(v17 + 10) = v9;
  v17[88] = v13;
  v18 = *v30;
  *(v17 + 23) = *&v30[3];
  *(v17 + 89) = v18;
  *(v17 + 12) = v3;
  *(v15 + *((*v16 & *v15) + 0x80)) = 0;
  v19 = (v15 + *((*v16 & *v15) + 0x88));
  *v19 = 0x6C6C6543756E654DLL;
  v19[1] = 0xE800000000000000;
  v25.receiver = v15;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62330, &qword_21DC2B278);
  v20 = [(UIViewController *)&v25 init];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62338, &unk_21DC2B280);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + 48) = 1;
  *(v21 + 49) = 0;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  *(v21 + 72) = 1;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = v20 + *((*v16 & v20->super.super.isa) + 0x70);
  swift_beginAccess();
  *(v22 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v21;
}

uint64_t sub_21D8116EC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v9 = xmmword_21DC0E710;
  v10 = 0;
  v11 = sub_21DBF516C();
  v12 = v0;
  v13 = 0;
  v1 = sub_21D5CB094(0, 3, &v9, 1);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE652D8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = sub_21D8196AC;
  v3[1] = v2;

  sub_21D0D0E88(v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E670, &unk_21DC1C920);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 1;
  *(v6 + 49) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 32) = v1;
  *(v6 + 40) = 0;
  v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v7 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v6;
}

double sub_21D811904(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (v4)
    {
      v9 = [v3 string];
      v10 = sub_21DBFA16C();
      v12 = v11;

      sub_21D5968AC(v3, v2, 1);
      v3 = v10;
      v2 = v12;
    }

    else
    {
      sub_21D59B950(v3, v2, 0);
    }

    v13.value._countAndFlagsBits = v3;
    v13.value._object = v2;
    TTRReminderDetailPresenterCapability.request(updateURL:)(v13);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D811A30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D20;
  *(v2 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell, sub_21D80C538);
  *(v2 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v2 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14);
  *(v2 + 56) = &protocol witness table for TTRITableCell<A>;
  v15 = v2;
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF516C();
    v5 = v4;
    *(&v21 + 1) = &type metadata for TTRITablePlainTextContentConfigurationProvider;
    *&v20 = v3;
    *(&v20 + 1) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    *&v22 = sub_21D81A6A8;
    *(&v22 + 1) = v6;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
    *&v23[0] = sub_21D81A6B4;
    *(&v23[0] + 1) = v7;
    *&v23[1] = 0;
    BYTE8(v23[1]) = 1;
    *(&v17 + 1) = &type metadata for TTRITableEmptyContentConfigurationProvider;
    *&v18 = sub_21D539DD0;
    *(&v18 + 1) = 0;
    *&v19[0] = sub_21D539DCC;
    *(&v19[0] + 1) = 0;
    *&v19[1] = 0x4010000000000000;
    BYTE8(v19[1]) = 0;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    swift_bridgeObjectRetain_n();
    *(inited + 32) = sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4);
    *(inited + 40) = &protocol witness table for TTRITableCell<A>;
    *(inited + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C);
    v9 = (inited + 56);
  }

  else
  {
    v22 = 0u;
    memset(v23, 0, 25);
    v20 = 0u;
    v21 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    memset(v19, 0, 25);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60);
    v9 = (inited + 40);
  }

  *v9 = &protocol witness table for TTRITableCell<A>;
  sub_21D562A50(inited);
  sub_21D0D3954(&v20, v14, &qword_27CE5E690, &unk_21DC103B0);
  sub_21D0D3954(&v16, v13, &qword_27CE5E690, &unk_21DC103B0);
  v10 = v15;
  type metadata accessor for TTRITableSection();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 89) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 169) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v14, v11 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v13, v11 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v11 + 192) = v10;
  sub_21D0CF7E0(&v16, &qword_27CE5E690, &unk_21DC103B0);
  sub_21D0CF7E0(&v20, &qword_27CE5E690, &unk_21DC103B0);
  return v11;
}

uint64_t sub_21D811E88()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v17[3] = &type metadata for TTRITablePlainTextContentConfigurationProvider;
  v17[0] = v0;
  v17[1] = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  v17[4] = sub_21D5395CC;
  v17[5] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v17[6] = sub_21D5395D4;
  v17[7] = v4;
  v17[8] = 0;
  v18 = 1;
  sub_21D539630(v17, v16);
  v9 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v10 = sub_21D539DD0;
  v11 = 0;
  v12 = sub_21D539DCC;
  v13 = 0;
  v14 = 0x4010000000000000;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC0AFB0;
  swift_bridgeObjectRetain_n();
  *(v5 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell, sub_21D80FAAC);
  *(v5 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8);
  *(v5 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
  *(v5 + 72) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 80) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
  *(v5 + 88) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 89) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 169) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v16, v6 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v8, v6 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v6 + 192) = v5;
  sub_21D5395DC(v17);
  return v6;
}

uint64_t sub_21D8121EC()
{
  v5 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v6 = sub_21D537CCC;
  v7 = 0;
  v8 = sub_21D537CD0;
  v9 = 0;
  v10 = 0x4010000000000000;
  v11 = 0;
  memset(v3, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D20;
  *(v0 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
  *(v0 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v0 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell, sub_21D80EE68);
  *(v0 + 56) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 89) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 169) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v4, v1 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v3, v1 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v1 + 192) = v0;
  return v1;
}

void sub_21D8123D4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController))
  {
    v3 = 1;
    MEMORY[0x28223BE20](a1);
    v2 = v1;
    TTRITableDataController.performBatchUpdates(by:updates:)(&v3, sub_21D81A050);
  }
}

void sub_21D812474(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998, &unk_21DC1D520);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v259 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v259 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v259 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240, &unk_21DC32120);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v259 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v259 - v17;
  v19 = (a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
  v20 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 56);
  *&v274 = a1;
  v21 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_textSection);
  v275 = a2;
  v272 = v20;
  if (v20)
  {
    v36 = v274;
    if (v21)
    {

      TTRITableSection.isHidden.setter(1);
    }
  }

  else
  {
    if (v21)
    {

      TTRITableSection.isHidden.setter(0);
    }

    *&v273 = v9;
    *&v276 = v6;
    v22 = sub_21D10FA9C(*MEMORY[0x277D76A08], *MEMORY[0x277D74410], 0, 0);
    v23 = v22;
    v24 = 0;
    LODWORD(v270) = *v19;
    if (v270 == 1)
    {
      v25 = v22;
      v24 = v23;
    }

    *&v271 = v23;
    v26 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

    *&v268 = type metadata accessor for TTRRemindersListViewModel.Item;
    sub_21D81A2E0(a2, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    v27 = type metadata accessor for TTRReminderDetailViewModel(0);
    v28 = *(v275 + v27[12]);
    v267 = v275 + v27[28];
    v29 = *(v267 + 8);
    v30 = type metadata accessor for TTRIReminderTitleCellContentState(0);
    v31 = v30[7];
    *&v18[v30[5]] = v28;
    *&v18[v30[6]] = v29;
    *&v18[v31] = v24;
    (*(*(v30 - 1) + 56))(v18, 0, 1, v30);
    v32 = *((*MEMORY[0x277D85000] & *v26) + 0x78);
    swift_beginAccess();
    sub_21D0D3954(v26 + v32, v15, &qword_27CE62240, &unk_21DC32120);
    swift_beginAccess();
    *&v269 = v24;
    v33 = v28;
    v34 = v275;
    sub_21DBF8E0C();
    sub_21D0EB8DC(v18, v26 + v32, &qword_27CE62240, &unk_21DC32120);
    swift_endAccess();
    sub_21D5D1D38(v15);

    v35 = v15;
    v36 = v274;
    sub_21D0CF7E0(v35, &qword_27CE62240, &unk_21DC32120);
    sub_21D0CF7E0(v18, &qword_27CE62240, &unk_21DC32120);
    v37 = *(sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4) + 32);

    sub_21D81A2E0(v34, v12, v268);
    v38 = *(v34 + v27[18]);
    v39 = *(v267 + 8);
    LOBYTE(v29) = *(v34 + v27[30]);
    v40 = type metadata accessor for TTRIReminderNotesCellContentState(0);
    *&v12[v40[5]] = v38;
    *&v12[v40[6]] = v39;
    v12[v40[7]] = v29;
    v12[v40[8]] = v270;
    (*(*(v40 - 1) + 56))(v12, 0, 1, v40);
    v41 = *((*MEMORY[0x277D85000] & *v37) + 0x78);
    swift_beginAccess();
    v42 = v273;
    sub_21D0D3954(v37 + v41, v273, &qword_27CE5E9D0, &unk_21DC1D5F0);
    swift_beginAccess();
    sub_21DBF8E0C();
    v43 = v38;
    sub_21D0EB8DC(v12, v37 + v41, &qword_27CE5E9D0, &unk_21DC1D5F0);
    swift_endAccess();
    sub_21D5D2398(v42);

    v44 = v42;
    a2 = v275;
    sub_21D0CF7E0(v44, &qword_27CE5E9D0, &unk_21DC1D5F0);
    sub_21D0CF7E0(v12, &qword_27CE5E9D0, &unk_21DC1D5F0);
    v20 = v272;
    v6 = v276;
  }

  if ((v20 & 0x4000) != 0 || (v45 = (a2 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 152)), v46 = v45[1], v334 = *v45, *v335 = v46, v47 = v45[3], *&v335[16] = v45[2], *&v335[32] = v47, *&v335[48] = *(v45 + 8), v48 = v334, v49 = *(v45 + 24), v349 = *(v45 + 8), v350 = v49, !v334))
  {
    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14);
    TTRITableSection.isHidden.setter(1);
  }

  else
  {
    v50 = v45[3];
    v296 = v45[2];
    v297 = v50;
    *&v298 = *(v45 + 8);
    v51 = v45[1];
    v294 = *v45;
    v295 = v51;
    v271 = *&v335[24];
    v277 = *&v335[24];
    v273 = *&v335[40];
    v52 = v335[24];
    sub_21D81A058(&v294, v278);
    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14);
    TTRITableSection.isHidden.setter(0);

    v53 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14) + 32);

    v54 = MEMORY[0x277D85000];
    v55 = v53 + *((*MEMORY[0x277D85000] & *v53) + 0x78);
    swift_beginAccess();
    *&v276 = v6;
    v56 = *(v55 + 1);
    v57 = *(v55 + 2);
    v58 = v55[24];
    if (v55[25])
    {
      v59 = 256;
    }

    else
    {
      v59 = 0;
    }

    v60 = v48;
    sub_21DBF8E0C();
    sub_21D5C924C(v48, v56, v57, v59 | v58);

    v61 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell;
    v62 = *(*(v274 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell) + 32);
    *&v278[0] = v48;
    *(v278 + 8) = v349;
    *(&v278[1] + 8) = v350;
    *(&v278[3] + 8) = v273;
    *(&v278[2] + 8) = v271;
    v63 = v62;
    v64 = TTRReminderDetailViewModel.AppLink.localizedDescription.getter();
    v66 = v65;
    v67 = v63 + *((*v54 & *v63) + 0x78);
    swift_beginAccess();
    v68 = *v67;
    v69 = v67[24];
    if (v67[25])
    {
      v70 = 256;
    }

    else
    {
      v70 = 0;
    }

    v71 = v68;
    sub_21D5C924C(v68, v64, v66, v70 | v69);

    v72 = v273;
    if (v52)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    v74 = *(*(v274 + v61) + 32);
    v75 = v74 + *((*v54 & *v74) + 0x78);
    swift_beginAccess();
    v76 = *v75;
    v77 = *(v75 + 1);
    v78 = *(v75 + 2);
    if (v72 == 1)
    {
      v73 = 0;
    }

    if (v75[25])
    {
      v79 = 256;
    }

    else
    {
      v79 = 0;
    }

    v80 = v74;
    v36 = v274;
    v81 = v80;
    v82 = v76;
    sub_21DBF8E0C();
    v83 = v79 | v73;
    a2 = v275;
    sub_21D5C924C(v76, v77, v78, v83);

    v84 = *(*(v36 + v61) + 32);
    if (*(&v273 + 1))
    {
      v85 = v72 >= 2;
    }

    else
    {
      v85 = 0;
    }

    if (v85)
    {
      v86 = 256;
    }

    else
    {
      v86 = 0;
    }

    v87 = v84 + *((*MEMORY[0x277D85000] & *v84) + 0x78);
    swift_beginAccess();
    v88 = *v87;
    v89 = *(v87 + 1);
    v90 = *(v87 + 2);
    v91 = v87[24];
    v92 = v84;
    v20 = v272;
    v93 = v92;
    v94 = v88;
    sub_21DBF8E0C();
    v95 = v86 | v91;
    v6 = v276;
    sub_21D5C924C(v88, v89, v90, v95);

    sub_21D0CF7E0(&v334, &qword_27CE626B0, &unk_21DC1DC60);
  }

  if (!*(v36 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability))
  {
    __break(1u);
    return;
  }

  v96 = type metadata accessor for TTRReminderDetailViewModel(0);
  sub_21D81A2E0(a2 + *(v96 + 80), v6, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v97 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  (*(*(v97 - 8) + 56))(v6, 0, 1, v97);

  sub_21D52EB9C(v6);
  sub_21D530D58(v6, v20, v98);
  sub_21D531E10(v6, v20);
  sub_21D52E3C4();
  sub_21D5334D0();

  sub_21D52E6EC();
  sub_21D5334D0();

  sub_21D5335B4();

  sub_21D0CF7E0(v6, &qword_27CE5D998, &unk_21DC1D520);
  *&v273 = v96;
  if ((v20 & 2) == 0)
  {
    v99 = a2 + *(v96 + 92);
    v100 = *v99;
    v101 = *(v99 + 8);
    v102 = *(v99 + 24);
    *&v271 = *(v99 + 16);
    v103 = *(v99 + 32);
    if (!(v103 >> 6))
    {
      *&v334 = v100;
      *(&v334 + 1) = v101;
      *v335 = v102;
      v335[8] = v103 & 1 | 0x80;
      sub_21D48BB60(v100, v101, v271, v102, v103);
      v264 = v101;
      sub_21DBF8E0C();
      v105 = v102;
      v106 = 0;
      goto LABEL_39;
    }

    if (v103 >> 6 == 1)
    {
      *&v334 = v100;
      *(&v334 + 1) = v101;
      *v335 = 0;
      v335[8] = 0;
      v104 = v271;
      sub_21D48BB60(v100, v101, v271, v102, v103);
      v264 = v101;
      sub_21D48BB60(v100, v101, v104, v102, v103);
      v105 = 0;
      v106 = 1;
LABEL_39:
      sub_21D8188FC(&v334, v105, v106, v36, a2);
      sub_21D5D35A4();
      goto LABEL_50;
    }

    if (!(v271 | v101 | v100 | v102) && v103 == 128)
    {
      if (qword_280D1BAA8 != -1)
      {
        goto LABEL_109;
      }

      goto LABEL_43;
    }

    if (v103 == 128 && v100 == 1 && !(v271 | v101 | v102))
    {
      v100 = 1;
      sub_21D81434C(1, v36);
      goto LABEL_48;
    }
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
  TTRITableSection.isHidden.setter(1);

  v108 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14) + 32);

  v109 = v108 + *((*MEMORY[0x277D85000] & *v108) + 0x78);
  swift_beginAccess();
  v110 = *v109;
  v111 = v109[8];
  v113 = *(v109 + 4);
  v112 = *(v109 + 5);
  LOBYTE(v334) = 1;
  *&v360 = v110;
  BYTE8(v360) = v111;
  v361 = 0;
  v362 = 1;
  v363 = v113;
  v364 = v112;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v360);

  v264 = 0;
  *&v271 = 0;
  v102 = 0;
  v103 = 128;
  v100 = 2;
LABEL_50:
  v266 = v102;
  v267 = v100;
  v265 = v103;
  if ((v20 & 4) != 0)
  {
    v262 = 0;
    v263 = 0;
LABEL_56:
    v123 = 0;
    v121 = 0;
    v124 = 0;
    v122 = 1;
    v261 = 2;
    goto LABEL_57;
  }

  v114 = (a2 + *(v273 + 100));
  v115 = *v114;
  v116 = v114[1];
  v117 = v114[2];
  v262 = v117;
  v263 = v115;
  if (v116)
  {
    if (v116 != 1)
    {
      if (v116 != 2)
      {
        v118 = v117;
        sub_21DBF8E0C();
        v119 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell, sub_21D80E230) + 32);

        sub_21DBF8E0C();
        v120 = v118;
        v261 = v116;
        sub_21D5C944C(v115, v116, v117);

        v121 = 0;
        v122 = 0;
        v123 = 1;
        v124 = 1;
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    v261 = 1;
    v123 = 0;
    v121 = 0;
    v124 = 0;
    v122 = 0;
  }

  else
  {
    v261 = 0;
    v123 = 0;
    v122 = 0;
    v121 = 1;
    v124 = 1;
  }

LABEL_57:
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection, sub_21D80D35C);
  TTRITableSection.isHidden.setter(v122);

  v125 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell, sub_21D80D6B0) + 32);

  v126 = MEMORY[0x277D85000];
  v127 = v125 + *((*MEMORY[0x277D85000] & *v125) + 0x78);
  swift_beginAccess();
  v128 = *v127;
  v129 = *(v127 + 1);
  v130 = *(v127 + 2);
  v330[3] = *(v127 + 3);
  v330[2] = v130;
  v330[1] = v129;
  v330[0] = v128;
  v131 = *(v127 + 4);
  v132 = *(v127 + 5);
  v133 = *(v127 + 6);
  *(v331 + 14) = *(v127 + 110);
  v331[0] = v133;
  v330[5] = v132;
  v330[4] = v131;
  v134 = *v127;
  v135 = *(v127 + 1);
  v136 = *(v127 + 2);
  v352 = *(v127 + 3);
  v351 = v136;
  v350 = v135;
  v349 = v134;
  v137 = *(v127 + 4);
  v138 = *(v127 + 5);
  v139 = *(v127 + 6);
  v356 = *(v127 + 14);
  v355 = v139;
  v354 = v138;
  v353 = v137;
  v357 = v124;
  v140 = *(v127 + 121);
  v359 = v127[125];
  v358 = v140;
  sub_21D539B98(v330, &v334);
  sub_21D5C6D8C(&v349);

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personUnsetDetailCell, sub_21D80DD10);
  sub_21D5D3E3C();

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell, sub_21D80E230);
  sub_21D5D3E3C();

  v141 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell;
  v142 = *(*(v36 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell) + 32);
  v143 = (v142 + *((*v126 & *v142) + 0x78));
  swift_beginAccess();
  v144 = *v143;
  v145 = v143[1];
  v146 = v143[2];
  v332[3] = v143[3];
  v332[2] = v146;
  v332[1] = v145;
  v332[0] = v144;
  v147 = v143[4];
  v148 = v143[5];
  v149 = v143[6];
  *(v333 + 14) = *(v143 + 110);
  v333[0] = v149;
  v332[5] = v148;
  v332[4] = v147;
  v150 = *v143;
  v151 = v143[1];
  v152 = v143[2];
  v345[3] = v143[3];
  v345[2] = v152;
  v345[1] = v151;
  v345[0] = v150;
  v153 = v143[4];
  v154 = v143[5];
  v155 = v143[6];
  *&v346[12] = *(v143 + 108);
  *v346 = v155;
  v345[5] = v154;
  v345[4] = v153;
  v347 = 1;
  v348 = BYTE13(v333[1]);
  v156 = v142;
  sub_21D539B98(v332, &v334);
  sub_21D5C6D8C(v345);

  v157 = *(*(v36 + v141) + 32);
  v158 = (v157 + *((*v126 & *v157) + 0x78));
  swift_beginAccess();
  v159 = *v158;
  v160 = v158[1];
  v161 = v158[2];
  v328[3] = v158[3];
  v328[2] = v161;
  v328[1] = v160;
  v328[0] = v159;
  v162 = v158[4];
  v163 = v158[5];
  v164 = v158[6];
  *(v329 + 14) = *(v158 + 110);
  v329[0] = v164;
  v328[5] = v163;
  v328[4] = v162;
  v165 = *v158;
  v166 = v158[1];
  v167 = v158[2];
  v342[3] = v158[3];
  v342[2] = v167;
  v342[1] = v166;
  v342[0] = v165;
  v168 = v158[4];
  v169 = v158[5];
  v170 = v158[6];
  *&v343[13] = *(v158 + 109);
  *v343 = v170;
  v342[5] = v169;
  v342[4] = v168;
  v344 = v123 | v121;
  v171 = v157;
  sub_21D539B98(v328, &v334);
  sub_21D5C6D8C(v342);

  v172 = v272;
  if ((v272 & 0x100) != 0)
  {
    v221 = 0;
    v222 = 0;
    v223 = 0;
    v276 = 0u;
    v274 = 0u;
    v269 = 0u;
    v270 = 0u;
    v268 = 0u;
    v260 = 0u;
    v173 = v275;
LABEL_96:
    v224 = v273;
    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
    TTRITableSection.isHidden.setter(1);

    v321 = v274;
    v320 = v276;
    v323 = v269;
    v322 = v270;
    v325 = v260;
    v324 = v268;
    *&v326 = v221;
    *(&v326 + 1) = v222;
    v327 = v223;
    goto LABEL_104;
  }

  v173 = v275;
  v174 = v275 + *(v273 + 104);
  v175 = *(v174 + 80);
  v314 = *(v174 + 64);
  v315 = v175;
  v316 = *(v174 + 96);
  v317 = *(v174 + 112);
  v176 = *(v174 + 16);
  v310 = *v174;
  v311 = v176;
  v177 = *(v174 + 48);
  v312 = *(v174 + 32);
  v313 = v177;
  v318[0] = v310;
  v318[1] = v176;
  v318[2] = v312;
  v318[3] = v177;
  v319 = v317;
  v318[6] = v316;
  v318[5] = v175;
  v318[4] = v314;
  v178 = v310;
  if (!v310)
  {
    v274 = v311;
    v276 = v310;
    v269 = v313;
    v270 = v312;
    v260 = v315;
    v268 = v314;
    v222 = *(&v316 + 1);
    v221 = v316;
    v223 = v317;
    goto LABEL_96;
  }

  sub_21D7A9690(&v310, &v334);
  v36 = &v334;
  *&v260 = v318 + 8;
  sub_21D1D9A84(v318 + 8, &v334);
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
  TTRITableSection.isHidden.setter(0);

  *&v276 = *(v178 + 16);
  if (v276)
  {
    a2 = 0;
    v179 = (v178 + 32);
    v259[1] = 0x800000021DC44900;
    *&v268 = 0x800000021DC4D940;
    *&v270 = "ew where no contact is selected";
    *&v269 = 0x800000021DC54940;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a2 >= *(v178 + 16))
      {
        __break(1u);
LABEL_109:
        swift_once();
LABEL_43:
        *&v334 = sub_21DBF516C();
        *(&v334 + 1) = v107;
        *v335 = 0;
        v335[8] = 0;
        sub_21D8188FC(&v334, 0, 1, v36, a2);
        sub_21D5D35A4();
        v100 = 0;
LABEL_48:
        v264 = 0;
        *&v271 = 0;
        v102 = 0;
        v103 = 128;
        goto LABEL_50;
      }

      v190 = v179[1];
      v189 = v179[2];
      v278[0] = *v179;
      v278[1] = v190;
      v278[2] = v189;
      v192 = v179[5];
      v191 = v179[6];
      v193 = v179[4];
      v278[3] = v179[3];
      v278[4] = v193;
      v279[0] = v192;
      v279[1] = v191;
      if (!*&v278[0])
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v197 = sub_21DBF516C();
        v199 = v198;
        v324 = v278[4];
        v325 = v279[0];
        v326 = v279[1];
        v320 = v278[0];
        v321 = v278[1];
        v323 = v278[3];
        v322 = v278[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21D214B98(0, *(v20 + 2) + 1, 1, v20);
        }

        v201 = *(v20 + 2);
        v200 = *(v20 + 3);
        v202 = v201 + 1;
        if (v201 >= v200 >> 1)
        {
          v20 = sub_21D214B98((v200 > 1), v201 + 1, 1, v20);
        }

        *&v335[56] = v323;
        *&v335[72] = v324;
        *&v335[88] = v325;
        *&v335[104] = v326;
        *&v335[8] = v320;
        *&v335[24] = v321;
        *&v334 = v197;
        *(&v334 + 1) = v199;
        *v335 = 0;
        *&v335[40] = v322;
        *&v335[120] = 0;
        *&v336 = 0;
        nullsub_1();
        *(v20 + 2) = v202;
        v203 = &v20[152 * v201];
        v204 = *v335;
        *(v203 + 2) = v334;
        *(v203 + 3) = v204;
        v205 = *&v335[16];
        v206 = *&v335[32];
        v207 = *&v335[64];
        *(v203 + 6) = *&v335[48];
        *(v203 + 7) = v207;
        *(v203 + 4) = v205;
        *(v203 + 5) = v206;
        v208 = *&v335[80];
        v209 = *&v335[96];
        v210 = *&v335[112];
        *(v203 + 22) = v336;
        *(v203 + 9) = v209;
        *(v203 + 10) = v210;
        *(v203 + 8) = v208;
        v211 = *(v20 + 3);
        v212 = v201 + 2;
        if (v212 > (v211 >> 1))
        {
          v20 = sub_21D214B98((v211 > 1), v212, 1, v20);
        }

        sub_21D6B9EA4(&v294);
        *(v20 + 2) = v212;
        v180 = &v20[152 * v202];
        v213 = v295;
        *(v180 + 2) = v294;
        *(v180 + 3) = v213;
        v214 = v296;
        v215 = v297;
        v216 = v299;
        *(v180 + 6) = v298;
        *(v180 + 7) = v216;
        *(v180 + 4) = v214;
        *(v180 + 5) = v215;
        v185 = v300;
        v186 = v301;
        v187 = v302;
        v188 = v303;
        goto LABEL_62;
      }

      if (v279[1])
      {
        *&v335[48] = v278[4];
        *&v335[64] = v279[0];
        *&v335[80] = v279[1];
        v334 = v278[0];
        *v335 = v278[1];
        *&v335[32] = v278[3];
        *&v335[16] = v278[2];
        sub_21D1D9C94(&v334, &v294);
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v194 = sub_21DBF516C();
        v196 = v195;
      }

      else
      {
        if (*(&v278[2] + 1))
        {
          v196 = *(&v278[2] + 1);
          v194 = *&v278[2];
        }

        else
        {
          v196 = *(&v278[1] + 1);
          if (*(&v278[1] + 1))
          {
            v194 = *&v278[1];
            sub_21DBF8E0C();
          }

          else
          {
            v196 = *(&v278[4] + 1);
            if (*(&v278[4] + 1))
            {
              v194 = *&v278[4];
            }

            else
            {
              v196 = *(&v279[0] + 1);
              if (!*(&v279[0] + 1))
              {
                sub_21D1D9A84(v278, &v334);
                v219 = qword_280D1BAA8;
                sub_21DBF8E0C();
                if (v219 != -1)
                {
                  swift_once();
                }

                v194 = sub_21DBF516C();
                v196 = v220;

                swift_bridgeObjectRelease_n();
                goto LABEL_83;
              }

              v194 = *&v279[0];
            }
          }
        }

        sub_21D1D9A84(v278, &v334);
        sub_21DBF8E0C();
      }

LABEL_83:
      v324 = v278[4];
      v325 = v279[0];
      v326 = v279[1];
      v320 = v278[0];
      v321 = v278[1];
      v323 = v278[3];
      v322 = v278[2];
      v294 = v278[0];
      v295 = v278[1];
      v299 = v279[0];
      v300 = v279[1];
      v296 = v278[2];
      v297 = v278[3];
      v298 = v278[4];
      sub_21D1D9C94(&v294, &v334);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21D214B98(0, *(v20 + 2) + 1, 1, v20);
      }

      v218 = *(v20 + 2);
      v217 = *(v20 + 3);
      if (v218 >= v217 >> 1)
      {
        v20 = sub_21D214B98((v217 > 1), v218 + 1, 1, v20);
      }

      sub_21D1D9AE0(v278);
      *&v335[56] = v323;
      *&v335[72] = v324;
      *&v335[88] = v325;
      *&v335[104] = v326;
      *&v335[8] = v320;
      *&v335[24] = v321;
      *&v334 = v194;
      *(&v334 + 1) = v196;
      *v335 = 0;
      *&v335[40] = v322;
      *&v335[120] = 0;
      *&v336 = 0;
      nullsub_1();
      *(v20 + 2) = v218 + 1;
      v180 = &v20[152 * v218];
      v181 = *v335;
      *(v180 + 2) = v334;
      *(v180 + 3) = v181;
      v182 = *&v335[16];
      v183 = *&v335[32];
      v184 = *&v335[64];
      *(v180 + 6) = *&v335[48];
      *(v180 + 7) = v184;
      *(v180 + 4) = v182;
      *(v180 + 5) = v183;
      v185 = *&v335[80];
      v186 = *&v335[96];
      v187 = *&v335[112];
      v188 = v336;
LABEL_62:
      *(v180 + 22) = v188;
      *(v180 + 9) = v186;
      *(v180 + 10) = v187;
      *(v180 + 8) = v185;
      ++a2;
      v179 += 7;
      if (v276 == a2)
      {
        goto LABEL_100;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_100:
  v225 = v274;
  v226 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell, sub_21D80E620) + 32);

  v227 = v226 + *((*MEMORY[0x277D85000] & *v226) + 0x78);
  swift_beginAccess();
  v228 = *v227;
  v229 = *(v227 + 2);
  v295 = *(v227 + 1);
  v296 = v229;
  v294 = v228;
  v230 = *(v227 + 3);
  v231 = *(v227 + 4);
  v232 = *(v227 + 6);
  v299 = *(v227 + 5);
  v300 = v232;
  v297 = v230;
  v298 = v231;
  v233 = *(v227 + 7);
  v234 = *(v227 + 8);
  v235 = *(v227 + 10);
  v303 = *(v227 + 9);
  v304 = v235;
  v301 = v233;
  v302 = v234;
  v236 = *(v227 + 11);
  v237 = *(v227 + 12);
  v238 = *(v227 + 13);
  v308 = v227[224];
  v307 = v238;
  v306 = v237;
  v305 = v236;
  v239 = *(v227 + 3);
  v291 = *(v227 + 2);
  v292 = v239;
  v293 = *(v227 + 8);
  v240 = *(v227 + 1);
  v289 = *v227;
  v290 = v240;
  v241 = *(v227 + 88);
  v242 = *(v227 + 8);
  v281 = *(v227 + 7);
  v282 = v242;
  v243 = *(v227 + 9);
  v244 = *(v227 + 10);
  v287 = *(v227 + 13);
  v288 = v241;
  v245 = *(v227 + 12);
  v285 = *(v227 + 11);
  v286 = v245;
  v283 = v243;
  v284 = v244;
  v246 = v308;
  sub_21D0D3954(&v294, &v334, &unk_27CE5EB10, &unk_21DC1D6F0);

  v309[4] = v285;
  v309[5] = v286;
  v309[6] = v287;
  v309[0] = v281;
  v309[1] = v282;
  v309[3] = v284;
  v309[2] = v283;
  sub_21D1D9AE0(v309);

  v247 = *(v260 + 80);
  v285 = *(v260 + 64);
  v286 = v247;
  v287 = *(v260 + 96);
  v248 = *(v260 + 16);
  v281 = *v260;
  v282 = v248;
  v249 = *(v260 + 48);
  v250 = v225 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  v283 = *(v260 + 32);
  v284 = v249;
  swift_beginAccess();
  v251 = v273;
  if ((*(*(v273 - 8) + 48))(v250, 1, v273))
  {
    v252 = 0;
  }

  else
  {
    v252 = *(v250 + *(v251 + 40));
  }

  v173 = v275;
  ShouldCategorizeGroceryItemsSSSb_tFZ_0 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO08assigneeE9CellTitle32listShouldCategorizeGroceryItemsSSSb_tFZ_0(v252);
  v255 = v254;

  v256 = *(*(v225 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell) + 32);
  *v335 = v290;
  v334 = v289;
  *&v335[16] = v291;
  *&v335[32] = v292;
  *&v335[48] = v293;
  *&v335[56] = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *&v335[72] = v288;
  *&v335[64] = v255;
  *&v335[88] = v20;
  v338 = v285;
  v339 = v286;
  v340 = v287;
  *&v335[96] = v281;
  *&v335[112] = v282;
  v337 = v284;
  v336 = v283;
  v341 = v246;
  v257 = v256;
  sub_21D0D3954(&v334, v278, &unk_27CE5EB10, &unk_21DC1D6F0);
  sub_21D5C9608(&v334);

  v278[2] = v291;
  v278[3] = v292;
  v278[0] = v289;
  v278[1] = v290;
  *&v278[4] = v293;
  *(&v278[4] + 1) = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *(v279 + 8) = v288;
  *&v279[0] = v255;
  *(&v279[1] + 1) = v20;
  v279[2] = v281;
  v279[3] = v282;
  v279[7] = v286;
  v279[8] = v287;
  v279[5] = v284;
  v279[6] = v285;
  v279[4] = v283;
  v280 = v246;
  sub_21D0CF7E0(v278, &unk_27CE5EB10, &unk_21DC1D6F0);
  v324 = v314;
  v325 = v315;
  v326 = v316;
  v327 = v317;
  v320 = v310;
  v321 = v311;
  v322 = v312;
  v323 = v313;
  v172 = v272;
  v224 = v273;
LABEL_104:
  sub_21D8148AC(v172);
  sub_21D815860();
  if ((v172 & 0x80) != 0 || (v258 = *(v173 + *(v224 + 128))) == 0)
  {
    sub_21D810A64();
    TTRITableSection.isHidden.setter(1);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell, sub_21D811290);
    sub_21D5D3E3C();

    sub_21D815E84(MEMORY[0x277D84F90]);

    sub_21D7A96C8(&v320);
    sub_21D7A9648(v263, v261, v262);
    sub_21D48C240(v267, v264, v271, v266, v265);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_21D810A64();
    TTRITableSection.isHidden.setter(0);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell, sub_21D811290);
    sub_21D5D3E3C();

    sub_21D815E84(v258);

    sub_21D7A96C8(&v320);
    sub_21D7A9648(v263, v261, v262);
    sub_21D48C240(v267, v264, v271, v266, v265);
  }
}

void sub_21D81434C(char a1, uint64_t a2)
{
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
  v4 = ~a1;
  TTRITableSection.isHidden.setter((a1 & 1) == 0);

  v5 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14) + 32);

  v6 = MEMORY[0x277D85000];
  v7 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x78);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[8];
  v11 = *(v7 + 4);
  v10 = *(v7 + 5);
  LOBYTE(v93[0]) = 1;
  *&v98 = v8;
  BYTE8(v98) = v9;
  v99 = 0;
  v100 = 1;
  v101 = v11;
  v102 = v10;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v98);

  if ((v4 & 1) == 0)
  {
    v12 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell, sub_21D80C538) + 32);

    v13 = v12 + *((*v6 & *v12) + 0x78);
    swift_beginAccess();
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 3);
    v68[2] = *(v13 + 2);
    v68[3] = v16;
    v68[0] = v14;
    v68[1] = v15;
    v17 = *(v13 + 4);
    v18 = *(v13 + 5);
    v19 = *(v13 + 6);
    *(v69 + 14) = *(v13 + 110);
    v68[5] = v18;
    v69[0] = v19;
    v68[4] = v17;
    v20 = *v13;
    v21 = *(v13 + 1);
    v22 = *(v13 + 2);
    v93[3] = *(v13 + 3);
    v93[2] = v22;
    v93[1] = v21;
    v93[0] = v20;
    v23 = *(v13 + 4);
    v24 = *(v13 + 5);
    v25 = *(v13 + 6);
    v94 = *(v13 + 14);
    v93[6] = v25;
    v93[5] = v24;
    v93[4] = v23;
    v95 = 0;
    v26 = *(v13 + 121);
    v97 = v13[125];
    v96 = v26;
    sub_21D539B98(v68, v88);
    sub_21D5C6D8C(v93);

    v27 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell;
    v28 = *(*(a2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell) + 32);
    v29 = (v28 + *((*v6 & *v28) + 0x78));
    swift_beginAccess();
    v30 = v29[4];
    v31 = v29[5];
    v32 = *(v29 + 110);
    v76[0] = v29[6];
    v33 = *v29;
    v34 = v29[1];
    v35 = v29[3];
    v72 = v29[2];
    v73 = v35;
    v70 = v33;
    v71 = v34;
    *(v76 + 14) = v32;
    v74 = v30;
    v75 = v31;
    v36 = v28;
    sub_21D539B98(&v70, v88);

    v88[2] = v72;
    v88[3] = v73;
    v88[4] = v74;
    v88[0] = v70;
    v88[1] = v71;
    *v92 = *(v76 + 8);
    *&v92[14] = *(&v76[1] + 6);
    v89 = v75;
    v90 = 0;
    v91 = 0;
    sub_21D5C6D8C(v88);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60);
    sub_21D5D3E3C();

    sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4);
    sub_21D5D3E3C();

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C);
    sub_21D5D3E3C();

    sub_21D5D3E3C();

    v37 = *(*(a2 + v27) + 32);
    v38 = (v37 + *((*v6 & *v37) + 0x78));
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];
    v41 = v38[3];
    v77[2] = v38[2];
    v77[3] = v41;
    v77[0] = v39;
    v77[1] = v40;
    v42 = v38[4];
    v43 = v38[5];
    v44 = v38[6];
    *&v78[14] = *(v38 + 110);
    v77[5] = v43;
    *v78 = v44;
    v77[4] = v42;
    v45 = *v38;
    v46 = v38[1];
    v47 = v38[3];
    v84[2] = v38[2];
    v84[3] = v47;
    v84[0] = v45;
    v84[1] = v46;
    v48 = v38[4];
    v49 = v38[5];
    v50 = v38[6];
    *&v85[12] = *(v38 + 108);
    v84[5] = v49;
    *v85 = v50;
    v84[4] = v48;
    v86 = 1;
    v87 = v78[29];
    v51 = v37;
    sub_21D539B98(v77, v81);
    sub_21D5C6D8C(v84);

    v52 = *(*(a2 + v27) + 32);
    v53 = (v52 + *((*v6 & *v52) + 0x78));
    swift_beginAccess();
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[3];
    v79[2] = v53[2];
    v79[3] = v56;
    v79[0] = v54;
    v79[1] = v55;
    v57 = v53[4];
    v58 = v53[5];
    v59 = v53[6];
    *(v80 + 14) = *(v53 + 110);
    v79[5] = v58;
    v80[0] = v59;
    v79[4] = v57;
    v60 = *v53;
    v61 = v53[1];
    v62 = v53[3];
    v81[2] = v53[2];
    v81[3] = v62;
    v81[0] = v60;
    v81[1] = v61;
    v63 = v53[4];
    v64 = v53[5];
    v65 = v53[6];
    *&v82[13] = *(v53 + 109);
    v81[5] = v64;
    *v82 = v65;
    v81[4] = v63;
    v83 = 0;
    v66 = v52;
    sub_21D539B98(v79, &v67);
    sub_21D5C6D8C(v81);
  }
}

uint64_t sub_21D8148AC(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v163 - v5;
  v7 = type metadata accessor for TTRReminderDetailViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  sub_21D0D3954(v2 + v11, v6, &qword_27CE62270, &unk_21DC2B5E0);
  v12 = *(v8 + 48);
  v177 = v7;
  if (v12(v6, 1, v7) == 1)
  {
    return sub_21D0CF7E0(v6, &qword_27CE62270, &unk_21DC2B5E0);
  }

  sub_21D819EB0(v6, v10, type metadata accessor for TTRReminderDetailViewModel);
  if ((a1 & 0x400) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10[v177[28]];
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
  v172 = v14;
  sub_21D5D3E3C();

  v171 = v14 ^ 1;
  if (((v14 ^ 1) & 1) == 0)
  {
    v15 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell) + 32);
    v16 = &v10[v177[28]];
    v17 = *v16;
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);
    LOBYTE(v197) = v17;
    *(&v197 + 1) = v19;
    *&v198 = v18;
    v20 = v15;
    v21 = TTRReminderHashtagData.detailText.getter();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v176 = v23;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = v20 + *((*MEMORY[0x277D85000] & *v20) + 0x78);
    swift_beginAccess();
    v26 = *(v25 + 1);
    v205 = *v25;
    v206 = v26;
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = *(v25 + 5);
    v209 = *(v25 + 4);
    v210 = v29;
    v207 = v27;
    v208 = v28;
    v30 = *(v25 + 6);
    v31 = *(v25 + 7);
    v32 = *(v25 + 9);
    v211[2] = *(v25 + 8);
    v211[3] = v32;
    v211[0] = v30;
    v211[1] = v31;
    v33 = *(v25 + 10);
    v34 = *(v25 + 11);
    v35 = *(v25 + 12);
    *&v211[7] = *(v25 + 26);
    v211[5] = v34;
    v211[6] = v35;
    v211[4] = v33;
    sub_21D313A94(&v205, v237);

    v237[4] = v209;
    v237[5] = v210;
    v237[0] = v205;
    v237[1] = v206;
    v237[2] = v207;
    v237[3] = v208;
    v241 = *(&v211[1] + 8);
    v242 = *(&v211[2] + 8);
    v246 = *(&v211[6] + 8);
    v245 = *(&v211[5] + 8);
    v244 = *(&v211[4] + 8);
    v243 = *(&v211[3] + 8);
    v238 = *&v211[0];
    v239 = v176;
    v240 = v24;
    sub_21D5C62E8(v237);
  }

  if ((a1 & 8) != 0 || (v36 = v10[v177[17]], v36 == 2))
  {
    LODWORD(v37) = 1;
  }

  else
  {
    v38 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4) + 32);

    v39 = v38 + *((*MEMORY[0x277D85000] & *v38) + 0x78);
    swift_beginAccess();
    v40 = *v39;
    v41 = *(v39 + 1);
    v42 = *(v39 + 3);
    v207 = *(v39 + 2);
    v208 = v42;
    v205 = v40;
    v206 = v41;
    v43 = *(v39 + 4);
    v44 = *(v39 + 5);
    v45 = *(v39 + 6);
    *(v211 + 14) = *(v39 + 110);
    v210 = v44;
    v211[0] = v45;
    v209 = v43;
    v46 = *v39;
    v47 = *(v39 + 1);
    v48 = *(v39 + 3);
    v232[2] = *(v39 + 2);
    v232[3] = v48;
    v232[0] = v46;
    v232[1] = v47;
    v49 = *(v39 + 4);
    v50 = *(v39 + 5);
    v51 = *(v39 + 6);
    v233 = *(v39 + 14);
    v232[5] = v50;
    v232[6] = v51;
    v232[4] = v49;
    v234 = v36 & 1;
    v52 = *(v39 + 121);
    v236 = v39[125];
    v235 = v52;
    sub_21D539B98(&v205, &v197);
    sub_21D5C6D8C(v232);

    LODWORD(v37) = 0;
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
  sub_21D5D3E3C();

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell, sub_21D80EE68);
  v170 = (a1 >> 4) & 1;
  sub_21D5D3E3C();

  if ((a1 & 0x10) == 0)
  {
    v53 = *&v10[v177[15]];
    v54 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell) + 32);
    v55 = (v54 + *((*MEMORY[0x277D85000] & *v54) + 0x78));
    swift_beginAccess();
    v56 = *v55;
    v57 = v55[1];
    v58 = v55[3];
    v207 = v55[2];
    v208 = v58;
    v205 = v56;
    v206 = v57;
    v59 = v55[4];
    v60 = v55[5];
    v61 = v55[6];
    *(v211 + 9) = *(v55 + 105);
    v210 = v60;
    v211[0] = v61;
    v209 = v59;
    v62 = v55[1];
    v229[0] = *v55;
    v229[1] = v62;
    v63 = v55[2];
    v64 = v55[3];
    v65 = v55[6];
    v229[5] = v55[5];
    v229[6] = v65;
    v66 = v55[4];
    v229[3] = v64;
    v229[4] = v66;
    v229[2] = v63;
    v230 = v53;
    v231 = BYTE8(v211[1]);
    v67 = v54;
    sub_21D0D3954(&v205, &v197, &unk_27CE62340, &qword_21DC1D6E8);
    sub_21D5C8CB4(v229);
  }

  if ((a1 & 0x20) != 0)
  {
    v68 = 0;
  }

  else
  {
    v68 = v10[v177[11]];
  }

  v176 = a1;
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell, sub_21D80FAAC);
  v173 = v68;
  sub_21D5D3E3C();

  v174 = v37;
  v169 = v68 ^ 1;
  v175 = v2;
  if (((v68 ^ 1) & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell;
    v70 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell) + 32);
    v71 = &v10[v177[6]];
    v72 = *(v71 + 1);
    v168 = *v71;
    v73 = (v70 + *((*MEMORY[0x277D85000] & *v70) + 0x78));
    swift_beginAccess();
    v205 = *v73;
    v74 = v73[1];
    v75 = v73[2];
    v76 = v73[4];
    v208 = v73[3];
    v209 = v76;
    v206 = v74;
    v207 = v75;
    v77 = v73[5];
    v78 = v73[6];
    v79 = v73[7];
    *(&v211[1] + 9) = *(v73 + 121);
    v211[0] = v78;
    v211[1] = v79;
    v210 = v77;
    v220 = *v73;
    v80 = v73[6];
    v81 = v73[7];
    v82 = v73[4];
    v226 = v73[5];
    v227 = v80;
    v228[0] = v81;
    *(v228 + 9) = *(v73 + 121);
    v83 = v73[3];
    v223 = v73[2];
    v224 = v83;
    v225 = v82;
    v84 = v70;
    v2 = v175;
    v85 = v84;
    sub_21DBF8E0C();
    sub_21D5D2970(&v205, &v197);

    v221 = v168;
    v222 = v72;
    sub_21D5C8234(&v220);

    v168 = v69;
    v86 = *(*(v2 + v69) + 32);
    v87 = &v10[v177[8]];
    v88 = *(v87 + 4);
    v89 = *(v87 + 5);
    if (v87[48])
    {
      v90 = *(v87 + 1);
      v197 = *v87;
      v198 = v90;
      *&v199 = v88;
      *(&v199 + 1) = v89;
      LOBYTE(v200) = 1;
      v91 = v86;
      v92 = TTRListColors.Color.nativeColor.getter();
      v93 = [v92 accessibilityName];

      v88 = sub_21DBFA16C();
      v89 = v94;
    }

    else
    {
      v95 = v86;
      sub_21DBF8E0C();
    }

    v37 = v86 + *((*MEMORY[0x277D85000] & *v86) + 0x78);
    swift_beginAccess();
    v182 = *v37;
    v96 = *(v37 + 16);
    v97 = *(v37 + 32);
    v98 = *(v37 + 64);
    v185 = *(v37 + 48);
    v186 = v98;
    v183 = v96;
    v184 = v97;
    v99 = *(v37 + 80);
    v100 = *(v37 + 96);
    v101 = *(v37 + 112);
    *(v189 + 9) = *(v37 + 121);
    v188 = v100;
    v189[0] = v101;
    v187 = v99;
    sub_21D5D2970(&v182, &v197);

    v212[0] = v182;
    v212[1] = v183;
    v217 = v187;
    v218 = v188;
    v219[0] = v189[0];
    *(v219 + 9) = *(v189 + 9);
    v215 = v185;
    v216 = v186;
    v213 = v88;
    v214 = v89;
    sub_21D5C8234(v212);

    v102 = *(*&v168[v2] + 32);
    v103 = &v10[v177[9]];
    v104 = v103[3];
    v192 = v103[2];
    v193 = v104;
    v194[0] = v103[4];
    *(v194 + 9) = *(v103 + 73);
    v105 = v103[1];
    v190 = *v103;
    v191 = v105;
    v106 = (v102 + *((*MEMORY[0x277D85000] & *v102) + 0x78));
    swift_beginAccess();
    v197 = *v106;
    v107 = v106[1];
    v108 = v106[2];
    v109 = v106[4];
    v200 = v106[3];
    v201 = v109;
    v198 = v107;
    v199 = v108;
    v110 = v106[5];
    v111 = v106[6];
    v112 = v106[7];
    *(v204 + 9) = *(v106 + 121);
    v203 = v111;
    v204[0] = v112;
    v202 = v110;
    v113 = v106[1];
    v180[0] = *v106;
    v180[1] = v113;
    v114 = v106[3];
    v180[2] = v106[2];
    v115 = v106[4];
    v195[0] = v114;
    v195[1] = v115;
    v117 = v106[6];
    v116 = v106[7];
    v118 = *(v106 + 121);
    v195[2] = v106[5];
    *(v196 + 9) = v118;
    v195[3] = v117;
    v196[0] = v116;
    v119 = v102;
    sub_21D0D3954(&v190, v178, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D5D2970(&v197, v178);
    sub_21D0CF7E0(v195, &unk_27CE5E9E0, &unk_21DC1D600);
    v180[5] = v192;
    v180[6] = v193;
    v181[0] = v194[0];
    *(v181 + 9) = *(v194 + 9);
    v180[3] = v190;
    v180[4] = v191;
    sub_21D5C8234(v180);

    LOBYTE(v37) = v174;
  }

  v120 = &v10[v177[37]];
  v121 = v120[40];
  v122 = (v176 & 0x800) != 0 || v121 == 255;
  LODWORD(v123) = !v122;
  if (!v122)
  {
    v125 = *(v120 + 3);
    v124 = *(v120 + 4);
    v168 = v10;
    v37 = *(v120 + 1);
    v126 = *(v120 + 2);
    v167 = v123;
    v123 = *v120;
    v127 = *v120;
    v128 = v124;
    v166 = v124;
    sub_21D7A9844(v127, v37, v126, v125, v124, v121);
    v129 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8) + 32);

    v178[0] = v123;
    v178[1] = v37;
    v178[2] = v126;
    v178[3] = v125;
    v178[4] = v128;
    v179 = v121;
    v130 = TTRReminderDetailViewModel.SectionPickerVisibility.Option.parentSectionDisplayName.getter();
    v164 = v131;
    v165 = v130;
    v132 = v129 + *((*MEMORY[0x277D85000] & *v129) + 0x78);
    swift_beginAccess();
    v133 = *(v132 + 2);
    v134 = *v132;
    v206 = *(v132 + 1);
    v207 = v133;
    v205 = v134;
    v135 = *(v132 + 3);
    v136 = *(v132 + 4);
    v137 = *(v132 + 5);
    LOBYTE(v211[0]) = v132[96];
    v209 = v136;
    v210 = v137;
    v208 = v135;
    sub_21D5D35AC(&v205, &v197);

    v182 = v205;
    v186 = v209;
    v187 = v210;
    LOBYTE(v188) = v211[0];
    v184 = v207;
    v185 = v208;
    *&v183 = v165;
    *(&v183 + 1) = v164;
    sub_21D5C8F8C(&v182);
    v138 = v123;
    LOBYTE(v123) = v167;
    v139 = v37;
    LOBYTE(v37) = v174;
    v140 = v126;
    v10 = v168;
    v141 = v125;
    v2 = v175;
    sub_21D7A98A0(v138, v139, v140, v141, v166, v121);
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8);
  v142 = v123 ^ 1;
  sub_21D5D3E3C();

  if (v176 & 0x40) != 0 || (v10[v177[31] + 8])
  {
    v143 = 1;
  }

  else
  {
    v144 = v123;
    v145 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4) + 32);

    v146 = objc_opt_self();
    v147 = sub_21DBFABEC();
    v148 = [v146 localizedStringFromNumber:v147 numberStyle:1];

    v123 = sub_21DBFA16C();
    v37 = v149;

    v150 = v145 + *((*MEMORY[0x277D85000] & *v145) + 0x78);
    swift_beginAccess();
    v151 = *(v150 + 1);
    v197 = *v150;
    v198 = v151;
    v152 = *(v150 + 2);
    v153 = *(v150 + 3);
    v154 = *(v150 + 5);
    v201 = *(v150 + 4);
    v202 = v154;
    v199 = v152;
    v200 = v153;
    v155 = *(v150 + 6);
    v156 = *(v150 + 7);
    v157 = *(v150 + 9);
    v204[1] = *(v150 + 8);
    v204[2] = v157;
    v203 = v155;
    v204[0] = v156;
    v158 = *(v150 + 10);
    v159 = *(v150 + 11);
    v160 = *(v150 + 12);
    *&v204[6] = *(v150 + 26);
    v204[4] = v159;
    v204[5] = v160;
    v204[3] = v158;
    sub_21D313A94(&v197, &v205);

    v209 = v201;
    v210 = v202;
    v205 = v197;
    v206 = v198;
    v207 = v199;
    v208 = v200;
    *(&v211[2] + 8) = *(&v204[1] + 8);
    *(&v211[1] + 8) = *(v204 + 8);
    *(&v211[6] + 8) = *(&v204[5] + 8);
    *(&v211[5] + 8) = *(&v204[4] + 8);
    *(&v211[4] + 8) = *(&v204[3] + 8);
    *(&v211[3] + 8) = *(&v204[2] + 8);
    *&v211[0] = v203;
    *(&v211[0] + 1) = v123;
    LOBYTE(v123) = v144;
    *&v211[1] = v37;
    LOBYTE(v37) = v174;
    sub_21D5C62E8(&v205);

    v143 = 0;
  }

  v161 = v173;
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
  sub_21D5D3E3C();

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___organizationSection, sub_21D811E88);
    TTRITableSection.isHidden.setter(v143 & ((v161 | v123 | v172) ^ 1));

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flagAndPrioritySection, sub_21D8121EC);
    v162 = v37 & v170;
  }

  else
  {
    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
    TTRITableSection.isHidden.setter(v171);

    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
    TTRITableSection.isHidden.setter(v37);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___pickersSection, sub_21D80EC88);
    TTRITableSection.isHidden.setter(v169 & (v176 >> 4) & v142);

    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtaskSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
    v162 = v143;
  }

  TTRITableSection.isHidden.setter(v162);

  return sub_21D819F20(v10, type metadata accessor for TTRReminderDetailViewModel);
}

uint64_t sub_21D815860()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - v6;
  v7 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for TTRReminderDetailViewModel(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  sub_21D0D3954(v1 + v17, v12, &qword_27CE62270, &unk_21DC2B5E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21D0CF7E0(v12, &qword_27CE62270, &unk_21DC2B5E0);
  }

  sub_21D819EB0(v12, v16, type metadata accessor for TTRReminderDetailViewModel);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 48) == 1)
  {
    sub_21D81A2E0(&v16[*(v13 + 132)], v9, type metadata accessor for TTRReminderDetailViewModel.URLState);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
    v20 = 1;
    if ((*(*(v19 - 8) + 48))(v9, 1, v19) != 1)
    {
      v21 = v44;
      sub_21D57690C(v9, v44);
      sub_21D0D3954(v21, v4, &qword_27CE5EA20, &qword_21DC0D4A0);
      v22 = sub_21DBF54CC();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v4, 1, v22) == 1)
      {
        sub_21D0CF7E0(v4, &qword_27CE5EA20, &qword_21DC0D4A0);
        v43 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        v43 = sub_21DBF535C();
        v24 = v25;
        (*(v23 + 8))(v4, v22);
      }

      v26 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC) + 32);

      v27 = MEMORY[0x277D85000];
      v28 = *((*MEMORY[0x277D85000] & *v26) + 0x68);
      swift_beginAccess();
      v29 = *(v26 + v28);
      if (!v29 || (v30 = *(v29 + qword_27CE65428 + 8), ObjectType = swift_getObjectType(), v32 = *(v30 + 216), swift_unknownObjectRetain(), LOBYTE(v30) = v32(ObjectType, v30), swift_unknownObjectRelease(), (v30 & 1) == 0))
      {
        v33 = v26 + *((*v27 & *v26) + 0x78);
        swift_beginAccess();
        v34 = *v33;
        v35 = *(v33 + 1);
        v36 = v33[16];
        v37 = v33[17];
        v38 = *(v33 + 4);
        v42 = *(v33 + 3);
        v39 = *(v33 + 5);
        sub_21D59B950(v34, v35, v36);
        v40 = v39;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D5968AC(v34, v35, v36);
        v45 = 0;
        *&v46 = v43;
        *(&v46 + 1) = v24;
        v47 = 0;
        v48 = v37;
        v49 = v42;
        v50 = v38;
        v51 = v39;
        sub_21D5C6B34(&v46);
      }

      sub_21D0CF7E0(v44, &qword_27CE5EA20, &qword_21DC0D4A0);
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC);
  sub_21D5D3E3C();

  v41 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_urlSection;
  swift_beginAccess();
  if (*(v1 + v41))
  {
    swift_endAccess();

    TTRITableSection.isHidden.setter(v20);

    return sub_21D819F20(v16, type metadata accessor for TTRReminderDetailViewModel);
  }

  else
  {
    sub_21D819F20(v16, type metadata accessor for TTRReminderDetailViewModel);
    return swift_endAccess();
  }
}

char *sub_21D815E84(uint64_t a1)
{
  v36 = a1;
  v2 = sub_21DBF813C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1;
  v4 = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentsGroup, sub_21D810C60);
  swift_beginAccess();
  v5 = *(v4 + 48);
  sub_21DBF8E0C();

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v43[0] = MEMORY[0x277D84F90];
  v8 = *(v5 + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = 16 * v6 + 32;
  while (1)
  {
    if (v8 == v6)
    {

      if (v9 >> 62)
      {
        goto LABEL_21;
      }

      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_22:

      v17 = MEMORY[0x277D84F90];
LABEL_23:
      v29 = v36;
      v44 = v36;
      v42 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62310, &qword_21DC2B268);
      sub_21D0D0F1C(&qword_27CE62318, &qword_27CE62310, &qword_21DC2B268, MEMORY[0x277D83988]);
      v30 = v37;
      sub_21DBFAC5C();

      MEMORY[0x28223BE20](v31);
      *(&v34 - 2) = v29;
      *(&v34 - 1) = v32;
      MEMORY[0x28223BE20](v33);
      *(&v34 - 2) = v29;

      sub_21D5D0D18(v30, sub_21D81A144, (&v34 - 4), sub_21D81A14C, (&v34 - 4));

      return (*(v38 + 8))(v30, v39);
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    ++v6;
    v11 = v10 + 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8, &qword_21DC2B260);
    v12 = swift_dynamicCastClass();
    v10 = v11;
    if (v12)
    {
      v13 = swift_unknownObjectRetain();
      MEMORY[0x223D42D80](v13);
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v9 = v43[0];
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  v14 = sub_21DBFBD7C();
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_11:
  v44 = v7;
  result = sub_21D18F570(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v44;
    v40 = v9 & 0xC000000000000001;
    v41 = v9;
    do
    {
      if (v40)
      {
        v18 = MEMORY[0x223D44740](v16, v9);
      }

      else
      {
        v18 = *(v9 + 8 * v16 + 32);
      }

      v19 = *(v18 + 32) + *((*MEMORY[0x277D85000] & **(v18 + 32)) + 0x78);
      swift_beginAccess();
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = v20;
      sub_21DBF8E0C();
      v25 = v22;

      v44 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21D18F570((v26 > 1), v27 + 1, 1);
        v17 = v44;
      }

      ++v16;
      *(v17 + 16) = v27 + 1;
      v28 = (v17 + 32 * v27);
      v28[4] = v20;
      v28[5] = v21;
      v28[6] = v23;
      v28[7] = v25;
      v9 = v41;
    }

    while (v14 != v16);

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t sub_21D816334(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v24 = v2;
    v25 = v3;
    v4 = (a2 + 32 * result);
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
    v9 = objc_allocWithZone(type metadata accessor for TTRIAttachmentCellContent(0));
    v10 = (v9 + qword_27CE63EA8);
    *v10 = 0;
    v10[1] = 0;
    v11 = MEMORY[0x277D85000];
    *(v9 + *((*MEMORY[0x277D85000] & *v9) + 0x68)) = 0;
    *(v9 + *((*v11 & *v9) + 0x70) + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v9 + *((*v11 & *v9) + 0x90)) = 0;
    v12 = (v9 + *((*v11 & *v9) + 0x78));
    *v12 = v5;
    v12[1] = v6;
    v12[2] = v7;
    v12[3] = v8;
    *(v9 + *((*v11 & *v9) + 0x80)) = 0;
    v13 = v9 + *((*v11 & *v9) + 0x88);
    strcpy(v13, "AttachmentCell");
    v13[15] = -18;
    v14 = v5;
    sub_21DBF8E0C();
    v15 = v8;
    v23.receiver = v9;
    v23.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62320, &qword_21DC2B270);
    v16 = objc_msgSendSuper2(&v23, sel_init);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = (v16 + qword_27CE63EA8);
    v19 = *(v16 + qword_27CE63EA8);
    v20 = *(v16 + qword_27CE63EA8 + 8);
    *v18 = sub_21D81A154;
    v18[1] = v17;

    sub_21D0D0E88(v19, v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8, &qword_21DC2B260);
    v21 = swift_allocObject();
    *(v21 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v21 + 48) = 1;
    *(v21 + 49) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    *(v21 + 72) = 1;
    *(v21 + 32) = v16;
    *(v21 + 40) = 0;
    v22 = v16 + *((*v11 & *v16) + 0x70);
    swift_beginAccess();
    *(v22 + 1) = &protocol witness table for TTRITableCell<A>;
    swift_unknownObjectWeakAssign();
    return v21;
  }

  __break(1u);
  return result;
}

void *sub_21D8165F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *(a1 + 1);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();

    v7[0] = v2;
    v7[1] = v3;
    v8 = v6;
    sub_21D8252C0(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D816688(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v3 = (a3 + 32 * a2);
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[7];
    v8 = v4;
    sub_21DBF8E0C();
    sub_21D5C9980(v4, v5, v6, v7);
    return;
  }

  __break(1u);
}

void sub_21D816700(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong performBatchUpdates:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for TTRIReminderDetailViewController(uint64_t a1)
{
  result = qword_27CE621B8;
  if (!qword_27CE621B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D816B00(uint64_t a1)
{
  sub_21D816C20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D816C20(uint64_t a1)
{
  if (!qword_27CE621C8)
  {
    type metadata accessor for TTRReminderDetailViewModel(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE621C8);
    }
  }
}

uint64_t sub_21D816C78()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_21D816CA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = type metadata accessor for TTRReminderDetailViewModel(0);
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v1 isViewLoaded];
  if (result)
  {
    sub_21D0D3954(a1, v11, &qword_27CE62270, &unk_21DC2B5E0);
    v18 = *(v13 + 48);
    if (v18(v11, 1, v12) == 1)
    {
      return sub_21D0CF7E0(v11, &qword_27CE62270, &unk_21DC2B5E0);
    }

    else
    {
      sub_21D819EB0(v11, v16, type metadata accessor for TTRReminderDetailViewModel);
      v19 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
      swift_beginAccess();
      sub_21D0D3954(&v1[v19], v8, &qword_27CE62270, &unk_21DC2B5E0);
      v20 = v18(v8, 1, v12);
      sub_21D0CF7E0(v8, &qword_27CE62270, &unk_21DC2B5E0);
      sub_21D81A2E0(v16, v5, type metadata accessor for TTRReminderDetailViewModel);
      (*(v13 + 56))(v5, 0, 1, v12);
      swift_beginAccess();
      sub_21D0F02F4(v5, &v1[v19], &qword_27CE62270, &unk_21DC2B5E0);
      v21 = swift_endAccess();
      if (v20 == 1)
      {
        sub_21D809510(v16);
      }

      else if (*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController])
      {
        v25[0] = 1;
        MEMORY[0x28223BE20](v21);
        *&v25[-16] = v1;
        *&v25[-8] = v16;
        v23 = v22;
        TTRITableDataController.performBatchUpdates(by:updates:)(v25, sub_21D81A6B0);
      }

      v24 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton];
      if (v24)
      {
        [v24 setEnabled_];
      }

      return sub_21D819F20(v16, type metadata accessor for TTRReminderDetailViewModel);
    }
  }

  return result;
}

void sub_21D81703C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  v17 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    goto LABEL_4;
  }

  sub_21D81A2E0(v16 + *(v17 + 132), v12, type metadata accessor for TTRReminderDetailViewModel.URLState);
  sub_21D819EB0(v12, v15, type metadata accessor for TTRReminderDetailViewModel.URLState);
  sub_21D81A2E0(v15, v9, type metadata accessor for TTRReminderDetailViewModel.URLState);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    sub_21D819F20(v15, type metadata accessor for TTRReminderDetailViewModel.URLState);
    sub_21D819F20(v9, type metadata accessor for TTRReminderDetailViewModel.URLState);
LABEL_4:
    v19 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC) + 32);

    v20 = v19 + *((*MEMORY[0x277D85000] & *v19) + 0x78);
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = v20[16];
    v24 = v20[17];
    v26 = *(v20 + 3);
    v25 = *(v20 + 4);
    v27 = *(v20 + 5);
    sub_21D59B950(v21, v22, v23);
    v28 = v27;
    sub_21DBF8E0C();
    sub_21D5968AC(v21, v22, v23);
    v46 = 0;
    v47 = xmmword_21DC0E710;
    v48 = 0;
    v49 = v24;
    v50 = v26;
    v51 = v25;
    v52 = v27;
    sub_21D5C6B34(&v47);

    return;
  }

  sub_21D57690C(v9, v6);
  v29 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC) + 32);

  sub_21D0D3954(v6, v3, &qword_27CE5EA20, &qword_21DC0D4A0);
  v30 = sub_21DBF54CC();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v3, 1, v30) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5EA20, &qword_21DC0D4A0);
    v44 = 0xE000000000000000;
    v45 = 0;
  }

  else
  {
    v32 = sub_21DBF535C();
    v44 = v33;
    v45 = v32;
    (*(v31 + 8))(v3, v30);
  }

  v34 = v29 + *((*MEMORY[0x277D85000] & *v29) + 0x78);
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = v34[16];
  v38 = v34[17];
  v39 = *(v34 + 3);
  v40 = *(v34 + 4);
  v41 = *(v34 + 5);
  sub_21D59B950(v35, v36, v37);
  v42 = v41;
  sub_21DBF8E0C();
  sub_21D5968AC(v35, v36, v37);
  v46 = 0;
  *&v47 = v45;
  *(&v47 + 1) = v44;
  v48 = 0;
  v49 = v38;
  v50 = v39;
  v51 = v40;
  v52 = v41;
  sub_21D5C6B34(&v47);

  sub_21D0CF7E0(v6, &qword_27CE5EA20, &qword_21DC0D4A0);
  sub_21D819F20(v15, type metadata accessor for TTRReminderDetailViewModel.URLState);
}

void sub_21D8177CC()
{
  v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] = 1;
  v1 = [v0 viewIfLoaded];
  [v1 setNeedsLayout];
}

uint64_t sub_21D817834(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0x1FFFFFFFCLL;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 264) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = &off_282EC6790;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_21D8178CC(void *a1, char a2, void *a3)
{
  v19[3] = sub_21D0D8CF0(0, &unk_27CE62380, 0x277D75B40);
  v19[4] = &protocol witness table for UITableView;
  v19[0] = a1;
  a1;
  v6 = [a3 transitionCoordinator];
  if (v6)
  {
    v7 = v6;
    if ([v6 initiallyInteractive] && (objc_msgSend(v7, sel_isInterruptible) & 1) == 0)
    {
      sub_21D0D32E4(v19, v18);
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      sub_21D0D0FD0(v18, v10 + 24);
      *(v10 + 64) = a2 & 1;
      v16 = sub_21D81A244;
      v17 = v10;
      v12 = MEMORY[0x277D85DD0];
      v13 = 1107296256;
      v14 = sub_21D83EFE8;
      v15 = &block_descriptor_151;
      v9 = _Block_copy(&v12);
      swift_unknownObjectRetain();

      [v7 notifyWhenInteractionChangesUsingBlock_];
    }

    else
    {
      if (![v7 isInterruptible])
      {
        UITableView.deselectAllNonMultiSelectRows(animated:)(a2 & 1);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v19);
      }

      sub_21D0D32E4(v19, v18);
      v8 = swift_allocObject();
      sub_21D0D0FD0(v18, v8 + 16);
      *(v8 + 56) = a2 & 1;
      v16 = sub_21D81A238;
      v17 = v8;
      v12 = MEMORY[0x277D85DD0];
      v13 = 1107296256;
      v14 = sub_21D83EFE8;
      v15 = &block_descriptor_145_0;
      v9 = _Block_copy(&v12);

      [v7 animateAlongsideTransition:0 completion:v9];
    }

    _Block_release(v9);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_21D817B38()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v1 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v1 + 40) |= 1uLL;
  *(v1 + 48) = 0;
  v2._object = 0x800000021DC49D80;
  v2._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
}

uint64_t sub_21D817BD4()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  v4 = v3;
  memset(v26, 0, 24);
  v26[3] = 0x1FFFFFFFELL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  sub_21D0CF7E0(v26, &unk_27CE5EA00, &unk_21DC0A7C0);
  v10[0] = v1;
  memset(&v10[1], 0, 24);
  v11 = 0x80;
  v12 = v2;
  v13 = v4;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xE000000000000000;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = objc_allocWithZone(type metadata accessor for TTRIDetailCellContent(0));
  v6 = sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A750, &qword_21DC1A2E0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 48) = 1;
  *(v7 + 49) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  v8 = v6 + *((*MEMORY[0x277D85000] & *v6) + 0x70);
  swift_beginAccess();
  *(v8 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v7;
}

id sub_21D817E50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v46 - v14;
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_viewDidAppear_, 1, v13);
  v16 = v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_firstViewDidAppearCalled];
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_firstViewDidAppearCalled] = 1;
  result = [v1 view];
  if (result)
  {
    v18 = result;
    v19 = UIView.firstResponderDescendant.getter();

    v49 = v3;
    if (v19)
    {
    }

    else
    {
      [v1 becomeFirstResponder];
    }

    v20 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
    v21 = *(v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleState);

    sub_21D0EF02C(2, v21);

    v22 = v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      v24 = swift_getObjectType();
      (*(v23 + 8))(v20, &off_282ED5018, (v16 ^ 1) & 1, v24, v23);
      swift_unknownObjectRelease();
    }

    v48 = v4;
    if (v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] == 1)
    {
      v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] = 0;
      v25 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

      v26 = MEMORY[0x277D85000];
      v27 = *((*MEMORY[0x277D85000] & *v25) + 0x68);
      swift_beginAccess();
      v28 = *(v25 + v27);
      if (v28)
      {
        v29 = *(v28 + qword_27CE63F48);
        v30 = [v29 window];
        [v30 makeKeyWindow];

        [v29 becomeFirstResponder];
        v25 = v29;
      }

      v31 = *(*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell] + 32);
      v32 = *((*v26 & *v31) + 0x68);
      swift_beginAccess();
      v33 = *(v31 + v32);
      if (v33)
      {
        v34 = *(v33 + qword_27CE63F48);
        v35 = v31;
        v36 = [v34 beginningOfDocument];
        v37 = [v34 endOfDocument];
        v38 = [v34 textRangeFromPosition:v36 toPosition:v37];

        [v34 setSelectedTextRange_];
      }
    }

    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v39 = sub_21DBFB12C();
    sub_21DBF9D6C();
    sub_21DBF9D9C();
    v47 = *(v9 + 8);
    v46 = v8;
    v47(v11, v8);
    v40 = swift_allocObject();
    *(v40 + 16) = v1;
    aBlock[4] = sub_21D819E88;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_40_1;
    v41 = _Block_copy(aBlock);
    v42 = v1;

    v43 = v50;
    sub_21DBF9D4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
    v44 = v51;
    v45 = v49;
    sub_21DBFBCBC();
    MEMORY[0x223D43880](v15, v43, v44, v41);
    _Block_release(v41);

    (*(v48 + 8))(v44, v45);
    (*(v52 + 8))(v43, v53);
    return (v47)(v15, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D818548(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF9D2C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D7C();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v21 = sub_21DBFB12C();
  sub_21DBF9D6C();
  sub_21DBF9D9C();
  v22 = *(v11 + 8);
  v22(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_21D539A88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_89_0;
  v18 = _Block_copy(aBlock);
  sub_21DBF8E0C();

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  v19 = v21;
  MEMORY[0x223D43880](v16, v9, v6, v18);
  _Block_release(v18);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v22)(v16, v23);
}

uint64_t sub_21D8188FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell, sub_21D80C538) + 32);

  v12 = v11 + *((*MEMORY[0x277D85000] & *v11) + 0x78);
  swift_beginAccess();
  v13 = *(v12 + 4);
  v14 = *(v12 + 5);
  v15 = *(v12 + 110);
  v194[0] = *(v12 + 6);
  v16 = *v12;
  v17 = *(v12 + 1);
  v18 = *(v12 + 3);
  v193[2] = *(v12 + 2);
  v193[3] = v18;
  v193[0] = v16;
  v193[1] = v17;
  *(v194 + 14) = v15;
  v193[4] = v13;
  v193[5] = v14;
  v19 = *(v12 + 1);
  v142 = *v12;
  v143 = v19;
  v20 = *(v12 + 2);
  v21 = *(v12 + 3);
  v22 = *(v12 + 4);
  v147 = *(v12 + 10);
  v145 = v21;
  v146 = v22;
  v144 = v20;
  v141 = *(v12 + 104);
  v23 = *(v12 + 121);
  v140 = v12[125];
  v139 = v23;
  sub_21D539B98(v193, &v175);

  if (*(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    if (v10 < 0)
    {
      v37 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C) + 32);

      v38 = v37 + *((*MEMORY[0x277D85000] & *v37) + 0x78);
      swift_beginAccess();
      v39 = *(v38 + 6);
      v40 = *(v38 + 105);
      v41 = *(v38 + 4);
      *v126 = *(v38 + 5);
      v42 = *v38;
      v43 = *(v38 + 1);
      v44 = *(v38 + 3);
      v123 = *(v38 + 2);
      v124 = v44;
      v121 = v42;
      v122 = v43;
      *&v126[25] = v40;
      *&v126[16] = v39;
      v125 = v41;
      v175 = *v38;
      v45 = *(v38 + 1);
      v46 = *(v38 + 2);
      v47 = *(v38 + 3);
      v179 = *(v38 + 8);
      v178 = v47;
      v177 = v46;
      v176 = v45;
      v48 = *(v38 + 88);
      v49 = *(v38 + 104);
      LOBYTE(v184) = v38[120];
      v183 = v49;
      v182 = v48;
      sub_21D5D359C(v7, v8);
      sub_21D0D3954(&v121, &v151, &qword_27CE5EAF0, &unk_21DC1D6D0);

      v180 = v7;
      v181 = v8;
      sub_21D5C889C(&v175);

      if ((a3 & 1) == 0)
      {
        v50 = *(*(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell) + 32);
        v51 = (v50 + *((*MEMORY[0x277D85000] & *v50) + 0x78));
        swift_beginAccess();
        v52 = *v51;
        v53 = v51[1];
        v54 = v51[2];
        v154 = v51[3];
        v153 = v54;
        v152 = v53;
        v151 = v52;
        v55 = v51[4];
        v56 = v51[5];
        v57 = v51[6];
        *&v157[9] = *(v51 + 105);
        *v157 = v57;
        v156 = v56;
        v155 = v55;
        v58 = *v51;
        v59 = v51[1];
        v190[2] = v51[2];
        v190[1] = v59;
        v190[0] = v58;
        v60 = v51[3];
        v61 = v51[4];
        v62 = v51[5];
        v190[6] = v51[6];
        v190[5] = v62;
        v190[4] = v61;
        v190[3] = v60;
        v191 = a2;
        v192 = v157[24];
        v63 = v50;
        sub_21D0D3954(&v151, v148, &qword_27CE5EAF0, &unk_21DC1D6D0);
        sub_21D5C889C(v190);
      }
    }

    else
    {
      v24 = *(sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4) + 32);

      v25 = v24 + *((*MEMORY[0x277D85000] & *v24) + 0x78);
      swift_beginAccess();
      v26 = *(v25 + 1);
      v121 = *v25;
      v122 = v26;
      v27 = *(v25 + 2);
      v28 = *(v25 + 3);
      v29 = *(v25 + 5);
      v125 = *(v25 + 4);
      *v126 = v29;
      v123 = v27;
      v124 = v28;
      v30 = *(v25 + 6);
      v31 = *(v25 + 7);
      v32 = *(v25 + 9);
      *&v126[48] = *(v25 + 8);
      *&v126[64] = v32;
      *&v126[16] = v30;
      *&v126[32] = v31;
      v33 = *(v25 + 10);
      v34 = *(v25 + 11);
      v35 = *(v25 + 12);
      *&v126[128] = *(v25 + 26);
      *&v126[96] = v34;
      *&v126[112] = v35;
      *&v126[80] = v33;
      sub_21D5D359C(v7, v8);
      sub_21D313A94(&v121, &v175);

      v177 = v123;
      v178 = v124;
      v176 = v122;
      v175 = v121;
      v186 = *&v126[72];
      v187 = *&v126[88];
      v188 = *&v126[104];
      v189 = *&v126[120];
      v182 = *&v126[8];
      v183 = *&v126[24];
      v184 = *&v126[40];
      v185 = *&v126[56];
      v179 = v125;
      v180 = v7;
      v181 = v8;
      sub_21D5C62E8(&v175);
    }
  }

  else
  {
    v36 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60) + 32);

    sub_21D5D359C(v7, v8);
    sub_21D5C88C4(v7, v8, v9, v10);
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60);
  sub_21D5D3E3C();

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C);
  sub_21D5D3E3C();

  sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4);
  sub_21D5D3E3C();

  v64 = (a5 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 96));
  v65 = *v64;
  if (*v64)
  {
    v66 = *(v64 + 8);
    sub_21DBF8E0C();
    v67 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14) + 32);

    LOBYTE(v121) = 1;
    *&v170 = v65;
    BYTE8(v170) = v66;
    v171 = 0;
    v172 = 1;
    v174 = 0;
    v173 = 0;
    sub_21D5C8AC8(&v170);
  }

  v68 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell;
  v69 = *(*(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell) + 32);
  v121 = v142;
  v122 = v143;
  v123 = v144;
  v124 = v145;
  v125 = v146;
  *&v126[16] = 0;
  *v126 = v147;
  *&v126[24] = v141;
  v126[40] = 1;
  *&v126[41] = v139;
  v126[45] = v140;
  v70 = v69;
  sub_21D539B98(&v121, &v151);
  sub_21D5C6D8C(&v121);

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14);
  sub_21D5D3E3C();

  v71 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell;
  v72 = *(*(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell) + 32);
  v73 = v72 + *((*MEMORY[0x277D85000] & *v72) + 0x78);
  swift_beginAccess();
  v74 = *v73;
  v75 = v73[8];
  v77 = *(v73 + 4);
  v76 = *(v73 + 5);
  LOBYTE(v151) = a3 & 1;
  *&v165 = v74;
  BYTE8(v165) = v75;
  v166 = a2;
  v167 = a3 & 1;
  v168 = v77;
  v169 = v76;
  sub_21DBF8E0C();
  v78 = v72;
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v165);

  v79 = *(*(a4 + v71) + 32);
  sub_21D5D359C(v7, v8);
  v80 = v79;
  if (v10 < 0)
  {
    REMAlarmProximity.localizedLabelFormatString.getter(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_21DC08D00;
    *(v81 + 56) = MEMORY[0x277D837D0];
    *(v81 + 64) = sub_21D17A884();
    *(v81 + 32) = v7;
    *(v81 + 40) = v8;
    v7 = sub_21DBFA17C();
    v8 = v82;
  }

  v83 = MEMORY[0x277D85000];
  v84 = v79 + *((*MEMORY[0x277D85000] & *v79) + 0x78);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[8];
  v87 = *(v84 + 2);
  LOBYTE(v151) = v84[24];
  *&v160 = v85;
  BYTE8(v160) = v86;
  v161 = v87;
  v162 = v151;
  v163 = v7;
  v164 = v8;
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v160);

  v88 = *(*(a4 + v68) + 32);
  v89 = (v88 + *((*v83 & *v88) + 0x78));
  swift_beginAccess();
  v90 = *v89;
  v91 = v89[1];
  v92 = v89[3];
  v127[2] = v89[2];
  v127[3] = v92;
  v127[0] = v90;
  v127[1] = v91;
  v93 = v89[4];
  v94 = v89[5];
  v95 = v89[6];
  *&v128[14] = *(v89 + 110);
  v127[5] = v94;
  *v128 = v95;
  v127[4] = v93;
  v96 = *v89;
  v97 = v89[1];
  v98 = v89[2];
  v154 = v89[3];
  v153 = v98;
  v152 = v97;
  v151 = v96;
  v99 = v89[4];
  v100 = v89[5];
  v101 = v89[6];
  *&v157[12] = *(v89 + 108);
  *v157 = v101;
  v156 = v100;
  v155 = v99;
  v158 = 1;
  v159 = v128[29];
  v102 = v88;
  sub_21D539B98(v127, v148);
  sub_21D5C6D8C(&v151);

  v103 = *(*(a4 + v68) + 32);
  v104 = (v103 + *((*v83 & *v103) + 0x78));
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = v104[3];
  v129[2] = v104[2];
  v129[3] = v107;
  v129[0] = v105;
  v129[1] = v106;
  v108 = v104[4];
  v109 = v104[5];
  v110 = v104[6];
  *(v130 + 14) = *(v104 + 110);
  v129[5] = v109;
  v130[0] = v110;
  v129[4] = v108;
  v111 = *v104;
  v112 = v104[1];
  v113 = v104[3];
  v148[2] = v104[2];
  v148[3] = v113;
  v148[0] = v111;
  v148[1] = v112;
  v114 = v104[4];
  v115 = v104[5];
  v116 = v104[6];
  *&v149[13] = *(v104 + 109);
  v148[5] = v115;
  *v149 = v116;
  v148[4] = v114;
  v150 = 1;
  v117 = v103;
  sub_21D539B98(v129, v131);
  sub_21D5C6D8C(v148);

  v131[2] = v144;
  v131[3] = v145;
  v131[4] = v146;
  v131[0] = v142;
  v131[1] = v143;
  v134 = 0;
  v132 = v147;
  v133 = 0;
  v135 = v141;
  v136 = 1;
  v138 = v140;
  v137 = v139;
  return sub_21D5D2B7C(v131);
}

void sub_21D819408()
{
  v1 = sub_21DBF5D5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v23 - v7;
  v9 = [v0 viewIfLoaded];
  if (v9)
  {
    v10 = v9;
    v11 = UIView.firstResponderDescendant.getter();

    if (v11)
    {
      v24 = v11;
      v12 = [v24 superview];

      if (v12)
      {
        while (1)
        {
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            break;
          }

          v14 = v12;
          v12 = [v14 superview];

          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v15 = v13;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          __break(1u);
          goto LABEL_17;
        }

        v17 = Strong;
        v18 = [Strong indexPathForCell_];

        if (v18)
        {
          sub_21DBF5CAC();

          (*(v2 + 32))(v8, v4, v1);
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            v21 = sub_21DBF5C6C();
            [v20 scrollToRowAtIndexPath:v21 atScrollPosition:0 animated:1];

            (*(v2 + 8))(v8, v1);
            return;
          }

LABEL_17:
          __break(1u);
          return;
        }
      }

LABEL_13:
      v22 = v24;
    }
  }
}

void sub_21D8196B4(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_prefersHalfPageSheetPresentation) == 1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 72);
      sub_21D0D8CF0(0, &unk_27CE62260, 0x277D75A28);
      *(swift_allocObject() + 16) = v5;
      v6 = a1;
      v7 = sub_21DBFB56C();

      [v4 _setWantsBottomAttached_];
      [v4 _setShouldDismissWhenTappedOutside_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_21DC0AA00;
      *(v8 + 32) = v7;
      v9 = objc_opt_self();
      v10 = v7;
      *(v8 + 40) = [v9 largeDetent];
      v11 = sub_21DBFA5DC();

      [v4 setDetents_];
    }
  }
}

uint64_t sub_21D819898()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 80))(ObjectType, v2) & 1) != 0 || (v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 8), v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 16), v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 24), v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 32), v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40), v23 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility), v24 = v4, v25 = v5, v26 = v6, v27 = v7, v28 = v8, v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8), v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16), v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24), v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32), v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40), v17 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility), v18 = v9, v19 = v10, v20 = v11, v21 = v12, v22 = v13, sub_21D7A9830(v23, v4, v5, v6, v7, v8), sub_21D7A9830(v17, v9, v10, v11, v12, v13), v14 = _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO2eeoiySbAE_AEtFZ_0(&v23, &v17), sub_21D7A98A0(v17, v18, v19, v20, v21, v22), sub_21D7A98A0(v23, v24, v25, v26, v27, v28), (v14 & 1) == 0) || (sub_21D825A98(v1) & 1) != 0 || (sub_21D825C94(v1))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_subtasksDidUpdate) ^ 1;
  }

  return v15 & 1;
}

void sub_21D819A00(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  if (!*(v9 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState))
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v12 = *(v9 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 16))(ObjectType, v12);
    v15 = [v14 objectID];

    *(inited + 72) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    *(inited + 48) = v15;
    v16 = sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
    sub_21DAEACDC("Reminder Detail Cancel {objectID: %@}", 37, 2, v16);

    v17 = sub_21DBFA89C();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    sub_21DBFA84C();
    swift_unknownObjectRetain();
    v18 = sub_21DBFA83C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = v9;
    *(v19 + 40) = a2;
    sub_21D1B5178(0, 0, v8, a3, v19);
  }
}

uint64_t sub_21D819CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D825E90(a1, v4, v5, v6, v7);
}

uint64_t sub_21D819D70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D825E90(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D819EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D819F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D81A16C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_21D81A184(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }
}

uint64_t sub_21D81A2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double destroy for TTRIReminderDetailViewController.Argument(uint64_t a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t initializeWithCopy for TTRIReminderDetailViewController.Argument(uint64_t a1, __int128 *a2)
{
  *a1 = *a2;
  v3 = *(a2 + 2);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 24);
  v5 = *(a2 + 8);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 44);
  *(a1 + 96) = a2[6];
  *(a1 + 112) = *(a2 + 112);
  swift_unknownObjectRetain();
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t *assignWithCopy for TTRIReminderDetailViewController.Argument(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v4;
  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;
  v7 = v5;

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];
  a1[5] = a2[5];
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  a1[7] = a2[7];
  a1[8] = a2[8];
  sub_21DBF8E0C();

  *(a1 + 72) = *(a2 + 72);
  a1[10] = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  a1[12] = a2[12];
  a1[13] = a2[13];
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailViewController.Argument(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailViewController.Argument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D81A6CC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62450);
  v1 = __swift_project_value_buffer(v0, qword_27CE62450);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D81A794(uint64_t a1, char a2, __int128 *a3)
{
  v6 = a3[1];
  v24[0] = *a3;
  v24[1] = v6;
  v25[0] = a3[2];
  *(v25 + 9) = *(a3 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v15 = [Strong navigationController];

    if (v15)
    {
      if ((~BYTE8(v25[0]) & 0xFE) != 0)
      {
        v9 = a3[1];
        v22[0] = *a3;
        v22[1] = v9;
        v11 = *a3;
        v10 = a3[1];
        v23[0] = a3[2];
        *(v23 + 9) = *(a3 + 41);
        v17[0] = v11;
        v17[1] = v10;
        v18 = *(a3 + 4);
        v19 = *(&v25[0] + 1);
        v20 = *(a3 + 6);
        v21 = *(a3 + 56);
        sub_21D50B9A4(v22, v16);
        UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v17);
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = a2 & 1;
          v14 = v12;
          [v12 presentViewController:a1 animated:v13 completion:0];
          sub_21D0CF7E0(v24, &qword_27CE5D558, &qword_21DC1CB50);
        }

        else
        {
          sub_21D0CF7E0(v24, &qword_27CE5D558, &qword_21DC1CB50);
        }
      }

      else
      {
        [v15 pushViewController:a1 animated:a2 & 1];
      }
    }
  }
}