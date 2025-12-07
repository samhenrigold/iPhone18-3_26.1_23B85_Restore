uint64_t sub_21CF73BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_21D0224A4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21CF73D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_21D0224A4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF73E30()
{
  v1 = (type metadata accessor for PrivateCloudComputeTransport(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_21D021BA4();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);

  v7 = v1[8];
  v8 = sub_21D0224A4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_21CF73FC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21CF73FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CF7404C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CF740CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_21D021C54();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_21CF74208()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21CF74258()
{
  v1 = sub_21D021C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_21CF743BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CF74434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CF744EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_21CF74534()
{
  v1 = *(v0 + 8);
  if (v1 >= 7)
  {
    return 2;
  }

  else
  {
    return v1 + 3;
  }
}

uint64_t sub_21CF74550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 72);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 88);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21CF74698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 88);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21CF747DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21CF7487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_21D022774();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 104);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21CF749A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_21D022774();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 104);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF74ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PrivateMLRequest(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21CF74BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PrivateMLRequest(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21CF74CD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D0224A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PrivateMLRequest(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D0, &qword_21D0246B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21CF74E34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D0224A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for PrivateMLRequest(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D0, &qword_21D0246B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CF74FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CF75074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_21CF75150@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_21CF75168@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21CF75298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_21CF752DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21CF75410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21D021CF4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t _s15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigV16LLMPreprocessingOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigV16LLMPreprocessingOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21CF75584(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CF755A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_21CF755C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21CF75698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21CF75750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21CF75828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21CF75960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21CF75A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21D021CF4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CF75BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_21D021CF4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21CF75C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_21D021CF4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21CF75CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_21CF75E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF75F60(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_21D021CF4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[20]];

  return v15(v16, a2, v14);
}

char *sub_21CF760E4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21D021CF4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[20]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21CF762C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[9] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_21CF76460(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D021CF4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21CF765F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_21CF76730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF76864(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_21CF76A00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21D021CF4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21CF76BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21CF76CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21D021CF4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CF76E2C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_21D021CE4();
}

uint64_t sub_21CF76FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D0224A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CF77014(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D0224A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CF77084()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_21D0224A4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_21CF77194()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21D0224A4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CF77260()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_21D0224A4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CF7733C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CF774DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for CFString()
{
  if (!qword_27CE451E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CE451E8);
    }
  }
}

uint64_t sub_21CF7756C(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v150 = a4;
  v151 = a3;
  v155 = a1;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570);
  v145 = *(v158 - 8);
  v5 = MEMORY[0x28223BE20](v158);
  v147 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v153 = &v135 - v8;
  MEMORY[0x28223BE20](v7);
  v144 = (&v135 - v9);
  v160 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v159 = *(v160 - 8);
  v10 = MEMORY[0x28223BE20](v160);
  v161 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v154 = &v135 - v13;
  MEMORY[0x28223BE20](v12);
  v143 = (&v135 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v156 = &v135 - v18;
  v152 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v149 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v141 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45238, &unk_21D023550);
  MEMORY[0x28223BE20](v20 - 8);
  v140 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45250, &qword_21D02CC40);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v139 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v146 = &v135 - v25;
  v26 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v137 = (&v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v31 = (&v135 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45230, &qword_21D02CC30);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v136 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v138 = &v135 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v135 - v37;
  v39 = *(a2 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0) + 20));
  v40 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  swift_beginAccess();
  sub_21CF7F198(v39 + v40, v38, &qword_27CE45230, &qword_21D02CC30);
  v41 = *(v27 + 48);
  v157 = v26;
  LODWORD(v26) = v41(v38, 1, v26);
  sub_21CF7F200(v38, &qword_27CE45230, &qword_21D02CC30);
  if (v26 != 1)
  {
    v135 = v40;
    v42 = v39 + v40;
    v43 = v138;
    sub_21CF7F198(v42, v138, &qword_27CE45230, &qword_21D02CC30);
    if (v41(v43, 1, v157) == 1)
    {
      *v31 = MEMORY[0x277D84F90];
      v44 = v157;
      sub_21D021CE4();
      v45 = v31 + v44[6];
      *v45 = 0;
      v45[4] = 1;
      v46 = v31 + v44[7];
      *v46 = 0;
      v46[4] = 1;
      v47 = v31 + v44[8];
      *v47 = 0;
      v47[8] = 1;
      v48 = v31 + v44[9];
      *v48 = 0;
      v48[8] = 1;
      v49 = v31 + v44[10];
      *v49 = 0;
      v49[8] = 1;
      v50 = v31 + v44[11];
      *v50 = 0;
      v50[8] = 1;
      v51 = v31 + v44[12];
      *v51 = 0;
      v51[8] = 1;
      v52 = v41;
      if (v41(v43, 1, v44) != 1)
      {
        sub_21CF7F200(v43, &qword_27CE45230, &qword_21D02CC30);
      }
    }

    else
    {
      v52 = v41;
      sub_21CF7F3B0(v43, v31, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    }

    v53 = *(v31 + *(v157 + 24) + 4);
    sub_21CF7F350(v31, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    if ((v53 & 1) == 0)
    {
      v54 = v52;
      v55 = v136;
      sub_21CF7F198(v39 + v135, v136, &qword_27CE45230, &qword_21D02CC30);
      if (v54(v55, 1, v157) == 1)
      {
        v56 = v137;
        *v137 = MEMORY[0x277D84F90];
        v57 = v157;
        sub_21D021CE4();
        v58 = v56 + v57[6];
        *v58 = 0;
        v58[4] = 1;
        v59 = v56 + v57[7];
        *v59 = 0;
        v59[4] = 1;
        v60 = v56 + v57[8];
        *v60 = 0;
        v60[8] = 1;
        v61 = v56 + v57[9];
        *v61 = 0;
        v61[8] = 1;
        v62 = v56 + v57[10];
        *v62 = 0;
        v62[8] = 1;
        v63 = v56 + v57[11];
        *v63 = 0;
        v63[8] = 1;
        v64 = v56 + v57[12];
        *v64 = 0;
        v64[8] = 1;
        if (v54(v55, 1, v57) != 1)
        {
          sub_21CF7F200(v55, &qword_27CE45230, &qword_21D02CC30);
        }
      }

      else
      {
        v56 = v137;
        sub_21CF7F3B0(v55, v137, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
      }

      v65 = (v56 + *(v157 + 24));
      v66 = *v65;
      v67 = *(v65 + 4);
      sub_21CF7F350(v56, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
      if (v67)
      {
        v68 = 0;
      }

      else
      {
        v68 = v66;
      }

      MEMORY[0x223D39D40](v68, 0);
    }
  }

  v69 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  swift_beginAccess();
  v70 = v146;
  sub_21CF7F198(v39 + v69, v146, &qword_27CE45250, &qword_21D02CC40);
  v71 = v39;
  v72 = *(v149 + 48);
  v73 = v152;
  v74 = v72(v70, 1, v152);
  sub_21CF7F200(v70, &qword_27CE45250, &qword_21D02CC40);
  if (v74 == 1)
  {
    v75 = v160;
    v76 = v71;
  }

  else
  {
    v77 = v139;
    sub_21CF7F198(v71 + v69, v139, &qword_27CE45250, &qword_21D02CC40);
    v78 = v72(v77, 1, v73);
    v75 = v160;
    if (v78 == 1)
    {
      v79 = v141;
      sub_21D021CE4();
      v80 = v79 + v73[5];
      *v80 = 0;
      *(v80 + 4) = 1;
      v81 = v79 + v73[6];
      *v81 = 0;
      *(v81 + 4) = 1;
      v82 = v79 + v73[7];
      *v82 = 0;
      *(v82 + 4) = 1;
      v83 = v79 + v73[8];
      *v83 = 0;
      *(v83 + 4) = 1;
      v84 = v79 + v73[9];
      *v84 = 0;
      *(v84 + 4) = 1;
      v85 = v79 + v73[10];
      *v85 = 0;
      *(v85 + 8) = 1;
      v86 = v79 + v73[11];
      *v86 = 0;
      *(v86 + 8) = 1;
      v87 = v79 + v73[12];
      *v87 = 0;
      *(v87 + 4) = 1;
      if (v72(v77, 1, v73) != 1)
      {
        sub_21CF7F200(v77, &qword_27CE45250, &qword_21D02CC40);
      }
    }

    else
    {
      v79 = v141;
      sub_21CF7F3B0(v77, v141, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
    }

    v88 = sub_21D022264();
    MEMORY[0x28223BE20](v88);
    *(&v135 - 2) = v79;
    v89 = v140;
    v90 = v148;
    sub_21D0223B4();
    v148 = v90;
    sub_21CF7F350(v79, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
    (*(*(v88 - 8) + 56))(v89, 0, 1, v88);
    sub_21D022154();
    v76 = v71;
  }

  v91 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  swift_beginAccess();
  v92 = v156;
  sub_21CF7F198(v76 + v91, v156, &qword_27CE45248, &unk_21D023560);
  v93 = *(v159 + 48);
  v94 = (v93)(v92, 1, v75);
  result = sub_21CF7F200(v92, &qword_27CE45248, &unk_21D023560);
  if (v94 == 1)
  {
    return result;
  }

  v96 = v163;
  if (qword_27CE451D0 != -1)
  {
LABEL_76:
    swift_once();
  }

  swift_beginAccess();
  v97 = unk_27CE46948;
  *v96 = xmmword_27CE46938;
  v96[1] = v97;
  v163[32] = byte_27CE46958;
  sub_21CF7F198(v163, v162, &qword_27CE45260, &unk_21D0244F0);
  v98 = sub_21D0146E4();
  sub_21CF7F200(v163, &qword_27CE45260, &unk_21D0244F0);
  v99 = v76 + v91;
  v100 = v142;
  sub_21CF7F198(v99, v142, &qword_27CE45248, &unk_21D023560);
  if ((v93)(v100, 1, v75) == 1)
  {
    v101 = v143;
    *v143 = MEMORY[0x277D84F90];
    sub_21D021CE4();
    v102 = (v101 + *(v75 + 24));
    *v102 = 0;
    v102[1] = 0;
    v103 = v101 + *(v75 + 28);
    *v103 = 0;
    v103[8] = 1;
    v104 = (v93)(v100, 1, v75);
    v93 = v154;
    if (v104 != 1)
    {
      sub_21CF7F200(v100, &qword_27CE45248, &unk_21D023560);
    }
  }

  else
  {
    v101 = v143;
    sub_21CF7F3B0(v100, v143, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v93 = v154;
  }

  v105 = *(v158 + 48);
  v76 = v144;
  sub_21CF7F3B0(v101, v144, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  *(v76 + v105) = 0.0;
  v106 = sub_21CFB493C(0, 1, 1, MEMORY[0x277D84F90]);
  v108 = v106[2];
  v107 = v106[3];
  v96 = (v108 + 1);
  if (v108 >= v107 >> 1)
  {
    v106 = sub_21CFB493C((v107 > 1), v108 + 1, 1, v106);
  }

  v106[2] = v96;
  v157 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v156 = *(v145 + 72);
  sub_21CF7F260(v76, v106 + v157 + v156 * v108);
  v91 = 0x800000021D02D410;
  v149 = v98;
  v109 = v106[2];
  v152 = 0x800000021D02D410;
  while (2)
  {
    if (!v109)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v110 = v109 - 1;
    v111 = v106 + v157 + v110 * v156;
    v106[2] = v110;
    v112 = v153;
    sub_21CF7F260(v111, v153);
    v76 = *(v112 + *(v158 + 48));
    sub_21CF7F3B0(v112, v93, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v113 = (v93 + *(v75 + 24));
    v114 = v113[1];
    if (!v114)
    {
      v96 = 0xE000000000000000;
LABEL_40:
      v91 = sub_21D022B24();

      if ((v91 & 1) == 0)
      {
        if (v76 <= v149)
        {
          v116 = *(*v93 + 16);
          if (v116)
          {
            v76 = (v76 + 1);
            v117 = *v93 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
            v118 = *(v159 + 72);
            v119 = v147;
            do
            {
              v120 = *(v158 + 48);
              sub_21CF7F2D0(v117, v119);
              *(v119 + v120) = v76;
              v122 = v106[2];
              v121 = v106[3];
              v96 = (v122 + 1);
              if (v122 >= v121 >> 1)
              {
                v106 = sub_21CFB493C((v121 > 1), v122 + 1, 1, v106);
                v119 = v147;
              }

              v106[2] = v96;
              sub_21CF7F260(v119, v106 + v157 + v122 * v156);
              v117 += v118;
              --v116;
            }

            while (v116);
          }
        }

        goto LABEL_31;
      }

      goto LABEL_49;
    }

    if (v91 != v114 || *v113 != 0xD00000000000001FLL)
    {
      v96 = v113[1];
      goto LABEL_40;
    }

LABEL_49:
    v123 = v93 + *(v75 + 28);
    if (*(v123 + 8))
    {
      v124 = 0.0;
    }

    else
    {
      v124 = *v123 / 1000000.0;
    }

    MEMORY[0x223D39D70](*&v124, 0);
    v75 = *v93;
    v96 = *(*v93 + 16);
    if (!v96)
    {
      goto LABEL_69;
    }

    v93 = 0;
    v76 = (v75 + ((*(v159 + 80) + 32) & ~*(v159 + 80)));
    while (1)
    {
      if (v93 >= *(v75 + 16))
      {
        __break(1u);
        goto LABEL_75;
      }

      v125 = v161;
      sub_21CF7F2D0(v76 + *(v159 + 72) * v93, v161);
      v126 = (v125 + *(v160 + 24));
      v127 = v126[1];
      if (v127)
      {
        break;
      }

      v91 = 0xE000000000000000;
LABEL_62:
      v129 = sub_21D022B24();

      if (v129)
      {
        goto LABEL_66;
      }

      ++v93;
      sub_21CF7F350(v161, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      if (v96 == v93)
      {
        goto LABEL_69;
      }
    }

    if (0x800000021D02D430 != v127 || *v126 != 0xD000000000000017)
    {
      v91 = v126[1];
      goto LABEL_62;
    }

LABEL_66:
    v130 = v161 + *(v160 + 28);
    v131 = *(v130 + 8);
    v132 = *v130;
    sub_21CF7F350(v161, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v133 = v132 / 1000000.0;
    if (v131)
    {
      v133 = 0.0;
    }

    *v151 = v133;
LABEL_69:
    v76 = v151;
    v134 = v150;
    *v150 = v124 - *v151;
    MEMORY[0x223D39D50](v96, 0);
    MEMORY[0x223D39D90](*v76, 0);
    MEMORY[0x223D39D80](*v134, 0);
    if (v96 >= 2 && *v134 > 0.0)
    {
      (MEMORY[0x223D39E50])((v96 - 1) * 1000.0 / *v134, 0);
    }

LABEL_31:
    v93 = v154;
    sub_21CF7F350(v154, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v109 = v106[2];
    v75 = v160;
    v91 = v152;
    if (v109)
    {
      continue;
    }
  }
}

uint64_t sub_21CF788A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45210, &qword_21D023528);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  v8 = sub_21D0220F4();
  MEMORY[0x28223BE20](v8);
  sub_21D022124();
  v17 = a2;
  sub_21D0223B4();
  sub_21D022104();
  v9 = sub_21D022394();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 16))(v11, a3, v9);
  *v7 = v10;
  v12 = *MEMORY[0x277D20C68];
  v13 = sub_21D0223A4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v7, v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  return sub_21D022114();
}

int *sub_21CF78B38(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v4 = result;
  if ((*(a2 + result[5] + 4) & 1) == 0)
  {
    result = sub_21D022174();
  }

  if ((*(a2 + v4[6] + 4) & 1) == 0)
  {
    result = sub_21D0221F4();
  }

  v5 = (a2 + v4[7]);
  if ((v5[1] & 1) == 0)
  {
    result = MEMORY[0x223D39CE0](*v5);
  }

  if ((*(a2 + v4[8] + 4) & 1) == 0)
  {
    result = sub_21D0221B4();
  }

  if ((*(a2 + v4[9] + 4) & 1) == 0)
  {
    result = sub_21D0221D4();
  }

  v6 = a2 + v4[10];
  if ((*(v6 + 8) & 1) == 0)
  {
    result = MEMORY[0x223D39D00](*v6, 0);
  }

  v7 = a2 + v4[11];
  if ((*(v7 + 8) & 1) == 0)
  {
    result = MEMORY[0x223D39D20](*v7, 0);
  }

  v8 = (a2 + v4[12]);
  if ((v8[1] & 1) == 0)
  {
    return MEMORY[0x223D39C60](*v8, 0);
  }

  return result;
}

uint64_t sub_21CF78C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45210, &qword_21D023528);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  v8 = sub_21D0220F4();
  MEMORY[0x28223BE20](v8);
  sub_21D022124();
  v16 = a2;
  sub_21D0223B4();
  sub_21D022104();
  sub_21D022394();
  v9 = swift_allocBox();
  v15 = a3;
  sub_21D0223B4();
  *v7 = v9;
  v10 = *MEMORY[0x277D20C68];
  v11 = sub_21D0223A4();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_21D022114();
}

uint64_t sub_21CF78EB4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_21D021A74();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_21D0220E4();
}

uint64_t sub_21CF78FC0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45218, &qword_21D023530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = sub_21D022354();
  v9 = a2;
  sub_21D0223B4();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return sub_21D022364();
}

uint64_t sub_21CF790DC(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45220, &qword_21D023538);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v90 - v5;
  v104 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v6 = *(v104 - 8);
  v7 = MEMORY[0x28223BE20](v104);
  v97 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v95 = &v90 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v90 - v12;
  MEMORY[0x28223BE20](v11);
  v91 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v96 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v90 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v94 = &v90 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v90 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v92 = &v90 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v98 = &v90 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v90 = &v90 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v90 - v29;
  v31 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v32 = *(v31 + 36);
  v103 = a2;
  if (*&a2[v32 + 8])
  {

    sub_21D022314();
  }

  v102 = a1;
  v105 = v31;
  v33 = *(v31 + 20);
  v34 = v103;
  sub_21CF7F198(&v103[v33], v30, &qword_27CE45208, &qword_21D023520);
  v35 = *(v6 + 48);
  v36 = v104;
  v37 = v35(v30, 1, v104);
  sub_21CF7F200(v30, &qword_27CE45208, &qword_21D023520);
  if (v37 == 1)
  {
    v38 = v35;
    v39 = v34;
    v40 = v105;
  }

  else
  {
    v41 = v90;
    sub_21CF7F198(&v34[v33], v90, &qword_27CE45208, &qword_21D023520);
    if (v35(v41, 1, v36) == 1)
    {
      v42 = v91;
      sub_21D021CE4();
      v43 = (v42 + *(v36 + 20));
      *v43 = 0;
      v43[1] = 0;
      v44 = (v42 + *(v36 + 24));
      *v44 = 0;
      v44[1] = 0;
      v38 = v35;
      v45 = v35(v41, 1, v36);
      v46 = v106;
      v40 = v105;
      if (v45 != 1)
      {
        sub_21CF7F200(v41, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v38 = v35;
      v42 = v91;
      sub_21CF7F3B0(v41, v91, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      v46 = v106;
      v40 = v105;
    }

    v47 = *(v42 + *(v104 + 20) + 8);
    sub_21CF7F350(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v47)
    {
      v48 = sub_21D0222F4();
      MEMORY[0x28223BE20](v48);
      v39 = v103;
      *(&v90 - 2) = v103;
      v49 = v101;
      sub_21D0223B4();
      v106 = v46;
      (*(*(v48 - 8) + 56))(v49, 0, 1, v48);
      sub_21D022334();
    }

    else
    {
      v39 = v103;
    }
  }

  v50 = *(v40 + 24);
  v51 = v98;
  sub_21CF7F198(v39 + v50, v98, &qword_27CE45208, &qword_21D023520);
  v52 = v104;
  v53 = v38(v51, 1, v104);
  sub_21CF7F200(v51, &qword_27CE45208, &qword_21D023520);
  if (v53 == 1)
  {
    v54 = v38;
    v55 = v105;
  }

  else
  {
    v56 = v92;
    sub_21CF7F198(v39 + v50, v92, &qword_27CE45208, &qword_21D023520);
    v54 = v38;
    if (v38(v56, 1, v52) == 1)
    {
      v57 = v93;
      sub_21D021CE4();
      v58 = (v57 + *(v52 + 20));
      *v58 = 0;
      v58[1] = 0;
      v59 = (v57 + *(v52 + 24));
      *v59 = 0;
      v59[1] = 0;
      v60 = v38(v56, 1, v52);
      v55 = v105;
      if (v60 != 1)
      {
        sub_21CF7F200(v56, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v57 = v93;
      sub_21CF7F3B0(v56, v93, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      v55 = v105;
    }

    v61 = *(v57 + *(v52 + 20) + 8);
    sub_21CF7F350(v57, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v61)
    {
      v62 = sub_21D0222F4();
      MEMORY[0x28223BE20](v62);
      *(&v90 - 2) = v39;
      v63 = v101;
      v64 = v106;
      sub_21D0223B4();
      v106 = v64;
      (*(*(v62 - 8) + 56))(v63, 0, 1, v62);
      sub_21D022324();
    }
  }

  v65 = *(v55 + 32);
  v66 = v99;
  sub_21CF7F198(v39 + v65, v99, &qword_27CE45208, &qword_21D023520);
  v67 = v54(v66, 1, v52);
  sub_21CF7F200(v66, &qword_27CE45208, &qword_21D023520);
  if (v67 == 1)
  {
    v68 = v105;
  }

  else
  {
    v69 = v94;
    sub_21CF7F198(v39 + v65, v94, &qword_27CE45208, &qword_21D023520);
    if (v54(v69, 1, v52) == 1)
    {
      v70 = v95;
      sub_21D021CE4();
      v71 = (v70 + *(v52 + 20));
      *v71 = 0;
      v71[1] = 0;
      v72 = (v70 + *(v52 + 24));
      *v72 = 0;
      v72[1] = 0;
      if (v54(v69, 1, v52) != 1)
      {
        sub_21CF7F200(v69, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v70 = v95;
      sub_21CF7F3B0(v69, v95, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v73 = *(v70 + *(v52 + 20) + 8);
    sub_21CF7F350(v70, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v39 = v103;
    v68 = v105;
    if (v73)
    {
      v74 = sub_21D0222F4();
      MEMORY[0x28223BE20](v74);
      *(&v90 - 2) = v39;
      v75 = v101;
      v76 = v106;
      sub_21D0223B4();
      v106 = v76;
      (*(*(v74 - 8) + 56))(v75, 0, 1, v74);
      sub_21D022344();
    }
  }

  v77 = *(v68 + 28);
  v78 = v39 + v77;
  v79 = v39;
  v80 = v100;
  sub_21CF7F198(v78, v100, &qword_27CE45208, &qword_21D023520);
  v81 = v54(v80, 1, v52);
  result = sub_21CF7F200(v80, &qword_27CE45208, &qword_21D023520);
  if (v81 != 1)
  {
    v83 = v96;
    sub_21CF7F198(v79 + v77, v96, &qword_27CE45208, &qword_21D023520);
    if (v54(v83, 1, v52) == 1)
    {
      v84 = v97;
      sub_21D021CE4();
      v85 = (v84 + *(v52 + 20));
      *v85 = 0;
      v85[1] = 0;
      v86 = (v84 + *(v52 + 24));
      *v86 = 0;
      v86[1] = 0;
      if (v54(v83, 1, v52) != 1)
      {
        sub_21CF7F200(v83, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v84 = v97;
      sub_21CF7F3B0(v83, v97, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v87 = *(v84 + *(v52 + 20) + 8);
    result = sub_21CF7F350(v84, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v87)
    {
      v88 = sub_21D0222F4();
      MEMORY[0x28223BE20](v88);
      *(&v90 - 2) = v79;
      v89 = v101;
      sub_21D0223B4();
      (*(*(v88 - 8) + 56))(v89, 0, 1, v88);
      return sub_21D022304();
    }
  }

  return result;
}

uint64_t sub_21CF79CAC(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v36 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 20);
  v37 = a2;
  sub_21CF7F198(a2 + v36, v10, &qword_27CE45208, &qword_21D023520);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_21D021CE4();
    v21 = &v19[*(v11 + 20)];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v19[*(v11 + 24)];
    *v22 = 0;
    *(v22 + 1) = 0;
    if (v20(v10, 1, v11) != 1)
    {
      sub_21CF7F200(v10, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v10, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v24 = v36;
  v23 = v37;
  sub_21CF7F198(v37 + v36, v8, &qword_27CE45208, &qword_21D023520);
  if (v20(v8, 1, v11) == 1)
  {
    sub_21D021CE4();
    v25 = &v17[*(v11 + 20)];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v17[*(v11 + 24)];
    *v26 = 0;
    *(v26 + 1) = 0;
    if (v20(v8, 1, v11) != 1)
    {
      sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v8, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v27 = *&v17[*(v11 + 24) + 8];
  result = sub_21CF7F350(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v27)
  {
    v29 = v35;
    sub_21CF7F198(v23 + v24, v35, &qword_27CE45208, &qword_21D023520);
    if (v20(v29, 1, v11) == 1)
    {
      v30 = v34;
      sub_21D021CE4();
      v31 = (v30 + *(v11 + 20));
      *v31 = 0;
      v31[1] = 0;
      v32 = (v30 + *(v11 + 24));
      *v32 = 0;
      v32[1] = 0;
      if (v20(v29, 1, v11) != 1)
      {
        sub_21CF7F200(v29, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v30 = v34;
      sub_21CF7F3B0(v29, v34, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    sub_21CF7F350(v30, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

uint64_t sub_21CF7A154(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v36 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 24);
  v37 = a2;
  sub_21CF7F198(a2 + v36, v10, &qword_27CE45208, &qword_21D023520);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_21D021CE4();
    v21 = &v19[*(v11 + 20)];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v19[*(v11 + 24)];
    *v22 = 0;
    *(v22 + 1) = 0;
    if (v20(v10, 1, v11) != 1)
    {
      sub_21CF7F200(v10, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v10, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v24 = v36;
  v23 = v37;
  sub_21CF7F198(v37 + v36, v8, &qword_27CE45208, &qword_21D023520);
  if (v20(v8, 1, v11) == 1)
  {
    sub_21D021CE4();
    v25 = &v17[*(v11 + 20)];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v17[*(v11 + 24)];
    *v26 = 0;
    *(v26 + 1) = 0;
    if (v20(v8, 1, v11) != 1)
    {
      sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v8, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v27 = *&v17[*(v11 + 24) + 8];
  result = sub_21CF7F350(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v27)
  {
    v29 = v35;
    sub_21CF7F198(v23 + v24, v35, &qword_27CE45208, &qword_21D023520);
    if (v20(v29, 1, v11) == 1)
    {
      v30 = v34;
      sub_21D021CE4();
      v31 = (v30 + *(v11 + 20));
      *v31 = 0;
      v31[1] = 0;
      v32 = (v30 + *(v11 + 24));
      *v32 = 0;
      v32[1] = 0;
      if (v20(v29, 1, v11) != 1)
      {
        sub_21CF7F200(v29, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v30 = v34;
      sub_21CF7F3B0(v29, v34, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    sub_21CF7F350(v30, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

uint64_t sub_21CF7A5FC(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v36 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 32);
  v37 = a2;
  sub_21CF7F198(a2 + v36, v10, &qword_27CE45208, &qword_21D023520);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_21D021CE4();
    v21 = &v19[*(v11 + 20)];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v19[*(v11 + 24)];
    *v22 = 0;
    *(v22 + 1) = 0;
    if (v20(v10, 1, v11) != 1)
    {
      sub_21CF7F200(v10, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v10, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v24 = v36;
  v23 = v37;
  sub_21CF7F198(v37 + v36, v8, &qword_27CE45208, &qword_21D023520);
  if (v20(v8, 1, v11) == 1)
  {
    sub_21D021CE4();
    v25 = &v17[*(v11 + 20)];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v17[*(v11 + 24)];
    *v26 = 0;
    *(v26 + 1) = 0;
    if (v20(v8, 1, v11) != 1)
    {
      sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v8, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v27 = *&v17[*(v11 + 24) + 8];
  result = sub_21CF7F350(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v27)
  {
    v29 = v35;
    sub_21CF7F198(v23 + v24, v35, &qword_27CE45208, &qword_21D023520);
    if (v20(v29, 1, v11) == 1)
    {
      v30 = v34;
      sub_21D021CE4();
      v31 = (v30 + *(v11 + 20));
      *v31 = 0;
      v31[1] = 0;
      v32 = (v30 + *(v11 + 24));
      *v32 = 0;
      v32[1] = 0;
      if (v20(v29, 1, v11) != 1)
      {
        sub_21CF7F200(v29, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v30 = v34;
      sub_21CF7F3B0(v29, v34, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    sub_21CF7F350(v30, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

uint64_t sub_21CF7AAA4(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v36 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 28);
  v37 = a2;
  sub_21CF7F198(a2 + v36, v10, &qword_27CE45208, &qword_21D023520);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_21D021CE4();
    v21 = &v19[*(v11 + 20)];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v19[*(v11 + 24)];
    *v22 = 0;
    *(v22 + 1) = 0;
    if (v20(v10, 1, v11) != 1)
    {
      sub_21CF7F200(v10, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v10, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v24 = v36;
  v23 = v37;
  sub_21CF7F198(v37 + v36, v8, &qword_27CE45208, &qword_21D023520);
  if (v20(v8, 1, v11) == 1)
  {
    sub_21D021CE4();
    v25 = &v17[*(v11 + 20)];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v17[*(v11 + 24)];
    *v26 = 0;
    *(v26 + 1) = 0;
    if (v20(v8, 1, v11) != 1)
    {
      sub_21CF7F200(v8, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v8, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v27 = *&v17[*(v11 + 24) + 8];
  result = sub_21CF7F350(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v27)
  {
    v29 = v35;
    sub_21CF7F198(v23 + v24, v35, &qword_27CE45208, &qword_21D023520);
    if (v20(v29, 1, v11) == 1)
    {
      v30 = v34;
      sub_21D021CE4();
      v31 = (v30 + *(v11 + 20));
      *v31 = 0;
      v31[1] = 0;
      v32 = (v30 + *(v11 + 24));
      *v32 = 0;
      v32[1] = 0;
      if (v20(v29, 1, v11) != 1)
      {
        sub_21CF7F200(v29, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v30 = v34;
      sub_21CF7F3B0(v29, v34, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    sub_21CF7F350(v30, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

void sub_21CF7AF4C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v310 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v272 = &v265 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v284 = &v265 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v283 = &v265 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v296 = &v265 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v304 = &v265 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v270 = &v265 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v280 = &v265 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v279 = &v265 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v294 = &v265 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v302 = &v265 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v268 = &v265 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v277 = &v265 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v291 = &v265 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v290 = &v265 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v300 = &v265 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v266 = &v265 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v287 = &v265 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v275 = &v265 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v286 = &v265 - v42;
  MEMORY[0x28223BE20](v41);
  v298 = &v265 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v271 = &v265 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v282 = &v265 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v281 = &v265 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v295 = &v265 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v303 = &v265 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v307 = &v265 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v269 = &v265 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v278 = &v265 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v293 = &v265 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v292 = &v265 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v301 = &v265 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v306 = &v265 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v267 = &v265 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v276 = &v265 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v289 = &v265 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v288 = &v265 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v299 = &v265 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v305 = &v265 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v265 = &v265 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v274 = &v265 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v273 = &v265 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v285 = &v265 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v297 = &v265 - v90;
  MEMORY[0x28223BE20](v89);
  v92 = &v265 - v91;
  v311 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v93 = v311[9];
  v309 = a2;
  v94 = (a2 + v93);
  v95 = v94[1];
  if (v95)
  {
    v96 = *v94;

    *a1 = v96;
    a1[1] = v95;
  }

  v97 = v311[5];
  v98 = v309;
  sub_21CF7F198(v309 + v97, v92, &qword_27CE45208, &qword_21D023520);
  v99 = *(v310 + 6);
  v100 = v99(v92, 1, v4);
  v308 = a1;
  v101 = v100;
  sub_21CF7F200(v92, &qword_27CE45208, &qword_21D023520);
  v310 = v99;
  if (v101 != 1)
  {
    v102 = v97;
    v103 = v297;
    sub_21CF7F198(v98 + v97, v297, &qword_27CE45208, &qword_21D023520);
    if (v99(v103, 1, v4) == 1)
    {
      v104 = v298;
      sub_21D021CE4();
      v105 = (v104 + *(v4 + 20));
      *v105 = 0;
      v105[1] = 0;
      v106 = (v104 + *(v4 + 24));
      *v106 = 0;
      v106[1] = 0;
      if (v99(v103, 1, v4) != 1)
      {
        sub_21CF7F200(v103, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v104 = v298;
      sub_21CF7F3B0(v103, v298, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v107 = *(v104 + *(v4 + 20) + 8);
    sub_21CF7F350(v104, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v98 = v309;
    v99 = v310;
    if (v107)
    {
      v108 = v285;
      sub_21CF7F198(v309 + v102, v285, &qword_27CE45208, &qword_21D023520);
      if (v99(v108, 1, v4) == 1)
      {
        v109 = v286;
        sub_21D021CE4();
        v110 = (v109 + *(v4 + 20));
        *v110 = 0;
        v110[1] = 0;
        v111 = (v109 + *(v4 + 24));
        *v111 = 0;
        v111[1] = 0;
        v112 = v99(v108, 1, v4);
        v113 = v287;
        if (v112 != 1)
        {
          sub_21CF7F200(v108, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v109 = v286;
        sub_21CF7F3B0(v108, v286, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        v113 = v287;
      }

      v114 = *(v109 + *(v4 + 24) + 8);
      sub_21CF7F350(v109, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v114)
      {
        v115 = v309;
        v116 = v273;
        sub_21CF7F198(v309 + v102, v273, &qword_27CE45208, &qword_21D023520);
        if (v99(v116, 1, v4) == 1)
        {
          v117 = v275;
          sub_21D021CE4();
          v118 = (v117 + *(v4 + 20));
          *v118 = 0;
          v118[1] = 0;
          v119 = (v117 + *(v4 + 24));
          *v119 = 0;
          v119[1] = 0;
          if (v99(v116, 1, v4) != 1)
          {
            sub_21CF7F200(v116, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v117 = v275;
          sub_21CF7F3B0(v116, v275, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v124 = (v117 + *(v4 + 20));
        v125 = v117;
        v127 = *v124;
        v126 = v124[1];

        sub_21CF7F350(v125, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v126)
        {
          v128 = v126;
        }

        else
        {
          v127 = 0;
          v128 = 0xE000000000000000;
        }

        v129 = v115 + v102;
        v130 = v274;
        sub_21CF7F198(v129, v274, &qword_27CE45208, &qword_21D023520);
        if (v99(v130, 1, v4) == 1)
        {
          sub_21D021CE4();
          v131 = (v113 + *(v4 + 20));
          *v131 = 0;
          v131[1] = 0;
          v132 = (v113 + *(v4 + 24));
          *v132 = 0;
          v132[1] = 0;
          if (v99(v130, 1, v4) != 1)
          {
            sub_21CF7F200(v130, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          sub_21CF7F3B0(v130, v113, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v133 = (v113 + *(v4 + 24));
        v134 = *v133;
        v135 = v133[1];

        sub_21CF7F350(v113, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v135)
        {
          v134 = 0;
          v135 = 0xE000000000000000;
        }

        v136 = v308;
        sub_21CF7D9E8(v308[2], v308[3], v308[4], v308[5]);
        v136[2] = v127;
        v136[3] = v128;
        v136[4] = v134;
        v136[5] = v135;
      }

      else
      {
        v120 = v265;
        sub_21CF7F198(v309 + v102, v265, &qword_27CE45208, &qword_21D023520);
        if (v99(v120, 1, v4) == 1)
        {
          v121 = v266;
          sub_21D021CE4();
          v122 = (v121 + *(v4 + 20));
          *v122 = 0;
          v122[1] = 0;
          v123 = (v121 + *(v4 + 24));
          *v123 = 0;
          v123[1] = 0;
          if (v99(v120, 1, v4) != 1)
          {
            sub_21CF7F200(v120, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v121 = v266;
          sub_21CF7F3B0(v120, v266, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v137 = (v121 + *(v4 + 20));
        v138 = *v137;
        v139 = v137[1];

        sub_21CF7F350(v121, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v139)
        {
          v138 = 0;
          v139 = 0xE000000000000000;
        }

        v140 = v308;
        sub_21CF7D9E8(v308[2], v308[3], v308[4], v308[5]);
        v140[2] = v138;
        v140[3] = v139;
        v140[4] = 0;
        v140[5] = 0;
      }

      v98 = v309;
      v99 = v310;
    }
  }

  v141 = v311[6];
  v142 = v305;
  sub_21CF7F198(v98 + v141, v305, &qword_27CE45208, &qword_21D023520);
  v143 = v99(v142, 1, v4);
  sub_21CF7F200(v142, &qword_27CE45208, &qword_21D023520);
  if (v143 != 1)
  {
    v144 = v299;
    sub_21CF7F198(v98 + v141, v299, &qword_27CE45208, &qword_21D023520);
    if (v99(v144, 1, v4) == 1)
    {
      v145 = v300;
      sub_21D021CE4();
      v146 = (v145 + *(v4 + 20));
      *v146 = 0;
      v146[1] = 0;
      v147 = (v145 + *(v4 + 24));
      *v147 = 0;
      v147[1] = 0;
      if (v99(v144, 1, v4) != 1)
      {
        sub_21CF7F200(v144, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v145 = v300;
      sub_21CF7F3B0(v144, v300, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v148 = *(v145 + *(v4 + 20) + 8);
    sub_21CF7F350(v145, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v99 = v310;
    if (v148)
    {
      v149 = v288;
      sub_21CF7F198(v98 + v141, v288, &qword_27CE45208, &qword_21D023520);
      if (v99(v149, 1, v4) == 1)
      {
        v150 = v290;
        sub_21D021CE4();
        v151 = (v150 + *(v4 + 20));
        *v151 = 0;
        v151[1] = 0;
        v152 = (v150 + *(v4 + 24));
        *v152 = 0;
        v152[1] = 0;
        v153 = v99(v149, 1, v4) == 1;
        v154 = v291;
        v155 = v149;
        v156 = v289;
        if (!v153)
        {
          sub_21CF7F200(v155, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v150 = v290;
        sub_21CF7F3B0(v149, v290, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        v154 = v291;
        v156 = v289;
      }

      v157 = v150;
      v158 = *(v150 + *(v4 + 24) + 8);
      sub_21CF7F350(v157, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v158)
      {
        sub_21CF7F198(v98 + v141, v156, &qword_27CE45208, &qword_21D023520);
        v159 = v310;
        if (v310(v156, 1, v4) == 1)
        {
          sub_21D021CE4();
          v160 = (v154 + *(v4 + 20));
          *v160 = 0;
          v160[1] = 0;
          v161 = (v154 + *(v4 + 24));
          *v161 = 0;
          v161[1] = 0;
          if (v159(v156, 1, v4) != 1)
          {
            sub_21CF7F200(v156, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          sub_21CF7F3B0(v156, v154, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v167 = (v154 + *(v4 + 20));
        v169 = *v167;
        v168 = v167[1];

        sub_21CF7F350(v154, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v168)
        {
          v170 = v168;
        }

        else
        {
          v169 = 0;
          v170 = 0xE000000000000000;
        }

        v171 = v276;
        sub_21CF7F198(v98 + v141, v276, &qword_27CE45208, &qword_21D023520);
        v172 = v310;
        if (v310(v171, 1, v4) == 1)
        {
          v173 = v277;
          sub_21D021CE4();
          v174 = (v173 + *(v4 + 20));
          *v174 = 0;
          v174[1] = 0;
          v175 = (v173 + *(v4 + 24));
          *v175 = 0;
          v175[1] = 0;
          if (v172(v171, 1, v4) != 1)
          {
            sub_21CF7F200(v171, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v173 = v277;
          sub_21CF7F3B0(v171, v277, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v176 = (v173 + *(v4 + 24));
        v178 = *v176;
        v177 = v176[1];

        sub_21CF7F350(v173, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v177)
        {
          v178 = 0;
          v177 = 0xE000000000000000;
        }

        v179 = v308;
        sub_21CF7D9E8(v308[6], v308[7], v308[8], v308[9]);
        v179[6] = v169;
        v179[7] = v170;
        v179[8] = v178;
        v179[9] = v177;
      }

      else
      {
        v162 = v267;
        sub_21CF7F198(v98 + v141, v267, &qword_27CE45208, &qword_21D023520);
        v163 = v310;
        if (v310(v162, 1, v4) == 1)
        {
          v164 = v268;
          sub_21D021CE4();
          v165 = (v164 + *(v4 + 20));
          *v165 = 0;
          v165[1] = 0;
          v166 = (v164 + *(v4 + 24));
          *v166 = 0;
          v166[1] = 0;
          if (v163(v162, 1, v4) != 1)
          {
            sub_21CF7F200(v162, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v164 = v268;
          sub_21CF7F3B0(v162, v268, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v180 = (v164 + *(v4 + 20));
        v182 = *v180;
        v181 = v180[1];

        sub_21CF7F350(v164, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v181)
        {
          v182 = 0;
          v181 = 0xE000000000000000;
        }

        v183 = v308;
        sub_21CF7D9E8(v308[6], v308[7], v308[8], v308[9]);
        v183[6] = v182;
        v183[7] = v181;
        v183[8] = 0;
        v183[9] = 0;
      }

      v99 = v310;
    }
  }

  v184 = v311[8];
  v185 = v306;
  sub_21CF7F198(v98 + v184, v306, &qword_27CE45208, &qword_21D023520);
  v186 = v99(v185, 1, v4);
  sub_21CF7F200(v185, &qword_27CE45208, &qword_21D023520);
  if (v186 != 1)
  {
    v187 = v301;
    sub_21CF7F198(v98 + v184, v301, &qword_27CE45208, &qword_21D023520);
    if (v99(v187, 1, v4) == 1)
    {
      v188 = v302;
      sub_21D021CE4();
      v189 = (v188 + *(v4 + 20));
      *v189 = 0;
      v189[1] = 0;
      v190 = (v188 + *(v4 + 24));
      *v190 = 0;
      v190[1] = 0;
      if (v99(v187, 1, v4) != 1)
      {
        sub_21CF7F200(v187, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v188 = v302;
      sub_21CF7F3B0(v187, v302, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v191 = *(v188 + *(v4 + 20) + 8);
    sub_21CF7F350(v188, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v191)
    {
      v192 = v292;
      sub_21CF7F198(v98 + v184, v292, &qword_27CE45208, &qword_21D023520);
      if (v99(v192, 1, v4) == 1)
      {
        v193 = v294;
        sub_21D021CE4();
        v194 = (v193 + *(v4 + 20));
        *v194 = 0;
        v194[1] = 0;
        v195 = (v193 + *(v4 + 24));
        *v195 = 0;
        v195[1] = 0;
        v153 = v99(v192, 1, v4) == 1;
        v196 = v192;
        v197 = v293;
        if (!v153)
        {
          sub_21CF7F200(v196, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v193 = v294;
        sub_21CF7F3B0(v192, v294, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        v197 = v293;
      }

      v198 = v193;
      v199 = *(v193 + *(v4 + 24) + 8);
      sub_21CF7F350(v198, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v199)
      {
        sub_21CF7F198(v98 + v184, v197, &qword_27CE45208, &qword_21D023520);
        if (v99(v197, 1, v4) == 1)
        {
          v200 = v279;
          sub_21D021CE4();
          v201 = (v200 + *(v4 + 20));
          *v201 = 0;
          v201[1] = 0;
          v202 = (v200 + *(v4 + 24));
          *v202 = 0;
          v202[1] = 0;
          if (v99(v197, 1, v4) != 1)
          {
            sub_21CF7F200(v197, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v200 = v279;
          sub_21CF7F3B0(v197, v279, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v207 = (v200 + *(v4 + 20));
        v208 = v200;
        v210 = *v207;
        v209 = v207[1];

        sub_21CF7F350(v208, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v209)
        {
          v211 = v209;
        }

        else
        {
          v210 = 0;
          v211 = 0xE000000000000000;
        }

        v212 = v98 + v184;
        v213 = v278;
        sub_21CF7F198(v212, v278, &qword_27CE45208, &qword_21D023520);
        if (v99(v213, 1, v4) == 1)
        {
          v214 = v280;
          sub_21D021CE4();
          v215 = (v214 + *(v4 + 20));
          *v215 = 0;
          v215[1] = 0;
          v216 = (v214 + *(v4 + 24));
          *v216 = 0;
          v216[1] = 0;
          if (v99(v213, 1, v4) != 1)
          {
            sub_21CF7F200(v213, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v214 = v280;
          sub_21CF7F3B0(v213, v280, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v217 = (v214 + *(v4 + 24));
        v218 = v214;
        v220 = *v217;
        v219 = v217[1];

        sub_21CF7F350(v218, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v219)
        {
          v220 = 0;
          v219 = 0xE000000000000000;
        }

        v221 = v308;
        sub_21CF7D9E8(v308[10], v308[11], v308[12], v308[13]);
        v221[10] = v210;
        v221[11] = v211;
        v221[12] = v220;
        v221[13] = v219;
      }

      else
      {
        v203 = v269;
        sub_21CF7F198(v98 + v184, v269, &qword_27CE45208, &qword_21D023520);
        if (v99(v203, 1, v4) == 1)
        {
          v204 = v270;
          sub_21D021CE4();
          v205 = (v204 + *(v4 + 20));
          *v205 = 0;
          v205[1] = 0;
          v206 = (v204 + *(v4 + 24));
          *v206 = 0;
          v206[1] = 0;
          if (v99(v203, 1, v4) != 1)
          {
            sub_21CF7F200(v203, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v204 = v270;
          sub_21CF7F3B0(v203, v270, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v222 = (v204 + *(v4 + 20));
        v224 = *v222;
        v223 = v222[1];

        sub_21CF7F350(v204, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v223)
        {
          v224 = 0;
          v223 = 0xE000000000000000;
        }

        v225 = v308;
        sub_21CF7D9E8(v308[10], v308[11], v308[12], v308[13]);
        v225[10] = v224;
        v225[11] = v223;
        v225[12] = 0;
        v225[13] = 0;
      }
    }
  }

  v226 = v311[7];
  v227 = v307;
  sub_21CF7F198(v98 + v226, v307, &qword_27CE45208, &qword_21D023520);
  v228 = v99(v227, 1, v4);
  sub_21CF7F200(v227, &qword_27CE45208, &qword_21D023520);
  if (v228 != 1)
  {
    v229 = v303;
    sub_21CF7F198(v98 + v226, v303, &qword_27CE45208, &qword_21D023520);
    if (v99(v229, 1, v4) == 1)
    {
      v230 = v304;
      sub_21D021CE4();
      v231 = (v230 + *(v4 + 20));
      *v231 = 0;
      v231[1] = 0;
      v232 = (v230 + *(v4 + 24));
      *v232 = 0;
      v232[1] = 0;
      if (v99(v229, 1, v4) != 1)
      {
        sub_21CF7F200(v229, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v230 = v304;
      sub_21CF7F3B0(v229, v304, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v233 = *(v230 + *(v4 + 20) + 8);
    sub_21CF7F350(v230, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v233)
    {
      v234 = v295;
      sub_21CF7F198(v98 + v226, v295, &qword_27CE45208, &qword_21D023520);
      if (v99(v234, 1, v4) == 1)
      {
        v235 = v296;
        sub_21D021CE4();
        v236 = (v235 + *(v4 + 20));
        *v236 = 0;
        v236[1] = 0;
        v237 = (v235 + *(v4 + 24));
        *v237 = 0;
        v237[1] = 0;
        if (v99(v234, 1, v4) != 1)
        {
          sub_21CF7F200(v234, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v235 = v296;
        sub_21CF7F3B0(v234, v296, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      }

      v238 = v235;
      v239 = *(v235 + *(v4 + 24) + 8);
      sub_21CF7F350(v238, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v239)
      {
        v240 = v281;
        sub_21CF7F198(v98 + v226, v281, &qword_27CE45208, &qword_21D023520);
        if (v99(v240, 1, v4) == 1)
        {
          v241 = v283;
          sub_21D021CE4();
          v242 = (v241 + *(v4 + 20));
          *v242 = 0;
          v242[1] = 0;
          v243 = (v241 + *(v4 + 24));
          *v243 = 0;
          v243[1] = 0;
          if (v99(v240, 1, v4) != 1)
          {
            sub_21CF7F200(v240, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v241 = v283;
          sub_21CF7F3B0(v240, v283, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v248 = (v241 + *(v4 + 20));
        v249 = v241;
        v251 = *v248;
        v250 = v248[1];

        sub_21CF7F350(v249, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v250)
        {
          v252 = v250;
        }

        else
        {
          v251 = 0;
          v252 = 0xE000000000000000;
        }

        v253 = v282;
        sub_21CF7F198(v98 + v226, v282, &qword_27CE45208, &qword_21D023520);
        if (v99(v253, 1, v4) == 1)
        {
          v254 = v284;
          sub_21D021CE4();
          v255 = (v254 + *(v4 + 20));
          *v255 = 0;
          v255[1] = 0;
          v256 = (v254 + *(v4 + 24));
          *v256 = 0;
          v256[1] = 0;
          if (v99(v253, 1, v4) != 1)
          {
            sub_21CF7F200(v253, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v254 = v284;
          sub_21CF7F3B0(v253, v284, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v257 = (v254 + *(v4 + 24));
        v259 = *v257;
        v258 = v257[1];

        sub_21CF7F350(v254, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v258)
        {
          v259 = 0;
          v258 = 0xE000000000000000;
        }

        v260 = v308;
        sub_21CF7D9E8(v308[14], v308[15], v308[16], v308[17]);
        v260[14] = v251;
        v260[15] = v252;
        v260[16] = v259;
        v260[17] = v258;
      }

      else
      {
        v244 = v271;
        sub_21CF7F198(v98 + v226, v271, &qword_27CE45208, &qword_21D023520);
        if (v99(v244, 1, v4) == 1)
        {
          v245 = v272;
          sub_21D021CE4();
          v246 = (v245 + *(v4 + 20));
          *v246 = 0;
          v246[1] = 0;
          v247 = (v245 + *(v4 + 24));
          *v247 = 0;
          v247[1] = 0;
          if (v99(v244, 1, v4) != 1)
          {
            sub_21CF7F200(v244, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v245 = v272;
          sub_21CF7F3B0(v244, v272, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v261 = (v245 + *(v4 + 20));
        v263 = *v261;
        v262 = v261[1];

        sub_21CF7F350(v245, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v262)
        {
          v263 = 0;
          v262 = 0xE000000000000000;
        }

        v264 = v308;
        sub_21CF7D9E8(v308[14], v308[15], v308[16], v308[17]);
        v264[14] = v263;
        v264[15] = v262;
        v264[16] = 0;
        v264[17] = 0;
      }
    }
  }
}

uint64_t sub_21CF7CDB8(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v97 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v95 = (&v87 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v87 = (&v87 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v92 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v89 = (&v87 - v14);
  MEMORY[0x28223BE20](v13);
  v90 = (&v87 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v96 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v94 = &v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v87 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v91 = &v87 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v88 = &v87 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v87 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v87 - v30;
  v32 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 40);
  sub_21CF7F198(a2 + v32, v31, &qword_27CE45200, &qword_21D023518);
  v33 = *(v4 + 48);
  v34 = v3;
  LODWORD(v3) = v33(v31, 1, v3);
  result = sub_21CF7F200(v31, &qword_27CE45200, &qword_21D023518);
  if (v3 != 1)
  {
    v36 = v32;
    sub_21CF7F198(a2 + v32, v29, &qword_27CE45200, &qword_21D023518);
    v37 = a2;
    v38 = v34;
    if (v33(v29, 1, v34) == 1)
    {
      v39 = MEMORY[0x277D84F90];
      v40 = v90;
      *v90 = MEMORY[0x277D84F90];
      v40[1] = v39;
      sub_21D021CE4();
      v41 = (v40 + *(v38 + 28));
      *v41 = 0;
      v41[1] = 0;
      v42 = v40 + *(v38 + 32);
      *v42 = 0;
      *(v42 + 4) = 256;
      v43 = v33(v29, 1, v38);
      v44 = v98;
      if (v43 != 1)
      {
        sub_21CF7F200(v29, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      v40 = v90;
      sub_21CF7F3B0(v29, v90, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      v44 = v98;
    }

    v45 = *(v40 + *(v38 + 28) + 8);
    sub_21CF7F350(v40, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    v46 = v36;
    v47 = v37;
    v48 = v92;
    if (v45)
    {
      v49 = v88;
      sub_21CF7F198(v47 + v46, v88, &qword_27CE45200, &qword_21D023518);
      if (v33(v49, 1, v38) == 1)
      {
        v50 = MEMORY[0x277D84F90];
        v51 = v89;
        *v89 = MEMORY[0x277D84F90];
        v51[1] = v50;
        sub_21D021CE4();
        v52 = (v51 + *(v38 + 28));
        *v52 = 0;
        v52[1] = 0;
        v53 = v51 + *(v38 + 32);
        *v53 = 0;
        *(v53 + 4) = 256;
        if (v33(v49, 1, v38) != 1)
        {
          sub_21CF7F200(v49, &qword_27CE45200, &qword_21D023518);
        }
      }

      else
      {
        v51 = v89;
        sub_21CF7F3B0(v49, v89, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      }

      v54 = (v51 + *(v38 + 28));
      v55 = v51;
      v57 = *v54;
      v56 = v54[1];

      sub_21CF7F350(v55, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      if (!v56)
      {
        v57 = 0;
        v56 = 0xE000000000000000;
      }

      *v44 = v57;
      *(v44 + 8) = v56;
    }

    v58 = v91;
    sub_21CF7F198(v47 + v46, v91, &qword_27CE45200, &qword_21D023518);
    if (v33(v58, 1, v38) == 1)
    {
      v59 = MEMORY[0x277D84F90];
      *v48 = MEMORY[0x277D84F90];
      v48[1] = v59;
      sub_21D021CE4();
      v60 = (v48 + *(v38 + 28));
      *v60 = 0;
      v60[1] = 0;
      v61 = v48 + *(v38 + 32);
      *v61 = 0;
      *(v61 + 4) = 256;
      v62 = v33(v58, 1, v38);
      v63 = v93;
      if (v62 != 1)
      {
        sub_21CF7F200(v58, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      sub_21CF7F3B0(v58, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      v63 = v93;
    }

    v64 = *(v48 + *(v38 + 32) + 9);
    sub_21CF7F350(v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    if ((v64 & 1) == 0)
    {
      sub_21CF7F198(v47 + v46, v63, &qword_27CE45200, &qword_21D023518);
      if (v33(v63, 1, v38) == 1)
      {
        v65 = MEMORY[0x277D84F90];
        v66 = v87;
        *v87 = MEMORY[0x277D84F90];
        v66[1] = v65;
        sub_21D021CE4();
        v67 = (v66 + *(v38 + 28));
        *v67 = 0;
        v67[1] = 0;
        v68 = v66 + *(v38 + 32);
        *v68 = 0;
        *(v68 + 4) = 256;
        if (v33(v63, 1, v38) != 1)
        {
          sub_21CF7F200(v63, &qword_27CE45200, &qword_21D023518);
        }
      }

      else
      {
        v66 = v87;
        sub_21CF7F3B0(v63, v87, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      }

      v69 = v66 + *(v38 + 32);
      v70 = v66;
      v71 = *v69;
      v72 = v69[8];
      v73 = v69[9];
      sub_21CF7F350(v70, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      if ((v73 & 1) == 0 && (v72 & 1) != 0 && v71)
      {
        *(v44 + 32) = v71 != 1;
      }
    }

    v74 = v94;
    sub_21CF7F198(v47 + v46, v94, &qword_27CE45200, &qword_21D023518);
    if (v33(v74, 1, v38) == 1)
    {
      v75 = MEMORY[0x277D84F90];
      v76 = v95;
      *v95 = MEMORY[0x277D84F90];
      v76[1] = v75;
      sub_21D021CE4();
      v77 = (v76 + *(v38 + 28));
      *v77 = 0;
      v77[1] = 0;
      v78 = v76 + *(v38 + 32);
      *v78 = 0;
      *(v78 + 4) = 256;
      v79 = v33(v74, 1, v38);
      v80 = v97;
      if (v79 != 1)
      {
        sub_21CF7F200(v74, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      v76 = v95;
      sub_21CF7F3B0(v74, v95, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      v80 = v97;
    }

    v81 = *v76;

    sub_21CF7F350(v76, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);

    *(v44 + 24) = v81;
    v82 = v96;
    sub_21CF7F198(v47 + v46, v96, &qword_27CE45200, &qword_21D023518);
    if (v33(v82, 1, v38) == 1)
    {
      v83 = MEMORY[0x277D84F90];
      *v80 = MEMORY[0x277D84F90];
      v80[1] = v83;
      sub_21D021CE4();
      v84 = (v80 + *(v38 + 28));
      *v84 = 0;
      v84[1] = 0;
      v85 = v80 + *(v38 + 32);
      *v85 = 0;
      *(v85 + 4) = 256;
      if (v33(v82, 1, v38) != 1)
      {
        sub_21CF7F200(v82, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      sub_21CF7F3B0(v82, v80, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    }

    v86 = v80[1];

    sub_21CF7F350(v80, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);

    *(v44 + 16) = v86;
  }

  return result;
}

uint64_t sub_21CF7D820(uint64_t a1, uint64_t a2)
{
  sub_21D022C04();
  swift_getWitnessTable();
  sub_21D021B74();
  return sub_21D022C24();
}

uint64_t sub_21CF7D888(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21D021B64();
}

uint64_t sub_21CF7D95C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_21CF7D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_21CF7DAF0(uint64_t a1, uint64_t a2)
{
  v167 = a2;
  v180 = a1;
  v176 = sub_21D0223E4();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_21D021A74();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_21D0224A4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_21D022414();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v177 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45230, &qword_21D02CC30);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v163 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v160 = &v151 - v10;
  v154 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v161 = *(v154 - 8);
  v11 = MEMORY[0x28223BE20](v154);
  v162 = (&v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v159 = &v151 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45238, &unk_21D023550);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v158 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v179 = &v151 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v157 = &v151 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v156 = &v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v151 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v151 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v153 = &v151 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v151 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45240, &unk_21D0246E0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v151 - v33;
  v182 = sub_21D022394();
  v168 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v151 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45250, &qword_21D02CC40);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v151 - v40;
  v42 = *(v2 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0) + 20));
  v43 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  swift_beginAccess();
  sub_21CF7F198(v42 + v43, v41, &qword_27CE45250, &qword_21D02CC40);
  v44 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  LODWORD(v43) = (*(*(v44 - 8) + 48))(v41, 1, v44);
  result = sub_21CF7F200(v41, &qword_27CE45250, &qword_21D02CC40);
  if (v43 == 1)
  {
    v46 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
    swift_beginAccess();
    sub_21CF7F198(v42 + v46, v38, &qword_27CE45248, &unk_21D023560);
    v47 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
    LODWORD(v46) = (*(*(v47 - 8) + 48))(v38, 1, v47);
    result = sub_21CF7F200(v38, &qword_27CE45248, &unk_21D023560);
    if (v46 == 1)
    {
      return result;
    }
  }

  v178 = v42;
  v184 = 0;
  v185 = 0;
  MEMORY[0x28223BE20](result);
  *(&v151 - 4) = v2;
  *(&v151 - 3) = &v185;
  *(&v151 - 2) = &v184;
  v48 = v181;
  sub_21D0223B4();
  sub_21D0224D4();
  swift_allocObject();
  v49 = sub_21D0224C4();
  MEMORY[0x28223BE20](v49);
  *(&v151 - 2) = v180;
  *(&v151 - 1) = v48;
  sub_21D0224B4();
  v50 = v155;

  v51 = sub_21D022134();
  (*(*(v51 - 8) + 56))(v34, 0, 1, v51);
  v52 = sub_21CF7F200(v34, &qword_27CE45240, &unk_21D0246E0);
  v53 = COERCE_DOUBLE(MEMORY[0x223D39D60](v52));
  v55 = 0.0;
  if (v54)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v53;
  }

  v57 = COERCE_DOUBLE(MEMORY[0x223D39E40]());
  if (v58)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = v57;
  }

  sub_21D022144();
  v60 = sub_21D022264();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v31, 1, v60) == 1)
  {
    sub_21CF7F200(v31, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v63 = sub_21D022164();
    (*(v61 + 8))(v31, v60);
    if ((v63 & 0x100000000) == 0)
    {
      v55 = *&v63;
    }
  }

  v64 = v153;
  sub_21D022144();
  v65 = v62(v64, 1, v60);
  v66 = v157;
  if (v65 == 1)
  {
    sub_21CF7F200(v64, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v67 = sub_21D0221E4();
    v68 = v64;
    v69 = v67;
    (*(v61 + 8))(v68, v60);
    if ((v69 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }
  }

  v69 = 0;
LABEL_17:
  sub_21D022144();
  if (v62(v27, 1, v60) == 1)
  {
    sub_21CF7F200(v27, &qword_27CE45238, &unk_21D023550);
    v70 = v154;
  }

  else
  {
    v71 = sub_21D022204();
    (*(v61 + 8))(v27, v60);
    v70 = v154;
    if ((v71 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }
  }

  v71 = 0;
LABEL_21:
  v155 = v71;
  sub_21D022144();
  if (v62(v50, 1, v60) == 1)
  {
    sub_21CF7F200(v50, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v72 = sub_21D0221A4();
    (*(v61 + 8))(v50, v60);
    if ((v72 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }
  }

  v72 = 0;
LABEL_25:
  v154 = v72;
  v73 = v156;
  sub_21D022144();
  if (v62(v73, 1, v60) == 1)
  {
    sub_21CF7F200(v73, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v74 = sub_21D0221C4();
    (*(v61 + 8))(v73, v60);
    if ((v74 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }
  }

  v74 = 0;
LABEL_29:
  v153 = v74;
  v156 = v69;
  sub_21D022144();
  if (v62(v66, 1, v60) == 1)
  {
    sub_21CF7F200(v66, &qword_27CE45238, &unk_21D023550);
LABEL_32:
    v152 = 0;
    goto LABEL_34;
  }

  v75 = MEMORY[0x223D39CF0]();
  v77 = v76;
  (*(v61 + 8))(v66, v60);
  if (v77)
  {
    goto LABEL_32;
  }

  v152 = v75;
LABEL_34:
  v78 = v171;
  sub_21D022144();
  v79 = v179;
  v80 = v62(v179, 1, v60);
  v81 = v178;
  if (v80 == 1)
  {
    sub_21CF7F200(v79, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v157 = MEMORY[0x223D39D10]();
    v83 = v82;
    (*(v61 + 8))(v79, v60);
    if ((v83 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v157 = 0;
LABEL_38:
  v84 = v158;
  sub_21D022144();
  v85 = v78;
  if (v62(v84, 1, v60) == 1)
  {
    sub_21CF7F200(v84, &qword_27CE45238, &unk_21D023550);
    v86 = v161;
    v87 = v160;
    v88 = v159;
    v89 = v163;
LABEL_41:
    v179 = 0;
    goto LABEL_42;
  }

  v179 = MEMORY[0x223D39C50]();
  v91 = v90;
  (*(v61 + 8))(v84, v60);
  v86 = v161;
  v87 = v160;
  v88 = v159;
  v89 = v163;
  if (v91)
  {
    goto LABEL_41;
  }

LABEL_42:
  v92 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  swift_beginAccess();
  sub_21CF7F198(v81 + v92, v87, &qword_27CE45230, &qword_21D02CC30);
  v93 = *(v86 + 48);
  v94 = v93(v87, 1, v70);
  v95 = MEMORY[0x277D84F90];
  if (v94 == 1)
  {
    *v88 = MEMORY[0x277D84F90];
    sub_21D021CE4();
    v96 = v88 + v70[6];
    *v96 = 0;
    v96[4] = 1;
    v97 = v88 + v70[7];
    *v97 = 0;
    v97[4] = 1;
    v98 = v88 + v70[8];
    *v98 = 0;
    v98[8] = 1;
    v99 = v88 + v70[9];
    *v99 = 0;
    v99[8] = 1;
    v100 = v88 + v70[10];
    *v100 = 0;
    v100[8] = 1;
    v101 = v88 + v70[11];
    *v101 = 0;
    v101[8] = 1;
    v102 = v88 + v70[12];
    *v102 = 0;
    v102[8] = 1;
    if (v93(v87, 1, v70) != 1)
    {
      sub_21CF7F200(v87, &qword_27CE45230, &qword_21D02CC30);
    }
  }

  else
  {
    sub_21CF7F3B0(v87, v88, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  }

  v103 = v88 + v70[6];
  v104 = *v103;
  v105 = v103[4];
  sub_21CF7F350(v88, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  if (v105)
  {
    v106 = 0;
  }

  else
  {
    v106 = v104;
  }

  LODWORD(v161) = v106;
  sub_21CF7F198(v178 + v92, v89, &qword_27CE45230, &qword_21D02CC30);
  if (v93(v89, 1, v70) == 1)
  {
    v107 = v162;
    *v162 = v95;
    v108 = v107;
    sub_21D021CE4();
    v109 = v108 + v70[6];
    *v109 = 0;
    v109[4] = 1;
    v110 = v108 + v70[7];
    *v110 = 0;
    v110[4] = 1;
    v111 = v108 + v70[8];
    *v111 = 0;
    v111[8] = 1;
    v112 = v108 + v70[9];
    *v112 = 0;
    v112[8] = 1;
    v113 = v108 + v70[10];
    *v113 = 0;
    v113[8] = 1;
    v114 = v108 + v70[11];
    *v114 = 0;
    v114[8] = 1;
    v115 = v108 + v70[12];
    *v115 = 0;
    v115[8] = 1;
    v116 = v93(v89, 1, v70);
    v117 = v170;
    v118 = v169;
    if (v116 != 1)
    {
      sub_21CF7F200(v89, &qword_27CE45230, &qword_21D02CC30);
    }
  }

  else
  {
    v108 = v162;
    sub_21CF7F3B0(v89, v162, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    v117 = v170;
    v118 = v169;
  }

  v119 = v108 + v70[7];
  LODWORD(v178) = *v119;
  v120 = v119[4];
  sub_21CF7F350(v108, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  (*(v165 + 16))(v164, v167, v166);
  v121 = v177;
  sub_21D0223F4();
  (*(v117 + 16))(v118, v180, v85);
  sub_21CF7F0A4();
  sub_21CF78AC8();
  sub_21CF774DC(v122, v123);
  sub_21CF78AC8();
  sub_21CF774DC(v124, v125);
  sub_21CF78AC8();
  sub_21CF774DC(v126, v127);
  sub_21CF78AC8();
  sub_21CF774DC(v128, v129);
  sub_21CF7F0F8();
  sub_21CF78AC8();
  sub_21CF774DC(v130, v131);
  sub_21CF78AC8();
  sub_21CF774DC(v132, v133);
  sub_21CF78AC8();
  sub_21CF774DC(v134, v135);
  sub_21CF78AC8();
  sub_21CF774DC(v136, v137);
  sub_21CF78AC8();
  sub_21CF774DC(v138, v139);
  v140 = v174;
  sub_21D0223D4();
  v141 = sub_21D022404();
  v142 = sub_21D022904();
  if (sub_21D022914())
  {
    v143 = v178;
    if (v120)
    {
      v143 = 0;
    }

    LODWORD(v180) = v143;
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v183 = v145;
    *v144 = 136449794;
    v146 = v118;
    v147 = sub_21D021A54();
    v149 = sub_21CF9703C(v147, v148, &v183);

    *(v144 + 4) = v149;
    (*(v117 + 8))(v146, v85);
    *(v144 + 12) = 2050;
    swift_beginAccess();
    *(v144 + 14) = v185;
    *(v144 + 22) = 2050;
    swift_beginAccess();
    *(v144 + 24) = v184;
    *(v144 + 32) = 2050;
    *(v144 + 34) = v56;
    *(v144 + 42) = 2050;
    *(v144 + 44) = v59;
    *(v144 + 52) = 2050;
    *(v144 + 54) = v55;
    *(v144 + 62) = 1026;
    *(v144 + 64) = v156;
    *(v144 + 68) = 1026;
    *(v144 + 70) = v155;
    *(v144 + 74) = 1026;
    *(v144 + 76) = v154;
    *(v144 + 80) = 1026;
    *(v144 + 82) = v153;
    *(v144 + 86) = 2050;
    *(v144 + 88) = v152;
    *(v144 + 96) = 2050;
    *(v144 + 98) = v157;
    *(v144 + 106) = 2050;
    *(v144 + 108) = v179;
    *(v144 + 116) = 1026;
    *(v144 + 118) = v161;
    *(v144 + 122) = 1026;
    *(v144 + 124) = v180;
    v150 = sub_21D0223C4();
    _os_signpost_emit_with_name_impl(&dword_21CF72000, v141, v142, v150, "PrivateCloudMetrics", "requestIdentifier=%{public, signpost.description=attribute,public}s timeToFirstTokenMillis=%{public, signpost.description=attribute,public}f extendLatencyMillis=%{public, signpost.description=attribute,public}f totalInferenceMillis=%{public, signpost.description=attribute,public}f tokenRate=%{public, signpost.description=attribute,public}f speculativeDecodingAcceptanceRate=%{public, signpost.description=attribute,public}f draftModelInferenceCallCount=%{public, signpost.description=attribute,public}u targetModelInferenceCallCount=%{public, signpost.description=attribute,public}u draftOutputTokenCount=%{public, signpost.description=attribute,public}u targetOutputTokenCount=%{public, signpost.description=attribute,public}u draftModelTotalInferenceLatencyMillis=%{public, signpost.description=attribute,public}llu targetModelTotalInferenceLatencyMillis=%{public, signpost.description=attribute,public}llu draftSteps=%{public, signpost.description=attribute,public}llu inputTokensCount=%{public, signpost.description=attribute,public}u outputTokensCount=%{public, signpost.description=attribute,public}u", v144, 0x80u);
    __swift_destroy_boxed_opaque_existential_0(v145);
    MEMORY[0x223D3ADE0](v145, -1, -1);
    MEMORY[0x223D3ADE0](v144, -1, -1);

    (*(v175 + 8))(v140, v176);
    (*(v172 + 8))(v177, v173);
  }

  else
  {

    (*(v175 + 8))(v140, v176);
    (*(v117 + 8))(v118, v85);
    (*(v172 + 8))(v121, v173);
  }

  return (*(v168 + 8))(v181, v182);
}

unint64_t sub_21CF7F0A4()
{
  result = qword_28121B0F8;
  if (!qword_28121B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121B0F8);
  }

  return result;
}

unint64_t sub_21CF7F0F8()
{
  result = qword_28121B0E8;
  if (!qword_28121B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121B0E8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21CF7F198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CF7F200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21CF7F260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF7F2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF7F350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CF7F3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Logger.create<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_21CF7F488(a1, a2);

  return sub_21D022494();
}

uint64_t sub_21CF7F488(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = *(v4 + 16);
  v8(&v11 - v9, a1, a2);
  if (swift_dynamicCast())
  {
    return v11;
  }

  v8(v7, a1, a2);
  return sub_21D0225D4();
}

uint64_t sub_21CF7F5B8()
{
  result = os_variant_has_internal_content();
  byte_28121B6B0 = result;
  return result;
}

uint64_t (*static OSVariant.isInternalBuild.modify(uint64_t a1))()
{
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21CF7F6B0()
{
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_28121B6C0 = (byte_28121B6B0 & 1) == 0;
  return result;
}

uint64_t sub_21CF7F758(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t sub_21CF7F7D4(char a1, void *a2, _BYTE *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*static OSVariant.isCustomerBuild.modify(uint64_t a1))()
{
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CF7F8C4@<X0>(void *a1@<X3>, _BYTE *a2@<X4>, _BYTE *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a4 = *a2;
  return result;
}

uint64_t sub_21CF7F928(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7)
{
  v8 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for OSVariant(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OSVariant(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for PrivateCloudComputeTransport(uint64_t a1)
{
  result = qword_28121DCB0;
  if (!qword_28121DCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CF7FAF0(uint64_t a1)
{
  result = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = sub_21D021BE4();
    if (v3 <= 0x3F)
    {
      result = sub_21D0224A4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_21CF7FB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CF9D5E8(&unk_282E91618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E8, &qword_21D0236A8);
  result = swift_arrayDestroy();
  v6 = floor(a1 / 250.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v6 * 250) >> 64 != (250 * v6) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (((v6 + 1) * 250) >> 64 != (250 * (v6 + 1)) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = sub_21D022B04();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CFA3AC4(v7, v9, 0xD000000000000027, 0x800000021D02D0F0, isUniquelyReferenced_nonNull_native);
  v11 = sub_21D022B04();
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v4;
  result = sub_21CFA3AC4(v11, v13, 0xD000000000000023, 0x800000021D02D120, v14);
  v15 = floor(a2 / 15.0);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v15 * 15) >> 64 != (15 * v15) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((v15 + 1) * 15) >> 64 == (15 * (v15 + 1)) >> 63)
  {
    v16 = sub_21D022B04();
    v18 = v17;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CFA3AC4(v16, v18, 0xD00000000000002FLL, 0x800000021D02D150, v19);
    v20 = sub_21D022B04();
    v22 = v21;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CFA3AC4(v20, v22, 0xD00000000000002BLL, 0x800000021D02D180, v23);
    return v24;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21CF7FECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = a8;
  v9[17] = v8;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  v10 = sub_21D021A74();
  v9[18] = v10;
  v9[19] = *(v10 - 8);
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v9[22] = type metadata accessor for PrivateMLRequest(0);
  v9[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF7FFD8, 0, 0);
}

uint64_t sub_21CF7FFD8()
{
  v90 = v0;
  v1 = *(v0 + 136);
  v2 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  *(v0 + 192) = v2;
  v3 = *(v2 + 24);
  if (*(v1 + v3))
  {
    v4 = *(v1 + v3);
  }

  else
  {
    v4 = sub_21CF9D5E8(MEMORY[0x277D84F90]);
  }

  *(v0 + 56) = v4;
  v5 = *(v4 + 16);

  if (v5 && (v6 = sub_21CF9D320(0x6C65646F6DLL, 0xE500000000000000), (v7 & 1) != 0))
  {
    v8 = (*(v4 + 56) + 16 * v6);
  }

  else
  {
    v8 = (*(v0 + 80) + *(*(v0 + 176) + 24));
  }

  v9 = *v8;
  v10 = v8[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = v4;
  sub_21CFA3AC4(v9, v10, 0x6C65646F6DLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  if (*(v4 + 16) && (v12 = sub_21CF9D320(0x72657470616461, 0xE700000000000000), (v13 & 1) != 0))
  {
    v14 = (*(v4 + 56) + 16 * v12);
  }

  else
  {
    v14 = (*(v0 + 80) + *(*(v0 + 176) + 32));
  }

  v15 = *v14;
  v16 = v14[1];

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v4;
  sub_21CFA3AC4(v15, v16, 0x72657470616461, 0xE700000000000000, v17);
  *(v0 + 56) = v4;
  v18 = sub_21D021A84();
  v20 = v19;
  v21 = v18;
  if (*(v4 + 16))
  {
    v22 = sub_21CF9D320(0x636E657265666E69, 0xEC00000064692D65);
    if (v23)
    {
      v24 = (*(v4 + 56) + 16 * v22);
      v21 = *v24;
      v25 = v24[1];

      v20 = v25;
    }
  }

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v4;
  sub_21CFA3AC4(v21, v20, 0x636E657265666E69, 0xEC00000064692D65, v26);
  if (*(v4 + 16) && (v27 = sub_21CF9D320(0x65662D656C707061, 0xEF64696572757461), (v28 & 1) != 0))
  {
    v29 = (*(v4 + 56) + 16 * v27);
  }

  else
  {
    v29 = (*(v0 + 80) + *(*(v0 + 176) + 20));
  }

  v30 = *v29;
  v31 = v29[1];

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v4;
  sub_21CFA3AC4(v30, v31, 0x65662D656C707061, 0xEF64696572757461, v32);
  *(v0 + 56) = v4;
  if (*(v4 + 16) && (v33 = sub_21CF9D320(0xD000000000000010, 0x800000021D02D470), (v34 & 1) != 0))
  {
    v35 = *(*(v4 + 56) + 16 * v33);

    v37 = v35;
  }

  else
  {
    v38 = (*(v0 + 80) + *(*(v0 + 176) + 68));
    if (*(v38 + 4))
    {
      v39 = 0;
    }

    else
    {
      v39 = *v38;
    }

    *(v0 + 448) = v39;
    v37 = sub_21D022B04();
  }

  v40 = *(v0 + 176);
  v41 = *(v0 + 80);
  v42 = sub_21CF82460(v37, v36);
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  v45 = sub_21CF7FB9C(*(v41 + *(v40 + 112)), v44);
  if (*(v45 + 16) && (v46 = sub_21CF9D320(0xD000000000000027, 0x800000021D02D0F0), (v47 & 1) != 0))
  {
    v48 = *(*(v45 + 56) + 16 * v46);

    v50 = v48;
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  sub_21CF9FC9C(v50, v49, 0xD000000000000027, 0x800000021D02D0F0);
  if (*(v45 + 16) && (v51 = sub_21CF9D320(0xD000000000000023, 0x800000021D02D120), (v52 & 1) != 0))
  {
    v53 = *(*(v45 + 56) + 16 * v51);

    v55 = v53;
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  sub_21CF9FC9C(v55, v54, 0xD000000000000023, 0x800000021D02D120);
  if (*(v45 + 16) && (v56 = sub_21CF9D320(0xD00000000000002FLL, 0x800000021D02D150), (v57 & 1) != 0))
  {
    v58 = *(*(v45 + 56) + 16 * v56);

    v60 = v58;
  }

  else
  {
    v60 = 0;
    v59 = 0;
  }

  sub_21CF9FC9C(v60, v59, 0xD00000000000002FLL, 0x800000021D02D150);
  if (*(v45 + 16) && (v61 = sub_21CF9D320(0xD00000000000002BLL, 0x800000021D02D180), (v62 & 1) != 0))
  {
    v63 = (*(v45 + 56) + 16 * v61);
    v64 = *v63;
    v65 = v63[1];
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  sub_21CF9FC9C(v64, v65, 0xD00000000000002BLL, 0x800000021D02D180);
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6B0)
  {
    v66 = *(v0 + 184);
    v67 = *(v0 + 80);
    type metadata accessor for PrivateCloudComputeTransport(0);
    sub_21CF8F644(v67, v66, type metadata accessor for PrivateMLRequest);
    v68 = sub_21D022484();
    v69 = sub_21D0228D4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 184);
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v89 = v73;
      *v72 = 136315138;
      sub_21CF8F5F8(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v74 = sub_21D022B04();
      v76 = v75;
      sub_21CF8F53C(v71, type metadata accessor for PrivateMLRequest);
      v77 = sub_21CF9703C(v74, v76, &v89);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_21CF72000, v68, v69, "%s Running internal build, applying overrides.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x223D3ADE0](v73, -1, -1);
      MEMORY[0x223D3ADE0](v72, -1, -1);
    }

    else
    {

      sub_21CF8F53C(v71, type metadata accessor for PrivateMLRequest);
    }

    v79 = sub_21D021A54();
    v78 = sub_21CFB6F58(v79, v80, *(v0 + 56));

    *(v0 + 56) = v78;
  }

  else
  {
    v78 = *(v0 + 56);
  }

  *(v0 + 200) = v78;
  v81 = sub_21CF82760(v78);
  *(v0 + 208) = 0;
  *(v0 + 216) = v81;
  *(v0 + 224) = v82;
  v83 = type metadata accessor for PrivateCloudComputeTransport(0);
  *(v0 + 232) = v83;
  *(v0 + 452) = *(v83 + 24);
  v84 = sub_21D022484();
  v85 = sub_21D0228B4();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_21CF72000, v84, v85, "withPrivateMLRequest: Attempting to dequeue a connection.", v86, 2u);
    MEMORY[0x223D3ADE0](v86, -1, -1);
  }

  if (qword_27CE44EC0 != -1)
  {
    swift_once();
  }

  v87 = qword_27CE537D8;
  *(v0 + 240) = qword_27CE537D8;

  return MEMORY[0x2822009F8](sub_21CF80910, v87, 0);
}

uint64_t sub_21CF80910()
{
  v0[31] = sub_21CF9A318(v0[27], v0[28]);

  return MEMORY[0x2822009F8](sub_21CF8098C, 0, 0);
}

uint64_t sub_21CF8098C()
{
  if (*(v0 + 248))
  {

    v1 = sub_21D022484();
    v2 = sub_21D0228B4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_21CF72000, v1, v2, "Using Cached Connection.", v3, 2u);
      MEMORY[0x223D3ADE0](v3, -1, -1);
    }

    if (qword_27CE44EC8 != -1)
    {
      swift_once();
    }

    v4 = qword_27CE537E0;
    *(v0 + 256) = qword_27CE537E0;
    *(v0 + 264) = sub_21D021A54();
    *(v0 + 272) = v5;
    v6 = sub_21CF80DAC;
  }

  else
  {
    v7 = sub_21D022484();
    v8 = sub_21D0228B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21CF72000, v7, v8, "Running No Cached Connection.", v9, 2u);
      MEMORY[0x223D3ADE0](v9, -1, -1);
    }

    v10 = *(v0 + 200);
    v11 = *(v0 + 168);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 80);

    v15 = sub_21D021C54();
    *(v0 + 304) = v15;
    *(v0 + 312) = *(v15 - 8);
    *(v0 + 320) = swift_task_alloc();
    v16 = *(v12 + 16);
    v16(v11, v14, v13);
    v17 = *(v10 + 16);

    if (v17 && (sub_21CF9D320(0x65662D656C707061, 0xEF64696572757461), (v18 & 1) != 0))
    {
      v19 = *(v0 + 176);
      v20 = *(v0 + 80);
    }

    else
    {
      v19 = *(v0 + 176);
      v20 = *(v0 + 80);
    }

    v21 = *(v0 + 160);
    v22 = *(v0 + 144);
    v23 = *(v19 + 88);
    *(v0 + 456) = v23;

    v16(v21, v20 + v23, v22);
    if (*(v10 + 16))
    {
      sub_21CF9D320(0x75622D656C707061, 0xEE006469656C646ELL);
    }

    sub_21D021BF4();
    if (qword_27CE44EC8 != -1)
    {
      swift_once();
    }

    v4 = qword_27CE537E0;
    *(v0 + 328) = qword_27CE537E0;
    *(v0 + 336) = sub_21D021A54();
    *(v0 + 344) = v24;
    v6 = sub_21CF8106C;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_21CF80DAC()
{
  v1 = v0[26];
  sub_21CFA0500(v0[31], v0[33], v0[34]);
  v0[35] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21CF81BAC, 0, 0);
  }

  else
  {
    v2 = v0[31];

    v3 = swift_task_alloc();
    v0[36] = v3;
    *v3 = v0;
    v3[1] = sub_21CF80EC8;
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];

    return sub_21CF82A08(v10, v2, v8, v9, v6, v7, v4, v5);
  }
}

uint64_t sub_21CF80EC8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_21CF81D40;
  }

  else
  {
    v2 = sub_21CF80FDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF80FDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CF8106C()
{
  v0[44] = sub_21CFA18E8(v0[42], v0[43]);

  return MEMORY[0x2822009F8](sub_21CF810E8, 0, 0);
}

uint64_t sub_21CF810E8(uint64_t a1)
{
  v2 = v1[44];
  v3 = sub_21D022484();
  v4 = sub_21D0228B4();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CF72000, v3, v4, "Using cached session...", v6, 2u);
      MEMORY[0x223D3ADE0](v6, -1, -1);
    }

    v7 = swift_task_alloc();
    v1[45] = v7;
    *v7 = v1;
    v7[1] = sub_21CF813AC;
    v8 = v1[14];
    v9 = v1[15];
    v10 = v1[12];
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];
    v14 = v1[9];

    return sub_21CF82A08(v14, v2, v12, v13, v10, v11, v8, v9);
  }

  else
  {
    if (v5)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21CF72000, v3, v4, "No cached Session.", v16, 2u);
      MEMORY[0x223D3ADE0](v16, -1, -1);
    }

    v17 = v1[39];
    v18 = v1[38];
    v19 = v1[29];
    v20 = v1[17];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620);
    v21 = swift_task_alloc();
    v1[47] = v21;
    (*(v17 + 16))();
    (*(v17 + 56))(v21, 0, 1, v18);
    v22 = *(v20 + *(v19 + 20));
    type metadata accessor for PrivateMLClientCloudComputeConnection(0);
    swift_allocObject();

    v23 = swift_task_alloc();
    v1[48] = v23;
    *v23 = v1;
    v23[1] = sub_21CF8157C;

    return sub_21CF90F00(v21, v22, 0, 0);
  }
}

uint64_t sub_21CF813AC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_21CF81ED4;
  }

  else
  {
    v2 = sub_21CF814C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF814C0()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CF8157C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_21CF81824;
  }

  else
  {

    v4 = sub_21CF81698;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CF81698(uint64_t a1)
{
  v2 = v1[41];
  v1[51] = sub_21D021A54();
  v1[52] = v3;

  return MEMORY[0x2822009F8](sub_21CF81710, v2, 0);
}

uint64_t sub_21CF81710()
{
  v1 = v0[50];
  sub_21CFA0500(v0[49], v0[51], v0[52]);
  v0[53] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21CF8208C, 0, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[54] = v2;
    *v2 = v0;
    v2[1] = sub_21CF819DC;
    v3 = v0[49];
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];

    return sub_21CF82A08(v10, v3, v8, v9, v6, v7, v4, v5);
  }
}

uint64_t sub_21CF81824()
{

  v1 = v0[50];
  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "failed in no cached connection due to: %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];

  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CF819DC()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_21CF82244;
  }

  else
  {
    v2 = sub_21CF81AF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF81AF0()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CF81BAC()
{
  v1 = *(v0 + 280);

  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "failed cached connection due to error: %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CF81D40()
{
  v1 = *(v0 + 296);

  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "failed cached connection due to error: %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CF81ED4()
{

  v1 = v0[46];
  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "failed in no cached connection due to: %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];

  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CF8208C()
{

  v1 = v0[53];
  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "failed in no cached connection due to: %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];

  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CF82244()
{

  v1 = v0[55];
  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "failed in no cached connection due to: %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];

  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CF823FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21CF9D320(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

unint64_t sub_21CF82460(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_21D0229D4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_21CF8E878(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_21CF82760(uint64_t a1)
{
  v1 = 0xD000000000000023;
  v2 = "NO_PREPROCESSING";
  if (*(a1 + 16) && (v4 = sub_21CF9D320(0x65662D656C707061, 0xEF64696572757461), (v5 & 1) != 0))
  {
    v2 = " no apple-featureid";
    if (*(a1 + 16))
    {
      v6 = *(*(a1 + 56) + 16 * v4);

      v7 = sub_21CF9D320(0x6C65646F6DLL, 0xE500000000000000);
      if (v8)
      {
        v2 = "generateCacheKey no model";
        if (*(a1 + 16))
        {
          v9 = (*(a1 + 56) + 16 * v7);
          v11 = *v9;
          v10 = v9[1];

          v12 = sub_21CF9D320(0x72657470616461, 0xE700000000000000);
          if (v13)
          {
            v14 = (*(a1 + 56) + 16 * v12);
            v16 = *v14;
            v15 = v14[1];
            v17 = *(a1 + 16);

            if (v17)
            {
              v18 = sub_21CF9D320(0x636E657265666E69, 0xEC00000064692D65);
              if (v19)
              {
                v20 = (*(a1 + 56) + 16 * v18);
                v21 = v20[1];
                v25 = *v20;

                MEMORY[0x223D3A110](v11, v10);

                MEMORY[0x223D3A110](v16, v15);

                MEMORY[0x223D3A110](v25, v21);

                return v6;
              }
            }

            v2 = "generateCacheKey no adaptor";
            v23 = 4;
          }

          else
          {
            v23 = 3;
            v1 = 0xD00000000000001BLL;
          }
        }

        else
        {
          v23 = 3;
          v1 = 0xD00000000000001BLL;
        }
      }

      else
      {
        v23 = 2;
        v1 = 0xD000000000000019;
      }
    }

    else
    {
      v23 = 2;
      v1 = 0xD000000000000019;
    }
  }

  else
  {
    v23 = 1;
  }

  sub_21CF8F278();
  swift_allocError();
  *v24 = v1;
  *(v24 + 8) = v2 | 0x8000000000000000;
  *(v24 + 16) = v23;
  return swift_willThrow();
}

uint64_t sub_21CF82A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[6] = v18;
  v9[7] = v8;
  v9[4] = a7;
  v9[5] = a8;
  v9[2] = a1;
  v9[3] = a2;
  type metadata accessor for PrivateMLRequest.Response(0);
  v14 = swift_task_alloc();
  v9[8] = v14;
  v15 = swift_task_alloc();
  v9[9] = v15;
  *v15 = v9;
  v15[1] = sub_21CF82B18;

  return sub_21CF903E0(v14, a3, a4, a5, a6);
}

uint64_t sub_21CF82B18()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21CF82F80;
  }

  else
  {
    v2 = sub_21CF82C2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF82C2C()
{
  type metadata accessor for PrivateCloudComputeTransport(0);
  v1 = sub_21D022484();
  v2 = sub_21D0228B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CF72000, v1, v2, "Succeded in creating privateMLResponse.", v3, 2u);
    MEMORY[0x223D3ADE0](v3, -1, -1);
  }

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v14 = *(v0 + 32);

  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v14;
  *(v8 + 40) = v4;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_21CF82DD8;
  v11 = *(v0 + 48);
  v12 = *(v0 + 16);

  return MEMORY[0x282200830](v12, &unk_21D023640, v8, sub_21CF8F38C, v9, 0, 0, v11);
}

uint64_t sub_21CF82DD8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21CF830EC;
  }

  else
  {

    v2 = sub_21CF82EFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF82EFC()
{
  sub_21CF8F53C(*(v0 + 64), type metadata accessor for PrivateMLRequest.Response);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CF82F80()
{
  v1 = *(v0 + 80);
  type metadata accessor for PrivateCloudComputeTransport(0);
  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "failed no cached connection due to error: %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CF830EC()
{
  v1 = v0[8];

  sub_21CF8F53C(v1, type metadata accessor for PrivateMLRequest.Response);
  v2 = v0[14];
  type metadata accessor for PrivateCloudComputeTransport(0);
  v3 = v2;
  v4 = sub_21D022484();
  v5 = sub_21D0228C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_21CF72000, v4, v5, "failed no cached connection due to error: %@", v6, 0xCu);
    sub_21CF7F200(v7, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v7, -1, -1);
    MEMORY[0x223D3ADE0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_21CF83288(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_21CF83390;

  return v9(a1, a4);
}

uint64_t sub_21CF83390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_21CF83484()
{
  type metadata accessor for PrivateCloudComputeTransport(0);
  v0 = sub_21D022484();
  v1 = sub_21D0228B4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21CF72000, v0, v1, "Cancelling non cached task.", v2, 2u);
    MEMORY[0x223D3ADE0](v2, -1, -1);
  }

  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6[0] = xmmword_27CE46910;
  v6[1] = unk_27CE46920;
  v7 = byte_27CE46930;
  sub_21CF7F198(v6, &v5, &qword_27CE45288, &qword_21D023970);
  v3 = sub_21D01561C();
  v4 = sub_21CF7F200(v6, &qword_27CE45288, &qword_21D023970);
  if ((v3 & 1) == 0)
  {
    sub_21CF90D60(v4);
  }
}

uint64_t sub_21CF835DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 456) = a8;
  *(v9 + 464) = v8;
  *(v9 + 57) = v20;
  *(v9 + 440) = a6;
  *(v9 + 448) = a7;
  *(v9 + 424) = a4;
  *(v9 + 432) = a5;
  *(v9 + 408) = a2;
  *(v9 + 416) = a3;
  *(v9 + 400) = a1;
  v10 = sub_21D021A74();
  *(v9 + 472) = v10;
  *(v9 + 480) = *(v10 - 8);
  *(v9 + 488) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540);
  *(v9 + 496) = swift_task_alloc();
  v11 = sub_21D021B14();
  *(v9 + 504) = v11;
  *(v9 + 512) = *(v11 - 8);
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  v12 = sub_21D021B34();
  *(v9 + 536) = v12;
  *(v9 + 544) = *(v12 - 8);
  *(v9 + 552) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452F8, &qword_21D0236C8);
  *(v9 + 560) = v13;
  *(v9 + 568) = *(v13 - 8);
  *(v9 + 576) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45300, &qword_21D0236D0);
  *(v9 + 584) = v14;
  *(v9 + 592) = *(v14 - 8);
  *(v9 + 600) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45308, &qword_21D0236D8);
  *(v9 + 608) = swift_task_alloc();
  v15 = sub_21D021B54();
  *(v9 + 616) = v15;
  *(v9 + 624) = *(v15 - 8);
  *(v9 + 632) = swift_task_alloc();
  v16 = type metadata accessor for PrivateCloudComputeTransport(0);
  *(v9 + 640) = v16;
  v17 = *(v16 - 8);
  *(v9 + 648) = v17;
  *(v9 + 656) = *(v17 + 64);
  *(v9 + 664) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  *(v9 + 672) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF839B4, 0, 0);
}

uint64_t sub_21CF839B4()
{
  v151 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[57];
  v6 = v0[58];
  v144 = v0[56];
  v7 = v0[54];
  v146 = v0[53];
  v148 = v1;
  v8 = v0[52];
  v9 = sub_21D022774();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  sub_21CF8F644(v6, v2, type metadata accessor for PrivateCloudComputeTransport);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = v13 + v10;
  v15 = v0;
  sub_21CF8F6AC(v2, v14, type metadata accessor for PrivateCloudComputeTransport);
  *(v13 + v11) = v8;
  v16 = (v13 + v12);
  *v16 = v144;
  v16[1] = v5;
  v17 = (v13 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v146;
  v17[1] = v7;

  sub_21D00F69C(0, 0, v148, &unk_21D0236F0, v13);

  if (!*(v8 + 16) || (v18 = sub_21CF9D320(0x636E657265666E69, 0xEC00000064692D65), (v19 & 1) == 0))
  {
    v23 = sub_21D022484();
    v24 = sub_21D0228B4();
    if (!os_log_type_enabled(v23, v24))
    {
LABEL_7:

      goto LABEL_8;
    }

    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = 2048;
    *(v25 + 12) = 2048;
    *(v25 + 14) = 2048;
    _os_log_impl(&dword_21CF72000, v23, v24, "PrivateCloudComputePrivatedMLClientTransport prewarm - fallback to default inputTokenCountEstimate=%ld and default heuristicInputTokenCount=%ld", v25, 0x16u);
    v26 = v25;
LABEL_6:
    MEMORY[0x223D3ADE0](v26, -1, -1);
    goto LABEL_7;
  }

  v20 = (*(v0[52] + 56) + 16 * v18);
  v22 = *v20;
  v21 = v20[1];
  sub_21D021AC4();
  swift_allocObject();

  sub_21D021AB4();
  sub_21D021AA4();

  if (!v0[22])
  {
    sub_21CF7F200((v0 + 19), &qword_27CE45320, &qword_21D023700);

    v23 = sub_21D022484();
    v103 = sub_21D0228B4();

    if (!os_log_type_enabled(v23, v103))
    {

      goto LABEL_8;
    }

    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v150[0] = v105;
    *v104 = 136315138;
    v106 = sub_21CF9703C(v22, v21, v150);

    *(v104 + 4) = v106;
    _os_log_impl(&dword_21CF72000, v23, v103, "Failed to get resource bundle for inferenceID:%s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x223D3ADE0](v105, -1, -1);
    v26 = v104;
    goto LABEL_6;
  }

  v29 = v0[78];

  sub_21CF73FC8((v15 + 152), (v15 + 7));
  sub_21CF8F87C((v15 + 7), (v15 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45328, &qword_21D023708);
  v30 = swift_dynamicCast();
  v31 = *(v29 + 56);
  if (v30)
  {
    v32 = *(v15 + 79);
    v33 = *(v15 + 78);
    v34 = *(v15 + 77);
    v35 = *(v15 + 76);
    v36 = *(v15 + 75);
    v37 = *(v15 + 74);
    v38 = *(v15 + 73);
    v31(v35, 0, 1, v34);
    (*(v33 + 32))(v32, v35, v34);
    sub_21D021B44();
    sub_21D021AE4();
    (*(v37 + 8))(v36, v38);
    if (*(v15 + 37))
    {
      sub_21CF73FC8(v15 + 17, v15 + 232);
      __swift_project_boxed_opaque_existential_1(v15 + 29, *(v15 + 32));
      sub_21D021AD4();
      v117 = sub_21D022484();
      v118 = sub_21D0228B4();
      if (os_log_type_enabled(v117, v118))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_21CF72000, v117, v118, "Successfully fetched asset server configuration", v120, 2u);
        MEMORY[0x223D3ADE0](v120, -1, -1);
      }

      sub_21D021A94();
      v121 = sub_21D022484();
      v122 = sub_21D0228B4();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_21CF72000, v121, v122, "Successfully got serverAsset metadata", v123, 2u);
        MEMORY[0x223D3ADE0](v123, -1, -1);
      }

      v147 = *(v15 + 77);
      v149 = *(v15 + 79);
      v143 = *(v15 + 72);
      v145 = *(v15 + 78);
      v141 = *(v15 + 71);
      v142 = *(v15 + 70);
      v124 = *(v15 + 69);
      v125 = *(v15 + 68);
      v140 = *(v15 + 67);
      v126 = *(v15 + 66);
      v127 = *(v15 + 65);
      v128 = *(v15 + 63);
      v129 = *(v15 + 64);

      v130 = sub_21D021B24();
      v131 = MEMORY[0x223D395C0](v130);
      v133 = v132;
      v134 = *(v129 + 8);
      v134(v126, v128);
      if (v133)
      {
        v47 = 2048;
      }

      else
      {
        v47 = v131;
      }

      v135 = sub_21D021B24();
      v136 = MEMORY[0x223D395D0](v135);
      v138 = v137;
      v134(v127, v128);
      (*(v125 + 8))(v124, v140);
      (*(v141 + 8))(v143, v142);
      (*(v145 + 8))(v149, v147);
      __swift_destroy_boxed_opaque_existential_0(v15 + 14);
      if (v138)
      {
        v139 = 2048;
      }

      else
      {
        v139 = v136;
      }

      __swift_destroy_boxed_opaque_existential_0(v15 + 29);
      *(v15 + 85) = 0;
      if (qword_28121E0C0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v39 = unk_28121B261;
      v40 = *&qword_28121B258;
      v15[1] = xmmword_28121B248;
      v15[2] = v40;
      *(v15 + 41) = v39;
      sub_21CF7F198((v15 + 1), (v15 + 4), &qword_27CE45318, &qword_21D0236F8);
      v41 = sub_21D016038();
      v43 = v42;
      sub_21CF7F200((v15 + 1), &qword_27CE45318, &qword_21D0236F8);
      if ((v43 & 1) == 0)
      {
        v44 = sub_21D022484();
        v45 = sub_21D0228B4();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 134217984;
          *(v46 + 4) = v41;
          _os_log_impl(&dword_21CF72000, v44, v45, "Setting input token count estimate from user default inputTokenCountEstimate=%ld", v46, 0xCu);
          MEMORY[0x223D3ADE0](v46, -1, -1);
        }

        v47 = v41;
      }

      *(v15 + 48) = *(v15 + 52);

      v48 = sub_21CF7FB9C(v47, 4096);
      *(v15 + 86) = v48;
      if (*(v48 + 16) && (v49 = sub_21CF9D320(0xD000000000000027, 0x800000021D02D0F0), (v50 & 1) != 0))
      {
        v51 = *(*(v48 + 56) + 16 * v49);

        v53 = v51;
      }

      else
      {
        v53 = 0;
        v52 = 0;
      }

      sub_21CF9FC9C(v53, v52, 0xD000000000000027, 0x800000021D02D0F0);
      if (*(v48 + 16) && (v54 = sub_21CF9D320(0xD000000000000023, 0x800000021D02D120), (v55 & 1) != 0))
      {
        v56 = *(*(v48 + 56) + 16 * v54);

        v58 = v56;
      }

      else
      {
        v58 = 0;
        v57 = 0;
      }

      sub_21CF9FC9C(v58, v57, 0xD000000000000023, 0x800000021D02D120);
      if (*(v48 + 16) && (v59 = sub_21CF9D320(0xD00000000000002FLL, 0x800000021D02D150), (v60 & 1) != 0))
      {
        v61 = *(*(v48 + 56) + 16 * v59);

        v63 = v61;
      }

      else
      {
        v63 = 0;
        v62 = 0;
      }

      sub_21CF9FC9C(v63, v62, 0xD00000000000002FLL, 0x800000021D02D150);
      if (*(v48 + 16) && (v64 = sub_21CF9D320(0xD00000000000002BLL, 0x800000021D02D180), (v65 & 1) != 0))
      {
        v66 = *(*(v48 + 56) + 16 * v64);

        v68 = v66;
      }

      else
      {
        v68 = 0;
        v67 = 0;
      }

      v69 = *(v15 + 57);
      sub_21CF9FC9C(v68, v67, 0xD00000000000002BLL, 0x800000021D02D180);
      *(v15 + 49) = 4096;
      v70 = sub_21D022B04();
      v72 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150[0] = *(v15 + 48);
      sub_21CFA3AC4(v70, v72, 0xD000000000000010, 0x800000021D02D470, isUniquelyReferenced_nonNull_native);
      *(v15 + 48) = v150[0];
      if (v69)
      {
        v74 = sub_21CF7FB9C(v139, 4096);
        if (*(v74 + 16) && (v75 = sub_21CF9D320(0xD000000000000027, 0x800000021D02D0F0), (v76 & 1) != 0))
        {
          v77 = *(*(v74 + 56) + 16 * v75);

          v79 = v77;
        }

        else
        {
          v79 = 0;
          v78 = 0;
        }

        sub_21CF9FC9C(v79, v78, 0xD000000000000031, 0x800000021D02D610);
        if (*(v74 + 16) && (v80 = sub_21CF9D320(0xD000000000000023, 0x800000021D02D120), (v81 & 1) != 0))
        {
          v82 = (*(v74 + 56) + 16 * v80);
          v83 = *v82;
          v84 = v82[1];
        }

        else
        {
          v83 = 0;
          v84 = 0;
        }

        sub_21CF9FC9C(v83, v84, 0xD00000000000002DLL, 0x800000021D02D650);
        v85 = sub_21D022484();
        v86 = sub_21D0228B4();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v150[0] = v88;
          *v87 = 136315138;
          swift_beginAccess();

          v89 = sub_21D022534();
          v91 = v90;

          v92 = sub_21CF9703C(v89, v91, v150);

          *(v87 + 4) = v92;
          _os_log_impl(&dword_21CF72000, v85, v86, "PrivateCloudComputePrivatedMLClientTransport imminent prewarm overridenWorkloadParameters=%s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x223D3ADE0](v88, -1, -1);
          MEMORY[0x223D3ADE0](v87, -1, -1);
        }
      }

      v93 = *(v15 + 58);
      *(v15 + 87) = *(v93 + *(*(v15 + 80) + 20));
      v94 = (v93 + *(type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0) + 20));
      v95 = *v94;
      v96 = v94[1];
      swift_beginAccess();
      v97 = *(v15 + 48);
      *(v15 + 88) = v97;

      v98 = swift_task_alloc();
      *(v15 + 89) = v98;
      *v98 = v15;
      v98[1] = sub_21CF84A24;
      v99 = *(v15 + 56);
      v100 = *(v15 + 57);
      v101 = *(v15 + 53);
      v102 = *(v15 + 54);

      return MEMORY[0x2821A1E30](v95, v96, v97, v99, v100, v101, v102);
    }

    sub_21CF7F200((v15 + 17), &qword_27CE45330, &qword_21D023710);
    v111 = sub_21D022484();
    v112 = sub_21D0228B4();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_21CF72000, v111, v112, "Failed to get server configuration", v113, 2u);
      MEMORY[0x223D3ADE0](v113, -1, -1);
    }

    v114 = *(v15 + 79);
    v115 = *(v15 + 78);
    v116 = *(v15 + 77);

    (*(v115 + 8))(v114, v116);
  }

  else
  {
    v107 = *(v15 + 76);
    v31(v107, 1, 1, *(v15 + 77));
    sub_21CF7F200(v107, &qword_27CE45308, &qword_21D0236D8);
    v108 = sub_21D022484();
    v109 = sub_21D0228B4();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_21CF72000, v108, v109, "Failed to cast bundle to LLMBundle", v110, 2u);
      MEMORY[0x223D3ADE0](v110, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v15 + 14);
LABEL_8:

  v27 = *(v15 + 1);

  return v27();
}

uint64_t sub_21CF84A24()
{

  return MEMORY[0x2822009F8](sub_21CF84B3C, 0, 0);
}

uint64_t sub_21CF84B3C()
{
  if ((*(v0 + 57) & 1) == 0)
  {

    v13 = sub_21D022484();
    v14 = sub_21D0228B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21CF72000, v13, v14, "PrivateCloudComputePrivatedMLClientTransport prewarm - default", v15, 2u);
      MEMORY[0x223D3ADE0](v15, -1, -1);
    }

    goto LABEL_12;
  }

  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = sub_21D021C54();
  *(v0 + 720) = v4;
  v5 = *(v4 - 8);
  *(v0 + 728) = v5;
  v26 = swift_task_alloc();
  *(v0 + 736) = v26;
  sub_21D021A44();
  result = (*(v2 + 48))(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v7 = *(v0 + 704);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  v10 = *(v0 + 472);
  v11 = *(v0 + 440);

  (*(v8 + 16))(v9, v11, v10);
  v12 = *(v7 + 16);

  if (v12)
  {
    sub_21CF9D320(0x75622D656C707061, 0xEE006469656C646ELL);
  }

  v25 = *(v0 + 680);

  sub_21D021BF4();

  *(v0 + 744) = sub_21CF82760(v16);
  *(v0 + 752) = v17;
  if (v25)
  {

    v18 = sub_21D022484();
    v19 = sub_21D0228C4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21CF72000, v18, v19, "PrivateCloudComputePrivatedMLClientTransport prewarm - failed pccc connection", v20, 2u);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

LABEL_12:

    v21 = *(v0 + 8);

    return v21();
  }

  v22 = *(v0 + 696);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620);
  v23 = swift_task_alloc();
  *(v0 + 760) = v23;
  (*(v5 + 16))(v23, v26, v4);
  (*(v5 + 56))(v23, 0, 1, v4);
  type metadata accessor for PrivateMLClientCloudComputeConnection(0);
  swift_allocObject();

  v24 = swift_task_alloc();
  *(v0 + 768) = v24;
  *v24 = v0;
  v24[1] = sub_21CF8509C;

  return sub_21CF90F00(v23, v22, 0, 0);
}

uint64_t sub_21CF8509C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = sub_21CF852FC;
  }

  else
  {

    v4 = sub_21CF851C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CF851C4()
{
  if (qword_27CE44EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE537D8;
  *(v0 + 792) = qword_27CE537D8;

  return MEMORY[0x2822009F8](sub_21CF8525C, v1, 0);
}

uint64_t sub_21CF8525C()
{
  v1 = v0[98];
  sub_21CF98B58(v0[97], v0[93], v0[94]);
  v0[100] = v1;

  if (v1)
  {
    v2 = sub_21CF855EC;
  }

  else
  {
    v2 = sub_21CF854B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF852FC()
{

  v1 = v0[98];
  v2 = sub_21D022484();
  v3 = sub_21D0228C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PrivateCloudComputePrivatedMLClientTransport prewarm - failed pccc connection", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  (*(v0[91] + 8))(v0[92], v0[90]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CF854B8()
{

  (*(v0[91] + 8))(v0[92], v0[90]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21CF855EC()
{

  v1 = v0[100];
  v2 = sub_21D022484();
  v3 = sub_21D0228C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PrivateCloudComputePrivatedMLClientTransport prewarm - failed pccc connection", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  (*(v0[91] + 8))(v0[92], v0[90]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CF857A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_21CF857D8, 0, 0);
}

uint64_t sub_21CF857D8()
{
  v1 = v0[2];
  type metadata accessor for PrivateCloudComputeTransport(0);
  v2 = (v1 + *(type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0) + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_21CF858AC;
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return MEMORY[0x2821A1E28](v3, v4, v10, v8, v9, v6, v7);
}

uint64_t sub_21CF858AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21CF859A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, unint64_t a5@<X8>)
{
  v1183 = a4;
  v1151 = a2;
  v1152 = a3;
  v1223 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  MEMORY[0x28223BE20](v6 - 8);
  v1112 = &v1106 - v7;
  v1116 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v1111 = *(v1116 - 8);
  v8 = MEMORY[0x28223BE20](v1116);
  v1113 = &v1106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v1115 = &v1106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
  MEMORY[0x28223BE20](v11 - 8);
  v1214 = &v1106 - v12;
  v1233 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v1132 = *(v1233 - 8);
  MEMORY[0x28223BE20](v1233);
  v1213 = (&v1106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1226 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v1131 = *(v1226 - 8);
  v14 = MEMORY[0x28223BE20](v1226);
  v1188 = &v1106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v1207 = &v1106 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v1206 = &v1106 - v19;
  MEMORY[0x28223BE20](v18);
  v1217 = &v1106 - v20;
  v1212 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v21 = MEMORY[0x28223BE20](v1212);
  v1202 = (&v1106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v1208 = &v1106 - v24;
  MEMORY[0x28223BE20](v23);
  v1195 = &v1106 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v1201 = &v1106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v1194 = &v1106 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v1193 = &v1106 - v32;
  MEMORY[0x28223BE20](v31);
  v1192 = &v1106 - v33;
  v1191 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v34 = MEMORY[0x28223BE20](v1191);
  v1190 = &v1106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v1189 = &v1106 - v36;
  v1218 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0);
  v1211 = *(v1218 - 8);
  v37 = MEMORY[0x28223BE20](v1218);
  v1231 = &v1106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v1243 = (&v1106 - v39);
  v1178 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
  v1174 = *(v1178 - 8);
  v40 = MEMORY[0x28223BE20](v1178);
  v1185 = &v1106 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v1234 = &v1106 - v42;
  v1118 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  v43 = MEMORY[0x28223BE20](v1118);
  v1119 = &v1106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v1120 = &v1106 - v45;
  v1196 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable(0);
  v1186 = *(v1196 - 1);
  v46 = MEMORY[0x28223BE20](v1196);
  v1209 = (&v1106 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v1205 = (&v1106 - v48);
  v1135 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);
  v49 = MEMORY[0x28223BE20](v1135);
  v1117 = &v1106 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v1187 = (&v1106 - v51);
  v1242 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  v1241 = *(v1242 - 1);
  MEMORY[0x28223BE20](v1242);
  v1261 = &v1106 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1198 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v1173 = *(v1198 - 8);
  MEMORY[0x28223BE20](v1198);
  v1175 = &v1106 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1236 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  MEMORY[0x28223BE20](v1236);
  v1153 = &v1106 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1235 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  MEMORY[0x28223BE20](v1235);
  v1138 = &v1106 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  v57 = MEMORY[0x28223BE20](v56 - 8);
  v1134 = &v1106 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v1133 = &v1106 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v1220 = (&v1106 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v1172 = &v1106 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v1170 = &v1106 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v1167 = &v1106 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v1164 = &v1106 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v1180 = (&v1106 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v1130 = &v1106 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v1158 = &v1106 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v1156 = &v1106 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v1232 = &v1106 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v1124 = &v1106 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v1240 = &v1106 - v84;
  MEMORY[0x28223BE20](v83);
  v1126 = &v1106 - v85;
  v1245 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v1230 = *(v1245 - 8);
  v86 = MEMORY[0x28223BE20](v1245);
  v1137 = &v1106 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v1136 = &v1106 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v1204 = (&v1106 - v91);
  v92 = MEMORY[0x28223BE20](v90);
  v1171 = &v1106 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v1168 = &v1106 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v1165 = &v1106 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v1162 = &v1106 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v1160 = &v1106 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v1129 = &v1106 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v1157 = &v1106 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v1154 = &v1106 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v1123 = &v1106 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v1122 = &v1106 - v111;
  MEMORY[0x28223BE20](v110);
  v1121 = &v1106 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v114 = MEMORY[0x28223BE20](v113 - 8);
  v1200 = &v1106 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x28223BE20](v114);
  v1142 = &v1106 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v1141 = &v1106 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v1140 = &v1106 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v1139 = &v1106 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v1216 = &v1106 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v1150 = &v1106 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v1148 = &v1106 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v1146 = &v1106 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v1144 = &v1106 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v1169 = &v1106 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v1166 = &v1106 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1163 = &v1106 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v1161 = &v1106 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v1179 = &v1106 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v1128 = &v1106 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v1155 = &v1106 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v1229 = &v1106 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v1237 = &v1106 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v1125 = &v1106 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v1228 = &v1106 - v155;
  MEMORY[0x28223BE20](v154);
  v157 = &v1106 - v156;
  v1239 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v1225 = *(v1239 - 8);
  v158 = MEMORY[0x28223BE20](v1239);
  v1110 = &v1106 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = MEMORY[0x28223BE20](v158);
  v1107 = &v1106 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v1106 = &v1106 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v1109 = &v1106 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v1108 = &v1106 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v1114 = &v1106 - v169;
  v170 = MEMORY[0x28223BE20](v168);
  v1215 = &v1106 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v1182 = &v1106 - v173;
  v174 = MEMORY[0x28223BE20](v172);
  v1181 = &v1106 - v175;
  v176 = MEMORY[0x28223BE20](v174);
  v1177 = &v1106 - v177;
  v178 = MEMORY[0x28223BE20](v176);
  v1176 = &v1106 - v179;
  v180 = MEMORY[0x28223BE20](v178);
  v1219 = (&v1106 - v181);
  v182 = MEMORY[0x28223BE20](v180);
  v1149 = &v1106 - v183;
  v184 = MEMORY[0x28223BE20](v182);
  v1147 = &v1106 - v185;
  v186 = MEMORY[0x28223BE20](v184);
  v1145 = &v1106 - v187;
  v188 = MEMORY[0x28223BE20](v186);
  v1143 = &v1106 - v189;
  v190 = MEMORY[0x28223BE20](v188);
  v1203 = &v1106 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v1224 = (&v1106 - v193);
  v194 = MEMORY[0x28223BE20](v192);
  v1199 = &v1106 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v1197 = &v1106 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v1221 = (&v1106 - v199);
  v200 = MEMORY[0x28223BE20](v198);
  v1159 = &v1106 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v1210 = &v1106 - v203;
  v204 = MEMORY[0x28223BE20](v202);
  v1184 = &v1106 - v205;
  v206 = MEMORY[0x28223BE20](v204);
  v1227 = &v1106 - v207;
  v208 = MEMORY[0x28223BE20](v206);
  v1127 = &v1106 - v209;
  MEMORY[0x28223BE20](v208);
  v211 = (&v1106 - v210);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v213 = MEMORY[0x28223BE20](v212 - 8);
  v215 = &v1106 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = MEMORY[0x28223BE20](v213);
  v218 = (&v1106 - v217);
  MEMORY[0x28223BE20](v216);
  v220 = &v1106 - v219;
  sub_21D021CE4();
  v221 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  if (qword_27CE44F18 != -1)
  {
LABEL_502:
    swift_once();
  }

  v222 = qword_27CE459B0;
  v1244 = a5;
  v1238 = v221;
  *(a5 + v221) = qword_27CE459B0;
  v1222 = type metadata accessor for PrivateMLRequest(0);
  v223 = (v1223 + v1222[16]);
  v224 = *v223;
  v225 = *(v223 + 8);
  if (!v225)
  {

    v241 = v1138;
    sub_21D021CE4();
    v242 = v241 + *(v1235 + 20);
    *v242 = v224;
    *(v242 + 8) = 0;
    sub_21CF8F644(v241, v218, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    v243 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v243 - 8) + 56))(v218, 0, 1, v243);
    v244 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v245 = v1125;
    sub_21CF7F198(v222 + v244, v1125, &qword_27CE452B0, &qword_21D023670);
    v246 = *(v1225 + 48);
    v247 = v1239;
    v1236 = v1225 + 48;
    v1235 = v246;
    if (v246(v245, 1, v1239) == 1)
    {
      v248 = v1127;
      sub_21D021CE4();
      v249 = *(v247 + 20);
      v250 = v1124;
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v248 + v249) = qword_28121D280;
      v251 = (v1235)(v245, 1, v247);

      if (v251 != 1)
      {
        sub_21CF7F200(v245, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v248 = v1127;
      sub_21CF8F6AC(v245, v1127, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v250 = v1124;
    }

    v282 = v247;
    v283 = *(v247 + 20);
    v284 = *(v248 + v283);
    v285 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF7F198(v284 + v285, v250, &qword_27CE452A8, &qword_21D023668);
    v286 = v1230[6];
    v287 = v250;
    v288 = v250;
    v289 = v1245;
    v290 = v286(v287, 1, v1245);
    v1237 = v286;
    if (v290 == 1)
    {
      v291 = v1122;
      sub_21CFC2680(v1122);
      v292 = v286(v288, 1, v289);
      v293 = v291;
      v248 = v1127;
      if (v292 != 1)
      {
        sub_21CF7F200(v288, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v293 = v1122;
      sub_21CF8F6AC(v288, v1122, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    sub_21CF8F4D4(v218, &v293[*(v1245 + 20)], &qword_27CE452B8, &qword_21D023678);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v295 = *(v248 + v283);
    v233 = v282;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v295 = sub_21CFC4358(v295);
      *(v248 + v283) = v295;
    }

    v274 = v1244;
    v236 = v1238;
    v1236 = v1236 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v296 = v293;
    v297 = v1240;
    sub_21CF8F6AC(v296, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    v1232 = v1230[7];
    (v1232)(v297, 0, 1, v1245);
    v298 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v297, v295 + v298, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_21CF8F53C(v1138, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    }

    else
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v300 = sub_21D00E8C4(v299);

      sub_21CF8F53C(v1138, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
      *&v236[v274] = v300;
    }

    v281 = *&v236[v274];
    v280 = v248;
    goto LABEL_41;
  }

  if (v225 == 1)
  {

    v226 = v1153;
    sub_21D021CE4();
    v227 = v226 + *(v1236 + 20);
    *v227 = v224;
    *(v227 + 4) = 0;
    sub_21CF8F644(v226, v215, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    v228 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v228 - 8) + 56))(v215, 0, 1, v228);
    v229 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v230 = v222 + v229;
    v231 = v1237;
    sub_21CF7F198(v230, v1237, &qword_27CE452B0, &qword_21D023670);
    v232 = *(v1225 + 48);
    v233 = v1239;
    v1236 = v1225 + 48;
    v1235 = v232;
    if (v232(v231, 1, v1239) == 1)
    {
      v234 = v1227;
      sub_21D021CE4();
      v235 = *(v233 + 20);
      v236 = v1238;
      v237 = v1245;
      v238 = v1230;
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *&v234[v235] = qword_28121D280;
      v239 = v1237;
      v240 = (v1235)(v1237, 1, v233);

      if (v240 != 1)
      {
        sub_21CF7F200(v239, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v234 = v1227;
      sub_21CF8F6AC(v231, v1227, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v236 = v1238;
      v237 = v1245;
      v238 = v1230;
    }

    v261 = *(v233 + 20);
    v262 = *&v234[v261];
    v263 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v264 = v262 + v263;
    v265 = v1232;
    sub_21CF7F198(v264, v1232, &qword_27CE452A8, &qword_21D023668);
    v266 = v238[6];
    v267 = v266(v265, 1, v237);
    v1237 = v266;
    if (v267 == 1)
    {
      v268 = v1123;
      sub_21CFC2680(v1123);
      v269 = v268;
      if (v266(v1232, 1, v237) != 1)
      {
        sub_21CF7F200(v1232, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v269 = v1123;
      sub_21CF8F6AC(v1232, v1123, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    sub_21CF8F4D4(v215, &v269[*(v237 + 20)], &qword_27CE452B8, &qword_21D023678);
    v270 = v1227;
    v271 = swift_isUniquelyReferenced_nonNull_native();
    v272 = *&v270[v261];
    v273 = v1230;
    if ((v271 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v272 = sub_21CFC4358(v272);
      *&v270[v261] = v272;
    }

    v274 = v1244;
    v1236 = v1236 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v275 = v269;
    v276 = v1240;
    sub_21CF8F6AC(v275, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    v1232 = v273[7];
    (v1232)(v276, 0, 1, v1245);
    v277 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v276, v272 + v277, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_21CF8F53C(v1153, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    }

    else
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v279 = sub_21D00E8C4(v278);

      sub_21CF8F53C(v1153, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
      *&v236[v274] = v279;
    }

    v280 = v1227;
    v281 = *&v236[v274];
LABEL_41:
    v301 = v1228;
    sub_21CF8F6AC(v280, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v1227 = *(v1225 + 56);
    (v1227)(v301, 0, 1, v233);
    v302 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v301, v281 + v302, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v303 = v236;
    goto LABEL_52;
  }

  *v220 = 1;
  v252 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v252 - 8) + 56))(v220, 0, 1, v252);
  v253 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v254 = v157;
  sub_21CF7F198(v222 + v253, v157, &qword_27CE452B0, &qword_21D023670);
  v255 = *(v1225 + 48);
  v256 = v157;
  v257 = v1239;
  v1236 = v1225 + 48;
  v1235 = v255;
  if (v255(v256, 1, v1239) == 1)
  {

    sub_21D021CE4();
    v258 = *(v257 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v211 + v258) = qword_28121D280;
    v259 = (v1235)(v254, 1, v257);

    v260 = v1245;
    if (v259 != 1)
    {
      sub_21CF7F200(v254, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    sub_21CF8F6AC(v254, v211, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

    v260 = v1245;
  }

  v304 = *(v257 + 20);
  v305 = *(v211 + v304);
  v306 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v307 = v1126;
  sub_21CF7F198(v305 + v306, v1126, &qword_27CE452A8, &qword_21D023668);
  v308 = v1230;
  v309 = v1230[6];
  v310 = v309(v307, 1, v260);
  v1237 = v309;
  if (v310 == 1)
  {
    v311 = v1121;
    sub_21CFC2680(v1121);
    v312 = v309(v307, 1, v260);
    v313 = v311;
    v308 = v1230;
    if (v312 != 1)
    {
      sub_21CF7F200(v307, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v313 = v1121;
    sub_21CF8F6AC(v307, v1121, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  sub_21CF8F4D4(v220, &v313[*(v260 + 20)], &qword_27CE452B8, &qword_21D023678);
  v314 = swift_isUniquelyReferenced_nonNull_native();
  v315 = *(v211 + v304);
  if ((v314 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v315 = sub_21CFC4358(v315);
    *(v211 + v304) = v315;
  }

  v1236 = v1236 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v316 = v313;
  v317 = v1240;
  sub_21CF8F6AC(v316, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v1232 = v308[7];
  (v1232)(v317, 0, 1, v260);
  v318 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v317, v315 + v318, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v303 = v1238;
  v274 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v320 = sub_21D00E8C4(v319);

    *&v303[v274] = v320;
  }

  v321 = *&v303[v274];
  v322 = v1228;
  sub_21CF8F6AC(v211, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v323 = v1239;
  v1227 = *(v1225 + 56);
  (v1227)(v322, 0, 1, v1239);
  v324 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v325 = v322;
  v233 = v323;
  sub_21CF8F4D4(v325, v321 + v324, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
LABEL_52:
  v326 = v1245;
  LODWORD(v1153) = *(v1223 + v1222[13]);
  v327 = v303;
  v328 = *&v303[v274];
  v329 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v330 = v328 + v329;
  v331 = v1229;
  sub_21CF7F198(v330, v1229, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v331, 1, v233) == 1)
  {
    v332 = v1184;
    sub_21D021CE4();
    v333 = *(v233 + 20);
    v334 = v1156;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v332 + v333) = qword_28121D280;
    v335 = v1229;
    v336 = (v1235)(v1229, 1, v233);

    if (v336 != 1)
    {
      sub_21CF7F200(v335, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v332 = v1184;
    sub_21CF8F6AC(v331, v1184, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v334 = v1156;
  }

  v337 = *(v233 + 20);
  v338 = *(v332 + v337);
  v339 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v338 + v339, v334, &qword_27CE452A8, &qword_21D023668);
  v340 = (v1230 + 6);
  v341 = v326;
  v342 = v1237;
  v343 = (v1237)(v334, 1, v326);
  v1229 = v340;
  if (v343 == 1)
  {
    v344 = v1154;
    sub_21CFC2680(v1154);
    v345 = v327;
    if (v342(v334, 1, v341) != 1)
    {
      sub_21CF7F200(v334, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v344 = v1154;
    sub_21CF8F6AC(v334, v1154, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    v345 = v327;
  }

  v346 = &v344[*(v341 + 28)];
  *v346 = v1153;
  v346[4] = 0;
  v347 = v1184;
  v348 = swift_isUniquelyReferenced_nonNull_native();
  v349 = *(v347 + v337);
  v350 = v1239;
  if ((v348 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v349 = sub_21CFC4358(v349);
    *(v347 + v337) = v349;
  }

  v351 = v1240;
  sub_21CF8F6AC(v344, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v1230 += 7;
  (v1232)(v351, 0, 1, v341);
  v352 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v351, v349 + v352, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v353 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v355 = sub_21D00E8C4(v354);

    *&v345[v353] = v355;
  }

  v356 = *&v345[v353];
  v357 = v347;
  v358 = v1228;
  sub_21CF8F6AC(v357, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v1225 += 56;
  (v1227)(v358, 0, 1, v350);
  v359 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v358, v356 + v359, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v360 = *(v1223 + v1222[15]);
  v361 = *&v345[v353];
  v362 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v363 = v361 + v362;
  v364 = v1239;
  v365 = v1155;
  sub_21CF7F198(v363, v1155, &qword_27CE452B0, &qword_21D023670);
  v366 = (v1235)(v365, 1, v364);
  v367 = v1210;
  if (v366 == 1)
  {
    sub_21D021CE4();
    v368 = *(v364 + 20);
    v369 = v1158;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v367 + v368) = qword_28121D280;
    v370 = (v1235)(v365, 1, v364);

    v371 = v365;
    v372 = v1238;
    v373 = v1245;
    if (v370 != 1)
    {
      sub_21CF7F200(v371, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    sub_21CF8F6AC(v365, v1210, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v372 = v1238;
    v373 = v1245;
    v369 = v1158;
  }

  v374 = *(v364 + 20);
  v375 = *(v367 + v374);
  v376 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v375 + v376, v369, &qword_27CE452A8, &qword_21D023668);
  v377 = v1237;
  if ((v1237)(v369, 1, v373) == 1)
  {
    v378 = v1157;
    sub_21CFC2680(v1157);
    if (v377(v369, 1, v373) != 1)
    {
      sub_21CF7F200(v369, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v378 = v1157;
    sub_21CF8F6AC(v369, v1157, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v379 = &v378[v373[8]];
  *v379 = v360;
  v379[4] = 0;
  v380 = v1210;
  v381 = swift_isUniquelyReferenced_nonNull_native();
  v382 = *(v380 + v374);
  v383 = v1239;
  if ((v381 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v382 = sub_21CFC4358(v382);
    *(v380 + v374) = v382;
  }

  v384 = v1240;
  sub_21CF8F6AC(v378, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1232)(v384, 0, 1, v373);
  v385 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v384, v382 + v385, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v386 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v388 = sub_21D00E8C4(v387);

    *&v372[v386] = v388;
  }

  v389 = *&v372[v386];
  v390 = v1228;
  sub_21CF8F6AC(v1210, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v390, 0, 1, v383);
  v391 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v390, v389 + v391, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v392 = v1223;
  v393 = (v1223 + v1222[17]);
  v394 = v386;
  v395 = v1180;
  if ((v393[1] & 1) == 0)
  {
    v396 = *v393;
    v397 = *&v372[v394];
    v398 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v399 = v1128;
    sub_21CF7F198(v397 + v398, v1128, &qword_27CE452B0, &qword_21D023670);
    if ((v1235)(v399, 1, v383) == 1)
    {
      v400 = v1159;
      sub_21D021CE4();
      v401 = *(v383 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v400 + v401) = qword_28121D280;
      v402 = (v1235)(v399, 1, v383);

      if (v402 != 1)
      {
        sub_21CF7F200(v399, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v400 = v1159;
      sub_21CF8F6AC(v399, v1159, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v403 = *(v383 + 20);
    v404 = *(v400 + v403);
    v405 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v406 = v1130;
    sub_21CF7F198(v404 + v405, v1130, &qword_27CE452A8, &qword_21D023668);
    v407 = v1237;
    if ((v1237)(v406, 1, v373) == 1)
    {
      v408 = v1129;
      sub_21CFC2680(v1129);
      if (v407(v406, 1, v373) != 1)
      {
        sub_21CF7F200(v406, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v408 = v1129;
      sub_21CF8F6AC(v406, v1129, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v409 = &v408[v373[9]];
    *v409 = v396;
    v409[4] = 0;
    v410 = v1159;
    v411 = swift_isUniquelyReferenced_nonNull_native();
    v412 = *(v410 + v403);
    v413 = v1239;
    if ((v411 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v412 = sub_21CFC4358(v412);
      *(v410 + v403) = v412;
    }

    v414 = v1240;
    sub_21CF8F6AC(v408, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1232)(v414, 0, 1, v373);
    v415 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v414, v412 + v415, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v416 = v1244;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v418 = sub_21D00E8C4(v417);

      *&v372[v416] = v418;
    }

    v419 = *&v372[v416];
    v420 = v1228;
    sub_21CF8F6AC(v410, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1227)(v420, 0, 1, v413);
    v383 = v413;
    v421 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v420, v419 + v421, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v392 = v1223;
    v394 = v416;
    v395 = v1180;
  }

  v422 = *(v392 + v1222[18]);
  v423 = *&v372[v394];
  v424 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v425 = v423 + v424;
  v426 = v1179;
  sub_21CF7F198(v425, v1179, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v426, 1, v383) == 1)
  {
    v427 = v1221;
    sub_21D021CE4();
    v428 = *(v383 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v427 + v428) = qword_28121D280;
    v429 = v1179;
    v430 = (v1235)(v1179, 1, v383);

    if (v430 != 1)
    {
      sub_21CF7F200(v429, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v427 = v1221;
    sub_21CF8F6AC(v426, v1221, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  }

  v431 = *(v383 + 20);
  v432 = *(v427 + v431);
  v433 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v432 + v433, v395, &qword_27CE452A8, &qword_21D023668);
  v434 = v1237;
  if ((v1237)(v395, 1, v373) == 1)
  {
    v435 = v1160;
    sub_21CFC2680(v1160);
    if (v434(v395, 1, v373) != 1)
    {
      sub_21CF7F200(v395, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v435 = v1160;
    sub_21CF8F6AC(v395, v1160, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v436 = &v435[v373[10]];
  *v436 = v422;
  v436[4] = 0;
  v437 = v1221;
  v438 = swift_isUniquelyReferenced_nonNull_native();
  v439 = *(v437 + v431);
  v440 = v1239;
  if ((v438 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v439 = sub_21CFC4358(v439);
    *(v437 + v431) = v439;
  }

  v441 = v1244;
  v442 = v1240;
  sub_21CF8F6AC(v435, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1232)(v442, 0, 1, v373);
  v443 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v442, v439 + v443, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v445 = sub_21D00E8C4(v444);

    *&v372[v441] = v445;
  }

  v446 = *&v372[v441];
  v447 = v1228;
  sub_21CF8F6AC(v1221, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v447, 0, 1, v440);
  v448 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v447, v446 + v448, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v449 = *(v1223 + v1222[19]);
  v450 = *&v372[v441];
  v451 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v452 = v450 + v451;
  v453 = v1239;
  v454 = v1161;
  sub_21CF7F198(v452, v1161, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v454, 1, v453) == 1)
  {
    v455 = v1197;
    sub_21D021CE4();
    v456 = *(v453 + 20);
    v457 = v1162;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *&v455[v456] = qword_28121D280;
    v458 = (v1235)(v454, 1, v453);

    v459 = v1245;
    if (v458 != 1)
    {
      sub_21CF7F200(v454, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v455 = v1197;
    sub_21CF8F6AC(v454, v1197, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v459 = v1245;
    v457 = v1162;
  }

  v460 = *(v453 + 20);
  v461 = *&v455[v460];
  v462 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v463 = v1164;
  sub_21CF7F198(v461 + v462, v1164, &qword_27CE452A8, &qword_21D023668);
  v464 = v1237;
  if ((v1237)(v463, 1, v459) == 1)
  {
    sub_21CFC2680(v457);
    if (v464(v463, 1, v459) != 1)
    {
      sub_21CF7F200(v463, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    sub_21CF8F6AC(v463, v457, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v465 = &v457[*(v459 + 44)];
  *v465 = v449;
  v465[4] = 0;
  v466 = v1197;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v468 = *&v466[v460];
  if ((v467 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v468 = sub_21CFC4358(v468);
    *&v466[v460] = v468;
  }

  v469 = v1240;
  sub_21CF8F6AC(v457, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1232)(v469, 0, 1, v459);
  v470 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v469, v468 + v470, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v471 = v1244;
  v472 = v1238;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v474 = sub_21D00E8C4(v473);

    *&v472[v471] = v474;
  }

  v475 = *&v472[v471];
  v476 = v1228;
  sub_21CF8F6AC(v466, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v476, 0, 1, v1239);
  v477 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v476, v475 + v477, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v478 = *(v1223 + v1222[20]);
  v479 = *&v472[v471];
  v480 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v481 = v479 + v480;
  v482 = v1239;
  v483 = v1163;
  sub_21CF7F198(v481, v1163, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v483, 1, v482) == 1)
  {
    v484 = v1199;
    sub_21D021CE4();
    v485 = *(v482 + 20);
    v486 = v1167;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *&v484[v485] = qword_28121D280;
    v487 = (v1235)(v483, 1, v482);

    v488 = v483;
    v489 = v1238;
    v490 = v1245;
    if (v487 != 1)
    {
      sub_21CF7F200(v488, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v484 = v1199;
    sub_21CF8F6AC(v483, v1199, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v489 = v1238;
    v490 = v1245;
    v486 = v1167;
  }

  v491 = *(v482 + 20);
  v492 = *&v484[v491];
  v493 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v492 + v493, v486, &qword_27CE452A8, &qword_21D023668);
  v494 = v1237;
  if ((v1237)(v486, 1, v490) == 1)
  {
    v495 = v1165;
    sub_21CFC2680(v1165);
    if (v494(v486, 1, v490) != 1)
    {
      sub_21CF7F200(v486, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v495 = v1165;
    sub_21CF8F6AC(v486, v1165, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v496 = &v495[*(v490 + 48)];
  *v496 = v478;
  v496[4] = 0;
  v497 = v1199;
  v498 = swift_isUniquelyReferenced_nonNull_native();
  v499 = *&v497[v491];
  v500 = v1239;
  if ((v498 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v499 = sub_21CFC4358(v499);
    *&v497[v491] = v499;
  }

  v501 = v1240;
  sub_21CF8F6AC(v495, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1232)(v501, 0, 1, v490);
  v502 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v501, v499 + v502, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v503 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v505 = sub_21D00E8C4(v504);

    *&v489[v503] = v505;
  }

  v506 = *&v489[v503];
  v507 = v1228;
  sub_21CF8F6AC(v497, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v507, 0, 1, v500);
  v508 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v507, v506 + v508, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v509 = *(v1223 + v1222[21]);
  v510 = *&v489[v503];
  v511 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v512 = v510 + v511;
  v513 = v1239;
  v514 = v1166;
  sub_21CF7F198(v512, v1166, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v514, 1, v513) == 1)
  {
    v515 = v1224;
    sub_21D021CE4();
    v516 = *(v513 + 20);
    v517 = v1170;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v515 + v516) = qword_28121D280;
    v518 = (v1235)(v514, 1, v513);

    v519 = v514;
    v520 = v1238;
    v521 = v1245;
    if (v518 != 1)
    {
      sub_21CF7F200(v519, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v515 = v1224;
    sub_21CF8F6AC(v514, v1224, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v520 = v1238;
    v521 = v1245;
    v517 = v1170;
  }

  v522 = *(v513 + 20);
  v523 = *(v515 + v522);
  v524 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v523 + v524, v517, &qword_27CE452A8, &qword_21D023668);
  v525 = v1237;
  if ((v1237)(v517, 1, v521) == 1)
  {
    v526 = v1168;
    sub_21CFC2680(v1168);
    if (v525(v517, 1, v521) != 1)
    {
      sub_21CF7F200(v517, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v526 = v1168;
    sub_21CF8F6AC(v517, v1168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v527 = &v526[*(v521 + 52)];
  *v527 = v509;
  v527[8] = 0;
  v528 = v1224;
  v529 = swift_isUniquelyReferenced_nonNull_native();
  v530 = *(v528 + v522);
  v531 = v1239;
  if ((v529 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v530 = sub_21CFC4358(v530);
    *(v528 + v522) = v530;
  }

  v532 = v1240;
  sub_21CF8F6AC(v526, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1232)(v532, 0, 1, v521);
  v533 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v532, v530 + v533, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v534 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v536 = sub_21D00E8C4(v535);

    *&v520[v534] = v536;
  }

  v537 = *&v520[v534];
  v538 = v1228;
  sub_21CF8F6AC(v1224, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v538, 0, 1, v531);
  v539 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v538, v537 + v539, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v1224 = *(v1223 + v1222[23]);
  v540 = *&v520[v534];
  v541 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v542 = v540 + v541;
  v543 = v1239;
  v544 = v1169;
  sub_21CF7F198(v542, v1169, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v544, 1, v543) == 1)
  {
    v545 = v1203;
    sub_21D021CE4();
    v546 = *(v543 + 20);
    v547 = v1219;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v545 + v546) = qword_28121D280;
    v548 = (v1235)(v544, 1, v543);

    v549 = v1238;
    v550 = v1245;
    if (v548 != 1)
    {
      sub_21CF7F200(v544, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v545 = v1203;
    sub_21CF8F6AC(v544, v1203, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v549 = v1238;
    v550 = v1245;
    v547 = v1219;
  }

  v551 = *(v543 + 20);
  v552 = *(v545 + v551);
  v553 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v554 = v1172;
  sub_21CF7F198(v552 + v553, v1172, &qword_27CE452A8, &qword_21D023668);
  v555 = v1237;
  if ((v1237)(v554, 1, v550) == 1)
  {
    v556 = v1171;
    sub_21CFC2680(v1171);
    if (v555(v554, 1, v550) != 1)
    {
      sub_21CF7F200(v554, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v556 = v1171;
    sub_21CF8F6AC(v554, v1171, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v557 = &v556[*(v550 + 60)];
  *v557 = v1224;
  v557[8] = 0;
  v558 = v1203;
  v559 = swift_isUniquelyReferenced_nonNull_native();
  v560 = *(v558 + v551);
  v561 = v1239;
  if ((v559 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v560 = sub_21CFC4358(v560);
    *(v558 + v551) = v560;
  }

  v562 = v556;
  v563 = v1240;
  sub_21CF8F6AC(v562, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1232)(v563, 0, 1, v550);
  v564 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v563, v560 + v564, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v565 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v567 = sub_21D00E8C4(v566);

    *&v549[v565] = v567;
  }

  v568 = *&v549[v565];
  v569 = v1228;
  sub_21CF8F6AC(v558, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v569, 0, 1, v561);
  v570 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v569, v568 + v570, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v571 = *(v1223 + v1222[24]);
  v572 = v571 + 56;
  v573 = 1 << *(v571 + 32);
  v574 = -1;
  if (v573 < 64)
  {
    v574 = ~(-1 << v573);
  }

  v575 = v574 & *(v571 + 56);
  v576 = ((v573 + 63) >> 6);
  v1197 = (v1173 + 56);
  v1210 = v571;

  v577 = 0;
  v578 = v1216;
  v1203 = v572;
  v1199 = v576;
  while (v575)
  {
    v582 = v547;
    v583 = v1239;
LABEL_177:
    v585 = *(v1210 + 48) + ((v577 << 10) | (16 * __clz(__rbit64(v575))));
    v586 = *(v585 + 8);
    v1224 = *v585;
    v587 = *(v1238 + v1244);
    v588 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF7F198(v587 + v588, v578, &qword_27CE452B0, &qword_21D023670);
    v589 = (v1235)(v578, 1, v583);
    v1221 = v586;
    if (v589 == 1)
    {

      v590 = v582;
      sub_21D021CE4();
      v591 = *(v583 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v582 + v591) = qword_28121D280;
      v592 = (v1235)(v578, 1, v583);

      v593 = v1245;
      if (v592 != 1)
      {
        sub_21CF7F200(v578, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      sub_21CF8F6AC(v578, v582, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v590 = v582;

      v593 = v1245;
    }

    v594 = *(v583 + 20);
    v595 = *(v590 + v594);
    v596 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v597 = v595 + v596;
    v598 = v1220;
    sub_21CF7F198(v597, v1220, &qword_27CE452A8, &qword_21D023668);
    v599 = v1237;
    if ((v1237)(v598, 1, v593) == 1)
    {
      v600 = v1204;
      *v1204 = MEMORY[0x277D84F90];
      v601 = v593[5];
      v602 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
      v603 = v600 + v601;
      v604 = v1220;
      (*(*(v602 - 8) + 56))(v603, 1, 1, v602);
      sub_21D021CE4();
      v605 = v600 + v593[7];
      *v605 = 0;
      v605[4] = 1;
      v606 = v600 + v593[8];
      *v606 = 0;
      v606[4] = 1;
      v607 = v600 + v593[9];
      *v607 = 0;
      v607[4] = 1;
      v608 = v600 + v593[10];
      *v608 = 0;
      v608[4] = 1;
      v609 = v600 + v593[11];
      *v609 = 0;
      v609[4] = 1;
      v610 = v600 + v593[12];
      *v610 = 0;
      v610[4] = 1;
      v611 = v600 + v593[13];
      *v611 = 0;
      v611[8] = 1;
      v612 = v600 + v593[14];
      *v612 = 0;
      v612[8] = 1;
      v613 = v600 + v593[15];
      *v613 = 0;
      v613[8] = 1;
      v614 = v600 + v593[16];
      *v614 = 0;
      v614[4] = 1;
      v615 = v600 + v593[17];
      *v615 = 0;
      v615[4] = 1;
      *(v600 + v593[18]) = 2;
      v616 = v600 + v593[19];
      *v616 = 0;
      v616[4] = 1;
      (*v1197)(v600 + v593[20], 1, 1, v1198);
      if (v599(v604, 1, v593) != 1)
      {
        sub_21CF7F200(v604, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v600 = v1204;
      sub_21CF8F6AC(v598, v1204, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v617 = *v600;
    v618 = swift_isUniquelyReferenced_nonNull_native();
    v547 = v1219;
    if ((v618 & 1) == 0)
    {
      v617 = sub_21CFB4D00(0, *(v617 + 2) + 1, 1, v617);
    }

    v620 = *(v617 + 2);
    v619 = *(v617 + 3);
    v621 = v1221;
    if (v620 >= v619 >> 1)
    {
      v631 = v1221;
      v617 = sub_21CFB4D00((v619 > 1), v620 + 1, 1, v617);
      v621 = v631;
      v547 = v1219;
    }

    *(v617 + 2) = v620 + 1;
    v622 = &v617[16 * v620];
    *(v622 + 4) = v1224;
    *(v622 + 5) = v621;
    *v600 = v617;
    v623 = swift_isUniquelyReferenced_nonNull_native();
    v624 = *(v547 + v594);
    if ((v623 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v624 = sub_21CFC4358(v624);
      *(v547 + v594) = v624;
    }

    v625 = v1245;
    v626 = v1240;
    sub_21CF8F6AC(v600, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1232)(v626, 0, 1, v625);
    v627 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v626, v624 + v627, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v628 = v1244;
    v550 = v1238;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v630 = sub_21D00E8C4(v629);

      *(v628 + v550) = v630;
    }

    v575 &= v575 - 1;
    v579 = *(v628 + v550);
    v580 = v1228;
    sub_21CF8F6AC(v547, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1227)(v580, 0, 1, v1239);
    v581 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v580, v579 + v581, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v578 = v1216;
    v572 = v1203;
    v576 = v1199;
  }

  v583 = v1239;
  while (1)
  {
    v584 = v577 + 1;
    if (__OFADD__(v577, 1))
    {
      __break(1u);
      goto LABEL_472;
    }

    if (v584 >= v576)
    {
      break;
    }

    v575 = *(v572 + 8 * v584);
    ++v577;
    if (v575)
    {
      v582 = v547;
      v577 = v584;
      goto LABEL_177;
    }
  }

  v632 = (v1223 + v1222[6]);
  v633 = *v632;
  v634 = v632[1];
  v635 = v1238;
  v636 = *(v1238 + v1244);
  v637 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v638 = v636 + v637;
  v639 = v1239;
  v640 = v1144;
  sub_21CF7F198(v638, v1144, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v640, 1, v639) == 1)
  {

    v641 = v1143;
    sub_21D021CE4();
    v642 = *(v639 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v641 + v642) = qword_28121D280;
    v643 = (v1235)(v640, 1, v639);

    if (v643 != 1)
    {
      sub_21CF7F200(v640, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v641 = v1143;
    sub_21CF8F6AC(v640, v1143, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  }

  v644 = *(v639 + 20);
  v645 = swift_isUniquelyReferenced_nonNull_native();
  v646 = *(v641 + v644);
  if ((v645 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v646 = sub_21CFC4358(v646);
    *(v641 + v644) = v646;
  }

  swift_beginAccess();
  v646[2] = v633;
  v646[3] = v634;

  v647 = v1244;
  v648 = swift_isUniquelyReferenced_nonNull_native();
  v649 = v1239;
  if ((v648 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v651 = sub_21D00E8C4(v650);

    *&v635[v647] = v651;
  }

  v652 = *&v635[v647];
  v653 = v641;
  v654 = v635;
  v655 = v1228;
  sub_21CF8F6AC(v653, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v655, 0, 1, v649);
  v656 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v655, v652 + v656, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v657 = v1223 + v1222[7];
  v658 = *(v657 + 8);
  v1224 = *v657;
  v659 = *&v654[v647];
  v660 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v661 = v659 + v660;
  v662 = v1146;
  sub_21CF7F198(v661, v1146, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v662, 1, v649) == 1)
  {

    v663 = v1145;
    sub_21D021CE4();
    v664 = *(v649 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v663 + v664) = qword_28121D280;
    v665 = (v1235)(v662, 1, v649);

    v666 = v1238;
    if (v665 != 1)
    {
      sub_21CF7F200(v662, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v663 = v1145;
    sub_21CF8F6AC(v662, v1145, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

    v666 = v1238;
  }

  v667 = *(v1239 + 20);
  v668 = swift_isUniquelyReferenced_nonNull_native();
  v669 = *(v663 + v667);
  if ((v668 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v669 = sub_21CFC4358(v669);
    *(v663 + v667) = v669;
  }

  v670 = v1224;
  swift_beginAccess();
  v669[6] = v670;
  v669[7] = v658;

  v671 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v673 = sub_21D00E8C4(v672);

    *&v666[v671] = v673;
  }

  v674 = *&v666[v671];
  v675 = v1228;
  sub_21CF8F6AC(v663, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v676 = v1239;
  (v1227)(v675, 0, 1, v1239);
  v677 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v675, v674 + v677, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v678 = (v1223 + v1222[9]);
  v680 = *v678;
  v679 = v678[1];
  v681 = *&v666[v671];
  v682 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v683 = v681 + v682;
  v684 = v1148;
  sub_21CF7F198(v683, v1148, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v684, 1, v676) == 1)
  {

    v685 = v1147;
    sub_21D021CE4();
    v686 = *(v676 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v685 + v686) = qword_28121D280;
    v687 = (v1235)(v684, 1, v676);

    v688 = v1238;
    if (v687 != 1)
    {
      sub_21CF7F200(v684, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v685 = v1147;
    sub_21CF8F6AC(v684, v1147, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

    v688 = v1238;
  }

  v689 = *(v1239 + 20);
  v690 = swift_isUniquelyReferenced_nonNull_native();
  v691 = *(v685 + v689);
  if ((v690 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v691 = sub_21CFC4358(v691);
    *(v685 + v689) = v691;
  }

  swift_beginAccess();
  v691[8] = v680;
  v691[9] = v679;

  v692 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v694 = sub_21D00E8C4(v693);

    *&v688[v692] = v694;
  }

  v695 = *&v688[v692];
  v696 = v1228;
  sub_21CF8F6AC(v685, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v697 = v688;
  v698 = v1239;
  (v1227)(v696, 0, 1, v1239);
  v699 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v696, v695 + v699, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v700 = sub_21D022764();
  v701 = *&v697[v692];
  v702 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v703 = v701 + v702;
  v704 = v698;
  v705 = v1150;
  sub_21CF7F198(v703, v1150, &qword_27CE452B0, &qword_21D023670);
  if ((v1235)(v705, 1, v698) == 1)
  {
    v706 = v1149;
    sub_21D021CE4();
    v707 = *(v698 + 20);
    v708 = v1177;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v706 + v707) = qword_28121D280;
    v709 = (v1235)(v705, 1, v704);

    v710 = v1238;
    if (v709 != 1)
    {
      sub_21CF7F200(v705, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v706 = v1149;
    sub_21CF8F6AC(v705, v1149, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v710 = v1238;
    v708 = v1177;
  }

  v711 = v700;
  v712 = *(v704 + 20);
  v713 = swift_isUniquelyReferenced_nonNull_native();
  v714 = *(v706 + v712);
  if ((v713 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v714 = sub_21CFC4358(v714);
    *(v706 + v712) = v714;
  }

  v550 = v1244;
  v715 = v714 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  swift_beginAccess();
  *v715 = v711;
  v715[8] = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v717 = sub_21D00E8C4(v716);

    *&v710[v550] = v717;
  }

  v718 = *&v710[v550];
  v719 = v1228;
  sub_21CF8F6AC(v706, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v719, 0, 1, v704);
  v720 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v719, v718 + v720, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v721 = v1223;
  v722 = (v1223 + v1222[8]);
  v723 = *v722;
  v724 = v722[1];
  v725 = HIBYTE(v724) & 0xF;
  if ((v724 & 0x2000000000000000) == 0)
  {
    v725 = v723 & 0xFFFFFFFFFFFFLL;
  }

  if (v725)
  {
    v726 = *&v710[v550];
    v727 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v728 = v726 + v727;
    v729 = v1239;
    v730 = v1139;
    sub_21CF7F198(v728, v1139, &qword_27CE452B0, &qword_21D023670);
    if ((v1235)(v730, 1, v729) == 1)
    {

      v731 = v1176;
      sub_21D021CE4();
      v732 = *(v729 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v731 + v732) = qword_28121D280;
      v733 = v1139;
      v734 = (v1235)(v1139, 1, v729);

      v708 = v1177;
      if (v734 != 1)
      {
        sub_21CF7F200(v733, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v731 = v1176;
      sub_21CF8F6AC(v730, v1176, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v735 = *(v729 + 20);
    v736 = swift_isUniquelyReferenced_nonNull_native();
    v737 = *(v731 + v735);
    if ((v736 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v737 = sub_21CFC4358(v737);
      *(v731 + v735) = v737;
    }

    swift_beginAccess();
    v737[4] = v723;
    v737[5] = v724;

    v738 = swift_isUniquelyReferenced_nonNull_native();
    v704 = v1239;
    if ((v738 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v740 = sub_21D00E8C4(v739);

      *&v710[v550] = v740;
    }

    v741 = *&v710[v550];
    v742 = v1228;
    sub_21CF8F6AC(v1176, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1227)(v742, 0, 1, v704);
    v743 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v742, v741 + v743, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v721 = v1223;
  }

  v744 = (v721 + v1222[27]);
  v745 = *v744;
  v746 = v744[1];
  v747 = HIBYTE(v746) & 0xF;
  if ((v746 & 0x2000000000000000) == 0)
  {
    v747 = v745 & 0xFFFFFFFFFFFFLL;
  }

  if (v747)
  {
    v748 = *&v710[v550];
    v749 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v750 = v748 + v749;
    v751 = v1239;
    v752 = v1140;
    sub_21CF7F198(v750, v1140, &qword_27CE452B0, &qword_21D023670);
    if ((v1235)(v752, 1, v751) == 1)
    {

      sub_21D021CE4();
      v753 = *(v751 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v708 + v753) = qword_28121D280;
      v754 = v1140;
      v755 = (v1235)(v1140, 1);

      if (v755 != 1)
      {
        sub_21CF7F200(v754, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      sub_21CF8F6AC(v752, v708, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v756 = *(v1239 + 20);
    v757 = swift_isUniquelyReferenced_nonNull_native();
    v758 = *(v708 + v756);
    if ((v757 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v758 = sub_21CFC4358(v758);
      *(v708 + v756) = v758;
    }

    v759 = (v758 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
    swift_beginAccess();
    *v759 = v745;
    v759[1] = v746;

    v760 = swift_isUniquelyReferenced_nonNull_native();
    v704 = v1239;
    if ((v760 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v762 = sub_21D00E8C4(v761);

      *&v710[v550] = v762;
    }

    v763 = *&v710[v550];
    v764 = v1228;
    sub_21CF8F6AC(v708, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1227)(v764, 0, 1, v704);
    v765 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v764, v763 + v765, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v721 = v1223;
  }

  v766 = *(v721 + v1222[11]);
  if (v766)
  {
    v767 = *&v710[v550];
    v768 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v769 = v767 + v768;
    v770 = v1141;
    sub_21CF7F198(v769, v1141, &qword_27CE452B0, &qword_21D023670);
    if ((v1235)(v770, 1, v704) == 1)
    {
      v771 = v1181;
      sub_21D021CE4();
      v772 = *(v704 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v771 + v772) = qword_28121D280;
      v773 = v1141;
      v774 = (v1235)(v1141, 1, v704);

      if (v774 != 1)
      {
        sub_21CF7F200(v773, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v771 = v1181;
      sub_21CF8F6AC(v770, v1181, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v775 = *(v704 + 20);
    v776 = *(v771 + v775);
    v777 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v778 = v776 + v777;
    v779 = v1133;
    sub_21CF7F198(v778, v1133, &qword_27CE452A8, &qword_21D023668);
    v780 = v1245;
    v781 = v1237;
    if ((v1237)(v779, 1, v1245) == 1)
    {
      v782 = v1136;
      sub_21CFC2680(v1136);
      if (v781(v779, 1, v780) != 1)
      {
        sub_21CF7F200(v779, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v782 = v1136;
      sub_21CF8F6AC(v779, v1136, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v783 = &v782[*(v1245 + 76)];
    *v783 = v766;
    v783[4] = 0;
    v784 = v1181;
    v785 = swift_isUniquelyReferenced_nonNull_native();
    v786 = *(v784 + v775);
    if ((v785 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v786 = sub_21CFC4358(v786);
      *(v784 + v775) = v786;
    }

    v704 = v1239;
    v787 = v1240;
    sub_21CF8F6AC(v782, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1232)(v787, 0, 1, v1245);
    v788 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v787, v786 + v788, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v550 = v1244;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v790 = sub_21D00E8C4(v789);

      *&v710[v550] = v790;
    }

    v791 = *&v710[v550];
    v792 = v1228;
    sub_21CF8F6AC(v1181, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1227)(v792, 0, 1, v704);
    v793 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v792, v791 + v793, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v721 = v1223;
  }

  v794 = v721 + v1222[35];
  v795 = *(v794 + 16);
  if (v795 != 255)
  {
    v1248 = *v794;
    LOBYTE(v1249) = v795;
    sub_21CF97934(&v1248, v1175);
    v796 = *&v710[v550];
    v797 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v798 = v796 + v797;
    v799 = v1142;
    sub_21CF7F198(v798, v1142, &qword_27CE452B0, &qword_21D023670);
    if ((v1235)(v799, 1, v704) == 1)
    {
      v800 = v1182;
      sub_21D021CE4();
      v801 = *(v704 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v800 + v801) = qword_28121D280;
      v802 = v1142;
      v803 = (v1235)(v1142, 1, v704);

      if (v803 != 1)
      {
        sub_21CF7F200(v802, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v800 = v1182;
      sub_21CF8F6AC(v799, v1182, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v804 = *(v704 + 20);
    v805 = *(v800 + v804);
    v806 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v807 = v805 + v806;
    v808 = v1134;
    sub_21CF7F198(v807, v1134, &qword_27CE452A8, &qword_21D023668);
    v809 = v1245;
    v810 = v1237;
    if ((v1237)(v808, 1, v1245) == 1)
    {
      v811 = v810;
      v812 = v1137;
      sub_21CFC2680(v1137);
      v813 = v809;
      v814 = v812;
      if (v811(v808, 1, v813) != 1)
      {
        sub_21CF7F200(v808, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v814 = v1137;
      sub_21CF8F6AC(v808, v1137, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v815 = *(v1245 + 80);
    sub_21CF7F200(&v814[v815], &qword_27CE452D8, "ҷ");
    sub_21CF8F6AC(v1175, &v814[v815], type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
    (*v1197)(&v814[v815], 0, 1, v1198);
    v816 = v1182;
    v817 = swift_isUniquelyReferenced_nonNull_native();
    v818 = *(v816 + v804);
    if ((v817 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v818 = sub_21CFC4358(v818);
      *(v816 + v804) = v818;
    }

    v819 = v1239;
    v820 = v814;
    v821 = v1240;
    sub_21CF8F6AC(v820, v1240, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1232)(v821, 0, 1, v1245);
    v822 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v821, v818 + v822, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v824 = sub_21D00E8C4(v823);

      *&v710[v550] = v824;
    }

    v825 = *&v710[v550];
    v826 = v1228;
    sub_21CF8F6AC(v1182, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1227)(v826, 0, 1, v819);
    v827 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v826, v825 + v827, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
  }

  v829 = v1151;
  v828 = v1152;
  v830 = HIBYTE(v1152) & 0xF;
  if ((v1152 & 0x2000000000000000) == 0)
  {
    v830 = v1151 & 0xFFFFFFFFFFFFLL;
  }

  if (v830)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v832 = sub_21D00E8C4(v831);

      *&v710[v550] = v832;
    }

    v833 = *&v710[v550];
    swift_beginAccess();
    *(v833 + 16) = v829;
    *(v833 + 24) = v828;
  }

  v834 = v1183;
  v835 = *(v1183 + 2);
  if (v835)
  {
    v836 = sub_21CF8F5F8(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, &unk_21D02BC30);
    v1245 = v836;
    v837 = v834 + 48;
    v550 = &unk_27CE45000;
    v215 = v1244;
    v838 = v1238;
    do
    {
      v841 = *(v837 - 1);
      MEMORY[0x28223BE20](v836);
      *(&v1106 - 4) = v842;
      *(&v1106 - 3) = v841;
      *(&v1106 - 4) = v843;

      v844 = v1246;
      sub_21D021F04();
      v1246 = v844;

      v845 = *&v838[v215];
      v846 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
      swift_beginAccess();
      v847 = *(v845 + v846);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v847 = sub_21CFB4CD8(0, v847[2] + 1, 1, v847);
      }

      v849 = v847[2];
      v848 = v847[3];
      if (v849 >= v848 >> 1)
      {
        v847 = sub_21CFB4CD8((v848 > 1), v849 + 1, 1, v847);
      }

      v847[2] = v849 + 1;
      sub_21CF8F6AC(v1261, v847 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + v1241[9] * v849, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
      v215 = v1244;
      v838 = v1238;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
        swift_allocObject();

        v851 = sub_21D00E8C4(v850);

        *&v838[v215] = v851;
      }

      v837 += 24;
      v839 = *&v838[v215];
      v840 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
      swift_beginAccess();
      *(v839 + v840) = v847;

      --v835;
    }

    while (v835);
  }

  else
  {
    v215 = v1244;
    v838 = v1238;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v853 = sub_21D00E8C4(v852);

    *&v838[v215] = v853;
  }

  v854 = *&v838[v215];
  v855 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  *(v854 + v855) = 1;
  v856 = v1222;
  v857 = v1223;
  v858 = (v1223 + v1222[29]);
  v859 = *v858;
  a5 = v858[1];
  v860 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v860 = v859 & 0xFFFFFFFFFFFFLL;
  }

  if (!v860)
  {
    goto LABEL_403;
  }

  v211 = v1187;
  v220 = MEMORY[0x277D84F90];
  *v1187 = MEMORY[0x277D84F90];
  v211[1] = v220;
  v861 = v1135;
  v862 = v857;
  v863 = v856;
  sub_21D021CE4();
  v864 = (v211 + *(v861 + 28));
  *v864 = v859;
  v864[1] = a5;
  v865 = *(v862 + v863[30]);
  v218 = (v865 + 64);
  v866 = 1 << *(v865 + 32);
  v867 = -1;
  if (v866 < 64)
  {
    v867 = ~(-1 << v866);
  }

  v215 = v867 & *(v865 + 64);
  v221 = (v866 + 63) >> 6;

  v1245 = v865;

  v868 = 0;
  v157 = v220;
  v1242 = (v865 + 64);
  if (v215)
  {
    while (1)
    {
      v1261 = v157;
LABEL_324:
      v870 = (v868 << 10) | (16 * __clz(__rbit64(v215)));
      v871 = (*(v1245 + 48) + v870);
      v872 = *v871;
      v873 = v871[1];
      v874 = (*(v1245 + 56) + v870);
      v875 = *v874;
      v876 = v874[1];

      v211 = v1205;
      sub_21D021CE4();
      v877 = v1196;
      v878 = (v211 + v1196[5]);
      *v878 = 0;
      v878[1] = 0;
      v879 = (v211 + v877[6]);
      *v878 = v872;
      v878[1] = v873;
      *v879 = v875;
      v879[1] = v876;
      sub_21CF8F644(v211, v1209, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
      v157 = v1261;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v157 = sub_21CFB4CB0(0, *(v157 + 2) + 1, 1, v157);
      }

      v220 = *(v157 + 2);
      v880 = *(v157 + 3);
      a5 = v220 + 1;
      v218 = v1242;
      if (v220 >= v880 >> 1)
      {
        v157 = sub_21CFB4CB0((v880 > 1), v220 + 1, 1, v157);
      }

      v215 &= v215 - 1;
      *(v157 + 2) = a5;
      sub_21CF8F6AC(v1209, &v157[((*(v1186 + 80) + 32) & ~*(v1186 + 80)) + v1186[9] * v220], type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
      *v1187 = v157;
      sub_21CF8F53C(v1205, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
      if (!v215)
      {
        goto LABEL_320;
      }
    }
  }

  while (1)
  {
LABEL_320:
    v869 = v868 + 1;
    if (__OFADD__(v868, 1))
    {
      __break(1u);
LABEL_492:
      __break(1u);
LABEL_493:
      __break(1u);
LABEL_494:
      __break(1u);
LABEL_495:
      __break(1u);
LABEL_496:
      __break(1u);
LABEL_497:
      __break(1u);
LABEL_498:
      __break(1u);
LABEL_499:
      __break(1u);
LABEL_500:
      __break(1u);
LABEL_501:
      __break(1u);
      goto LABEL_502;
    }

    if (v869 >= v221)
    {
      break;
    }

    v215 = v218[v869];
    ++v868;
    if (v215)
    {
      v1261 = v157;
      v868 = v869;
      goto LABEL_324;
    }
  }

  v881 = *(v1223 + v1222[32]);
  v882 = v881 + 64;
  v883 = 1 << *(v881 + 32);
  v884 = -1;
  if (v883 < 64)
  {
    v884 = ~(-1 << v883);
  }

  v157 = (v884 & *(v881 + 64));
  v218 = ((v883 + 63) >> 6);
  v1221 = (v1132 + 56);
  v1199 = "tie_server_token_nanos1";
  v1209 = (v1131 + 56);
  v1210 = v1132 + 48;
  v1184 = v881;

  v885 = 0;
  v211 = &qword_21D023660;
  v1198 = xmmword_21D0235C0;
  v1186 = MEMORY[0x277D84F90];
  v215 = v1244;
  v1181 = v882;
  v1180 = v218;
  v550 = v1233;
  if (v157)
  {
LABEL_337:
    while (1)
    {
      v1183 = v157;
      v1182 = v885;
      v887 = __clz(__rbit64(v157)) | (v885 << 6);
      v888 = *(v1184 + 56);
      v889 = (*(v1184 + 48) + 16 * v887);
      v890 = v889[1];
      v1261 = *v889;
      v891 = *(v888 + 8 * v887);

      v215 = v1234;
      sub_21D021CE4();
      v892 = v1178;
      v893 = (v215 + *(v1178 + 20));
      *v893 = 0;
      v893[1] = 0;
      v894 = *v1221;
      v1232 = *(v892 + 24);
      v1220 = v894;
      (v894)(v215 + v1232, 1, 1, v550);
      v895 = v891;
      *v893 = v1261;
      v893[1] = v890;
      v1219 = *(v891 + 2);
      if (v1219)
      {
        break;
      }

LABEL_396:

      sub_21CF8F644(v1234, v1185, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1186 = sub_21CFB4C88(0, v1186[2] + 1, 1, v1186);
      }

      v979 = v1183;
      a5 = v1186[2];
      v980 = v1186[3];
      if (a5 >= v980 >> 1)
      {
        v1186 = sub_21CFB4C88((v980 > 1), a5 + 1, 1, v1186);
      }

      v157 = ((v979 - 1) & v979);
      v981 = v1186;
      v1186[2] = a5 + 1;
      sub_21CF8F6AC(v1185, v981 + ((*(v1174 + 80) + 32) & ~*(v1174 + 80)) + *(v1174 + 72) * a5, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
      v1187[1] = v981;
      sub_21CF8F53C(v1234, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
      v882 = v1181;
      v218 = v1180;
      v885 = v1182;
      v215 = v1244;
      if (!v157)
      {
        goto LABEL_333;
      }
    }

    v218 = 0;
    v896 = (v891 + 48);
    v157 = v1226;
    a5 = v1243;
    v1216 = v895;
    while (1)
    {
      if (v218 >= *(v895 + 2))
      {
        goto LABEL_492;
      }

      v1230 = v218;
      v897 = *(v896 - 2);
      v898 = *(v896 - 1);
      v1229 = v896;
      v899 = *v896;
      v900 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
      v901 = *(v900 - 8);
      v902 = *(v901 + 56);
      v1245 = v900;
      v1241 = v902;
      v1240 = v901 + 56;
      (v902)(a5, 1, 1);
      v1242 = v897;
      v1261 = v898;
      sub_21CF8F3B4(v897, v898, v899);
      sub_21D021CE4();
      LODWORD(v1237) = v899;
      if (!(v899 >> 6))
      {
        break;
      }

      if (v899 >> 6 == 1)
      {
        v903 = v1194;
        sub_21CF7F198(a5, v1194, &qword_27CE452A0, &qword_21D023660);
        v904 = *(v901 + 48);
        v905 = v1245;
        v1224 = (v901 + 48);
        v1205 = v904;
        if ((v904)(v903, 1, v1245) == 1)
        {
          v906 = v1242;
          sub_21CF8F3E0(v1242, v1261);
          sub_21CF7F200(v903, &qword_27CE452A0, &qword_21D023660);
          v907 = v1212;
          v908 = v1195;
          v215 = v906;
          goto LABEL_358;
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v907 = v1212;
        v908 = v1195;
        v215 = v1242;
        if (EnumCaseMultiPayload == 1)
        {
          sub_21CF8F6AC(v903, v1195, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
          sub_21CF8F3E0(v215, v1261);
        }

        else
        {
          sub_21CF8F3E0(v1242, v1261);
          sub_21CF8F53C(v903, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
LABEL_358:
          *v908 = v1198;
          sub_21D021CE4();
          (*v1209)(v908 + *(v907 + 24), 1, 1, v157);
        }

        v937 = v1201;
        v938 = v1237 & 0x3F;
        sub_21CF8F4B4(*v908, *(v908 + 8));
        v939 = v1261;
        *v908 = v215;
        *(v908 + 8) = v939;
        v940 = v1243;
        sub_21CF7F200(v1243, &qword_27CE452A0, &qword_21D023660);
        sub_21CF8F6AC(v908, v940, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
        swift_storeEnumTagMultiPayload();
        (v1241)(v940, 0, 1, v905);
        v941 = v1217;
        sub_21D021CE4();
        v942 = (v941 + *(v157 + 5));
        *v942 = 0;
        v942[1] = 0;
        v943 = (v941 + *(v157 + 6));
        *v943 = 0;
        v1204 = v943;
        *(v943 + 4) = 256;
        v944 = (v941 + *(v157 + 7));
        *v944 = 0;
        v1197 = v944;
        *(v944 + 4) = 1;
        v945 = v941 + *(v157 + 8);
        *v945 = 0;
        v1196 = v945;
        *(v945 + 4) = 1;
        v946 = (v941 + *(v157 + 9));
        *v946 = 0;
        v946[1] = 0;
        v947 = (v941 + *(v157 + 10));
        *v947 = 0;
        v947[1] = 0;
        v948 = v941 + *(v157 + 11);
        *v948 = 0;
        *(v948 + 8) = 256;
        v949 = 2 * (v938 == 1);
        if (!v938)
        {
          v949 = 1;
        }

        v1203 = v949;
        if (qword_27CE451B0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v1259[0] = xmmword_27CE46898;
        v1259[1] = unk_27CE468A8;
        v1260 = byte_27CE468B8;
        sub_21CF7F198(v1259, &v1248, &qword_27CE45288, &qword_21D023970);
        v950 = sub_21D01561C();
        sub_21CF7F200(v1259, &qword_27CE45288, &qword_21D023970);
        v951 = v1202;
        if (v950)
        {
          type metadata accessor for ImageParser(0);
          v221 = swift_allocObject();
          sub_21D022494();
          v1247[0] = 0;
          v952 = v1246;
          sub_21CF9C6A0(v1247, &v1248);
          if (v952)
          {

            swift_setDeallocating();
            ImageParser.__deallocating_deinit();
            swift_willThrow();

            sub_21CF8F434(v1242, v1261, v1237);
            v1048 = v1217;
            goto LABEL_438;
          }

          v1246 = 0;
          v157 = *(&v1248 + 1);
          a5 = v1248;
          v953 = v1249;
          v215 = v1250;
          *v948 = 4;
          *(v948 + 8) = 1;
          sub_21CF8F3E0(a5, v157);
          v954 = v1208;
          v211 = v1243;
          sub_21CFC1F90(v1208);
          swift_setDeallocating();
          ImageParser.__deallocating_deinit();
          sub_21CF8F4B4(*v954, *(v954 + 1));
          *v954 = a5;
          *(v954 + 1) = v157;
          v218 = &qword_27CE452A0;
          sub_21CF7F200(v211, &qword_27CE452A0, &qword_21D023660);
          sub_21CF8F6AC(v954, v211, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
          v220 = v1245;
          swift_storeEnumTagMultiPayload();
          (v1241)(v211, 0, 1, v220);
          sub_21CF8F460(a5, v157);
          if ((v953 & 0x8000000000000000) != 0)
          {
            goto LABEL_498;
          }

          if (HIDWORD(v953))
          {
            goto LABEL_499;
          }

          v955 = v1197;
          *v1197 = v953;
          v955[4] = 0;
          if ((v215 & 0x8000000000000000) != 0)
          {
            goto LABEL_500;
          }

          if (HIDWORD(v215))
          {
            goto LABEL_501;
          }

          v956 = v1196;
          *v1196 = v215;
          *(v956 + 4) = 0;
          v220 = v1214;
          v157 = v1226;
          v951 = v1202;
          v937 = v1201;
          v215 = v1242;
          v905 = v1245;
        }

        else
        {
          v220 = v1214;
        }

        v957 = v1204;
        *v1204 = v1203;
        *(v957 + 4) = 1;
        sub_21CF8F644(v1217, v1206, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
        v211 = &qword_21D023660;
        sub_21CF7F198(v1243, v937, &qword_27CE452A0, &qword_21D023660);
        v958 = (v1205)(v937, 1, v905);
        v959 = v1212;
        if (v958 == 1)
        {
          sub_21CF7F200(v937, &qword_27CE452A0, &qword_21D023660);
          goto LABEL_385;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CF8F53C(v1217, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
          sub_21CF8F6AC(v937, v951, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
          v960 = v1209;
        }

        else
        {
          sub_21CF8F53C(v937, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
LABEL_385:
          *v951 = v1198;
          sub_21D021CE4();
          sub_21CF8F53C(v1217, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
          v960 = v1209;
          (*v1209)(v951 + *(v959 + 24), 1, 1, v157);
        }

        v967 = *(v959 + 24);
        sub_21CF7F200(v951 + v967, &qword_27CE452C0, &unk_21D023680);
        sub_21CF8F6AC(v1206, v951 + v967, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
        (*v960)(v951 + v967, 0, 1, v157);
        v968 = v1243;
        sub_21CF7F200(v1243, &qword_27CE452A0, &qword_21D023660);
        v969 = v951;
        v930 = v968;
        sub_21CF8F6AC(v969, v968, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
        v932 = v1210;
        goto LABEL_387;
      }

      v914 = v1207;
      sub_21D021CE4();
      v915 = (v914 + *(v157 + 5));
      *v915 = 0;
      v915[1] = 0;
      v916 = (v914 + *(v157 + 6));
      *v916 = 0;
      *(v916 + 4) = 256;
      v215 = v914 + *(v157 + 7);
      *v215 = 0;
      *(v215 + 4) = 1;
      v220 = v914 + *(v157 + 8);
      *v220 = 0;
      *(v220 + 4) = 1;
      v917 = (v914 + *(v157 + 9));
      *v917 = 0;
      v917[1] = 0;
      v918 = (v914 + *(v157 + 10));
      *v918 = 0;
      v918[1] = 0;
      v919 = v914 + *(v157 + 11);
      *v919 = 0;
      *(v919 + 8) = 256;
      type metadata accessor for ImageParser(0);
      v221 = swift_allocObject();
      sub_21D022494();
      v920 = v1242;
      v921 = v1246;
      sub_21CF9BEE4(v1242, &v1248);
      v1246 = v921;
      if (v921)
      {

        swift_setDeallocating();
        ImageParser.__deallocating_deinit();
        swift_willThrow();

        sub_21CF8F434(v920, v1261, v1237);
        v1048 = v1207;
LABEL_438:
        sub_21CF8F53C(v1048, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
        sub_21CF8F53C(v1243, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
        sub_21CF8F53C(v1234, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
        sub_21CF8F53C(v1187, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
        goto LABEL_439;
      }

      v1224 = v916;
      a5 = *(&v1248 + 1);
      v157 = v1248;
      *v919 = 2;
      *(v919 + 8) = 1;
      sub_21CF8F3E0(v157, a5);
      v922 = v1208;
      v218 = v1243;
      sub_21CFC1F90(v1208);
      sub_21CF8F4B4(*v922, *(v922 + 1));
      *v922 = v157;
      *(v922 + 1) = a5;
      sub_21CF7F200(v218, &qword_27CE452A0, &qword_21D023660);
      sub_21CF8F6AC(v922, v218, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v211 = v1245;
      swift_storeEnumTagMultiPayload();
      (v1241)(v218, 0, 1, v211);
      v923 = [v920 width];
      if ((v923 & 0x8000000000000000) != 0)
      {
        goto LABEL_494;
      }

      if (HIDWORD(v923))
      {
        goto LABEL_495;
      }

      *v215 = v923;
      *(v215 + 4) = 0;
      v215 = [v1242 height];
      sub_21CF8F460(v157, a5);
      swift_setDeallocating();
      v218 = v221;
      ImageParser.__deallocating_deinit();
      if ((v215 & 0x8000000000000000) != 0)
      {
        goto LABEL_496;
      }

      if (HIDWORD(v215))
      {
        goto LABEL_497;
      }

      *v220 = v215;
      *(v220 + 4) = 0;
      v924 = v1224;
      *v1224 = 2;
      *(v924 + 4) = 1;
      v925 = v1207;
      v926 = v1188;
      sub_21CF8F644(v1207, v1188, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v927 = v1208;
      v928 = v1243;
      sub_21CFC1F90(v1208);
      v929 = v925;
      v930 = v928;
      sub_21CF8F53C(v929, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v931 = *(v1212 + 24);
      sub_21CF7F200(&v927[v931], &qword_27CE452C0, &unk_21D023680);
      sub_21CF8F6AC(v926, &v927[v931], type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      (*v1209)(&v927[v931], 0, 1, v1226);
      v211 = &qword_21D023660;
      sub_21CF7F200(v930, &qword_27CE452A0, &qword_21D023660);
      sub_21CF8F6AC(v927, v930, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v220 = v1214;
      v932 = v1210;
      v215 = v1242;
LABEL_383:
      v905 = v1245;
LABEL_387:
      swift_storeEnumTagMultiPayload();
      (v1241)(v930, 0, 1, v905);
      sub_21CF8F644(v930, v1231, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
      sub_21CF7F198(v1234 + v1232, v220, &qword_27CE45298, &qword_21D023658);
      v970 = *v932;
      v971 = v1233;
      if ((*v932)(v220, 1, v1233) == 1)
      {
        v221 = v1213;
        *v1213 = MEMORY[0x277D84F90];
        sub_21D021CE4();
        if (v970(v220, 1, v971) != 1)
        {
          sub_21CF7F200(v220, &qword_27CE45298, &qword_21D023658);
        }
      }

      else
      {
        v221 = v1213;
        sub_21CF8F6AC(v220, v1213, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      }

      v972 = *v221;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v972 = sub_21CFB4C60(0, v972[2] + 1, 1, v972);
      }

      v974 = v972[2];
      v973 = v972[3];
      if (v974 >= v973 >> 1)
      {
        v972 = sub_21CFB4C60((v973 > 1), v974 + 1, 1, v972);
      }

      v975 = (v1230 + 1);
      sub_21CF8F434(v215, v1261, v1237);
      v972[2] = v974 + 1;
      sub_21CF8F6AC(v1231, v972 + ((*(v1211 + 80) + 32) & ~*(v1211 + 80)) + *(v1211 + 72) * v974, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
      *v221 = v972;
      v976 = v1234;
      v977 = v1232;
      sub_21CF7F200(v1234 + v1232, &qword_27CE45298, &qword_21D023658);
      sub_21CF8F6AC(v221, v976 + v977, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      v978 = v976 + v977;
      v218 = v975;
      v550 = v1233;
      (v1220)(v978, 0, 1, v1233);
      a5 = v1243;
      sub_21CF8F53C(v1243, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
      v896 = v1229 + 24;
      v157 = v1226;
      v895 = v1216;
      if (v1219 == v218)
      {
        goto LABEL_396;
      }
    }

    v909 = a5;
    v910 = v1192;
    sub_21CF7F198(v909, v1192, &qword_27CE452A0, &qword_21D023660);
    v911 = *(v901 + 48);
    v1224 = (v901 + 48);
    if (v911(v910, 1, v1245) == 1)
    {

      sub_21CF7F200(v910, &qword_27CE452A0, &qword_21D023660);
      v912 = v1193;
      v913 = v1191;
      v220 = v1214;
    }

    else
    {
      v934 = swift_getEnumCaseMultiPayload();
      v912 = v1193;
      v913 = v1191;
      v220 = v1214;
      if (v934 != 1)
      {
        v935 = v1189;
        sub_21CF8F6AC(v910, v1189, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);

LABEL_376:
        v961 = (v935 + *(v913 + 20));

        v962 = v1261;
        *v961 = v1242;
        v961[1] = v962;
        v930 = v1243;
        v211 = &qword_21D023660;
        sub_21CF7F200(v1243, &qword_27CE452A0, &qword_21D023660);
        sub_21CF8F6AC(v935, v930, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
        v963 = v1245;
        swift_storeEnumTagMultiPayload();
        (v1241)(v930, 0, 1, v963);
        sub_21CF7F198(v930, v912, &qword_27CE452A0, &qword_21D023660);
        if (v911(v912, 1, v963) == 1)
        {
          sub_21CF7F200(v912, &qword_27CE452A0, &qword_21D023660);
          v964 = v1190;
        }

        else
        {
          v965 = swift_getEnumCaseMultiPayload();
          v964 = v1190;
          if (v965 != 1)
          {
            sub_21CF8F6AC(v912, v1190, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
            v932 = v1210;
            v215 = v1242;
            goto LABEL_382;
          }

          sub_21CF8F53C(v912, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
        }

        v215 = v1242;
        sub_21D021CE4();
        v966 = (v964 + *(v913 + 20));
        *v966 = 0;
        v966[1] = 0;
        *(v964 + *(v913 + 24)) = 2;
        v932 = v1210;
LABEL_382:
        *(v964 + *(v913 + 24)) = v1237 & 1;
        sub_21CF7F200(v930, &qword_27CE452A0, &qword_21D023660);
        sub_21CF8F6AC(v964, v930, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
        goto LABEL_383;
      }

      sub_21CF8F53C(v910, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    }

    v935 = v1189;
    sub_21D021CE4();
    v936 = (v935 + *(v913 + 20));
    *v936 = 0;
    v936[1] = 0;
    *(v935 + *(v913 + 24)) = 2;
    goto LABEL_376;
  }

  while (1)
  {
LABEL_333:
    v886 = v885 + 1;
    if (__OFADD__(v885, 1))
    {
      goto LABEL_493;
    }

    if (v886 >= v218)
    {
      break;
    }

    v157 = *(v882 + 8 * v886);
    ++v885;
    if (v157)
    {
      v885 = v886;
      goto LABEL_337;
    }
  }

  v982 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType(0);
  v983 = *(*(v982 - 8) + 56);
  v984 = v1120;
  v983(v1120, 1, 1, v982);
  sub_21D021CE4();
  v985 = v1187;
  v986 = v1117;
  sub_21CF8F644(v1187, v1117, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21CF7F200(v984, &qword_27CE452C8, &unk_21D026890);
  sub_21CF8F6AC(v986, v984, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  v983(v984, 0, 1, v982);
  v987 = v1119;
  sub_21CF8F644(v984, v1119, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CFC2150(v987);
  sub_21CF8F53C(v984, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CF8F53C(v985, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  v857 = v1223;
  v838 = v1238;
  v856 = v1222;
LABEL_403:
  v988 = *(v857 + v856[31]);
  v989 = &unk_27CE45000;
  if (!sub_21CFB6EB8(v988) || (v990 = sub_21CFB6EB8(v988)) == 0)
  {
    v991 = v838;
    goto LABEL_423;
  }

  if (v990 < 1)
  {
    __break(1u);
    goto LABEL_504;
  }

  v991 = v838;
  v992 = (v988 + 40);
  v993 = v1239;
  do
  {
    v1261 = v990;
    v999 = *v992;
    v1245 = *(v992 - 1);
    v1243 = v992;
    v1000 = *&v991[v215];
    v1001 = v989[316];
    swift_beginAccess();
    v1002 = v1000 + v1001;
    v1003 = v1200;
    sub_21CF7F198(v1002, v1200, &qword_27CE452B0, &qword_21D023670);
    if ((v1235)(v1003, 1, v993) == 1)
    {

      v1004 = v1215;
      sub_21D021CE4();
      v1005 = *(v993 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v1004 + v1005) = qword_28121D280;
      v1006 = (v1235)(v1003, 1, v993);

      if (v1006 != 1)
      {
        sub_21CF7F200(v1003, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v1004 = v1215;
      sub_21CF8F6AC(v1003, v1215, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v1007 = *(v1239 + 20);
    v1008 = *(v1004 + v1007);
    v1009 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
    swift_beginAccess();
    v1010 = *(v1008 + v1009);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1010 = sub_21CFB4D00(0, *(v1010 + 2) + 1, 1, v1010);
    }

    v1011 = v1245;
    v1013 = *(v1010 + 2);
    v1012 = *(v1010 + 3);
    if (v1013 >= v1012 >> 1)
    {
      v1010 = sub_21CFB4D00((v1012 > 1), v1013 + 1, 1, v1010);
    }

    *(v1010 + 2) = v1013 + 1;
    v1014 = &v1010[16 * v1013];
    *(v1014 + 4) = v1011;
    *(v1014 + 5) = v999;
    v1015 = v1215;
    v1016 = swift_isUniquelyReferenced_nonNull_native();
    v1017 = *(v1015 + v1007);
    if ((v1016 & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      swift_allocObject();
      v1017 = sub_21CFC4358(v1017);
      *(v1015 + v1007) = v1017;
    }

    v215 = v1244;
    v1018 = v1238;
    v1019 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
    swift_beginAccess();
    *(v1017 + v1019) = v1010;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v1021 = sub_21D00E8C4(v1020);

      *&v1018[v215] = v1021;
    }

    v994 = *&v1018[v215];
    v995 = v1015;
    v996 = v1228;
    sub_21CF8F6AC(v995, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v993 = v1239;
    (v1227)(v996, 0, 1, v1239);
    v989 = &unk_27CE45000;
    v997 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v998 = v994 + v997;
    v991 = v1018;
    sub_21CF8F4D4(v996, v998, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v992 = v1243 + 2;
    v990 = v1261 - 1;
  }

  while (v1261 != 1);
LABEL_423:
  v1022 = v991;
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1257[0] = xmmword_28121B2B0;
  v1257[1] = unk_28121B2C0;
  v1258 = byte_28121B2D0;
  sub_21CF7F198(v1257, &v1248, &qword_27CE45288, &qword_21D023970);
  v1023 = sub_21D01561C();
  sub_21CF7F200(v1257, &qword_27CE45288, &qword_21D023970);
  v1024 = swift_isUniquelyReferenced_nonNull_native();
  v1025 = v1246;
  v550 = v1239;
  if ((v1024 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v1027 = sub_21D00E8C4(v1026);

    *&v991[v215] = v1027;
  }

  v1028 = *&v991[v215];
  v1029 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  *(v1028 + v1029) = v1023 & 1;
  v1030 = sub_21D021A84();
  if (v1025)
  {
LABEL_439:
    sub_21CF8F53C(v1244, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest);
    return sub_21CF8F53C(v1223, type metadata accessor for PrivateMLRequest);
  }

  v1032 = v1031;
  v1033 = v1030;
  v1034 = v1114;
  sub_21CFC1C4C(v1114);
  v1035 = *(v550 + 20);
  v1036 = swift_isUniquelyReferenced_nonNull_native();
  v1037 = *(v1034 + v1035);
  if ((v1036 & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    swift_allocObject();
    v1037 = sub_21CFC4358(v1037);
    *(v1034 + v1035) = v1037;
  }

  v1038 = (v1037 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  *v1038 = v1033;
  v1038[1] = v1032;

  v1039 = v1244;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();

    v1041 = sub_21D00E8C4(v1040);

    *&v1022[v1039] = v1041;
  }

  v1042 = *&v1022[v1039];
  v1043 = v1228;
  sub_21CF8F6AC(v1034, v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1227)(v1043, 0, 1, v550);
  v1044 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v1043, v1042 + v1044, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  if (qword_28121B6B8 != -1)
  {
LABEL_504:
    swift_once();
  }

  swift_beginAccess();
  if ((byte_28121B6C0 & 1) == 0)
  {
    v1045 = (v1223 + v1222[33]);
    if (v1045[1])
    {
      v1046 = *v1045;
      v1047 = v1045[1];
    }

    else
    {
      v1047 = 0x800000021D02D4F0;
      v1046 = 0xD00000000000001FLL;
    }

    v1050 = v1115;
    v1051 = v1244;
    sub_21CFC22C8(v1115);
    v1052 = (v1050 + *(v1116 + 20));

    *v1052 = v1046;
    v1052[1] = v1047;
    v1053 = v1238;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      swift_allocObject();

      v1055 = sub_21D00E8C4(v1054);

      *&v1053[v1051] = v1055;
    }

    v1056 = *&v1053[v1051];
    v1057 = v1112;
    sub_21CF8F6AC(v1115, v1112, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
    v1058 = v1116;
    (*(v1111 + 56))(v1057, 0, 1, v1116);
    v1059 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
    swift_beginAccess();
    sub_21CF8F4D4(v1057, v1056 + v1059, &qword_27CE45290, &qword_21D023650);
    swift_endAccess();
    v1060 = (v1223 + v1222[5]);
    v1062 = *v1060;
    v1061 = v1060[1];

    v1063 = v1113;
    sub_21CFC22C8(v1113);
    v1064 = (v1063 + *(v1058 + 24));

    *v1064 = v1062;
    v1064[1] = v1061;
    sub_21CFC247C(v1063);
    if (qword_28121B278 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1255[0] = xmmword_28121B280;
    v1255[1] = *&qword_28121B290;
    v1256 = byte_28121B2A0;
    sub_21CF7F198(v1255, &v1248, &qword_27CE452D0, &unk_21D023690);
    v1065 = sub_21D015100();
    sub_21CF7F200(v1255, &qword_27CE452D0, &unk_21D023690);
    v1067 = v1108;
    v1066 = v1109;
    if (v1065)
    {
      if (*(v1065 + 16))
      {
        v1068 = sub_21CF823FC(0xD000000000000010, 0x800000021D02D510, v1065);
        v1070 = v1069;

        if (v1070)
        {
          if (v1068 == 0xD000000000000010 && v1070 == 0x800000021D02D530 || (sub_21D022B24() & 1) != 0)
          {
            sub_21CFC1C4C(v1067);
            v1071 = *(v550 + 20);
            v1072 = swift_isUniquelyReferenced_nonNull_native();
            v1073 = *(v1067 + v1071);
            if ((v1072 & 1) == 0)
            {
              type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              swift_allocObject();
              v1073 = sub_21CFC4358(v1073);
              *(v1067 + v1071) = v1073;
            }

            v1074 = v1073 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1074 = 1;
            *(v1074 + 4) = 1;
            sub_21CFC1E18(v1067);
          }

          if (v1068 == 0x43495645445F4E4FLL && v1070 == 0xE900000000000045 || (sub_21D022B24() & 1) != 0)
          {
            sub_21CFC1C4C(v1066);
            v1075 = *(v550 + 20);
            v1076 = swift_isUniquelyReferenced_nonNull_native();
            v1077 = *(v1066 + v1075);
            if ((v1076 & 1) == 0)
            {
              type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              swift_allocObject();
              v1077 = sub_21CFC4358(v1077);
              *(v1066 + v1075) = v1077;
            }

            v1078 = v1077 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1078 = 2;
            *(v1078 + 4) = 1;
            sub_21CFC1E18(v1066);
          }

          if (v1068 == 0x45565245535F4E4FLL && v1070 == 0xE900000000000052 || (sub_21D022B24() & 1) != 0)
          {
            v1079 = v1106;
            sub_21CFC1C4C(v1106);
            v1080 = *(v550 + 20);
            v1081 = swift_isUniquelyReferenced_nonNull_native();
            v1082 = *(v1079 + v1080);
            if ((v1081 & 1) == 0)
            {
              type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              swift_allocObject();
              v1082 = sub_21CFC4358(v1082);
              *(v1079 + v1080) = v1082;
            }

            v1083 = v1082 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1083 = 3;
            *(v1083 + 4) = 1;
            sub_21CFC1E18(v1079);
          }

          if (v1068 == 0x45565245535F4E4FLL && v1070 == 0xED00004947545F52)
          {

            goto LABEL_473;
          }

LABEL_472:
          v1084 = sub_21D022B24();

          if (v1084)
          {
LABEL_473:
            v1085 = v1107;
            sub_21CFC1C4C(v1107);
            v1086 = *(v550 + 20);
            v1087 = swift_isUniquelyReferenced_nonNull_native();
            v1088 = *(v1085 + v1086);
            if ((v1087 & 1) == 0)
            {
              type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              swift_allocObject();
              v1088 = sub_21CFC4358(v1088);
              *(v1085 + v1086) = v1088;
            }

            v1089 = v1088 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1089 = 4;
            *(v1089 + 4) = 1;
            sub_21CFC1E18(v1085);
          }
        }
      }

      else
      {
      }
    }

    if (qword_28121B308 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1253[0] = xmmword_28121B310;
    v1253[1] = unk_28121B320;
    v1254 = byte_28121B330;
    sub_21CF7F198(v1253, &v1248, &qword_27CE45288, &qword_21D023970);
    v1090 = sub_21D01561C();
    sub_21CF7F200(v1253, &qword_27CE45288, &qword_21D023970);
    v1091 = v1110;
    if (v1090)
    {
      v1092 = (v1223 + v1222[10]);
      v1094 = *v1092;
      v1093 = v1092[1];
      v1095 = HIBYTE(v1093) & 0xF;
      if ((v1093 & 0x2000000000000000) == 0)
      {
        v1095 = v1094 & 0xFFFFFFFFFFFFLL;
      }

      if (v1095)
      {

        sub_21CFC1C4C(v1091);
        v1096 = *(v550 + 20);
        v1097 = swift_isUniquelyReferenced_nonNull_native();
        v1098 = *(v1091 + v1096);
        if ((v1097 & 1) == 0)
        {
          type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
          swift_allocObject();
          v1098 = sub_21CFC4358(v1098);
          *(v1091 + v1096) = v1098;
        }

        v1099 = (v1098 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName);
        swift_beginAccess();
        *v1099 = v1094;
        v1099[1] = v1093;

        sub_21CFC1E18(v1091);
      }
    }

    if (qword_27CE451C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1251[0] = xmmword_27CE46910;
    v1251[1] = unk_27CE46920;
    v1252 = byte_27CE46930;
    sub_21CF7F198(v1251, &v1248, &qword_27CE45288, &qword_21D023970);
    v1100 = sub_21D01561C();
    sub_21CF7F200(v1251, &qword_27CE45288, &qword_21D023970);
    v1101 = v1238;
    if (v1100)
    {
      v1102 = v1244;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
        swift_allocObject();

        v1104 = sub_21D00E8C4(v1103);

        *&v1101[v1102] = v1104;
      }

      v1105 = *&v1101[v1102] + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode;
      swift_beginAccess();
      *v1105 = 3;
      *(v1105 + 8) = 1;
    }
  }

  return sub_21CF8F53C(v1223, type metadata accessor for PrivateMLRequest);
}