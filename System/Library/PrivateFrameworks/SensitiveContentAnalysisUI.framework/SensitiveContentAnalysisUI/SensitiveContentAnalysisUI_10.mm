uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC742544(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BC7425EC;

  return sub_1BC73F4BC(a1, v5, v4);
}

uint64_t sub_1BC7425EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1BC7426F4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
    return sub_1BC75BD90();
  }

  else if (a1)
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
    return sub_1BC75BDA0();
  }

  else
  {
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC742820(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC742884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t Array.lastIndex.getter()
{
  result = sub_1BC75BD60();
  if (__OFSUB__(0, result))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result)
  {
    if (__OFSUB__(result--, 1))
    {
      goto LABEL_6;
    }
  }

  return result;
}

Swift::Int __swiftcall Array.index(_:boundedOffsetBy:)(Swift::Int _, Swift::Int boundedOffsetBy)
{
  v3 = _;
  if (boundedOffsetBy < 1)
  {
    if (!__OFSUB__(0, _))
    {
      if (_ >= 0 && -_ > boundedOffsetBy)
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  _ = sub_1BC75BD60();
  if (__OFSUB__(_, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (_ - v3 >= boundedOffsetBy)
  {
    _ = v3 + boundedOffsetBy;
    if (!__OFADD__(v3, boundedOffsetBy))
    {
      return _;
    }

    __break(1u);
LABEL_14:
    _ = v3 + boundedOffsetBy;
    if (!__OFADD__(v3, boundedOffsetBy))
    {
      return _;
    }

LABEL_18:
    __break(1u);
    return _;
  }

  return sub_1BC75BD60();
}

uint64_t Array.keeping(upTo:beforeAndAfter:)(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  sub_1BC75BD70();

  Array.keep(upTo:beforeAndAfter:)(a1, a2);
  return a3;
}

Swift::Void __swiftcall Array.keep(upTo:beforeAndAfter:)(Swift::Int upTo, Swift::Int beforeAndAfter)
{
  swift_getWitnessTable();
  sub_1BC75BE80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB8, &qword_1BC76E098);
  if (sub_1BC75BEE0())
  {
    v5 = Array.index(_:boundedOffsetBy:)(beforeAndAfter, 1);
    if (v5 < beforeAndAfter)
    {
      __break(1u);
    }

    else
    {
      v6 = Array.index(_:boundedOffsetBy:)(v5, upTo);
      if (!__OFSUB__(0, upTo))
      {
        v7 = v6;
        v8 = Array.index(_:boundedOffsetBy:)(beforeAndAfter, -upTo);
        if (sub_1BC75BD60() >= v7)
        {
          swift_getWitnessTable();
          sub_1BC75BED0();
          if ((v8 & 0x8000000000000000) == 0)
          {
            sub_1BC75BED0();
            return;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  *v2 = sub_1BC75BD30();
}

uint64_t sub_1BC742C68@<X0>(uint64_t *a2@<X8>)
{
  sub_1BC65F664(0, &qword_1EBCDEFD0, off_1E7FF1268);
  result = sub_1BC75C2B0();
  *a2 = result;
  return result;
}

uint64_t sub_1BC742CBC@<X0>(uint64_t *a2@<X8>)
{
  sub_1BC65F664(0, &qword_1EBCDC070, off_1E7FF1260);
  result = sub_1BC75C2B0();
  *a2 = result;
  return result;
}

uint64_t SCUIMoreHelpContextMenuSwiftUI.SCUIHelpMenuActions.init(messageSomeoneAction:blockContactAction:blockContactsAction:moreHelpAction:leaveChatAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t SCUIMoreHelpContextMenuSwiftUI.init(options:contentView:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() getCurrentInterventionType];
  (*(v12 + 16))(v14, a2, a4);
  v16 = SCUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:actions:)(a1, v15, v14, a3, a4, a5, a6);
  return (*(v12 + 8))(a2, a4, v16);
}

__n128 SCUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:actions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = sub_1BC7599C0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a4[3];
  v29 = a4[2];
  v30 = v18;
  v31 = a4[4];
  v19 = a4[1];
  v27 = *a4;
  v28 = v19;
  sub_1BC7599B0();
  v20 = sub_1BC759950();
  v21 = [objc_opt_self() modelWithOptions:a1 contextDictionary:0 interventionType:a2 locale:v20 menuType:1];

  (*(v15 + 8))(v17, v14);
  *a7 = v21;
  v23 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, a5, a6, v22);
  (*(*(a5 - 8) + 32))(&a7[v23[9]], a3, a5);
  a7[v23[10]] = (a1 & 0x200) != 0;
  v24 = &a7[v23[11]];
  v25 = v30;
  *(v24 + 2) = v29;
  *(v24 + 3) = v25;
  *(v24 + 4) = v31;
  result = v28;
  *v24 = v27;
  *(v24 + 1) = result;
  return result;
}

uint64_t SCUIMoreHelpContextMenuSwiftUI.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEFC0, qword_1BC76E0B0);
  v7 = *(a1 + 24);
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = sub_1BC633C54(&qword_1EBCDEFC8, &qword_1EBCDEFC0, qword_1BC76E0B0, MEMORY[0x1E6981F48]);
  v8 = sub_1BC75B140();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18[-v13];
  v22 = v5;
  v23 = v7;
  v24 = v2;
  v19 = v5;
  v20 = v7;
  v21 = v2;
  sub_1BC75B130();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(a2, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_1BC743280@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v6 = a2;
  v9 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v60 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFD8, &qword_1BC76E2A0);
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v69 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v56 - v16;
  v17 = *a1;
  if (*(a1 + *(v9 + 40)) == 1 && (v18 = [*a1 title]) != 0)
  {
    v19 = v18;
    v20 = sub_1BC75BB60();
    v58 = v5;
    v59 = v6;
    v21 = v20;
    v23 = v22;

    v70 = v21;
    v71 = v23;
    sub_1BC651EB8(v24, v25, v26);
    v27 = sub_1BC75B1B0();
    v29 = v28;
    LOBYTE(v19) = v30;
    v32 = v31;
    KeyPath = swift_getKeyPath();
    v57 = v12;
    v34 = a5;
    v35 = a1;
    v36 = KeyPath;
    v63 = v19 & 1;
    v64 = v27;
    v67 = v29;
    v37 = v29;
    v6 = v59;
    sub_1BC680FFC(v27, v37, v19 & 1);
    v38 = v32;
    v5 = v58;

    v62 = v36;
    a1 = v35;
    a5 = v34;
    v12 = v57;

    v61 = 1;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v67 = 0;
    v38 = 0;
    v62 = 0;
    v61 = 0;
  }

  v39 = [v17 actions];
  sub_1BC65F664(0, &qword_1EBCDC070, off_1E7FF1260);
  v40 = sub_1BC75BD00();

  v70 = v40;
  (*(v10 + 16))(v12, a1, v9);
  v41 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v6;
  *(v42 + 24) = v5;
  (*(v10 + 32))(v42 + v41, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFE0, &unk_1BC76E2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  sub_1BC633C54(&qword_1EBCDEFE8, &qword_1EBCDEFE0, &unk_1BC76E2A8, MEMORY[0x1E69E6338]);
  sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
  sub_1BC7440A4();
  v43 = v68;
  sub_1BC75B780();
  v45 = v65;
  v44 = v66;
  v46 = *(v65 + 16);
  v46(v69, v43, v66);
  v47 = v63;
  v48 = v64;
  v49 = v67;
  *a5 = v64;
  *(a5 + 8) = v49;
  *(a5 + 16) = v47;
  *(a5 + 24) = v38;
  v50 = v62;
  *(a5 + 32) = v62;
  *(a5 + 40) = 0;
  *(a5 + 48) = v61;
  v51 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFF8, &qword_1BC76E2B8) + 48));
  v52 = v69;
  v46(v51, v69, v44);
  v53 = v67;
  sub_1BC74410C(v48, v67, v47, v38, v50);
  sub_1BC74415C(v48, v53, v47, v38);
  v54 = *(v45 + 8);
  v54(v68, v44);
  v54(v52, v44);
  return sub_1BC74415C(v48, v53, v47, v38);
}

uint64_t sub_1BC743788@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a2;
  v30 = a4;
  v31 = a5;
  v7 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = [v14 title];
  v16 = sub_1BC75BB60();
  v18 = v17;

  v32 = v16;
  v33 = v18;
  if ([v14 destructive])
  {
    sub_1BC75A630();
  }

  else
  {
    sub_1BC75A640();
  }

  v19 = sub_1BC75A650();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  (*(v8 + 16))(v10, v29, v7);
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 2) = a3;
  *(v21 + 3) = v22;
  *(v21 + 4) = v14;
  v23 = (*(v8 + 32))(&v21[v20], v10, v7);
  sub_1BC651EB8(v23, v24, v25);
  v26 = v14;
  return sub_1BC75B6A0();
}

uint64_t sub_1BC7439EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1BC743B64(uint64_t a1)
{
  result = sub_1BC65F664(319, &qword_1EBCDEFD0, off_1E7FF1268);
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI.SCUIHelpMenuActions(319, result, *(a1 + 24), v4);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BC743C24(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BC743D68(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFA8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1BC743F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BC743F6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BC743FB4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BC744008@<X0>(void **a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1BC743788(a1, v9, v6, v7, a3);
}

unint64_t sub_1BC7440A4()
{
  result = qword_1EBCDEFF0;
  if (!qword_1EBCDEFF0)
  {
    sub_1BC65F664(255, &qword_1EBCDC070, off_1E7FF1260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEFF0);
  }

  return result;
}

uint64_t sub_1BC74410C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1BC680FFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BC74415C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC680E6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BC7441AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SCUIMoreHelpContextMenuSwiftUI(0, v4[2], v4[3], a4);
  v6 = v4[4];
  v7 = v4 + ((*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80));
  result = [v6 actionID];
  if (result <= 2)
  {
    if (result == 1)
    {
      v9 = &v7[*(v5 + 44)];
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v9 = &v7[*(v5 + 44) + 48];
    }
  }

  else
  {
    switch(result)
    {
      case 3:
        v9 = &v7[*(v5 + 44) + 64];
        break;
      case 4:
        v9 = &v7[*(v5 + 44) + 16];
        break;
      case 5:
        v9 = &v7[*(v5 + 44) + 32];
        break;
      default:
        return result;
    }
  }

  return (*v9)();
}

uint64_t sub_1BC7442F8@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for ReportOverviewScreen(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B640();
  v5 = type metadata accessor for ReportOverviewScreen._Alert(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  result = sub_1BC66008C(v4, &qword_1EBCDF008, &qword_1BC76E2F8);
  *a1 = v6;
  return result;
}

uint64_t sub_1BC744408(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v10 - v7;
  if (*a1 == 1)
  {
    v9 = type metadata accessor for ReportOverviewScreen._Alert(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    type metadata accessor for ReportOverviewScreen(0);
    sub_1BC660024(v8, v5, &qword_1EBCDF008, &qword_1BC76E2F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
    sub_1BC75B650();
    return sub_1BC66008C(v8, &qword_1EBCDF008, &qword_1BC76E2F8);
  }

  return result;
}

uint64_t sub_1BC744560@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF010, &qword_1BC76E300);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v42 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF018, &qword_1BC76E308);
  MEMORY[0x1EEE9AC00](v50);
  v47 = (&v42 - v4);
  sub_1BC744CD8(v1, &v42 - v4);
  v5 = type metadata accessor for ReportOverviewScreen(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = v1;
  sub_1BC745FB4(v1, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportOverviewScreen);
  v48 = sub_1BC75BDE0();
  v8 = sub_1BC75BDD0();
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v49 = *(v6 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  v46 = v9;
  sub_1BC748158(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ReportOverviewScreen);
  v12 = sub_1BC75BE10();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v42 - v15;
  sub_1BC75BDF0();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v44 = sub_1BC75A8F0();
    v45 = &v42;
    v43 = *(v44 - 8);
    MEMORY[0x1EEE9AC00](v44);
    v42 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1BC75C290();

    v56 = 0xD000000000000042;
    v57 = 0x80000001BC774B70;
    v58 = 54;
    v18 = sub_1BC75C590();
    MEMORY[0x1BFB267E0](v18);

    MEMORY[0x1EEE9AC00](v19);
    (*(v13 + 16))(&v42 - v15, &v42 - v15, v12);
    v20 = v42;
    sub_1BC75A8E0();
    (*(v13 + 8))(v16, v12);
    v21 = v55;
    sub_1BC65FFBC(v47, v55, &qword_1EBCDF018, &qword_1BC76E308);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF028, &qword_1BC76E328);
    v23 = (*(v43 + 32))(v21 + *(v22 + 36), v20, v44);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF058, &qword_1BC76E340);
    v25 = v55;
    v26 = (v55 + *(v24 + 36));
    v27 = sub_1BC75A860();
    (*(v13 + 32))(&v26[*(v27 + 20)], &v42 - v15, v12);
    *v26 = &unk_1BC76E320;
    *(v26 + 1) = v10;
    v23 = sub_1BC65FFBC(v47, v25, &qword_1EBCDF018, &qword_1BC76E308);
  }

  v47 = &v42;
  MEMORY[0x1EEE9AC00](v23);
  v45 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (&v42 - v45);
  v29 = v51;
  sub_1BC745FB4(v51, &v42 - v45, type metadata accessor for ReportOverviewScreen);
  v30 = sub_1BC75BDD0();
  v31 = v46;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = MEMORY[0x1E69E85E0];
  v33 = sub_1BC748158(v28, v32 + v31, type metadata accessor for ReportOverviewScreen);
  v47 = &v42;
  MEMORY[0x1EEE9AC00](v33);
  v34 = (&v42 - v45);
  sub_1BC745FB4(v29, &v42 - v45, type metadata accessor for ReportOverviewScreen);
  v35 = sub_1BC75BDD0();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = MEMORY[0x1E69E85E0];
  sub_1BC748158(v34, v36 + v31, type metadata accessor for ReportOverviewScreen);
  v37 = sub_1BC75B740();
  MEMORY[0x1EEE9AC00](v37);
  *(&v42 - 2) = v29;
  v38 = sub_1BC747094();
  v56 = v50;
  v57 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v54;
  v39 = v55;
  sub_1BC75B390();

  return (*(v53 + 8))(v39, v40);
}

uint64_t sub_1BC744CD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v71 = type metadata accessor for ReportOverviewScreen(0);
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = v3;
  v68 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for _ReportOverviewScreen(0);
  MEMORY[0x1EEE9AC00](v78);
  v73 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4A0, &qword_1BC76EC18);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v59 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE528, &qword_1BC76A408);
  v65 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for Report.Evidence(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v69 = a1;
  v18 = *a1;
  v17 = a1[1];
  v79 = v18;
  v80 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  v19 = sub_1BC75B640();
  (*(*v82 + 144))(v19);

  v64 = v12;
  v20 = *(v12 + 48);
  v66 = v11;
  if (v20(v10, 1, v11) == 1)
  {
    sub_1BC66008C(v10, &qword_1EBCDED80, &unk_1BC76A3C0);
    sub_1BC75A790();
    v21 = v65;
    v22 = v77;
    (*(v65 + 2))(v76, v7, v77);
    swift_storeEnumTagMultiPayload();
    sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen, &unk_1BC76E530);
    sub_1BC633C54(&qword_1EBCDF050, &qword_1EBCDE528, &qword_1BC76A408, MEMORY[0x1E697BF38]);
    sub_1BC75AE00();
    return (*(v21 + 1))(v7, v22);
  }

  else
  {
    v60 = type metadata accessor for Report.Evidence;
    v24 = v16;
    v63 = v16;
    sub_1BC748158(v10, v16, type metadata accessor for Report.Evidence);
    v25 = v71;
    v26 = v69;
    v27 = v73;
    sub_1BC745FB4(v69 + *(v71 + 20), v73, type metadata accessor for ReportScreen);
    v79 = v18;
    v80 = v17;
    sub_1BC75B640();
    sub_1BC745FB4(v82 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v27 + *(v78 + 20), type metadata accessor for Report.Authority);

    v28 = (v26 + *(v25 + 24));
    v29 = v28[1];
    v62 = *v28;
    v61 = v29;
    v65 = type metadata accessor for ReportOverviewScreen;
    v30 = v68;
    sub_1BC745FB4(v26, v68, type metadata accessor for ReportOverviewScreen);
    sub_1BC745FB4(v24, v70, type metadata accessor for Report.Evidence);
    sub_1BC75BDE0();

    v31 = sub_1BC75BDD0();
    v32 = *(v67 + 80);
    v33 = (v32 + 32) & ~v32;
    v34 = (v33 + v72 + *(v64 + 80)) & ~*(v64 + 80);
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    *(v35 + 16) = v31;
    *(v35 + 24) = v36;
    sub_1BC748158(v30, v35 + v33, type metadata accessor for ReportOverviewScreen);
    sub_1BC748158(v70, v35 + v34, v60);
    v37 = v69;
    sub_1BC745FB4(v69, v30, v65);
    v38 = sub_1BC75BDD0();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC748158(v30, v39 + v33, type metadata accessor for ReportOverviewScreen);
    v40 = v78;
    v41 = v73;
    sub_1BC75B740();
    v42 = v37 + *(v71 + 28);
    v43 = *v42;
    v44 = *(v42 + 1);
    LOBYTE(v82) = v43;
    v83 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF498, &unk_1BC76EBF0);
    sub_1BC75B660();
    v45 = v79;
    v46 = v80;
    LODWORD(v71) = v81;
    sub_1BC745FB4(v37, v30, v65);
    v47 = swift_allocObject();
    sub_1BC748158(v30, v47 + ((v32 + 16) & ~v32), type metadata accessor for ReportOverviewScreen);
    *(v41 + v40[11]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
    v48 = swift_storeEnumTagMultiPayload();
    v49 = (v41 + v40[6]);
    v50 = v61;
    *v49 = v62;
    v49[1] = v50;
    sub_1BC6FEB38(v48, v51, v52);
    sub_1BC75A6E0();
    v53 = v41 + v40[9];
    *v53 = v45;
    *(v53 + 8) = v46;
    *(v53 + 16) = v71;
    v54 = (v41 + v40[10]);
    *v54 = sub_1BC755C1C;
    v54[1] = v47;
    v55 = v41 + v40[12];
    LOBYTE(v82) = 0;
    sub_1BC75B630();
    v56 = v80;
    *v55 = v79;
    *(v55 + 8) = v56;
    v57 = v41 + v40[13];
    LOBYTE(v82) = 0;
    sub_1BC75B630();
    v58 = v80;
    *v57 = v79;
    *(v57 + 8) = v58;
    sub_1BC745FB4(v41, v76, type metadata accessor for _ReportOverviewScreen);
    swift_storeEnumTagMultiPayload();
    sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen, &unk_1BC76E530);
    sub_1BC633C54(&qword_1EBCDF050, &qword_1EBCDE528, &qword_1BC76A408, MEMORY[0x1E697BF38]);
    sub_1BC75AE00();
    sub_1BC750E6C(v41, type metadata accessor for _ReportOverviewScreen);
    return sub_1BC750E6C(v63, type metadata accessor for Report.Evidence);
  }
}

uint64_t sub_1BC745618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = a1[1];
  v14[2] = *a1;
  v14[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  v10 = sub_1BC75B640();
  (*(*v14[1] + 144))(v10);

  v11 = type metadata accessor for Report.Evidence(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1BC748158(v8, a3, type metadata accessor for Report.Evidence);
  }

  sub_1BC745FB4(a2, a3, type metadata accessor for Report.Evidence);
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1BC66008C(v8, &qword_1EBCDED80, &unk_1BC76A3C0);
  }

  return result;
}

uint64_t sub_1BC7457C4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = a2[1];
  v11[2] = *a2;
  v11[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v8 = v11[1];
  sub_1BC745FB4(a1, v6, type metadata accessor for Report.Evidence);
  v9 = type metadata accessor for Report.Evidence(0);
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  (*(*v8 + 152))(v6);
}

uint64_t sub_1BC745900(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for ReportScreen.Control(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = a2[1];
  v17 = *a2;
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v9 = *(v15 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);

  if (v9 > 2)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1BC75C290();

    v17 = 0xD00000000000001BLL;
    v18 = 0x80000001BC774C40;
    v15 = v7;
    v16 = v8;
    sub_1BC75B640();
    v12 = *(v14[1] + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);

    v15 = v12;
    v13 = sub_1BC75C590();
    MEMORY[0x1BFB267E0](v13);

    result = sub_1BC75C3D0();
    __break(1u);
  }

  else
  {
    v10 = *(a2 + *(type metadata accessor for ReportOverviewScreen(0) + 24));
    sub_1BC745FB4(a1, v6, type metadata accessor for Report.Evidence);
    type metadata accessor for ReportScreen(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v10(v6);
    return sub_1BC750E6C(v6, type metadata accessor for ReportScreen.Control);
  }

  return result;
}

uint64_t sub_1BC745B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = type metadata accessor for ReportScreen.Control(0);
  v3[7] = swift_task_alloc();
  sub_1BC75BDE0();
  v3[8] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC745BFC, v5, v4);
}

uint64_t sub_1BC745BFC()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v4 = v0[4];
  v0[11] = v4;
  v7 = (*(*v4 + 176) + **(*v4 + 176));
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1BC745D44;

  return v7();
}

uint64_t sub_1BC745D44()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BC745EC8;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BC745E60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC745E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC745EC8()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[5];

  v4 = *(v3 + *(type metadata accessor for ReportOverviewScreen(0) + 24));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v4(v2);

  sub_1BC750E6C(v2, type metadata accessor for ReportScreen.Control);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BC745FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC74601C()
{
  v2 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC745B34(v4, v5, v0 + v3);
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for ReportOverviewScreen(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = (v0 + v3 + *(v1 + 20));
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v4;
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v5, 1, v7))
      {
        (*(v8 + 8))(v5, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = v5 + *(v9 + 24);

      v11 = _s6VictimVMa(0);
      (*(v8 + 8))(&v10[*(v11 + 44)], v7);

      v12 = (v5 + *(v9 + 52));
      v13 = v12[1];
      if (v13 >> 60 != 15)
      {
        sub_1BC6AE140(*v12, v13);
      }

      v4 = v28;
    }
  }

  else
  {
    v14 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v14 - 8) + 48))(v5, 1, v14))
    {

      v27 = *(v14 + 28);
      v15 = sub_1BC759800();
      v29 = v4;
      v16 = *(*(v15 - 8) + 8);
      v16(v5 + v27, v15);
      v16(v5 + *(v14 + 32), v15);
      v4 = v29;
    }
  }

  v17 = v0 + v3 + *(v1 + 32);
  v18 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = sub_1BC759910();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v17, 1, v19))
    {
      (*(v20 + 8))(v17, v19);
    }

    v21 = type metadata accessor for Report.Evidence(0);
    v22 = v17 + *(v21 + 24);

    v23 = _s6VictimVMa(0);
    (*(v20 + 8))(v22 + *(v23 + 44), v19);

    v24 = (v17 + *(v21 + 52));
    v25 = v24[1];
    if (v25 >> 60 != 15)
    {
      sub_1BC6AE140(*v24, v25);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC7466A4@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for ReportOverviewScreen(0);

  return sub_1BC7442F8(a1);
}

uint64_t sub_1BC746714(_BYTE *a1)
{
  type metadata accessor for ReportOverviewScreen(0);

  return sub_1BC744408(a1);
}

uint64_t sub_1BC746784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF490, &qword_1BC76EBE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v86 - v4;
  v6 = type metadata accessor for ReportOverviewScreen(0);
  v102 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v103 = v7;
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BC75B4C0();
  v8 = *(v99 - 8);
  v9 = MEMORY[0x1EEE9AC00](v99);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v86 - v12;
  v13 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Report.Evidence(0);
  v97 = *(v16 - 8);
  v17 = *(v97 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v86 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B640();
  v24 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
  {
    v25._countAndFlagsBits = 0x545F44454C494146;
    v25._object = 0xEE00444E45535F4FLL;
    object = SCLocalizedStringKey.init(stringLiteral:)(v25).localized._object;
    v106 = v108;
    v107 = v109;
    sub_1BC651E78(&v106, object, v27);
    v104 = v28;
    LODWORD(v98) = v29;
    v100 = v30;
    v31._object = 0x80000001BC773750;
    v31._countAndFlagsBits = 0xD00000000000001ALL;
    v32 = SCLocalizedStringKey.init(stringLiteral:)(v31).localized._object;
    v106 = v108;
    v107 = v109;
    v34 = sub_1BC651E78(&v106, v32, v33);
    v96 = v35;
    v97 = v34;
    v94 = v36 & 1;
    v95 = v37;
    v38._countAndFlagsBits = 19279;
    v38._object = 0xE200000000000000;
    v39 = SCLocalizedStringKey.init(stringLiteral:)(v38).localized._object;
    v106 = v108;
    v107 = v109;
    v41 = sub_1BC651E78(&v106, v39, v40);
    v42 = v101;
    v44 = v43;
    v46 = v45;
    sub_1BC745FB4(a1, v101, type metadata accessor for ReportOverviewScreen);
    v47 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v48 = swift_allocObject();
    sub_1BC748158(v42, v48 + v47, type metadata accessor for ReportOverviewScreen);
    sub_1BC75B4B0();
    sub_1BC680E6C(v41, v44, v46 & 1);

    (*(v8 + 56))(v5, 0, 1, v99);
    return sub_1BC75B480();
  }

  else
  {
    v88 = type metadata accessor for Report.Evidence;
    v100 = v20;
    sub_1BC748158(v23, v20, type metadata accessor for Report.Evidence);
    v99 = v11;
    v51 = a1[1];
    v108 = *a1;
    v50 = v108;
    v109 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
    sub_1BC75B640();
    v87 = a1;
    sub_1BC745FB4(v106 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v15, type metadata accessor for Report.Authority);

    sub_1BC6814FC(&v108);
    sub_1BC750E6C(v15, type metadata accessor for Report.Authority);
    v106 = v108;
    v107 = v109;
    v54 = sub_1BC651E78(&v106, v52, v53);
    v95 = v55;
    v96 = v54;
    v93 = v56;
    v94 = v57;
    v108 = v50;
    v109 = v51;
    sub_1BC75B640();
    sub_1BC745FB4(v106 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v15, type metadata accessor for Report.Authority);

    sub_1BC6816AC(&v108);
    sub_1BC750E6C(v15, type metadata accessor for Report.Authority);
    v106 = v108;
    v107 = v109;
    v92 = sub_1BC651E78(&v106, v58, v59);
    v91 = v60;
    v90 = v61;
    v89 = v62 & 1;
    v63._countAndFlagsBits = 0x5045525F444E4553;
    v63._object = 0xEB0000000054524FLL;
    v64 = SCLocalizedStringKey.init(stringLiteral:)(v63).localized._object;
    v106 = v108;
    v107 = v109;
    v66 = sub_1BC651E78(&v106, v64, v65);
    v68 = v67;
    v70 = v69;
    v86 = type metadata accessor for ReportOverviewScreen;
    v71 = a1;
    v72 = v101;
    sub_1BC745FB4(v71, v101, type metadata accessor for ReportOverviewScreen);
    v73 = v98;
    sub_1BC745FB4(v100, v98, type metadata accessor for Report.Evidence);
    v74 = *(v102 + 80);
    v75 = (v74 + 16) & ~v74;
    v102 = v74 | 7;
    v103 += v75;
    v76 = (v103 + *(v97 + 80)) & ~*(v97 + 80);
    v77 = swift_allocObject();
    sub_1BC748158(v72, v77 + v75, type metadata accessor for ReportOverviewScreen);
    sub_1BC748158(v73, v77 + v76, v88);
    sub_1BC75B4B0();
    sub_1BC680E6C(v66, v68, v70 & 1);

    v78._countAndFlagsBits = 0x4B4341425F4F47;
    v78._object = 0xE700000000000000;
    v79 = SCLocalizedStringKey.init(stringLiteral:)(v78).localized._object;
    v106 = v108;
    v107 = v109;
    v81 = sub_1BC651E78(&v106, v79, v80);
    v83 = v82;
    LOBYTE(v77) = v84;
    sub_1BC745FB4(v87, v72, v86);
    v85 = swift_allocObject();
    sub_1BC748158(v72, v85 + v75, type metadata accessor for ReportOverviewScreen);
    sub_1BC75B4A0();
    sub_1BC680E6C(v81, v83, v77 & 1);

    sub_1BC75B490();
    return sub_1BC750E6C(v100, type metadata accessor for Report.Evidence);
  }
}

unint64_t sub_1BC747094()
{
  result = qword_1EBCDF030;
  if (!qword_1EBCDF030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF018, &qword_1BC76E308);
    sub_1BC747118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF030);
  }

  return result;
}

unint64_t sub_1BC747118()
{
  result = qword_1EBCDF038;
  if (!qword_1EBCDF038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF040, &unk_1BC76E330);
    sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen, &unk_1BC76E530);
    sub_1BC633C54(&qword_1EBCDF050, &qword_1EBCDE528, &qword_1BC76A408, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF038);
  }

  return result;
}

uint64_t sub_1BC747220(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for Report.Evidence(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReportOverviewScreen(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = type metadata accessor for ReportOverviewScreen._Alert(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1BC660024(v15, v13, &qword_1EBCDF008, &qword_1BC76E2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B650();
  sub_1BC66008C(v15, &qword_1EBCDF008, &qword_1BC76E2F8);
  v17 = sub_1BC75BE10();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_1BC745FB4(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportOverviewScreen);
  v18 = v25;
  sub_1BC745FB4(v27, v25, type metadata accessor for Report.Evidence);
  sub_1BC75BDE0();
  v19 = sub_1BC75BDD0();
  v20 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v21 = (v6 + *(v28 + 80) + v20) & ~*(v28 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_1BC748158(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for ReportOverviewScreen);
  sub_1BC748158(v18, v22 + v21, type metadata accessor for Report.Evidence);
  sub_1BC652910(0, 0, v9, &unk_1BC76EC08, v22);
}

uint64_t sub_1BC7475F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = type metadata accessor for ReportScreen.Control(0);
  v5[10] = swift_task_alloc();
  sub_1BC75BDE0();
  v5[11] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BC7476BC, v7, v6);
}

uint64_t sub_1BC7476BC()
{
  v1 = v0[7];
  v2 = [objc_opt_self() progressWithTotalUnitCount_];
  v0[14] = v2;
  v3 = v1[1];
  v0[2] = *v1;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF000, &qword_1BC76E2F0);
  sub_1BC75B640();
  v4 = v0[6];
  v0[15] = v4;
  v8 = (*(*v4 + 184) + **(*v4 + 184));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1BC747844;
  v6 = v0[8];

  return v8(v6, v2);
}

uint64_t sub_1BC747844(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = v6[12];
    v8 = v6[13];
    v9 = sub_1BC747A7C;
  }

  else
  {

    v6[18] = a2;
    v6[19] = a1;
    v7 = v6[12];
    v8 = v6[13];
    v9 = sub_1BC747980;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BC747980()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = *(v5 + *(type metadata accessor for ReportOverviewScreen(0) + 24));
  *v4 = v1;
  v4[1] = v2;
  type metadata accessor for ReportScreen(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6(v4);

  sub_1BC750E6C(v4, type metadata accessor for ReportScreen.Control);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BC747A7C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  v5 = type metadata accessor for ReportOverviewScreen(0);
  v6 = *(v4 + *(v5 + 24));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  v6(v3);
  sub_1BC750E6C(v3, type metadata accessor for ReportScreen.Control);
  v8 = v4 + *(v5 + 28);
  v9 = *(v8 + 8);
  *(v0 + 32) = *v8;
  *(v0 + 40) = v9;
  *(v0 + 160) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF498, &unk_1BC76EBF0);
  sub_1BC75B650();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BC747BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  v8 = type metadata accessor for ReportOverviewScreen._Alert(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for ReportOverviewScreen(0);
  sub_1BC660024(v7, v5, &qword_1EBCDF008, &qword_1BC76E2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);
  sub_1BC75B650();
  sub_1BC66008C(v7, &qword_1EBCDF008, &qword_1BC76E2F8);
  v10 = (a1 + *(v9 + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[16] = v11;
  v15 = v12;
  v14[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF498, &unk_1BC76EBF0);
  return sub_1BC75B650();
}

uint64_t sub_1BC747D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF008, &qword_1BC76E2F8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v24 = a1;
  type metadata accessor for ReportToAuthoritiesViewModel(0);
  sub_1BC75B630();
  v16 = v26;
  *a5 = v25;
  a5[1] = v16;
  v17 = type metadata accessor for ReportOverviewScreen(0);
  sub_1BC748158(a2, a5 + v17[5], type metadata accessor for ReportScreen);
  v18 = (a5 + v17[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = a5 + v17[7];
  LOBYTE(v24) = 2;
  sub_1BC75B630();
  v20 = v26;
  *v19 = v25;
  *(v19 + 1) = v20;
  v21 = type metadata accessor for ReportOverviewScreen._Alert(0);
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_1BC660024(v15, v13, &qword_1EBCDF008, &qword_1BC76E2F8);
  sub_1BC75B630();
  return sub_1BC66008C(v15, &qword_1EBCDF008, &qword_1BC76E2F8);
}

uint64_t sub_1BC747F50@<X0>(void *a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _ReportOverviewScreen(0);
  sub_1BC660024(v1 + *(v10 + 44), v9, &qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BC75A710();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BC75BF70();
    v13 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BC748158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC7481C0()
{
  result = qword_1EBCDF060;
  if (!qword_1EBCDF060)
  {
    sub_1BC75A8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF060);
  }

  return result;
}

uint64_t sub_1BC74820C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC748254@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = type metadata accessor for _ReportOverviewScreen(0);
  v76 = *(v2 - 8);
  v74 = *(v76 + 64);
  v3 = v2 - 8;
  v89 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF070, &qword_1BC76E398);
  MEMORY[0x1EEE9AC00](v81);
  v90 = (&v69 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF078, &qword_1BC76E3A0);
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v69 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF080, &qword_1BC76E3A8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v69 - v9;
  v10 = type metadata accessor for Report.Evidence(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s6VictimVMa(0);
  v71 = *(v14 - 8);
  v70 = *(v71 + 8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - v17;
  v19 = *(v3 + 36);
  v20 = v1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v79 = v19;
  v21 = v78;
  MEMORY[0x1BFB262E0]();
  v22 = &v13[*(v11 + 32)];
  v83 = v18;
  sub_1BC745FB4(v22, v18, _s6VictimVMa);
  v80 = type metadata accessor for Report.Evidence;
  sub_1BC750E6C(v13, type metadata accessor for Report.Evidence);
  MEMORY[0x1BFB262E0](v21);
  v23 = *(v11 + 36);
  v77 = v13;
  v24 = *&v13[v23];

  sub_1BC750E6C(v13, type metadata accessor for Report.Evidence);
  v75 = type metadata accessor for _ReportOverviewScreen;
  v25 = v20;
  v26 = v20;
  v27 = v73;
  sub_1BC745FB4(v25, v73, type metadata accessor for _ReportOverviewScreen);
  v28 = v69;
  sub_1BC745FB4(v18, v69, _s6VictimVMa);
  v29 = *(v76 + 80);
  v76 = ((v29 + 16) & ~v29) + v74;
  v30 = (v29 + 16) & ~v29;
  v72 = v30;
  v74 = v29 | 7;
  v31 = (v76 + *(v71 + 80)) & ~*(v71 + 80);
  v32 = (v70 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v71 = type metadata accessor for _ReportOverviewScreen;
  sub_1BC748158(v27, v33 + v30, type metadata accessor for _ReportOverviewScreen);
  sub_1BC748158(v28, v33 + v31, _s6VictimVMa);
  *(v33 + v32) = v24;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF088, &qword_1BC76E3B0);
  v35 = sub_1BC633C54(&qword_1EBCDF090, &qword_1EBCDF088, &qword_1BC76E3B0, MEMORY[0x1E6981F48]);
  v36 = v90;
  sub_1BC6F6778(sub_1BC750274, v33, v34, v35, v90);
  v37 = sub_1BC75ACD0();
  sub_1BC74BC38(v26, &v97);
  v38 = sub_1BC75A7D0();
  LOBYTE(v33) = MEMORY[0x1BFB25C50]((2 * v38));
  v39 = sub_1BC75A990();
  v96 = 1;
  v105 = v99;
  v106 = v100;
  v107 = v101;
  v103 = v97;
  v104 = v98;
  *&v108 = v102;
  *(&v108 + 1) = v39;
  *&v109 = 0;
  BYTE8(v109) = 1;
  BYTE9(v109) = v33;
  v110 = v37;
  v40 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF098, &qword_1BC76E3B8) + 36);
  v41 = v108;
  *(v40 + 4) = v107;
  *(v40 + 5) = v41;
  *(v40 + 6) = v109;
  *(v40 + 14) = v110;
  v42 = v104;
  *v40 = v103;
  *(v40 + 1) = v42;
  v43 = v106;
  *(v40 + 2) = v105;
  *(v40 + 3) = v43;
  v111[0] = v97;
  v111[1] = v98;
  v111[3] = v100;
  v111[4] = v101;
  v111[2] = v99;
  v112 = v102;
  v113 = v39;
  v114 = 0;
  v115 = 1;
  v116 = v33;
  v117 = v37;
  sub_1BC660024(&v103, &v92, &qword_1EBCDF0A0, &qword_1BC76E3C0);
  sub_1BC66008C(v111, &qword_1EBCDF0A0, &qword_1BC76E3C0);
  v44 = v26;
  v45 = v27;
  v46 = v75;
  sub_1BC745FB4(v26, v27, v75);
  v47 = swift_allocObject();
  v48 = v72;
  sub_1BC748158(v27, v47 + v72, type metadata accessor for _ReportOverviewScreen);
  v49 = v81;
  v50 = (v90 + *(v81 + 36));
  *v50 = 0;
  v50[1] = 0;
  v50[2] = sub_1BC755C94;
  v50[3] = v47;
  v51 = v77;
  MEMORY[0x1BFB262E0](v78);
  LOBYTE(v47) = sub_1BC6B5EF4(v26 + *(v89 + 28));
  sub_1BC750E6C(v51, v80);
  LOBYTE(v92) = v47 & 1;
  sub_1BC745FB4(v26, v45, v46);
  v52 = swift_allocObject();
  sub_1BC748158(v45, v52 + v48, v71);
  v53 = sub_1BC7528DC(&qword_1EBCDF0A8, &qword_1EBCDF070, &qword_1BC76E398, sub_1BC750B38);
  v54 = v82;
  v55 = v49;
  v56 = v90;
  sub_1BC75B420();

  sub_1BC66008C(v56, &qword_1EBCDF070, &qword_1BC76E398);
  v57 = v26 + *(v89 + 44);
  v59 = *(v57 + 8);
  LOBYTE(v18) = *(v57 + 16);
  v92 = *v57;
  v58 = v92;
  v93 = v59;
  LOBYTE(v94) = v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF068, &unk_1BC76E388);
  MEMORY[0x1BFB262E0](&v97);
  sub_1BC6FCFF0(v97, 0);
  v92 = v55;
  v93 = MEMORY[0x1E69E6370];
  v94 = v53;
  v95 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v61 = v84;
  v62 = v85;
  sub_1BC75B270();
  (*(v86 + 8))(v54, v62);
  v92 = v58;
  v93 = v59;
  LOBYTE(v94) = v18;
  v63 = MEMORY[0x1BFB262E0](&v97, v60);
  LOBYTE(v92) = 0;
  sub_1BC710C60(v63, v64, v65);
  *(v61 + *(v87 + 36)) = (sub_1BC75BAB0() & 1) == 0;
  v91 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF0D0, &qword_1BC76E3D0);
  sub_1BC750C24();
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
  v67 = sub_1BC750D78();
  v92 = v66;
  v93 = v67;
  swift_getOpaqueTypeConformance2();
  sub_1BC75B3F0();
  sub_1BC66008C(v61, &qword_1EBCDF080, &qword_1BC76E3A8);
  return sub_1BC750E6C(v83, _s6VictimVMa);
}

uint64_t sub_1BC748BD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a2;
  v122 = a3;
  v111 = a1;
  v133 = a4;
  v5 = sub_1BC75AC20();
  v129 = *(v5 - 8);
  v130 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v128 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF348, &qword_1BC76EA78);
  v7 = MEMORY[0x1EEE9AC00](v125);
  v132 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF350, &qword_1BC76EA80);
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v110 = (&v107 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF358, &qword_1BC76EA88);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v138 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v107 - v15;
  v16 = sub_1BC75A710();
  v119 = *(v16 - 8);
  v120 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v117 = (&v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = _s6VictimVMa(0);
  v118 = *(v18 - 8);
  v114 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF360, &qword_1BC76EA90);
  MEMORY[0x1EEE9AC00](v116);
  v115 = (&v107 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF368, &qword_1BC76EA98);
  v126 = *(v21 - 8);
  v127 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v141 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v140 = &v107 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF370, &unk_1BC76EAA0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v137 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v107 - v28);
  v30 = type metadata accessor for _ReportOverviewScreen(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE970, &qword_1BC76CB98);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v135 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v107 - v37);
  sub_1BC745FB4(a1, v33, type metadata accessor for _ReportOverviewScreen);
  v39 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v108 = *(v31 + 80);
  v109 = v32;
  v40 = v39 + v32;
  v41 = swift_allocObject();
  v112 = type metadata accessor for _ReportOverviewScreen;
  sub_1BC748158(v33, v41 + v39, type metadata accessor for _ReportOverviewScreen);
  v42 = _s3RowVMa(0);
  v43 = sub_1BC74820C(&qword_1EBCDEC08, _s3RowVMa, &unk_1BC769630);
  v134 = v38;
  sub_1BC6F7354(sub_1BC75376C, v41, v42, v43, v38);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF378, &qword_1BC76EAB0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF380, &qword_1BC76EAB8);
  v46 = sub_1BC753798();
  *&v143 = v45;
  *(&v143 + 1) = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = v29;
  sub_1BC6F7410(sub_1BC749B20, 0, v44, OpaqueTypeConformance2, v29);
  v48 = v111;
  sub_1BC745FB4(v111, v33, type metadata accessor for _ReportOverviewScreen);
  v49 = v113;
  sub_1BC745FB4(v121, v113, _s6VictimVMa);
  v50 = *(v118 + 80);
  v118 = v40;
  v51 = (v40 + v50) & ~v50;
  v52 = swift_allocObject();
  v121 = v39;
  sub_1BC748158(v33, v52 + v39, v112);
  sub_1BC748158(v49, v52 + v51, _s6VictimVMa);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF390, &qword_1BC76EAC0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF398, &qword_1BC76EAC8);
  v55 = v48;
  v56 = sub_1BC633C54(&qword_1EBCDF3A0, &qword_1EBCDF398, &qword_1BC76EAC8, MEMORY[0x1E697C158]);
  *&v143 = v54;
  *(&v143 + 1) = v56;
  v57 = v122;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v115;
  sub_1BC6F7410(sub_1BC75387C, v52, v53, v58, v115);
  v60 = v117;
  sub_1BC747F50(v117);
  v61 = sub_1BC633C54(&qword_1EBCDF3A8, &qword_1EBCDF360, &qword_1BC76EA90, &unk_1BC7695E0);
  sub_1BC6F89E4(v60, v116, v61);
  (*(v119 + 8))(v60, v120);
  sub_1BC66008C(v59, &qword_1EBCDF360, &qword_1BC76EA90);
  if (*(v57 + 16))
  {
    v62 = v108;
    v63 = *(v57 + 176);
    v151 = *(v57 + 160);
    v152 = v63;
    v153 = *(v57 + 192);
    v64 = *(v57 + 112);
    v147 = *(v57 + 96);
    v148 = v64;
    v65 = *(v57 + 144);
    v149 = *(v57 + 128);
    v150 = v65;
    v66 = *(v57 + 48);
    v143 = *(v57 + 32);
    v144 = v66;
    v67 = *(v57 + 80);
    v145 = *(v57 + 64);
    v146 = v67;
    sub_1BC745FB4(v48, v33, type metadata accessor for _ReportOverviewScreen);
    v68 = (v62 + 24) & ~v62;
    v69 = (v109 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 16) = v57;
    sub_1BC748158(v33, v70 + v68, type metadata accessor for _ReportOverviewScreen);
    v71 = v70 + v69;
    v72 = v152;
    *(v71 + 128) = v151;
    *(v71 + 144) = v72;
    *(v71 + 160) = v153;
    v73 = v148;
    *(v71 + 64) = v147;
    *(v71 + 80) = v73;
    v74 = v150;
    *(v71 + 96) = v149;
    *(v71 + 112) = v74;
    v75 = v144;
    *v71 = v143;
    *(v71 + 16) = v75;
    v76 = v146;
    *(v71 + 32) = v145;
    *(v71 + 48) = v76;
    sub_1BC6C3F8C(&v143, &v142);

    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3B0, &qword_1BC76EAD0);
    v78 = sub_1BC7539F0();
    v79 = v110;
    sub_1BC6F7410(sub_1BC753950, v70, v77, v78, v110);
    v80 = v139;
    sub_1BC65FFBC(v79, v139, &qword_1EBCDF350, &qword_1BC76EA80);
    v81 = 0;
    v82 = v80;
  }

  else
  {
    v82 = v139;
    v81 = 1;
  }

  (*(v123 + 56))(v82, v81, 1, v124);
  sub_1BC745FB4(v55, v33, type metadata accessor for _ReportOverviewScreen);
  v83 = swift_allocObject();
  sub_1BC748158(v33, v83 + v121, type metadata accessor for _ReportOverviewScreen);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3E8, &qword_1BC76EAF0);
  v85 = sub_1BC753BFC();
  v86 = v131;
  sub_1BC6F7410(sub_1BC753B8C, v83, v84, v85, v131);
  v87 = v128;
  sub_1BC75AC10();
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF408, &qword_1BC76EB00) + 36);
  v90 = v129;
  v89 = v130;
  (*(v129 + 16))(&v86[v88], v87, v130);
  v91 = *(v90 + 56);
  v91(&v86[v88], 0, 1, v89);
  KeyPath = swift_getKeyPath();
  v93 = &v86[*(v125 + 36)];
  v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDDD0, &qword_1BC769480) + 28);
  (*(v90 + 32))(v93 + v94, v87, v89);
  v91(v93 + v94, 0, 1, v89);
  *v93 = KeyPath;
  v95 = v135;
  sub_1BC660024(v134, v135, &qword_1EBCDE970, &qword_1BC76CB98);
  v96 = v137;
  sub_1BC660024(v136, v137, &qword_1EBCDF370, &unk_1BC76EAA0);
  v98 = v126;
  v97 = v127;
  v99 = *(v126 + 16);
  v99(v141, v140, v127);
  sub_1BC660024(v139, v138, &qword_1EBCDF358, &qword_1BC76EA88);
  v100 = v132;
  sub_1BC660024(v86, v132, &qword_1EBCDF348, &qword_1BC76EA78);
  v101 = v95;
  v102 = v133;
  sub_1BC660024(v101, v133, &qword_1EBCDE970, &qword_1BC76CB98);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF410, &qword_1BC76EB40);
  sub_1BC660024(v96, v102 + v103[12], &qword_1EBCDF370, &unk_1BC76EAA0);
  v99((v102 + v103[16]), v141, v97);
  v104 = v138;
  sub_1BC660024(v138, v102 + v103[20], &qword_1EBCDF358, &qword_1BC76EA88);
  sub_1BC660024(v100, v102 + v103[24], &qword_1EBCDF348, &qword_1BC76EA78);
  sub_1BC66008C(v86, &qword_1EBCDF348, &qword_1BC76EA78);
  sub_1BC66008C(v139, &qword_1EBCDF358, &qword_1BC76EA88);
  v105 = *(v98 + 8);
  v105(v140, v97);
  sub_1BC66008C(v136, &qword_1EBCDF370, &unk_1BC76EAA0);
  sub_1BC66008C(v134, &qword_1EBCDE970, &qword_1BC76CB98);
  sub_1BC66008C(v100, &qword_1EBCDF348, &qword_1BC76EA78);
  sub_1BC66008C(v104, &qword_1EBCDF358, &qword_1BC76EA88);
  v105(v141, v97);
  sub_1BC66008C(v137, &qword_1EBCDF370, &unk_1BC76EAA0);
  return sub_1BC66008C(v135, &qword_1EBCDE970, &qword_1BC76CB98);
}

uint64_t sub_1BC7499F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v7 = type metadata accessor for _ReportOverviewScreen(0);
  sub_1BC75B730();
  v8 = (a1 + *(v7 + 32));
  v9 = *(v8 + 8);
  v10 = *(v8 + 32);
  v18 = *v8;
  v19 = v9;
  v20 = *(v8 + 1);
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  sub_1BC75A6A0();
  v11 = v16[1];
  v12 = v16[2];
  v13 = v16[3];
  LOBYTE(v7) = v17;
  v14 = sub_1BC67A2E4();
  return sub_1BC6F8C2C(22, 12, v6, v11, v12, v13, v7, v14 & 1, a2);
}

uint64_t sub_1BC749B20(uint64_t a1)
{
  v38 = sub_1BC75ACE0();
  v47 = 1;
  v1._object = 0x80000001BC774BE0;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2 = SCLocalizedStringKey.init(stringLiteral:)(v1);
  v41 = v48[0];
  v4 = sub_1BC651E78(&v41, v2.localized._object, v3);
  v6 = v5;
  v8 = v7;
  v9 = sub_1BC75B180();
  v39 = v10;
  v40 = v9;
  v36 = v11;
  v37 = v12;
  sub_1BC680E6C(v4, v6, v8 & 1);

  v13._countAndFlagsBits = 0x495F54524F504552;
  v13._object = 0xEF534544554C434ELL;
  v14 = SCLocalizedStringKey.init(stringLiteral:)(v13);
  v41 = v48[0];
  v16 = sub_1BC651E78(&v41, v14.localized._object, v15);
  v18 = v17;
  v20 = v19;
  sub_1BC75B0E0();
  v21 = sub_1BC75B190();
  v23 = v22;
  v25 = v24;

  sub_1BC680E6C(v16, v18, v20 & 1);

  *&v48[0] = sub_1BC75B500();
  v26 = sub_1BC75B160();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1BC680E6C(v21, v23, v25 & 1);

  v49 = v36 & 1;
  LOBYTE(v48[0]) = v36 & 1;
  LOBYTE(v41) = v30 & 1;
  sub_1BC680FFC(v40, v39, v36 & 1);

  sub_1BC680FFC(v26, v28, v30 & 1);

  sub_1BC680E6C(v26, v28, v30 & 1);

  sub_1BC680E6C(v40, v39, v49);

  v33 = v47;
  *&v48[0] = sub_1BC75B520();
  WORD4(v48[0]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
  sub_1BC633C54(&qword_1EDDCE160, &qword_1EBCDD2B8, &qword_1BC76DEE0, MEMORY[0x1E697DB78]);
  v34 = sub_1BC75B6F0();
  v41 = v38;
  LOBYTE(v42) = v33;
  *(&v42 + 1) = v40;
  *&v43 = v39;
  BYTE8(v43) = v36 & 1;
  *&v44 = v37;
  *(&v44 + 1) = v26;
  *&v45 = v28;
  BYTE8(v45) = v30 & 1;
  *&v46 = v32;
  *(&v46 + 1) = v34;
  sub_1BC75A7B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF380, &qword_1BC76EAB8);
  sub_1BC753798();
  sub_1BC75B2B0();
  v48[2] = v43;
  v48[3] = v44;
  v48[4] = v45;
  v48[5] = v46;
  v48[0] = v41;
  v48[1] = v42;
  return sub_1BC66008C(v48, &qword_1EBCDF380, &qword_1BC76EAB8);
}

uint64_t sub_1BC749E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = _s6VictimVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF398, &qword_1BC76EAC8);
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = v18 - v9;
  v11 = (a1 + *(type metadata accessor for _ReportOverviewScreen(0) + 48));
  v13 = *(v11 + 1);
  v27 = *v11;
  v12 = v27;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v19 = v25;
  v20 = v24;
  v18[3] = v26;
  sub_1BC745FB4(a2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s6VictimVMa);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_1BC748158(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, _s6VictimVMa);
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3D8, &qword_1BC76EAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF480, &unk_1BC76EBD8);
  sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8, &unk_1BC769680);
  sub_1BC754AB0();
  sub_1BC75A920();
  LOBYTE(v24) = v12;
  v25 = v13;
  sub_1BC75B640();
  sub_1BC75A7C0();
  sub_1BC633C54(&qword_1EBCDF3A0, &qword_1EBCDF398, &qword_1BC76EAC8, MEMORY[0x1E697C158]);
  v16 = v21;
  sub_1BC75B2B0();
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_1BC74A1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF438, &qword_1BC76EB70);
  v10[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v10 - v3;
  v5 = sub_1BC6B6614();
  if (v5)
  {
    v10[3] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF460, &qword_1BC76EBC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF468, &unk_1BC76EBC8);
    sub_1BC633C54(&qword_1EBCDF470, &qword_1EBCDF460, &qword_1BC76EBC0, MEMORY[0x1E69E6338]);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
    v7 = sub_1BC754854();
    v10[1] = v6;
    v10[2] = v7;
    swift_getOpaqueTypeConformance2();
    sub_1BC75490C();
    sub_1BC75B780();
    (*(v10[0] + 32))(a1, v4, v2);
    return (*(v10[0] + 56))(a1, 0, 1, v2);
  }

  else
  {
    v9 = *(v10[0] + 56);

    return v9(a1, 1, 1, v2);
  }
}

uint64_t sub_1BC74A408(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF448, &qword_1BC76EB78);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v12 - v3);
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v13[0] = v6;
  v13[1] = v5;
  v12[0] = v7;
  v12[1] = v8;

  sub_1BC6FC364(v13, v12, v4);
  v9 = sub_1BC75B030();
  v10 = v4 + *(v2 + 36);
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  sub_1BC75A7B0();
  sub_1BC754854();
  sub_1BC75B2B0();
  return sub_1BC66008C(v4, &qword_1EBCDF448, &qword_1BC76EB78);
}

uint64_t sub_1BC74A540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v58 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3D8, &qword_1BC76EAE8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = (v39 - v6);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF420, &qword_1BC76EB50);
  v8 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v10 = v39 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF428, &qword_1BC76EB58);
  MEMORY[0x1EEE9AC00](v54);
  v55 = v39 - v11;
  v50 = sub_1BC75A710();
  v12 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3C8, &qword_1BC76EAE0);
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v16 = v39 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF3C0, &qword_1BC76EAD8);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v18 = v39 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF430, &unk_1BC76EB60);
  MEMORY[0x1EEE9AC00](v53);
  v21 = v39 - v20;
  if (*(a1 + 16) < 2uLL)
  {
    sub_1BC6B6ABC(&v62);
    v59 = v62;
    v60 = v63;
    v61 = v64;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
    v33 = sub_1BC6CBAA8();
    sub_1BC6FC404(&v59, sub_1BC74AF60, 0, v32, v33, v7);
    sub_1BC747F50(v14);
    v34 = sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8, &unk_1BC769680);
    v35 = v56;
    sub_1BC6F89E4(v14, v56, v34);
    (*(v12 + 8))(v14, v50);
    sub_1BC66008C(v7, &qword_1EBCDF3D8, &qword_1BC76EAE8);
    v36 = v57;
    (*(v8 + 16))(v55, v10, v57);
    swift_storeEnumTagMultiPayload();
    v37 = sub_1BC633C54(&qword_1EBCDF3D0, &qword_1EBCDF3C8, &qword_1BC76EAE0, MEMORY[0x1E697C158]);
    v62.n128_u64[0] = v51;
    v62.n128_u64[1] = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62.n128_u64[0] = v52;
    v62.n128_u64[1] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v62.n128_u64[0] = v35;
    v62.n128_u64[1] = v34;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v8 + 8))(v10, v36);
  }

  else
  {
    v46 = v19;
    v22 = (a2 + *(type metadata accessor for _ReportOverviewScreen(0) + 52));
    v45 = *v22;
    v44 = *(v22 + 1);
    v59.n128_u8[0] = v45;
    v59.n128_u64[1] = v44;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    v42 = a2;
    sub_1BC75B660();
    v40 = v62.n128_u64[1];
    v41 = v62.n128_u64[0];
    v39[3] = v63;
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    MEMORY[0x1EEE9AC00](v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF438, &qword_1BC76EB70);
    v49 = sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8, &unk_1BC769680);
    sub_1BC754794();
    v24 = v56;
    sub_1BC75A920();
    sub_1BC747F50(v14);
    v25 = sub_1BC633C54(&qword_1EBCDF3D0, &qword_1EBCDF3C8, &qword_1BC76EAE0, MEMORY[0x1E697C158]);
    v26 = v51;
    sub_1BC6F89E4(v14, v51, v25);
    (*(v12 + 8))(v14, v50);
    (*(v47 + 8))(v16, v26);
    v62.n128_u8[0] = v45;
    v62.n128_u64[1] = v44;
    sub_1BC75B640();
    sub_1BC75A7C0();
    v62.n128_u64[0] = v26;
    v62.n128_u64[1] = v25;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = v52;
    sub_1BC75B2B0();
    (*(v48 + 8))(v18, v28);
    v29 = v46;
    v30 = v53;
    (*(v46 + 16))(v55, v21, v53);
    swift_storeEnumTagMultiPayload();
    v62.n128_u64[0] = v28;
    v62.n128_u64[1] = v27;
    swift_getOpaqueTypeConformance2();
    v62.n128_u64[0] = v24;
    v62.n128_u64[1] = v49;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v29 + 8))(v21, v30);
  }
}

uint64_t sub_1BC74AE44(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF448, &qword_1BC76EB78);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v12 - v3);
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v12.n128_u64[0] = v6;
  v12.n128_u64[1] = v5;
  v13 = v7;
  v14 = v8;

  sub_1BC6FC4A8(&v12, v4);
  v9 = sub_1BC75B030();
  v10 = v4 + *(v2 + 36);
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  sub_1BC75A7B0();
  sub_1BC754854();
  sub_1BC75B2B0();
  return sub_1BC66008C(v4, &qword_1EBCDF448, &qword_1BC76EB78);
}

uint64_t sub_1BC74AF78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75B5D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75B5C0();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v8 = sub_1BC75B610();

  (*(v5 + 8))(v7, v4);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
  sub_1BC75ACF0();
  v11 = sub_1BC75AD00();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = swift_getKeyPath();
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  v12 = a1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  *(a2 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1BC74B178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Report.Evidence(0);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  *&v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  v15 = *&v13[*(v9 + 56)];

  sub_1BC750E6C(v13, type metadata accessor for Report.Evidence);
  if (*(v15 + 16))
  {
    v16._object = 0x80000001BC774100;
    v16._countAndFlagsBits = 0xD000000000000011;
    object = SCLocalizedStringKey.init(stringLiteral:)(v16).localized._object;
    v62 = v64;
    v63 = v65;
    MEMORY[0x1BFB262E0](v14, object);
    sub_1BC6B70D0(&v60);
    v49 = type metadata accessor for Report.Evidence;
    sub_1BC750E6C(v13, type metadata accessor for Report.Evidence);
    v58 = v60;
    v59 = v61;
    v52 = type metadata accessor for _ReportOverviewScreen;
    sub_1BC745FB4(a1, &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _ReportOverviewScreen);
    v51 = v6;
    v18 = *(v5 + 80);
    v19 = v7;
    v48 = v7;
    v20 = (v18 + 24) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v15;
    v50 = type metadata accessor for _ReportOverviewScreen;
    v22 = sub_1BC748158(v19, v21 + v20, type metadata accessor for _ReportOverviewScreen);
    sub_1BC727420(v22, v23, v24);

    sub_1BC6FD0CC(&v62, &v58, 2, sub_1BC753CAC, v21, &v66);
    v56 = v66;
    v47 = v67;
    v25 = v69;
    v54 = v70;
    v55 = v68;
    v53 = v71;
    MEMORY[0x1BFB262E0](v14);
    sub_1BC6B7CBC(&v64);
    v26 = v13;
    v27 = v49;
    sub_1BC750E6C(v26, v49);
    v62 = v64;
    v63 = v65;
    v28 = v57;
    MEMORY[0x1BFB262E0](v14);
    sub_1BC6B7FC8(&v60);
    sub_1BC750E6C(v28, v27);
    v58 = v60;
    v59 = v61;
    v29 = a1;
    v30 = v48;
    sub_1BC745FB4(v29, v48, v52);
    v31 = swift_allocObject();
    *(v31 + 16) = v15;
    v32 = v47;
    v33 = sub_1BC748158(v30, v31 + v20, v50);
    sub_1BC727388(v33, v34, v35);
    sub_1BC6FD0CC(&v62, &v58, 3, sub_1BC754408, v31, &v66);
    v36 = v66;
    v37 = v67;
    v38 = v68;
    v39 = v69;
    v40 = v70;
    v57 = v71;

    v42 = v57;
    v43 = v53;
    v45 = v54;
    v44 = v55;
    v46 = v56;
  }

  else
  {

    v46 = 0;
    v32 = 0;
    v44 = 0;
    v25 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v45 = 0;
    v43 = 0uLL;
    v42 = 0uLL;
  }

  *a2 = v46;
  *(a2 + 8) = v32;
  *(a2 + 16) = v44;
  *(a2 + 24) = v25;
  *(a2 + 32) = v45;
  *(a2 + 40) = v43;
  *(a2 + 56) = v36;
  *(a2 + 64) = v37;
  *(a2 + 72) = v38;
  *(a2 + 80) = v39;
  *(a2 + 88) = v40;
  *(a2 + 96) = v42;
  return result;
}

void sub_1BC74B614(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v4 = type metadata accessor for Report.Message(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_18:
    type metadata accessor for _ReportOverviewScreen(0);

    nullsub_1();
    v24 = v29;
    *v29 = v25;
    v24[1] = v26;
    v24[2] = v27;
    return;
  }

  v10 = *(v5 + 32);
  v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1BC745FB4(v11, v8, type metadata accessor for Report.Message);
    v14 = *&v8[v10];

    sub_1BC750E6C(v8, type metadata accessor for Report.Message);
    v15 = *(v14 + 16);
    v16 = v13[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v13[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v13 = sub_1BC751218(isUniquelyReferenced_nonNull_native, v19, 1, v13, &qword_1EBCDD178, &qword_1BC766458, type metadata accessor for Report.Media);
      if (*(v14 + 16))
      {
LABEL_14:
        v20 = (v13[3] >> 1) - v13[2];
        type metadata accessor for Report.Media(0);
        if (v20 < v15)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v21 = v13[2];
          v22 = __OFADD__(v21, v15);
          v23 = v21 + v15;
          if (v22)
          {
            goto LABEL_22;
          }

          v13[2] = v23;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_20;
    }

LABEL_4:
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

double sub_1BC74B8B4@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Report.Evidence(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-1] - v9;

  v12 = sub_1BC74BA60(v11);
  v13 = type metadata accessor for _ReportOverviewScreen(0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  sub_1BC6B8860(v27);
  sub_1BC750E6C(v10, type metadata accessor for Report.Evidence);
  v26[0] = v27[0];
  v26[1] = v27[1];
  MEMORY[0x1BFB262E0](v14);
  sub_1BC6B7FC8(v25);
  sub_1BC750E6C(v8, type metadata accessor for Report.Evidence);
  v24[0] = v25[0];
  v24[1] = v25[1];
  v15 = (a2 + *(v13 + 24));
  v16 = *v15;
  v17 = v15[1];

  sub_1BC723848(v12, v26, v24, v16, v17, &v28);
  result = *&v28;
  v19 = v29;
  v20 = v30;
  v21 = v32;
  v22 = v31;
  *a3 = v28;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v22;
  *(a3 + 48) = v21;
  return result;
}

void *sub_1BC74BA60(void *a1)
{
  v2 = type metadata accessor for Report.Message(0);
  v15 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v16 = &v15 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v14 = *(v15 + 72);
    result = sub_1BC745FB4(a1 + v13 + v14 * v9, v16, type metadata accessor for Report.Message);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_1BC745FB4(a1 + v13 + v14 * i, v5, type metadata accessor for Report.Message);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1BC7513F4(a1);
    }

    result = sub_1BC75447C(v5, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_1BC75447C(v16, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1BC74BC38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8._countAndFlagsBits = 0x45554E49544E4F43;
  v8._object = 0xE800000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v8);
  v27[0] = v27[2];
  v27[1] = v27[3];
  v9 = (a1 + *(v5 + 44));
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  v28 = v10;
  v29 = v11;
  v30 = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF068, &unk_1BC76E388);
  MEMORY[0x1BFB262E0](&v26, v12);
  LOBYTE(v5) = v26;
  sub_1BC745FB4(a1, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _ReportOverviewScreen);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1BC748158(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for _ReportOverviewScreen);
  sub_1BC71083C(v27, v5, sub_1BC75370C, v14, &v28);
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v25 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B8, &qword_1BC761DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC75F0C0;
  LOBYTE(v7) = sub_1BC75B030();
  *(inited + 32) = v7;
  v19 = sub_1BC75B050();
  *(inited + 33) = v19;
  v20 = sub_1BC75B040();
  sub_1BC75B040();
  if (sub_1BC75B040() != v7)
  {
    v20 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v19)
  {
    v20 = sub_1BC75B040();
  }

  sub_1BC75A670();
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v25;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v23;
  *(a2 + 72) = v24;
  *(a2 + 80) = 0;
}

uint64_t sub_1BC74BEBC(uint64_t a1)
{
  v2 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _ReportOverviewScreen(0);
  v6 = (a1 + *(v5 + 32));
  v7 = *(v6 + 8);
  v8 = *(v6 + 32);
  v14 = *v6;
  v15 = v7;
  v16 = *(v6 + 1);
  v17 = v8;
  v12[1] = 0;
  v13 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  sub_1BC75A690();
  v9 = *(a1 + *(v5 + 40));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v10);
  v9(v4);
  return sub_1BC750E6C(v4, type metadata accessor for Report.Evidence);
}

uint64_t sub_1BC74BFF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF320, &qword_1BC76EA48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v30 = v27 - v4;
  v5 = sub_1BC75AE70();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF0F0, &qword_1BC76E3E0);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  v14 = a1 + *(type metadata accessor for _ReportOverviewScreen(0) + 32);
  v15 = *(v14 + 8);
  v16 = *(v14 + 32);
  v33 = *v14;
  LOBYTE(v34) = v15;
  v35 = *(v14 + 16);
  v36 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  sub_1BC75A680();
  if (v32 == 255 || (LOBYTE(v33) = sub_1BC757F08(v31, v32), LOBYTE(v31) = 9, sub_1BC752D78(), (sub_1BC75BAB0() & 1) == 0))
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    v23 = sub_1BC633C54(&qword_1EBCDF0F8, &qword_1EBCDF0F0, &qword_1BC76E3E0, MEMORY[0x1E697C288]);
    v33 = v6;
    v34 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB25A90](v11, v2, OpaqueTypeConformance2);
    sub_1BC66008C(v11, &qword_1EBCDF0E0, &qword_1BC76E3D8);
  }

  else
  {
    v17 = sub_1BC75AE50();
    v27[1] = v27;
    MEMORY[0x1EEE9AC00](v17);
    v27[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF330, &unk_1BC76EA58);
    v27[0] = v6;
    sub_1BC633C54(&qword_1EBCDF338, &qword_1EBCDF330, &unk_1BC76EA58, MEMORY[0x1E6981F48]);
    v18 = v28;
    sub_1BC75A9D0();
    v19 = sub_1BC633C54(&qword_1EBCDF0F8, &qword_1EBCDF0F0, &qword_1BC76E3E0, MEMORY[0x1E697C288]);
    v20 = v30;
    v21 = v27[0];
    MEMORY[0x1BFB25A80](v18, v27[0], v19);
    (*(v3 + 16))(v11, v20, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    v33 = v21;
    v34 = v19;
    v22 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB25A90](v11, v2, v22);
    sub_1BC66008C(v11, &qword_1EBCDF0E0, &qword_1BC76E3D8);
    (*(v3 + 8))(v20, v2);
    (*(v29 + 8))(v18, v21);
  }

  v25 = sub_1BC750D78();
  MEMORY[0x1BFB25A80](v13, v8, v25);
  return sub_1BC66008C(v13, &qword_1EBCDF0E0, &qword_1BC76E3D8);
}

uint64_t sub_1BC74C540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - v12;
  v14._countAndFlagsBits = 1162760004;
  v14._object = 0xE400000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v14);
  v21[0] = v21[2];
  v21[1] = v21[3];
  sub_1BC745FB4(a1, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _ReportOverviewScreen);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1BC748158(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for _ReportOverviewScreen);
  sub_1BC651F0C(v21, sub_1BC753650, v16);
  v17 = *(v8 + 16);
  v17(v11, v13, v7);
  *a2 = 0;
  *(a2 + 8) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF340, &unk_1BC76EA68);
  v17((a2 + *(v18 + 48)), v11, v7);
  v19 = *(v8 + 8);
  v19(v13, v7);
  return (v19)(v11, v7);
}

uint64_t sub_1BC74C7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;

  v6 = sub_1BC651E78(v19, v4, v5);
  v8 = v7;
  v10 = v9;
  sub_1BC75B0E0();
  v11 = sub_1BC75B190();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1BC680E6C(v6, v8, v10 & 1);

  LOBYTE(v19[0]) = v15 & 1;
  v20 = 1;
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 24) = v17;
  *(a3 + 32) = sub_1BC74C8F4;
  *(a3 + 56) = 1;
  sub_1BC680FFC(v11, v13, v15 & 1);

  sub_1BC680E6C(v11, v13, v15 & 1);
}

void sub_1BC74C91C(uint64_t a2@<X8>)
{
  v4 = v2[1];
  if (v4)
  {
    v5 = *v2;
    v6 = sub_1BC75AC00();
    v16 = 1;
    sub_1BC74C7CC(v5, v4, v13);
    v7 = v13[0];
    v8 = v13[1];
    v9 = v13[2];
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v6 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
}

double sub_1BC74C9CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75AC00();
  v16 = 1;
  sub_1BC74CAD4(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_1BC660024(&v17, &v9, &qword_1EBCDF318, &qword_1BC76EA40);
  sub_1BC66008C(v22, &qword_1EBCDF318, &qword_1BC76EA40);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_1BC74CAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7._countAndFlagsBits = 0x495243534E415254;
  v7._object = 0xEA00000000005450;
  v8 = SCLocalizedStringKey.init(stringLiteral:)(v7);
  v48 = v50;
  v49 = v51;
  v10 = sub_1BC651E78(&v48, v8.localized._object, v9);
  v43 = v11;
  v44 = v10;
  v42 = v12;
  v45 = v13;
  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001BC774BC0;
  v14._countAndFlagsBits = 0xD000000000000019;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v50 = *(a1 + 16);
  v18 = sub_1BC6C1BE8(v15, v16, v17);
  SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(&v50, MEMORY[0x1E69E6530], v18);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  SCLocalizedStringKey.init(stringInterpolation:)(v6, &v50);
  v48 = v50;
  v49 = v51;
  v22 = sub_1BC651E78(&v48, v20, v21);
  v24 = v23;
  v26 = v25;
  v50 = sub_1BC75B500();
  v27 = sub_1BC75B160();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1BC680E6C(v22, v24, v26 & 1);

  v34 = v42 & 1;
  LOBYTE(v50) = v42 & 1;
  LOBYTE(v48) = v42 & 1;
  v47 = 1;
  v35 = v31 & 1;
  v46 = v31 & 1;
  v36 = v31 & 1;
  v38 = v43;
  v37 = v44;
  *a2 = v44;
  *(a2 + 8) = v38;
  *(a2 + 16) = v34;
  *(a2 + 24) = v45;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v27;
  *(a2 + 56) = v29;
  *(a2 + 64) = v36;
  *(a2 + 72) = v33;
  v39 = v37;
  sub_1BC680FFC(v37, v38, v34);

  sub_1BC680FFC(v27, v29, v35);

  sub_1BC680E6C(v27, v29, v35);

  sub_1BC680E6C(v39, v38, v50);
}

uint64_t sub_1BC74CD30@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ReportTranscriptView(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  if (*v1)
  {
    MEMORY[0x1EEE9AC00](v4);
    *(&v12 - 2) = v7;
    *(v6 + *(v3 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
    swift_storeEnumTagMultiPayload();
    *v6 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF108, &qword_1BC76E3F0);
    sub_1BC633C54(&qword_1EBCDF110, &qword_1EBCDF108, &qword_1BC76E3F0, MEMORY[0x1E69817F8]);
    sub_1BC74820C(&qword_1EBCDF118, type metadata accessor for ReportTranscriptView, &unk_1BC76E5EC);
    sub_1BC75A8A0();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF100, &qword_1BC76E3E8);
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF100, &qword_1BC76E3E8);
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_1BC74CFA4(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEA0, &qword_1BC764A00);
  sub_1BC759910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF2F0, &qword_1BC76EA18);
  sub_1BC633C54(&qword_1EBCDEBF0, &qword_1EBCDCEA0, &qword_1BC764A00, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF130, &qword_1BC76E400);
  sub_1BC633C54(&qword_1EBCDF138, &qword_1EBCDF130, &qword_1BC76E400, MEMORY[0x1E69817F8]);
  swift_getOpaqueTypeConformance2();
  sub_1BC74820C(&qword_1EBCDEBF8, type metadata accessor for Report.Message, &protocol conformance descriptor for Report.Message);
  return sub_1BC75B780();
}

uint64_t sub_1BC74D140(uint64_t a1)
{
  v42 = sub_1BC75ABF0();
  v59 = 1;
  v41 = sub_1BC75ACE0();
  v79 = 1;
  v40 = sub_1BC75AC00();
  v60[0] = 1;
  *&v76 = sub_1BC72C630();
  *(&v76 + 1) = v2;
  sub_1BC651EB8(v76, v2, v3);
  v4 = sub_1BC75B1B0();
  v6 = v5;
  v8 = v7;
  sub_1BC75B0E0();
  v9 = sub_1BC75B190();
  v43 = v10;
  v44 = v9;
  v38 = v11;
  v35 = v12;

  sub_1BC680E6C(v4, v6, v8 & 1);

  v36 = type metadata accessor for Report.Message(0);
  v13 = (a1 + *(v36 + 24));
  v14 = v13[1];
  *&v76 = *v13;
  *(&v76 + 1) = v14;

  v15 = sub_1BC75B1B0();
  v17 = v16;
  v19 = v18;
  sub_1BC75B0C0();
  v20 = sub_1BC75B190();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1BC680E6C(v15, v17, v19 & 1);

  LOBYTE(v15) = v38 & 1;
  LOBYTE(v63) = v38 & 1;
  LOBYTE(v76) = v38 & 1;
  LOBYTE(v45) = v24 & 1;
  sub_1BC680FFC(v44, v43, v38 & 1);

  sub_1BC680FFC(v20, v22, v24 & 1);

  v34 = v20;
  sub_1BC680E6C(v20, v22, v24 & 1);

  sub_1BC680E6C(v44, v43, v38 & 1);

  v39 = sub_1BC75AC00();
  v27 = (a1 + *(v36 + 28));
  v28 = v27[1];
  *&v76 = *v27;
  *(&v76 + 1) = v28;

  *&v37 = sub_1BC75B1B0();
  *(&v37 + 1) = v29;
  v31 = v30;
  v45 = v40;
  v46[0] = 1;
  *&v46[1] = *v60;
  *&v46[4] = *&v60[3];
  *&v46[8] = v44;
  *&v46[16] = v43;
  v46[24] = v15;
  *&v46[28] = *(&v47 + 3);
  *&v46[25] = v47;
  *&v46[32] = v35;
  *&v46[40] = v20;
  *&v46[48] = v22;
  v46[56] = v24 & 1;
  *&v46[60] = *(v89 + 3);
  *&v46[57] = v89[0];
  *&v46[64] = v26;
  LOBYTE(v80) = 1;
  LOBYTE(v20) = v32 & 1;
  v99 = v32 & 1;
  *&v68 = v26;
  v66 = *&v46[32];
  v67 = *&v46[48];
  v64 = *v46;
  v65 = *&v46[16];
  v63 = v40;
  sub_1BC660024(&v45, &v76, &qword_1EBCDF310, &qword_1BC76EA38);
  sub_1BC680FFC(v37, *(&v37 + 1), v20);

  sub_1BC680E6C(v37, *(&v37 + 1), v20);

  v76 = v40;
  v77[0] = 1;
  *&v77[1] = *v60;
  *&v77[4] = *&v60[3];
  *&v77[8] = v44;
  *&v77[16] = v43;
  v77[24] = v15;
  *&v77[25] = v47;
  *&v77[28] = *(&v47 + 3);
  *&v77[32] = v35;
  *&v77[40] = v34;
  *&v77[48] = v22;
  v77[56] = v24 & 1;
  *&v77[60] = *(v89 + 3);
  *&v77[57] = v89[0];
  *&v77[64] = v26;
  sub_1BC66008C(&v76, &qword_1EBCDF310, &qword_1BC76EA38);
  v82 = v65;
  v83 = v66;
  v84 = v67;
  v80 = v63;
  v81 = v64;
  v89[1] = v64;
  v89[0] = v63;
  HIDWORD(v86) = *(&v45 + 3);
  *(&v86 + 9) = v45;
  DWORD1(v88) = *&v60[3];
  *(&v88 + 1) = *v60;
  *&v85 = v68;
  *(&v85 + 1) = v39;
  *&v86 = 0;
  BYTE8(v86) = 1;
  v87 = v37;
  LOBYTE(v88) = v20;
  *(&v88 + 1) = v31;
  v89[4] = v67;
  v89[3] = v66;
  v89[2] = v65;
  v90 = v68;
  v91 = v39;
  v92 = 0;
  v93 = 1;
  *&v94[3] = *(&v45 + 3);
  *v94 = v45;
  v95 = v37;
  v96 = v20;
  *&v97[3] = *&v60[3];
  *v97 = *v60;
  v98 = v31;
  sub_1BC660024(&v80, &v76, &qword_1EBCDF300, &qword_1BC76EA28);
  sub_1BC66008C(v89, &qword_1EBCDF300, &qword_1BC76EA28);
  *&v60[39] = v82;
  *&v60[23] = v81;
  *&v60[87] = v85;
  *&v60[103] = v86;
  *&v60[119] = v87;
  *&v60[135] = v88;
  *&v60[55] = v83;
  *&v60[71] = v84;
  *&v60[7] = v80;
  v45 = v41;
  v46[0] = v79;
  *&v46[33] = *&v60[32];
  *&v46[97] = *&v60[96];
  *&v46[113] = *&v60[112];
  *&v46[129] = *&v60[128];
  *&v46[49] = *&v60[48];
  *&v46[65] = *&v60[64];
  *&v46[81] = *&v60[80];
  *&v46[1] = *v60;
  *&v46[17] = *&v60[16];
  v55 = *&v46[112];
  v56 = *&v46[128];
  v51 = *&v46[48];
  v52 = *&v46[64];
  v53 = *&v46[80];
  v54 = *&v46[96];
  v47 = v41;
  v48 = *v46;
  v49 = *&v46[16];
  v50 = *&v46[32];
  *&v77[97] = *&v60[96];
  *&v77[113] = *&v60[112];
  *&v77[129] = *&v60[128];
  *&v77[33] = *&v60[32];
  *&v77[49] = *&v60[48];
  *&v77[65] = *&v60[64];
  *&v77[81] = *&v60[80];
  *&v77[1] = *v60;
  *&v46[144] = *(&v88 + 1);
  v99 = 1;
  v57 = *(&v88 + 1);
  v76 = v41;
  v77[0] = v79;
  *&v77[144] = *(&v88 + 1);
  *&v77[17] = *&v60[16];
  sub_1BC660024(&v45, &v63, &qword_1EBCDF308, &qword_1BC76EA30);
  sub_1BC66008C(&v76, &qword_1EBCDF308, &qword_1BC76EA30);
  *&v60[128] = v55;
  *&v60[144] = v56;
  *&v60[64] = v51;
  *&v60[80] = v52;
  *&v60[96] = v53;
  *&v60[112] = v54;
  *v60 = v47;
  *&v60[16] = v48;
  *&v60[32] = v49;
  *&v60[48] = v50;
  v71 = v55;
  v72 = v56;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v70 = v54;
  v63 = v47;
  v64 = v48;
  v61 = v57;
  v62 = 1;
  v65 = v49;
  v66 = v50;
  v73 = v57;
  v74 = 0;
  v75 = 1;
  sub_1BC660024(v60, &v76, &qword_1EBCDF2F8, &qword_1BC76EA20);
  sub_1BC66008C(&v63, &qword_1EBCDF2F8, &qword_1BC76EA20);
  *&v58[135] = *&v60[128];
  *&v58[151] = *&v60[144];
  *&v58[167] = v61;
  *&v58[71] = *&v60[64];
  *&v58[87] = *&v60[80];
  *&v58[103] = *&v60[96];
  *&v58[119] = *&v60[112];
  *&v58[7] = *v60;
  *&v58[23] = *&v60[16];
  *&v58[39] = *&v60[32];
  *&v58[55] = *&v60[48];
  *&v46[129] = *&v58[128];
  *&v46[145] = *&v58[144];
  *&v46[161] = *&v58[160];
  *&v46[65] = *&v58[64];
  *&v46[81] = *&v58[80];
  *&v46[97] = *&v58[96];
  *&v46[113] = *&v58[112];
  *&v46[1] = *v58;
  *&v46[17] = *&v58[16];
  *&v46[33] = *&v58[32];
  v58[183] = v62;
  v45 = v42;
  v46[0] = v59;
  *&v46[177] = *&v58[176];
  *&v46[49] = *&v58[48];
  sub_1BC75A7B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF130, &qword_1BC76E400);
  sub_1BC633C54(&qword_1EBCDF138, &qword_1EBCDF130, &qword_1BC76E400, MEMORY[0x1E69817F8]);
  sub_1BC75B2B0();
  *&v77[144] = *&v46[144];
  v78[0] = *&v46[160];
  *(v78 + 9) = *&v46[169];
  *&v77[80] = *&v46[80];
  *&v77[96] = *&v46[96];
  *&v77[128] = *&v46[128];
  *&v77[112] = *&v46[112];
  *&v77[16] = *&v46[16];
  *&v77[32] = *&v46[32];
  *&v77[64] = *&v46[64];
  *&v77[48] = *&v46[48];
  *v77 = *v46;
  v76 = v45;
  return sub_1BC66008C(&v76, &qword_1EBCDF130, &qword_1BC76E400);
}

uint64_t (*sub_1BC74D9BC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1BC745FB4(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportTranscriptView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1BC748158(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ReportTranscriptView);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF120, &qword_1BC76E3F8);
  v9 = sub_1BC750EF8();
  return sub_1BC6F6778(sub_1BC755C9C, v7, v8, v9, a2);
}

uint64_t sub_1BC74DB00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  result = sub_1BC75B630();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v21;
  *(a9 + 56) = v22;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  return result;
}

__n128 sub_1BC74DBB4@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unsigned __int8 a8@<W7>, __n128 *a9@<X8>)
{
  sub_1BC75B630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
  sub_1BC75B750();

  result = v18;
  a9->n128_u64[0] = a1;
  a9->n128_u8[8] = a2;
  a9[1] = v17;
  a9[2] = v18;
  a9[3].n128_u8[0] = v17.n128_u8[0];
  a9[3].n128_u64[1] = v17.n128_u64[1];
  a9[4].n128_u64[0] = a5;
  a9[4].n128_u64[1] = a6;
  a9[5].n128_u64[0] = a7;
  a9[5].n128_u8[8] = a8;
  return result;
}

uint64_t sub_1BC74DC98()
{
  v1 = sub_1BC757DC0(*v0, *(v0 + 8));
  if (!sub_1BC758D2C(v1 & 1, 0))
  {
    v7 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    sub_1BC75B640();
    if ((v5 & 1) == 0)
    {
      v2 = *(v0 + 32);
      v7 = *(v0 + 16);
      v8 = v2;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
      MEMORY[0x1BFB262E0](&v5, v3);
      result = v6;
      if (!v6)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1BC74DD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v157 = a2;
  v156 = sub_1BC75A8D0();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF238, &qword_1BC76E878);
  MEMORY[0x1EEE9AC00](v150);
  v152 = &v113 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF240, &qword_1BC76E880);
  v115 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v114 = &v113 - v5;
  v132 = sub_1BC75A760();
  v129 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v127 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF248, &qword_1BC76E888);
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v117 = &v113 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF250, &qword_1BC76E890);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v113 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF258, &qword_1BC76E898);
  v122 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v113 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF260, &qword_1BC76E8A0);
  MEMORY[0x1EEE9AC00](v116);
  v126 = &v113 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF268, &qword_1BC76E8A8);
  MEMORY[0x1EEE9AC00](v125);
  v131 = &v113 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF270, &qword_1BC76E8B0);
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v113 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF278, &qword_1BC76E8B8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v113 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF280, &qword_1BC76E8C0);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v113 - v14;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF288, &qword_1BC76E8C8);
  MEMORY[0x1EEE9AC00](v144);
  v139 = &v113 - v15;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF290, &qword_1BC76E8D0);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v113 - v16;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF298, &qword_1BC76E8D8);
  v149 = *(v151 - 8);
  v17 = MEMORY[0x1EEE9AC00](v151);
  v148 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v113 - v19;
  v20 = *a1;
  v21 = *(a1 + 8);
  LOBYTE(v159) = sub_1BC757F08(*a1, *(a1 + 8));
  LOBYTE(v167) = 10;
  sub_1BC752D78();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if ((sub_1BC75BAB0() & 1) == 0)
  {
    sub_1BC7572F8(v20, v21, &v159);
    v167 = v159;
    v22 = sub_1BC651E78(&v167, v26, v27);
    v23 = v28;
    v25 = v29;
    v24 = v30 & 1;
    sub_1BC680FFC(v22, v28, v30 & 1);
  }

  v140 = v24;
  v141 = v25;
  v142 = v23;
  v143 = v22;
  sub_1BC7572F8(v20, v21, v166);
  v165[0] = v166[0];
  v165[1] = v166[1];
  v31 = *(a1 + 32);
  v167 = *(a1 + 16);
  v168 = v31;
  v32 = *(a1 + 32);
  v159 = *(a1 + 16);
  v160 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
  sub_1BC75B730();
  v34 = v161;
  v35 = v162;
  v37 = v163;
  v36 = v164;
  swift_getKeyPath();
  *&v159 = v34;
  *(&v159 + 1) = v35;
  *&v160 = v37;
  *(&v160 + 1) = v36;
  v128 = v33;
  sub_1BC75B720();

  v38 = v161;
  v39 = v162;
  v40 = v163;
  v41 = v164;

  v42 = sub_1BC757F08(v20, v21);
  v43 = sub_1BC6FCFF0(v42, 10);
  v44 = v117;
  sub_1BC652168(v165, v38, v39, v40, v41, v43);
  v45 = sub_1BC757F08(v20, v21);
  if (sub_1BC6FCFF0(v45, 10))
  {
    v46 = 0;
  }

  else
  {
    v46 = 2;
  }

  KeyPath = swift_getKeyPath();
  v48 = v120;
  (*(v121 + 32))(v120, v44, v123);
  v49 = v48 + *(v119 + 36);
  *v49 = KeyPath;
  *(v49 + 8) = v46;
  v50 = v127;
  sub_1BC75A750();
  sub_1BC752DCC();
  v51 = v118;
  sub_1BC75B230();
  (*(v129 + 8))(v50, v132);
  sub_1BC66008C(v48, &qword_1EBCDF250, &qword_1BC76E890);
  v52 = sub_1BC75B090();
  v53 = swift_getKeyPath();
  v54 = v126;
  (*(v122 + 32))(v126, v51, v124);
  v55 = (v54 + *(v116 + 36));
  *v55 = v53;
  v55[1] = v52;
  v56 = sub_1BC757D6C(v20, v21);
  if (sub_1BC758D2C(v56, 0))
  {
    v57 = sub_1BC75B500();
  }

  else
  {
    v57 = 0;
  }

  v58 = v131;
  v59 = swift_getKeyPath();
  sub_1BC65FFBC(v54, v58, &qword_1EBCDF260, &qword_1BC76E8A0);
  v60 = (v58 + *(v125 + 36));
  *v60 = v59;
  v60[1] = v57;
  v61 = sub_1BC757E10(v20, v21);
  v62 = swift_getKeyPath();
  v63 = v136;
  v64 = v135;
  if (v61)
  {
    v65 = sub_1BC75BB60();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = v133;
  sub_1BC65FFBC(v58, v133, &qword_1EBCDF268, &qword_1BC76E8A8);
  v69 = (v68 + *(v130 + 36));
  *v69 = v62;
  v69[1] = v65;
  v69[2] = v67;
  v70 = sub_1BC757D6C(v20, v21);
  v71 = sub_1BC758D2C(v70, 0);
  v72 = swift_getKeyPath();
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  v74 = v134;
  sub_1BC65FFBC(v68, v134, &qword_1EBCDF270, &qword_1BC76E8B0);
  v75 = (v74 + *(v64 + 36));
  *v75 = v72;
  v75[1] = sub_1BC6FFF88;
  v75[2] = v73;
  sub_1BC757F58(v20, v21);
  v76 = sub_1BC752EB0();
  sub_1BC75B240();
  sub_1BC66008C(v74, &qword_1EBCDF278, &qword_1BC76E8B8);
  v77 = sub_1BC757F08(v20, v21);
  if (sub_1BC6FCFF0(v77, 10))
  {
    *&v159 = v64;
    *(&v159 + 1) = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v79 = v114;
    v80 = v138;
    sub_1BC75B460();
    v81 = v115;
    v82 = v153;
    (*(v115 + 16))(v152, v79, v153);
    swift_storeEnumTagMultiPayload();
    *&v159 = v80;
    *(&v159 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v83 = v139;
    sub_1BC75AE00();
    (*(v81 + 8))(v79, v82);
    v84 = v137;
  }

  else
  {
    v84 = v137;
    v80 = v138;
    (*(v137 + 16))(v152, v63, v138);
    swift_storeEnumTagMultiPayload();
    *&v159 = v64;
    *(&v159 + 1) = v76;
    v85 = swift_getOpaqueTypeConformance2();
    *&v159 = v80;
    *(&v159 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    v83 = v139;
    sub_1BC75AE00();
  }

  (*(v84 + 8))(v63, v80);
  v159 = v167;
  v160 = v168;
  MEMORY[0x1BFB262E0](&v161, v128);
  v86 = swift_allocObject();
  v87 = *(a1 + 48);
  v86[3] = *(a1 + 32);
  v86[4] = v87;
  v86[5] = *(a1 + 64);
  *(v86 + 89) = *(a1 + 73);
  v88 = *(a1 + 16);
  v86[1] = *a1;
  v86[2] = v88;
  sub_1BC6FFBC8(a1, &v159);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
  v90 = sub_1BC753400();
  v91 = sub_1BC753508();
  v92 = v145;
  v93 = v144;
  sub_1BC75B420();

  sub_1BC66008C(v83, &qword_1EBCDF288, &qword_1BC76E8C8);
  v94 = swift_allocObject();
  v95 = *(a1 + 48);
  v94[3] = *(a1 + 32);
  v94[4] = v95;
  v94[5] = *(a1 + 64);
  *(v94 + 89) = *(a1 + 73);
  v96 = *(a1 + 16);
  v94[1] = *a1;
  v94[2] = v96;
  sub_1BC6FFBC8(a1, &v159);
  v97 = v154;
  sub_1BC75A8C0();
  *&v159 = v93;
  *(&v159 + 1) = v89;
  *&v160 = v90;
  *(&v160 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  v98 = v158;
  v99 = v147;
  sub_1BC75B440();

  (*(v155 + 8))(v97, v156);
  (*(v146 + 8))(v92, v99);
  v100 = v149;
  v101 = *(v149 + 16);
  v102 = v148;
  v103 = v98;
  v104 = v151;
  v101(v148, v103, v151);
  v105 = v157;
  v106 = v143;
  v107 = v142;
  *v157 = v143;
  v105[1] = v107;
  v108 = v140;
  v109 = v141;
  v105[2] = v140;
  v105[3] = v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF2E8, &qword_1BC76EA10);
  v101(v105 + *(v110 + 48), v102, v104);
  sub_1BC680FB8(v106, v107, v108, v109);
  sub_1BC68100C(v106, v107, v108, v109);
  v111 = *(v100 + 8);
  v111(v158, v104);
  v111(v102, v104);
  return sub_1BC68100C(v106, v107, v108, v109);
}

uint64_t sub_1BC74EF24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1BC74EF60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_1BC74EF8C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BC74EFF4(_OWORD *a1)
{
  v2 = a1[2];
  v8 = a1[1];
  v9 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
  MEMORY[0x1BFB262E0](&v6, v3);
  v4 = v7;
  if (v7)
  {
  }

  v8 = a1[3];
  LOBYTE(v6) = v4 != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  return sub_1BC75B650();
}

uint64_t sub_1BC74F08C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF148, &qword_1BC76E418);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF150, &qword_1BC76E420);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  v10 = v1[3];
  v21 = v1[2];
  v22 = v10;
  v23[0] = v1[4];
  *(v23 + 9) = *(v1 + 73);
  v11 = v1[1];
  v19 = *v1;
  v20 = v11;
  if (sub_1BC74DC98())
  {
    *v6 = sub_1BC75AC00();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF160, &qword_1BC76E430);
    sub_1BC74DD44(&v19, &v6[*(v12 + 44)]);
    sub_1BC65FFBC(v6, v9, &qword_1EBCDF148, &qword_1BC76E418);
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
  }

  sub_1BC65FFBC(v9, a1, &qword_1EBCDF150, &qword_1BC76E420);
  v13 = swift_allocObject();
  v14 = v22;
  v13[3] = v21;
  v13[4] = v14;
  v13[5] = v23[0];
  *(v13 + 89) = *(v23 + 9);
  v15 = v20;
  v13[1] = v19;
  v13[2] = v15;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF158, &qword_1BC76E428) + 36));
  *v16 = sub_1BC755C8C;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = 0;
  return sub_1BC6FFBC8(&v19, v18);
}

uint64_t sub_1BC74F2D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1BC75C110();
  v3 = sub_1BC75B760();
  return a2(v3);
}

uint64_t sub_1BC74F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a5@<X8>)
{
  sub_1BC75C2A0();
  *a5 = v13;
  v10 = *(type metadata accessor for CheckSelector(0, a2, a3, v9) + 36);
  sub_1BC75C110();
  v11 = sub_1BC75B760();
  return (*(*(v11 - 8) + 32))(&a5[v10], a1, v11);
}

uint64_t sub_1BC74F3E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 - 8);
  v28 = &v27 - ((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(MEMORY[0x1EEE9AC00](a1) + 16);
  v5 = sub_1BC75BD70();
  v36 = v5;
  v29 = *(a1 + 24);
  v32 = *(v29 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = AssociatedTypeWitness;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF168, &qword_1BC76E438);
  v34 = v7;
  WitnessTable = swift_getWitnessTable();
  v33 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v5;
  v41 = AssociatedTypeWitness;
  v42 = v7;
  v43 = WitnessTable;
  v44 = AssociatedConformanceWitness;
  v10 = sub_1BC75B790();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v27 - v15;
  v39 = *v31;
  v16 = v28;
  (*(v3 + 16))(v28);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 16) = v4;
  *(v18 + 24) = v19;
  (*(v3 + 32))(v18 + v17, v16, a1);

  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF170, &qword_1BC76E440);
  v21 = sub_1BC7515E0();
  v40 = v20;
  v41 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BC75B780();
  v38 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v23 = *(v11 + 16);
  v24 = v30;
  v23(v30, v14, v10);
  v25 = *(v11 + 8);
  v25(v14, v10);
  v23(v37, v24, v10);
  return (v25)(v24, v10);
}

uint64_t sub_1BC74F788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v29 = a2;
  v33 = a5;
  v8 = *(a3 - 8);
  v32 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v11;
  v30 = type metadata accessor for CheckSelector(0, v12, v11, v11);
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v16 = &v27 - v15;
  v17 = sub_1BC75AC00();
  LOBYTE(v39[0]) = 1;
  v18 = a1;
  v19 = v29;
  sub_1BC74FAC8(v18, v29, a3, a4, v37);
  *&v36[55] = v38;
  *&v36[39] = v37[2];
  *&v36[23] = v37[1];
  *&v36[7] = v37[0];
  *(&v35[1] + 1) = *&v36[16];
  *(&v35[2] + 1) = *&v36[32];
  *(&v35[3] + 1) = *&v36[48];
  v34 = v17;
  LOBYTE(v35[0]) = v39[0];
  *&v35[4] = *(&v38 + 1);
  *(v35 + 1) = *v36;
  BYTE8(v35[4]) = 0;
  v20 = v30;
  (*(v13 + 16))(v16, v19, v30);
  v21 = v10;
  (*(v8 + 16))(v10, v28, a3);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = (v14 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = a3;
  *(v24 + 24) = v25;
  (*(v13 + 32))(v24 + v22, v16, v20);
  (*(v8 + 32))(v24 + v23, v21, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF170, &qword_1BC76E440);
  sub_1BC7515E0();
  sub_1BC75B250();

  v39[2] = v35[1];
  v39[3] = v35[2];
  v40[0] = v35[3];
  *(v40 + 9) = *(&v35[3] + 9);
  v39[0] = v34;
  v39[1] = v35[0];
  return sub_1BC66008C(v39, &qword_1EBCDF170, &qword_1BC76E440);
}

uint64_t sub_1BC74FAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v61 = a2;
  v67 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC75C110();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v54 - v13;
  v60 = *(v10 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  (*(a4 + 24))(v69, a3, a4);
  v68[0] = v69[0];
  v68[1] = v69[1];
  v24 = sub_1BC651E78(v68, v22, v23);
  v64 = v25;
  v65 = v24;
  v63 = v26;
  v66 = v27;
  (*(v8 + 16))(v21, a1, a3);
  (*(v8 + 56))(v21, 0, 1, a3);
  v56 = a4;
  v29 = type metadata accessor for CheckSelector(0, a3, a4, v28);
  sub_1BC74F2D8(v29, MEMORY[0x1E6981920]);
  v58 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v60;
  v32 = *(v60 + 16);
  v32(v14, v21, v10);
  v61 = v30;
  v33 = &v14[v30];
  v34 = v10;
  v32(v33, v19, v10);
  v59 = v8;
  v35 = *(v8 + 48);
  if (v35(v14, 1, a3) == 1)
  {
    v36 = *(v31 + 8);
    v36(v19, v34);
    v36(v21, v34);
    if (v35(&v14[v61], 1, a3) == 1)
    {
      v36(v14, v34);
LABEL_9:
      v40 = sub_1BC75B5C0();
      v41 = sub_1BC75B4F0();

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v54 = v21;
  v37 = v31;
  v32(v62, v14, v34);
  v38 = v61;
  if (v35(&v14[v61], 1, a3) == 1)
  {
    v39 = *(v31 + 8);
    v39(v19, v34);
    v39(v54, v34);
    (*(v59 + 8))(v62, a3);
LABEL_6:
    (*(v57 + 8))(v14, v58);
    goto LABEL_7;
  }

  v42 = v59;
  v43 = v55;
  (*(v59 + 32))(v55, &v14[v38], a3);
  v44 = v62;
  v45 = sub_1BC75BAB0();
  v46 = *(v42 + 8);
  v46(v43, a3);
  v47 = *(v37 + 8);
  v47(v19, v34);
  v47(v54, v34);
  v46(v44, a3);
  v47(v14, v34);
  if (v45)
  {
    goto LABEL_9;
  }

LABEL_7:
  v40 = 0;
  v41 = 0;
LABEL_10:
  v48 = v63 & 1;
  v50 = v64;
  v49 = v65;
  sub_1BC680FFC(v65, v64, v63 & 1);
  v51 = v66;

  sub_1BC752CF8(v40, v41);
  sub_1BC752D38(v40);
  LOBYTE(v69[0]) = v48;
  LOBYTE(v68[0]) = 1;
  v52 = v67;
  *v67 = v49;
  v52[1] = v50;
  *(v52 + 16) = v48;
  v52[3] = v51;
  v52[4] = 0;
  *(v52 + 40) = 1;
  v52[6] = v40;
  v52[7] = v41;
  sub_1BC752D38(v40);
  sub_1BC680E6C(v49, v50, v48);
}

uint64_t sub_1BC750090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BC75C110();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *(a3 - 8);
  (*(v11 + 16))(&v15 - v9, a2, a3);
  (*(v11 + 56))(v10, 0, 1, a3);
  v13 = type metadata accessor for CheckSelector(0, a3, a4, v12);
  sub_1BC751440(v10, v13);
  return (*(v8 + 8))(v10, v7);
}

id sub_1BC7501F0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EBCF4730 = result;
  return result;
}

uint64_t *sub_1BC750224()
{
  if (qword_1EBCF32F0 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4730;
}

uint64_t sub_1BC750274@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s6VictimVMa(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC748BD8(v1 + v4, v1 + v7, v8, a1);
}

uint64_t objectdestroy_18Tm_1()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v34 = *(*(v1 - 1) + 64);
  v35 = v0;
  v4 = (v0 + v3);
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_1BC759910();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v0 + v3, 1, v6))
      {
        (*(v7 + 8))(v0 + v3, v6);
      }

      v8 = type metadata accessor for Report.Evidence(0);
      v9 = v4 + *(v8 + 24);

      v10 = _s6VictimVMa(0);
      (*(v7 + 8))(&v9[*(v10 + 44)], v6);

      v11 = (v4 + *(v8 + 52));
      v12 = v11[1];
      if (v12 >> 60 != 15)
      {
        sub_1BC6AE140(*v11, v12);
      }
    }
  }

  else
  {
    v13 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v13 - 8) + 48))(v0 + v3, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BC759800();
      v16 = *(*(v15 - 8) + 8);
      v16(v4 + v14, v15);
      v16(v4 + *(v13 + 32), v15);
    }
  }

  v17 = (v4 + v1[5]);
  v18 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {

    v19 = *(v18 + 28);
    v20 = sub_1BC759800();
    v21 = *(*(v20 - 8) + 8);
    v21(v17 + v19, v20);
    v21(v17 + *(v18 + 32), v20);
  }

  v22 = v4 + v1[7];

  v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32)];
  v24 = sub_1BC759910();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    (*(v25 + 8))(v23, v24);
  }

  v26 = type metadata accessor for Report.Evidence(0);
  v27 = &v23[*(v26 + 24)];

  v28 = _s6VictimVMa(0);
  (*(v25 + 8))(&v27[*(v28 + 44)], v24);

  v29 = &v23[*(v26 + 52)];
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_1BC6AE140(*v29, v30);
  }

  v31 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1BC75A710();
    (*(*(v32 - 8) + 8))(v4 + v31, v32);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v35, v3 + v34, v2 | 7);
}

uint64_t sub_1BC750A28(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for _ReportOverviewScreen(0);
  v5 = *a2;
  v6 = v2 + *(v4 + 36) + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF068, &unk_1BC76E388);
  v10 = MEMORY[0x1BFB262E0](&v15);
  LOBYTE(v16) = 0;
  sub_1BC710C60(v10, v11, v12);
  result = sub_1BC75BAB0();
  if ((result & 1) == 0)
  {
    v16 = v8;
    v17 = v7;
    v18 = v9;
    if (v5)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    return sub_1BC75B710();
  }

  return result;
}

unint64_t sub_1BC750B38()
{
  result = qword_1EBCDF0B0;
  if (!qword_1EBCDF0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF098, &qword_1BC76E3B8);
    sub_1BC633C54(&qword_1EBCDF0B8, &qword_1EBCDF0C0, &qword_1BC76E3C8, &unk_1BC769590);
    sub_1BC633C54(&qword_1EBCDF0C8, &qword_1EBCDF0A0, &qword_1BC76E3C0, MEMORY[0x1E697F598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF0B0);
  }

  return result;
}

unint64_t sub_1BC750C24()
{
  result = qword_1EBCDF0D8;
  if (!qword_1EBCDF0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF080, &qword_1BC76E3A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF078, &qword_1BC76E3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF070, &qword_1BC76E398);
    sub_1BC7528DC(&qword_1EBCDF0A8, &qword_1EBCDF070, &qword_1BC76E398, sub_1BC750B38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF0D8);
  }

  return result;
}

unint64_t sub_1BC750D78()
{
  result = qword_1EBCDF0E8;
  if (!qword_1EBCDF0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0E0, &qword_1BC76E3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF0F0, &qword_1BC76E3E0);
    sub_1BC633C54(&qword_1EBCDF0F8, &qword_1EBCDF0F0, &qword_1BC76E3E0, MEMORY[0x1E697C288]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF0E8);
  }

  return result;
}

uint64_t sub_1BC750E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC750EF8()
{
  result = qword_1EBCDF128;
  if (!qword_1EBCDF128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF120, &qword_1BC76E3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF130, &qword_1BC76E400);
    sub_1BC633C54(&qword_1EBCDF138, &qword_1EBCDF130, &qword_1BC76E400, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF128);
  }

  return result;
}

uint64_t sub_1BC751040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1BC660024(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

char *sub_1BC7510EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC75110C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC75110C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD180, &qword_1BC766460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BC751218(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BC751440(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BC75C110();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  sub_1BC75B760();
  return sub_1BC75B710();
}

uint64_t sub_1BC751544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for CheckSelector(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1BC74F788(a1, v9, v6, v7, a3);
}

unint64_t sub_1BC7515E0()
{
  result = qword_1EBCDF178;
  if (!qword_1EBCDF178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF170, &qword_1BC76E440);
    sub_1BC633C54(&qword_1EBCDF180, &qword_1EBCDF188, &qword_1BC76E448, MEMORY[0x1E69817F8]);
    sub_1BC633C54(&qword_1EBCDF190, &qword_1EBCDF198, qword_1BC76E450, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF178);
  }

  return result;
}

uint64_t sub_1BC7516C4(uint64_t a1)
{
  result = sub_1BC74820C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen, &unk_1BC76E474);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC751754(uint64_t a1)
{
  result = sub_1BC74820C(&qword_1EBCDF048, type metadata accessor for _ReportOverviewScreen, &unk_1BC76E530);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC7517E4(uint64_t a1)
{
  result = sub_1BC74820C(&qword_1EBCDF118, type metadata accessor for ReportTranscriptView, &unk_1BC76E5EC);
  *(a1 + 8) = result;
  return result;
}

void sub_1BC7518E0(uint64_t a1)
{
  sub_1BC7520F4(319, &qword_1EBCDF1A0, type metadata accessor for ReportToAuthoritiesViewModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReportScreen(319);
    if (v2 <= 0x3F)
    {
      sub_1BC6335A0();
      if (v3 <= 0x3F)
      {
        sub_1BC751E20(319, &qword_1EBCDF1A8, &type metadata for ReportButton.State, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1BC751A00(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC751A00(uint64_t a1)
{
  if (!qword_1EBCDF1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF008, &qword_1BC76E2F8);
    v1 = sub_1BC75B670();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDF1B0);
    }
  }
}

uint64_t sub_1BC751A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Evidence(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1BC646034);
}

uint64_t sub_1BC751ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Report.Evidence(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1BC64614C);
}

uint64_t sub_1BC751B24(uint64_t a1)
{
  result = type metadata accessor for Report.Evidence(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1BC751BF0(uint64_t a1)
{
  type metadata accessor for ReportScreen(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Report.Authority(319);
    if (v2 <= 0x3F)
    {
      sub_1BC6335A0();
      if (v3 <= 0x3F)
      {
        sub_1BC7520F4(319, &qword_1EBCDDFB0, type metadata accessor for Report.Evidence, MEMORY[0x1E6981948]);
        if (v4 <= 0x3F)
        {
          sub_1BC751DB0(319);
          if (v5 <= 0x3F)
          {
            sub_1BC751E20(319, &qword_1EBCDF1C0, &type metadata for ReportButton.State, MEMORY[0x1E6981948]);
            if (v6 <= 0x3F)
            {
              sub_1BC7520F4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1BC751E20(319, &qword_1EDDCF0F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
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
}

void sub_1BC751DB0(uint64_t a1)
{
  if (!qword_1EBCDF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FEAB4();
    v1 = sub_1BC75A6F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDF1B8);
    }
  }
}

void sub_1BC751E20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BC751E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1BC751ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BC751F2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BC751F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1BC752010(uint64_t a1)
{
  sub_1BC7520F4(319, &qword_1EBCDD0E0, type metadata accessor for Report.Message, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BC7520F4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC7520F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BC75217C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1BC7521C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC75222C(uint64_t a1)
{
  result = sub_1BC75BD70();
  if (v2 <= 0x3F)
  {
    sub_1BC75C110();
    result = sub_1BC75B760();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC7522C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1BC7524C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-9 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_54:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *a1 = v22;
  }

  else
  {
    v23 = *(v7 + 56);
    v24 = (v11 + (((&a1[v12 + 8] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v25 = a2 + 1;

    v23(v24, v25);
  }
}

unint64_t sub_1BC75277C()
{
  result = qword_1EBCDF1C8;
  if (!qword_1EBCDF1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF1D0, &qword_1BC76E850);
    sub_1BC633C54(&qword_1EBCDF1D8, &qword_1EBCDF1E0, &qword_1BC76E858, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF1C8);
  }

  return result;
}

unint64_t sub_1BC75282C()
{
  result = qword_1EBCDF1E8;
  if (!qword_1EBCDF1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF1F0, &qword_1BC76E860);
    sub_1BC633C54(&qword_1EBCDF1F8, &qword_1EBCDF100, &qword_1BC76E3E8, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF1E8);
  }

  return result;
}

uint64_t sub_1BC7528DC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BC752960()
{
  result = qword_1EBCDF218;
  if (!qword_1EBCDF218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF220, &qword_1BC76E870);
    sub_1BC7529E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF218);
  }

  return result;
}

unint64_t sub_1BC7529E4()
{
  result = qword_1EBCDF228;
  if (!qword_1EBCDF228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF150, &qword_1BC76E420);
    sub_1BC633C54(&qword_1EBCDF230, &qword_1EBCDF148, &qword_1BC76E418, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF228);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = (type metadata accessor for ReportTranscriptView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BC75A710();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC752BB0()
{
  v1 = *(type metadata accessor for ReportTranscriptView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BC74CFA4(v2);
}

uint64_t sub_1BC752C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CheckSelector(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v4 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_1BC750090(v4 + v8, v9, v5, v6);
}

uint64_t sub_1BC752CF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC752D38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BC752D78()
{
  result = qword_1EBCDF2A0;
  if (!qword_1EBCDF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2A0);
  }

  return result;
}

unint64_t sub_1BC752DCC()
{
  result = qword_1EBCDF2A8;
  if (!qword_1EBCDF2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF250, &qword_1BC76E890);
    sub_1BC633C54(&qword_1EBCDF2B0, &qword_1EBCDF248, &qword_1BC76E888, MEMORY[0x1E697D7E0]);
    sub_1BC633C54(&unk_1EBCDE3C0, &qword_1EBCDD490, &unk_1BC766A08, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2A8);
  }

  return result;
}

unint64_t sub_1BC752EB0()
{
  result = qword_1EBCDF2B8;
  if (!qword_1EBCDF2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF278, &qword_1BC76E8B8);
    sub_1BC752F68();
    sub_1BC633C54(&qword_1EBCDDEB8, &qword_1EBCDDEC0, &qword_1BC769528, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2B8);
  }

  return result;
}

unint64_t sub_1BC752F68()
{
  result = qword_1EBCDF2C0;
  if (!qword_1EBCDF2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF270, &qword_1BC76E8B0);
    sub_1BC753020();
    sub_1BC633C54(&qword_1EBCDDF58, &qword_1EBCDDF60, &unk_1BC769570, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2C0);
  }

  return result;
}

unint64_t sub_1BC753020()
{
  result = qword_1EBCDF2C8;
  if (!qword_1EBCDF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF268, &qword_1BC76E8A8);
    sub_1BC7530D8();
    sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2C8);
  }

  return result;
}

unint64_t sub_1BC7530D8()
{
  result = qword_1EBCDF2D0;
  if (!qword_1EBCDF2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF260, &qword_1BC76E8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF250, &qword_1BC76E890);
    sub_1BC752DCC();
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2D0);
  }

  return result;
}

void sub_1BC7531CC(uint64_t a1, unint64_t *a2)
{
  v3 = a2[1];
  v4 = sub_1BC757E10(*(v2 + 16), *(v2 + 24));
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = sub_1BC75BB60();
  v8 = v7;
  if (v6 != sub_1BC75BB60() || v8 != v9)
  {
    v11 = sub_1BC75C5E0();

    if ((v11 & 1) == 0)
    {
      return;
    }

    if (v3)
    {
      goto LABEL_8;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
    sub_1BC75B710();
    return;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_8:
  v12 = objc_allocWithZone(MEMORY[0x1E695CF50]);

  v13 = sub_1BC75BB30();
  v14 = [v12 initWithStringValue_];

  v15 = [v14 formattedStringValue];
  if (!v15)
  {
    v15 = [v14 stringValue];
  }

  v16 = v15;
  v17 = sub_1BC75BB60();
  v19 = v18;

  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  v23 = *(v2 + 48);
  v24 = v23;
  v25 = v20;
  v22[4] = v20;
  v22[5] = v21;
  v22[2] = v17;
  v22[3] = v19;
  sub_1BC687F14(&v25, v22);

  sub_1BC660024(&v24, v22, &qword_1EBCDCE78, &qword_1BC7649F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF140, &unk_1BC76E408);
  sub_1BC75B710();

  sub_1BC687F70(&v25);

  sub_1BC66008C(&v24, &qword_1EBCDCE78, &qword_1BC7649F0);
}

unint64_t sub_1BC753400()
{
  result = qword_1EBCDF2D8;
  if (!qword_1EBCDF2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF288, &qword_1BC76E8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF280, &qword_1BC76E8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF278, &qword_1BC76E8B8);
    sub_1BC752EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2D8);
  }

  return result;
}

unint64_t sub_1BC753508()
{
  result = qword_1EBCDF2E0;
  if (!qword_1EBCDF2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCE78, &qword_1BC7649F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF2E0);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1BC753654()
{
  type metadata accessor for _ReportOverviewScreen(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF328, &qword_1BC76EA50);
  return sub_1BC75A690();
}

uint64_t sub_1BC75370C()
{
  v1 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC74BEBC(v2);
}

unint64_t sub_1BC753798()
{
  result = qword_1EBCDF388;
  if (!qword_1EBCDF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF380, &qword_1BC76EAB8);
    sub_1BC633C54(&qword_1EBCDEBC8, &qword_1EBCDEB60, &qword_1BC76D0E0, MEMORY[0x1E6981870]);
    sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF388);
  }

  return result;
}

uint64_t sub_1BC75387C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s6VictimVMa(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1BC749E70(v1 + v4, v7, a1);
}

uint64_t sub_1BC753950@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BC74A540(v5, v1 + v4, v6, a1);
}

unint64_t sub_1BC7539F0()
{
  result = qword_1EBCDF3B8;
  if (!qword_1EBCDF3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3B0, &qword_1BC76EAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3C0, &qword_1BC76EAD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3C8, &qword_1BC76EAE0);
    sub_1BC633C54(&qword_1EBCDF3D0, &qword_1EBCDF3C8, &qword_1BC76EAE0, MEMORY[0x1E697C158]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3D8, &qword_1BC76EAE8);
    sub_1BC633C54(&qword_1EBCDF3E0, &qword_1EBCDF3D8, &qword_1BC76EAE8, &unk_1BC769680);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF3B8);
  }

  return result;
}

uint64_t sub_1BC753B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BC74B178(v4, a1);
}

unint64_t sub_1BC753BFC()
{
  result = qword_1EBCDF3F0;
  if (!qword_1EBCDF3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF3E8, &qword_1BC76EAF0);
    sub_1BC633C54(&qword_1EBCDF3F8, &qword_1EBCDF400, &qword_1BC76EAF8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF3F0);
  }

  return result;
}

void sub_1BC753CAC(void *a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1BC74B614(v4, v5, a1);
}

uint64_t objectdestroy_154Tm()
{
  v1 = type metadata accessor for _ReportOverviewScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v34 = *(*(v1 - 1) + 64);

  v4 = (v0 + v3);
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_1BC759910();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v0 + v3, 1, v6))
      {
        (*(v7 + 8))(v0 + v3, v6);
      }

      v8 = type metadata accessor for Report.Evidence(0);
      v9 = v4 + *(v8 + 24);

      v10 = _s6VictimVMa(0);
      (*(v7 + 8))(&v9[*(v10 + 44)], v6);

      v11 = (v4 + *(v8 + 52));
      v12 = v11[1];
      if (v12 >> 60 != 15)
      {
        sub_1BC6AE140(*v11, v12);
      }
    }
  }

  else
  {
    v13 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v13 - 8) + 48))(v0 + v3, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BC759800();
      v16 = *(*(v15 - 8) + 8);
      v16(v4 + v14, v15);
      v16(v4 + *(v13 + 32), v15);
    }
  }

  v17 = (v4 + v1[5]);
  v18 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {

    v33 = *(v18 + 28);
    v19 = sub_1BC759800();
    v20 = *(*(v19 - 8) + 8);
    v20(v17 + v33, v19);
    v20(v17 + *(v18 + 32), v19);
  }

  v21 = v4 + v1[7];

  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32)];
  v23 = sub_1BC759910();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v22, 1, v23))
  {
    (*(v24 + 8))(v22, v23);
  }

  v25 = type metadata accessor for Report.Evidence(0);
  v26 = &v22[*(v25 + 24)];

  v27 = _s6VictimVMa(0);
  (*(v24 + 8))(&v26[*(v27 + 44)], v23);

  v28 = &v22[*(v25 + 52)];
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1BC6AE140(*v28, v29);
  }

  v30 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_1BC75A710();
    (*(*(v31 - 8) + 8))(v4 + v30, v31);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v34, v2 | 7);
}

double sub_1BC754408@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ReportOverviewScreen(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BC74B8B4(v4, a1);
}

uint64_t sub_1BC75447C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Message(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7544E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1BC7510EC(0, v2, 0);
    v3 = v27;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v6 = v4[2];
      v28[1] = v4[1];
      v28[2] = v6;
      v28[0] = v5;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[6];
      v28[5] = v4[5];
      v28[6] = v9;
      v28[3] = v7;
      v28[4] = v8;
      v10 = v4[7];
      v11 = v4[8];
      v12 = v4[9];
      v29 = *(v4 + 20);
      v28[8] = v11;
      v28[9] = v12;
      v28[7] = v10;
      sub_1BC6C3F8C(v28, &v23);
      sub_1BC6B6ABC(&v23);
      sub_1BC6C3FC4(v28);
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v27 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BC7510EC((v17 > 1), v18 + 1, 1);
        v3 = v27;
      }

      *(v3 + 16) = v18 + 1;
      v19 = (v3 + 32 * v18);
      v19[4] = v13;
      v19[5] = v14;
      v19[6] = v15;
      v19[7] = v16;
      v4 = (v4 + 168);
      --v2;
    }

    while (v2);
  }

  v27 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF460, &qword_1BC76EBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF468, &unk_1BC76EBC8);
  sub_1BC633C54(&qword_1EBCDF470, &qword_1EBCDF460, &qword_1BC76EBC0, MEMORY[0x1E69E6338]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
  v21 = sub_1BC754854();
  v23 = v20;
  v24 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1BC75490C();
  return sub_1BC75B780();
}

double sub_1BC754708@<D0>(__n128 *a1@<X8>)
{
  sub_1BC6B6ABC(&v8);
  v5 = v8;
  v6 = v9;
  v7 = v10;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  v3 = sub_1BC6CBAA8();
  *&result = sub_1BC6FC404(&v5, sub_1BC755C90, 0, v2, v3, a1).n128_u64[0];
  return result;
}

unint64_t sub_1BC754794()
{
  result = qword_1EBCDF440;
  if (!qword_1EBCDF440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF438, &qword_1BC76EB70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
    sub_1BC754854();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF440);
  }

  return result;
}

unint64_t sub_1BC754854()
{
  result = qword_1EBCDF450;
  if (!qword_1EBCDF450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF448, &qword_1BC76EB78);
    sub_1BC633C54(&qword_1EBCDF458, &qword_1EBCDDF78, &qword_1BC76EB80, &unk_1BC769680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF450);
  }

  return result;
}

unint64_t sub_1BC75490C()
{
  result = qword_1EBCDF478;
  if (!qword_1EBCDF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF478);
  }

  return result;
}

uint64_t sub_1BC75498C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1BC754A18@<X0>(void *a1@<X8>)
{
  sub_1BC6B6320(v8);
  v7[0] = v8[0];
  v7[1] = v8[1];
  sub_1BC6B6444(v6);
  v5[0] = v6[0];
  v5[1] = v6[1];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  v3 = sub_1BC6CBAA8();
  return sub_1BC6FC2C8(v7, v5, sub_1BC74A528, 0, v2, v3, a1);
}

unint64_t sub_1BC754AB0()
{
  result = qword_1EBCDF488;
  if (!qword_1EBCDF488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDF480, &unk_1BC76EBD8);
    sub_1BC754794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF488);
  }

  return result;
}

uint64_t sub_1BC754B34()
{
  v1 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Report.Evidence(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BC747220(v0 + v2, v5);
}

uint64_t objectdestroy_168Tm()
{
  v1 = type metadata accessor for ReportOverviewScreen(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3 + *(v1 + 20));
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v4;
      v7 = sub_1BC759910();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v5, 1, v7))
      {
        (*(v8 + 8))(v5, v7);
      }

      v9 = type metadata accessor for Report.Evidence(0);
      v10 = v5 + *(v9 + 24);

      v11 = _s6VictimVMa(0);
      (*(v8 + 8))(&v10[*(v11 + 44)], v7);

      v12 = (v5 + *(v9 + 52));
      v13 = v12[1];
      if (v13 >> 60 != 15)
      {
        sub_1BC6AE140(*v12, v13);
      }

      v4 = v28;
    }
  }

  else
  {
    v14 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v14 - 8) + 48))(v5, 1, v14))
    {

      v27 = *(v14 + 28);
      v15 = sub_1BC759800();
      v29 = v4;
      v16 = *(*(v15 - 8) + 8);
      v16(v5 + v27, v15);
      v16(v5 + *(v14 + 32), v15);
      v4 = v29;
    }
  }

  v17 = v0 + v3 + *(v1 + 32);
  v18 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = sub_1BC759910();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v17, 1, v19))
    {
      (*(v20 + 8))(v17, v19);
    }

    v21 = type metadata accessor for Report.Evidence(0);
    v22 = v17 + *(v21 + 24);

    v23 = _s6VictimVMa(0);
    (*(v20 + 8))(v22 + *(v23 + 44), v19);

    v24 = (v17 + *(v21 + 52));
    v25 = v24[1];
    if (v25 >> 60 != 15)
    {
      sub_1BC6AE140(*v24, v25);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC755210()
{
  v2 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Report.Evidence(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC65281C;

  return sub_1BC7475F4(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t objectdestroy_177Tm()
{
  v1 = type metadata accessor for ReportOverviewScreen(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for Report.Evidence(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v41 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;

  v9 = (v0 + v3 + *(v1 + 20));
  type metadata accessor for ReportScreen(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v7;
      v11 = sub_1BC759910();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v9, 1, v11))
      {
        (*(v12 + 8))(v9, v11);
      }

      v13 = v9 + *(v5 + 24);

      v14 = _s6VictimVMa(0);
      (*(v12 + 8))(&v13[*(v14 + 44)], v11);

      v15 = (v9 + *(v5 + 52));
      v16 = v15[1];
      if (v16 >> 60 != 15)
      {
        sub_1BC6AE140(*v15, v16);
      }

      v7 = v39;
    }
  }

  else
  {
    v17 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if (!(*(*(v17 - 8) + 48))(v9, 1, v17))
    {

      v38 = *(v17 + 28);
      v40 = v7;
      v18 = sub_1BC759800();
      v19 = *(*(v18 - 8) + 8);
      v19(v9 + v38, v18);
      v20 = v18;
      v7 = v40;
      v19(v9 + *(v17 + 32), v20);
    }
  }

  v21 = v7 & ~v6;

  v22 = v8 + *(v1 + 32);
  v23 = type metadata accessor for ReportOverviewScreen._Alert(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = sub_1BC759910();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v22, 1, v24))
    {
      (*(v25 + 8))(v22, v24);
    }

    v26 = v22 + *(v5 + 24);

    v27 = _s6VictimVMa(0);
    (*(v25 + 8))(v26 + *(v27 + 44), v24);

    v28 = (v22 + *(v5 + 52));
    v29 = v28[1];
    if (v29 >> 60 != 15)
    {
      sub_1BC6AE140(*v28, v29);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF020, &qword_1BC76E318);

  v30 = v0 + v21;
  v31 = sub_1BC759910();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v0 + v21, 1, v31))
  {
    (*(v32 + 8))(v0 + v21, v31);
  }

  v33 = v30 + *(v5 + 24);

  v34 = _s6VictimVMa(0);
  (*(v32 + 8))(v33 + *(v34 + 44), v31);

  v35 = (v30 + *(v5 + 52));
  v36 = v35[1];
  if (v36 >> 60 != 15)
  {
    sub_1BC6AE140(*v35, v36);
  }

  return MEMORY[0x1EEE6BDD0](v0, v21 + v41, v2 | v6 | 7);
}

uint64_t sub_1BC755AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Report.Evidence(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1BC745618((v1 + v4), v7, a1);
}

uint64_t sub_1BC755BAC(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1BC7457C4(a1, v4);
}

uint64_t sub_1BC755C1C(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportOverviewScreen(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BC745900(a1, v4);
}

uint64_t String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC75BB30();
  v3 = MEMORY[0x1BFB273C0]();

  return v3;
}

uint64_t String.isEmail.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC75BB30();
  IsEmail = IMStringIsEmail();

  return IsEmail;
}

uint64_t String.removingAccountIDPrefix.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BC75BB30();
  v4 = [v3 _stripFZIDPrefix];

  if (v4)
  {
    a1 = sub_1BC75BB60();
  }

  else
  {
  }

  return a1;
}

uint64_t String.prependingAccountIDPrefix.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC75BB30();
  v5 = [v4 _stripFZIDPrefix];

  if (v5)
  {
    a1 = sub_1BC75BB60();
    a2 = v6;
  }

  else
  {
  }

  v7 = sub_1BC75BB30();
  v8 = MEMORY[0x1BFB273C0]();

  if (v8)
  {
    v9 = 14960;
  }

  else
  {
    v9 = 14949;
  }

  v11 = v9;
  MEMORY[0x1BFB267E0](a1, a2);

  return v11;
}

uint64_t String.isValidAccountID.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BC75BB30();
  v5 = [v4 _stripFZIDPrefix];

  if (v5)
  {
    a1 = sub_1BC75BB60();
    a2 = v6;
  }

  else
  {
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = sub_1BC75BB30();
    v9 = MEMORY[0x1BFB273C0]();

    if (v9)
    {

      return 1;
    }

    else
    {
      v11 = sub_1BC75BB30();

      IsEmail = IMStringIsEmail();

      return IsEmail;
    }
  }

  else
  {

    return 0;
  }
}

id sub_1BC755F48(void *a1)
{
  v1 = a1;
  v2 = NSString.scui_prependingAccountIDPrefix.getter();

  return v2;
}

uint64_t NSString.scui_prependingAccountIDPrefix.getter()
{
  v0 = sub_1BC75BB60();
  v2 = v1;
  v3 = sub_1BC75BB30();
  v4 = [v3 _stripFZIDPrefix];

  if (v4)
  {
    v0 = sub_1BC75BB60();
    v6 = v5;

    v2 = v6;
  }

  v7 = sub_1BC75BB30();
  MEMORY[0x1BFB273C0]();

  MEMORY[0x1BFB267E0](v0, v2);

  v8 = sub_1BC75BB30();

  return v8;
}

uint64_t sub_1BC756078(void *a1)
{
  v2 = sub_1BC75BB60();
  v4 = v3;
  v5 = a1;
  LOBYTE(v2) = String.isValidAccountID.getter(v2, v4);

  return v2 & 1;
}

uint64_t NSString.scui_isValidAccountID.getter()
{
  v0 = sub_1BC75BB60();
  valid = String.isValidAccountID.getter(v0, v1);

  return valid & 1;
}

uint64_t sub_1BC75612C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759800();
  v39 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v36 - v7;
  v8 = type metadata accessor for ScannableContent(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v36 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4B8, qword_1BC76EC98);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v36 - v22;
  v24 = *(v21 + 56);
  sub_1BC75654C(a1, &v36 - v22);
  sub_1BC75654C(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC75654C(v23, v14);
      v26 = *v14;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v27 = *&v23[v24];
        if (v26)
        {
          if (!v27)
          {
LABEL_9:

LABEL_23:
            v31 = 0;
            goto LABEL_25;
          }

LABEL_15:

          v31 = v26 == v27;
LABEL_25:
          sub_1BC756788(v23);
          return v31 & 1;
        }

        goto LABEL_21;
      }
    }

    else
    {
      sub_1BC75654C(v23, v11);
      v26 = *v11;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v27 = *&v23[v24];
        if (v26)
        {
          if (!v27)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }

LABEL_21:
        if (!v27)
        {
          v31 = 1;
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BC75654C(v23, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v39 + 8))(v17, v4);
      goto LABEL_18;
    }

    v29 = v38;
    v28 = v39;
    v30 = *(v39 + 32);
    v30(v38, v17, v4);
    goto LABEL_20;
  }

  sub_1BC75654C(v23, v19);
  if (!swift_getEnumCaseMultiPayload())
  {
    v29 = v38;
    v28 = v39;
    v30 = *(v39 + 32);
    v30(v38, v19, v4);
LABEL_20:
    v32 = &v23[v24];
    v33 = v37;
    v30(v37, v32, v4);
    v31 = sub_1BC7597B0();
    v34 = *(v28 + 8);
    v34(v33, v4);
    v34(v29, v4);
    goto LABEL_25;
  }

  (*(v39 + 8))(v19, v4);
LABEL_18:
  sub_1BC756720(v23);
  v31 = 0;
  return v31 & 1;
}

uint64_t type metadata accessor for ScannableContent(uint64_t a1)
{
  result = qword_1EBCF3980;
  if (!qword_1EBCF3980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC75654C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScannableContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC7565B0()
{
  result = qword_1EBCDC770;
  if (!qword_1EBCDC770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDC770);
  }

  return result;
}

void sub_1BC75660C(uint64_t a1)
{
  sub_1BC759800();
  if (v1 <= 0x3F)
  {
    sub_1BC7566CC(319, &qword_1EBCDF4A8, type metadata accessor for CGImage);
    if (v2 <= 0x3F)
    {
      sub_1BC7566CC(319, &qword_1EBCDF4B0, sub_1BC7565B0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BC7566CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC75C110();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BC756720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4B8, qword_1BC76EC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC756788(uint64_t a1)
{
  v2 = type metadata accessor for ScannableContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall InterventionScreenModel.didAskForMoreHelp(_:)(UIViewController *a1)
{
  type metadata accessor for InterventionConfig(0);
  v2 = sub_1BC6F39FC();
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v2;
  }

  v5 = [objc_allocWithZone(SCUIMoreHelpWebViewController) initWithType_];
  if (v5)
  {
    v6 = v5;
    [UIViewController presentViewController:a1 animated:sel_presentViewController_animated_completion_ completion:?];
  }
}

id sub_1BC75697C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 openChatWithParentsForInterventionType_];
}

void sub_1BC756A0C(void *a1)
{
  v2 = [objc_allocWithZone(SCUIMoreHelpWebViewController) init];
  [a1 presentViewController:v2 animated:1 completion:0];
}

id DefaultImplementations.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultImplementations.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DefaultImplementations();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DefaultImplementations.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DefaultImplementations();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BC756BF0(uint64_t a1)
{
  v2 = sub_1BC7572B4(&qword_1EBCDF4C0, &unk_1BC76EE84);
  v3 = sub_1BC7572B4(&qword_1EBCDF4F8, &unk_1BC76EDD8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1BC756C88(uint64_t a1)
{
  sub_1BC75BB60();
  sub_1BC75C700();
  sub_1BC75BBE0();
  v2 = sub_1BC75C720();

  return sub_1BC756D1C(a1, v2);
}

unint64_t sub_1BC756D1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BC75BB60();
      v8 = v7;
      if (v6 == sub_1BC75BB60() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BC75C5E0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BC756E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4C8, &qword_1BC76ECE8);
    v3 = sub_1BC75C420();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BC7571A8(v4, &v11);
      v5 = v11;
      result = sub_1BC756C88(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BC678BBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1BC756F28(uint64_t a1)
{
  v2 = sub_1BC759800();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [objc_opt_self() waysToGetHelpURLForInterventionType_];
  if (v7)
  {
    v8 = v7;
    sub_1BC7597C0();

    v9 = sub_1BC759770();
    (*(v3 + 8))(v5, v2);
    sub_1BC756E20(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey();
    sub_1BC7572B4(&qword_1EBCDF4C0, &unk_1BC76EE84);
    v10 = sub_1BC75BA30();

    [v6 openURL:v9 options:v10 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_1EBCDF4D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBCDF4D8);
    }
  }
}

uint64_t sub_1BC7571A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDF4D0, &qword_1BC76ECF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7572B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC7572F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1BC757340(v6, a1, a2);

  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t sub_1BC757340(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v21._countAndFlagsBits = 0x5F544E554F434341;
      v21._object = 0xEA00000000004449;
      countAndFlagsBits = SCLocalizedStringKey.init(stringLiteral:)(v21).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](countAndFlagsBits);
      goto LABEL_15;
    case 2:
      v15._countAndFlagsBits = 0x4D414E5F4C4C5546;
      v15._object = 0xE900000000000045;
      v16 = SCLocalizedStringKey.init(stringLiteral:)(v15).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v16);
      swift_getKeyPath();
      v10 = 1;
      v11 = 2;
      goto LABEL_16;
    case 3:
      v17._countAndFlagsBits = 0x44415F4C49414D45;
      v17._object = 0xED00005353455244;
      v18 = SCLocalizedStringKey.init(stringLiteral:)(v17).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v18);
      swift_getKeyPath();
      v10 = 1;
      v11 = 3;
      goto LABEL_16;
    case 4:
      v8._countAndFlagsBits = 0x554E5F454E4F4850;
      v8._object = 0xEC0000005245424DLL;
      v9 = SCLocalizedStringKey.init(stringLiteral:)(v8).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v9);
      swift_getKeyPath();
      v10 = 1;
      v11 = 9;
      goto LABEL_16;
    case 5:
      v23._countAndFlagsBits = 0x544545525453;
      v23._object = 0xE600000000000000;
      v24 = SCLocalizedStringKey.init(stringLiteral:)(v23).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v24);
      swift_getKeyPath();
      v10 = 1;
      v11 = 4;
      goto LABEL_16;
    case 6:
      v25._countAndFlagsBits = 1498696003;
      v25._object = 0xE400000000000000;
      v26 = SCLocalizedStringKey.init(stringLiteral:)(v25).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v26);
      swift_getKeyPath();
      v10 = 1;
      v11 = 5;
      goto LABEL_16;
    case 7:
      v19._countAndFlagsBits = 0x4554415453;
      v19._object = 0xE500000000000000;
      v20 = SCLocalizedStringKey.init(stringLiteral:)(v19).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v20);
      swift_getKeyPath();
      v10 = 1;
      v11 = 6;
      goto LABEL_16;
    case 8:
      v30._countAndFlagsBits = 0x5952544E554F43;
      v30._object = 0xE700000000000000;
      v31 = SCLocalizedStringKey.init(stringLiteral:)(v30).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v31);
      swift_getKeyPath();
      v10 = 1;
      v11 = 7;
      goto LABEL_16;
    case 9:
      v13._countAndFlagsBits = 0x435F4C4154534F50;
      v13._object = 0xEB0000000045444FLL;
      v14 = SCLocalizedStringKey.init(stringLiteral:)(v13).localized._countAndFlagsBits;
      v11 = 8;
      MEMORY[0x1EEE9AC00](v14);
      swift_getKeyPath();
      v10 = 1;
      goto LABEL_16;
    case 10:
      v27._countAndFlagsBits = 0x535F534547414D49;
      v27._object = 0xEB00000000544E45;
      v28 = SCLocalizedStringKey.init(stringLiteral:)(v27).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v28);
      goto LABEL_15;
    case 11:
      v6._countAndFlagsBits = 0x535F534F45444956;
      v6._object = 0xEB00000000544E45;
      v7 = SCLocalizedStringKey.init(stringLiteral:)(v6).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v7);
      goto LABEL_15;
    case 12:
      switch(a2)
      {
        case 1:
          v42._countAndFlagsBits = 0x5F464F5F45544144;
          v42._object = 0xED00004854524942;
          SCLocalizedStringKey.init(stringLiteral:)(v42);
          swift_getKeyPath();
          v10 = 0;
          v11 = 1;
          goto LABEL_16;
        case 2:
          v38._countAndFlagsBits = 0x44415F4C49414D45;
          v38._object = 0xED00005353455244;
          SCLocalizedStringKey.init(stringLiteral:)(v38);
          swift_getKeyPath();
          v10 = 1;
          v11 = 3;
          goto LABEL_16;
        case 3:
          v40._countAndFlagsBits = 0x554E5F454E4F4850;
          v40._object = 0xEC0000005245424DLL;
          SCLocalizedStringKey.init(stringLiteral:)(v40);
          swift_getKeyPath();
          v10 = 1;
          v11 = 9;
          goto LABEL_16;
        case 4:
          v35._countAndFlagsBits = 0x5F59414C50534944;
          v35._object = 0xEC000000454D414ELL;
          SCLocalizedStringKey.init(stringLiteral:)(v35);
          goto LABEL_41;
        case 5:
          v45._countAndFlagsBits = 0x5F544E554F434341;
          v45._object = 0xEA00000000004449;
          SCLocalizedStringKey.init(stringLiteral:)(v45);
          goto LABEL_41;
        case 6:
          v48._countAndFlagsBits = 0x544545525453;
          v48._object = 0xE600000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v48);
          swift_getKeyPath();
          v10 = 1;
          v11 = 4;
          goto LABEL_16;
        case 7:
          v41._countAndFlagsBits = 1498696003;
          v41._object = 0xE400000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v41);
          swift_getKeyPath();
          v10 = 1;
          v11 = 5;
          goto LABEL_16;
        case 8:
          v51._countAndFlagsBits = 0x4554415453;
          v51._object = 0xE500000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v51);
          swift_getKeyPath();
          v10 = 1;
          v11 = 6;
          goto LABEL_16;
        case 9:
          v37._countAndFlagsBits = 0x5952544E554F43;
          v37._object = 0xE700000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v37);
          swift_getKeyPath();
          v10 = 1;
          v11 = 7;
          goto LABEL_16;
        case 10:
          v50._countAndFlagsBits = 0x435F4C4154534F50;
          v50._object = 0xEB0000000045444FLL;
          SCLocalizedStringKey.init(stringLiteral:)(v50);
          swift_getKeyPath();
          v10 = 1;
          v11 = 8;
          goto LABEL_16;
        case 11:
          v34._countAndFlagsBits = 0x525F454349564544;
          v34._object = 0xED00004E4F494745;
          SCLocalizedStringKey.init(stringLiteral:)(v34);
          goto LABEL_41;
        case 12:
          v36._countAndFlagsBits = 0x4152545F54414843;
          v36._object = 0xEF5450495243534ELL;
          SCLocalizedStringKey.init(stringLiteral:)(v36);
          swift_getKeyPath();
          v10 = 1;
          v11 = 10;
          goto LABEL_16;
        case 13:
          v47._countAndFlagsBits = 0x435F59544944554ELL;
          v47._object = 0xEE004E5245434E4FLL;
          SCLocalizedStringKey.init(stringLiteral:)(v47);
          swift_getKeyPath();
          v10 = 1;
          v11 = 11;
          goto LABEL_16;
        case 14:
          v33._countAndFlagsBits = 0x544E454449434E49;
          v33._object = 0xED0000455441445FLL;
          SCLocalizedStringKey.init(stringLiteral:)(v33);
          goto LABEL_41;
        case 15:
          v39._countAndFlagsBits = 0x544143494C505041;
          v39._object = 0xEB000000004E4F49;
          SCLocalizedStringKey.init(stringLiteral:)(v39);
          goto LABEL_41;
        case 16:
          v32._countAndFlagsBits = 0x4D4554535953;
          v32._object = 0xE600000000000000;
          SCLocalizedStringKey.init(stringLiteral:)(v32);
          goto LABEL_41;
        case 17:
          v43._object = 0xE900000000000044;
          v43._countAndFlagsBits = 0x4E494B5F54414843;
          SCLocalizedStringKey.init(stringLiteral:)(v43);
          goto LABEL_41;
        case 18:
          v49._countAndFlagsBits = 0x4F52505F54414843;
          v49._object = 0xED00004C4F434F54;
          SCLocalizedStringKey.init(stringLiteral:)(v49);
          goto LABEL_41;
        case 19:
          v53._countAndFlagsBits = 0x4F4F525F54414843;
          v53._object = 0xEE00454D414E5F4DLL;
          SCLocalizedStringKey.init(stringLiteral:)(v53);
LABEL_41:
          swift_getKeyPath();
          v11 = 0;
          v10 = 1;
          goto LABEL_16;
        case 20:
          v44._countAndFlagsBits = 0xD00000000000002CLL;
          v44._object = 0x80000001BC774D30;
          SCLocalizedStringKey.init(stringLiteral:)(v44);
          goto LABEL_33;
        case 21:
          v46._countAndFlagsBits = 0xD000000000000015;
          v46._object = 0x80000001BC774D10;
          SCLocalizedStringKey.init(stringLiteral:)(v46);
LABEL_33:
          swift_getKeyPath();
          v10 = 0;
          v11 = 11;
          break;
        case 22:
          v52._object = 0x80000001BC774D60;
          v52._countAndFlagsBits = 0xD000000000000013;
          SCLocalizedStringKey.init(stringLiteral:)(v52);
          swift_getKeyPath();
          v10 = 0;
          v11 = 10;
          break;
        default:
          v12._countAndFlagsBits = 0x4D414E5F4C4C5546;
          v12._object = 0xE900000000000045;
          SCLocalizedStringKey.init(stringLiteral:)(v12);
          swift_getKeyPath();
          v11 = 0;
          v10 = 0;
          break;
      }

      goto LABEL_16;
    default:
      v4._countAndFlagsBits = 0x5F59414C50534944;
      v4._object = 0xEC000000454D414ELL;
      v5 = SCLocalizedStringKey.init(stringLiteral:)(v4).localized._countAndFlagsBits;
      MEMORY[0x1EEE9AC00](v5);
LABEL_15:
      swift_getKeyPath();
      v10 = 1;
      v11 = 0;
LABEL_16:
      *a1 = v54;
      a1[1] = v55;
      return v10 | (v11 << 8);
  }
}

BOOL sub_1BC757D6C(uint64_t a1, char a2)
{
  v2 = sub_1BC757340(&v4, a1, a2);

  return (v2 & 1) == 0;
}

uint64_t sub_1BC757DC0(uint64_t a1, char a2)
{
  v2 = sub_1BC757340(&v4, a1, a2);

  return v2 & 1;
}

id sub_1BC757E10(uint64_t a1, char a2)
{
  v2 = (sub_1BC757340(&v9, a1, a2) >> 8);

  v3 = 0;
  if (v2 <= 6)
  {
    if (v2 > 2)
    {
      v4 = MEMORY[0x1E69DE3F8];
      if (v2 != 5)
      {
        v4 = MEMORY[0x1E69DE408];
      }

      v6 = MEMORY[0x1E69DE4A0];
      if (v2 != 3)
      {
        v6 = MEMORY[0x1E69DE540];
      }

      if (v2 <= 4)
      {
        v4 = v6;
      }

      goto LABEL_19;
    }

    if (v2)
    {
      v4 = MEMORY[0x1E69DE4E8];
      if (v2 == 1)
      {
        v4 = MEMORY[0x1E69DE410];
      }

      goto LABEL_19;
    }
  }

  else if (v2 <= 9)
  {
    v4 = MEMORY[0x1E69DE440];
    v5 = MEMORY[0x1E69DE530];
    if (v2 != 8)
    {
      v5 = MEMORY[0x1E69DE578];
    }

    if (v2 != 7)
    {
      v4 = v5;
    }

LABEL_19:
    v3 = *v4;
    v7 = *v4;
  }

  return v3;
}

uint64_t sub_1BC757F08(uint64_t a1, char a2)
{
  v2 = (sub_1BC757340(&v4, a1, a2) >> 8);

  return v2;
}

uint64_t sub_1BC757F58(uint64_t a1, char a2)
{
  v2 = sub_1BC757340(&v4, a1, a2) >> 8;

  return qword_1BC76F9F0[v2];
}

uint64_t sub_1BC757FB4(uint64_t a1, char a2)
{
  sub_1BC757340(&v5, a1, a2);
  v3 = v2;

  return v3;
}

uint64_t *sub_1BC758014@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    if (v5 < *(*result + 16))
    {
      v24 = v3;
      v25 = v4;
      v7 = v6 + 168 * v5;
      v8 = *(v7 + 32);
      v9 = *(v7 + 64);
      v22[1] = *(v7 + 48);
      v22[2] = v9;
      v22[0] = v8;
      v10 = *(v7 + 80);
      v11 = *(v7 + 96);
      v12 = *(v7 + 128);
      v22[5] = *(v7 + 112);
      v22[6] = v12;
      v22[3] = v10;
      v22[4] = v11;
      v13 = *(v7 + 144);
      v14 = *(v7 + 160);
      v15 = *(v7 + 176);
      v23 = *(v7 + 192);
      v22[8] = v14;
      v22[9] = v15;
      v22[7] = v13;
      v16 = *(v7 + 176);
      *(a3 + 128) = *(v7 + 160);
      *(a3 + 144) = v16;
      *(a3 + 160) = *(v7 + 192);
      v17 = *(v7 + 112);
      *(a3 + 64) = *(v7 + 96);
      *(a3 + 80) = v17;
      v18 = *(v7 + 144);
      *(a3 + 96) = *(v7 + 128);
      *(a3 + 112) = v18;
      v19 = *(v7 + 48);
      *a3 = *(v7 + 32);
      *(a3 + 16) = v19;
      v20 = *(v7 + 80);
      *(a3 + 32) = *(v7 + 64);
      *(a3 + 48) = v20;
      return sub_1BC6C3F8C(v22, v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7580D8(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a1[9];
  v39 = a1[8];
  v40 = v5;
  v41 = *(a1 + 20);
  v6 = a1[5];
  v35 = a1[4];
  v36 = v6;
  v7 = a1[7];
  v37 = a1[6];
  v38 = v7;
  v8 = a1[1];
  v31 = *a1;
  v32 = v8;
  v9 = a1[3];
  v33 = a1[2];
  v34 = v9;
  v10 = *a2;
  sub_1BC6C3F8C(&v31, v29);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1BC7585D4(v10);
  v10 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v10 + 16))
  {
    v12 = v10 + 168 * v4;
    v13 = *(v12 + 32);
    v14 = *(v12 + 64);
    v29[1] = *(v12 + 48);
    v29[2] = v14;
    v29[0] = v13;
    v15 = *(v12 + 80);
    v16 = *(v12 + 96);
    v17 = *(v12 + 128);
    v29[5] = *(v12 + 112);
    v29[6] = v17;
    v29[3] = v15;
    v29[4] = v16;
    v18 = *(v12 + 144);
    v19 = *(v12 + 160);
    v20 = *(v12 + 176);
    v30 = *(v12 + 192);
    v29[8] = v19;
    v29[9] = v20;
    v29[7] = v18;
    v21 = v31;
    v22 = v33;
    *(v12 + 48) = v32;
    *(v12 + 64) = v22;
    *(v12 + 32) = v21;
    v23 = v34;
    v24 = v35;
    v25 = v37;
    *(v12 + 112) = v36;
    *(v12 + 128) = v25;
    *(v12 + 80) = v23;
    *(v12 + 96) = v24;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    *(v12 + 192) = v41;
    *(v12 + 160) = v27;
    *(v12 + 176) = v28;
    *(v12 + 144) = v26;
    result = sub_1BC6C3FC4(v29);
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BC758204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6B5B84();
  *a1 = result;
  return result;
}

uint64_t sub_1BC758268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6B5C04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC758294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BC6B61C0(*a1, v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1BC7582D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6B5B8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1BC7582FC@<D0>(_OWORD *a1@<X8>)
{
  sub_1BC6B5E58(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BC758338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6B5DE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC758364(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  switch(a3)
  {
    case 1:
      v4 = 13;
      goto LABEL_15;
    case 2:
      v4 = 14;
      goto LABEL_15;
    case 3:
      v4 = 15;
      goto LABEL_15;
    case 4:
      v4 = 16;
      goto LABEL_15;
    case 5:
      v4 = 17;
      goto LABEL_15;
    case 6:
      v4 = 18;
      goto LABEL_15;
    case 7:
      v4 = 19;
      goto LABEL_15;
    case 8:
      v4 = 20;
      goto LABEL_15;
    case 9:
      v4 = 21;
      goto LABEL_15;
    case 10:
      v4 = 22;
      goto LABEL_15;
    case 11:
      v4 = 23;
      goto LABEL_15;
    case 12:
      v3 = qword_1BC76FA68[a2];
      return MEMORY[0x1BFB272F0](v3);
    default:
      v4 = 12;
LABEL_15:
      MEMORY[0x1BFB272F0](v4);
      return MEMORY[0x1BFB272F0](v3);
  }
}

uint64_t sub_1BC758424()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC75C700();
  sub_1BC758364(v4, v1, v2);
  return sub_1BC75C720();
}

uint64_t sub_1BC758480(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BC75C700();
  sub_1BC758364(v5, v2, v3);
  return sub_1BC75C720();
}

uint64_t sub_1BC7584E8@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = "SCUIDefaultImplementations";
  if (a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "INCLUDED_IN_REPORT";
    v4 = 0xD000000000000014;
  }

  v5 = v3 | 0x8000000000000000;
  result = SCLocalizedStringKey.init(stringLiteral:)(*&v4).localized._countAndFlagsBits;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t sub_1BC758564@<X0>(void *a1@<X8>)
{
  v3 = "INCLUDED_IN_REPORT";
  if (*v1)
  {
    v3 = "SCUIDefaultImplementations";
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  v5 = v3 | 0x8000000000000000;
  result = SCLocalizedStringKey.init(stringLiteral:)(*&v4).localized._countAndFlagsBits;
  *a1 = v7;
  a1[1] = v8;
  return result;
}

char *sub_1BC7585E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1F0, &qword_1BC7664A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1BC758714(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        return a1 == a3;
      }

      return 0;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return a1 == a3;
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

      return a1 == a3;
    case 5:
      if (a4 != 5)
      {
        return 0;
      }

      return a1 == a3;
    case 6:
      if (a4 != 6)
      {
        return 0;
      }

      return a1 == a3;
    case 7:
      if (a4 != 7)
      {
        return 0;
      }

      return a1 == a3;
    case 8:
      if (a4 == 8)
      {
        return a1 == a3;
      }

      return 0;
    case 9:
      if (a4 != 9)
      {
        return 0;
      }

      return a1 == a3;
    case 10:
      if (a4 != 10)
      {
        return 0;
      }

      return a1 == a3;
    case 11:
      if (a4 != 11)
      {
        return 0;
      }

      return a1 == a3;
    case 12:
      switch(a1)
      {
        case 1:
          if (a4 != 12 || a3 != 1)
          {
            return 0;
          }

          break;
        case 2:
          if (a4 != 12 || a3 != 2)
          {
            return 0;
          }

          break;
        case 3:
          if (a4 != 12 || a3 != 3)
          {
            return 0;
          }

          break;
        case 4:
          if (a4 != 12 || a3 != 4)
          {
            return 0;
          }

          break;
        case 5:
          if (a4 != 12 || a3 != 5)
          {
            return 0;
          }

          break;
        case 6:
          if (a4 != 12 || a3 != 6)
          {
            return 0;
          }

          break;
        case 7:
          if (a4 != 12 || a3 != 7)
          {
            return 0;
          }

          break;
        case 8:
          if (a4 != 12 || a3 != 8)
          {
            return 0;
          }

          break;
        case 9:
          if (a4 != 12 || a3 != 9)
          {
            return 0;
          }

          break;
        case 10:
          if (a4 != 12 || a3 != 10)
          {
            return 0;
          }

          break;
        case 11:
          if (a4 != 12 || a3 != 11)
          {
            return 0;
          }

          break;
        case 12:
          if (a4 != 12 || a3 != 12)
          {
            return 0;
          }

          break;
        case 13:
          if (a4 != 12 || a3 != 13)
          {
            return 0;
          }

          break;
        case 14:
          if (a4 != 12 || a3 != 14)
          {
            return 0;
          }

          break;
        case 15:
          if (a4 != 12 || a3 != 15)
          {
            return 0;
          }

          break;
        case 16:
          if (a4 != 12 || a3 != 16)
          {
            return 0;
          }

          break;
        case 17:
          if (a4 != 12 || a3 != 17)
          {
            return 0;
          }

          break;
        case 18:
          if (a4 != 12 || a3 != 18)
          {
            return 0;
          }

          break;
        case 19:
          if (a4 != 12 || a3 != 19)
          {
            return 0;
          }

          break;
        case 20:
          if (a4 != 12 || a3 != 20)
          {
            return 0;
          }

          break;
        case 21:
          if (a4 != 12 || a3 != 21)
          {
            return 0;
          }

          break;
        case 22:
          if (a4 != 12 || a3 != 22)
          {
            return 0;
          }

          break;
        default:
          if (a4 != 12 || a3 != 0)
          {
            return 0;
          }

          break;
      }

      return 1;
    default:
      return !a4 && a1 == a3;
  }
}

unint64_t sub_1BC758A54()
{
  result = qword_1EBCDF500;
  if (!qword_1EBCDF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF500);
  }

  return result;
}

unint64_t sub_1BC758AAC()
{
  result = qword_1EBCDF508;
  if (!qword_1EBCDF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF508);
  }

  return result;
}

unint64_t sub_1BC758B04()
{
  result = qword_1EBCDF510;
  if (!qword_1EBCDF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF510);
  }

  return result;
}

unint64_t sub_1BC758B5C()
{
  result = qword_1EBCDF518;
  if (!qword_1EBCDF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF518);
  }

  return result;
}

unint64_t sub_1BC758BB8()
{
  result = qword_1EBCDF520;
  if (!qword_1EBCDF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDF520);
  }

  return result;
}

uint64_t _s5FieldOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 9))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s5FieldOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BC758C9C(uint64_t a1)
{
  if (*(a1 + 8) <= 0xBu)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1BC758CB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EBCF43E0 == -1)
  {
    if (qword_1EBCF43E8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EBCF43E8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EBCF43D8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EBCF43CC > a3)
      {
        return 1;
      }

      if (dword_1EBCF43CC >= a3)
      {
        return dword_1EBCF43D0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBCF43E8;
  if (qword_1EBCF43E8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBCF43E8 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1BFB27590](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EBCF43CC, &dword_1EBCF43D0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}