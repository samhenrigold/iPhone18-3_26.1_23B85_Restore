unint64_t sub_25F399054(int64_t a1, uint64_t a2)
{
  v40 = sub_25F3C271C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25F3C43DC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25F399634(&qword_27FD673C0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
      v23 = sub_25F3C3FBC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_25F399374(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = sub_25F3C43DC();
    v18 = v16;
    v42 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v46 = *(v19 + 56);
    v40 = (v19 - 8);
    v41 = v20;
    do
    {
      v21 = v46 * v15;
      v22 = v18;
      v23 = v19;
      v41(v12, *(a2 + 48) + v46 * v15, v8);
      sub_25F399634(v43, v44, v45);
      v24 = sub_25F3C3FBC();
      result = (*v40)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v46 * a1;
          v29 = v28 + v21 + v46;
          v30 = v46 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v46 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = v31 + 40 * a1;
            v33 = (v31 + 40 * v15);
            if (a1 != v15 || v32 >= v33 + 40)
            {
              v34 = *v33;
              v35 = v33[1];
              *(v32 + 32) = *(v33 + 4);
              *v32 = v34;
              *(v32 + 16) = v35;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F399634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F3996DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C248C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00, qword_25F3C8520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F08, &qword_25F3C89E8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_25F349944(a1, &v20 - v13);
  sub_25F349944(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25F349944(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_25F399634(&qword_27FD67F10, MEMORY[0x277D407A0], MEMORY[0x277D407A8]);
      v17 = sub_25F3C3FCC();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_25F349AA8(v14, &qword_27FD66F00, qword_25F3C8520);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25F349AA8(v14, &qword_27FD67F08, &qword_25F3C89E8);
    v17 = 0;
    return v17 & 1;
  }

  sub_25F349AA8(v14, &qword_27FD66F00, qword_25F3C8520);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_25F3999C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25F399A28()
{
  result = qword_27FD67E10;
  if (!qword_27FD67E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67E10);
  }

  return result;
}

uint64_t sub_25F399A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F399B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00, qword_25F3C8520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F399C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_25F399DC0(uint64_t a1)
{
  sub_25F39825C(319, &qword_27FD67DD8, MEMORY[0x277D407A0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_25F399FA4(uint64_t a1)
{
  *(a1 + 8) = sub_25F399634(&qword_27FD67E88, _s9TransformVMa, &unk_25F3C8704);
  result = sub_25F399634(&qword_27FD67E90, _s9TransformVMa, &unk_25F3C872C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F39A028(uint64_t a1)
{
  *(a1 + 8) = sub_25F399634(&qword_27FD67E98, _s9TransformVMa_0, &unk_25F3C868C);
  result = sub_25F399634(&qword_27FD67EA0, _s9TransformVMa_0, &unk_25F3C86B4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F39A0AC(uint64_t a1)
{
  *(a1 + 8) = sub_25F399634(&qword_27FD67EA8, _s9TransformVMa_1, &unk_25F3C8614);
  result = sub_25F399634(&qword_27FD67EB0, _s9TransformVMa_1, &unk_25F3C863C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F39A130(uint64_t a1)
{
  *(a1 + 8) = sub_25F39A160();
  result = sub_25F39A1B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F39A160()
{
  result = qword_27FD67EB8;
  if (!qword_27FD67EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67EB8);
  }

  return result;
}

unint64_t sub_25F39A1B4()
{
  result = qword_27FD67EC0;
  if (!qword_27FD67EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67EC0);
  }

  return result;
}

unint64_t sub_25F39A208()
{
  result = qword_27FD67F18;
  if (!qword_27FD67F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67EE0, &qword_25F3C89C8);
    sub_25F34A598(&qword_27FD67F20, &qword_27FD67EE8, &qword_25F3C89D0, MEMORY[0x277CE04B0]);
    sub_25F34A598(&qword_27FD67F28, &qword_27FD67F30, &unk_25F3C89F0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67F18);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE14clarityUIIdiomQryFQOyAA01_C16Modifier_ContentVy17PreviewsInjection24AssistiveAccessTransform33_B9327E8BE2A65479722DED6464165561LLVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_25F34A598(a4, a2, a3, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25F39A388@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_25F39A630()
{
  sub_25F3C1FBC();

  return sub_25F3C22AC();
}

uint64_t static RegistryEntry.typeDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F3C22BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C1FBC();
  sub_25F3C22AC();
  sub_25F39C5B8(&qword_27FD67F40, MEMORY[0x277D40708], MEMORY[0x277D40720]);
  v6 = sub_25F3C455C();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_25F39A798@<X0>(uint64_t a3@<X8>)
{
  v9[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_25F3C2DEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  sub_25F3C1FEC();
  sub_25F3C2DDC();
  swift_getWitnessTable();
  sub_25F3C315C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F39A978(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_25F3C426C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  sub_25F3C424C();
  v8 = swift_allocBox();
  sub_25F3C1FDC();
  sub_25F3C421C();
  (*(v5 + 8))(v7, v4);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;
  sub_25F3C2EBC();
  return sub_25F3C425C();
}

uint64_t sub_25F39AB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  swift_getAssociatedTypeWitness();
  v5 = sub_25F3C43BC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_25F3C424C();
  v4[12] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25F39AC0C, 0, 0);
}

uint64_t sub_25F39AC0C()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_25F39ACBC;
  v2 = v0[11];
  v3 = v0[10];

  return MEMORY[0x2822003F0](v3, v2);
}

uint64_t sub_25F39ACBC()
{

  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25F39ADC0, 0, 0);
}

uint64_t sub_25F39ADC0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 48);
  v6 = sub_25F3C2EBC();
  sub_25F39A388(sub_25F39C6C4, v5, MEMORY[0x277D84A98], v6, v7, v4);
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25F39AEB4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v14[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v14 - v7;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_25F3C2DEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - v11;
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness);
  sub_25F3C2DDC();
  swift_getWitnessTable();
  sub_25F3C315C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_25F39B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v3 = sub_25F3C2EBC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_25F3C2DEC();
  v18 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v4 + 16))(v6, v19, v3);
  swift_getWitnessTable();
  v14 = v20;
  result = sub_25F3C316C();
  if (!v14)
  {
    v16 = v18;
    sub_25F3C2DCC();
    (*(v16 + 8))(v11, v8);
    sub_25F3C1FCC();
    return (*(v17 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_25F39B528()
{
  sub_25F3C338C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F39B5B0()
{
  v0 = sub_25F3C22BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C22AC();
  sub_25F39C5B8(&qword_27FD67F40, MEMORY[0x277D40708], MEMORY[0x277D40720]);
  v4 = sub_25F3C455C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_25F39B6E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F367ADC;

  return MEMORY[0x2821A1CD0](a1, a2);
}

uint64_t _Playground.metadata.getter()
{
  v0 = sub_25F3C327C();

  return MEMORY[0x2821A13E8](v0);
}

uint64_t _Playground.run()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F48, &qword_25F3C8A00);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  v7 = v0;
  sub_25F3C262C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  return sub_25F3C427C();
}

uint64_t sub_25F39B8DC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F80, &unk_25F3C8B98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178, &qword_25F3C58E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v22 = &v22 - v8;
  v10 = sub_25F3C41EC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_25F3C329C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  v15 = v6;
  v16 = v6;
  v17 = v3;
  (*(v4 + 16))(v15, v23, v3);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = (v13 + *(v4 + 80) + v18) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v12 + 32))(v20 + v18, v14, v11);
  (*(v4 + 32))(v20 + v19, v16, v17);
  sub_25F3823F4(0, 0, v22, &unk_25F3C8BB0, v20);
}

uint64_t sub_25F39BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_25F3C262C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F88, &unk_25F3C8BB8);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F39BCC4, 0, 0);
}

uint64_t sub_25F39BCC4()
{
  v1 = sub_25F3C328C();
  *(v0 + 104) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_25F39BDB8;

  return v5();
}

uint64_t sub_25F39BDB8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_25F39BFE4;
  }

  else
  {
    v2 = sub_25F39BECC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F39BECC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 104))(v4, *MEMORY[0x277D40970], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F80, &unk_25F3C8B98);
  sub_25F3C41FC();
  (*(v3 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F80, &unk_25F3C8B98);
  sub_25F3C420C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F39BFE4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  v10 = v0[10];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];

  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67180, &qword_25F3C5700);
  sub_25F3C44BC();
  v7 = v0[3];
  *v5 = v0[2];
  v5[1] = v7;
  (*(v4 + 104))(v5, *MEMORY[0x277D40968], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F80, &unk_25F3C8B98);
  sub_25F3C41FC();

  (*(v3 + 8))(v2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F80, &unk_25F3C8B98);
  sub_25F3C420C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F39C16C()
{
  v0 = sub_25F3C327C();

  return MEMORY[0x2821A13E8](v0);
}

uint64_t sub_25F39C1A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F48, &qword_25F3C8A00);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  v7 = v0;
  sub_25F3C262C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  return sub_25F3C427C();
}

char *_s17PreviewsInjection23PlaygroundRegistryEntryV23scrapeRuntimeForEntriesSayACGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD67F90, &qword_25F3C8BC8);
  v0 = sub_25F3C225C();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v6 = *v4;
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_25F37A328(0, *(v1 + 2) + 1, 1, v1);
        }

        v11 = *(v1 + 2);
        v10 = *(v1 + 3);
        if (v11 >= v10 >> 1)
        {
          v1 = sub_25F37A328((v10 > 1), v11 + 1, 1, v1);
        }

        *(v1 + 2) = v11 + 1;
        v5 = &v1[16 * v11];
        *(v5 + 4) = v6;
        *(v5 + 5) = v9;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return v1;
}

unint64_t sub_25F39C3F0()
{
  result = qword_27FD67F50;
  if (!qword_27FD67F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67F50);
  }

  return result;
}

uint64_t sub_25F39C5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F39C610(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F34905C;

  return sub_25F39AB00(a1, v6, v4, v5);
}

uint64_t sub_25F39C6E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25F3C329C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F80, &unk_25F3C8B98) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F351058;

  return sub_25F39BB9C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t PreviewHostController.update(with:debugDescription:)(char *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v25 - v8;
  v9 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 3);
  v13 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_25F39D6D8();
  LOBYTE(v12) = sub_25F37B828(v32, v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  if ((v12 & 1) == 0)
  {
    v14 = *(a1 + 3);
    v15 = *(a1 + 4);
    v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
    v17 = *(v15 + 32);
    v25 = v16;
    v26 = v17;
    v32[3] = swift_getAssociatedTypeWitness();
    v32[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v32);
    v26(v14, v15);
    sub_25F39D794(v32);
  }

  v18 = *(type metadata accessor for PreviewDisplayContext(0) + 20);
  sub_25F39F2AC(&a1[v18], v11, type metadata accessor for PreviewDisplayContext.Configuration);
  sub_25F39D85C(v11);
  v19 = v27;
  (*(v5 + 80))(*(v3 + 2), &a1[v18], v6, v5);
  v20 = *(*v3 + 120);
  swift_beginAccess();
  (*(v28 + 40))(&v3[v20], v19, v29);
  swift_endAccess();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = *(AssociatedConformanceWitness + 56);
  v23 = swift_checkMetadataState();
  v22(v23, AssociatedConformanceWitness);

  sub_25F3C2D0C();
  (*(AssociatedConformanceWitness + 32))(v23, AssociatedConformanceWitness);
  sub_25F3C2D4C();
  return sub_25F3C2D2C();
}

CGSize_optional __swiftcall PreviewHostController.desiredSize(in:)(CGSize in)
{
  height = in.height;
  width = in.width;
  v3 = sub_25F3C378C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F39D61C();
  (*(v4 + 16))(v6, v9, v3);
  sub_25F39F314(v9, type metadata accessor for PreviewDisplayContext.Configuration);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 != *MEMORY[0x277CC5748])
  {
    if (v10 != *MEMORY[0x277CC5750])
    {
      if (v10 == *MEMORY[0x277CC5740])
      {
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v15 = *(AssociatedConformanceWitness + 24);
        v16 = swift_checkMetadataState();
        v11 = v15(v16, AssociatedConformanceWitness, width, height);
        LOBYTE(v13) = LOBYTE(v11);
        goto LABEL_8;
      }

      (*(v4 + 8))(v6, v3);
    }

    LOBYTE(v13) = 0;
    goto LABEL_8;
  }

  (*(v4 + 96))(v6, v3);
  v13 = *v6;
LABEL_8:
  result.value.height = v12;
  result.value.width = v11;
  result.is_nil = v13;
  return result;
}

uint64_t PreviewHostController.__allocating_init()()
{
  v0 = swift_allocObject();
  PreviewHostController.init()();
  return v0;
}

uint64_t PreviewHostController.rootViewController.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t PreviewHostController.rootViewController.setter(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(v1 + v3, a1, AssociatedTypeWitness);
  return swift_endAccess();
}

char *PreviewHostController.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v21 - v9;
  type metadata accessor for PreviewDisplayHost(0, v7, v6, v11);
  *(v1 + 3) = sub_25F39D3D8();

  sub_25F39D594(v24);

  v23[0] = v24[0];
  v23[1] = v24[1];
  v12 = *(v6 + 72);
  v14 = type metadata accessor for PreviewDisplayHost.HostView(0, v7, v6, v13);
  WitnessTable = swift_getWitnessTable();
  v16 = v12(v23, v14, WitnessTable, v7, v6);

  *(v1 + 2) = v16;
  swift_unknownObjectRetain();

  sub_25F39D61C();

  (*(v6 + 80))(v16, v5, v7, v6);
  swift_unknownObjectRelease();
  sub_25F39F314(v5, type metadata accessor for PreviewDisplayContext.Configuration);
  (*(v8 + 32))(&v1[*(*v1 + 120)], v10, AssociatedTypeWitness);
  v17 = *(v6 + 96);
  v18 = swift_unknownObjectRetain();
  v19 = v17(v18, v7, v6);
  swift_unknownObjectRelease();
  *(v1 + 4) = v19;
  return v1;
}

uint64_t sub_25F39D3D8()
{
  v1 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *MEMORY[0x277CC5750];
  v6 = sub_25F3C378C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = &v4[v2[8]];
  v8 = type metadata accessor for RenderEffects(0);
  v9 = *(v8 + 20);
  v10 = sub_25F3C248C();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  v11 = MEMORY[0x277CDF6C8];
  v12 = &v7[*(v8 + 24)];
  *(v12 + 3) = MEMORY[0x277CDF6D0];
  *(v12 + 4) = v11;
  *v7 = MEMORY[0x277D84F90];
  v4[v2[7]] = 1;
  v4[v2[9]] = 0;
  v4[v2[10]] = 0;
  v18 = type metadata accessor for PreviewDisplayHost.EmptyContentHost(0, *(v0 + 80), *(v0 + 88), v13);
  WitnessTable = swift_getWitnessTable();
  v14 = swift_allocObject();
  sub_25F39E01C(v4, v17);
  return v14;
}

uint64_t sub_25F39D594@<X0>(uint64_t *a1@<X8>)
{

  swift_getWitnessTable();
  result = sub_25F3C37DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F39D61C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();
}

uint64_t sub_25F39D6D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();
}

uint64_t sub_25F39D794(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F349E38(a1, v3);

  sub_25F3C35EC();
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25F39D85C(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 80);
  v7 = v11;
  v12 = *(v3 + 88);
  v8 = v12;
  swift_getKeyPath();
  v10[0] = v7;
  v10[1] = v8;
  swift_getKeyPath();
  sub_25F39F2AC(a1, v6, type metadata accessor for PreviewDisplayContext.Configuration);

  sub_25F3C35EC();
  return sub_25F39F314(a1, type metadata accessor for PreviewDisplayContext.Configuration);
}

uint64_t PreviewHostController._forEachIdentifiedView(body:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  return v5(a1, a2, v6, AssociatedConformanceWitness);
}

Swift::Void __swiftcall PreviewHostController._render(seconds:)(Swift::Double seconds)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness, seconds);
}

id *PreviewHostController.deinit()
{
  swift_unknownObjectRelease();

  v1 = *(*v0 + 15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_25F39DC58(uint64_t a1)
{
  v2 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_25F39F2AC(a1, &v9 - v6, type metadata accessor for PreviewDisplayContext.Configuration);
  sub_25F39F2AC(v7, v5, type metadata accessor for PreviewDisplayContext.Configuration);
  sub_25F3C35BC();
  sub_25F39F314(a1, type metadata accessor for PreviewDisplayContext.Configuration);
  return sub_25F39F314(v7, type metadata accessor for PreviewDisplayContext.Configuration);
}

uint64_t sub_25F39DD7C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

void sub_25F39DE8C(uint64_t a1)
{
  sub_25F39EBD4(319);
  if (v1 <= 0x3F)
  {
    sub_25F39EC2C(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_25F39DF58(void *a1)
{
  sub_25F349E38(a1, v4);
  sub_25F349E38(v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F70, &qword_25F3C52E8);
  sub_25F3C35BC();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_25F39DFCC(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_25F39E01C(a1, a2);
  return v4;
}

uint64_t sub_25F39E01C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F39F2AC(a1, v7, type metadata accessor for PreviewDisplayContext.Configuration);
  swift_beginAccess();
  sub_25F39DC58(v7);
  swift_endAccess();
  sub_25F349E38(a2, v10);
  swift_beginAccess();
  sub_25F39DF58(v10);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  sub_25F39F314(a1, type metadata accessor for PreviewDisplayContext.Configuration);
  return v2;
}

uint64_t sub_25F39E144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v52 = a5;
  v9 = sub_25F3C378C();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a4;
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v41 - v11;
  v12 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68138, &qword_25F3C8D80);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = sub_25F3C382C();
  v47 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v43 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = &v41 - v22;
  sub_25F39E650(a1, a2, &v55);
  v23 = v55;
  v24 = v56;

  sub_25F39D61C();
  LOBYTE(a1) = v15[*(v13 + 28)];
  sub_25F39F314(v15, type metadata accessor for PreviewDisplayContext.Configuration);
  v55 = v23;
  v56 = v24;
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68140, &qword_25F3C8D88);
  sub_25F39EFEC();
  sub_25F3C3D2C();
  sub_25F39F1AC(v23, v24);
  KeyPath = swift_getKeyPath();
  v26 = &v18[*(v16 + 36)];
  *v26 = KeyPath;
  v26[8] = 1;
  sub_25F39D61C();

  v27 = v48;
  v28 = v49;
  v29 = v50;
  (*(v49 + 16))(v48, v15, v50);
  sub_25F39F314(v15, type metadata accessor for PreviewDisplayContext.Configuration);
  v30 = v46;
  (*(v41 + 88))(v27, v42, v41);
  (*(v28 + 8))(v27, v29);
  v31 = sub_25F39F1B8();
  v32 = v43;
  v33 = v16;
  v34 = AssociatedTypeWitness;
  MEMORY[0x25F8DB5A0](v30, v33, AssociatedTypeWitness, v31);
  (*(v51 + 8))(v30, v34);
  sub_25F346670(v18);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v31;
  v54 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  v36 = v47;
  v37 = *(v47 + 16);
  v38 = v45;
  v37(v45, v32, v19);
  v39 = *(v36 + 8);
  v39(v32, v19);
  v37(v52, v38, v19);
  return (v39)(v38, v19);
}

void *sub_25F39E650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for RenderEffects(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25F39E9A0(a1, a2))
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {

    sub_25F39D6D8();
    v14 = v30;
    v15 = v31;
    __swift_project_boxed_opaque_existential_1(&v28, v30);
    v24 = *(v15 + 24);
    v26 = a5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v34 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = AssociatedConformanceWitness;
    v17 = __swift_allocate_boxed_opaque_existential_1(&v32);
    v24(v14, v15);
    sub_25F39D61C();

    sub_25F39F2AC(&v13[*(v11 + 24)], v10, type metadata accessor for RenderEffects);
    sub_25F39F314(v13, type metadata accessor for PreviewDisplayContext.Configuration);
    RenderEffects.applied<A>(to:)(v17, AssociatedTypeWitness, v27);
    sub_25F39F314(v10, type metadata accessor for RenderEffects);
    v18 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    MEMORY[0x28223BE20](v18);
    (*(v20 + 16))(&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = sub_25F3C3E0C();
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    __swift_destroy_boxed_opaque_existential_0Tm(&v32);
    __swift_destroy_boxed_opaque_existential_0Tm(&v28);
    v28 = v21;
    a5 = v26;
    v29 = 1;
  }

  sub_25F39F104();
  result = sub_25F3C3A4C();
  v23 = v33;
  *a5 = v32;
  *(a5 + 8) = v23;
  return result;
}

uint64_t sub_25F39E9A0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25F39D61C();

  LOBYTE(v3) = v5[*(v3 + 36)];
  sub_25F39F314(v5, type metadata accessor for PreviewDisplayContext.Configuration);
  if (v3)
  {
    return 1;
  }

  v7 = [objc_opt_self() rootSettings];
  v8 = [v7 forceMetricsView];

  return v8;
}

uint64_t sub_25F39EAA8()
{
  v1 = qword_27FD68018;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68188, &qword_25F3C8DD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27FD68020;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD68190, &qword_25F3C8DD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_25F39EB78(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_25F39EBD4(uint64_t a1)
{
  if (!qword_27FD680A8)
  {
    type metadata accessor for PreviewDisplayContext.Configuration(255);
    v1 = sub_25F3C35FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD680A8);
    }
  }
}

void sub_25F39EC2C(uint64_t a1)
{
  if (!qword_27FD680B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD66F70, &qword_25F3C52E8);
    v1 = sub_25F3C35FC();
    if (!v2)
    {
      atomic_store(v1, qword_27FD680B0);
    }
  }
}

uint64_t sub_25F39EC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_25F39ED10(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68218, &qword_25F3C8F58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68220, &qword_25F3C8F60);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68228, &qword_25F3C8F68);
  v13 = v12;
  if (a2)
  {
    (*(*(v12 - 8) + 16))(v11, a1, v12);
    swift_storeEnumTagMultiPayload();
    v14 = sub_25F34A598(&qword_27FD68230, &qword_27FD68228, &qword_25F3C8F68, MEMORY[0x277CE04B0]);
    v17 = v13;
    v18 = v14;
    swift_getOpaqueTypeConformance2();
    return sub_25F3C3A4C();
  }

  else
  {
    v16 = sub_25F34A598(&qword_27FD68230, &qword_27FD68228, &qword_25F3C8F68, MEMORY[0x277CE04B0]);
    sub_25F3C3CEC();
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    v17 = v13;
    v18 = v16;
    swift_getOpaqueTypeConformance2();
    sub_25F3C3A4C();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_25F39EFEC()
{
  result = qword_27FD68148;
  if (!qword_27FD68148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68140, &qword_25F3C8D88);
    sub_25F39F078();
    sub_25F39F158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68148);
  }

  return result;
}

unint64_t sub_25F39F078()
{
  result = qword_27FD68150;
  if (!qword_27FD68150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68158, &qword_25F3C8D90);
    sub_25F39F104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68150);
  }

  return result;
}

unint64_t sub_25F39F104()
{
  result = qword_27FD68160;
  if (!qword_27FD68160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68160);
  }

  return result;
}

unint64_t sub_25F39F158()
{
  result = qword_27FD68168;
  if (!qword_27FD68168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68168);
  }

  return result;
}

uint64_t sub_25F39F1AC(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_25F39F1B8()
{
  result = qword_27FD68170;
  if (!qword_27FD68170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68138, &qword_25F3C8D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68140, &qword_25F3C8D88);
    sub_25F39EFEC();
    swift_getOpaqueTypeConformance2();
    sub_25F34A598(&qword_27FD68178, &qword_27FD68180, &qword_25F3C8DC8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68170);
  }

  return result;
}

uint64_t sub_25F39F2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F39F314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for AllowAnimationsModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_25F39F4A4()
{
  result = qword_27FD68238;
  if (!qword_27FD68238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD68240, qword_25F3C8F70);
    sub_25F34A598(&qword_27FD68230, &qword_27FD68228, &qword_25F3C8F68, MEMORY[0x277CE04B0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68228, &qword_25F3C8F68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68238);
  }

  return result;
}

uint64_t RenderingHostManager.__allocating_init()()
{
  v0 = swift_allocObject();
  RenderingHostManager.init()(v0, v1, v2, v3);
  return v0;
}

void *RenderingHostManager.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PreviewHostController(0, *(*v4 + 80), *(*v4 + 88), a4);
  v4[2] = PreviewHostController.__allocating_init()();
  return v4;
}

uint64_t RenderingHostManager.update(using:debugDescription:)(char *a1, uint64_t a2, uint64_t a3)
{
  sub_25F39F6F0(a1, a2, a3);
}

uint64_t RenderingHostManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F39F6F0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  PreviewHostController.update(with:debugDescription:)(a1, a2, a3);
  return v4;
}

uint64_t sub_25F39F7A4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178, &qword_25F3C58E0);
  v3[21] = swift_task_alloc();
  v4 = sub_25F3C226C();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_25F3C269C();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_25F3C354C();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = sub_25F3C2F3C();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68320, &qword_25F3C9190);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = type metadata accessor for StreamPlaceholder.State(0);
  v3[37] = swift_task_alloc();
  v8 = sub_25F3C2A8C();
  v3[38] = v8;
  v3[39] = *(v8 - 8);
  v3[40] = swift_task_alloc();
  updated = type metadata accessor for UpdateContext(0);
  v3[41] = updated;
  v3[42] = *(updated - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v10 = sub_25F3C28BC();
  v3[45] = v10;
  v3[46] = *(v10 - 8);
  v3[47] = swift_task_alloc();
  v11 = sub_25F3C22BC();
  v3[48] = v11;
  v3[49] = *(v11 - 8);
  v3[50] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68348, &qword_25F3C91A8);
  v3[51] = v12;
  v3[52] = *(v12 - 8);
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F39FC0C, v2, 0);
}

uint64_t sub_25F39FC0C()
{
  __swift_project_boxed_opaque_existential_1((v0[19] + 24), *(v0[19] + 48));
  sub_25F3C266C();
  sub_25F3C267C();
  v1 = swift_task_alloc();
  v0[54] = v1;
  *v1 = v0;
  v1[1] = sub_25F39FCE0;
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[47];

  return sub_25F3B5AC4(v2, v3, v4);
}

uint64_t sub_25F39FCE0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = v2[50];
  v4 = v2[49];
  v5 = v2[48];
  v6 = v2[47];
  v7 = v2[46];
  v8 = v2[45];
  v9 = v2[20];
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = sub_25F3A0760;
  }

  else
  {
    v10 = sub_25F39FEB8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_25F39FEB8()
{
  v60 = v0;
  v1 = *(v0 + 440);
  sub_25F3C24FC();
  if (v1)
  {
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));

    v2 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 328);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 296);
    v50 = *(v0 + 304);
    v52 = *(v0 + 280);
    v54 = *(v0 + 336);
    v57 = *(v0 + 160);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    sub_25F3C268C();
    sub_25F349E38(v0 + 16, v3 + v4[6]);
    v8 = sub_25F354FD8(MEMORY[0x277D84F90]);
    v9 = v4[5];
    sub_25F3C31AC();
    swift_allocObject();
    *(v3 + v9) = sub_25F3C319C();
    v10 = v4[7];
    *(v3 + v10) = v8;
    sub_25F3C2A6C();
    *v7 = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    v11 = sub_25F3C34FC();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v3 + v10);
    sub_25F35DAF8(v11, v5, isUniquelyReferenced_nonNull_native);
    *(v3 + v10) = v59;
    sub_25F3A2534(&qword_27FD68338, type metadata accessor for UpdateContext, &unk_25F3C90AC);

    sub_25F3C30FC();
    v56 = v11;

    (*(v6 + 8))(v5, v50);
    v13 = OBJC_IVAR____TtC17PreviewsInjection18RegistryEntryPoint_currentUpdateContext;
    swift_beginAccess();
    sub_25F3A262C(v57 + v13, v52);
    if ((*(v54 + 48))(v52, 1, v4))
    {
      sub_25F349AA8(*(v0 + 280), &qword_27FD68320, &qword_25F3C9190);
    }

    else
    {
      v14 = *(v0 + 344);
      v15 = *(v0 + 280);
      v17 = *(v0 + 256);
      v16 = *(v0 + 264);
      v18 = *(v0 + 248);
      sub_25F3A320C(v15, v14, type metadata accessor for UpdateContext);
      sub_25F349AA8(v15, &qword_27FD68320, &qword_25F3C9190);
      sub_25F3C2F2C();
      sub_25F3A2534(&qword_27FD68308, type metadata accessor for UpdateContext, &unk_25F3C9084);
      sub_25F3C2F1C();
      (*(v17 + 8))(v16, v18);
      sub_25F3A3274(v14, type metadata accessor for UpdateContext);
    }

    v19 = *(v0 + 328);
    v20 = *(v0 + 336);
    v21 = *(v0 + 272);
    v23 = *(v0 + 208);
    v22 = *(v0 + 216);
    v24 = *(v0 + 200);
    v25 = *(v0 + 144);
    sub_25F3A320C(*(v0 + 352), v21, type metadata accessor for UpdateContext);
    (*(v20 + 56))(v21, 0, 1, v19);
    swift_beginAccess();
    sub_25F3A32D4(v21, v57 + v13);
    swift_endAccess();
    sub_25F3C350C();
    (*(v23 + 16))(v22, v25, v24);
    v26 = sub_25F3C353C();
    v27 = sub_25F3C433C();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v32 = *(v0 + 216);
    v31 = *(v0 + 224);
    v34 = *(v0 + 200);
    v33 = *(v0 + 208);
    if (v28)
    {
      log = v26;
      v49 = *(v0 + 200);
      v55 = v27;
      v35 = *(v0 + 184);
      v36 = *(v0 + 192);
      v37 = *(v0 + 176);
      v38 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v38 = 136315138;
      v58 = v29;
      v59 = v53;
      sub_25F3C268C();
      sub_25F3A2534(&qword_27FD68340, MEMORY[0x277D406B0], MEMORY[0x277D406B8]);
      v39 = sub_25F3C455C();
      v51 = v31;
      v41 = v40;
      (*(v35 + 8))(v36, v37);
      (*(v33 + 8))(v32, v49);
      v42 = sub_25F369EE8(v39, v41, &v59);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_25F342000, log, v55, "Executing registry %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x25F8DC6C0](v53, -1, -1);
      MEMORY[0x25F8DC6C0](v38, -1, -1);

      (*(v30 + 8))(v58, v51);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
      (*(v30 + 8))(v29, v31);
    }

    v43 = *(v0 + 352);
    v44 = *(v0 + 168);
    v45 = sub_25F3C41EC();
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    sub_25F349E38(v0 + 16, v0 + 56);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    sub_25F3440A0((v0 + 56), (v46 + 4));
    v46[9] = v56;

    sub_25F3823F4(0, 0, v44, &unk_25F3C91B8, v46);

    sub_25F3C30FC();

    sub_25F3A3274(v43, type metadata accessor for UpdateContext);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_25F3A0760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3A0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_25F3C325C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_25F3C354C();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_25F3C2EBC();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D20, &qword_25F3C91C0);
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68350, &qword_25F3C91C8);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68358, &unk_25F3C91D0);
  v5[19] = v10;
  v5[20] = *(v10 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3A0B14, 0, 0);
}

uint64_t sub_25F3A0B14()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_25F39A978(v5, v6);
  sub_25F3C421C();
  (*(v2 + 8))(v1, v3);
  v0[22] = 0;
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_25F3A0C2C;
  v8 = v0[19];
  v9 = v0[15];

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_25F3A0C2C()
{

  return MEMORY[0x2822009F8](sub_25F3A0D28, 0, 0);
}

uint64_t sub_25F3A0D28()
{
  v37 = v0;
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    (*(v3 + 32))(v6, v1, v2);
    sub_25F3C350C();
    (*(v3 + 16))(v7, v6, v2);
    v8 = sub_25F3C353C();
    v9 = sub_25F3C433C();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[10];
    v14 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    if (v10)
    {
      v33 = v0[8];
      v17 = swift_slowAlloc();
      v31 = v9;
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      sub_25F3A2534(&qword_27FD67510, MEMORY[0x277D40450], MEMORY[0x277D40458]);
      v19 = sub_25F3C455C();
      v32 = v13;
      v21 = v20;
      v35 = *(v12 + 8);
      v35(v11, v14);
      v22 = sub_25F369EE8(v19, v21, &v36);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_25F342000, v8, v31, "Got registry event %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x25F8DC6C0](v18, -1, -1);
      MEMORY[0x25F8DC6C0](v17, -1, -1);

      (*(v15 + 8))(v32, v33);
    }

    else
    {

      v35 = *(v12 + 8);
      v35(v11, v14);
      (*(v15 + 8))(v13, v16);
    }

    v23 = v0[22];
    v24 = v0[14];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[5];
    v34 = v0[11];
    v0[2] = v0[4];

    sub_25F3C326C();
    *(swift_task_alloc() + 16) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68328, &unk_25F3C9198);
    sub_25F3A3188();
    sub_25F3C31CC();

    (*(v25 + 8))(v26, v27);

    v35(v24, v34);
    v0[22] = v23;
    v28 = swift_task_alloc();
    v0[23] = v28;
    *v28 = v0;
    v28[1] = sub_25F3A0C2C;
    v29 = v0[19];
    v30 = v0[15];

    return MEMORY[0x2822003E8](v30, 0, 0, v29);
  }
}

uint64_t sub_25F3A1194()
{
  v1[8] = v0;
  v2 = sub_25F3C2F3C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_25F3C354C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68320, &qword_25F3C9190);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  updated = type metadata accessor for UpdateContext(0);
  v1[17] = updated;
  v1[18] = *(updated - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3A135C, v0, 0);
}

uint64_t sub_25F3A135C()
{
  v33 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC17PreviewsInjection18RegistryEntryPoint_currentUpdateContext;
  swift_beginAccess();
  sub_25F3A262C(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25F349AA8(v0[16], &qword_27FD68320, &qword_25F3C9190);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[20];
    sub_25F3A3068(v0[16], v7);
    sub_25F3C350C();
    sub_25F3A320C(v7, v6, type metadata accessor for UpdateContext);
    v8 = sub_25F3C353C();
    v9 = sub_25F3C430C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    if (v10)
    {
      v31 = v0[14];
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v15 = 136315138;
      sub_25F3C226C();
      v30 = v14;
      sub_25F3A2534(&qword_27FD68340, MEMORY[0x277D406B0], MEMORY[0x277D406B8]);
      v16 = sub_25F3C455C();
      v18 = v17;
      sub_25F3A3274(v11, type metadata accessor for UpdateContext);
      v19 = sub_25F369EE8(v16, v18, &v32);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25F342000, v8, v9, "Canceling execution of registry %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x25F8DC6C0](v29, -1, -1);
      MEMORY[0x25F8DC6C0](v15, -1, -1);

      (*(v12 + 8))(v31, v30);
    }

    else
    {

      sub_25F3A3274(v11, type metadata accessor for UpdateContext);
      (*(v12 + 8))(v13, v14);
    }

    v20 = v0[20];
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[15];
    v25 = v0[10];
    v24 = v0[11];
    v26 = v0[9];
    sub_25F3C2F2C();
    sub_25F3A2534(&qword_27FD68308, type metadata accessor for UpdateContext, &unk_25F3C9084);
    sub_25F3C2F1C();
    (*(v25 + 8))(v24, v26);
    sub_25F3A3274(v20, type metadata accessor for UpdateContext);
    (*(v22 + 56))(v23, 1, 1, v21);
    swift_beginAccess();
    sub_25F3A32D4(v23, v4 + v5);
    swift_endAccess();
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_25F3A1750(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateContext(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  if (!*(*(v2 + *(MEMORY[0x28223BE20](updated - 8) + 36)) + 16))
  {
    return 0;
  }

  sub_25F35C598(a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_25F3A320C(v2, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdateContext);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_25F3A3068(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_25F3C2EBC();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_25F3A30CC;
  *(v10 + 24) = v9;

  sub_25F3C242C();

  sub_25F3C31EC();

  return 1;
}

uint64_t sub_25F3A1954()
{
  sub_25F349AA8(v0 + OBJC_IVAR____TtC17PreviewsInjection18RegistryEntryPoint_currentUpdateContext, &qword_27FD68320, &qword_25F3C9190);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_25F3A19CC(uint64_t a1)
{
  sub_25F3A3538(319, &qword_27FD682E0, type metadata accessor for UpdateContext, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25F3A1AE0(uint64_t a1)
{
  sub_25F3C226C();
  if (v1 <= 0x3F)
  {
    sub_25F3C31AC();
    if (v2 <= 0x3F)
    {
      sub_25F3A1B94();
      if (v3 <= 0x3F)
      {
        sub_25F3A1BF8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_25F3A1B94()
{
  result = qword_27FD682F8;
  if (!qword_27FD682F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FD682F8);
  }

  return result;
}

void sub_25F3A1BF8(uint64_t a1)
{
  if (!qword_27FD68300)
  {
    sub_25F3C2A8C();
    sub_25F3A2534(&qword_27FD67390, MEMORY[0x277D40C50], MEMORY[0x277D40C58]);
    v1 = sub_25F3C3F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD68300);
    }
  }
}

uint64_t sub_25F3A1CA4(uint64_t *a1)
{
  type metadata accessor for RegistryEntryPoint(0);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC17PreviewsInjection18RegistryEntryPoint_currentUpdateContext;
  updated = type metadata accessor for UpdateContext(0);
  (*(*(updated - 8) + 56))(v3 + v4, 1, 1, updated);
  *a1 = v3;
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_25F3A1D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F34905C;

  return sub_25F39F7A4(a2, a3);
}

uint64_t sub_25F3A1E18(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = a2;
  updated = type metadata accessor for UpdateContext(0);
  v3[7] = updated;
  v3[8] = *(updated - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68320, &qword_25F3C9190);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[10] = v5;
  v3[11] = v6;

  return MEMORY[0x2822009F8](sub_25F3A1F10, v6, 0);
}

uint64_t sub_25F3A1F10()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC17PreviewsInjection18RegistryEntryPoint_currentUpdateContext;
  swift_beginAccess();
  sub_25F3A262C(v2 + v5, v1);
  v6 = (*(v4 + 48))(v1, 1, v3);
  v7 = v0[10];
  if (v6)
  {
    sub_25F349AA8(v7, &qword_27FD68320, &qword_25F3C9190);
    v8 = 0;
  }

  else
  {
    v9 = v0[9];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[10];
    sub_25F3A320C(v7, v9, type metadata accessor for UpdateContext);
    sub_25F349AA8(v12, &qword_27FD68320, &qword_25F3C9190);
    v8 = sub_25F3A1750(v11, v10);
    sub_25F3A3274(v9, type metadata accessor for UpdateContext);
  }

  v13 = v0[1];

  return v13(v8 & 1);
}

uint64_t sub_25F3A2064()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F34905C;

  return sub_25F3A1194();
}

uint64_t sub_25F3A2110(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StreamPlaceholder.State(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[1] = a2;
  swift_getKeyPath();
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68328, &unk_25F3C9198);
  sub_25F3A3188();
  sub_25F3C31BC();

  sub_25F3A3274(v6, type metadata accessor for StreamPlaceholder.State);
  sub_25F3A3274(v8, type metadata accessor for StreamPlaceholder.State);
}

uint64_t sub_25F3A2254(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C354C();
  MEMORY[0x28223BE20](v4);
  v5 = (a2 + *(type metadata accessor for UpdateContext(0) + 24));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return sub_25F39B0DC(a1, v6, v7);
}

uint64_t sub_25F3A2468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3A2534(&qword_27FD68338, type metadata accessor for UpdateContext, &unk_25F3C90AC);

  return MEMORY[0x2821A0980](a1, a2, a3, v6);
}

uint64_t sub_25F3A2534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F3A257C(uint64_t a1)
{
  result = sub_25F3A2534(&qword_27FD68310, type metadata accessor for RegistryEntryPoint, &unk_25F3C90DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F3A25D4(uint64_t a1)
{
  result = sub_25F3A2534(&qword_27FD68318, type metadata accessor for RegistryEntryPoint, &unk_25F3C9118);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F3A262C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68320, &qword_25F3C9190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F3A269C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C325C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;

  sub_25F3C326C();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68328, &unk_25F3C9198);
  sub_25F3A3188();
  sub_25F3C31CC();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F3A2808(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_25F3C325C();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F3C2EBC();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F3C354C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StreamPlaceholder.State(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F3A320C(a1, v16, type metadata accessor for StreamPlaceholder.State);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_25F3C326C();
      sub_25F3C2F4C();
      (*(v40 + 8))(v6, v39);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28, &qword_25F3C8280);
      return (*(*(v18 - 8) + 8))(v16, v18);
    }
  }

  else
  {
    v37 = v10;
    v39 = v11;
    v40 = v14;
    sub_25F3A3274(a1, type metadata accessor for StreamPlaceholder.State);
    v19 = *v16;
    sub_25F3C350C();
    v20 = sub_25F3C353C();
    v21 = sub_25F3C433C();
    v22 = a1;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25F342000, v20, v21, "Received message stream sender; will send buffered events", v23, 2u);
      MEMORY[0x25F8DC6C0](v23, -1, -1);
    }

    (*(v39 + 8))(v13, v37);
    v24 = *(v19 + 16);
    if (v24)
    {
      v25 = v38 + 16;
      v26 = *(v38 + 16);
      v27 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v38 = v19;
      v39 = v22;
      v28 = v19 + v27;
      v29 = *(v25 + 56);
      v30 = (v25 - 8);
      do
      {
        v31 = v7;
        v32 = v7;
        v33 = v25;
        v26(v9, v28, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28, &qword_25F3C8280);
        sub_25F3C243C();
        v34 = v41;
        (*v30)(v9, v32);
        v25 = v33;
        v7 = v32;
        v28 += v29;
        --v24;
      }

      while (v24);

      v22 = v39;
    }

    else
    {

      v34 = v41;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28, &qword_25F3C8280);
    (*(*(v35 - 8) + 16))(v22, v34, v35);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_25F3A2CB8(uint64_t *a1, uint64_t a2)
{
  v24[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28, &qword_25F3C8280);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - v5;
  v24[0] = sub_25F3C354C();
  v7 = *(v24[0] - 8);
  v8 = MEMORY[0x28223BE20](v24[0]);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = type metadata accessor for StreamPlaceholder.State(0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3A320C(a1, v15, type metadata accessor for StreamPlaceholder.State);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      (*(v4 + 32))(v6, v15, v3);
      sub_25F3C350C();
      v17 = sub_25F3C353C();
      v18 = sub_25F3C433C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_25F342000, v17, v18, "Have sender: will send registry event", v19, 2u);
        MEMORY[0x25F8DC6C0](v19, -1, -1);
      }

      (*(v7 + 8))(v10, v24[0]);
      sub_25F3C243C();
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_25F3A3274(a1, type metadata accessor for StreamPlaceholder.State);
    sub_25F3C350C();
    v20 = sub_25F3C353C();
    v21 = sub_25F3C433C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25F342000, v20, v21, "Waiting for sender: will buffer registry event", v22, 2u);
      MEMORY[0x25F8DC6C0](v22, -1, -1);
    }

    (*(v7 + 8))(v12, v24[0]);
    sub_25F3C2EBC();
    v23 = sub_25F3C410C();

    *a1 = v23;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_25F3A3068(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateContext(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F3A30CC(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateContext(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25F3A2254(a1, v4);
}

unint64_t sub_25F3A3188()
{
  result = qword_27FD68330;
  if (!qword_27FD68330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68328, &unk_25F3C9198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68330);
  }

  return result;
}

uint64_t sub_25F3A320C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F3A3274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F3A32D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68320, &qword_25F3C9190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F3A334C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F34905C;

  return sub_25F3A0888(a1, v4, v5, (v1 + 4), v6);
}

void sub_25F3A344C(uint64_t a1)
{
  sub_25F3A34C0();
  if (v1 <= 0x3F)
  {
    sub_25F3A359C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25F3A34C0()
{
  if (!qword_27FD67D78)
  {
    sub_25F3A3538(0, &qword_27FD67D80, MEMORY[0x277D40450], MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27FD67D78);
    }
  }
}

void sub_25F3A3538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25F3A359C()
{
  if (!qword_27FD67D88)
  {
    sub_25F3934C0(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27FD67D88);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25F3A35F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25F3A3640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F3A36B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  swift_retain_n();
  v10 = sub_25F3C39CC();
  result = sub_25F3C393C();
  *a5 = a1;
  *(a5 + 8) = 256;
  *(a5 + 10) = a4;
  *(a5 + 16) = v10;
  *(a5 + 24) = a3;
  *(a5 + 32) = a1;
  *(a5 + 40) = 257;
  *(a5 + 42) = a4;
  *(a5 + 48) = a2;
  *(a5 + 56) = result;
  return result;
}

double sub_25F3A372C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = sub_25F3C3EBC();
  v9 = v8;
  sub_25F3A36B0(v3, v4, v5, v6, &v14);
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22[0] = v14;
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v17;
  sub_25F355568(&v18, &v13, &qword_27FD68370, &qword_25F3C92D8);
  sub_25F349AA8(v22, &qword_27FD68370, &qword_25F3C92D8);
  *a1 = v7;
  *(a1 + 8) = v9;
  v10 = v19;
  *(a1 + 16) = v18;
  *(a1 + 32) = v10;
  result = *&v20;
  v12 = v21;
  *(a1 + 48) = v20;
  *(a1 + 64) = v12;
  return result;
}

void *sub_25F3A3828@<X0>(uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, char a7@<W6>, double a8@<X7>, void *a9@<X8>, unsigned __int8 a10, double a11, unsigned __int8 a12, double a13, unsigned __int8 a14, double a15, unsigned __int8 a16, double a17, unsigned __int8 a18, unsigned __int8 a19)
{
  v22 = sub_25F3C39AC();
  MEMORY[0x28223BE20](v22 - 8);
  v72 = sub_25F3C39CC();
  v71 = sub_25F3C393C();

  sub_25F3C36AC();
  v23 = a3 & 1;
  v70 = a3;
  v24 = (a3 >> 8) & 1;
  *&v131[6] = v135;
  *&v131[22] = v136;
  *&v131[38] = v137;
  v25 = sub_25F3C3EBC();
  v27 = v26;
  v28 = sub_25F3C3EBC();
  LOBYTE(v138[0]) = v23;
  BYTE1(v138[0]) = v24;
  *(v138 + 2) = *v131;
  *(&v138[1] + 2) = *&v131[16];
  v138[2] = *&v131[30];
  *&v139 = a2;
  WORD4(v139) = 256;
  *&v140 = v25;
  *(&v140 + 1) = v27;
  *&v141 = v28;
  *(&v141 + 1) = v29;
  *&v132[22] = v138[1];
  *&v132[6] = v138[0];
  *&v132[86] = v141;
  *&v132[70] = v140;
  *&v132[54] = v139;
  *&v132[38] = *&v131[30];
  v82 = v24;
  v142[0] = v23;
  v142[1] = v24;
  *&v144[14] = *&v131[30];
  *v144 = *&v131[16];
  v143 = *v131;
  v145 = a2;
  v146 = 256;
  v147 = v25;
  v148 = v27;
  v149 = v28;
  v150 = v29;
  v83 = a2;

  sub_25F355568(v138, v93, &qword_27FD68388, &qword_25F3C9368);
  sub_25F349AA8(v142, &qword_27FD68388, &qword_25F3C9368);
  sub_25F3C3EBC();
  if (a7)
  {
    v30 = -INFINITY;
  }

  else
  {
    v30 = a6;
  }

  v31 = a8;
  if (a10)
  {
    v31 = v30;
  }

  if (a12)
  {
    a11 = v31;
  }

  if (v30 > v31 || v31 > a11)
  {
    goto LABEL_19;
  }

  if (a14)
  {
    v33 = -INFINITY;
  }

  else
  {
    v33 = a13;
  }

  if (a16)
  {
    a15 = v33;
  }

  if (a18)
  {
    a17 = a15;
  }

  if (v33 > a15 || a15 > a17)
  {
LABEL_19:
    sub_25F3C432C();
    v36 = sub_25F3C3BDC();
    sub_25F3C34EC();
  }

  sub_25F3C386C();
  sub_25F3C399C();
  sub_25F3C398C();
  v37 = sub_25F3C3BEC();
  v38 = sub_25F3C3BEC();
  sub_25F3C375C();
  if (v37 == v38)
  {
    v39 = v40;
  }

  v93[0] = v39;
  sub_25F3A4348();
  sub_25F3C396C();
  sub_25F3C398C();
  sub_25F3C39BC();
  v41 = sub_25F3C3CAC();
  v43 = v42;
  v45 = v44;
  v46 = sub_25F3C3C9C();
  v77 = v47;
  v79 = v46;
  v76 = v48;
  v81 = v49;
  sub_25F375FA8(v41, v43, v45 & 1);

  v50 = [objc_opt_self() secondarySystemBackgroundColor];
  v51 = sub_25F3C3D9C();
  v52 = 0.0;
  v53 = sub_25F3C3BFC();
  if (a19)
  {
    sub_25F3C375C();
    v55 = v54 / 7.0;
    v56 = -(v54 / 7.0);
    if ((v70 & 0x10000) != 0)
    {
      v52 = v55;
    }

    else
    {
      v52 = v56;
    }
  }

  v123 = v76 & 1;
  LOBYTE(v95) = v23;
  BYTE1(v95) = v82;
  *(&v95 + 2) = v151;
  WORD3(v95) = v152;
  *(&v95 + 1) = v83;
  *v96 = 256;
  *&v96[50] = *&v132[48];
  *&v96[66] = *&v132[64];
  *&v96[82] = *&v132[80];
  *&v96[96] = *&v132[94];
  *&v96[2] = *v132;
  *&v96[18] = *&v132[16];
  *&v96[34] = *&v132[32];
  *&v96[200] = v130;
  *&v96[104] = v124;
  *&v96[136] = v126;
  *&v96[120] = v125;
  *&v96[184] = v129;
  *&v96[168] = v128;
  *&v96[152] = v127;
  *v94 = v95;
  *&v94[16] = *v96;
  *&v94[64] = *&v96[48];
  *&v94[80] = *&v96[64];
  *&v94[32] = *&v96[16];
  *&v94[48] = *&v96[32];
  *&v94[128] = *&v96[112];
  *&v94[144] = *&v96[128];
  *&v94[96] = *&v96[80];
  *&v94[112] = *&v96[96];
  *&v94[224] = *(&v130 + 1);
  *&v94[192] = *&v96[176];
  *&v94[208] = *&v96[192];
  *&v94[160] = *&v96[144];
  *&v94[176] = *&v96[160];
  *&v97 = v79;
  *(&v97 + 1) = v77;
  LOBYTE(v98) = v76 & 1;
  *(&v98 + 1) = *v122;
  DWORD1(v98) = *&v122[3];
  *(&v98 + 1) = v81;
  *&v99 = v51;
  BYTE8(v99) = v53;
  *(&v99 + 9) = *v121;
  HIDWORD(v99) = *&v121[3];
  *&v100 = 0;
  *(&v100 + 1) = v52;
  *&v94[264] = v99;
  *&v94[280] = v100;
  *&v94[248] = v98;
  *&v94[232] = v97;
  v101[0] = v79;
  v101[1] = v77;
  v102 = v76 & 1;
  *&v103[3] = *&v122[3];
  *v103 = *v122;
  v104 = v81;
  v105 = v51;
  v106 = v53;
  *&v107[3] = *&v121[3];
  *v107 = *v121;
  v108 = 0;
  v109 = v52;
  sub_25F355568(&v95, v93, &qword_27FD68398, &qword_25F3C9370);
  sub_25F355568(&v97, v93, &qword_27FD683A0, &qword_25F3C9378);
  sub_25F349AA8(v101, &qword_27FD683A0, &qword_25F3C9378);
  v118 = *&v132[48];
  v119 = *&v132[64];
  *v120 = *&v132[80];
  v115 = *v132;
  v116 = *&v132[16];
  v117 = *&v132[32];
  *(&v120[8] + 6) = v127;
  *(&v120[10] + 6) = v128;
  *(&v120[12] + 6) = v129;
  *(&v120[14] + 6) = v130;
  *(&v120[2] + 6) = v124;
  *(&v120[4] + 6) = v125;
  v110[0] = v23;
  v110[1] = v82;
  v111 = v151;
  v112 = v152;
  v113 = v83;
  v114 = 256;
  *(&v120[1] + 6) = *&v132[94];
  *(&v120[6] + 6) = v126;
  sub_25F349AA8(v110, &qword_27FD68398, &qword_25F3C9370);
  sub_25F3C375C();
  v58 = v57;
  v60 = v59;
  sub_25F3C375C();
  if (a19)
  {
    v63 = v58 / 5.0;
    v64 = 0.0;
    v65 = 0.0;
    v66 = v61 / 5.0;
  }

  else
  {
    v65 = v60 * 0.25;
    v66 = 0.0;
    v63 = 0.0;
    v64 = v62 / 2.4;
  }

  v67 = sub_25F3C3BFC();
  v133 = 0;
  v68 = sub_25F3C3D6C();
  v84[0] = v72;
  v84[1] = v71;
  memcpy(&v84[2], v94, 0x128uLL);
  LOBYTE(v84[39]) = v67;
  *(&v84[39] + 1) = *v134;
  HIDWORD(v84[39]) = *&v134[3];
  *&v84[40] = v65;
  *&v84[41] = v63;
  *&v84[42] = v64;
  *&v84[43] = v66;
  LOBYTE(v84[44]) = 0;
  memcpy(v93, v84, 0x161uLL);
  sub_25F355568(v84, v85, &qword_27FD683A8, &qword_25F3C9380);
  v85[0] = v72;
  v85[1] = v71;
  memcpy(v86, v94, 0x128uLL);
  v86[296] = v67;
  *v87 = *v134;
  *&v87[3] = *&v134[3];
  v88 = v65;
  v89 = v63;
  v90 = v64;
  v91 = v66;
  v92 = 0;
  sub_25F349AA8(v85, &qword_27FD683A8, &qword_25F3C9380);
  *a9 = a4;
  a9[1] = a5;
  result = memcpy(a9 + 2, v93, 0x168uLL);
  a9[47] = v68;
  return result;
}

double sub_25F3A417C@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = v1[2];
  v16 = v1[3];
  v8 = sub_25F3C3BEC();
  v9 = v8 == sub_25F3C3BEC();
  v10 = v9;
  v11 = !v9;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0x4024000000000000;
  }

  if (v9)
  {
    v13 = 0x4024000000000000;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v4;
  *(v14 + 25) = v5;
  *(v14 + 26) = v6;
  *(v14 + 32) = v7;
  *(v14 + 40) = v16;
  *(v14 + 48) = v13;
  *(v14 + 56) = v11;
  *(v14 + 64) = v13;
  *(v14 + 72) = v11;
  *(v14 + 80) = v13;
  *(v14 + 88) = v11;
  *(v14 + 96) = v12;
  *(v14 + 104) = v10;
  *(v14 + 112) = v12;
  *(v14 + 120) = v10;
  *(v14 + 128) = v12;
  *(v14 + 136) = v10;
  *(v14 + 137) = v10;
  *a1 = sub_25F3A4290;
  a1[1] = v14;

  return result;
}

void *sub_25F3A4290@<X0>(void *a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 24);
  if (*(v2 + 26))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_25F3A3828(*(v2 + 16), v4 | v5, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), a2, *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 136), *(v2 + 137));
}

unint64_t sub_25F3A4348()
{
  result = qword_27FD68390;
  if (!qword_27FD68390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Arrow(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for Arrow(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F3A4540(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, __int16 a6)
{
  Width = CGRectGetWidth(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  Height = CGRectGetHeight(v23);
  v13 = sub_25F3C3BEC();
  if (v13 == sub_25F3C3BEC())
  {
    if ((a6 & 0x100) != 0)
    {
      sub_25F3C3C7C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD683E8, &qword_25F3C94A8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25F3C9210;
    *(v14 + 32) = xmmword_25F3C9220;
    v15 = Height + -10.0;
    *(v14 + 48) = 0x4014000000000000;
    v16 = 10.0;
    Width = 5.0;
    v17 = 0.0;
    v18 = Height + -10.0;
    v19 = Height + -10.0;
    v20 = 5.0;
  }

  else
  {
    v15 = Height * 0.5;
    if ((a6 & 0x100) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD683E8, &qword_25F3C94A8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_25F3C9200;
      *(v21 + 32) = 0x4024000000000000;
      *(v21 + 40) = v15;
      v18 = v15 + -5.0;
      *(v21 + 48) = 0x4024000000000000;
      *(v21 + 56) = v15 + -5.0;
      *(v21 + 64) = 0;
      *(v21 + 72) = v15;
      v19 = v15 + 5.0;
      *(v21 + 80) = 0x4024000000000000;
      *(v21 + 88) = v15 + 5.0;
      *(v21 + 96) = 0x4024000000000000;
      *(v21 + 104) = v15;
      sub_25F3C3C7C();
    }

    else
    {
      v18 = v15 + -5.0;
      v19 = v15 + 5.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD683E8, &qword_25F3C94A8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25F3C9210;
    *(v14 + 32) = 0x4024000000000000;
    v17 = Width + -10.0;
    *(v14 + 40) = v15;
    *(v14 + 48) = Width + -10.0;
    Height = Height * 0.5;
    v16 = Width + -10.0;
    v20 = Width + -10.0;
  }

  *(v14 + 56) = v15;
  *(v14 + 64) = v17;
  *(v14 + 72) = v18;
  *(v14 + 80) = Width;
  *(v14 + 88) = Height;
  *(v14 + 96) = v16;
  *(v14 + 104) = v19;
  *(v14 + 112) = v20;
  *(v14 + 120) = v15;
  sub_25F3C3C7C();

  return sub_25F3C3C6C();
}

double sub_25F3A4754@<D0>(uint64_t a1@<X8>)
{
  sub_25F3C3C8C();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_25F3A47E8(uint64_t *a1))()
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
  *(v2 + 32) = sub_25F3C362C();
  return sub_25F3A4870;
}

void sub_25F3A4870(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_25F3A48BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3A4AFC();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_25F3A4920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3A4AFC();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_25F3A4984(uint64_t a1)
{
  v2 = sub_25F3A4AFC();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_25F3A49D4()
{
  result = qword_27FD683D0;
  if (!qword_27FD683D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD683D0);
  }

  return result;
}

unint64_t sub_25F3A4A2C()
{
  result = qword_27FD683D8;
  if (!qword_27FD683D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD683D8);
  }

  return result;
}

unint64_t sub_25F3A4A84()
{
  result = qword_27FD683E0;
  if (!qword_27FD683E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD683E0);
  }

  return result;
}

uint64_t sub_25F3A4AD8(uint64_t a1)
{
  if (*(v1 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_25F3A4540(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1, v2 | *(v1 + 48));
}

unint64_t sub_25F3A4AFC()
{
  result = qword_27FD683F0;
  if (!qword_27FD683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD683F0);
  }

  return result;
}

void *sub_25F3A4BA0()
{
  swift_defaultActor_initialize();
  sub_25F35BEAC(v0 + 18);
  sub_25F394000(v0 + 20);
  v1 = MEMORY[0x277D84FA0];
  v0[21] = MEMORY[0x277D84FA0];
  v2 = MEMORY[0x277D84F90];
  v0[14] = sub_25F35460C(MEMORY[0x277D84F90]);
  v0[15] = sub_25F3547F4(v2);
  v0[16] = sub_25F354A10(v2);
  v0[17] = sub_25F354C00(v2);
  swift_beginAccess();
  v0[21] = v1;

  return v0;
}

uint64_t sub_25F3A4C50(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67500, &qword_25F3C62C8);
  v3[26] = swift_task_alloc();
  v4 = sub_25F3C2B6C();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_25F3C271C();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3A4DB4, v2, 0);
}

uint64_t sub_25F3A4DB4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v20 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  sub_25F3C2AFC();
  sub_25F3C2B7C();
  sub_25F3C2B4C();
  (*(v3 + 8))(v4, v5);
  sub_25F3A6C00(v1, v6);
  sub_25F349AA8(v6, &qword_27FD67500, &qword_25F3C62C8);
  v8 = *(v2 + 8);
  *(v0 + 272) = v8;
  *(v0 + 280) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v20);
  sub_25F3C2AFC();
  swift_beginAccess();
  v9 = *(v7 + 128);
  if (*(v9 + 16))
  {
    v10 = *(v0 + 256);

    v11 = sub_25F35C4C4(v10);
    if (v12)
    {
      v13 = *(v0 + 256);
      v14 = *(v0 + 240);
      v15 = *(v0 + 184);
      sub_25F349E38(*(v9 + 56) + 40 * v11, v0 + 16);
      v8(v13, v14);

      sub_25F3440A0((v0 + 16), v15);

      v16 = *(v0 + 8);

      return v16();
    }
  }

  v8(*(v0 + 256), *(v0 + 240));
  v18 = swift_task_alloc();
  *(v0 + 288) = v18;
  *v18 = v0;
  v18[1] = sub_25F3A501C;
  v19 = *(v0 + 192);

  return sub_25F3AA8C4(v0 + 56, v19);
}

uint64_t sub_25F3A501C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_25F3A5474;
  }

  else
  {
    v4 = sub_25F3A5148;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F3A5148(uint64_t a1)
{
  v2 = v1[33];
  sub_25F3C2AFC();
  sub_25F349E38((v1 + 7), (v1 + 12));
  swift_beginAccess();
  sub_25F393EE4((v1 + 12), v2);
  swift_endAccess();
  sub_25F3C2AFC();
  v3 = v1[10];
  v4 = v1[11];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v6 = swift_task_alloc();
  v1[38] = v6;
  v7 = *(v4 + 8);
  *v6 = v1;
  v6[1] = sub_25F3A5260;
  v8 = v1[33];
  v9 = v1[25];

  return sub_25F3AE61C(v8, v5, v9, v3, v7);
}

uint64_t sub_25F3A5260()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 200);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_25F3A53DC, v4, 0);
}

uint64_t sub_25F3A53DC()
{
  sub_25F3440A0((v0 + 56), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3A5474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3A5500(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67500, &qword_25F3C62C8);
  v3[26] = swift_task_alloc();
  v4 = sub_25F3C2B6C();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_25F3C271C();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3A5664, v2, 0);
}

uint64_t sub_25F3A5664(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  v21 = *(v1 + 240);
  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  v7 = *(v1 + 208);
  v6 = *(v1 + 216);
  v8 = *(v1 + 200);
  sub_25F3C2AFC();
  sub_25F3C2B7C();
  sub_25F3C2B4C();
  (*(v4 + 8))(v5, v6);
  sub_25F3A6C00(v2, v7);
  sub_25F349AA8(v7, &qword_27FD67500, &qword_25F3C62C8);
  v9 = *(v3 + 8);
  *(v1 + 272) = v9;
  *(v1 + 280) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v21);
  sub_25F3C2AFC();
  swift_beginAccess();
  v10 = *(v8 + 136);
  if (*(v10 + 16))
  {
    v11 = *(v1 + 256);

    v12 = sub_25F35C4C4(v11);
    if (v13)
    {
      v14 = *(v1 + 256);
      v15 = *(v1 + 240);
      v16 = *(v1 + 184);
      sub_25F349E38(*(v10 + 56) + 40 * v12, v1 + 16);
      v9(v14, v15);

      sub_25F3440A0((v1 + 16), v16);

      v17 = *(v1 + 8);

      return v17();
    }
  }

  v9(*(v1 + 256), *(v1 + 240));
  v19 = swift_task_alloc();
  *(v1 + 288) = v19;
  *v19 = v1;
  v19[1] = sub_25F3A58CC;
  v20 = *(v1 + 192);

  return sub_25F3AB218(v1 + 56, v20);
}

uint64_t sub_25F3A58CC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_25F3AFC2C;
  }

  else
  {
    v4 = sub_25F3A59F8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F3A59F8(uint64_t a1)
{
  v2 = v1[33];
  sub_25F3C2AFC();
  sub_25F349E38((v1 + 7), (v1 + 12));
  swift_beginAccess();
  sub_25F393CAC((v1 + 12), v2);
  swift_endAccess();
  sub_25F3C2AFC();
  v3 = v1[10];
  v4 = v1[11];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v6 = swift_task_alloc();
  v1[38] = v6;
  v7 = *(v4 + 8);
  *v6 = v1;
  v6[1] = sub_25F3A5B10;
  v8 = v1[33];
  v9 = v1[25];

  return sub_25F3AE61C(v8, v5, v9, v3, v7);
}

uint64_t sub_25F3A5B10()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 200);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_25F3AFC30, v4, 0);
}

uint64_t sub_25F3A5C8C(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = sub_25F3C253C();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68460, &qword_25F3C95D8);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67DF0, &qword_25F3C85B0);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67500, &qword_25F3C62C8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3A5E14, v2, 0);
}

uint64_t sub_25F3A5E14()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 248);

    v4 = sub_25F35C4C4(v3);
    v5 = *(v0 + 312);
    if (v6)
    {
      v7 = v4;
      v8 = *(v2 + 56);
      updated = type metadata accessor for EntryPointIndex.UpdateState(0);
      v10 = *(updated - 8);
      sub_25F3AF6F4(v8 + *(v10 + 72) * v7, v5, type metadata accessor for EntryPointIndex.UpdateState);

      (*(v10 + 56))(v5, 0, 1, updated);
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(v0 + 312);
  }

  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  (*(*(updated - 8) + 56))(v5, 1, 1, updated);
LABEL_7:
  v11 = *(v0 + 312);
  type metadata accessor for EntryPointIndex.UpdateState(0);
  v12 = (*(*(updated - 8) + 48))(v11, 1, updated);
  v13 = *(v0 + 336);
  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  if (v12)
  {
    sub_25F349AA8(v11, &qword_27FD67DF0, &qword_25F3C85B0);
    v16 = *(v15 + 56);
    v16(v13, 1, 1, v14);
    v17 = *(v15 + 16);
  }

  else
  {
    v18 = *(v15 + 16);
    v18(*(v0 + 336), v11, *(v0 + 272));
    sub_25F349AA8(v11, &qword_27FD67DF0, &qword_25F3C85B0);
    v16 = *(v15 + 56);
    v16(v13, 0, 1, v14);
    v17 = v18;
  }

  v20 = *(v0 + 328);
  v19 = *(v0 + 336);
  v22 = *(v0 + 296);
  v21 = *(v0 + 304);
  v23 = *(v0 + 272);
  v24 = *(v0 + 280);
  v17(v20, *(v0 + 256), v23);
  v16(v20, 0, 1, v23);
  v25 = *(v22 + 48);
  sub_25F355568(v19, v21, &qword_27FD67500, &qword_25F3C62C8);
  sub_25F355568(v20, v21 + v25, &qword_27FD67500, &qword_25F3C62C8);
  v26 = *(v24 + 48);
  if (v26(v21, 1, v23) == 1)
  {
    v27 = *(v0 + 336);
    v28 = *(v0 + 272);
    sub_25F349AA8(*(v0 + 328), &qword_27FD67500, &qword_25F3C62C8);
    sub_25F349AA8(v27, &qword_27FD67500, &qword_25F3C62C8);
    if (v26(v21 + v25, 1, v28) == 1)
    {
      sub_25F349AA8(*(v0 + 304), &qword_27FD67500, &qword_25F3C62C8);
      goto LABEL_17;
    }

LABEL_15:
    v36 = *(v0 + 304);
    v37 = &qword_27FD68460;
    v38 = &qword_25F3C95D8;
LABEL_33:
    sub_25F349AA8(v36, v37, v38);
    goto LABEL_34;
  }

  v29 = *(v0 + 272);
  sub_25F355568(*(v0 + 304), *(v0 + 320), &qword_27FD67500, &qword_25F3C62C8);
  v30 = v26(v21 + v25, 1, v29);
  v32 = *(v0 + 328);
  v31 = *(v0 + 336);
  v33 = *(v0 + 320);
  if (v30 == 1)
  {
    v34 = *(v0 + 272);
    v35 = *(v0 + 280);
    sub_25F349AA8(*(v0 + 328), &qword_27FD67500, &qword_25F3C62C8);
    sub_25F349AA8(v31, &qword_27FD67500, &qword_25F3C62C8);
    (*(v35 + 8))(v33, v34);
    goto LABEL_15;
  }

  v62 = *(v0 + 304);
  v40 = *(v0 + 280);
  v39 = *(v0 + 288);
  v41 = *(v0 + 272);
  (*(v40 + 32))(v39, v21 + v25, v41);
  sub_25F3AF6AC(&qword_27FD68480, MEMORY[0x277D40810], MEMORY[0x277D40818]);
  v42 = sub_25F3C3FCC();
  v43 = *(v40 + 8);
  v43(v39, v41);
  sub_25F349AA8(v32, &qword_27FD67500, &qword_25F3C62C8);
  sub_25F349AA8(v31, &qword_27FD67500, &qword_25F3C62C8);
  v43(v33, v41);
  sub_25F349AA8(v62, &qword_27FD67500, &qword_25F3C62C8);
  if (v42)
  {
LABEL_17:
    v44 = *(v0 + 264);
    swift_beginAccess();
    v45 = *(v44 + 128);
    if (*(v45 + 16))
    {
      v46 = *(v0 + 248);

      v47 = sub_25F35C4C4(v46);
      if (v48)
      {
        sub_25F349E38(*(v45 + 56) + 40 * v47, v0 + 16);

        if (*(v0 + 40))
        {
          sub_25F349E38(v0 + 16, v0 + 136);
          sub_25F349AA8(v0 + 16, &qword_27FD67E00, &qword_25F3C85C0);
          v49 = *(v0 + 160);
          v50 = *(v0 + 168);
          __swift_project_boxed_opaque_existential_1((v0 + 136), v49);
          v51 = *(v50 + 8);
          v63 = (*(v51 + 56) + **(v51 + 56));
          v52 = swift_task_alloc();
          *(v0 + 344) = v52;
          *v52 = v0;
          v53 = sub_25F3A66D4;
LABEL_27:
          v52[1] = v53;

          return v63(v49, v51);
        }

LABEL_23:
        sub_25F349AA8(v0 + 16, &qword_27FD67E00, &qword_25F3C85C0);
        v54 = *(v0 + 264);
        swift_beginAccess();
        v55 = *(v54 + 136);
        if (*(v55 + 16))
        {
          v56 = *(v0 + 248);

          v57 = sub_25F35C4C4(v56);
          if (v58)
          {
            sub_25F349E38(*(v55 + 56) + 40 * v57, v0 + 56);

            if (*(v0 + 80))
            {
              sub_25F349E38(v0 + 56, v0 + 96);
              sub_25F349AA8(v0 + 56, &qword_27FD67DF8, &qword_25F3C85B8);
              v49 = *(v0 + 120);
              v59 = *(v0 + 128);
              __swift_project_boxed_opaque_existential_1((v0 + 96), v49);
              v51 = *(v59 + 8);
              v63 = (*(v51 + 56) + **(v51 + 56));
              v52 = swift_task_alloc();
              *(v0 + 352) = v52;
              *v52 = v0;
              v53 = sub_25F3A6A44;
              goto LABEL_27;
            }

            goto LABEL_32;
          }
        }

        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
LABEL_32:
        v37 = &qword_27FD67DF8;
        v38 = &qword_25F3C85B8;
        v36 = v0 + 56;
        goto LABEL_33;
      }
    }

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_23;
  }

LABEL_34:

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_25F3A66D4()
{
  v1 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_25F3A67E4, v1, 0);
}

uint64_t sub_25F3A67E4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v1 = *(v0 + 264);
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 248);

  v4 = sub_25F35C4C4(v3);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_9;
  }

  sub_25F349E38(*(v2 + 56) + 40 * v4, v0 + 56);

  if (*(v0 + 80))
  {
    sub_25F349E38(v0 + 56, v0 + 96);
    sub_25F349AA8(v0 + 56, &qword_27FD67DF8, &qword_25F3C85B8);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
    v8 = *(v7 + 8);
    v12 = (*(v8 + 56) + **(v8 + 56));
    v9 = swift_task_alloc();
    *(v0 + 352) = v9;
    *v9 = v0;
    v9[1] = sub_25F3A6A44;

    return v12(v6, v8);
  }

LABEL_9:
  sub_25F349AA8(v0 + 56, &qword_27FD67DF8, &qword_25F3C85B8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25F3A6A44()
{
  v1 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_25F3A6B54, v1, 0);
}

uint64_t sub_25F3A6B54()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3A6C00(uint64_t a1, uint64_t a2)
{
  v133 = a1;
  v3 = sub_25F3C354C();
  v124 = *(v3 - 8);
  v125 = v3;
  MEMORY[0x28223BE20](v3);
  v123 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3C271C();
  v130 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v121 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v120 = &v106 - v8;
  v134 = sub_25F3C245C();
  v114 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  v128 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v117 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68460, &qword_25F3C95D8);
  MEMORY[0x28223BE20](v122);
  v131 = &v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67DF0, &qword_25F3C85B0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v119 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v106 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v106 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67500, &qword_25F3C62C8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v118 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v106 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v127 = &v106 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - v27;
  v29 = sub_25F3C253C();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v115 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v106 - v33;
  sub_25F355568(a2, v28, &qword_27FD67500, &qword_25F3C62C8);
  v35 = v30[6];
  if (v35(v28, 1, v29) == 1)
  {
    sub_25F349AA8(v28, &qword_27FD67500, &qword_25F3C62C8);
    v36 = v123;
    sub_25F3C351C();
    v37 = v130;
    v38 = v121;
    (*(v130 + 16))(v121, v133, v5);
    v39 = sub_25F3C353C();
    v40 = sub_25F3C430C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v135 = v42;
      *v41 = 136315138;
      sub_25F3AF6AC(&qword_27FD68468, MEMORY[0x277D40A08], MEMORY[0x277D40A20]);
      v43 = sub_25F3C455C();
      v44 = v38;
      v46 = v45;
      (*(v37 + 8))(v44, v5);
      v47 = sub_25F369EE8(v43, v46, &v135);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_25F342000, v39, v40, "Received update without updateSeed for %s\n(per-update message streams will not be delivered for this update)", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x25F8DC6C0](v42, -1, -1);
      MEMORY[0x25F8DC6C0](v41, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v38, v5);
    }

    return (*(v124 + 8))(v36, v125);
  }

  v112 = v5;
  v48 = v30[4];
  v123 = v29;
  v107 = v48;
  v48(v34, v28, v29);
  v49 = v129;
  swift_beginAccess();
  v50 = *(v49 + 120);
  v51 = *(v50 + 16);
  v108 = v30 + 4;
  if (v51)
  {

    v52 = sub_25F35C4C4(v133);
    if (v53)
    {
      sub_25F3AF6F4(*(v50 + 56) + *(v128 + 72) * v52, v18, type metadata accessor for EntryPointIndex.UpdateState);
      v54 = 0;
    }

    else
    {
      v54 = 1;
    }
  }

  else
  {
    v54 = 1;
  }

  v56 = v128;
  v57 = updated;
  v124 = *(v128 + 56);
  v125 = v128 + 56;
  (v124)(v18, v54, 1, updated);
  v58 = *(v56 + 48);
  v110 = v56 + 48;
  v109 = v58;
  v59 = v58(v18, 1, v57);
  v116 = v30;
  if (v59)
  {
    sub_25F349AA8(v18, &qword_27FD67DF0, &qword_25F3C85B0);
    v60 = v30[7];
    v61 = v127;
    v62 = v123;
    v60(v127, 1, 1, v123);
    v63 = v30;
    v64 = v61;
    v65 = v63[2];
    v66 = (v63 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v67 = v30[2];
    v66 = (v30 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v68 = v127;
    v69 = v123;
    v67(v127, v18, v123);
    v70 = v18;
    v62 = v69;
    sub_25F349AA8(v70, &qword_27FD67DF0, &qword_25F3C85B0);
    v71 = v30;
    v64 = v68;
    v60 = v71[7];
    v60(v68, 0, 1, v62);
    v65 = v67;
  }

  v121 = v34;
  v111 = v65;
  v65(v24, v34, v62);
  v60(v24, 0, 1, v62);
  v72 = *(v122 + 48);
  v73 = v64;
  v74 = v64;
  v75 = v131;
  sub_25F355568(v73, v131, &qword_27FD67500, &qword_25F3C62C8);
  v76 = v75;
  sub_25F355568(v24, v75 + v72, &qword_27FD67500, &qword_25F3C62C8);
  v77 = v35(v75, 1, v62);
  v78 = v126;
  if (v77 == 1)
  {
    sub_25F349AA8(v24, &qword_27FD67500, &qword_25F3C62C8);
    v79 = v131;
    sub_25F349AA8(v74, &qword_27FD67500, &qword_25F3C62C8);
    if (v35((v79 + v72), 1, v62) == 1)
    {
      sub_25F349AA8(v79, &qword_27FD67500, &qword_25F3C62C8);
      return (v116[1])(v121, v62);
    }
  }

  else
  {
    v80 = v118;
    sub_25F355568(v76, v118, &qword_27FD67500, &qword_25F3C62C8);
    if (v35((v76 + v72), 1, v62) != 1)
    {
      v88 = v115;
      v107(v115, v76 + v72, v62);
      sub_25F3AF6AC(&qword_27FD68480, MEMORY[0x277D40810], MEMORY[0x277D40818]);
      v89 = sub_25F3C3FCC();
      v90 = v116[1];
      v90(v88, v62);
      sub_25F349AA8(v24, &qword_27FD67500, &qword_25F3C62C8);
      sub_25F349AA8(v127, &qword_27FD67500, &qword_25F3C62C8);
      v90(v80, v62);
      v78 = v126;
      sub_25F349AA8(v131, &qword_27FD67500, &qword_25F3C62C8);
      v81 = v130;
      v82 = v112;
      if (v89)
      {
        return (v90)(v121, v62);
      }

      goto LABEL_21;
    }

    sub_25F349AA8(v24, &qword_27FD67500, &qword_25F3C62C8);
    v79 = v131;
    sub_25F349AA8(v127, &qword_27FD67500, &qword_25F3C62C8);
    (v116[1])(v80, v62);
  }

  sub_25F349AA8(v79, &qword_27FD68460, &qword_25F3C95D8);
  v81 = v130;
  v82 = v112;
LABEL_21:
  v83 = *(v129 + 120);
  if (*(v83 + 16))
  {

    v84 = v133;
    v85 = sub_25F35C4C4(v133);
    if (v86)
    {
      sub_25F3AF6F4(*(v83 + 56) + *(v128 + 72) * v85, v78, type metadata accessor for EntryPointIndex.UpdateState);
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }
  }

  else
  {
    v87 = 1;
    v84 = v133;
  }

  v131 = v66;
  v91 = v87;
  v92 = updated;
  (v124)(v78, v91, 1, updated);
  v93 = v109(v78, 1, v92);
  v94 = v134;
  if (v93)
  {
    sub_25F349AA8(v78, &qword_27FD67DF0, &qword_25F3C85B0);
  }

  else
  {
    v95 = v117;
    sub_25F3AF6F4(v78, v117, type metadata accessor for EntryPointIndex.UpdateState);
    sub_25F349AA8(v78, &qword_27FD67DF0, &qword_25F3C85B0);
    v96 = *(v95 + *(updated + 20));
    v97 = *(v96 + 16);
    v98 = v113;
    if (v97)
    {
      v99 = *(v114 + 16);
      v100 = v96 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
      v101 = *(v114 + 72);
      v102 = (v114 + 8);
      do
      {
        v99(v98, v100, v94);
        sub_25F3AF6AC(&qword_27FD67558, MEMORY[0x277D40750], MEMORY[0x277D40748]);
        sub_25F3C2F0C();
        v94 = v134;
        (*v102)(v98, v134);
        v100 += v101;
        --v97;
      }

      while (v97);
    }

    sub_25F3AF7C4(v117, type metadata accessor for EntryPointIndex.UpdateState);
    v82 = v112;
    v81 = v130;
    v84 = v133;
    v62 = v123;
  }

  v103 = v120;
  (*(v81 + 16))(v120, v84, v82);
  v104 = v119;
  v105 = v121;
  v111(v119, v121, v62);
  *(v104 + *(updated + 20)) = MEMORY[0x277D84F90];
  (v124)(v104, 0, 1);
  swift_beginAccess();
  sub_25F393AA0(v104, v103);
  swift_endAccess();
  return (v116[1])(v105, v62);
}

uint64_t sub_25F3A7AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = sub_25F3C245C();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v7 = sub_25F3C271C();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v8 = sub_25F3C253C();
  v5[41] = v8;
  v5[42] = *(v8 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68460, &qword_25F3C95D8);
  v5[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67DF0, &qword_25F3C85B0);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67500, &qword_25F3C62C8);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v9 = sub_25F3C2A8C();
  v5[55] = v9;
  v5[56] = *(v9 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v10 = sub_25F3C354C();
  v5[61] = v10;
  v5[62] = *(v10 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3A7E50, v4, 0);
}

uint64_t sub_25F3A7E50(uint64_t a1)
{
  v214 = v1;
  v2 = *(v1 + 480);
  v3 = *(v1 + 440);
  v4 = *(v1 + 448);
  v5 = *(v1 + 240);
  sub_25F3C351C();
  v203 = *(v4 + 16);
  v203(v2, v5, v3);
  v6 = sub_25F3C353C();
  v7 = sub_25F3C430C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 520);
  v11 = *(v1 + 488);
  v10 = *(v1 + 496);
  v12 = *(v1 + 480);
  v14 = *(v1 + 440);
  v13 = *(v1 + 448);
  if (v8)
  {
    v200 = *(v1 + 488);
    v15 = swift_slowAlloc();
    v193 = v7;
    v16 = swift_slowAlloc();
    v213[0] = v16;
    *v15 = 136315138;
    sub_25F3AF6AC(&qword_27FD68470, MEMORY[0x277D40C50], MEMORY[0x277D40C70]);
    v17 = sub_25F3C455C();
    v196 = v9;
    v19 = v18;
    v210 = *(v13 + 8);
    v210(v12, v14);
    v20 = sub_25F369EE8(v17, v19, v213);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_25F342000, v6, v193, "EntryPointIndex received host message stream for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x25F8DC6C0](v16, -1, -1);
    MEMORY[0x25F8DC6C0](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v196, v200);
  }

  else
  {

    v210 = *(v13 + 8);
    v210(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  sub_25F3AA6B8(*(v1 + 224), v1 + 56);
  if (!*(v1 + 80))
  {
    v32 = *(v1 + 456);
    v33 = *(v1 + 336);
    v197 = *(v1 + 344);
    v201 = v21;
    v190 = *(v1 + 440);
    v194 = *(v1 + 328);
    v34 = *(v1 + 296);
    v35 = *(v1 + 304);
    v36 = *(v1 + 288);
    v38 = *(v1 + 232);
    v37 = *(v1 + 240);
    v39 = *(v1 + 224);
    sub_25F349AA8(v1 + 56, &qword_27FD68458, &unk_25F3C95C8);
    sub_25F3C351C();
    (*(v34 + 16))(v35, v39, v36);
    v203(v32, v37, v190);
    (*(v33 + 16))(v197, v38, v194);
    v40 = sub_25F3C353C();
    v191 = sub_25F3C433C();
    v207 = v40;
    v41 = os_log_type_enabled(v40, v191);
    v42 = *(v1 + 504);
    v43 = *(v1 + 488);
    v44 = *(v1 + 456);
    v45 = *(v1 + 440);
    v46 = *(v1 + 336);
    v204 = *(v1 + 344);
    v198 = *(v1 + 328);
    v48 = *(v1 + 296);
    v47 = *(v1 + 304);
    v49 = *(v1 + 288);
    if (v41)
    {
      v50 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v213[0] = v188;
      *v50 = 136315650;
      sub_25F3AF6AC(&qword_27FD68468, MEMORY[0x277D40A08], MEMORY[0x277D40A20]);
      v184 = v42;
      v187 = v43;
      v51 = sub_25F3C455C();
      v53 = v52;
      (*(v48 + 8))(v47, v49);
      v54 = sub_25F369EE8(v51, v53, v213);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      sub_25F3AF6AC(&qword_27FD68470, MEMORY[0x277D40C50], MEMORY[0x277D40C70]);
      v55 = sub_25F3C455C();
      v57 = v56;
      v210(v44, v45);
      v58 = sub_25F369EE8(v55, v57, v213);

      *(v50 + 14) = v58;
      *(v50 + 22) = 2080;
      sub_25F3AF6AC(&qword_27FD68478, MEMORY[0x277D40810], MEMORY[0x277D40820]);
      v59 = sub_25F3C455C();
      v61 = v60;
      (*(v46 + 8))(v204, v198);
      v62 = sub_25F369EE8(v59, v61, v213);

      *(v50 + 24) = v62;
      _os_log_impl(&dword_25F342000, v207, v191, "Invalidating received host message stream for unknown entry point:\n  - ContentIdentifier: %s\n  - Instance: %s\n  - UpdateSeed: %s", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v188, -1, -1);
      MEMORY[0x25F8DC6C0](v50, -1, -1);

      v63 = v184;
      v64 = v187;
    }

    else
    {

      (*(v46 + 8))(v204, v198);
      v210(v44, v45);
      (*(v48 + 8))(v47, v49);
      v63 = v42;
      v64 = v43;
    }

    v201(v63, v64);
    sub_25F3AF6AC(&qword_27FD67558, MEMORY[0x277D40750], MEMORY[0x277D40748]);
    sub_25F3C2F0C();
    goto LABEL_50;
  }

  v22 = *(v1 + 248);
  sub_25F3440A0((v1 + 56), v1 + 16);
  swift_beginAccess();
  v186 = v22;
  v23 = *(v22 + 120);
  if (*(v23 + 16))
  {
    v24 = *(v1 + 224);

    v25 = sub_25F35C4C4(v24);
    v26 = *(v1 + 392);
    if (v27)
    {
      v28 = v25;
      v29 = *(v23 + 56);
      updated = type metadata accessor for EntryPointIndex.UpdateState(0);
      v31 = *(updated - 8);
      sub_25F3AF6F4(v29 + *(v31 + 72) * v28, v26, type metadata accessor for EntryPointIndex.UpdateState);

      (*(v31 + 56))(v26, 0, 1, updated);
      goto LABEL_13;
    }
  }

  else
  {
    v26 = *(v1 + 392);
  }

  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  (*(*(updated - 8) + 56))(v26, 1, 1, updated);
LABEL_13:
  v65 = *(v1 + 392);
  type metadata accessor for EntryPointIndex.UpdateState(0);
  v185 = *(updated - 8);
  v189 = *(v185 + 48);
  v66 = v189(v65, 1, updated);
  v67 = *(v1 + 432);
  v69 = *(v1 + 328);
  v68 = *(v1 + 336);
  v192 = updated;
  if (v66)
  {
    sub_25F349AA8(v65, &qword_27FD67DF0, &qword_25F3C85B0);
    v70 = *(v68 + 56);
    v70(v67, 1, 1, v69);
    v71 = *(v68 + 16);
  }

  else
  {
    v72 = *(v68 + 16);
    v72(v67, v65, v69);
    sub_25F349AA8(v65, &qword_27FD67DF0, &qword_25F3C85B0);
    v70 = *(v68 + 56);
    v70(v67, 0, 1, v69);
    v71 = v72;
  }

  v74 = *(v1 + 424);
  v73 = *(v1 + 432);
  v75 = *(v1 + 368);
  v76 = *(v1 + 376);
  v77 = *(v1 + 328);
  v78 = *(v1 + 336);
  v199 = v71;
  v71(v74, *(v1 + 232), v77);
  v183 = v70;
  v70(v74, 0, 1, v77);
  v79 = *(v75 + 48);
  sub_25F355568(v73, v76, &qword_27FD67500, &qword_25F3C62C8);
  sub_25F355568(v74, v76 + v79, &qword_27FD67500, &qword_25F3C62C8);
  v80 = *(v78 + 48);
  if (v80(v76, 1, v77) == 1)
  {
    v81 = *(v1 + 432);
    v82 = *(v1 + 328);
    sub_25F349AA8(*(v1 + 424), &qword_27FD67500, &qword_25F3C62C8);
    sub_25F349AA8(v81, &qword_27FD67500, &qword_25F3C62C8);
    if (v80(v76 + v79, 1, v82) == 1)
    {
      sub_25F349AA8(*(v1 + 376), &qword_27FD67500, &qword_25F3C62C8);
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v83 = *(v1 + 328);
  sub_25F355568(*(v1 + 376), *(v1 + 416), &qword_27FD67500, &qword_25F3C62C8);
  v84 = v80(v76 + v79, 1, v83);
  v86 = *(v1 + 424);
  v85 = *(v1 + 432);
  v87 = *(v1 + 416);
  if (v84 == 1)
  {
    v89 = *(v1 + 328);
    v88 = *(v1 + 336);
    sub_25F349AA8(*(v1 + 424), &qword_27FD67500, &qword_25F3C62C8);
    sub_25F349AA8(v85, &qword_27FD67500, &qword_25F3C62C8);
    (*(v88 + 8))(v87, v89);
LABEL_21:
    v202 = v21;
    sub_25F349AA8(*(v1 + 376), &qword_27FD68460, &qword_25F3C95D8);
LABEL_22:
    v90 = *(v1 + 464);
    v91 = *(v1 + 440);
    v92 = *(v1 + 352);
    v180 = *(v1 + 312);
    v93 = *(v1 + 296);
    v178 = *(v1 + 328);
    v179 = *(v1 + 288);
    v94 = *(v1 + 240);
    v96 = *(v1 + 224);
    v95 = *(v1 + 232);
    sub_25F3C351C();
    v203(v90, v94, v91);
    v199(v92, v95, v178);
    (*(v93 + 16))(v180, v96, v179);

    v97 = sub_25F3C353C();
    v98 = sub_25F3C433C();

    if (os_log_type_enabled(v97, v98))
    {
      v205 = v98;
      v208 = v97;
      v99 = *(v1 + 464);
      v100 = *(v1 + 440);
      v101 = *(v1 + 352);
      v103 = *(v1 + 328);
      v102 = *(v1 + 336);
      v104 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v213[0] = v181;
      *v104 = 136315650;
      sub_25F3AF6AC(&qword_27FD68470, MEMORY[0x277D40C50], MEMORY[0x277D40C70]);
      v105 = sub_25F3C455C();
      v107 = v106;
      v210(v99, v100);
      v108 = sub_25F369EE8(v105, v107, v213);

      *(v104 + 4) = v108;
      *(v104 + 12) = 2080;
      sub_25F3AF6AC(&qword_27FD68478, MEMORY[0x277D40810], MEMORY[0x277D40820]);
      v109 = sub_25F3C455C();
      v111 = v110;
      (*(v102 + 8))(v101, v103);
      v112 = sub_25F369EE8(v109, v111, v213);

      *(v104 + 14) = v112;
      *(v104 + 22) = 2080;
      v113 = *(v186 + 120);
      if (*(v113 + 16))
      {
        v114 = *(v1 + 312);

        v115 = sub_25F35C4C4(v114);
        v116 = v185;
        if (v117)
        {
          sub_25F3AF6F4(*(v113 + 56) + *(v185 + 72) * v115, *(v1 + 384), type metadata accessor for EntryPointIndex.UpdateState);
          v118 = 0;
        }

        else
        {
          v118 = 1;
        }
      }

      else
      {
        v118 = 1;
        v116 = v185;
      }

      v159 = *(v1 + 384);
      v160 = 1;
      (*(v116 + 56))(v159, v118, 1, v192);
      if (!v189(v159, 1, v192))
      {
        v199(*(v1 + 408), *(v1 + 384), *(v1 + 328));
        v160 = 0;
      }

      v161 = *(v1 + 512);
      v211 = *(v1 + 488);
      v162 = *(v1 + 408);
      v163 = *(v1 + 328);
      v164 = *(v1 + 312);
      v166 = *(v1 + 288);
      v165 = *(v1 + 296);
      sub_25F349AA8(*(v1 + 384), &qword_27FD67DF0, &qword_25F3C85B0);
      v183(v162, v160, 1, v163);
      v167 = sub_25F3C43AC();
      v169 = v168;
      sub_25F349AA8(v162, &qword_27FD67500, &qword_25F3C62C8);
      (*(v165 + 8))(v164, v166);
      v170 = sub_25F369EE8(v167, v169, v213);

      *(v104 + 24) = v170;
      _os_log_impl(&dword_25F342000, v208, v205, "Invalidating received host message stream for incorrect update seed:\n  - Instance: %s\n  - UpdateSeed: %s\n  - Current update seed: %s", v104, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v181, -1, -1);
      MEMORY[0x25F8DC6C0](v104, -1, -1);

      v126 = v161;
      v127 = v211;
    }

    else
    {
      v209 = *(v1 + 512);
      v206 = *(v1 + 488);
      v195 = *(v1 + 464);
      v119 = *(v1 + 440);
      v120 = *(v1 + 352);
      v122 = *(v1 + 328);
      v121 = *(v1 + 336);
      v123 = *(v1 + 312);
      v125 = *(v1 + 288);
      v124 = *(v1 + 296);

      (*(v124 + 8))(v123, v125);
      (*(v121 + 8))(v120, v122);
      v210(v195, v119);
      v127 = v206;
      v126 = v209;
    }

    v202(v126, v127);
    sub_25F3AF6AC(&qword_27FD67558, MEMORY[0x277D40750], MEMORY[0x277D40748]);
    sub_25F3C2F0C();
    goto LABEL_49;
  }

  v202 = v21;
  v182 = *(v1 + 376);
  v128 = *(v1 + 360);
  v130 = *(v1 + 328);
  v129 = *(v1 + 336);
  (*(v129 + 32))(v128, v76 + v79, v130);
  sub_25F3AF6AC(&qword_27FD68480, MEMORY[0x277D40810], MEMORY[0x277D40818]);
  v131 = sub_25F3C3FCC();
  v132 = *(v129 + 8);
  v132(v128, v130);
  sub_25F349AA8(v86, &qword_27FD67500, &qword_25F3C62C8);
  sub_25F349AA8(v85, &qword_27FD67500, &qword_25F3C62C8);
  v132(v87, v130);
  sub_25F349AA8(v182, &qword_27FD67500, &qword_25F3C62C8);
  if ((v131 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_30:
  (*(*(v1 + 296) + 16))(*(v1 + 320), *(v1 + 224), *(v1 + 288));
  v133 = sub_25F3A4B50(v1 + 96);
  v134 = sub_25F3A97D4((v1 + 128));
  v136 = v135;
  if (v189(v135, 1, v192))
  {
    v137 = *(v1 + 320);
    v139 = *(v1 + 288);
    v138 = *(v1 + 296);
    (v134)(v1 + 128, 0);
    (*(v138 + 8))(v137, v139);
  }

  else
  {
    (*(*(v1 + 264) + 16))(*(v1 + 280), *(v1 + 216), *(v1 + 256));
    v140 = *(v192 + 20);
    v141 = *(v136 + v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v136 + v140) = v141;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v141 = sub_25F37A1A4(0, v141[2] + 1, 1, v141);
      *(v136 + v140) = v141;
    }

    v144 = v141[2];
    v143 = v141[3];
    if (v144 >= v143 >> 1)
    {
      v141 = sub_25F37A1A4((v143 > 1), v144 + 1, 1, v141);
      *(v136 + v140) = v141;
    }

    v145 = *(v1 + 320);
    v147 = *(v1 + 288);
    v146 = *(v1 + 296);
    v148 = *(v1 + 280);
    v149 = *(v1 + 256);
    v150 = *(v1 + 264);
    v141[2] = v144 + 1;
    (*(v150 + 32))(v141 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v144, v148, v149);
    (v134)(v1 + 128, 0);
    (*(v146 + 8))(v145, v147);
  }

  (v133)(v1 + 96, 0);
  sub_25F3C2A5C();
  sub_25F3AF6AC(&qword_27FD67D58, MEMORY[0x277D40C50], MEMORY[0x277D40C68]);
  sub_25F3C40CC();
  sub_25F3C40CC();
  v151 = *(v1 + 472);
  v152 = *(v1 + 440);
  if (*(v1 + 184) == *(v1 + 200) && *(v1 + 192) == *(v1 + 208))
  {
    v210(*(v1 + 472), *(v1 + 440));

LABEL_41:
    v155 = *(v1 + 264);
    v154 = *(v1 + 272);
    v156 = *(v1 + 256);
    v157 = *(v1 + 216);
    sub_25F3C273C();
    (*(v155 + 16))(v154, v157, v156);
    v213[0] = 0x2D746E656761;
    v213[1] = 0xE600000000000000;
    sub_25F3AF6AC(&qword_27FD68478, MEMORY[0x277D40810], MEMORY[0x277D40820]);
    v158 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v158);

    sub_25F3C272C();

LABEL_49:
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
LABEL_50:

    v171 = *(v1 + 8);

    return v171();
  }

  v153 = sub_25F3C459C();
  v210(v151, v152);

  if (v153)
  {
    goto LABEL_41;
  }

  v173 = *(v1 + 40);
  v174 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v173);
  v212 = (*(v174 + 32) + **(v174 + 32));
  v175 = swift_task_alloc();
  *(v1 + 528) = v175;
  *v175 = v1;
  v175[1] = sub_25F3A94C4;
  v176 = *(v1 + 240);
  v177 = *(v1 + 216);

  return v212(v177, v176, v173, v174);
}

uint64_t sub_25F3A94C4(char a1)
{
  v2 = *(*v1 + 248);
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_25F3A95DC, v2, 0);
}

uint64_t sub_25F3A95DC()
{
  if ((*(v0 + 536) & 1) == 0)
  {
    sub_25F3AF6AC(&qword_27FD67558, MEMORY[0x277D40750], MEMORY[0x277D40748]);
    sub_25F3C2F0C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_25F3A97D4(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
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
  v5 = sub_25F3C271C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_25F3ADE54(v4, v9);
  return sub_25F3A98EC;
}

void sub_25F3A98EC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_25F3A9964(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_25F3C271C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = *(type metadata accessor for EntryPointIndex.PendingShellResource(0) - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3A9A80, v2, 0);
}

uint64_t sub_25F3A9A80()
{
  sub_25F3AA6B8(*(v0 + 128), v0 + 56);
  if (*(v0 + 80))
  {
    sub_25F3440A0((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_25F3A9DA0;
    v2 = *(v0 + 120);

    return sub_25F3A9F24(v2, v0 + 16);
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  sub_25F349AA8(v0 + 56, &qword_27FD68458, &unk_25F3C95C8);
  sub_25F3AF6F4(v7, v4, type metadata accessor for EntryPointIndex.PendingShellResource);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + 112);
  *(v6 + 112) = 0x8000000000000000;
  v11 = sub_25F35C4C4(v5);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_23:
    v9 = sub_25F37A050(0, v9[2] + 1, 1, v9);
    *(isUniquelyReferenced_nonNull_native + 8 * v11) = v9;
    goto LABEL_17;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F3BC754();
    }
  }

  else
  {
    v16 = *(v0 + 128);
    sub_25F3BA0B0(v14, isUniquelyReferenced_nonNull_native);
    v17 = sub_25F35C4C4(v16);
    if ((v15 & 1) != (v18 & 1))
    {

      return sub_25F3C45CC();
    }

    v11 = v17;
  }

  *(v6 + 112) = v9;
  if ((v15 & 1) == 0)
  {
    v19 = *(v0 + 160);
    (*(*(v0 + 152) + 16))(v19, *(v0 + 128), *(v0 + 144));
    sub_25F35DF74(v11, v19, MEMORY[0x277D84F90], v9);
  }

  isUniquelyReferenced_nonNull_native = v9[7];
  v9 = *(isUniquelyReferenced_nonNull_native + 8 * v11);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v11) = v9;
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v22 = v9[2];
  v21 = v9[3];
  if (v22 >= v21 >> 1)
  {
    v9 = sub_25F37A050((v21 > 1), v22 + 1, 1, v9);
    *(isUniquelyReferenced_nonNull_native + 8 * v11) = v9;
  }

  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v9[2] = v22 + 1;
  sub_25F3AF75C(v23, v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for EntryPointIndex.PendingShellResource);
  swift_endAccess();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_25F3A9DA0()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_25F3A9EB0, v1, 0);
}

uint64_t sub_25F3A9EB0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3A9F24(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_25F3C2EBC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_25F3C245C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for EntryPointIndex.PendingShellResource(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3AA074, v2, 0);
}

uint64_t sub_25F3AA074()
{
  sub_25F3AF6F4(v0[2], v0[12], type metadata accessor for EntryPointIndex.PendingShellResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  v3 = v0[3];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = *v2;
    v0[14] = *v2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674E0, &qword_25F3C6280);
    (*(v5 + 32))(v4, v2 + *(v8 + 48), v6);
    v9 = v3[3];
    v10 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v9);
    v18 = (*(v10 + 48) + **(v10 + 48));
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_25F3AA504;
    v12 = v0[7];

    return v18(v7, v12, v9, v10);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[12], v0[8]);
    v14 = v3[3];
    v15 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v14);
    v19 = (*(v15 + 40) + **(v15 + 40));
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_25F3AA35C;
    v17 = v0[10];

    return v19(v17, v14, v15);
  }
}

uint64_t sub_25F3AA35C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_25F3AA46C, v1, 0);
}

uint64_t sub_25F3AA46C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F3AA504()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_25F3AA614, v1, 0);
}

uint64_t sub_25F3AA614()
{
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3AA6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 128);
  if (!*(v6 + 16))
  {
    goto LABEL_6;
  }

  v7 = sub_25F35C4C4(a1);
  if ((v8 & 1) == 0)
  {

LABEL_6:
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_7;
  }

  sub_25F349E38(*(v6 + 56) + 40 * v7, v21);

  v9 = v22;
  v10 = v23;
  v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
  *(&v25 + 1) = v9;
  v26 = *(v10 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if (*(&v25 + 1))
  {
    return sub_25F3440A0(&v24, a2);
  }

LABEL_7:
  result = swift_beginAccess();
  v14 = *(v3 + 136);
  if (!*(v14 + 16))
  {
    goto LABEL_12;
  }

  v15 = sub_25F35C4C4(a1);
  if ((v16 & 1) == 0)
  {

LABEL_12:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    if (!*(&v25 + 1))
    {
      return result;
    }

    return sub_25F349AA8(&v24, &qword_27FD68458, &unk_25F3C95C8);
  }

  sub_25F349E38(*(v14 + 56) + 40 * v15, v21);

  v17 = v22;
  v18 = v23;
  v19 = __swift_project_boxed_opaque_existential_1(v21, v22);
  *(a2 + 24) = v17;
  *(a2 + 32) = *(v18 + 8);
  v20 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if (*(&v25 + 1))
  {
    return sub_25F349AA8(&v24, &qword_27FD68458, &unk_25F3C95C8);
  }

  return result;
}

uint64_t sub_25F3AA8C4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_25F3C2CAC();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_25F3C271C();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3AA9F0, v2, 0);
}

uint64_t sub_25F3AA9F0()
{
  v1 = sub_25F3C2B3C();
  sub_25F3AB99C(v1, v2);
  v0[18] = 0;

  v5 = sub_25F3C2B2C();
  v0[19] = v6;
  if (v6)
  {
    v0[20] = v5;
    sub_25F3C2AFC();
    sub_25F3C41CC();
    v0[21] = sub_25F3C41BC();
    v8 = sub_25F3C416C();

    return MEMORY[0x2822009F8](sub_25F3AADD0, v8, v7);
  }

  v9 = v0[10];
  sub_25F3C2B1C();
  swift_beginAccess();
  v10 = *(v9 + 144);
  if (*(v10 + 16))
  {
    v11 = v0[14];

    v12 = sub_25F35C3F0(v11);
    if (v13)
    {
      v14 = v0[8];
      v27 = *(*(v10 + 56) + 16 * v12);
      (*(v0[12] + 8))(v0[14], v0[11]);

      v15 = *(*(&v27 + 1) + 16);
      *(v14 + 24) = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
      v26 = (v15 + *v15);
      v17 = swift_task_alloc();
      v0[23] = v17;
      *v17 = v0;
      v17[1] = sub_25F3AAF08;

      return v26(boxed_opaque_existential_1);
    }
  }

  v18 = v0[13];
  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[10];
  (*(v20 + 8))(v0[14], v19);
  sub_25F3C2B1C();
  swift_beginAccess();
  v22 = *(v21 + 168);
  v23 = type metadata accessor for EntryPointIndex.NoEntryPoint(0);
  sub_25F3AF6AC(&qword_27FD68448, type metadata accessor for EntryPointIndex.NoEntryPoint, &unk_25F3C9918);
  swift_allocError();
  v25 = v24;
  *v24 = 0x49556E6F6ELL;
  v24[1] = 0xE500000000000000;
  (*(v20 + 32))(v24 + *(v23 + 20), v18, v19);
  *(v25 + *(v23 + 24)) = v22;
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F3AADD0()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[8];

  sub_25F3AB0DC(v4, v1, v2, v5);
  v0[22] = v3;
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  if (v3)
  {
    v9 = v0[10];
    (*(v7 + 8))(v6, v8);

    return MEMORY[0x2822009F8](sub_25F3AB05C, v9, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25F3AAF08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F3AB05C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3AB0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_25F3C446C();
  if (v9)
  {
    v10 = v9;
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      result = (*(v11 + 8))(a1, v10, v11);
      if (!v4)
      {
        sub_25F349E38(result + 16, a4);
      }
    }

    else
    {
      sub_25F3AF658();
      swift_allocError();
      v15 = v14;
      *(v14 + 24) = swift_getMetatypeMetadata();
      *v15 = v10;
      *(v15 + 32) = 1;
      return swift_willThrow();
    }
  }

  else
  {
    sub_25F3AF658();
    swift_allocError();
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25F3AB218(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_25F3C2CAC();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_25F3C271C();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3AB344, v2, 0);
}

uint64_t sub_25F3AB344()
{
  v1 = sub_25F3C2B3C();
  sub_25F3AB99C(v1, v2);
  v0[18] = 0;

  v5 = sub_25F3C2B2C();
  v0[19] = v6;
  if (v6)
  {
    v0[20] = v5;
    sub_25F3C2AFC();
    sub_25F3C41CC();
    v0[21] = sub_25F3C41BC();
    v7 = sub_25F3C416C();
    v9 = v8;
    v10 = sub_25F3AB67C;
LABEL_7:

    return MEMORY[0x2822009F8](v10, v7, v9);
  }

  v11 = v0[10];
  sub_25F3C2B1C();
  swift_beginAccess();
  v12 = *(v11 + 152);
  if (*(v12 + 16))
  {
    v13 = v0[14];

    v14 = sub_25F35C3F0(v13);
    if (v15)
    {
      v16 = v0[14];
      v17 = v0[11];
      v18 = v0[12];
      v19 = v0[8];
      v20 = (*(v12 + 56) + 16 * v14);
      v21 = *v20;
      v0[23] = *v20;
      v22 = v20[1];
      v0[24] = v22;
      (*(v18 + 8))(v16, v17);

      v0[25] = *(v22 + 32);
      v0[26] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0xBF95000000000000;
      v19[3] = v21;
      v19[4] = v22;
      v0[27] = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_25F3C41CC();
      v0[28] = sub_25F3C41BC();
      v7 = sub_25F3C416C();
      v9 = v23;
      v10 = sub_25F3AB7B4;
      goto LABEL_7;
    }
  }

  v24 = v0[13];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[10];
  (*(v26 + 8))(v0[14], v25);
  sub_25F3C2B1C();
  swift_beginAccess();
  v28 = *(v27 + 168);
  v29 = type metadata accessor for EntryPointIndex.NoEntryPoint(0);
  sub_25F3AF6AC(&qword_27FD68448, type metadata accessor for EntryPointIndex.NoEntryPoint, &unk_25F3C9918);
  swift_allocError();
  v31 = v30;
  *v30 = 0x656E656373;
  v30[1] = 0xE500000000000000;
  (*(v26 + 32))(v30 + *(v29 + 20), v24, v25);
  *(v31 + *(v29 + 24)) = v28;
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F3AB67C()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[8];

  sub_25F3AB860(v4, v1, v2, v5);
  v0[22] = v3;
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  if (v3)
  {
    v9 = v0[10];
    (*(v7 + 8))(v6, v8);

    return MEMORY[0x2822009F8](sub_25F3AFC28, v9, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25F3AB7B4()
{
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];

  v1(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3AB860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_25F3C446C();
  if (v9)
  {
    v10 = v9;
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      result = (*(v11 + 8))(a1, v10, v11);
      if (!v4)
      {
        sub_25F349E38(result + 16, a4);
      }
    }

    else
    {
      sub_25F3AF658();
      swift_allocError();
      v15 = v14;
      *(v14 + 24) = swift_getMetatypeMetadata();
      *v15 = v10;
      *(v15 + 32) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    sub_25F3AF658();
    swift_allocError();
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  return result;
}

id sub_25F3AB99C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_25F3C354C();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v43 = result;
    swift_beginAccess();
    v12 = *(v2 + 168);

    v13 = sub_25F3ABDBC(a1, a2, v12);

    if ((v13 & 1) == 0)
    {
      result = sub_25F35E778(a1, a2);
      if (!v3)
      {

        swift_beginAccess();

        sub_25F3ACA3C(v42, a1, a2);
        swift_endAccess();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68430, &qword_25F3C95B0);
        v14 = sub_25F3C225C();
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = MEMORY[0x277D84F90];
        }

        sub_25F3C351C();

        v16 = sub_25F3C353C();
        v17 = sub_25F3C433C();

        v18 = os_log_type_enabled(v16, v17);
        v39 = 0;
        v40 = v15;
        if (v18)
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v41[0] = v20;
          *v19 = 136315138;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68438, &qword_25F3C95B8);
          v22 = MEMORY[0x25F8DB960](v15, v21);
          v24 = sub_25F369EE8(v22, v23, v41);

          *(v19 + 4) = v24;
          v15 = v40;
          _os_log_impl(&dword_25F342000, v16, v17, "Found types conforming to EntryPointProvider: %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x25F8DC6C0](v20, -1, -1);
          MEMORY[0x25F8DC6C0](v19, -1, -1);
        }

        (*(v8 + 8))(v11, v43);
        v25 = *(v15 + 16);
        if (v25)
        {
          v26 = (v15 + 32);
          v27 = MEMORY[0x277D84F90];
          do
          {
            v29 = *v26;
            v30 = swift_conformsToProtocol2();
            if (v30)
            {
              v31 = v29 == 0;
            }

            else
            {
              v31 = 1;
            }

            if (!v31)
            {
              v32 = v30;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_25F37A078(0, *(v27 + 2) + 1, 1, v27);
              }

              v34 = *(v27 + 2);
              v33 = *(v27 + 3);
              if (v34 >= v33 >> 1)
              {
                v27 = sub_25F37A078((v33 > 1), v34 + 1, 1, v27);
              }

              *(v27 + 2) = v34 + 1;
              v28 = &v27[16 * v34];
              *(v28 + 4) = v29;
              *(v28 + 5) = v32;
            }

            ++v26;
            --v25;
          }

          while (v25);
        }

        else
        {
          v27 = MEMORY[0x277D84F90];
        }

        v35 = *(v27 + 2);
        if (v35)
        {
          v36 = (v27 + 40);
          do
          {
            v37 = *(v36 - 1);
            v38 = *v36;
            swift_beginAccess();
            (*(v38 + 8))(v4 + 144, v37, v38);
            swift_endAccess();
            swift_beginAccess();
            (*(v38 + 16))(v4 + 160, v37, v38);
            swift_endAccess();
            v36 += 2;
            --v35;
          }

          while (v35);
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F3ABDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25F3C464C();
  sub_25F3C406C();
  v6 = sub_25F3C466C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25F3C459C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25F3ABEB4()
{
  sub_25F3C445C();

  MEMORY[0x25F8DB8E0](*v0, v0[1]);
  MEMORY[0x25F8DB8E0](0xD00000000000001DLL, 0x800000025F3CC9F0);
  type metadata accessor for EntryPointIndex.NoEntryPoint(0);
  sub_25F3C2CAC();
  sub_25F3AF6AC(&qword_27FD67388, MEMORY[0x277D40E58], MEMORY[0x277D40E70]);
  v1 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v1);

  return 2125646;
}

unint64_t sub_25F3ABFB0()
{
  sub_25F3C445C();

  type metadata accessor for EntryPointIndex.NoEntryPoint(0);
  sub_25F3C42AC();
  v0 = sub_25F3C429C();
  v2 = v1;

  MEMORY[0x25F8DB8E0](v0, v2);

  return 0xD000000000000013;
}

void sub_25F3AC0A4(uint64_t *a2@<X8>)
{
  v3 = sub_25F3C3FDC();
  v4 = [v3 lastPathComponent];

  v5 = sub_25F3C3FEC();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_25F3AC128(uint64_t a1)
{
  v2 = sub_25F3AF6AC(&qword_27FD684D0, type metadata accessor for EntryPointIndex.NoEntryPoint, &unk_25F3C9728);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F3AC194(uint64_t a1)
{
  v2 = sub_25F3AF6AC(&qword_27FD684D0, type metadata accessor for EntryPointIndex.NoEntryPoint, &unk_25F3C9728);

  return MEMORY[0x2821A07F0](a1, v2);
}

void *sub_25F3AC200()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25F3AC268()
{
  sub_25F3AC200();

  return MEMORY[0x282200960](v0);
}

void sub_25F3AC300(uint64_t a1)
{
  sub_25F3C253C();
  if (v1 <= 0x3F)
  {
    sub_25F3AC384(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F3AC384(uint64_t a1)
{
  if (!qword_27FD68408)
  {
    sub_25F3C245C();
    v1 = sub_25F3C415C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD68408);
    }
  }
}

void sub_25F3AC3FC(uint64_t a1)
{
  sub_25F3C245C();
  if (v1 <= 0x3F)
  {
    sub_25F3AC470(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25F3AC470(uint64_t a1)
{
  if (!qword_27FD68420)
  {
    sub_25F3AC4E4();
    sub_25F3C2EBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD68420);
    }
  }
}

unint64_t sub_25F3AC4E4()
{
  result = qword_27FD68428;
  if (!qword_27FD68428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD68428);
  }

  return result;
}

unint64_t sub_25F3AC530()
{
  sub_25F3AFB8C(v0, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      sub_25F3AFBC4(v7, v6);
      sub_25F3C445C();
      MEMORY[0x25F8DB8E0](0x272065707954, 0xE600000000000000);
      sub_25F3C44BC();
    }

    else
    {
      sub_25F3AFBC4(v7, v6);
      sub_25F3C445C();
      MEMORY[0x25F8DB8E0](0x272065707954, 0xE600000000000000);
      sub_25F3C44BC();
    }

    MEMORY[0x25F8DB8E0](0xD00000000000002FLL, (v1 - 32) | 0x8000000000000000);
    v4 = 0;
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    v3 = *(&v7[0] + 1);
    v2 = *&v7[0];
    sub_25F3C445C();

    MEMORY[0x25F8DB8E0](v2, v3);

    return 0xD00000000000001ALL;
  }

  return v4;
}

uint64_t sub_25F3AC6E4(uint64_t a1)
{
  v2 = sub_25F3AFBD4();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F3AC720(uint64_t a1)
{
  v2 = sub_25F3AFBD4();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F3AC75C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25F3C29EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25F3AF6AC(&qword_27FD676C8, MEMORY[0x277D40BF8], MEMORY[0x277D40C00]);
  v33 = a2;
  v11 = sub_25F3C3FBC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25F3AF6AC(&qword_27FD676D0, MEMORY[0x277D40BF8], MEMORY[0x277D40C08]);
      v21 = sub_25F3C3FCC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25F3AD148(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25F3ACA3C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25F3C464C();
  sub_25F3C406C();
  v8 = sub_25F3C466C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25F3C459C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25F3AD3EC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F3ACB8C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25F3C29EC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68488, &qword_25F3C95E8);
  result = sub_25F3C442C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25F3AF6AC(&qword_27FD676C8, MEMORY[0x277D40BF8], MEMORY[0x277D40C00]);
      result = sub_25F3C3FBC();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25F3ACEE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68440, &qword_25F3C95C0);
  result = sub_25F3C442C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25F3C464C();
      sub_25F3C406C();
      result = sub_25F3C466C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25F3AD148(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25F3C29EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25F3ACB8C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25F3AD56C();
      goto LABEL_12;
    }

    sub_25F3AD900(v10 + 1);
  }

  v12 = *v3;
  sub_25F3AF6AC(&qword_27FD676C8, MEMORY[0x277D40BF8], MEMORY[0x277D40C00]);
  v13 = sub_25F3C3FBC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25F3AF6AC(&qword_27FD676D0, MEMORY[0x277D40BF8], MEMORY[0x277D40C08]);
      v21 = sub_25F3C3FCC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25F3C45BC();
  __break(1u);
  return result;
}

uint64_t sub_25F3AD3EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25F3ACEE8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F3AD7A4();
      goto LABEL_16;
    }

    sub_25F3ADC1C(v8 + 1);
  }

  v10 = *v4;
  sub_25F3C464C();
  sub_25F3C406C();
  result = sub_25F3C466C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25F3C459C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25F3C45BC();
  __break(1u);
  return result;
}

void *sub_25F3AD56C()
{
  v1 = v0;
  v2 = sub_25F3C29EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68488, &qword_25F3C95E8);
  v6 = *v0;
  v7 = sub_25F3C441C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25F3AD7A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68440, &qword_25F3C95C0);
  v2 = *v0;
  v3 = sub_25F3C441C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_25F3AD900(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25F3C29EC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68488, &qword_25F3C95E8);
  v7 = sub_25F3C442C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25F3AF6AC(&qword_27FD676C8, MEMORY[0x277D40BF8], MEMORY[0x277D40C00]);
      result = sub_25F3C3FBC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25F3ADC1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68440, &qword_25F3C95C0);
  result = sub_25F3C442C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25F3C464C();

      sub_25F3C406C();
      result = sub_25F3C466C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void (*sub_25F3ADE54(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_25F3C271C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_25F3AE5E8(v6);
  v6[12] = sub_25F3AE028(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_25F3ADF90;
}

void sub_25F3ADF90(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_25F3AE028(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_25F3C271C();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  v9[5] = updated;
  v14 = *(updated - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67DF0, &qword_25F3C85B0) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_25F35C4C4(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_25F3BCBAC();
      goto LABEL_21;
    }

    sub_25F3BA75C(v26, a3 & 1);
    v29 = sub_25F35C4C4(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_25F3C45CC();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_25F3AF75C(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for EntryPointIndex.UpdateState);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, updated);
  return sub_25F3AE358;
}

void sub_25F3AE358(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_25F355568(v5, v6, &qword_27FD67DF0, &qword_25F3C85B0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_25F3AF75C(v9, v2[8], type metadata accessor for EntryPointIndex.UpdateState);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_25F3AF75C(v13, v14, type metadata accessor for EntryPointIndex.UpdateState);
        sub_25F35E048(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_25F355568(v5, v16, &qword_27FD67DF0, &qword_25F3C85B0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_25F3AF75C(v9, v2[9], type metadata accessor for EntryPointIndex.UpdateState);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_25F3AF75C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for EntryPointIndex.UpdateState);
      goto LABEL_10;
    }
  }

  sub_25F349AA8(v9, &qword_27FD67DF0, &qword_25F3C85B0);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_25F398D10(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_25F349AA8(v22, &qword_27FD67DF0, &qword_25F3C85B0);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_25F3AE5E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25F3AE610;
}

uint64_t sub_25F3AE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a1;
  v5[6] = a3;
  v8 = sub_25F3C2EBC();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v9 = sub_25F3C245C();
  v5[12] = v9;
  v5[13] = *(v9 - 8);
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for EntryPointIndex.PendingShellResource(0);
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v11 = *(a4 - 8);
  v5[19] = v11;
  v5[20] = swift_task_alloc();
  (*(v11 + 16))();

  return MEMORY[0x2822009F8](sub_25F3AE828, a3, 0);
}

uint64_t sub_25F3AE828()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = sub_25F35C4C4(v1);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F3BC754();
    }

    v8 = *(v7 + 48);
    v9 = sub_25F3C271C();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = *(*(v7 + 56) + 8 * v5);
    *(v0 + 168) = v10;
    sub_25F399054(v5, v7);
    *(v2 + 112) = v7;
    swift_endAccess();
    v11 = *(v10 + 16);
    *(v0 + 176) = v11;
    if (v11)
    {
      v12 = *(v0 + 128);
      v13 = *(v12 + 80);
      *(v0 + 224) = v13;
      *(v0 + 184) = *(v12 + 72);
      *(v0 + 192) = 0;
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      sub_25F3AF6F4(*(v0 + 168) + ((v13 + 32) & ~v13), v14, type metadata accessor for EntryPointIndex.PendingShellResource);
      sub_25F3AF6F4(v14, v15, type metadata accessor for EntryPointIndex.PendingShellResource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v17 = *(v0 + 136);
      v35 = *(v0 + 64);
      if (EnumCaseMultiPayload == 1)
      {
        v18 = *(v0 + 80);
        v19 = *(v0 + 88);
        v20 = *(v0 + 72);
        v21 = *v17;
        *(v0 + 208) = *v17;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674E0, &qword_25F3C6280);
        (*(v18 + 32))(v19, &v17[*(v22 + 48)], v20);
        v33 = (*(v35 + 48) + **(v35 + 48));
        v23 = swift_task_alloc();
        *(v0 + 216) = v23;
        *v23 = v0;
        v23[1] = sub_25F3AF150;
        v24 = *(v0 + 88);
        v25 = *(v0 + 56);
        v26 = *(v0 + 64);

        return v33(v21, v24, v25, v26);
      }

      else
      {
        (*(*(v0 + 104) + 32))(*(v0 + 112), v17, *(v0 + 96));
        v34 = (*(v35 + 40) + **(v35 + 40));
        v29 = swift_task_alloc();
        *(v0 + 200) = v29;
        *v29 = v0;
        v29[1] = sub_25F3AEC78;
        v30 = *(v0 + 112);
        v31 = *(v0 + 56);
        v32 = *(v0 + 64);

        return v34(v30, v31, v32);
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 56));

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_25F3AEC78()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_25F3AED88, v1, 0);
}

uint64_t sub_25F3AED88()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 176);
  v2 = *(v0 + 192) + 1;
  sub_25F3AF7C4(*(v0 + 144), type metadata accessor for EntryPointIndex.PendingShellResource);
  if (v2 == v1)
  {

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 192) + 1;
    *(v0 + 192) = v6;
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    sub_25F3AF6F4(*(v0 + 168) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + v5 * v6, v8, type metadata accessor for EntryPointIndex.PendingShellResource);
    sub_25F3AF6F4(v8, v7, type metadata accessor for EntryPointIndex.PendingShellResource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(v0 + 136);
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      v13 = *(v0 + 72);
      v26 = *(v0 + 64);
      v14 = *v10;
      *(v0 + 208) = *v10;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674E0, &qword_25F3C6280);
      (*(v11 + 32))(v12, &v10[*(v15 + 48)], v13);
      v24 = (*(v26 + 48) + **(v26 + 48));
      v16 = swift_task_alloc();
      *(v0 + 216) = v16;
      *v16 = v0;
      v16[1] = sub_25F3AF150;
      v17 = *(v0 + 88);
      v18 = *(v0 + 56);
      v19 = *(v0 + 64);

      return v24(v14, v17, v18, v19);
    }

    else
    {
      v27 = *(v0 + 64);
      (*(*(v0 + 104) + 32))(*(v0 + 112), v10, *(v0 + 96));
      v25 = (*(v27 + 40) + **(v27 + 40));
      v20 = swift_task_alloc();
      *(v0 + 200) = v20;
      *v20 = v0;
      v20[1] = sub_25F3AEC78;
      v21 = *(v0 + 112);
      v22 = *(v0 + 56);
      v23 = *(v0 + 64);

      return v25(v21, v22, v23);
    }
  }
}

uint64_t sub_25F3AF150()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_25F3AF260, v1, 0);
}

uint64_t sub_25F3AF260()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 176);
  v5 = *(v0 + 192) + 1;
  sub_25F3AF7C4(*(v0 + 144), type metadata accessor for EntryPointIndex.PendingShellResource);
  if (v5 == v4)
  {

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 56));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 192) + 1;
    *(v0 + 192) = v9;
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    sub_25F3AF6F4(*(v0 + 168) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + v8 * v9, v11, type metadata accessor for EntryPointIndex.PendingShellResource);
    sub_25F3AF6F4(v11, v10, type metadata accessor for EntryPointIndex.PendingShellResource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v0 + 136);
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      v16 = *(v0 + 72);
      v29 = *(v0 + 64);
      v17 = *v13;
      *(v0 + 208) = *v13;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674E0, &qword_25F3C6280);
      (*(v14 + 32))(v15, &v13[*(v18 + 48)], v16);
      v27 = (*(v29 + 48) + **(v29 + 48));
      v19 = swift_task_alloc();
      *(v0 + 216) = v19;
      *v19 = v0;
      v19[1] = sub_25F3AF150;
      v20 = *(v0 + 88);
      v21 = *(v0 + 56);
      v22 = *(v0 + 64);

      return v27(v17, v20, v21, v22);
    }

    else
    {
      v30 = *(v0 + 64);
      (*(*(v0 + 104) + 32))(*(v0 + 112), v13, *(v0 + 96));
      v28 = (*(v30 + 40) + **(v30 + 40));
      v23 = swift_task_alloc();
      *(v0 + 200) = v23;
      *v23 = v0;
      v23[1] = sub_25F3AEC78;
      v24 = *(v0 + 112);
      v25 = *(v0 + 56);
      v26 = *(v0 + 64);

      return v28(v24, v25, v26);
    }
  }
}

unint64_t sub_25F3AF658()
{
  result = qword_27FD68450;
  if (!qword_27FD68450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68450);
  }

  return result;
}

uint64_t sub_25F3AF6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F3AF6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F3AF75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F3AF7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F3AF830(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F3AF86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F3AF8B8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

void sub_25F3AF914(uint64_t a1)
{
  sub_25F3C2CAC();
  if (v1 <= 0x3F)
  {
    sub_25F3AF9A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F3AF9A8()
{
  if (!qword_27FD684A0)
  {
    v0 = sub_25F3C42BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD684A0);
    }
  }
}

unint64_t sub_25F3AFAE0()
{
  result = qword_27FD684B8;
  if (!qword_27FD684B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD684B8);
  }

  return result;
}

unint64_t sub_25F3AFB38()
{
  result = qword_27FD684C0;
  if (!qword_27FD684C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD684C0);
  }

  return result;
}

_OWORD *sub_25F3AFBC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25F3AFBD4()
{
  result = qword_27FD684C8;
  if (!qword_27FD684C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD684C8);
  }

  return result;
}

uint64_t sub_25F3AFC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25F3C28BC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_25F3C22BC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68348, &qword_25F3C91A8);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3AFDCC, 0, 0);
}

uint64_t sub_25F3AFDCC()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));
  sub_25F3C266C();
  sub_25F3C267C();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_25F3AFEA0;
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];

  return sub_25F3B5AC4(v2, v3, v4);
}

uint64_t sub_25F3AFEA0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_25F3B015C;
  }

  else
  {
    v8 = sub_25F3B0074;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25F3B0074()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_25F3C2EBC();
  sub_25F3C250C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3B015C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F3B022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F34905C;

  return sub_25F3AFC44(a1, a2, a3);
}

unint64_t sub_25F3B02F8(uint64_t a1)
{
  result = sub_25F3B0320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F3B0320()
{
  result = qword_27FD684D8;
  if (!qword_27FD684D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD684D8);
  }

  return result;
}

unint64_t sub_25F3B0374(uint64_t a1)
{
  result = sub_25F3B039C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F3B039C()
{
  result = qword_27FD684E0;
  if (!qword_27FD684E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD684E0);
  }

  return result;
}

uint64_t sub_25F3B0404(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25F3C270C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD684E8, &qword_25F3C9A60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD684F0, &qword_25F3C9A68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_25F3C3BAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C3A9C();
  sub_25F3C43FC();
  sub_25F3714F8(v35);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v32 = a2;
    v33 = v3;
    v17(v11, 0, 1, v12);
    (*(v13 + 32))(v15, v11, v12);
    sub_25F3C3ABC();
    v18 = sub_25F3C3AEC();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v8, 1, v18) == 1)
    {
      sub_25F349AA8(v8, &qword_27FD684E8, &qword_25F3C9A60);
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v23 = sub_25F3C3ADC();
      v25 = v24;
      (*(v19 + 8))(v8, v18);
      if (v25 >> 60 == 15)
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

      if (v25 >> 60 == 15)
      {
        v21 = 0xF000000000000000;
      }

      else
      {
        v21 = v25;
      }
    }

    sub_25F3C3B9C();
    sub_25F3C3AAC();
    sub_25F3B0898(v20, v21);
    sub_25F3C26EC();
    v26 = v32;
    v27 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_25F37A33C(0, v27[2] + 1, 1, v27);
      *v26 = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      *v26 = sub_25F37A33C((v29 > 1), v30 + 1, 1, v27);
    }

    sub_25F3B0900(v20, v21);
    (*(v13 + 8))(v15, v12);
    v31 = *v26;
    *(v31 + 16) = v30 + 1;
    return (*(v4 + 32))(v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v34, v33);
  }

  else
  {
    v17(v11, 1, 1, v12);
    return sub_25F349AA8(v11, &qword_27FD684F0, &qword_25F3C9A68);
  }
}

double sub_25F3B0898(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F3B08AC(a1, a2);
  }

  return result;
}

double sub_25F3B08AC(uint64_t a1, unint64_t a2)
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

uint64_t sub_25F3B0900(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F3B0914(a1, a2);
  }

  return a1;
}

uint64_t sub_25F3B0914(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static HostingParadigm.createHostingViewable<A>(rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v28 = a4;
  v7 = sub_25F3C378C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v12 = (v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  (*(v17 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v18 = sub_25F3C3E0C();
  (*(v8 + 104))(v10, *MEMORY[0x277CC5750], v7);
  (*(v8 + 16))(v15, v10, v7);
  v19 = &v15[v12[8]];
  v20 = type metadata accessor for RenderEffects(0);
  v21 = *(v20 + 20);
  v22 = sub_25F3C248C();
  (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
  v23 = &v19[*(v20 + 24)];
  v24 = MEMORY[0x277CDF6C8];
  *(v23 + 3) = MEMORY[0x277CDF6D0];
  *(v23 + 4) = v24;
  (*(v8 + 8))(v10, v7);
  *v19 = MEMORY[0x277D84F90];
  v15[v12[7]] = 1;
  v15[v12[9]] = 0;
  v15[v12[10]] = 0;
  v25 = (*(v28 + 48))(v18, v15, v29);

  sub_25F3B1594(v15);
  return v25;
}

uint64_t static HostingParadigm.updateHostingViewable(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 64))();
  v8 = *(a4 + 56);

  return v8(a1, a2, a3, a4);
}

void UIHostingController.size.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
  }

  else
  {
    __break(1u);
  }
}

void UIHostingController.size.setter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    [v2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void (*UIHostingController.size.modify(void *a1))()
{
  a1[2] = v1;
  UIHostingController.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return sub_25F3B0F48;
}

Swift::Void __swiftcall UIHostingController.forceLayout()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setNeedsLayout];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 layoutIfNeeded];
}

void (*sub_25F3B1024(void *a1))(void *a1)
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
  v2[4] = UIHostingController.size.modify(v2);
  return sub_25F3A4870;
}

uint64_t static IOSHostingParadigm.createHostingViewable<A>(rootView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[1] = sub_25F3C3E0C();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F58, &qword_25F3C9A70));
  return sub_25F3C3A3C();
}

id static IOSHostingParadigm.updateHostingViewable(_:with:)(void *a1, uint64_t a2)
{
  if ((*(a2 + *(type metadata accessor for PreviewDisplayContext.Configuration(0) + 32)) & 1) == 0)
  {
    sub_25F3C384C();
  }

  sub_25F3C3A0C();
  result = [a1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static IOSHostingParadigm.debugOverlay(for:)(void *a1)
{
  v2 = sub_25F3C2D1C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D40E88]);
  result = [a1 view];
  if (result)
  {
    v6 = objc_allocWithZone(sub_25F3C2D5C());
    return sub_25F3C2D3C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25F3B13B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(a2 + *(type metadata accessor for PreviewDisplayContext.Configuration(0) + 32)) & 1) == 0)
  {
    sub_25F3C384C();
  }

  sub_25F3C3A0C();
  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() systemBackgroundColor];
    [v5 setBackgroundColor_];

    *a3 = a1;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25F3B1494(void *a1)
{
  v2 = sub_25F3C2D1C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D40E88]);
  result = [a1 view];
  if (result)
  {
    v6 = objc_allocWithZone(sub_25F3C2D5C());
    return sub_25F3C2D3C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F3B1594(uint64_t a1)
{
  v2 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for IOSHostingParadigm(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IOSHostingParadigm(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25F3B1810(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_25F3C3EAC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_25F3C27FC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_25F3C41CC();
  v2[10] = sub_25F3C41BC();
  v6 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3B1960, v6, v5);
}

uint64_t sub_25F3B1960()
{

  v1 = sub_25F3C264C();
  v3 = sub_25F373DDC(v1, v2);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[8];
    v6 = v0[5];
    v20 = MEMORY[0x277D84F90];
    sub_25F349BB4(0, v4, 0);
    v18 = v6;
    v7 = v3 + 56;
    while (1)
    {
      v8 = *(v7 - 8);

      result = sub_25F3C372C();
      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v8 >= *(result + 16))
      {
        goto LABEL_12;
      }

      v19 = v4;
      v10 = v0[9];
      v11 = v0[6];
      v12 = v0[4];
      (*(v18 + 16))(v11, result + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v8, v12);

      sub_25F3BEB38(v10);

      (*(v18 + 8))(v11, v12);
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25F349BB4((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[9];
      v16 = v0[7];
      *(v20 + 16) = v14 + 1;
      (*(v5 + 32))(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v7 += 48;
      --v4;
      if (v19 == 1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:

    sub_25F3C260C();

    v17 = v0[1];

    return v17();
  }

  return result;
}

uint64_t sub_25F3B1C10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F34905C;

  return sub_25F3B1810(a1, a2);
}

unint64_t sub_25F3B1CCC(uint64_t a1)
{
  result = sub_25F3B1CF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F3B1CF4()
{
  result = qword_27FD684F8;
  if (!qword_27FD684F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD684F8);
  }

  return result;
}

unint64_t sub_25F3B1D48(uint64_t a1)
{
  result = sub_25F3B1D70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F3B1D70()
{
  result = qword_27FD68500;
  if (!qword_27FD68500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68500);
  }

  return result;
}

BOOL sub_25F3B1DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 24);
  if (v2 == v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25F3C35DC();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_25F3C35EC();
    sub_25F3C370C();
    sub_25F3C371C();
  }

  return v2 == v3;
}

uint64_t sub_25F3B1EB4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();

  return v3;
}

uint64_t sub_25F3B1F28@<X0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();

  *a3 = v5;
  return result;
}

uint64_t sub_25F3B1FA8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25F3C35EC();
}

uint64_t sub_25F3B201C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F3C391C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25F3B2084@<X0>(uint64_t *a2@<X8>)
{
  v21 = a2;
  v2 = sub_25F3C391C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for EnvironmentWrapper(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25F3B2DF4(v11);
  (*(v3 + 32))(v8, v11, v2);
  type metadata accessor for PreviewProviderHostProvider.Host(0);
  sub_25F3B2D64(&qword_27FD68570, type metadata accessor for PreviewProviderHostProvider.Host, &unk_25F3C9CDC);

  v12 = sub_25F3C37DC();
  v14 = v13;
  sub_25F3C373C();
  sub_25F3B2D64(&qword_27FD68578, MEMORY[0x277CDD838], MEMORY[0x277CDD830]);

  v15 = sub_25F3C37DC();
  v17 = v16;
  (*(v3 + 16))(v6, v8, v2);

  sub_25F3C36FC();

  (*(v3 + 8))(v8, v2);

  v19 = v21;
  *v21 = v12;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v17;
  return result;
}

uint64_t sub_25F3B231C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25F3C3EAC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = sub_25F3C372C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v24 >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v22 = v7;
  v23 = a2;
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = *(v4 + 72);
  v14 = *(v4 + 16);
  v14(v9, v10 + v12 + v13 * v24, v3);

  v21 = sub_25F3C3E8C();
  v20 = *(v4 + 8);
  v20(v9, v3);
  v15 = sub_25F3C372C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25F3C35DC();

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v24 < *(v15 + 16))
  {
    v16 = v15 + v12 + v24 * v13;
    v17 = v22;
    v14(v22, v16, v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68588, &qword_25F3C9F08);
    v18 = v23;
    sub_25F3C3E1C();
    result = (v20)(v17, v3);
    *v18 = v21;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25F3B25C4()
{

  v1 = OBJC_IVAR____TtCV17PreviewsInjection27PreviewProviderHostProvider4Host__previewIndex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67300, &unk_25F3C5BD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

double sub_25F3B2674@<D0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68520, &qword_25F3C9D58);
  swift_storeEnumTagMultiPayload();
  *(a2 + *(type metadata accessor for PreviewProviderHostProvider.Host.HostView(0) + 20)) = v4;

  return result;
}

double sub_25F3B26FC@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t sub_25F3B2708@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40D98];
  v3 = sub_25F3C210C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25F3B2784@<X0>(uint64_t *a1@<X8>)
{
  sub_25F3C37CC();
  swift_allocObject();
  result = sub_25F3C37BC();
  *a1 = result;
  return result;
}

uint64_t AppPreviewHost.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F3C365C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25F3C37AC();
  if (*(result + 16))
  {
    (*(v3 + 16))(v5, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    v7 = sub_25F3C364C();
    result = (*(v3 + 8))(v5, v2);
    *a1 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F3B28FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F3C365C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25F3C37AC();
  if (*(result + 16))
  {
    (*(v3 + 16))(v5, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    v7 = sub_25F3C364C();
    result = (*(v3 + 8))(v5, v2);
    *a1 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25F3B2A44(uint64_t a1)
{
  sub_25F358848();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25F3B2B70(uint64_t a1)
{
  result = sub_25F3C391C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25F3B2C14(uint64_t a1)
{
  sub_25F3B2C98(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PreviewProviderHostProvider.Host(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F3B2C98(uint64_t a1)
{
  if (!qword_27FD68550)
  {
    type metadata accessor for EnvironmentWrapper(255);
    v1 = sub_25F3C369C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD68550);
    }
  }
}

uint64_t sub_25F3B2D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F3B2DF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F3C391C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68520, &qword_25F3C9D58);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_25F3B30F8(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25F3B3168(v10, a1);
  }

  sub_25F3C432C();
  v12 = sub_25F3C3BDC();
  sub_25F3C34EC();

  sub_25F3C390C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F3B2FAC()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C430C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F342000, v4, v5, "updating AppPreviewHost", v6, 2u);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_25F3C379C();
  return 1;
}

uint64_t sub_25F3B30F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68520, &qword_25F3C9D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F3B3168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F3B31CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F3B3214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F3B3264()
{
  result = qword_27FD68580;
  if (!qword_27FD68580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68580);
  }

  return result;
}

unint64_t sub_25F3B32D4()
{
  result = qword_27FD68590[0];
  if (!qword_27FD68590[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD68588, &qword_25F3C9F08);
    sub_25F3B3360();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD68590);
  }

  return result;
}

unint64_t sub_25F3B3360()
{
  result = qword_27FD67F28;
  if (!qword_27FD67F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67F30, &unk_25F3C89F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67F28);
  }

  return result;
}

uint64_t sub_25F3B33C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F34905C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_25F3B34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F34905C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_25F3B363C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F351058;

  return v7(a1, a2);
}

uint64_t sub_25F3B3754(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68650, &qword_25F3CA180);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3B3824, v2, 0);
}

uint64_t sub_25F3B3824()
{
  v0[2] = *(v0[5] + 112);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25F3B38D4;
  v2 = v0[8];
  v3 = v0[4];

  return sub_25F3B3C84(v2, v3);
}

uint64_t sub_25F3B38D4()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_25F3B39E4, v1, 0);
}

uint64_t sub_25F3B39E4()
{
  v1 = v0[5];
  v2 = v0[2];
  v0[10] = v2;
  *(v1 + 112) = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = sub_25F3C34DC();
  *v3 = v0;
  v3[1] = sub_25F3B3AC8;
  v5 = v0[6];
  v6 = v0[3];

  return MEMORY[0x2821A10F0](v6, &unk_25F3CA190, 0, v5, v4);
}

void sub_25F3B3AC8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_25F3B3C08, v3, 0);
  }
}

uint64_t sub_25F3B3C08()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F3B3C84(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_25F3C2AAC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3B3D54, 0, 0);
}

uint64_t sub_25F3B3D54()
{
  v1 = **(v0 + 40);
  if (v1)
  {

    sub_25F3C289C();
    if (*(v1 + 16) && (v2 = sub_25F35C1D0(*(v0 + 72)), (v3 & 1) != 0))
    {
      v4 = *(v0 + 72);
      v5 = *(v0 + 48);
      v6 = *(*(v1 + 56) + 8 * v2);
      v7 = *(*(v0 + 56) + 8);

      v7(v4, v5);

      v8 = sub_25F3C28AC();
      if (*(v6 + 16))
      {
        v9 = sub_25F35C194(v8);
        if (v10)
        {
          v11 = *(v0 + 24);
          v29 = *(*(v6 + 56) + 16 * v9);

          *v11 = v29;
          v12 = *MEMORY[0x277D407E8];
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68650, &qword_25F3CA180);
          (*(*(v13 - 8) + 104))(v11, v12, v13);
LABEL_13:

          v28 = *(v0 + 8);

          return v28();
        }
      }
    }

    else
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v16 = *(v0 + 56);

      v7 = *(v16 + 8);
      v7(v14, v15);
    }

    v19 = *(v0 + 64);
    v20 = *(v0 + 48);
    v21 = *(v0 + 24);
    sub_25F3C445C();

    v22 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    v23 = [v22 processName];

    sub_25F3C3FEC();
    MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CCB20);
    MEMORY[0x25F8DB8E0](0x77656976657270, 0xE700000000000000);
    MEMORY[0x25F8DB8E0](0x9D80E2206E6920, 0xA700000000000000);
    sub_25F3C289C();
    sub_25F3BEAF0(&qword_27FD68618, MEMORY[0x277D40C78], MEMORY[0x277D40C90]);
    v24 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v24);

    v7(v19, v20);
    MEMORY[0x25F8DB8E0](0x6C207461209D80E2, 0xAC00000020656E69);
    *(v0 + 16) = sub_25F3C28AC();
    v25 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v25);

    MEMORY[0x25F8DB8E0](46, 0xE100000000000000);
    sub_25F3C227C();
    v26 = *MEMORY[0x277D407D8];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68650, &qword_25F3CA180);
    (*(*(v27 - 8) + 104))(v21, v26, v27);
    goto LABEL_13;
  }

  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_25F3B419C;

  return sub_25F3BDC68();
}

uint64_t sub_25F3B419C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_25F3B429C, 0, 0);
}

uint64_t sub_25F3B429C()
{
  **(v0 + 40) = *(v0 + 88);
  v1 = *(v0 + 88);

  sub_25F3C289C();
  if (*(v1 + 16) && (v2 = sub_25F35C1D0(*(v0 + 72)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = *(*(v1 + 56) + 8 * v2);
    v7 = *(*(v0 + 56) + 8);

    v7(v4, v5);

    v8 = sub_25F3C28AC();
    if (*(v6 + 16))
    {
      v9 = sub_25F35C194(v8);
      if (v10)
      {
        v11 = *(v0 + 24);
        v28 = *(*(v6 + 56) + 16 * v9);

        *v11 = v28;
        v12 = *MEMORY[0x277D407E8];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68650, &qword_25F3CA180);
        (*(*(v13 - 8) + 104))(v11, v12, v13);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);

    v7 = *(v16 + 8);
    v7(v14, v15);
  }

  v17 = *(v0 + 64);
  v18 = *(v0 + 48);
  v19 = *(v0 + 24);
  sub_25F3C445C();

  v20 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v21 = [v20 processName];

  sub_25F3C3FEC();
  MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CCB20);
  MEMORY[0x25F8DB8E0](0x77656976657270, 0xE700000000000000);
  MEMORY[0x25F8DB8E0](0x9D80E2206E6920, 0xA700000000000000);
  sub_25F3C289C();
  sub_25F3BEAF0(&qword_27FD68618, MEMORY[0x277D40C78], MEMORY[0x277D40C90]);
  v22 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v22);

  v7(v17, v18);
  MEMORY[0x25F8DB8E0](0x6C207461209D80E2, 0xAC00000020656E69);
  *(v0 + 16) = sub_25F3C28AC();
  v23 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v23);

  MEMORY[0x25F8DB8E0](46, 0xE100000000000000);
  sub_25F3C227C();
  v24 = *MEMORY[0x277D407D8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68650, &qword_25F3CA180);
  (*(*(v25 - 8) + 104))(v19, v24, v25);
LABEL_9:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_25F3B4670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v6 = sub_25F3C2AAC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = *(a3 + 16);
  v4[13] = v7;
  v8 = sub_25F3C43BC();
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3B47FC, 0, 0);
}

uint64_t sub_25F3B47FC()
{
  if (**(v0 + 64))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);

    sub_25F3C289C();
    sub_25F3C3F8C();
    sub_25F3BEAF0(&qword_27FD673B0, MEMORY[0x277D40C78], MEMORY[0x277D40C80]);
    sub_25F3C3F9C();

    v4 = *(v3 + 8);
    v4(v1, v2);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 104);
    if (*(v0 + 16))
    {
      *(v0 + 32) = sub_25F3C28AC();
      sub_25F3C3F9C();

      if ((*(v6 + 48))(v5, 1, v7) != 1)
      {
        v8 = *(v0 + 144);
        v9 = *(v0 + 104);
        v10 = *(v0 + 40);
        v11 = *(*(v0 + 136) + 32);
        v11(v8, *(v0 + 128), v9);
        v11(v10, v8, v9);
        v12 = MEMORY[0x277D407E8];
LABEL_10:
        v25 = *(v0 + 40);
        v26 = *v12;
        v27 = sub_25F3C252C();
        (*(*(v27 - 8) + 104))(v25, v26, v27);

        v28 = *(v0 + 8);

        return v28();
      }
    }

    else
    {
      (*(v6 + 56))(*(v0 + 128), 1, 1, *(v0 + 104));
    }

    v18 = *(v0 + 88);
    v19 = *(v0 + 72);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    sub_25F3C445C();
    v29 = v4;
    v20 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    v21 = [v20 processName];

    sub_25F3C3FEC();

    MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CCB20);
    v22 = sub_25F3C201C();
    MEMORY[0x25F8DB8E0](v22);

    MEMORY[0x25F8DB8E0](0x9D80E2206E6920, 0xA700000000000000);
    sub_25F3C289C();
    sub_25F3BEAF0(&qword_27FD68618, MEMORY[0x277D40C78], MEMORY[0x277D40C90]);
    v23 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v23);

    v29(v18, v19);
    MEMORY[0x25F8DB8E0](0x6C207461209D80E2, 0xAC00000020656E69);
    *(v0 + 24) = sub_25F3C28AC();
    v24 = sub_25F3C455C();
    MEMORY[0x25F8DB8E0](v24);

    MEMORY[0x25F8DB8E0](46, 0xE100000000000000);
    sub_25F3C227C();
    v12 = MEMORY[0x277D407D8];
    goto LABEL_10;
  }

  v13 = *(v0 + 56);
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  v15 = *(v13 + 24);
  *v14 = v0;
  v14[1] = sub_25F3B4CFC;
  v16 = *(v0 + 104);

  return sub_25F3BE0E8(v16, v15);
}

uint64_t sub_25F3B4CFC(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_25F3B4DFC, 0, 0);
}

uint64_t sub_25F3B4DFC()
{
  **(v0 + 64) = *(v0 + 160);
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  sub_25F3C289C();
  sub_25F3C3F8C();
  sub_25F3BEAF0(&qword_27FD673B0, MEMORY[0x277D40C78], MEMORY[0x277D40C80]);
  sub_25F3C3F9C();

  v4 = *(v3 + 8);
  v4(v1, v2);
  if (*(v0 + 16))
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 104);
    *(v0 + 32) = sub_25F3C28AC();
    sub_25F3C3F9C();

    if ((*(v6 + 48))(v5, 1, v7) != 1)
    {
      v8 = *(v0 + 144);
      v9 = *(v0 + 104);
      v10 = *(v0 + 40);
      v11 = *(*(v0 + 136) + 32);
      v11(v8, *(v0 + 128), v9);
      v11(v10, v8, v9);
      v12 = MEMORY[0x277D407E8];
      goto LABEL_6;
    }
  }

  else
  {
    (*(*(v0 + 136) + 56))(*(v0 + 128), 1, 1, *(v0 + 104));
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 72);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_25F3C445C();
  v25 = v4;
  v15 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v16 = [v15 processName];

  sub_25F3C3FEC();

  MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CCB20);
  v17 = sub_25F3C201C();
  MEMORY[0x25F8DB8E0](v17);

  MEMORY[0x25F8DB8E0](0x9D80E2206E6920, 0xA700000000000000);
  sub_25F3C289C();
  sub_25F3BEAF0(&qword_27FD68618, MEMORY[0x277D40C78], MEMORY[0x277D40C90]);
  v18 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v18);

  v25(v13, v14);
  MEMORY[0x25F8DB8E0](0x6C207461209D80E2, 0xAC00000020656E69);
  *(v0 + 24) = sub_25F3C28AC();
  v19 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v19);

  MEMORY[0x25F8DB8E0](46, 0xE100000000000000);
  sub_25F3C227C();
  v12 = MEMORY[0x277D407D8];
LABEL_6:
  v20 = *(v0 + 40);
  v21 = *v12;
  v22 = sub_25F3C252C();
  (*(*(v22 - 8) + 104))(v20, v21, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_25F3B527C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F38F9F0;

  return sub_25F3B5328(a1, v4, v5);
}

uint64_t sub_25F3B5328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25F3C34DC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3B53EC, 0, 0);
}

uint64_t sub_25F3B53EC()
{
  sub_25F3C41CC();
  *(v0 + 64) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3B5480, v2, v1);
}

uint64_t sub_25F3B5480()
{

  sub_25F3C32FC();
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_25F3B552C, 0, 0);
}

uint64_t sub_25F3B552C()
{
  v1 = v0[2];
  (*(v0[6] + 32))(v1, v0[7], v0[5]);
  v2 = *MEMORY[0x277D407E8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671B8, &qword_25F3CA1A0);
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3B5600()
{
  v1 = *(v0 + 72);
  sub_25F3C24EC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F3B5690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v3[6] = *(AssociatedTypeWitness - 8);
  v7 = swift_task_alloc();
  v3[7] = v7;
  v8 = swift_task_alloc();
  v3[8] = v8;
  *v8 = v3;
  v8[1] = sub_25F3B57C0;

  return MEMORY[0x2821A1CA0](v7, a2, a3);
}

uint64_t sub_25F3B57C0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25F3B59AC;
  }

  else
  {
    v2 = sub_25F3B58D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F3B58D4()
{
  v1 = v0[2];
  (*(v0[6] + 32))(v1, v0[7], v0[5]);
  v2 = *MEMORY[0x277D407E8];
  v3 = sub_25F3C252C();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3B59AC()
{
  v1 = *(v0 + 72);
  sub_25F3C445C();

  v2 = sub_25F3C201C();
  MEMORY[0x25F8DB8E0](v2);

  MEMORY[0x25F8DB8E0](0xD000000000000029, 0x800000025F3CCB40);
  sub_25F3C24EC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F3B5AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_25F3C22BC();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68638, &qword_25F3CA148);
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3B5BF0, v3, 0);
}

uint64_t sub_25F3B5BF0()
{
  v1 = sub_25F3B6B34();
  if (v1[2])
  {
    v2 = sub_25F35C2A4(*(v0 + 200));
    if (v3)
    {
      v4 = *(v0 + 216);
      v5 = (v1[7] + 16 * v2);
      v6 = *v5;
      v7 = v5[1];

      swift_beginAccess();
      v9 = *(v4 + 120);
      if (*(v9 + 16))
      {
        v10 = *(v0 + 200);

        v11 = sub_25F35C2A4(v10);
        if (v12)
        {
          sub_25F349E38(*(v9 + 56) + 40 * v11, v0 + 56);

          sub_25F3440A0((v0 + 56), v0 + 16);
          v14 = *(v0 + 40);
          WitnessTable = *(v0 + 48);
LABEL_11:
          __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v14);
          v21 = swift_task_alloc();
          *(v0 + 272) = v21;
          *v21 = v0;
          v21[1] = sub_25F3B5E9C;
          v22 = *(v0 + 264);
          v23 = *(v0 + 208);

          return sub_25F3B6298(v22, v23, v14, WitnessTable);
        }
      }

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      v14 = type metadata accessor for Cache(0, v6, *(v7 + 8), v8);
      *(v0 + 40) = v14;
      *(v0 + 184) = v7;
      WitnessTable = swift_getWitnessTable();
      *(v0 + 48) = WitnessTable;
      *(v0 + 16) = 0;
      goto LABEL_11;
    }
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);

  type metadata accessor for UnknownRegistryType(0);
  sub_25F3BEAF0(&qword_27FD68640, type metadata accessor for UnknownRegistryType, &unk_25F3CA324);
  swift_allocError();
  (*(v15 + 16))(v18, v17, v16);
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}