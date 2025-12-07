uint64_t sub_24F148754(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1487B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24F1487D8, 0, 0);
}

uint64_t sub_24F1487D8()
{
  v0[7] = sub_24F1489C4(v0[3], v0[4]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v2 = sub_24ECBBBB4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_24F1488B4;
  v4 = v0[2];

  return MEMORY[0x282180360](v4, v1, v2);
}

uint64_t sub_24F1488B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24F1489C4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A150, &qword_24F9CCF88);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_24F929AB8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  sub_24F928EF8();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24E601704(v13, &qword_27F220FF0, &unk_24F9949F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    sub_24ED21B08();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_24F928EF8();
    if ((*(v29 + 48))(v4, 1, v5) == 1)
    {
      sub_24E601704(v4, &qword_27F23A150, &qword_24F9CCF88);
      v20 = MEMORY[0x277D21E18];
    }

    else
    {
      v26 = v8;
      v21 = *(v29 + 32);
      v21(v7, v4, v5);
      v21(v10, v7, v5);
      v8 = v26;
      v20 = MEMORY[0x277D21E10];
    }

    v22 = v27;
    (*(v8 + 104))(v10, *v20, v27);
    v23 = sub_24F929288();
    v24 = v8;
    v25 = v23;
    (*(v24 + 8))(v10, v22);
    (*(v15 + 8))(v17, v14);
    return v25;
  }
}

uint64_t static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a6;
  sub_24E615E00(a1, a7);
  sub_24E615E00(a4, a7 + 48);
  result = sub_24E930DFC(a5, a7 + 88);
  *(a7 + 40) = v10;
  *(a7 + 41) = v11;
  *(a7 + 128) = v12;
  return result;
}

GameStoreKit::_VerticalFlowLayout __swiftcall _VerticalFlowLayout.init(expandChildrenToFit:children:)(Swift::Bool expandChildrenToFit, Swift::OpaquePointer children)
{
  *v2 = expandChildrenToFit;
  *(v2 + 8) = children;
  result.children = children;
  result.expandChildrenToFit = expandChildrenToFit;
  return result;
}

void _VerticalFlowLayout.placeChildren(relativeTo:in:)(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *v6;
  v15 = *(v6 + 1);
  v76 = a3;
  v87.origin.x = a3;
  v87.origin.y = a4;
  v87.size.width = a5;
  v87.size.height = a6;
  MinY = CGRectGetMinY(v87);
  v17 = *(v15 + 16);
  if (v17)
  {
    v70 = MinY;
    v63 = v12;
    v18 = 0;
    v19 = 0;
    v62 = (v13 + 8);
    v65 = v17 - 1;
    v20 = v15 + 32;
    v75 = 0.0;
    v74 = 0.0;
    v73 = a4;
    v72 = a2;
    v64 = v15 + 32;
    while (1)
    {
      v69 = v18;
      v21 = v20 + 136 * v19;
      v22 = v19;
      while (1)
      {
        if (v22 >= *(v15 + 16))
        {
          __break(1u);
          return;
        }

        sub_24E9D682C(v21, v79);
        __swift_project_boxed_opaque_existential_1(v79, v80);
        sub_24F922288();
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = v86;
        if (v86 & 2) == 0 || (__swift_project_boxed_opaque_existential_1(v79, v80), (sub_24F9221E8()))
        {
          if ((v29 & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v79, v80), (sub_24F922238() & 1) == 0))
          {
            if ((v29 & 8) == 0 || v24 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v22;
        sub_24E9D6888(v79);
        v21 += 136;
        if (v17 == v22)
        {
          goto LABEL_36;
        }
      }

      v30 = v81;
      v31 = v84;
      __swift_project_boxed_opaque_existential_1(v83, v84);
      if (v30)
      {
        sub_24F9223C8();
        v33 = v32;
      }

      else
      {
        v34 = v68;
        sub_24E8ED7D8(v31);
        v33 = sub_24F9223A8();
        (*v62)(v34, v63);
      }

      v35 = v76;
      if (v33 < 0.0)
      {
        break;
      }

      v70 = v70 + v33;
      if (v71)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v82)
      {
        v36 = v35;
        v37 = v73;
        v38 = a5;
        v39 = a6;
        if (v82 == 1)
        {
          CGRectGetMidX(*&v36);
        }

        else
        {
          CGRectGetMaxX(*&v36);
        }
      }

      else
      {
        v89.origin.x = v35;
        v89.origin.y = v73;
        v89.size.width = a5;
        v89.size.height = a6;
        CGRectGetMinX(v89);
      }

      sub_24F92C1D8();
      v66 = v40;
      v67 = v41;
      v43 = v42;
      v45 = v44;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v60 = v43;
      v61 = v45;
      sub_24F922228();
      __swift_project_boxed_opaque_existential_1(v79, v80);
      sub_24F922218();
      MaxX = CGRectGetMaxX(v90);
      v47 = v74;
      if (MaxX > v74)
      {
        v47 = MaxX;
      }

      v74 = v47;
      sub_24E930DFC(v85, v77);
      if (v78)
      {
        __swift_project_boxed_opaque_existential_1(v77, v78);
        sub_24F922398();
        v59 = v48;
        __swift_destroy_boxed_opaque_existential_1(v77);
        v49 = v66;
        v91.origin.x = v66;
        v50 = v67;
        v91.origin.y = v67;
        v51 = v60;
        v91.size.width = v60;
        v52 = v61;
        v91.size.height = v61;
        v70 = v59 + CGRectGetMaxY(v91);
        v92.origin.x = v49;
        v92.origin.y = v50;
        v92.size.width = v51;
        v92.size.height = v52;
        CGRectGetMaxY(v92);
      }

      else
      {
        sub_24E930E6C(v77);
        v53 = v66;
        v93.origin.x = v66;
        v54 = v67;
        v93.origin.y = v67;
        v55 = v60;
        v93.size.width = v60;
        v56 = v61;
        v93.size.height = v61;
        v70 = CGRectGetMaxY(v93) - v28;
        v94.origin.x = v53;
        v94.origin.y = v54;
        v94.size.width = v55;
        v94.size.height = v56;
        CGRectGetMaxY(v94);
      }

      v20 = v64;
      v19 = v22 + 1;
      v95.origin.x = v76;
      v95.origin.y = v73;
      v95.size.width = a5;
      v95.size.height = a6;
      CGRectGetMinY(v95);
      v57 = v75;
      if ((v69 & 1) == 0)
      {
        v57 = v26;
      }

      v75 = v57;
      sub_24E9D6888(v79);
      v18 = 1;
      if (v65 == v22)
      {
        goto LABEL_36;
      }
    }

    v70 = v70 + 0.0;
    if ((v71 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v88.origin.x = v76;
    v88.origin.y = v73;
    v88.size.width = a5;
    v88.size.height = a6;
    CGRectGetWidth(v88);
    goto LABEL_20;
  }

  v75 = 0.0;
  v74 = 0.0;
LABEL_36:
  sub_24F922138();
}

void _VerticalFlowLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v5 = sub_24F92CDB8();
  MEMORY[0x28223BE20](v5);
  v9 = *(v3 + 1);
  v10 = *(v9 + 16);
  if (v10)
  {
    v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v6;
    v11 = 0;
    v12 = 0;
    v38 = *v3;
    v33 = (v7 + 8);
    v37 = v10 - 1;
    v13 = v9 + 32;
    v14 = 0.0;
    v42 = 0.0;
    v40 = 0.0;
    v36 = v9 + 32;
    while (1)
    {
      v39 = v11;
      v41 = v14;
      v15 = v13 + 136 * v12;
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        sub_24E9D682C(v15, v45);
        __swift_project_boxed_opaque_existential_1(v45, v46);
        sub_24F922288();
        v18 = v17;
        v20 = v19;
        v14 = v21;
        v22 = v51;
        if (v51 & 2) == 0 || (__swift_project_boxed_opaque_existential_1(v45, v46), (sub_24F9221E8()))
        {
          if ((v22 & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v45, v46), (sub_24F922238() & 1) == 0))
          {
            if ((v22 & 8) == 0 || v20 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v16;
        sub_24E9D6888(v45);
        v15 += 136;
        if (v10 == v16)
        {
          return;
        }
      }

      v23 = v47;
      v24 = v49;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      if (v23)
      {
        sub_24F9223C8();
        v26 = v25;
        if (v25 < 0.0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v28 = v34;
        sub_24E8ED7D8(v24);
        v26 = sub_24F9223A8();
        (*v33)(v28, v35);
        if (v26 < 0.0)
        {
LABEL_16:
          v27 = v40 + 0.0 + v20;
          goto LABEL_17;
        }
      }

      v27 = v20 + v40 + v26;
LABEL_17:
      v29 = a2;
      if ((v38 & 1) == 0)
      {
        v29 = v18;
      }

      v30 = v42;
      if (v29 > v42)
      {
        v30 = v29;
      }

      v42 = v30;
      sub_24E930DFC(&v50, v43);
      if (v44)
      {
        __swift_project_boxed_opaque_existential_1(v43, v44);
        sub_24F922398();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1(v43);
        v40 = v27 + v32;
      }

      else
      {
        sub_24E930E6C(v43);
        v40 = v27 - v14;
      }

      v13 = v36;
      v12 = v16 + 1;
      sub_24E9D6888(v45);
      v11 = 1;
      if (v37 == v16)
      {
        return;
      }
    }
  }

  v42 = 0.0;
}

__n128 _VerticalFlowLayout.addChild(_:)(uint64_t a1)
{
  sub_24E9D682C(a1, v12);
  v2 = *(v1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E617A24(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24E617A24((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[136 * v4];
  *(v5 + 2) = v12[0];
  v6 = v12[1];
  v7 = v12[2];
  v8 = v12[4];
  *(v5 + 5) = v12[3];
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = v12[5];
  v10 = v12[6];
  v11 = v12[7];
  *(v5 + 20) = v13;
  *(v5 + 8) = v10;
  *(v5 + 9) = v11;
  *(v5 + 7) = result;
  *(v1 + 8) = v2;
  return result;
}

unint64_t _VerticalFlowLayout.insertChild(_:at:)(unint64_t result, uint64_t a2)
{
  if (*(*(v2 + 8) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    sub_24E9D682C(result, v4);
    return sub_24F149D80(a2, a2, v4);
  }

  __break(1u);
  return result;
}

uint64_t _VerticalFlowLayout.Child.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t _VerticalFlowLayout.Child.HorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F149D80(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_24E617A24(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_24EDAAC3C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_24F149E58()
{
  result = qword_27F23A158;
  if (!qword_27F23A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A158);
  }

  return result;
}

unint64_t sub_24F149EB0()
{
  result = qword_27F23A160;
  if (!qword_27F23A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A160);
  }

  return result;
}

unint64_t sub_24F149F08()
{
  result = qword_27F23A168;
  if (!qword_27F23A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A168);
  }

  return result;
}

unint64_t sub_24F149F60()
{
  result = qword_27F23A170;
  if (!qword_27F23A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A170);
  }

  return result;
}

unint64_t sub_24F149FB8()
{
  result = qword_27F23A178;
  if (!qword_27F23A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A178);
  }

  return result;
}

unint64_t sub_24F14A010()
{
  result = qword_27F23A180;
  if (!qword_27F23A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A180);
  }

  return result;
}

uint64_t sub_24F14A084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_24F14A0CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F14A238(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24F92C738();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

uint64_t sub_24F14A38C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_24F14A464(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_24F92C738() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = sub_24F92C738();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = sub_24F92C738();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v14, v13))
  {
    goto LABEL_21;
  }

  sub_24F7422A8();

  sub_24EDAC398(v7, v6, v11, v4);
}

uint64_t sub_24F14A578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24F92C738();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_24F7422A8();

  return sub_24EDAC530(v7, v6, 1, v4);
}

uint64_t sub_24F14A6BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a3 + 16);
  v13 = __OFSUB__(v12, v10);
  v14 = v12 - v10;
  if (v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v8 + v14;
  if (__OFADD__(v8, v14))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, v12, a3);
  *v5 = v7;
  return result;
}

void sub_24F14AA18(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_24F91F4A8();
  v29 = *(v7 - 8);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 activityType];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E20, &qword_24F9740B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v14 = *MEMORY[0x277D54710];
    *(inited + 32) = *MEMORY[0x277D54710];
    v15 = *&v2[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData];
    sub_24E99091C(v15 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, v6);
    if ((*(v29 + 48))(v6, 1, v7) == 1)
    {
      v16 = v14;

      sub_24E70E058(v6);
    }

    else
    {
      v28 = *(v29 + 32);
      v21 = v28(v10, v6, v7);
      v30 = v12;
      MEMORY[0x28223BE20](v21);
      *(&v27 - 2) = &v30;
      v22 = v14;
      v23 = sub_24E615C4C(sub_24F14C03C, (&v27 - 4), inited);

      if ((v23 & 1) == 0)
      {
        a1[3] = v7;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v28(boxed_opaque_existential_1, v10, v7);
        goto LABEL_11;
      }

      (*(v29 + 8))(v10, v7);
    }

    v24 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
    a1[3] = v7;
    v25 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v29 + 16))(v25, v15 + v24, v7);
LABEL_11:

    return;
  }

  v17 = *&v2[OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData];
  v18 = OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url;
  a1[3] = v7;
  v19 = __swift_allocate_boxed_opaque_existential_1(a1);
  v20 = *(v29 + 16);

  v20(v19, v17 + v18, v7);
}

id sub_24F14ADB8(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24F14AF34(void *a1, uint64_t *a2)
{
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 == sub_24F92B0D8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24F92CE08();
  }

  return v7 & 1;
}

id sub_24F14AFC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v102 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData);
  sub_24E99091C(v10 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, v4);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    (*(v6 + 16))(v8, v10 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url, v5);
    if (v11(v4, 1, v5) != 1)
    {
      sub_24E70E058(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v12 = sub_24F91F3B8();
  (*(v6 + 8))(v8, v5);
  [v9 setURL_];

  v13 = *(v10 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v21 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    if (v14 == 2)
    {
      v22 = *(v21 + 48);
      if (v22)
      {
        v23 = *(v22 + 48);
        if (v23)
        {
          swift_retain_n();

          v24 = v23;
          v25 = sub_24EC9B5C4(v24);
          if (v25)
          {
            v26 = v25;
            v27 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

LABEL_64:
            v76 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);
            aBlock = 0uLL;

            v77 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);
            v78 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
            v79 = ArtworkItemProvider.init(artworkLoader:config:)(v76, v77);
            v80 = MEMORY[0x277CD46B0];
LABEL_68:
            v84 = [objc_allocWithZone(v80) initWithItemProvider:v79 properties:0 placeholderImage:v27];
            [v9 setImage_];

            goto LABEL_69;
          }
        }

        else
        {
          swift_retain_n();
        }

        v27 = 0;
        goto LABEL_64;
      }

LABEL_22:
      swift_retain_n();
LABEL_69:

      v85 = sub_24F92B098();

      [v9 setTitle_];

      v86 = [objc_allocWithZone(MEMORY[0x277CD4688]) init];
      if (*(v21 + 40))
      {

        v87 = sub_24F92B098();
      }

      else
      {
        v87 = 0;
      }

      [v86 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v32 = *(v21 + 48);
    if (!v32)
    {
      goto LABEL_22;
    }

    v33 = *(v32 + 48);
    if (v33)
    {
      swift_retain_n();

      v34 = v33;
      v35 = sub_24EC9B5C4(v34);
      if (v35)
      {
        v36 = v35;
        v27 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

LABEL_67:
        v81 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_24F9CD360;

        v82 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v83 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v79 = ArtworkItemProvider.init(artworkLoader:config:)(v81, v82);
        v80 = MEMORY[0x277CD46B0];
        goto LABEL_68;
      }
    }

    else
    {
      swift_retain_n();
    }

    v27 = 0;
    goto LABEL_67;
  }

  if (!v14)
  {
    v15 = *(v13 + 64);
    if (!v15)
    {
      swift_retain_n();
LABEL_58:

      v73 = sub_24F92B098();

      [v9 setTitle_];

      v74 = [objc_allocWithZone(MEMORY[0x277CD4688]) init];
      if (*(v13 + 56))
      {

        v75 = sub_24F92B098();
      }

      else
      {
        v75 = 0;
      }

      [v74 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v16 = *(v15 + 48);
    if (v16)
    {
      swift_retain_n();

      v17 = v16;
      v18 = sub_24EC9B5C4(v17);
      if (v18)
      {
        v19 = v18;
        v20 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

LABEL_57:
        v68 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_24F9CD360;

        v69 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v70 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v71 = ArtworkItemProvider.init(artworkLoader:config:)(v68, v69);
        v72 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v71 properties:0 placeholderImage:v20];
        [v9 setImage_];

        goto LABEL_58;
      }
    }

    else
    {
      swift_retain_n();
    }

    v20 = 0;
    goto LABEL_57;
  }

  v28 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  v29 = objc_allocWithZone(MEMORY[0x277CD4720]);
  swift_retain_n();
  v30 = [v29 init];
  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {

    v31 = sub_24F92B098();
  }

  else
  {
    v31 = 0;
  }

  [v30 setStoreFrontIdentifier_];

  v37 = sub_24F92B098();

  [v30 setStoreIdentifier_];

  v38 = sub_24F92B098();

  [v30 setName_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x48))
  {

    v39 = sub_24F92B098();
  }

  else
  {
    v39 = 0;
  }

  [v30 setSubtitle_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x58))
  {

    v40 = sub_24F92B098();
  }

  else
  {
    v40 = 0;
  }

  [v30 setGenre_];

  v41 = *(*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60) + 48);
  v107 = v30;
  v108 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  if (v41)
  {
    v42 = v41;
    v43 = sub_24EC9B5C4(v42);
    if (v43)
    {
      v44 = v43;
      v45 = [objc_allocWithZone(MEMORY[0x277CD46B8]) init];
      [v45 setType_];
      v46 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage:v44 properties:v45];

      v42 = v45;
      v28 = v108;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_artworkLoader);

  v49 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);

  v111 = type metadata accessor for ArtworkItemProvider();
  v50 = objc_allocWithZone(v111);
  v51 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v49);
  v52 = [objc_allocWithZone(MEMORY[0x277CD46B8]) init];
  [v52 setType_];
  v53 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v51 properties:v52 placeholderImage:v47];
  [v107 setIcon_];

  v54 = *(v28 + 104);
  if (!v54)
  {
    goto LABEL_74;
  }

  if (v54 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_43;
    }

LABEL_74:
    v88 = 0;
    goto LABEL_84;
  }

  if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_74;
  }

LABEL_43:
  if ((v54 & 0xC000000000000001) != 0)
  {
    v89 = *(MEMORY[0x253052270](0, v54) + 16);

    swift_unknownObjectRelease();
    v55 = v89;
    if (v89 < 0)
    {
      goto LABEL_80;
    }

    v56 = v89;
    if ((v89 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v55)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    while (1)
    {
      v58 = v56;
      v103 = v52;
      v104 = v51;
      v105 = v47;
      v106 = v9;
      v118 = MEMORY[0x277D84F90];
      sub_24F92C978();
      if ((v57 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      v56 = v55;
LABEL_81:
      v90 = v56;
      v57 = sub_24F92C738();
      v56 = v90;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

    v59 = 0;
    v60 = *MEMORY[0x277CC2120];
    v109 = v58 & 0xC000000000000001;
    v110 = v60;
    do
    {
      if (v109)
      {
        MEMORY[0x253052270](v59);
      }

      else
      {
      }

      ++v59;
      v61 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 300.0, 300.0);
      v62 = v111;
      v63 = objc_allocWithZone(v111);
      *&v63[OBJC_IVAR____TtC12GameStoreKit19ArtworkItemProvider_artworkLoader] = v48;
      *&v63[OBJC_IVAR____TtC12GameStoreKit19ArtworkItemProvider_artworkLoaderConfig] = v61;
      v117.receiver = v63;
      v117.super_class = v62;

      v64 = objc_msgSendSuper2(&v117, sel_init);
      v115 = sub_24E678F24;
      v116 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v113 = sub_24EB130E8;
      v114 = &block_descriptor_121;
      v65 = _Block_copy(&aBlock);
      v66 = v64;
      v67 = v110;
      [v66 registerDataRepresentationForTypeIdentifier:v67 visibility:3 loadHandler:v65];
      _Block_release(v65);

      [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v66 properties:0 placeholderImage:0];

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v57 != v59);

    v47 = v105;
    v9 = v106;
    v52 = v103;
    v51 = v104;
  }

  else
  {
LABEL_82:
  }

  sub_24F14BFF0();
  v88 = sub_24F92B588();

  v28 = v108;
LABEL_84:
  v91 = v107;
  [v107 setScreenshots_];

  [v91 setIsMessagesOnlyApp_];
  if (*(v28 + 128))
  {

    v92 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);
    v93 = objc_allocWithZone(v111);
    v94 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v92);
    v95 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithItemProvider:v94 properties:0 placeholderImage:0];
    [v91 setMessagesAppIcon_];
  }

  v96 = *(v108 + 112);
  if (!v96)
  {
    goto LABEL_93;
  }

  if (v96 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_93;
    }
  }

  else
  {
    result = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_93:
      v101 = v91;
      [v9 setSpecialization_];

      return v9;
    }
  }

  if ((v96 & 0xC000000000000001) != 0)
  {

    MEMORY[0x253052270](0, v96);

    goto LABEL_92;
  }

  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_92:
    v98 = objc_allocWithZone(MEMORY[0x277CD4700]);
    v99 = sub_24F91F3B8();
    v100 = [v98 initWithStreamingURL:v99 hasAudio:0];

    [v91 setPreviewVideo_];

    goto LABEL_93;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F14BF58()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit23URLActivityItemProvider_shareSheetData) + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata);
  v2 = v1 >> 62;
  v3 = 32;
  v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (v1 >> 62)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = 48;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v1 = v4;
    v5 = 16;
  }

  return *(v1 + v5);
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F14BFF0()
{
  result = qword_27F23A280;
  if (!qword_27F23A280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23A280);
  }

  return result;
}

uint64_t sub_24F14C05C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_24F14C0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24F14C140@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24F927618();
  v6 = v5;
  sub_24F14C204(v2, __src);
  memcpy(__dst, __src, 0x153uLL);
  memcpy(v11, __src, 0x153uLL);
  sub_24E60169C(__dst, &v8, &qword_27F23A288, &qword_24F9CD4E0);
  sub_24E601704(v11, &qword_27F23A288, &qword_24F9CD4E0);
  *a2 = v4;
  *(a2 + 8) = v6;
  result = memcpy((a2 + 16), __dst, 0x153uLL);
  *(a2 + 355) = 0;
  *(a2 + 357) = 0;
  return result;
}

uint64_t sub_24F14C204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  v22 = *(a1 + 112);
  v25 = *(a1 + 96);
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  if (*(a1 + 16))
  {

    sub_24F9273D8();
    sub_24F923BD8();
    sub_24F927618();
    sub_24F9238C8();
    v36 = v89;
    v37 = v88;
    v34 = v91;
    v35 = v90;
    v32 = v93;
    v33 = v92;
    v30 = v95;
    v31 = v94;
    v28 = v97;
    v29 = v96;
    v27 = v98;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
  }

  if (v3)
  {

    sub_24F9273D8();
    sub_24F923BD8();
    v6 = *(a1 + 176);
    v7 = *(a1 + 184);
    sub_24F927618();
    sub_24F9238C8();
    v71 = v40;
    v72 = v41;
    v73 = v42;
    v69 = v38;
    v70 = v39;
    *&v74[24] = v22;
    *&v74[8] = v25;
    *v74 = v43;
    *&v74[40] = v5;
    *v75 = v6;
    *&v75[8] = v7;
    *&v75[16] = 0;
    v75[18] = 0;
    CGSizeMake();
    v85 = *&v74[16];
    v86 = *&v74[32];
    v87[0] = *v75;
    *(v87 + 15) = HIBYTE(v7);
    v81 = v40;
    v82 = v41;
    v83 = v42;
    v84 = *v74;
    v79 = v38;
    v80 = v39;
  }

  else
  {
    sub_24F14C8FC(&v79);
  }

  if (v4)
  {

    sub_24F9273D8();
    sub_24F923BD8();
    sub_24F927618();
    sub_24F9238C8();
    v8 = v99;
    v9 = v100;
    v10 = v101;
    v4 = v102;
    v11 = v103;
    v12 = v104;
    v13 = v105;
    v14 = v106;
    v16 = v107;
    v15 = v108;
    v17 = v109;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 0;
    v17 = 0;
  }

  v23 = v15;
  v26 = v17;
  v51 = v85;
  v52 = v86;
  v53[0] = v87[0];
  v47 = v81;
  v48 = v82;
  v49 = v83;
  v50 = v84;
  v45 = v79;
  v46 = v80;
  *&v54 = v37;
  *(&v54 + 1) = v36;
  *&v55 = v35;
  *(&v55 + 1) = v34;
  *&v56 = v33;
  *(&v56 + 1) = v32;
  *&v57 = v31;
  *(&v57 + 1) = v30;
  *v58 = v29;
  *&v58[8] = v28;
  *&v58[16] = v27;
  v58[26] = 0;
  *&v58[24] = 0;
  __src[2] = v56;
  __src[3] = v57;
  __src[4] = *v58;
  *(&__src[4] + 11) = *&v58[11];
  __src[0] = v54;
  __src[1] = v55;
  v59[0] = v79;
  v59[1] = v80;
  v59[4] = v83;
  v59[5] = v84;
  v59[2] = v81;
  v59[3] = v82;
  *(v60 + 15) = *(v87 + 15);
  v60[0] = v87[0];
  v59[6] = v85;
  v59[7] = v86;
  __src[12] = v85;
  __src[13] = v86;
  __src[14] = v87[0];
  __src[8] = v81;
  __src[9] = v82;
  *(v53 + 15) = *(v87 + 15);
  *(&__src[14] + 15) = *(v87 + 15);
  __src[10] = v83;
  __src[11] = v84;
  __src[6] = v79;
  __src[7] = v80;
  *&v61 = v8;
  *(&v61 + 1) = v9;
  *&v62 = v10;
  *(&v62 + 1) = v4;
  *&v63 = v11;
  *(&v63 + 1) = v12;
  *&v64 = v13;
  *(&v64 + 1) = v14;
  *v65 = v16;
  *&v65[8] = v15;
  *&v65[16] = v17;
  v65[26] = 0;
  *&v65[24] = 0;
  *(&__src[18] + 8) = v64;
  *(&__src[19] + 8) = *v65;
  *(&__src[20] + 3) = *&v65[11];
  *(&__src[16] + 8) = v62;
  *(&__src[17] + 8) = v63;
  *(&__src[15] + 8) = v61;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  memcpy(a2, __src, 0x153uLL);
  v66[0] = v18;
  v66[1] = v19;
  v66[2] = v20;
  v66[3] = v4;
  v66[4] = v11;
  v66[5] = v12;
  v66[6] = v13;
  v66[7] = v14;
  v66[8] = v16;
  v66[9] = v23;
  v66[10] = v26;
  v68 = 0;
  v67 = 0;
  sub_24E60169C(&v54, &v69, &qword_27F23A290, &qword_24F9CD4E8);
  sub_24E60169C(v59, &v69, &qword_27F23A298, &qword_24F9CD4F0);
  sub_24E60169C(&v61, &v69, &qword_27F23A290, &qword_24F9CD4E8);
  sub_24E601704(v66, &qword_27F23A290, &qword_24F9CD4E8);
  *&v74[16] = v51;
  *&v74[32] = v52;
  *v75 = v53[0];
  *&v75[15] = *(v53 + 15);
  v71 = v47;
  v72 = v48;
  v73 = v49;
  *v74 = v50;
  v69 = v45;
  v70 = v46;
  sub_24E601704(&v69, &qword_27F23A298, &qword_24F9CD4F0);
  v76[0] = v37;
  v76[1] = v36;
  v76[2] = v35;
  v76[3] = v34;
  v76[4] = v33;
  v76[5] = v32;
  v76[6] = v31;
  v76[7] = v30;
  v76[8] = v29;
  v76[9] = v28;
  v76[10] = v27;
  v78 = 0;
  v77 = 0;
  return sub_24E601704(v76, &qword_27F23A290, &qword_24F9CD4E8);
}

void *sub_24F14C7C8@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  if (*v1)
  {

    sub_24F9273D8();
    sub_24F923BD8();
    sub_24F927618();
    result = sub_24F9238C8();
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
    v9 = v15;
  }

  else
  {
    v6 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  *(a1 + 72) = v9;
  return result;
}

double sub_24F14C8FC(uint64_t a1)
{
  *(a1 + 143) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_24F14C91C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_24F14C978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24F14C9EC()
{
  result = qword_27F23A2A0;
  if (!qword_27F23A2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A2A8, &qword_24F9CD538);
    sub_24F14CAA4();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A2A0);
  }

  return result;
}

unint64_t sub_24F14CAA4()
{
  result = qword_27F23A2B0;
  if (!qword_27F23A2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A2B8, &qword_24F9CD540);
    sub_24E602068(&qword_27F23A2C0, &qword_27F23A2C8, qword_24F9CD548, MEMORY[0x277CE11A8]);
    sub_24E602068(&qword_27F2263F8, &qword_27F226400, &qword_24F97FB40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A2B0);
  }

  return result;
}

unint64_t sub_24F14CBA8()
{
  result = qword_27F23A2D0;
  if (!qword_27F23A2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F23A2D8, &unk_24F9CD5A0);
    sub_24E9DEB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A2D0);
  }

  return result;
}

uint64_t sub_24F14CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24F92B7F8();
  *(v4 + 24) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F14CCC4, v6, v5);
}

uint64_t sub_24F14CCC4()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong windowScene], v2, v3))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E8E0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "RequestReview: Invoking a StoreKit API to display a review request prompt...", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    sub_24F927E98();
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E8E0);
    v3 = sub_24F9220B8();
    v9 = sub_24F92BDB8();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v9, "RequestReview: Could not get a UIWindowScene to invoke a StoreKit API.", v10, 2u);
      MEMORY[0x2530542D0](v10, -1, -1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_24F14CED0(void *a1)
{
  swift_unknownObjectWeakInit();
}

uint64_t sub_24F14CF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F14CFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AE8();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v58 - v7;
  v60 = sub_24F91F648();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = *(a2 - 8);
  (*(v17 + 16))(&v65, v2, a2);
  sub_24F92B7F8();
  v18 = sub_24F92B7E8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = *(a2 + 16);
  (*(v17 + 32))(v19 + 5, &v65, a2);
  sub_24EA998B8(0, 0, v15, &unk_24F9CD668, v19);

  v21 = objc_opt_self();
  v22 = [v21 standardUserDefaults];
  v23 = objc_opt_self();
  v24 = [v23 mainBundle];
  v25 = sub_24F76084C();
  v27 = v26;

  sub_24F008FAC(v25, v27);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v28 = sub_24F9220D8();
  __swift_project_value_buffer(v28, qword_27F39E8E0);
  v29 = sub_24F9220B8();
  v30 = sub_24F92BD98();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v58 = v10;
    v32 = v31;
    v33 = swift_slowAlloc();
    v65 = v33;
    *v32 = 136315138;
    v34 = [v23 mainBundle];
    v35 = sub_24F76084C();
    v37 = v36;

    v38 = sub_24E7620D4(v35, v37, &v65);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_24E5DD000, v29, v30, "RequestReview: requestReviewLastInvokeAppVersion set to %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2530542D0](v33, -1, -1);
    v39 = v32;
    v10 = v58;
    MEMORY[0x2530542D0](v39, -1, -1);
  }

  v40 = v64;
  sub_24F91F638();
  v41 = [v21 standardUserDefaults];
  v42 = *(v8 + 16);
  v43 = v59;
  v44 = v60;
  v42(v59, v40, v60);
  (*(v8 + 56))(v43, 0, 1, v44);
  sub_24F009124(v43);

  v42(v10, v40, v44);
  v45 = sub_24F9220B8();
  v46 = sub_24F92BD98();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v65 = v48;
    *v47 = 136315138;
    sub_24F14D7B4(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v49 = sub_24F92CD88();
    v51 = v50;
    v52 = v10;
    v53 = *(v8 + 8);
    v53(v52, v44);
    v54 = sub_24E7620D4(v49, v51, &v65);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_24E5DD000, v45, v46, "RequestReview: requestReviewLastInvokeDate set to %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x2530542D0](v48, -1, -1);
    MEMORY[0x2530542D0](v47, -1, -1);
  }

  else
  {

    v55 = v10;
    v53 = *(v8 + 8);
    v53(v55, v44);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v62 + 104))(v61, *MEMORY[0x277D21CA8], v63);
  v56 = sub_24F92A988();
  v53(v64, v44);
  return v56;
}

uint64_t sub_24F14D6B4()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24F14D6F4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24F14CC2C(a1, v5, v4, v1 + 40);
}

uint64_t sub_24F14D7B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for EditorialMediaFallbackLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[17])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EditorialMediaFallbackLayout(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 4;
    }
  }

  return result;
}

void sub_24F14D894(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, char a9)
{
  v32[1] = a5;
  v15 = HIBYTE(a7);
  v16 = sub_24F923A38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 <= 3)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        if (a9)
        {
          v21 = 490.0;
        }

        else
        {
          v21 = *&a8 * 150.0 + 490.0;
        }

        v23 = 0x407F400000000000;
      }

      else
      {
        v21 = 816.0;
        v23 = 0x4082B00000000000;
      }
    }

    else
    {
      if (!v15)
      {
        v21 = 816.0;
        v22 = 1306.0;
        goto LABEL_22;
      }

      v21 = 468.0;
      v23 = 0x4093080000000000;
    }

    goto LABEL_21;
  }

  if (v15 > 5)
  {
    if (v15 != 6)
    {
      v21 = 163.0;
      v22 = 286.0;
      if (v15 != 7)
      {
        v22 = 585.0;
        v21 = 456.0;
      }

      goto LABEL_22;
    }

    v21 = 222.0;
    v23 = 0x4078800000000000;
LABEL_21:
    v22 = *&v23;
    goto LABEL_22;
  }

  v21 = 462.0;
  v22 = 340.0;
  if (v15 != 4)
  {
    v22 = 598.0;
    v21 = 340.0;
  }

LABEL_22:
  if ((a2 & 1) == 0 && (a4 & 1) == 0)
  {
    v24 = *&a1 / v22;
    v25 = *&a3 / v21;
    if (v15 == 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    *a6 = v26;
    v27 = v18;
    sub_24F923BC8();
    v34 = 0;
    v33 = 1;
    sub_24F923A18();
    v29 = v28;
    v31 = v30;
    (*(v17 + 8))(v20, v27);
    *(a6 + 8) = v29;
    *(a6 + 16) = v31;
  }
}

void sub_24F14DDFC(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0x3FF0000000000000;
}

void (*sub_24F14DE6C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

unint64_t sub_24F14DEF8()
{
  result = qword_27F23A360;
  if (!qword_27F23A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A360);
  }

  return result;
}

unint64_t sub_24F14DF4C(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v4 = &unk_2861C1628;
      }

      else
      {
        v4 = &unk_2861C17B0;
      }
    }

    else if (a1 == 6)
    {
      v4 = &unk_2861C1938;
    }

    else if (a1 == 7)
    {
      v4 = &unk_2861C1AC0;
    }

    else
    {
      v4 = &unk_2861C1DD0;
    }

    return sub_24E610BFC(v4);
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = &unk_2861C14A0;
    }

    else
    {
      v4 = &unk_2861C1318;
    }

    return sub_24E610BFC(v4);
  }

  if (a1 != 2)
  {
    v4 = &unk_2861C1C48;

    return sub_24E610BFC(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A368, &qword_24F9CD778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0;
  v9 = 106.0;
  if ((a3 & 1) == 0)
  {
    v9 = *&a2 * -52.0 + 106.0;
  }

  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 65) = 1;
  *(inited + 72) = 0;
  *(inited + 80) = 1;
  *(inited + 88) = v9;
  *(inited + 96) = 0;
  *(inited + 97) = 0;
  *(inited + 104) = 1;
  v10 = 69.0;
  if ((a3 & 1) == 0)
  {
    v10 = *&a2 * -29.0 + 69.0;
  }

  *(inited + 112) = 0;
  *(inited + 120) = 1;
  *(inited + 128) = 0;
  *(inited + 136) = 1;
  *(inited + 137) = 1;
  *(inited + 144) = 0;
  *(inited + 152) = 1;
  *(inited + 160) = v10;
  *(inited + 168) = 0;
  *(inited + 169) = 0;
  *(inited + 176) = 2;
  v11 = 76.0;
  if ((a3 & 1) == 0)
  {
    v11 = *&a2 * -36.0 + 76.0;
  }

  *(inited + 184) = 0;
  *(inited + 192) = 1;
  *(inited + 200) = 0;
  *(inited + 208) = 1;
  *(inited + 209) = 1;
  *(inited + 216) = 0;
  *(inited + 224) = 1;
  *(inited + 232) = v11;
  *(inited + 240) = 0;
  *(inited + 241) = 0;
  *(inited + 248) = 3;
  v12 = 46.0;
  if ((a3 & 1) == 0)
  {
    v12 = *&a2 * -74.0 + 46.0;
  }

  *(inited + 256) = 0;
  *(inited + 264) = 1;
  *(inited + 272) = 0;
  *(inited + 280) = 1;
  *(inited + 281) = 1;
  *(inited + 288) = 0;
  *(inited + 296) = 1;
  *(inited + 304) = v12;
  *(inited + 312) = 0;
  *(inited + 313) = 0;
  *(inited + 320) = 4;
  v13 = *&a2 * -96.0 + -15.0;
  if (a3)
  {
    v13 = -15.0;
  }

  *(inited + 328) = 0;
  *(inited + 336) = 1;
  *(inited + 344) = 0;
  *(inited + 352) = 1;
  *(inited + 353) = 1;
  *(inited + 360) = 0;
  *(inited + 368) = 1;
  *(inited + 376) = v13;
  *(inited + 384) = 0;
  *(inited + 385) = 0;
  v14 = sub_24E610BFC(inited);
  swift_setDeallocating();
  return v14;
}

void sub_24F14E2EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, double *a6, __int16 a7, uint64_t a8, char a9)
{
  v15 = HIBYTE(a7);
  v16 = sub_24F923A38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F14DF4C(v15, a8, a9 & 1);
  sub_24F923BB8();
  sub_24E96257C();
  sub_24F92BB88();
  sub_24F92BC08();
  if (sub_24F92BBF8() != 1 || !*(v20 + 16) || (v21 = sub_24E7728EC(), (v22 & 1) == 0))
  {

    return;
  }

  v23 = *(v20 + 56) + (v21 << 6);
  v30 = *v23;
  v31 = *(v23 + 8);
  v28 = *(v23 + 16);
  v29 = *(v23 + 24);
  v24 = *(v23 + 25);
  v25 = *(v23 + 40);
  v26 = *(v23 + 56);
  v27 = *(v23 + 57);

  if (v27)
  {
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMidX(v33);
  }

  else if (v25)
  {
    if (v26)
    {
      return;
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMaxX(v34);
  }

  else
  {
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinX(v35);
  }

  if (v24)
  {
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMidY(v36);
LABEL_18:
    sub_24F923BC8();
    sub_24F927828();
    v32[8] = 0;
    v32[0] = 0;
    sub_24F923A28();
    (*(v17 + 8))(v19, v16);
    return;
  }

  if ((v31 & 1) == 0)
  {
    v38.origin.x = a1;
    v38.origin.y = a2;
    v38.size.width = a3;
    v38.size.height = a4;
    CGRectGetMinY(v38);
    goto LABEL_18;
  }

  if ((v29 & 1) == 0)
  {
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMaxY(v37);
    goto LABEL_18;
  }
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24F14E634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F14E688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

UIImage_optional __swiftcall Wordmark.asset(in:)(UITraitCollection in)
{
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F22B5B8;
  v3 = sub_24F92B098();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2 compatibleWithTraitCollection:in.super.isa];

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t Wordmark.hashValue.getter()
{
  sub_24F92D068();
  MEMORY[0x253052A00](0);
  return sub_24F92D0B8();
}

unint64_t sub_24F14E874()
{
  result = qword_27F23A370;
  if (!qword_27F23A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A370);
  }

  return result;
}

uint64_t *TodayCardMediaMediumLockupWithAlignedRegion.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v48 = sub_24F928388();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v36 - v19;
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v36 - v22;
  sub_24F929608();
  sub_24F928398();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_24F929548();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_24F928398();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for MediumAdLockupWithAlignedRegionBackground(0);
  swift_allocObject();
  v28 = v42;
  v29 = MediumAdLockupWithAlignedRegionBackground.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit43TodayCardMediaMediumLockupWithAlignedRegion_mediumAdLockupWithAlignedRegionBackground) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
  }

  return v30;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.__allocating_init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaMediumLockupWithAlignedRegion.init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit43TodayCardMediaMediumLockupWithAlignedRegion_mediumAdLockupWithAlignedRegionBackground) = a1;
  v13 = sub_24F929608();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  v18 = v25;
  *(v3 + 32) = v24;
  *(v3 + 48) = v18;
  *(v3 + 64) = v26;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 13;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion(uint64_t a1)
{
  result = qword_27F23A378;
  if (!qword_27F23A378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F14F380@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for VideoCard(0);
  *a1 = v1;
}

uint64_t type metadata accessor for VideoCard(uint64_t a1)
{
  result = qword_27F23A390;
  if (!qword_27F23A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VideoCard.__allocating_init(id:video:lockup:overlayStyle:clickAction:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a6;
  v27 = a2;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a4;
  sub_24E60169C(a1, &v30, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v31 + 1))
  {
    v17 = v31;
    *(v15 + 56) = v30;
    *(v15 + 72) = v17;
    *(v15 + 88) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v24 = a7;
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v28 = v18;
    v29 = v20;
    a7 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a7, v15 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics);
  *(v15 + 16) = v27;
  *(v15 + 24) = a3;
  *(v15 + 32) = v16;
  v21 = v26;
  *(v15 + 40) = v25;
  *(v15 + 48) = v21;
  return v15;
}

uint64_t VideoCard.init(id:video:lockup:overlayStyle:clickAction:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  sub_24E60169C(a1, &v31, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v25 = a7;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v29 = v18;
    v30 = v20;
    a7 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v21 = v35;
  *(v8 + 56) = v34;
  *(v8 + 72) = v21;
  *(v8 + 88) = v36;
  sub_24E65E0D4(a7, v8 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics);
  *(v8 + 16) = v28;
  *(v8 + 24) = a3;
  *(v8 + 32) = v17;
  v22 = v27;
  *(v8 + 40) = v26;
  *(v8 + 48) = v22;
  return v8;
}

uint64_t VideoCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VideoCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t VideoCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v73 = a2;
  v70 = sub_24F9285B8();
  v74 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v60 - v5;
  MEMORY[0x28223BE20](v6);
  v71 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v60 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v72 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v69 = v14;
  v67 = v15;
  if (v24)
  {
    v76 = v23;
    v77 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v76 = v25;
    v77 = v27;
  }

  sub_24F92C7F8();
  v66 = *(v15 + 8);
  v66(v22, v14);
  v28 = v79;
  v29 = v75;
  *(v75 + 56) = v78;
  *(v29 + 72) = v28;
  *(v29 + 88) = v80;
  v62 = sub_24F929608();
  sub_24F928398();
  v30 = v73;
  v32 = v74 + 16;
  v31 = *(v74 + 16);
  v33 = v70;
  v31(v71, v73, v70);
  v34 = v64;
  sub_24F929548();
  v62 = OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics;
  v35 = v29 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics;
  v36 = v33;
  sub_24E65E0D4(v34, v35);
  v37 = v81;
  v31(v81, v30, v33);
  v38 = v63;
  sub_24F928398();
  v39 = v65;
  v64 = v19;
  v40 = v33;
  v41 = v32;
  v31(v65, v37, v40);
  type metadata accessor for Video(0);
  swift_allocObject();
  v42 = v68;
  v43 = Video.init(deserializing:using:)(v38, v39);
  if (v42)
  {
    v44 = *(v74 + 8);
    v44(v73, v36);
    v66(v72, v69);
    v44(v81, v36);
    v45 = v75;
    sub_24E6585F8(v75 + 56);
    sub_24E601704(v45 + v62, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for VideoCard(0);
    swift_deallocPartialClassInstance();
    return v45;
  }

  else
  {
    v47 = v75;
    *(v75 + 16) = v43;
    v48 = v47;
    type metadata accessor for Lockup(0);
    v49 = v64;
    v68 = 0;
    v50 = v72;
    sub_24F928398();
    v61 = v31;
    v60 = v41;
    v31(v71, v81, v36);
    sub_24F15048C(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    sub_24F929548();
    *(v48 + 24) = v78;
    v51 = v50;
    sub_24F928398();
    sub_24EA303C8();
    sub_24F928208();
    v52 = v66;
    v53 = v67 + 8;
    v54 = v69;
    v66(v49, v69);
    v67 = v53;
    *(v48 + 32) = v78;
    type metadata accessor for Action(0);
    v55 = v51;
    sub_24F928398();
    v56 = v81;
    v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v81);
    v52(v49, v54);
    *(v48 + 40) = v57;
    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_24F928398();
    v58 = v70;
    v61(v71, v56, v70);
    sub_24F15048C(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
    sub_24F929548();
    v59 = *(v74 + 8);
    v59(v73, v58);
    v52(v55, v69);
    v59(v56, v58);
    result = v75;
    *(v75 + 48) = v78;
  }

  return result;
}

double sub_24F150068@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    v3 = &qword_27F23E358;
    v4 = &qword_27F23E360;
    if (qword_27F2110C8 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }
  }

  v5 = *v4;
  *a1 = *v3;
  a1[1] = v5;

  return result;
}

void sub_24F150100()
{
  if (*(v0 + 24))
  {
    swift_beginAccess();
  }
}

uint64_t VideoCard.deinit()
{

  sub_24E6585F8(v0 + 56);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t VideoCard.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 56);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9VideoCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F150260@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for VideoCard(0);
  v7 = swift_allocObject();
  result = VideoCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1502CC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for VideoCard(0);
  *a1 = v3;
}

double sub_24F150314@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    v3 = &qword_27F23E358;
    v4 = &qword_27F23E360;
    if (qword_27F2110C8 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }
  }

  v5 = *v4;
  *a1 = *v3;
  a1[1] = v5;

  return result;
}

void sub_24F1503B0()
{
  if (*(*v0 + 24))
  {
    swift_beginAccess();
  }
}

uint64_t sub_24F15048C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F1504DC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static UIColor.hex(_:)(uint64_t a1, uint64_t a2)
{
  sub_24E77ACC8();

  return sub_24F92C398();
}

uint64_t sub_24F1506F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for GameDetailsAnnotation(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F150800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GameDetailsAnnotation(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F150928(uint64_t a1)
{
  sub_24EF36C6C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameDetailsAnnotation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F1509C8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_24F925508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3B0, &qword_24F9CDAB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3B8, &qword_24F9CDAC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3C0, &qword_24F9CDAC8);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3C8, &qword_24F9CDAD0);
  sub_24F150D18(v1, &v8[*(v16 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v8, v12, &qword_27F23A3B0, &qword_24F9CDAB8);
  v17 = &v12[*(v10 + 44)];
  v18 = v30;
  *(v17 + 4) = v29;
  *(v17 + 5) = v18;
  *(v17 + 6) = v31;
  v19 = v26;
  *v17 = v25;
  *(v17 + 1) = v19;
  v20 = v28;
  *(v17 + 2) = v27;
  *(v17 + 3) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v12, v15, &qword_27F23A3B8, &qword_24F9CDAC0);
  v21 = &v15[*(v13 + 36)];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  sub_24F9254E8();
  sub_24F153A70();
  sub_24F926678();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v15, &qword_27F23A3C0, &qword_24F9CDAC8);
}

uint64_t sub_24F150D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3E8, &qword_24F9CDAD8);
  MEMORY[0x28223BE20](v55);
  v5 = &v51 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F0, &qword_24F9CDAE0);
  MEMORY[0x28223BE20](v56);
  v57 = &v51 - v6;
  v7 = type metadata accessor for AnnotationView.LeadingView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = a1 + *(type metadata accessor for AnnotationView(0) + 20);
  v20 = type metadata accessor for GameDetailsAnnotation(0);
  sub_24E60169C(v19 + *(v20 + 28), v58, &qword_27F214808, &unk_24F93DA38);
  if (*(&v58[0] + 1))
  {
    v71 = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v67 = v58[2];
    v68 = v58[3];
    v69 = v59;
    v70 = v60;
    v65 = v58[0];
    v66 = v58[1];
    v21 = *(&v61 + 1);
    v22 = v61;
    v54 = v5;
    v23 = *(&v59 + 1);
    v24 = v60;
    KeyPath = swift_getKeyPath();
    v53 = a2;
    *&v18[*(v7 + 36)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    *v18 = v23;
    *(v18 + 1) = v21;
    v18[16] = v22;
    v18[17] = 1;
    *(v18 + 24) = v24;
    *&v58[0] = 0x403C000000000000;
    sub_24E62C088();

    sub_24F9237C8();
    *&v58[0] = 0x404E000000000000;
    sub_24F9237C8();
    *&v58[0] = 0x4043000000000000;
    sub_24F9237C8();
    *&v58[0] = 0x4000000000000000;
    sub_24F9237C8();
    *&v58[0] = 0x4022000000000000;
    sub_24F9237C8();
    v26 = v65;
    v27 = v66;
    sub_24F154A2C(v18, v15, type metadata accessor for AnnotationView.LeadingView);
    v28 = v57;
    sub_24F154A2C(v15, v57, type metadata accessor for AnnotationView.LeadingView);
    v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A400, &qword_24F9CDB20) + 48);
    *v29 = 0;
    *(v29 + 8) = 1;
    *(v29 + 16) = v26;
    *(v29 + 32) = v27;

    sub_24F154A94(v15, type metadata accessor for AnnotationView.LeadingView);
    sub_24E60169C(v28, v54, &qword_27F23A3F0, &qword_24F9CDAE0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F23A408, &qword_27F23A3F0, &qword_24F9CDAE0, MEMORY[0x277CE14C0]);
    v30 = v53;
    sub_24F924E28();
    sub_24E601704(v28, &qword_27F23A3F0, &qword_24F9CDAE0);
    sub_24F154A94(v18, type metadata accessor for AnnotationView.LeadingView);
    sub_24EA4AD74(&v65);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F8, &qword_24F9CDAE8);
    return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }

  else
  {
    sub_24E601704(v58, &qword_27F2147D8, &unk_24F93D950);
    v33 = *(v19 + *(v20 + 32));
    if (v33)
    {
      v52 = OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage;
      v34 = *(v33 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage);
      v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      LODWORD(v36) = v34;
      v75.value.super.super.isa = [v35 initWithFloat_];
      isa = v75.value.super.super.isa;
      v75.is_nil = 1;
      v39 = localizedStringForDecimal(_:_:)(v75, v38);
      v53 = v33;
      countAndFlagsBits = v39.value._countAndFlagsBits;
      object = v39.value._object;

      v54 = v5;
      if (!v39.value._object)
      {
        countAndFlagsBits = sub_24F92BA88();
        object = v42;
      }

      *&v9[*(v7 + 36)] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 8) = 0;
      *(v9 + 3) = countAndFlagsBits;
      *(v9 + 4) = object;
      *&v65 = 0x403C000000000000;
      sub_24E62C088();
      sub_24F9237C8();
      *&v65 = 0x404E000000000000;
      sub_24F9237C8();
      *&v65 = 0x4043000000000000;
      sub_24F9237C8();
      *&v65 = 0x4000000000000000;
      sub_24F9237C8();
      *&v65 = 0x4022000000000000;
      sub_24F9237C8();
      sub_24F153BDC(v9, v12);
      v43 = *(v53 + v52);
      v44 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000013, 0x800000024FA451B0, *(v53 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings));
      v46 = v45;
      sub_24F154A2C(v12, v18, type metadata accessor for AnnotationView.LeadingView);
      v47 = v57;
      sub_24F154A2C(v18, v57, type metadata accessor for AnnotationView.LeadingView);
      v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A400, &qword_24F9CDB20) + 48);
      *v48 = v43;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      *(v48 + 24) = 0;
      *(v48 + 32) = v44;
      *(v48 + 40) = v46;

      sub_24F154A94(v18, type metadata accessor for AnnotationView.LeadingView);
      sub_24E60169C(v47, v54, &qword_27F23A3F0, &qword_24F9CDAE0);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F23A408, &qword_27F23A3F0, &qword_24F9CDAE0, MEMORY[0x277CE14C0]);
      sub_24F924E28();

      sub_24E601704(v47, &qword_27F23A3F0, &qword_24F9CDAE0);
      sub_24F154A94(v12, type metadata accessor for AnnotationView.LeadingView);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F8, &qword_24F9CDAE8);
      return (*(*(v49 - 8) + 56))(a2, 0, 1, v49);
    }

    else
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A3F8, &qword_24F9CDAE8);
      return (*(*(v50 - 8) + 56))(a2, 1, 1, v50);
    }
  }
}

uint64_t sub_24F15156C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A428, &qword_24F9CDC78);
  MEMORY[0x28223BE20](v1);
  v3 = v18 - v2;
  *v3 = sub_24F9249A8();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A430, &qword_24F9CDC80);
  sub_24F15174C(v0, &v3[*(v4 + 44)]);
  type metadata accessor for AnnotationView.LeadingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  v5 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A438, &qword_24F9CDC88) + 36)];
  v6 = v18[1];
  *v5 = v18[0];
  *(v5 + 1) = v6;
  *(v5 + 2) = v18[2];
  v7 = sub_24F925858();
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A440, &qword_24F9CDC90) + 36)];
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  *&v3[*(v1 + 36)] = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F15427C();
  sub_24F9265E8();
  return sub_24E601704(v3, &qword_27F23A428, &qword_24F9CDC78);
}

uint64_t sub_24F15174C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a1;
  v215 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v2 - 8);
  v176 = &v176 - v3;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v178 = &v176 - v4;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8, &unk_24F946390);
  MEMORY[0x28223BE20](v177);
  v180 = &v176 - v5;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217748, &qword_24F946300);
  MEMORY[0x28223BE20](v179);
  v184 = &v176 - v6;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A470, &qword_24F9CDCA0);
  MEMORY[0x28223BE20](v183);
  v186 = &v176 - v7;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A478, &qword_24F9CDCA8);
  MEMORY[0x28223BE20](v185);
  v188 = &v176 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A480, &qword_24F9CDCB0);
  MEMORY[0x28223BE20](v9);
  v187 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = &v176 - v12;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A488, &qword_24F9CDCB8);
  MEMORY[0x28223BE20](v208);
  v190 = (&v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v191 = (&v176 - v15);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A490, &qword_24F9CDCC0);
  MEMORY[0x28223BE20](v210);
  v17 = &v176 - v16;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A498, &qword_24F9CDCC8);
  MEMORY[0x28223BE20](v205);
  v206 = &v176 - v18;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4A0, &qword_24F9CDCD0);
  MEMORY[0x28223BE20](v209);
  v207 = &v176 - v19;
  v203 = sub_24F926E78();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v21 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v195 = &v176 - v23;
  v24 = sub_24F926E68();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v200 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v176 - v28;
  v199 = sub_24F9289E8();
  v30 = *(v199 - 8);
  v31 = *(v30 + 8);
  MEMORY[0x28223BE20](v199);
  v197 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v176 - v33;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4A8, &qword_24F9CDCD8);
  MEMORY[0x28223BE20](v201);
  v36 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v194 = &v176 - v38;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4B0, &qword_24F9CDCE0);
  MEMORY[0x28223BE20](v204);
  v193 = (&v176 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v196 = &v176 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4B8, &qword_24F9CDCE8);
  MEMORY[0x28223BE20](v42 - 8);
  v214 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v44);
  v46 = *v216;
  v212 = v9;
  v211 = v17;
  v213 = &v176 - v47;
  if (v46)
  {
    v48 = *MEMORY[0x277CE1020];
    v49 = *(v25 + 104);
    v50 = v46;
    v49(v29, v48, v24, v45);
    v192 = v50;

    sub_24E84AFA8(v29);
    (*(v25 + 8))(v29, v24);
    (v49)(v29, v48, v24);
    v191 = *(v30 + 4);
    v51 = v197;
    v52 = v199;
    (v191)(v197, v34, v199);
    v190 = *(v25 + 32);
    v53 = v200;
    (v190)(v200, v29, v24);
    v54 = (v30[80] + 16) & ~v30[80];
    v55 = (v31 + *(v25 + 80) + v54) & ~*(v25 + 80);
    v56 = v55 + v198;
    v57 = swift_allocObject();
    (v191)(v57 + v54, v51, v52);
    (v190)(v57 + v55, v53, v24);
    *(v57 + v56) = 0;
    v58 = v215;
    v59 = v202;
    v60 = MEMORY[0x277CE1050];
    if (!*(v216 + 16))
    {
      v60 = MEMORY[0x277CE1058];
    }

    v61 = v195;
    v62 = v203;
    (*(v202 + 104))(v195, *v60, v203);
    KeyPath = swift_getKeyPath();
    v64 = v194;
    v65 = &v194[*(v201 + 36)];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50);
    (*(v59 + 32))(v65 + *(v66 + 28), v61, v62);
    *v65 = KeyPath;
    *v64 = sub_24F154DE0;
    v64[1] = v57;
    type metadata accessor for AnnotationView.LeadingView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
    sub_24F9237D8();
    v67 = sub_24F925808();
    sub_24F923318();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v193;
    sub_24E6009C8(v64, v193, &qword_27F23A4A8, &qword_24F9CDCD8);
    v77 = &v76[*(v204 + 36)];
    *v77 = v67;
    *(v77 + 1) = v69;
    *(v77 + 2) = v71;
    *(v77 + 3) = v73;
    *(v77 + 4) = v75;
    v77[40] = 0;
    v78 = v196;
    sub_24E6009C8(v76, v196, &qword_27F23A4B0, &qword_24F9CDCE0);
    sub_24E60169C(v78, v206, &qword_27F23A4B0, &qword_24F9CDCE0);
    swift_storeEnumTagMultiPayload();
    sub_24F154504();
    sub_24F154674();
    v79 = v207;
    sub_24F924E28();
    sub_24E60169C(v79, v211, &qword_27F23A4A0, &qword_24F9CDCD0);
    swift_storeEnumTagMultiPayload();
    sub_24F154478();
    sub_24F154700();
    v80 = v213;
    sub_24F924E28();

    sub_24E601704(v79, &qword_27F23A4A0, &qword_24F9CDCD0);
    sub_24E601704(v78, &qword_27F23A4B0, &qword_24F9CDCE0);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0, &qword_24F9CDCF0);
    (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
    v82 = v80;
  }

  else
  {
    v194 = v36;
    v83 = v25;
    v84 = v24;
    v195 = v30;
    v196 = v21;
    v85 = v215;
    v86 = *(v216 + 8);
    if (v86)
    {
      v87 = *MEMORY[0x277CE1010];
      v88 = v83;
      v89 = *(v83 + 104);
      v89(v29, v87, v84, v45);

      sub_24E84AFA8(v29);
      (*(v88 + 8))(v29, v84);
      (v89)(v29, v87, v84);
      v90 = v195 + 32;
      v193 = *(v195 + 4);
      v195 = v86;
      v91 = v197;
      v92 = v199;
      (v193)(v197, v34, v199);
      v192 = *(v88 + 32);
      v93 = v200;
      v192(v200, v29, v84);
      v94 = (v90[48] + 16) & ~v90[48];
      v95 = (v31 + *(v88 + 80) + v94) & ~*(v88 + 80);
      v96 = v95 + v198;
      v97 = swift_allocObject();
      (v193)(v97 + v94, v91, v92);
      v192((v97 + v95), v93, v84);
      *(v97 + v96) = 0;
      v58 = v215;
      v98 = v202;
      v99 = MEMORY[0x277CE1050];
      if (!*(v216 + 16))
      {
        v99 = MEMORY[0x277CE1058];
      }

      v100 = v196;
      v101 = v203;
      (*(v202 + 104))(v196, *v99, v203);
      v102 = swift_getKeyPath();
      v103 = v194;
      v104 = &v194[*(v201 + 36)];
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50);
      (*(v98 + 32))(v104 + *(v105 + 28), v100, v101);
      *v104 = v102;
      *v103 = sub_24F1548D4;
      v103[1] = v97;
      sub_24F152F44();
      sub_24F152F44();
      sub_24F927618();
      sub_24F9238C8();
      v106 = v190;
      sub_24E6009C8(v103, v190, &qword_27F23A4A8, &qword_24F9CDCD8);
      v107 = &v106[*(v208 + 36)];
      v108 = v218;
      *v107 = v217;
      *(v107 + 1) = v108;
      *(v107 + 2) = v219;
      v109 = v191;
      sub_24E6009C8(v106, v191, &qword_27F23A488, &qword_24F9CDCB8);
      sub_24E60169C(v109, v206, &qword_27F23A488, &qword_24F9CDCB8);
      swift_storeEnumTagMultiPayload();
      sub_24F154504();
      sub_24F154674();
      v110 = v207;
      sub_24F924E28();
      sub_24E60169C(v110, v211, &qword_27F23A4A0, &qword_24F9CDCD0);
      swift_storeEnumTagMultiPayload();
      sub_24F154478();
      sub_24F154700();
      v82 = v213;
      sub_24F924E28();

      sub_24E601704(v110, &qword_27F23A4A0, &qword_24F9CDCD0);
      sub_24E601704(v109, &qword_27F23A488, &qword_24F9CDCB8);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0, &qword_24F9CDCF0);
      (*(*(v111 - 8) + 56))(v82, 0, 1, v111);
    }

    else
    {
      v112 = v216;
      v113 = *(v216 + 32);
      if (v113)
      {
        *&v217 = *(v216 + 24);
        *(&v217 + 1) = v113;
        sub_24E600AEC();

        v114 = sub_24F925E18();
        v116 = v115;
        v118 = v117;
        if (*(v112 + 17))
        {
          sub_24F925998();
        }

        else
        {
          sub_24F9258F8();
        }

        v120 = v176;
        v121 = sub_24F925C98();
        v123 = v122;
        v125 = v124;

        sub_24E600B40(v114, v116, v118 & 1);

        v126 = *MEMORY[0x277CE09A0];
        v127 = sub_24F925908();
        v128 = *(v127 - 8);
        (*(v128 + 104))(v120, v126, v127);
        (*(v128 + 56))(v120, 0, 1, v127);
        v129 = sub_24F925B68();
        v131 = v130;
        LOBYTE(v128) = v132;
        v134 = v133;
        sub_24E600B40(v121, v123, v125 & 1);

        sub_24E601704(v120, &qword_27F214698, &unk_24F95F810);
        *&v217 = v129;
        *(&v217 + 1) = v131;
        v135 = v128 & 1;
        LOBYTE(v218) = v128 & 1;
        *(&v218 + 1) = v134;
        v136 = v178;
        sub_24F9268B8();
        sub_24E600B40(v129, v131, v135);

        LOBYTE(v123) = sub_24F925868();
        type metadata accessor for AnnotationView.LeadingView(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
        sub_24F9237D8();
        sub_24F923318();
        v138 = v137;
        v140 = v139;
        v142 = v141;
        v144 = v143;
        v145 = v180;
        (*(v181 + 32))(v180, v136, v182);
        v146 = &v145[*(v177 + 36)];
        *v146 = v123;
        *(v146 + 1) = v138;
        *(v146 + 2) = v140;
        *(v146 + 3) = v142;
        *(v146 + 4) = v144;
        v146[40] = 0;
        LOBYTE(v120) = sub_24F9257F8();
        sub_24F923318();
        v148 = v147;
        v150 = v149;
        v152 = v151;
        v154 = v153;
        v155 = v145;
        v156 = v184;
        sub_24E6009C8(v155, v184, &qword_27F2177A8, &unk_24F946390);
        v157 = v156 + *(v179 + 36);
        *v157 = v120;
        *(v157 + 8) = v148;
        *(v157 + 16) = v150;
        *(v157 + 24) = v152;
        *(v157 + 32) = v154;
        *(v157 + 40) = 0;
        sub_24F9237D8();
        sub_24F927618();
        sub_24F9242E8();
        v158 = v186;
        sub_24E6009C8(v156, v186, &qword_27F217748, &qword_24F946300);
        v159 = (v158 + *(v183 + 36));
        v160 = v222;
        v159[4] = v221;
        v159[5] = v160;
        v159[6] = v223;
        v161 = v218;
        *v159 = v217;
        v159[1] = v161;
        v162 = v220;
        v159[2] = v219;
        v159[3] = v162;
        v163 = v188;
        sub_24E6009C8(v158, v188, &qword_27F23A470, &qword_24F9CDCA0);
        *(v163 + *(v185 + 36)) = 257;
        v164 = v187;
        v165 = &v187[*(v212 + 36)];
        sub_24F1530D8(v165);
        v166 = sub_24F927618();
        v168 = v167;
        v169 = (v165 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4D0, &qword_24F9CDD00) + 36));
        *v169 = v166;
        v169[1] = v168;
        sub_24E6009C8(v163, v164, &qword_27F23A478, &qword_24F9CDCA8);
        v170 = v189;
        sub_24E6009C8(v164, v189, &qword_27F23A480, &qword_24F9CDCB0);
        sub_24E60169C(v170, v211, &qword_27F23A480, &qword_24F9CDCB0);
        swift_storeEnumTagMultiPayload();
        sub_24F154478();
        sub_24F154700();
        v82 = v213;
        sub_24F924E28();
        sub_24E601704(v170, &qword_27F23A480, &qword_24F9CDCB0);
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0, &qword_24F9CDCF0);
        (*(*(v171 - 8) + 56))(v82, 0, 1, v171);
        v58 = v215;
      }

      else
      {
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C0, &qword_24F9CDCF0);
        v82 = v213;
        (*(*(v119 - 8) + 56))(v213, 1, 1, v119);
        v58 = v85;
      }
    }
  }

  v172 = v214;
  sub_24E60169C(v82, v214, &qword_27F23A4B8, &qword_24F9CDCE8);
  *v58 = 0;
  *(v58 + 8) = 0;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A4C8, &qword_24F9CDCF8);
  sub_24E60169C(v172, v58 + *(v173 + 48), &qword_27F23A4B8, &qword_24F9CDCE8);
  v174 = v58 + *(v173 + 64);
  *v174 = 0;
  *(v174 + 8) = 0;
  sub_24E601704(v82, &qword_27F23A4B8, &qword_24F9CDCE8);
  return sub_24E601704(v172, &qword_27F23A4B8, &qword_24F9CDCE8);
}

uint64_t sub_24F152F44()
{
  v1 = sub_24F922348();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v11[2] = v6;
  v11[3] = v7;

  if (Artwork.URLTemplate.isBundleImage.getter() || (v11[0] = v6, v11[1] = v7, Artwork.URLTemplate.isSystemImage.getter()))
  {

    return 0;
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  type metadata accessor for AnnotationView.LeadingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  sub_24F9222F8();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  sub_24F9237D8();

  return v10;
}

uint64_t sub_24F1530D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = sub_24F924258();
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A518, &qword_24F9CDD38);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  if (*(v1 + 17) == 1)
  {
    v14 = *(v6 + 20);
    v15 = *MEMORY[0x277CE0118];
    v35 = v10;
    v16 = sub_24F924B38();
    (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
    __asm { FMOV            V0.2D, #5.0 }

    *v8 = _Q0;
    LODWORD(v15) = sub_24F9251C8();
    v22 = *(v3 + 36);
    v23 = *MEMORY[0x277CE13B8];
    v24 = sub_24F927748();
    (*(*(v24 - 8) + 104))(&v5[v22], v23, v24);
    *v5 = v15;
    sub_24F923658();
    v25 = MEMORY[0x277CDFC08];
    sub_24F154A2C(v8, v13, MEMORY[0x277CDFC08]);
    v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8, &qword_24FA00310) + 36)];
    v27 = v37;
    *v26 = v36;
    *(v26 + 1) = v27;
    *(v26 + 4) = v38;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A520, &qword_24F9CDD40);
    sub_24E60169C(v5, &v13[*(v28 + 52)], &qword_27F213F10, &unk_24F93BE10);
    *&v13[*(v28 + 56)] = 256;
    v29 = sub_24F927618();
    v31 = v30;
    sub_24E601704(v5, &qword_27F213F10, &unk_24F93BE10);
    sub_24F154A94(v8, v25);
    v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A528, &qword_24F9CDD48) + 36)];
    *v32 = v29;
    v32[1] = v31;
    sub_24E6009C8(v13, a1, &qword_27F23A518, &qword_24F9CDD38);
    return (*(v35 + 56))(a1, 0, 1, v9);
  }

  else
  {
    v34 = *(v10 + 56);

    return v34(a1, 1, 1, v9, v11);
  }
}

double sub_24F153498@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24F924C98();
  v24 = 0;
  sub_24F153650(v3, &v16);
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v32[0] = v16;
  v32[1] = v17;
  v32[2] = v18;
  v32[3] = v19;
  v32[4] = v20;
  v32[5] = v21;
  v32[6] = v22;
  sub_24E60169C(&v25, &v15, &qword_27F23A420, &qword_24F9CDC10);
  sub_24E601704(v32, &qword_27F23A420, &qword_24F9CDC10);
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v23[39] = v27;
  v6 = v24;
  KeyPath = swift_getKeyPath();
  v8 = sub_24F925898();
  v9 = swift_getKeyPath();
  v10 = *&v23[80];
  *(a2 + 81) = *&v23[64];
  *(a2 + 97) = v10;
  *(a2 + 113) = *&v23[96];
  v11 = *&v23[16];
  *(a2 + 17) = *v23;
  *(a2 + 33) = v11;
  result = *&v23[32];
  v13 = *&v23[48];
  *(a2 + 49) = *&v23[32];
  *a2 = v5;
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = v6;
  v14 = *&v23[111];
  *(a2 + 65) = v13;
  *(a2 + 128) = v14;
  *(a2 + 136) = KeyPath;
  *(a2 + 144) = 1;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0x3FF0000000000000;
  *(a2 + 168) = v9;
  *(a2 + 176) = v8;
  return result;
}

double sub_24F153650@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  if (a1[1])
  {
    v52 = 0;
    v6 = 0;
    v55 = 0;
    v56 = 0;
    v7 = a1[3];
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v52 = *a1;
    v56 = sub_24F9259D8();
    v55 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v6 = 5;
    v7 = a1[3];
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_10:
    v53 = 0;
    v54 = 0;
    v50 = 0;
    v51 = 0;
    v14 = a1[5];
    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v57 = a1[2];
  v58 = v7;
  sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v54 = v9;
  v50 = v12 & 1;
  v51 = v13;
  sub_24E5FD138(v9, v13, v12 & 1);
  v53 = v11;

  v14 = a1[5];
  if (v14)
  {
LABEL_11:
    v57 = a1[4];
    v58 = v14;
    sub_24E600AEC();

    v19 = sub_24F925E18();
    v21 = v20;
    v23 = v22;
    v24 = sub_24F9251C8();
    v25 = *(v3 + 36);
    v26 = *MEMORY[0x277CE13B8];
    v27 = sub_24F927748();
    (*(*(v27 - 8) + 104))(&v5[v25], v26, v27);
    *v5 = v24;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v28 = sub_24F925C58();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24E600B40(v19, v21, v23 & 1);

    sub_24E601704(v5, &qword_27F213F10, &unk_24F93BE10);
    v35 = v32 & 1;
    v15 = v28;
    v16 = v30;
    v17 = v32 & 1;
    sub_24E5FD138(v28, v30, v35);
    v18 = v34;

    goto LABEL_12;
  }

LABEL_9:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_12:
  v36 = v52;
  v37 = v56;
  sub_24F1541F4(v52, v6, 0, 0, v56);
  sub_24F1541F4(v36, v6, 0, 0, v37);
  v39 = v53;
  v38 = v54;
  v40 = v50;
  v41 = v51;
  sub_24E65D2B4(v54, v51, v50, v53);
  sub_24E65D2B4(v15, v16, v17, v18);
  sub_24E65D2F8(v38, v41, v40, v39);
  sub_24E65D2F8(v15, v16, v17, v18);
  v43 = v55;
  v42 = v56;
  sub_24F154238(v36, v6, 0, 0, v56);
  v44 = v49;
  *v49 = v36;
  v44[1] = v6;
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v42;
  v44[5] = v43;
  v46 = v53;
  v45 = v54;
  v44[6] = v54;
  v44[7] = v41;
  v44[8] = v40;
  v44[9] = v46;
  v44[10] = v15;
  v44[11] = v16;
  v44[12] = v17;
  v44[13] = v18;
  sub_24E65D2F8(v15, v16, v17, v18);
  sub_24E65D2F8(v45, v41, v40, v46);
  return sub_24F154238(v36, v6, 0, 0, v56);
}

unint64_t sub_24F153A70()
{
  result = qword_27F23A3D0;
  if (!qword_27F23A3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A3C0, &qword_24F9CDAC8);
    sub_24F153AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A3D0);
  }

  return result;
}

unint64_t sub_24F153AFC()
{
  result = qword_27F23A3D8;
  if (!qword_27F23A3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A3B8, &qword_24F9CDAC0);
    sub_24E602068(&qword_27F23A3E0, &qword_27F23A3B0, &qword_24F9CDAB8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A3D8);
  }

  return result;
}

uint64_t sub_24F153BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationView.LeadingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F153C40(uint64_t a1, unsigned int a2)
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

uint64_t sub_24F153C9C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24F153D20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_24F153E7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F153FB8(uint64_t a1)
{
  sub_24F1540E4(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24F1540E4(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EF36C6C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F1540E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F154148()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A3C0, &qword_24F9CDAC8);
  sub_24F153A70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F1541F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

double sub_24F154238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_24F15427C()
{
  result = qword_27F23A448;
  if (!qword_27F23A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A428, &qword_24F9CDC78);
    sub_24F154334();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A448);
  }

  return result;
}

unint64_t sub_24F154334()
{
  result = qword_27F23A450;
  if (!qword_27F23A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A440, &qword_24F9CDC90);
    sub_24F1543C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A450);
  }

  return result;
}

unint64_t sub_24F1543C0()
{
  result = qword_27F23A458;
  if (!qword_27F23A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A438, &qword_24F9CDC88);
    sub_24E602068(&qword_27F23A460, &qword_27F23A468, &qword_24F9CDC98, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A458);
  }

  return result;
}

unint64_t sub_24F154478()
{
  result = qword_27F23A4D8;
  if (!qword_27F23A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A4A0, &qword_24F9CDCD0);
    sub_24F154504();
    sub_24F154674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4D8);
  }

  return result;
}

unint64_t sub_24F154504()
{
  result = qword_27F23A4E0;
  if (!qword_27F23A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A4B0, &qword_24F9CDCE0);
    sub_24F154590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4E0);
  }

  return result;
}

unint64_t sub_24F154590()
{
  result = qword_27F23A4E8;
  if (!qword_27F23A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A4A8, &qword_24F9CDCD8);
    sub_24E602068(&qword_27F22A6B0, &qword_27F22A6B8, &qword_24F987990, MEMORY[0x277CDF7D8]);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4E8);
  }

  return result;
}

unint64_t sub_24F154674()
{
  result = qword_27F23A4F0;
  if (!qword_27F23A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A488, &qword_24F9CDCB8);
    sub_24F154590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4F0);
  }

  return result;
}

unint64_t sub_24F154700()
{
  result = qword_27F23A4F8;
  if (!qword_27F23A4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A480, &qword_24F9CDCB0);
    sub_24F1547B8();
    sub_24E602068(&qword_27F23A510, &qword_27F23A4D0, &qword_24F9CDD00, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A4F8);
  }

  return result;
}

unint64_t sub_24F1547B8()
{
  result = qword_27F23A500;
  if (!qword_27F23A500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A478, &qword_24F9CDCA8);
    sub_24F154844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A500);
  }

  return result;
}

unint64_t sub_24F154844()
{
  result = qword_27F23A508;
  if (!qword_27F23A508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A470, &qword_24F9CDCA0);
    sub_24EAAD76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A508);
  }

  return result;
}

uint64_t objectdestroyTm_53()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F926E68();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F154A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F154A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F154AF8()
{
  result = qword_27F23A530;
  if (!qword_27F23A530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A538, &qword_24F9CDD50);
    sub_24F154BB0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A530);
  }

  return result;
}

unint64_t sub_24F154BB0()
{
  result = qword_27F23A540;
  if (!qword_27F23A540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A548, &qword_24F9CDD58);
    sub_24F154C68();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578, &unk_24F9EE3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A540);
  }

  return result;
}

unint64_t sub_24F154C68()
{
  result = qword_27F23A550;
  if (!qword_27F23A550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A558, &qword_24F9CDD60);
    sub_24E602068(&qword_27F23A560, &qword_27F23A568, &qword_24F9CDD68, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A550);
  }

  return result;
}

unint64_t sub_24F154D50()
{
  result = qword_27F23A580;
  if (!qword_27F23A580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A588, &unk_24F9CDD70);
    sub_24F15427C();
    sub_24E99DD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A580);
  }

  return result;
}

uint64_t sub_24F154E08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsSummary(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590, &qword_24F9CDDE8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F154FA0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsSummary(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590, &qword_24F9CDDE8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for GameDetailsSummaryCard(uint64_t a1)
{
  result = qword_27F23A598;
  if (!qword_27F23A598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F155170(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24F155274(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GameDetailsSummary(319);
        if (v4 <= 0x3F)
        {
          sub_24F155274(319, &qword_27F23A5A8, type metadata accessor for GameDetailsDeveloper);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F155274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F1552C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590, &qword_24F9CDDE8);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v34 - v4;
  v38 = type metadata accessor for GameDetailsSummary(0);
  MEMORY[0x28223BE20](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A620, &unk_24F9CDFF0);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for GameDetailsSummaryCard(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v45 = v15 + 40;
  sub_24E61DA68(&v48, (v15 + 40), qword_27F21B590, &unk_24F93BE30);
  v16 = *(v13 + 24);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v44 = v16;
  v18(&v15[v16], 1, 1, v17);
  v41 = v13;
  v19 = *(v13 + 32);
  v20 = type metadata accessor for GameDetailsDeveloper(0);
  v21 = *(*(v20 - 8) + 56);
  v46 = v19;
  v21(&v15[v19], 1, 1, v20);
  v22 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F156BEC();
  v42 = v12;
  v23 = v43;
  sub_24F92D108();
  if (v23)
  {
    v25 = v44;
    v26 = v45;
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_24E601704(v26, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v15[v25], &qword_27F213E68, &unk_24F93BC80);
    return sub_24E601704(&v15[v46], &qword_27F23A590, &qword_24F9CDDE8);
  }

  else
  {
    v34 = v20;
    v35 = v6;
    v43 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v24 = v40;
    sub_24F92CC68();
    v27 = v49;
    *v15 = v48;
    *(v15 + 1) = v27;
    *(v15 + 4) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v51 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v44;
    sub_24E61DA68(&v48, v45, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v48) = 2;
    sub_24F156E68(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v29 = v43;
    sub_24F92CC18();
    v30 = v39;
    sub_24E61DA68(v29, &v15[v28], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v48) = 3;
    sub_24F156E68(&qword_27F23A630, type metadata accessor for GameDetailsSummary, &unk_24F93D648);
    v31 = v35;
    sub_24F92CC68();
    sub_24F156C40(v31, &v15[*(v41 + 28)], type metadata accessor for GameDetailsSummary);
    LOBYTE(v48) = 4;
    sub_24F156E68(&qword_27F23A638, type metadata accessor for GameDetailsDeveloper, &unk_24F9F3E98);
    v32 = v37;
    sub_24F92CC18();
    (*(v30 + 8))(v42, v24);
    sub_24E61DA68(v32, &v15[v46], &qword_27F23A590, &qword_24F9CDDE8);
    sub_24F156CA8(v15, v36);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_24F156D0C(v15, type metadata accessor for GameDetailsSummaryCard);
  }
}

unint64_t sub_24F155A00()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x7972616D6D7573;
  if (v1 != 3)
  {
    v4 = 0x65706F6C65766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F155A94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F156FB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F155ABC(uint64_t a1)
{
  v2 = sub_24F156BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F155AF8(uint64_t a1)
{
  v2 = sub_24F156BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F155B9C@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a5;
  v94 = a4;
  v95 = a3;
  v104 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5D0, &qword_24F9CDF98);
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x28223BE20](v8);
  v86 = v75 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5D8, &qword_24F9CDFA0);
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = v75 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5E0, &unk_24F9CDFA8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = v75 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598, &qword_24F978EC0);
  MEMORY[0x28223BE20](v77);
  v81 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A590, &qword_24F9CDDE8);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = v75 - v18;
  v93 = type metadata accessor for GameDetailsDeveloper(0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v98 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5E8, &qword_24F9CDFB8);
  MEMORY[0x28223BE20](v20 - 8);
  v101 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v100 = v75 - v23;
  v24 = sub_24F9241F8();
  v87 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5F0, &qword_24F9CDFC0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v75 - v29;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5F8, &qword_24F9CDFC8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v32 = v75 - v31;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A600, &qword_24F9CDFD0);
  MEMORY[0x28223BE20](v89);
  v97 = v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v75 - v35;
  MEMORY[0x28223BE20](v37);
  v105 = v75 - v38;
  *&v109 = a1;
  BYTE8(v109) = a2 & 1;
  v88 = type metadata accessor for GameDetailsSummaryCard(0);
  v39 = sub_24E630740();
  sub_24F921D38();
  sub_24F9241E8();
  *&v109 = &type metadata for GameDetailsSummaryComponent;
  *(&v109 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v75[1] = sub_24F156E68(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_24F926178();
  v40 = *(v87 + 8);
  v76 = v26;
  v41 = v26;
  v42 = v40;
  v87 = v24;
  v40(v41, v24);
  (*(v28 + 8))(v30, v27);
  sub_24F9275F8();
  sub_24F9242E8();
  (*(v90 + 32))(v36, v32, v91);
  v43 = &v36[*(v89 + 36)];
  v44 = v114;
  *(v43 + 4) = v113;
  *(v43 + 5) = v44;
  *(v43 + 6) = v115;
  v45 = v110;
  *v43 = v109;
  *(v43 + 1) = v45;
  v46 = v112;
  *(v43 + 2) = v111;
  *(v43 + 3) = v46;
  sub_24E6009C8(v36, v105, &qword_27F23A600, &qword_24F9CDFD0);
  v47 = v96;
  sub_24E60169C(v106 + *(v88 + 32), v96, &qword_27F23A590, &qword_24F9CDDE8);
  if ((*(v92 + 48))(v47, 1, v93) == 1)
  {
    sub_24E601704(v47, &qword_27F23A590, &qword_24F9CDDE8);
    v48 = 1;
    v49 = v100;
  }

  else
  {
    sub_24F156C40(v47, v98, type metadata accessor for GameDetailsDeveloper);
    v50 = v99;
    sub_24F9271E8();
    v51 = sub_24F9251C8();
    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0, &qword_24F93D200) + 36)) = v51;
    v52 = *(v77 + 36);
    v53 = *MEMORY[0x277CE13B8];
    v54 = sub_24F927748();
    (*(*(v54 - 8) + 104))(v50 + v52, v53, v54);
    v55 = sub_24F156B98();
    v56 = v78;
    sub_24F921D38();
    v57 = v76;
    sub_24F9241E8();
    v107 = &type metadata for GameDetailsDeveloperComponent;
    v108 = v55;
    swift_getOpaqueTypeConformance2();
    v58 = v80;
    v59 = v82;
    v60 = v87;
    sub_24F926178();
    v42(v57, v60);
    (*(v79 + 8))(v56, v59);
    v61 = v81;
    sub_24E60169C(v50, v81, &qword_27F214598, &qword_24F978EC0);
    v62 = v84;
    v63 = *(v84 + 16);
    v64 = v83;
    v65 = v85;
    v63(v83, v58, v85);
    v66 = v86;
    sub_24E60169C(v61, v86, &qword_27F214598, &qword_24F978EC0);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A618, &qword_24F9CDFE8);
    v63((v66 + *(v67 + 48)), v64, v65);
    v68 = *(v62 + 8);
    v68(v58, v65);
    sub_24E601704(v99, &qword_27F214598, &qword_24F978EC0);
    sub_24F156D0C(v98, type metadata accessor for GameDetailsDeveloper);
    v68(v64, v65);
    sub_24E601704(v61, &qword_27F214598, &qword_24F978EC0);
    v49 = v100;
    sub_24E6009C8(v66, v100, &qword_27F23A5D0, &qword_24F9CDF98);
    v48 = 0;
  }

  (*(v102 + 56))(v49, v48, 1, v103);
  v69 = v105;
  v70 = v97;
  sub_24E60169C(v105, v97, &qword_27F23A600, &qword_24F9CDFD0);
  v71 = v101;
  sub_24E60169C(v49, v101, &qword_27F23A5E8, &qword_24F9CDFB8);
  v72 = v104;
  sub_24E60169C(v70, v104, &qword_27F23A600, &qword_24F9CDFD0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A608, &unk_24F9CDFD8);
  sub_24E60169C(v71, v72 + *(v73 + 48), &qword_27F23A5E8, &qword_24F9CDFB8);
  sub_24E601704(v49, &qword_27F23A5E8, &qword_24F9CDFB8);
  sub_24E601704(v69, &qword_27F23A600, &qword_24F9CDFD0);
  sub_24E601704(v71, &qword_27F23A5E8, &qword_24F9CDFB8);
  return sub_24E601704(v70, &qword_27F23A600, &qword_24F9CDFD0);
}

double sub_24F1568A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5C0, &qword_24F9CDF58);
  sub_24F155B9C(v5, v6, v7, v8, a1, a2 + *(v9 + 44));
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A5C8, &qword_24F9CDF60) + 36);
  v11 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v12 = type metadata accessor for GradientBackground(0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  result = 26.0;
  *(v10 + 16) = xmmword_24F93CFD0;
  *(v10 + 32) = 0x4030000000000000;
  *(v10 + 40) = 256;
  return result;
}

unint64_t sub_24F156A90()
{
  result = qword_27F23A5B8;
  if (!qword_27F23A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A5B8);
  }

  return result;
}

unint64_t sub_24F156B98()
{
  result = qword_27F23A610;
  if (!qword_27F23A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A610);
  }

  return result;
}

unint64_t sub_24F156BEC()
{
  result = qword_27F23A628;
  if (!qword_27F23A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A628);
  }

  return result;
}

uint64_t sub_24F156C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F156CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsSummaryCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F156D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F156D80()
{
  result = qword_27F23A640;
  if (!qword_27F23A640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A5C8, &qword_24F9CDF60);
    sub_24E602068(&qword_27F23A648, &qword_27F23A650, &qword_24F9CE010, MEMORY[0x277CE1198]);
    sub_24F156E68(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A640);
  }

  return result;
}

uint64_t sub_24F156E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F156EB4()
{
  result = qword_27F23A658;
  if (!qword_27F23A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A658);
  }

  return result;
}

unint64_t sub_24F156F0C()
{
  result = qword_27F23A660;
  if (!qword_27F23A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A660);
  }

  return result;
}

unint64_t sub_24F156F64()
{
  result = qword_27F23A668;
  if (!qword_27F23A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A668);
  }

  return result;
}

uint64_t sub_24F156FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xE900000000000072)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *GenericPage.init(deserializing:using:)(char *a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v97 = a2;
  v100 = a1;
  v89 = *v2;
  v3 = sub_24F9285B8();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v90 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v80 - v6;
  MEMORY[0x28223BE20](v7);
  v84 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v96 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v80 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v80 - v23;
  v25 = sub_24F92AC28();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v83 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  v95 = v2;
  v93 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  sub_24F928398();
  sub_24F9282B8();
  v31 = v25;
  v87 = v15;
  v32 = v15 + 8;
  v33 = *(v15 + 8);
  v34 = v24;
  v35 = v14;
  v33(v34, v14);
  if ((v26[6])(v13, 1, v31) == 1)
  {
    sub_24E601704(v13, &qword_27F2213B0, &qword_24F965EC0);
    v36 = sub_24F92AC38();
    sub_24F159DE8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v37 = 0x7365766C656873;
    v38 = v89;
    v37[1] = 0xE700000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v98 + 8))(v97, v99);
    v33(v100, v14);

    type metadata accessor for GenericPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v98;
    v88 = v26;
    v89 = v31;
    (v26[4])(v30, v13, v31);
    sub_24F928398();
    v40 = sub_24F928278();
    v92 = v35;
    v82 = v33;
    v33(v21, v35);
    v81 = v40;
    v80 = v32;
    v41 = v30;
    if (v40)
    {
      v42 = v95;
      v43 = v84;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v44, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      v45 = v97;
      sub_24F928538();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      v46 = swift_allocObject();
      *(v46 + 16) = MEMORY[0x277D84F90];
      *&v101 = v46;
      v42 = v95;
      v43 = v84;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v47, qword_27F22D8D8);
      v45 = v97;
      sub_24F928528();
    }

    v48 = v96;
    v49 = v88;
    v50 = v43;
    v51 = v99;
    (*(v39 + 32))(v96, v50, v99);
    v52 = v49[2];
    v84 = v41;
    v52(v83, v41, v89);
    v53 = *(v39 + 16);
    v95 = (v39 + 16);
    v97 = v53;
    v53(v94, v48, v51);
    type metadata accessor for Shelf(0);
    sub_24F159DE8(&qword_27F2265E0, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v54 = sub_24F92B6A8();
    v55 = sub_24EEF0A68(v54);
    v57 = v56;

    *(v42 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v55;
    *(v42 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v57;
    v58 = v85;
    v59 = v100;
    sub_24F928398();
    v60 = sub_24F928348();
    v62 = v61;
    v63 = v92;
    v64 = v42;
    v65 = v82;
    v82(v58, v92);
    v66 = (v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    *v66 = v60;
    v66[1] = v62;
    v83 = type metadata accessor for Action(0);
    sub_24F928398();
    v67 = static Action.tryToMakeInstance(byDeserializing:using:)(v58, v45);
    v65(v58, v63);
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v67;
    sub_24F928398();
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v58);
    sub_24F928398();
    sub_24F928368();
    v65(v58, v63);
    v68 = (v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage);
    v69 = v102;
    *v68 = v101;
    v68[1] = v69;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v70 = v99;
    v97(v94, v45, v99);
    sub_24F159DE8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v71 = v103;
    v72 = v93;
    swift_beginAccess();
    *(v64 + v72) = v71;

    sub_24F928398();
    v73 = static Action.tryToMakeInstance(byDeserializing:using:)(v58, v45);
    v74 = v92;
    v65(v58, v92);
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = v73;
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v81 & 1;
    v75 = v86;
    (*(v87 + 16))(v86, v59, v74);
    v76 = v90;
    v97(v90, v45, v70);
    v77 = v91;
    v26 = BasePage.init(deserializing:using:)(v75, v76);
    if (v77)
    {
      v26 = *(v98 + 8);
      (v26)(v45, v70);
      v65(v59, v74);
      (v26)(v96, v70);
    }

    else
    {
      v78 = *(v98 + 8);
      v78(v45, v70);
      v65(v59, v74);
      v78(v96, v70);
    }

    (v88[1])(v84, v89);
  }

  return v26;
}

uint64_t type metadata accessor for GenericPage(uint64_t a1)
{
  result = qword_27F23A670;
  if (!qword_27F23A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  LODWORD(v62) = a7;
  v69 = a6;
  v58 = a3;
  v59 = a5;
  v57 = a2;
  v64 = a13;
  v65 = a4;
  v63 = a12;
  v67 = a8;
  v68 = a11;
  v66 = a10;
  v61 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v16 - 8);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = sub_24F928818();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v29 = sub_24EEF0A68(a1);
  v31 = v30;

  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v29;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v31;
  v32 = (v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v33 = v58;
  *v32 = v57;
  v32[1] = v33;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v65;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v59;
  sub_24E60169C(v69, v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v62;
  swift_beginAccess();
  *(v14 + v28) = v67;

  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v60 = v25;
  v34 = *(v25 + 16);
  v34(v27, v68, v24);
  v35 = v64;
  sub_24E60169C(v64, v23, &qword_27F2218B0, &unk_24F975980);
  *(v14 + 16) = v66;
  v62 = v27;
  v34((v14 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v27, v24);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v63;
  sub_24E60169C(v23, v20, &qword_27F2218B0, &unk_24F975980);
  v36 = sub_24F9285B8();
  v58 = *(v36 - 8);
  v37 = *(v58 + 48);
  if (v37(v20, 1, v36) == 1)
  {

    sub_24E601704(v35, &qword_27F2218B0, &unk_24F975980);
    v38 = *(v60 + 8);
    v38(v68, v24);
    sub_24E601704(v69, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v23, &qword_27F2218B0, &unk_24F975980);
    v38(v62, v24);
    v39 = v20;
  }

  else
  {
    v55 = v37;
    v59 = v20;
    v40 = qword_27F2105F0;

    if (v40 != -1)
    {
      swift_once();
    }

    v57 = v24;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v41, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v42 = v70;
    v43 = v23;
    v44 = v58;
    if (v70)
    {
    }

    v45 = *(v44 + 8);
    v45(v59, v36);
    v46 = v62;
    if (!v42)
    {

      sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
      v50 = *(v60 + 8);
      v51 = v57;
      v50(v68, v57);
      sub_24E601704(v69, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v23, &qword_27F2218B0, &unk_24F975980);
      v50(v46, v51);
      return v14;
    }

    v47 = v56;
    sub_24E60169C(v23, v56, &qword_27F2218B0, &unk_24F975980);
    if (v55(v47, 1, v36) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
      v52 = *(v60 + 8);
      v53 = v57;
      v52(v68, v57);
      sub_24E601704(v69, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v43, &qword_27F2218B0, &unk_24F975980);
      v52(v46, v53);
      v45(v47, v36);
      return v14;
    }

    sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
    v48 = *(v60 + 8);
    v49 = v57;
    v48(v68, v57);
    sub_24E601704(v69, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v23, &qword_27F2218B0, &unk_24F975980);
    v48(v46, v49);
    v39 = v47;
  }

  sub_24E601704(v39, &qword_27F2218B0, &unk_24F975980);
  return v14;
}

uint64_t GenericPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t sub_24F15865C(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  sub_24F159E30(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;
}

void sub_24F1586E8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v38 - v6;
  v43 = sub_24F928818();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  v8 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = MEMORY[0x277D84F90];
  v47[0] = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  v13 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (v12)
  {
    v14 = 0;
    v15 = v10 + 32;
    v39 = v12 - 1;
    v41 = v8;
    v40 = v10 + 32;
    while (1)
    {
      v16 = v15 + 40 * v14;
      v17 = v14;
      while (1)
      {
        if (v17 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        sub_24E65864C(v16, v48);
        if (*(*(a1 + v13) + 16))
        {
          break;
        }

LABEL_4:
        ++v17;
        sub_24E6585F8(v48);
        v16 += 40;
        if (v12 == v17)
        {
          v8 = v41;
          goto LABEL_14;
        }
      }

      sub_24E76D934(v48);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = sub_24E6585F8(v48);
      MEMORY[0x253050F00](v19);
      if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v14 = v17 + 1;
      sub_24F92B638();
      v11 = v47[0];
      v8 = v41;
      v15 = v40;
      if (v39 == v17)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_4;
  }

LABEL_14:

  v48[0] = v8;
  sub_24EA0AE3C(v11);
  v20 = v48[0];
  v21 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  if (v21)
  {
    v41 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v40 = v21;
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    v41 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v40 = v22;
  }

  v23 = v43;
  v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction);
  v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v48, &qword_27F2129B0, &unk_24F945320);
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) == 1)
  {
    LODWORD(v39) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
  }

  else
  {
    LODWORD(v39) = 0;
  }

  v26 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (!v27)
  {
    v28 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v27 = *(a1 + v28);
  }

  v29 = v2[2];
  v43 = v25;
  v30 = *(a1 + 16);

  if (v29)
  {
    v30 = sub_24ED64DBC(v30);
  }

  else
  {
  }

  v31 = v24;
  v32 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v33 = v44;
  (*(v42 + 16))(v44, v2 + v32, v23);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v35 = sub_24F9285B8();
  v36 = v45;
  (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
  v37 = *(v46 + 224);

  v37(v20, v41, v40, v31, v43, v48, v39, v27, 0, v30, v33, v34, v36);
}

uint64_t GenericPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(v66) = a7;
  v63 = a3;
  v64 = a5;
  v62 = a2;
  v69 = a13;
  v70 = a8;
  v67 = a4;
  v68 = a12;
  v72 = a11;
  v73 = a6;
  v71 = a10;
  v65 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = sub_24F928818();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v28 = sub_24EEF0A68(a1);
  v30 = v29;

  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v28;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v30;
  v31 = (v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v32 = v63;
  *v31 = v62;
  v31[1] = v32;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v67;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v64;
  sub_24E60169C(v73, v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v66;
  swift_beginAccess();
  *(v26 + v27) = v70;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v64 = v23;
  v33 = *(v23 + 16);
  v33(v25, v72, v22);
  v34 = v69;
  sub_24E60169C(v69, v21, &qword_27F2218B0, &unk_24F975980);
  *(v26 + 16) = v71;
  v33((v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v25, v22);
  *(v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v68;
  v66 = v21;
  sub_24E60169C(v21, v18, &qword_27F2218B0, &unk_24F975980);
  v35 = sub_24F9285B8();
  v62 = *(v35 - 8);
  v36 = *(v62 + 48);
  if (v36(v18, 1, v35) == 1)
  {

    sub_24E601704(v34, &qword_27F2218B0, &unk_24F975980);
    v37 = *(v64 + 8);
    v37(v72, v22);
    sub_24E601704(v73, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v66, &qword_27F2218B0, &unk_24F975980);
    v37(v25, v22);
    v38 = v18;
  }

  else
  {
    v58 = v36;
    v59 = v25;
    v63 = v18;
    v39 = v64;
    v40 = qword_27F2105F0;

    if (v40 != -1)
    {
      swift_once();
    }

    v60 = v22;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v41, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v42 = v74;
    v43 = v72;
    v44 = v62;
    if (v74)
    {
    }

    v45 = *(v44 + 8);
    v45(v63, v35);
    v46 = v61;
    if (!v42)
    {

      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v51 = *(v39 + 8);
      v52 = v43;
      v53 = v60;
      v51(v52, v60);
      sub_24E601704(v73, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v66, &qword_27F2218B0, &unk_24F975980);
      v51(v59, v53);
      return v26;
    }

    v47 = v66;
    sub_24E60169C(v66, v61, &qword_27F2218B0, &unk_24F975980);
    if (v58(v46, 1, v35) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v54 = *(v39 + 8);
      v55 = v60;
      v54(v43, v60);
      sub_24E601704(v73, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v47, &qword_27F2218B0, &unk_24F975980);
      v54(v59, v55);
      v45(v46, v35);
      return v26;
    }

    sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
    v48 = *(v39 + 8);
    v49 = v43;
    v50 = v60;
    v48(v49, v60);
    sub_24E601704(v73, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v47, &qword_27F2218B0, &unk_24F975980);
    v48(v59, v50);
    v38 = v46;
  }

  sub_24E601704(v38, &qword_27F2218B0, &unk_24F975980);
  return v26;
}

uint64_t sub_24F1593AC(uint64_t a1, uint64_t *a2)
{
  result = sub_24F928348();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    if (result == 0xD000000000000011 && 0x800000024FA6D870 == v4 || (sub_24F92CE08() & 1) != 0)
    {

      if (*a2)
      {
        return result;
      }

      v7 = *a2 | 1;
      goto LABEL_7;
    }

    if (v5 == 0xD000000000000019 && 0x800000024FA6D890 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 2) == 0)
      {
        v7 = *a2 | 2;
LABEL_7:
        *a2 = v7;
      }
    }

    else if (v5 == 0xD000000000000025 && 0x800000024FA6D8B0 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 4) == 0)
      {
        v7 = *a2 | 4;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD00000000000001ALL && 0x800000024FA6D8E0 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v7 = *a2 | 8;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000014 && 0x800000024FA6D900 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x10) == 0)
      {
        v7 = *a2 | 0x10;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD00000000000001CLL && 0x800000024FA6D920 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x20) == 0)
      {
        v7 = *a2 | 0x20;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000024 && 0x800000024FA6D940 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x40) == 0)
      {
        v7 = *a2 | 0x40;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000016 && 0x800000024FA6D970 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x80) == 0)
      {
        v7 = *a2 | 0x80;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000022 && 0x800000024FA6D990 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x100) == 0)
      {
        v7 = *a2 | 0x100;
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      v9[3] = MEMORY[0x277D837D0];
      v9[0] = v5;
      v9[1] = v6;
      sub_24F928438();
      sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5B8();
    }
  }

  return result;
}

uint64_t GenericPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);

  return v1;
}

double sub_24F15992C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_24F1599B4()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);

  return result;
}

uint64_t GenericPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F159B28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 312))(*a1);
  *a2 = result;
  return result;
}

uint64_t _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_24F9282B8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_24F928388();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_24E601704(v4, &qword_27F2213B0, &qword_24F965EC0);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    MEMORY[0x28223BE20](v10);
    *(&v13 - 2) = &v14;
    sub_24F92ABE8();
    v11 = sub_24F928388();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_24F159DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F159E30(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    sub_24E65864C(*(a1 + 48) + 40 * v13, v36);
    *(&v37 + 1) = *(*(a1 + 56) + 8 * v13);
    v33 = v36[0];
    v34 = v36[1];
    v35 = v37;
    v14 = *(&v37 + 1);

    v15 = a2(v14);
    if (v3)
    {
      break;
    }

    v16 = v15;
    v9 &= v9 - 1;
    if (v15)
    {
      v31 = v34;
      v32 = v35;
      v30 = v33;
      v17 = *(v5 + 16);
      if (*(v5 + 24) <= v17)
      {
        sub_24E899884(v17 + 1, 1);
        v5 = v38;
      }

      v18 = sub_24F92C7B8();
      v19 = v5 + 64;
      v20 = -1 << *(v5 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = *(v5 + 48) + 40 * v23;
      *v28 = v30;
      *(v28 + 16) = v31;
      *(v28 + 32) = v32;
      *(*(v5 + 56) + 8 * v23) = v16;
      ++*(v5 + 16);

      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            goto LABEL_28;
          }

          v9 = *(v6 + 8 * v12);
          ++v11;
          if (v9)
          {
            v11 = v12;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      sub_24E601704(&v33, &qword_27F222718, &qword_24F9C4E00);
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  sub_24E601704(&v33, &qword_27F222718, &qword_24F9C4E00);

LABEL_28:
}

uint64_t sub_24F15A134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id ShelfLayoutContext.traitCollection.getter()
{
  v1 = [*(v0 + *(type metadata accessor for ShelfLayoutContext(0) + 40)) traitCollection];

  return v1;
}

uint64_t type metadata accessor for ShelfLayoutContext(uint64_t a1)
{
  result = qword_27F23A6C8;
  if (!qword_27F23A6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ShelfLayoutContext.itemLayoutContext(for:at:metadata:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v26 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = *a3;
  v14 = type metadata accessor for ShelfLayoutContext(0);
  sub_24F15AD90(v5 + *(v14 + 24), v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  LODWORD(a3) = (*(*(v15 - 8) + 48))(v12, 1, v15);
  sub_24E601704(&v12[*(v10 + 56)], &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v12, &unk_27F23A690, &qword_24F982880);
  if (a3 == 1)
  {
    v16 = 10;
  }

  else
  {
    v16 = 2;
  }

  swift_getKeyPath();
  sub_24F928A48();

  v17 = v16 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*v30 >> 1) & 1));
  swift_getKeyPath();
  sub_24F928A48();

  if (v30[0] == 1)
  {
    v17 |= 1uLL;
  }

  else
  {
    v18 = [*(v5 + *(v14 + 40)) traitCollection];
    v19 = sub_24F92BF68();

    if (v19)
    {
      v17 |= 0x10uLL;
    }
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232620, &qword_24F9AA150);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v27, v30);
    v21 = v31;
    v22 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v22 + 8))(v29, v21, v22);
    if (LOBYTE(v29[0]) != 4)
    {
      v17 |= 0x40uLL;
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_24E601704(v27, &unk_27F23A6B0, &qword_24F9BE9D0);
  }

  v23 = type metadata accessor for ItemLayoutContext(0);
  (*(*(v20 - 8) + 16))(&a4[v23[5]], a1, v20);
  sub_24EB07708(v5, &a4[v23[8]]);
  *a4 = v26;
  *&a4[v23[6]] = v13;
  *&a4[v23[7]] = v17;

  return result;
}

double ShelfLayoutContext.itemLayoutContext(for:at:metadata:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = sub_24F91FA08();
  v8 = v5;
  return ShelfLayoutContext.itemLayoutContext(for:at:metadata:)(a1, v6, &v8, a3);
}

double ShelfLayoutContext.id.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  return result;
}

uint64_t ShelfLayoutContext.shelf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShelfLayoutContext.surroundingShelves.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = type metadata accessor for ShelfLayoutContext(0);
  sub_24F15AD90(v2 + *(v9 + 24), v8);
  v10 = *(v6 + 56);
  sub_24EAA34E0(v8, a1);
  return sub_24EAA34E0(&v8[v10], a2);
}

uint64_t ShelfLayoutContext.contentPageGrid.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfLayoutContext(0) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x188uLL);
  return sub_24E8B9768(__dst, &v5);
}

uint64_t ShelfLayoutContext.supplementaryPageGrid.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfLayoutContext(0) + 32);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x188uLL);
  return sub_24E8B9768(__dst, &v5);
}

uint64_t ShelfLayoutContext.stateStore.getter()
{
  type metadata accessor for ShelfLayoutContext(0);
}

uint64_t sub_24F15AAB4(uint64_t (*a1)(char *, void *, void, uint64_t, unint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458, &unk_24F9822A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-1] - v4;
  v6 = type metadata accessor for ShelfLayoutContext(0);
  v10 = *(v1 + *(v6 + 20));
  sub_24F92C7F8();
  sub_24F92AD68();
  v11[0] = *(v1 + *(v6 + 36));

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  v8 = sub_24EB076A4();
  return a1(v5, v11, MEMORY[0x277D84A98], v7, v8);
}

double ShelfLayoutContext.shelfPresentationHints.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  return result;
}

double ShelfLayoutContext.traitEnvironment.getter()
{
  type metadata accessor for ShelfLayoutContext(0);

  swift_unknownObjectRetain();
  return result;
}

BOOL ShelfLayoutContext.isFirstShelf.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ShelfLayoutContext(0);
  sub_24F15AD90(v0 + *(v5 + 24), v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) == 1;
  sub_24E601704(&v4[*(v2 + 56)], &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v4, &unk_27F23A690, &qword_24F982880);
  return v7;
}

uint64_t sub_24F15AD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F15AE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 264);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F15AF50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 264) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F15B074(uint64_t a1)
{
  sub_24F15B140(319);
  if (v1 <= 0x3F)
  {
    sub_24F15B198(319);
    if (v2 <= 0x3F)
    {
      sub_24F15B20C();
      if (v3 <= 0x3F)
      {
        sub_24F15B264();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F15B140(uint64_t a1)
{
  if (!qword_27F23A6D8)
  {
    type metadata accessor for Shelf(255);
    v1 = sub_24F928A68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23A6D8);
    }
  }
}

void sub_24F15B198(uint64_t a1)
{
  if (!qword_27F23A6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23A690, &qword_24F982880);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F23A6E0);
    }
  }
}

void sub_24F15B20C()
{
  if (!qword_27F23A6E8)
  {
    v0 = sub_24F929988();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23A6E8);
    }
  }
}

unint64_t sub_24F15B264()
{
  result = qword_27F23A6F0;
  if (!qword_27F23A6F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F23A6F0);
  }

  return result;
}

id sub_24F15B30C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LayoutContextTraitEnvironment();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t InAppPurchaseInstallPage.preInstallOfferDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

BOOL sub_24F15B3B4()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete))
  {
    return 1;
  }

  if (*(v0 + 16))
  {
    return *(v0 + 24) != 0;
  }

  return 0;
}

uint64_t InAppPurchaseInstallPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *InAppPurchaseInstallPage.__allocating_init(isComplete:lockup:parentLockup:preInstallOfferDescription:pageMetrics:pageRenderEvent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v15 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v16 = sub_24F928818();
  (*(*(v16 - 8) + 32))(v14 + v15, a6, v16);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = a7;
  return v14;
}

void *InAppPurchaseInstallPage.init(isComplete:lockup:parentLockup:preInstallOfferDescription:pageMetrics:pageRenderEvent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) = a1;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v10 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v11 = sub_24F928818();
  (*(*(v11 - 8) + 32))(v7 + v10, a6, v11);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = a7;
  return v7;
}

uint64_t InAppPurchaseInstallPage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InAppPurchaseInstallPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *InAppPurchaseInstallPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v46 = *v2;
  v5 = sub_24F928818();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24F9285B8();
  v7 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v44 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v59 = a1;
  sub_24F928398();
  v20 = sub_24F928278();
  v21 = *(v12 + 8);
  v54 = v11;
  v57 = v21;
  v58 = v12 + 8;
  v21(v19, v11);
  v53 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) = v20 & 1;
  type metadata accessor for InAppPurchaseLockup(0);
  sub_24F928398();
  v55 = v7;
  v22 = *(v7 + 16);
  v23 = v56;
  v24 = v60;
  v22(v56, v60, v61);
  v52 = &protocol conformance descriptor for Lockup;
  sub_24F15BE68(&qword_27F228A00, type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
  sub_24F929548();
  v3[2] = v62;
  v25 = v3;
  v26 = v22;
  type metadata accessor for Lockup(0);
  sub_24F928398();
  v51 = v7 + 16;
  v22(v23, v24, v61);
  sub_24F15BE68(&qword_27F221FB8, type metadata accessor for Lockup, v52);
  sub_24F929548();
  v27 = v62;
  v25[3] = v62;
  if (*(v53 + v25) != 1)
  {
    goto LABEL_4;
  }

  if (!v25[2])
  {
    v39 = sub_24F92AC38();
    sub_24F15BE68(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v41 = v40;
    v42 = 0xE600000000000000;
    *v40 = 0x70756B636F6CLL;
LABEL_9:
    v40[1] = v42;
    v40[2] = v46;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    v36 = 0;
    v28 = v59;
    v37 = v60;
    v33 = v61;
    v32 = v54;
    goto LABEL_10;
  }

  if (!v27)
  {
    v39 = sub_24F92AC38();
    sub_24F15BE68(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v41 = v40;
    *v40 = 0x6F4C746E65726170;
    v42 = 0xEC00000070756B63;
    goto LABEL_9;
  }

LABEL_4:
  v28 = v59;
  sub_24F928398();
  v29 = sub_24F928348();
  v31 = v30;
  v32 = v54;
  v57(v16, v54);
  v25[4] = v29;
  v25[5] = v31;
  sub_24F928398();
  v33 = v61;
  v53 = v26;
  v26(v48, v60, v61);
  v34 = v49;
  v35 = v50;
  sub_24F928788();
  if (!v35)
  {
    (*(v44 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics, v34, v45);
    type metadata accessor for PageRenderMetricsEvent();
    sub_24F928398();
    v38 = v60;
    v53(v56, v60, v33);
    sub_24F15BE68(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
    sub_24F929548();
    (*(v55 + 8))(v38, v33);
    v57(v28, v32);
    *(v25 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = v62;
    return v25;
  }

  v36 = 1;
  v37 = v60;
LABEL_10:
  (*(v55 + 8))(v37, v33);
  v57(v28, v32);

  if (v36)
  {
  }

  type metadata accessor for InAppPurchaseInstallPage(0);
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t type metadata accessor for InAppPurchaseInstallPage(uint64_t a1)
{
  result = qword_27F23A708;
  if (!qword_27F23A708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F15BE68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InAppPurchaseInstallPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InAppPurchaseInstallPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24F15BFFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for InAppPurchaseInstallPage(0);
  v7 = swift_allocObject();
  result = InAppPurchaseInstallPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F15C07C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F15C100(uint64_t a1)
{
  result = sub_24F928818();
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

char *PageFacetsChangeAction.__allocating_init(filterParameter:title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter];
  *v15 = a1;
  *(v15 + 1) = a2;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v10;
    v26 = a5;
    v27 = a3;
    v28 = a4;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a4 = v28;
    a3 = v27;
    a5 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(a5, v17);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *PageFacetsChangeAction.init(filterParameter:title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a4;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter);
  *v20 = a1;
  v20[1] = a2;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  v26 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t PageFacetsChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_24F9285B8();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v33 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v9, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x61507265746C6966;
    v25 = v27;
    v24[1] = 0xEF726574656D6172;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t PageFacetsChangeAction.filterParameter.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter);

  return v1;
}

uint64_t PageFacetsChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t PageFacetsChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PageFacetsChangeAction(uint64_t a1)
{
  result = qword_27F23A718;
  if (!qword_27F23A718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F15CFF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v101 = a2;
  v92 = a4;
  v5 = sub_24F928388();
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_24F928D08();
  v90 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A748, &qword_24F9CE4C8);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v83 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A750, &qword_24F9CE4D0);
  v95 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A758, &unk_24F9CE4D8);
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x28223BE20](v15);
  v88 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - v18;
  v109 = sub_24F9285B8();
  v102 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  MEMORY[0x28223BE20](v25);
  *&v103 = &v83 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v30 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x277D21B38], MEMORY[0x277D83A88]);
  if (v30)
  {
    v33 = v30;
    v96 = v31;
    v97 = v32;
    v34 = v101;
    __swift_project_boxed_opaque_existential_1(v101, v101[3]);
    sub_24F92D0E8();
    sub_24F928598();
    sub_24F928578();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A768, &qword_24F9CE4E8);
    sub_24F9285D8();
    v35 = v99;
    v36 = *(v98 + 1);
    v37 = v36(v19, v99);
    v38 = v109;
    if (!v105)
    {
      v39 = v93(v37);
      v105 = v94;
      v106 = v39;
      v40 = v88;
      sub_24F928578();
      sub_24F928528();
      v41 = v40;
      v38 = v109;
      v36(v41, v35);
      v42 = v102;
      (*(v102 + 8))(v29, v38);
      (*(v42 + 32))(v29, v103, v38);
    }

    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v44 = v102;
    v43 = v103;
    (*(v102 + 16))(v103, v29, v38);
    MEMORY[0x253050800](v43);
    sub_24F92D0F8();

    *&v107 = v33;
    *(&v107 + 1) = v96;
    v108 = v97;
    __swift_allocate_boxed_opaque_existential_1(&v105);
    v45 = v100;
    sub_24F92BA78();
    if (v45)
    {
      (*(v44 + 8))(v29, v38);
      return __swift_deallocate_boxed_opaque_existential_2(&v105);
    }

    v103 = v107;
    v70 = v107;
    v71 = __swift_project_boxed_opaque_existential_1(&v105, v107);
    v72 = v92;
    *(v92 + 24) = v103;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(*(v70 - 8) + 16))(boxed_opaque_existential_1, v71, v70);
    (*(v44 + 8))(v29, v38);
    return __swift_destroy_boxed_opaque_existential_1(&v105);
  }

  v47 = v96;
  v98 = v11;
  v88 = v21;
  v48 = v95;
  v99 = v24;
  v49 = v97;
  v50 = v101;
  v51 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x277D21B38], MEMORY[0x277D21F48]);
  if (v51)
  {
    v84 = v52;
    v85 = v53;
    v86 = v51;
    v54 = v50;
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    sub_24F92D0E8();
    v55 = v99;
    sub_24F928598();
    sub_24F928558();
    v56 = v49;
    sub_24F9285D8();
    v57 = *(v48 + 8);
    v58 = v14;
    v59 = v89;
    v57(v58, v89);
    v60 = v90;
    v61 = (*(v90 + 48))(v47, 1, v56);
    v62 = sub_24E601704(v47, &qword_27F23A748, &qword_24F9CE4C8);
    v63 = v109;
    if (v61 == 1)
    {
      v93(v62);
      v64 = v87;
      sub_24F928D18();
      v65 = v98;
      sub_24F928558();
      sub_24F928528();
      v66 = v65;
      v63 = v109;
      v57(v66, v59);
      v67 = v64;
      v55 = v99;
      (*(v60 + 8))(v67, v56);
      v68 = v102;
      (*(v102 + 8))(v55, v63);
      (*(v68 + 32))(v55, v103, v63);
    }

    sub_24E615E00(v54, v104);
    v69 = v100;
    sub_24F928298();
    if (v69)
    {
      return (*(v102 + 8))(v55, v63);
    }

    v78 = v102;
    (*(v102 + 16))(v88, v55, v63);
    *&v107 = v86;
    *(&v107 + 1) = v84;
    v108 = v85;
    __swift_allocate_boxed_opaque_existential_1(&v105);
    sub_24F929538();
    v103 = v107;
    v79 = v107;
    v80 = __swift_project_boxed_opaque_existential_1(&v105, v107);
    v81 = v92;
    *(v92 + 24) = v103;
    v82 = __swift_allocate_boxed_opaque_existential_1(v81);
    (*(*(v79 - 8) + 16))(v82, v80, v79);
    (*(v78 + 8))(v55, v63);
    return __swift_destroy_boxed_opaque_existential_1(&v105);
  }

  v74 = sub_24F92C918();
  swift_allocError();
  v76 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
  *v76 = a1;
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_24F92D0C8();
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_24F92C888();

  v105 = 60;
  v106 = 0xE100000000000000;
  v77 = sub_24F92D1E8();
  MEMORY[0x253050C20](v77);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA46560);
  sub_24F92C908();
  (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D84160], v74);
  return swift_willThrow();
}

uint64_t sub_24F15DAA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CB0, &qword_24F93B8E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9CE420;
  v1 = type metadata accessor for AlertAction(0);
  v2 = sub_24F15F350(&qword_27F216210, type metadata accessor for AlertAction);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ArcadeAction(0);
  v4 = sub_24F15F350(&qword_27F23A778, type metadata accessor for ArcadeAction);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for ArcadeLaunchAttributionAction(0);
  v6 = sub_24F15F350(&qword_27F216218, type metadata accessor for ArcadeLaunchAttributionAction);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for ArcadeSubscriptionStateAction(0);
  v8 = sub_24F15F350(&qword_27F216220, type metadata accessor for ArcadeSubscriptionStateAction);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for CancelPreorderAction(0);
  v10 = sub_24F15F350(&qword_27F216240, type metadata accessor for CancelPreorderAction);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for CompoundAction(0);
  v12 = sub_24F15F350(&qword_27F221050, type metadata accessor for CompoundAction);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for CopyTextAction(0);
  v14 = sub_24F15F350(&qword_27F230400, type metadata accessor for CopyTextAction);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for ExternalUrlAction(0);
  v16 = sub_24F15F350(qword_27F222318, type metadata accessor for ExternalUrlAction);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for FlowBackAction(0);
  v18 = sub_24F15F350(&qword_27F226398, type metadata accessor for FlowBackAction);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for GameCenterDashboardAction(0);
  v20 = sub_24F15F350(&qword_27F23A780, type metadata accessor for GameCenterDashboardAction);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for GameCenterPlayerProfileAction(0);
  v22 = sub_24F15F350(&qword_27F238A08, type metadata accessor for GameCenterPlayerProfileAction);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  v23 = type metadata accessor for HttpAction(0);
  v24 = sub_24F15F350(&qword_27F225620, type metadata accessor for HttpAction);
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  v25 = type metadata accessor for LocalAction(0);
  v26 = sub_24F15F350(&qword_27F23A788, type metadata accessor for LocalAction);
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  v27 = type metadata accessor for OfferAction(0);
  v28 = sub_24F15F350(&qword_27F222868, type metadata accessor for OfferAction);
  *(v0 + 240) = v27;
  *(v0 + 248) = v28;
  v29 = type metadata accessor for OfferAlertAction(0);
  v30 = sub_24F15F350(&qword_27F22D430, type metadata accessor for OfferAlertAction);
  *(v0 + 256) = v29;
  *(v0 + 264) = v30;
  v31 = type metadata accessor for OfferStateAction(0);
  v32 = sub_24F15F350(&qword_27F23A790, type metadata accessor for OfferStateAction);
  *(v0 + 272) = v31;
  *(v0 + 280) = v32;
  v33 = type metadata accessor for OpenAppAction(0);
  v34 = sub_24F15F350(qword_27F222880, type metadata accessor for OpenAppAction);
  *(v0 + 288) = v33;
  *(v0 + 296) = v34;
  v35 = type metadata accessor for OpenGamesUIAction(0);
  v36 = sub_24F15F350(&qword_27F23A798, type metadata accessor for OpenGamesUIAction);
  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  v37 = type metadata accessor for RateAction(0);
  v38 = sub_24F15F350(qword_27F225598, type metadata accessor for RateAction);
  *(v0 + 320) = v37;
  *(v0 + 328) = v38;
  v39 = type metadata accessor for RateLimitedAction(0);
  v40 = sub_24F15F350(&qword_27F216310, type metadata accessor for RateLimitedAction);
  *(v0 + 336) = v39;
  *(v0 + 344) = v40;
  v41 = type metadata accessor for ReportConcernAction(0);
  v42 = sub_24F15F350(&qword_27F2369D0, type metadata accessor for ReportConcernAction);
  *(v0 + 352) = v41;
  *(v0 + 360) = v42;
  v43 = type metadata accessor for SearchAction(0);
  v44 = sub_24F15F350(&qword_27F22D038, type metadata accessor for SearchAction);
  *(v0 + 368) = v43;
  *(v0 + 376) = v44;
  v45 = type metadata accessor for SearchAdAction(0);
  v46 = sub_24F15F350(qword_27F237520, type metadata accessor for SearchAdAction);
  *(v0 + 384) = v45;
  *(v0 + 392) = v46;
  v47 = type metadata accessor for SignInAction(0);
  v48 = sub_24F15F350(&qword_27F23A7A0, type metadata accessor for SignInAction);
  *(v0 + 400) = v47;
  *(v0 + 408) = v48;
  v49 = type metadata accessor for SignOutAction(0);
  v50 = sub_24F15F350(&qword_27F23A7A8, type metadata accessor for SignOutAction);
  *(v0 + 416) = v49;
  *(v0 + 424) = v50;
  v51 = type metadata accessor for ShareSheetAction(0);
  v52 = sub_24F15F350(&qword_27F233C38, type metadata accessor for ShareSheetAction);
  *(v0 + 432) = v51;
  *(v0 + 440) = v52;
  v53 = type metadata accessor for TabChangeAction(0);
  v54 = sub_24F15F350(&qword_27F22B800, type metadata accessor for TabChangeAction);
  *(v0 + 448) = v53;
  *(v0 + 456) = v54;
  updated = type metadata accessor for UpdateAllAction(0);
  v56 = sub_24F15F350(&qword_27F233618, type metadata accessor for UpdateAllAction);
  *(v0 + 464) = updated;
  *(v0 + 472) = v56;
  v57 = type metadata accessor for WriteReviewAction(0);
  v58 = sub_24F15F350(qword_27F2288B8, type metadata accessor for WriteReviewAction);
  *(v0 + 480) = v57;
  *(v0 + 488) = v58;
  v59 = type metadata accessor for UnhideAppAction(0);
  result = sub_24F15F350(&qword_27F23A7B0, type metadata accessor for UnhideAppAction);
  *(v0 + 496) = v59;
  *(v0 + 504) = result;
  off_27F23A728 = v0;
  return result;
}

uint64_t sub_24F15E094()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A60, &qword_24F93B620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x69746341776F6C66;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v1 = type metadata accessor for FlowAction(0);
  v2 = sub_24F15F350(&qword_27F216400, type metadata accessor for FlowAction);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_24E6090CC(inited);
  swift_setDeallocating();
  result = sub_24E601704(inited + 32, &qword_27F213A68, &qword_24F93B628);
  qword_27F23A730 = v3;
  return result;
}

uint64_t sub_24F15E174()
{
  if (qword_27F210F20 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23A730;
  v1 = qword_27F210F18;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = off_27F23A728;
  v3 = *(off_27F23A728 + 2);
  if (v3)
  {

    v4 = MEMORY[0x277D84F90];
    v5 = 32;
    do
    {
      v17 = *&v2[v5];
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8, &unk_24F9ECFA0);
      v6 = sub_24F92B188();
      v8 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E616118(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E616118((v9 > 1), v10 + 1, 1, v4);
      }

      v4[2] = v10 + 1;
      v11 = &v4[4 * v10];
      v11[4] = v6;
      v11[5] = v8;
      *(v11 + 3) = v17;
      v5 += 16;
      --v3;
    }

    while (v3);

    if (v4[2])
    {
      goto LABEL_13;
    }

LABEL_15:
    v12 = MEMORY[0x277D84F98];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310, &unk_24F93AAE0);
  v12 = sub_24F92CB58();
LABEL_16:
  *&v18 = v12;

  sub_24F15E680(v13, 1, &v18);

  v14 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v18 = v0;
  sub_24E678F54(v14, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v18);

  result = v18;
  qword_27F23A738 = v18;
  return result;
}

double static AppStoreActionKinds.table.getter()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_24F15E460()
{
  result = qword_27F23A740;
  if (!qword_27F23A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A740);
  }

  return result;
}

double sub_24F15E4B4()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_24F15E510()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23A738;

  v1 = sub_24F92A018();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0;
  sub_24F15F06C(v1, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v6);

  sub_24F15EA0C(v6);
  v4 = v3;

  return v4;
}

unint64_t sub_24F15E62C()
{
  result = qword_27F23A760;
  if (!qword_27F23A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A760);
  }

  return result;
}

void sub_24F15E680(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v37 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_24E76D644(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24E8990B4(v15, v6 & 1);
    v10 = sub_24E76D644(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_24F92CF88();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_24E8ADC44();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 16 * v10) = v37;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
    sub_24F92CA38();
    MEMORY[0x253050C20](39, 0xE100000000000000);
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 80);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v37 = *v6;
      v26 = *a3;

      v27 = sub_24E76D644(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_24E8990B4(v31, 1);
        v27 = sub_24E76D644(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 16 * v27) = v37;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_24F15EA0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA08, &unk_24F9CE4F0);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8, &unk_24F9ECFA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA18, &qword_24F9CE500);
        swift_dynamicCast();
        v15 = sub_24E76D644(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_24F15EC34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310, &unk_24F93AAE0);
  v2 = *v0;
  v3 = sub_24F92CB28();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void sub_24F15ED9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310, &unk_24F93AAE0);
  v34 = v4;
  v6 = sub_24F92CB38();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      v25 = sub_24F92D0B8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

double sub_24F15F04C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;

  return result;
}

void sub_24F15F06C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    (a2)(&v39, v42);

    v18 = v39;
    v19 = v40;
    v36 = v41;
    v20 = *v44;
    v22 = sub_24E76D644(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v38 & 1) == 0)
      {
        sub_24F15EC34();
      }
    }

    else
    {
      sub_24F15ED9C(v25, v38 & 1);
      v27 = sub_24E76D644(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v44;
    if (v26)
    {
      v37 = *(v29[7] + 16 * v22);

      *(v29[7] + 16 * v22) = v37;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v36;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_24E6586B4(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_24F92CF88();
  __break(1u);
}

unint64_t sub_24F15F2FC()
{
  result = qword_27F23A770;
  if (!qword_27F23A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A770);
  }

  return result;
}

uint64_t sub_24F15F350(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t CompoundItemSupplementaryProvider.__allocating_init(children:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double CompoundItemSupplementaryProvider.children.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t CompoundItemSupplementaryProvider.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v2 + 16);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_24E619D8C(0, v5[2] + 1, 1, v5);
      *(v2 + 16) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_24E619D8C((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v4;
    v9[5] = a2;
    *(v2 + 16) = v5;
    return swift_endAccess();
  }

  return result;
}

double CompoundItemSupplementaryProvider.removeChild(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 32); *i != a1; i += 2)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_24EA0E8E0(v6);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundItemSupplementaryProvider.removeAllChildren()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t CompoundItemSupplementaryProvider.supplementaryItems(for:asPartOf:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v8[2] = a1;
  v8[3] = a2;

  v6 = sub_24EA0D7A8(sub_24F15F8A0, v8, v5);

  return v6;
}

void CompoundItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      v11 = *v10;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 16);
      swift_unknownObjectRetain();
      v13(&v18, a1, a2, a3, a4, ObjectType, v11);
      swift_unknownObjectRelease();
      if (v19)
      {

        sub_24E612C80(&v18, a5);
        return;
      }

      ++v9;
      sub_24EE0F5B8(&v18);
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

uint64_t CompoundItemSupplementaryProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F15F810(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v8[2] = a1;
  v8[3] = a2;

  v6 = sub_24EA0D7A8(sub_24F15F97C, v8, v5);

  return v6;
}

uint64_t sub_24F15F908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 8))(v5, v4, ObjectType, v6);
  *a2 = result;
  return result;
}

uint64_t AppEvent.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);

  return v1;
}

uint64_t AppEvent.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);

  return v1;
}

uint64_t AppEvent.detail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);

  return v1;
}

uint64_t AppEvent.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);

  return v1;
}

uint64_t AppEvent.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEvent.requirements.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);

  return v1;
}

uint64_t AppEvent.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v1 + 56) = type metadata accessor for Lockup(0);
  *(v1 + 64) = sub_24F161DA8(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t AppEvent.__allocating_init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char *a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v52 = a5;
  v51 = a4;
  v63 = a23;
  v64 = a22;
  v62 = a21;
  v60 = a17;
  v61 = a20;
  v56 = a14;
  v57 = a15;
  v58 = a18;
  v59 = a16;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v28 = *a19;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleArtwork) = a2;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleVideo) = a3;
  v29 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);
  v30 = v52;
  *v29 = v51;
  v29[1] = v30;
  v31 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);
  v32 = v54;
  *v31 = v53;
  v31[1] = v32;
  v33 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);
  *v33 = v55;
  v33[1] = a9;
  v34 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);
  *v34 = a10;
  v34[1] = a11;
  v35 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v36 = sub_24F91F648();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v27 + v35, a12, v36);
  sub_24E60169C(a13, v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30, &qword_24F939880);
  v38 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);
  v39 = v57;
  *v38 = v56;
  v38[1] = v39;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup) = v59;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_hideLockupWhenNotInstalled) = v60;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_formattedDates) = v58;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_mediaOverlayStyle) = v28;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_includeBorderInDarkMode) = v61;
  v40 = v63;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_notificationConfig) = v62;
  sub_24E60169C(a1, v70, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(v40, v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v70, &v67, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v68 + 1))
  {
    v41 = v68;
    *(v27 + 24) = v67;
    *(v27 + 40) = v41;
    *(v27 + 56) = v69;
  }

  else
  {
    v42 = v48;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v49 + 8))(v42, v50);
    v65 = v43;
    v66 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v40, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a13, &unk_27F22EC30, &qword_24F939880);
  (*(v37 + 8))(a12, v36);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v70, &qword_27F235830, &qword_24F93B8C0);
  *(v27 + 16) = 0;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v64;
  return v27;
}

uint64_t AppEvent.init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char *a19, unsigned __int8 a20, char *a21, uint64_t a22, uint64_t a23)
{
  v24 = v23;
  v71 = a8;
  v63 = a7;
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v69 = a23;
  v72 = a21;
  v73 = a22;
  LODWORD(v70) = a20;
  v68 = a17;
  v67 = a16;
  v65 = a15;
  v64 = a14;
  v59 = a11;
  v66 = a18;
  v58 = sub_24F91F6B8();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v55 - v30;
  v32 = *a19;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleArtwork) = a2;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleVideo) = a3;
  v33 = a1;
  v34 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);
  v35 = v61;
  *v34 = v60;
  v34[1] = v35;
  v36 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);
  v37 = v63;
  *v36 = v62;
  v36[1] = v37;
  v38 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);
  *v38 = v71;
  v38[1] = a9;
  v39 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);
  v40 = v59;
  *v39 = a10;
  v39[1] = v40;
  v41 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v42 = sub_24F91F648();
  v43 = *(v42 - 8);
  v44 = *(v43 + 16);
  v71 = a12;
  v44(v24 + v41, a12, v42);
  sub_24E60169C(a13, v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30, &qword_24F939880);
  v45 = (v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);
  v46 = v65;
  *v45 = v64;
  v45[1] = v46;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup) = v67;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_hideLockupWhenNotInstalled) = v68;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_formattedDates) = v66;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_mediaOverlayStyle) = v32;
  v47 = v69;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_includeBorderInDarkMode) = v70;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_notificationConfig) = v72;
  v70 = v33;
  sub_24E60169C(v33, v82, &qword_27F235830, &qword_24F93B8C0);
  v72 = v31;
  sub_24E60169C(v47, v31, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v82, &v76, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v77 + 1))
  {
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  else
  {
    v48 = v56;
    sub_24F91F6A8();
    v49 = sub_24F91F668();
    v51 = v50;
    (*(v57 + 8))(v48, v58);
    v74 = v49;
    v75 = v51;
    sub_24F92C7F8();
    sub_24E601704(&v76, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v47, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a13, &unk_27F22EC30, &qword_24F939880);
  (*(v43 + 8))(v71, v42);
  sub_24E601704(v70, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v82, &qword_27F235830, &qword_24F93B8C0);
  v52 = v80;
  *(v24 + 24) = v79;
  *(v24 + 40) = v52;
  *(v24 + 56) = v81;
  *(v24 + 16) = 0;
  v53 = v72;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v73;
  sub_24E65E0D4(v53, v24 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics);
  return v24;
}

uint64_t AppEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v137 = a2;
  v135 = v3;
  v134 = *v3;
  v138 = sub_24F9285B8();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v125 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v129 = &v101[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v101[-v11];
  v13 = sub_24F91F648();
  v132 = *(v13 - 8);
  v133 = v13;
  MEMORY[0x28223BE20](v13);
  v130 = &v101[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v123 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v121 = &v101[-v19];
  MEMORY[0x28223BE20](v20);
  v120 = &v101[-v21];
  MEMORY[0x28223BE20](v22);
  v128 = &v101[-v23];
  MEMORY[0x28223BE20](v24);
  v26 = &v101[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v101[-v28];
  MEMORY[0x28223BE20](v30);
  v32 = &v101[-v31];
  MEMORY[0x28223BE20](v33);
  v35 = &v101[-v34];
  v139 = a1;
  sub_24F928398();
  v122 = sub_24F928348();
  v37 = v36;
  v124 = v16;
  v40 = *(v16 + 8);
  v38 = v16 + 8;
  v39 = v40;
  v40(v35, v15);
  if (!v37)
  {
    v53 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v55 = v54;
    *v54 = 0x656C746974;
    v54[1] = 0xE500000000000000;
LABEL_8:
    v54[2] = v134;
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D22530], v53);
    swift_willThrow();
    (*(v136 + 8))(v137, v138);
    v39(v139, v15);
LABEL_11:
    swift_deallocPartialClassInstance();
    return v38;
  }

  v131 = v37;
  sub_24F928398();
  v118 = sub_24F928348();
  v42 = v41;
  v39(v32, v15);
  if (!v42)
  {

    v53 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v55 = v54;
    *v54 = 1684957547;
    v54[1] = 0xE400000000000000;
    goto LABEL_8;
  }

  v119 = v42;
  v43 = v39;
  sub_24F928398();
  v116 = sub_24F928348();
  v45 = v44;
  v39(v29, v15);
  v46 = v38;
  v47 = v136;
  if (!v45)
  {

    v50 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v52 = v51;
    *v51 = 0x6C6961746564;
    v51[1] = 0xE600000000000000;
    goto LABEL_10;
  }

  v117 = v45;
  v38 = 0xE900000000000065;
  sub_24F928398();
  sub_24F928288();
  v43(v26, v15);
  v49 = v132;
  v48 = v133;
  if ((*(v132 + 48))(v12, 1, v133) == 1)
  {

    sub_24E601704(v12, &unk_27F22EC30, &qword_24F939880);
    v50 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v52 = v51;
    *v51 = 0x7461447472617473;
    v51[1] = 0xE900000000000065;
LABEL_10:
    v51[2] = v134;
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D22530], v50);
    swift_willThrow();
    (*(v47 + 8))(v137, v138);
    v43(v139, v15);
    goto LABEL_11;
  }

  v112 = v43;
  v113 = v46;
  v111 = v15;
  v57 = v49;
  v38 = v130;
  (*(v49 + 32))(v130, v12, v48);
  type metadata accessor for Lockup(0);
  v58 = v128;
  sub_24F928398();
  v59 = v47 + 16;
  v60 = *(v47 + 16);
  v61 = v129;
  v62 = v47;
  v63 = v137;
  v64 = v138;
  v115 = v59;
  v114 = v60;
  v60(v129, v137, v138);
  sub_24F161DA8(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  sub_24F929548();
  if (!v140)
  {

    v69 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v70 = 0x70756B636F6CLL;
    v71 = v134;
    v70[1] = 0xE600000000000000;
    v70[2] = v71;
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D22530], v69);
    swift_willThrow();
    (*(v62 + 8))(v63, v64);
    v112(v139, v111);
    (*(v57 + 8))(v38, v133);
    goto LABEL_11;
  }

  v109 = v140;
  type metadata accessor for Artwork(0);
  v38 = v139;
  sub_24F928398();
  v65 = v114;
  v114(v61, v63, v64);
  sub_24F161DA8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v110 = v140;
  type metadata accessor for Video(0);
  sub_24F928398();
  v65(v61, v63, v64);
  sub_24F161DA8(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_24F929548();
  if (!(v110 | v140))
  {

    v66 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v67 = MEMORY[0x277D84F90];
    *v68 = v134;
    v68[1] = v67;
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D22538], v66);
    swift_willThrow();

    (*(v136 + 8))(v63, v64);
    v112(v139, v111);
    (*(v132 + 8))(v130, v133);
    goto LABEL_11;
  }

  v72 = v63;
  v73 = v139;
  v105 = v140;
  sub_24F928398();
  v134 = sub_24F928348();
  v108 = v74;
  v75 = v111;
  v76 = v58;
  v77 = v112;
  v112(v58, v111);
  sub_24F928398();
  sub_24F928288();
  v77(v58, v75);
  sub_24F928398();
  v107 = sub_24F928348();
  v106 = v78;
  v77(v58, v75);
  v79 = v120;
  sub_24F928398();
  v104 = sub_24F928278();
  v77(v79, v75);
  sub_24F928398();
  v114(v61, v72, v138);
  type metadata accessor for AppEventFormattedDate(0);
  sub_24F161DA8(&qword_27F22D450, type metadata accessor for AppEventFormattedDate, &protocol conformance descriptor for AppEventFormattedDate);
  v120 = sub_24F92B698();
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v77(v76, v75);
  v103 = v140;
  v80 = v121;
  sub_24F928398();
  v102 = sub_24F928278();
  v77(v80, v75);
  type metadata accessor for AppEventNotificationConfig(0);
  sub_24F928398();
  v114(v61, v137, v138);
  sub_24F161DA8(&qword_27F23A7B8, type metadata accessor for AppEventNotificationConfig, &protocol conformance descriptor for AppEventNotificationConfig);
  v82 = v137;
  v81 = v138;
  sub_24F929548();
  v83 = v135;
  *(v135 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleArtwork) = v110;
  v84 = v73;
  v85 = v140;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleVideo) = v105;
  v86 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);
  v87 = v131;
  *v86 = v122;
  v86[1] = v87;
  v88 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);
  v89 = v108;
  *v88 = v134;
  v88[1] = v89;
  v90 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);
  v91 = v117;
  *v90 = v116;
  v90[1] = v91;
  v92 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);
  v93 = v119;
  *v92 = v118;
  v92[1] = v93;
  v94 = v132;
  v95 = v130;
  (*(v132 + 16))(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate, v130, v133);
  sub_24E60169C(v127, v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30, &qword_24F939880);
  v96 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);
  v97 = v106;
  *v96 = v107;
  v96[1] = v97;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup) = v109;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_hideLockupWhenNotInstalled) = v104 & 1;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_formattedDates) = v120;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_mediaOverlayStyle) = v103;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_includeBorderInDarkMode) = v102 & 1;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_notificationConfig) = v85;
  v98 = v123;
  (*(v124 + 16))(v123, v84, v75);
  v38 = v125;
  v114(v125, v82, v81);
  v99 = v126;
  v100 = AppPromotion.init(deserializing:using:)(v98, v38);
  if (!v99)
  {
    v38 = v100;
  }

  (*(v136 + 8))(v82, v81);
  v112(v139, v75);
  sub_24E601704(v127, &unk_27F22EC30, &qword_24F939880);
  (*(v94 + 8))(v95, v133);
  return v38;
}

double sub_24F161998()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30, &qword_24F939880);

  return result;
}

uint64_t AppEvent.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  v1 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30, &qword_24F939880);

  return v0;
}

uint64_t AppEvent.__deallocating_deinit()
{
  AppEvent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F161CA0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v2 + 56) = type metadata accessor for Lockup(0);
  *(v2 + 64) = sub_24F161DA8(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_24F161D50(uint64_t a1)
{
  result = sub_24F161DA8(&qword_27F23A7C0, type metadata accessor for AppEvent, &protocol conformance descriptor for AppPromotion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F161DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AppEvent(uint64_t a1)
{
  result = qword_27F23A7C8;
  if (!qword_27F23A7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F161E44(uint64_t a1)
{
  sub_24F91F648();
  if (v1 <= 0x3F)
  {
    sub_24E728940(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of AppEvent.__allocating_init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)()
{
  v2 = *(v0 + 256);

  return v2();
}

id UpsellBreakout.DisplayProperties.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *UpsellBreakout.DisplayProperties.badgeColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.titleColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.descriptionColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.callToActionColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double UpsellBreakout.DisplayProperties.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 514;
  return result;
}

uint64_t UpsellBreakout.DisplayProperties.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_24F928398();
  v28 = JSONObject.appStoreColor.getter();
  v15 = *(v6 + 8);
  v15(v14, v5);
  sub_24F928398();
  v16 = sub_24F928278();
  v15(v11, v5);
  v30 = v16 & 1;
  sub_24F928398();
  v17 = sub_24F928278();
  v15(v8, v5);
  v27 = v17 & 1;
  sub_24F928398();
  v26 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  v25 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  v24 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  v18 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  sub_24F162588();
  sub_24F928208();
  v15(v14, v5);
  LOBYTE(v11) = v32;
  sub_24F928398();
  sub_24E9619AC();
  sub_24F928208();
  v19 = sub_24F9285B8();
  (*(*(v19 - 8) + 8))(v29, v19);
  v15(a1, v5);
  result = (v15)(v14, v5);
  v21 = v31;
  *a3 = v28;
  *(a3 + 8) = v30;
  *(a3 + 9) = v27;
  v22 = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v22;
  *(a3 + 32) = v24;
  *(a3 + 40) = v18;
  *(a3 + 48) = v11;
  *(a3 + 49) = v21;
  return result;
}

unint64_t sub_24F162588()
{
  result = qword_27F23A7D8;
  if (!qword_27F23A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A7D8);
  }

  return result;
}

uint64_t UpsellBreakout.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  UpsellBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

void *UpsellBreakout.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v78 = *v3;
  v96 = sub_24F9285B8();
  v87 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v77 - v10;
  v11 = sub_24F91F6B8();
  v88 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  *(v3 + 128) = 0;
  v79 = v3 + 128;
  v90 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v89 = v14;
  v82 = v15;
  v83 = v8;
  if (v22)
  {
    v91 = v21;
    v92 = v22;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v14;
    v29 = v28;
    v88[1](v13, v11);
    v91 = v26;
    v92 = v29;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v27;
  }

  v88 = v23;
  (v23)(v24, v25);
  v30 = *&v93[16];
  *(v3 + 136) = *v93;
  *(v3 + 152) = v30;
  *(v3 + 168) = *&v93[32];
  v80 = sub_24F929608();
  sub_24F928398();
  v31 = v86;
  v32 = v3;
  v34 = v87 + 16;
  v33 = *(v87 + 16);
  v35 = v83;
  v36 = v96;
  v33(v83, v86, v96);
  v37 = v17;
  v38 = v81;
  sub_24F929548();
  v85 = v32;
  v80 = OBJC_IVAR____TtC12GameStoreKit14UpsellBreakout_impressionMetrics;
  v39 = v38;
  v40 = v37;
  sub_24E65E0D4(v39, v32 + OBJC_IVAR____TtC12GameStoreKit14UpsellBreakout_impressionMetrics);
  v41 = v84;
  v33(v84, v31, v36);
  type metadata accessor for BreakoutDetails(0);
  sub_24F928398();
  v81 = v33;
  v33(v35, v41, v36);
  sub_24F1633D8(&qword_27F225B08, type metadata accessor for BreakoutDetails, &protocol conformance descriptor for BreakoutDetails);
  v42 = v35;
  sub_24F929548();
  v43 = *v93;
  if (*v93)
  {
    v44 = v85;
    v85[2] = *v93;
    v45 = type metadata accessor for Action(0);
    v80 = v43;

    sub_24F928398();
    v78 = v45;
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v37, v41);
    v47 = v82 + 8;
    (v88)(v37, v89);
    v44[3] = v46;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v48 = v81;
    v77 = v34;
    (v81)(v42, v41, v96);
    v49 = v48;
    sub_24F1633D8(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_24F929548();
    v44[4] = *v93;
    sub_24F928398();
    v50 = sub_24F928348();
    v52 = v51;
    v82 = v47;
    (v88)(v40, v89);
    v44[5] = v50;
    v44[6] = v52;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v53 = v96;
    v49(v42, v41, v96);
    sub_24F1633D8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v44[7] = *v93;
    type metadata accessor for Video(0);
    v54 = v90;
    sub_24F928398();
    v49(v42, v41, v53);
    sub_24F1633D8(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    sub_24F929548();
    v55 = v85;
    v85[8] = *v93;
    sub_24F928398();
    v49(v42, v41, v96);
    sub_24F163144();
    sub_24F929548();
    v56 = *v93;
    v57 = v55;
    if (*v93 == 1)
    {
      v56 = 0;
      v58 = 0;
      v59 = xmmword_24F9CE620;
      v60 = 0uLL;
      v61 = 514;
    }

    else
    {
      v61 = v95;
      v58 = v94;
      v60 = *&v93[24];
      v59 = *&v93[8];
    }

    v67 = v86;
    v68 = v87;
    v55[9] = v56;
    *(v55 + 5) = v59;
    *(v55 + 6) = v60;
    v55[14] = v58;
    *(v55 + 60) = v61;
    sub_24F928398();
    v87 = static Action.tryToMakeInstance(byDeserializing:using:)(v40, v41);

    v69 = v41;
    v70 = *(v68 + 8);
    v71 = v67;
    v72 = v96;
    v70(v71, v96);
    v73 = v54;
    v74 = v88;
    v75 = v89;
    (v88)(v73, v89);
    (v74)(v40, v75);
    v70(v69, v72);
    swift_beginAccess();
    v57[16] = v87;
  }

  else
  {
    v62 = sub_24F92AC38();
    sub_24F1633D8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v63 = 0x736C6961746564;
    v64 = v78;
    v63[1] = 0xE700000000000000;
    v63[2] = v64;
    (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277D22530], v62);
    swift_willThrow();
    v65 = *(v87 + 8);
    v66 = v96;
    v65(v86, v96);
    (v88)(v90, v89);
    v65(v41, v66);
    v57 = v85;

    sub_24E6585F8((v57 + 17));
    sub_24EB05BC8(v57 + v80);
    type metadata accessor for UpsellBreakout(0);
    swift_deallocPartialClassInstance();
  }

  return v57;
}