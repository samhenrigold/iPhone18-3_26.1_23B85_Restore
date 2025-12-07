BOOL sub_1C00A9274(void *a1, uint64_t *a2)
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

void *sub_1C00A92E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C00A934C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C00A94B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C00A9504(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return UserGuide.topicIdentifier.setter(v1, v2);
}

uint64_t sub_1C00A9544()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A95AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C00A9608(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1C00A9698()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A96D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C00A9718()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9750()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9790()
{
  v1 = sub_1C014BEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C00A9888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C00A9898()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A98D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9910()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A995C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C00A9A00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9A38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9AEC()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9B24()
{
  v1 = sub_1C014BD80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C00A9C00()
{
  v1 = sub_1C014BD80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C00A9CC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9CFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9D34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1C00A9D90(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C011D034(v1);
}

uint64_t sub_1C00A9DEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C00A9E34()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1C014BD40();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1C00A9F98()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA09C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C00AA0EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA124()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C00AA168()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00AA204@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C00AA310()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA348()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C00AA388()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA3C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C00AA410()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C00AA458@<X0>(uint64_t *a1@<X8>)
{
  result = CSSearchableItemAttributeSet.correlationIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C00AA4B0@<X0>(uint64_t *a1@<X8>)
{
  result = CSSearchableItemAttributeSet.collectionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C00AA508()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA544()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C00AA5CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA61C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA654()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C00AA694()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA6E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA71C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00AA754()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA78C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C00AA7D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C00AE1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_1C00B008C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_1C00C35D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00C4F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00C9370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C00C9CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00CF4AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C00D00A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location, ...)
{
  va_start(va, location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C00D0734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_1C00D2864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D2A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D717C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00D738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D77B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D7FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&a59);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D8470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D8C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1C00DA13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  objc_destroyWeak((v26 + 40));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 232), 8);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_1C00DDF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00DE750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00DE8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00DEC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00DFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00E15F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00E198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C00E206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TPSXPCServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3F54F30];
  v1 = objc_opt_class();
  v2 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  [v0 setClasses:v2 forSelector:sel_contentWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v3 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  [v0 setClasses:v3 forSelector:sel_contentWithCompletionHandler_ argumentIndex:1 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  [v0 setClasses:v4 forSelector:sel_supportFlowContentWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_logAnalyticsEvent_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_logAnalyticsEvents_ argumentIndex:0 ofReply:0];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v9 forSelector:sel_contentForVariant_completionHandler_ argumentIndex:0 ofReply:1];

  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v10 forSelector:sel_fetchAssetsWithAssetsConfiguration_completionHandler_ argumentIndex:0 ofReply:1];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  [v0 setClasses:v14 forSelector:sel_userGuideMapWithCompletionHandler_ argumentIndex:0 ofReply:1];

  [TPSSearchQueryXPCInterfaceBuilder configure:v0];

  return v0;
}

void sub_1C00E5290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00E76D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00E7A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PingPongClientLibraryCore(uint64_t a1)
{
  if (!PingPongClientLibraryCore_frameworkLibrary)
  {
    PingPongClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return PingPongClientLibraryCore_frameworkLibrary;
}

uint64_t __PingPongClientLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PingPongClientLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPPCExtensibleSSOAuthenticatorClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PingPongClientLibrary();
  result = objc_getClass("PPCExtensibleSSOAuthenticator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPCExtensibleSSOAuthenticatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPPCExtensibleSSOAuthenticatorClass_block_invoke_cold_1();
    return PingPongClientLibrary();
  }

  return result;
}

uint64_t PingPongClientLibrary()
{
  v3 = 0;
  v0 = PingPongClientLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *__getkExtensibleSSOUsernameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PingPongClientLibrary();
  result = dlsym(v2, "kExtensibleSSOUsernameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkExtensibleSSOUsernameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkExtensibleSSOTokenKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PingPongClientLibrary();
  result = dlsym(v2, "kExtensibleSSOTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkExtensibleSSOTokenKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C00E9ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00ECF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00EDBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PingPongClientLibraryCore_0(uint64_t a1)
{
  if (!PingPongClientLibraryCore_frameworkLibrary_0)
  {
    PingPongClientLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return PingPongClientLibraryCore_frameworkLibrary_0;
}

uint64_t __PingPongClientLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  PingPongClientLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPPCRedirectClass_block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = PingPongClientLibraryCore_0(&v7);
  v3 = v7;
  if (v2)
  {
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v7);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("PPCRedirect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPCRedirectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPPCRedirectClass_block_invoke_cold_1();
    return +[(TPSAnalyticsEventSearchResultSelected *)v5];
  }

  return result;
}

void sub_1C00F76D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

unint64_t sub_1C00F7C94()
{
  v1 = sub_1C00F97A8(MEMORY[0x1E69E7CC0], &qword_1EBE064A8, &qword_1C0155FB8);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F8C60(v2, 0x6C757365725F6564, 0xEF6E776F68735F74, isUniquelyReferenced_nonNull_native, sub_1C012F8F0, sub_1C0104504);
  return v1;
}

uint64_t sub_1C00F7DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C00F9954(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1C00F8788(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1C00F98F4(a1, &qword_1EBE06490, &qword_1C0155FA0);
    sub_1C0136870(a2, a3, v9);

    return sub_1C00F98F4(v9, &qword_1EBE06490, &qword_1C0155FA0);
  }

  return result;
}

uint64_t sub_1C00F7EE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    sub_1C00F8C60(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v23;
  }

  else
  {
    v18 = sub_1C012EBF4(a2, a3);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v8;
      v24 = *v8;
      if (!v21)
      {
        a7();
        v22 = v24;
      }

      result = a6(v18, v22);
      *v8 = v22;
    }
  }

  return result;
}

uint64_t sub_1C00F8004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C00F98DC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1C00F8AE0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1C00F98F4(a1, &qword_1EBE06458, &qword_1C0157670);
    sub_1C0136914(a2, a3, v9);

    return sub_1C00F98F4(v9, &qword_1EBE06458, &qword_1C0157670);
  }

  return result;
}

uint64_t TPSAnalyticsEventDeviceExpertDisplayed.deinit()
{

  return v0;
}

uint64_t TPSAnalyticsEventDeviceExpertDisplayed.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

void *sub_1C00F81FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C00F8228@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C00F82E8(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError, &unk_1C015615C);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C00F8354(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError, &unk_1C015615C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C00F83C0(void *a1, uint64_t a2)
{
  v4 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError, &unk_1C015615C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C00F8474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError, &unk_1C015615C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C00F84F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C014CAE0();
  sub_1C014C1B0();
  return sub_1C014CB10();
}

uint64_t sub_1C00F8550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C00F98A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C00F8590(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE064C8, type metadata accessor for CSSearchQueryError, &unk_1C0156118);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C00F85FC(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE064C8, type metadata accessor for CSSearchQueryError, &unk_1C0156118);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C00F866C(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError, &unk_1C015615C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C00F86D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError, &unk_1C015615C);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

_OWORD *sub_1C00F8788(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C012EBF4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C012F904();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C0104518(v16, a4 & 1);
    v11 = sub_1C012EBF4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C014CA60();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1C00F9954(a1, v22);
  }

  else
  {
    sub_1C00F8DF4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1C00F88D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1C014BD80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1C012ECDC(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1C012FC10();
      goto LABEL_9;
    }

    sub_1C0104A70(v18, a4 & 1);
    v21 = sub_1C012ECDC(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1C014CA60();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1C00F8E60(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1C00F8AE0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C012EBF4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C01306FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C0104E38(v16, a4 & 1);
    v11 = sub_1C012EBF4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C014CA60();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1C00F98DC(a1, v22);
  }

  else
  {
    sub_1C00F8F20(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1C00F8C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C012EBF4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1C012EBF4(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        v15 = sub_1C014CA60();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v15, v27);
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8](v15, v27);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

_OWORD *sub_1C00F8DF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C00F9954(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C00F8E60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1C014BD80();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1C00F8F20(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C00F98DC(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C00F9018(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C00F9038(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C00F9104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C00F91DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06498, &qword_1C0155FA8);
    v3 = sub_1C014C910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C00F99B0(v4, &v13, &qword_1EBE064A0, &qword_1C0155FB0);
      v5 = v13;
      v6 = v14;
      result = sub_1C012EBF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C00F9954(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1C00F930C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE063E8, &qword_1C0155F58);
    v3 = sub_1C014C910();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C012EBF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1C00F9450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06480, &qword_1C0155F90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06488, &qword_1C0155F98);
    v7 = sub_1C014C910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C00F99B0(v9, v5, &qword_1EBE06480, &qword_1C0155F90);
      result = sub_1C012ECDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C014BD80();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1C00F964C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06468, &qword_1C0155F78);
    v3 = sub_1C014C910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C00F99B0(v4, &v13, &qword_1EBE06470, &unk_1C0155F80);
      v5 = v13;
      v6 = v14;
      result = sub_1C012EBF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C00F98DC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1C00F97A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C014C910();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1C012EBF4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_1C00F98A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1C00F98DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C00F98F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_1C00F9954(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_1C00F99B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C00F9BA8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1C00F9C40()
{
  result = qword_1EBE064F0;
  if (!qword_1EBE064F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE064F0);
  }

  return result;
}

void *TPSAnalyticsChecklistSession.__allocating_init(sessionStartSuggestedTipCount:sessionEndSuggestedTipCount:sessionTipsCompleted:timeSpent:isFirstLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  v10 = swift_allocObject();
  *(v10 + 69) = 0;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  *(v10 + 64) = a5;
  *(v10 + 68) = a4;
  return TipsAnalyticsEvent.init(identifier:)(0xD000000000000020, 0x80000001C015B440);
}

void *TPSAnalyticsChecklistSession.init(sessionStartSuggestedTipCount:sessionEndSuggestedTipCount:sessionTipsCompleted:timeSpent:isFirstLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  *(v5 + 69) = 0;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 64) = a5;
  *(v5 + 68) = a4;
  return TipsAnalyticsEvent.init(identifier:)(0xD000000000000020, 0x80000001C015B440);
}

unint64_t sub_1C00F9E1C()
{
  v0 = sub_1C00F8F90(MEMORY[0x1E69E7CC0]);
  v1 = sub_1C014C530();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v1, 0xD000000000000012, 0x80000001C015B470, isUniquelyReferenced_nonNull_native);
  v3 = sub_1C014C530();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v3, 0xD000000000000010, 0x80000001C015B490, v4);
  v5 = sub_1C014C530();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v5, 0xD000000000000016, 0x80000001C015B4B0, v6);
  v7 = sub_1C014C4E0();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v7, 0x6570735F656D6974, 0xEA0000000000746ELL, v8);
  v9 = sub_1C014C410();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v9, 0x69745F7473726966, 0xEF67616C665F656DLL, v10);
  [objc_opt_self() isSeniorUser];
  v11 = sub_1C014C410();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v11, 0x67616C665F353675, 0xE800000000000000, v12);
  return v0;
}

uint64_t TPSAnalyticsChecklistSession.deinit()
{

  return v0;
}

uint64_t TPSAnalyticsChecklistSession.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 70, 7);
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_1C00FA23C(a1);
  v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v10 = sub_1C014C3B0();

  v11 = [v9 initWithArray_];

  sub_1C014C500();
  v12 = sub_1C014C4F0();

  [v5 setClasses:v12 forSelector:a2 argumentIndex:a3 ofReply:a4 & 1];
}

uint64_t sub_1C00FA23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C0109030(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06570, &qword_1C01562F8);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C0109030((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1C00F9954(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1C00FA59C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1C014C200();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1C00FA630(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1C00FA690(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C014C230();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C00FA718(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1C00FA774(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

id sub_1C00FA8F4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___TPSLinkedDocument_bundleId];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR___TPSLinkedDocument_documentId];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___TPSLinkedDocument_platform];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR___TPSLinkedDocument_product];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR___TPSLinkedDocument_productVersion];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = sub_1C014C160();
  v56.receiver = v1;
  v56.super_class = type metadata accessor for LinkedDocument();
  v9 = objc_msgSendSuper2(&v56, sel_initWithDictionary_, v8);
  v10 = v9;

  if (!v10)
  {

    return 0;
  }

  strcpy(v50, "bundleId");
  BYTE1(v50[1]) = 0;
  WORD1(v50[1]) = 0;
  HIDWORD(v50[1]) = -402653184;
  v11 = v10;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v12 = sub_1C012EC98(v55), (v13 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v12, v50);
    sub_1C00FC104(v55);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v53;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = *(&v53 + 1);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_1C00FC104(v55);
    v15 = 0;
    v16 = 0;
  }

  v17 = &v11[OBJC_IVAR___TPSLinkedDocument_bundleId];
  swift_beginAccess();
  *v17 = v15;
  *(v17 + 1) = v16;

  strcpy(v50, "documentId");
  BYTE3(v50[1]) = 0;
  HIDWORD(v50[1]) = -369098752;
  sub_1C014C7A0();
  if (!*(a1 + 16) || (v18 = sub_1C012EC98(v55), (v19 & 1) == 0))
  {
    sub_1C00FC104(v55);
    v51 = 0u;
    v52 = 0u;
    *&v53 = 0x64496369706F74;
    *(&v53 + 1) = 0xE700000000000000;
    sub_1C014C7A0();
    if (*(a1 + 16) && (v20 = sub_1C012EC98(v50), (v21 & 1) != 0))
    {
      sub_1C00FC1C0(*(a1 + 56) + 32 * v20, &v53);
      sub_1C00FC104(v50);
      if (!*(&v52 + 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1C00FC104(v50);
      v53 = 0u;
      v54 = 0u;
      if (!*(&v52 + 1))
      {
        goto LABEL_22;
      }
    }

    sub_1C00FC158(&v51);
    goto LABEL_22;
  }

  sub_1C00FC1C0(*(a1 + 56) + 32 * v18, &v51);
  sub_1C00FC104(v55);
  sub_1C00F9954(&v51, &v53);
LABEL_22:
  if (*(&v54 + 1))
  {
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v55[0];
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v55[1];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_1C00FC158(&v53);
    v23 = 0;
    v24 = 0;
  }

  v25 = &v11[OBJC_IVAR___TPSLinkedDocument_documentId];
  swift_beginAccess();
  *v25 = v23;
  *(v25 + 1) = v24;

  strcpy(v50, "platform");
  BYTE1(v50[1]) = 0;
  WORD1(v50[1]) = 0;
  HIDWORD(v50[1]) = -402653184;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v26 = sub_1C012EC98(v55), (v27 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v26, v50);
    sub_1C00FC104(v55);
    v28 = swift_dynamicCast();
    if (v28)
    {
      v29 = v51;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = *(&v51 + 1);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    sub_1C00FC104(v55);
    v29 = 0;
    v30 = 0;
  }

  v31 = &v11[OBJC_IVAR___TPSLinkedDocument_platform];
  swift_beginAccess();
  *v31 = v29;
  *(v31 + 1) = v30;

  strcpy(v50, "product");
  v50[1] = 0xE700000000000000;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v32 = sub_1C012EC98(v55), (v33 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v32, v50);
    sub_1C00FC104(v55);
    v34 = swift_dynamicCast();
    if (v34)
    {
      v35 = v48;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v49;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    sub_1C00FC104(v55);
    v35 = 0;
    v36 = 0;
  }

  v37 = &v11[OBJC_IVAR___TPSLinkedDocument_product];
  swift_beginAccess();
  *v37 = v35;
  *(v37 + 1) = v36;

  strcpy(v50, "productVersion");
  HIBYTE(v50[1]) = -18;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v38 = sub_1C012EC98(v55), (v39 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v38, v50);
    sub_1C00FC104(v55);

    v40 = swift_dynamicCast();
    if (v40)
    {
      v41 = v46;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v42 = v47;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {

    sub_1C00FC104(v55);
    v41 = 0;
    v42 = 0;
  }

  v43 = &v11[OBJC_IVAR___TPSLinkedDocument_productVersion];
  swift_beginAccess();
  *v43 = v41;
  *(v43 + 1) = v42;

  if (*(v17 + 1) || *(v25 + 1) || *(v31 + 1))
  {

    return v9;
  }

  v45 = *(v37 + 1);

  if (v45)
  {

    return v9;
  }

  return 0;
}

id sub_1C00FAF6C(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___TPSLinkedDocument_bundleId];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR___TPSLinkedDocument_documentId];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___TPSLinkedDocument_platform];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR___TPSLinkedDocument_product];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___TPSLinkedDocument_productVersion];
  v9 = type metadata accessor for LinkedDocument();
  *v8 = 0;
  *(v8 + 1) = 0;
  v24.receiver = v2;
  v24.super_class = v9;
  v10 = objc_msgSendSuper2(&v24, sel_initWithCoder_, a1);
  if (v10)
  {
    sub_1C00FC0B8();
    v11 = v10;
    v12 = sub_1C014C5E0();
    sub_1C014C220();

    v13 = &v11[OBJC_IVAR___TPSLinkedDocument_bundleId];
    swift_beginAccess();
    *v13 = 0;
    *(v13 + 1) = 0;

    v14 = sub_1C014C5E0();
    sub_1C014C220();

    v15 = &v11[OBJC_IVAR___TPSLinkedDocument_documentId];
    swift_beginAccess();
    *v15 = 0;
    *(v15 + 1) = 0;

    v16 = sub_1C014C5E0();
    sub_1C014C220();

    v17 = &v11[OBJC_IVAR___TPSLinkedDocument_platform];
    swift_beginAccess();
    *v17 = 0;
    *(v17 + 1) = 0;

    v18 = sub_1C014C5E0();
    sub_1C014C220();

    v19 = &v11[OBJC_IVAR___TPSLinkedDocument_product];
    swift_beginAccess();
    *v19 = 0;
    *(v19 + 1) = 0;

    v20 = sub_1C014C5E0();
    if (v20)
    {
      v21 = v20;
      sub_1C014C220();
    }

    v22 = &v11[OBJC_IVAR___TPSLinkedDocument_productVersion];
    swift_beginAccess();
    *v22 = 0;
    *(v22 + 1) = 0;
  }

  else
  {
  }

  return v10;
}

void sub_1C00FB2F4(void *a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for LinkedDocument();
  objc_msgSendSuper2(&v18, sel_encodeWithCoder_, a1);
  v3 = &v1[OBJC_IVAR___TPSLinkedDocument_bundleId];
  swift_beginAccess();
  if (*(v3 + 1))
  {

    v4 = sub_1C014C200();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1C014C200();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = &v1[OBJC_IVAR___TPSLinkedDocument_documentId];
  swift_beginAccess();
  if (*(v6 + 1))
  {

    v7 = sub_1C014C200();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C014C200();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = &v1[OBJC_IVAR___TPSLinkedDocument_platform];
  swift_beginAccess();
  if (*(v9 + 1))
  {

    v10 = sub_1C014C200();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1C014C200();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = &v1[OBJC_IVAR___TPSLinkedDocument_product];
  swift_beginAccess();
  if (*(v12 + 1))
  {

    v13 = sub_1C014C200();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1C014C200();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = &v1[OBJC_IVAR___TPSLinkedDocument_productVersion];
  swift_beginAccess();
  if (*(v15 + 1))
  {

    v16 = sub_1C014C200();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_1C014C200();
  [a1 encodeObject:v16 forKey:v17];
  swift_unknownObjectRelease();
}

char *sub_1C00FB694@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = type metadata accessor for LinkedDocument();
  v30.receiver = v2;
  v30.super_class = v5;
  objc_msgSendSuper2(&v30, sel_copyWithZone_, a1);
  sub_1C014C6E0();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v6 = v29;
    v7 = &v2[OBJC_IVAR___TPSLinkedDocument_bundleId];
    swift_beginAccess();
    v9 = *v7;
    v8 = *(v7 + 1);
    v10 = (v29 + OBJC_IVAR___TPSLinkedDocument_bundleId);
    swift_beginAccess();
    *v10 = v9;
    v10[1] = v8;

    v11 = &v2[OBJC_IVAR___TPSLinkedDocument_documentId];
    swift_beginAccess();
    v13 = *v11;
    v12 = *(v11 + 1);
    v14 = (v29 + OBJC_IVAR___TPSLinkedDocument_documentId);
    swift_beginAccess();
    *v14 = v13;
    v14[1] = v12;

    v15 = &v2[OBJC_IVAR___TPSLinkedDocument_platform];
    swift_beginAccess();
    v17 = *v15;
    v16 = *(v15 + 1);
    v18 = (v29 + OBJC_IVAR___TPSLinkedDocument_platform);
    swift_beginAccess();
    *v18 = v17;
    v18[1] = v16;

    v19 = &v2[OBJC_IVAR___TPSLinkedDocument_product];
    swift_beginAccess();
    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = (v29 + OBJC_IVAR___TPSLinkedDocument_product);
    swift_beginAccess();
    *v22 = v21;
    v22[1] = v20;

    v23 = &v2[OBJC_IVAR___TPSLinkedDocument_productVersion];
    swift_beginAccess();
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = (v29 + OBJC_IVAR___TPSLinkedDocument_productVersion);
    swift_beginAccess();
    *v26 = v25;
    v26[1] = v24;
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A0, &qword_1C0156300);
    a2[1] = v28;
    result = v2;
    v6 = sub_1C00FBCAC;
  }

  a2[3] = v5;
  *a2 = v6;
  return result;
}

id LinkedDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkedDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkedDocument();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8TipsCore14LinkedDocumentC06linkedD14FromDictionary10dictionarySDys11AnyHashableVypGSgAH_tFZ_0(uint64_t a1)
{
  strcpy(v8, "linkedDocument");
  HIBYTE(v8[1]) = -18;
  sub_1C014C7A0();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v2 = sub_1C012EC98(v9);
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1C00FC1C0(*(a1 + 56) + 32 * v2, v10);
  sub_1C00FC104(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB0, &qword_1C0156328);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v8[0];
  v8[0] = 0x7372747461;
  v8[1] = 0xE500000000000000;
  sub_1C014C7A0();
  if (!*(v4 + 16) || (v5 = sub_1C012EC98(v9), (v6 & 1) == 0))
  {

LABEL_9:
    sub_1C00FC104(v9);
    return 0;
  }

  sub_1C00FC1C0(*(v4 + 56) + 32 * v5, v10);
  sub_1C00FC104(v9);

  if (swift_dynamicCast())
  {
    return v8[0];
  }

  return 0;
}

uint64_t sub_1C00FBCAC()
{
  [*(v1 + 16) copy];
  sub_1C014C6E0();

  return swift_unknownObjectRelease();
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C00FC0B8()
{
  result = qword_1EDD44B60;
  if (!qword_1EDD44B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD44B60);
  }

  return result;
}

uint64_t sub_1C00FC158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06490, &qword_1C0155FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C00FC1C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C00FC2C0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C00FC37C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1C00FC3D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1C00FC504()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C00FC5C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C00FC614(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1C00FC718()
{
  v1 = *(v0 + 48);

  return v1;
}

double SupportArticle.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  return result;
}

uint64_t SupportArticle.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return v2;
}

void *SupportArticle.deinit()
{

  return v0;
}

uint64_t SupportArticle.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t SupportArticle.supportSiteURLString.getter()
{
  v1 = sub_1C014BB90();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1C014BC50();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  sub_1C00FCF48();
  sub_1C014BC10();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C00FCBD4(v7);
    return 0;
  }

  else
  {
    v16 = sub_1C00FCC3C();
    v30 = v14;
    v31 = v16;
    v32 = v17;
    v29 = *MEMORY[0x1E6968F70];
    v26 = v0;
    v18 = v1;
    v28 = *(v2 + 104);
    v28(v4);
    v25 = sub_1C00FCDA8();
    sub_1C014BC40();
    v27 = *(v2 + 8);
    v27(v4, v1);

    v19 = *(v9 + 8);
    v19(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C0156330;
    v21 = *(v26 + 56);
    *(v20 + 32) = *(v26 + 48);
    *(v20 + 40) = v21;
    (v28)(v4, v29, v1);

    v22 = v30;
    sub_1C014BC20();

    v27(v4, v18);
    v19(v12, v8);
    v23 = v22;
    v24 = sub_1C014BBA0();
    v19(v23, v8);
    return v24;
  }
}

uint64_t sub_1C00FCBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C00FCC3C()
{
  v0 = sub_1C014BDC0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 preferredLanguages];
  v6 = sub_1C014C3C0();
  if (*(v6 + 16))
  {
    v7 = *(v6 + 32);

    return v7;
  }

  result = [v4 preferredLocale];
  if (result)
  {
    v9 = result;

    sub_1C014BDA0();
    v7 = sub_1C014BD90();
    (*(v1 + 8))(v3, v0);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C00FCDA8()
{
  result = qword_1EDD44930;
  if (!qword_1EDD44930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44930);
  }

  return result;
}

uint64_t URL.TipSchemeAction.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  if (!*(v1 + 64))
  {
    MEMORY[0x1C68D7300](1);
    if (v2)
    {
      sub_1C014CB00();
      sub_1C014C2E0();
      if (v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1C014CB00();
      if (v3)
      {
LABEL_10:
        sub_1C014CB00();
        sub_1C014C2E0();
        if (!v4)
        {
          return sub_1C014CB00();
        }

        goto LABEL_19;
      }
    }

    sub_1C014CB00();
    if (v4)
    {
      goto LABEL_19;
    }

    return sub_1C014CB00();
  }

  if (*(v1 + 64) != 1)
  {
    return MEMORY[0x1C68D7300](0);
  }

  v5 = *(v1 + 56);
  MEMORY[0x1C68D7300](2);
  if (v2)
  {
    sub_1C014CB00();
    sub_1C014C2E0();
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1C014CB00();
    if (v3)
    {
LABEL_5:
      sub_1C014CB00();
      sub_1C014C2E0();
      if (v4)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  sub_1C014CB00();
  if (!v4)
  {
LABEL_15:
    sub_1C014CB00();
    if (v5)
    {
      goto LABEL_19;
    }

    return sub_1C014CB00();
  }

LABEL_6:
  sub_1C014CB00();
  sub_1C014C2E0();
  if (!v5)
  {
    return sub_1C014CB00();
  }

LABEL_19:
  sub_1C014CB00();

  return sub_1C014C2E0();
}

uint64_t URL.TipSchemeAction.hashValue.getter()
{
  sub_1C014CAE0();
  URL.TipSchemeAction.hash(into:)(v1);
  return sub_1C014CB10();
}

uint64_t sub_1C00FD160()
{
  sub_1C014CAE0();
  URL.TipSchemeAction.hash(into:)(v1);
  return sub_1C014CB10();
}

uint64_t sub_1C00FD1A4()
{
  sub_1C014CAE0();
  URL.TipSchemeAction.hash(into:)(v1);
  return sub_1C014CB10();
}

uint64_t URL.isTipsScheme.getter()
{
  v0 = sub_1C014BC00();
  v2 = v1;
  v3 = sub_1C014C230();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1C014C9F0();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t URL.isSupportArticle.getter()
{
  sub_1C014BBD0();
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = sub_1C014C2A0();
  v3 = v2;

  if (v1 == qword_1EBE065B0 && v3 == off_1EBE065B8)
  {

    goto LABEL_9;
  }

  v5 = sub_1C014C9F0();

  if (v5)
  {
LABEL_9:
    sub_1C014BBE0();
    v7 = sub_1C014C360();

    v6 = v7 ^ 1;
    return v6 & 1;
  }

LABEL_7:
  v6 = 0;
  return v6 & 1;
}

double URL.action.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1C014BC00();
  v5 = v4;
  v6 = sub_1C014C230();
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v3 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_1C014C9F0();

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v10 = sub_1C014BBD0();
  v12 = v11;
  v13 = sub_1C014C230();
  if (!v12)
  {

    sub_1C014C230();
LABEL_18:

    goto LABEL_19;
  }

  if (v13 == v10 && v12 == v14)
  {

LABEL_22:

    sub_1C00FD680(v38);
    *&v17 = *&v38[0];
    v19 = v38[1];
    v20 = v38[2];
    *a1 = v38[0];
    *(a1 + 16) = v19;
    *(a1 + 32) = v20;
    *(a1 + 64) = 0;
    return *&v17;
  }

  v16 = sub_1C014C9F0();

  if (v16)
  {
    goto LABEL_22;
  }

  if (sub_1C014C230() == v10 && v12 == v21)
  {
  }

  else
  {
    v22 = sub_1C014C9F0();

    if ((v22 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v23 = _s8TipsCore9UserGuideC03getcD7FromURL0G0ACSg10FoundationAEV_tFZ_0(v1);
  if (v23)
  {
    v25 = *&v23[OBJC_IVAR___TPSUserGuide_identifier];
    v24 = *&v23[OBJC_IVAR___TPSUserGuide_identifier + 8];
    v26 = v23;
    swift_getKeyPath();
    *&v38[0] = v26;
    sub_1C00FEFF4(&qword_1EBE065D8, type metadata accessor for UserGuide, &protocol conformance descriptor for UserGuide);

    sub_1C014BF00();

    v27 = &v26[OBJC_IVAR___TPSUserGuide__topicIdentifier];
    swift_beginAccess();
    v28 = *(v27 + 1);
    v29 = &v26[OBJC_IVAR___TPSUserGuide_version];
    v37 = *v27;
    swift_beginAccess();
    v30 = *(v29 + 1);
    v31 = &v26[OBJC_IVAR___TPSUserGuide_referrer];
    v36 = *v29;
    swift_beginAccess();
    v33 = *v31;
    v32 = *(v31 + 1);

    *a1 = v25;
    *(a1 + 8) = v24;
    *&v34 = v36;
    *&v17 = v37;
    *(&v17 + 1) = v28;
    *(&v34 + 1) = v30;
    *(a1 + 16) = v17;
    *(a1 + 32) = v34;
    *(a1 + 48) = v33;
    *(a1 + 56) = v32;
    v18 = 1;
    goto LABEL_20;
  }

LABEL_19:
  *&v17 = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v18 = 2;
LABEL_20:
  *(a1 + 64) = v18;
  return *&v17;
}

void sub_1C00FD680(uint64_t *a1@<X8>)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1C014BA60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C014BC00();
  v11 = v10;
  v12 = sub_1C014C230();
  if (!v11)
  {

    v16 = 0;
    v17 = 0;
LABEL_13:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_23;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_1C014C9F0();

    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_1C014B9E0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C00F98F4(v4, &qword_1EBE065E0, &unk_1C0157A70);
LABEL_12:
    v16 = 0;
    v17 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_1C014B9C0();
  v21 = objc_opt_self();
  sub_1C014B9A0();
  v22 = sub_1C014C3B0();

  v37 = 0;
  v38[0] = 0;
  v36 = 0;
  [v21 getValuesFromOpenURLSchemeQueryItems:v22 tipIdentifier:v38 collectionIdentifier:&v37 referrer:&v36];

  v23 = v36;
  v24 = v38[0];
  v35 = v37;
  if (!v37)
  {
    v16 = 0;
    v17 = 0;
    v33 = v38[0];
    if (v38[0])
    {
      goto LABEL_16;
    }

LABEL_18:
    v28 = v23;
    v11 = 0;
    v18 = 0;
    v24 = v35;
    goto LABEL_19;
  }

  v16 = sub_1C014C230();
  v17 = v25;
  v33 = v24;
  if (!v24)
  {
    goto LABEL_18;
  }

LABEL_16:
  v11 = sub_1C014C230();
  v18 = v26;
  v27 = v23;
  v28 = v35;
LABEL_19:
  v34 = v6;
  v29 = v28;
  v30 = v24;
  if (v23)
  {
    v19 = sub_1C014C230();
    v20 = v31;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  (*(v34 + 8))(v8, v5);

LABEL_23:
  *a1 = v16;
  a1[1] = v17;
  a1[2] = v11;
  a1[3] = v18;
  a1[4] = v19;
  a1[5] = v20;
}

uint64_t URL.appendQueryParamIfMissing(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v42 = a2;
  v43 = sub_1C014B9A0();
  v7 = *(v43 - 8);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1C014BA60();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014B9E0();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C00F98F4(v15, &qword_1EBE065E0, &unk_1C0157A70);
    v20 = sub_1C014BC50();
    return (*(*(v20 - 8) + 56))(a5, 1, 1, v20);
  }

  else
  {
    v35 = v10;
    v38 = v16;
    v39 = a5;
    v37 = v17;
    (*(v17 + 32))(v19, v15, v16);
    v36 = v19;
    v22 = sub_1C014B9C0();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = v23[2];
    v25 = (v7 + 8);

    v26 = 0;
    while (v24 != v26)
    {
      if (v26 >= v23[2])
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(v7 + 16))(v12, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v43);
      if (sub_1C014B980() == a1 && v28 == v42)
      {

        (*v25)(v12, v43);
LABEL_13:
        swift_bridgeObjectRelease_n();
        v29 = v38;
        v30 = v36;
        v31 = v37;
        goto LABEL_18;
      }

      ++v26;
      v27 = sub_1C014C9F0();

      (*v25)(v12, v43);
      if (v27)
      {
        goto LABEL_13;
      }
    }

    v12 = v35;
    sub_1C014B970();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_15;
    }

LABEL_20:
    v23 = sub_1C00FE5B8(0, v23[2] + 1, 1, v23, &qword_1EBE065F0, &qword_1C01563D8, MEMORY[0x1E6968178]);
LABEL_15:
    v29 = v38;
    v30 = v36;
    v31 = v37;
    v33 = v23[2];
    v32 = v23[3];
    if (v33 >= v32 >> 1)
    {
      v23 = sub_1C00FE5B8((v32 > 1), v33 + 1, 1, v23, &qword_1EBE065F0, &qword_1C01563D8, MEMORY[0x1E6968178]);
    }

    v23[2] = v33 + 1;
    (*(v7 + 32))(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v12, v43);
    sub_1C014B9D0();
LABEL_18:
    sub_1C014B9F0();
    return (*(v31 + 8))(v30, v29);
  }
}

Swift::Bool __swiftcall URL.hasQueryParams(queryItems:)(Swift::OpaquePointer queryItems)
{
  v2 = sub_1C014B9A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  sub_1C014B9E0();
  v9 = sub_1C014BA60();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C00F98F4(v8, &qword_1EBE065E0, &unk_1C0157A70);
    return 0;
  }

  v11 = sub_1C014B9C0();
  (*(v10 + 8))(v8, v9);
  if (!v11)
  {
    return 0;
  }

  v26 = *(queryItems._rawValue + 2);
  if (v26)
  {
    v12 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v13 = v15;
    v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v17 = queryItems._rawValue + v16;
    v18 = *(v14 + 56);
    v19 = v11 + v16;
    v27 = (v14 - 8);
    v24 = queryItems._rawValue + v16;
    v25 = v15;
    v23 = v11 + v16;
    while (2)
    {
      v13(v5, &v17[v18 * v12++], v2);
      v20 = *(v11 + 16) + 1;
      do
      {
        if (!--v20)
        {
          (*v27)(v5, v2);

          return 0;
        }

        sub_1C00FEFF4(&qword_1EBE065E8, MEMORY[0x1E6968178], MEMORY[0x1E6968180]);
        v19 += v18;
      }

      while ((sub_1C014C1D0() & 1) == 0);
      (*v27)(v5, v2);
      v13 = v25;
      v19 = v23;
      v17 = v24;
      if (v12 != v26)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t URL.appendingSupportArticleQueryParam()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065F0, &qword_1C01563D8);
  v0 = sub_1C014B9A0();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C0156390;
  if (qword_1EBE06350 != -1)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v4 = v3 + v2;
  v5 = __swift_project_value_buffer(v0, qword_1EBE065C0);
  (*(v1 + 16))(v4, v5, v0);
  sub_1C014B970();
  sub_1C014BC30();
}

uint64_t sub_1C00FE330()
{
  v0 = sub_1C014B9A0();
  __swift_allocate_value_buffer(v0, qword_1EBE065C0);
  __swift_project_value_buffer(v0, qword_1EBE065C0);
  return sub_1C014B970();
}

uint64_t static URLQueryItem.headerlessDisplayMode.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE06350 != -1)
  {
    swift_once();
  }

  v2 = sub_1C014B9A0();
  v3 = __swift_project_value_buffer(v2, qword_1EBE065C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C00FE45C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C00FEFF4(&qword_1EBE065D8, type metadata accessor for UserGuide, &protocol conformance descriptor for UserGuide);
  sub_1C014BF00();

  v4 = (v3 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C00FE528(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return UserGuide.topicIdentifier.setter(v1, v2);
}

void *sub_1C00FE5B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_1C00FE794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06608, &qword_1C0156508);
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

char *sub_1C00FE898(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
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

void *sub_1C00FE9A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06618, &qword_1C0156518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB0, &qword_1C0156328);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C00FEAD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06610, &qword_1C0156510);
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

BOOL _s10Foundation3URLV8TipsCoreE15TipSchemeActionO2eeoiySbAF_AFtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v29 = a1[2];
  v30 = v3;
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v34 = a2[2];
  v35 = v6;
  v7 = a2[1];
  v32 = *a2;
  v33 = v7;
  v8 = a1[3];
  v37[2] = v29;
  v37[3] = v8;
  v37[0] = v27;
  v37[1] = v2;
  v40 = v5;
  v41 = v34;
  v42 = a2[3];
  v31 = *(a1 + 64);
  v36 = a2[4].i8[0];
  v38 = *(a1 + 64);
  v43 = a2[4].i8[0];
  v39 = v32;
  if (v31)
  {
    if (v31 != 1)
    {
      if (v36 != 2)
      {
        goto LABEL_48;
      }

      v17 = vorrq_s8(vorrq_s8(v32, v34), vorrq_s8(v33, v35));
      if (vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
      {
        goto LABEL_48;
      }

      goto LABEL_17;
    }

    if (v36 != 1)
    {
      goto LABEL_48;
    }

    v9 = *(&v30 + 1);
    v10 = v30;
    v12 = v34.i64[1];
    v11 = v34.i64[0];
    v13 = v35.i64[1];
    v14 = v35.i64[0];
    if (*(&v27 + 1))
    {
      if (!v32.i64[1])
      {
        goto LABEL_48;
      }

      if (v27 != *&v32)
      {
        v15 = sub_1C014C9F0();
        v11 = v34.i64[0];
        v13 = v35.i64[1];
        v9 = *(&v30 + 1);
        v10 = v30;
        v14 = v35.i64[0];
        v12 = v34.i64[1];
        if ((v15 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v32.i64[1])
    {
      goto LABEL_48;
    }

    if (*(&v28 + 1))
    {
      if (!v33.i64[1])
      {
        goto LABEL_48;
      }

      if (v28 != *&v33)
      {
        v19 = v13;
        v20 = v11;
        v21 = sub_1C014C9F0();
        v11 = v20;
        v13 = v19;
        if ((v21 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v33.i64[1])
    {
      goto LABEL_48;
    }

    if (*(&v29 + 1))
    {
      if (!v12)
      {
        goto LABEL_48;
      }

      if (v29 != __PAIR128__(v12, v11))
      {
        v22 = v13;
        v23 = sub_1C014C9F0();
        v13 = v22;
        if ((v23 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v12)
    {
      goto LABEL_48;
    }

    if (v9)
    {
      if (v13)
      {
        if (v10 == v14 && v9 == v13)
        {
          goto LABEL_47;
        }

        goto LABEL_54;
      }

      goto LABEL_48;
    }

    v24 = v13;
    sub_1C00FF250(&v32, v26);
    sub_1C00FF250(&v27, v26);

    sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
    if (!v24)
    {
      return 1;
    }

LABEL_51:

    return 0;
  }

  if (v36)
  {
    goto LABEL_48;
  }

  v16 = v34.i64[1];
  if (*(&v27 + 1))
  {
    if (!v32.i64[1] || v27 != *&v32 && (sub_1C014C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v32.i64[1])
  {
    goto LABEL_48;
  }

  if (*(&v28 + 1))
  {
    if (!v33.i64[1] || v28 != *&v33 && (sub_1C014C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v33.i64[1])
  {
    goto LABEL_48;
  }

  if (!*(&v29 + 1))
  {
    sub_1C00FF250(&v32, v26);
    sub_1C00FF250(&v27, v26);

    sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
    if (!v16)
    {
      return 1;
    }

    goto LABEL_51;
  }

  if (v34.i64[1])
  {
    if (v29 == *&v34)
    {
LABEL_47:
      sub_1C00FF250(&v32, v26);
      sub_1C00FF250(&v27, v26);
LABEL_17:
      sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
      return 1;
    }

LABEL_54:
    v25 = sub_1C014C9F0();
    sub_1C00FF250(&v32, v26);
    sub_1C00FF250(&v27, v26);
    sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
    return (v25 & 1) != 0;
  }

LABEL_48:
  sub_1C00FF250(&v32, v26);
  sub_1C00FF250(&v27, v26);
  sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
  return 0;
}

uint64_t sub_1C00FEFF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C00FF078()
{
  result = qword_1EBE065F8;
  if (!qword_1EBE065F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE065F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLV8TipsCoreE15TipSchemeActionO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C00FF10C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C00FF154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C00FF1AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
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

uint64_t sub_1C00FF288(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1C014BB80();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v8);
  sub_1C01007C8();
  while (1)
  {
    sub_1C014C660();
    if (!v16)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    sub_1C00F9954(&v15, v14);
    v11 = a1(v14);
    if (v3)
    {
      break;
    }

    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
LABEL_8:
  (*(v7 + 8))(v10, v6);
  return 0;
}

id sub_1C00FF400()
{
  sub_1C010074C(0, &qword_1EBE06638, 0x1E696ABC0);
  sub_1C01006C4();
  v1 = v0;
  v2 = sub_1C014C9D0();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = sub_1C014BB60();

  v6 = [v5 userInfo];
  v7 = sub_1C014C170();

  v8 = sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v16[2] = &v17;
  sub_1C01002DC(v9, sub_1C010072C, v16, v7);

  v10 = [v5 domain];
  if (!v10)
  {
    sub_1C014C230();
    v10 = sub_1C014C200();
  }

  v11 = [v5 code];
  v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v13 = sub_1C014C160();

  v14 = [v12 initWithDomain:v10 code:v11 userInfo:v13];

  return v14;
}

id Error.secureEncodableError()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, v2, a1);
  v8 = sub_1C014C9D0();
  if (v8)
  {
    v9 = v8;
    (*(v5 + 8))(v7, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v5 + 32))(v10, v7, a1);
  }

  v11 = sub_1C014BB60();

  v12 = [v11 userInfo];
  v13 = sub_1C014C170();

  v14 = sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  v15 = MEMORY[0x1EEE9AC00](v14);
  *&v22[-32] = a1;
  *&v22[-24] = a2;
  *&v22[-16] = v2;
  sub_1C01002DC(v15, sub_1C0100640, &v22[-48], v13);

  v16 = [v11 domain];
  if (!v16)
  {
    sub_1C014C230();
    v16 = sub_1C014C200();
  }

  v17 = [v11 code];
  v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v19 = sub_1C014C160();

  v20 = [v18 initWithDomain:v16 code:v17 userInfo:v19];

  return v20;
}

uint64_t sub_1C00FF8C0(uint64_t a1, uint64_t a2)
{
  sub_1C00F99B0(a2, v10, &qword_1EBE06630, &qword_1C0156528);
  v3 = v10[0];
  v2 = v10[1];
  sub_1C00F9954(&v11, v12);
  sub_1C00FC1C0(v12, v10);
  sub_1C010074C(0, &qword_1EBE06638, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v4 = sub_1C00FF400();
    swift_getErrorValue();
    *(&v11 + 1) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0);

    sub_1C00F7DC0(v10, v3, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  sub_1C00FFBF4(v12);
  if (v6)
  {
    sub_1C00FC1C0(v12, v10);
    sub_1C00F7DC0(v10, v3, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1C00FFA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C00F99B0(a2, v14, &qword_1EBE06630, &qword_1C0156528);
  v8 = v14[0];
  v7 = v14[1];
  sub_1C00F9954(&v15, v16);
  sub_1C00FC1C0(v16, v14);
  sub_1C010074C(0, &qword_1EBE06638, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v9 = sub_1C00FF400();
    swift_getErrorValue();
    *(&v15 + 1) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0);

    sub_1C00F7DC0(v14, v8, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  if (sub_1C00FFFE0(v16, a4, a5))
  {
    sub_1C00FC1C0(v16, v14);
    sub_1C00F7DC0(v14, v8, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

void sub_1C00FFBF4(uint64_t a1)
{
  sub_1C00FC1C0(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06CC0, &unk_1C0157CA0);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1C00FC1C0(a1, v24);
    sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
    v2 = swift_dynamicCast();
    if (v2)
    {
      v3 = *&v23[0];
      MEMORY[0x1EEE9AC00](v2);
      v16 = v25;
      v4 = sub_1C0100898;
      v5 = MEMORY[0x1E6969F48];
LABEL_7:
      sub_1C00FF288(v4, &v15, v5);

      return;
    }

    sub_1C00FC1C0(a1, v24);
    sub_1C010074C(0, &qword_1EBE06648, 0x1E695DFD8);
    v6 = swift_dynamicCast();
    if (v6)
    {
      v3 = *&v23[0];
      MEMORY[0x1EEE9AC00](v6);
      v16 = v25;
      v4 = sub_1C0100794;
      v5 = MEMORY[0x1E6969F38];
      goto LABEL_7;
    }

    sub_1C00FC1C0(a1, v24);
    sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v18 = *&v23[0];
      v7 = [*&v23[0] allKeys];
      v8 = sub_1C014C3C0();

      v9 = *(v8 + 16);
      v19 = v8;
      v10 = v8 + 32;
      v17 = -v9;
      v11 = -1;
      while (1)
      {
        if (v17 + v11 == -1)
        {
          goto LABEL_22;
        }

        if (++v11 >= *(v19 + 16))
        {
          break;
        }

        sub_1C00FC1C0(v10, v24);
        sub_1C00FC1C0(v24, v23);
        if (!swift_dynamicCast())
        {
          goto LABEL_21;
        }

        v23[0] = v21;
        v12 = [v18 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v12)
        {
          sub_1C014C6E0();
          swift_unknownObjectRelease();
        }

        else
        {
          memset(v23, 0, sizeof(v23));
        }

        sub_1C00F99B0(v23, &v21, &qword_1EBE06490, &qword_1C0155FA0);
        if (!v22)
        {
          sub_1C00F98F4(v23, &qword_1EBE06490, &qword_1C0155FA0);
LABEL_21:
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
LABEL_22:

          return;
        }

        v10 += 32;
        sub_1C00F9954(&v21, v20);
        sub_1C00FFBF4(v20);
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        sub_1C00F98F4(v23, &qword_1EBE06490, &qword_1C0155FA0);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        if ((v14 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1C00FFFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C00FC1C0(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06CC0, &unk_1C0157CA0);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    return v11 & 1;
  }

  swift_unknownObjectRelease();
  sub_1C00FC1C0(a1, v26);
  sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v25;
    MEMORY[0x1EEE9AC00](v7);
    v21 = a2;
    v22 = a3;
    v23 = v3;
    v9 = sub_1C01008B4;
    v10 = MEMORY[0x1E6969F48];
LABEL_7:
    v11 = sub_1C00FF288(v9, &v20, v10);

    return v11 & 1;
  }

  sub_1C00FC1C0(a1, v26);
  sub_1C010074C(0, &qword_1EBE06648, 0x1E695DFD8);
  v12 = swift_dynamicCast();
  if (v12)
  {
    v8 = v25;
    MEMORY[0x1EEE9AC00](v12);
    v21 = a2;
    v22 = a3;
    v23 = v3;
    v9 = sub_1C0100820;
    v10 = MEMORY[0x1E6969F38];
    goto LABEL_7;
  }

  sub_1C00FC1C0(a1, v26);
  sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
  if (!swift_dynamicCast())
  {
    v11 = 1;
    return v11 & 1;
  }

  v24 = a3;
  v14 = [v25 allKeys];
  v15 = sub_1C014C3C0();

  v16 = v15 + 32;
  v17 = -*(v15 + 16);
  v18 = -1;
  while (1)
  {
    v11 = v17 + v18 == -1;
    if (v17 + v18 == -1)
    {
LABEL_14:

      return v11 & 1;
    }

    if (++v18 >= *(v15 + 16))
    {
      break;
    }

    sub_1C00FC1C0(v16, v26);
    v19 = sub_1C0100434(v26, v25);
    v16 += 32;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __break(1u);
  return result;
}

uint64_t sub_1C01002DC(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1C00FC1C0(*(a4 + 56) + 32 * v15, &v21);
    v20[0] = v17;
    v20[1] = v18;

    a2(&v22, v20);
    result = sub_1C00F98F4(v20, &qword_1EBE06630, &qword_1C0156528);
    if (v4)
    {
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v22;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0100434(uint64_t a1, void *a2)
{
  sub_1C00FC1C0(a1, v8);
  if (swift_dynamicCast())
  {
    v8[0] = v7;
    v3 = [a2 __swift_objectForKeyedSubscript_];
    v4 = swift_unknownObjectRelease();
    if (v3)
    {
      sub_1C014C6E0();
      v4 = swift_unknownObjectRelease();
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1C0100594(sub_1C0100854);
    sub_1C00F98F4(v8, &qword_1EBE06490, &qword_1C0155FA0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C0100594(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  sub_1C00F99B0(v1, &v6, &qword_1EBE06490, &qword_1C0155FA0);
  if (!v7)
  {
    return 2;
  }

  sub_1C00F9954(&v6, v5);
  a1(&v8, v5);
  if (v2)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    return v8;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1C01006C4()
{
  result = qword_1EBE06640;
  if (!qword_1EBE06640)
  {
    sub_1C010074C(255, &qword_1EBE06638, 0x1E696ABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06640);
  }

  return result;
}

uint64_t sub_1C010074C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1C01007C8()
{
  result = qword_1EBE06650;
  if (!qword_1EBE06650)
  {
    sub_1C014BB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06650);
  }

  return result;
}

uint64_t sub_1C0100854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C00FFFE0(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result & 1;
  return result;
}

id sub_1C01008D0()
{
  result = [objc_allocWithZone(type metadata accessor for TPSAnalyticsChecklistSessionController(0)) init];
  qword_1EBE05CA0 = result;
  return result;
}

id TPSAnalyticsChecklistSessionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TPSAnalyticsChecklistSessionController.sharedInstance.getter()
{
  if (qword_1EBE05C98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBE05CA0;

  return v1;
}

uint64_t sub_1C0100A38()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C0100AD0(char a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1C0100BC8()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C0100C60(char a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1C0100D10()
{
  v1 = v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  swift_beginAccess();
  return *v1;
}

void sub_1C0100D5C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1C0100E64()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C0100EFC(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1C0100FF4()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C010108C(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1C010113C()
{
  v1 = v0;
  v2 = sub_1C014BD40();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  if ((v0[v6] & 1) == 0)
  {
    type metadata accessor for TipsDefaultsManager();
    sub_1C01254E8(33, &aBlock);
    if (v21)
    {
      if ((swift_dynamicCast() & 1) != 0 && v18 != 0.0)
      {
        *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout] = v18;
      }
    }

    else
    {
      sub_1C00F98F4(&aBlock, &qword_1EBE06490, &qword_1C0155FA0);
    }

    if (qword_1EDD44C28 != -1)
    {
      swift_once();
    }

    aBlock._countAndFlagsBits = qword_1EDD44C30;
    v7._countAndFlagsBits = 0xD000000000000031;
    v7._object = 0x80000001C015B7B0;
    TipsLog.log(_:)(v7);
    v8 = objc_opt_self();
    sub_1C014BD30();
    v9 = sub_1C014BCE0();
    (*(v3 + 8))(v5, v2);
    v10 = sub_1C014C200();
    [v8 persistObject:v9 forKey:v10];

    v1[v6] = 1;
    v11 = objc_opt_self();
    v12 = *&v1[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout];
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v22 = sub_1C010223C;
    v23 = v13;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v20 = sub_1C0101578;
    v21 = &block_descriptor;
    v14 = _Block_copy(&aBlock);
    v15 = v1;

    v16 = [v11 scheduledTimerWithTimeInterval:0 repeats:v14 block:v12];
    _Block_release(v14);
    v17 = *&v15[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer];
    *&v15[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer] = v16;
  }
}

uint64_t sub_1C0101474(uint64_t a1, uint64_t a2)
{
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000026, 0x80000001C015BA90);
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout;
  sub_1C014C4D0();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  TipsLog.log(_:)(v4);

  *(a2 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) = *(a2 + v3);
  return sub_1C0101A1C();
}

void sub_1C0101578(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C0101628()
{
  v1 = sub_1C014BD40();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = objc_opt_self();
  v15 = sub_1C014C200();
  v16 = [v14 persistedObjectForKey_];

  if (v16)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    v17 = swift_dynamicCast();
    (*(v2 + 56))(v13, v17 ^ 1u, 1, v1);
  }

  else
  {
    sub_1C00F98F4(v25, &qword_1EBE06490, &qword_1C0155FA0);
    (*(v2 + 56))(v13, 1, 1, v1);
  }

  sub_1C010225C(v13, v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_1C00F98F4(v11, &qword_1EBE06688, &qword_1C0156730);
  }

  else
  {
    (*(v2 + 32))(v7, v11, v1);
    sub_1C014BD30();
    sub_1C014BCD0();
    v19 = v18;
    v20 = *(v2 + 8);
    v20(v5, v1);
    if (v19 >= 600.0)
    {
      if (qword_1EDD44C28 != -1)
      {
        swift_once();
      }

      *&v25[0] = qword_1EDD44C30;
      v21._countAndFlagsBits = 0xD000000000000033;
      v21._object = 0x80000001C015B830;
      TipsLog.log(_:)(v21);
      *(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) = 0x4082C00000000000;
      sub_1C0101A1C();
    }

    v20(v7, v1);
  }

  return sub_1C00F98F4(v13, &qword_1EBE06688, &qword_1C0156730);
}

uint64_t sub_1C0101A1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v34 - v2 + 40;
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - v9 + 40;
  v11 = objc_opt_self();
  v12 = sub_1C014C200();
  v13 = [v11 persistedObjectForKey_];

  if (v13)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_1C00F98F4(v37, &qword_1EBE06490, &qword_1C0155FA0);
    (*(v5 + 56))(v3, 1, 1, v4);
    return sub_1C00F98F4(v3, &qword_1EBE06688, &qword_1C0156730);
  }

  v14 = swift_dynamicCast();
  (*(v5 + 56))(v3, v14 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1C00F98F4(v3, &qword_1EBE06688, &qword_1C0156730);
  }

  (*(v5 + 32))(v10, v3, v4);
  v15 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  if (*(v0 + v15) == 1)
  {
    v16 = (v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount);
    swift_beginAccess();
    if (*(v16 + 8) != 1)
    {
      v33 = *v16;
      [*(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer) invalidate];
      v17 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent;
      v18 = v0;
      if (*(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) == 0.0)
      {
        if (qword_1EDD44C28 != -1)
        {
          swift_once();
        }

        v34[0] = qword_1EDD44C30;
        v19._countAndFlagsBits = 0xD000000000000046;
        v19._object = 0x80000001C015B890;
        TipsLog.log(_:)(v19);
        sub_1C014BD30();
        sub_1C014BCD0();
        v21 = v20;
        (*(v5 + 8))(v8, v4);
        *(v0 + v17) = v21;
      }

      if (qword_1EDD44C28 != -1)
      {
        swift_once();
      }

      v34[0] = qword_1EDD44C30;
      v22._countAndFlagsBits = 0xD00000000000001FLL;
      v22._object = 0x80000001C015B870;
      TipsLog.log(_:)(v22);
      v23 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
      v24 = v18;
      swift_beginAccess();
      v25 = *(v18 + v23);
      v26 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
      swift_beginAccess();
      v27 = *(v18 + v26);
      v28 = *(v24 + v17);
      v29 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
      swift_beginAccess();
      v30 = *(v24 + v29);
      type metadata accessor for TPSAnalyticsChecklistSession();
      v31 = swift_allocObject();
      *(v31 + 69) = 0;
      *(v31 + 40) = v33;
      *(v31 + 48) = v25;
      *(v31 + 56) = v27;
      *(v31 + 64) = v28;
      *(v31 + 68) = v30;
      TipsAnalyticsEvent.init(identifier:)(0xD000000000000020, 0x80000001C015B440);
      sub_1C012921C();

      sub_1C0101F54();
    }
  }

  return (*(v5 + 8))(v10, v4);
}

void sub_1C0101F54()
{
  v1 = v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) = 0;
  v2 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  *(v0 + v2) = 0;
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  *(v0 + v3) = 0;
  v4 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  *(v0 + v4) = 0;
  v5 = objc_opt_self();
  v6 = sub_1C014C530();
  v7 = sub_1C014C200();
  [v5 persistObject:v6 forKey:v7];
}

id TPSAnalyticsChecklistSessionController.init()()
{
  v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch] = 0;
  v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession] = 0;
  v1 = &v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount];
  *v1 = 0;
  v1[8] = 1;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount] = 0;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted] = 0;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent] = 0;
  v2 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartTime;
  v3 = sub_1C014BD40();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer] = 0;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout] = 0x409C200000000000;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionBackgroundTimeout] = 0x4082C00000000000;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TPSAnalyticsChecklistSessionController(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

id TPSAnalyticsChecklistSessionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAnalyticsChecklistSessionController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C010225C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TPSAnalyticsChecklistSessionController(uint64_t a1)
{
  result = qword_1EBE05C70;
  if (!qword_1EBE05C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void keypath_getTm_0(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void keypath_get_7Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_8Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void sub_1C0102468(uint64_t a1)
{
  sub_1C0102940(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C0102940(uint64_t a1)
{
  if (!qword_1EBE05D28)
  {
    sub_1C014BD40();
    v1 = sub_1C014C640();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE05D28);
    }
  }
}

uint64_t sub_1C0102998()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  v18._countAndFlagsBits = qword_1EBE06738;
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001C015BB00;
  TipsLog.info(_:)(v5);
  v6 = qword_1EBE06738;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1C014C800();

  v18._countAndFlagsBits = 0xD000000000000015;
  v18._object = 0x80000001C015BB30;
  v7 = (*(v0 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_searchQuery) + OBJC_IVAR___TPSSearchQuery_searchTerm);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  MEMORY[0x1C68D6B10](v8, v9);

  v10 = v18;
  v18._countAndFlagsBits = v6;
  TipsLog.debug(_:)(v10);

  sub_1C014BEA0();
  v11 = swift_allocBox();
  sub_1C014BE90();

  v12 = sub_1C014BE80();
  sub_1C014BDD0();
  v12(&v18, 0);
  type metadata accessor for TipsDefaultsManager();
  sub_1C01254E8(21, &v18);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      sub_1C014BE70();
    }
  }

  else
  {
    sub_1C00F98F4(&v18, &qword_1EBE06490, &qword_1C0155FA0);
  }

  v13 = sub_1C014C490();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v15[5] = v11;

  *(v1 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask) = sub_1C0103964(0, 0, v4, &unk_1C0156618, v15);
}

uint64_t sub_1C0102CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v6 = sub_1C014C0A0();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = sub_1C014C0D0();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_1C014BEA0();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = sub_1C014BEC0();
  v5[32] = v9;
  v10 = *(v9 - 8);
  v5[33] = v10;
  v5[34] = *(v10 + 64);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C0102EC0, 0, 0);
}

uint64_t sub_1C0102EC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[38] = Strong;
  if (Strong)
  {
    v2 = v0[37];
    v4 = v0[30];
    v3 = v0[31];
    v5 = v0[29];
    sub_1C014BEE0();
    swift_allocObject();
    v0[39] = sub_1C014BED0();
    swift_beginAccess();
    (*(v4 + 16))(v3, v2, v5);
    v11 = (*MEMORY[0x1E69BDB78] + MEMORY[0x1E69BDB78]);
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_1C0103070;
    v7 = v0[36];
    v8 = v0[31];

    return v11(v7, v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1C0103070()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  *(*v1 + 328) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1C01034CC;
  }

  else
  {
    v5 = sub_1C0103204;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C0103204()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[32];
  v5 = v0[25];
  v18 = v0[27];
  v19 = v0[26];
  v16 = v1;
  v17 = v0[24];
  v13 = v0[28];
  v14 = v0[23];
  v15 = v0[38];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v4;
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v3 + 32))(v9 + v8, v2, v7);
  v0[12] = sub_1C0104494;
  v0[13] = v9;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1C011431C;
  v0[11] = &block_descriptor_27;
  v10 = _Block_copy(v0 + 8);

  sub_1C014C0B0();
  v0[21] = MEMORY[0x1E69E7CC0];
  sub_1C0104390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C01043E8();
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v13, v5, v10);
  _Block_release(v10);
  (*(v17 + 8))(v5, v14);
  (*(v18 + 8))(v13, v19);
  (*(v3 + 8))(v16, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C01034CC()
{
  v1 = v0[41];
  v2 = v0[28];
  v3 = v0[25];
  v13 = v0[27];
  v14 = v0[26];
  v4 = v0[23];
  v11 = v0[24];
  v12 = v0[38];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_1C0104370;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C011431C;
  v0[5] = &block_descriptor_0;
  v7 = _Block_copy(v0 + 2);

  v8 = v1;
  sub_1C014C0B0();
  v0[20] = MEMORY[0x1E69E7CC0];
  sub_1C0104390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C01043E8();
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v2, v3, v7);
  _Block_release(v7);

  (*(v11 + 8))(v3, v4);
  (*(v13 + 8))(v2, v14);

  v9 = v0[1];

  return v9();
}

void sub_1C0103724(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C8, &qword_1C0156638);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_searchQuery);
    v8 = Strong;
    v9 = sub_1C014BEC0();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, a2, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v11 = sub_1C0106F24(v7, v5);
    sub_1C00F98F4(v5, &qword_1EBE066C8, &qword_1C0156638);
    v12 = *&v8[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion];

    v13 = v11;
    v12(v11, 0);
  }
}

char *sub_1C01038D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion];
    v5 = result;

    v4(0, a2);
  }

  return result;
}

uint64_t sub_1C0103964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C0103FA0(a3, v25 - v10);
  v12 = sub_1C014C490();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C00F98F4(v11, &qword_1EBE066B8, &qword_1C0156FE0);
  }

  else
  {
    sub_1C014C480();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C014C420();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C014C2B0() + 32;
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

      sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);

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

  sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);
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

id _s8TipsCore12SearchResultC4ItemCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C0103D74()
{
  if (*(*v0 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask))
  {

    sub_1C014C4A0();
  }
}

uint64_t sub_1C0103DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C0103EAC;

  return sub_1C0102CC8(a1, v4, v5, v7, v6);
}

uint64_t sub_1C0103EAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C0103FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0104010(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C0104108;

  return v6(a1);
}

uint64_t sub_1C0104108()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C0104200(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C01044FC;

  return sub_1C0104010(a1, v4);
}

uint64_t sub_1C01042B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0103EAC;

  return sub_1C0104010(a1, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C0104390()
{
  result = qword_1EBE05D10;
  if (!qword_1EBE05D10)
  {
    sub_1C014C0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D10);
  }

  return result;
}

unint64_t sub_1C01043E8()
{
  result = qword_1EBE05C68;
  if (!qword_1EBE05C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE066C0, &unk_1C01576F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05C68);
  }

  return result;
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

void sub_1C0104494()
{
  v1 = *(sub_1C014BEC0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1C0103724(v2, v3);
}

uint64_t sub_1C0104518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06498, &qword_1C0155FA8);
  v33 = v4;
  result = sub_1C014C900();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1C00F9954(v24, v34);
      }

      else
      {
        sub_1C00FC1C0(v24, v34);
      }

      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1C00F9954(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1C01047D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE063E8, &qword_1C0155F58);
  v34 = v4;
  result = sub_1C014C900();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C0104A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C014BD80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06488, &qword_1C0155F98);
  v39 = v4;
  result = sub_1C014C900();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
    v45 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v25 = *(v9 + 48);
      v42 = *(v6 + 72);
      v43 = v21;
      v26 = v25 + v42 * v24;
      if (v39)
      {
        (*v40)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
      }

      else
      {
        (*v37)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
      }

      sub_1C0107D64();
      result = sub_1C014C1A0();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v44, v45);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C0104E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06468, &qword_1C0155F78);
  v33 = v4;
  result = sub_1C014C900();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1C00F98DC(v24, v34);
      }

      else
      {
        sub_1C0107D00(v24, v34);
      }

      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1C00F98DC(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1C0105110(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_1C014C900();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1C01053AC(uint64_t *a1)
{
  v2 = *(sub_1C014BE60() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C0106954(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C0105454(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1C0105454(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C014C9B0();
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
        sub_1C014BE60();
        v6 = sub_1C014C3F0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C014BE60() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C0105820(v8, v9, a1, v4);
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
    return sub_1C0105580(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C0105580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C014BE60();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      v46(v48, v21, v8);
      v26 = v49;
      v25(v49, v23, v8);
      sub_1C014BDE0();
      v28 = v27;
      sub_1C014BDE0();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      result = v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C0105820(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v9 = sub_1C014BE60();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v137 = &v121 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v143 = &v121 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v142 = &v121 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_1C010685C(a3);
    }

    v144 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v134)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_1C0106230(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
        if (v6)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1C010685C(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_1C01067D0(a3 - 1);
        result = v144;
        a3 = *(v144 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v21 = MEMORY[0x1E69E7CC0];
  v133 = v10;
  v123 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v135 = v19;
      v128 = v6;
      v24 = v10[9];
      v5 = &(*v134)[v24 * v23];
      v131 = *v134;
      v25 = v131;
      v26 = v10[2];
      v27 = v142;
      v26(v142, &v131[v24 * v23], v9);
      v28 = &v25[v24 * v22];
      v29 = v143;
      v136 = v26;
      v26(v143, v28, v9);
      sub_1C014BDE0();
      v31 = v30;
      sub_1C014BDE0();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v140;
      v35(v29, v9);
      v132 = v35;
      result = (v35)(v27, v9);
      v122 = v34;
      v36 = v34 + 2;
      v138 = v24;
      v37 = &v131[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        a3 = v142;
        v39 = v136;
        v136(v142, v37, v9);
        v40 = v143;
        v39(v143, v5, v9);
        sub_1C014BDE0();
        v42 = v41;
        sub_1C014BDE0();
        v44 = v43;
        v45 = v132;
        (v132)(v40, v9);
        result = v45(a3, v9);
        v10 = v133;
        ++v36;
        v37 += v138;
        v5 += v138;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v127;
      v6 = v128;
      a4 = v123;
      v22 = v122;
      if (v33 < v31)
      {
        if (v38 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v38)
        {
          v47 = v38;
          a3 = v138 * (v38 - 1);
          v5 = v38 * v138;
          v135 = v38;
          v48 = v122 * v138;
          do
          {
            if (v22 != --v47)
            {
              v128 = v6;
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_131;
              }

              v50 = *v139;
              (*v139)(v126, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v50)(&v49[a3], v126, v9);
              v46 = v127;
              v6 = v128;
            }

            ++v22;
            a3 -= v138;
            v5 -= v138;
            v48 += v138;
          }

          while (v22 < v47);
          v10 = v133;
          a4 = v123;
          v22 = v122;
          v38 = v135;
        }
      }
    }

    v51 = v134[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v127;
    }

    else
    {
      result = sub_1C00FE794(0, *(v127 + 2) + 1, 1, v127);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      result = sub_1C00FE794((v52 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v124;
    if (!*v124)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
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

        if (!*v134)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_1C0106230(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1C010685C(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v144 = v93;
        result = sub_1C01067D0(v5);
        v21 = v144;
        v53 = *(v144 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    v20 = v129;
    a4 = v123;
    if (v129 >= v19)
    {
      goto LABEL_95;
    }
  }

  v128 = v6;
  v97 = *v134;
  v98 = v10[9];
  v138 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = (v100 - v38);
  v136 = v97;
  v125 = v98;
  v103 = &v97[v38 * v98];
  v129 = v5;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v104 = v103;
  v132 = v99;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v104, v9);
    v107 = v143;
    v106(v143, v99, v9);
    sub_1C014BDE0();
    v109 = v108;
    sub_1C014BDE0();
    v111 = v110;
    v112 = *v140;
    (*v140)(v107, v9);
    v113 = v105;
    a3 = v9;
    result = v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v135 + 1;
      v99 = &v132[v125];
      v102 = v131 - 1;
      v5 = v129;
      v103 = &v130[v125];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v128;
      v10 = v133;
      v22 = v122;
      if (v129 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
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

uint64_t sub_1C0106230(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_1C014BE60();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_1C014BDE0();
          v49 = v48;
          sub_1C014BDE0();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v51 < v49)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_1C014BDE0();
        v29 = v28;
        sub_1C014BDE0();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v31 >= v29)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_1C0106870(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_1C01067D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C010685C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C0106870(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1C014BE60();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1C01069A4(uint64_t a1)
{
  if (sub_1C014BE00() == 0x6369706F74 && v2 == 0xE500000000000000)
  {

LABEL_5:
    v4 = sub_1C014BE40();
    (*(*(v4 - 8) + 8))(a1, v4);
    return 0;
  }

  v3 = sub_1C014C9F0();

  if (v3)
  {
    goto LABEL_5;
  }

  if (sub_1C014BE00() == 0x656C6369747261 && v6 == 0xE700000000000000)
  {

    v7 = sub_1C014BE40();
    (*(*(v7 - 8) + 8))(a1, v7);
    return 1;
  }

  else
  {
    v8 = sub_1C014C9F0();

    v9 = sub_1C014BE40();
    (*(*(v9 - 8) + 8))(a1, v9);
    if (v8)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

char *sub_1C0106B34(uint64_t a1)
{
  v2 = sub_1C014BE40();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  v6 = sub_1C01069A4(v4);
  if (v6 == 2)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = sub_1C014BE10();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = sub_1C014BE30();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = sub_1C014BE10();
    v18 = v17;
    v19 = sub_1C014BE20();
    v21 = v20;
    v22 = type metadata accessor for SearchResult.Item();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v23[OBJC_IVAR___TPSSearchResultItem_contentType];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v23[OBJC_IVAR___TPSSearchResultItem_title];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v23[OBJC_IVAR___TPSSearchResultItem_body];
    *v27 = 0;
    *(v27 + 1) = 0;
    *&v23[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
    v28 = &v23[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
    *v28 = v16;
    v28[1] = v18;
    v29 = &v23[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
    *v29 = v19;
    v29[1] = v21;
    v51.receiver = v23;
    v51.super_class = v22;
    v30 = objc_msgSendSuper2(&v51, sel_init);
    v31 = sub_1C014BE30();
    v33 = v32;
    v34 = &v30[OBJC_IVAR___TPSSearchResultItem_title];
    swift_beginAccess();
    *v34 = v31;
    v34[1] = v33;

    v35 = sub_1C014BDF0();
    v37 = v36;
    v38 = &v30[OBJC_IVAR___TPSSearchResultItem_body];
    swift_beginAccess();
    *v38 = v35;
    v38[1] = v37;

    if (v7)
    {
      v39 = 0xD000000000000019;
    }

    else
    {
      v39 = 0xD000000000000014;
    }

    if (v7)
    {
      v40 = "T@NSString,N,C";
    }

    else
    {
      v40 = "rom pegasus response: ";
    }

    v41 = v40 | 0x8000000000000000;
    v42 = &v30[OBJC_IVAR___TPSSearchResultItem_contentType];
    swift_beginAccess();
    *v42 = v39;
    v42[1] = v41;

    return v30;
  }

  else
  {
LABEL_15:
    if (qword_1EBE06360 != -1)
    {
      swift_once();
    }

    v44 = qword_1EBE06738;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    sub_1C014C800();

    v50._countAndFlagsBits = 0xD000000000000026;
    v50._object = 0x80000001C015BB70;
    v45 = sub_1C014BE10();
    MEMORY[0x1C68D6B10](v45);

    MEMORY[0x1C68D6B10](2108704, 0xE300000000000000);
    v46 = sub_1C014BE30();
    MEMORY[0x1C68D6B10](v46);

    MEMORY[0x1C68D6B10](2108704, 0xE300000000000000);
    v47 = sub_1C014BE00();
    MEMORY[0x1C68D6B10](v47);

    v48 = v50;
    v50._countAndFlagsBits = v44;
    TipsLog.debug(_:)(v48);

    return 0;
  }
}

char *sub_1C0106F24(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v105 - v8;
  v9 = sub_1C014BE40();
  v10 = *(v9 - 8);
  v119 = v9;
  v120 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = (&v105 - v13);
  v14 = sub_1C014BE60();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C8, &qword_1C0156638);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v105 - v19;
  v21 = sub_1C014BEC0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0107C20(a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1C00F98F4(v20, &qword_1EBE066C8, &qword_1C0156638);
    v25 = *(v15 + 56);
    v25(v7, 1, 1, v14);
    v26 = type metadata accessor for SearchResult(0);
    v27 = objc_allocWithZone(v26);
    v28 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
    v25(&v27[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v14);
    v29 = OBJC_IVAR___TPSSearchResult_items;
    v30 = MEMORY[0x1E69E7CC0];
    *&v27[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
    v31 = OBJC_IVAR___TPSSearchResult_suggestions;
    *&v27[OBJC_IVAR___TPSSearchResult_suggestions] = v30;
    *&v27[OBJC_IVAR___TPSSearchResult_query] = a1;
    swift_beginAccess();
    *&v27[v29] = v30;
    swift_beginAccess();
    *&v27[v31] = v30;
    swift_beginAccess();
    v32 = a1;
    sub_1C0107C90(v7, &v27[v28]);
    swift_endAccess();
    v124.receiver = v27;
    v124.super_class = v26;
    v33 = objc_msgSendSuper2(&v124, sel_init);
    sub_1C00F98F4(v7, &qword_1EBE066D0, &unk_1C0156640);
    return v33;
  }

  (*(v22 + 32))(v24, v20, v21);
  v126 = sub_1C014BEB0();

  v34 = 0;
  sub_1C01053AC(&v126);
  v106 = v22;
  v107 = v21;
  v115 = a1;

  v35 = v126;
  v36 = MEMORY[0x1E69E7CC0];
  v112 = sub_1C00F930C(MEMORY[0x1E69E7CC0]);
  v123 = v36;
  v37 = *(v35 + 16);
  v121 = v24;
  v108 = v15;
  v110 = v35;
  v109 = v37;
  if (v37)
  {
    v39 = *(v15 + 16);
    v38 = v15 + 16;
    v117 = v39;
    v40 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v116 = *(v38 + 56);
    v118 = v38;
    v41 = (v38 - 8);
    v42 = MEMORY[0x1E69E7CC0];
    v39(v17, v40, v14);
    while (1)
    {
      v43 = sub_1C014BE50();
      v34 = v14;
      (*v41)(v17, v14);
      v44 = *(v43 + 16);
      v45 = v42[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v46 > v42[3] >> 1)
      {
        if (v45 <= v46)
        {
          v48 = v45 + v44;
        }

        else
        {
          v48 = v45;
        }

        v42 = sub_1C00FE590(isUniquelyReferenced_nonNull_native, v48, 1, v42);
      }

      v14 = v34;
      v24 = v121;
      if (*(v43 + 16))
      {
        if ((v42[3] >> 1) - v42[2] < v44)
        {
          goto LABEL_65;
        }

        swift_arrayInitWithCopy();

        if (v44)
        {
          v49 = v42[2];
          v50 = __OFADD__(v49, v44);
          v51 = v49 + v44;
          if (v50)
          {
            goto LABEL_67;
          }

          v42[2] = v51;
        }
      }

      else
      {

        if (v44)
        {
          goto LABEL_64;
        }
      }

      v40 += v116;
      if (!--v37)
      {
        goto LABEL_21;
      }

      v117(v17, v40, v34);
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v42 = v36;
LABEL_21:
  v105 = v14;
  v52 = v42[2];
  if (v52)
  {
    v126 = MEMORY[0x1E69E7CC0];
    sub_1C0109050(0, v52, 0);
    v53 = v126;
    v117 = *(v120 + 16);
    v116 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v54 = v42 + v116;
    v55 = *(v120 + 72);
    v118 = v120 + 16;
    v56 = (v120 + 32);
    v57 = v119;
    v34 = v114;
    do
    {
      v117(v34, v54, v57);
      v126 = v53;
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1C0109050((v58 > 1), v59 + 1, 1);
        v57 = v119;
        v53 = v126;
      }

      *(v53 + 16) = v59 + 1;
      (*v56)(v53 + v116 + v59 * v55, v34, v57);
      v54 += v55;
      --v52;
    }

    while (v52);

    v24 = v121;
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
    v57 = v119;
  }

  v60 = *(v53 + 16);
  v118 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v61 = MEMORY[0x1E69E7CC0];
  v62 = v113;
  v63 = v112;
  v117 = v60;
  if (v60)
  {
    v34 = 0;
    v116 = v120 + 16;
    v114 = (v120 + 8);
    do
    {
      if (v34 >= *(v53 + 16))
      {
        goto LABEL_66;
      }

      (*(v120 + 16))(v62, v53 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v34, v57);
      if (v61 >> 62)
      {
        v64 = sub_1C014C750();
      }

      else
      {
        v64 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v64 >= *&v115[v118])
      {
        (*v114)(v62, v57);
        break;
      }

      v65 = sub_1C014BE10();
      if (*(v63 + 16))
      {
        v67 = sub_1C012EBF4(v65, v66);
        v69 = v68;

        if (v69 & 1) != 0 && (*(*(v63 + 56) + v67))
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v70 = sub_1C0106B34(v62);
      if (v70)
      {
        v71 = v63;
        v72 = v70;
        MEMORY[0x1C68D6BB0]();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C014C3E0();
        }

        sub_1C014C400();
        v61 = v123;
        v73 = sub_1C014BE10();
        v75 = v74;
        v76 = v71;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v125 = v71;
        v78 = sub_1C012EBF4(v73, v75);
        v80 = v71[2];
        v81 = (v79 & 1) == 0;
        v50 = __OFADD__(v80, v81);
        v82 = v80 + v81;
        if (v50)
        {
          goto LABEL_68;
        }

        v83 = v79;
        if (v76[3] >= v82)
        {
          v57 = v119;
          if ((v77 & 1) == 0)
          {
            v90 = v78;
            sub_1C012FAA8();
            v57 = v119;
            v78 = v90;
          }

          v24 = v121;
          v85 = v125;
          if ((v83 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          sub_1C01047D0(v82, v77);
          v78 = sub_1C012EBF4(v73, v75);
          if ((v83 & 1) != (v84 & 1))
          {
            goto LABEL_71;
          }

          v24 = v121;
          v57 = v119;
          v85 = v125;
          if ((v83 & 1) == 0)
          {
LABEL_48:
            v85[(v78 >> 6) + 8] |= 1 << v78;
            v86 = (v85[6] + 16 * v78);
            *v86 = v73;
            v86[1] = v75;
            *(v85[7] + v78) = 1;
            v87 = v85[2];
            v50 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (v50)
            {
              goto LABEL_69;
            }

            v89 = v85;
            v85[2] = v88;

            goto LABEL_54;
          }
        }

        v89 = v85;
        *(v85[7] + v78) = 1;

LABEL_54:
        v62 = v113;
        (*v114)(v113, v57);
        v63 = v89;
        goto LABEL_31;
      }

LABEL_30:
      v57 = v119;
      (*v114)(v62, v119);
LABEL_31:
      ++v34;
    }

    while (v117 != v34);
  }

  v112 = v63;

  if (!v109)
  {

    v94 = 1;
    v91 = v111;
    v93 = v105;
    v92 = v108;
    goto LABEL_61;
  }

  v91 = v111;
  if (*(v110 + 16))
  {
    v92 = v108;
    v93 = v105;
    (*(v108 + 16))(v111, v110 + ((*(v108 + 80) + 32) & ~*(v108 + 80)), v105);

    v94 = 0;
LABEL_61:
    v95 = *(v92 + 56);
    v95(v91, v94, 1, v93);
    v96 = type metadata accessor for SearchResult(0);
    v97 = objc_allocWithZone(v96);
    v98 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
    v95(&v97[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v93);
    v99 = OBJC_IVAR___TPSSearchResult_items;
    v100 = MEMORY[0x1E69E7CC0];
    *&v97[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
    v101 = OBJC_IVAR___TPSSearchResult_suggestions;
    *&v97[OBJC_IVAR___TPSSearchResult_suggestions] = v100;
    v102 = v115;
    *&v97[OBJC_IVAR___TPSSearchResult_query] = v115;
    swift_beginAccess();
    *&v97[v99] = v61;
    swift_beginAccess();
    *&v97[v101] = v100;
    swift_beginAccess();
    v103 = v102;
    sub_1C0107C90(v91, &v97[v98]);
    swift_endAccess();
    v122.receiver = v97;
    v122.super_class = v96;
    v33 = objc_msgSendSuper2(&v122, sel_init);
    sub_1C00F98F4(v91, &qword_1EBE066D0, &unk_1C0156640);
    (*(v106 + 8))(v24, v107);

    return v33;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  sub_1C014CA60();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C0107C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C8, &qword_1C0156638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0107C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0107D00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C0107D64()
{
  result = qword_1EBE05D20;
  if (!qword_1EBE05D20)
  {
    sub_1C014BD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D20);
  }

  return result;
}

uint64_t sub_1C0107E0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0107F50();
  sub_1C014BF00();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C0107EC8()
{
  swift_getKeyPath();
  sub_1C0107F50();
  sub_1C014BF00();

  swift_beginAccess();
}

unint64_t sub_1C0107F50()
{
  result = qword_1EBE05CC0;
  if (!qword_1EBE05CC0)
  {
    type metadata accessor for SupportFlowSearchResultsProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05CC0);
  }

  return result;
}

uint64_t type metadata accessor for SupportFlowSearchResultsProvider(uint64_t a1)
{
  result = qword_1EBE05CB0;
  if (!qword_1EBE05CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0107FF4(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C010A0FC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0107F50();
    sub_1C014BEF0();
  }
}

uint64_t sub_1C010810C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_1C0108174(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8TipsCore32SupportFlowSearchResultsProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C0107F50();
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  v4[7] = sub_1C0107DBC(v4);
  return sub_1C010827C;
}

void sub_1C010827C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C014BF10();

  free(v1);
}

uint64_t SupportFlowSearchResultsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  return v0;
}

uint64_t SupportFlowSearchResultsProvider.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  return v0;
}

uint64_t SupportFlowSearchResultsProvider.__allocating_init(supportFlows:)(unint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  sub_1C0107FF4(a1);
  return v2;
}

uint64_t SupportFlowSearchResultsProvider.init(supportFlows:)(unint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  sub_1C0107FF4(a1);
  return v1;
}

uint64_t sub_1C0108438(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D8, &qword_1C0156680);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C01084D8, 0, 0);
}

unint64_t sub_1C01084D8()
{
  v79 = v0;
  v1 = v0[11];
  v65 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
LABEL_58:

    v58 = v0[1];

    return v58(v65);
  }

  v2 = v0[12];
  v69 = sub_1C010A358(v0[10], v1);
  swift_getKeyPath();
  v0[9] = v2;
  sub_1C0107F50();
  sub_1C014BF00();

  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
LABEL_40:
    v4 = sub_1C014C750();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_41:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v43 = 0;
    v44 = *(v6 + 16);
    v45 = MEMORY[0x1E69E7CC0];
LABEL_43:
    v46 = (v6 + 40 + 16 * v43);
    while (v44 != v43)
    {
      if (v43 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v47 = v46 + 2;
      ++v43;
      v48 = *v46;
      v46 += 2;
      if (v48 > 0)
      {
        v49 = *(v47 - 3);
        result = swift_isUniquelyReferenced_nonNull_native();
        v78[0] = v45;
        if ((result & 1) == 0)
        {
          result = sub_1C0109094(0, *(v45 + 16) + 1, 1);
          v45 = v78[0];
        }

        v51 = *(v45 + 16);
        v50 = *(v45 + 24);
        if (v51 >= v50 >> 1)
        {
          result = sub_1C0109094((v50 > 1), v51 + 1, 1);
          v45 = v78[0];
        }

        *(v45 + 16) = v51 + 1;
        v52 = v45 + 16 * v51;
        *(v52 + 32) = v49;
        *(v52 + 40) = v48;
        goto LABEL_43;
      }
    }

    v78[0] = v45;

    sub_1C0109770(v78);

    v53 = v78[0];
    v54 = *(v78[0] + 16);
    if (v54)
    {
      v78[0] = MEMORY[0x1E69E7CC0];
      sub_1C014C880();
      v55 = 32;
      do
      {
        v56 = *(v53 + v55);
        sub_1C014C860();
        sub_1C014C890();
        sub_1C014C8A0();
        sub_1C014C870();
        v55 += 16;
        --v54;
      }

      while (v54);

      v57 = v78[0];
    }

    else
    {

      v57 = MEMORY[0x1E69E7CC0];
    }

    v65 = v57;
    goto LABEL_58;
  }

LABEL_4:
  v76 = MEMORY[0x1E69E7CC0];

  result = sub_1C0109094(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    goto LABEL_64;
  }

  v63 = v4;
  v64 = v3;
  result = 0;
  v6 = v76;
  v66 = v3 & 0xC000000000000001;
  v61 = v3 + 32;
  v62 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v67 = result;
    v68 = v6;
    if (v66)
    {
      v7 = MEMORY[0x1C68D7040](result, v3);
      goto LABEL_11;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v62 + 16))
    {
      goto LABEL_63;
    }

    v7 = *(v61 + 8 * result);
LABEL_11:
    v8 = v7;
    v77 = MEMORY[0x1E69E7CC0];
    v9 = [v7 title];
    v70 = v8;
    if (v9)
    {
      v10 = v9;
      v11 = sub_1C014C230();
      v13 = v12;

      v14 = sub_1C010A358(v11, v13);
      v8 = v70;

      sub_1C0108E4C(v14);
    }

    v15 = [v8 tileContent];
    v16 = [v15 bodyText];

    if (v16 || (v17 = objc_opt_self(), v3 = [v8 tileContent], v18 = objc_msgSend(v3, sel_bodyContent), v3, v16 = objc_msgSend(v17, sel_textRepresentationForContent_, v18), v18, v16))
    {
      v19 = sub_1C014C230();
      v21 = v20;

      v3 = sub_1C010A358(v19, v21);

      sub_1C0108E4C(v3);
    }

    v22 = 0;
    v23 = 0;
    v71 = *(v69 + 16);
    while (v22 != v71)
    {
      v72 = v22;
      v73 = v23;
      v25 = (v69 + 32 + 16 * v22);
      v6 = v25[1];
      v75 = *v25;
      v26 = *(v77 + 16);

      if (v26)
      {
        v27 = 0;
        v28 = -v26;
        v29 = v77 + 40;
        v30 = MEMORY[0x1E69E7CC0];
        do
        {
          v74 = v30;
          v31 = (v29 + 16 * v27++);
          while (1)
          {
            if ((v27 - 1) >= *(v77 + 16))
            {
              __break(1u);
              goto LABEL_38;
            }

            v32 = v0[13];
            v3 = *(v31 - 1);
            v33 = *v31;
            v0[5] = v3;
            v0[6] = v33;
            v0[7] = v75;
            v0[8] = v6;

            sub_1C014BDB0();
            v34 = sub_1C014BDC0();
            (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
            v59 = sub_1C00FCDA8();
            v60 = v59;
            sub_1C014C6D0();
            v36 = v35;
            sub_1C010A448(v32);
            if ((v36 & 1) == 0)
            {
              break;
            }

            ++v27;
            v31 += 2;
            if (v28 + v27 == 1)
            {
              v30 = v74;
              goto LABEL_17;
            }
          }

          v30 = v74;
          v78[0] = v74;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C01090B4(0, *(v74 + 16) + 1, 1);
            v30 = v78[0];
          }

          v38 = *(v30 + 16);
          v37 = *(v30 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1C01090B4((v37 > 1), v38 + 1, 1);
            v30 = v78[0];
          }

          *(v30 + 16) = v38 + 1;
          v39 = v30 + 16 * v38;
          *(v39 + 32) = v3;
          *(v39 + 40) = v33;
          v29 = v77 + 40;
        }

        while (v28 + v27);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

LABEL_17:
      v22 = v72 + 1;

      v24 = *(v30 + 16);

      v23 = v73 + v24;
      if (__OFADD__(v73, v24))
      {
        __break(1u);
        goto LABEL_40;
      }
    }

    v6 = v68;
    v41 = *(v68 + 16);
    v40 = *(v68 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_1C0109094((v40 > 1), v41 + 1, 1);
      v6 = v68;
    }

    result = v67 + 1;
    *(v6 + 16) = v41 + 1;
    v42 = v6 + 16 * v41;
    *(v42 + 32) = v70;
    *(v42 + 40) = v23;
    v3 = v64;
    if (v67 + 1 == v63)
    {
LABEL_38:

      goto LABEL_42;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1C0108C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = sub_1C014C390();
  v8 = MEMORY[0x1C68D6AD0](v7);
  v10 = v9;

  if (sub_1C014C2F0() < 3)
  {
  }

  else
  {
    v11 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1C00FE898(0, *(v11 + 2) + 1, 1, v11);
      *a6 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1C00FE898((v13 > 1), v14 + 1, 1, v11);
      *a6 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v8;
    *(v15 + 5) = v10;
  }

  return 1;
}

uint64_t SupportFlowSearchResultsProvider.deinit()
{

  v1 = OBJC_IVAR____TtC8TipsCore32SupportFlowSearchResultsProvider___observationRegistrar;
  v2 = sub_1C014BF40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SupportFlowSearchResultsProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8TipsCore32SupportFlowSearchResultsProvider___observationRegistrar;
  v2 = sub_1C014BF40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

char *sub_1C0108E4C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C00FE898(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0108F40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C014C750();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C014C750();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C01098CC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C0138524(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1C0109030(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C01090D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0109050(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C010920C(a1, a2, a3, *v3, &qword_1EBE06600, &qword_1C01566F0, MEMORY[0x1E69BCD90]);
  *v3 = result;
  return result;
}

void *sub_1C0109094(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C01093E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C01090B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C010951C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C01090D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06710, &qword_1C0156728);
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

void *sub_1C010920C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1C01093E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06700, &qword_1C0156718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F8, &qword_1C0156710);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C010951C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
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

void *sub_1C0109628(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066E8, &unk_1C0156700);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F0, &qword_1C0157200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0109770(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C0106968(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1C014C9B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F8, &qword_1C0156710);
      v7 = sub_1C014C3F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C010996C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C01098CC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C014C750();
LABEL_9:
  result = sub_1C014C840();
  *v2 = result;
  return result;
}

uint64_t sub_1C010996C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C010685C(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1C0109EF8((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C00FE794(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1C00FE794((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1C0109EF8((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}