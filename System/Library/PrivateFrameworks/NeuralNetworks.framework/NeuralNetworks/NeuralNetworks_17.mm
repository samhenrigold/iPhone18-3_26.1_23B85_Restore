uint64_t sub_25BBDDF70()
{
  v1 = (*(*(*v0 + 88) + 32))(*(*v0 + 80));
  v2 = sub_25BAAF54C(v1);
  if (v2)
  {
    v3 = v2;
    v8 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    if ((v3 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8779B0](i, v1);
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }
        }

        sub_25BBDE114(&v7);

        sub_25BCB723C();
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        if (v5 == v3)
        {

          return v8;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_25BBDE114@<X0>(void *a2@<X8>)
{
  sub_25BBDE5D8(&v5);
  v3 = *(v5 + 16);

  *a2 = v3;
  return result;
}

double sub_25BBDE1D4@<D0>(_OWORD *a1@<X8>)
{
  (*(*(*v1 + 88) + 48))(v5, *(*v1 + 80));
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v6[0];
  result = *(v6 + 10);
  *(a1 + 42) = *(v6 + 10);
  return result;
}

uint64_t sub_25BBDE260(uint64_t a1)
{

  swift_getAtKeyPath();

  sub_25BBDE5DC(&v4, v3);

  v1 = *(v4 + 16);

  return v1;
}

uint64_t sub_25BBDE2EC(uint64_t a1)
{
  v5 = *(v1 + 16);

  swift_getAtKeyPath();

  v2 = v4;
  if (v4)
  {
    sub_25BBDE5DC(&v5, v4);

    v2 = *(v5 + 16);
  }

  return v2;
}

void *sub_25BBDE37C()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v28 = v3;
  sub_25BCB617C();
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v26 = v8;
  v27 = v4;
  if (v7)
  {
    while (1)
    {
      v11 = v9;
LABEL_8:
      v12 = (*(v28 + 48) + 16 * (__clz(__rbit64(v7)) | (v11 << 6)));
      v29 = *v12;
      v30 = v12[1];
      sub_25BCB617C();

      sub_25BAC44E4();
      OUTLINED_FUNCTION_124_1();
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_25BA9266C(v2, v1);
      if (__OFADD__(v10[2], (v14 & 1) == 0))
      {
        break;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61B0, &qword_25BCC88F0);
      if (sub_25BCB745C())
      {
        v17 = sub_25BA9266C(v2, v1);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_22;
        }

        v15 = v17;
      }

      v7 &= v7 - 1;
      if (v16)
      {

        v19 = (v10[7] + 16 * v15);
        *v19 = v29;
        v19[1] = v30;
      }

      else
      {
        v10[(v15 >> 6) + 8] |= 1 << v15;
        v20 = (v10[6] + 16 * v15);
        *v20 = v2;
        v20[1] = v1;
        v21 = (v10[7] + 16 * v15);
        *v21 = v29;
        v21[1] = v30;

        v22 = v10[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_21;
        }

        v10[2] = v24;
      }

      v9 = v11;
      v8 = v26;
      v4 = v27;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return v10;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

void *sub_25BBDE5DC@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v6 = sub_25BAC44E4();
  v8 = v7;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v9 = *(v3 + 24);
  sub_25BCB617C();
  sub_25BADCE14(v6, v8, v9);
  v11 = v10;

  if (v11)
  {
    type metadata accessor for TensorHandle();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;

    sub_25BAA6EB0();
  }

  else
  {
    v22 = *(a2 + 152);
    v21 = *(a2 + 160);
    sub_25BAA51C8(a2 + 168, v20);
    type metadata accessor for TensorRepresentation();
    swift_allocObject();
    OUTLINED_FUNCTION_183();
    sub_25BCB617C();
    v14 = sub_25BC5F250(&v22, &v21, v20, 0x100000000);
    type metadata accessor for TensorHandle();
    v12 = swift_allocObject();
    *(v12 + 16) = v14;

    sub_25BAA6EB0();

    sub_25BAC44E4();
    v16 = v15;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + 24);
    v17 = OUTLINED_FUNCTION_107();
    sub_25BC1A420(v17, v18, v16, v19);
    *(v3 + 24) = v22;

    result = swift_endAccess();
  }

  *a1 = v12;
  return result;
}

uint64_t sub_25BBDE814(void (*a1)(void))
{
  a1(*(v1 + 16));

  return v1;
}

uint64_t sub_25BBDE844()
{
  sub_25BBDE814(MEMORY[0x277D85028]);

  return swift_deallocClassInstance();
}

double sub_25BBDE8B0@<D0>(_OWORD *a1@<X8>)
{
  sub_25BBDE1D4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

uint64_t sub_25BBDE948(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDE984(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154FD70, type metadata accessor for AdamOperation, byte_25BCBB060);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDE9DC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, byte_25BCBB060);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEA34(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation, aU_2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEA8C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation, aU_2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEAE4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F488, type metadata accessor for OneHotOperation, a5);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEB3C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6140, type metadata accessor for BatchNormGradientOperation, byte_25BCD1FC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEB94(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6148, type metadata accessor for BatchNormOperation, byte_25BCD1FC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEBEC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB3FC8, type metadata accessor for TileOperation, aE);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEC44(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F3A0, type metadata accessor for RandomOperation, byte_25BCCD284);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEC9C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDECF4(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDED4C(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154DC68, type metadata accessor for Convolution2DOperation, aY);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEDA4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154D770, type metadata accessor for LinearGradientOperation, asc_25BCC6048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEDFC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F570, type metadata accessor for LinearOperation, asc_25BCC60D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEE54(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4078, type metadata accessor for ResizeOperation, aM_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEEAC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB44F8, type metadata accessor for Max2DPoolOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEF04(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEF5C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4508, type metadata accessor for Average2DPoolOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEFB4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4518, type metadata accessor for PadOperation, asc_25BCC1A44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF00C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4520, type metadata accessor for MatrixMultiplicationOperation, byte_25BCC6160);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF064(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB3820, type metadata accessor for SelectOperation, aYT);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF0BC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6150, type metadata accessor for TopKOperation, byte_25BCCDF64);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF114(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation, byte_25BCD29B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF16C(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154E988, type metadata accessor for ReductionOperation, byte_25BCD29B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF1C4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6158, type metadata accessor for BandPartOperation, byte_25BCCDD6C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF21C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6160, type metadata accessor for NonZeroIndicesOperation, aU_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF274(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6168, type metadata accessor for SliceGradientOperation, byte_25BCD7164);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF2CC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6170, type metadata accessor for SliceOperation, byte_25BCD7164);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF324(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6178, type metadata accessor for SplitOperation, aAL);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF37C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4D08, type metadata accessor for ArgumentSortOperation, byte_25BCC1D9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF3D4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6180, type metadata accessor for ReverseOperation, byte_25BCCDE68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF42C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154E7E8, type metadata accessor for TransposeOperation, byte_25BCCE07C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF484(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6188, type metadata accessor for ScatterOperation, byte_25BCCE194);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF4DC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6190, type metadata accessor for GatherOperation, "1%\a+,");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF534(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154FAA0, type metadata accessor for CastOperation, byte_25BCCE2AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF58C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F658, type metadata accessor for ConcatOperation, aI_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF5E4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154ED78, type metadata accessor for BroadcastOperation, byte_25BCCE338);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF63C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F1F8, type metadata accessor for ReshapeOperation, byte_25BCCE3C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF694(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154D288, type metadata accessor for BinaryArithmeticOperation, asc_25BCD4048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF6EC(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154D158, type metadata accessor for BinaryComparisonOperation, asc_25BCD4048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF744(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation, asc_25BCD4048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF79C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB5188, type metadata accessor for UnaryLogicalOperation, byte_25BCC63D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF7F4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154D4F0, type metadata accessor for UnaryArithmeticOperation, byte_25BCC63D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF84C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4938, type metadata accessor for LSTMLayerOperation, aX);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF8A4(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154F128, type metadata accessor for SoftmaxOperation, byte_25BCC63D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF8FC(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154E000, type metadata accessor for ReLUGradientOperation, byte_25BCC63D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF954(uint64_t a1)
{
  result = sub_25BBDFAB4(&unk_28154F9C0, type metadata accessor for ReLUOperation, byte_25BCC63D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF9AC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB3FB8, type metadata accessor for ActivationOperation, byte_25BCC63D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDFA04(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F010, type metadata accessor for TrackedOperation, byte_25BCBEA68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDFA5C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4570, type metadata accessor for ConstantOperation, byte_25BCBB79C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDFAB4(unint64_t *a1, void (*a2)(uint64_t), const char *a3, ...)
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

uint64_t (*sub_25BBDFAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v58 = a5;
  v59 = a6;
  v65 = a1;
  *&v66 = sub_25BCB5EBC();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BCB5EEC();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v69 = a2;
  *&v81 = &unk_286D54CA0;
  *(&v81 + 1) = &off_281E23E38;

  sub_25BC689A4(&v69, v80);
  *&v69 = a3;
  *&v79 = &unk_286D54CA0;
  *(&v79 + 1) = &off_281E23E38;

  sub_25BC689A4(&v69, v78);
  *&v69 = a4;
  *&v77 = &unk_286D54CA0;
  *(&v77 + 1) = &off_281E23E38;

  sub_25BC689A4(&v69, v76);
  v13 = __swift_project_boxed_opaque_existential_1(v80, v81);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *__swift_allocate_boxed_opaque_existential_0(&v69) = *v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61C8, &qword_25BCC8AD0);
  swift_dynamicCast();
  v14 = __swift_project_boxed_opaque_existential_1(v78, v79);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *__swift_allocate_boxed_opaque_existential_0(&v69) = *v14;

  swift_dynamicCast();
  v15 = __swift_project_boxed_opaque_existential_1(v76, v77);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *__swift_allocate_boxed_opaque_existential_0(&v69) = *v15;

  swift_dynamicCast();
  v62 = v81;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v16 = swift_allocObject();
  *(v16 + 16) = v62;
  *(v16 + 32) = sub_25BC68BF4;
  *(v16 + 40) = 0;
  *&v62 = v16;
  v61 = v79;
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v17 = swift_allocObject();
  *(v17 + 16) = v61;
  *(v17 + 32) = sub_25BC68BF4;
  *(v17 + 40) = 0;
  *&v61 = v17;
  v60 = v77;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v18 = swift_allocObject();
  *(v18 + 16) = v60;
  *(v18 + 32) = sub_25BC68BF4;
  *(v18 + 40) = 0;
  *&v60 = v18;
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v19 = v56;
  v20 = __swift_project_value_buffer(v56, qword_28154BE90);
  v21 = v55;
  v22 = v12;
  (*(v55 + 16))(v12, v20, v19);
  v23 = v57;
  sub_25BCB5EAC();
  v24 = swift_slowAlloc();
  *v24 = 0;
  v25 = sub_25BCB5EDC();
  v26 = sub_25BCB6D5C();
  v27 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v25, v26, v27, "Backpropagation (Forward Pass)", "", v24, 2u);
  v54 = &v54;
  v74 = v75[2];
  v75[0] = v75[3];
  v73 = v75[1];
  MEMORY[0x28223BE20](v28);
  v29 = v59;
  *(&v54 - 6) = v58;
  *(&v54 - 5) = v29;
  *(&v54 - 4) = v75;
  *(&v54 - 3) = &v74;
  *(&v54 - 2) = &v73;
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v69);

  v30 = v72;
  v63 = v22;
  if (v72)
  {
    v31 = *(v72 + 24);
    if (v31)
    {

      v35 = objc_autoreleasePoolPush();
      sub_25BAB6FD4();
      objc_autoreleasePoolPop(v35);
      v33 = v30;
      goto LABEL_9;
    }

    v32 = v31 | 1;
  }

  else
  {
    v32 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v33 = sub_25BAB6EC8(v32, MEMORY[0x277D84F90]);

  v72 = v33;
  v34 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v34);
LABEL_9:
  sub_25BAA4AF4(&v69);
  v36 = sub_25BCB6D4C();
  v37 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v25, v36, v37, "Backpropagation (Forward Pass)", "", v24, 2u);

  v38 = *(&v67[0] + 1);
  MEMORY[0x25F8797F0](v24, -1, -1);
  (*(v64 + 8))(v23, v66);
  (*(v21 + 8))(v63, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v39 = swift_allocObject();
  v66 = xmmword_25BCBAE50;
  *(v39 + 16) = xmmword_25BCBAE50;
  *(v39 + 32) = v38;
  v40 = v80[0];
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  *(v41 + 32) = v40;
  v42 = v78[0];
  inited = swift_initStackObject();
  *(inited + 16) = v66;
  *(inited + 32) = v42;
  v68 = v41;

  sub_25BC03860(inited);
  v44 = v76[0];
  v45 = swift_initStackObject();
  *(v45 + 16) = v66;
  *(v45 + 32) = v44;

  sub_25BC03860(v45);
  v46 = sub_25BAC1988(v39, v68, v33);
  v48 = v47;

  *v65 = v38;
  sub_25BAC27B0(v80, &v69);
  sub_25BAC27B0(v78, v67);
  v49 = swift_allocObject();
  v49[2] = v46;
  v49[3] = v48;
  v50 = v62;
  v49[4] = sub_25BBE1350;
  v49[5] = v50;
  sub_25BA97060(&v69, (v49 + 6));
  v51 = v61;
  v49[11] = sub_25BBE1448;
  v49[12] = v51;
  sub_25BA97060(v67, (v49 + 13));
  v52 = v60;
  v49[18] = sub_25BBE1448;
  v49[19] = v52;

  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v80);
  return sub_25BBE1404;
}

uint64_t sub_25BBE0414(uint64_t (*a1)(uint64_t *, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v8 = a3;
  v6 = a5;
  return a1(&v8, &v7, &v6);
}

uint64_t sub_25BBE0464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(_OWORD *__return_ptr, uint64_t), uint64_t a8, unint64_t a9, void (*a10)(_OWORD *__return_ptr, uint64_t), uint64_t a11, void *a12, void (*a13)(_OWORD *__return_ptr, uint64_t))
{
  v15 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25BCBAE50;
  *(v16 + 32) = a4;

  v17 = a5(v16);

  v18 = *(a9 + 24);
  v19 = *(a9 + 32);
  v20 = __swift_project_boxed_opaque_existential_1(v15, *(v15 + 24));
  v21 = v19[3];
  v22 = v20;
  v23 = v21(v18, v19);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v64 = v17;
  v22 = sub_25BABAF60(0, v23, v17);
  a4 = v25;
  v15 = v26;
  if (v26)
  {
    v61 = v24;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x277D84F90];
    }

    v30 = *(v29 + 16);

    if (__OFSUB__(v15 >> 1, a4))
    {
      goto LABEL_37;
    }

    if (v30 != (v15 >> 1) - a4)
    {
      goto LABEL_38;
    }

    v28 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v28)
    {
      goto LABEL_11;
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  while (1)
  {
    sub_25BAFFB88(v22, v24, a4, v15);
    v28 = v27;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    a4 = a12;
    a7(v70, v28);

    v31 = v21(v18, v19);
    v21 = a12[3];
    v32 = a12[4];
    v19 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v18 = v32 + 24;
    v33 = *(v32 + 24);
    v22 = v19;
    v34 = (v33)(v21, v32);
    v35 = v31 + v34;
    if (__OFADD__(v31, v34))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v35 < v31)
    {
      goto LABEL_35;
    }

    v37 = sub_25BABAF60(v31, v35, v64);
    v39 = v38;
    v15 = v40;
    if ((v40 & 1) == 0)
    {
      goto LABEL_14;
    }

    v62 = v36;
    a7 = v33;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x277D84F90];
    }

    v44 = *(v43 + 16);

    if (__OFSUB__(v15 >> 1, v39))
    {
      __break(1u);
LABEL_40:
      swift_unknownObjectRelease();
      v36 = v62;
LABEL_14:
      sub_25BAFFB88(v37, v36, v39, v15);
      v42 = v41;
      a4 = v64;
      goto LABEL_21;
    }

    if (v44 != (v15 >> 1) - v39)
    {
      goto LABEL_40;
    }

    v42 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    a4 = v64;
    if (v42)
    {
      goto LABEL_22;
    }

    v42 = MEMORY[0x277D84F90];
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    a10(v69, v42);

    v22 = v19;
    v45 = (v33)(v21, v32);
    v46 = __OFADD__(v31, v45);
    v47 = v31 + v45;
    if (!v46)
    {
      break;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_unknownObjectRelease();
    v24 = v61;
  }

  sub_25BBCB9F8(v47, a4);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  if ((v55 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v58 = swift_dynamicCastClass();
  if (!v58)
  {
    swift_unknownObjectRelease();
    v58 = MEMORY[0x277D84F90];
  }

  v59 = *(v58 + 16);

  if (__OFSUB__(v55 >> 1, v53))
  {
    __break(1u);
  }

  else if (v59 == (v55 >> 1) - v53)
  {
    v57 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v57)
    {
      v57 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  swift_unknownObjectRelease_n();
LABEL_24:
  sub_25BAFFB88(v49, v51, v53, v55);
  v57 = v56;
LABEL_31:
  swift_unknownObjectRelease();
LABEL_32:
  a13(v68, v57);

  sub_25BB1D62C(v70, &v67);
  swift_dynamicCast();
  sub_25BB1D62C(v69, &v66);
  swift_dynamicCast();
  sub_25BB1D62C(v68, &v65);
  return swift_dynamicCast();
}

void *sub_25BBE096C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25BBCBA58(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_25BBE0998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  OUTLINED_FUNCTION_33_0();
  a59 = v64;
  a60 = v65;
  v72 = OUTLINED_FUNCTION_119_2(v66, v67, v68, v69, v70, v71);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BB73218(*(v60 + 56));
  if (v73)
  {
    OUTLINED_FUNCTION_166(v73);
    OUTLINED_FUNCTION_198();

    if (v72)
    {
      OUTLINED_FUNCTION_172();
      if (!v91)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        sub_25BCB648C();
        if (!v74)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v91)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_10();
        if (v81)
        {
          v82 = OUTLINED_FUNCTION_39_10(v75, v76, v77, v78, v79, v80);
          OUTLINED_FUNCTION_93_4(v82, v83, v84, v85, v86, v87);
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2();
            if ((v88 & 1) == 0)
            {
              break;
            }

            v89 = OUTLINED_FUNCTION_8_25();
            v91 = v91 && v61 == v90;
            if (!v91)
            {
              OUTLINED_FUNCTION_18_2(v89, v90);
              OUTLINED_FUNCTION_35_9();
              if ((v92 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_92_4();
LABEL_19:
      }
    }
  }

  sub_25BBA0910(&a15);
  v62(v63);
  OUTLINED_FUNCTION_198();
  v95 = sub_25BB2E238(v93, v94, a32, a33);
  if (v96)
  {
    v97 = v95;

    v61 = v97;
  }

  sub_25BA9AC78(&a15);
  OUTLINED_FUNCTION_172();
  if (v91)
  {
    OUTLINED_FUNCTION_4_42();
    while (1)
    {
      sub_25BCB648C();
      if (!v98)
      {
        break;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v91)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v105)
      {
        v106 = OUTLINED_FUNCTION_39_10(v99, v100, v101, v102, v103, v104);
        OUTLINED_FUNCTION_93_4(v106, v107, v108, v109, v110, v111);
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2();
          if ((v112 & 1) == 0)
          {
            break;
          }

          v113 = OUTLINED_FUNCTION_8_25();
          if (!v91 || v61 != v114)
          {
            OUTLINED_FUNCTION_18_2(v113, v114);
            OUTLINED_FUNCTION_35_9();
            if ((v116 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_38;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_38:
    }

LABEL_39:
  }

LABEL_40:
  OUTLINED_FUNCTION_32_0();
}

void sub_25BBE0B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  OUTLINED_FUNCTION_33_0();
  a59 = v64;
  a60 = v65;
  v72 = OUTLINED_FUNCTION_119_2(v66, v67, v68, v69, v70, v71);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BB73218(*(v60 + 56));
  if (v73)
  {
    OUTLINED_FUNCTION_166(v73);
    OUTLINED_FUNCTION_198();

    if (v72)
    {
      OUTLINED_FUNCTION_172();
      if (!v91)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        sub_25BCB648C();
        if (!v74)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v91)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_10();
        if (v81)
        {
          v82 = OUTLINED_FUNCTION_39_10(v75, v76, v77, v78, v79, v80);
          OUTLINED_FUNCTION_93_4(v82, v83, v84, v85, v86, v87);
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2();
            if ((v88 & 1) == 0)
            {
              break;
            }

            v89 = OUTLINED_FUNCTION_8_25();
            v91 = v91 && v61 == v90;
            if (!v91)
            {
              OUTLINED_FUNCTION_18_2(v89, v90);
              OUTLINED_FUNCTION_35_9();
              if ((v92 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_92_4();
LABEL_19:
      }
    }
  }

  sub_25BBA0910(&a15);
  v62(v63);
  OUTLINED_FUNCTION_198();
  v95 = sub_25BB2E238(v93, v94, a32, a33);
  if (v96)
  {
    v97 = v95;

    v61 = v97;
  }

  sub_25BA9AC78(&a15);
  OUTLINED_FUNCTION_172();
  if (v91)
  {
    OUTLINED_FUNCTION_4_42();
    while (1)
    {
      sub_25BCB648C();
      if (!v98)
      {
        break;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v91)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v105)
      {
        v106 = OUTLINED_FUNCTION_39_10(v99, v100, v101, v102, v103, v104);
        OUTLINED_FUNCTION_93_4(v106, v107, v108, v109, v110, v111);
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2();
          if ((v112 & 1) == 0)
          {
            break;
          }

          v113 = OUTLINED_FUNCTION_8_25();
          if (!v91 || v61 != v114)
          {
            OUTLINED_FUNCTION_18_2(v113, v114);
            OUTLINED_FUNCTION_35_9();
            if ((v116 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_38;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_38:
    }

LABEL_39:
  }

LABEL_40:
  OUTLINED_FUNCTION_32_0();
}

void sub_25BBE0D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  OUTLINED_FUNCTION_33_0();
  a59 = v60;
  a60 = v61;
  v63 = v62;
  v65 = v64;
  v69 = sub_25BBDFAB4(v66, v67, v68);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BB73218(*(v63 + 56));
  if (!v70 || (sub_25BB3EFD4(v65, v69 | 0x4000000000000000, 0, v70), v72 = v71, , !v72))
  {
    sub_25BBA0910(&a15);
    sub_25BA9AC78(&a15);
    if (*(v63 + 73) != 1)
    {
      sub_25BCB617C();
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_97_2();
    sub_25BCB617C();
    while (1)
    {
      sub_25BCB648C();
      if (!v92)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v90)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v99)
      {
        v100 = OUTLINED_FUNCTION_39_10(v93, v94, v95, v96, v97, v98);
        OUTLINED_FUNCTION_93_4(v100, v101, v102, v103, v104, v105);
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2();
          if ((v106 & 1) == 0)
          {
            break;
          }

          v107 = OUTLINED_FUNCTION_8_25();
          if (!v90 || v63 != v108)
          {
            OUTLINED_FUNCTION_18_2(v107, v108);
            OUTLINED_FUNCTION_35_9();
            if ((v110 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_34;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_34:
    }
  }

  if (*(v63 + 73) == 1)
  {
    OUTLINED_FUNCTION_97_2();
    while (1)
    {
      sub_25BCB648C();
      if (!v73)
      {
        break;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v90)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v80)
      {
        v81 = OUTLINED_FUNCTION_39_10(v74, v75, v76, v77, v78, v79);
        OUTLINED_FUNCTION_93_4(v81, v82, v83, v84, v85, v86);
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2();
          if ((v87 & 1) == 0)
          {
            break;
          }

          v88 = OUTLINED_FUNCTION_8_25();
          v90 = v90 && v63 == v89;
          if (!v90)
          {
            OUTLINED_FUNCTION_18_2(v88, v89);
            OUTLINED_FUNCTION_35_9();
            if ((v91 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_18:
    }

LABEL_35:
  }

LABEL_37:
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_25BBE0F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BBDFAB4(&qword_27FBB4570, type metadata accessor for ConstantOperation, byte_25BCBB79C);
  swift_beginAccess();
  sub_25BB73218(*(a2 + 56));
  if (v5 && (v6 = sub_25BB3EFD4(a1, v4 | 0x4000000000000000, 0, v5), v8 = v7, , v8))
  {
    if (*(a2 + 73) == 1)
    {
      while (1)
      {
        v9 = sub_25BCB648C();
        if (!v10)
        {
          break;
        }

        v11 = v9;
        v12 = v10;
        if (qword_27FBB33A0 != -1)
        {
          swift_once();
        }

        v13 = off_27FBB5D18;
        if (*(off_27FBB5D18 + 2))
        {
          sub_25BCB79CC();
          sub_25BCB625C();
          v14 = sub_25BCB7A3C();
          v15 = ~(-1 << v13[32]);
          while (1)
          {
            v16 = v14 & v15;
            if (((*&v13[(((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v14 & v15)) & 1) == 0)
            {
              break;
            }

            v17 = (*(v13 + 6) + 16 * v16);
            if (*v17 != v11 || v12 != v17[1])
            {
              v19 = sub_25BCB789C();
              v14 = v16 + 1;
              if ((v19 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_17;
          }
        }

        MEMORY[0x25F876C80](v11, v12);
LABEL_17:
      }

LABEL_33:

      return 0;
    }
  }

  else
  {
    sub_25BBA0910(v32);
    v6 = *(a1 + 24);
    sub_25BCB617C();
    sub_25BA9AC78(v32);
    if (*(a2 + 73) == 1)
    {
      while (1)
      {
        v20 = sub_25BCB648C();
        if (!v21)
        {
          goto LABEL_33;
        }

        v22 = v20;
        v23 = v21;
        if (qword_27FBB33A0 != -1)
        {
          swift_once();
        }

        v24 = off_27FBB5D18;
        if (*(off_27FBB5D18 + 2))
        {
          sub_25BCB79CC();
          sub_25BCB625C();
          v25 = sub_25BCB7A3C();
          v26 = ~(-1 << v24[32]);
          while (1)
          {
            v27 = v25 & v26;
            if (((*&v24[(((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v25 & v26)) & 1) == 0)
            {
              break;
            }

            v28 = (*(v24 + 6) + 16 * v27);
            if (*v28 != v22 || v23 != v28[1])
            {
              v30 = sub_25BCB789C();
              v25 = v27 + 1;
              if ((v30 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_32;
          }
        }

        MEMORY[0x25F876C80](v22, v23);
LABEL_32:
      }
    }
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_36_11(uint64_t result)
{
  *(result + 48) = *(v1 + 48);
  *(result + 56) = 0;
  *(result + 64) = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_95_3()
{
  v2 = *(v1 + 112);
  *v0 = *(v1 + 96);
  *(v0 + 16) = v2;
  *(v0 + 32) = *(v1 + 128);
  result = *(v1 + 138);
  *(v0 + 42) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_96_2(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

__n128 OUTLINED_FUNCTION_99_3()
{
  v2 = *(v0 + 128);
  *(v1 - 160) = *(v0 + 112);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 144);
  result = *(v0 + 154);
  *(v1 - 118) = result;
  return result;
}

double OUTLINED_FUNCTION_105_2@<D0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  sub_25BCB617C();
  return result;
}

uint64_t OUTLINED_FUNCTION_119_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t), const char *a6)
{

  return sub_25BBDFAB4(a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_120_2(uint64_t result)
{
  *(result + 64) = 121;
  *(result + 72) = v1;
  return result;
}

__n128 *OUTLINED_FUNCTION_122_3(__n128 *result, __n128 a2, __n128 a3)
{
  result[1] = a3;
  result[2] = a2;
  *(v3 + 48) = result;
  *(v3 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_154(uint64_t result)
{
  *(result + 32) = 0x6570616873;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_157()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_159()
{
  v3 = *(v1 + 40);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 56) = v3;

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_160(uint64_t a1, uint64_t a2)
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1, uint64_t a2)
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_170(__int128 *a1)
{
  sub_25BA97060(a1, v2 - 104);

  return sub_25BA97060((v1 + 40), v2 - 144);
}

__n128 OUTLINED_FUNCTION_187@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v1 + 104);
  result = *(v1 + 114);
  *(a1 + 42) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_199@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *(a1 + 128) = a2;
  *(a1 + 144) = a3;
  *(a1 + 160) = *(v3 + 120);
  return *(v3 + 130);
}

uint64_t OUTLINED_FUNCTION_206()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_208()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_209@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BB2BAEC(a9, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_210()
{

  return sub_25BCB614C();
}

double OUTLINED_FUNCTION_211@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 48) = *(a1 + 152);
  *(v1 + 56) = 2;

  sub_25BCB617C();
  return result;
}

void OUTLINED_FUNCTION_213()
{

  JUMPOUT(0x25F8779B0);
}

unint64_t OUTLINED_FUNCTION_214(uint64_t a1, char a2)
{

  return sub_25BAB4D78(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_216()
{

  return swift_setDeallocating();
}

uint64_t Tensor.inverted()()
{
  v1 = *v0;
  if (!sub_25BAB74D0(*(*(*(v1 + 16) + 152) + 16), 2, 0, 0))
  {
    OUTLINED_FUNCTION_0_59();
    v15 = 43;
    goto LABEL_6;
  }

  if (*(*(v1 + 16) + 160) != 10)
  {
    sub_25BC8FACC();
    OUTLINED_FUNCTION_0_59();
    v15 = 44;
LABEL_6:
    sub_25BADDD28(v9, v10, v11, v12, v13, v14, v15);
  }

  sub_25BB3FA0C(sub_25BBE1EF4, v1, v2, v3, v4, v5, v6, v7, v16);
}

uint64_t sub_25BBE19F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *(a3 + 16);
  v11 = *(v10 + 152);
  v12 = *(v10 + 160);
  sub_25BAA51C8(v10 + 168, v30);
  sub_25BAA51C8(v30, &v24);
  if (*(&v25 + 1))
  {
    v28[0] = v24;
    v28[1] = v25;
    v28[2] = v26;
    v29 = v27;

    sub_25BCB617C();
  }

  else
  {
    type metadata accessor for ContextManager();

    sub_25BCB617C();
    sub_25BAA49B8();
    sub_25BAA4A5C(v23);

    sub_25BAA51C8(v23, v28);
    sub_25BAA4AF4(v23);
    if (*(&v25 + 1))
    {
      sub_25BA9C2C8(&v24);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    swift_once();
  }

  v13 = qword_281557400;
  v23[0] = v11;
  LOBYTE(v24) = v12;

  sub_25BC73618(v23, &v24, v28, v13, a1, a2, a3, v14);
  if (v5)
  {
    sub_25BA9C2C8(v28);
    sub_25BA9C2C8(v30);
  }

  else
  {
    v17 = v15;

    sub_25BAA51C8(v28, v23);
    type metadata accessor for TensorRepresentation();
    v18 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v20 = swift_unknownObjectRetain();
    LOBYTE(v24) = 1;
    v21 = sub_25BAA5BB4(v20, v23, 0x100000000, v18, ObjectType, v17);
    type metadata accessor for TensorHandle();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v28);
    sub_25BA9C2C8(v30);

    *a4 = v22;
  }

  return result;
}

uint64_t sub_25BBE1C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25BCB6EEC();
  v6 = *(*(a5 + 16) + 152);
  v7 = v6[2];
  if (!v7)
  {
LABEL_19:
    sub_25BCB617C();
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  v8 = v6[4];
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 == 1)
  {
    goto LABEL_19;
  }

  v9 = v6[5];
  if (v9 < 0xFFFFFFFF80000000)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v9 > 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  if (v9 >= v8)
  {
    v10 = v6[4];
  }

  else
  {
    v10 = v6[5];
  }

  sub_25BC552FC(0, v10);
  v12 = v11;
  sub_25BAC26E8(v9, 0.0);
  v14 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAFE638(0, *(v12 + 16), 0, v12);
  }

  sgetrf_NEWLAPACK();
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAFE610(0, *(v14 + 16), 0, v14);
  }

  sgetri_NEWLAPACK();

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_25BBE1F20()
{
  result = qword_27FBB61E0[0];
  if (!qword_27FBB61E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB61E0);
  }

  return result;
}

uint64_t sub_25BBE1F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BBE1FE4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v14;
  v41 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v38 - v18;
  v19 = sub_25BCB6E8C();
  v39 = *(v19 - 8);
  v40 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v25);
  v52 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v38 - v30;
  v32 = sub_25BCB657C();
  v59 = sub_25BCB731C();
  v54 = sub_25BCB732C();
  sub_25BCB726C();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_25BCB655C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25BCB6EDC();
      result = __swift_getEnumTagSinglePayload(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v24, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v24, AssociatedTypeWitness);
      sub_25BCB72FC();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_25BCB6EDC();
    if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v21, v40);
      return v59;
    }

    (*v35)(v37, v21, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_25BCB72FC();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

uint64_t sub_25BBE2650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  sub_25BCB61AC();
  sub_25BCB617C();
  swift_getWitnessTable();
  v8 = sub_25BCB664C();

  v18 = v8;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = swift_getKeyPath();
  swift_getTupleTypeMetadata2();
  v9 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25BAB2B20(sub_25BBE42FC, v14, v9, a3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  return v12;
}

uint64_t sub_25BBE2850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v3 = *a2;
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  (*(v6 + 16))(v16 - v11, v10);
  v13 = *(v5 + 48);
  v14 = *&v12[v13];
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v8, v12);
  *&v8[v13] = v14;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25BBE29FC@<X0>(uint64_t a4@<X4>, void *a6@<X8>)
{
  sub_25BCB61BC();
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    sub_25BCB690C();
    v8 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v8, 1, a4);
}

void sub_25BBE2A8C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v37 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v40 = v11 - v10;
  OUTLINED_FUNCTION_9();
  v36 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v19 = OUTLINED_FUNCTION_9_34(0, v17, v18);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v26 = &v34 - v25;
  OUTLINED_FUNCTION_7_33();
  v39 = sub_25BCB67CC();
  v47 = v39;
  OUTLINED_FUNCTION_9_34(0, v5, MEMORY[0x277D83B88]);
  sub_25BCB67CC();
  v41 = v5;
  v42 = v1;
  v46 = sub_25BCB614C();
  sub_25BCB617C();
  v27 = sub_25BCB674C();

  v45 = v27;
  if (v27 == sub_25BCB681C())
  {
LABEL_2:

    OUTLINED_FUNCTION_10_16();
    return;
  }

  v35 = v23;
  v28 = *(v19 + 48);
  v38 = (v21 + 16);
  v39 = v28;
  v29 = (v36 + 32);
  v30 = (v37 + 32);
  while (1)
  {
    v31 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v31 & 1) == 0)
    {
      break;
    }

    (*(v21 + 16))(v26, v7 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v27, v19);
LABEL_6:
    sub_25BCB68AC();
    (*v29)(v16, v26, v41);
    v43 = sub_25BCB681C();
    v44 = 0;
    sub_25BCB61AC();
    sub_25BCB61CC();
    (*v30)(v40, &v26[v39], v3);
    OUTLINED_FUNCTION_7_33();
    sub_25BCB68CC();
    sub_25BCB687C();
    v32 = sub_25BCB681C();
    v27 = v45;
    if (v45 == v32)
    {
      goto LABEL_2;
    }
  }

  v33 = sub_25BCB717C();
  if (v35 == 8)
  {
    v43 = v33;
    (*v38)(v26, &v43, v19);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BBE2E30(void *a1@<X8>)
{
  sub_25BBE2A8C();
  *a1 = v2;
  a1[1] = v3;
}

void sub_25BBE2E64()
{
  OUTLINED_FUNCTION_9_18();
  v80 = v0;
  v94 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v81 = v18 - v17;
  v19 = sub_25BCB6E8C();
  v90 = OUTLINED_FUNCTION_9_34(0, v19, v19);
  OUTLINED_FUNCTION_9();
  v70 = v20;
  MEMORY[0x28223BE20](v21);
  v92 = v66 - v22;
  OUTLINED_FUNCTION_9();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_50();
  v82 = v26;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v27);
  v83 = v66 - v28;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v29);
  v91 = v66 - v30;
  v31 = sub_25BCB6E8C();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v66 - v32;
  v88 = v13;
  v34 = sub_25BCB681C();
  v89 = v9;
  v35 = sub_25BCB681C();
  if (v34 != v35)
  {
    goto LABEL_6;
  }

  v93 = v15;
  v85 = v11;
  v36 = v94;
  v95 = sub_25BBE2650(v35, v11, v5, v3, v94);
  sub_25BCB68CC();
  swift_getWitnessTable();
  v37 = OUTLINED_FUNCTION_5_40();
  v95 = sub_25BBE2650(v37, v7, v5, v3, v36);
  OUTLINED_FUNCTION_5_40();
  sub_25BCB617C();
  sub_25BCB69EC();

  v38 = sub_25BCB6A2C();

  if ((v38 & 1) == 0)
  {

LABEL_6:
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v78 = v7;
  v39 = v37;
  if ((v37 & 0xC000000000000001) != 0)
  {
    sub_25BCB705C();
    sub_25BCB6A3C();
    v39 = v95;
    v40 = v96;
    v41 = v97;
    v42 = v98;
    v43 = v99;
  }

  else
  {
    v42 = 0;
    v44 = -1 << *(v37 + 32);
    v40 = v37 + 56;
    v45 = ~v44;
    v46 = -v44;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v43 = v47 & *(v37 + 56);
    v41 = v45;
  }

  v48 = v83;
  v49 = v91;
  v66[1] = v41;
  v50 = (v41 + 64) >> 6;
  v75 = (v24 + 16);
  v67 = (v93 + 32);
  v69 = (v93 + 8);
  v76 = (v24 + 8);
  v51 = v92;
  v77 = v39;
  v79 = v40;
  v72 = v50;
  v86 = v5 - 8;
  v73 = v33;
  v68 = v5;
  v74 = v19;
  while (1)
  {
    v87 = v42;
    if ((v39 & 0x8000000000000000) == 0)
    {
      break;
    }

    v84 = v43;
    if (!sub_25BCB706C())
    {
LABEL_27:
      __swift_storeEnumTagSinglePayload(v33, 1, 1, v5);
      goto LABEL_28;
    }

    v54 = v48;
    sub_25BCB787C();
    swift_unknownObjectRelease();
    v93 = v84;
    v49 = v91;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v5);
    sub_25BBE29FC(v3, v49);
    sub_25BBE29FC(v3, v54);
    v48 = v54;
    (*(*(v5 - 8) + 8))(v33, v5);
    v33 = *(v90 + 48);
    v55 = *v75;
    v56 = v74;
    (*v75)(v51, v49, v74);
    v55(v51 + v33, v48, v56);
    if (__swift_getEnumTagSinglePayload(v51, 1, v3) == 1)
    {
      v39 = v76;
      v57 = *v76;
      (*v76)(v48, v56);
      v57(v49, v56);
      if (__swift_getEnumTagSinglePayload(v51 + v33, 1, v3) != 1)
      {
        goto LABEL_30;
      }

      v57(v51, v56);
      OUTLINED_FUNCTION_3_35();
      v43 = v93;
    }

    else
    {
      v58 = v3;
      v59 = v82;
      v55(v82, v51, v56);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51 + v33, 1, v58);
      v61 = v76;
      if (EnumTagSinglePayload == 1)
      {
        v65 = *v76;
        (*v76)(v83, v56);
        v65(v91, v56);
        (*v69)(v59, v58);
LABEL_30:
        (*(v70 + 8))(v51, v90);
        v39 = v77;
LABEL_28:
        sub_25BAB3820(v39);
        goto LABEL_6;
      }

      v62 = v51 + v33;
      v63 = v81;
      (*v67)(v81, v62, v58);
      v71 = sub_25BCB630C();
      v64 = *v69;
      (*v69)(v63, v58);
      v33 = *v61;
      v48 = v83;
      (*v61)(v83, v56);
      v39 = v91;
      (v33)(v91, v56);
      v64(v59, v58);
      v5 = v68;
      (v33)(v92, v56);
      v51 = v92;
      v3 = v58;
      v49 = v39;
      OUTLINED_FUNCTION_3_35();
      if ((v71 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  v52 = v43;
  if (v43)
  {
LABEL_18:
    v54 = v48;
    v84 = v43;
    v93 = (v52 - 1) & v52;
    (*(*(v5 - 8) + 16))(v33, *(v39 + 48) + *(*(v5 - 8) + 72) * (__clz(__rbit64(v52)) | (v42 << 6)), v5);
    goto LABEL_21;
  }

  v53 = v87;
  while (1)
  {
    v42 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v42 >= v50)
    {
      goto LABEL_27;
    }

    v52 = *(v40 + 8 * v42);
    ++v53;
    if (v52)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_25BBE3718()
{
  OUTLINED_FUNCTION_9_18();
  v47 = v0;
  v48 = v1;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v45 = v7;
  v46 = v8;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v43 = v13 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - v18;
  v42 = v3;
  v19 = v5 + 64;
  v20 = 1 << *(v5 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v5 + 64);
  v23 = (v20 + 63) >> 6;
  v38 = (v10 + 8);
  v39 = v3 - 8;
  v37 = (v17 + 8);
  v49 = v5;
  sub_25BCB617C();
  v24 = 0;
  v25 = v42;
  while (v22)
  {
    v26 = v24;
LABEL_9:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v27 | (v26 << 6);
    v29 = v49;
    v30 = *(v25 - 8);
    v31 = v41;
    (*(v30 + 16))(v41, *(v49 + 48) + *(v30 + 72) * v28, v25);
    v32 = *(*(v29 + 56) + 8 * v28);
    v33 = *(TupleTypeMetadata2 + 48);
    v34 = v40;
    (*(v30 + 32))(v40, v31, v25);
    *&v34[v33] = v32;
    sub_25BCB624C();
    v35 = v43;
    v36 = v46;
    sub_25BCB690C();
    sub_25BCB624C();
    (*v38)(v35, v36);
    (*v37)(v34, TupleTypeMetadata2);
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      OUTLINED_FUNCTION_10_16();
      return;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_25BBE3A44()
{
  sub_25BCB79CC();
  sub_25BBE3718();
  return sub_25BCB7A3C();
}

uint64_t sub_25BBE3AF4(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BBE3718();
  return sub_25BCB7A3C();
}

uint64_t sub_25BBE3B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  v21 = *(swift_getTupleTypeMetadata2() + 48);
  v15 = *(v9 + 16);
  v15(v14, a1, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  v16 = *(a2 - 8);
  (*(v16 + 32))(a4, v14, a2);
  v15(v11, v20, TupleTypeMetadata2);
  v17 = *(a3 - 8);
  (*(v17 + 32))(a4 + v21, &v11[*(TupleTypeMetadata2 + 48)], a3);
  (*(v16 + 8))(v11, a2);
  return (*(v17 + 8))(&v14[v22], a3);
}

void sub_25BBE3D7C()
{
  OUTLINED_FUNCTION_9_18();
  v46 = v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_7_33();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  OUTLINED_FUNCTION_50();
  v43 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = OUTLINED_FUNCTION_7_33();
  v12 = OUTLINED_FUNCTION_9_34(v10, v11, v3);
  OUTLINED_FUNCTION_9();
  v44 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_50();
  v45 = v15;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = *(v0 + 8);
  if (v19 >= sub_25BCB681C())
  {
    OUTLINED_FUNCTION_10_16();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  else
  {
    v20 = *(v12 + 48);
    v37 = v9;
    v38 = v20;
    sub_25BCB690C();
    v21 = *(TupleTypeMetadata2 + 48);
    v40 = v0;
    v41 = v21;
    v22 = *(v4 - 8);
    v23 = v43;
    v39 = *(v22 + 32);
    v42 = v22 + 32;
    v39(v18, v9, v4);
    sub_25BCB690C();
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = *(v3 - 8);
    v36 = *(v25 + 32);
    v36(&v18[v38], v23 + v24, v3);
    (*(v22 + 8))(v23, v4);
    (*(v25 + 8))(&v37[v41], v3);
    *(v40 + 8) = v19 + 1;
    v26 = v45;
    (*(v44 + 32))(v45, v18, v12);
    v27 = *(v12 + 48);
    v28 = *(TupleTypeMetadata2 + 48);
    v29 = v46;
    v39(v46, v26, v4);
    v36((v29 + v28), &v26[v27], v3);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, TupleTypeMetadata2);
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BBE40B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  sub_25BBE2650(a1, v3, v4, v5, v6);
  sub_25BBE29F8();

  v7 = sub_25BCB68CC();
  v8 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  sub_25BCB793C();

  v26 = v28;
  v27 = v29;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = WitnessTable;
  v25 = v10;
  v11 = sub_25BCB715C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = swift_getWitnessTable();
  v15 = sub_25BBE1FE4(sub_25BBE4320, v18, v11, TupleTypeMetadata2, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);

  *a2 = v15;
  a2[1] = 0;
  return result;
}

uint64_t sub_25BBE4344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BBE4440(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_28154F2C8 != -1)
  {
    swift_once();
  }

  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v8 = a1 + 32;
    do
    {
      v8 += 8;

      sub_25BCB723C();
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v6;
    }

    while (v6);
    v7 = v17;
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v17) = 1;
  v18 = MEMORY[0x277D84FA0];
  sub_25BACF298(v7, &v17);
  if (v9)
  {
    sub_25BAD6344();
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (!v12)
  {

    return 0;
  }

  if (v12 == 1)
  {
    sub_25BAD6FB0(v11 + 32, &v17);

    v13 = a2(v14);
    sub_25BA9AC78(&v17);
    return v13;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000061, 0x800000025BCE0E70);
  v19 = v12;
  v16 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v16);

  MEMORY[0x25F876C90](0x6F6974636E756620, 0xEB000000002E736ELL);
  result = sub_25BCB74CC("Fatal error", 11, 2, v17, v18, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/TensorStagedDebugDescription.swift", 116, 2, a3);
  __break(1u);
  return result;
}

uint64_t sub_25BBE46A4()
{
  sub_25BAD6FB0(v0, v6);
  sub_25BC46E18(v7);
  type metadata accessor for MILProgramBuilder();
  swift_initStackObject();
  sub_25BBA35C4(v6, 0, 1, v7);
  sub_25BBA003C();
  v2 = v1;
  v3 = [v1 description];
  v4 = sub_25BCB636C();

  return v4;
}

uint64_t sub_25BBE47B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, __n128))
{
  v5 = sub_25BCB639C();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a2, v9);
  sub_25BCB638C();
  v12 = sub_25BCB637C();
  v14 = v13;

  result = (*(v7 + 8))(v11, v5);
  if (v14 >> 60 != 15)
  {
    sub_25BCB5A5C();
    return sub_25BBE4B68(v12, v14);
  }

  return result;
}

uint64_t sub_25BBE490C(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v3;

  v5 = a1(inited);
  swift_setDeallocating();
  sub_25BAB3FD0();
  return v5;
}

uint64_t sub_25BBE49D0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_25BCB639C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v10;

  a2(inited);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BCB638C();
  v12 = sub_25BCB637C();
  v14 = v13;

  result = (*(v6 + 8))(v9, v4);
  if (v14 >> 60 != 15)
  {
    sub_25BCB5A5C();
    return sub_25BBE4B68(v12, v14);
  }

  return result;
}

uint64_t sub_25BBE4B68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BB0D160(a1, a2);
  }

  return a1;
}

void Tensor.init<A>(repeating:shape:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  sub_25BAA51C8(v4, v24);
  if (v25)
  {
    OUTLINED_FUNCTION_158_0(v26);
    v26[12] = v12;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v23);

    sub_25BAA51C8(v23, v26);
    sub_25BAA4AF4(v23);
    if (v25)
    {
      sub_25BA9C2C8(v24);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v23[0] = v11;
  v13 = (*(v1 + 32))(v24, v3, v1);
  MEMORY[0x28223BE20](v13);
  v22[2] = v3;
  v22[3] = v1;
  v22[4] = v7;
  sub_25BAA4B48(v23, v24, v26, sub_25BBEEFC4, v22);
  v15 = v14;

  v16 = type metadata accessor for TensorRepresentation();
  sub_25BAA51C8(v26, v23);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v24[0]) = 1;
  OUTLINED_FUNCTION_149();
  sub_25BC5FAD0(v18, v23, v19, v16, ObjectType, v15);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v20);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  sub_25BA9C2C8(v5);
  sub_25BA9C2C8(v26);
  *v9 = v20;
  OUTLINED_FUNCTION_11_1();
  (*(v21 + 8))(v7, v3);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A>(randomUniform:in:seed:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v89 = v27;
  v29 = v28;
  v31 = v30;
  v91 = v32;
  v92 = v33;
  v35 = v34;
  v93 = sub_25BCB62FC();
  OUTLINED_FUNCTION_2();
  v90 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  v39 = &v87 - v38;
  v40 = *v35;
  v87 = v26;
  v88 = v40;
  sub_25BAA51C8(v26, &v102);
  if (*(&v103[0] + 1))
  {
    v101[0] = v102;
    v101[1] = v103[0];
    v101[2] = v103[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_175_0();

    sub_25BAA51C8(v100, v101);
    sub_25BAA4AF4(v100);
    if (*(&v103[0] + 1))
    {
      sub_25BA9C2C8(&v102);
    }
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

  v41 = type metadata accessor for ContextManager();
  v42 = sub_25BAA49B8();
  OUTLINED_FUNCTION_132_0(v42);
  OUTLINED_FUNCTION_180();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[2] = v26;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v41)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v26 = v86;
  v42[2] = v86;
  if (!v41)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v41 > *(v26 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v31 = sub_25BC32FA0();
  v42[2] = v26;
  swift_endAccess();

LABEL_10:
  v44 = sub_25BBE5CAC(v31);
  v98 = v45;
  OUTLINED_FUNCTION_82_5(v44, v46, v47, v48, v49, v50, v51, v52, *&v45, v53, v87, v88, v89, v90, v91, v92, v93, v94[0], v94[1], v94[2], v94[3], v94[4], v94[5], v94[6], v95[0]);
  v54 = *(v99 + 16);

  v95[0] = v88;
  v56 = v90;
  v55 = v91;
  OUTLINED_FUNCTION_206_0();
  v57 = OUTLINED_FUNCTION_102_0();
  v58(v57);
  OUTLINED_FUNCTION_126_0();
  v59(&v102, v24);
  sub_25BC3209C(v39, &v102, v24, v22, v100);
  v97 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v103 + 8) = xmmword_25BCBC690;
  v61 = OUTLINED_FUNCTION_72_4(v60);
  v62 = OUTLINED_FUNCTION_201(v61);
  v63 = OUTLINED_FUNCTION_3();
  sub_25BC323E4(v63, v64, v65, v54, v66, v67, v68);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v69, v70, &unk_25BCCD284);
  v71 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v71, v95);
  if (v96)
  {
    OUTLINED_FUNCTION_65_2();
    sub_25BABEF40(v100, v94);
    sub_25BC170C8(v62, v94, v95);
    sub_25BA9C2C8(v94);
    sub_25BABF0A8(v100);
  }

  else
  {
    sub_25BA9C2C8(v95);
    OUTLINED_FUNCTION_114_3();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v100);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v100);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v72 = swift_allocObject();

  OUTLINED_FUNCTION_48_9();
  v79 = sub_25BC0C634(v73, v74, v75, v76, v77, v78, v72);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v80 = swift_allocObject();
  *(v80 + 16) = v79;

  sub_25BAA6EB0();
  sub_25BAA51C8(v101, v95);
  if (v96)
  {
    OUTLINED_FUNCTION_65_2();
    v95[0] = v80;
    v82 = Tensor.scalarType.getter(v81);
    sub_25BBABD24(v82, v83);
    OUTLINED_FUNCTION_186();
    if (!v84)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(v100, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v85, v87);
    }

    OUTLINED_FUNCTION_200_0();

    sub_25BA9C2C8(v87);
    (*(v56 + 8))(v55, v93);
    sub_25BABF0A8(v100);
    sub_25BA9C2C8(v101);
    v80 = v95[0];
  }

  else
  {

    sub_25BA9C2C8(v87);
    (*(v56 + 8))(v55, v93);
    sub_25BA9C2C8(v101);
    sub_25BA9C2C8(v95);
  }

  *v92 = v80;
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  v120 = v21;
  v23 = v22;
  v25 = v24;
  v122 = v26;
  v28 = v27;
  v30 = v29;
  v129 = v31;
  v33 = v32;
  v126 = v34;
  sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v123 = v36;
  v124 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v121 = v38 - v37;
  v118[2] = *(*(*(a21 + 8) + 24) + 16);
  v118[1] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v39);
  v118[0] = v118 - v40;
  OUTLINED_FUNCTION_9();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_0();
  v118[3] = v44 - v45;
  MEMORY[0x28223BE20](v46);
  v128 = v118 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = v118 - v49;
  v127 = *v33;
  v125 = v25;
  sub_25BAA51C8(v25, &v137);
  if (*(&v138 + 1))
  {
    v152[0] = v137;
    v152[1] = v138;
    v152[2] = v139;
    v153 = v140;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v146);

    sub_25BAA51C8(&v146, v152);
    sub_25BAA4AF4(&v146);
    if (*(&v138 + 1))
    {
      sub_25BA9C2C8(&v137);
    }
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v51 = sub_25BAA49B8();
  swift_beginAccess();
  v52 = *(v51 + 16);
  v53 = *(v52 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v51 + 16) = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_68;
  }

  if (v53)
  {
    while (1)
    {
      if (v53 > *(v52 + 16))
      {
        goto LABEL_70;
      }

      v30 = sub_25BC32FA0();
      *(v51 + 16) = v52;
      swift_endAccess();

LABEL_10:
      v55 = sub_25BBE5CAC(v30);
      v146 = v56;
      v147 = v57;
      v148 = v55 & 1;
      v149 = v58;
      sub_25BB6B668(&v145);
      v59 = *(v145 + 16);

      v144 = v127;
      v127 = *(v42 + 16);
      (v127)(v50, v129, v23);
      OUTLINED_FUNCTION_56_5();
      if ((sub_25BCB6FAC() & 1) == 0)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_42_11();
      if (sub_25BCB6F9C() <= 32)
      {
        goto LABEL_23;
      }

      LODWORD(v146) = 0x80000000;
      v60 = v23;
      OUTLINED_FUNCTION_56_5();
      if (sub_25BCB6FAC())
      {
        break;
      }

      v60 = v23;
      OUTLINED_FUNCTION_56_5();
      v61 = sub_25BCB6FAC();
      OUTLINED_FUNCTION_42_11();
      v62 = sub_25BCB6F9C();
      if (v61)
      {
        if (v62 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          OUTLINED_FUNCTION_190_0();
          v66 = OUTLINED_FUNCTION_73_4();
          v67(v66);
          if (v23)
          {
            goto LABEL_71;
          }

LABEL_22:
          OUTLINED_FUNCTION_42_11();
          sub_25BCB6F8C();
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      if (v62 < 32)
      {
        goto LABEL_22;
      }

LABEL_23:
      OUTLINED_FUNCTION_42_11();
      if (sub_25BCB6F9C() <= 32)
      {
        goto LABEL_28;
      }

      while (1)
      {
        LODWORD(v146) = 0x7FFFFFFF;
        OUTLINED_FUNCTION_56_5();
        v68 = sub_25BCB6FAC();
        OUTLINED_FUNCTION_42_11();
        v69 = sub_25BCB6F9C();
        if (v68)
        {
          if (v69 < 33)
          {
            goto LABEL_32;
          }
        }

        else if (v69 < 32)
        {
LABEL_32:
          OUTLINED_FUNCTION_42_11();
          sub_25BCB6F8C();
          break;
        }

        v70 = sub_25BBF2FDC();
        OUTLINED_FUNCTION_181_0(v70, MEMORY[0x277D849A8], v70);
        sub_25BCB629C();
        v71 = OUTLINED_FUNCTION_73_4();
        v72(v71);
        if ((v23 & 1) == 0)
        {
          break;
        }

        __break(1u);
LABEL_28:
        OUTLINED_FUNCTION_42_11();
        if (sub_25BCB6F9C() == 32)
        {
          OUTLINED_FUNCTION_56_5();
          if ((sub_25BCB6FAC() & 1) == 0)
          {
            continue;
          }
        }

        break;
      }

      v119 = v59;
      OUTLINED_FUNCTION_42_11();
      v51 = sub_25BCB6F8C();
      v74 = *(v42 + 8);
      v42 += 8;
      v73 = v74;
      v74(v50, v23);
      v50 = sub_25BCB62FC();
      v75 = v128;
      (v127)(v128, v129 + *(v50 + 9), v23);
      v76 = v75;
      OUTLINED_FUNCTION_56_5();
      if (sub_25BCB6FAC())
      {
        OUTLINED_FUNCTION_54_7();
        if (sub_25BCB6F9C() > 32)
        {
          LODWORD(v146) = 0x80000000;
          OUTLINED_FUNCTION_56_5();
          if (sub_25BCB6FAC())
          {
            OUTLINED_FUNCTION_54_7();
            if (sub_25BCB6F9C() < 32)
            {
              goto LABEL_46;
            }

            v77 = sub_25BBF2FDC();
            v127 = v50;
            OUTLINED_FUNCTION_99_4(&v146, MEMORY[0x277D849A8], v77);
            OUTLINED_FUNCTION_133_0();
            v78 = OUTLINED_FUNCTION_17_26();
            v50 = v127;
            v73(v78, v23);
            if (v23)
            {
              goto LABEL_72;
            }
          }

          else
          {
            OUTLINED_FUNCTION_56_5();
            v79 = sub_25BCB6FAC();
            OUTLINED_FUNCTION_56_5();
            v80 = sub_25BCB6F9C();
            if (v79)
            {
              v127 = v50;
              if (v80 <= 32)
              {
                swift_getAssociatedConformanceWitness();
                sub_25BCB790C();
                sub_25BCB788C();
                v76 = v128;
                OUTLINED_FUNCTION_133_0();
                v83 = OUTLINED_FUNCTION_17_26();
                v73(v83, v23);
                v50 = v127;
                if (v23)
                {
                  goto LABEL_72;
                }

LABEL_46:
                OUTLINED_FUNCTION_54_7();
                sub_25BCB6F8C();
                goto LABEL_47;
              }

              v81 = sub_25BBF2FDC();
              OUTLINED_FUNCTION_99_4(&v146, MEMORY[0x277D849A8], v81);
              v76 = v128;
              OUTLINED_FUNCTION_133_0();
              v82 = OUTLINED_FUNCTION_17_26();
              v73(v82, v23);
              v50 = v127;
              if (v75)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v76 = v128;
              if (v80 < 32)
              {
                goto LABEL_46;
              }
            }
          }
        }
      }

LABEL_47:
      OUTLINED_FUNCTION_54_7();
      if (sub_25BCB6F9C() <= 32)
      {
        goto LABEL_52;
      }

      do
      {
        LODWORD(v146) = 0x7FFFFFFF;
        OUTLINED_FUNCTION_56_5();
        v84 = v76;
        v85 = sub_25BCB6FAC();
        OUTLINED_FUNCTION_56_5();
        v86 = sub_25BCB6F9C();
        if (v85)
        {
          if (v86 < 33)
          {
            goto LABEL_56;
          }
        }

        else if (v86 < 32)
        {
LABEL_56:
          v76 = v128;
          OUTLINED_FUNCTION_54_7();
          sub_25BCB6F8C();
          break;
        }

        v87 = sub_25BBF2FDC();
        v127 = v50;
        OUTLINED_FUNCTION_99_4(&v146, MEMORY[0x277D849A8], v87);
        v76 = v128;
        sub_25BCB629C();
        v88 = OUTLINED_FUNCTION_17_26();
        v50 = v127;
        v73(v88, v23);
        if ((v84 & 1) == 0)
        {
          break;
        }

        __break(1u);
LABEL_52:
        OUTLINED_FUNCTION_54_7();
        if (sub_25BCB6F9C() != 32)
        {
          break;
        }

        OUTLINED_FUNCTION_56_5();
      }

      while ((sub_25BCB6FAC() & 1) == 0);
      OUTLINED_FUNCTION_54_7();
      v53 = sub_25BCB6F8C();
      v73(v76, v23);
      if (v53 >= v51)
      {
        *(&v138 + 1) = MEMORY[0x277D849A8];
        *&v139 = &protocol witness table for Int32;
        LODWORD(v137) = v51;
        v141 = MEMORY[0x277D849A8];
        v142 = &protocol witness table for Int32;
        DWORD2(v139) = v53;
        v143 = 514;
        v136 = 0;
        OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
        v154 = xmmword_25BCBC690;
        v90 = OUTLINED_FUNCTION_72_4(v89);
        v91 = OUTLINED_FUNCTION_201(v90);
        v92 = OUTLINED_FUNCTION_3();
        sub_25BC323E4(v92, v93, v94, v119, v95, v96, v97);
        OUTLINED_FUNCTION_11_30();
        sub_25BBF3030(v98, v99, byte_25BCCD284);
        v100 = OUTLINED_FUNCTION_185_0();
        sub_25BAA51C8(v100, &v132);
        if (*(&v133 + 1))
        {
          OUTLINED_FUNCTION_163_0();
          sub_25BABEF40(&v146, v130);
          sub_25BC170C8(v91, v130, &v132);
          sub_25BA9C2C8(v130);
          sub_25BABF0A8(&v146);
        }

        else
        {
          sub_25BA9C2C8(&v132);
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0;
        }

        type metadata accessor for ContextManager();
        sub_25BAA49B8();
        sub_25BAA4A5C(&v146);

        v101 = v151;

        sub_25BAA4AF4(&v146);
        sub_25BAA49B8();
        sub_25BAA4A5C(&v146);

        v102 = v150;

        sub_25BAA4AF4(&v146);
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_93();
        v103 = swift_allocObject();

        LOBYTE(v146) = 1;
        v105 = sub_25BC0C634(v104, 0, &v132, 0x100000000, v101, v102, v103);
        type metadata accessor for TensorHandle();
        OUTLINED_FUNCTION_22();
        v106 = swift_allocObject();
        *(v106 + 16) = v105;

        sub_25BAA6EB0();
        sub_25BAA51C8(v152, &v132);
        if (*(&v133 + 1))
        {
          OUTLINED_FUNCTION_163_0();
          *&v132 = v106;
          v108 = Tensor.scalarType.getter(v107);
          sub_25BBABD24(v108, v109);
          OUTLINED_FUNCTION_186();
          if (!v110)
          {
            OUTLINED_FUNCTION_78_4();
            OUTLINED_FUNCTION_55(&v146, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v111, v118[0]);
          }

          *&v132 = v106;
          Tensor.place(on:)(&v146);
          sub_25BABF0A8(&v146);
          v106 = v132;
        }

        else
        {
          sub_25BA9C2C8(&v132);
          *&v132 = v106;
        }

        v113 = v123;
        v112 = v124;
        v114 = v121;
        (*(v123 + 104))(v121, *MEMORY[0x277D84660], v124);
        v130[0] = v106;
        OUTLINED_FUNCTION_126_0();
        v115(&v131, v23);
        Tensor.cast(to:roundingRule:)();

        sub_25BA9C2C8(v125);
        OUTLINED_FUNCTION_11_1();
        (*(v116 + 8))(v129, v50);
        (*(v113 + 8))(v114, v112);

        sub_25BA9C2C8(v152);
        OUTLINED_FUNCTION_116_2(v146);
        OUTLINED_FUNCTION_10_16();
        return;
      }

      __break(1u);
LABEL_68:
      sub_25BBF1454();
      v52 = v117;
      *(v51 + 16) = v117;
      if (!v53)
      {
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_42_11();
    if (sub_25BCB6F9C() < 32)
    {
      goto LABEL_22;
    }

LABEL_17:
    v63 = sub_25BBF2FDC();
    OUTLINED_FUNCTION_181_0(v63, MEMORY[0x277D849A8], v63);
    OUTLINED_FUNCTION_190_0();
    v64 = OUTLINED_FUNCTION_73_4();
    v65(v64);
    if (v60)
    {
      goto LABEL_71;
    }

    goto LABEL_23;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void Tensor.init<A>(randomNormal:mean:standardDeviation:seed:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v24 = v23;
  v94 = v25;
  v95 = v26;
  v28 = v27;
  v30 = v29;
  v97 = v32;
  v99 = v31;
  OUTLINED_FUNCTION_9();
  v34 = v33;
  v35 = v106;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_174_0();
  v39 = *v38;
  v92 = v40;
  sub_25BAA51C8(v40, &v110);
  if (*(&v111[0] + 1))
  {
    v109[0] = v110;
    v109[1] = v111[0];
    v109[2] = v111[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_175_0();

    sub_25BAA51C8(v108, v109);
    sub_25BAA4AF4(v108);
    if (*(&v111[0] + 1))
    {
      sub_25BA9C2C8(&v110);
    }
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

  v41 = type metadata accessor for ContextManager();
  v42 = sub_25BAA49B8();
  OUTLINED_FUNCTION_132_0(v42);
  OUTLINED_FUNCTION_180();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[2] = v106;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v41)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v35 = v88;
  v42[2] = v88;
  if (!v41)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v41 > *(v35 + 2))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v30 = sub_25BC32FA0();
  v42[2] = v35;
  swift_endAccess();

LABEL_10:
  v44 = sub_25BBE5CAC(v30);
  v106[0] = v45;
  OUTLINED_FUNCTION_82_5(v44, v46, v47, v48, v49, v50, v51, v52, *&v45, v53, v89, v91, v92, v94, v95, v97, v99, v101[0], v101[1], v101[2], v101[3], v101[4], v101[5], v101[6], v102);
  v54 = *(v107 + 16);

  *&v102 = v39;
  v55 = *(v34 + 16);
  v55(v22, v100, v24);
  v55(v21, v98, v24);
  OUTLINED_FUNCTION_126_0();
  v56(&v110, v24);
  sub_25BC32164(v22, v21, &v110, v24, a21, v108);
  v105 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v111 + 8) = xmmword_25BCBC690;
  v58 = OUTLINED_FUNCTION_72_4(v57);
  OUTLINED_FUNCTION_201(v58);
  v59 = OUTLINED_FUNCTION_3();
  sub_25BC323E4(v59, v60, v61, v54, v62, v63, v64);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v65, v66, byte_25BCCD284);
  v67 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v67, &v102);
  if (*(&v103 + 1))
  {
    v108[0] = v102;
    v108[1] = v103;
    v108[2] = v104;
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_225();
    sub_25BA9C2C8(v101);
    sub_25BABF0A8(v108);
  }

  else
  {
    sub_25BA9C2C8(&v102);
    OUTLINED_FUNCTION_114_3();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v108);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v108);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v68 = swift_allocObject();

  OUTLINED_FUNCTION_48_9();
  v75 = sub_25BC0C634(v69, v70, v71, v72, v73, v74, v68);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v76 = swift_allocObject();
  *(v76 + 16) = v75;

  sub_25BAA6EB0();
  sub_25BAA51C8(v109, &v102);
  if (*(&v103 + 1))
  {
    OUTLINED_FUNCTION_65_2();
    *&v102 = v76;
    v78 = Tensor.scalarType.getter(v77);
    sub_25BBABD24(v78, v79);
    OUTLINED_FUNCTION_186();
    if (!v80)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(v108, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v81, v90);
    }

    OUTLINED_FUNCTION_200_0();

    sub_25BA9C2C8(v93);
    v82 = *(v34 + 8);
    v83 = OUTLINED_FUNCTION_219();
    v82(v83);
    v84 = OUTLINED_FUNCTION_218();
    v82(v84);
    sub_25BABF0A8(v108);
    sub_25BA9C2C8(v109);
    v76 = v102;
  }

  else
  {

    sub_25BA9C2C8(v93);
    v85 = *(v34 + 8);
    v86 = OUTLINED_FUNCTION_219();
    v85(v86);
    v87 = OUTLINED_FUNCTION_218();
    v85(v87);
    sub_25BA9C2C8(v109);
    sub_25BA9C2C8(&v102);
  }

  *v96 = v76;
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A>(randomTruncatedNormal:mean:standardDeviation:seed:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v25 = v24;
  v98 = v26;
  v99 = v27;
  v29 = v28;
  v31 = v30;
  v101 = v33;
  v103 = v32;
  OUTLINED_FUNCTION_9();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_171();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_221();
  v93 = v39;
  v95 = v40;
  sub_25BAA51C8(v39, &v118);
  if (*(&v119[0] + 1))
  {
    v117[0] = v118;
    v117[1] = v119[0];
    v117[2] = v119[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_175_0();

    sub_25BAA51C8(&v113, v117);
    sub_25BAA4AF4(&v113);
    if (*(&v119[0] + 1))
    {
      sub_25BA9C2C8(&v118);
    }
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

  v41 = v35;
  type metadata accessor for ContextManager();
  v42 = sub_25BAA49B8();
  OUTLINED_FUNCTION_132_0(v42);
  v43 = v42[2];
  v44 = *(v43 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[2] = v43;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v44)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v43 = v90;
  v42[2] = v90;
  if (!v44)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v44 > *(v43 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v31 = sub_25BC32FA0();
  v42[2] = v43;
  swift_endAccess();

  v35 = v41;
LABEL_10:
  v46 = sub_25BBE5CAC(v31);
  v111 = v47;
  OUTLINED_FUNCTION_82_5(v46, v48, v49, v50, v51, v52, v53, v54, *&v47, v55, v91, v93, v95, v98, v99, v101, v103, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v106);
  v56 = *(v112 + 16);

  *&v106 = v96;
  v97 = v35;
  v57 = *(v35 + 16);
  v57(v21, v104, v25);
  v57(v23, v102, v25);
  OUTLINED_FUNCTION_126_0();
  v58(&v118, v25);
  sub_25BBEEF00(v25, a21);
  sub_25BC32248(v21, v23, v22, &v118, v25, a21, &v113);
  v110 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v119 + 8) = xmmword_25BCBC690;
  v60 = OUTLINED_FUNCTION_72_4(v59);
  OUTLINED_FUNCTION_201(v60);
  v61 = OUTLINED_FUNCTION_3();
  sub_25BC323E4(v61, v62, v63, v56, v64, v65, v66);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v67, v68, byte_25BCCD284);
  v69 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v69, &v106);
  if (*(&v107 + 1))
  {
    v113 = v106;
    v114 = v107;
    v115 = v108;
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_225();
    sub_25BA9C2C8(v105);
    sub_25BABF0A8(&v113);
  }

  else
  {
    sub_25BA9C2C8(&v106);
    OUTLINED_FUNCTION_114_3();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(&v113);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(&v113);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v70 = swift_allocObject();

  OUTLINED_FUNCTION_48_9();
  v77 = sub_25BC0C634(v71, v72, v73, v74, v75, v76, v70);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;

  sub_25BAA6EB0();
  v79 = sub_25BAA51C8(v117, &v106);
  if (*(&v107 + 1))
  {
    v113 = v106;
    v114 = v107;
    v115 = v108;
    v116 = v109;
    *&v106 = v78;
    v80 = Tensor.scalarType.getter(v79);
    sub_25BBABD24(v80, v81);
    OUTLINED_FUNCTION_186();
    if (!v82)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(&v113, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v83, v92);
    }

    OUTLINED_FUNCTION_200_0();

    sub_25BA9C2C8(v94);
    v84 = *(v97 + 8);
    v85 = OUTLINED_FUNCTION_219();
    v84(v85);
    v86 = OUTLINED_FUNCTION_218();
    v84(v86);
    sub_25BABF0A8(&v113);
    sub_25BA9C2C8(v117);
    v78 = v106;
  }

  else
  {

    sub_25BA9C2C8(v94);
    v87 = *(v97 + 8);
    v88 = OUTLINED_FUNCTION_219();
    v87(v88);
    v89 = OUTLINED_FUNCTION_218();
    v87(v89);
    sub_25BA9C2C8(v117);
    sub_25BA9C2C8(&v106);
  }

  *v100 = v78;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBE5CAC(unint64_t a1)
{
  sub_25BAFD30C(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = v2;
  for (i = 0; i != 64; i += 8)
  {
    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_25BAFD30C(v5 > 1, v6 + 1, 1, v3);
      v3 = v7;
    }

    *(v3 + 16) = v6 + 1;
    *(v3 + v6 + 32) = a1 >> i;
  }

  return sub_25BB6B250(v3);
}

void Tensor.init<A>(shape:scalars:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  v12 = *(*v10 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    v14 = 1;
    while (1)
    {
      v15 = *v13++;
      v16 = v14 * v15;
      if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
      {
        break;
      }

      v14 = v16;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = 1;
LABEL_7:
    OUTLINED_FUNCTION_92();
    if (v16 == sub_25BCB6ABC())
    {
      v37[7] = v11;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v18 = sub_25BAA51C8(v5, v37);
      MEMORY[0x28223BE20](v18);
      v19 = OUTLINED_FUNCTION_137_0();
      Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v19, AssociatedTypeWitness, v1, v37, v20, v21, v22);
      sub_25BA9C2C8(v5);
      *v9 = v37[8];
      OUTLINED_FUNCTION_11_1();
      (*(v23 + 8))(v7, v3);
      OUTLINED_FUNCTION_10_16();
      return;
    }
  }

  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v11 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v24)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

LABEL_15:
  v25 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v25);

  v26 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v26);
  OUTLINED_FUNCTION_92();
  sub_25BCB6ABC();
  v27 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v27);

  v28 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v28);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_228(v29, v30, v31, v32, v33, v34, v35, v36, 131);
  __break(1u);
}

void Tensor.init(coercing:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  v4 = v3;
  v6 = v5;
  v572 = v7;
  if (v1)
  {
    v8 = v2;
    v9 = v1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_229();
    v8 = v6[4];
  }

  v10 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v15 = &v566 - v14;
  if (OUTLINED_FUNCTION_229() == v9)
  {
    OUTLINED_FUNCTION_136_0();
    v21 = &qword_27FBB4528;
    v22 = &unk_25BCC1A60;
LABEL_49:
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_179_0();
    swift_dynamicCast();
    v114 = OUTLINED_FUNCTION_178_0();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v9);
    goto LABEL_50;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v16, v17, v18, MEMORY[0x277D84DC8]))
    {
      OUTLINED_FUNCTION_61_5();
      v20 = *(v19 - 256);
    }

    else
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_18_26(v28))
      {
        OUTLINED_FUNCTION_124_2();
        v0 = v578;
        v570 = v579;
        OUTLINED_FUNCTION_121_2(v577, v578);
        OUTLINED_FUNCTION_127();
        v8 = &v566;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v29);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_105_3();
        v31 = OUTLINED_FUNCTION_46_10(v30);
        v32(v31);
        OUTLINED_FUNCTION_104_4();
        sub_25BBF2A24();
        v20 = v33;
        OUTLINED_FUNCTION_143_0();
      }

      else
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        v35 = OUTLINED_FUNCTION_18_26(v34);
        if (!v35)
        {
          if (OUTLINED_FUNCTION_31_17(v35, v36, v37, MEMORY[0x277D839B0]))
          {
            OUTLINED_FUNCTION_61_5();
            v20 = *(v61 - 256);
          }

          else
          {
            LOWORD(v20) = 0;
            v0 = 1;
          }

          goto LABEL_48;
        }

        OUTLINED_FUNCTION_127();
        v569 = v10;
        v568 = v4;
        OUTLINED_FUNCTION_124_2();
        v10 = v578;
        v4 = v579;
        __swift_project_boxed_opaque_existential_1(v577, v578);
        OUTLINED_FUNCTION_119_3();
        v567 = v38;
        OUTLINED_FUNCTION_9();
        v8 = v39;
        MEMORY[0x28223BE20](v40);
        OUTLINED_FUNCTION_1();
        v42 = OUTLINED_FUNCTION_60_4(v41);
        v43(v42);
        OUTLINED_FUNCTION_59_4();
        if (sub_25BCB6F9C() <= 64)
        {
          OUTLINED_FUNCTION_123_2();
          OUTLINED_FUNCTION_103_4();
          v92 = *(v91 - 256);
          v93 = OUTLINED_FUNCTION_196_0();
          OUTLINED_FUNCTION_59_4();
          v94 = sub_25BCB6F8C();
          v95 = OUTLINED_FUNCTION_58_5();
          v96(v95);
          if (v93)
          {
            v20 = v94;
          }

          else
          {
            v20 = v94;
          }

          v4 = v568;
          v8 = v92;
          OUTLINED_FUNCTION_216_0();
          v10 = v569;
          v12 = v566;
        }

        else
        {
          sub_25BB95A00();
          v44 = sub_25BB95A54();
          OUTLINED_FUNCTION_83_4(v44, v45, MEMORY[0x277D84DC8]);
          v46 = OUTLINED_FUNCTION_58_5();
          v47(v46);
          v20 = *&v576;
          OUTLINED_FUNCTION_101_3();
          OUTLINED_FUNCTION_143_0();
        }

        OUTLINED_FUNCTION_117();
      }

      OUTLINED_FUNCTION_37_11();
    }

LABEL_48:
    __swift_destroy_boxed_opaque_existential_1(v580);
    *v580 = v20;
    BYTE2(v580[0]) = v0;
    v21 = &unk_27FBB5B08;
    v22 = &unk_25BCC4140;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25BAC27B0(v6, v577);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_91_4(v23, v24, v25, &type metadata for BFloat16))
    {
      v26 = 0;
      LOWORD(v27) = v580[0];
    }

    else
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D30, &qword_25BCC2280);
      if (OUTLINED_FUNCTION_91_4(v53, v54, v55, v53))
      {
        sub_25BADF778(v580, &v573);
        v27 = v574;
        v569 = v575;
        OUTLINED_FUNCTION_103_4();
        *(v56 - 256) = v8;
        OUTLINED_FUNCTION_121_2(&v573, v27);
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v57);
        OUTLINED_FUNCTION_1();
        v15 = v12;
        v12 = v10;
        v59 = OUTLINED_FUNCTION_46_10(v58);
        v60(v59);
        OUTLINED_FUNCTION_80_4();
        BFloat16.init<A>(_:)();
      }

      else
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D28, &qword_25BCC2278);
        v65 = OUTLINED_FUNCTION_91_4(v62, v63, v64, v62);
        if (!v65)
        {
          if (OUTLINED_FUNCTION_91_4(v65, v66, v67, MEMORY[0x277D839B0]))
          {
            v26 = 0;
            LODWORD(v27) = HIWORD(COERCE_UNSIGNED_INT(LOBYTE(v580[0])));
          }

          else
          {
            LOWORD(v27) = 0;
            v26 = 1;
          }

          goto LABEL_27;
        }

        sub_25BADF778(v580, &v573);
        v27 = v574;
        v569 = v575;
        OUTLINED_FUNCTION_103_4();
        *(v68 - 256) = v8;
        OUTLINED_FUNCTION_121_2(&v573, v27);
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v69);
        OUTLINED_FUNCTION_1();
        v15 = v12;
        v12 = v10;
        v71 = OUTLINED_FUNCTION_46_10(v70);
        v72(v71);
        v73 = OUTLINED_FUNCTION_80_4();
        BFloat16.init<A>(_:)(v73, v74, v75, v76);
      }

      v8 = v27;
      LOWORD(v27) = LOWORD(v576);
      __swift_destroy_boxed_opaque_existential_1(&v573);
      v26 = 0;
    }

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v577);
    LOWORD(v580[0]) = v27;
    BYTE2(v580[0]) = v26;
    v21 = &unk_27FBB6380;
    v22 = &unk_25BCC8FC8;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v48, v49, v50, MEMORY[0x277D83A90]))
    {
      OUTLINED_FUNCTION_61_5();
      v52 = *(v51 - 256);
    }

    else
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_18_26(v82))
      {
        OUTLINED_FUNCTION_124_2();
        v0 = v578;
        v571 = v579;
        __swift_project_boxed_opaque_existential_1(v577, v578);
        OUTLINED_FUNCTION_119_3();
        v570 = v83;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v84);
        OUTLINED_FUNCTION_1();
        v86 = OUTLINED_FUNCTION_88_4(v85);
        v87(v86);
        v88 = OUTLINED_FUNCTION_89_4();
        v52 = sub_25BBF1544(v88, v89, v90);
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_37_11();
      }

      else
      {
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        v98 = OUTLINED_FUNCTION_18_26(v97);
        if (v98)
        {
          OUTLINED_FUNCTION_127();
          v569 = v10;
          v568 = v4;
          OUTLINED_FUNCTION_124_2();
          v10 = v578;
          v4 = v579;
          __swift_project_boxed_opaque_existential_1(v577, v578);
          OUTLINED_FUNCTION_119_3();
          v567 = v101;
          OUTLINED_FUNCTION_9();
          v8 = v102;
          MEMORY[0x28223BE20](v103);
          OUTLINED_FUNCTION_1();
          v105 = OUTLINED_FUNCTION_60_4(v104);
          v106(v105);
          OUTLINED_FUNCTION_59_4();
          if (sub_25BCB6F9C() <= 64)
          {
            OUTLINED_FUNCTION_196_0();
            v570 = &v566;
            OUTLINED_FUNCTION_123_2();
            v155 = v154;
            OUTLINED_FUNCTION_59_4();
            v156 = sub_25BCB6F8C();
            v157 = OUTLINED_FUNCTION_58_5();
            v158(v157);
            v8 = v571;
            v12 = v566;
            if (v155)
            {
              v52 = v156;
            }

            else
            {
              v52 = v156;
            }
          }

          else
          {
            sub_25BB18A50();
            v107 = sub_25BBF2100();
            OUTLINED_FUNCTION_83_4(v107, v108, MEMORY[0x277D83A90]);
            v109 = OUTLINED_FUNCTION_58_5();
            v110(v109);
            v52 = *&v576;
            OUTLINED_FUNCTION_143_0();
          }

          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_37_11();
          OUTLINED_FUNCTION_101_3();
        }

        else if (OUTLINED_FUNCTION_31_17(v98, v99, v100, MEMORY[0x277D839B0]))
        {
          OUTLINED_FUNCTION_61_5();
          v52 = *(v131 - 256);
        }

        else
        {
          v52 = 0.0;
          v0 = 1;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v580);
    *v580 = v52;
    BYTE4(v580[0]) = v0;
    v21 = &unk_27FBB6378;
    v22 = &unk_25BCC8FC0;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v77, v78, v79, MEMORY[0x277D839F8]))
    {
      OUTLINED_FUNCTION_61_5();
      v81 = *(v80 - 256);
    }

    else
    {
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_18_26(v122))
      {
        OUTLINED_FUNCTION_124_2();
        v0 = v578;
        v571 = v579;
        __swift_project_boxed_opaque_existential_1(v577, v578);
        OUTLINED_FUNCTION_119_3();
        v570 = v123;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v124);
        OUTLINED_FUNCTION_1();
        v126 = OUTLINED_FUNCTION_88_4(v125);
        v127(v126);
        v128 = OUTLINED_FUNCTION_89_4();
        v81 = sub_25BBF234C(v128, v129, v130);
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_37_11();
      }

      else
      {
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        v133 = OUTLINED_FUNCTION_18_26(v132);
        if (v133)
        {
          OUTLINED_FUNCTION_127();
          v569 = v10;
          v568 = v4;
          OUTLINED_FUNCTION_124_2();
          v10 = v578;
          v4 = v579;
          __swift_project_boxed_opaque_existential_1(v577, v578);
          OUTLINED_FUNCTION_119_3();
          v567 = v136;
          OUTLINED_FUNCTION_9();
          v8 = v137;
          MEMORY[0x28223BE20](v138);
          OUTLINED_FUNCTION_1();
          v140 = OUTLINED_FUNCTION_60_4(v139);
          v141(v140);
          OUTLINED_FUNCTION_59_4();
          if (sub_25BCB6F9C() <= 64)
          {
            OUTLINED_FUNCTION_196_0();
            v570 = &v566;
            OUTLINED_FUNCTION_123_2();
            v178 = v177;
            OUTLINED_FUNCTION_59_4();
            v179 = sub_25BCB6F8C();
            v180 = OUTLINED_FUNCTION_58_5();
            v181(v180);
            v8 = v571;
            v12 = v566;
            if (v178)
            {
              v81 = v179;
            }

            else
            {
              v81 = v179;
            }
          }

          else
          {
            sub_25BB675B0();
            v142 = sub_25BB67604();
            OUTLINED_FUNCTION_83_4(v142, v143, MEMORY[0x277D839F8]);
            v144 = OUTLINED_FUNCTION_58_5();
            v145(v144);
            v81 = v576;
            OUTLINED_FUNCTION_143_0();
          }

          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_37_11();
          OUTLINED_FUNCTION_101_3();
        }

        else if (OUTLINED_FUNCTION_31_17(v133, v134, v135, MEMORY[0x277D839B0]))
        {
          OUTLINED_FUNCTION_61_5();
          v81 = *(v159 - 256);
        }

        else
        {
          v81 = 0.0;
          v0 = 1;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v580);
    *v580 = v81;
    BYTE8(v580[0]) = v0;
    v21 = &unk_27FBB6370;
    v22 = &unk_25BCC8FB8;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v111, v112, v113, MEMORY[0x277D84900]))
    {
LABEL_43:
      OUTLINED_FUNCTION_40_13();
LABEL_67:
      __swift_destroy_boxed_opaque_existential_1(v580);
      LOBYTE(v580[0]) = v111;
      BYTE1(v580[0]) = v0;
      v21 = &unk_27FBB6360;
      v22 = &unk_25BCC8FB0;
      goto LABEL_49;
    }

    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    v151 = OUTLINED_FUNCTION_18_26(v150);
    if (v151)
    {
      OUTLINED_FUNCTION_124_2();
      v571 = v9;
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_9_35();
      OUTLINED_FUNCTION_104_4();
      v9 = v571;
      LOBYTE(v111) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
      goto LABEL_67;
    }

    v160 = OUTLINED_FUNCTION_33_15(v151, v152, v153, MEMORY[0x277D84DC8]);
    if (v160)
    {
      v163 = OUTLINED_FUNCTION_25_18();
      sub_25BBF112C(v163, v164);
      OUTLINED_FUNCTION_153_0();
      if ((v165 & 1) == 0)
      {
        goto LABEL_43;
      }

      v166 = sub_25BAFCF80(80);
      v168 = OUTLINED_FUNCTION_0_60(v166, v167);
      goto LABEL_106;
    }

    v182 = OUTLINED_FUNCTION_33_15(v160, v161, v162, MEMORY[0x277D83A90]);
    if (v182)
    {
      v185 = OUTLINED_FUNCTION_24_15();
      sub_25BBF0F78(v185, v186);
      OUTLINED_FUNCTION_153_0();
      if ((v187 & 1) == 0)
      {
        goto LABEL_43;
      }

      v188 = sub_25BAFCF80(80);
      v168 = OUTLINED_FUNCTION_3_36(v188, v189);
      goto LABEL_106;
    }

    if (OUTLINED_FUNCTION_33_15(v182, v183, v184, MEMORY[0x277D839F8]))
    {
      v206 = OUTLINED_FUNCTION_23_22();
      sub_25BBF0DC4(v206, v207);
      OUTLINED_FUNCTION_153_0();
      if ((v208 & 1) == 0)
      {
        goto LABEL_43;
      }

      v209 = sub_25BAFCF80(80);
      v168 = OUTLINED_FUNCTION_4_43(v209, v210);
LABEL_106:
      MEMORY[0x25F876C90](v168);
      OUTLINED_FUNCTION_11_0();
      v211 = OUTLINED_FUNCTION_217();
LABEL_107:
      v212 = 0xE400000000000000;
      goto LABEL_333;
    }

    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    v232 = OUTLINED_FUNCTION_18_26(v231);
    if ((v232 & 1) == 0)
    {
      if ((OUTLINED_FUNCTION_31_17(v232, v233, v234, MEMORY[0x277D839B0]) & 1) == 0)
      {
        OUTLINED_FUNCTION_141_0();
        goto LABEL_67;
      }

      goto LABEL_43;
    }

    v570 = &v566;
    OUTLINED_FUNCTION_8_33();
    v235 = sub_25BBF22F8();
    OUTLINED_FUNCTION_32_15(v235, v236, MEMORY[0x277D84900], v237, v235);
    if ((BYTE1(v576) & 1) == 0)
    {
      LOBYTE(v111) = LOBYTE(v576);
      OUTLINED_FUNCTION_37_11();
      OUTLINED_FUNCTION_216_0();
      goto LABEL_67;
    }

    v534 = sub_25BAFCF80(80);
    OUTLINED_FUNCTION_28_17(v534, v535);
    OUTLINED_FUNCTION_165_0();

    OUTLINED_FUNCTION_11_0();
    v211 = OUTLINED_FUNCTION_217();
    goto LABEL_328;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v146, v147, v148, MEMORY[0x277D84958]))
    {
LABEL_64:
      OUTLINED_FUNCTION_61_5();
      LOWORD(v146) = *(v149 - 256);
LABEL_84:
      __swift_destroy_boxed_opaque_existential_1(v580);
      LOWORD(v580[0]) = v146;
      BYTE2(v580[0]) = v0;
      v21 = &unk_27FBB6350;
      v22 = &unk_25BCC8FA8;
      goto LABEL_49;
    }

    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    v174 = OUTLINED_FUNCTION_18_26(v173);
    if (v174)
    {
      OUTLINED_FUNCTION_124_2();
      v571 = v9;
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_9_35();
      OUTLINED_FUNCTION_104_4();
      v9 = v571;
      LOWORD(v146) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
      goto LABEL_84;
    }

    v190 = OUTLINED_FUNCTION_33_15(v174, v175, v176, MEMORY[0x277D84DC8]);
    if (v190)
    {
      v193 = OUTLINED_FUNCTION_25_18();
      sub_25BBF0C54(v193, v194);
      OUTLINED_FUNCTION_147_0();
      if ((v195 & 1) == 0)
      {
        goto LABEL_64;
      }

      v196 = sub_25BAFCF80(80);
      v198 = OUTLINED_FUNCTION_0_60(v196, v197);
    }

    else
    {
      v213 = OUTLINED_FUNCTION_33_15(v190, v191, v192, MEMORY[0x277D83A90]);
      if (v213)
      {
        v216 = OUTLINED_FUNCTION_24_15();
        sub_25BBF0AA0(v216, v217);
        OUTLINED_FUNCTION_147_0();
        if ((v218 & 1) == 0)
        {
          goto LABEL_64;
        }

        v219 = sub_25BAFCF80(80);
        v198 = OUTLINED_FUNCTION_3_36(v219, v220);
      }

      else
      {
        if ((OUTLINED_FUNCTION_33_15(v213, v214, v215, MEMORY[0x277D839F8]) & 1) == 0)
        {
          OUTLINED_FUNCTION_52_7();
          v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          v262 = OUTLINED_FUNCTION_18_26(v261);
          if (v262)
          {
            OUTLINED_FUNCTION_8_33();
            v265 = sub_25BBF22A4();
            OUTLINED_FUNCTION_32_15(v265, v266, MEMORY[0x277D84958], v267, v265);
            if (BYTE2(v576))
            {
              v536 = sub_25BAFCF80(80);
              OUTLINED_FUNCTION_28_17(v536, v537);
              OUTLINED_FUNCTION_165_0();

              OUTLINED_FUNCTION_11_0();
              v211 = OUTLINED_FUNCTION_108_4();
              goto LABEL_335;
            }

            LOWORD(v146) = LOWORD(v576);
            OUTLINED_FUNCTION_37_11();
          }

          else if (OUTLINED_FUNCTION_31_17(v262, v263, v264, MEMORY[0x277D839B0]))
          {
            OUTLINED_FUNCTION_40_13();
          }

          else
          {
            OUTLINED_FUNCTION_141_0();
          }

          OUTLINED_FUNCTION_44_8();
          goto LABEL_84;
        }

        v239 = OUTLINED_FUNCTION_23_22();
        sub_25BBF08EC(v239, v240);
        OUTLINED_FUNCTION_147_0();
        if ((v241 & 1) == 0)
        {
          goto LABEL_64;
        }

        v242 = sub_25BAFCF80(80);
        v198 = OUTLINED_FUNCTION_4_43(v242, v243);
      }
    }

    MEMORY[0x25F876C90](v198);
    OUTLINED_FUNCTION_11_0();
    v211 = OUTLINED_FUNCTION_108_4();
    goto LABEL_332;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v169, v170, v171, MEMORY[0x277D849A8]))
    {
LABEL_81:
      OUTLINED_FUNCTION_61_5();
      LODWORD(v169) = *(v172 - 256);
LABEL_102:
      __swift_destroy_boxed_opaque_existential_1(v580);
      LODWORD(v580[0]) = v169;
      BYTE4(v580[0]) = v0;
      v21 = &unk_27FBB5AF0;
      v22 = &unk_25BCC4130;
      goto LABEL_49;
    }

    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    v203 = OUTLINED_FUNCTION_18_26(v202);
    if (v203)
    {
      OUTLINED_FUNCTION_124_2();
      v571 = v9;
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_9_35();
      OUTLINED_FUNCTION_104_4();
      v9 = v571;
      LODWORD(v169) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
      goto LABEL_102;
    }

    v221 = OUTLINED_FUNCTION_33_15(v203, v204, v205, MEMORY[0x277D84DC8]);
    if (v221)
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBF075C();
      OUTLINED_FUNCTION_145_0();
      if ((v224 & 1) == 0)
      {
        goto LABEL_81;
      }

      v225 = sub_25BAFCF80(80);
      v227 = OUTLINED_FUNCTION_0_60(v225, v226);
      goto LABEL_331;
    }

    if (OUTLINED_FUNCTION_33_15(v221, v222, v223, MEMORY[0x277D83A90]))
    {
      OUTLINED_FUNCTION_24_15();
      sub_25BBF0614();
      OUTLINED_FUNCTION_145_0();
      if ((v244 & 1) == 0)
      {
        goto LABEL_81;
      }

      v245 = sub_25BAFCF80(80);
      v227 = OUTLINED_FUNCTION_3_36(v245, v246);
      goto LABEL_331;
    }

    OUTLINED_FUNCTION_52_7();
    if (OUTLINED_FUNCTION_33_15(v272, v273, v274, MEMORY[0x277D839F8]))
    {
      v275 = OUTLINED_FUNCTION_23_22();
      sub_25BBF0474(v275, v276);
      OUTLINED_FUNCTION_145_0();
      if (v277)
      {
        v538 = sub_25BAFCF80(80);
        v227 = OUTLINED_FUNCTION_4_43(v538, v539);
LABEL_331:
        MEMORY[0x25F876C90](v227);
        OUTLINED_FUNCTION_11_0();
        v211 = OUTLINED_FUNCTION_106_4();
        goto LABEL_332;
      }

      OUTLINED_FUNCTION_61_5();
      LODWORD(v169) = *(v278 - 256);
    }

    else
    {
      v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      v296 = OUTLINED_FUNCTION_18_26(v295);
      if (v296)
      {
        OUTLINED_FUNCTION_8_33();
        v299 = sub_25BB959AC();
        OUTLINED_FUNCTION_32_15(v299, v300, MEMORY[0x277D849A8], v301, v299);
        if (BYTE4(v576))
        {
          goto LABEL_334;
        }

        LODWORD(v169) = LODWORD(v576);
        OUTLINED_FUNCTION_37_11();
      }

      else if (OUTLINED_FUNCTION_31_17(v296, v297, v298, MEMORY[0x277D839B0]))
      {
        OUTLINED_FUNCTION_40_13();
      }

      else
      {
        OUTLINED_FUNCTION_141_0();
      }
    }

    OUTLINED_FUNCTION_44_8();
    goto LABEL_102;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v199, v200, v201, MEMORY[0x277D83B88]))
    {
      OUTLINED_FUNCTION_61_5();
LABEL_169:
      OUTLINED_FUNCTION_146_0();
      v21 = &qword_27FBB6340;
      v22 = &qword_25BCCE500;
      goto LABEL_49;
    }

    v571 = v6;
    v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26(v238))
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
LABEL_168:
      v6 = v571;
      goto LABEL_169;
    }

    OUTLINED_FUNCTION_52_7();
    v250 = OUTLINED_FUNCTION_33_15(v247, v248, v249, MEMORY[0x277D84DC8]);
    if (v250)
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_85_4();
      if (v253)
      {
        v254 = sub_25BAFCF80(80);
        v256 = OUTLINED_FUNCTION_0_60(v254, v255);
LABEL_337:
        MEMORY[0x25F876C90](v256);
        OUTLINED_FUNCTION_11_0();
        v211 = OUTLINED_FUNCTION_109_4();
        goto LABEL_333;
      }

      goto LABEL_166;
    }

    v279 = OUTLINED_FUNCTION_33_15(v250, v251, v252, MEMORY[0x277D83A90]);
    if (v279)
    {
      OUTLINED_FUNCTION_24_15();
      sub_25BBF0118();
      OUTLINED_FUNCTION_85_4();
      if (v282)
      {
        v283 = sub_25BAFCF80(80);
        v256 = OUTLINED_FUNCTION_3_36(v283, v284);
        goto LABEL_337;
      }

      goto LABEL_166;
    }

    if (OUTLINED_FUNCTION_33_15(v279, v280, v281, MEMORY[0x277D839F8]))
    {
      OUTLINED_FUNCTION_23_22();
      sub_25BBEFF60();
      OUTLINED_FUNCTION_85_4();
      if (v309)
      {
        v548 = sub_25BAFCF80(80);
        v256 = OUTLINED_FUNCTION_4_43(v548, v549);
        goto LABEL_337;
      }

LABEL_166:
      OUTLINED_FUNCTION_61_5();
LABEL_167:
      OUTLINED_FUNCTION_44_8();
      goto LABEL_168;
    }

    v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    v328 = OUTLINED_FUNCTION_18_26(v327);
    if ((v328 & 1) == 0)
    {
      if (OUTLINED_FUNCTION_31_17(v328, v329, v330, MEMORY[0x277D839B0]))
      {
        OUTLINED_FUNCTION_40_13();
      }

      else
      {
        OUTLINED_FUNCTION_212_0();
      }

      goto LABEL_167;
    }

    OUTLINED_FUNCTION_8_33();
    v331 = sub_25BBF2250();
    OUTLINED_FUNCTION_32_15(v331, v332, MEMORY[0x277D83B88], v333, v331);
    OUTLINED_FUNCTION_215_0();
    if ((v334 & 1) == 0)
    {
      OUTLINED_FUNCTION_211_0();
      OUTLINED_FUNCTION_37_11();
      goto LABEL_167;
    }

    v550 = sub_25BAFCF80(80);
    OUTLINED_FUNCTION_28_17(v550, v551);
    OUTLINED_FUNCTION_165_0();

    OUTLINED_FUNCTION_11_0();
    v211 = OUTLINED_FUNCTION_109_4();
    while (1)
    {
LABEL_333:
      MEMORY[0x25F876C90](v211, v212);
      OUTLINED_FUNCTION_162_0();
      OUTLINED_FUNCTION_122_0();
      v566 = 2740;
      OUTLINED_FUNCTION_10_5();
      sub_25BCB74CC(v540, v541, v542, v543, v544, v545, 20, 2, v566);
      __break(1u);
LABEL_334:
      v546 = sub_25BAFCF80(80);
      OUTLINED_FUNCTION_28_17(v546, v547);
      OUTLINED_FUNCTION_165_0();

      OUTLINED_FUNCTION_11_0();
      v211 = OUTLINED_FUNCTION_106_4();
LABEL_335:
      v212 = 0xE500000000000000;
    }
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v228, v229, v230, MEMORY[0x277D83E88]))
    {
      OUTLINED_FUNCTION_61_5();
LABEL_194:
      OUTLINED_FUNCTION_146_0();
      v21 = &unk_27FBB6330;
      v22 = &unk_25BCC8FA0;
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_52_7();
    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    v269 = OUTLINED_FUNCTION_18_26(v268);
    if (v269)
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      sub_25BCB6F8C();
LABEL_142:
      OUTLINED_FUNCTION_37_11();
LABEL_193:
      OUTLINED_FUNCTION_44_8();
      goto LABEL_194;
    }

    v285 = OUTLINED_FUNCTION_33_15(v269, v270, v271, MEMORY[0x277D84DC8]);
    if (v285)
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBEFE1C();
      OUTLINED_FUNCTION_85_4();
      if (v288)
      {
        v289 = sub_25BAFCF80(80);
        v291 = OUTLINED_FUNCTION_0_60(v289, v290);
LABEL_340:
        MEMORY[0x25F876C90](v291);
        OUTLINED_FUNCTION_11_0();
        v211 = OUTLINED_FUNCTION_204_0();
        goto LABEL_107;
      }
    }

    else
    {
      v310 = OUTLINED_FUNCTION_33_15(v285, v286, v287, MEMORY[0x277D83A90]);
      if (v310)
      {
        OUTLINED_FUNCTION_24_15();
        sub_25BBEFCE0();
        OUTLINED_FUNCTION_85_4();
        if (v313)
        {
          v314 = sub_25BAFCF80(80);
          v291 = OUTLINED_FUNCTION_3_36(v314, v315);
          goto LABEL_340;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_33_15(v310, v311, v312, MEMORY[0x277D839F8]) & 1) == 0)
        {
          v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          v362 = OUTLINED_FUNCTION_18_26(v361);
          if ((v362 & 1) == 0)
          {
            if (OUTLINED_FUNCTION_31_17(v362, v363, v364, MEMORY[0x277D839B0]))
            {
              OUTLINED_FUNCTION_40_13();
            }

            else
            {
              OUTLINED_FUNCTION_212_0();
            }

            goto LABEL_193;
          }

          OUTLINED_FUNCTION_8_33();
          v365 = sub_25BBF21FC();
          OUTLINED_FUNCTION_32_15(v365, v366, MEMORY[0x277D83E88], v367, v365);
          OUTLINED_FUNCTION_215_0();
          if (v368)
          {
            v554 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_28_17(v554, v555);
            OUTLINED_FUNCTION_165_0();

            OUTLINED_FUNCTION_11_0();
            v211 = OUTLINED_FUNCTION_204_0();
LABEL_328:
            v212 = 0xE400000000000000;
            goto LABEL_333;
          }

          OUTLINED_FUNCTION_211_0();
          goto LABEL_142;
        }

        OUTLINED_FUNCTION_23_22();
        sub_25BBEFBDC();
        OUTLINED_FUNCTION_85_4();
        if (v341)
        {
          v552 = sub_25BAFCF80(80);
          v291 = OUTLINED_FUNCTION_4_43(v552, v553);
          goto LABEL_340;
        }
      }
    }

    OUTLINED_FUNCTION_61_5();
    goto LABEL_193;
  }

  OUTLINED_FUNCTION_123_2();
  OUTLINED_FUNCTION_103_4();
  *(v257 - 256) = v8;
  if (swift_dynamicCastMetatype())
  {
    sub_25BAC27B0(v6, v580);
    v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v258, v259, v260, MEMORY[0x277D84A28]))
    {
LABEL_136:
      OUTLINED_FUNCTION_61_5();
LABEL_163:
      OUTLINED_FUNCTION_146_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6320, &qword_25BCC8F98);
      OUTLINED_FUNCTION_179_0();
      swift_dynamicCast();
      v306 = OUTLINED_FUNCTION_178_0();
      __swift_storeEnumTagSinglePayload(v306, v307, v308, v9);
      v12 = v566;
      v8 = v571;
      goto LABEL_50;
    }

    v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    v303 = OUTLINED_FUNCTION_18_26(v302);
    if (v303)
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      sub_25BCB6F8C();
LABEL_162:
      OUTLINED_FUNCTION_37_11();
      goto LABEL_163;
    }

    v316 = OUTLINED_FUNCTION_33_15(v303, v304, v305, MEMORY[0x277D84DC8]);
    if (v316)
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_85_4();
      if ((v319 & 1) == 0)
      {
        goto LABEL_136;
      }

      v320 = sub_25BAFCF80(80);
      v322 = OUTLINED_FUNCTION_0_60(v320, v321);
    }

    else
    {
      v342 = OUTLINED_FUNCTION_33_15(v316, v317, v318, MEMORY[0x277D83A90]);
      if (v342)
      {
        OUTLINED_FUNCTION_24_15();
        sub_25BBF0118();
        OUTLINED_FUNCTION_85_4();
        if ((v345 & 1) == 0)
        {
          goto LABEL_136;
        }

        v346 = sub_25BAFCF80(80);
        v322 = OUTLINED_FUNCTION_3_36(v346, v347);
      }

      else
      {
        if ((OUTLINED_FUNCTION_33_15(v342, v343, v344, MEMORY[0x277D839F8]) & 1) == 0)
        {
          v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          v397 = OUTLINED_FUNCTION_18_26(v396);
          if ((v397 & 1) == 0)
          {
            if (OUTLINED_FUNCTION_31_17(v397, v398, v399, MEMORY[0x277D839B0]))
            {
              OUTLINED_FUNCTION_40_13();
            }

            else
            {
              OUTLINED_FUNCTION_212_0();
            }

            goto LABEL_163;
          }

          OUTLINED_FUNCTION_8_33();
          v400 = sub_25BBF21A8();
          OUTLINED_FUNCTION_32_15(v400, v401, MEMORY[0x277D84A28], v402, v400);
          OUTLINED_FUNCTION_215_0();
          if (v403)
          {
            v556 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_28_17(v556, v557);
            OUTLINED_FUNCTION_165_0();

            OUTLINED_FUNCTION_11_0();
            v211 = OUTLINED_FUNCTION_107_4();
            goto LABEL_335;
          }

          OUTLINED_FUNCTION_211_0();
          goto LABEL_162;
        }

        OUTLINED_FUNCTION_23_22();
        sub_25BBEFF60();
        OUTLINED_FUNCTION_85_4();
        if ((v373 & 1) == 0)
        {
          goto LABEL_136;
        }

        v374 = sub_25BAFCF80(80);
        v322 = OUTLINED_FUNCTION_4_43(v374, v375);
      }
    }

    MEMORY[0x25F876C90](v322);
    OUTLINED_FUNCTION_11_0();
    v211 = OUTLINED_FUNCTION_107_4();
LABEL_332:
    v212 = 0xE500000000000000;
    goto LABEL_333;
  }

  v8 = v9;
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_136_0();
      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_31_17(v323, v324, v325, MEMORY[0x277D84C58]))
      {
LABEL_182:
        OUTLINED_FUNCTION_61_5();
        LOWORD(v323) = *(v326 - 256);
LABEL_214:
        __swift_destroy_boxed_opaque_existential_1(v580);
        LOWORD(v580[0]) = v323;
        BYTE2(v580[0]) = v0;
        v339 = &qword_27FBB6308;
        v340 = &qword_25BCC8F88;
        goto LABEL_314;
      }

      v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      v370 = OUTLINED_FUNCTION_18_26(v369);
      if (v370)
      {
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_9_35();
        LOWORD(v323) = sub_25BCB6F8C();
LABEL_213:
        OUTLINED_FUNCTION_37_11();
        goto LABEL_214;
      }

      v384 = OUTLINED_FUNCTION_33_15(v370, v371, v372, MEMORY[0x277D84DC8]);
      if (v384)
      {
        v387 = OUTLINED_FUNCTION_25_18();
        sub_25BBEF69C(v387, v388);
        OUTLINED_FUNCTION_147_0();
        if ((v389 & 1) == 0)
        {
          goto LABEL_182;
        }

        v390 = sub_25BAFCF80(80);
        v392 = OUTLINED_FUNCTION_0_60(v390, v391);
        goto LABEL_264;
      }

      v413 = OUTLINED_FUNCTION_33_15(v384, v385, v386, MEMORY[0x277D83A90]);
      if (v413)
      {
        v416 = OUTLINED_FUNCTION_24_15();
        sub_25BBEF53C(v416, v417);
        OUTLINED_FUNCTION_147_0();
        if ((v418 & 1) == 0)
        {
          goto LABEL_182;
        }

        v419 = sub_25BAFCF80(80);
        v392 = OUTLINED_FUNCTION_3_36(v419, v420);
        goto LABEL_264;
      }

      if (OUTLINED_FUNCTION_33_15(v413, v414, v415, MEMORY[0x277D839F8]))
      {
        v445 = OUTLINED_FUNCTION_23_22();
        sub_25BBEF3DC(v445, v446);
        OUTLINED_FUNCTION_147_0();
        if ((v447 & 1) == 0)
        {
          goto LABEL_182;
        }

        v448 = sub_25BAFCF80(80);
        v392 = OUTLINED_FUNCTION_4_43(v448, v449);
LABEL_264:
        MEMORY[0x25F876C90](v392);
        OUTLINED_FUNCTION_11_0();
        v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
LABEL_298:
        v212 = 0xE600000000000000;
        goto LABEL_333;
      }

      v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      v466 = OUTLINED_FUNCTION_18_26(v465);
      if ((v466 & 1) == 0)
      {
        if (OUTLINED_FUNCTION_31_17(v466, v467, v468, MEMORY[0x277D839B0]))
        {
          OUTLINED_FUNCTION_40_13();
        }

        else
        {
          OUTLINED_FUNCTION_141_0();
        }

        goto LABEL_214;
      }

      OUTLINED_FUNCTION_8_33();
      v469 = sub_25BB95A54();
      OUTLINED_FUNCTION_32_15(v469, v470, MEMORY[0x277D84C58], v471, v469);
      if ((BYTE2(v576) & 1) == 0)
      {
        LOWORD(v323) = LOWORD(v576);
        goto LABEL_213;
      }

      v560 = sub_25BAFCF80(80);
      OUTLINED_FUNCTION_28_17(v560, v561);
      OUTLINED_FUNCTION_165_0();

      OUTLINED_FUNCTION_11_0();
      v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
LABEL_347:
      v212 = 0xE600000000000000;
      goto LABEL_333;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_136_0();
      v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_31_17(v357, v358, v359, MEMORY[0x277D84CC0]))
      {
LABEL_207:
        OUTLINED_FUNCTION_61_5();
        LODWORD(v357) = *(v360 - 256);
LABEL_237:
        __swift_destroy_boxed_opaque_existential_1(v580);
        LODWORD(v580[0]) = v357;
        BYTE4(v580[0]) = v0;
        v339 = &unk_27FBB62F8;
        v340 = &unk_25BCC8F80;
        goto LABEL_314;
      }

      v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      v405 = OUTLINED_FUNCTION_18_26(v404);
      if (v405)
      {
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_9_35();
        LODWORD(v357) = sub_25BCB6F8C();
LABEL_236:
        OUTLINED_FUNCTION_37_11();
        goto LABEL_237;
      }

      v421 = OUTLINED_FUNCTION_33_15(v405, v406, v407, MEMORY[0x277D84DC8]);
      if (v421)
      {
        v424 = OUTLINED_FUNCTION_25_18();
        sub_25BBEF278(v424, v425);
        OUTLINED_FUNCTION_145_0();
        if ((v426 & 1) == 0)
        {
          goto LABEL_207;
        }

        v427 = sub_25BAFCF80(80);
        v429 = OUTLINED_FUNCTION_0_60(v427, v428);
      }

      else
      {
        v450 = OUTLINED_FUNCTION_33_15(v421, v422, v423, MEMORY[0x277D83A90]);
        if (v450)
        {
          v453 = OUTLINED_FUNCTION_24_15();
          sub_25BBEF15C(v453, v454);
          OUTLINED_FUNCTION_145_0();
          if ((v455 & 1) == 0)
          {
            goto LABEL_207;
          }

          v456 = sub_25BAFCF80(80);
          v429 = OUTLINED_FUNCTION_3_36(v456, v457);
        }

        else
        {
          if ((OUTLINED_FUNCTION_33_15(v450, v451, v452, MEMORY[0x277D839F8]) & 1) == 0)
          {
            v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
            v492 = OUTLINED_FUNCTION_18_26(v491);
            if ((v492 & 1) == 0)
            {
              if (OUTLINED_FUNCTION_31_17(v492, v493, v494, MEMORY[0x277D839B0]))
              {
                OUTLINED_FUNCTION_40_13();
              }

              else
              {
                OUTLINED_FUNCTION_141_0();
              }

              goto LABEL_237;
            }

            OUTLINED_FUNCTION_8_33();
            v495 = sub_25BBF2100();
            OUTLINED_FUNCTION_32_15(v495, v496, MEMORY[0x277D84CC0], v497, v495);
            if (BYTE4(v576))
            {
              v562 = sub_25BAFCF80(80);
              OUTLINED_FUNCTION_28_17(v562, v563);
              OUTLINED_FUNCTION_165_0();

              OUTLINED_FUNCTION_11_0();
              v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
              goto LABEL_347;
            }

            LODWORD(v357) = LODWORD(v576);
            goto LABEL_236;
          }

          v476 = OUTLINED_FUNCTION_23_22();
          sub_25BBEF000(v476, v477);
          OUTLINED_FUNCTION_145_0();
          if ((v478 & 1) == 0)
          {
            goto LABEL_207;
          }

          v479 = sub_25BAFCF80(80);
          v429 = OUTLINED_FUNCTION_4_43(v479, v480);
        }
      }

      MEMORY[0x25F876C90](v429);
      OUTLINED_FUNCTION_11_0();
      v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
      goto LABEL_298;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_136_0();
      v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_31_17(v393, v394, v395, MEMORY[0x277D84D38]))
      {
LABEL_230:
        OUTLINED_FUNCTION_61_5();
LABEL_260:
        OUTLINED_FUNCTION_146_0();
        v339 = &unk_27FBB62F0;
        v340 = &unk_25BCC8F78;
        goto LABEL_314;
      }

      v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      v442 = OUTLINED_FUNCTION_18_26(v441);
      if (v442)
      {
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_9_35();
        sub_25BCB6F8C();
LABEL_259:
        OUTLINED_FUNCTION_37_11();
        goto LABEL_260;
      }

      v458 = OUTLINED_FUNCTION_33_15(v442, v443, v444, MEMORY[0x277D84DC8]);
      if (v458)
      {
        OUTLINED_FUNCTION_25_18();
        sub_25BBEFE1C();
        OUTLINED_FUNCTION_85_4();
        if ((v461 & 1) == 0)
        {
          goto LABEL_230;
        }

        v462 = sub_25BAFCF80(80);
        v464 = OUTLINED_FUNCTION_0_60(v462, v463);
      }

      else
      {
        v481 = OUTLINED_FUNCTION_33_15(v458, v459, v460, MEMORY[0x277D83A90]);
        if (v481)
        {
          OUTLINED_FUNCTION_24_15();
          sub_25BBEFCE0();
          OUTLINED_FUNCTION_85_4();
          if ((v484 & 1) == 0)
          {
            goto LABEL_230;
          }

          v485 = sub_25BAFCF80(80);
          v464 = OUTLINED_FUNCTION_3_36(v485, v486);
        }

        else
        {
          if ((OUTLINED_FUNCTION_33_15(v481, v482, v483, MEMORY[0x277D839F8]) & 1) == 0)
          {
            v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
            v505 = OUTLINED_FUNCTION_18_26(v504);
            if ((v505 & 1) == 0)
            {
              if (OUTLINED_FUNCTION_31_17(v505, v506, v507, MEMORY[0x277D839B0]))
              {
                OUTLINED_FUNCTION_40_13();
              }

              else
              {
                OUTLINED_FUNCTION_212_0();
              }

              goto LABEL_260;
            }

            OUTLINED_FUNCTION_8_33();
            v508 = sub_25BB67604();
            OUTLINED_FUNCTION_32_15(v508, v509, MEMORY[0x277D84D38], v510, v508);
            OUTLINED_FUNCTION_215_0();
            if (v511)
            {
              v564 = sub_25BAFCF80(80);
              OUTLINED_FUNCTION_28_17(v564, v565);
              OUTLINED_FUNCTION_165_0();

              OUTLINED_FUNCTION_11_0();
              v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
              goto LABEL_347;
            }

            OUTLINED_FUNCTION_211_0();
            goto LABEL_259;
          }

          OUTLINED_FUNCTION_23_22();
          sub_25BBEFBDC();
          OUTLINED_FUNCTION_85_4();
          if ((v498 & 1) == 0)
          {
            goto LABEL_230;
          }

          v499 = sub_25BAFCF80(80);
          v464 = OUTLINED_FUNCTION_4_43(v499, v500);
        }
      }

      MEMORY[0x25F876C90](v464);
      OUTLINED_FUNCTION_11_0();
      v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
      goto LABEL_298;
    }

    if (!swift_dynamicCastMetatype())
    {
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v9);
      OUTLINED_FUNCTION_143_0();
      OUTLINED_FUNCTION_216_0();
      v12 = v566;
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_136_0();
    v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17(v430, v431, v432, MEMORY[0x277D839B0]))
    {
      v433 = v573;
LABEL_313:
      __swift_destroy_boxed_opaque_existential_1(v580);
      LOBYTE(v580[0]) = v433;
      v339 = &unk_27FBB5B00;
      v340 = &unk_25BCC4138;
      goto LABEL_314;
    }

    v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    v473 = OUTLINED_FUNCTION_18_26(v472);
    if (v473)
    {
      OUTLINED_FUNCTION_124_2();
      __swift_project_boxed_opaque_existential_1(v577, v578);
      v433 = (sub_25BCB61FC() & 1) == 0;
      __swift_destroy_boxed_opaque_existential_1(v577);
      goto LABEL_313;
    }

    v487 = OUTLINED_FUNCTION_31_17(v473, v474, v475, MEMORY[0x277D84900]);
    if (v487)
    {
      goto LABEL_290;
    }

    v501 = OUTLINED_FUNCTION_31_17(v487, v488, v489, MEMORY[0x277D84958]);
    if (v501)
    {
      goto LABEL_301;
    }

    v512 = OUTLINED_FUNCTION_31_17(v501, v502, v503, MEMORY[0x277D849A8]);
    if (v512)
    {
      goto LABEL_308;
    }

    v519 = OUTLINED_FUNCTION_31_17(v512, v513, v514, MEMORY[0x277D83B88]);
    if (!v519)
    {
      v522 = OUTLINED_FUNCTION_31_17(v519, v520, v521, MEMORY[0x277D84A28]);
      if (!v522)
      {
        v525 = OUTLINED_FUNCTION_31_17(v522, v523, v524, MEMORY[0x277D84B78]);
        if (v525)
        {
LABEL_290:
          OUTLINED_FUNCTION_70_4();
LABEL_309:
          v515 = v490 == 0;
          goto LABEL_310;
        }

        v528 = OUTLINED_FUNCTION_31_17(v525, v526, v527, MEMORY[0x277D84C58]);
        if (v528)
        {
LABEL_301:
          v490 = v573;
          goto LABEL_309;
        }

        v531 = OUTLINED_FUNCTION_31_17(v528, v529, v530, MEMORY[0x277D84CC0]);
        if (v531)
        {
LABEL_308:
          v490 = v573;
          goto LABEL_309;
        }

        if (!OUTLINED_FUNCTION_31_17(v531, v532, v533, MEMORY[0x277D84D38]))
        {
          v433 = 2;
          goto LABEL_313;
        }
      }
    }

    v515 = v573 == 0;
LABEL_310:
    v433 = !v515;
    goto LABEL_313;
  }

  OUTLINED_FUNCTION_136_0();
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  if ((OUTLINED_FUNCTION_31_17(v292, v293, v294, MEMORY[0x277D84B78]) & 1) == 0)
  {
    v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    v336 = OUTLINED_FUNCTION_18_26(v335);
    if (v336)
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      LOBYTE(v292) = sub_25BCB6F8C();
      goto LABEL_188;
    }

    v348 = OUTLINED_FUNCTION_33_15(v336, v337, v338, MEMORY[0x277D84DC8]);
    if (v348)
    {
      v351 = OUTLINED_FUNCTION_25_18();
      sub_25BBEFA7C(v351, v352);
      OUTLINED_FUNCTION_153_0();
      if ((v353 & 1) == 0)
      {
        goto LABEL_156;
      }

      v354 = sub_25BAFCF80(80);
      v356 = OUTLINED_FUNCTION_0_60(v354, v355);
    }

    else
    {
      v376 = OUTLINED_FUNCTION_33_15(v348, v349, v350, MEMORY[0x277D83A90]);
      if (v376)
      {
        v379 = OUTLINED_FUNCTION_24_15();
        sub_25BBEF91C(v379, v380);
        OUTLINED_FUNCTION_153_0();
        if ((v381 & 1) == 0)
        {
          goto LABEL_156;
        }

        v382 = sub_25BAFCF80(80);
        v356 = OUTLINED_FUNCTION_3_36(v382, v383);
      }

      else
      {
        if ((OUTLINED_FUNCTION_33_15(v376, v377, v378, MEMORY[0x277D839F8]) & 1) == 0)
        {
          v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          v435 = OUTLINED_FUNCTION_18_26(v434);
          if ((v435 & 1) == 0)
          {
            if ((OUTLINED_FUNCTION_31_17(v435, v436, v437, MEMORY[0x277D839B0]) & 1) == 0)
            {
              OUTLINED_FUNCTION_141_0();
              goto LABEL_189;
            }

            goto LABEL_156;
          }

          OUTLINED_FUNCTION_8_33();
          v438 = sub_25BBF2154();
          OUTLINED_FUNCTION_32_15(v438, v439, MEMORY[0x277D84B78], v440, v438);
          if (BYTE1(v576))
          {
            v558 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_28_17(v558, v559);
            OUTLINED_FUNCTION_165_0();

            OUTLINED_FUNCTION_11_0();
            v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
            goto LABEL_335;
          }

          LOBYTE(v292) = LOBYTE(v576);
LABEL_188:
          OUTLINED_FUNCTION_37_11();
          goto LABEL_189;
        }

        v408 = OUTLINED_FUNCTION_23_22();
        sub_25BBEF7BC(v408, v409);
        OUTLINED_FUNCTION_153_0();
        if ((v410 & 1) == 0)
        {
          goto LABEL_156;
        }

        v411 = sub_25BAFCF80(80);
        v356 = OUTLINED_FUNCTION_4_43(v411, v412);
      }
    }

    MEMORY[0x25F876C90](v356);
    OUTLINED_FUNCTION_11_0();
    v211 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
    goto LABEL_332;
  }

LABEL_156:
  OUTLINED_FUNCTION_40_13();
LABEL_189:
  __swift_destroy_boxed_opaque_existential_1(v580);
  LOBYTE(v580[0]) = v292;
  BYTE1(v580[0]) = v0;
  v339 = &unk_27FBB6310;
  v340 = &unk_25BCC8F90;
LABEL_314:
  __swift_instantiateConcreteTypeFromMangledNameV2(v339, v340);
  OUTLINED_FUNCTION_179_0();
  swift_dynamicCast();
  v516 = OUTLINED_FUNCTION_178_0();
  __swift_storeEnumTagSinglePayload(v516, v517, v518, v9);
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_216_0();
  v12 = v566;
LABEL_50:
  if (__swift_getEnumTagSinglePayload(v15, 1, v9) != 1)
  {
    v582 = v9;
    v583 = v8;
    __swift_allocate_boxed_opaque_existential_0(&v581);
    OUTLINED_FUNCTION_11_1();
    (*(v119 + 32))();
    sub_25BA97060(&v581, v584);
    v120 = v585;
    v121 = __swift_project_boxed_opaque_existential_1(v584, v585);
    sub_25BBE871C(v121, v4, v120);
    sub_25BA9C2C8(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
    v118 = *&v580[0];
    __swift_destroy_boxed_opaque_existential_1(v584);
    goto LABEL_53;
  }

LABEL_51:
  (*(v12 + 8))(v15, v10);
  v584[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB62E8, &qword_25BCC8F70);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_25BCBAE50;
  sub_25BAC27B0(v6, v117 + 32);
  sub_25BAA51C8(v4, v580);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v584, v117, v9, v8, v580, &v573);
  sub_25BA9C2C8(v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  v118 = v573;
LABEL_53:
  *v572 = v118;
  OUTLINED_FUNCTION_37_0();
}

{
  OUTLINED_FUNCTION_68_6();
  v2 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v4 = OUTLINED_FUNCTION_5(v3);
  *(v4 + 16) = xmmword_25BCBAE50;
  *(v4 + 32) = *(v0 + 16);
  v8 = v4;
  v7 = v2;
  OUTLINED_FUNCTION_24_17(v4, v5);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v8, v0, &v7, v6, &v9);
  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_66_6();
}

uint64_t Tensor.init<A>(_:scalarType:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a5@<X8>)
{
  v16[8] = MEMORY[0x277D84F90];
  sub_25BBF12DC(a3, a3);
  v9 = *(a3 - 8);
  swift_allocObject();
  v10 = sub_25BCB676C();
  (*(v9 + 16))(v11, a1, a3);
  sub_25BBE4B7C(v10, a3);
  v16[7] = v12;
  sub_25BAA51C8(a2, v16);
  v13 = sub_25BCB68CC();
  OUTLINED_FUNCTION_36_12();
  WitnessTable = swift_getWitnessTable();
  sub_25BBE86F4(v13, WitnessTable);
  Tensor.init<A>(shape:scalars:scalarType:on:)();
  sub_25BA9C2C8(a2);
  result = (*(v9 + 8))(a1, a3);
  *a5 = v16[9];
  return result;
}

uint64_t Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = *a1;
  (*(a3 + 32))(&v30, a2, a3);
  v13 = v30;
  sub_25BAA51C8(a4, v29);
  sub_25BAA51C8(v29, &v23);
  if (*(&v24 + 1))
  {
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    v28 = v26;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v22);

    sub_25BAA51C8(v22, v27);
    sub_25BAA4AF4(v22);
    if (*(&v24 + 1))
    {
      sub_25BA9C2C8(&v23);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v22[0] = v12;
  LOBYTE(v23) = v13;
  sub_25BAA4B48(v22, &v23, v27, a5, a6);
  if (v7)
  {
    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v27);
    sub_25BA9C2C8(v29);
  }

  else
  {
    v16 = v14;

    sub_25BAA51C8(v27, v22);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v17 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v19, v22, v20, v17, ObjectType, v16);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v21);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v27);
    result = sub_25BA9C2C8(v29);
    *a7 = v21;
  }

  return result;
}

void sub_25BBE871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = MEMORY[0x277D84F90];
  sub_25BBF12DC(a3, a3);
  v6 = *(a3 - 8);
  swift_allocObject();
  v7 = sub_25BCB676C();
  (*(v6 + 16))(v8, a1, a3);
  sub_25BBE4B7C(v7, a3);
  v13 = v9;
  sub_25BAA51C8(a2, v12);
  v10 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  sub_25BBE86F4(v10, WitnessTable);
  Tensor.init<A>(shape:scalars:scalarType:on:)();
}

uint64_t Tensor.init(shape:coercingScalars:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = a3;
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (v14)
  {
    v15 = (v13 + 32);
    v16 = 1;
    while (1)
    {
      v17 = *v15++;
      v18 = v16 * v17;
      if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
      {
        break;
      }

      v16 = v18;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v18 = 1;
LABEL_7:
  v6 = *(a2 + 16);
  if (v18 != v6)
  {
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
    if (!*(v13 + 16))
    {
      goto LABEL_30;
    }

    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v31)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v31)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  if (!(v18 | a3))
  {
LABEL_28:
    for (i = 167; ; i = 163)
    {
      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_228(v33, v34, v35, v36, v37, v38, v39, v40, i);
      __break(1u);

      sub_25BA9C2C8(v51);
      sub_25BA9C2C8(v53);

      __break(1u);
LABEL_30:
      v32 = 1;
LABEL_31:
      v53[0] = v32;
      v10 = MEMORY[0x277D83BF8];
      OUTLINED_FUNCTION_92();
      v41 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v41);

      v42 = OUTLINED_FUNCTION_51_1();
      MEMORY[0x25F876C90](v42);
      v53[0] = v6;
      OUTLINED_FUNCTION_92();
      v43 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v43);

      v44 = OUTLINED_FUNCTION_50_8();
      MEMORY[0x25F876C90](v44);
    }
  }

  if (!v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_18;
  }

  sub_25BAC27B0(a2 + 32, v46);
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  DynamicType = swift_getDynamicType();
  v20 = v46[4];
  __swift_destroy_boxed_opaque_existential_1(v46);
  if (v10)
  {
    v6 = a4;
  }

  else
  {
    v10 = DynamicType;
    v6 = v20;
  }

  (*(v6 + 32))(&v54, v10, v6);
  v7 = v54;
  sub_25BAA51C8(a5, v53);
  sub_25BAA51C8(v53, &v47);
  if (*(&v48 + 1))
  {
    v51[0] = v47;
    v51[1] = v48;
    v51[2] = v49;
    v52 = v50;
    sub_25BCB617C();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BCB617C();
    sub_25BAA49B8();
    sub_25BAA4A5C(v46);

    sub_25BAA51C8(v46, v51);
    sub_25BAA4AF4(v46);
    if (*(&v48 + 1))
    {
      sub_25BA9C2C8(&v47);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    goto LABEL_21;
  }

LABEL_18:
  v21 = qword_281557400;
  v46[0] = v13;
  LOBYTE(v47) = v7;
  sub_25BCB617C();
  sub_25BC72E00(v46, &v47, v51, v21, a2, v10, v6, v22);
  v24 = v23;

  sub_25BAA51C8(v51, v46);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v25 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v47) = 1;
  OUTLINED_FUNCTION_149();
  sub_25BAA5BB4(v27, v46, v28, v25, ObjectType, v24);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v29);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  sub_25BA9C2C8(a5);
  sub_25BA9C2C8(v51);
  sub_25BA9C2C8(v53);

  *a6 = v29;
  return result;
}

void Tensor.init<A>(_:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v14 = OUTLINED_FUNCTION_5(v13);
  *(v14 + 16) = xmmword_25BCBAE50;
  *(v14 + 32) = sub_25BCB6ABC();
  v16[7] = v14;
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_161_0();
  v15();
  sub_25BAA51C8(v5, v16);
  sub_25BBE86F4(v3, v1);
  OUTLINED_FUNCTION_137_0();
  Tensor.init<A>(shape:scalars:scalarType:on:)();
  sub_25BA9C2C8(v5);
  (*(v11 + 8))(v7, v3);
  *v9 = v16[8];
  OUTLINED_FUNCTION_10_16();
}

uint64_t Tensor.init(coercing:scalarType:on:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v11 = OUTLINED_FUNCTION_5(v10);
  *(v11 + 16) = xmmword_25BCBAE50;
  *(v11 + 32) = *(a1 + 16);
  v15 = v11;
  OUTLINED_FUNCTION_226(v11, v12);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v15, a1, a2, a3, v14, &v16);
  result = sub_25BA9C2C8(a4);
  *a5 = v16;
  return result;
}

uint64_t sub_25BBE8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v10 - v7;
  swift_getAssociatedTypeWitness();
  sub_25BCB6EFC();
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

void sub_25BBE9024()
{
  OUTLINED_FUNCTION_38_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v413 = sub_25BCB6E8C();
  MEMORY[0x28223BE20](v413);
  v9 = &v403 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v403 - v11;
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v403 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = &v403 - v19;
  v21 = &v427 + 8;
  v416 = v7;
  if (v7)
  {
    v21 = *(v13 + 72);
    if (!v21)
    {
LABEL_342:
      __break(1u);
LABEL_343:
      v301 = sub_25BAFCF80(80);
      v305 = OUTLINED_FUNCTION_1_46(v301, v302);
LABEL_345:
      MEMORY[0x25F876C90](v305);
      OUTLINED_FUNCTION_11_0();
      v310 = OUTLINED_FUNCTION_217();
      goto LABEL_358;
    }

    if (v5 - v416 != 0x8000000000000000 || v21 + 1 != 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  *(v21 - 32) = 0;
LABEL_10:
  v23 = 0;
  v414 = v3 + 32;
  v412 = (v18 + 8);
  v415 = (v13 + 32);
  v24 = *(v3 + 16);
  v406 = v13;
  v407 = v16;
  v408 = &v403 - v19;
  v409 = v13 + 40;
  v411 = v24;
  while (1)
  {
    v25 = 0uLL;
    v26 = v24;
    v27 = 0uLL;
    v28 = 0uLL;
    if (v23 != v24)
    {
      if (v23 >= v24)
      {
        __break(1u);
LABEL_341:
        __break(1u);
        goto LABEL_342;
      }

      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_341;
      }

      *&v425[0] = v23;
      sub_25BAC27B0(v414 + 40 * v23, v425 + 8);
      v25 = v425[0];
      v27 = v425[1];
      v28 = v425[2];
    }

    v426[0] = v25;
    v426[1] = v27;
    v427 = v28;
    if (!v28)
    {
      OUTLINED_FUNCTION_37_0();
      return;
    }

    v417 = v25;
    sub_25BA97060((v426 + 8), v423);
    OUTLINED_FUNCTION_131();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_202(v12, v425, v29))
    {
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v1);
      (*v415)(v20, v12, v1);
      v30 = v20;
      goto LABEL_50;
    }

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v1);
    v410 = *v412;
    v410(v12, v413);
    v24 = v424;
    __swift_project_boxed_opaque_existential_1(v423, v424);
    if (swift_getDynamicType() == v1)
    {
      OUTLINED_FUNCTION_131();
      v36 = v425;
      v37 = v9;
      v38 = v29;
      goto LABEL_46;
    }

    v24 = MEMORY[0x277D84DC8];
    if (!swift_dynamicCastMetatype())
    {
      break;
    }

    OUTLINED_FUNCTION_131();
    v31 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_172_0(v31, v32, v33))
    {
      OUTLINED_FUNCTION_144_0();
      v35 = *(v34 - 256);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_14_27();
        v29 = *(v43 - 256);
        v44 = OUTLINED_FUNCTION_159_0();
        OUTLINED_FUNCTION_121_2(v44, v29);
        v16 = &v403;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v45);
        OUTLINED_FUNCTION_19_20();
        v46 = OUTLINED_FUNCTION_170_0();
        v47(v46);
        OUTLINED_FUNCTION_68_4();
        OUTLINED_FUNCTION_161_0();
        sub_25BBF2A24();
        v35 = v48;
        OUTLINED_FUNCTION_81_4();
        OUTLINED_FUNCTION_130_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_14_27();
          v13 = *(v55 - 256);
          v56 = OUTLINED_FUNCTION_159_0();
          __swift_project_boxed_opaque_existential_1(v56, v13);
          OUTLINED_FUNCTION_119_3();
          v405 = v57;
          OUTLINED_FUNCTION_9();
          v16 = v58;
          MEMORY[0x28223BE20](v59);
          OUTLINED_FUNCTION_19_20();
          v60 = OUTLINED_FUNCTION_97_3();
          v61(v60);
          OUTLINED_FUNCTION_57_3();
          if (sub_25BCB6F9C() <= 64)
          {
            v404 = v9;
            v102 = OUTLINED_FUNCTION_195_0();
            OUTLINED_FUNCTION_57_3();
            v29 = sub_25BCB6F8C();
            v103 = OUTLINED_FUNCTION_63_2();
            v104(v103);
            if (v102)
            {
              v35 = v29;
            }

            else
            {
              v35 = v29;
            }

            v9 = v404;
            OUTLINED_FUNCTION_13_28();
            OUTLINED_FUNCTION_69_4();
          }

          else
          {
            sub_25BB95A00();
            sub_25BB95A54();
            OUTLINED_FUNCTION_168_0();
            OUTLINED_FUNCTION_176_0();
            LOBYTE(v29) = v62;
            sub_25BCB60DC();
            v63 = OUTLINED_FUNCTION_63_2();
            v64(v63);
            v35 = *&v421;
            OUTLINED_FUNCTION_13_28();
          }

          OUTLINED_FUNCTION_129_0();
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_130_0();
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_144_0();
          v35 = *(v74 - 256);
        }

        else
        {
          LOWORD(v35) = 0;
          LOBYTE(v29) = 1;
        }
      }
    }

    OUTLINED_FUNCTION_129_0();
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v425);
    *v425 = v35;
    BYTE2(v425[0]) = v29;
    v49 = &unk_27FBB5B08;
    v50 = &unk_25BCC4140;
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
    v51 = OUTLINED_FUNCTION_115_3();
    v54 = OUTLINED_FUNCTION_202(v51, v52, v53);
    OUTLINED_FUNCTION_94_4(v54);
LABEL_48:
    if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
    {
      goto LABEL_368;
    }

    OUTLINED_FUNCTION_13_24();
    v86();
    v30 = v16;
LABEL_50:
    (*(v13 + 40))(v416 + *(v13 + 72) * v417, v30, v1);
    __swift_destroy_boxed_opaque_existential_1(v423);
    v23 = v26;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25BAC27B0(v423, v422);
    v39 = OUTLINED_FUNCTION_113_3();
    if (OUTLINED_FUNCTION_164(v39, v40, v41))
    {
      v24 = 0;
      LOWORD(v42) = v425[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D30, &qword_25BCC2280);
      OUTLINED_FUNCTION_113_3();
      if (swift_dynamicCast())
      {
        sub_25BADF778(v425, &v418);
        v20 = v420;
        OUTLINED_FUNCTION_121_2(&v418, v419);
        v16 = &v403;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v70);
        OUTLINED_FUNCTION_1();
        v72 = OUTLINED_FUNCTION_46_10(v71);
        v73(v72);
        OUTLINED_FUNCTION_111_4();
        BFloat16.init<A>(_:)();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D28, &qword_25BCC2278);
        OUTLINED_FUNCTION_113_3();
        if (!swift_dynamicCast())
        {
          OUTLINED_FUNCTION_113_3();
          if (swift_dynamicCast())
          {
            v24 = 0;
            v42 = HIWORD(COERCE_UNSIGNED_INT(LOBYTE(v425[0])));
          }

          else
          {
            LOWORD(v42) = 0;
            v24 = 1;
          }

          goto LABEL_44;
        }

        sub_25BADF778(v425, &v418);
        v20 = v420;
        OUTLINED_FUNCTION_121_2(&v418, v419);
        v16 = &v403;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v75);
        OUTLINED_FUNCTION_1();
        v77 = OUTLINED_FUNCTION_46_10(v76);
        v78(v77);
        v79 = OUTLINED_FUNCTION_111_4();
        BFloat16.init<A>(_:)(v79, v80, v81, v82);
      }

      OUTLINED_FUNCTION_81_4();
      LOWORD(v42) = LOWORD(v421);
      __swift_destroy_boxed_opaque_existential_1(&v418);
      v24 = 0;
    }

LABEL_44:
    OUTLINED_FUNCTION_69_4();
    __swift_destroy_boxed_opaque_existential_1(v422);
    LOWORD(v425[0]) = v42;
    BYTE2(v425[0]) = v24;
    v83 = &unk_27FBB6380;
    v84 = &unk_25BCC8FC8;
    goto LABEL_45;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v65 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v65, v66, v67))
    {
      OUTLINED_FUNCTION_144_0();
      v69 = *(v68 - 256);
      OUTLINED_FUNCTION_69_4();
      goto LABEL_89;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v93)
    {
      OUTLINED_FUNCTION_14_27();
      v29 = *(v94 - 256);
      v95 = OUTLINED_FUNCTION_159_0();
      OUTLINED_FUNCTION_121_2(v95, v29);
      v16 = &v403;
      OUTLINED_FUNCTION_9();
      MEMORY[0x28223BE20](v96);
      OUTLINED_FUNCTION_19_20();
      v97 = OUTLINED_FUNCTION_170_0();
      v98(v97);
      OUTLINED_FUNCTION_68_4();
      OUTLINED_FUNCTION_161_0();
      v69 = sub_25BBF1544(v99, v100, v101);
      OUTLINED_FUNCTION_81_4();
      OUTLINED_FUNCTION_130_0();
      goto LABEL_89;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v13 = *(v105 - 256);
      v106 = OUTLINED_FUNCTION_159_0();
      __swift_project_boxed_opaque_existential_1(v106, v13);
      OUTLINED_FUNCTION_119_3();
      v405 = v107;
      OUTLINED_FUNCTION_9();
      v16 = v108;
      MEMORY[0x28223BE20](v109);
      OUTLINED_FUNCTION_19_20();
      v110 = OUTLINED_FUNCTION_97_3();
      v111(v110);
      OUTLINED_FUNCTION_57_3();
      if (sub_25BCB6F9C() <= 64)
      {
        v141 = OUTLINED_FUNCTION_195_0();
        v404 = v9;
        v142 = v141;
        OUTLINED_FUNCTION_57_3();
        v29 = sub_25BCB6F8C();
        v143 = OUTLINED_FUNCTION_63_2();
        v144(v143);
        v9 = v404;
        if (v142)
        {
          v69 = v29;
        }

        else
        {
          v69 = v29;
        }
      }

      else
      {
        sub_25BB18A50();
        sub_25BBF2100();
        OUTLINED_FUNCTION_168_0();
        OUTLINED_FUNCTION_176_0();
        LOBYTE(v29) = v112;
        sub_25BCB60DC();
        v113 = OUTLINED_FUNCTION_63_2();
        v114(v113);
        v69 = *&v421;
      }

      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_13_28();
LABEL_89:
      OUTLINED_FUNCTION_129_0();
    }

    else
    {
      OUTLINED_FUNCTION_15_28();
      swift_dynamicCast();
      OUTLINED_FUNCTION_129_0();
      if (v126)
      {
        OUTLINED_FUNCTION_144_0();
        v69 = *(v127 - 256);
      }

      else
      {
        v69 = 0.0;
        LOBYTE(v29) = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v425);
    *v425 = v69;
    BYTE4(v425[0]) = v29;
    v49 = &unk_27FBB6378;
    v50 = &unk_25BCC8FC0;
    goto LABEL_30;
  }

  v87 = MEMORY[0x277D839F8];
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v88 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v88, v89, v90))
    {
      OUTLINED_FUNCTION_144_0();
      v92 = *(v91 - 256);
      goto LABEL_108;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v29 = *(v118 - 256);
      v119 = OUTLINED_FUNCTION_159_0();
      OUTLINED_FUNCTION_121_2(v119, v29);
      v16 = &v403;
      OUTLINED_FUNCTION_9();
      MEMORY[0x28223BE20](v120);
      OUTLINED_FUNCTION_19_20();
      v121 = OUTLINED_FUNCTION_170_0();
      v122(v121);
      OUTLINED_FUNCTION_68_4();
      OUTLINED_FUNCTION_161_0();
      v92 = sub_25BBF234C(v123, v124, v125);
      OUTLINED_FUNCTION_81_4();
      OUTLINED_FUNCTION_130_0();
      goto LABEL_108;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v13 = *(v128 - 256);
      v129 = OUTLINED_FUNCTION_159_0();
      __swift_project_boxed_opaque_existential_1(v129, v13);
      OUTLINED_FUNCTION_119_3();
      v405 = v130;
      OUTLINED_FUNCTION_9();
      v16 = v131;
      MEMORY[0x28223BE20](v132);
      OUTLINED_FUNCTION_19_20();
      v133 = OUTLINED_FUNCTION_97_3();
      v134(v133);
      OUTLINED_FUNCTION_57_3();
      if (sub_25BCB6F9C() <= 64)
      {
        v157 = OUTLINED_FUNCTION_195_0();
        v404 = v9;
        v158 = v157;
        OUTLINED_FUNCTION_57_3();
        v29 = sub_25BCB6F8C();
        v159 = OUTLINED_FUNCTION_63_2();
        v160(v159);
        v9 = v404;
        if (v158)
        {
          v92 = v29;
        }

        else
        {
          v92 = v29;
        }
      }

      else
      {
        sub_25BB675B0();
        sub_25BB67604();
        OUTLINED_FUNCTION_168_0();
        OUTLINED_FUNCTION_176_0();
        LOBYTE(v29) = v87;
        sub_25BCB60DC();
        v135 = OUTLINED_FUNCTION_63_2();
        v136(v135);
        v92 = v421;
      }

      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_13_28();
LABEL_108:
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_129_0();
    }

    else
    {
      OUTLINED_FUNCTION_15_28();
      swift_dynamicCast();
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_129_0();
      if (v145)
      {
        OUTLINED_FUNCTION_144_0();
        v92 = *(v146 - 256);
      }

      else
      {
        v92 = 0.0;
        LOBYTE(v29) = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v425);
    *v425 = v92;
    BYTE8(v425[0]) = v29;
    v49 = &unk_27FBB6370;
    v50 = &unk_25BCC8FB8;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v115 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v115, v116, v117))
    {
      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      LOBYTE(v29) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_83;
    }

    v147 = OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0(v147, v148, v149))
    {
      v150 = OUTLINED_FUNCTION_22_22();
      sub_25BBF112C(v150, v151);
      OUTLINED_FUNCTION_100_3();
      if (v152)
      {
        goto LABEL_343;
      }

LABEL_96:
      OUTLINED_FUNCTION_34_13();
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v161 = OUTLINED_FUNCTION_21_23();
      sub_25BBF0F78(v161, v162);
      OUTLINED_FUNCTION_155_0();
      if (v163)
      {
        v303 = sub_25BAFCF80(80);
        v305 = OUTLINED_FUNCTION_5_41(v303, v304);
        goto LABEL_345;
      }

LABEL_66:
      OUTLINED_FUNCTION_34_13();
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v174 = OUTLINED_FUNCTION_20_21();
      sub_25BBF0DC4(v174, v175);
      OUTLINED_FUNCTION_155_0();
      if (v176)
      {
        v308 = sub_25BAFCF80(80);
        v305 = OUTLINED_FUNCTION_6_40(v308, v309);
        goto LABEL_345;
      }

      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_7_34();
      sub_25BBF22F8();
      v188 = OUTLINED_FUNCTION_39_13();
      OUTLINED_FUNCTION_90_2(v188, v189, v190, v191, v192);
      if ((BYTE1(v421) & 1) == 0)
      {
        LOBYTE(v29) = LOBYTE(v421);
        OUTLINED_FUNCTION_41_12();
        OUTLINED_FUNCTION_68_4();
LABEL_83:
        OUTLINED_FUNCTION_69_4();
        goto LABEL_84;
      }

      v316 = sub_25BAFCF80(80);
      OUTLINED_FUNCTION_27_20(v316, v317);
      OUTLINED_FUNCTION_166_0();

      OUTLINED_FUNCTION_11_0();
      v310 = OUTLINED_FUNCTION_217();
LABEL_360:
      v339 = 0xE400000000000000;
      goto LABEL_380;
    }

    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v197)
    {
      goto LABEL_96;
    }

    OUTLINED_FUNCTION_142_0();
LABEL_84:
    __swift_destroy_boxed_opaque_existential_1(v425);
    LOBYTE(v425[0]) = v29;
    BYTE1(v425[0]) = v24;
    v83 = &unk_27FBB6360;
    v84 = &unk_25BCC8FB0;
LABEL_45:
    __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
    v37 = OUTLINED_FUNCTION_115_3();
LABEL_46:
    v85 = OUTLINED_FUNCTION_202(v37, v36, v38);
    OUTLINED_FUNCTION_94_4(v85);
LABEL_47:
    OUTLINED_FUNCTION_129_0();
    goto LABEL_48;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v137 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v137, v138, v139))
    {
      goto LABEL_80;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      LOWORD(v29) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_102;
    }

    v164 = OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0(v164, v165, v166))
    {
      v167 = OUTLINED_FUNCTION_22_22();
      sub_25BBF0C54(v167, v168);
      OUTLINED_FUNCTION_100_3();
      if ((v169 & 1) == 0)
      {
        OUTLINED_FUNCTION_62_4();
        LOWORD(v29) = *(v170 - 256);
        goto LABEL_103;
      }

      v306 = sub_25BAFCF80(80);
      v313 = OUTLINED_FUNCTION_1_46(v306, v307);
LABEL_348:
      MEMORY[0x25F876C90](v313);
      OUTLINED_FUNCTION_11_0();
      v310 = OUTLINED_FUNCTION_108_4();
LABEL_366:
      v339 = 0xE500000000000000;
      goto LABEL_380;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v177 = OUTLINED_FUNCTION_21_23();
      sub_25BBF0AA0(v177, v178);
      OUTLINED_FUNCTION_152_0();
      if (v179)
      {
        v311 = sub_25BAFCF80(80);
        v313 = OUTLINED_FUNCTION_5_41(v311, v312);
        goto LABEL_348;
      }

      goto LABEL_80;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v193 = OUTLINED_FUNCTION_20_21();
      sub_25BBF08EC(v193, v194);
      OUTLINED_FUNCTION_152_0();
      if (v195)
      {
        v318 = sub_25BAFCF80(80);
        v313 = OUTLINED_FUNCTION_6_40(v318, v319);
        goto LABEL_348;
      }

LABEL_80:
      OUTLINED_FUNCTION_62_4();
      LOWORD(v29) = *(v140 - 256);
      goto LABEL_102;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_15_28();
      swift_dynamicCast();
      OUTLINED_FUNCTION_69_4();
      if (v215)
      {
        OUTLINED_FUNCTION_34_13();
      }

      else
      {
        OUTLINED_FUNCTION_142_0();
      }

      goto LABEL_103;
    }

    OUTLINED_FUNCTION_7_34();
    sub_25BBF22A4();
    v205 = OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_90_2(v205, v206, v207, v208, v209);
    if ((BYTE2(v421) & 1) == 0)
    {
      LOWORD(v29) = LOWORD(v421);
      OUTLINED_FUNCTION_41_12();
      OUTLINED_FUNCTION_68_4();
LABEL_102:
      OUTLINED_FUNCTION_69_4();
LABEL_103:
      __swift_destroy_boxed_opaque_existential_1(v425);
      LOWORD(v425[0]) = v29;
      BYTE2(v425[0]) = v24;
      v83 = &unk_27FBB6350;
      v84 = &unk_25BCC8FA8;
      goto LABEL_45;
    }

    v325 = sub_25BAFCF80(80);
    OUTLINED_FUNCTION_27_20(v325, v326);
    OUTLINED_FUNCTION_166_0();

    OUTLINED_FUNCTION_11_0();
    v310 = OUTLINED_FUNCTION_108_4();
LABEL_370:
    v339 = 0xE500000000000000;
    goto LABEL_380;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v153 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v153, v154, v155))
    {
      goto LABEL_99;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      LODWORD(v29) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_122;
    }

    v180 = OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0(v180, v181, v182))
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBF075C();
      OUTLINED_FUNCTION_100_3();
      if ((v183 & 1) == 0)
      {
        OUTLINED_FUNCTION_62_4();
        LODWORD(v29) = *(v184 - 256);
        goto LABEL_123;
      }

      v314 = sub_25BAFCF80(80);
      v322 = OUTLINED_FUNCTION_1_46(v314, v315);
LABEL_351:
      MEMORY[0x25F876C90](v322);
      OUTLINED_FUNCTION_11_0();
      v310 = OUTLINED_FUNCTION_106_4();
      goto LABEL_366;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBF0614();
      OUTLINED_FUNCTION_151_0();
      if (v196)
      {
        v320 = sub_25BAFCF80(80);
        v322 = OUTLINED_FUNCTION_5_41(v320, v321);
        goto LABEL_351;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BB959AC();
          v223 = OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_90_2(v223, v224, v225, v226, v227);
          if (BYTE4(v421))
          {
            v335 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v335, v336);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v310 = OUTLINED_FUNCTION_106_4();
            goto LABEL_370;
          }

          LODWORD(v29) = LODWORD(v421);
          OUTLINED_FUNCTION_41_12();
          OUTLINED_FUNCTION_68_4();
LABEL_122:
          OUTLINED_FUNCTION_69_4();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          swift_dynamicCast();
          OUTLINED_FUNCTION_69_4();
          if (v231)
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_142_0();
          }
        }

LABEL_123:
        __swift_destroy_boxed_opaque_existential_1(v425);
        LODWORD(v425[0]) = v29;
        BYTE4(v425[0]) = v24;
        v83 = &unk_27FBB5AF0;
        v84 = &unk_25BCC4130;
        goto LABEL_45;
      }

      v211 = OUTLINED_FUNCTION_20_21();
      sub_25BBF0474(v211, v212);
      OUTLINED_FUNCTION_151_0();
      if (v213)
      {
        v327 = sub_25BAFCF80(80);
        v322 = OUTLINED_FUNCTION_6_40(v327, v328);
        goto LABEL_351;
      }
    }

LABEL_99:
    OUTLINED_FUNCTION_62_4();
    LODWORD(v29) = *(v156 - 256);
    goto LABEL_122;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v171 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v171, v172, v173))
    {
      goto LABEL_119;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_142;
    }

    v198 = OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0(v198, v199, v200))
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_70_4();
      if ((v201 & 1) == 0)
      {
        OUTLINED_FUNCTION_49_11();
        goto LABEL_143;
      }

      v323 = sub_25BAFCF80(80);
      v331 = OUTLINED_FUNCTION_1_46(v323, v324);
LABEL_353:
      MEMORY[0x25F876C90](v331);
      OUTLINED_FUNCTION_11_0();
      v310 = OUTLINED_FUNCTION_109_4();
      goto LABEL_380;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBF0118();
      OUTLINED_FUNCTION_70_4();
      if (v214)
      {
        v329 = sub_25BAFCF80(80);
        v331 = OUTLINED_FUNCTION_5_41(v329, v330);
        goto LABEL_353;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BBF2250();
          v240 = OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_90_2(v240, v241, v242, v243, v244);
          OUTLINED_FUNCTION_210_0();
          if (v245)
          {
            v344 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v344, v345);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v310 = OUTLINED_FUNCTION_109_4();
            goto LABEL_380;
          }

          OUTLINED_FUNCTION_209_0();
          OUTLINED_FUNCTION_41_12();
          OUTLINED_FUNCTION_68_4();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_213_0();
          }
        }

LABEL_142:
        OUTLINED_FUNCTION_69_4();
LABEL_143:
        OUTLINED_FUNCTION_160_0();
        v83 = &qword_27FBB6340;
        v84 = &qword_25BCCE500;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_20_21();
      sub_25BBEFF60();
      OUTLINED_FUNCTION_70_4();
      if (v229)
      {
        v337 = sub_25BAFCF80(80);
        v331 = OUTLINED_FUNCTION_6_40(v337, v338);
        goto LABEL_353;
      }
    }

LABEL_119:
    OUTLINED_FUNCTION_49_11();
    goto LABEL_142;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v185 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v185, v186, v187))
    {
      OUTLINED_FUNCTION_49_11();
      goto LABEL_136;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v210)
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_207;
    }

    v216 = OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0(v216, v217, v218))
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBEFE1C();
      OUTLINED_FUNCTION_70_4();
      if (v219)
      {
        v332 = sub_25BAFCF80(80);
        v334 = OUTLINED_FUNCTION_1_46(v332, v333);
        goto LABEL_357;
      }

LABEL_206:
      OUTLINED_FUNCTION_49_11();
      goto LABEL_207;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBEFCE0();
      OUTLINED_FUNCTION_70_4();
      if ((v230 & 1) == 0)
      {
        goto LABEL_206;
      }

      v340 = sub_25BAFCF80(80);
      v334 = OUTLINED_FUNCTION_5_41(v340, v341);
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BBF21FC();
          OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_92_5();
          sub_25BCB744C();
          OUTLINED_FUNCTION_210_0();
          if (v255)
          {
            v354 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v354, v355);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v310 = OUTLINED_FUNCTION_204_0();
            goto LABEL_360;
          }

          OUTLINED_FUNCTION_209_0();
          OUTLINED_FUNCTION_41_12();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_213_0();
          }
        }

        OUTLINED_FUNCTION_13_28();
LABEL_136:
        OUTLINED_FUNCTION_69_4();
LABEL_207:
        OUTLINED_FUNCTION_160_0();
        v83 = &unk_27FBB6330;
        v84 = &unk_25BCC8FA0;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_20_21();
      sub_25BBEFBDC();
      OUTLINED_FUNCTION_70_4();
      if ((v246 & 1) == 0)
      {
        goto LABEL_206;
      }

      v346 = sub_25BAFCF80(80);
      v334 = OUTLINED_FUNCTION_6_40(v346, v347);
    }

LABEL_357:
    MEMORY[0x25F876C90](v334);
    OUTLINED_FUNCTION_11_0();
    v310 = OUTLINED_FUNCTION_204_0();
LABEL_358:
    v339 = 0xE400000000000000;
    goto LABEL_380;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v202 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v202, v203, v204))
    {
      OUTLINED_FUNCTION_49_11();
      goto LABEL_158;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v228)
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_195;
    }

    v232 = OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0(v232, v233, v234))
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_70_4();
      if ((v235 & 1) == 0)
      {
        OUTLINED_FUNCTION_49_11();
        goto LABEL_195;
      }

      v342 = sub_25BAFCF80(80);
      v350 = OUTLINED_FUNCTION_1_46(v342, v343);
LABEL_362:
      MEMORY[0x25F876C90](v350);
      OUTLINED_FUNCTION_11_0();
      v310 = OUTLINED_FUNCTION_107_4();
      goto LABEL_366;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBF0118();
      OUTLINED_FUNCTION_70_4();
      if (v247)
      {
        v348 = sub_25BAFCF80(80);
        v350 = OUTLINED_FUNCTION_5_41(v348, v349);
        goto LABEL_362;
      }

LABEL_228:
      OUTLINED_FUNCTION_49_11();
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_20_21();
        sub_25BBEFF60();
        OUTLINED_FUNCTION_70_4();
        if (v256)
        {
          v356 = sub_25BAFCF80(80);
          v350 = OUTLINED_FUNCTION_6_40(v356, v357);
          goto LABEL_362;
        }

        goto LABEL_228;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_7_34();
        sub_25BBF21A8();
        OUTLINED_FUNCTION_39_13();
        OUTLINED_FUNCTION_92_5();
        sub_25BCB744C();
        OUTLINED_FUNCTION_210_0();
        if (v263)
        {
          v363 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_27_20(v363, v364);
          OUTLINED_FUNCTION_166_0();

          OUTLINED_FUNCTION_11_0();
          v310 = OUTLINED_FUNCTION_107_4();
          goto LABEL_370;
        }

        OUTLINED_FUNCTION_209_0();
        OUTLINED_FUNCTION_41_12();
      }

      else
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_34_13();
        }

        else
        {
          OUTLINED_FUNCTION_213_0();
        }
      }
    }

    OUTLINED_FUNCTION_13_28();
LABEL_158:
    OUTLINED_FUNCTION_69_4();
LABEL_195:
    OUTLINED_FUNCTION_160_0();
    v83 = &qword_27FBB6320;
    v84 = &qword_25BCC8F98;
    goto LABEL_45;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v220 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164(v220, v221, v222))
    {
      OUTLINED_FUNCTION_34_13();
LABEL_254:
      OUTLINED_FUNCTION_69_4();
      __swift_destroy_boxed_opaque_existential_1(v425);
      LOBYTE(v425[0]) = v29;
      BYTE1(v425[0]) = v24;
      v83 = &unk_27FBB6310;
      v84 = &unk_25BCC8F90;
      goto LABEL_45;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      LOBYTE(v29) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
LABEL_253:
      OUTLINED_FUNCTION_68_4();
      goto LABEL_254;
    }

    v248 = OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0(v248, v249, v250))
    {
      v251 = OUTLINED_FUNCTION_22_22();
      sub_25BBEFA7C(v251, v252);
      OUTLINED_FUNCTION_155_0();
      if (v253)
      {
        v351 = sub_25BAFCF80(80);
        v353 = OUTLINED_FUNCTION_1_46(v351, v352);
LABEL_365:
        MEMORY[0x25F876C90](v353);
        OUTLINED_FUNCTION_11_0();
        v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
        goto LABEL_366;
      }

      goto LABEL_251;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v257 = OUTLINED_FUNCTION_21_23();
      sub_25BBEF91C(v257, v258);
      OUTLINED_FUNCTION_155_0();
      if (v259)
      {
        v358 = sub_25BAFCF80(80);
        v353 = OUTLINED_FUNCTION_5_41(v358, v359);
        goto LABEL_365;
      }

LABEL_251:
      OUTLINED_FUNCTION_34_13();
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if (swift_dynamicCast())
      {
        v266 = OUTLINED_FUNCTION_20_21();
        sub_25BBEF7BC(v266, v267);
        OUTLINED_FUNCTION_155_0();
        if (v268)
        {
          v365 = sub_25BAFCF80(80);
          v353 = OUTLINED_FUNCTION_6_40(v365, v366);
          goto LABEL_365;
        }

        goto LABEL_251;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_7_34();
        sub_25BBF2154();
        OUTLINED_FUNCTION_39_13();
        OUTLINED_FUNCTION_92_5();
        sub_25BCB744C();
        if (BYTE1(v421))
        {
          v382 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_27_20(v382, v383);
          OUTLINED_FUNCTION_166_0();

          OUTLINED_FUNCTION_11_0();
          v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
          goto LABEL_370;
        }

        LOBYTE(v29) = LOBYTE(v421);
        OUTLINED_FUNCTION_41_12();
      }

      else
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          goto LABEL_251;
        }

        OUTLINED_FUNCTION_142_0();
      }
    }

    v13 = v406;
    OUTLINED_FUNCTION_81_4();
    goto LABEL_253;
  }

  v24 = MEMORY[0x277D84C58];
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    v236 = OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_172_0(v236, v237, v238))
    {
      OUTLINED_FUNCTION_62_4();
      LOWORD(v29) = *(v239 - 256);
      goto LABEL_279;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      LOWORD(v29) = sub_25BCB6F8C();
      goto LABEL_225;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v260 = OUTLINED_FUNCTION_22_22();
      sub_25BBEF69C(v260, v261);
      OUTLINED_FUNCTION_152_0();
      if (v262)
      {
        v360 = sub_25BAFCF80(80);
        v362 = OUTLINED_FUNCTION_1_46(v360, v361);
        goto LABEL_372;
      }

LABEL_277:
      OUTLINED_FUNCTION_62_4();
      LOWORD(v29) = *(v279 - 256);
LABEL_278:
      OUTLINED_FUNCTION_13_28();
LABEL_279:
      __swift_destroy_boxed_opaque_existential_1(v425);
      LOWORD(v425[0]) = v29;
      BYTE2(v425[0]) = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6308, &qword_25BCC8F88);
      v280 = OUTLINED_FUNCTION_115_3();
      v283 = OUTLINED_FUNCTION_202(v280, v281, v282);
      OUTLINED_FUNCTION_94_4(v283);
LABEL_323:
      OUTLINED_FUNCTION_69_4();
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v269 = OUTLINED_FUNCTION_21_23();
      sub_25BBEF53C(v269, v270);
      OUTLINED_FUNCTION_152_0();
      if ((v271 & 1) == 0)
      {
        goto LABEL_277;
      }

      v367 = sub_25BAFCF80(80);
      v362 = OUTLINED_FUNCTION_5_41(v367, v368);
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BB95A54();
          OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_92_5();
          sub_25BCB744C();
          if (BYTE2(v421))
          {
            v391 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v391, v392);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
            goto LABEL_379;
          }

          LOWORD(v29) = LOWORD(v421);
LABEL_225:
          OUTLINED_FUNCTION_41_12();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_142_0();
          }
        }

        goto LABEL_278;
      }

      v276 = OUTLINED_FUNCTION_20_21();
      sub_25BBEF3DC(v276, v277);
      OUTLINED_FUNCTION_152_0();
      if ((v278 & 1) == 0)
      {
        goto LABEL_277;
      }

      v384 = sub_25BAFCF80(80);
      v362 = OUTLINED_FUNCTION_6_40(v384, v385);
    }

LABEL_372:
    MEMORY[0x25F876C90](v362);
    OUTLINED_FUNCTION_11_0();
    v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
LABEL_377:
    v339 = 0xE600000000000000;
    goto LABEL_380;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_219;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      LODWORD(v29) = sub_25BCB6F8C();
      goto LABEL_247;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v272 = OUTLINED_FUNCTION_22_22();
      sub_25BBEF278(v272, v273);
      OUTLINED_FUNCTION_151_0();
      if (v274)
      {
        v369 = sub_25BAFCF80(80);
        v371 = OUTLINED_FUNCTION_1_46(v369, v370);
LABEL_374:
        MEMORY[0x25F876C90](v371);
        OUTLINED_FUNCTION_11_0();
        v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
        goto LABEL_377;
      }

      goto LABEL_219;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v284 = OUTLINED_FUNCTION_21_23();
      sub_25BBEF15C(v284, v285);
      OUTLINED_FUNCTION_151_0();
      if (v286)
      {
        v386 = sub_25BAFCF80(80);
        v371 = OUTLINED_FUNCTION_5_41(v386, v387);
        goto LABEL_374;
      }

LABEL_219:
      OUTLINED_FUNCTION_62_4();
      LODWORD(v29) = *(v254 - 256);
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if (swift_dynamicCast())
      {
        v289 = OUTLINED_FUNCTION_20_21();
        sub_25BBEF000(v289, v290);
        OUTLINED_FUNCTION_151_0();
        if (v291)
        {
          v393 = sub_25BAFCF80(80);
          v371 = OUTLINED_FUNCTION_6_40(v393, v394);
          goto LABEL_374;
        }

        goto LABEL_219;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_7_34();
        sub_25BBF2100();
        OUTLINED_FUNCTION_39_13();
        OUTLINED_FUNCTION_92_5();
        sub_25BCB744C();
        if (BYTE4(v421))
        {
          v397 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_27_20(v397, v398);
          OUTLINED_FUNCTION_166_0();

          OUTLINED_FUNCTION_11_0();
          v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
          goto LABEL_379;
        }

        LODWORD(v29) = LODWORD(v421);
LABEL_247:
        OUTLINED_FUNCTION_41_12();
      }

      else
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_34_13();
        }

        else
        {
          OUTLINED_FUNCTION_142_0();
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v425);
    LODWORD(v425[0]) = v29;
    BYTE4(v425[0]) = v24;
    v264 = &unk_27FBB62F8;
    v265 = &unk_25BCC8F80;
LABEL_322:
    __swift_instantiateConcreteTypeFromMangledNameV2(v264, v265);
    v296 = OUTLINED_FUNCTION_115_3();
    v299 = OUTLINED_FUNCTION_202(v296, v297, v298);
    OUTLINED_FUNCTION_94_4(v299);
    OUTLINED_FUNCTION_13_28();
    goto LABEL_323;
  }

  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v1);
LABEL_368:
      v410(v9, v413);
      *&v425[0] = sub_25BCB786C();
      *(&v425[0] + 1) = v372;
      MEMORY[0x25F876C90](0xD000000000000016, 0x800000025BCE1250);
      __swift_project_boxed_opaque_existential_1(v423, v424);
      swift_getDynamicType();
      v373 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v373);

      MEMORY[0x25F876C90](540877088, 0xE400000000000000);
      v374 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v374);

      MEMORY[0x25F876C90](0, 0xE000000000000000);
      OUTLINED_FUNCTION_122_0();
      v403 = 188;
      OUTLINED_FUNCTION_10_5();
      v381 = 117;
      goto LABEL_381;
    }

    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      v275 = v418;
LABEL_321:
      __swift_destroy_boxed_opaque_existential_1(v425);
      LOBYTE(v425[0]) = v275;
      v264 = &unk_27FBB5B00;
      v265 = &unk_25BCC4138;
      goto LABEL_322;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v24 = *(v287 - 256);
      __swift_project_boxed_opaque_existential_1(v422, v24);
      v275 = (sub_25BCB61FC() & 1) == 0;
      __swift_destroy_boxed_opaque_existential_1(v422);
      goto LABEL_321;
    }

    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_298;
    }

    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_308;
    }

    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_316;
    }

    OUTLINED_FUNCTION_15_28();
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_15_28();
      if (!swift_dynamicCast())
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
LABEL_298:
          v292 = v418;
LABEL_317:
          v295 = v292 == 0;
          goto LABEL_318;
        }

        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
LABEL_308:
          v292 = v418;
          goto LABEL_317;
        }

        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
LABEL_316:
          v292 = v418;
          goto LABEL_317;
        }

        OUTLINED_FUNCTION_15_28();
        if (!swift_dynamicCast())
        {
          v275 = 2;
          goto LABEL_321;
        }
      }
    }

    v295 = v418 == 0;
LABEL_318:
    v275 = !v295;
    goto LABEL_321;
  }

  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_15_28();
  if (swift_dynamicCast())
  {
    goto LABEL_241;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
  OUTLINED_FUNCTION_15_28();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_48();
    sub_25BCB6F8C();
    goto LABEL_273;
  }

  OUTLINED_FUNCTION_26_18();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_22_22();
    sub_25BBEFE1C();
    OUTLINED_FUNCTION_70_4();
    if (v288)
    {
      v388 = sub_25BAFCF80(80);
      v390 = OUTLINED_FUNCTION_1_46(v388, v389);
LABEL_376:
      MEMORY[0x25F876C90](v390);
      OUTLINED_FUNCTION_11_0();
      v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
      goto LABEL_377;
    }

    goto LABEL_241;
  }

  OUTLINED_FUNCTION_26_18();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_21_23();
    sub_25BBEFCE0();
    OUTLINED_FUNCTION_70_4();
    if (v293)
    {
      v395 = sub_25BAFCF80(80);
      v390 = OUTLINED_FUNCTION_5_41(v395, v396);
      goto LABEL_376;
    }

LABEL_241:
    OUTLINED_FUNCTION_49_11();
LABEL_274:
    OUTLINED_FUNCTION_160_0();
    v264 = &unk_27FBB62F0;
    v265 = &unk_25BCC8F78;
    goto LABEL_322;
  }

  OUTLINED_FUNCTION_26_18();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_20_21();
    sub_25BBEFBDC();
    OUTLINED_FUNCTION_70_4();
    if (v294)
    {
      v399 = sub_25BAFCF80(80);
      v390 = OUTLINED_FUNCTION_6_40(v399, v400);
      goto LABEL_376;
    }

    goto LABEL_241;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
  OUTLINED_FUNCTION_15_28();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_34_13();
    }

    else
    {
      OUTLINED_FUNCTION_213_0();
    }

    goto LABEL_274;
  }

  OUTLINED_FUNCTION_7_34();
  sub_25BB67604();
  OUTLINED_FUNCTION_39_13();
  OUTLINED_FUNCTION_92_5();
  sub_25BCB744C();
  OUTLINED_FUNCTION_210_0();
  if ((v300 & 1) == 0)
  {
    OUTLINED_FUNCTION_209_0();
LABEL_273:
    OUTLINED_FUNCTION_41_12();
    goto LABEL_274;
  }

  v401 = sub_25BAFCF80(80);
  OUTLINED_FUNCTION_27_20(v401, v402);
  OUTLINED_FUNCTION_166_0();

  OUTLINED_FUNCTION_11_0();
  v310 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
LABEL_379:
  v339 = 0xE600000000000000;
LABEL_380:
  MEMORY[0x25F876C90](v310, v339);
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_122_0();
  v403 = 2740;
  OUTLINED_FUNCTION_10_5();
  v381 = 20;
LABEL_381:
  sub_25BCB74CC(v375, v376, v377, v378, v379, v380, v381, 2, v403);
  __break(1u);
}

uint64_t Tensor.init(shape:data:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>, uint64_t a6@<X1>, unint64_t a7@<X2>)
{
  v16 = *a1;
  v11 = (*(a3 + 32))(&v15, a2, a3);
  OUTLINED_FUNCTION_226(v11, v12);
  Tensor.init(shape:data:scalarType:on:)(&v16, a6, a7, &v15, v14, &v17);
  result = sub_25BA9C2C8(a4);
  *a5 = v17;
  return result;
}

void Tensor.init(bytesNoCopy:shape:scalarType:deallocator:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v50 = v12;
  v13 = sub_25BCB59BC();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v46 = v17 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  v23 = *v7;
  (*(v3 + 32))(&v54, v5, v3, v20);
  v24 = v54;
  v47 = v15;
  v48 = v22;
  v25 = *(v15 + 16);
  v49 = v1;
  v25(v22, v1, v13);
  v26 = v9 - v11;
  if (!v11)
  {
    v26 = 0;
  }

  v27 = *(v23 + 16);
  if (v27)
  {
    v28 = (v23 + 32);
    v29 = 1;
    while (1)
    {
      v30 = *v28++;
      v31 = v29 * v30;
      if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
      {
        break;
      }

      v29 = v31;
      if (!--v27)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = 1;
LABEL_9:
  if ((v24 - 1) > 0xA)
  {
    v32 = 1;
  }

  else
  {
    v32 = qword_25BCC8FD8[(v24 - 1)];
  }

  if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
  {
    goto LABEL_16;
  }

  if (v26 >= v31 * v32)
  {
    v51[0] = v23;
    v53[0] = v24;
    v33 = v46;
    v34 = v48;
    v25(v46, v48, v13);
    type metadata accessor for NativeTensorStorage(0);
    swift_allocObject();
    sub_25BA9F928(v51, v53, v11, v9, v32, v33);
    type metadata accessor for TensorRepresentation();
    memset(v51, 0, sizeof(v51));
    v52 = 0;
    OUTLINED_FUNCTION_93();
    v35 = swift_allocObject();

    v53[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BBF1DE0(v36, v51, v37, v35);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v38);
    sub_25BAA6EB0();

    v39 = *(v47 + 8);
    v39(v49, v13);
    v39(v34, v13);
    *v50 = v38;
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_17:
  OUTLINED_FUNCTION_122_0();
  v45 = 557;
  OUTLINED_FUNCTION_10_5();
  sub_25BCB74CC(v40, v41, v42, 0xD00000000000006CLL, v43, v44, 107, 2, v45);
  __break(1u);
}

{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25BCB59BC();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = *v5;
  v20 = *v3;
  v21 = v7 - v9;
  if (!v9)
  {
    v21 = 0;
  }

  v22 = *(v19 + 16);
  if (v22)
  {
    v23 = (v19 + 32);
    v24 = 1;
    while (1)
    {
      v25 = *v23++;
      v26 = v24 * v25;
      if ((v24 * v25) >> 64 != (v24 * v25) >> 63)
      {
        break;
      }

      v24 = v26;
      if (!--v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = 1;
LABEL_9:
  if ((v20 - 1) > 0xA)
  {
    v27 = 1;
  }

  else
  {
    v27 = qword_25BCCB678[(v20 - 1)];
  }

  if ((v26 * v27) >> 64 != (v26 * v27) >> 63)
  {
    goto LABEL_16;
  }

  if (v21 >= v26 * v27)
  {
    v39[0] = *v5;
    v41[0] = v20;
    (*(v14 + 16))(v18, v1, v12);
    type metadata accessor for NativeTensorStorage(0);
    swift_allocObject();
    sub_25BA9F928(v39, v41, v9, v7, v27, v18);
    type metadata accessor for TensorRepresentation();
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    OUTLINED_FUNCTION_93();
    v28 = swift_allocObject();

    v41[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BBF1DE0(v29, v39, v30, v28);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v31);
    sub_25BAA6EB0();

    (*(v14 + 8))(v1, v12);
    *v11 = v31;
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_17:
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_52_9(v32, v33, v34, 108, v35, v36, v37, v38, 557);
  __break(1u);
}

uint64_t Tensor.init(contentsOfFile:shape:scalarType:on:)@<X0>(uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = *a3;
  sub_25BCB591C();

  sub_25BAA51C8(a5, v27);
  v12 = sub_25BCB59AC();
  if (v6)
  {

    sub_25BA9C2C8(a5);
    sub_25BA9C2C8(v27);
    v14 = OUTLINED_FUNCTION_207_0();
    return v15(v14);
  }

  else
  {
    v17 = v12;
    v18 = v13;
    sub_25BAA51C8(v27, v26);
    v25 = v11;
    OUTLINED_FUNCTION_126_0();
    v19(&v24, a4);
    sub_25BAA51C8(v26, v23);
    Tensor.init(shape:data:scalarType:on:)(&v25, v17, v18, &v24, v23, &v28);
    sub_25BA9C2C8(a5);
    sub_25BA9C2C8(v26);
    sub_25BA9C2C8(v27);
    v20 = OUTLINED_FUNCTION_207_0();
    result = v21(v20);
    *a6 = v28;
  }

  return result;
}

uint64_t Tensor.init(contentsOf:shape:scalarType:on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a2;
  v13 = sub_25BCB59AC();
  if (v6)
  {

    sub_25BA9C2C8(a5);
    sub_25BCB598C();
    OUTLINED_FUNCTION_9_3();
    return (*(v15 + 8))(a1);
  }

  else
  {
    v17 = v13;
    v18 = v14;
    sub_25BAA51C8(a5, v23);
    v22 = v12;
    (*(a4 + 32))(&v21, a3, a4);
    sub_25BAA51C8(v23, v20);
    Tensor.init(shape:data:scalarType:on:)(&v22, v17, v18, &v21, v20, &v24);
    sub_25BA9C2C8(a5);
    sub_25BCB598C();
    OUTLINED_FUNCTION_9_3();
    (*(v19 + 8))(a1);
    result = sub_25BA9C2C8(v23);
    *a6 = v24;
  }

  return result;
}

uint64_t sub_25BBEBD84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v12 = *a1;
  OUTLINED_FUNCTION_126_0();
  v8 = v7(&v11, a2);
  OUTLINED_FUNCTION_226(v8, v9);
  Tensor.init(zeros:scalarType:on:)();
  result = sub_25BA9C2C8(a3);
  *a4 = v13;
  return result;
}

uint64_t Tensor.init(ones:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_25BBEBF70(a1, a2, a3, a4, sub_25BBF30CC, a5);
}

{
  return sub_25BBEBF70(a1, a2, a3, a4, sub_25BBF30B0, a5);
}

uint64_t sub_25BBEBE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 1;
  v10 = *(v9 + 16);
  v11 = sub_25BBF2FDC();
  v10(&v14, MEMORY[0x277D849A8], &protocol witness table for Int32, v11, a3, a4);
  sub_25BCB6F0C();
  return (*(v6 + 8))(v8, a3);
}

uint64_t sub_25BBEBF70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  sub_25BAA51C8(a4, &v15);
  if (*(&v16 + 1))
  {
    v19[0] = v15;
    v19[1] = v16;
    v19[2] = v17;
    v20 = v18;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v14);

    sub_25BAA51C8(v14, v19);
    sub_25BAA4AF4(v14);
    if (*(&v16 + 1))
    {
      sub_25BA9C2C8(&v15);
    }
  }

  sub_25BBEC0A8(a2, v11, a2, a3, v19, a2, a3, a5);

  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v12);
  sub_25BAA6EB0();

  sub_25BA9C2C8(a4);
  result = sub_25BA9C2C8(v19);
  *a6 = v12;
  return result;
}

uint64_t sub_25BBEC0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v24[0] = a2;
  OUTLINED_FUNCTION_126_0();
  v15 = v14(&v25, a3);
  MEMORY[0x28223BE20](v15);
  v23[2] = a6;
  v23[3] = a7;
  v16 = sub_25BAA4B48(v24, &v25, a5, a8, v23);
  v18 = v17;
  v19 = type metadata accessor for TensorRepresentation();
  sub_25BAA51C8(a5, v24);
  swift_getObjectType();
  LOBYTE(v25) = 1;
  OUTLINED_FUNCTION_149();
  return sub_25BC5FAD0(v16, v24, v20, v19, v21, v18);
}

uint64_t sub_25BBEC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 1065353216;
  v10 = *(v9 + 16);
  v11 = sub_25BB18A50();
  v10(&v14, MEMORY[0x277D83A90], &protocol witness table for Float, v11, a3, a4);
  sub_25BCB6F0C();
  return (*(v6 + 8))(v8, a3);
}

uint64_t Tensor.init<A>(identity:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (!sub_25BAB74D0(v10, 2, 0, 2))
  {
    v15 = v10;
    v16 = xmmword_25BCC8F30;
    v17 = 0;
    v18 = xmmword_25BCBC6A0;
    v19 = 2;
    v20 = 7;
    sub_25BADDD28("init(identity:scalarType:on:)", 29, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorDeprecatedInitializers.swift", 117, 2, 449);
  }

  v14 = v9;
  (*(a4 + 32))(&v13, a3, a4);
  sub_25BAA51C8(a2, &v15);
  Tensor.init(ones:scalarType:on:)(&v14, &v13, &v15, &v12);
  Tensor.bandPart(lowerBandCount:upperBandCount:)(0, 0, &v15);
  sub_25BA9C2C8(a2);

  *a5 = v15;
  return result;
}

void Tensor.init<A>(oneHotAtIndex:depth:onValue:offValue:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_150_0(v6, v7, v8, v9, v10, v11, v12, v13);
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_174_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v21 = OUTLINED_FUNCTION_5(v20);
  *(v21 + 16) = xmmword_25BCBAE50;
  *(v21 + 32) = v15;
  v22 = OUTLINED_FUNCTION_148_0(v21);
  v0(v22);
  (v0)(v5, v3, v1);
  sub_25BAA51C8(v4, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BBF2F60(&qword_27FBB3FB0, &unk_27FBB5DF0, &qword_25BCC2AA0);
  v23 = OUTLINED_FUNCTION_77_3();
  Tensor.init<A, B>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)(v23, v24, v25, v26, v27);
  Tensor.squeezingShape(at:)();
  sub_25BA9C2C8(v4);
  v28 = *(v17 + 8);
  v29 = OUTLINED_FUNCTION_110_4();
  v28(v29);
  (v28)(v2, v1);

  OUTLINED_FUNCTION_116_2(v30);
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_150_0(v6, v7, v8, v9, v10, v11, v12, v13);
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_174_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25BCBAE50;
  *(v20 + 32) = v15;
  v21 = OUTLINED_FUNCTION_148_0(v20);
  v0(v21);
  (v0)(v5, v3, v1);
  sub_25BAA51C8(v4, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
  sub_25BBF2F60(&qword_27FBB6388, &qword_27FBB48D0, &qword_25BCBFA20);
  v22 = OUTLINED_FUNCTION_77_3();
  Tensor.init<A, B>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)(v22, v23, v24, v25, v26);
  Tensor.squeezingShape(at:)();
  sub_25BA9C2C8(v4);
  v27 = *(v17 + 8);
  v28 = OUTLINED_FUNCTION_110_4();
  v27(v28);
  (v27)(v2, v1);

  OUTLINED_FUNCTION_116_2(v29);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BBEC840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(uint64_t *__return_ptr, uint64_t, uint64_t, _BYTE *))
{
  OUTLINED_FUNCTION_9_18();
  v26 = v25;
  v28 = v27;
  v65 = v29;
  v66 = v30;
  v69 = v31;
  v70 = v32;
  v34 = v33;
  v67 = v35;
  v68 = a21;
  v63 = a25;
  v64 = v36;
  OUTLINED_FUNCTION_9();
  v38 = v37;
  v61[1] = a24;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_0();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = v61 - v44;
  OUTLINED_FUNCTION_9();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v53 = OUTLINED_FUNCTION_5(v52);
  *(v53 + 16) = xmmword_25BCBAE50;
  v62 = v34;
  *(v53 + 32) = sub_25BCB6ABC();
  OUTLINED_FUNCTION_206_0();
  v54(v51, v34, v26);
  v55 = sub_25BCB68DC();
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v63(&v71, v53, v55, v72);
  v56 = *(v38 + 16);
  v57 = v64;
  v56(v45, v64, v28);
  v58 = v65;
  v56(v42, v65, v28);
  v59 = v66;
  sub_25BAA51C8(v66, v72);
  Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)();
  sub_25BA9C2C8(v59);
  v60 = *(v38 + 8);
  v60(v58, v28);
  v60(v57, v28);
  (*(v47 + 8))(v62, v26);
  OUTLINED_FUNCTION_116_2(v74);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BBECAE0()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v37 = v3;
  if (*(v5 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_14:
    v32[0] = v6;
    v33[0] = 3;
    sub_25BAA4B48(v32, v33, v35, sub_25BBF3094, v0);
    v14 = v13;

    sub_25BAA51C8(v35, v32);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v15 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v33[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v17, v32, v18, v15, ObjectType, v14);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v19);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v2);
    sub_25BA9C2C8(v35);
    sub_25BA9C2C8(v36);

    *v8 = v19;
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = 1;
LABEL_8:
  if (v10 == *(v4 + 16))
  {
    v11 = sub_25BAA51C8(v2, v36);
    MEMORY[0x28223BE20](v11);
    v0 = v31;
    v31[2] = &v37;
    sub_25BAA51C8(v36, v33);
    if (v34)
    {
      OUTLINED_FUNCTION_158_0(v35);
      v35[12] = v12;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v32);

      sub_25BAA51C8(v32, v35);
      sub_25BAA4AF4(v32);
      if (v34)
      {
        sub_25BA9C2C8(v33);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v6 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_23;
      }
    }

    __break(1u);

    sub_25BA9C2C8(v35);
    sub_25BA9C2C8(v36);

    __break(1u);
  }

  v20 = 1;
LABEL_23:
  v36[0] = v20;
  OUTLINED_FUNCTION_102_0();
  v21 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v21);

  v22 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v22);
  v36[0] = *(v4 + 16);
  OUTLINED_FUNCTION_102_0();
  v23 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v23);

  v24 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v24);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  sub_25BCB74CC(v25, v26, v27, v28, v29, v30, 107, 2, 201);
  __break(1u);
}

void Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v5 = v4;
  v50 = v6;
  v51 = v8;
  v52 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_9_19();
  v13 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_20();
  v17 = *v0;
  v18 = *(*(*v0 + 2) + 160);
  if (!sub_25BAA80BC(v18, &unk_286D427E8))
  {
    LOBYTE(v64) = v18;
    *&v53 = sub_25BC8FACC();
    *(&v53 + 1) = v42;
    v54 = xmmword_25BCC8F40;
    LOBYTE(v55) = 0;
    *(&v55 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    LOBYTE(v56) = 2;
    v59 = 3;
    sub_25BADDD28("init(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)", 59, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/TensorDeprecatedInitializers.swift", 117, 2, 636);
  }

  if (v12 <= 0)
  {
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_228(v43, v44, v45, 0xD000000000000022, v46, v47, v48, v49, 637);
    __break(1u);
  }

  else
  {
    v64 = v17;
    LOBYTE(v61[0]) = 2;
    (*(v15 + 104))(v1, *MEMORY[0x277D84660], v13);
    Tensor.cast(to:roundingRule:)();
    (*(v15 + 8))(v1, v13);

    v19 = v53;
    v20 = *(*(v53 + 16) + 152);
    swift_bridgeObjectRetain_n();
    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAAE04C(0, *(v20 + 16) + 1, 1, v20);
      v21 = v40;
    }

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_25BAAE04C(v22 > 1, v23 + 1, 1, v21);
      v21 = v41;
    }

    *(v21 + 16) = v23 + 1;
    *(v21 + 8 * v23 + 32) = v12;

    v24 = *(v19 + 16);

    v25 = v10;
    v26 = sub_25BC31CA0();
    v27 = sub_25BC31CA0();
    (*(v3 + 32))(&v53, v5, v3);
    v28 = v53;
    v63 = 0;
    v64 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorCreationOps.swift";
    v65 = 119;
    v66 = 2;
    v67 = xmmword_25BCC8F50;
    v68 = "init(id:indices:depth:onValue:offValue:resultDescriptor:creationSite:)";
    v69 = 70;
    v70 = 2;
    type metadata accessor for OneHotOperation();
    swift_allocObject();
    v29 = OUTLINED_FUNCTION_3();
    v33 = sub_25BAB4964(v29, v30, v31, v24, v12, v21, v28, v32, v26, v27);
    sub_25BAA51C8(v50, &v53);
    if (*(&v54 + 1))
    {
      v61[0] = v53;
      v61[1] = v54;
      v61[2] = v55;
      v62 = v56;
    }

    else
    {
      sub_25BAA51C8(*(v19 + 16) + 168, v61);
      if (*(&v54 + 1))
      {
        sub_25BA9C2C8(&v53);
      }
    }

    sub_25BAA51C8(v61, v60);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v53);

    v34 = v58;

    sub_25BAA4AF4(&v53);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v53);

    v35 = v57;

    sub_25BAA4AF4(&v53);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v36 = swift_allocObject();
    LOBYTE(v53) = 1;
    sub_25BAA025C(v33, 0, v60, 0x100000000, v34, v35, v36);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v37);
    sub_25BAA6EB0();

    sub_25BA9C2C8(v50);
    OUTLINED_FUNCTION_11_1();
    v39 = *(v38 + 8);
    v39(v52, v5);
    v39(v25, v5);
    sub_25BA9C2C8(v61);
    *v51 = v37;
    OUTLINED_FUNCTION_37_0();
  }
}

void Tensor.init<A>(rangeFrom:to:stride:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_25BCB7BEC();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  sub_25BCB7AFC();
  swift_getWitnessTable();
  v14[7] = sub_25BCB68DC();
  sub_25BAA51C8(v3, v14);
  sub_25BCB68CC();
  OUTLINED_FUNCTION_36_12();
  swift_getWitnessTable();
  Tensor.init<A>(_:scalarType:on:)();
  sub_25BA9C2C8(v3);
  OUTLINED_FUNCTION_13_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_3();
  (*(v11 + 8))(v5);
  OUTLINED_FUNCTION_11_1();
  v13 = *(v12 + 8);
  v13(v7, v1);
  v13(v9, v1);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A>(linearSpaceFrom:through:count:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v22 = v21;
  v68 = v24;
  v69 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v70 = v31;
  OUTLINED_FUNCTION_9();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_0();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v65 - v39;
  MEMORY[0x28223BE20](v41);
  v44 = &v65 - v43;
  if (v45 < 2)
  {
    OUTLINED_FUNCTION_122_0();
    v65 = 708;
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_228(v59, v60, v61, 0, 0xE000000000000000, v62, v63, v64, v65);
    __break(1u);
  }

  else
  {
    v66 = a21;
    v67 = v42;
    sub_25BCB750C();
    sub_25BCB620C();
    OUTLINED_FUNCTION_13_24();
    sub_25BCB61DC();
    v46 = *(v33 + 8);
    v46(v37, v26);
    v47 = (v46)(v40, v26);
    v71[0] = 0;
    v71[1] = v28;
    MEMORY[0x28223BE20](v47);
    v48 = v68;
    *(&v65 - 6) = v26;
    *(&v65 - 5) = v48;
    v49 = v66;
    *(&v65 - 4) = v22;
    *(&v65 - 3) = v49;
    *(&v65 - 2) = v30;
    *(&v65 - 1) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB42928();
    OUTLINED_FUNCTION_139_0();
    v71[7] = sub_25BAB2B20(v50, v51, v52, v53, v54, v55, v56, v57);
    v58 = v69;
    sub_25BAA51C8(v69, v71);
    sub_25BCB68CC();
    OUTLINED_FUNCTION_36_12();
    swift_getWitnessTable();
    Tensor.init<A>(_:scalarType:on:)();
    sub_25BA9C2C8(v58);
    v46(v67, v26);
    *v70 = v71[8];
    v46(v44, v26);
    v46(v30, v26);
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BBED804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  sub_25BCB620C();
  sub_25BCB6A8C();
  v11 = *(v5 + 8);
  v11(v7, a4);
  sub_25BCB74FC();
  return (v11)(v10, a4);
}

void Tensor.init<A, B>(randomUniform:in:using:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_120_3(v26, v27, v28, v29);
  v30 = *(*(*(a21 + 16) + 24) + 8);
  v31 = sub_25BCB62FC();
  OUTLINED_FUNCTION_2();
  v33 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v34);
  v36 = v42 - v35;
  v46[7] = *v25;
  OUTLINED_FUNCTION_206_0();
  v37 = OUTLINED_FUNCTION_56_5();
  v38(v37);
  v39 = sub_25BCB621C();
  sub_25BAA51C8(v23, v46);
  v40 = OUTLINED_FUNCTION_137_0();
  Tensor.init<A>(randomUniform:in:seed:scalarType:on:)(v40, v36, v39, 0, v43, v46, v24, v44, v30, v41, v42[0], v42[1], v43, v44, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v46[5]);
  sub_25BA9C2C8(v23);
  (*(v33 + 8))(v22, v31);
  OUTLINED_FUNCTION_116_2(v46[8]);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A, B>(randomUniform:in:using:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_120_3(v25, v26, v27, v28);
  v29 = sub_25BCB62FC();
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v32);
  v45[7] = *v24;
  OUTLINED_FUNCTION_125_1();
  v33 = OUTLINED_FUNCTION_110_4();
  v34(v33);
  sub_25BCB621C();
  sub_25BAA51C8(v22, v45);
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_13_24();
  Tensor.init<A>(randomUniform:in:seed:scalarType:on:)(v35, v36, v37, 0, v42, v38, v23, v43, a21, v39, v40, v41, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5]);
  sub_25BA9C2C8(v22);
  (*(v31 + 8))(v21, v29);
  OUTLINED_FUNCTION_116_2(v45[8]);
  OUTLINED_FUNCTION_10_16();
}

uint64_t Tensor.init<A>(randomUniform:using:scalarType:on:)@<X0>(uint64_t a2@<X2>, void *a4@<X8>)
{
  v6 = sub_25BCB621C();
  OUTLINED_FUNCTION_226(v6, v7);
  Tensor.init(randomUniform:seed:scalarType:on:)();
  result = sub_25BA9C2C8(a2);
  *a4 = v9;
  return result;
}

void Tensor.init(randomUniform:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *v7;
  v52 = v1;
  sub_25BAA51C8(v1, &v70);
  if (*(&v71[0] + 1))
  {
    v69[0] = v70;
    v69[1] = v71[0];
    v69[2] = v71[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v65);

    sub_25BAA51C8(v65, v69);
    sub_25BAA4AF4(v65);
    if (*(&v71[0] + 1))
    {
      sub_25BA9C2C8(&v70);
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v16 = sub_25BAA49B8();
  swift_beginAccess();
  v17 = v16[2];
  v18 = *(v17 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[2] = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v17 = v50;
  v16[2] = v50;
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v18 > *(v17 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v5 = sub_25BC32FA0();
  v16[2] = v17;
  swift_endAccess();

LABEL_10:
  v20 = sub_25BBE5CAC(v5);
  v60 = v21;
  v61 = v22;
  v62 = v20 & 1;
  v63 = v23;
  sub_25BB6B668(&v64);
  v24 = *(v64 + 16);

  *&v55 = v15;
  v65[3] = MEMORY[0x277D83B88];
  v65[4] = &protocol witness table for Int;
  v65[0] = 0;
  v65[8] = MEMORY[0x277D83B88];
  v66 = &protocol witness table for Int;
  v65[5] = 1;
  v68 = 514;
  v59 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v71 + 8) = xmmword_25BCBC690;
  v26 = OUTLINED_FUNCTION_72_4(v25);
  OUTLINED_FUNCTION_201(v26);
  v27 = OUTLINED_FUNCTION_3();
  v28 = v24;
  v30 = v29;
  sub_25BC323E4(v27, v31, v32, v28, v33, v34, v35);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v36, v37, byte_25BCCD284);
  v38 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v38, &v55);
  if (*(&v56 + 1))
  {
    OUTLINED_FUNCTION_154_0();
    sub_25BABEF40(v65, v53);
    sub_25BC170C8(v30, v53, &v55);
    sub_25BA9C2C8(v53);
    sub_25BABF0A8(v65);
  }

  else
  {
    sub_25BA9C2C8(&v55);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v65);

  v39 = v67;

  sub_25BAA4AF4(v65);
  sub_25BAA49B8();
  sub_25BAA4A5C(v65);

  v40 = v66;

  sub_25BAA4AF4(v65);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v41 = swift_allocObject();

  LOBYTE(v65[0]) = 1;
  v43 = sub_25BC0C634(v42, 0, &v55, 0x100000000, v39, v40, v41);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;

  sub_25BAA6EB0();
  sub_25BAA51C8(v69, &v55);
  if (*(&v56 + 1))
  {
    OUTLINED_FUNCTION_154_0();
    *&v55 = v44;
    v46 = Tensor.scalarType.getter(v45);
    sub_25BBABD24(v46, v47);
    OUTLINED_FUNCTION_186();
    if (!v48)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(v65, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v49, v51);
    }

    *&v55 = v44;
    Tensor.place(on:)(v65);
    sub_25BABF0A8(v65);
    v44 = v55;
  }

  else
  {
    sub_25BA9C2C8(&v55);
    *&v55 = v44;
  }

  (*(v10 + 104))(v14, *MEMORY[0x277D84660], v8);
  v53[0] = v44;
  v54 = 12;
  Tensor.cast(to:roundingRule:)();

  sub_25BA9C2C8(v52);
  (*(v10 + 8))(v14, v8);

  sub_25BA9C2C8(v69);
  OUTLINED_FUNCTION_116_2(v65[0]);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BBEED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t, void, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_9_18();
  v43 = v27;
  v29 = v28;
  v31 = v30;
  v44 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_9();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_171();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_221();
  v46 = v39;
  v40 = *(v36 + 16);
  (v40)(v25);
  OUTLINED_FUNCTION_13_24();
  v40();
  v41 = sub_25BCB621C();
  sub_25BAA51C8(v31, v45);
  a25(&v47, &v46, v25, v26, v41, 0, v44, v45, v29, a21);
  sub_25BA9C2C8(v31);
  v42 = *(v36 + 8);
  v42(v34, v29);
  v42(v43, v29);
  OUTLINED_FUNCTION_116_2(v47);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBEEF00(uint64_t a1, uint64_t a2)
{
  v7 = 2;
  v4 = *(a2 + 24);
  v5 = sub_25BB6D800();
  return v4(&v7, MEMORY[0x277D83B88], &protocol witness table for Int, v5, a1, a2);
}

void *sub_25BBEEF84(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = (a2 - result) / 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    if (v3 < v4)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, (a3 + 32), 8 * v4);
    }
  }

  return result;
}

BOOL sub_25BBEF000(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_25BCB695C();
    if (v10 <= 31)
    {
      v11 = v10;
      v12 = sub_25BCB692C();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 31)
        {
          if (v14 < -32 || v14 > 32)
          {
LABEL_13:
            LODWORD(v14) = 0;
            v15 = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -32)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 32)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          v15 = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LODWORD(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_25BBEF15C(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  v5 = v3 | LODWORD(a2) & 0x7FFFFF;
  if (v5)
  {
    if (v3 != 255 && a2 > -1.0)
    {
      v9 = sub_25BCB69DC();
      if (v9 <= 31)
      {
        v10 = v9;
        v11 = sub_25BCB699C();
        v12 = v11 + __clz(__rbit32(v4));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -32 || v13 > 32)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            LOBYTE(v5) = 0;
            v7 = v14 | v15;
            result = v10 >= v11;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 32)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -32)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v7 = 0;
    result = 0;
    LOBYTE(v5) = 1;
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v7;
  *(a1 + 4) = v5;
  return result;
}