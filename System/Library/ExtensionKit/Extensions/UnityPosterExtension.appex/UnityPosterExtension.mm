void sub_100001910(id a1)
{
  qword_100010F30 = [UIColor colorWithRed:0.953 green:0.0 blue:0.066 alpha:1.0];

  _objc_release_x1();
}

void sub_1000019AC(id a1)
{
  qword_100010F40 = [UIColor colorWithRed:0.0 green:0.559 blue:0.23 alpha:1.0];

  _objc_release_x1();
}

void sub_100001A48(id a1)
{
  qword_100010F50 = [UIColor colorWithRed:0.98 green:0.8 blue:0.0 alpha:1.0];

  _objc_release_x1();
}

void sub_100001AE4(id a1)
{
  qword_100010F60 = [UIColor colorWithRed:0.477 green:0.0 blue:0.039 alpha:1.0];

  _objc_release_x1();
}

void sub_100001B80(id a1)
{
  qword_100010F70 = [UIColor colorWithRed:0.0 green:0.281 blue:0.117 alpha:1.0];

  _objc_release_x1();
}

void sub_100001C1C(id a1)
{
  qword_100010F80 = [UIColor colorWithRed:0.49 green:0.396 blue:0.0 alpha:1.0];

  _objc_release_x1();
}

void sub_100002FE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setTimeColor:v2];
  [v3 setHandlesWakeAnimation:1];
  v4 = [UIColor colorWithRed:1.0 green:0.2667 blue:0.2275 alpha:1.0];
  [v3 setPreferredProminentColor:v4];
}

uint64_t sub_100004020@<X0>(uint64_t *a1@<X8>)
{
  sub_100004714();
  swift_allocObject();
  sub_100004724();
  sub_1000046E4();
  swift_allocObject();

  sub_1000046F4();
  sub_1000044D0(&qword_100010E70, qword_100005EA0);
  sub_1000046A4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100005E20;
  sub_100004518(&qword_100010E78, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100004694();
  sub_100004518(&qword_100010E80, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100004694();

  *a1 = v2;
  return result;
}

id sub_10000424C()
{
  v0 = objc_allocWithZone(UnityPoster);

  return [v0 init];
}

uint64_t sub_100004288()
{
  [objc_allocWithZone(UnityPoster) init];
  sub_1000044D0(&qword_100010E60, &unk_100005E30);
  swift_allocObject();
  sub_100004704();
  sub_100004594(&qword_100010E68, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000046D4();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000043EC();
  sub_100004594(&qword_100010E58, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000046B4();
  return 0;
}

unint64_t sub_1000043EC()
{
  result = qword_100010E50;
  if (!qword_100010E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E50);
  }

  return result;
}

uint64_t sub_100004440(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000044D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004594(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004440(&qword_100010E60, &unk_100005E30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}