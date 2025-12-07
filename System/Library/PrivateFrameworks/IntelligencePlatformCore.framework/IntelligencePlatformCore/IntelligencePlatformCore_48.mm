uint64_t sub_1C486252C(uint64_t a1)
{
  sub_1C4F01298();
  sub_1C4F01298();

  return sub_1C4EF9A78();
}

uint64_t sub_1C4862578(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4EF9A78();
  return sub_1C4F02B68();
}

void sub_1C48625CC()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(&qword_1EC0BE430, &qword_1C4F371A8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4417F50(v2, v2[3]);
  sub_1C48673B4();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    LOBYTE(v15) = 0;
    v6 = sub_1C4F02678();
    v8 = v7;
    v14 = v6;
    sub_1C4433D1C(1);
    v12 = sub_1C4F02678();
    v13 = v9;
    sub_1C444C16C();
    sub_1C4429054();
    sub_1C4F026C8();
    v10 = sub_1C43FBF04();
    v11(v10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v15, v16);
    sub_1C440962C(v2);

    sub_1C4434000(v15, v16);
    *v4 = v14;
    v4[1] = v8;
    v4[2] = v12;
    v4[3] = v13;
    v4[4] = v15;
    v4[5] = v16;
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C486281C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4862270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4862844(uint64_t a1)
{
  v2 = sub_1C48673B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4862880(uint64_t a1)
{
  v2 = sub_1C48673B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C48628BC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C48625CC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1C4862920()
{
  sub_1C4F02AF8();
  sub_1C486252C(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C486295C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4867E6C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C48629C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C45776A0();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4862AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4867EC0();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4862B4C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFBF38();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C441D6FC();
  v12 = sub_1C4EFBAF8();
  sub_1C44F9918(v12, a2);
  sub_1C442B738(v12, a2);
  v13 = *MEMORY[0x1E69A00D0];
  v14 = *(v6 + 104);
  v14(v2, v13, v4);
  v14(v10, v13, v4);
  return sub_1C4EFBAE8();
}

uint64_t sub_1C4862D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), char a5)
{
  v7 = sub_1C4EFBD38();
  sub_1C44F9918(v7, a2);
  sub_1C442B738(v7, a2);
  a4();
  return sub_1C4EFBD58();
}

uint64_t static EntityMatch.== infix(_:_:)()
{
  sub_1C4404078();
  if (sub_1C44E560C(v2, v3))
  {
    v4 = type metadata accessor for EntityMatch(0);
    sub_1C441DD4C(v4[5]);
    if (sub_1C4EFF088())
    {
      sub_1C441DD4C(v4[6]);
      if ((sub_1C4EFF088() & 1) != 0 && *(v1 + v4[7]) == *(v0 + v4[7]))
      {
        sub_1C443E358(v4[8]);
        if (v5)
        {
          if (sub_1C4684BDC())
          {
            v6 = v4[10];
            v7 = *(v1 + v6);
            v8 = *(v0 + v6);
            if (v7)
            {
              if (v8)
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C47C81C0();
                sub_1C440F210();
                if (v7)
                {
                  return 1;
                }
              }
            }

            else if (!v8)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C4862E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449746567726174 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656E696C65706970 && a2 == 0xEC00000065707954;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C48630B0(uint64_t a1)
{
  v1 = a1;
  sub_1C441EC18(a1);
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C48630F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C486313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4862E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4863164(uint64_t a1)
{
  v2 = sub_1C44DE3A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48631A0(uint64_t a1)
{
  v2 = sub_1C44DE3A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C48631E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490F60(&qword_1EDDF91D0, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);

  return sub_1C4EFB6D8();
}

unint64_t sub_1C4863384()
{
  result = qword_1EDDFE308;
  if (!qword_1EDDFE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE308);
  }

  return result;
}

unint64_t sub_1C48633D8()
{
  result = qword_1EDDF4F50;
  if (!qword_1EDDF4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4F50);
  }

  return result;
}

unint64_t sub_1C486344C()
{
  result = qword_1EDDFB370;
  if (!qword_1EDDFB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB370);
  }

  return result;
}

unint64_t sub_1C48634C0()
{
  result = qword_1EDDE27C0;
  if (!qword_1EDDE27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE27C0);
  }

  return result;
}

unint64_t sub_1C4863534()
{
  result = qword_1EDDDF270[0];
  if (!qword_1EDDDF270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDF270);
  }

  return result;
}

unint64_t sub_1C48635A8()
{
  result = qword_1EC0BE0A8;
  if (!qword_1EC0BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE0A8);
  }

  return result;
}

unint64_t sub_1C48635FC()
{
  result = qword_1EDDE5D08;
  if (!qword_1EDDE5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE5D08);
  }

  return result;
}

unint64_t sub_1C4863650()
{
  result = qword_1EC0BE100;
  if (!qword_1EC0BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE100);
  }

  return result;
}

uint64_t sub_1C48636C4(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDF90F8, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  a1[2] = sub_1C4490F60(qword_1EDDF9108, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDF9100, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  result = sub_1C4490F60(&qword_1EDDFC298, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4863798(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDFE218, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48638C8(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDFC2A0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  a1[2] = sub_1C4490F60(&qword_1EDDFC2B8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDFC2A8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  result = sub_1C4490F60(&qword_1EDDFC2C0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C486399C(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDFE2F0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863ACC(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE140, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863B24(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EC0BE148, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  result = sub_1C4490F60(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4863BA8(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDF4EE8, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  a1[2] = sub_1C4490F60(&qword_1EDDF4F00, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDF4EF0, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  result = sub_1C4490F60(&qword_1EDDF4F08, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4863CC4(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDF4F38, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863DAC(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDE5BE0, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863E04(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EC0BE150, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  result = sub_1C4490F60(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4863E88(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDFB328, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  a1[2] = sub_1C4490F60(&qword_1EDDFB348, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDFB330, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  result = sub_1C4490F60(&qword_1EDDFB350, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4863FA4(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDFB358, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486408C(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE158, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE160, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE168, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EDDE2640, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864160(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C48641E4(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4864314(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE170, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE178, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE180, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EDDE2748, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C48643E8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE2768, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EDDE2760, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C486446C(uint64_t a1)
{
  result = sub_1C4490F60(&unk_1EDDE2780, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486459C(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE188, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48645F4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDDF248, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EDDDF240, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864678(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE190, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE198, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE1A0, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EC0BE1A8, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864794(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE1B0, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486487C(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE1C0, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48648D4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDDF328, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EC0BDFE0, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864958(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE1C8, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE1D0, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE1D8, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EC0BE1E0, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864A74(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE1F0, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4864B5C(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE208, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE210, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE218, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  result = sub_1C4490F60(&qword_1EC0BE220, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864C30(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF8DA0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  result = sub_1C4490F60(&qword_1EDDF8D98, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864CB4(uint64_t a1)
{
  result = sub_1C4490F60(&unk_1EDDF8DB8, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4864DE4(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE230, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE238, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE240, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  result = sub_1C4490F60(&qword_1EC0BE248, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864EB8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF3A38, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  result = sub_1C4490F60(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864F3C(uint64_t a1)
{
  result = sub_1C4490F60(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486506C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF92F0, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);
  result = sub_1C4490F60(&qword_1EC0BE258, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C48651C8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE25F8, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);
  result = sub_1C4490F60(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865324(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EC0BE270, type metadata accessor for PhaseStatus, &protocol conformance descriptor for PhaseStatus);
  result = sub_1C4490F60(&qword_1EC0BE278, type metadata accessor for PhaseStatus, &protocol conformance descriptor for PhaseStatus);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865480(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF7A88, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);
  result = sub_1C4490F60(&qword_1EDDF7A80, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C48655DC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE10F0, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);
  result = sub_1C4490F60(&qword_1EDDE10E8, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865738(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF91D8, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
  result = sub_1C4490F60(&qword_1EDDF91D0, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865984()
{
  sub_1C44569B4();
  sub_1C4EFF0C8();
  sub_1C444C2A0();
  if (!(!v2 & v1))
  {
    sub_1C4EFEEF8();
    sub_1C444C2A0();
    if (!(!v2 & v1))
    {
      v3 = sub_1C4EFF8A8();
      if (v4 > 0x3F)
      {
        return v3;
      }

      else
      {
        sub_1C44145DC();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1C4865A58()
{
  sub_1C44569B4();
  sub_1C4EFF0C8();
  sub_1C444C2A0();
  if (!(!v2 & v1))
  {
    sub_1C4EFEEF8();
    sub_1C444C2A0();
    if (!(!v2 & v1))
    {
      v3 = sub_1C4EFF8A8();
      if (v4 > 0x3F)
      {
        return v3;
      }

      else
      {
        type metadata accessor for Source(319);
        sub_1C444C2A0();
        if (!(!v2 & v1))
        {
          sub_1C44145DC();
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C4865B3C(uint64_t a1)
{
  result = sub_1C4EFD548();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4865BF4()
{
  v0 = sub_1C44569B4();
  result = type metadata accessor for Source(v0);
  if (v2 <= 0x3F)
  {
    sub_1C44145DC();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C4865C5C()
{
  if (!qword_1EDDFA3F8)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFA3F8);
    }
  }
}

void sub_1C4865CAC()
{
  sub_1C44569B4();
  sub_1C4EFD548();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v1 <= 0x3F)
    {
      sub_1C4865C5C();
      if (v2 <= 0x3F)
      {
        sub_1C44145DC();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4865D5C(uint64_t a1)
{
  sub_1C4EFD548();
  if (v1 <= 0x3F)
  {
    sub_1C4EFF0C8();
    if (v2 <= 0x3F)
    {
      sub_1C4865E1C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4865E1C(uint64_t a1)
{
  if (!qword_1EDDF0700)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF0700);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EntityMatch.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4865F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 2);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 2);
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

  return sub_1C4430578(v8);
}

_BYTE *sub_1C4866010(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C486617C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 9);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

_BYTE *sub_1C4866200(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C48662E0()
{
  result = qword_1EC0BE2A8;
  if (!qword_1EC0BE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2A8);
  }

  return result;
}

unint64_t sub_1C4866338()
{
  result = qword_1EC0BE2B0;
  if (!qword_1EC0BE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2B0);
  }

  return result;
}

unint64_t sub_1C4866390()
{
  result = qword_1EC0BE2B8;
  if (!qword_1EC0BE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2B8);
  }

  return result;
}

unint64_t sub_1C48663E8()
{
  result = qword_1EC0BE2C0;
  if (!qword_1EC0BE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2C0);
  }

  return result;
}

unint64_t sub_1C4866440()
{
  result = qword_1EC0BE2C8;
  if (!qword_1EC0BE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2C8);
  }

  return result;
}

unint64_t sub_1C4866498()
{
  result = qword_1EC0BE2D0;
  if (!qword_1EC0BE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2D0);
  }

  return result;
}

unint64_t sub_1C48664F0()
{
  result = qword_1EC0BE2D8;
  if (!qword_1EC0BE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2D8);
  }

  return result;
}

unint64_t sub_1C4866548()
{
  result = qword_1EC0BE2E0;
  if (!qword_1EC0BE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2E0);
  }

  return result;
}

unint64_t sub_1C48665A0()
{
  result = qword_1EC0BE2E8;
  if (!qword_1EC0BE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2E8);
  }

  return result;
}

unint64_t sub_1C48665F8()
{
  result = qword_1EC0BE2F0;
  if (!qword_1EC0BE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2F0);
  }

  return result;
}

unint64_t sub_1C4866650()
{
  result = qword_1EC0BE2F8;
  if (!qword_1EC0BE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2F8);
  }

  return result;
}

unint64_t sub_1C48666A8()
{
  result = qword_1EC0BE300;
  if (!qword_1EC0BE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE300);
  }

  return result;
}

unint64_t sub_1C4866700()
{
  result = qword_1EC0BE308;
  if (!qword_1EC0BE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE308);
  }

  return result;
}

unint64_t sub_1C4866758()
{
  result = qword_1EC0BE310;
  if (!qword_1EC0BE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE310);
  }

  return result;
}

unint64_t sub_1C48667B0()
{
  result = qword_1EC0BE318;
  if (!qword_1EC0BE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE318);
  }

  return result;
}

unint64_t sub_1C4866808()
{
  result = qword_1EC0BE320;
  if (!qword_1EC0BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE320);
  }

  return result;
}

unint64_t sub_1C4866860()
{
  result = qword_1EC0BE328;
  if (!qword_1EC0BE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE328);
  }

  return result;
}

unint64_t sub_1C48668B8()
{
  result = qword_1EDDF9230;
  if (!qword_1EDDF9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9230);
  }

  return result;
}

unint64_t sub_1C4866910()
{
  result = qword_1EDDF9238;
  if (!qword_1EDDF9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9238);
  }

  return result;
}

unint64_t sub_1C4866968()
{
  result = qword_1EDDE1128;
  if (!qword_1EDDE1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1128);
  }

  return result;
}

unint64_t sub_1C48669C0()
{
  result = qword_1EDDE1130;
  if (!qword_1EDDE1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1130);
  }

  return result;
}

unint64_t sub_1C4866A18()
{
  result = qword_1EDDF7AA0;
  if (!qword_1EDDF7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7AA0);
  }

  return result;
}

unint64_t sub_1C4866A70()
{
  result = qword_1EDDF7AA8;
  if (!qword_1EDDF7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7AA8);
  }

  return result;
}

unint64_t sub_1C4866AC8()
{
  result = qword_1EC0BE330;
  if (!qword_1EC0BE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE330);
  }

  return result;
}

unint64_t sub_1C4866B20()
{
  result = qword_1EC0BE338;
  if (!qword_1EC0BE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE338);
  }

  return result;
}

unint64_t sub_1C4866B78()
{
  result = qword_1EDDE2618;
  if (!qword_1EDDE2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2618);
  }

  return result;
}

unint64_t sub_1C4866BD0()
{
  result = qword_1EDDE2620;
  if (!qword_1EDDE2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2620);
  }

  return result;
}

unint64_t sub_1C4866C28()
{
  result = qword_1EDDF9320;
  if (!qword_1EDDF9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9320);
  }

  return result;
}

unint64_t sub_1C4866C80()
{
  result = qword_1EDDF9328;
  if (!qword_1EDDF9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9328);
  }

  return result;
}

unint64_t sub_1C4866CD8()
{
  result = qword_1EDDF3A80;
  if (!qword_1EDDF3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A80);
  }

  return result;
}

unint64_t sub_1C4866D30()
{
  result = qword_1EDDF3A88;
  if (!qword_1EDDF3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A88);
  }

  return result;
}

unint64_t sub_1C4866D88()
{
  result = qword_1EDDF8DE8;
  if (!qword_1EDDF8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8DE8);
  }

  return result;
}

unint64_t sub_1C4866DE0()
{
  result = qword_1EDDF8DF0;
  if (!qword_1EDDF8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8DF0);
  }

  return result;
}

unint64_t sub_1C4866E38()
{
  result = qword_1EC0BE340;
  if (!qword_1EC0BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE340);
  }

  return result;
}

unint64_t sub_1C4866E90()
{
  result = qword_1EC0BE348;
  if (!qword_1EC0BE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE348);
  }

  return result;
}

unint64_t sub_1C4866EE8()
{
  result = qword_1EDDDF260;
  if (!qword_1EDDDF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDF260);
  }

  return result;
}

unint64_t sub_1C4866F40()
{
  result = qword_1EDDDF268;
  if (!qword_1EDDDF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDF268);
  }

  return result;
}

unint64_t sub_1C4866F98()
{
  result = qword_1EDDE27B0;
  if (!qword_1EDDE27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE27B0);
  }

  return result;
}

unint64_t sub_1C4866FF0()
{
  result = qword_1EDDE27B8;
  if (!qword_1EDDE27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE27B8);
  }

  return result;
}

unint64_t sub_1C4867048()
{
  result = qword_1EDDE2670;
  if (!qword_1EDDE2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2670);
  }

  return result;
}

unint64_t sub_1C48670A0()
{
  result = qword_1EDDE2678;
  if (!qword_1EDDE2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2678);
  }

  return result;
}

unint64_t sub_1C48670F8()
{
  result = qword_1EDDFB360;
  if (!qword_1EDDFB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB360);
  }

  return result;
}

unint64_t sub_1C4867150()
{
  result = qword_1EDDFB368;
  if (!qword_1EDDFB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB368);
  }

  return result;
}

unint64_t sub_1C48671A8()
{
  result = qword_1EDDF4F40;
  if (!qword_1EDDF4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4F40);
  }

  return result;
}

unint64_t sub_1C4867200()
{
  result = qword_1EDDF4F48;
  if (!qword_1EDDF4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4F48);
  }

  return result;
}

unint64_t sub_1C4867258()
{
  result = qword_1EDDFE2F8;
  if (!qword_1EDDFE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE2F8);
  }

  return result;
}

unint64_t sub_1C48672B0()
{
  result = qword_1EDDFE300;
  if (!qword_1EDDFE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE300);
  }

  return result;
}

unint64_t sub_1C4867308()
{
  result = qword_1EDDFE220;
  if (!qword_1EDDFE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE220);
  }

  return result;
}

unint64_t sub_1C4867360()
{
  result = qword_1EDDFE228;
  if (!qword_1EDDFE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE228);
  }

  return result;
}

unint64_t sub_1C48673B4()
{
  result = qword_1EC0BE3D0;
  if (!qword_1EC0BE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3D0);
  }

  return result;
}

uint64_t sub_1C4867408(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 6);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

_BYTE *sub_1C486748C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityEmbedding.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4867644(uint64_t a1)
{
  result = sub_1C4EFD548();
  if (v2 <= 0x3F)
  {
    result = sub_1C4EFF0C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1C48676EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C48677BC()
{
  result = qword_1EC0BE3D8;
  if (!qword_1EC0BE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3D8);
  }

  return result;
}

uint64_t sub_1C48678A0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDFA0E8, type metadata accessor for EntityPair, &unk_1C4F36F7C);
  result = sub_1C4490F60(&qword_1EDDFA0E0, type metadata accessor for EntityPair, &unk_1C4F370FC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4867928()
{
  result = qword_1EC0BE3E0;
  if (!qword_1EC0BE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3E0);
  }

  return result;
}

unint64_t sub_1C4867980()
{
  result = qword_1EC0BE3E8;
  if (!qword_1EC0BE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3E8);
  }

  return result;
}

unint64_t sub_1C48679D8()
{
  result = qword_1EC0BE3F0;
  if (!qword_1EC0BE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3F0);
  }

  return result;
}

unint64_t sub_1C4867A2C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4867A5C();
  result = sub_1C45776A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4867A5C()
{
  result = qword_1EC0BE3F8;
  if (!qword_1EC0BE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3F8);
  }

  return result;
}

unint64_t sub_1C4867AB4()
{
  result = qword_1EC0BE400;
  if (!qword_1EC0BE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE400);
  }

  return result;
}

unint64_t sub_1C4867B0C()
{
  result = qword_1EC0BE408;
  if (!qword_1EC0BE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE408);
  }

  return result;
}

unint64_t sub_1C4867B64()
{
  result = qword_1EDDFA130;
  if (!qword_1EDDFA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA130);
  }

  return result;
}

unint64_t sub_1C4867BBC()
{
  result = qword_1EDDFA138;
  if (!qword_1EDDFA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA138);
  }

  return result;
}

unint64_t sub_1C4867C14()
{
  result = qword_1EC0BE410;
  if (!qword_1EC0BE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE410);
  }

  return result;
}

unint64_t sub_1C4867C6C()
{
  result = qword_1EC0BE418;
  if (!qword_1EC0BE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE418);
  }

  return result;
}

unint64_t sub_1C4867CC4()
{
  result = qword_1EC0BE420;
  if (!qword_1EC0BE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE420);
  }

  return result;
}

unint64_t sub_1C4867D68()
{
  result = qword_1EDDF4A38;
  if (!qword_1EDDF4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A38);
  }

  return result;
}

unint64_t sub_1C4867DC0()
{
  result = qword_1EDDF4A30;
  if (!qword_1EDDF4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A30);
  }

  return result;
}

unint64_t sub_1C4867E18()
{
  result = qword_1EDDF4A40;
  if (!qword_1EDDF4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A40);
  }

  return result;
}

unint64_t sub_1C4867E6C()
{
  result = qword_1EC0BE428;
  if (!qword_1EC0BE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE428);
  }

  return result;
}

unint64_t sub_1C4867EC0()
{
  result = qword_1EC0BE440;
  if (!qword_1EC0BE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE440);
  }

  return result;
}

uint64_t sub_1C4867FB4()
{

  return sub_1C4F02248();
}

uint64_t sub_1C4867FD8()
{
  *(v0 - 88) = 2;

  return type metadata accessor for Source(0);
}

void sub_1C4867FF8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4868024(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32);
  }

  return sub_1C43FBC98();
}

double sub_1C4868060@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C480BC20(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1C4868084(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BC78(v3);
  }
}

void sub_1C48680F0(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BE20(v3);
  }
}

void sub_1C4868140(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BCEC(v3);
  }
}

uint64_t sub_1C4868198()
{
  sub_1C440D504();
  result = sub_1C486BC38(v1);
  if (v4)
  {
    goto LABEL_9;
  }

  if (*(v0 + 36) != v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C442CB70();
  if (!v5)
  {
    sub_1C4425C0C();
    sub_1C486BD78(v6);
  }

  sub_1C4EFF0C8();
  v7 = sub_1C44032C4();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C4868210(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C4F01428();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4868288()
{
  sub_1C440D504();
  result = sub_1C4703354();
  if (v3)
  {
    goto LABEL_9;
  }

  if (*(v0 + 36) != v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C442CB70();
  if (!v4)
  {
    sub_1C4425C0C();
    sub_1C4BDF4BC(v5, v6);
  }

  sub_1C4EF9DD8();
  v7 = sub_1C44032C4();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

void sub_1C4868300(uint64_t a1, void (*a2)(void))
{
  a2();
  if (v2)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v3)
  {
    sub_1C440E3A0();
    sub_1C486BF20(v4);
  }
}

void sub_1C4868354()
{
  sub_1C4703354();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v1)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v1)
  {
    sub_1C440E3A0();
    sub_1C4BDF444(v2);
  }
}

void sub_1C48683A8()
{
  sub_1C4703354();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v1)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v1)
  {
    sub_1C440E3A0();
    sub_1C4BDF568(v2);
  }
}

uint64_t sub_1C48683F8()
{
  sub_1C440D504();
  result = sub_1C4703354();
  if (v3)
  {
    goto LABEL_9;
  }

  if (*(v0 + 36) != v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C442CB70();
  if (!v4)
  {
    sub_1C4425C0C();
    sub_1C486BF78(v5);
  }

  sub_1C4EF9DD8();
  v6 = sub_1C44032C4();

  return sub_1C440BAA8(v6, v7, v8, v9);
}

void sub_1C4868470(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BE20(v3);
  }
}

void sub_1C48684D8(_OWORD *a1@<X8>)
{
  sub_1C4703354();
  if (v2)
  {
    goto LABEL_10;
  }

  sub_1C440F770();
  if (!v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (v3)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1C440E3A0();

    sub_1C4BDF3EC(v4, v5, v6, v7);
  }
}

uint64_t sub_1C48685EC()
{
  sub_1C440D504();
  result = sub_1C4703354();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(v1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(v1 + 32))
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
  }

  else
  {
    *v0 = sub_1C486C020(v6, result, v3, 0, v1);
    *(v0 + 8) = v5;
    return sub_1C441D670(v6, v0 + 16);
  }

  return result;
}

uint64_t sub_1C48686A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  v9 = sub_1C456902C(a2, a3);
  if (v8)
  {
    sub_1C446C964(a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), a4, a2, a3);
  }

  v10 = sub_1C442FDE8();

  return sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C4868800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = &v8;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = a4;

  sub_1C4465390(a5, v7);
}

uint64_t sub_1C486886C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CD48);
  v1 = sub_1C442B738(v0, qword_1EDE2CD48);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C48688E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "GraphSimulationXPC: starting...", v9, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE5BC8 != -1)
  {
    sub_1C4411DA4(&qword_1EDDE5BC8);
  }

  v10 = sub_1C442B738(v2, qword_1EDE2CD48);
  sub_1C448CCC8(a1, v5, type metadata accessor for Configuration);
  v11 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v10);
  swift_endAccess();
  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  v12 = sub_1C44059E8();
  v14 = sub_1C49AA56C(v12, v13);
  v15 = qword_1EDE2CD38;
  qword_1EDE2CD38 = v14;
  v16 = v14;

  if (v16)
  {
    qword_1EDE2CD40 = [objc_allocWithZone(type metadata accessor for GraphSimulationXPC.Delegate()) init];
    v17 = qword_1EDE2CD40;
    swift_unknownObjectRelease();
    [v16 setDelegate:v17];

    [v16 resume];
  }

  else
  {
    v16 = sub_1C4F00968();
    v18 = sub_1C4F01CE8();
    if (os_log_type_enabled(v16, v18))
    {
      v19 = sub_1C43FCED0();
      sub_1C43FBD24(v19);
      sub_1C43FFFD8(&dword_1C43F8000, v20, v21, "Failed to create KGSimulation XPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C4868B94(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  if (qword_1EDDE5BC8 != -1)
  {
    sub_1C4411DA4(&qword_1EDDE5BC8);
  }

  v7 = sub_1C442B738(v3, qword_1EDE2CD48);
  swift_beginAccess();
  sub_1C446C964(v7, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = &v6[*(v8 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    sub_1C449F0D0(v6, type metadata accessor for Configuration);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v11) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v12) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        sub_1C43FBD24(v23);
        _os_log_impl(&dword_1C43F8000, v21, v22, "GraphSimulationXPC: service is in no-op mode.", v11, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      v14 = sub_1C44059E8();
      if (sub_1C446874C(v14, v15))
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for GraphSimulationXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v29 = sub_1C4868F50;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43EF5E8;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v29 = sub_1C4868F70;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43EF610;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id GraphSimulationXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t GraphSimulationXPC.Server.mockTripleEntityTagging(withContactId:inferredRelationshipLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_1C4EFF0C8();
  v4[17] = v5;
  sub_1C43FCF7C(v5);
  v4[18] = v6;
  v4[19] = sub_1C43FE604();
  v4[20] = swift_task_alloc();
  v7 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  sub_1C43FBD18(v7);
  v4[21] = sub_1C43FBE7C();
  v8 = sub_1C4F00DD8();
  v4[22] = v8;
  sub_1C43FCF7C(v8);
  v4[23] = v9;
  v4[24] = sub_1C43FBE7C();
  v10 = sub_1C4F00DC8();
  v4[25] = v10;
  sub_1C43FCF7C(v10);
  v4[26] = v11;
  v4[27] = sub_1C43FE604();
  v4[28] = swift_task_alloc();
  v12 = sub_1C4F01188();
  v4[29] = v12;
  sub_1C43FCF7C(v12);
  v4[30] = v13;
  v4[31] = sub_1C43FBE7C();
  v14 = sub_1C4EFD548();
  v4[32] = v14;
  sub_1C43FCF7C(v14);
  v4[33] = v15;
  v4[34] = sub_1C43FE604();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v16 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v16);
  v4[37] = sub_1C43FBE7C();
  v17 = sub_1C4EFDE18();
  v4[38] = v17;
  sub_1C43FCF7C(v17);
  v4[39] = v18;
  v4[40] = sub_1C43FBE7C();
  v19 = sub_1C4EFDE68();
  sub_1C43FBD18(v19);
  v4[41] = sub_1C43FBE7C();
  v20 = sub_1C4EFDE88();
  v4[42] = v20;
  sub_1C43FCF7C(v20);
  v4[43] = v21;
  v4[44] = sub_1C43FE604();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v22 = sub_1C4EFDE98();
  v4[56] = v22;
  sub_1C43FCF7C(v22);
  v4[57] = v23;
  v4[58] = sub_1C43FBE7C();
  v24 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v24);
  v4[59] = sub_1C43FE604();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v25 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4[64] = v25;
  sub_1C43FBD18(v25);
  v4[65] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4869494, 0, 0);
}

uint64_t sub_1C4869494()
{
  v252 = v0;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  static NSUserDefaults.isGraphStoreManuallyOverridden.setter(1);
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FE9D4();
  }

  if (qword_1EDDE5BC8 != -1)
  {
    sub_1C4411DA4(&qword_1EDDE5BC8);
  }

  v7 = v0[65];
  sub_1C442B738(v0[64], qword_1EDE2CD48);
  swift_beginAccess();
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v7, 1, v12);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v14 = v0[65];
  type metadata accessor for GraphStore(0);
  swift_allocObject();
  v219 = v1;
  GraphStore.init(config:)(v14);
  sub_1C440BAA8(v0[63], 1, 1, v0[17]);
  v15 = MEMORY[0x1E69E7CC0];
  v0[11] = MEMORY[0x1E69E7CC0];
  v0[12] = v15;
  if (qword_1EDDF7900 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v16, qword_1EDE2D620);
  String.base64EncodedSHA(withPrefix:)();
  v243 = v17;
  v248 = v18;
  v19 = sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v20 = type metadata accessor for Source(0);
  v21 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v222 = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0D130;
  v223 = v21;
  v23 = v22 + v21;
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v215 = v0[63];
  v240 = v0[57];
  v24 = v0[55];
  v233 = v0[56];
  v26 = v0[53];
  v25 = v0[54];
  v27 = v0[52];
  v235 = v0[58];
  v238 = v0[51];
  v226 = v0[50];
  v227 = v0[49];
  v200 = v0[48];
  v201 = v0[47];
  v202 = v0[46];
  v203 = v0[45];
  v204 = v0[44];
  v244 = v0[43];
  v28 = v0[42];
  v205 = v0[40];
  v206 = v0[39];
  v207 = v0[38];
  v231 = v0[37];
  v210 = v0[13];
  v211 = v0[14];
  sub_1C442B738(v20, &qword_1EDDFD180);
  sub_1C4432404();
  v234 = v29;
  sub_1C448CCC8(v29, v23, v30);
  SourceSet.init(arrayLiteral:)(&v250, v22);
  v31 = *MEMORY[0x1E69A95C0];
  v32 = v244[13];
  sub_1C442B8EC();
  v32();
  sub_1C442B8EC();
  v32();
  (v32)(v26, v31, v28);
  sub_1C442B8EC();
  v32();
  sub_1C442B8EC();
  v32();
  sub_1C442B8EC();
  v32();
  v33 = v244[2];
  v33(v227, v24, v28);
  v33(v200, v25, v28);
  v33(v201, v26, v28);
  v33(v202, v27, v28);
  v33(v203, v238, v28);
  v33(v204, v226, v28);
  sub_1C4EFDD38();
  (*(v206 + 104))(v205, *MEMORY[0x1E69A95A8], v207);
  sub_1C4EFDE28();
  sub_1C4EFDEA8();
  v34 = v244[1];
  v245 = (v244 + 1);
  v208 = v34;
  v34(v226, v28);
  v34(v238, v28);
  v34(v27, v28);
  v34(v26, v28);
  v34(v25, v28);
  v34(v24, v28);
  v209 = sub_1C4EFD678();
  sub_1C440BAA8(v231, 1, 1, v209);
  v35 = swift_task_alloc();
  v35[2] = v243;
  v35[3] = v248;
  v35[4] = v0 + 12;
  v35[5] = v0 + 11;
  sub_1C4868800(v235, v231, sub_1C486BBB8, v35, sub_1C486C21C);

  sub_1C4420C3C(v231, &unk_1EC0C07E0, &unk_1C4F168F0);
  v212 = *(v240 + 8);
  v212(v235, v233);
  sub_1C486B184(v0[11]);
  sub_1C4B46DB0(v0[12]);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v36 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v36);
  v37 = swift_allocObject();
  sub_1C4417310(v37);
  sub_1C4EFE308();
  sub_1C4D504A4();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C4417310(inited);
  *(v39 + 32) = v210;
  inited[2].n128_u64[1] = v211;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08();
  v40 = swift_allocObject();
  sub_1C43FD89C(v40);
  sub_1C4EFE558();
  sub_1C4D504A4();
  sub_1C4405C98();
  (v32)(v41, v42, v43, v44, v45, v46);
  sub_1C4405C98();
  (v32)(v47, v48, v49, v50, v51, v52);
  sub_1C4405C98();
  (v32)(v53, v54, v55, v56, v57, v58);
  sub_1C4405C98();
  (v32)(v59, v60, v61, v62, v63, v64);
  sub_1C4405C98();
  (v32)(v65, v66, v67, v68, v69, v70);
  sub_1C4EFDCD8();

  v208(v238, v28);
  v208(v27, v28);
  v208(v26, v28);
  v208(v25, v28);
  v208(v24, v28);
  sub_1C440BAA8(v231, 1, 1, v209);
  v71 = swift_task_alloc();
  *(v71 + 16) = v215;
  sub_1C4868800(v235, v231, sub_1C486BBC4, v71, sub_1C486C21C);

  sub_1C4420C3C(v231, &unk_1EC0C07E0, &unk_1C4F168F0);
  v212(v235, v233);
  v241 = GraphStore.currentUser()();
  sub_1C4EFD4C8();
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v73 = v0[35];
  v72 = v0[36];
  v75 = v0[32];
  v74 = v0[33];
  sub_1C442B738(v219, qword_1EDE2DE10);
  v236 = *(v74 + 16);
  v236(v73, v72, v75);
  v76 = v248;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v77 = sub_1C4F00968();
  v78 = sub_1C4F01CB8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    *v79 = 136381187;
    v80 = v243;
    *(v79 + 4) = sub_1C441D828(v243, v248, &v250);
    *(v79 + 12) = 2080;
    sub_1C44CD1F0(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    sub_1C4F02858();
    v81 = sub_1C442513C();
    v82(v81);
    v83 = sub_1C4404DC8();
    v86 = sub_1C441D828(v83, v84, v85);
    v76 = v248;

    *(v79 + 14) = v86;
    *(v79 + 22) = 1024;
    *(v79 + 24) = 1;
    _os_log_impl(&dword_1C43F8000, v77, v78, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v79, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v87 = sub_1C442513C();
    v88(v87);
    v80 = v243;
  }

  v89 = v0[30];
  v90 = v0[31];
  v91 = v0[29];
  v92 = *v234;
  v93 = v234[1];
  v250 = v80;
  v251 = v76;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v92, v93);
  v95 = v250;
  v94 = v251;
  sub_1C4F01178();
  sub_1C4F01148();
  v97 = v96;
  (*(v89 + 8))(v90, v91);
  if (v97 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v98 = sub_1C4F00968();
    v99 = sub_1C4F01CD8();

    v100 = os_log_type_enabled(v98, v99);
    v101 = v0[36];
    v102 = v0[32];
    if (v100)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v250 = v104;
      *v103 = 136380675;
      v105 = sub_1C441D828(v95, v94, &v250);

      *(v103 + 4) = v105;
      _os_log_impl(&dword_1C43F8000, v98, v99, "Source: failed to encode identifier as UTF8 data: %{private}s", v103, 0xCu);
      sub_1C440962C(v104);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v120 = v102;
    v118 = v245;
    v245(v101, v120);
    v119 = 1;
  }

  else
  {
    v225 = v0[36];
    v220 = v0[34];
    v224 = v0[32];
    v106 = v0[28];
    v228 = v0[27];
    v217 = v0[26];
    v229 = v0[25];
    v108 = v0[23];
    v107 = v0[24];
    v109 = v0[22];

    sub_1C44CD1F0(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C4404DC8();
    sub_1C4F00DB8();
    v110 = sub_1C43FD2BC();
    sub_1C44344B8(v110, v111);
    v112 = sub_1C43FD2BC();
    sub_1C4498FD8(v112, v113, v107);
    v114 = sub_1C43FD2BC();
    sub_1C441DFEC(v114, v115);
    sub_1C4404DC8();
    sub_1C4F00DA8();
    (*(v108 + 8))(v107, v109);
    v236(v220, v225, v224);
    (*(v217 + 16))(v228, v106, v229);
    sub_1C4404DC8();
    sub_1C4EFF028();
    v116 = sub_1C43FD2BC();
    sub_1C441DFEC(v116, v117);
    (*(v217 + 8))(v106, v229);
    v118 = v245;
    v245(v225, v224);
    v119 = 0;
  }

  sub_1C440BAA8(v0[62], v119, 1, v0[17]);
  if (*(v241 + 2))
  {
    v121 = v0[62];
    v122 = v0[21];
    sub_1C44D0C64(v241, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, v122);

    sub_1C4420C3C(v121, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v123 = type metadata accessor for GraphTriple(0);
    if (sub_1C44157D4(v122, 1, v123) == 1)
    {
      sub_1C4420C3C(v0[21], &unk_1EC0BC900, byte_1C4F142D0);
      v124 = 1;
    }

    else
    {
      v125 = v0[21];
      (*(v0[18] + 16))(v0[61], v125, v0[17]);
      sub_1C449F0D0(v125, type metadata accessor for GraphTriple);
      v124 = 0;
    }

    sub_1C440BAA8(v0[61], v124, 1, v0[17]);
    v126 = sub_1C43FBC98();
    sub_1C44DDDBC(v126, v127);
  }

  else
  {
  }

  v128 = v0[60];
  v129 = v0[17];
  sub_1C446C964(v0[62], v128, &unk_1EC0BA0E0, &qword_1C4F105A0);
  if (sub_1C44157D4(v128, 1, v129) == 1)
  {
    sub_1C4420C3C(v0[62], &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v130 = v0[63];
    v131 = v0[59];
    v132 = v0[17];
    v133 = *(v0[18] + 32);
    (v133)(v0[20], v0[60], v132);
    sub_1C446C964(v130, v131, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v131, 1, v132) != 1)
    {
      v141 = v0[34];
      v213 = v0[32];
      v246 = v118;
      v142 = v0[20];
      v237 = v142;
      v230 = v0[19];
      v143 = v0[18];
      v216 = v0[15];
      v218 = v0[16];
      v242 = v0[17];
      v133(v230, v0[59], v242, v134, v135, v136);
      sub_1C456902C(&unk_1EC0BE470, &unk_1C4F371E0);
      v144 = (type metadata accessor for GraphTriple(0) - 8);
      v239 = *(*v144 + 72);
      v145 = (*(*v144 + 80) + 32) & ~*(*v144 + 80);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_1C4F0F820;
      v146 = *(v143 + 16);
      v146(v221 + v145, v142, v242);
      sub_1C4EFEBB8();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      sub_1C4EFD4C8();
      v147 = sub_1C4EFD2F8();
      v149 = v148;
      v246(v141, v213);
      v150 = swift_allocObject();
      sub_1C4417310(v150);
      sub_1C4432404();
      v247 = v151;
      sub_1C448CCC8(v234, v152 + v223, v153);
      SourceSet.init(sources:)(&v250, v150);
      v154 = v250;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v232 = v221 + v145;
      v155 = (v221 + v145 + v144[10]);
      *v155 = v147;
      v155[1] = v149;
      *(v232 + v144[11]) = v154;
      sub_1C441FBF0();
      *(v232 + v156) = v157;
      v158 = (v221 + v145 + v144[13]);
      *v158 = v243;
      v158[1] = v248;
      *(v232 + v144[14]) = v159;
      v146(v221 + v145 + v239, v237, v242);
      sub_1C4EFE5D8();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFEC38();
      v160 = swift_allocObject();
      sub_1C43FD89C(v160);
      sub_1C448CCC8(v234, v161 + v223, v247);
      SourceSet.init(sources:)(&v250, v222);
      v162 = v250;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v163 = 1702195828;
      v163[1] = 0xE400000000000000;
      *(v232 + v239 + v144[11]) = v162;
      sub_1C4407000();
      *v164 = v243;
      v164[1] = v248;
      sub_1C4414B58(v165);
      v166 = v221 + v145 + 2 * v239;
      v146(v166, v237, v242);
      sub_1C4EFE638();
      sub_1C4EFF888();
      sub_1C4EFE808();
      v167 = sub_1C4EFF068();
      v250 = 3826797;
      v251 = 0xE300000000000000;
      MEMORY[0x1C6940010](v167);

      v168 = v251;
      v214 = v250;
      v169 = swift_allocObject();
      sub_1C4417310(v169);
      sub_1C448CCC8(v234, v170 + v223, v247);
      SourceSet.init(sources:)(&v250, v169);
      v171 = v250;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v172 = (v166 + v144[10]);
      *v172 = v214;
      v172[1] = v168;
      *(v166 + v144[11]) = v171;
      sub_1C441FBF0();
      *(v166 + v173) = v174;
      v175 = (v166 + v144[13]);
      *v175 = v243;
      v175[1] = v248;
      *(v166 + v144[14]) = v176;
      v146(v221 + v145 + 3 * v239, v237, v242);
      sub_1C4EFE638();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFE2A8();
      v177 = swift_allocObject();
      sub_1C43FD89C(v177);
      sub_1C448CCC8(v234, v178 + v223, v247);
      SourceSet.init(sources:)(&v250, v166);
      v179 = v250;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v180 = 3681840;
      v180[1] = 0xE300000000000000;
      *(v232 + 3 * v239 + v144[11]) = v179;
      sub_1C4407000();
      *v181 = v243;
      v181[1] = v248;
      sub_1C4414B58(v182);
      v146(v221 + v145 + 4 * v239, v237, v242);
      sub_1C4EFE638();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFE878();
      v183 = swift_allocObject();
      sub_1C43FD89C(v183);
      sub_1C448CCC8(v234, v184 + v223, v247);
      SourceSet.init(sources:)(&v250, v166);
      v185 = v250;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v186 = v216;
      v186[1] = v218;
      *(v232 + 4 * v239 + v144[11]) = v185;
      sub_1C4407000();
      *v187 = v243;
      v187[1] = v248;
      sub_1C4414B58(v188);
      v189 = v221 + v145 + 5 * v239;
      v146(v189, v237, v242);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFE638();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFEB48();
      v190 = swift_allocObject();
      sub_1C4417310(v190);
      sub_1C448CCC8(v234, v191 + v223, v247);
      SourceSet.init(sources:)(&v250, v190);
      v192 = v250;
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v193 = v216;
      v193[1] = v218;
      *(v189 + v144[11]) = v192;
      sub_1C4407000();
      *v194 = v243;
      v194[1] = v248;
      sub_1C4414B58(v195);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B46DB0(v221);

      swift_setDeallocating();
      sub_1C49E173C();
      v196 = *(v143 + 8);
      v196(v230, v242);
      v196(v237, v242);
      v249 = 1;
      goto LABEL_35;
    }

    v137 = v0[62];
    v138 = v0[20];
    v139 = v0[17];
    v140 = v0[18];

    (*(v140 + 8))(v138, v139);
    sub_1C4420C3C(v137, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v249 = 0;
LABEL_35:
  v197 = v0[63];
  sub_1C43FF130();
  sub_1C4420C3C(v198, &unk_1EC0BA0E0, &qword_1C4F105A0);

  sub_1C4420C3C(v197, &unk_1EC0BA0E0, &qword_1C4F105A0);

  v199 = v0[1];

  return v199(v249);
}

uint64_t sub_1C486AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for GraphTriple(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Source(0);
  sub_1C442B738(v14, &qword_1EDDFD180);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B4AF44();
  swift_setDeallocating();
  sub_1C44DEE40();
  if (*&v13[*(v10 + 36)])
  {
    sub_1C4588D78();
    v16 = *(*a4 + 16);
    sub_1C4589968();
    v17 = *a4;
    *(v17 + 16) = v16 + 1;
    sub_1C448CCC8(v13, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16, type metadata accessor for GraphTriple);
  }

  sub_1C4588D78();
  v18 = *(*a5 + 16);
  sub_1C4589968();
  sub_1C449F0D0(v13, type metadata accessor for GraphTriple);
  v19 = *a5;
  *(v19 + 16) = v18 + 1;
  sub_1C448CCC8(a1, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, type metadata accessor for GraphTriple);
  return 1;
}

uint64_t sub_1C486B184(uint64_t a1)
{
  v3[2] = a1;

  v1 = sub_1C443DD50(sub_1C486C200, v3);

  return v1;
}

uint64_t sub_1C486B1F4(uint64_t a1, uint64_t a2)
{
  sub_1C4420C3C(a2, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v4 = sub_1C4EFF0C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1C440BAA8(a2, 0, 1, v4);
  return 1;
}

uint64_t sub_1C486B328(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1C4F01138();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_1C4F01138();
  v11 = v10;
  v4[5] = v10;
  v12 = a4;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_1C486B420;

  return GraphSimulationXPC.Server.mockTripleEntityTagging(withContactId:inferredRelationshipLabel:)(v6, v8, v9, v11);
}

uint64_t sub_1C486B420(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_1C4EF9798();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1C486B5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  while (1)
  {
    if (v10 == v8)
    {
      return v9;
    }

    sub_1C448CCC8(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, type metadata accessor for GraphTriple);
    sub_1C44CD1F0(&qword_1EDDEBBC0, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
    result = sub_1C4EFBA58();
    if (v2)
    {
      sub_1C449F0D0(v7, type metadata accessor for GraphTriple);
      return v9;
    }

    if ((result & 1) != 0 && __OFADD__(v9++, 1))
    {
      break;
    }

    sub_1C449F0D0(v7, type metadata accessor for GraphTriple);
    ++v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C486B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v10 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1C4EFF658();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF648();
  v17 = sub_1C4EFDE98();
  (*(*(v17 - 8) + 16))(v12, a3, v17);
  sub_1C440BAA8(v12, 0, 1, v17);
  sub_1C4C44CE4(a1, v16, v12, a4, a5, v20);
  sub_1C4420C3C(v12, &qword_1EC0BE4F0, &qword_1C4F37248);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1C486B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v10 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1C4EFF658();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF648();
  v17 = sub_1C4EFDE98();
  (*(*(v17 - 8) + 16))(v12, a3, v17);
  sub_1C440BAA8(v12, 0, 1, v17);
  sub_1C4C452D4(a1, v16, v12, a4, a5, v20);
  sub_1C4420C3C(v12, &qword_1EC0BE4F0, &qword_1C4F37248);
  return (*(v14 + 8))(v16, v13);
}

void sub_1C486BC78(uint64_t a1)
{
  if (a1 < 0 || (sub_1C442DF94(), v5 ^ v6 | v4))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v3 + 8 * (v1 >> 6) + 56) >> v1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 36) == v2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBC98();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C486BCEC(uint64_t a1)
{
  if (a1 < 0 || (sub_1C442DF94(), v5 ^ v6 | v4))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v3 + 8 * (v1 >> 6) + 56) >> v1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 36) == v2)
  {
    v7 = *(*(v3 + 48) + 24 * v1 + 16);
    v8 = sub_1C43FBC98();
    sub_1C45E8718(v8, v9, v7);
    sub_1C43FBC98();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C486BD78(uint64_t a1)
{
  if (a1 < 0 || (sub_1C440D504(), sub_1C442DF94(), v6 ^ v7 | v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v4 + 8 * (v2 >> 6) + 56) >> v2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v4 + 36) != v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = *(v4 + 48);
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = v8 + *(v10 + 72) * v2;

  v11(v1, v12, v9);
}

void sub_1C486BE20(uint64_t a1)
{
  if (a1 < 0 || (sub_1C442DF94(), v5 ^ v6 | v4))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v3 + 8 * (v1 >> 6) + 56) >> v1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 36) != v2)
  {
LABEL_8:
    __break(1u);
  }
}

uint64_t sub_1C486BE74@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v14 = v4;
    v15 = v5;
    v6 = *(a3 + 48) + 56 * result;
    v8 = *(v6 + 16);
    v7 = *(v6 + 32);
    v9 = *v6;
    v13 = *(v6 + 48);
    v12[1] = v8;
    v12[2] = v7;
    v12[0] = v9;
    v10 = *(v6 + 16);
    *a4 = *v6;
    *(a4 + 16) = v10;
    *(a4 + 32) = *(v6 + 32);
    *(a4 + 48) = *(v6 + 48);
    return sub_1C461B90C(v12, v11);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C486BF20(uint64_t a1)
{
  if (a1 < 0 || (sub_1C442DF94(), v5 ^ v6 | v4))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v3 + 8 * (v1 >> 6) + 64) >> v1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 36) == v2)
  {
    v7 = *(*(v3 + 48) + 8 * v1);
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C486BF78(uint64_t a1)
{
  if (a1 < 0 || (sub_1C440D504(), sub_1C442DF94(), v6 ^ v7 | v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v4 + 8 * (v2 >> 6) + 64) >> v2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v4 + 36) != v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = *(v4 + 48);
  sub_1C4EF9DD8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = v8 + *(v10 + 72) * v2;

  v11(v1, v12, v9);
}

uint64_t sub_1C486C020(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_1C442E860(*(a5 + 56) + 40 * a2, result);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C486C0CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C44A7DA0;

  return sub_1C486B328(v2, v3, v5, v4);
}

uint64_t sub_1C486C1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C486B5F8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C486C2A0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C486C348(uint64_t a1)
{
  sub_1C4F01298();
  sub_1C4F01298();

  return sub_1C4F01298();
}

uint64_t sub_1C486C394()
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C486C3F8()
{
  sub_1C4F02AF8();
  sub_1C486C348(v1);
  return sub_1C4F02B68();
}

void sub_1C486C438()
{
  sub_1C441FC04();
  sub_1C456902C(&qword_1EC0BE4F8, qword_1C4F37250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = v3;
  v34 = inited + 32;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = 0;
  v6 = 0;
  while (2)
  {
    v35 = v5;
    v7 = (v34 + 16 * v6);
    v8 = v7[1];
    v9 = *v7 + 64;
    sub_1C43FEC90();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    v38 = v15;
    swift_bridgeObjectRetain_n();
    v39 = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = 0;
    v36 = v14;
    v37 = v9;
    if (v12)
    {
      while (1)
      {
        v17 = v16;
        v18 = v39;
LABEL_8:
        v19 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v20 = (*(v38 + 48) + 48 * (v19 | (v17 << 6)));
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v18 + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!v23)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v24 = v21;
        sub_1C445FAA8(v21, v22);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_1C4F13950;
        *(v27 + 32) = 0x6C43797469746E65;
        *(v27 + 40) = 0xEB00000000737361;
        *(v27 + 48) = sub_1C4F01108();
        *(v27 + 56) = 0x7461636964657270;
        *(v27 + 64) = 0xE900000000000065;
        *(v27 + 72) = sub_1C4F01108();
        *(v27 + 80) = 0xD000000000000015;
        *(v27 + 88) = 0x80000001C4F86600;
        *(v27 + 96) = sub_1C4F01108();
        *(v27 + 104) = 0xD000000000000019;
        *(v27 + 112) = 0x80000001C4FA32C0;
        *(v27 + 120) = sub_1C4F01B58();
        *(v27 + 128) = 0xD000000000000010;
        *(v27 + 136) = 0x80000001C4FA32E0;
        *(v27 + 144) = sub_1C4F01B58();

        sub_1C4468200();
        sub_1C4F00F28();
        sub_1C4F00288();
        sub_1C4F00268();

LABEL_18:
        v16 = v17;
        v14 = v36;
        v9 = v37;
        if (!v12)
        {
          goto LABEL_4;
        }
      }

      v24 = v21;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_12:
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v28 = sub_1C4F00978();
      sub_1C442B738(v28, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = sub_1C4F00968();
      v30 = sub_1C4F01CD8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = sub_1C43FD084();
        v32 = sub_1C43FFD34();
        v40 = v32;
        *v31 = 136315138;

        v33 = sub_1C441D828(v24, v22, &v40);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_1C43F8000, v29, v30, "Unable to get the count for entityClass %s", v31, 0xCu);
        sub_1C440962C(v32);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      goto LABEL_18;
    }

LABEL_4:
    v18 = v39;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v17 >= v14)
      {
        break;
      }

      v12 = *(v9 + 8 * v17);
      ++v16;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    v5 = 1;
    v6 = 1;
    if ((v35 & 1) == 0)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  sub_1C49E1754();
}

void sub_1C486C938(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693D840](a1, a2);
  v21 = sub_1C4EFEEF8();
  if (sub_1C44157D4(v20, 1, v21) == 1)
  {
    sub_1C486D3F8(v20);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_1C43FD084();
      v26 = sub_1C43FFD34();
      v43[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1C441D828(a1, a2, v43);
      _os_log_impl(&dword_1C43F8000, v23, v24, "Unable to encode %s to EntityPredicate", v25, 0xCu);
      sub_1C440962C(v26);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    v39 = a5;
    v40 = a8;
    v27 = sub_1C4EFEC08();
    v29 = v28;
    v30 = *(*(v21 - 8) + 8);
    v30(v20, v21);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C693D840](a3, a4);
    if (sub_1C44157D4(v17, 1, v21) == 1)
    {

      sub_1C486D3F8(v17);
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v31 = sub_1C4F00978();
      sub_1C442B738(v31, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v32 = sub_1C4F00968();
      v33 = sub_1C4F01CD8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = sub_1C43FD084();
        v35 = sub_1C43FFD34();
        v43[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_1C441D828(a3, a4, v43);
        _os_log_impl(&dword_1C43F8000, v32, v33, "Unable to encode %s to EntityPredicate", v34, 0xCu);
        sub_1C440962C(v35);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }
    }

    else
    {
      v36 = sub_1C4EFEC08();
      v38 = v37;
      v30(v17, v21);
      v43[0] = v41;
      v43[1] = v40;
      v43[2] = v27;
      v43[3] = v29;
      v43[4] = v36;
      v43[5] = v38;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *a6;
      sub_1C4662408();
      *a6 = v42;
    }
  }
}

uint64_t sub_1C486CD18()
{
  sub_1C441FC04();
  sub_1C456902C(&qword_1EC0BE4F8, qword_1C4F37250);
  inited = swift_initStackObject();
  *(inited + 32) = v3;
  v65 = inited + 32;
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = 0;
  v5 = 0;
  v6 = 0;
  v64 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v66 = v5;
    v7 = (v65 + 16 * v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = *v7 + 64;
    sub_1C43FEC90();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = 0;
    v70 = v9;
    v71 = v8;
    v68 = v10;
    v69 = v15;
LABEL_3:
    v17 = v16;
    if (!v13)
    {
      goto LABEL_5;
    }

    do
    {
      v16 = v17;
LABEL_8:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v16 << 6);
      v20 = (*(v9 + 48) + 48 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[3];
      v24 = v20[5];
      if (*(v8 + 16))
      {
        v67 = *(*(v9 + 56) + 8 * v19);
        v25 = v20[4];
        v26 = v20[2];
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v27 = v21;
        sub_1C445FAA8(v21, v22);
        v29 = v28;

        if (v29)
        {
          v72[0] = 0;
          v72[1] = 0xE000000000000000;
          sub_1C4F02248();

          strcpy(v72, "EntityClass: ");
          HIWORD(v72[1]) = -4864;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          MEMORY[0x1C6940010](v27, v22);

          MEMORY[0x1C6940010](0x3A746E756F43202CLL, 0xE900000000000020);
          v36 = sub_1C4F02858();
          MEMORY[0x1C6940010](v36);

          v38 = v72[0];
          v37 = v72[1];
          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v39 = swift_initStackObject();
          *(v39 + 16) = xmmword_1C4F0C890;
          *(v39 + 32) = 0x7461636964657270;
          *(v39 + 40) = 0xE900000000000065;
          *(v39 + 48) = v26;
          *(v39 + 56) = v23;
          v40 = v37;

          *(v39 + 64) = 0xD000000000000015;
          *(v39 + 72) = 0x80000001C4F86600;
          *(v39 + 80) = v25;
          *(v39 + 88) = v24;
          *(v39 + 96) = 0xD000000000000019;
          *(v39 + 104) = 0x80000001C4FA32C0;
          v72[0] = v67;
          *(v39 + 112) = sub_1C4F02858();
          *(v39 + 120) = v41;
          v42 = v38;
          v43 = sub_1C4F00F28();
          sub_1C44239FC(v63, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v72[0] = v64;
          v44 = sub_1C445FAA8(v42, v37);
          if (__OFADD__(*(v64 + 16), (v45 & 1) == 0))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            result = sub_1C4F029F8();
            __break(1u);
            return result;
          }

          v46 = v44;
          v47 = v45;
          sub_1C456902C(&qword_1EC0BA8C0, &qword_1C4F147A8);
          v48 = sub_1C4F02458();
          v49 = v72[0];
          v64 = v72[0];
          if (v48)
          {
            v50 = sub_1C445FAA8(v42, v40);
            if ((v47 & 1) != (v51 & 1))
            {
              goto LABEL_37;
            }

            v46 = v50;
            v49 = v64;
          }

          if (v47)
          {

            v49 = v64;
          }

          else
          {
            v49[(v46 >> 6) + 8] |= 1 << v46;
            v52 = (v49[6] + 16 * v46);
            *v52 = v42;
            v52[1] = v40;
            *(v49[7] + 8 * v46) = MEMORY[0x1E69E7CC0];
            v53 = v49[2];
            v54 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            if (v54)
            {
              goto LABEL_36;
            }

            v49[2] = v55;
          }

          v56 = v49[7];
          v57 = *(v56 + 8 * v46);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v56 + 8 * v46) = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C458DAD8();
            v57 = v60;
            *(v56 + 8 * v46) = v60;
          }

          v59 = *(v57 + 16);
          if (v59 >= *(v57 + 24) >> 1)
          {
            sub_1C458DAD8();
            v57 = v61;
            *(v56 + 8 * v46) = v61;
          }

          v15 = v69;
          v9 = v70;
          v10 = v68;
          *(v57 + 16) = v59 + 1;
          *(v57 + 8 * v59 + 32) = v43;
          v63 = sub_1C455B584;
          v8 = v71;
          goto LABEL_3;
        }
      }

      else
      {
        v27 = *v20;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v30 = sub_1C4F00978();
      sub_1C442B738(v30, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CD8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = sub_1C43FD084();
        v34 = sub_1C43FFD34();
        v72[0] = v34;
        *v33 = 136315138;

        v35 = sub_1C441D828(v27, v22, v72);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_1C43F8000, v31, v32, "Unable to get the count for entityClass %s", v33, 0xCu);
        sub_1C440962C(v34);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      v17 = v16;
      v9 = v70;
      v8 = v71;
      v10 = v68;
      v15 = v69;
    }

    while (v13);
    while (1)
    {
LABEL_5:
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v15)
      {
        break;
      }

      v13 = *(v10 + 8 * v16);
      ++v17;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    v5 = 1;
    v6 = 1;
    if ((v66 & 1) == 0)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  sub_1C49E1754();
  sub_1C44239FC(v63, 0);
  return v64;
}

uint64_t sub_1C486D3F8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C486D484()
{
  result = qword_1EDDFA018;
  if (!qword_1EDDFA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA018);
  }

  return result;
}

uint64_t GraphStore.loadConstructionGraphTriples(subject:)(uint64_t a1)
{
  v3[2] = a1;

  v1 = sub_1C49A55B0(sub_1C486D7D4, v3);

  return v1;
}

uint64_t sub_1C486D548@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-1] - v8;
  type metadata accessor for ConstructionGraphTriple(0);
  v16[3] = &type metadata for FusedTripleColumn;
  v16[4] = sub_1C45021B8();
  LOBYTE(v16[0]) = 0;
  v10 = sub_1C4EFF0C8();
  v15[3] = v10;
  v15[4] = sub_1C4496440(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  v11 = sub_1C4422F90(v15);
  (*(*(v10 - 8) + 16))(v11, a2, v10);
  v17[3] = sub_1C4EFB298();
  v17[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v17);
  sub_1C4EFBB28();
  sub_1C4423A0C(v15, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v16);
  sub_1C4496440(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v17);
  sub_1C486DF5C();
  sub_1C4496440(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  v12 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    *a3 = v12;
  }

  return result;
}

uint64_t sub_1C486D88C(uint64_t a1, const char *a2, ...)
{

  v4 = sub_1C443DD50(a1, 0);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2E088);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_1C43F8000, v6, v7, a2, v8, 0xCu);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  return v4;
}

uint64_t sub_1C486DA10@<X0>(uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a2(0);
  sub_1C4496440(a3, a4, a5);
  result = sub_1C4EFAE88();
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1C486DA9C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;

  sub_1C443DD50(sub_1C486DF40, v3);
}

uint64_t sub_1C486DB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a1;
  v24 = a2;
  v25 = a3;
  v23 = a4;
  v35 = sub_1C4EFB4E8();
  v29 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  type metadata accessor for ConstructionGraphTriple(0);
  v31[3] = &type metadata for FusedTripleColumn;
  v31[4] = sub_1C45021B8();
  LOBYTE(v31[0]) = 0;
  v12 = sub_1C4EFF0C8();
  v30[3] = v12;
  v13 = sub_1C4496440(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  v30[4] = v13;
  v14 = sub_1C4422F90(v30);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v24, v12);
  v33 = sub_1C4EFB298();
  v34 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  sub_1C4EFBB28();
  sub_1C4423A0C(v30, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v31);
  sub_1C4496440(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v32);
  v16 = sub_1C4EFBF38();
  sub_1C440BAA8(v8, 1, 1, v16);
  LOBYTE(v31[0]) = 0;
  v33 = v12;
  v34 = v13;
  v17 = sub_1C4422F90(v32);
  v15(v17, v25, v12);
  sub_1C4505DC4();
  sub_1C4EFB568();
  sub_1C4423A0C(v32, &qword_1EC0C5040, &qword_1C4F0F950);
  v18 = v28;
  v19 = sub_1C4EFB8B8();
  if (v18)
  {
    (*(v29 + 8))(v5, v35);
    sub_1C4423A0C(v8, &unk_1EC0BCAB0, &unk_1C4F111A0);
    return (*(v26 + 8))(v11, v9);
  }

  else
  {
    v21 = v19;
    (*(v29 + 8))(v5, v35);
    sub_1C4423A0C(v8, &unk_1EC0BCAB0, &unk_1C4F111A0);
    result = (*(v26 + 8))(v11, v9);
    *v23 = v21;
  }

  return result;
}

unint64_t sub_1C486DF5C()
{
  result = qword_1EDDF00B0;
  if (!qword_1EDDF00B0)
  {
    sub_1C4572308(&qword_1EC0BA580, &unk_1C4F32530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF00B0);
  }

  return result;
}

void sub_1C486DFC0()
{
  v0 = type metadata accessor for GraphTriple(0);
  v49 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C43FD2D8();
  v58 = v1;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v47 = v3;
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FD2D8();
  v46 = v4;
  v5 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v46 - v6;
  v7 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  sub_1C4EFDE98();
  sub_1C43FCDF8();
  v55 = v24;
  v56 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v51 = v25;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE5D8();
  sub_1C4D504A4();
  v50 = v26;
  v27 = *(v9 + 104);
  v28 = v22;
  sub_1C442C8C0();
  v27();
  sub_1C442C8C0();
  v27();
  sub_1C442C8C0();
  v27();
  v29 = v52;
  sub_1C442C8C0();
  v27();
  v30 = v53;
  sub_1C442C8C0();
  v27();
  v31 = v51;
  sub_1C4EFDCD8();

  v32 = *(v9 + 8);
  v32(v30, v7);
  v32(v29, v7);
  v32(v16, v7);
  v32(v19, v7);
  v32(v28, v7);
  v33 = sub_1C4EFF8F8();
  v34 = v54;
  sub_1C440BAA8(v54, 1, 1, v33);
  v35 = sub_1C498DB80();
  sub_1C482ADC8(v34);
  (*(v55 + 8))(v31, v56);
  v36 = *(v35 + 16);
  if (v36)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v37 = v59;
    v38 = v48;
    v39 = v35 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v40 = *(v49 + 72);
    v56 = v35;
    v57 = v40;
    v41 = v46;
    v42 = v47;
    v43 = (v47 + 16);
    do
    {
      v44 = v58;
      sub_1C4709E74(v39, v58);
      (*v43)(v41, v44, v38);
      sub_1C4709ED8(v44);
      v59 = v37;
      v45 = *(v37 + 16);
      if (v45 >= *(v37 + 24) >> 1)
      {
        sub_1C459D178();
        v37 = v59;
      }

      *(v37 + 16) = v45 + 1;
      (*(v42 + 32))(v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v45, v41, v38);
      v39 += v57;
      --v36;
    }

    while (v36);
  }

  sub_1C45972E0();
}

double sub_1C486E5B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v32 = a5;
  v30 = a4;
  v29 = a3;
  v28 = a6;
  v8 = sub_1C456902C(&qword_1EC0BE500, &qword_1C4F37338);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if (qword_1EC0B6BB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, qword_1EC1521C8);
  v38 = v14;
  v39 = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v37);
  v17 = *(*(v14 - 8) + 16);
  v17(v16, v15, v14);
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69A0130];
  v33 = a1;
  v34 = a2;
  v18 = sub_1C4EFB298();
  v19 = MEMORY[0x1E699FE60];
  v41 = v18;
  v42 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v33);
  sub_1C440962C(v37);
  sub_1C4867980();
  sub_1C4EFAE28();
  sub_1C440962C(v40);
  if (qword_1EC0B6BB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1C442B738(v14, qword_1EC1521E0);
  v38 = v14;
  v39 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v37);
  v17(v21, v20, v14);
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69A0130];
  v33 = v29;
  v34 = v30;
  v41 = v18;
  v42 = v19;
  sub_1C4422F90(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v33);
  sub_1C440962C(v37);
  sub_1C486E9B8(&qword_1EC0BE508, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v22 = *(v31 + 8);
  v22(v10, v8);
  sub_1C440962C(v40);
  sub_1C486E9B8(&qword_1EC0BE510, MEMORY[0x1E699FF60]);
  sub_1C4867A5C();
  v23 = v46;
  sub_1C4EFAFF8();
  v22(v13, v8);
  if (!v23)
  {
    result = *&v43;
    v25 = v44;
    v26 = v45;
    v27 = v28;
    *v28 = v43;
    v27[1] = v25;
    v27[2] = v26;
  }

  return result;
}

uint64_t sub_1C486E9B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BE500, &qword_1C4F37338);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C486EA34(uint64_t a1)
{
  v3[2] = a1;

  v1 = sub_1C49A52CC(sub_1C486FD0C, v3);

  return v1;
}

uint64_t sub_1C486EAD0(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{

  v4 = a2(a1, 0);

  return v4;
}

uint64_t sub_1C486EB38@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EventTriple(0);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  result = sub_1C4EFADD8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C486EBC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EventTriple(0);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  result = sub_1C4EFB388();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C486EC90(uint64_t a1)
{
  v3 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C4EFB298();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v14;
    v26[1] = v1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C459D970();
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v16 = v33;
    v20 = (a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v28 = *(v18 + 56);
    v29 = v19;
    v26[2] = v10 + 32;
    v27 = (v18 - 8);
    do
    {
      v21 = v29;
      v29(v8, v20, v3);
      v32[3] = &type metadata for FusedTripleColumn;
      v32[4] = sub_1C45021B8();
      LOBYTE(v32[0]) = 0;
      v31[3] = v3;
      v31[4] = sub_1C486FCA8(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
      v22 = sub_1C4422F90(v31);
      v21(v22, v8, v3);
      sub_1C4EFBB28();
      (*v27)(v8, v3);
      sub_1C44967E0(v31);
      sub_1C440962C(v32);
      v33 = v16;
      v23 = *(v16 + 16);
      if (v23 >= *(v16 + 24) >> 1)
      {
        sub_1C459D970();
        v16 = v33;
      }

      *(v16 + 16) = v23 + 1;
      v12 = (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v17, v30);
      v20 += v28;
      --v15;
    }

    while (v15);
  }

  MEMORY[0x1EEE9AC00](v12);
  v26[-2] = v16;

  v24 = sub_1C49A52CC(sub_1C486FCF0, &v26[-4]);

  return v24;
}

uint64_t sub_1C486EFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v14 = a3;
  v15 = sub_1C4EFB288();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v14 - v8;
  type metadata accessor for EventTriple(0);
  v19[6] = a2;
  sub_1C4EFB268();
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0, MEMORY[0x1E69E6328]);
  sub_1C4F01468();
  (*(v4 + 8))(v6, v15);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF60]);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v10 = v16;
  v11 = v18;
  v12 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v10);
  if (!v11)
  {
    *v14 = v12;
  }

  return result;
}

uint64_t sub_1C486F2E0@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v5 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - v7;
  type metadata accessor for EventTriple(0);
  v15[3] = &type metadata for FusedTripleColumn;
  v15[4] = sub_1C45021B8();
  LOBYTE(v15[0]) = 0;
  v9 = sub_1C4EFF0C8();
  v14[3] = v9;
  v14[4] = sub_1C486FCA8(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  v10 = sub_1C4422F90(v14);
  (*(*(v9 - 8) + 16))(v10, a2, v9);
  v16[3] = sub_1C4EFB298();
  v16[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v16);
  sub_1C4EFBB28();
  sub_1C44967E0(v14);
  sub_1C440962C(v15);
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v16);
  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF60]);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v8, v5);
  if (!v3)
  {
    *v17 = v11;
  }

  return result;
}

uint64_t sub_1C486F58C(uint64_t a1, uint64_t a2, double a3)
{
  *&v5[2] = a3;
  v5[3] = a1;
  v5[4] = a2;

  v3 = sub_1C49A52CC(sub_1C486FC88, v5);

  return v3;
}

uint64_t sub_1C486F600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v38 = a3;
  v33 = a1;
  v31 = a4;
  v7 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  type metadata accessor for EventTriple(0);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0D130;
  *(v14 + 56) = &type metadata for FusedTripleColumn;
  *(v14 + 64) = sub_1C4811294();
  *(v14 + 32) = 8;
  sub_1C486FCA8(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  sub_1C4EFAE08();
  v15 = v8;
  v16 = v10;

  v44 = &type metadata for FusedTripleColumn;
  v17 = sub_1C45021B8();
  v45 = v17;
  LOBYTE(v43[0]) = 8;
  v41 = MEMORY[0x1E69E63B0];
  v42 = MEMORY[0x1E69A0160];
  *v40 = a5;
  v18 = sub_1C4EFB298();
  v47 = v18;
  v48 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v46);
  sub_1C4EFB808();
  sub_1C440962C(v40);
  sub_1C440962C(v43);
  v19 = sub_1C4401CBC(&qword_1EDDFE878, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v37 = v15;
  v20 = *(v15 + 8);
  v35 = v16;
  v20(v16, v7);
  sub_1C440962C(v46);
  v36 = v15 + 8;
  if (a2)
  {
    v40[0] = a2;
    v44 = &type metadata for FusedTripleColumn;
    v45 = v17;
    LOBYTE(v43[0]) = 0;
    v47 = v18;
    v48 = MEMORY[0x1E699FE60];
    v32 = sub_1C4422F90(v46);
    sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0, MEMORY[0x1E69E6328]);
    sub_1C486FCA8(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
    sub_1C4F01458();
    sub_1C440962C(v43);
    v21 = v35;
    sub_1C4EFB438();
    v20(v13, v7);
    sub_1C440962C(v46);
    (*(v37 + 32))(v13, v21, v7);
  }

  v32 = v19;
  v22 = v13;
  if (v38)
  {
    v40[0] = v38;
    v47 = &type metadata for FusedTripleColumn;
    v48 = v17;
    LOBYTE(v46[0]) = 1;
    v44 = v18;
    v45 = MEMORY[0x1E699FE60];
    v29[1] = sub_1C4422F90(v43);
    v30 = v20;
    sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
    sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0, MEMORY[0x1E69E6328]);
    sub_1C486FCA8(&unk_1EDDFA1D8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9690]);
    v23 = v37;
    sub_1C4F01458();
    sub_1C440962C(v46);
    v39 = v38;
    v47 = &type metadata for FusedTripleColumn;
    v48 = v17;
    LOBYTE(v46[0]) = 3;
    v41 = v18;
    v24 = MEMORY[0x1E699FE60];
    v42 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v40);
    v20 = v30;
    sub_1C4F01458();
    sub_1C440962C(v46);
    v47 = v18;
    v48 = v24;
    sub_1C4422F90(v46);
    sub_1C4EFBB78();
    sub_1C440962C(v40);
    sub_1C440962C(v43);
    v25 = v35;
    sub_1C4EFB438();
    v20(v22, v7);
    sub_1C440962C(v46);
    (*(v23 + 32))(v22, v25, v7);
  }

  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF60]);
  sub_1C486FCA8(&qword_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v26 = v34;
  v27 = sub_1C4EFAFE8();
  result = (v20)(v22, v7);
  if (!v26)
  {
    *v31 = v27;
  }

  return result;
}

uint64_t sub_1C486FCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C486FDB4(uint64_t a1)
{

  v2 = sub_1C49A5480(a1, 0);

  return v2;
}

uint64_t sub_1C486FE68@<X0>(uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a2(0);
  sub_1C486FEF4(a3, a4, a5);
  result = sub_1C4EFADD8();
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1C486FEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C486FF70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C4EFBD38();
  sub_1C44F9918(v5, a2);
  sub_1C442B738(v5, a2);
  return sub_1C4EFBD48();
}

double sub_1C486FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  v34 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v30 - v15;
  sub_1C4EFBD18();
  if (qword_1EDDFE760 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4EFBD38();
  v17 = sub_1C442B738(v16, qword_1EDDFE768);
  v37[3] = v16;
  v37[4] = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v37);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  v36[3] = MEMORY[0x1E69E6158];
  v36[4] = MEMORY[0x1E69A0130];
  v36[0] = v31;
  v36[1] = v32;
  v40 = sub_1C4EFB298();
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(&v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v36);
  sub_1C440962C(v37);
  sub_1C4EFBCD8();
  (*(v5 + 8))(v8, v3);
  sub_1C440962C(&v38);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFCA58 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v16, qword_1EDDFCA60);
  v22 = MEMORY[0x1E69A0038];
  *(v20 + 56) = v16;
  *(v20 + 64) = v22;
  v23 = sub_1C4422F90((v20 + 32));
  v19(v23, v21, v16);
  sub_1C4401CBC(&unk_1EDDFE840, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF88]);
  v24 = v33;
  sub_1C4EFB688();

  v25 = *(v34 + 8);
  v25(v13, v9);
  sub_1C441310C();
  sub_1C4401CBC(v26, &qword_1EC0B9AC8, &unk_1C4F10E00, v27);
  v28 = v42;
  sub_1C4EFB9B8();
  v25(v24, v9);
  if (!v28)
  {
    result = v38;
    if (v39)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_1C4870410(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E6158];
  v15 = MEMORY[0x1E69A0138];
  *(v13 + 16) = xmmword_1C4F0CE60;
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  v16 = MEMORY[0x1E69E63B0];
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v17 = MEMORY[0x1E69A0168];
  *(v13 + 96) = v16;
  *(v13 + 104) = v17;
  *(v13 + 72) = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFBFF8();
  return (*(v9 + 8))(v12, v7);
}

double sub_1C4870588(uint64_t a1)
{
  v71 = sub_1C456902C(&qword_1EC0BE518, &qword_1C4F37340);
  sub_1C43FCDF8();
  v70 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - v5;
  v6 = sub_1C456902C(&qword_1EC0BE520, &qword_1C4F37348);
  sub_1C43FCDF8();
  v73 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  v75 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C43FCDF8();
  v74 = v11;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - v13;
  v15 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C43FCDF8();
  v17 = v16;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  type metadata accessor for GraphTriple(0);
  v79 = sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v21 = swift_allocObject();
  v78 = xmmword_1C4F0D130;
  *(v21 + 16) = xmmword_1C4F0D130;
  v84 = &type metadata for FusedTripleColumn;
  v77 = sub_1C45021B8();
  v85 = v77;
  LOBYTE(v82) = 8;
  v22 = sub_1C4EFB298();
  v23 = MEMORY[0x1E699FE50];
  v76 = v22;
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  sub_1C4422F90((v21 + 32));
  sub_1C443241C();
  sub_1C440962C(&v82);
  sub_1C4870DF0(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C43FD8AC();

  sub_1C441310C();
  sub_1C4401CBC(v24, &unk_1EC0C0800, &qword_1C4F0F948, v25);
  v80 = a1;
  v26 = v81;
  sub_1C4EFB9B8();
  if (v26)
  {
    (*(v17 + 8))(v20, v15);
  }

  else
  {
    v69 = v10;
    v81 = v20;
    v27 = v74;
    v28 = sub_1C4411DC4();
    v29 = 0.0;
    if (v30)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0.0;
    }

    type metadata accessor for EventTriple(0);
    v32 = sub_1C441FC18();
    sub_1C440AC24(v32);
    v34 = sub_1C442CB80(v33);
    *(v34 + 64) = MEMORY[0x1E699FE50];
    sub_1C4422F90((v34 + 32));
    sub_1C443241C();
    sub_1C440962C(&v82);
    sub_1C4870DF0(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
    sub_1C43FD8AC();

    sub_1C441310C();
    sub_1C4401CBC(v35, v36, v37, v38);
    v39 = v75;
    sub_1C4EFB9B8();
    v68 = v14;
    v40 = sub_1C4411DC4();
    if (v30)
    {
      v29 = v40;
    }

    type metadata accessor for ExpiredGraphTriple(0);
    v41 = sub_1C441FC18();
    sub_1C440AC24(v41);
    v43 = sub_1C442CB80(v42);
    *(v43 + 64) = MEMORY[0x1E699FE50];
    sub_1C4422F90((v43 + 32));
    sub_1C443241C();
    sub_1C440962C(&v82);
    sub_1C4870DF0(qword_1EDDFD7D0, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
    sub_1C43FD8AC();

    sub_1C441310C();
    sub_1C4401CBC(v44, v45, v46, v47);
    v48 = v6;
    sub_1C4EFB9B8();
    v49 = sub_1C4411DC4();
    if (v30)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0.0;
    }

    type metadata accessor for ExpiredEventTriple(0);
    v51 = sub_1C441FC18();
    sub_1C440AC24(v51);
    v53 = sub_1C442CB80(v52);
    *(v53 + 64) = MEMORY[0x1E699FE50];
    sub_1C4422F90((v53 + 32));
    sub_1C443241C();
    sub_1C440962C(&v82);
    sub_1C4870DF0(&qword_1EDDFD830, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
    sub_1C43FD8AC();

    sub_1C441310C();
    sub_1C4401CBC(v54, v55, v56, v57);
    v58 = v71;
    sub_1C4EFB9B8();
    v59 = v82;
    v60 = v83;
    v62 = sub_1C486FFD0(v80, 0xD00000000000001CLL, 0x80000001C4FA3350);
    if (v60)
    {
      v59 = 0.0;
    }

    sub_1C456902C(&qword_1EC0B87D0, &qword_1C4F0DBC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = v59;
    *(inited + 40) = v62;
    sub_1C4870E38(inited, v31, v29, v50);
    v1 = v64;
    swift_setDeallocating();
    sub_1C43FFB20();
    v65(v72, v58);
    sub_1C43FFB20();
    v66(v69, v48);
    (*(v27 + 8))(v68, v39);
    (*(v17 + 8))(v81, v15);
  }

  return v1;
}

uint64_t sub_1C4870DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4870E38(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

double sub_1C4870E6C()
{
  v1 = *v0;
  v12 = v0;
  v13 = v1;

  sub_1C49A532C(sub_1C4870FC0, &v11, v2, v3, v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

void sub_1C4870F24(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1C4870588(a1);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1C486FFD0(a1, 0xD000000000000019, 0x80000001C4FA3370);
    v8 = sub_1C486FFD0(a1, 0xD00000000000001CLL, 0x80000001C4FA3350);
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v8;
  }
}

uint64_t sub_1C4870FDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v23 == v4)
    {
    }

    v5 = *(type metadata accessor for GraphTriple(0) - 8);
    v24 = v4;
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4;
    v7 = objc_autoreleasePoolPush();
    v8 = GraphStore.loadGraphTriples(subject:)();
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *a3;
    v25 = *a3;
    sub_1C44E3664();
    if (__OFADD__(v9[2], (v11 & 1) == 0))
    {
      break;
    }

    v12 = v10;
    v13 = v11;
    sub_1C456902C(&qword_1EC0B97D0, &qword_1C4F0F940);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_15;
      }

      v12 = v14;
    }

    if (v13)
    {
      *(v25[7] + 8 * v12) = v8;
    }

    else
    {
      v25[(v12 >> 6) + 8] |= 1 << v12;
      v16 = v25[6];
      v17 = sub_1C4EFF0C8();
      (*(*(v17 - 8) + 16))(v16 + *(*(v17 - 8) + 72) * v12, v6, v17);
      *(v25[7] + 8 * v12) = v8;
      v18 = v25[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_14;
      }

      v25[2] = v20;
    }

    *a3 = v25;
    objc_autoreleasePoolPop(v7);
    v4 = v24 + 1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  sub_1C4EFF0C8();
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void (*sub_1C487129C(uint64_t a1, void (*a2)(uint64_t, void)))(uint64_t, void)
{

  a2(a1, 0);
  sub_1C4407020();
  return a2;
}

uint64_t sub_1C4871328@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GraphTriple(0);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  result = sub_1C4EFB388();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t GraphStore.loadGraphTriples(subject:objectPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](42, 0xE100000000000000);
  v3 = sub_1C4871464();

  return v3;
}

uint64_t sub_1C4871464()
{

  sub_1C441FC38(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C48714E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19[0] = a4;
  v19[1] = a1;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  type metadata accessor for GraphTriple(0);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0D130;
  v15 = MEMORY[0x1E69A0138];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = v15;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE18();
  (*(v7 + 8))(v9, v6);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v16 = v19[3];
  v17 = sub_1C4EFAFE8();
  result = (*(v11 + 8))(v13, v10);
  if (!v16)
  {
    *v19[0] = v17;
  }

  return result;
}

uint64_t GraphStore.loadGraphTriples(subject:predicates:)()
{

  sub_1C441FC38(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C487181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v21 = a4;
  v5 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  type metadata accessor for GraphTriple(0);
  v26 = &type metadata for FusedTripleColumn;
  v12 = sub_1C45021B8();
  v27 = v12;
  LOBYTE(v25[0]) = 0;
  v13 = sub_1C4EFF0C8();
  v24[3] = v13;
  v24[4] = sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  v14 = sub_1C4422F90(v24);
  (*(*(v13 - 8) + 16))(v14, a2, v13);
  v15 = sub_1C4EFB298();
  v16 = MEMORY[0x1E699FE60];
  v29 = v15;
  v30 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v28);
  sub_1C4EFBB28();
  sub_1C44967E0(v24);
  sub_1C440962C(v25);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v28);
  v24[0] = v22;
  v26 = &type metadata for FusedTripleColumn;
  v27 = v12;
  LOBYTE(v25[0]) = 1;
  v29 = v15;
  v30 = v16;
  sub_1C4422F90(v28);
  sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
  sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0, MEMORY[0x1E69E6328]);
  sub_1C45022E4(&unk_1EDDFA1D8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9690]);
  sub_1C4F01458();
  sub_1C440962C(v25);
  sub_1C4401CBC(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v17 = *(v6 + 8);
  v17(v8, v5);
  sub_1C440962C(v28);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v18 = v31;
  v19 = sub_1C4EFAFE8();
  result = (v17)(v11, v5);
  if (!v18)
  {
    *v21 = v19;
  }

  return result;
}

uint64_t sub_1C4871C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a1;
  v5[3] = a2;

  sub_1C4505B00(a3, v5);
  sub_1C4407020();
  return a3;
}

uint64_t sub_1C4871C9C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a4;
  v7 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-1] - v9;
  type metadata accessor for GraphTriple(0);
  v15[3] = &type metadata for FusedTripleColumn;
  v15[4] = sub_1C45021B8();
  LOBYTE(v15[0]) = 4;
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = MEMORY[0x1E69A0130];
  v14[0] = a2;
  v14[1] = a3;
  v16[3] = sub_1C4EFB298();
  v16[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v14);
  sub_1C440962C(v15);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v16);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v4)
  {
    *v17 = v11;
  }

  return result;
}

uint64_t sub_1C4871EF4@<X0>(uint64_t *a2@<X8>)
{
  v13 = a2;
  v3 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-1] - v5;
  type metadata accessor for GraphTriple(0);
  v11[3] = &type metadata for FusedTripleColumn;
  v11[4] = sub_1C45021B8();
  LOBYTE(v11[0]) = 1;
  v10[3] = sub_1C4EFEEF8();
  v10[4] = sub_1C45022E4(&unk_1EDDFA1D8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9690]);
  sub_1C4422F90(v10);
  sub_1C4EFE5D8();
  v12[3] = sub_1C4EFB298();
  v12[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v12);
  sub_1C4EFBB28();
  sub_1C44967E0(v10);
  sub_1C440962C(v11);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v12);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v7 = sub_1C4EFAFE8();
  result = (*(v4 + 8))(v6, v3);
  if (!v2)
  {
    *v13 = v7;
  }

  return result;
}

uint64_t sub_1C48721C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a5;
  v26 = a3;
  v29 = a1;
  v28 = sub_1C4EFB768();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  type metadata accessor for GraphTriple(0);
  v31[3] = &type metadata for FusedTripleColumn;
  v31[4] = sub_1C45021B8();
  LOBYTE(v31[0]) = 0;
  v16 = sub_1C4EFF0C8();
  v30[3] = v16;
  v30[4] = sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  v17 = sub_1C4422F90(v30);
  (*(*(v16 - 8) + 16))(v17, a2, v16);
  v32[3] = sub_1C4EFB298();
  v32[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  sub_1C4EFBB28();
  sub_1C44967E0(v30);
  sub_1C440962C(v31);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v32);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0D130;
  v19 = MEMORY[0x1E69A0138];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = v19;
  *(v18 + 32) = v26;
  *(v18 + 40) = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4401CBC(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF70]);
  sub_1C4EFB428();
  (*(v7 + 8))(v9, v28);
  v20 = *(v27 + 8);
  v20(v12, v10);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v21 = v32[7];
  v22 = sub_1C4EFAFE8();
  result = (v20)(v15, v10);
  if (!v21)
  {
    *v25 = v22;
  }

  return result;
}

uint64_t sub_1C4872610(uint64_t a1)
{
  v3 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C4EFB298();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v14;
    v27[1] = v1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C459D970();
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v16 = v34;
    v20 = (a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v29 = *(v18 + 56);
    v30 = v19;
    v27[2] = v10 + 32;
    v28 = (v18 - 8);
    do
    {
      v21 = v30;
      v30(v8, v20, v3);
      v33[3] = &type metadata for FusedTripleColumn;
      v33[4] = sub_1C45021B8();
      LOBYTE(v33[0]) = 0;
      v32[3] = v3;
      sub_1C4419880();
      v32[4] = sub_1C45022E4(&qword_1EDDFCCA0, v22, MEMORY[0x1E69A9800]);
      v23 = sub_1C4422F90(v32);
      v21(v23, v8, v3);
      sub_1C4EFBB28();
      (*v28)(v8, v3);
      sub_1C44967E0(v32);
      sub_1C440962C(v33);
      v34 = v16;
      v24 = *(v16 + 16);
      if (v24 >= *(v16 + 24) >> 1)
      {
        sub_1C459D970();
        v16 = v34;
      }

      *(v16 + 16) = v24 + 1;
      v12 = (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v17, v31);
      v20 += v29;
      --v15;
    }

    while (v15);
  }

  MEMORY[0x1EEE9AC00](v12);
  v27[-2] = v16;

  v25 = sub_1C4505B00(sub_1C487360C, &v27[-4]);

  return v25;
}

uint64_t sub_1C4872954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v14 = a3;
  v15 = sub_1C4EFB288();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v14 - v8;
  type metadata accessor for GraphTriple(0);
  v19[6] = a2;
  sub_1C4EFB268();
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0, MEMORY[0x1E69E6328]);
  sub_1C4F01468();
  (*(v4 + 8))(v6, v15);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v10 = v16;
  v11 = v18;
  v12 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v10);
  if (!v11)
  {
    *v14 = v12;
  }

  return result;
}

uint64_t sub_1C4872C50()
{

  sub_1C441FC38(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C4872CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v38 = a3;
  v33 = a1;
  v31 = a4;
  v7 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  type metadata accessor for GraphTriple(0);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0D130;
  *(v14 + 56) = &type metadata for FusedTripleColumn;
  *(v14 + 64) = sub_1C4811294();
  *(v14 + 32) = 8;
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE08();
  v15 = v8;
  v16 = v10;

  v44 = &type metadata for FusedTripleColumn;
  v17 = sub_1C45021B8();
  v45 = v17;
  LOBYTE(v43[0]) = 8;
  v41 = MEMORY[0x1E69E63B0];
  v42 = MEMORY[0x1E69A0160];
  *v40 = a5;
  v18 = sub_1C4EFB298();
  v47 = v18;
  v48 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v46);
  sub_1C4EFB808();
  sub_1C440962C(v40);
  sub_1C440962C(v43);
  v19 = sub_1C4401CBC(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v37 = v15;
  v20 = *(v15 + 8);
  v35 = v16;
  v20(v16, v7);
  sub_1C440962C(v46);
  v36 = v15 + 8;
  if (a2)
  {
    v40[0] = a2;
    v44 = &type metadata for FusedTripleColumn;
    v45 = v17;
    LOBYTE(v43[0]) = 0;
    v47 = v18;
    v48 = MEMORY[0x1E699FE60];
    v32 = sub_1C4422F90(v46);
    sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0, MEMORY[0x1E69E6328]);
    sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
    sub_1C4F01458();
    sub_1C440962C(v43);
    v21 = v35;
    sub_1C4EFB438();
    v20(v13, v7);
    sub_1C440962C(v46);
    (*(v37 + 32))(v13, v21, v7);
  }

  v32 = v19;
  v22 = v13;
  if (v38)
  {
    v40[0] = v38;
    v47 = &type metadata for FusedTripleColumn;
    v48 = v17;
    LOBYTE(v46[0]) = 1;
    v44 = v18;
    v45 = MEMORY[0x1E699FE60];
    v29[1] = sub_1C4422F90(v43);
    v30 = v20;
    sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
    sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0, MEMORY[0x1E69E6328]);
    sub_1C45022E4(&unk_1EDDFA1D8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9690]);
    v23 = v37;
    sub_1C4F01458();
    sub_1C440962C(v46);
    v39 = v38;
    v47 = &type metadata for FusedTripleColumn;
    v48 = v17;
    LOBYTE(v46[0]) = 3;
    v41 = v18;
    v24 = MEMORY[0x1E699FE60];
    v42 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v40);
    v20 = v30;
    sub_1C4F01458();
    sub_1C440962C(v46);
    v47 = v18;
    v48 = v24;
    sub_1C4422F90(v46);
    sub_1C4EFBB78();
    sub_1C440962C(v40);
    sub_1C440962C(v43);
    v25 = v35;
    sub_1C4EFB438();
    v20(v22, v7);
    sub_1C440962C(v46);
    (*(v23 + 32))(v22, v25, v7);
  }

  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v26 = v34;
  v27 = sub_1C4EFAFE8();
  result = (v20)(v22, v7);
  if (!v26)
  {
    *v31 = v27;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall GraphStore.loadGraphTriplesGroupedBySubject(groupsContainingObject:)(Swift::String groupsContainingObject)
{
  v2 = GraphStore.loadGraphTriples(object:)(groupsContainingObject._countAndFlagsBits, groupsContainingObject._object);
  sub_1C4EFF0C8();
  sub_1C456902C(&qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4419880();
  sub_1C45022E4(v3, v4, MEMORY[0x1E69A9820]);
  v7 = sub_1C4F00F28();

  sub_1C4870FDC(v2, v1, &v7);

  v6 = v7;
  result.value._rawValue = v6;
  result.is_nil = v5;
  return result;
}

Swift::Int __swiftcall GraphStore.clearGraphTriples()()
{

  sub_1C443DD50(sub_1C4873520, 0);
  sub_1C4407020();
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2E088);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "GraphStore: clearGraphTriples: %ld deleted.", v4, 0xCu);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  return v0;
}

uint64_t sub_1C487354C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for GraphTriple(0);
  v8 = sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  result = a2(a1, v7, v8);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4873648()
{

  sub_1C446C37C(sub_1C48736AC, 0);
}

uint64_t sub_1C48736AC(uint64_t a1)
{
  type metadata accessor for ProgressTokens(0);
  sub_1C4490890(&qword_1EDDF7A98, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);
  result = sub_1C4EFAE88();
  if (!v1)
  {
    type metadata accessor for ConstructionProgressTokens(0);
    sub_1C4490890(&qword_1EDDE1100, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);
    sub_1C4EFAE88();
    type metadata accessor for ConstructionPhaseStatus(0);
    sub_1C4490890(&qword_1EDDE2608, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);
    return sub_1C4EFAE88();
  }

  return result;
}

uint64_t sub_1C48737EC()
{

  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

void sub_1C4873854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for EntityTriple(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3;
  v20 = a4;
  v18[1] = a2;
LABEL_2:
  v12 = SourceEntityStore.Iterator.next()();
  if (v12)
  {
    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    v21 = v13;
    v15 = a3(v13);
    objc_autoreleasePoolPop(v14);
    v16 = 0;
    v17 = *(v15 + 16);
    while (1)
    {
      if (v17 == v16)
      {

        a3 = v19;
        goto LABEL_2;
      }

      if (v16 >= *(v15 + 16))
      {
        break;
      }

      sub_1C4490938(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v11, type metadata accessor for EntityTriple);
      sub_1C4490890(&qword_1EDDF8D98, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
      sub_1C4EFB6C8();
      if (v4)
      {
        sub_1C4491300(v11, type metadata accessor for EntityTriple);

        return;
      }

      ++v16;
      sub_1C4491300(v11, type metadata accessor for EntityTriple);
    }

    __break(1u);
  }
}

uint64_t sub_1C4873A78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EntityPair(0);
  sub_1C4490890(&qword_1EDDFA0E0, type metadata accessor for EntityPair, &unk_1C4F370FC);
  return sub_1C4EFB6C8();
}

void sub_1C4873B00()
{

  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "GraphStore: promoteConstructionGraphToProduction: completed", v5, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

void sub_1C4873C18(NSObject *a1, uint64_t a2, char a3)
{
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2E088);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "GraphStore: promoteConstructionGraphToProduction: starting", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  sub_1C487408C(a1, 0xD000000000000010, 0x80000001C4FA3390, 0x675F656C62617473, 0xEC00000068706172, 0xD000000000000019, 0x80000001C4FA2FA0);
  if (!v3)
  {
    sub_1C487408C(a1, 0x6E6576655F646C6FLL, 0xEF68706172675F74, 0x72675F746E657665, 0xEB00000000687061, 0xD000000000000018, 0x80000001C4FA2FC0);
    sub_1C487408C(a1, 0xD000000000000013, 0x80000001C4FA33B0, 0x73736572676F7270, 0xEF736E656B6F745FLL, 0xD00000000000001CLL, 0x80000001C4FA3060);
    sub_1C487408C(a1, 0xD000000000000010, 0x80000001C4FA33D0, 0x74735F6573616870, 0xEC00000073757461, 0xD000000000000019, 0x80000001C4FA3040);
    sub_1C487594C(a1);
    if ((a3 & 1) == 0)
    {
      type metadata accessor for KeyValueStore(0);
      v11 = OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
      v12 = sub_1C49A4CB8(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);
      v23 = v13;
      v15 = v14;
      v16 = sub_1C486FFD0(a1, 0xD000000000000019, 0x80000001C4FA3370);
      if (v12)
      {
        v17 = v15;
        v18 = sub_1C4493790();
        v19 = v12;
        if (v18 != 2)
        {
          v20 = v11;
          goto LABEL_11;
        }
      }

      else
      {
        v17 = v15;
        v19 = 0;
      }

      v20 = v11;
      if (v16 != 0.0)
      {
LABEL_12:

        return;
      }

LABEL_11:
      sub_1C4EF9AE8();
      v22 = v21;
      sub_1C49A4D58(a2 + v20, &v24);
      sub_1C48767E8(v22, 0);
      v27 = v24;
      sub_1C4420C3C(&v27, &qword_1EC0BE528, &qword_1C4F37350);
      v26 = v25;
      sub_1C4471348(&v26);
      sub_1C4870410(*&v22, a1, 0xD000000000000019, 0x80000001C4FA3370);
      sub_1C4876AF8(v19, v23, v17);
      goto LABEL_12;
    }
  }
}

uint64_t sub_1C487408C(NSObject *a1, uint64_t a2, uint64_t a3, const char *a4, void *a5, int64_t a6, uint64_t a7)
{
  v179 = a7;
  v180 = a6;
  v183 = a4;
  v184 = a5;
  v10 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v177 = *(v10 - 8);
  v178 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v160 - v11;
  v12 = sub_1C4EFB768();
  v181 = *(v12 - 8);
  v182 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v175 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v160 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v160 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v160 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v160 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v160 - v27;
  v29 = v186;
  result = sub_1C4EFBE58();
  if (!v29)
  {
    v169 = v16;
    v170 = v22;
    v186 = a1;
    v172 = v28;
    v173 = a2;
    v174 = a3;
    v171 = v25;
    if (result)
    {
      sub_1C4EFBF68();
      v31 = 0;
      v33 = v183;
      v32 = v184;
    }

    else
    {
      v33 = v183;
      v32 = v184;
      v31 = 0;
    }

    v167 = v19;
    v185[0] = v33;
    v185[1] = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
    v35 = v185[0];
    v34 = v185[1];
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v36 = sub_1C4F00978();
    v37 = sub_1C442B738(v36, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v168 = v37;
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CB8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v166 = 0;
      v41 = v35;
      v42 = v40;
      v43 = swift_slowAlloc();
      v185[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1C441D828(v41, v34, v185);
      _os_log_impl(&dword_1C43F8000, v38, v39, "GraphStore: promoteConstructionGraphToProduction: fetching FTS data for %s", v42, 0xCu);
      sub_1C440962C(v43);
      MEMORY[0x1C6942830](v43, -1, -1);
      v44 = v42;
      v35 = v41;
      v31 = v166;
      MEMORY[0x1C6942830](v44, -1, -1);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C46A9F90(v35, v34, 0x656C626174, 0xE500000000000000);
    if (v31)
    {
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      v46 = v45;

      v47 = sub_1C46A9F90(v33, v32, 0x72656767697274, 0xE700000000000000);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v48 = sub_1C4F00968();
      v49 = sub_1C4F01CB8();

      v50 = os_log_type_enabled(v48, v49);
      v166 = v47;
      v162 = v34;
      v161 = v35;
      if (v50)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v35;
        v54 = v52;
        v185[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1C441D828(v53, v34, v185);
        _os_log_impl(&dword_1C43F8000, v48, v49, "GraphStore: promoteConstructionGraphToProduction: dropping FTS objects for %s", v51, 0xCu);
        sub_1C440962C(v54);
        MEMORY[0x1C6942830](v54, -1, -1);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      v55 = v46 + 64;
      v56 = 1 << *(v46 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v46 + 64);
      v59 = (v56 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v60 = 0;
      v61 = v181;
      for (i = v46 + 64; v58; v55 = i)
      {
        v62 = v60;
LABEL_20:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFBF68();
        v58 &= v58 - 1;

        v60 = v62;
      }

      while (1)
      {
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v62 >= v59)
        {

          v63 = v166 + 64;
          v64 = 1 << *(v166 + 32);
          v65 = -1;
          if (v64 < 64)
          {
            v65 = ~(-1 << v64);
          }

          v66 = v65 & *(v166 + 64);
          v67 = (v64 + 63) >> 6;
          v164 = (v61 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v68 = 0;
          v181 = v46;
          for (j = v63; v66; v63 = j)
          {
            v69 = v68;
LABEL_29:
            v70 = (*(v166 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v66)))));
            v71 = *v70;
            v72 = v70[1];
            strcpy(v185, "DROP TRIGGER ");
            HIWORD(v185[1]) = -4864;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](v71, v72);
            v73 = v172;
            sub_1C4EFB758();
            sub_1C4EFBFF8();
            v66 &= v66 - 1;
            (*v164)(v73, v182);

            v68 = v69;
          }

          while (1)
          {
            v69 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_57;
            }

            if (v69 >= v67)
            {

              v74 = sub_1C4F00968();
              v75 = sub_1C4F01CB8();
              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                *v76 = 0;
                _os_log_impl(&dword_1C43F8000, v74, v75, "GraphStore: promoteConstructionGraphToProduction: fetching index data", v76, 2u);
                MEMORY[0x1C6942830](v76, -1, -1);
              }

              v77 = v186;
              v78 = sub_1C46A9F90(v183, v184, 0x7865646E69, 0xE500000000000000);
              v160 = sub_1C46A9F90(v180, v179, 0x7865646E69, 0xE500000000000000);
              v79 = sub_1C4F00968();
              v80 = sub_1C4F01CB8();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                *v81 = 0;
                _os_log_impl(&dword_1C43F8000, v79, v80, "GraphStore: promoteConstructionGraphToProduction: dropping indexes", v81, 2u);
                MEMORY[0x1C6942830](v81, -1, -1);
              }

              v82 = v78 + 64;
              v83 = 1 << *(v78 + 32);
              v84 = -1;
              if (v83 < 64)
              {
                v84 = ~(-1 << v83);
              }

              v85 = v84 & *(v78 + 64);
              v86 = (v83 + 63) >> 6;
              v172 = v78;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v87 = 0;
              if (v85)
              {
                while (1)
                {
                  v88 = v87;
LABEL_42:
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v79 = v77;
                  sub_1C4EFBF58();
                  v85 &= v85 - 1;

                  v87 = v88;
                  if (!v85)
                  {
                    goto LABEL_39;
                  }
                }
              }

              while (1)
              {
LABEL_39:
                v88 = v87 + 1;
                if (__OFADD__(v87, 1))
                {
                  __break(1u);
                  goto LABEL_61;
                }

                if (v88 >= v86)
                {
                  break;
                }

                v85 = *(v82 + 8 * v88);
                ++v87;
                if (v85)
                {
                  goto LABEL_42;
                }
              }

              v88 = v160 + 64;
              v89 = 1 << *(v160 + 32);
              v90 = -1;
              if (v89 < 64)
              {
                v90 = ~(-1 << v89);
              }

              v91 = v90 & *(v160 + 64);
              v92 = (v89 + 63) >> 6;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              for (k = 0; v91; k = v94)
              {
                v94 = k;
LABEL_51:
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v79 = v186;
                sub_1C4EFBF58();
                v91 &= v91 - 1;
              }

              while (1)
              {
                v94 = k + 1;
                if (__OFADD__(k, 1))
                {
                  break;
                }

                if (v94 >= v92)
                {

                  v95 = sub_1C4F00968();
                  v96 = sub_1C4F01CB8();
                  if (os_log_type_enabled(v95, v96))
                  {
                    v97 = swift_slowAlloc();
                    *v97 = 0;
                    _os_log_impl(&dword_1C43F8000, v95, v96, "GraphStore: promoteConstructionGraphToProduction: renaming tables", v97, 2u);
                    MEMORY[0x1C6942830](v97, -1, -1);
                  }

                  sub_1C4EFBFE8();
                  sub_1C4EFBFE8();
                  sub_1C4EFBFE8();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v98 = v176;
                  sub_1C4EFBD18();
                  v99 = v178;
                  sub_1C4EFBD08();
                  (*(v177 + 8))(v98, v99);
                  v100 = v162;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v79 = sub_1C4F00968();
                  v101 = sub_1C4F01CB8();
                  v102 = v100;

                  if (os_log_type_enabled(v79, v101))
                  {
                    v104 = swift_slowAlloc();
                    v105 = swift_slowAlloc();
                    v185[0] = v105;
                    *v104 = 136315138;
                    v106 = sub_1C441D828(v161, v102, v185);

                    *(v104 + 4) = v106;
                    _os_log_impl(&dword_1C43F8000, v79, v101, "GraphStore: promoteConstructionGraphToProduction: recreating FTS table: %s", v104, 0xCu);
                    sub_1C440962C(v105);
                    MEMORY[0x1C6942830](v105, -1, -1);
                    MEMORY[0x1C6942830](v104, -1, -1);
                    goto LABEL_63;
                  }

                  goto LABEL_62;
                }

                v91 = *(v88 + 8 * v94);
                ++k;
                if (v91)
                {
                  goto LABEL_51;
                }
              }

LABEL_61:
              __break(1u);
LABEL_62:

LABEL_63:

              v107 = 1 << *(v181 + 32);
              v108 = -1;
              if (v107 < 64)
              {
                v108 = ~(-1 << v107);
              }

              v109 = v108 & *(v181 + 64);
              v184 = ((v107 + 63) >> 6);
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v110 = 0;
              if (v109)
              {
                while (1)
                {
                  v111 = v110;
LABEL_70:
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v112 = v171;
                  sub_1C4EFB758();
                  sub_1C4EFBFF8();
                  v109 &= v109 - 1;
                  (*v164)(v112, v182);

                  v110 = v111;
                  if (!v109)
                  {
                    goto LABEL_67;
                  }
                }
              }

              while (1)
              {
LABEL_67:
                v111 = v110 + 1;
                if (__OFADD__(v110, 1))
                {
                  __break(1u);
                  goto LABEL_115;
                }

                if (v111 >= v184)
                {
                  break;
                }

                v109 = *(i + 8 * v111);
                ++v110;
                if (v109)
                {
                  goto LABEL_70;
                }
              }

              v113 = 1 << *(v166 + 32);
              v114 = -1;
              if (v113 < 64)
              {
                v114 = ~(-1 << v113);
              }

              v115 = v114 & *(v166 + 64);
              v184 = ((v113 + 63) >> 6);
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              for (m = 0; v115; m = v117)
              {
                v117 = m;
LABEL_79:
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v118 = v170;
                sub_1C4EFB758();
                sub_1C4EFBFF8();
                v115 &= v115 - 1;
                (*v164)(v118, v182);
              }

              while (1)
              {
                v117 = m + 1;
                if (__OFADD__(m, 1))
                {
                  break;
                }

                if (v117 >= v184)
                {

                  v119 = 1 << *(v181 + 32);
                  v120 = -1;
                  if (v119 < 64)
                  {
                    v120 = ~(-1 << v119);
                  }

                  v121 = v120 & *(v181 + 64);
                  v180 = (v119 + 63) >> 6;
                  v183 = "DataCollectionMetadata.";
                  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  for (n = 0; ; n = v124)
                  {
                    v123 = v181;
                    if (!v121)
                    {
                      break;
                    }

                    v124 = n;
LABEL_90:
                    v125 = (v124 << 10) | (16 * __clz(__rbit64(v121)));
                    v126 = (*(v123 + 48) + v125);
                    v128 = *v126;
                    v127 = v126[1];
                    v129 = *(*(v123 + 56) + v125 + 8);
                    v185[0] = 0;
                    v185[1] = 0xE000000000000000;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    v184 = v129;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    sub_1C4F02248();

                    strcpy(v185, "INSERT INTO ");
                    BYTE5(v185[1]) = 0;
                    HIWORD(v185[1]) = -5120;
                    MEMORY[0x1C6940010](v128, v127);
                    MEMORY[0x1C6940010](40, 0xE100000000000000);
                    MEMORY[0x1C6940010](v128, v127);
                    MEMORY[0x1C6940010](0xD000000000000014, v183 | 0x8000000000000000);
                    v130 = v167;
                    sub_1C4EFB758();
                    sub_1C4EFBFF8();
                    v121 &= v121 - 1;
                    (*v164)(v130, v182);
                  }

                  while (1)
                  {
                    v124 = n + 1;
                    if (__OFADD__(n, 1))
                    {
                      goto LABEL_116;
                    }

                    if (v124 >= v180)
                    {

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      v131 = sub_1C4F00968();
                      v132 = sub_1C4F01CB8();

                      if (os_log_type_enabled(v131, v132))
                      {
                        v133 = swift_slowAlloc();
                        v184 = swift_slowAlloc();
                        v185[0] = v184;
                        *v133 = 136315138;
                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        v134 = sub_1C4F00F48();
                        v136 = v135;

                        v137 = sub_1C441D828(v134, v136, v185);

                        *(v133 + 4) = v137;
                        _os_log_impl(&dword_1C43F8000, v131, v132, "GraphStore: promoteConstructionGraphToProduction: recreating indexes: %s", v133, 0xCu);
                        v138 = v184;
                        sub_1C440962C(v184);
                        MEMORY[0x1C6942830](v138, -1, -1);
                        MEMORY[0x1C6942830](v133, -1, -1);
                      }

                      v139 = 1 << v172[32];
                      v140 = -1;
                      if (v139 < 64)
                      {
                        v140 = ~(-1 << v139);
                      }

                      v141 = v140 & *(v172 + 8);
                      v184 = ((v139 + 63) >> 6);
                      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      for (ii = 0; v141; ii = v143)
                      {
                        v143 = ii;
LABEL_100:
                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        v144 = v169;
                        sub_1C4EFB758();
                        sub_1C4EFBFF8();
                        v141 &= v141 - 1;
                        (*v164)(v144, v182);
                      }

                      while (1)
                      {
                        v143 = ii + 1;
                        if (__OFADD__(ii, 1))
                        {
                          goto LABEL_117;
                        }

                        if (v143 >= v184)
                        {

                          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                          v145 = sub_1C4F00968();
                          v146 = sub_1C4F01CB8();

                          if (os_log_type_enabled(v145, v146))
                          {
                            v147 = swift_slowAlloc();
                            v148 = swift_slowAlloc();
                            v185[0] = v148;
                            *v147 = 136315138;
                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            v149 = sub_1C4F00F48();
                            v151 = v150;

                            v152 = sub_1C441D828(v149, v151, v185);

                            *(v147 + 4) = v152;
                            _os_log_impl(&dword_1C43F8000, v145, v146, "GraphStore: promoteConstructionGraphToProduction: recreating indexes: %s", v147, 0xCu);
                            sub_1C440962C(v148);
                            MEMORY[0x1C6942830](v148, -1, -1);
                            MEMORY[0x1C6942830](v147, -1, -1);
                          }

                          v153 = 1 << *(v160 + 32);
                          v154 = -1;
                          if (v153 < 64)
                          {
                            v154 = ~(-1 << v153);
                          }

                          v155 = v154 & *(v160 + 64);
                          v156 = (v153 + 63) >> 6;
                          result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                          v157 = 0;
                          for (jj = v175; v155; v157 = v159)
                          {
                            v159 = v157;
LABEL_111:
                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            sub_1C4EFB758();
                            sub_1C4EFBFF8();
                            v155 &= v155 - 1;
                            (*v164)(jj, v182);
                          }

                          while (1)
                          {
                            v159 = v157 + 1;
                            if (__OFADD__(v157, 1))
                            {
                              goto LABEL_118;
                            }

                            if (v159 >= v156)
                            {
                            }

                            v155 = *(v88 + 8 * v159);
                            ++v157;
                            if (v155)
                            {
                              goto LABEL_111;
                            }
                          }
                        }

                        v141 = *(v82 + 8 * v143);
                        ++ii;
                        if (v141)
                        {
                          goto LABEL_100;
                        }
                      }
                    }

                    v121 = *(i + 8 * v124);
                    ++n;
                    if (v121)
                    {
                      v123 = v181;
                      goto LABEL_90;
                    }
                  }
                }

                v115 = *(j + 8 * v117);
                ++m;
                if (v115)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              return result;
            }

            v66 = *(v63 + 8 * v69);
            ++v68;
            if (v66)
            {
              goto LABEL_29;
            }
          }
        }

        v58 = *(v55 + 8 * v62);
        ++v60;
        if (v58)
        {
          goto LABEL_20;
        }
      }

LABEL_57:
      __break(1u);
    }
  }

  return result;
}

void sub_1C487594C(uint64_t a1)
{
  v97 = type metadata accessor for ExpiredEventTriple(0);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C456902C(&unk_1EC0BC8A0, &qword_1C4F29AA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v88 - v4;
  v96 = type metadata accessor for ExpiredConstructionEventTriple(0);
  MEMORY[0x1EEE9AC00](v96);
  v102 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ExpiredGraphTriple(0);
  MEMORY[0x1EEE9AC00](v115);
  v105 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0BC8C0, &qword_1C4F29AB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v88 - v8;
  v103 = type metadata accessor for ExpiredConstructionGraphTriple(0);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1C456902C(&qword_1EC0BE518, &qword_1C4F37340);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v11 = &v88 - v10;
  v12 = sub_1C456902C(&qword_1EC0BE520, &qword_1C4F37348);
  v98 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  v15 = sub_1C4EF9CD8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v104;
  v20 = sub_1C4870588(a1);
  if (!v19)
  {
    v21 = v20;
    v89 = v16;
    v90 = v15;
    v91 = v14;
    v92 = v12;
    v88 = v11;
    v22 = sub_1C486FFD0(a1, 0xD00000000000001CLL, 0x80000001C4FA3350);
    v104 = a1;
    if (v22 >= v21)
    {
      v30 = v105;
      v27 = v115;
    }

    else
    {
      sub_1C4EF9C38();
      sub_1C4EF9AD8();
      v24 = v23;
      (*(v89 + 8))(v18, v90);
      if (v21 >= v24)
      {
        v21 = v24;
      }

      v110 = &type metadata for FusedTripleColumn;
      v90 = sub_1C45021B8();
      v111 = v90;
      LOBYTE(v109[0]) = 8;
      v107 = MEMORY[0x1E69E63B0];
      v108 = MEMORY[0x1E69A0160];
      *v106 = v21;
      v25 = sub_1C4EFB298();
      v113 = v25;
      v114 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v112);
      sub_1C4EFBB58();
      sub_1C440962C(v106);
      sub_1C440962C(v109);
      sub_1C4490890(qword_1EDDFD7D0, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
      v26 = v91;
      v27 = v115;
      sub_1C4EFAE28();
      sub_1C440962C(v112);
      v28 = v104;
      v29 = v92;
      sub_1C4EFB898();
      (*(v98 + 8))(v26, v29);
      v30 = v105;
      v110 = &type metadata for FusedTripleColumn;
      v111 = v90;
      LOBYTE(v109[0]) = 8;
      v107 = MEMORY[0x1E69E63B0];
      v108 = MEMORY[0x1E69A0160];
      *v106 = v21;
      v113 = v25;
      v114 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v112);
      sub_1C4EFBB58();
      sub_1C440962C(v106);
      sub_1C440962C(v109);
      sub_1C4490890(&qword_1EDDFD830, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
      v31 = v88;
      sub_1C4EFAE28();
      sub_1C440962C(v112);
      v32 = v94;
      sub_1C4EFB898();
      (*(v93 + 8))(v31, v32);
      sub_1C4870410(v21, v28, 0xD00000000000001CLL, 0x80000001C4FA3350);
    }

    sub_1C4490890(&qword_1EDDDF248, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
    v33 = sub_1C4490890(&qword_1EDDDF258, type metadata accessor for ExpiredConstructionGraphTriple, &protocol conformance descriptor for ExpiredConstructionGraphTriple);
    v34 = v103;
    v35 = sub_1C4EFB378();
    v36 = v102;
    v98 = v33;
    while (1)
    {
      v37 = v101;
      v38 = v35;
      sub_1C47887B8();
      v39 = sub_1C44157D4(v37, 1, v34) == 1;
      v40 = v37;
      if (v39)
      {
        break;
      }

      v41 = v99;
      sub_1C44D1B5C(v40, v99, type metadata accessor for ExpiredConstructionGraphTriple);
      v42 = sub_1C4EFF0C8();
      (*(*(v42 - 8) + 16))(v30, v41, v42);
      v43 = v34[5];
      v44 = v27[5];
      v45 = sub_1C4EFEEF8();
      v46 = *(*(v45 - 8) + 16);
      v46(&v105[v44], v41 + v43, v45);
      v47 = v34[6];
      v48 = v115[6];
      v49 = sub_1C4EFF8A8();
      (*(*(v49 - 8) + 16))(&v105[v48], v41 + v47, v49);
      v46(&v105[v115[7]], v41 + v34[7], v45);
      v30 = v105;
      v50 = (v41 + v34[8]);
      v52 = *v50;
      v51 = v50[1];
      v53 = *(v41 + v34[9]);
      v54 = v34[11];
      v55 = *(v41 + v34[10]);
      v57 = *(v41 + v54);
      v56 = *(v41 + v54 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v58 = (v30 + v115[8]);
      *v58 = v52;
      v58[1] = v51;
      *(v30 + v115[9]) = v53;
      v27 = v115;
      *(v30 + v115[10]) = v55;
      v59 = (v30 + v27[11]);
      *v59 = v57;
      v59[1] = v56;
      *(v30 + v27[12]) = v60;
      sub_1C4490890(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
      sub_1C4EFB6C8();
      sub_1C4491300(v30, type metadata accessor for ExpiredGraphTriple);
      sub_1C4491300(v41, type metadata accessor for ExpiredConstructionGraphTriple);
      v36 = v102;
      v34 = v103;
      v35 = v38;
    }

    sub_1C4420C3C(v37, &unk_1EC0BC8C0, &qword_1C4F29AB0);
    sub_1C4490890(&qword_1EDDDF328, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
    v61 = sub_1C4490890(&qword_1EDDDF330, type metadata accessor for ExpiredConstructionEventTriple, &protocol conformance descriptor for ExpiredConstructionEventTriple);
    v62 = sub_1C4EFB378();
    v102 = v61;
    v63 = v100;
    v64 = v95;
    v105 = v62;
    while (1)
    {
      sub_1C4788924();
      v115 = 0;
      v65 = v96;
      if (sub_1C44157D4(v64, 1, v96) == 1)
      {
        break;
      }

      sub_1C44D1B5C(v64, v36, type metadata accessor for ExpiredConstructionEventTriple);
      v66 = sub_1C4EFF0C8();
      (*(*(v66 - 8) + 16))(v63, v36, v66);
      v67 = v65[5];
      v68 = v97;
      v69 = *(v97 + 20);
      v70 = sub_1C4EFEEF8();
      v71 = *(*(v70 - 8) + 16);
      v71(&v100[v69], v36 + v67, v70);
      v72 = v65[6];
      v73 = v68[6];
      v74 = sub_1C4EFF8A8();
      (*(*(v74 - 8) + 16))(&v100[v73], v36 + v72, v74);
      v71(&v100[v68[7]], v36 + v65[7], v70);
      v75 = (v36 + v65[8]);
      v77 = *v75;
      v76 = v75[1];
      v78 = *(v36 + v65[9]);
      v79 = v65[11];
      v80 = *(v36 + v65[10]);
      v82 = *(v36 + v79);
      v81 = *(v36 + v79 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v83 = &v100[v68[8]];
      *v83 = v77;
      *(v83 + 1) = v76;
      *&v100[v68[9]] = v78;
      *&v100[v68[10]] = v80;
      v84 = &v100[v68[11]];
      *v84 = v82;
      *(v84 + 1) = v81;
      v63 = v100;
      *&v100[v68[12]] = v85;
      sub_1C4490890(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple, &protocol conformance descriptor for ExpiredEventTriple);
      v86 = v115;
      sub_1C4EFB6C8();
      if (v86)
      {

        sub_1C4491300(v63, type metadata accessor for ExpiredEventTriple);
        sub_1C4491300(v36, type metadata accessor for ExpiredConstructionEventTriple);
        return;
      }

      sub_1C4491300(v63, type metadata accessor for ExpiredEventTriple);
      sub_1C4491300(v36, type metadata accessor for ExpiredConstructionEventTriple);
      v64 = v95;
    }

    sub_1C4420C3C(v64, &unk_1EC0BC8A0, &qword_1C4F29AA0);
    v87 = v115;
    sub_1C4EFAE88();
    if (!v87)
    {
      sub_1C4EFAE88();
    }
  }
}

void sub_1C48767E8(uint64_t a1, char a2)
{
  if (*v2)
  {

    sub_1C495C4A4();
  }

  else
  {
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2E088);
    oslog = sub_1C4F00968();
    v4 = sub_1C4F01CB8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v4, "keyValueStore is nil", v5, 2u);
      MEMORY[0x1C6942830](v5, -1, -1);
    }
  }
}

void sub_1C4876AF8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2E088);
    oslog = sub_1C4F00968();
    v18 = sub_1C4F01CB8();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v18, "keyValueStore is nil", v19, 2u);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    v20 = oslog;

LABEL_13:

    return;
  }

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  KeyValueStore.delete(key:)(v5);
  if (v6)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2E088);
    v8 = v6;
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = v6;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v14 = sub_1C4F01198();
      v16 = sub_1C441D828(v14, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Can't remove value due to: %s", v11, 0xCu);
      sub_1C440962C(v12);
      MEMORY[0x1C6942830](v12, -1, -1);
      MEMORY[0x1C6942830](v11, -1, -1);

      return;
    }

    v20 = v6;

    goto LABEL_13;
  }
}

uint64_t sub_1C4876DF8()
{

  v0 = sub_1C49A5480(sub_1C4876E5C, 0);

  return v0;
}

uint64_t sub_1C4876E5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EntityTriple(0);
  sub_1C4490890(&qword_1EDDF8DB0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  result = sub_1C4EFADD8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4876F28(uint64_t a1, uint64_t a2)
{
  v16[3] = a2;
  v3 = sub_1C4EFD548();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v16[1] = v4 + 8;
  v16[2] = v4 + 16;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; v9; result = (*(v4 + 8))(v6, v3))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v4 + 16))(v6, *(a1 + 48) + *(v4 + 72) * (v14 | (v13 << 6)), v3);
    v15 = sub_1C4EFD508();
    sub_1C483A4A0(v17, v15);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C48770F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v8[2] = a1;
  v8[3] = a3;
  *&v8[4] = a5;
  v8[5] = a2;
  v8[6] = a4;
  *&v8[7] = a6;

  v6 = sub_1C49A5314(sub_1C487BD0C, v8);

  return v6;
}

uint64_t sub_1C487717C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v8 = *(a3 + 16);
  *(v6 + 24) = *a3;
  *(v6 + 16) = 0;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a3 + 32);
  *(v6 + 136) = a4;
  *(v6 + 137) = a5;
  *(v6 + 128) = 0;
  if (*(a3 + 16))
  {
    sub_1C487BE08(a3, &v58);
    sub_1C443D664();
    v10 = v9;
    v11 = *(v9 + 16);
    if (v11 >= *(v9 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v39;
    }

    *(v10 + 16) = v11 + 1;
    v12 = v10 + 16 * v11;
    *(v12 + 32) = 0x6D617473656D6974;
    *(v12 + 40) = 0xE900000000000070;
    v13 = 1;
  }

  else
  {
    sub_1C487BE08(a3, &v58);
    v13 = 0;
    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v6 + 64) = v13;
  if (*(a3 + 8))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v40;
    }

    v14 = *(v10 + 16);
    if (v14 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v41;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = 0x7463656A627573;
    *(v15 + 40) = 0xE700000000000000;
    ++v13;
  }

  *(v6 + 72) = v13;
  if (*(a3 + 9))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v42;
    }

    v16 = *(v10 + 16);
    if (v16 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v43;
    }

    *(v10 + 16) = v16 + 1;
    v17 = v10 + 16 * v16;
    *(v17 + 32) = 0x7461636964657270;
    *(v17 + 40) = 0xE900000000000065;
    ++v13;
  }

  *(v6 + 80) = v13;
  if (*(a3 + 10))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v44;
    }

    v18 = *(v10 + 16);
    if (v18 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v45;
    }

    *(v10 + 16) = v18 + 1;
    v19 = v10 + 16 * v18;
    strcpy((v19 + 32), "relationshipId");
    *(v19 + 47) = -18;
    ++v13;
  }

  *(v6 + 88) = v13;
  if (*(a3 + 11))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v46;
    }

    v20 = *(v10 + 16);
    if (v20 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v47;
    }

    *(v10 + 16) = v20 + 1;
    v21 = v10 + 16 * v20;
    *(v21 + 32) = 0xD000000000000015;
    *(v21 + 40) = 0x80000001C4F86600;
    ++v13;
  }

  *(v6 + 96) = v13;
  if (*(a3 + 12))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v48;
    }

    v22 = *(v10 + 16);
    if (v22 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v49;
    }

    *(v10 + 16) = v22 + 1;
    v23 = v10 + 16 * v22;
    *(v23 + 32) = 0x7463656A626FLL;
    *(v23 + 40) = 0xE600000000000000;
    ++v13;
  }

  *(v6 + 104) = v13;
  if (*(a3 + 13))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v50;
    }

    v24 = *(v10 + 16);
    if (v24 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v51;
    }

    *(v10 + 16) = v24 + 1;
    v25 = v10 + 16 * v24;
    *(v25 + 32) = 0x73656372756F73;
    *(v25 + 40) = 0xE700000000000000;
    ++v13;
  }

  *(v6 + 112) = v13;
  if (*(a3 + 14))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v52;
    }

    v26 = *(v10 + 16);
    if (v26 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v53;
    }

    *(v10 + 16) = v26 + 1;
    v27 = v10 + 16 * v26;
    *(v27 + 32) = 0x6E656469666E6F63;
    *(v27 + 40) = 0xEA00000000006563;
    ++v13;
  }

  *(v6 + 120) = v13;
  sub_1C487BDB4(a3);
  if (*(a3 + 15))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v10 = v54;
    }

    v28 = *(v10 + 16);
    if (v28 >= *(v10 + 24) >> 1)
    {
      sub_1C443D664();
      v10 = v55;
    }

    *(v10 + 16) = v28 + 1;
    v29 = v10 + 16 * v28;
    *(v29 + 32) = 0xD000000000000010;
    *(v29 + 40) = 0x80000001C4F86630;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA3670);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v30 = sub_1C4F01048();
  v32 = v31;

  MEMORY[0x1C6940010](v30, v32);

  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FA3690);
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](0xD00000000000003BLL, 0x80000001C4FA36B0);
  v33 = v59;
  *(v6 + 144) = v58;
  *(v6 + 152) = v33;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA3670);
  v34 = sub_1C4F01048();
  v36 = v35;

  MEMORY[0x1C6940010](v34, v36);

  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FA3690);
  MEMORY[0x1C6940010](a1, a2);

  MEMORY[0x1C6940010](0xD0000000000000A4, 0x80000001C4FA36F0);
  v37 = v59;
  *(v6 + 160) = v58;
  *(v6 + 168) = v37;
  return v6;
}

void *sub_1C48778D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  v11 = *(v5 + 40);
  v31[0] = *(v5 + 24);
  v31[1] = v11;
  v32 = *(v5 + 56);
  v12 = *(v5 + 136);
  _s9RawTripleCMa();
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C487BE08(v31, v29);
  v13 = sub_1C487717C(a2, a3, v31, v12, 0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBED8();
  if (v4)
  {
  }

  else
  {

    v33 = sub_1C4EFBC58();
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C4F13950;
    v15 = sub_1C44F2AB4(v14);
    v16 = MEMORY[0x1E69A01D0];
    *(v14 + 56) = MEMORY[0x1E69E7360];
    *(v14 + 64) = v16;
    *(v14 + 32) = v15;
    v17 = sub_1C4877BE8(v15);
    v18 = MEMORY[0x1E69E6158];
    v19 = MEMORY[0x1E69A0138];
    *(v14 + 96) = MEMORY[0x1E69E6158];
    *(v14 + 104) = v19;
    *(v14 + 72) = v17;
    *(v14 + 80) = v20;
    v21 = sub_1C4877DD0(v17);
    *(v14 + 136) = MEMORY[0x1E69E7360];
    *(v14 + 144) = MEMORY[0x1E69A01D0];
    *(v14 + 112) = v21;
    v22 = sub_1C4877FA8(v21);
    *(v14 + 176) = v18;
    *(v14 + 184) = v19;
    *(v14 + 152) = v22;
    *(v14 + 160) = v23;
    v24 = sub_1C4878190(v22);
    *(v14 + 216) = v18;
    *(v14 + 224) = v19;
    *(v14 + 192) = v24;
    *(v14 + 200) = v25;
    sub_1C4EFB728();
    v26 = sub_1C4EFB768();
    sub_1C440BAA8(v10, 0, 1, v26);
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v28 = sub_1C4EFBC48();

    sub_1C4420C3C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
    *(v13 + 16) = v28;

    if (!v28)
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_1C4877BE8(uint64_t a1)
{
  if (*(v1 + 33) != 1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 72);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4877DD0(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 34) != 1)
  {
    return v2;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *(v1 + 80);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v4 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v4, v3);
  if (a1 != 5)
  {
    v2 = sub_1C4F02AA8();

    return v2;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4877FA8(uint64_t a1)
{
  if (*(v1 + 35) != 1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 88);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4878190(uint64_t a1)
{
  if (*(v1 + 36) != 1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 96);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4878378()
{

  return v0;
}

uint64_t sub_1C48783C4()
{
  sub_1C4878378();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4878418(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 37) != 1)
  {
    return v2;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *(v1 + 104);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v4 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v4, v3);
  if (a1 != 5)
  {
    v2 = sub_1C4F02AA8();

    return v2;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C48785F0(uint64_t result)
{
  if (*(v1 + 38) == 1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_12;
    }

    v2 = *(v1 + 112);

    sub_1C4EFBBA8();
    result = sub_1C4EFBBE8();
    v3 = result;
    if (result)
    {
      if (v2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v2 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](result);
        result = sqlite3_column_type(v3, v2);
        if (result != 5)
        {
          sub_1C4F01A08();
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      MEMORY[0x1EEE9AC00](result);
      sub_1C4EFB968();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    sub_1C4EFBB98();
  }

  return result;
}

uint64_t sub_1C48787D0(uint64_t a1)
{
  if (*(v1 + 39) != 1)
  {
    return 23899;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 120);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v3 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v3, v2);
  if (a1 != 5)
  {
    v4 = sub_1C4F011E8();

    return v4;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C48789B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v30 = *(v1 + 24);
  v31 = v3;
  v32 = *(v1 + 56);
  v4 = sub_1C487BE08(&v30, v29);
  v28 = sub_1C44F2AB4(v4);
  v5 = sub_1C4877BE8(v28);
  v26 = v6;
  v27 = v5;
  v7 = sub_1C4877DD0(v5);
  v8 = sub_1C4877FA8(v7);
  v10 = v9;
  v11 = sub_1C4878190(v8);
  v13 = v12;
  v14 = sub_1C4878418(v11);
  v15 = sub_1C48785F0(v14);
  v17 = v16;
  v18 = sub_1C48787D0(v15);
  v20 = v19;
  result = sub_1C44F28F8(v18);
  v22 = *(v1 + 136);
  v23 = *(v1 + 137);
  v24 = v31;
  *a1 = v30;
  *(a1 + 16) = v24;
  *(a1 + 32) = v32;
  *(a1 + 40) = v28;
  *(a1 + 48) = v27;
  *(a1 + 56) = v26;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v17;
  *(a1 + 120) = v18;
  *(a1 + 128) = v20;
  *(a1 + 136) = v25;
  *(a1 + 144) = v22;
  *(a1 + 145) = v23;
  return result;
}

uint64_t sub_1C4878ABC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v9 = v7;
  v16 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v25 - v17;
  sub_1C4B756E8(&unk_1F43D9AA8, v27);
  sub_1C4878D7C(v27, v28);
  sub_1C487BDB4(a5);
  sub_1C487BDB4(v27);
  _s9RawTripleCMa();
  swift_allocObject();
  *(v9 + 24) = sub_1C487717C(a3, a4, v28, a6, a7);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBED8();

  if (v8)
  {

    _s15RawTripleCursorCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C4EFBC58();
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E63B0];
    *(v19 + 16) = xmmword_1C4F0D130;
    v21 = MEMORY[0x1E69A0168];
    *(v19 + 56) = v20;
    *(v19 + 64) = v21;
    *(v19 + 32) = a1;
    sub_1C4EFB728();
    v22 = sub_1C4EFB768();
    sub_1C440BAA8(v18, 0, 1, v22);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v24 = sub_1C4EFBBC8();

    sub_1C4420C3C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v18, &unk_1EC0C06C0, &unk_1C4F10DB0);
    *(v9 + 16) = v24;
    *(v9 + 32) = 1;
  }

  return v9;
}

double sub_1C4878D7C@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (v3[8] & 1) != 0 || (a1[8])
  {
    sub_1C458DB8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = v6;
    v8 = *(v6 + 24);
    if (*(v6 + 16) >= v8 >> 1)
    {
      sub_1C4407038(v8);
      v7 = v29;
    }

    sub_1C441FC68();
    *(v9 + 32) = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v3[9] & 1) != 0 || (a1[9])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v30;
    }

    sub_1C442CBA4();
    if (v11)
    {
      sub_1C4407038(v10);
      v7 = v31;
    }

    sub_1C441FC68();
    *(v12 + 32) = 1;
  }

  if (v3[10] & 1) != 0 || (a1[10])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v32;
    }

    sub_1C442CBA4();
    if (v11)
    {
      sub_1C4407038(v13);
      v7 = v33;
    }

    sub_1C441FC68();
    *(v14 + 32) = 2;
  }

  if (v3[11] & 1) != 0 || (a1[11])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v34;
    }

    sub_1C442CBA4();
    if (v11)
    {
      sub_1C4407038(v15);
      v7 = v35;
    }

    sub_1C441FC68();
    *(v16 + 32) = 3;
  }

  if (v3[12] & 1) != 0 || (a1[12])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v36;
    }

    sub_1C442CBA4();
    if (v11)
    {
      sub_1C4407038(v17);
      v7 = v37;
    }

    sub_1C441FC68();
    *(v18 + 32) = 4;
  }

  if (v3[13] & 1) != 0 || (a1[13])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v38;
    }

    sub_1C442CBA4();
    if (v11)
    {
      sub_1C4407038(v19);
      v7 = v39;
    }

    sub_1C441FC68();
    *(v20 + 32) = 5;
  }

  if (v3[14] & 1) != 0 || (a1[14])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v40;
    }

    sub_1C442CBA4();
    if (v11)
    {
      sub_1C4407038(v21);
      v7 = v41;
    }

    sub_1C441FC68();
    *(v22 + 32) = 6;
  }

  if (v3[15] & 1) != 0 || (a1[15])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v42;
    }

    sub_1C442CBA4();
    if (v11)
    {
      sub_1C4407038(v23);
      v7 = v43;
    }

    sub_1C441FC68();
    *(v24 + 32) = 7;
  }

  if (v3[16] & 1) != 0 || (a1[16])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4419898();
      v7 = v44;
    }

    v26 = *(v7 + 16);
    v25 = *(v7 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1C458DB8C(v25 > 1, v26 + 1, 1, v7);
      v7 = v45;
    }

    *(v7 + 16) = v26 + 1;
    *(v7 + v26 + 32) = 8;
  }

  sub_1C4B756E8(v7, v46);
  result = *v46;
  v28 = v46[1];
  *a2 = v46[0];
  *(a2 + 16) = v28;
  *(a2 + 32) = v47;
  return result;
}

uint64_t sub_1C4879094()
{
  sub_1C487B6D8(MEMORY[0x1E69E7D48]);

  return swift_deallocClassInstance();
}

uint64_t sub_1C48790FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1C4EFD548();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v11 = sub_1C4EFD508();
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_1C487929C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_1C4EFD548();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {
    return 0;
  }

  v15 = MEMORY[0x1E69E7CD0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_1C4EFD508();
    sub_1C483A4A0(v14, v11);
    v12 = sub_1C4EFD0A8();
    sub_1C4876F28(v12, &v15);

    (*(v7 + 8))(v9, v6);
    return v15;
  }
}

uint64_t sub_1C4879480(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  SourceSet.init(arrayLiteral:)(&v34, MEMORY[0x1E69E7CC0]);
  v29 = a1;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v34;
  }

  v10 = (v29 + 40);
  v11 = &unk_1EC0C0760;
  *&v8 = 136315138;
  v30 = v8;
  v31 = v5;
  v32 = v7;
  while (1)
  {
    v13 = *(v10 - 1);
    v12 = *v10;
    swift_bridgeObjectRetain_n();
    Source.init(rawValue:)(v13, v12, v4);
    if (sub_1C44157D4(v4, 1, v5) != 1)
    {
      break;
    }

    sub_1C4420C3C(v4, v11, &qword_1C4F170D0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CC8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v11;
      v19 = swift_slowAlloc();
      v33 = v19;
      *v17 = v30;
      v20 = sub_1C441D828(v13, v12, &v33);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_1C43F8000, v15, v16, "GraphStore: ResolvedKnowledgeGraphFilter: Invalid source %s", v17, 0xCu);
      sub_1C440962C(v19);
      v21 = v19;
      v11 = v18;
      MEMORY[0x1C6942830](v21, -1, -1);
      v22 = v17;
      v5 = v31;
      v7 = v32;
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    else
    {
    }

LABEL_19:
    v10 += 2;
    if (!--v9)
    {
      return v34;
    }
  }

  sub_1C487BCAC(v4, v7, type metadata accessor for Source);
  v23 = *(v7 + 2);
  result = sub_1C447E918(v7, type metadata accessor for Source);
  v25 = v23 - 1;
  if (!__OFSUB__(v23, 1))
  {
    v26 = v25 > 0x40;
    if (v25 >= 0x40)
    {
      v27 = 0;
    }

    else
    {
      v27 = 1 << v25;
    }

    if (v26)
    {
      v27 = 0;
    }

    if ((v34 & v27) == 0)
    {
      v34 |= v27;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C48797C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = *(a1 + 16);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    v10 = sub_1C48790FC(*a1, *(a1 + 8));
    v9 = 0;
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
    v9 = sub_1C487929C(*a1, *(a1 + 8));
  }

  *(a2 + 16) = v9;
  v12 = *(a1 + 24);
  if (v12)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4499940();
  }

  *(a2 + 24) = v12;
  *(a2 + 32) = sub_1C4879480(*(a1 + 32));
  *(a2 + 40) = v13 & 1;
  if (*(a1 + 48))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C487BBE8(a1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFCC18();

    v16 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
    sub_1C440BAA8(v7, 0, 1, v16);
    v17 = _s28ResolvedKnowledgeGraphFilterVMa(0);
    return sub_1C487BC3C(v7, a2 + *(v17 + 32));
  }

  else
  {
    sub_1C487BBE8(a1);
    v14 = *(_s28ResolvedKnowledgeGraphFilterVMa(0) + 32);
    v15 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);

    return sub_1C440BAA8(a2 + v14, 1, 1, v15);
  }
}

void *sub_1C4879C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s28ResolvedKnowledgeGraphFilterVMa(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4[2] = a1;
  v4[4] = a3;
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = MEMORY[0x1E69E7CC0];

    sub_1C459E678();
    v13 = 32;
    v14 = v19;
    do
    {
      v15 = *(a2 + v13 + 16);
      v20[0] = *(a2 + v13);
      v20[1] = v15;
      v20[2] = *(a2 + v13 + 32);
      v21 = *(a2 + v13 + 48);
      sub_1C487BB8C(v20, v18);
      sub_1C48797C0(v20, v11);
      v19 = v14;
      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1C459E678();
        v14 = v19;
      }

      *(v14 + 16) = v16 + 1;
      sub_1C487BCAC(v11, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, _s28ResolvedKnowledgeGraphFilterVMa);
      v13 += 56;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v4[3] = v14;
  return v4;
}

uint64_t sub_1C4879DF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double *a6, double a7)
{
  v8 = v7;
  v11 = 0;
  v12 = 0;
  v65 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v13 = a2 + 56;
  do
  {
    v14 = v11;
    if (*(a2 + 16))
    {
      v15 = *(&unk_1F43D9AD0 + v12 + 32);
      sub_1C4F02AF8();
      v16 = v15 ? 0x617247746E657665 : 0x7247656C62617473;
      v17 = v15 ? 0xEA00000000006870 : 0xEB00000000687061;
      sub_1C4F01298();

      v18 = sub_1C4F02B68();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v66 = v14;
        v67 = v8;
        v21 = ~v19;
        while (1)
        {
          v22 = *(*(a2 + 48) + v20) ? 0x617247746E657665 : 0x7247656C62617473;
          v23 = *(*(a2 + 48) + v20) ? 0xEA00000000006870 : 0xEB00000000687061;
          if (v22 == v16 && v23 == v17)
          {
            break;
          }

          v25 = sub_1C4F02938();

          if (v25)
          {
            goto LABEL_25;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            v8 = v67;
            goto LABEL_37;
          }
        }

LABEL_25:
        v26 = *(a3 + 16);
        _s15RawTripleCursorCMa();
        swift_allocObject();
        if (v15)
        {
          sub_1C487BE08(a1, v68);

          sub_1C4878ABC(a7, v27, 0x72675F746E657665, 0xEB00000000687061, a1, 0, 0);
          v8 = v67;
          if (v67)
          {
            goto LABEL_72;
          }

          MEMORY[0x1C6940330]();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C4F016D8();
          }

          sub_1C4F01748();
          swift_allocObject();
          sub_1C487BE08(a1, v68);

          v29 = 0x80000001C4FA2F80;
          v30 = 0xD000000000000013;
          v31 = a1;
          v32 = a7;
          v33 = 0;
        }

        else
        {

          sub_1C487BE08(a1, v68);
          sub_1C4878ABC(a7, v26, 0x675F656C62617473, 0xEC00000068706172, a1, 1, 0);
          v8 = v67;
          if (v67)
          {
LABEL_72:
          }

          MEMORY[0x1C6940330]();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C4F016D8();
          }

          sub_1C4F01748();
          swift_allocObject();

          sub_1C487BE08(a1, v68);
          v30 = 0xD000000000000014;
          v29 = 0x80000001C4FA2F60;
          v28 = v26;
          v31 = a1;
          v32 = a7;
          v33 = 1;
        }

        sub_1C4878ABC(v32, v28, v30, v29, v31, v33, 1);
        MEMORY[0x1C6940330]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4F01748();
        v65 = v70;
LABEL_37:
        v14 = v66;
      }
    }

    v11 = 1;
    v12 = 1u;
  }

  while ((v14 & 1) == 0);
  v34 = v65;
  v35 = sub_1C4428DA0(v65);
  v36 = 0;
  v62 = 0;
  v37 = v65 & 0xC000000000000001;
  v38 = INFINITY;
  v64 = v35;
  while (1)
  {
    while (1)
    {
      while (v35 == v36)
      {
        if (!v62)
        {
          goto LABEL_72;
        }

        v46 = v8;
        v47 = sub_1C44F2860();
        if (v8)
        {
        }

        v48 = v47;

        if (!v48)
        {
          goto LABEL_72;
        }

        if (*(*a4 + 16) >= *(a5 + 32))
        {
          v49 = sub_1C44F28F8(v49);
          if (v50 != *a6)
          {
            goto LABEL_77;
          }
        }

        sub_1C44F28F8(v49);
        *a6 = v51;
        if (sub_1C44F2E34(v48))
        {
          sub_1C48789B8(__src);
          v52 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C458DC70();
            v52 = v55;
            *a4 = v55;
          }

          v54 = *(v52 + 16);
          if (v54 >= *(v52 + 24) >> 1)
          {
            sub_1C458DC70();
            v52 = v56;
            *a4 = v56;
          }

          *(v52 + 16) = v54 + 1;
          memcpy((v52 + 152 * v54 + 32), __src, 0x92uLL);

          v36 = 0;
          v62 = 0;
          v38 = INFINITY;
          v8 = v46;
          v35 = v64;
        }

        else
        {

          v36 = 0;
          v62 = 0;
          v38 = INFINITY;
        }
      }

      if (v37)
      {
        v39 = MEMORY[0x1C6940F90](v36, v34);
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
        }

        if (v36 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v39 = *(v34 + 8 * v36 + 32);
      }

      if (__OFADD__(v36, 1))
      {
        goto LABEL_75;
      }

      v40 = sub_1C44F27CC();
      if (v8)
      {
      }

      if (v40)
      {
        break;
      }

LABEL_55:

      ++v36;
    }

    if (!*(v40 + 16))
    {

      goto LABEL_55;
    }

    sub_1C4EFBBA8();
    v41 = sub_1C4EFBBE8();
    if (v41)
    {
      break;
    }

    sub_1C4EFBB98();
    v37 = v65 & 0xC000000000000001;

    v45 = v68[0];
    v34 = v65;
LABEL_54:
    if (v45 >= v38)
    {
      goto LABEL_55;
    }

    ++v36;
    v62 = v39;
    v38 = v45;
  }

  MEMORY[0x1EEE9AC00](v41);
  v43 = sqlite3_column_type(v42, 0);
  if (v43 != 5)
  {
    sub_1C4F01A08();
    v45 = v44;

    v34 = v65;
    v35 = v64;
    v37 = v65 & 0xC000000000000001;
    goto LABEL_54;
  }

  MEMORY[0x1EEE9AC00](v43);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C487A7E4(uint64_t a1, uint64_t a2, double a3)
{
  v56 = a1;
  v57 = a2;
  v5 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v56 - v6;
  v63 = _s28ResolvedKnowledgeGraphFilterVMa(0);
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v56 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v17;
  v19 = 0;
  v65 = a3;
  v61 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  v58 = v3;
  v20 = *(v3 + 24);
  v21 = *(v20 + 16);
  while (v21 != v19)
  {
    v22 = *(v20 + 16);
    if (v19 >= v22)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_1C44F2DD0(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v18);
    v19 = (v19 + 1);
    v23 = v18[8];
    sub_1C447E918(v18, _s28ResolvedKnowledgeGraphFilterVMa);
    if ((v23 & 1) == 0)
    {
      sub_1C458DB8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = v24;
      v19 = *(v24 + 16);
      v22 = *(v24 + 24);
      v3 = v19 + 1;
      if (v19 < v22 >> 1)
      {
LABEL_6:
        v25 = v60;
        *(v16 + 16) = v3;
        v61 = v16;
        *(v19 + v16 + 32) = 0;
        goto LABEL_8;
      }

LABEL_50:
      sub_1C458DB8C(v22 > 1, v3, 1, v16);
      v16 = v47;
      goto LABEL_6;
    }
  }

  v25 = v60;
LABEL_8:
  v19 = 0;
  v26 = *(v20 + 16);
  do
  {
    if (v26 == v19)
    {
      v27 = v61;
      goto LABEL_22;
    }

    v22 = *(v20 + 16);
    if (v19 >= v22)
    {
      goto LABEL_47;
    }

    sub_1C44F2DD0(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v14);
    v19 = (v19 + 1);
    v3 = *(v14 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C447E918(v14, _s28ResolvedKnowledgeGraphFilterVMa);
  }

  while (!v3);

  v27 = v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C458DB8C(0, *(v27 + 16) + 1, 1, v27);
    v27 = v48;
  }

  v29 = *(v27 + 16);
  v28 = *(v27 + 24);
  v30 = v28 >> 1;
  v14 = v29 + 1;
  if (v28 >> 1 <= v29)
  {
    sub_1C458DB8C(v28 > 1, v29 + 1, 1, v27);
    v27 = v49;
    v28 = *(v49 + 24);
    v30 = v28 >> 1;
  }

  *(v27 + 16) = v14;
  *(v27 + v29 + 32) = 1;
  v31 = v29 + 2;
  if (v30 < (v29 + 2))
  {
    sub_1C458DB8C(v28 > 1, v29 + 2, 1, v27);
    v27 = v50;
    v28 = *(v50 + 24);
    v30 = v28 >> 1;
  }

  *(v27 + 16) = v31;
  *(v27 + v14 + 32) = 2;
  v32 = v29 + 3;
  if (v30 < v32)
  {
    sub_1C458DB8C(v28 > 1, v32, 1, v27);
    v27 = v51;
  }

  *(v27 + 16) = v32;
  *(v27 + v31 + 32) = 3;
LABEL_22:
  v3 = 0;
  v19 = *(v20 + 16);
  do
  {
    if (v19 == v3)
    {
      v61 = v27;
      goto LABEL_32;
    }

    v22 = *(v20 + 16);
    if (v3 >= v22)
    {
      goto LABEL_48;
    }

    sub_1C44F2DD0(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3++, v11);
    v14 = *(v11 + 40);
    sub_1C447E918(v11, _s28ResolvedKnowledgeGraphFilterVMa);
  }

  while ((v14 & 1) != 0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C458DB8C(0, *(v27 + 16) + 1, 1, v27);
    v27 = v52;
  }

  v34 = *(v27 + 16);
  v33 = *(v27 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_1C458DB8C(v33 > 1, v34 + 1, 1, v27);
    v27 = v53;
  }

  *(v27 + 16) = v34 + 1;
  v61 = v27;
  *(v27 + v34 + 32) = 5;
LABEL_32:
  v35 = 0;
  v3 = *(v20 + 16);
  v11 = &qword_1EC0BE568;
  v14 = &unk_1C4F374A0;
  v19 = &qword_1C4F37468;
  v36 = v62;
  while (1)
  {
    if (v3 == v35)
    {
      v39 = v58;
      v38 = v59;
      v40 = v57;
      v41 = v61;
      goto LABEL_43;
    }

    v22 = *(v20 + 16);
    if (v35 >= v22)
    {
      goto LABEL_49;
    }

    sub_1C44F2DD0(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, v36);
    sub_1C487BD34(v36 + *(v63 + 32), v25);
    sub_1C447E918(v36, _s28ResolvedKnowledgeGraphFilterVMa);
    v37 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
    if (sub_1C44157D4(v25, 1, v37) != 1)
    {
      break;
    }

    ++v35;
    sub_1C4420C3C(v25, &qword_1EC0BE560, &qword_1C4F37468);
  }

  sub_1C4420C3C(v25, &qword_1EC0BE560, &qword_1C4F37468);
  v42 = v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C458DB8C(0, *(v42 + 16) + 1, 1, v42);
    v42 = v54;
  }

  v39 = v58;
  v38 = v59;
  v40 = v57;
  v44 = *(v42 + 16);
  v43 = *(v42 + 24);
  v45 = v42;
  if (v44 >= v43 >> 1)
  {
    sub_1C458DB8C(v43 > 1, v44 + 1, 1, v42);
    v45 = v55;
  }

  *(v45 + 16) = v44 + 1;
  v41 = v45;
  *(v45 + v44 + 32) = 4;
LABEL_43:
  sub_1C4B756E8(v41, v66);
  sub_1C4878D7C(v66, v67);
  sub_1C487BDB4(v66);

  sub_1C4879DF4(v67, v40, v39, &v64, v39, &v65, a3);
  sub_1C487BDB4(v67);
  if (v38)
  {
  }

  else
  {
    return v64;
  }
}

uint64_t sub_1C487AE8C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v54 = a2;
  v8 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v57 = _s28ResolvedKnowledgeGraphFilterVMa(0);
  v11 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v51 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v61 = a3;
  v59 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  sub_1C458DB8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  v56 = v20;
  v23 = v22 + 1;
  v52 = a1;
  if (v22 >= v21 >> 1)
  {
LABEL_35:
    sub_1C458DB8C(v21 > 1, v23, 1, v56);
    v56 = v45;
  }

  v24 = 0;
  v25 = v56;
  *(v56 + 16) = v23;
  *(v22 + v25 + 32) = 0;
  v53 = v4;
  v4 = *(v4 + 24);
  v22 = *(v4 + 16);
  while (v22 != v24)
  {
    v21 = *(v4 + 16);
    if (v24 >= v21)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1C44F2DD0(v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24++, v19);
    v23 = *(v19 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C447E918(v19, _s28ResolvedKnowledgeGraphFilterVMa);
    if (v23)
    {

      v26 = v56;
      v22 = *(v56 + 16);
      v27 = *(v56 + 24);
      v28 = v27 >> 1;
      v29 = v22 + 1;
      if (v27 >> 1 <= v22)
      {
        sub_1C458DB8C(v27 > 1, v22 + 1, 1, v56);
        v26 = v46;
        v27 = *(v46 + 24);
        v28 = v27 >> 1;
      }

      *(v26 + 16) = v29;
      *(v22 + v26 + 32) = 1;
      v30 = v22 + 2;
      if (v28 < v22 + 2)
      {
        sub_1C458DB8C(v27 > 1, v22 + 2, 1, v26);
        v26 = v47;
        v27 = *(v47 + 24);
        v28 = v27 >> 1;
      }

      *(v26 + 16) = v30;
      v29[v26 + 32] = 2;
      if (v28 < v22 + 3)
      {
        sub_1C458DB8C(v27 > 1, v22 + 3, 1, v26);
        v26 = v48;
      }

      *(v26 + 16) = v22 + 3;
      v56 = v26;
      v30[v26 + 32] = 3;
      break;
    }
  }

  v19 = 0;
  v23 = *(v4 + 16);
  while (v23 != v19)
  {
    v21 = *(v4 + 16);
    if (v19 >= v21)
    {
      goto LABEL_33;
    }

    sub_1C44F2DD0(v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19++, v16);
    v31 = *(v16 + 40);
    sub_1C447E918(v16, _s28ResolvedKnowledgeGraphFilterVMa);
    if ((v31 & 1) == 0)
    {
      v32 = v56;
      v34 = *(v56 + 16);
      v33 = *(v56 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C458DB8C(v33 > 1, v34 + 1, 1, v56);
        v32 = v49;
      }

      *(v32 + 16) = v34 + 1;
      v56 = v32;
      *(v32 + v34 + 32) = 5;
      break;
    }
  }

  v35 = 0;
  v23 = *(v4 + 16);
  v16 = &qword_1EC0BE568;
  v19 = &unk_1C4F374A0;
  v22 = &qword_1C4F37468;
  while (1)
  {
    if (v23 == v35)
    {
      v38 = v54;
      v37 = v55;
      v40 = v52;
      v39 = v53;
      v41 = v56;
      goto LABEL_29;
    }

    v21 = *(v4 + 16);
    if (v35 >= v21)
    {
      goto LABEL_34;
    }

    sub_1C44F2DD0(v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v35, v13);
    sub_1C487BD34(&v13[*(v57 + 32)], v10);
    sub_1C447E918(v13, _s28ResolvedKnowledgeGraphFilterVMa);
    v36 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
    if (sub_1C44157D4(v10, 1, v36) != 1)
    {
      break;
    }

    ++v35;
    sub_1C4420C3C(v10, &qword_1EC0BE560, &qword_1C4F37468);
  }

  sub_1C4420C3C(v10, &qword_1EC0BE560, &qword_1C4F37468);
  v43 = *(v56 + 16);
  v42 = *(v56 + 24);
  if (v43 >= v42 >> 1)
  {
    sub_1C458DB8C(v42 > 1, v43 + 1, 1, v56);
    v56 = v50;
  }

  v38 = v54;
  v37 = v55;
  v40 = v52;
  v39 = v53;
  v41 = v56;
  *(v56 + 16) = v43 + 1;
  *(v41 + v43 + 32) = 4;
LABEL_29:
  sub_1C4B756E8(v41, v60);

  sub_1C44F1D20(v60, v40, v39, &v58, v39, &v61, &v59, v38, a3, a4);
  sub_1C487BDB4(v60);
  if (v37)
  {
  }

  else
  {
    return v58;
  }
}