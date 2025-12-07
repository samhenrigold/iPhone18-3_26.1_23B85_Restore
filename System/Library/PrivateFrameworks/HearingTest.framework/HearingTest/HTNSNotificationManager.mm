@interface HTNSNotificationManager
- (void)dealloc;
- (void)handleDidActivate;
- (void)handleDidEnterBackground;
- (void)handleWillDeactivate;
- (void)handleWillTerminate;
- (void)notifyTestResumed;
- (void)updateTimestamp;
@end

@implementation HTNSNotificationManager

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for HTNSNotificationManager();
  [(HTNSNotificationManager *)&v6 dealloc];
}

- (void)handleDidEnterBackground
{
  selfCopy = self;
  sub_2520A947C(selfCopy, v2, v3, v4, v5, v6, v7, v8, v9);
}

- (void)handleWillDeactivate
{
  selfCopy = self;
  sub_2520A94E0();
}

- (void)handleDidActivate
{
  selfCopy = self;
  sub_2520A9720(selfCopy, v2, v3, v4, v5, v6, v7, v8, v9);
}

- (void)handleWillTerminate
{
  selfCopy = self;
  sub_2520A9784();
}

- (void)notifyTestResumed
{
  selfCopy = self;
  sub_2520A9AD4();
}

- (void)updateTimestamp
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v55 - v4;
  v6 = objc_opt_self();
  processInfo = [v6 processInfo];
  processName = [processInfo processName];

  v9 = sub_252141B9C();
  v11 = v10;

  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v56 = "tat";
  v13 = sub_252141B6C();
  initWithSuiteName_ = [v12 initWithSuiteName_];

  if (!initWithSuiteName_)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = sub_252141B6C();
  stringForKey_ = [initWithSuiteName_ stringForKey_];

  if (stringForKey_)
  {
    v55[1] = 0xD000000000000014;
    v17 = sub_252141B9C();
    v19 = v18;

    if (v9 == v17 && v11 == v19)
    {

      goto LABEL_8;
    }

    v20 = sub_25214247C();

    if (v20)
    {
LABEL_8:
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v21 = sub_25214198C();
      __swift_project_value_buffer(v21, qword_27F4CDE68);
      v22 = sub_25214196C();
      v23 = sub_252141FBC();
      v24 = os_log_type_enabled(v22, v23);
      v55[0] = "HTLastSessionTimestamp";
      if (v24)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v57 = v26;
        *v25 = 136315138;
        processInfo2 = [v6 processInfo];
        processName2 = [processInfo2 processName];

        v29 = sub_252141B9C();
        v31 = v30;

        v32 = sub_2520A5448(v29, v31, &v57);

        *(v25 + 4) = v32;
        _os_log_impl(&dword_25207E000, v22, v23, "Updating current session timestamp for %s (deactivated)", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x253099FD0](v26, -1, -1);
        MEMORY[0x253099FD0](v25, -1, -1);
      }

      v33 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v34 = sub_252141B6C();
      initWithSuiteName_2 = [v33 initWithSuiteName_];

      if (initWithSuiteName_2)
      {
        sub_25214187C();
        v36 = sub_25214188C();
        v37 = *(v36 - 8);
        (*(v37 + 56))(v5, 0, 1, v36);
        sub_2520AA46C(v5, v2);
        v38 = 0;
        if ((*(v37 + 48))(v2, 1, v36) != 1)
        {
          v38 = sub_25214185C();
          (*(v37 + 8))(v2, v36);
        }

        v39 = sub_252141B6C();
        [initWithSuiteName_2 setValue:v38 forKey:v39];

        swift_unknownObjectRelease();
        sub_2520AA4DC(v5);
        v40 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v41 = sub_252141B6C();
        initWithSuiteName_3 = [v40 initWithSuiteName_];

        if (initWithSuiteName_3)
        {
          processInfo3 = [v6 processInfo];
          processName3 = [processInfo3 processName];

          if (!processName3)
          {
            sub_252141B9C();
            processName3 = sub_252141B6C();
          }

          v45 = sub_252141B6C();
          [initWithSuiteName_3 setValue:processName3 forKey:v45];

          v46 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
          v47 = sub_252141B6C();
          initWithSuiteName_4 = [v46 initWithSuiteName_];

          if (initWithSuiteName_4)
          {
            sub_2520DC654();
            v49 = sub_252141B6C();

            v50 = sub_252141B6C();
            [initWithSuiteName_4 setValue:v49 forKey:v50];

            return;
          }

          goto LABEL_30;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v51 = sub_25214198C();
  __swift_project_value_buffer(v51, qword_27F4CDE68);
  v56 = sub_25214196C();
  v52 = sub_252141FAC();
  if (os_log_type_enabled(v56, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_25207E000, v56, v52, "This process should not update a different process timestamp!", v53, 2u);
    MEMORY[0x253099FD0](v53, -1, -1);
  }

  v54 = v56;
}

@end