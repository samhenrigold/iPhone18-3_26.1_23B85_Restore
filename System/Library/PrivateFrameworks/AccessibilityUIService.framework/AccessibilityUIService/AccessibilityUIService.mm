uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23DBD3380@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23DBD343C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DBD347C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23DBD4404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD4774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _preboardScenarioChanged()
{
  result = AXInPreboardScenario();
  if ((result & 1) == 0)
  {
    _AXLogWithFacility();
    exit(0);
  }

  return result;
}

void _AXUIServiceManagerHandleConnection(void *a1)
{
  v3 = a1;
  v1 = objc_autoreleasePoolPush();
  v2 = +[AXUIServiceManager sharedServiceManager];
  [v2 _handleConnection:v3];

  objc_autoreleasePoolPop(v1);
}

void sub_23DBD541C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_23DBD68D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD7AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23DBD7D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD9A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBDC684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23DBDD338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBDD5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBDF258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBE022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBE0A68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_23DBE14E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23DBE1960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23DBE2EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id _AXUIPointerEventFromHIDEvent(const void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && (v2 = CFGetTypeID(a1), v2 == IOHIDEventGetTypeID()))
  {
    if (IOHIDEventGetType() == 17)
    {
      v3 = [MEMORY[0x277CE7D80] representationWithHIDEvent:a1 hidStreamIdentifier:@"AXUIEventManagerHIDStream"];
    }

    else
    {
      IOHIDEventGetChildren();
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = v14 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = _AXUIPointerEventFromHIDEvent(*(*(&v11 + 1) + 8 * i));
            if (v10)
            {
              v3 = v10;
              goto LABEL_19;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v3 = 0;
LABEL_19:
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_23DBE83C4()
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_23DBE844C(uint64_t a1)
{
  v3 = sub_23DBE8880(a1);
  (*(*(*(v1 + qword_27E30B0F8) - 8) + 8))(a1);
  return v3;
}

void *sub_23DBE84FC(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27E30B0F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_23DBF005C();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_23DBE8634(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23DBE869C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23DBE8634(a3);

  return v4;
}

id sub_23DBE8748()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DBE8798(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_23DBF006C();
}

id sub_23DBE88E4()
{
  result = [objc_allocWithZone(type metadata accessor for AXUniversalDisplayManager(0)) init];
  qword_27E30AFD0 = result;
  return result;
}

id AXUniversalDisplayManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXUniversalDisplayManager.shared.getter()
{
  if (qword_27E30AF48 != -1)
  {
    swift_once();
  }

  v1 = qword_27E30AFD0;

  return v1;
}

uint64_t sub_23DBE89BC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23DBEE9E8();
  sub_23DBEFFCC();
}

uint64_t sub_23DBE8A6C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  swift_beginAccess();
}

uint64_t sub_23DBE8AF4@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_23DBE8B90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles;
  swift_beginAccess();

  sub_23DBEE7D4(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_23DBEE9E8();
    sub_23DBEFFCC();
  }
}

uint64_t sub_23DBE8CB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 248) = v20;
  *(v9 + 256) = v8;
  *(v9 + 232) = v18;
  *(v9 + 240) = v19;
  *(v9 + 216) = v15;
  *(v9 + 224) = v17;
  *(v9 + 361) = v16;
  *(v9 + 200) = a7;
  *(v9 + 208) = a8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 360) = a2;
  *(v9 + 160) = a1;
  *(v9 + 64) = v19;
  *(v9 + 72) = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *(v9 + 264) = OpaqueTypeMetadata2;
  *(v9 + 272) = *(OpaqueTypeMetadata2 - 8);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = sub_23DBF012C();
  *(v9 + 296) = sub_23DBF011C();
  v12 = sub_23DBF00EC();
  *(v9 + 304) = v12;
  *(v9 + 312) = v11;

  return MEMORY[0x2822009F8](sub_23DBE8E6C, v12, v11);
}

uint64_t sub_23DBE8E6C()
{
  *(v0 + 80) = *(v0 + 240);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  *(v0 + 88) = *(v0 + 248);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  type metadata accessor for AXUIHostingController(0, v3, OpaqueTypeConformance2, v5);
  sub_23DBF007C();
  v6 = sub_23DBE8880(v1);
  *(v0 + 320) = v6;
  (*(v2 + 8))(v1, v3);
  v7 = v6;
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    v44 = v7;
    v10 = *(v0 + 184);
    v11 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    if (v10)
    {
      v12 = *(v0 + 184);
      *(v0 + 96) = *(v0 + 176);
      *(v0 + 104) = v12;
      *(v0 + 112) = 0xD000000000000020;
      *(v0 + 120) = 0x800000023DBF3A00;
      sub_23DBEE994();
      if (sub_23DBF017C())
      {
        v13 = *(v0 + 256);
        swift_getKeyPath();
        *(v0 + 128) = v13;
        sub_23DBEE9E8();
        sub_23DBEFFDC();

        v14 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles;
        swift_beginAccess();
        if (!*(*(v13 + v14) + 16) || (v16 = *(v0 + 192), v15 = *(v0 + 200), , sub_23DBEDEC0(v16, v15), LOBYTE(v15) = v17, , (v15 & 1) == 0))
        {
          v18 = [objc_opt_self() identityOfCurrentProcess];
          if (v18)
          {
            v19 = v18;
            v36 = *(v0 + 256);
            v20 = *(v0 + 200);
            v39 = *(v0 + 192);
            v40 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
            v21 = objc_allocWithZone(MEMORY[0x277D66BD8]);
            v42 = v19;
            v22 = sub_23DBF009C();
            v38 = [v21 initWithSceneProvidingProcess:v42 configurationIdentifier:v22];

            v23 = [objc_opt_self() newHandleWithDefinition:v38 configurationContext:v40];
            v37 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
            [v23 activateWithContext_];
            swift_getKeyPath();
            *(v0 + 136) = v36;

            v24 = v23;
            sub_23DBEFFDC();

            *(v0 + 144) = v36;
            swift_getKeyPath();
            sub_23DBEFFFC();

            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45 = *(v13 + v14);
            *(v13 + v14) = 0x8000000000000000;
            sub_23DBEE4DC(v24, v39, v20, isUniquelyReferenced_nonNull_native);

            *(v13 + v14) = v45;
            swift_endAccess();
            *(v0 + 152) = v36;
            swift_getKeyPath();
            sub_23DBEFFEC();
          }
        }
      }
    }

    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v28 = *(v0 + 361);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(v0 + 184);
    v32 = *(v0 + 360);
    v41 = *(v0 + 240);
    v43 = *(v0 + 168);
    *(v0 + 328) = sub_23DBF011C();
    v33 = swift_task_alloc();
    *(v0 + 336) = v33;
    *(v33 + 16) = v41;
    *(v33 + 32) = v29;
    *(v33 + 40) = v28 & 1;
    *(v33 + 48) = v44;
    *(v33 + 56) = v32;
    *(v33 + 64) = v43;
    *(v33 + 80) = v31;
    *(v33 + 88) = v30;
    *(v33 + 96) = v27;
    *(v33 + 104) = v26;
    v34 = swift_task_alloc();
    *(v0 + 344) = v34;
    *v34 = v0;
    v34[1] = sub_23DBE9414;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23DBE9414()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = v2[40];

    v4 = v2[38];
    v5 = v2[39];
    v6 = sub_23DBE9608;
  }

  else
  {

    v4 = v2[38];
    v5 = v2[39];
    v6 = sub_23DBE9580;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23DBE9580()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DBE9608()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

id sub_23DBE9680(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a5;
  v40 = a4;
  v34 = a3;
  v35 = a2;
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
  v13 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v14);
  v16 = &v30 - v15;
  sub_23DBF012C();
  v38 = sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v18 = result;
    v32 = a9;
    if (a8)
    {
      a8 = sub_23DBF009C();
    }

    v33 = a6;
    v31 = a10;
    sub_23DBEF834(a11, aBlock, &qword_27E30B0C8, &qword_23DBF4410);
    v19 = v42;
    if (v42)
    {
      v20 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v42);
      v21 = *(v19 - 1);
      MEMORY[0x28223BE20](v20, v20);
      v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v23);
      v24 = sub_23DBF021C();
      (*(v21 + 8))(v23, v19);
      __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    }

    else
    {
      v24 = 0;
    }

    if (v34)
    {
      v25 = 0;
    }

    else
    {
      v25 = v35;
    }

    v26 = v37;
    (*(v13 + 16))(v16, v36, v37);
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v28 = swift_allocObject();
    (*(v13 + 32))(v28 + v27, v16, v26);
    v43 = sub_23DBEF930;
    v44 = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DBE9BA0;
    v42 = &block_descriptor_41;
    v29 = _Block_copy(aBlock);

    [v18 addContentViewController:v40 withUserInteractionEnabled:v39 & 1 forService:v33 forSceneClientIdentifier:a8 context:v32 userInterfaceStyle:v25 forWindowScene:v31 spatialConfiguration:v24 completion:v29];
    _Block_release(v29);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DBE9A50(char a1)
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF010C();
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v3 = 0xD000000000000038;
    v3[1] = 0x800000023DBF3C90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF00FC();
  }
}

uint64_t sub_23DBE9BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = v6;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 208) = a2;
  *(v7 + 96) = a1;
  *(v7 + 104) = a3;
  *(v7 + 144) = sub_23DBF012C();
  *(v7 + 152) = sub_23DBF011C();
  v9 = sub_23DBF00EC();
  *(v7 + 160) = v9;
  *(v7 + 168) = v8;

  return MEMORY[0x2822009F8](sub_23DBE9C9C, v9, v8);
}

uint64_t sub_23DBE9C9C(uint64_t a1)
{
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  v4 = *(v1 + 208);
  v5 = *(v1 + 96);
  *(v1 + 176) = sub_23DBF011C();
  v6 = swift_task_alloc();
  *(v1 + 184) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  v7 = swift_task_alloc();
  *(v1 + 192) = v7;
  *v7 = v1;
  v7[1] = sub_23DBE9DC4;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23DBE9DC4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23DBEA110;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23DBE9EE8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23DBE9EE8()
{
  v1 = v0[17];

  swift_getKeyPath();
  v0[8] = v1;
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  v2 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[13];
    v4 = v0[14];

    v6 = sub_23DBEDEC0(v5, v4);
    if (v7)
    {
      v8 = v0[17];
      v13 = v0[14];
      v12 = v0[13];
      v14 = *(*(v3 + 56) + 8 * v6);

      [v14 invalidate];
      swift_getKeyPath();
      v0[9] = v8;
      sub_23DBEFFDC();

      v0[10] = v8;
      swift_getKeyPath();
      sub_23DBEFFFC();

      swift_beginAccess();
      v9 = sub_23DBEDFF0(v12, v13);
      swift_endAccess();

      v0[11] = v8;
      swift_getKeyPath();
      sub_23DBEFFEC();
    }

    else
    {
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23DBEA110()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23DBEA188(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - v11;
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = [objc_opt_self() sharedDisplayManager];
  if (v13)
  {
    v14 = v13;
    (*(v9 + 16))(v12, a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    (*(v9 + 32))(v16 + v15, v12, v8);
    aBlock[4] = sub_23DBEF794;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DBE9BA0;
    aBlock[3] = &block_descriptor;
    v17 = _Block_copy(aBlock);

    [v14 removeContentViewController:a2 withUserInteractionEnabled:a3 & 1 forService:v18 context:v19 completion:v17];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DBEA3E4(char a1)
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF010C();
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v3 = 0xD00000000000003BLL;
    v3[1] = 0x800000023DBF3C50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF00FC();
  }
}

id AXUniversalDisplayManager.startActivity<A, B, C>(forIdentifier:leadingView:customView:minimalView:relevance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v89 = a4;
  v90 = a5;
  v87 = a3;
  v84 = a2;
  v78 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30AFF8, &qword_23DBF4008);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v82 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B000, &qword_23DBF4010);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v93 = &v73 - v20;
  v86 = sub_23DBEFFAC();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v21);
  v92 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_23DBF003C();
  v80 = *(v81 - 8);
  v24 = MEMORY[0x28223BE20](v81, v23);
  v79 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a9;
  v26 = *(a9 - 8);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a8;
  v31 = *(a8 - 8);
  v33 = MEMORY[0x28223BE20](v28, v32);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a7;
  v37 = *(a7 - 8);
  MEMORY[0x28223BE20](v33, v38);
  v40 = &v73 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceHasJindo())
  {
    v74 = v18;
    v75 = v17;
    v76 = a12;
    (*(v37 + 16))(v40, v87, v36);
    v41 = sub_23DBF008C();
    (*(v31 + 16))(v35, v89, v88);
    v89 = sub_23DBF008C();
    (*(v26 + 16))(v30, v90, v91);
    v91 = sub_23DBF008C();
    result = AXLogUI();
    if (result)
    {
      v43 = v79;
      sub_23DBF004C();
      v44 = v84;

      v45 = sub_23DBF002C();
      v46 = sub_23DBF015C();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v92;
      if (v47)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v95 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_23DBED918(v78, v44, &v95);
        _os_log_impl(&dword_23DBD1000, v45, v46, "Starting activity for identifier %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        MEMORY[0x23EEF91F0](v50, -1, -1);
        MEMORY[0x23EEF91F0](v49, -1, -1);
      }

      (*(v80 + 8))(v43, v81);
      v51 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B010, &qword_23DBF4018);
      v52 = sub_23DBEFF8C();
      v53 = *(v52 - 8);
      v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_23DBF3FC0;
      (*(v53 + 104))(v55 + v54, *MEMORY[0x277CB94E8], v52);
      sub_23DBEFF9C();
      v56 = sub_23DBEFF1C();
      (*(*(v56 - 8) + 56))(v82, 1, 1, v56);
      sub_23DBEEB38();
      sub_23DBEEB8C();
      sub_23DBEEBE0();
      v57 = v93;
      sub_23DBEFFBC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B030, &qword_23DBF4020);
      v58 = v83;
      v59 = sub_23DBEFF5C();
      if (v58)
      {

        (*(v51 + 8))(v57, v75);
        return (*(v85 + 8))(v48, v86);
      }

      else
      {
        v90 = v59;
        *&v95 = sub_23DBEFF3C();
        *(&v95 + 1) = v61;
        *&v96 = v78;
        *(&v96 + 1) = v44;
        v97 = v41;
        *&v98 = v89;
        *(&v98 + 1) = v91;
        swift_getKeyPath();
        v62 = v77;
        v99 = v77;

        sub_23DBEEC34(&v95, v94);
        sub_23DBEE9E8();
        sub_23DBEFFDC();

        v94[0] = v62;
        swift_getKeyPath();
        sub_23DBEFFFC();

        v63 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
        swift_beginAccess();
        v64 = *(v62 + v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v62 + v63) = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = sub_23DBED80C(0, *(v64 + 2) + 1, 1, v64);
          *(v77 + v63) = v64;
        }

        v67 = *(v64 + 2);
        v66 = *(v64 + 3);
        if (v67 >= v66 >> 1)
        {
          v64 = sub_23DBED80C((v66 > 1), v67 + 1, 1, v64);
        }

        *(v64 + 2) = v67 + 1;
        v68 = &v64[64 * v67];
        v69 = v95;
        v70 = v96;
        v71 = v98;
        *(v68 + 4) = v97;
        *(v68 + 5) = v71;
        *(v68 + 2) = v69;
        *(v68 + 3) = v70;
        v72 = v77;
        *(v77 + v63) = v64;
        swift_endAccess();
        v94[0] = v72;
        swift_getKeyPath();
        sub_23DBEFFEC();

        sub_23DBEEC6C(&v95);
        (*(v51 + 8))(v93, v75);
        return (*(v85 + 8))(v92, v86);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v60 = 0xD000000000000033;
    v60[1] = 0x800000023DBF3A90;
    return swift_willThrow();
  }

  return result;
}

id AXUniversalDisplayManager.startActivity<A, B, C, D>(forIdentifier:leadingView:trailingView:customView:minimalView:relevance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v97 = a6;
  v95 = a5;
  v93 = a4;
  v91 = a3;
  v85 = a2;
  v79 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30AFF8, &qword_23DBF4008);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v83 = v77 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B000, &qword_23DBF4010);
  v99 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v19);
  v86 = v77 - v20;
  v88 = sub_23DBEFFAC();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v21);
  v98 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_23DBF003C();
  v81 = *(v82 - 8);
  v24 = MEMORY[0x28223BE20](v82, v23);
  v80 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a11;
  v90 = *(a11 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a10;
  v30 = *(a10 - 8);
  v32 = MEMORY[0x28223BE20](v27, v31);
  v34 = v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a9;
  v35 = *(a9 - 8);
  v37 = MEMORY[0x28223BE20](v32, v36);
  v39 = v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a8 - 8);
  MEMORY[0x28223BE20](v37, v41);
  v43 = v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceHasJindo())
  {
    v77[2] = a15;
    v77[1] = a14;
    v77[0] = a13;
    (*(v40 + 16))(v43, v91, a8);
    v44 = sub_23DBF008C();
    (*(v35 + 16))(v39, v93, v92);
    v93 = sub_23DBF008C();
    (*(v30 + 16))(v34, v95, v94);
    v95 = sub_23DBF008C();
    (*(v90 + 16))(v29, v97, v96);
    v97 = sub_23DBF008C();
    result = AXLogUI();
    if (result)
    {
      v46 = v80;
      sub_23DBF004C();
      v47 = v85;

      v48 = sub_23DBF002C();
      v49 = sub_23DBF015C();

      v50 = os_log_type_enabled(v48, v49);
      v51 = v86;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v101 = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_23DBED918(v79, v47, &v101);
        _os_log_impl(&dword_23DBD1000, v48, v49, "Starting activity for identifier %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x23EEF91F0](v53, -1, -1);
        MEMORY[0x23EEF91F0](v52, -1, -1);
      }

      (*(v81 + 8))(v46, v82);
      v54 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B010, &qword_23DBF4018);
      v55 = sub_23DBEFF8C();
      v56 = *(v55 - 8);
      v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_23DBF3FC0;
      (*(v56 + 104))(v58 + v57, *MEMORY[0x277CB94E8], v55);
      v59 = v98;
      sub_23DBEFF9C();
      v60 = sub_23DBEFF1C();
      (*(*(v60 - 8) + 56))(v83, 1, 1, v60);
      sub_23DBEEB38();
      sub_23DBEEB8C();
      sub_23DBEEBE0();
      sub_23DBEFFBC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B030, &qword_23DBF4020);
      v61 = v84;
      v62 = sub_23DBEFF5C();
      if (v61)
      {

        (*(v54 + 8))(v51, v89);
        return (*(v87 + 8))(v59, v88);
      }

      else
      {
        v96 = v62;
        *&v101 = sub_23DBEFF3C();
        *(&v101 + 1) = v64;
        *&v102 = v79;
        *(&v102 + 1) = v47;
        *&v103 = v44;
        *(&v103 + 1) = v93;
        *&v104 = v95;
        *(&v104 + 1) = v97;
        swift_getKeyPath();
        v65 = v44;
        v66 = v78;
        v105 = v78;

        v94 = v65;

        sub_23DBEEC34(&v101, v100);
        sub_23DBEE9E8();
        sub_23DBEFFDC();

        v100[0] = v66;
        swift_getKeyPath();
        sub_23DBEFFFC();

        v67 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
        swift_beginAccess();
        v68 = *(v66 + v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v66 + v67) = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = sub_23DBED80C(0, *(v68 + 2) + 1, 1, v68);
          *(v78 + v67) = v68;
        }

        v71 = *(v68 + 2);
        v70 = *(v68 + 3);
        if (v71 >= v70 >> 1)
        {
          v68 = sub_23DBED80C((v70 > 1), v71 + 1, 1, v68);
        }

        *(v68 + 2) = v71 + 1;
        v72 = &v68[64 * v71];
        v73 = v101;
        v74 = v102;
        v75 = v104;
        *(v72 + 4) = v103;
        *(v72 + 5) = v75;
        *(v72 + 2) = v73;
        *(v72 + 3) = v74;
        v76 = v78;
        *(v78 + v67) = v68;
        swift_endAccess();
        v100[0] = v76;
        swift_getKeyPath();
        sub_23DBEFFEC();

        sub_23DBEEC6C(&v101);
        (*(v99 + 8))(v51, v89);
        return (*(v87 + 8))(v98, v88);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v63 = 0xD000000000000033;
    v63[1] = 0x800000023DBF3A90;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXUniversalDisplayManager.endActivity(forIdentifier:)(Swift::String forIdentifier)
{
  v2 = v1;
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B040, &qword_23DBF4050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v54 = &v53 - v6;
  v56 = sub_23DBF003C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v7);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager___observationRegistrar;
  *&v71 = v2;
  v10 = sub_23DBEE9E8();
  v60 = v9;
  v59 = v10;
  sub_23DBEFFDC();

  v11 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
  swift_beginAccess();
  v61 = v2;
  v58 = v11;
  v12 = *(v2 + v11);
  v13 = *(v12 + 16);

  if (!v13)
  {
LABEL_10:

    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    sub_23DBF01AC();

    *&v71 = 0xD00000000000002ALL;
    *(&v71 + 1) = 0x800000023DBF3B60;
    MEMORY[0x23EEF85E0](countAndFlagsBits, object);
    v20 = v71;
    sub_23DBEEAE4();
    swift_allocError();
    *v21 = v20;
    swift_willThrow();
    return;
  }

  v14 = 0;
  v15 = 32;
  v64 = object;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v16 = *(v12 + v15);
    v17 = *(v12 + v15 + 16);
    v18 = *(v12 + v15 + 48);
    v73 = *(v12 + v15 + 32);
    v74 = v18;
    v71 = v16;
    v72 = v17;
    sub_23DBF012C();
    sub_23DBEEC34(&v71, &v67);
    sub_23DBF011C();
    sub_23DBF00EC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    object = v64;
    if (v72 == __PAIR128__(v64, countAndFlagsBits))
    {

      goto LABEL_12;
    }

    v19 = sub_23DBF022C();

    if (v19)
    {
      break;
    }

    ++v14;
    sub_23DBEEC6C(&v71);
    v15 += 64;
    if (v13 == v14)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B030, &qword_23DBF4020);
  v22 = sub_23DBEFF2C();
  v12 = v22;
  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_14;
    }

LABEL_48:

    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_23DBF01AC();

    *&v67 = 0xD000000000000020;
    *(&v67 + 1) = 0x800000023DBF3B30;
    v50 = v71;

    MEMORY[0x23EEF85E0](v50, *(&v50 + 1));

    MEMORY[0x23EEF85E0](46, 0xE100000000000000);
    v51 = v67;
    sub_23DBEEAE4();
    swift_allocError();
    *v52 = v51;
    swift_willThrow();
    sub_23DBEEC6C(&v71);
    return;
  }

LABEL_47:
  v23 = sub_23DBF01DC();
  if (!v23)
  {
    goto LABEL_48;
  }

LABEL_14:
  v24 = 0;
  v63 = v12 & 0xC000000000000001;
  v62 = v12 & 0xFFFFFFFFFFFFFF8;
  while (v63)
  {
    v25 = MEMORY[0x23EEF86D0](v24, v12);
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_27;
    }

LABEL_18:
    sub_23DBF011C();
    sub_23DBF00EC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_23DBEFF3C() == v71 && v27 == *(&v71 + 1))
    {
      goto LABEL_28;
    }

    v28 = sub_23DBF022C();

    if (v28)
    {
      goto LABEL_29;
    }

    ++v24;
    if (v26 == v23)
    {
      goto LABEL_48;
    }
  }

  if (v24 >= *(v62 + 16))
  {
    goto LABEL_46;
  }

  v25 = *(v12 + 8 * v24 + 32);

  v26 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
LABEL_28:

LABEL_29:

  v29 = AXLogUI();
  v30 = v64;
  v31 = v57;
  if (v29)
  {
    sub_23DBF004C();

    v32 = sub_23DBF002C();
    v33 = sub_23DBF015C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v67 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_23DBED918(countAndFlagsBits, v30, &v67);
      _os_log_impl(&dword_23DBD1000, v32, v33, "Ending activity for identifier %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x23EEF91F0](v35, -1, -1);
      MEMORY[0x23EEF91F0](v34, -1, -1);
    }

    (*(v55 + 8))(v31, v56);
    swift_getKeyPath();
    v36 = v61;
    *&v67 = v61;
    sub_23DBEFFDC();

    v37 = *(v36 + v58);
    v38 = *(v37 + 16);
    if (v38)
    {

      v39 = 0;
      v40 = 32;
      while (1)
      {
        v41 = *(v37 + v40);
        v42 = *(v37 + v40 + 16);
        v43 = *(v37 + v40 + 32);
        v70 = *(v37 + v40 + 48);
        v68 = v42;
        v69 = v43;
        v67 = v41;
        sub_23DBEEC34(&v67, v66);
        sub_23DBF011C();
        sub_23DBF00EC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v68 == __PAIR128__(v64, countAndFlagsBits))
        {
          goto LABEL_41;
        }

        v44 = sub_23DBF022C();

        sub_23DBEEC6C(&v67);
        if (v44)
        {
          goto LABEL_42;
        }

        if (v38 - 1 == v39)
        {
          break;
        }

        ++v39;
        v40 += 64;
        if (v39 >= *(v37 + 16))
        {
          __break(1u);
LABEL_41:

          sub_23DBEEC6C(&v67);
LABEL_42:

          swift_getKeyPath();
          v45 = v61;
          *&v66[0] = v61;
          sub_23DBEFFDC();

          *&v66[0] = v45;
          swift_getKeyPath();
          sub_23DBEFFFC();

          swift_beginAccess();
          sub_23DBEC44C(v39, v66);
          swift_endAccess();
          sub_23DBEEC6C(v66);
          v65[0] = v45;
          swift_getKeyPath();
          sub_23DBEFFEC();

          goto LABEL_44;
        }
      }
    }

LABEL_44:
    v46 = sub_23DBF014C();
    v47 = v54;
    (*(*(v46 - 8) + 56))(v54, 1, 1, v46);

    v48 = sub_23DBF011C();
    v49 = swift_allocObject();
    v49[2] = v48;
    v49[3] = MEMORY[0x277D85700];
    v49[4] = v25;
    sub_23DBEC94C(0, 0, v47, &unk_23DBF4060, v49);

    sub_23DBEEC6C(&v71);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DBEC44C@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DBEE7C0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    v11 = v9[5];
    a2[2] = v9[4];
    a2[3] = v11;
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23DBEC4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23DBEFF7C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0A0, &qword_23DBF43F0);
  v4[6] = swift_task_alloc();
  sub_23DBF012C();
  v4[7] = sub_23DBF011C();
  v7 = sub_23DBF00EC();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x2822009F8](sub_23DBEC610, v7, v6);
}

uint64_t sub_23DBEC610()
{
  v1 = v0[6];
  sub_23DBEFF4C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B000, &qword_23DBF4010);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_23DBEFF6C();
  v7 = (*MEMORY[0x277CB9290] + MEMORY[0x277CB9290]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_23DBEC728;
  v4 = v0[5];
  v5 = v0[6];

  return v7(v5, v4);
}

uint64_t sub_23DBEC728()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);

  (*(v4 + 8))(v3, v5);
  sub_23DBEF6B0(v2, &qword_27E30B0A0, &qword_23DBF43F0);
  v6 = *(v1 + 72);
  v7 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23DBEC8D8, v7, v6);
}

uint64_t sub_23DBEC8D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DBEC94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B040, &qword_23DBF4050);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_23DBEF834(a3, v26 - v11, &qword_27E30B040, &qword_23DBF4050);
  v13 = sub_23DBF014C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23DBEF6B0(v12, &qword_27E30B040, &qword_23DBF4050);
  }

  else
  {
    sub_23DBF013C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23DBF00EC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23DBF00AC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23DBEF6B0(a3, &qword_27E30B040, &qword_23DBF4050);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DBEF6B0(a3, &qword_27E30B040, &qword_23DBF4050);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t AXUniversalDisplayManager.activity(forActivityIdentifier:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_getKeyPath();
  *&v23 = v3;
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  v6 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = 32;
    while (v10 < *(v7 + 16))
    {
      v12 = *(v7 + v11);
      v13 = *(v7 + v11 + 16);
      v14 = *(v7 + v11 + 48);
      v25 = *(v7 + v11 + 32);
      v26 = v14;
      v23 = v12;
      v24 = v13;
      sub_23DBF012C();
      sub_23DBEEC34(&v23, &v19);
      sub_23DBF011C();
      sub_23DBF00EC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22 = v26;
      if (v23 == __PAIR128__(a2, a1))
      {

LABEL_12:
        v16 = v20;
        *a3 = v19;
        a3[1] = v16;
        v17 = v22;
        a3[2] = v21;
        a3[3] = v17;
        return result;
      }

      v15 = sub_23DBF022C();

      if (v15)
      {

        goto LABEL_12;
      }

      ++v10;
      result = sub_23DBEEC6C(&v23);
      v11 += 64;
      if (v8 == v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Void __swiftcall AXUniversalDisplayManager.remoteSceneDidHandleHomeGesture(scene:)(UIWindowScene *scene)
{
  v2 = [objc_opt_self() sharedDisplayManager];
  if (v2)
  {
    v3 = v2;
    [v2 _remoteSceneDidHandleHomeGesture_];
  }

  else
  {
    __break(1u);
  }
}

id AXUniversalDisplayManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles] = sub_23DBEEE44(v2);
  sub_23DBF000C();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id AXUniversalDisplayManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXUIActivityRelevance.hashValue.getter()
{
  v1 = *v0;
  sub_23DBF029C();
  MEMORY[0x23EEF87C0](v1);
  return sub_23DBF02BC();
}

uint64_t sub_23DBED1B0()
{
  v1 = *v0;
  sub_23DBF029C();
  MEMORY[0x23EEF87C0](v1);
  return sub_23DBF02BC();
}

uint64_t sub_23DBED224(uint64_t a1)
{
  v2 = *v1;
  sub_23DBF029C();
  MEMORY[0x23EEF87C0](v2);
  return sub_23DBF02BC();
}

uint64_t sub_23DBED280(uint64_t a1)
{
  v2 = sub_23DBEF498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DBED2BC(uint64_t a1)
{
  v2 = sub_23DBEF498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DBED3B4(uint64_t a1)
{
  v2 = sub_23DBEF4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DBED3F0(uint64_t a1)
{
  v2 = sub_23DBEF4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DBED470(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a6();
  sub_23DBF02CC();
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_23DBED5A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DBF01AC();

  MEMORY[0x23EEF85E0](v1, v2);
  return 0xD000000000000012;
}

uint64_t sub_23DBED61C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23DBED714;

  return v6(a1);
}

uint64_t sub_23DBED714()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_23DBED80C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B0, &qword_23DBF4400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23DBED918(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DBED9E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23DBEF710(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_23DBED9E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DBEDAF0(a5, a6);
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
    result = sub_23DBF01CC();
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

void *sub_23DBEDAF0(uint64_t a1, unint64_t a2)
{
  v3 = sub_23DBEDB3C(a1, a2);
  sub_23DBEDC6C(&unk_284FF66B0);
  return v3;
}

void *sub_23DBEDB3C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23DBEDD58(v5, 0);
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

  result = sub_23DBF01CC();
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
        v10 = sub_23DBF00DC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DBEDD58(v10, 0);
        result = sub_23DBF019C();
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

uint64_t sub_23DBEDC6C(uint64_t result)
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

  result = sub_23DBEDDCC(result, v11, 1, v3);
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

void *sub_23DBEDD58(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0A8, &qword_23DBF43F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23DBEDDCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0A8, &qword_23DBF43F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_23DBEDEC0(uint64_t a1, uint64_t a2)
{
  sub_23DBF029C();
  sub_23DBF00BC();
  v4 = sub_23DBF02BC();

  return sub_23DBEDF38(a1, a2, v4);
}

unint64_t sub_23DBEDF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23DBF022C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23DBEDFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_23DBEDEC0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23DBEE654();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_23DBEE32C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_23DBEE088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B098, &qword_23DBF43D0);
  v35 = v4;
  result = sub_23DBF01FC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_23DBF029C();
      sub_23DBF00BC();
      result = sub_23DBF02BC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23DBEE32C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23DBF018C() + 1) & ~v5;
    do
    {
      sub_23DBF029C();

      sub_23DBF00BC();
      v9 = sub_23DBF02BC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23DBEE4DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DBEDEC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23DBEE088(v16, a4 & 1);
      v11 = sub_23DBEDEC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_23DBF024C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_23DBEE654();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_23DBEE654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B098, &qword_23DBF43D0);
  v2 = *v0;
  v3 = sub_23DBF01EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

  return result;
}

void sub_23DBEE7D4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_23DBEDEC0(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_23DBEF7E8();
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_23DBF016C();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_23DBEE994()
{
  result = qword_27E30AFD8;
  if (!qword_27E30AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30AFD8);
  }

  return result;
}

unint64_t sub_23DBEE9E8()
{
  result = qword_27E30AFE8;
  if (!qword_27E30AFE8)
  {
    type metadata accessor for AXUniversalDisplayManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30AFE8);
  }

  return result;
}

uint64_t type metadata accessor for AXUniversalDisplayManager(uint64_t a1)
{
  result = qword_27E30B050;
  if (!qword_27E30B050)
  {
    return swift_getSingletonMetadata();
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

unint64_t sub_23DBEEAE4()
{
  result = qword_27E30B008;
  if (!qword_27E30B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B008);
  }

  return result;
}

unint64_t sub_23DBEEB38()
{
  result = qword_27E30B018;
  if (!qword_27E30B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B018);
  }

  return result;
}

unint64_t sub_23DBEEB8C()
{
  result = qword_27E30B020;
  if (!qword_27E30B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B020);
  }

  return result;
}

unint64_t sub_23DBEEBE0()
{
  result = qword_27E30B028;
  if (!qword_27E30B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B028);
  }

  return result;
}

uint64_t sub_23DBEEC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23DBEED50;

  return sub_23DBEC4E4(a1, v4, v5, v6);
}

uint64_t sub_23DBEED50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23DBEEE44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B098, &qword_23DBF43D0);
    v3 = sub_23DBF020C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23DBEDEC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DBEEF4C()
{
  result = qword_27E30B048;
  if (!qword_27E30B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B048);
  }

  return result;
}

uint64_t sub_23DBEEFA8(uint64_t a1)
{
  result = sub_23DBF001C();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DBEF05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23DBEF0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXUIActivityRelevance(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXUIActivityRelevance(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DBEF284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DBEF2CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DBEF33C()
{
  result = qword_27E30B060;
  if (!qword_27E30B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B060);
  }

  return result;
}

unint64_t sub_23DBEF394()
{
  result = qword_27E30B068;
  if (!qword_27E30B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B068);
  }

  return result;
}

unint64_t sub_23DBEF3F8()
{
  result = qword_27E30B070;
  if (!qword_27E30B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B070);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

unint64_t sub_23DBEF498()
{
  result = qword_27E30B080;
  if (!qword_27E30B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B080);
  }

  return result;
}

unint64_t sub_23DBEF4EC()
{
  result = qword_27E30B090;
  if (!qword_27E30B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B090);
  }

  return result;
}

uint64_t sub_23DBEF540(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DBEFBB8;

  return sub_23DBED61C(a1, v4);
}

uint64_t sub_23DBEF5F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DBEED50;

  return sub_23DBED61C(a1, v4);
}

uint64_t sub_23DBEF6B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DBEF710(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23DBEF7E8()
{
  result = qword_27E30B0C0;
  if (!qword_27E30B0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E30B0C0);
  }

  return result;
}

uint64_t sub_23DBEF834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_34Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23DBEF948(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23DBEFA40()
{
  result = qword_27E30B0D0;
  if (!qword_27E30B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0D0);
  }

  return result;
}

unint64_t sub_23DBEFA98()
{
  result = qword_27E30B0D8;
  if (!qword_27E30B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0D8);
  }

  return result;
}

unint64_t sub_23DBEFAF0()
{
  result = qword_27E30B0E0;
  if (!qword_27E30B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0E0);
  }

  return result;
}

unint64_t sub_23DBEFB48()
{
  result = qword_27E30B0E8;
  if (!qword_27E30B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0E8);
  }

  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}