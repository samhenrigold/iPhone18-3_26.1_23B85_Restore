void maybeLogVersionInfo()
{
  if (maybeLogVersionInfo_sLogVersion != -1)
  {
    maybeLogVersionInfo_cold_1();
  }
}

void __maybeLogVersionInfo_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = +[CHLogServer sharedInstance];
  v1 = [v0 logHandleForDomain:"SharedUtilities"];

  v2 = v1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MGCopyAnswer();
    v13 = 138543362;
    v14 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "OS version:     %{public}@", &v13, 0xCu);
  }

  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"SharedUtilities"];

  v6 = v5;
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v8 = CHGetRootVersionString(v7);
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Version:        %{public}@", &v13, 0xCu);
  }

  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"SharedUtilities"];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446210;
    v14 = "106.200.81.2.14~1";
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Build revision: %{public}s", &v13, 0xCu);
  }

  v11 = +[CHLogServer sharedInstance];
  v12 = [v11 logHandleForDomain:"SharedUtilities"];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446210;
    v14 = "stock";
    _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Build reason:   %{public}s", &v13, 0xCu);
  }
}

id CHGetRootVersionString(uint64_t a1)
{
  if (CHGetRootVersionString_sOnce != -1)
  {
    CHGetRootVersionString_cold_1();
  }

  v2 = CHGetRootVersionString_version;

  return v2;
}

uint64_t __CHGetRootVersionString_block_invoke()
{
  CHGetRootVersionString_version = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s", "CallHistory-", "106.200.81.2.14"];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C3E93848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3E93D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3E940C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id getMobileUserLibraryDirectoryPath()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/mobile" isDirectory:1];
  v1 = [v0 URLByAppendingPathComponent:@"Library"];

  return v1;
}

void sub_1C3E947C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t createDirectoryAtPath(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E695DB78];
  v20[0] = *MEMORY[0x1E695DB78];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v19 = 0;
  v7 = [v3 resourceValuesForKeys:v6 error:&v19];
  v8 = v19;

  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v5];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = 1;
      goto LABEL_11;
    }

    v16 = +[CHLogServer sharedInstance];
    v15 = [v16 logHandleForDomain:"SharedUtilities"];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      createDirectoryAtPath_cold_1(v3, v15);
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  if ([v8 code] != 260 || (v8, objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v12 = objc_claimAutoreleasedReturnValue(), v18 = 0, v11 = 1, v13 = objc_msgSend(v12, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v3, 1, v4, &v18), v8 = v18, v12, (v13 & 1) == 0))
  {
    v14 = +[CHLogServer sharedInstance];
    v15 = [v14 logHandleForDomain:"SharedUtilities"];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      createDirectoryAtPath_cold_2(v3, v8, v15);
    }

    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

__CFString *getBoolAsString(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

unint64_t CHHash(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  if (result)
  {
    v10 = result;
    v13 = &a10;
    result = a9;
    if (v10 != 1)
    {
      for (i = 2; i <= v10; ++i)
      {
        v12 = v13++;
        result ^= __ROR8__(*v12, -(0x40 / i));
      }
    }
  }

  return result;
}

void *sub_1C3E977F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C3E9793C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3E979AC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C3E979F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3E97A2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3E97B54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C3E97BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C3E97BFC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F060, &qword_1C40383B8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C3E97C34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C3E97C74()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C3E97CA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3E97CDC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1C3E97CE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  sub_1C3EE6238(*(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C3E97DC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for CallFetchRequest(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (((*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_1C40309F0();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  sub_1C3EE6238(*(v0 + v8 + v6[7]));

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1C3E97F6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3E97FA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C3E97FE8()
{
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C3E9808C()
{
  v1 = sub_1C4030720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C3E98130@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1C3E98160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C40309F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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
}

uint64_t sub_1C3E9822C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C40309F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C3E98368()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3E983A0()
{
  sub_1C3EE6238(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1C3E9855C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4014E30(&v3);
  *a1 = v3;
  return result;
}

double sub_1C3E985FC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4014F48(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C3E98638(unint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_1C3F16304(v3[0], v1);
  return sub_1C40150F8(v3);
}

CallHistory::CallStatus_optional sub_1C3E9867C@<W0>(_BYTE *a1@<X8>)
{
  result.value = sub_1C4014D0C(&v3).value;
  *a1 = v3;
  return result;
}

uint64_t sub_1C3E986FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4030A70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = sub_1C4030860();
  return (*(*(v9 - 8) + 48))(a1 + *(a3 + 28), a2, v9);
}

uint64_t sub_1C3E987E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C4030A70();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, v8);
  }

  v11 = sub_1C4030860();
  return (*(*(v11 - 8) + 56))(a1 + *(a4 + 28), a2, a2, v11);
}

uint64_t sub_1C3E989D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C40309F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1C4030980();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[14];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[19];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[37]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1C3E98B8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C40309F0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1C4030980();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[14];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[37]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[19];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C3E98E7C()
{
  v1 = (type metadata accessor for CallFetchRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();

  v11 = sub_1C40309F0();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  sub_1C3EE6238(*(v0 + v3 + v1[7]));

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1C3EAE100(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[9] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1C4030980();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[13];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1C3EAE244(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
  }

  else
  {
    v13 = sub_1C4030980();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1C3EAE37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecentCall(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C3EAE438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RecentCall(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C3EAE504(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void notifyClientsOfEvent(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = +[CHLogServer sharedInstance];
  v6 = [v5 logHandleForDomain:"SharedUtilities"];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Firing %{public}@ notification: %{public}@", buf, 0x16u);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __notifyClientsOfEvent_block_invoke;
  v10[3] = &unk_1E81DBE38;
  v11 = v3;
  v12 = v4;
  v8 = v4;
  v9 = v3;
  dispatch_async(v7, v10);
}

void __notifyClientsOfEvent_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:0 userInfo:*(a1 + 40)];
}

id getLoggedInUserName()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = sysconf(71);
  v1 = &v7 - ((MEMORY[0x1EEE9AC00](v0) + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v9, 0, sizeof(v9));
  v8 = 0;
  v2 = getuid();
  v3 = getpwuid_r(v2, &v9, v1, v0, &v8);
  v4 = 0;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v8 == 0;
  }

  if (!v5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9.pw_name];
  }

  return v4;
}

__CFString *getDBLErrorCodeAsString(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"undefined";
  }

  else
  {
    return off_1E81DBE90[a1];
  }
}

void *maybeAppendStringWithSeparator(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = [v3 stringByAppendingString:{@", "}];

    v6 = [v5 stringByAppendingString:v4];

    v3 = v6;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

id getMobileUserDirectoryPath()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/mobile" isDirectory:1];

  return v0;
}

uint64_t isInternalBuild(uint64_t a1, uint64_t a2)
{
  if (_QueryBuildInformation_once != -1)
  {
    isInternalBuild_cold_1();
  }

  return _IsInternalBuildCached;
}

uint64_t isCarrierBuild(uint64_t a1, uint64_t a2)
{
  if (_QueryBuildInformation_once != -1)
  {
    isInternalBuild_cold_1();
  }

  return _IsCarrierBuildCached;
}

uint64_t createBackgroundTaskAssertion()
{
  v0 = getpid();

  return MEMORY[0x1EEE42608](0, v0, 1, 4, @"com.apple.callhistory.save");
}

void sub_1C3EAEE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3EAEFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *getCHNotifyDataStoreChangeReasonAsString(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E81DBF58[a1];
  }
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1C3EAF8D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C3EB01A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1C3EB4C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CoreDuetLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreDuetLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E81DC1B0;
    v5 = 0;
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreDuetLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreDuetLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  return result;
}

id DeserializeTransactions(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v28;
    *&v4 = 138543618;
    v24 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v8 record];
        v10 = [v8 record];
        v26 = 0;
        v11 = [CHRecentCall unarchivedObjectFromData:v10 error:&v26];
        v12 = v26;

        if (v11)
        {
          v13 = [v8 transactionType];
          v14 = [v11 uniqueId];

          if (v14)
          {
            if (v13 <= 2)
            {
              v15 = [[DeserializedTransaction alloc] initWithCall:v11 andType:v13];
              [v25 addObject:v15];
              goto LABEL_17;
            }

            v21 = +[CHLogServer sharedInstance];
            v22 = [v21 logHandleForDomain:"intent"];

            v15 = v22;
            if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
            {
              DeserializeTransactions_cold_1(v35, v13, &v36, &v15->super);
            }
          }

          else
          {
            v17 = +[CHLogServer sharedInstance];
            v18 = [v17 logHandleForDomain:"intent"];

            v15 = v18;
            if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [CHTransaction toString:v13];
              v20 = [v11 remoteParticipantHandles];
              *buf = v24;
              v32 = v19;
              v33 = 2112;
              v34 = v20;
              _os_log_impl(&dword_1C3E90000, &v15->super, OS_LOG_TYPE_DEFAULT, "Dropping %{public}@ transaction for recent call with remote participant handles %@ since it has a nil unique ID", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = +[CHLogServer sharedInstance];
          v15 = [v16 logHandleForDomain:"intent"];

          if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v32 = v9;
            v33 = 2114;
            v34 = v12;
            _os_log_error_impl(&dword_1C3E90000, &v15->super, OS_LOG_TYPE_ERROR, "Failing to unarchive the specified value: %{public}@ %{public}@", buf, 0x16u);
          }
        }

LABEL_17:
      }

      v5 = [v2 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v5);
  }

  return v25;
}

void HandleInteractionsForDeserializedTransactions(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12 == 2)
        {
          v13 = [v11 call];
          v14 = [v13 uniqueId];
          [v5 addObject:v14];
        }

        else
        {
          if (v12)
          {
            continue;
          }

          v13 = [v11 call];
          [v4 donateCallHistoryInteractionWithCall:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v4 deleteInteractionWithCalls:v5];
}

BOOL CHHandleTypeToINPersonHandleType(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 3;
  }

  return result;
}

id CHHandleToINPersonHandle(void *a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v45 = a3;
  if (!v6)
  {
    goto LABEL_31;
  }

  v46 = v5;
  if ([v5 type] == 2)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [v6 phoneNumbers];
    v7 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v7)
    {
      v8 = v7;
      v43 = v6;
      v9 = 0;
      v10 = *v53;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v52 + 1) + 8 * i) value];
          v13 = [v12 stringValue];

          v14 = [v5 value];
          if ([v14 isEqualToString:v13])
          {

LABEL_11:
            INPersonHandleLabelForCNLabeledValue();
            v9 = v17 = v9;
            goto LABEL_17;
          }

          v15 = [v5 normalizedValue];
          v16 = [v15 isEqualToString:v13];

          if (v16)
          {
            goto LABEL_11;
          }

          v17 = [[CHPhoneNumber alloc] initWithDigits:v13 isoCountryCode:v45];
          v18 = [(CHPhoneNumber *)v17 normalizedRepresentation];
          v19 = [v5 value];
          if ([v19 isEqualToString:v18])
          {

LABEL_15:
            v24 = INPersonHandleLabelForCNLabeledValue();

            v9 = v24;
            goto LABEL_16;
          }

          [v5 normalizedValue];
          v44 = v9;
          v20 = v8;
          v22 = v21 = v10;
          v23 = [v22 isEqualToString:v18];

          v10 = v21;
          v8 = v20;
          v9 = v44;

          if (v23)
          {
            goto LABEL_15;
          }

LABEL_16:

          v5 = v46;
LABEL_17:
        }

        v8 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (!v8)
        {
          v6 = v43;
          goto LABEL_33;
        }
      }
    }

    goto LABEL_32;
  }

  if ([v5 type] != 3)
  {
LABEL_31:
    v9 = 0;
    goto LABEL_34;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [v6 emailAddresses];
  v25 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v25)
  {
    v26 = v25;
    v9 = 0;
    v27 = *v49;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = [*(*(&v48 + 1) + 8 * j) value];
        v30 = [v5 value];
        v31 = [v29 compare:v30 options:1];

        if (!v31)
        {
          v32 = INPersonHandleLabelForCNLabeledValue();

          v9 = v32;
        }

        v5 = v46;
      }

      v26 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v26);
    goto LABEL_33;
  }

LABEL_32:
  v9 = 0;
LABEL_33:

LABEL_34:
  v33 = [v5 normalizedValue];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = [v5 value];
  }

  v36 = v5;
  v37 = v35;

  v38 = objc_alloc(MEMORY[0x1E696E948]);
  v39 = [v36 type];
  if (v39 == 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39 == 3;
  }

  v41 = [v38 initWithValue:v37 type:v40 label:v9];

  return v41;
}

uint64_t CHServiceProviderToINPreferredCallProvider(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.FaceTime"])
  {
    v2 = 2;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.Telephony"];
  }

  return v2;
}

uint64_t CHCallStatusToINInteractionDirection(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x12) != 0)
  {
    return 1;
  }

  if ((a1 & 0xD) != 0)
  {
    return 2;
  }

  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"intent"];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "Unknown call direction: 0x%x", v5, 8u);
  }

  return 0;
}

uint64_t CHTTYTypeToINTTYType(uint64_t a1)
{
  v1 = 3;
  if (a1 != 2)
  {
    v1 = 1;
  }

  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

BOOL CHRecentCallMediaTypeToINCallCapability(_BOOL8 result)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (result != 2)
    {
      return result;
    }
  }

  else
  {
    v1 = +[CHLogServer sharedInstance];
    v2 = [v1 logHandleForDomain:"intent"];

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = 0;
      _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Unknown media type: %ld", &v3, 0xCu);
    }

    return 0;
  }

  return result;
}

__CFString *getDBMErrorCodeAsString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"undefined";
  }

  else
  {
    return off_1E81DC248[a1];
  }
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C3EC0680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3EC07C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC3B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC77D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC7E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC8004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC81CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC8904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC8D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC9270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC9724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3EC9AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3EC9D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3ECA070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CHPhoneNumberNormalizedPhoneNumberString(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _PNCopyStrippedNumberWithoutPauses();
  if (v3)
  {
    v4 = v3;
    if (CFStringGetLength(v3) < 1)
    {
      String = 0;
    }

    else
    {
      v5 = CFPhoneNumberCreate();
      if (!v5 || (v6 = v5, String = CFPhoneNumberCreateString(), CFRelease(v6), !String))
      {
        CFRetain(v4);
        String = v4;
      }
    }

    CFRelease(v4);
  }

  else
  {
    String = 0;
  }

  return String;
}

void sub_1C3ECAC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3ECAFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C3ECC2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3ECC7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3ECC95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3ECCB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3ECCD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3ECD034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3ECD294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C3ECEEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *getBootUpResultAsString(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E81DCAB0[a1];
  }
}

__CFString *CHCallerIdAvailabilityAsString(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E81DCCC0[a1];
  }
}

id CHGetUserCallHistoryDataStoreDirectoryURL(uint64_t a1)
{
  if (CHGetUserCallHistoryDataStoreDirectoryURL_onceToken != -1)
  {
    CHGetUserCallHistoryDataStoreDirectoryURL_cold_1();
  }

  v2 = CHGetUserCallHistoryDataStoreDirectoryURL_sDirectoryURL;

  return v2;
}

void __CHGetUserCallHistoryDataStoreDirectoryURL_block_invoke()
{
  if (__CHGetUserLibraryDirectoryURL_onceToken != -1)
  {
    __CHGetUserCallHistoryDataStoreDirectoryURL_block_invoke_cold_1();
  }

  v2 = __CHGetUserLibraryDirectoryURL_sDirectoryURL;
  v0 = [v2 URLByAppendingPathComponent:@"CallHistoryDB" isDirectory:1];
  v1 = CHGetUserCallHistoryDataStoreDirectoryURL_sDirectoryURL;
  CHGetUserCallHistoryDataStoreDirectoryURL_sDirectoryURL = v0;
}

id CHGetUserCallHistoryDataStoreClassCFileURL(uint64_t a1)
{
  if (CHGetUserCallHistoryDataStoreClassCFileURL_onceToken != -1)
  {
    CHGetUserCallHistoryDataStoreClassCFileURL_cold_1();
  }

  v2 = CHGetUserCallHistoryDataStoreClassCFileURL_sFileURL;

  return v2;
}

void __CHGetUserCallHistoryDataStoreClassCFileURL_block_invoke(uint64_t a1)
{
  v3 = CHGetUserCallHistoryDataStoreDirectoryURL(a1);
  v1 = [v3 URLByAppendingPathComponent:@"CallHistory.storedata" isDirectory:0];
  v2 = CHGetUserCallHistoryDataStoreClassCFileURL_sFileURL;
  CHGetUserCallHistoryDataStoreClassCFileURL_sFileURL = v1;
}

id CHGetUserCallHistoryDataStoreClassDFileURL(uint64_t a1)
{
  if (CHGetUserCallHistoryDataStoreClassDFileURL_onceToken != -1)
  {
    CHGetUserCallHistoryDataStoreClassDFileURL_cold_1();
  }

  v2 = CHGetUserCallHistoryDataStoreClassDFileURL_sFileURL;

  return v2;
}

void __CHGetUserCallHistoryDataStoreClassDFileURL_block_invoke(uint64_t a1)
{
  v3 = CHGetUserCallHistoryDataStoreDirectoryURL(a1);
  v1 = [v3 URLByAppendingPathComponent:@"CallHistoryTemp.storedata" isDirectory:0];
  v2 = CHGetUserCallHistoryDataStoreClassDFileURL_sFileURL;
  CHGetUserCallHistoryDataStoreClassDFileURL_sFileURL = v1;
}

uint64_t ch_framework_log(uint64_t a1, uint64_t a2)
{
  if (ch_framework_log_onceToken != -1)
  {
    ch_framework_log_cold_1();
  }

  return ch_framework_log_sLog;
}

os_log_t __ch_framework_log_block_invoke()
{
  result = os_log_create("com.apple.callhistory", "CallHistory.framework");
  ch_framework_log_sLog = result;
  return result;
}

uint64_t ch_security_log(uint64_t a1, uint64_t a2)
{
  if (ch_security_log_onceToken != -1)
  {
    ch_security_log_cold_1();
  }

  return ch_security_log_sLog;
}

os_log_t __ch_security_log_block_invoke()
{
  result = os_log_create("com.apple.callhistory", "Security");
  ch_security_log_sLog = result;
  return result;
}

void sub_1C3ED5D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3ED9648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3ED9BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSharedGEOPhoneNumberResolver(uint64_t a1)
{
  if (getSharedGEOPhoneNumberResolver_onceToken != -1)
  {
    getSharedGEOPhoneNumberResolver_cold_1();
  }

  v2 = getSharedGEOPhoneNumberResolver_instance;

  return v2;
}

uint64_t __getSharedGEOPhoneNumberResolver_block_invoke()
{
  getSharedGEOPhoneNumberResolver_instance = objc_alloc_init(MEMORY[0x1E69A2340]);

  return MEMORY[0x1EEE66BB8]();
}

void __getCNContactFetchRequestClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactFetchRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNContactFetchRequestClass_block_invoke_cold_1();
    ContactsLibrary();
  }
}

void ContactsLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ContactsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E81DCF18;
    v3 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCNContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNContactClass_block_invoke_cold_1();
    return [(NSString(CallHistory) *)v3 ch_localizedNameOfTimeIntervalType:v4, v5];
  }

  return result;
}

void sub_1C3EDF244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CoreDuetLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CoreDuetLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E81DCF30;
    v3 = 0;
    CoreDuetLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!CoreDuetLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CoreDuetLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getNPSManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E81DCF88;
    v6 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (NanoPreferencesSyncLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNPSManagerClass_block_invoke_cold_1();
  }

  getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  return result;
}

id ch_allEmails_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddresses];
  v3 = [v2 arrayByApplyingSelector:sel_value];

  return v3;
}

id ch_allPhoneNumbers_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 phoneNumbers];
  v3 = [v2 arrayByApplyingSelector:sel_value];
  v4 = [v3 arrayByApplyingSelector:sel_stringValue];

  return v4;
}

id ch_allPhoneNumberLastFourDigits_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 phoneNumbers];
  v3 = [v2 arrayByApplyingSelector:sel_value];
  v4 = [v3 arrayByApplyingSelector:sel_lastFourDigits];

  return v4;
}

void sub_1C3EE2DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1C3EE413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C3EE4204;

  return MEMORY[0x1EEDF2DF8](a1, a2, a3, a4);
}

uint64_t sub_1C3EE4204()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C3EE42F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE7A84;

  return MEMORY[0x1EEDF2E00](a1, a2, a3);
}

uint64_t sub_1C3EE4438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C3EE4204;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C3EE4584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C3EE7A84;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1C3EE46C4()
{
  if (qword_1EC08EB70 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4030D10();
  __swift_project_value_buffer(v0, qword_1EC0B0CC8);
  oslog = sub_1C4030CF0();
  v1 = sub_1C40315D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C3E90000, oslog, v1, "Server disconnected", v2, 2u);
    MEMORY[0x1C6934650](v2, -1, -1);
  }
}

uint64_t sub_1C3EE47AC(uint64_t a1, unsigned __int8 *a2)
{
  Calls = type metadata accessor for GetCalls(0);
  MEMORY[0x1EEE9AC00](Calls);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  sub_1C3EE757C(a1, v8, type metadata accessor for CallFetchRequest);
  v12 = *(v11 + 40);
  v13 = sub_1C3EE604C(&qword_1EC08EBE8, type metadata accessor for GetCalls, &unk_1C4037B40);
  v12(&v19, v8, Calls, v13, v10, v11);
  sub_1C3EE7654(v8, type metadata accessor for GetCalls);
  if (!v3)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v14 = sub_1C402A848(v19);
        v15 = sub_1C3EE4D44(v14);
      }

      else
      {
        v16 = sub_1C402B5F4(v19);
        v15 = sub_1C3EE547C(v16);
      }

      v10 = v15;
    }

    else
    {

      sub_1C3F432BC(&v19);

      return v19;
    }
  }

  return v10;
}

uint64_t sub_1C3EE4998(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EE49BC, 0, 0);
}

uint64_t sub_1C3EE49BC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v0[3] = v2;
  v5 = *(v4 + 56);
  sub_1C3EE61B4(v2);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_1C3EE61E4();
  *v6 = v0;
  v6[1] = sub_1C3EE4B28;

  return (v9)(v0 + 2, v0 + 3, &type metadata for DeleteCalls, v7, v3, v4);
}

uint64_t sub_1C3EE4B28()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  sub_1C3EE6238(*(v2 + 24));
  if (v0)
  {
    v3 = sub_1C3EE4C60;
  }

  else
  {
    v3 = sub_1C3EE4C44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C3EE4C78()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1C3EE4D44(uint64_t a1)
{
  v62 = type metadata accessor for RecentCall(0);
  v2 = *(v62 - 8);
  v3 = MEMORY[0x1EEE9AC00](v62);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v55 - v6;
  v66 = type metadata accessor for CoalescingManager.Group(0);
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EBF0, &qword_1C4036A38);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  v69 = sub_1C3EFFE80(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v17 = *(a1 + 64);
  v67 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v56 = (v18 + 63) >> 6;
  v61 = a1;

  v21 = 0;
  v68 = v16;
  v63 = v14;
  v64 = v5;
  v65 = v2;
  v22 = v67;
  if (v20)
  {
    while (1)
    {
      v23 = v21;
LABEL_13:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v61;
      v29 = v57;
      sub_1C3EE757C(*(v61 + 48) + *(v58 + 72) * v27, v57, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      v30 = v59;
      sub_1C3EE757C(*(v28 + 56) + *(v60 + 72) * v27, v59, type metadata accessor for CoalescingManager.Group);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EBF8, &qword_1C4036A40);
      v32 = *(v31 + 48);
      sub_1C3EE75EC(v29, v14, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      sub_1C3EE75EC(v30, &v14[v32], type metadata accessor for CoalescingManager.Group);
      (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
      v16 = v68;
LABEL_14:
      sub_1C3EE76B8(v14, v16, &qword_1EC08EBF0, &qword_1C4036A38);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EBF8, &qword_1C4036A40);
      if ((*(*(v33 - 8) + 48))(v16, 1, v33) == 1)
      {
        break;
      }

      v34 = &v16[*(v33 + 48)];
      sub_1C3EE757C(v34, v7, type metadata accessor for RecentCall);
      v35 = *(v34 + *(v66 + 20));

      sub_1C3EE7654(v34, type metadata accessor for CoalescingManager.Group);
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = v7;
        v38 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EC00, &qword_1C4036A48);
        v39 = *(v65 + 72);
        v40 = v65;
        v41 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v42 = swift_allocObject();
        v43 = _swift_stdlib_malloc_size(v42);
        if (!v39)
        {
          goto LABEL_31;
        }

        if (v43 - v41 == 0x8000000000000000 && v39 == -1)
        {
          goto LABEL_33;
        }

        v42[2] = v36;
        v42[3] = 2 * ((v43 - v41) / v39);
        v45 = sub_1C3EF118C(&v70, v42 + v41, v36, v35);
        sub_1C3EE75E4(v70);
        if (v45 != v36)
        {
          goto LABEL_32;
        }

        v46 = v40;
        v47 = v38;
        v7 = v37;
        v16 = v68;
      }

      else
      {

        v42 = MEMORY[0x1E69E7CC0];
        v47 = v64;
        v46 = v65;
      }

      v48 = *(v62 + 160);

      *&v7[v48] = v42;
      sub_1C3EE757C(v7, v47, type metadata accessor for RecentCall);
      v49 = v69;
      v51 = v69[2];
      v50 = v69[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_1C3EFFE80((v50 > 1), v51 + 1, 1, v69);
      }

      v14 = v63;
      v49[2] = v51 + 1;
      v52 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v69 = v49;
      sub_1C3EE75EC(v47, v49 + v52 + *(v46 + 72) * v51, type metadata accessor for RecentCall);
      sub_1C3EE7654(v7, type metadata accessor for RecentCall);
      sub_1C3EE7654(v16, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      v22 = v67;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v70 = v69;

    sub_1C3EE6268(&v70);

    return v70;
  }

  else
  {
LABEL_5:
    if (v56 <= (v21 + 1))
    {
      v24 = v21 + 1;
    }

    else
    {
      v24 = v56;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v56)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EBF8, &qword_1C4036A40);
        (*(*(v53 - 8) + 56))(v14, 1, 1, v53);
        v20 = 0;
        v21 = v25;
        goto LABEL_14;
      }

      v20 = *(v22 + 8 * v23);
      ++v21;
      if (v20)
      {
        v21 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);

    __break(1u);
  }

  return result;
}

void *sub_1C3EE547C(uint64_t a1)
{
  v55 = type metadata accessor for RecentCall(0);
  v2 = *(v55 - 8);
  v3 = MEMORY[0x1EEE9AC00](v55);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - v5;
  v58 = type metadata accessor for CoalescingManager.Group(0);
  v53 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EC08, &qword_1C4036A50);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  v14 = sub_1C3EFFE80(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v15 = *(a1 + 64);
  v59 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v50 = (v16 + 63) >> 6;
  v54 = a1;

  v19 = 0;
  v60 = v13;
  v51 = v11;
  v56 = v2;
  v20 = v59;
  if (v18)
  {
    while (1)
    {
      v21 = v19;
LABEL_13:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      v26 = *(*(v54 + 48) + 8 * v25);
      v27 = v52;
      sub_1C3EE757C(*(v54 + 56) + *(v53 + 72) * v25, v52, type metadata accessor for CoalescingManager.Group);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EC10, &qword_1C4036A58);
      v29 = *(v28 + 48);
      *v11 = v26;
      sub_1C3EE75EC(v27, v11 + v29, type metadata accessor for CoalescingManager.Group);
      (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
      v13 = v60;
LABEL_14:
      sub_1C3EE76B8(v11, v13, &qword_1EC08EC08, &qword_1C4036A50);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EC10, &qword_1C4036A58);
      if ((*(*(v30 - 8) + 48))(v13, 1, v30) == 1)
      {
        break;
      }

      v61 = v14;
      v31 = &v13[*(v30 + 48)];
      sub_1C3EE757C(v31, v6, type metadata accessor for RecentCall);
      v32 = *(v31 + *(v58 + 20));

      sub_1C3EE7654(v31, type metadata accessor for CoalescingManager.Group);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = v6;
        v35 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EC00, &qword_1C4036A48);
        v36 = *(v56 + 72);
        v37 = v56;
        v38 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v39 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v39);
        if (!v36)
        {
          goto LABEL_31;
        }

        if (v40 - v38 == 0x8000000000000000 && v36 == -1)
        {
          goto LABEL_33;
        }

        v39[2] = v33;
        v39[3] = 2 * ((v40 - v38) / v36);
        v42 = sub_1C3EF118C(&v62, v39 + v38, v33, v32);
        sub_1C3EE75E4(v62);
        if (v42 != v33)
        {
          goto LABEL_32;
        }

        v43 = v37;
        v44 = v35;
        v6 = v34;
        v11 = v51;
        v13 = v60;
      }

      else
      {

        v39 = MEMORY[0x1E69E7CC0];
        v43 = v56;
        v44 = v57;
      }

      v45 = *(v55 + 160);

      *&v6[v45] = v39;
      sub_1C3EE757C(v6, v44, type metadata accessor for RecentCall);
      v14 = v61;
      v47 = v61[2];
      v46 = v61[3];
      if (v47 >= v46 >> 1)
      {
        v14 = sub_1C3EFFE80((v46 > 1), v47 + 1, 1, v61);
      }

      v14[2] = v47 + 1;
      sub_1C3EE75EC(v44, v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v47, type metadata accessor for RecentCall);
      sub_1C3EE7654(v6, type metadata accessor for RecentCall);
      v20 = v59;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    v62 = v14;

    sub_1C3EE6268(&v62);

    return v62;
  }

  else
  {
LABEL_5:
    if (v50 <= (v19 + 1))
    {
      v22 = v19 + 1;
    }

    else
    {
      v22 = v50;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v50)
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EC10, &qword_1C4036A58);
        (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
        v18 = 0;
        v19 = v23;
        goto LABEL_14;
      }

      v18 = *(v20 + 8 * v21);
      ++v19;
      if (v18)
      {
        v19 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1C3EE5B00(uint64_t a1, id *a2)
{
  result = sub_1C40311A0();
  *a2 = 0;
  return result;
}

uint64_t sub_1C3EE5B78(uint64_t a1, id *a2)
{
  v3 = sub_1C40311B0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C3EE5BF8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C40311C0();
  v2 = sub_1C4031190();

  *a1 = v2;
  return result;
}

uint64_t sub_1C3EE5C3C()
{
  v0 = sub_1C40311C0();
  v1 = MEMORY[0x1C6932FE0](v0);

  return v1;
}

uint64_t sub_1C3EE5C78(uint64_t a1)
{
  sub_1C40311C0();
  sub_1C4031280();
}

uint64_t sub_1C3EE5CCC(uint64_t a1)
{
  sub_1C40311C0();
  sub_1C4031C70();
  sub_1C4031280();
  v1 = sub_1C4031CC0();

  return v1;
}

uint64_t sub_1C3EE5D40()
{
  v1 = *v0;
  sub_1C4031C70();
  MEMORY[0x1C6933940](v1);
  return sub_1C4031CC0();
}

uint64_t sub_1C3EE5D88(uint64_t a1)
{
  v2 = *v1;
  sub_1C4031C70();
  MEMORY[0x1C6933940](v2);
  return sub_1C4031CC0();
}

BOOL sub_1C3EE5DE8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1C3EE5E40(void *a1, uint64_t *a2)
{
  v2 = sub_1C40311C0();
  v4 = v3;
  if (v2 == sub_1C40311C0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C4031BF0();
  }

  return v7 & 1;
}

uint64_t sub_1C3EE5ED4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C4031190();

  *a2 = v3;
  return result;
}

uint64_t sub_1C3EE5F1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C40311C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C3EE5F48(uint64_t a1)
{
  v2 = sub_1C3EE604C(&qword_1EC08EBD0, type metadata accessor for URLResourceKey, &unk_1C40369A0);
  v3 = sub_1C3EE604C(&qword_1EC08EBD8, type metadata accessor for URLResourceKey, &unk_1C4036940);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C3EE604C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C3EE61B4(unint64_t result)
{
  switch(result >> 60)
  {
    case 0xFuLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_1C3EE61E4()
{
  result = qword_1EC08EBE0;
  if (!qword_1EC08EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EBE0);
  }

  return result;
}

unint64_t sub_1C3EE6238(unint64_t result)
{
  switch(result >> 60)
  {
    case 0xFuLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1C3EE6268(uint64_t *a1)
{
  v2 = *(type metadata accessor for RecentCall(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C3F15350(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C3EE6310(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1C3EE6310(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4031BA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RecentCall(0);
        v6 = sub_1C4031420();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RecentCall(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C3EE66A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C3EE643C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C3EE643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for RecentCall(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1C3EE757C(v23, v17, type metadata accessor for RecentCall);
      sub_1C3EE757C(v20, v13, type metadata accessor for RecentCall);
      v24 = sub_1C4030940();
      sub_1C3EE7654(v13, type metadata accessor for RecentCall);
      result = sub_1C3EE7654(v17, type metadata accessor for RecentCall);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1C3EE75EC(v23, v35, type metadata accessor for RecentCall);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C3EE75EC(v25, v20, type metadata accessor for RecentCall);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C3EE66A0(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for RecentCall(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1C3F14D78(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1C3EE7004(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1C3F14D78(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1C3F14CEC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1C3EE757C(v110 + v24 * v23, v18, type metadata accessor for RecentCall);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1C3EE757C(v26, v116, type metadata accessor for RecentCall);
      LODWORD(v111) = sub_1C4030940();
      sub_1C3EE7654(v28, type metadata accessor for RecentCall);
      result = sub_1C3EE7654(v18, type metadata accessor for RecentCall);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1C3EE757C(v30, v18, type metadata accessor for RecentCall);
        v31 = v116;
        sub_1C3EE757C(v5, v116, type metadata accessor for RecentCall);
        v32 = sub_1C4030940() & 1;
        sub_1C3EE7654(v31, type metadata accessor for RecentCall);
        result = sub_1C3EE7654(v18, type metadata accessor for RecentCall);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_1C3EE75EC(v39 + v38, v107, type metadata accessor for RecentCall);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1C3EE75EC(v107, v39 + v33, type metadata accessor for RecentCall);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_1C3EFFD7C(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1C3EFFD7C((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1C3EE7004(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1C3F14D78(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_1C3F14CEC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1C3EE757C(v5, v18, type metadata accessor for RecentCall);
    v93 = v116;
    sub_1C3EE757C(v90, v116, type metadata accessor for RecentCall);
    a4 = sub_1C4030940();
    sub_1C3EE7654(v93, type metadata accessor for RecentCall);
    result = sub_1C3EE7654(v18, type metadata accessor for RecentCall);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for RecentCall;
    v94 = v115;
    sub_1C3EE75EC(v5, v115, type metadata accessor for RecentCall);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C3EE75EC(v94, v90, type metadata accessor for RecentCall);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1C3EE7004(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for RecentCall(0);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1C3EE757C(v30, v43, type metadata accessor for RecentCall);
          v32 = v44;
          sub_1C3EE757C(v27, v44, type metadata accessor for RecentCall);
          v33 = sub_1C4030940();
          sub_1C3EE7654(v32, type metadata accessor for RecentCall);
          sub_1C3EE7654(v31, type metadata accessor for RecentCall);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1C3EE757C(a2, v43, type metadata accessor for RecentCall);
        v21 = v44;
        sub_1C3EE757C(a4, v44, type metadata accessor for RecentCall);
        v22 = sub_1C4030940();
        sub_1C3EE7654(v21, type metadata accessor for RecentCall);
        sub_1C3EE7654(v20, type metadata accessor for RecentCall);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_1C3F44588(&v48, &v47, &v46);
  return 1;
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

uint64_t sub_1C3EE757C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3EE75EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3EE7654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3EE76B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C3EE77F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11CallHistory0A9PredicateO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 == 15)
  {
    return (*a1 >> 3) + 15;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C3EE7AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x71 && *(a1 + 8))
  {
    return (*a1 + 113);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x70)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C3EE7B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x70)
  {
    *result = a2 - 113;
    if (a3 >= 0x71)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x71)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C3EE7C00()
{
  v0 = sub_1C4030D20();
  __swift_allocate_value_buffer(v0, qword_1EC0B0C30);
  v1 = __swift_project_value_buffer(v0, qword_1EC0B0C30);
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x80000001C4056970;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1C3EE7CA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC08EAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4030D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC0B0C30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C3EE7D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6C6163 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C4031BF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C3EE7DF8(uint64_t a1)
{
  v2 = sub_1C3EE9BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3EE7E34(uint64_t a1)
{
  v2 = sub_1C3EE9BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3EE7EB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CallFetchRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE88, &qword_1C4037D38);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  Calls = type metadata accessor for GetCalls(0);
  MEMORY[0x1EEE9AC00](Calls - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3EEA530();
  sub_1C4031D00();
  if (!v2)
  {
    v12 = v15;
    sub_1C3EE9598(&qword_1EC08EDA8, type metadata accessor for CallFetchRequest, &protocol conformance descriptor for CallFetchRequest);
    v13 = v17;
    sub_1C4031AC0();
    (*(v16 + 8))(v8, v6);
    sub_1C3EE9B54(v13, v11, type metadata accessor for CallFetchRequest);
    sub_1C3EE9B54(v11, v12, type metadata accessor for GetCalls);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C3EE8128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CallFetchRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08ED98, &qword_1C4037718);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GetCallCount(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3EE9B00();
  sub_1C4031D00();
  if (!v2)
  {
    v12 = v15;
    sub_1C3EE9598(&qword_1EC08EDA8, type metadata accessor for CallFetchRequest, &protocol conformance descriptor for CallFetchRequest);
    v13 = v17;
    sub_1C4031AC0();
    (*(v16 + 8))(v8, v6);
    sub_1C3EE9B54(v13, v11, type metadata accessor for CallFetchRequest);
    sub_1C3EE9B54(v11, v12, type metadata accessor for GetCallCount);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C3EE83E0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C4031D10();
  v14[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08ED68, &qword_1C4037708);
  sub_1C3EE9A64(&qword_1EC08ED88, &qword_1EC08ED90, &protocol conformance descriptor for RecentCall, MEMORY[0x1E69E64F0]);
  sub_1C4031B70();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1C3EE864C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(unint64_t), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1C3EE61B4(v11);
  v14(v12);
  sub_1C4031D10();
  v15 = v11;
  sub_1C3EE979C();
  sub_1C4031B70();
  sub_1C3EE6238(v15);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C3EE87F0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v14 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1C4031D00();
  if (!v6)
  {
    v12 = v14;
    sub_1C3EE9748();
    sub_1C4031AC0();
    (*(v15 + 8))(v11, v9);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_1C3EE8968@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C3EE9844(a1, &qword_1EC08EDC0, &qword_1C4037728, sub_1C3EE9BBC, &type metadata for SaveCalls.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C3EE8A28(uint64_t a1)
{
  v2 = sub_1C3EEA530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3EE8A64(uint64_t a1)
{
  v2 = sub_1C3EEA530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3EE8AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7165526863746566 && a2 == 0xEC00000074736575)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C4031BF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C3EE8B88(uint64_t a1)
{
  v2 = sub_1C3EE9B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3EE8BC4(uint64_t a1)
{
  v2 = sub_1C3EE9B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3EE8C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1C4031D10();
  type metadata accessor for CallFetchRequest(0);
  sub_1C3EE9598(&qword_1EC08EDB8, type metadata accessor for CallFetchRequest, &protocol conformance descriptor for CallFetchRequest);
  sub_1C4031B70();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1C3EE8DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4364657461647075 && a2 == 0xEC000000736C6C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C4031BF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C3EE8E88(uint64_t a1)
{
  v2 = sub_1C3EE9A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3EE8EC4(uint64_t a1)
{
  v2 = sub_1C3EE9A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C3EE8F00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C3EE9844(a1, &qword_1EC08ED58, &qword_1C4037700, sub_1C3EE9A10, &type metadata for UpdateCalls.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C3EE8FBC(uint64_t a1)
{
  v2 = sub_1C3EE97F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3EE8FF8(uint64_t a1)
{
  v2 = sub_1C3EE97F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3EE9034()
{
  sub_1C4031C70();
  MEMORY[0x1C6933940](0);
  return sub_1C4031CC0();
}

uint64_t sub_1C3EE9078(uint64_t a1)
{
  sub_1C4031C70();
  MEMORY[0x1C6933940](0);
  return sub_1C4031CC0();
}

uint64_t sub_1C3EE90B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C4031BF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C3EE9148(uint64_t a1)
{
  v2 = sub_1C3EE96F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3EE9184(uint64_t a1)
{
  v2 = sub_1C3EE96F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C3EE9268(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3EE92C0()
{
  result = qword_1EC08ECC8;
  if (!qword_1EC08ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ECC8);
  }

  return result;
}

unint64_t sub_1C3EE9318()
{
  result = qword_1EC08ECD0;
  if (!qword_1EC08ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ECD0);
  }

  return result;
}

unint64_t sub_1C3EE9394()
{
  result = qword_1EC08ECD8;
  if (!qword_1EC08ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ECD8);
  }

  return result;
}

unint64_t sub_1C3EE93EC()
{
  result = qword_1EC08ECE0;
  if (!qword_1EC08ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ECE0);
  }

  return result;
}

unint64_t sub_1C3EE945C()
{
  result = qword_1EC08ECE8;
  if (!qword_1EC08ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ECE8);
  }

  return result;
}

unint64_t sub_1C3EE94B4()
{
  result = qword_1EC08ECF0;
  if (!qword_1EC08ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ECF0);
  }

  return result;
}

uint64_t sub_1C3EE9598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C3EE95E4()
{
  result = qword_1EC08ED08;
  if (!qword_1EC08ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ED08);
  }

  return result;
}

unint64_t sub_1C3EE963C()
{
  result = qword_1EC08ED10;
  if (!qword_1EC08ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ED10);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1C3EE96F4()
{
  result = qword_1EC08ED20;
  if (!qword_1EC08ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ED20);
  }

  return result;
}

unint64_t sub_1C3EE9748()
{
  result = qword_1EC08ED28;
  if (!qword_1EC08ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ED28);
  }

  return result;
}

unint64_t sub_1C3EE979C()
{
  result = qword_1EC08ED38;
  if (!qword_1EC08ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ED38);
  }

  return result;
}

unint64_t sub_1C3EE97F0()
{
  result = qword_1EC08ED48;
  if (!qword_1EC08ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ED48);
  }

  return result;
}

void *sub_1C3EE9844(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v12 = v11;
  sub_1C4031D00();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08ED68, &qword_1C4037708);
    sub_1C3EE9A64(&qword_1EC08ED70, &qword_1EC08ED78, &protocol conformance descriptor for RecentCall, MEMORY[0x1E69E6510]);
    sub_1C4031AC0();
    (*(v15 + 8))(v10, v8);
    v12 = v16;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

unint64_t sub_1C3EE9A10()
{
  result = qword_1EC08ED60;
  if (!qword_1EC08ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08ED60);
  }

  return result;
}

uint64_t sub_1C3EE9A64(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08ED68, &qword_1C4037708);
    sub_1C3EE9598(a2, type metadata accessor for RecentCall, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3EE9B00()
{
  result = qword_1EC08EDA0;
  if (!qword_1EC08EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EDA0);
  }

  return result;
}

uint64_t sub_1C3EE9B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C3EE9BBC()
{
  result = qword_1EC08EDC8;
  if (!qword_1EC08EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EDC8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallFetchRequest(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallFetchRequest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C3EE9D98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3EE9DD0(uint64_t a1)
{
  result = type metadata accessor for CallFetchRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C3EE9E40()
{
  result = qword_1EC08EDE8;
  if (!qword_1EC08EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EDE8);
  }

  return result;
}

unint64_t sub_1C3EE9E98()
{
  result = qword_1EC08EDF0;
  if (!qword_1EC08EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EDF0);
  }

  return result;
}

unint64_t sub_1C3EE9EF0()
{
  result = qword_1EC08EDF8;
  if (!qword_1EC08EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EDF8);
  }

  return result;
}

unint64_t sub_1C3EE9F48()
{
  result = qword_1EC08EE00;
  if (!qword_1EC08EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE00);
  }

  return result;
}

unint64_t sub_1C3EE9FA0()
{
  result = qword_1EC08EE08;
  if (!qword_1EC08EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE08);
  }

  return result;
}

uint64_t sub_1C3EEA0D4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EE28, &qword_1C403D780);
    sub_1C3EE9598(a2, type metadata accessor for RecentCall, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3EEA1C4()
{
  result = qword_1EC08EE38;
  if (!qword_1EC08EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE38);
  }

  return result;
}

unint64_t sub_1C3EEA21C()
{
  result = qword_1EC08EE40;
  if (!qword_1EC08EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE40);
  }

  return result;
}

unint64_t sub_1C3EEA274()
{
  result = qword_1EC08EE48;
  if (!qword_1EC08EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE48);
  }

  return result;
}

unint64_t sub_1C3EEA2CC()
{
  result = qword_1EC08EE50;
  if (!qword_1EC08EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE50);
  }

  return result;
}

unint64_t sub_1C3EEA324()
{
  result = qword_1EC08EE58;
  if (!qword_1EC08EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE58);
  }

  return result;
}

unint64_t sub_1C3EEA37C()
{
  result = qword_1EC08EE60;
  if (!qword_1EC08EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE60);
  }

  return result;
}

unint64_t sub_1C3EEA3D4()
{
  result = qword_1EC08EE68;
  if (!qword_1EC08EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE68);
  }

  return result;
}

unint64_t sub_1C3EEA42C()
{
  result = qword_1EC08EE70;
  if (!qword_1EC08EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE70);
  }

  return result;
}

unint64_t sub_1C3EEA484()
{
  result = qword_1EC08EE78;
  if (!qword_1EC08EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE78);
  }

  return result;
}

unint64_t sub_1C3EEA4DC()
{
  result = qword_1EC08EE80;
  if (!qword_1EC08EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE80);
  }

  return result;
}

unint64_t sub_1C3EEA530()
{
  result = qword_1EC08EE90;
  if (!qword_1EC08EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EE90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceProvider.ThirdPartyCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ServiceProvider.ThirdPartyCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1C3EEA664()
{
  result = qword_1EC08EEA0;
  if (!qword_1EC08EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EEA0);
  }

  return result;
}

unint64_t sub_1C3EEA6BC()
{
  result = qword_1EC08EEA8;
  if (!qword_1EC08EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EEA8);
  }

  return result;
}

unint64_t sub_1C3EEA714()
{
  result = qword_1EC08EEB0;
  if (!qword_1EC08EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EEB0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C3EEA7A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C3EEA7E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C3EEA83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4030D10();
  __swift_project_value_buffer(v8, qword_1EC0B0CB0);
  v9 = sub_1C4030CF0();
  v10 = sub_1C40315D0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C3E90000, v9, v10, "Starting callhistoryd", v11, 2u);
    MEMORY[0x1C6934650](v11, -1, -1);
  }

  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  sub_1C3EEB4F0();

  swift_unknownObjectRetain();
  sub_1C4030D80();

  type metadata accessor for GetCalls(0);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C3EEB544;
  *(v15 + 24) = v14;
  sub_1C3EEB5EC(&qword_1EC08EBE8, type metadata accessor for GetCalls, &unk_1C4037B40);

  swift_unknownObjectRetain();
  sub_1C4030D70();

  type metadata accessor for GetCallCount(0);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C3EEB598;
  *(v17 + 24) = v16;
  sub_1C3EEB5EC(&qword_1EC08EEC0, type metadata accessor for GetCallCount, &unk_1C4037610);

  swift_unknownObjectRetain();
  sub_1C4030D70();

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  sub_1C3EEB6F0();

  swift_unknownObjectRetain();
  sub_1C4030D80();

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1C4037EE0;
  *(v20 + 24) = v19;
  sub_1C3EE61E4();

  swift_unknownObjectRetain();
  sub_1C4030D60();

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  sub_1C3EEBAC0();

  swift_unknownObjectRetain();
  sub_1C4030D80();

  return sub_1C4030D90();
}

uint64_t sub_1C3EEADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C3EE7A84;

  return (sub_1C3EEC1C0)(a1, a3, a4, a5);
}

uint64_t sub_1C3EEAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C3EE7A84;

  return (sub_1C3EEC8B0)(a1, a3, a4, a5);
}

uint64_t sub_1C3EEAF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C3EEB060;

  return (sub_1C3EECC30)(a1, a3, a4, a5);
}

uint64_t sub_1C3EEB060(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1C3EEB160(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1C3EEB258;

  return v7(a2);
}

uint64_t sub_1C3EEB258(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1C3EEB368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C3EE4204;

  return (sub_1C3EECFBC)(a1, a3, a4, a5);
}

uint64_t sub_1C3EEB434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C3EE7A84;

  return sub_1C3EEADFC(a1, v4, v5, v7, v6);
}

unint64_t sub_1C3EEB4F0()
{
  result = qword_1EC08EEB8;
  if (!qword_1EC08EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EEB8);
  }

  return result;
}

uint64_t sub_1C3EEB564@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C3EEB5B8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C3EEB5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C3EEB634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C3EE7A84;

  return sub_1C3EEAEC8(a1, v4, v5, v7, v6);
}

unint64_t sub_1C3EEB6F0()
{
  result = qword_1EC08EEC8;
  if (!qword_1EC08EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EEC8);
  }

  return result;
}

uint64_t sub_1C3EEB744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C3EEB800;

  return sub_1C3EEAF94(a1, v4, v5, v7, v6);
}

uint64_t sub_1C3EEB800(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C3EEB8FC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE7A84;

  return sub_1C3EEB160(a1, a2, v6);
}

uint64_t objectdestroyTm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C3EEBA04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C3EE4204;

  return sub_1C3EEB368(a1, v4, v5, v7, v6);
}

unint64_t sub_1C3EEBAC0()
{
  result = qword_1EC08EED0;
  if (!qword_1EC08EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EED0);
  }

  return result;
}

uint64_t sub_1C3EEBB14()
{
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4030D10();
  __swift_project_value_buffer(v0, qword_1EC0B0CB0);
  v1 = sub_1C4030CF0();
  v2 = sub_1C40315D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C3E90000, v1, v2, "Initialising callhistoryd", v3, 2u);
    MEMORY[0x1C6934650](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF10, &qword_1C4037F60);
  swift_allocObject();
  return sub_1C4030D40();
}

uint64_t sub_1C3EEBCEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF18, &qword_1C4037F68);
  sub_1C4030D50();
  if (!v30)
  {
    sub_1C3EED388(v29, &qword_1EC08EF20, &unk_1C4037F70);
    if (qword_1EC08EB68 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4030D10();
    __swift_project_value_buffer(v6, qword_1EC0B0CB0);
    v7 = sub_1C4030CF0();
    v8 = sub_1C40315D0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C3E90000, v7, v8, "Rejecting connection from unentitled process", v9, 2u);
      MEMORY[0x1C6934650](v9, -1, -1);
    }

    return 0;
  }

  sub_1C3EED3E8(v29, v31);
  sub_1C3EED3F8(v31, v29);
  if (!swift_dynamicCast())
  {
    if (qword_1EC08EB68 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4030D10();
    __swift_project_value_buffer(v10, qword_1EC0B0CB0);
    sub_1C3EED3F8(v31, v29);
    v11 = sub_1C4030CF0();
    v12 = sub_1C40315D0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = v30;
      v16 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v17 = sub_1C40316A0();
      v27 = &v27;
      v18 = *(v17 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v27 - v19;
      v21 = *(v15 - 8);
      (*(v21 + 16))(&v27 - v19, v16, v15);
      (*(v21 + 56))(v20, 0, 1, v15);
      v22 = sub_1C402CF58(v20, v15);
      v24 = v23;
      (*(v18 + 8))(v20, v17);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v25 = sub_1C3EEFC68(v22, v24, &v28);

      *(v13 + 4) = v25;
      _os_log_impl(&dword_1C3E90000, v11, v12, "Rejecting connection from process with invalid entitlement: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6934650](v14, -1, -1);
      MEMORY[0x1C6934650](v13, -1, -1);

      v26 = v31;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v31);
      v26 = v29;
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    return 0;
  }

  v0 = v28;
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CB0);
  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, v2, v3, "Accepting incoming XPC connection request", v4, 2u);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v0;
}

uint64_t sub_1C3EEC1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C3EEC1E4, 0, 0);
}

uint64_t sub_1C3EEC1E4()
{
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CB0);
  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, v2, v3, "Handling incoming SaveCalls message", v4, 2u);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  v11 = v0[5];

  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF08, &qword_1C4037F58);
  sub_1C4030D30();
  v6 = v0[2];
  v0[6] = v6;
  v10 = (*(v11 + 16) + **(v11 + 16));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1C3EEC3F0;
  v8 = v0[5];

  return v10(v6, ObjectType, v8);
}

uint64_t sub_1C3EEC3F0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3EEC540, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C3EEC558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Calls = type metadata accessor for GetCalls(0);
  MEMORY[0x1EEE9AC00](Calls - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4030D10();
  __swift_project_value_buffer(v7, qword_1EC0B0CB0);
  v8 = sub_1C4030CF0();
  v9 = sub_1C40315D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C3E90000, v8, v9, "Handling incoming GetCalls message", v10, 2u);
    MEMORY[0x1C6934650](v10, -1, -1);
  }

  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF00, &qword_1C4037F48);
  sub_1C4030D30();
  v12 = (*(a3 + 24))(v6, ObjectType, a3);
  sub_1C3EED32C(v6);
  return v12;
}

uint64_t sub_1C3EEC704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for GetCallCount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4030D10();
  __swift_project_value_buffer(v7, qword_1EC0B0CB0);
  v8 = sub_1C4030CF0();
  v9 = sub_1C40315D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C3E90000, v8, v9, "Handling incoming GetCallCount message", v10, 2u);
    MEMORY[0x1C6934650](v10, -1, -1);
  }

  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EEF8, &qword_1C4037F40);
  sub_1C4030D30();
  v12 = (*(a3 + 40))(v6, ObjectType, a3);
  sub_1C3EED32C(v6);
  return v12;
}

uint64_t sub_1C3EEC8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C3EEC8D4, 0, 0);
}

uint64_t sub_1C3EEC8D4()
{
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CB0);
  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, v2, v3, "Handling incoming UpdateCalls message", v4, 2u);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  v11 = v0[5];

  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EEF0, &qword_1C4037F38);
  sub_1C4030D30();
  v6 = v0[2];
  v0[6] = v6;
  v10 = (*(v11 + 48) + **(v11 + 48));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1C3EECAE0;
  v8 = v0[5];

  return v10(v6, ObjectType, v8);
}

uint64_t sub_1C3EECAE0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3EED454, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C3EECC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C3EECC54, 0, 0);
}

uint64_t sub_1C3EECC54()
{
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CB0);
  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, v2, v3, "Handling incoming DeleteCalls message", v4, 2u);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  v10 = v0[6];

  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EEE8, &qword_1C4037F28);
  sub_1C4030D30();
  v0[3] = v0[2];
  v9 = (*(v10 + 56) + **(v10 + 56));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1C3EECE64;
  v7 = v0[6];

  return v9(v0 + 3, ObjectType, v7);
}

uint64_t sub_1C3EECE64(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  if (v1)
  {
    sub_1C3EE6238(v4[3]);

    return MEMORY[0x1EEE6DFA0](sub_1C3EEC540, 0, 0);
  }

  else
  {
    sub_1C3EE6238(v4[3]);
    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_1C3EECFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C3EECFE0, 0, 0);
}

uint64_t sub_1C3EECFE0()
{
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CB0);
  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, v2, v3, "Handling incoming MarkCallsAsRead message", v4, 2u);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  v10 = v0[6];

  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EEE0, &qword_1C4037F18);
  sub_1C4030D30();
  v0[3] = v0[2];
  v9 = (*(v10 + 64) + **(v10 + 64));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1C3EED1F0;
  v7 = v0[6];

  return v9(v0 + 3, ObjectType, v7);
}

uint64_t sub_1C3EED1F0()
{
  v2 = *v1;
  v2[8] = v0;

  sub_1C3EE6238(v2[3]);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3EEC540, 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1C3EED32C(uint64_t a1)
{
  v2 = type metadata accessor for CallFetchRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3EED388(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_1C3EED3E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C3EED3F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C3EED490@<X0>(uint64_t a1@<X0>, _UNKNOWN **a2@<X1>, _UNKNOWN **a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    type metadata accessor for LegacyManager();
    v7 = swift_allocObject();
    *(v7 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v7 + 16) = [objc_allocWithZone(CHManager) init];
    a3 = &off_1F4388B20;
    a2 = &off_1F4388B30;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1C3EEBB14();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_allocWithZone(CHFeatureFlags) init];
  v15 = [v14 isDefaultDialerEnabled];

  if (v15)
  {
    type metadata accessor for ConversationHistoryServer();
    swift_allocObject();
    v16 = ConversationHistoryServer.init(dataSource:)(v7, a2, a3);
    result = swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v16 = 0;
  }

  *a4 = v18;
  a4[1] = v9;
  a4[2] = v11;
  a4[3] = v13;
  a4[4] = v16;
  return result;
}

double CallHistoryDaemon.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1C3EED490(0, 0, 0, v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

Swift::Void __swiftcall CallHistoryDaemon.start()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (qword_1EC08EB68 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4030D10();
  __swift_project_value_buffer(v6, qword_1EC0B0CB0);
  v7 = sub_1C4030CF0();
  v8 = sub_1C40315D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C3E90000, v7, v8, "Starting callhistoryd", v9, 2u);
    MEMORY[0x1C6934650](v9, -1, -1);
  }

  sub_1C3EEA83C(v1, v2, v3, v4);
  if (v5)
  {
    swift_beginAccess();
    sub_1C3EED7E8(v5 + 16, v10);
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1(v10, v11);
      sub_1C4030B80();
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C3EED7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF28, &qword_1C4037F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EED858(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C3EED8B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C3EED900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ConversationHistoryServer.__allocating_init(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConversationHistoryServer.init(dataSource:)(a1, a2, a3);
  return v6;
}

uint64_t ConversationHistoryServer.init(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17[-v9];
  *(v4 + 32) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  v11 = sub_1C40314B0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = v4;
  swift_unknownObjectRetain_n();

  sub_1C3EEDDDC(0, 0, v10, &unk_1C4038060, v12);

  v19 = type metadata accessor for ConversationHistoryServer();
  v20 = sub_1C3EF15C4(&qword_1EC08EF38, v13, type metadata accessor for ConversationHistoryServer, &protocol conformance descriptor for ConversationHistoryServer);
  v18[0] = v4;
  v14 = sub_1C4030B60();
  swift_allocObject();

  v15 = sub_1C4030B50();
  v19 = v14;
  v20 = MEMORY[0x1E696ED78];
  swift_unknownObjectRelease();
  v18[0] = v15;
  swift_beginAccess();
  sub_1C3EEE100(v18, v4 + 16);
  swift_endAccess();
  return v4;
}

uint64_t sub_1C3EEDBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C3EEDBE8, 0, 0);
}

uint64_t sub_1C3EEDBE8()
{
  v1 = v0[3];
  v0[5] = swift_getObjectType();
  v3 = *(v1 + 72);
  v2 = v1 + 72;
  v0[6] = v3;
  if (qword_1EC08EAB0 != -1)
  {
    swift_once();
  }

  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0x65D2000000000000;
  v4 = qword_1EC08F150;

  return MEMORY[0x1EEE6DFA0](sub_1C3EEDC98, v4, 0);
}

uint64_t sub_1C3EEDC98()
{
  (*(v0 + 48))(*(v0 + 32), &protocol witness table for ConversationHistoryServer, *(v0 + 40), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C3EEDD08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C3EE4204;

  return sub_1C3EEDBC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C3EEDDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C3EF1A60(a3, v25 - v10, &qword_1EC08EF30, &qword_1C4038050);
  v12 = sub_1C40314B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C3EED388(v11, &qword_1EC08EF30, &qword_1C4038050);
  }

  else
  {
    sub_1C40314A0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C4031450();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C4031240() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C3EED388(a3, &qword_1EC08EF30, &qword_1C4038050);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C3EED388(a3, &qword_1EC08EF30, &qword_1C4038050);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C3EEE100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF28, &qword_1C4037F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EEE17C()
{
  v1[2] = v0;
  v2 = sub_1C40309F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for RecentCall(0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for CallFetchRequest(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v1[12] = swift_task_alloc();
  v4 = sub_1C4030980();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EEE380, 0, 0);
}

uint64_t sub_1C3EEE380()
{
  v116 = v0;
  v1 = v0;
  v2 = v0[14];
  v3 = v1[12];
  v4 = v1[13];
  sub_1C4030AF0();
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    sub_1C3EED388(v1[12], &qword_1EC08EF40, &unk_1C403ED30);
    if (qword_1EC08EB90 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_3;
  }

  (*(v1[14] + 32))(v1[17], v1[12], v1[13]);
  if (qword_1EC08EB90 != -1)
  {
    swift_once();
  }

  v11 = v1[16];
  v12 = v1[17];
  v13 = v1[13];
  v14 = v1[14];
  v15 = sub_1C4030D10();
  __swift_project_value_buffer(v15, qword_1EC0B0D28);
  v104 = *(v14 + 16);
  v104(v11, v12, v13);
  v16 = sub_1C4030CF0();
  v17 = sub_1C40315B0();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v1[16];
  v21 = v1[13];
  v20 = v1[14];
  if (v18)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v115[0] = v23;
    *v22 = 136315138;
    sub_1C3EF15C4(&qword_1EC08EF60, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v24 = sub_1C4031BB0();
    v26 = v25;
    v96 = *(v20 + 8);
    v96(v19, v21);
    v27 = sub_1C3EEFC68(v24, v26, v115);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1C3E90000, v16, v17, "The default app was set at %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6934650](v23, -1, -1);
    MEMORY[0x1C6934650](v22, -1, -1);
  }

  else
  {

    v96 = *(v20 + 8);
    v96(v19, v21);
  }

  v28 = v1[17];
  v29 = v1[13];
  v31 = v1[9];
  v30 = v1[10];
  v32 = swift_allocBox();
  v104(v33, v28, v29);
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_1F4387920;
  v35 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF50, &qword_1C4038080);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C4038040;
  *(v36 + 32) = v32 | 0x5000000000000000;
  *(v36 + 40) = v34 | 0x9000000000000000;
  *(v35 + 16) = v36;

  sub_1C40309E0();
  *(v30 + *(v31 + 20)) = v35 | 0xD000000000000000;
  v37 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v38 = [v37 bundleIdentifier];

  if (v38)
  {
    v39 = sub_1C40311C0();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = v1[10];
  v43 = v1[11];
  v44 = v1[2];
  v45 = (v42 + *(v1[9] + 24));
  *v45 = v39;
  v45[1] = v41;
  sub_1C3EF19F8(v42, v43, type metadata accessor for CallFetchRequest);
  v46 = *(v44 + 64);
  ObjectType = swift_getObjectType();
  v48 = (*(v46 + 24))(v43, ObjectType, v46);
  v51 = v48;
  v52 = *(v48 + 16);
  if (!v52)
  {
    v92 = v1[17];
    v93 = v1[13];
    v94 = v1[11];

    sub_1C3EF1564(v94, type metadata accessor for CallFetchRequest);
    v96(v92, v93);
    v55 = MEMORY[0x1E69E7CC0];
LABEL_41:

    v95 = v1[1];

    return v95(v55);
  }

  v53 = v1[7];
  v109 = v1[6];
  v54 = v1[4];
  v114 = MEMORY[0x1E69E7CC0];
  sub_1C3EF0304(0, v52, 0);
  v55 = v114;
  v102 = v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v103 = v53;
  v101 = (v54 + 16);
  v56 = 0;
  v98 = sub_1C4030B30();
  v97 = *(v98 - 8);
  v105 = v1;
  v99 = v52;
  v100 = v51;
  while (1)
  {
    v108 = swift_task_alloc();
    if (v56 >= *(v51 + 16))
    {
      break;
    }

    v106 = v56;
    v107 = v55;
    v57 = v1[8];
    v58 = v1[5];
    v59 = v1[3];
    sub_1C3EF033C(v102 + *(v103 + 72) * v56, v57);
    (*v101)(v58, v57, v59);
    v60 = *(v57 + v109[37]);
    v61 = *(v60 + 16);
    if (v61)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF58, qword_1C4038088);
      v62 = swift_allocObject();
      v63 = _swift_stdlib_malloc_size(v62);
      v62[2] = v61;
      v62[3] = 2 * ((v63 - 32) / 40);
      v64 = sub_1C3EF13DC(v115, (v62 + 4), v61, v60);
      v65 = v115[0];
      v1 = v115[4];

      sub_1C3EE75E4(v65);
      if (v64 != v61)
      {
        goto LABEL_45;
      }

      v1 = v105;
      v66 = v62[2];
      if (v66)
      {
LABEL_24:
        v115[0] = MEMORY[0x1E69E7CC0];
        sub_1C3EF03A0(0, v66, 0);
        v113 = v115[0];
        v67 = sub_1C4030BB0();
        v110 = *(v67 - 8);
        v68 = (v110 + 32);
        v69 = v62 + 8;
        do
        {
          v112 = v66;
          v111 = swift_task_alloc();
          v70 = swift_task_alloc();
          v71 = v67;
          v72 = *(sub_1C4030B90() - 8);
          swift_task_alloc();
          (*(v72 + 104))();
          v67 = v71;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_1C4030BA0();

          v73 = *v68;
          (*v68)(v111, v70, v71);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          v115[0] = v113;
          v75 = *(v113 + 16);
          v74 = *(v113 + 24);
          v76 = v113;
          if (v75 >= v74 >> 1)
          {
            sub_1C3EF03A0((v74 > 1), v75 + 1, 1);
            v76 = v115[0];
          }

          v113 = v76;
          v69 += 5;
          *(v76 + 16) = v75 + 1;
          v73(v76 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v75, v111, v67);

          v66 = v112 - 1;
        }

        while (v112 != 1);

        v1 = v105;
        goto LABEL_31;
      }
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC0];
      v66 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v66)
      {
        goto LABEL_24;
      }
    }

LABEL_31:
    v77 = v1[8];
    v104(v1[15], v77 + v109[14], v1[13]);
    v78 = v109[13];
    v79 = *(sub_1C4030B10() - 8);
    swift_task_alloc();
    v80 = v1[8];
    (*(v79 + 104))();
    v81 = *(v77 + v78);
    v82 = sub_1C4030B20();
    v83 = *(v82 - 8);
    v84 = swift_task_alloc();
    v85 = v81 == 5 || v81 == 2;
    v86 = MEMORY[0x1E696ED60];
    if (v85)
    {
      v86 = MEMORY[0x1E696ED68];
    }

    (*(v83 + 104))(v84, *v86, v82);
    sub_1C4030B00();
    sub_1C3EF1564(v80, type metadata accessor for RecentCall);

    v55 = v107;
    v88 = *(v107 + 16);
    v87 = *(v107 + 24);
    if (v88 >= v87 >> 1)
    {
      sub_1C3EF0304((v87 > 1), v88 + 1, 1);
      v55 = v107;
    }

    v56 = v106 + 1;
    *(v55 + 16) = v88 + 1;
    (*(v97 + 32))(v55 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v88, v108, v98);

    v51 = v100;
    if (v106 + 1 == v99)
    {
      v89 = v1[17];
      v90 = v1[13];
      v91 = v1[11];

      sub_1C3EF1564(v91, type metadata accessor for CallFetchRequest);
      v96(v89, v90);
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_3:
  v5 = sub_1C4030D10();
  __swift_project_value_buffer(v5, qword_1EC0B0D28);
  v6 = sub_1C4030CF0();
  v7 = sub_1C40315C0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C3E90000, v6, v7, "No default app set date exists", v8, 2u);
    MEMORY[0x1C6934650](v8, -1, -1);
  }

  v9 = sub_1C4030B40();
  sub_1C3EEF9A8();
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, *MEMORY[0x1E696ED70], v9);
  swift_willThrow();

  v49 = v1[1];

  return v49();
}

uint64_t sub_1C3EEF1D8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C3EEF1F8, 0, 0);
}

uint64_t sub_1C3EEF1F8()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  v0[5] = v2;
  v3 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v0[2] = v2;
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1C3EEF348;
  v7 = v0[3];

  return v9(v7, ObjectType, v3);
}

uint64_t sub_1C3EEF348()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3EE4C60, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t ConversationHistoryServer.deinit()
{
  sub_1C3EED388(v0 + 16, &qword_1EC08EF28, &qword_1C4037F80);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConversationHistoryServer.__deallocating_deinit()
{
  sub_1C3EED388(v0 + 16, &qword_1EC08EF28, &qword_1C4037F80);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1C3EEF520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C3EEB060;

  return sub_1C3EEE17C();
}

uint64_t sub_1C3EEF5B0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EEF5D4, 0, 0);
}

uint64_t sub_1C3EEF5D4()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  v0[5] = v2;
  v3 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v0[2] = v2;
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1C3EEF724;
  v7 = v0[3];

  return v9(v7, ObjectType, v3);
}

uint64_t sub_1C3EEF724()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3EF1B80, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C3EEF880(void (*a1)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = sub_1C3EF1A60(v1 + 16, v6, &qword_1EC08EF28, &qword_1C4037F80);
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    a1(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3EEF918()
{
  swift_beginAccess();
  result = sub_1C3EF1A60(v0 + 16, v2, &qword_1EC08EF28, &qword_1C4037F80);
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_1C4030B70();
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C3EEF9A8()
{
  result = qword_1EC08EF48;
  if (!qword_1EC08EF48)
  {
    sub_1C4030B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08EF48);
  }

  return result;
}

uint64_t sub_1C3EEF9F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C3EEFAEC;

  return v6(a1);
}

uint64_t sub_1C3EEFAEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C3EEFC0C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1C3EEFC68(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1C3EEFC68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C3EEFD34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C3EED3F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1C3EEFD34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C3EEFE40(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C4031910();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1C3EEFE40(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C3EEFE8C(a1, a2);
  sub_1C3EEFFBC(&unk_1F43870F0);
  return v3;
}

void *sub_1C3EEFE8C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C3F46524(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C4031910();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C40312C0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C3F46524(v10, 0);
        result = sub_1C40318A0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C3EEFFBC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C3EF00A8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C3EF00A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F008, &qword_1C40381F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1C3EF019C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1C3EF01AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0640(a1, a2, a3, *v3, &qword_1EC08EFE8, &qword_1C40381D8, &qword_1EC08EFF0, &qword_1C40381E0);
  *v3 = result;
  return result;
}

void *sub_1C3EF01EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0640(a1, a2, a3, *v3, &qword_1EC08EFF8, &qword_1C40381E8, &qword_1EC08F000, &qword_1C40381F0);
  *v3 = result;
  return result;
}

void *sub_1C3EF022C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0934(a1, a2, a3, *v3, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
  *v3 = result;
  return result;
}

char *sub_1C3EF0270(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C3EF0290(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EF80, &qword_1C4038170);
  *v3 = result;
  return result;
}

void *sub_1C3EF02C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0934(a1, a2, a3, *v3, &qword_1EC08EF68, &unk_1C4038150, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1C3EF0304(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0934(a1, a2, a3, *v3, &qword_1EC08F018, &qword_1C4038208, MEMORY[0x1EEE790D0]);
  *v3 = result;
  return result;
}

uint64_t sub_1C3EF033C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCall(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1C3EF03A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0934(a1, a2, a3, *v3, &qword_1EC08F010, &qword_1C4038200, MEMORY[0x1EEE79110]);
  *v3 = result;
  return result;
}

char *sub_1C3EF03D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C3EF03F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C3EF0418(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0D4C(a1, a2, a3, *v3, &qword_1EC08EFE0, &qword_1C40381D0);
  *v3 = result;
  return result;
}

char *sub_1C3EF0448(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0D4C(a1, a2, a3, *v3, &qword_1EC08EFD8, &qword_1C40381C8);
  *v3 = result;
  return result;
}

char *sub_1C3EF0478(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EFD0, &qword_1C40381C0);
  *v3 = result;
  return result;
}

char *sub_1C3EF04A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EFC8, &qword_1C40381B8);
  *v3 = result;
  return result;
}

char *sub_1C3EF04D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EFC0, &qword_1C40381B0);
  *v3 = result;
  return result;
}

char *sub_1C3EF0508(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EFB8, &qword_1C40381A8);
  *v3 = result;
  return result;
}

char *sub_1C3EF0538(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EFB0, &qword_1C40381A0);
  *v3 = result;
  return result;
}

char *sub_1C3EF0568(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EF98, &qword_1C4038188);
  *v3 = result;
  return result;
}

char *sub_1C3EF0598(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EFA0, &qword_1C4038190);
  *v3 = result;
  return result;
}

char *sub_1C3EF05C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF0E48(a1, a2, a3, *v3, &qword_1EC08EFA8, &qword_1C4038198);
  *v3 = result;
  return result;
}

char *sub_1C3EF05F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C3EF1088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C3EF0640(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1C3EF0828(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF88, &qword_1C4038178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C3EF0934(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_1C3EF0B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF90, &qword_1C4038180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C3EF0C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF58, qword_1C4038088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C3EF0D4C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1C3EF0E48(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1C3EF0F44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF70, &qword_1C4039EA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF78, &unk_1C4038160);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C3EF1088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F020, &qword_1C4038228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1C3EF118C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RecentCall(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1C3EF033C(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32);
      v24 = v23;
      v25 = v31;
      sub_1C3EF19F8(v24, v31, type metadata accessor for RecentCall);
      sub_1C3EF19F8(v25, a2, type metadata accessor for RecentCall);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1C3EF13DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      v22 = *(v18 + 24);
      v21 = *(v18 + 32);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v22;
      *(v11 + 32) = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C3EF1564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3EF15C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t dispatch thunk of ConversationHistoryServer.recentConversations(matching:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C3EEB800;

  return v6(a1);
}

uint64_t dispatch thunk of ConversationHistoryServer.markAsRead(matching:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C3EE4204;

  return v6(a1);
}

void *sub_1C3EF189C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      LOWORD(v17) = *(*(a4 + 56) + 2 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v17;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C3EF19F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3EF1A60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3EF1AC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3EE7A84;

  return sub_1C3EEF9F4(a1, v4);
}

uint64_t CallHistoryDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1C3EF1BC0(0);
  return v0;
}

uint64_t sub_1C3EF1BC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1C4030910();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    sub_1C402BF1C(v12);
    sub_1C402C1A0(v9);
    v14 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v15 = sub_1C4031190();
    v16 = [v14 initWithSuiteName_];

    type metadata accessor for ContainerProvider(0);
    swift_allocObject();
    v13 = sub_1C3EF8F08(v12, v9, v16);
  }

  *(v2 + 16) = 0;
  *(v2 + 24) = v13;

  v17 = [objc_allocWithZone(CHFeatureFlags) init];
  if ([v17 isDefaultDialerEnabled])
  {
    v18 = sub_1C40314B0();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;

    sub_1C3EEDDDC(0, 0, v6, &unk_1C4038460, v19);
  }

  else
  {
  }

  return v2;
}

uint64_t CallHistoryDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CallHistoryDataSource.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1C3EF1FC0;
}

uint64_t CallHistoryDataSource.addDelegate(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  return swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallHistoryDataSource.setupIfNeeded()()
{
  v2 = v0;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4030D10();
  __swift_project_value_buffer(v3, qword_1EC0B0CE0);
  v4 = sub_1C4030CF0();
  v5 = sub_1C40315D0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C3E90000, v4, v5, "Loading call history database", v6, 2u);
    MEMORY[0x1C6934650](v6, -1, -1);
  }

  os_unfair_lock_lock(v2 + 4);

  os_unfair_lock_unlock(v2 + 4);
  sub_1C3EF8778();

  if (!v1)
  {

    v7 = sub_1C4030CF0();
    v8 = sub_1C40315D0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      sub_1C4030EF0();

      v11 = sub_1C4031230();
      v13 = sub_1C3EEFC68(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C3E90000, v7, v8, "Finished loading container %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1C6934650](v10, -1, -1);
      MEMORY[0x1C6934650](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C3EF225C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F138, &qword_1C4038468);
  v4[7] = swift_task_alloc();
  v5 = sub_1C4031630();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EF2354, 0, 0);
}

uint64_t sub_1C3EF2354()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1C4030EA0();
  v2 = sub_1C4030E90();
  v0[11] = sub_1C4031640();

  sub_1C4031620();
  swift_beginAccess();
  v3 = sub_1C3EF7D70(&qword_1EC08F140, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1C3EF24BC;
  v5 = v0[7];
  v6 = v0[8];

  return MEMORY[0x1EEE6D8C8](v5, v6, v3);
}

uint64_t sub_1C3EF24BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1C3EF2738;
  }

  else
  {
    v2 = sub_1C3EF25D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C3EF25EC()
{
  v1 = v0[7];
  v2 = sub_1C4030730();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_1EC08EAB0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EC08F150;

    return MEMORY[0x1EEE6DFA0](sub_1C3EF27C4, v5, 0);
  }
}

uint64_t sub_1C3EF2738()
{
  *(v0 + 40) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1C3EF27C4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(*(v0 + 48) + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1C3EF2864, 0, 0);
}

uint64_t sub_1C3EF2864()
{
  sub_1C3EF7DB8(v0[7]);
  v1 = sub_1C3EF7D70(&qword_1EC08F140, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1C3EF24BC;
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t CallHistoryDataSource.deinit()
{

  sub_1C3EF75F4(v0 + 32);
  return v0;
}

uint64_t CallHistoryDataSource.__deallocating_deinit()
{

  sub_1C3EF75F4(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C3EF29C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CallHistoryDataSource.saveCalls(_:)(a1);
}

uint64_t CallHistoryDataSource.saveCalls(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RecentCall(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EF2B18, 0, 0);
}

uint64_t sub_1C3EF2B18()
{
  v23 = v0;
  if (qword_1EC08EB78 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CE0);

  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1C3EEFC68(0x6C6C614365766173, 0xED0000293A5F2873, v22);
    *(v4 + 12) = 2080;
    sub_1C3EF7D70(&qword_1EC08F030, type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
    v6 = sub_1C4031510();
    v8 = sub_1C3EEFC68(v6, v7, v22);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1C3E90000, v2, v3, "%{public}s calls: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v5, -1, -1);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  v9 = v0[3];
  os_unfair_lock_lock(v9 + 4);

  os_unfair_lock_unlock(v9 + 4);
  sub_1C3EF8778();

  v21 = v0[5];
  v10 = v0[2];
  sub_1C4030EA0();
  swift_allocObject();

  sub_1C4030EB0();
  v11 = -1;
  v12 = -1 << *(v10 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v10 + 56);
  v14 = (63 - v12) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = v0[6];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_1C3EF761C(*(v10 + 48) + *(v21 + 72) * (v18 | (v16 << 6)), v17, type metadata accessor for RecentCall);
      type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      swift_allocObject();
      sub_1C4015250(v17);
      sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
      sub_1C4030E80();

      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 56 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  sub_1C4030E50();

  v20 = v0[1];

  return v20();
}

void *CallHistoryDataSource.getCalls(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentCall(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v57 = type metadata accessor for CallFetchRequest(0);
  MEMORY[0x1EEE9AC00](v57);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4030D10();
  __swift_project_value_buffer(v16, qword_1EC0B0CE0);
  sub_1C3EF761C(a1, v15, type metadata accessor for CallFetchRequest);
  v17 = sub_1C4030CF0();
  v18 = sub_1C40315D0();
  v19 = os_log_type_enabled(v17, v18);
  v60 = v13;
  v58 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53 = v1;
    v22 = v21;
    v63 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1C3EEFC68(0x736C6C6143746567, 0xEF293A6874697728, &v63);
    *(v20 + 12) = 2080;
    v23 = CallFetchRequest.description.getter();
    v24 = v5;
    v25 = v11;
    v27 = v26;
    sub_1C3EF1564(v15, type metadata accessor for CallFetchRequest);
    v28 = sub_1C3EEFC68(v23, v27, &v63);
    v11 = v25;
    v5 = v24;

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1C3E90000, v17, v18, "%{public}s fetchRequest: %s", v20, 0x16u);
    swift_arrayDestroy();
    v29 = v22;
    v2 = v53;
    MEMORY[0x1C6934650](v29, -1, -1);
    MEMORY[0x1C6934650](v20, -1, -1);
  }

  else
  {

    sub_1C3EF1564(v15, type metadata accessor for CallFetchRequest);
  }

  v30 = v61;
  os_unfair_lock_lock(v61 + 4);
  v31 = *&v30[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v30 + 4);
  v32 = sub_1C3EF8778();

  if (v2)
  {
    return v31;
  }

  v61 = v11;
  sub_1C4030EA0();
  swift_allocObject();

  v33 = sub_1C4030EB0();
  v63 = *(v58 + *(v57 + 20));
  v34 = v59;
  sub_1C3F1A3AC(v59);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
  v36 = v33;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1C4030F00();
  v38 = sub_1C4030E60();
  v40 = v38;
  v59 = v32;
  v41 = v61;
  if (!(v38 >> 62))
  {
    v42 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_11;
    }

LABEL_24:

    (*(v56 + 8))(v60, v41);
    return MEMORY[0x1E69E7CC0];
  }

  v42 = sub_1C40317E0();
  if (!v42)
  {
    goto LABEL_24;
  }

LABEL_11:
  v58 = v36;
  v62 = v37;
  result = sub_1C3EF022C(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v31 = v62;
    v43 = v55;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v44 = 0;
      v45 = v54;
      do
      {
        v46 = MEMORY[0x1C6933590](v44, v40);
        sub_1C3F32D18(v46, v45);
        v62 = v31;
        v48 = *(v31 + 16);
        v47 = *(v31 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1C3EF022C((v47 > 1), v48 + 1, 1);
          v31 = v62;
        }

        ++v44;
        *(v31 + 16) = v48 + 1;
        sub_1C3EF7684(v45, v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v48);
      }

      while (v42 != v44);
    }

    else
    {
      v49 = v40 + 32;
      do
      {

        sub_1C3F32D18(v50, v43);
        v62 = v31;
        v52 = *(v31 + 16);
        v51 = *(v31 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1C3EF022C((v51 > 1), v52 + 1, 1);
          v31 = v62;
        }

        *(v31 + 16) = v52 + 1;
        sub_1C3EF7684(v43, v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v52);
        v49 += 8;
        --v42;
      }

      while (v42);
    }

    (*(v56 + 8))(v60, v61);

    return v31;
  }

  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for RecentCall(0);
  v68 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v56 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F048, &qword_1C4038260);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - v15;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4030D10();
  __swift_project_value_buffer(v17, qword_1EC0B0CE0);
  (*(v14 + 16))(v16, a1, v13);
  v18 = sub_1C4030CF0();
  v19 = sub_1C40315D0();
  v20 = os_log_type_enabled(v18, v19);
  v63 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v60 = v10;
    v22 = v21;
    v57 = swift_slowAlloc();
    v70 = v57;
    *v22 = 136446466;
    *(v22 + 4) = sub_1C3EEFC68(0x736C6C6143746567, 0xEF293A6874697728, &v70);
    *(v22 + 12) = 2080;
    sub_1C3EF7BF0(&qword_1EC08F050, &qword_1EC08F048, &qword_1C4038260, MEMORY[0x1E6969CB0]);
    v23 = sub_1C4031BB0();
    v24 = v19;
    v25 = v12;
    v27 = v26;
    (*(v14 + 8))(v16, v13);
    v28 = sub_1C3EEFC68(v23, v27, &v70);
    v29 = v25;

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1C3E90000, v18, v24, "%{public}s fetching calls with predicate: %s", v22, 0x16u);
    v30 = v57;
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v30, -1, -1);
    v31 = v22;
    v10 = v60;
    MEMORY[0x1C6934650](v31, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    v29 = v12;
  }

  v32 = v65;
  os_unfair_lock_lock(v65 + 4);
  v33 = *&v32[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v32 + 4);
  v34 = v66;
  v35 = sub_1C3EF8778();

  v36 = v67;
  if (v34)
  {
    return v33;
  }

  sub_1C4030EA0();
  swift_allocObject();

  v66 = sub_1C4030EB0();
  v37 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  v65 = v35;
  v70 = v37;
  sub_1C4030A80();
  v38 = v62;
  (*(v36 + 16))(v62, v29, v10);
  (*(v36 + 56))(v38, 0, 1, v10);
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
  sub_1C4030F00();
  v39 = sub_1C4030E60();
  v41 = v39;
  v62 = 0;
  v42 = MEMORY[0x1E69E7CC0];
  v56 = v29;
  if (v39 >> 62)
  {
    v43 = sub_1C40317E0();
  }

  else
  {
    v43 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v63;
  v45 = v64;
  v46 = v59;
  if (!v43)
  {

    (*(v44 + 8))(v45, v61);
    (*(v67 + 8))(v56, v10);
    return MEMORY[0x1E69E7CC0];
  }

  v69 = v42;
  result = sub_1C3EF022C(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v60 = v10;
    v33 = v69;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v47 = 0;
      v48 = v58;
      do
      {
        v49 = MEMORY[0x1C6933590](v47, v41);
        sub_1C3F32D18(v49, v48);
        v69 = v33;
        v51 = *(v33 + 16);
        v50 = *(v33 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1C3EF022C((v50 > 1), v51 + 1, 1);
          v33 = v69;
        }

        ++v47;
        *(v33 + 16) = v51 + 1;
        sub_1C3EF7684(v48, v33 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v51);
      }

      while (v43 != v47);
    }

    else
    {
      v52 = 32;
      do
      {

        sub_1C3F32D18(v53, v46);
        v69 = v33;
        v55 = *(v33 + 16);
        v54 = *(v33 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1C3EF022C((v54 > 1), v55 + 1, 1);
          v33 = v69;
        }

        *(v33 + 16) = v55 + 1;
        sub_1C3EF7684(v46, v33 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v55);
        v52 += 8;
        --v43;
      }

      while (v43);
    }

    (*(v63 + 8))(v64, v61);
    (*(v67 + 8))(v56, v60);
    return v33;
  }

  __break(1u);
  return result;
}

uint64_t CallHistoryDataSource.getCallCount(with:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v32 - v10;
  v35 = type metadata accessor for CallFetchRequest(0);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4030D10();
  __swift_project_value_buffer(v13, qword_1EC0B0CE0);
  sub_1C3EF761C(a1, v12, type metadata accessor for CallFetchRequest);
  v14 = sub_1C4030CF0();
  v15 = sub_1C40315D0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v8;
    v34 = v9;
    v19 = v18;
    v38 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1C3EEFC68(0xD000000000000013, 0x80000001C4056A60, &v38);
    *(v17 + 12) = 2080;
    v20 = CallFetchRequest.description.getter();
    v21 = a1;
    v23 = v22;
    sub_1C3EF1564(v12, type metadata accessor for CallFetchRequest);
    v24 = sub_1C3EEFC68(v20, v23, &v38);
    a1 = v21;

    *(v17 + 14) = v24;
    _os_log_impl(&dword_1C3E90000, v14, v15, "%{public}s fetchRequest: %s", v17, 0x16u);
    swift_arrayDestroy();
    v25 = v19;
    v8 = v33;
    v9 = v34;
    MEMORY[0x1C6934650](v25, -1, -1);
    v26 = v17;
    v3 = v32;
    MEMORY[0x1C6934650](v26, -1, -1);
  }

  else
  {

    sub_1C3EF1564(v12, type metadata accessor for CallFetchRequest);
  }

  os_unfair_lock_lock((v4 + 16));
  v27 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 16));
  sub_1C3EF8778();

  if (!v3)
  {
    sub_1C4030EA0();
    swift_allocObject();

    sub_1C4030EB0();
    v38 = *(a1 + *(v35 + 20));
    v28 = v37;
    sub_1C3F1A3AC(v37);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
    sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
    v30 = v36;
    sub_1C4030F00();
    v27 = sub_1C4030E30();
    (*(v9 + 8))(v30, v8);
  }

  return v27;
}

uint64_t sub_1C3EF4434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CallHistoryDataSource.updateCalls(with:)(a1);
}

uint64_t CallHistoryDataSource.updateCalls(with:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  v2[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for RecentCall(0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EF4634, 0, 0);
}

uint64_t sub_1C3EF4634()
{
  v39 = v0;
  if (qword_1EC08EB78 != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CE0);

  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v38[0] = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1C3EEFC68(0xD000000000000012, 0x80000001C4056A80, v38);
    *(v4 + 12) = 2080;
    sub_1C3EF7D70(&qword_1EC08F030, type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
    v6 = sub_1C4031510();
    v8 = sub_1C3EEFC68(v6, v7, v38);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1C3E90000, v2, v3, "%{public}s calls: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v5, -1, -1);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  v9 = v0[7];
  os_unfair_lock_lock(v9 + 4);

  os_unfair_lock_unlock(v9 + 4);
  sub_1C3EF8778();
  v35 = v0[13];
  v37 = v0[12];
  v10 = v0[10];
  v11 = v0[6];

  sub_1C4030EA0();
  swift_allocObject();

  sub_1C4030EB0();
  v12 = v11 + 56;
  v13 = -1;
  v14 = -1 << *(v11 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v11 + 56);
  v16 = (63 - v14) >> 6;
  v36 = (v10 + 8);
  v34 = v11;

  v17 = 0;
  v32 = v16;
  v33 = v11 + 56;
  while (v15)
  {
LABEL_14:
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[8];
    sub_1C3EF761C(*(v34 + 48) + *(v35 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v20, type metadata accessor for RecentCall);
    sub_1C3EF7684(v20, v21);
    *(swift_task_alloc() + 16) = v21;
    v0[2] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
    sub_1C4030A80();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
    sub_1C4030F00();
    v24 = sub_1C4030E60();
    (*v36)(v0[11], v0[9]);
    if (v24 >> 62)
    {
      result = sub_1C40317E0();
      if (!result)
      {
LABEL_7:
        v18 = v0[14];

        goto LABEL_8;
      }
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_7;
      }
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1C6933590](0, v24);
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v26 = *(v24 + 32);
    }

    v18 = v0[14];

    v27 = *(v18 + v37[9]);
    v0[3] = v26;
    swift_getKeyPath();
    v28 = swift_task_alloc();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
    sub_1C4030A90();

    LOBYTE(v27) = *(v18 + v37[18]);
    v0[4] = v26;
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    sub_1C4030A90();

    LOBYTE(v27) = *(v18 + v37[28]);
    v0[5] = v26;
    swift_getKeyPath();
    v30 = swift_task_alloc();
    *(v30 + 16) = v26;
    *(v30 + 24) = v27;
    sub_1C4030A90();

    sub_1C40166EC(v18);
    sub_1C4017528(v18);

LABEL_8:
    v15 &= v15 - 1;
    sub_1C3EF1564(v18, type metadata accessor for RecentCall);

    v16 = v32;
    v12 = v33;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_14;
    }
  }

  if (sub_1C4030E40())
  {
    sub_1C4030E50();
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1C3EF4E58(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EEB060;

  return CallHistoryDataSource.deleteCalls(with:)(a1);
}

uint64_t CallHistoryDataSource.deleteCalls(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EF4F10, 0, 0);
}

uint64_t sub_1C3EF4F10()
{
  v20 = v0;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1C4030D10();
  __swift_project_value_buffer(v2, qword_1EC0B0CE0);
  sub_1C3EE61B4(v1);
  v3 = sub_1C4030CF0();
  v4 = sub_1C40315D0();
  sub_1C3EE6238(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1C3EEFC68(0xD000000000000012, 0x80000001C4056AA0, &v18);
    *(v6 + 12) = 2080;
    v19 = v5;
    sub_1C3EE61B4(v5);
    v8 = CallPredicate.description.getter();
    v10 = v9;
    sub_1C3EE6238(v19);
    v11 = sub_1C3EEFC68(v8, v10, &v18);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C3E90000, v3, v4, "%{public}s predicate: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v7, -1, -1);
    MEMORY[0x1C6934650](v6, -1, -1);
  }

  v12 = v0[2];
  os_unfair_lock_lock(v12 + 4);

  os_unfair_lock_unlock(v12 + 4);
  sub_1C3EF8778();
  v13 = v0[3];
  sub_1C4030EA0();
  swift_allocObject();

  v14 = sub_1C4030EB0();
  sub_1C3EF63AC(v14, v13, &v19);
  if (sub_1C4030E40())
  {
    sub_1C4030E50();
  }

  v15 = v19;
  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1C3EF5210(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CallHistoryDataSource.markAsRead(with:)(a1);
}

uint64_t CallHistoryDataSource.markAsRead(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EF52C8, 0, 0);
}

uint64_t sub_1C3EF52C8()
{
  v20 = v0;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1C4030D10();
  __swift_project_value_buffer(v2, qword_1EC0B0CE0);
  sub_1C3EE61B4(v1);
  v3 = sub_1C4030CF0();
  v4 = sub_1C40315D0();
  sub_1C3EE6238(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1C3EEFC68(0xD000000000000011, 0x80000001C4056AC0, &v18);
    *(v6 + 12) = 2080;
    v19 = v5;
    sub_1C3EE61B4(v5);
    v8 = CallPredicate.description.getter();
    v10 = v9;
    sub_1C3EE6238(v19);
    v11 = sub_1C3EEFC68(v8, v10, &v18);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C3E90000, v3, v4, "%{public}s predicate: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v7, -1, -1);
    MEMORY[0x1C6934650](v6, -1, -1);
  }

  v12 = v0[2];
  os_unfair_lock_lock(v12 + 4);

  os_unfair_lock_unlock(v12 + 4);
  sub_1C3EF8778();
  v13 = v0[3];
  sub_1C4030EA0();
  swift_allocObject();

  v14 = sub_1C4030EB0();
  sub_1C3EF6810(v14, v13);
  v16 = sub_1C4030E40();
  if (v16)
  {
    sub_1C4030E50();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1C3EF558C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C3EF5620(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C3EF5680(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1C3EF7E80;
}

void sub_1C3EF5714(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C3EF5798(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE4204;

  return CallHistoryDataSource.markAsRead(_:)(a1);
}

uint64_t CallHistoryDataSource.markAsRead(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  v2[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1C40309F0();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EF5990, 0, 0);
}

uint64_t sub_1C3EF5990()
{
  v1 = v0[5];
  os_unfair_lock_lock(v1 + 4);

  os_unfair_lock_unlock(v1 + 4);
  sub_1C3EF8778();
  v3 = v0[4];

  sub_1C4030EA0();
  swift_allocObject();

  sub_1C4030EB0();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[11];
    v21 = (v0[8] + 8);
    v19 = (v5 + 8);
    v20 = *(v5 + 16);
    v6 = v0[4] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    do
    {
      v22 = v4;
      v9 = v0[12];
      v10 = v0[6];
      v20(v9, v6, v0[10]);
      *(swift_task_alloc() + 16) = v9;
      v0[2] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
      (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
      sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
      sub_1C4030F00();
      v12 = sub_1C4030E60();
      (*v21)(v0[9], v0[7]);
      if (v12 >> 62)
      {
        result = sub_1C40317E0();
        if (!result)
        {
LABEL_7:
          v7 = v0[12];
          v8 = v0[10];

          (*v19)(v7, v8);
          goto LABEL_8;
        }
      }

      else
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_7;
        }
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C6933590](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v13 = *(v12 + 32);
      }

      v14 = v0[12];
      v15 = v0[10];

      v0[3] = v13;
      swift_getKeyPath();
      v16 = swift_task_alloc();
      *(v16 + 16) = v13;
      *(v16 + 24) = 1;
      sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
      sub_1C4030A90();

      (*v19)(v14, v15);
LABEL_8:

      v6 += v18;
      v4 = v22 - 1;
    }

    while (v22 != 1);
  }

  if (sub_1C4030E40())
  {
    sub_1C4030E50();
  }

  v17 = v0[1];

  return v17();
}