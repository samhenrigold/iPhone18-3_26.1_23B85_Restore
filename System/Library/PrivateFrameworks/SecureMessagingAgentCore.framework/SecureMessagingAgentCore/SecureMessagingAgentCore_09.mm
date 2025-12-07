uint64_t sub_26532BF74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_26532C0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C0FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 320);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_26532C170@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C1C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 344);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_26532C288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C2DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 392);

  return v4(v2, v3);
}

uint64_t sub_26532C34C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_26532C3F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C444(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 440);

  return v4(v2, v3);
}

uint64_t sub_26532C504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26532C5BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26532C610(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 512);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_26532C684@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_26532C6D8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 536);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t dispatch thunk of StateMachineOperator.getPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of StateMachineOperator.publicSigningKey(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of StateMachineOperator.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of StateMachineOperator.credentialSigningRequest(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineOperator.updateClientID(clientID:uri:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of StateMachineOperator.loadCredential(credential:uri:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineOperator.getKeyPackage(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineOperator.save(registrationStateMachine:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of StateMachineOperator.setupHeartbeat(nextHeartbeatInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v10 = (*(a2 + 72) + **(a2 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);
  v8.n128_f64[0] = a3;

  return v10(a1, a2, v8);
}

uint64_t dispatch thunk of StateMachineOperator.updatePushHandlerIfNeeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v7(a1, a2);
}

uint64_t dispatch thunk of StateMachineOperator.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 88) + **(a6 + 88));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of StateMachineOperator.getCredential(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.getClientID(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.registerKeyPackage(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.deregisterKeyPackage(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.fetchIdentity(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of StateMachineNetworkOperator.queryKeyPackage(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for KDSRegistrationStateMachine(uint64_t a1)
{
  result = type metadata singleton initialization cache for KDSRegistrationStateMachine;
  if (!type metadata singleton initialization cache for KDSRegistrationStateMachine)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for KDSRegistrationStateMachine(uint64_t a1)
{
  type metadata accessor for KDSRegistration.URISupportedState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for KDSRegistration.UniqueClientIdentifier();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(319, &lazy cache variable for type metadata for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?, MEMORY[0x277D4C938]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(319, &lazy cache variable for type metadata for URI?, MEMORY[0x277D4D258]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(319, &lazy cache variable for type metadata for MLS.KeyPackageInfo?, MEMORY[0x277D4CCE8]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.updateURISupportedState(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 568) + **(*v1 + 568));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6(a1);
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.heartbeat(transaction:)(uint64_t a1)
{
  v6 = (*(*v1 + 576) + **(*v1 + 576));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6(a1);
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.run()()
{
  v4 = (*(*v0 + 592) + **(*v0 + 592));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v4();
}

uint64_t dispatch thunk of KDSRegistrationStateMachine.stateMachineModel()(uint64_t a1)
{
  v6 = (*(*v1 + 680) + **(*v1 + 680));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6(a1);
}

void type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 26;
  if (a2 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 26;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 26;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x12)
  {
    v8 = v7 - 17;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 26;
  if (a3 + 26 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE6)
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for KDSRegistrationStateMachine.RegistrationState(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x12)
  {
    return v1 - 17;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for KDSRegistrationStateMachine.RegistrationState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 17;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistrationStateMachine.StateMachineError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistrationStateMachine.StateMachineError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistrationStateMachine.RegistrationState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of PhoneNumberInfo(uint64_t a1)
{
  v2 = type metadata accessor for PhoneNumberInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t partial apply for implicit closure #4 in KDSRegistrationStateMachine.getIdentity()@<X0>(uint64_t *a1@<X8>)
{
  result = Data.asSecCerts()();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with copy of URI?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t specialized SMAUserDefaults.keyPackageOverride(uri:platform:)(uint64_t a1, uint64_t a2)
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x266756A10](0xD000000000000019, 0x800000026534C790);
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    return 0;
  }

  v7 = MEMORY[0x266756A10](0x6F2D706B2D73646BLL, 0xEF65646972726576);
  v8 = [v6 dictionaryForKey_];

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x266756A70](45, 0xE100000000000000);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v10);

  if (!*(v9 + 16))
  {

    goto LABEL_10;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v9 + 56) + 32 * v11, v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    return 0;
  }

  v14 = Data.init(base64Encoded:options:)();
  v16 = v15;

  if (v16 >> 60 != 15)
  {
    return v14;
  }

  return 0;
}

id specialized SMAUserDefaults.shouldUseTestNumber()()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x266756A10](0xD000000000000019, 0x800000026534C790);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x266756A10](0xD000000000000016, 0x800000026534C7B0);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

sqlite3_stmt *SecureMessagingClientModel.insertStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("INSERT OR REPLACE INTO SMA_Client_Table (sma_client_id, swiftmls_client_id) VALUES (?, ?);");
  if (!v8)
  {
LABEL_55:
    __break(1u);
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_40:
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
LABEL_41:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v22);

    v23 = v32;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v23;
    return swift_willThrow();
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_32;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_53;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      if (v15)
      {
        a3 = v19;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v10)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_50;
    }

    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v9;
      }

      if (v15)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_48;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v32 + 6) = 0;
          *&v32 = 0;
          v9 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v11 = SQLITE_TRANSIENT;
            v12 = &v32;
            v21 = 0;
            goto LABEL_39;
          }

LABEL_50:
          v31 = v9;
          swift_once();
          v9 = v31;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v29 = ppStmt[0];
        swift_once();
        v9 = v29;
      }

      v11 = SQLITE_TRANSIENT;
      v12 = v15;
      goto LABEL_38;
    }

    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v20))
    {
      v15 += a2 - v20;
      goto LABEL_25;
    }

    goto LABEL_54;
  }

  *&v32 = a2;
  WORD4(v32) = a3;
  BYTE10(v32) = BYTE2(a3);
  BYTE11(v32) = BYTE3(a3);
  BYTE12(v32) = BYTE4(a3);
  BYTE13(v32) = BYTE5(a3);
  v9 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_48:
    v30 = v9;
    swift_once();
    v9 = v30;
  }

  v11 = SQLITE_TRANSIENT;
  v12 = &v32;
LABEL_38:
  v21 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v12, v21, v11))
  {
    goto LABEL_40;
  }

  v26 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v27 = String.utf8CString.getter();
  v28 = sqlite3_bind_text(v26, 2, (v27 + 32), -1, v11);

  if (v28)
  {
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  return ppStmt[0];
}

sqlite3_stmt *SecureMessagingClientModel.updateStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("UPDATE SMA_Client_Table SET\n    swiftmls_client_id = ?\nWHERE\n    sma_client_id = ?;");
  if (!v8)
  {
LABEL_48:
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0))
  {
LABEL_3:
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
LABEL_8:
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v13);

    v14 = v31;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = v14;
    return swift_willThrow();
  }

  v9 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v10 = SQLITE_TRANSIENT;
  v11 = String.utf8CString.getter();
  v12 = sqlite3_bind_text(v9, 1, (v11 + 32), -1, v10);

  if (v12)
  {
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
    goto LABEL_8;
  }

  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
LABEL_37:
      *(&v31 + 6) = 0;
      *&v31 = 0;
      v19 = ppStmt[0];
      v20 = &v31;
      LODWORD(v18) = 0;
      goto LABEL_40;
    }

    v21 = *(a2 + 16);
    v22 = *(a2 + 24);
    v23 = __DataStorage._bytes.getter();
    if (v23)
    {
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v24))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v23 += v21 - v24;
    }

    v25 = __OFSUB__(v22, v21);
    v26 = v22 - v21;
    if (v25)
    {
      goto LABEL_44;
    }

    a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = MEMORY[0x2667557A0]();
    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    if (v23)
    {
      v18 = v28;
    }

    else
    {
      v18 = 0;
    }

    if (v18 < 0xFFFFFFFF80000000)
    {
      goto LABEL_45;
    }

    if (v18 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  else if (!v17)
  {
    *&v31 = a2;
    WORD4(v31) = a3;
    BYTE10(v31) = BYTE2(a3);
    BYTE11(v31) = BYTE3(a3);
    BYTE12(v31) = BYTE4(a3);
    BYTE13(v31) = BYTE5(a3);
    LODWORD(v18) = BYTE6(a3);
    v19 = ppStmt[0];
    v20 = &v31;
    goto LABEL_40;
  }

  if (a2 >> 32 < a2)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = __DataStorage._bytes.getter();
  if (v23)
  {
    v29 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v29))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v23 += a2 - v29;
  }

  v30 = MEMORY[0x2667557A0]();
  if (v30 >= (a2 >> 32) - a2)
  {
    v18 = (a2 >> 32) - a2;
  }

  else
  {
    v18 = v30;
  }

  if (!v23)
  {
    LODWORD(v18) = 0;
    goto LABEL_39;
  }

  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v18 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_39:
  v19 = ppStmt[0];
  v20 = v23;
LABEL_40:
  if (sqlite3_bind_blob(v19, 2, v20, v18, v10))
  {
    goto LABEL_3;
  }

  return ppStmt[0];
}

sqlite3_stmt *SecureMessagingClientModel.deleteStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("DELETE FROM SMA_Client_Table WHERE sma_client_id = ?;");
  if (!v6)
  {
LABEL_49:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v27 = a2;
      WORD4(v27) = a3;
      BYTE10(v27) = BYTE2(a3);
      BYTE11(v27) = BYTE3(a3);
      BYTE12(v27) = BYTE4(a3);
      BYTE13(v27) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v27;
        goto LABEL_39;
      }

LABEL_42:
      v25 = v9;
      swift_once();
      v9 = v25;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 >= a2)
  {
    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
      goto LABEL_25;
    }

    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a2 = (a2 >> 32) - a2;
      }

      else
      {
        a2 = v9;
      }

      if (v14)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_42;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v27 + 6) = 0;
          *&v27 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_36:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v24 = ppStmt[0];
        swift_once();
        v9 = v24;
      }

      v10 = SQLITE_TRANSIENT;
      v11 = v14;
LABEL_39:
      if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
      {
        goto LABEL_40;
      }

      return ppStmt[0];
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_44:
  v26 = v7;
  swift_once();
  v7 = v26;
LABEL_33:
  if (!sqlite3_bind_blob(v7, 1, &v27, 0, SQLITE_TRANSIENT))
  {
    return ppStmt[0];
  }

LABEL_40:
  *&v27 = 0x726F7272456C7173;
  *(&v27 + 1) = 0xE90000000000003ALL;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v21);

  v22 = v27;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v23 = 0;
  *(v23 + 8) = v22;
  return swift_willThrow();
}

unint64_t closure #1 in variable initialization expression of static SecureMessagingClientModel.converter(sqlite3_stmt *a1)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_7;
  }

  v3 = sqlite3_column_blob(a1, 0);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sqlite3_column_bytes(a1, 0);
  v1 = specialized Data.init(bytes:count:)(v4, v5);
  v7 = v6;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
    outlined consume of Data._Representation(v1, v7);
LABEL_7:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v8 = 3;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  String.init(cString:)();
  return v1;
}

uint64_t (*static SecureMessagingClientModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static SecureMessagingClientModel.converter;

  return v0;
}

uint64_t static SecureMessagingClientModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static SecureMessagingClientModel.converter = a1;
  qword_281EF8B10 = a2;
}

uint64_t key path getter for static SecureMessagingClientModel.converter : SecureMessagingClientModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static SecureMessagingClientModel.converter;
  v2 = qword_281EF8B10;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static SecureMessagingClientModel.converter : SecureMessagingClientModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static SecureMessagingClientModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)partial apply;
  qword_281EF8B10 = v3;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance SecureMessagingClientModel())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static SecureMessagingClientModel.converter;
  v0 = qword_281EF8B10;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)partial apply;
}

uint64_t *SecureMessagingClientQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static SecureMessagingClientQuery.converter;
}

uint64_t static SecureMessagingClientQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SecureMessagingClientQuery.converter;

  return v0;
}

uint64_t static SecureMessagingClientQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SecureMessagingClientQuery.converter = a1;
  qword_2800169F0 = a2;
}

uint64_t (*static SecureMessagingClientQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static SecureMessagingClientQuery.converter : SecureMessagingClientQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static SecureMessagingClientQuery.converter;
  v2 = qword_2800169F0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static SecureMessagingClientQuery.converter : SecureMessagingClientQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SecureMessagingClientQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error);
  qword_2800169F0 = v3;
}

sqlite3_stmt *SecureMessagingClientQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM SMA_Client_Table WHERE sma_client_id = ? LIMIT 1;");
  if (!v6)
  {
LABEL_49:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v27 = a2;
      WORD4(v27) = a3;
      BYTE10(v27) = BYTE2(a3);
      BYTE11(v27) = BYTE3(a3);
      BYTE12(v27) = BYTE4(a3);
      BYTE13(v27) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v27;
        goto LABEL_39;
      }

LABEL_42:
      v25 = v9;
      swift_once();
      v9 = v25;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 >= a2)
  {
    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
      goto LABEL_25;
    }

    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a2 = (a2 >> 32) - a2;
      }

      else
      {
        a2 = v9;
      }

      if (v14)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_42;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v27 + 6) = 0;
          *&v27 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_36:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v24 = ppStmt[0];
        swift_once();
        v9 = v24;
      }

      v10 = SQLITE_TRANSIENT;
      v11 = v14;
LABEL_39:
      if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
      {
        goto LABEL_40;
      }

      return ppStmt[0];
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_44:
  v26 = v7;
  swift_once();
  v7 = v26;
LABEL_33:
  if (!sqlite3_bind_blob(v7, 1, &v27, 0, SQLITE_TRANSIENT))
  {
    return ppStmt[0];
  }

LABEL_40:
  *&v27 = 0x726F7272456C7173;
  *(&v27 + 1) = 0xE90000000000003ALL;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v21);

  v22 = v27;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v23 = 0;
  *(v23 + 8) = v22;
  return swift_willThrow();
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance SecureMessagingClientQuery())@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static SecureMessagingClientQuery.converter;
  v0 = qword_2800169F0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error);
}

sqlite3_stmt *specialized static SecureMessagingClientModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS SMA_Client_Table (\n    sma_client_id BLOB NOT NULL,\n    swiftmls_client_id TEXT NOT NULL,\n    PRIMARY KEY (sma_client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

sqlite3_stmt *specialized static SecureMessagingClientModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS SMA_Client_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t sub_265332AB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)(a1, a2);
}

{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingClientModel?, @error @owned Error)(a1);
}

{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t FailureToDecryptRetryQuery.init(clientIdentifier:group:messageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t FailureToDecryptRetryModel.init(clientIdentifier:group:messageID:retryCount:timestamp:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t FailureToDecryptRetryModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t FailureToDecryptRetryModel.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FailureToDecryptRetryModel.messageID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

sqlite3_stmt *FailureToDecryptRetryModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("INSERT OR REPLACE INTO FTD_Retry_Table (client_id, group_id, message_id, retry_count, timestamp) VALUES (?, ?, ?, ?, ?);");
  if (!v3)
  {
LABEL_61:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
    goto LABEL_43;
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v39 + 6) = 0;
      *&v39 = 0;
      v4 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_25:
        v9 = SQLITE_TRANSIENT;
        v10 = &v39;
        LODWORD(v11) = 0;
        goto LABEL_42;
      }

LABEL_57:
      v38 = v4;
      swift_once();
      v4 = v38;
      goto LABEL_25;
    }

    v12 = v1;
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v17))
      {
        goto LABEL_59;
      }

      v8 = (v13 - v17 + v16);
      v18 = v14 - v13;
      if (!__OFSUB__(v14, v13))
      {
LABEL_11:
        v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = MEMORY[0x2667557A0]();
        if (v4 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v4;
        }

        if (v8)
        {
          v11 = v19;
        }

        else
        {
          v11 = 0;
        }

        if (v11 >= 0xFFFFFFFF80000000)
        {
          v5 = 0x7FFFFFFFLL;
          if (v11 <= 0x7FFFFFFF)
          {
            goto LABEL_38;
          }

          __break(1u);
          goto LABEL_20;
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      v8 = 0;
      v18 = v14 - v13;
      if (!__OFSUB__(v14, v13))
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v7)
  {
LABEL_20:
    v20 = v5;
    v21 = v5 >> 32;
    v13 = v21 - v20;
    if (v21 >= v20)
    {
      v12 = v1;
      v22 = __DataStorage._bytes.getter();
      if (v22)
      {
        v23 = v22;
        v24 = __DataStorage._offset.getter();
        if (!__OFSUB__(v20, v24))
        {
          v8 = (v20 - v24 + v23);
LABEL_30:
          v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v4 = MEMORY[0x2667557A0]();
          if (v4 >= v13)
          {
            v11 = v13;
          }

          else
          {
            v11 = v4;
          }

          if (v8)
          {
            if (v11 < 0xFFFFFFFF80000000)
            {
              __break(1u);
              goto LABEL_55;
            }

            v1 = v12;
            if (v11 <= 0x7FFFFFFF)
            {
LABEL_39:
              v4 = ppStmt[0];
              if (one-time initialization token for SQLITE_TRANSIENT != -1)
              {
                v35 = ppStmt[0];
                v36 = v11;
                swift_once();
                v4 = v35;
                LODWORD(v11) = v36;
              }

              v9 = SQLITE_TRANSIENT;
              v10 = v8;
              goto LABEL_42;
            }

            __break(1u);
          }

          LODWORD(v11) = 0;
LABEL_38:
          v1 = v12;
          goto LABEL_39;
        }

        goto LABEL_60;
      }

LABEL_29:
      v8 = 0;
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_57;
  }

  *&v39 = *v1;
  DWORD2(v39) = v6;
  WORD6(v39) = WORD2(v6);
  v4 = ppStmt[0];
  LODWORD(v8) = BYTE6(v6);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_55:
    v37 = v4;
    swift_once();
    v4 = v37;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = &v39;
  LODWORD(v11) = v8;
LABEL_42:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_43;
  }

  v29 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v30 = String.utf8CString.getter();
  v31 = sqlite3_bind_text(v29, 2, (v30 + 32), -1, v9);

  if (v31)
  {
    *&v39 = 0x726F7272456C7173;
    *(&v39 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v32 = ppStmt[0];
  v33 = String.utf8CString.getter();
  v34 = sqlite3_bind_text(v32, 3, (v33 + 32), -1, v9);

  if (v34)
  {
    *&v39 = 0x726F7272456C7173;
    *(&v39 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  if (sqlite3_bind_int(ppStmt[0], 4, *(v1 + 48)) || sqlite3_bind_int64(ppStmt[0], 5, *(v1 + 56)))
  {
LABEL_43:
    *&v39 = 0x726F7272456C7173;
    *(&v39 + 1) = 0xE90000000000003ALL;
LABEL_44:
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v25);

    v26 = v39;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = v26;
    return swift_willThrow();
  }

  return ppStmt[0];
}

sqlite3_stmt *FailureToDecryptRetryModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("UPDATE FTD_Retry_Table SET\n    retry_count = ?\nWHERE\n    client_id = ? AND group_id = ? AND message_id = ?;");
  if (!v3)
  {
LABEL_59:
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0))
  {
    goto LABEL_42;
  }

  v4 = sqlite3_bind_int(ppStmt[0], 1, *(v1 + 48));
  if (v4)
  {
    goto LABEL_42;
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v38 + 6) = 0;
      *&v38 = 0;
      v4 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_17:
        v9 = SQLITE_TRANSIENT;
        v10 = &v38;
        LODWORD(v11) = 0;
        goto LABEL_41;
      }

LABEL_54:
      v37 = v4;
      swift_once();
      v4 = v37;
      goto LABEL_17;
    }

    v12 = *(v5 + 16);
    v13 = *(v5 + 24);
    v14 = __DataStorage._bytes.getter();
    if (v14)
    {
      v15 = v14;
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v16))
      {
        goto LABEL_57;
      }

      v8 = (v12 - v16 + v15);
    }

    else
    {
      v8 = 0;
    }

    if (__OFSUB__(v13, v12))
    {
      __break(1u);
    }

    else
    {
      v22 = MEMORY[0x2667557A0]();
      if (v22 >= v13 - v12)
      {
        v23 = v13 - v12;
      }

      else
      {
        v23 = v22;
      }

      if (v8)
      {
        v11 = v23;
      }

      else
      {
        v11 = 0;
      }

      if (v11 >= 0xFFFFFFFF80000000)
      {
        if (v11 <= 0x7FFFFFFF)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v7)
  {
    *&v38 = *v1;
    DWORD2(v38) = v6;
    WORD6(v38) = WORD2(v6);
    v4 = ppStmt[0];
    LODWORD(v8) = BYTE6(v6);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_7:
      v9 = SQLITE_TRANSIENT;
      v10 = &v38;
      LODWORD(v11) = v8;
      goto LABEL_41;
    }

LABEL_52:
    v36 = v4;
    swift_once();
    v4 = v36;
    goto LABEL_7;
  }

  v17 = v5;
  v18 = v5 >> 32;
  v12 = v18 - v17;
  if (v18 < v17)
  {
    __break(1u);
    goto LABEL_54;
  }

  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v20 = v19;
  v21 = __DataStorage._offset.getter();
  if (__OFSUB__(v17, v21))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = (v17 - v21 + v20);
LABEL_30:
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v34 = ppStmt[0];
    v35 = v11;
    swift_once();
    v4 = v34;
    LODWORD(v11) = v35;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_41:
  if (sqlite3_bind_blob(v4, 2, v10, v11, v9))
  {
LABEL_42:
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
LABEL_43:
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v24);

    v25 = v38;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = v25;
    return swift_willThrow();
  }

  v28 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v29 = String.utf8CString.getter();
  v30 = sqlite3_bind_text(v28, 3, (v29 + 32), -1, v9);

  if (v30)
  {
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
    goto LABEL_43;
  }

  v31 = ppStmt[0];
  v32 = String.utf8CString.getter();
  v33 = sqlite3_bind_text(v31, 4, (v32 + 32), -1, v9);

  if (v33)
  {
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
    goto LABEL_43;
  }

  return ppStmt[0];
}

sqlite3_stmt *FailureToDecryptRetryModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM FTD_Retry_Table WHERE client_id = ? AND group_id = ? AND message_id = ?;");
  if (!v3)
  {
LABEL_58:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_42:
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
LABEL_43:
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v24);

    v25 = v38;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = v25;
    return swift_willThrow();
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v38 = *v1;
      DWORD2(v38) = v6;
      WORD6(v38) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v38;
        LODWORD(v11) = v8;
        goto LABEL_41;
      }

LABEL_52:
      v36 = v4;
      swift_once();
      v4 = v36;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v38 + 6) = 0;
    *&v38 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v38;
      LODWORD(v11) = 0;
      goto LABEL_41;
    }

LABEL_54:
    v37 = v4;
    swift_once();
    v4 = v37;
    goto LABEL_25;
  }

  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    v8 = 0;
    v17 = v13 - v12;
    if (!__OFSUB__(v13, v12))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v12, v16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = (v12 - v16 + v15);
  v17 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
    goto LABEL_28;
  }

LABEL_11:
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v4;
  }

  if (v8)
  {
    v11 = v18;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_56;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v19 = v5;
  v20 = v5 >> 32;
  v12 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_54;
  }

  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v19, v23))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v8 = (v19 - v23 + v22);
LABEL_30:
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v34 = ppStmt[0];
    v35 = v11;
    swift_once();
    v4 = v34;
    LODWORD(v11) = v35;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_41:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_42;
  }

  v28 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v29 = String.utf8CString.getter();
  v30 = sqlite3_bind_text(v28, 2, (v29 + 32), -1, v9);

  if (v30)
  {
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
    goto LABEL_43;
  }

  v31 = ppStmt[0];
  v32 = String.utf8CString.getter();
  v33 = sqlite3_bind_text(v31, 3, (v32 + 32), -1, v9);

  if (v33)
  {
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
    goto LABEL_43;
  }

  return ppStmt[0];
}

sqlite3_int64 closure #1 in variable initialization expression of static FailureToDecryptRetryModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_12;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
LABEL_11:
    outlined consume of Data._Representation(v7, v9);
LABEL_12:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || !sqlite3_column_text(a1, 2))
  {
LABEL_10:

    goto LABEL_11;
  }

  v13 = String.init(cString:)();
  v15 = v14;
  if (sqlite3_column_type(a1, 3) == 5 || (v18 = sqlite3_column_int(a1, 3), sqlite3_column_type(a1, 4) == 5))
  {

    goto LABEL_10;
  }

  result = sqlite3_column_int64(a1, 4);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18;
  *(a2 + 56) = result;
  return result;
}

uint64_t (*static FailureToDecryptRetryModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static FailureToDecryptRetryModel.converter;

  return v0;
}

uint64_t static FailureToDecryptRetryModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static FailureToDecryptRetryModel.converter = a1;
  qword_281EF8B40 = a2;
}

uint64_t key path getter for static FailureToDecryptRetryModel.converter : FailureToDecryptRetryModel.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  swift_beginAccess();
  v3 = static FailureToDecryptRetryModel.converter;
  v2 = qword_281EF8B40;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static FailureToDecryptRetryModel.converter : FailureToDecryptRetryModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static FailureToDecryptRetryModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error)partial apply;
  qword_281EF8B40 = v3;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance FailureToDecryptRetryModel())()
{
  swift_beginAccess();
  v1 = static FailureToDecryptRetryModel.converter;
  v0 = qword_281EF8B40;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
}

uint64_t *FailureToDecryptRetryQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static FailureToDecryptRetryQuery.converter;
}

uint64_t static FailureToDecryptRetryQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static FailureToDecryptRetryQuery.converter;

  return v0;
}

uint64_t static FailureToDecryptRetryQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static FailureToDecryptRetryQuery.converter = a1;
  qword_280016A00 = a2;
}

uint64_t (*static FailureToDecryptRetryQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static FailureToDecryptRetryQuery.converter : FailureToDecryptRetryQuery.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static FailureToDecryptRetryQuery.converter;
  v2 = qword_280016A00;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static FailureToDecryptRetryQuery.converter : FailureToDecryptRetryQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static FailureToDecryptRetryQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error);
  qword_280016A00 = v3;
}

uint64_t FailureToDecryptRetryQuery.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t FailureToDecryptRetryQuery.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FailureToDecryptRetryQuery.messageID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

sqlite3_stmt *FailureToDecryptRetryQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("SELECT * FROM FTD_Retry_Table WHERE client_id = ? AND group_id = ? AND message_id = ? LIMIT 1;");
  if (!v3)
  {
LABEL_58:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_42:
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
LABEL_43:
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v24);

    v25 = v38;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = v25;
    return swift_willThrow();
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v38 = *v1;
      DWORD2(v38) = v6;
      WORD6(v38) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v38;
        LODWORD(v11) = v8;
        goto LABEL_41;
      }

LABEL_52:
      v36 = v4;
      swift_once();
      v4 = v36;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v38 + 6) = 0;
    *&v38 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v38;
      LODWORD(v11) = 0;
      goto LABEL_41;
    }

LABEL_54:
    v37 = v4;
    swift_once();
    v4 = v37;
    goto LABEL_25;
  }

  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    v8 = 0;
    v17 = v13 - v12;
    if (!__OFSUB__(v13, v12))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v12, v16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = (v12 - v16 + v15);
  v17 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
    goto LABEL_28;
  }

LABEL_11:
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v4;
  }

  if (v8)
  {
    v11 = v18;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_56;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v19 = v5;
  v20 = v5 >> 32;
  v12 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_54;
  }

  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v19, v23))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v8 = (v19 - v23 + v22);
LABEL_30:
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v34 = ppStmt[0];
    v35 = v11;
    swift_once();
    v4 = v34;
    LODWORD(v11) = v35;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_41:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_42;
  }

  v28 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v29 = String.utf8CString.getter();
  v30 = sqlite3_bind_text(v28, 2, (v29 + 32), -1, v9);

  if (v30)
  {
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
    goto LABEL_43;
  }

  v31 = ppStmt[0];
  v32 = String.utf8CString.getter();
  v33 = sqlite3_bind_text(v31, 3, (v32 + 32), -1, v9);

  if (v33)
  {
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
    goto LABEL_43;
  }

  return ppStmt[0];
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance FailureToDecryptRetryQuery())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static FailureToDecryptRetryQuery.converter;
  v0 = qword_280016A00;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
}

sqlite3_stmt *specialized static FailureToDecryptRetryModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS FTD_Retry_Table (\n    client_id BLOB NOT NULL,\n    group_id TEXT NOT NULL,\n    message_id TEXT NOT NULL,\n    retry_count INTEGER,\n    timestamp BIGINT NOT NULL,\n    PRIMARY KEY (message_id, group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t specialized static FailureToDecryptRetryModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS FTD_Retry_Table_Timestamp_Index ON FTD_Retry_Table(timestamp);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  return result;
}

sqlite3_stmt *specialized static FailureToDecryptRetryModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS FTD_Retry_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for FailureToDecryptRetryQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for FailureToDecryptRetryQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265334D74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t RequestManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v2)
  {
    [v2 setLogToRegistration_];
  }

  *(v0 + 16) = v2;
  return v0;
}

SecureMessagingAgentCore::RequestManagerResultCode_optional __swiftcall RequestManagerResultCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

Swift::Int RequestManagerError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestManagerResultCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](qword_265348848[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestManagerResultCode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](qword_265348848[v2]);
  return Hasher._finalize()();
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance RequestManagerResultCode@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *RequestManager.ftMessageDelivery.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t RequestManager.send(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for KDSRegistration.RequestManagerError.ErrorType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestManager.send(request:), 0, 0);
}

uint64_t RequestManager.send(request:)()
{
  v1 = *(v0[4] + 16);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[9] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = v1;
    v5 = swift_task_alloc();
    v0[10] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore8Response_pMd, &_s24SecureMessagingAgentCore8Response_pMR);
    *v5 = v0;
    v5[1] = RequestManager.send(request:);
    v7 = v0[2];

    return MEMORY[0x2822008A0](v7, 0, 0, 0x71657228646E6573, 0xEE00293A74736575, partial apply for closure #1 in RequestManager.send(request:), v3, v6);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], *MEMORY[0x277D4CAA0], v0[5]);
    type metadata accessor for KDSRegistration.RequestManagerError();
    lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = RequestManager.send(request:);
  }

  else
  {

    v2 = RequestManager.send(request:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in RequestManager.send(request:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 8))(a1, v11, v12);
  Logger.init(subsystem:category:)();
  v14 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_6;
  }

  v30 = v7;
  v32 = a3;
  v33 = v6;
  v17 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v34 = v31;
  *v17 = 136315394;
  v18 = [v14 additionalMessageHeaders];

  if (v18)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v34);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [v14 additionalInternalHeaders];

    if (v23)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = Dictionary.description.getter();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v34);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_26524C000, v15, v16, "RequestManager sending message AdditionalMessageHeaders: %s AdditionalInternalHeaders: %s", v17, 0x16u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);

      a3 = v32;
      v6 = v33;
      v7 = v30;
LABEL_6:
      [a3 sendMessage_];

      (*(v7 + 8))(v10, v6);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t RequestManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t RequestManager.init()()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v2)
  {
    [v2 setLogToRegistration_];
  }

  *(v0 + 16) = v2;
  return v0;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    type metadata accessor for KDSRegistration.RequestManagerError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestManagerResultCode and conformance RequestManagerResultCode()
{
  result = lazy protocol witness table cache variable for type RequestManagerResultCode and conformance RequestManagerResultCode;
  if (!lazy protocol witness table cache variable for type RequestManagerResultCode and conformance RequestManagerResultCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestManagerResultCode and conformance RequestManagerResultCode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestManagerResultCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestManagerResultCode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of RequestManager.send(request:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v8(a1, a2);
}

_BYTE *Data.init(statement:column:)(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    return 0;
  }

  result = sqlite3_column_blob(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sqlite3_column_bytes(a1, a2);
    return specialized Data.init(bytes:count:)(v5, v6);
  }

  return result;
}

Swift::String_optional __swiftcall String.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  if (sqlite3_column_type(statement._rawValue, column) == 5)
  {
    v4 = 0;
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sqlite3_column_text(statement._rawValue, column);
  if (!v4)
  {
    goto LABEL_5;
  }

  v4 = String.init(cString:)();
LABEL_6:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::Double_optional __swiftcall Double.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  if (sqlite3_column_type(statement._rawValue, column) == 5)
  {
    v5 = 0;
  }

  else
  {
    v4 = sqlite3_column_double(statement._rawValue, column);
    v5 = LOBYTE(v4);
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

Swift::Int32_optional __swiftcall Int32.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  v4 = sqlite3_column_type(statement._rawValue, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(statement._rawValue, column);
  }

  return (v5 | ((v4 == 5) << 32));
}

Swift::Int64_optional __swiftcall Int64.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  v4 = sqlite3_column_type(statement._rawValue, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int64(statement._rawValue, column);
  }

  v6 = v4 == 5;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

const unsigned __int8 *protocol witness for SqlAccessor.init(statement:column:) in conformance String@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, const unsigned __int8 **a3@<X8>)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    result = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  result = sqlite3_column_text(a1, a2);
  if (!result)
  {
    goto LABEL_5;
  }

  result = String.init(cString:)();
LABEL_6:
  *a3 = result;
  a3[1] = v7;
  return result;
}

Swift::Int_optional __swiftcall Int.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  v4 = sqlite3_column_type(statement._rawValue, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(statement._rawValue, column);
  }

  v6 = v4 == 5;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance Int@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_type(a1, a2);
  v7 = result;
  if (result == 5)
  {
    v8 = 0;
  }

  else
  {
    result = sqlite3_column_int(a1, a2);
    v8 = result;
  }

  *a3 = v8;
  *(a3 + 8) = v7 == 5;
  return result;
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance Int32@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sqlite3_column_type(a1, a2);
  if (v6 == 5)
  {
    result = 0;
  }

  else
  {
    result = sqlite3_column_int(a1, a2);
  }

  *a3 = result;
  *(a3 + 4) = v6 == 5;
  return result;
}

Swift::Bool_optional __swiftcall Bool.init(statement:column:)(Swift::OpaquePointer statement, Swift::Int32 column)
{
  if (sqlite3_column_type(statement._rawValue, column) == 5)
  {
    return 2;
  }

  else
  {
    return (sqlite3_column_int(statement._rawValue, column) != 0);
  }
}

uint64_t protocol witness for SqlAccessor.init(statement:column:) in conformance Bool@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  result = sqlite3_column_type(a1, a2);
  if (result == 5)
  {
    v7 = 2;
  }

  else
  {
    result = sqlite3_column_int(a1, a2);
    v7 = result != 0;
  }

  *a3 = v7;
  return result;
}

_BYTE *protocol witness for SqlAccessor.init(statement:column:) in conformance Data@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    result = 0;
LABEL_5:
    v9 = 0xF000000000000000;
    goto LABEL_6;
  }

  result = sqlite3_column_blob(a1, a2);
  if (!result)
  {
    goto LABEL_5;
  }

  v7 = result;
  v8 = sqlite3_column_bytes(a1, a2);
  result = specialized Data.init(bytes:count:)(v7, v8);
LABEL_6:
  *a3 = result;
  a3[1] = v9;
  return result;
}

void protocol witness for SqlAccessor.init(statement:column:) in conformance Double(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sqlite3_column_type(a1, a2);
  v7 = 0.0;
  if (v6 != 5)
  {
    v7 = sqlite3_column_double(a1, a2);
  }

  *a3 = v7;
  *(a3 + 8) = v6 == 5;
}

sqlite3_int64 protocol witness for SqlAccessor.init(statement:column:) in conformance Int64@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sqlite3_column_type(a1, a2);
  if (v6 == 5)
  {
    result = 0;
  }

  else
  {
    result = sqlite3_column_int64(a1, a2);
  }

  *a3 = result;
  *(a3 + 8) = v6 == 5;
  return result;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t KeyUpdateModel.init(clientIdentifier:groupID:messagesSinceLastUpdate:timeOfLastUpdate:isFirstUpdate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t KeyUpdateModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KeyUpdateModel.groupID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

sqlite3_stmt *KeyUpdateModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("INSERT OR REPLACE INTO Key_Update_Table (client_id, group_id, messages, time, is_first) VALUES (?, ?, ?, ?, ?);");
  if (!v3)
  {
LABEL_64:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_43:
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
LABEL_44:
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v25);

    v26 = v38;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = v26;
    return swift_willThrow();
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v38 = *v1;
      DWORD2(v38) = v6;
      WORD6(v38) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v38;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_56:
      v36 = v4;
      swift_once();
      v4 = v36;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v38 + 6) = 0;
    *&v38 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v38;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_58:
    v37 = v4;
    swift_once();
    v4 = v37;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    v8 = 0;
    v18 = v14 - v13;
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v17))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v8 = (v13 - v17 + v16);
  v18 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v4;
  }

  if (v8)
  {
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_60;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v20 = v5;
  v21 = v5 >> 32;
  v13 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_58;
  }

  v12 = v1;
  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v24))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v8 = (v20 - v24 + v23);
LABEL_30:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_56;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v34 = ppStmt[0];
    v35 = v11;
    swift_once();
    v4 = v34;
    LODWORD(v11) = v35;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_43;
  }

  v29 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v30 = String.utf8CString.getter();
  v31 = sqlite3_bind_text(v29, 2, (v30 + 32), -1, v9);

  if (v31)
  {
    *&v38 = 0x726F7272456C7173;
    *(&v38 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v32 = *(v1 + 32);
  if (v32 >> 31)
  {
    goto LABEL_62;
  }

  if (sqlite3_bind_int(ppStmt[0], 3, v32))
  {
    goto LABEL_43;
  }

  v33 = *(v1 + 40);
  if (v33 < 0)
  {
    goto LABEL_63;
  }

  if (sqlite3_bind_int64(ppStmt[0], 4, v33) || sqlite3_bind_int(ppStmt[0], 5, *(v1 + 48) & 1))
  {
    goto LABEL_43;
  }

  return ppStmt[0];
}

sqlite3_stmt *KeyUpdateModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("UPDATE Key_Update_Table SET \n    messages = ?, time = ?, is_first = ?\nWHERE\n    client_id = ? AND group_id = ?;");
  if (!v4)
  {
LABEL_63:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_45;
  }

  v7 = *(v1 + 32);
  if (v7 >> 31)
  {
    __break(1u);
    goto LABEL_53;
  }

  v5 = sqlite3_bind_int(ppStmt[0], 1, v7);
  if (v5)
  {
LABEL_45:
    *&v37 = 0x726F7272456C7173;
    *(&v37 + 1) = 0xE90000000000003ALL;
LABEL_46:
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v26);

    v27 = v37;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = v27;
    return swift_willThrow();
  }

  v8 = *(v1 + 40);
  if (v8 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (sqlite3_bind_int64(ppStmt[0], 2, v8))
  {
    goto LABEL_45;
  }

  v5 = sqlite3_bind_int(ppStmt[0], 3, *(v1 + 48) & 1);
  if (v5)
  {
    goto LABEL_45;
  }

  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      *(&v37 + 6) = 0;
      *&v37 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_21:
        v12 = SQLITE_TRANSIENT;
        v13 = &v37;
        LODWORD(v6) = 0;
        goto LABEL_44;
      }

LABEL_58:
      v36 = v5;
      swift_once();
      v5 = v36;
      goto LABEL_21;
    }

    v14 = *(v9 + 16);
    v15 = *(v9 + 24);
    v16 = __DataStorage._bytes.getter();
    if (v16)
    {
      v17 = v16;
      v18 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v18))
      {
        goto LABEL_61;
      }

      v2 = (v14 - v18 + v17);
    }

    else
    {
      v2 = 0;
    }

    if (__OFSUB__(v15, v14))
    {
      __break(1u);
    }

    else
    {
      v24 = MEMORY[0x2667557A0]();
      if (v24 >= v15 - v14)
      {
        v25 = v15 - v14;
      }

      else
      {
        v25 = v24;
      }

      if (v2)
      {
        v6 = v25;
      }

      else
      {
        v6 = 0;
      }

      if (v6 >= 0xFFFFFFFF80000000)
      {
        if (v6 <= 0x7FFFFFFF)
        {
          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!v11)
  {
    *&v37 = *v1;
    DWORD2(v37) = v10;
    WORD6(v37) = WORD2(v10);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v10);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_11:
      v12 = SQLITE_TRANSIENT;
      v13 = &v37;
      LODWORD(v6) = v2;
      goto LABEL_44;
    }

LABEL_56:
    v35 = v5;
    swift_once();
    v5 = v35;
    goto LABEL_11;
  }

  v19 = v9;
  v20 = v9 >> 32;
  v14 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_58;
  }

  v21 = __DataStorage._bytes.getter();
  if (v21)
  {
    v22 = v21;
    v23 = __DataStorage._offset.getter();
    if (!__OFSUB__(v19, v23))
    {
      v2 = (v19 - v23 + v22);
      goto LABEL_34;
    }

    goto LABEL_62;
  }

LABEL_33:
  v2 = 0;
LABEL_34:
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v6 = v14;
  }

  else
  {
    v6 = v5;
  }

  if (!v2)
  {
    goto LABEL_41;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v6 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_41:
    LODWORD(v6) = 0;
  }

LABEL_42:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_54:
    v33 = v5;
    v34 = v6;
    swift_once();
    v5 = v33;
    LODWORD(v6) = v34;
  }

  v12 = SQLITE_TRANSIENT;
  v13 = v2;
LABEL_44:
  if (sqlite3_bind_blob(v5, 4, v13, v6, v12))
  {
    goto LABEL_45;
  }

  v30 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v31 = String.utf8CString.getter();
  v32 = sqlite3_bind_text(v30, 5, (v31 + 32), -1, v12);

  if (v32)
  {
    *&v37 = 0x726F7272456C7173;
    *(&v37 + 1) = 0xE90000000000003ALL;
    goto LABEL_46;
  }

  return ppStmt[0];
}

sqlite3_stmt *KeyUpdateModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM Key_Update_Table WHERE client_id = ? AND group_id = ?;");
  if (!v3)
  {
LABEL_56:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_42:
    *&v35 = 0x726F7272456C7173;
    *(&v35 + 1) = 0xE90000000000003ALL;
LABEL_43:
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v24);

    v25 = v35;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = v25;
    return swift_willThrow();
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v35 = *v1;
      DWORD2(v35) = v6;
      WORD6(v35) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v35;
        LODWORD(v11) = v8;
        goto LABEL_41;
      }

LABEL_50:
      v33 = v4;
      swift_once();
      v4 = v33;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v35 + 6) = 0;
    *&v35 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v35;
      LODWORD(v11) = 0;
      goto LABEL_41;
    }

LABEL_52:
    v34 = v4;
    swift_once();
    v4 = v34;
    goto LABEL_25;
  }

  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    v8 = 0;
    v17 = v13 - v12;
    if (!__OFSUB__(v13, v12))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v12, v16))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v8 = (v12 - v16 + v15);
  v17 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
    goto LABEL_28;
  }

LABEL_11:
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v4;
  }

  if (v8)
  {
    v11 = v18;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_54;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v19 = v5;
  v20 = v5 >> 32;
  v12 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_52;
  }

  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v19, v23))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = (v19 - v23 + v22);
LABEL_30:
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v31 = ppStmt[0];
    v32 = v11;
    swift_once();
    v4 = v31;
    LODWORD(v11) = v32;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_41:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_42;
  }

  v28 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v29 = String.utf8CString.getter();
  v30 = sqlite3_bind_text(v28, 2, (v29 + 32), -1, v9);

  if (v30)
  {
    *&v35 = 0x726F7272456C7173;
    *(&v35 + 1) = 0xE90000000000003ALL;
    goto LABEL_43;
  }

  return ppStmt[0];
}

uint64_t closure #1 in variable initialization expression of static KeyUpdateModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_10;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
LABEL_9:
    outlined consume of Data._Representation(v7, v9);
LABEL_10:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v15 = 3;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    return swift_willThrow();
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || (v13 = sqlite3_column_int(a1, 2), sqlite3_column_type(a1, 3) == 5) || (v14 = sqlite3_column_int64(a1, 3), sqlite3_column_type(a1, 4) == 5))
  {

    goto LABEL_9;
  }

  result = sqlite3_column_int(a1, 4);
  if ((v13 & 0x80000000) != 0 || v14 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = result > 0;
  }

  return result;
}

uint64_t (*static KeyUpdateModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static KeyUpdateModel.converter;

  return v0;
}

uint64_t static KeyUpdateModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static KeyUpdateModel.converter = a1;
  qword_281EF8C18 = a2;
}

uint64_t key path getter for static KeyUpdateModel.converter : KeyUpdateModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static KeyUpdateModel.converter;
  v2 = qword_281EF8C18;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static KeyUpdateModel.converter : KeyUpdateModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static KeyUpdateModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out KeyUpdateModel?, @error @owned Error)partial apply;
  qword_281EF8C18 = v3;
}

double thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out KeyUpdateModel?, @error @owned Error)@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v11 = a1;
  a2(v9, &v11);
  if (!v3)
  {
    v6 = v10;
    result = *v9;
    v7 = v9[1];
    v8 = v9[2];
    *a3 = v9[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 48) = v6;
  }

  return result;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance KeyUpdateModel())@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v1 = static KeyUpdateModel.converter;
  v0 = qword_281EF8C18;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)partial apply;
}

uint64_t *KeyUpdateQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static KeyUpdateQuery.converter;
}

uint64_t static KeyUpdateQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static KeyUpdateQuery.converter;

  return v0;
}

uint64_t static KeyUpdateQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static KeyUpdateQuery.converter = a1;
  qword_280016A10 = a2;
}

uint64_t (*static KeyUpdateQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static KeyUpdateQuery.converter : KeyUpdateQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static KeyUpdateQuery.converter;
  v2 = qword_280016A10;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static KeyUpdateQuery.converter : KeyUpdateQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static KeyUpdateQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out KeyUpdateModel?, @error @owned Error);
  qword_280016A10 = v3;
}

sqlite3_stmt *KeyUpdateQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("SELECT * FROM Key_Update_Table WHERE client_id = ? AND group_id = ? LIMIT 1;");
  if (!v8)
  {
LABEL_55:
    __break(1u);
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_40:
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
LABEL_41:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v22);

    v23 = v32;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v23;
    return swift_willThrow();
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_32;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_53;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      if (v15)
      {
        a3 = v19;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v10)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_50;
    }

    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v9;
      }

      if (v15)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_48;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v32 + 6) = 0;
          *&v32 = 0;
          v9 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v11 = SQLITE_TRANSIENT;
            v12 = &v32;
            v21 = 0;
            goto LABEL_39;
          }

LABEL_50:
          v31 = v9;
          swift_once();
          v9 = v31;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v29 = ppStmt[0];
        swift_once();
        v9 = v29;
      }

      v11 = SQLITE_TRANSIENT;
      v12 = v15;
      goto LABEL_38;
    }

    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v20))
    {
      v15 += a2 - v20;
      goto LABEL_25;
    }

    goto LABEL_54;
  }

  *&v32 = a2;
  WORD4(v32) = a3;
  BYTE10(v32) = BYTE2(a3);
  BYTE11(v32) = BYTE3(a3);
  BYTE12(v32) = BYTE4(a3);
  BYTE13(v32) = BYTE5(a3);
  v9 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_48:
    v30 = v9;
    swift_once();
    v9 = v30;
  }

  v11 = SQLITE_TRANSIENT;
  v12 = &v32;
LABEL_38:
  v21 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v12, v21, v11))
  {
    goto LABEL_40;
  }

  v26 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v27 = String.utf8CString.getter();
  v28 = sqlite3_bind_text(v26, 2, (v27 + 32), -1, v11);

  if (v28)
  {
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  return ppStmt[0];
}

double (*protocol witness for static SqlQuery.converter.getter in conformance KeyUpdateQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static KeyUpdateQuery.converter;
  v0 = qword_280016A10;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error);
}

sqlite3_stmt *specialized static KeyUpdateModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Key_Update_Table (\n    client_id BLOB NOT NULL,\n    group_id TEXT NOT NULL,\n    messages INT NOT NULL,\n    time BIGINT NOT NULL,\n    is_first INT NOT NULL,\n    PRIMARY KEY (group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

sqlite3_stmt *specialized static KeyUpdateModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Key_Update_Table;");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for KeyUpdateModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for KeyUpdateModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2653382CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)(a1, a2);
}

{
  (*(v2 + 16))(v7, *a1);
  if (!v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = *&v8;
    *(a2 + 32) = v8;
    *(a2 + 48) = v9;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)@<D0>(uint64_t a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyUpdateModel?, @error @owned Error)(a1);
}

{
  (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t KDSRegistrationPersister.__allocating_init(fileDir:dbFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  KDSRegistrationPersister.init(fileDir:dbFileName:)(a1, a2, a3, a4);
  return v8;
}

uint64_t KDSRegistrationPersister.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KDSRegistrationPersister.fileDir.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);

  return v1;
}

uint64_t KDSRegistrationPersister.dbFileName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);

  return v1;
}

uint64_t KDSRegistrationPersister.useDatabase.getter()
{
  v0 = type metadata accessor for SMAFeatureFlagsKey();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D4CC30], v0);
  v5 = SMAFeatureFlagsKey.isEnabled.getter();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t KDSRegistrationPersister.init(fileDir:dbFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v19 = a1;
  v20 = a2;
  v5 = type metadata accessor for LogCategory();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 104);
  v10(v9, *MEMORY[0x277D4C910], v5);
  secureMessagingLogger(category:)();
  v11 = *(v6 + 8);
  v11(v9, v5);
  v12 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store;
  type metadata accessor for SqliteStore(0);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  v10(v9, *MEMORY[0x277D4C920], v5);
  secureMessagingLogger(category:)();
  v11(v9, v5);
  *(v13 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  *(v4 + v12) = v13;
  v14 = (v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);
  v15 = v20;
  *v14 = v19;
  v14[1] = v15;
  v16 = (v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  return v4;
}

uint64_t KDSRegistrationPersister.setupDB()()
{
  v1[3] = v0;
  type metadata accessor for RegistrationActor();
  v1[4] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v2;
  v1[6] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationPersister.setupDB(), v2, v3);
}

{
  if ((*(*v0[3] + 112))())
  {
    v1 = v0[3];
    v2 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v3 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);
    v4 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir + 8);
    v5 = MEMORY[0x266756A10](v3, v4);
    v0[2] = 0;
    v6 = [v2 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

    v7 = v0[2];
    if (v6)
    {
      v8 = v0[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_265343880;
      v10 = MEMORY[0x277D837D0];
      *(v9 + 56) = MEMORY[0x277D837D0];
      v11 = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 64) = v11;
      *(v9 + 32) = v3;
      *(v9 + 40) = v4;
      v12 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);
      v13 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName + 8);
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 72) = v12;
      *(v9 + 80) = v13;
      v14 = v7;

      v15 = String.init(format:_:)();
      v17 = v16;
      v0[7] = v16;
      v0[8] = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);
      v18 = swift_task_alloc();
      v0[9] = v18;
      *v18 = v0;
      v18[1] = KDSRegistrationPersister.setupDB();

      return SqliteStore.open(filePath:)(v15, v17);
    }

    v24 = v7;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = v0[1];
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26524C000, v20, v21, "DaemonPersister feature flag off. Not setting up DB.", v22, 2u);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    v23 = v0[1];
  }

  return v23();
}

{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];

    return MEMORY[0x2822009F8](KDSRegistrationPersister.setupDB(), v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v2[11] = v6;
    *v6 = v3;
    v6[1] = KDSRegistrationPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for StateMachineModel, &protocol witness table for StateMachineModel);
  }
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = KDSRegistrationPersister.setupDB();
  }

  else
  {
    v5 = KDSRegistrationPersister.setupDB();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationPersister.closeDB()()
{
  v1[2] = v0;
  type metadata accessor for RegistrationActor();
  v1[3] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](KDSRegistrationPersister.closeDB(), v3, v2);
}

{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = KDSRegistrationStateMachine.saveState();

  return SqliteStore.close()();
}

uint64_t KDSRegistrationPersister.deleteDB()()
{
  *(v1 + 24) = v0;
  type metadata accessor for RegistrationActor();
  *(v1 + 32) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationPersister.deleteDB(), v3, v2);
}

{
  v1 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265343880;
  v4 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir);
  v3 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_fileDir + 8);
  v5 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  v7 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName);
  v8 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_dbFileName + 8);
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 72) = v7;
  *(v2 + 80) = v8;

  v9 = String.init(format:_:)();
  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v13 = MEMORY[0x266756A10](v9, v11);

  v0[2] = 0;
  LODWORD(v4) = [v12 removeItemAtPath:v13 error:v0 + 2];

  v14 = v0[2];
  if (v4)
  {
    v19 = v0[1];
    v15 = v14;
    v16 = v19;
  }

  else
  {
    v17 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = v0[1];
  }

  return v16();
}

uint64_t KDSRegistrationPersister.save(stateMachine:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  type metadata accessor for RegistrationActor();
  v2[31] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[32] = v4;
  v2[33] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationPersister.save(stateMachine:), v4, v3);
}

uint64_t KDSRegistrationPersister.save(stateMachine:)()
{
  if ((*(*v0[30] + 112))())
  {
    v1 = v0[29];
    v0[34] = *(v0[30] + OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_store);
    v8 = (*(*v1 + 680) + **(*v1 + 680));
    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = KDSRegistrationPersister.save(stateMachine:);

    return v8(v0 + 2);
  }

  else
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister feature flag off. Not saving.", v6, 2u);
      MEMORY[0x2667577B0](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = KDSRegistrationPersister.save(stateMachine:);
  }

  else
  {
    v5 = KDSRegistrationPersister.save(stateMachine:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  *(v0 + 216) = &type metadata for StateMachineModel;
  *(v0 + 224) = &protocol witness table for StateMachineModel;
  v1 = swift_allocObject();
  *(v0 + 192) = v1;
  v2 = *(v0 + 160);
  v1[9] = *(v0 + 144);
  v1[10] = v2;
  *(v1 + 169) = *(v0 + 169);
  v3 = *(v0 + 96);
  v1[5] = *(v0 + 80);
  v1[6] = v3;
  v4 = *(v0 + 128);
  v1[7] = *(v0 + 112);
  v1[8] = v4;
  v5 = *(v0 + 32);
  v1[1] = *(v0 + 16);
  v1[2] = v5;
  v6 = *(v0 + 64);
  v1[3] = *(v0 + 48);
  v1[4] = v6;
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = KDSRegistrationPersister.save(stateMachine:);

  return SqliteStore.insert(_:)(v0 + 192);
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = v2[32];
    v4 = v2[33];
    v5 = KDSRegistrationPersister.save(stateMachine:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 24);
    v3 = v2[32];
    v4 = v2[33];
    v5 = KDSRegistrationPersister.save(stateMachine:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationPersister.loadRegistrationStateMachines(with:)(uint64_t a1)
{
  v2[92] = v1;
  v2[91] = a1;
  type metadata accessor for RegistrationActor();
  v2[93] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[94] = v4;
  v2[95] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationPersister.loadRegistrationStateMachines(with:), v4, v3);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 776) = a1;
  *(v4 + 784) = v1;

  v5 = *(v3 + 760);
  v6 = *(v3 + 752);
  if (v1)
  {
    v7 = KDSRegistrationPersister.loadRegistrationStateMachines(with:);
  }

  else
  {
    v7 = KDSRegistrationPersister.loadRegistrationStateMachines(with:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t KDSRegistrationPersister.loadRegistrationStateMachines(with:)()
{
  if ((*(**(v0 + 736) + 112))())
  {
    v1 = swift_task_alloc();
    *(v0 + 768) = v1;
    *v1 = v0;
    v1[1] = KDSRegistrationPersister.loadRegistrationStateMachines(with:);

    return specialized SqliteStore.query<A>(_:)();
  }

  else
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister feature flag off. Not loading", v5, 2u);
      MEMORY[0x2667577B0](v5, -1, -1);
    }

    v6 = *(v0 + 8);
    v7 = MEMORY[0x277D84F90];

    return v6(v7);
  }
}

{
  v66 = v0;
  v1 = *(v0 + 776);

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = *(v1 + 16);
  v3 = *(v0 + 776);
  if (v2)
  {
    v54 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (*(v1 + 16))
    {
      v5 = *(v0 + 784);
      v6 = *(v0 + 728);
      v8 = v3[3];
      v7 = v3[4];
      *(v0 + 16) = v3[2];
      *(v0 + 32) = v8;
      *(v0 + 48) = v7;
      v9 = v3[8];
      v11 = v3[5];
      v10 = v3[6];
      *(v0 + 96) = v3[7];
      *(v0 + 112) = v9;
      *(v0 + 64) = v11;
      *(v0 + 80) = v10;
      v13 = v3[10];
      v12 = v3[11];
      v14 = v3[9];
      *(v0 + 169) = *(v3 + 185);
      *(v0 + 144) = v13;
      *(v0 + 160) = v12;
      *(v0 + 128) = v14;
      v15 = v3[11];
      v64 = v3[10];
      v65[0] = v15;
      *(v65 + 9) = *(v3 + 185);
      v16 = v3[7];
      v60 = v3[6];
      v61 = v16;
      v17 = v3[9];
      v62 = v3[8];
      v63 = v17;
      v18 = v3[3];
      v56 = v3[2];
      v57 = v18;
      v19 = v3[5];
      v58 = v3[4];
      v59 = v19;
      outlined init with copy of StateMachineModel(v0 + 16, v0 + 192);
      closure #1 in KDSRegistrationPersister.loadRegistrationStateMachines(with:)(&v56, v6, (v0 + 720), &v55);
      if (v5)
      {
        v20 = v65[0];
        *(v0 + 496) = v64;
        *(v0 + 512) = v20;
        v21 = v61;
        *(v0 + 432) = v60;
        *(v0 + 448) = v21;
        v22 = v63;
        *(v0 + 464) = v62;
        *(v0 + 480) = v22;
        v23 = v57;
        *(v0 + 368) = v56;
        *(v0 + 384) = v23;
        v24 = v59;
        *(v0 + 400) = v58;
        *(v0 + 416) = v24;
        *(v0 + 521) = *(v65 + 9);
        outlined destroy of StateMachineModel(v0 + 368);

        v25 = *(v0 + 8);

        return v25();
      }

      v27 = v65[0];
      *(v0 + 672) = v64;
      *(v0 + 688) = v27;
      *(v0 + 697) = *(v65 + 9);
      v28 = v61;
      *(v0 + 608) = v60;
      *(v0 + 624) = v28;
      v29 = v63;
      *(v0 + 640) = v62;
      *(v0 + 656) = v29;
      v30 = v57;
      *(v0 + 544) = v56;
      *(v0 + 560) = v30;
      v31 = v59;
      *(v0 + 576) = v58;
      *(v0 + 592) = v31;
      outlined destroy of StateMachineModel(v0 + 544);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v2 == 1)
      {
        goto LABEL_9;
      }

      if (*(v1 + 16) >= 2uLL)
      {
        v33 = v3 + 13;
        v34 = 1;
        while (1)
        {
          v35 = *(v0 + 728);
          v37 = v33[1];
          v36 = v33[2];
          *(v0 + 16) = *v33;
          *(v0 + 32) = v37;
          *(v0 + 48) = v36;
          v38 = v33[6];
          v40 = v33[3];
          v39 = v33[4];
          *(v0 + 96) = v33[5];
          *(v0 + 112) = v38;
          *(v0 + 64) = v40;
          *(v0 + 80) = v39;
          v42 = v33[8];
          v41 = v33[9];
          v43 = v33[7];
          *(v0 + 169) = *(v33 + 153);
          *(v0 + 144) = v42;
          *(v0 + 160) = v41;
          *(v0 + 128) = v43;
          v44 = v33[9];
          v64 = v33[8];
          v65[0] = v44;
          *(v65 + 9) = *(v33 + 153);
          v45 = v33[5];
          v60 = v33[4];
          v61 = v45;
          v46 = v33[7];
          v62 = v33[6];
          v63 = v46;
          v47 = v33[1];
          v56 = *v33;
          v57 = v47;
          v48 = v33[3];
          v58 = v33[2];
          v59 = v48;
          outlined init with copy of StateMachineModel(v0 + 16, v0 + 192);
          closure #1 in KDSRegistrationPersister.loadRegistrationStateMachines(with:)(&v56, v35, (v0 + 720), &v55);
          v49 = v65[0];
          *(v0 + 672) = v64;
          *(v0 + 688) = v49;
          *(v0 + 697) = *(v65 + 9);
          v50 = v61;
          *(v0 + 608) = v60;
          *(v0 + 624) = v50;
          v51 = v63;
          *(v0 + 640) = v62;
          *(v0 + 656) = v51;
          v52 = v57;
          *(v0 + 544) = v56;
          *(v0 + 560) = v52;
          v53 = v59;
          *(v0 + 576) = v58;
          *(v0 + 592) = v53;
          outlined destroy of StateMachineModel(v0 + 544);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          if (2 - v2 + v34 == 1)
          {
            break;
          }

          v33 += 11;
          if (++v34 >= *(v1 + 16))
          {
            goto LABEL_17;
          }
        }

LABEL_9:

        v26 = v54;
        goto LABEL_10;
      }
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_10:
  v32 = *(v0 + 8);

  return v32(v26);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in KDSRegistrationPersister.loadRegistrationStateMachines(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v157 = a3;
  v132 = a2;
  v135 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v134 = &v118 - v7;
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v133 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for LogCategory();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v11);
  v127 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v141 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v155 = &v118 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v122 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v143 = &v118 - v24;
  v146 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v140 = *(v146 - 8);
  v26 = MEMORY[0x28223BE20](v146, v25);
  v139 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v147 = &v118 - v29;
  v30 = type metadata accessor for KDSRegistration.URISupportedState();
  v152 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v142 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v156 = &v118 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v38 = MEMORY[0x28223BE20](v36 - 8, v37);
  v138 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v118 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v118 - v45;
  v47 = *(a1 + 8);
  v145 = *a1;
  v144 = v47;
  v48 = *(a1 + 24);
  v124 = *(a1 + 16);
  v49 = *(a1 + 40);
  v123 = *(a1 + 32);
  v51 = *(a1 + 48);
  v50 = *(a1 + 56);
  v52 = *(a1 + 72);
  v154 = *(a1 + 64);
  v153 = v52;
  v53 = *(a1 + 88);
  v151 = *(a1 + 80);
  v150 = v53;
  v54 = *(a1 + 104);
  v136 = *(a1 + 96);
  v137 = v54;
  v55 = *(a1 + 136);
  v126 = *(a1 + 128);
  v125 = v55;
  v56 = *(a1 + 152);
  v120 = *(a1 + 144);
  v121 = v56;
  v131 = *(a1 + 160);
  v130 = *(a1 + 168);
  v57 = type metadata accessor for URI();
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v163 = v46;
  v149 = v59;
  v148 = v58 + 56;
  v59(v46, 1, 1, v57);
  v160 = v48;

  v159 = v49;

  if (v50 >> 60 == 15)
  {
    v60 = v158;
  }

  else
  {
    outlined copy of Data?(v51, v50);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D268]);
    v61 = v158;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v60 = v61;
    if (v61)
    {
      outlined destroy of MLS.KeyPackageProvider?(v163, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
      outlined consume of Data?(v51, v50);
LABEL_8:

      *v157 = v60;
      return result;
    }

    v62 = v163;
    outlined destroy of MLS.KeyPackageProvider?(v163, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    outlined consume of Data?(v51, v50);
    v149(v43, 0, 1, v57);
    outlined init with take of MLS.OutgoingEventState?(v43, v62, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  }

  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState, MEMORY[0x277D4CA38], MEMORY[0x277D4CA48]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v63 = v155;
  if (v60)
  {
    outlined destroy of MLS.KeyPackageProvider?(v163, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    goto LABEL_8;
  }

  v119 = v30;
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v65 = LOBYTE(v162[0]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CB08]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  LODWORD(v153) = v65;
  v66 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v67 = *(v66 - 8);
  *&v158 = *(v67 + 56);
  v154 = v67 + 56;
  (v158)(v143, 1, 1, v66);
  v68 = v137;
  if (v137 >> 60 == 15)
  {
    v151 = v66;
  }

  else
  {
    outlined copy of Data._Representation(v136, v137);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, MEMORY[0x277D4C938], MEMORY[0x277D4C948]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v69 = v143;
    outlined destroy of MLS.KeyPackageProvider?(v143, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
    outlined consume of Data?(v136, v68);
    v70 = v122;
    v151 = v66;
    (v158)(v122, 0, 1, v66);
    outlined init with take of MLS.OutgoingEventState?(v70, v69, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  }

  v71 = type metadata accessor for MLS.KeyPackageInfo();
  v72 = *(v71 - 8);
  v73 = *(v72 + 56);
  v157 = (v72 + 56);
  v73(v63, 1, 1, v71);
  v74 = v63;
  if (v121 >> 60 != 15)
  {
    outlined copy of Data._Representation(v120, v121);
    v75 = v141;
    MLS.KeyPackageInfo.init(keyPackage:)();
    outlined destroy of MLS.KeyPackageProvider?(v63, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
    v73(v75, 0, 1, v71);
    outlined init with take of MLS.OutgoingEventState?(v75, v63, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  }

  v76 = v132;
  v77 = *&v132[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator];
  v136 = v73;
  v78 = *(v152 + 16);
  v144 = v152 + 16;
  v150 = v78;
  v78(v142, v156, v119);
  v79 = *(v140 + 16);
  v137 = v140 + 16;
  v145 = v79;
  v79(v139, v147, v146);
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v163, v138, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v74, v141, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  type metadata accessor for KDSRegistrationStateMachine(0);
  v80 = swift_allocObject();
  v162[3] = type metadata accessor for KDSRegistrationDaemon(0);
  v162[4] = &protocol witness table for KDSRegistrationDaemon;
  v162[0] = v76;
  v161[3] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v161[4] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
  v161[0] = v77;
  v81 = *MEMORY[0x277D4C918];
  v82 = v128;
  v83 = *(v128 + 104);
  v84 = v127;
  v122 = v71;
  v85 = v129;
  v83(v127, v81, v129);

  v86 = v76;
  secureMessagingLogger(category:)();
  (*(v82 + 8))(v84, v85);
  (v158)(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo, 1, 1, v151);
  v158 = xmmword_2653419D0;
  *(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v149((v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI), 1, 1, v57);
  v87 = (v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v87 = 0;
  v87[1] = 0;
  *(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v88 = (v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v88 = 0;
  v88[1] = 0;
  v136(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage, 1, 1, v122);
  v89 = v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v89 = 0;
  *(v89 + 8) = 1;
  *(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = v158;
  *(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v90 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v80 + v90) = JSONEncoder.init()();
  outlined init with copy of SMAUserDefaultsProtocol(v162, v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol(v161, v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v91 = v160;
  *(v80 + 24) = v124;
  *(v80 + 32) = v91;
  v92 = v159;
  *(v80 + 40) = v123;
  *(v80 + 48) = v92;
  v93 = v80;
  v150(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState, v142, v119);
  v94 = v139;
  v95 = v146;
  v145(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier, v139, v146);
  *(v80 + 16) = v153;
  v96 = (v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = v126;
  v100 = v125;
  *v96 = v126;
  v96[1] = v100;
  outlined copy of Data?(v99, v100);
  outlined consume of Data?(v97, v98);
  v101 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  swift_beginAccess();
  v102 = v138;
  outlined assign with copy of URI?(v138, v80 + v101, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  swift_endAccess();
  v103 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  swift_beginAccess();
  v104 = v80 + v103;
  v105 = v141;
  outlined assign with copy of URI?(v141, v104, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  swift_endAccess();
  v106 = v93 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  swift_beginAccess();
  *v106 = v131;
  *(v106 + 8) = v130;
  v107 = (v93 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  *v107 = v158;
  outlined consume of Data?(v108, v109);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v110 = type metadata accessor for TaskPriority();
  v111 = v134;
  (*(*(v110 - 8) + 56))(v134, 1, 1, v110);
  type metadata accessor for RegistrationActor();

  v112 = static RegistrationActor.shared.getter();
  v113 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v114 = swift_allocObject();
  v114[2] = v112;
  v114[3] = v113;
  v114[4] = v93;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v111, &async function pointer to partial apply for closure #1 in KDSRegistrationStateMachine.rerun(), v114);

  outlined destroy of MLS.KeyPackageProvider?(v105, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v102, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v115 = *(v140 + 8);
  v115(v94, v95);
  v116 = *(v152 + 8);
  v117 = v119;
  v116(v142, v119);
  outlined destroy of MLS.KeyPackageProvider?(v155, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v143, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v115(v147, v95);
  v116(v156, v117);
  outlined destroy of MLS.KeyPackageProvider?(v163, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v162);
  *v135 = v93;
  return result;
}

uint64_t KDSRegistrationPersister.deleteRegistration(_:)()
{
  type metadata accessor for RegistrationActor();
  *(v0 + 16) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationPersister.deleteRegistration(_:), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationPersister.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t KDSRegistrationPersister.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore24KDSRegistrationPersister_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26533BB28()
{
  outlined consume of Data._Representation(v0[2], v0[3]);

  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v1);
  }

  outlined consume of Data._Representation(v0[10], v0[11]);
  outlined consume of Data._Representation(v0[12], v0[13]);
  v2 = v0[15];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[14], v2);
  }

  v3 = v0[17];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[16], v3);
  }

  v4 = v0[19];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[18], v4);
  }

  v5 = v0[21];
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[20], v5);
  }

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t type metadata accessor for KDSRegistrationPersister(uint64_t a1)
{
  result = type metadata singleton initialization cache for KDSRegistrationPersister;
  if (!type metadata singleton initialization cache for KDSRegistrationPersister)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for KDSRegistrationPersister(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of KDSRegistrationPersister.setupDB()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v4();
}

uint64_t dispatch thunk of KDSRegistrationPersister.closeDB()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v4();
}

uint64_t dispatch thunk of KDSRegistrationPersister.deleteDB()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v4();
}

uint64_t dispatch thunk of KDSRegistrationPersister.save(stateMachine:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6(a1);
}

uint64_t dispatch thunk of KDSRegistrationPersister.loadRegistrationStateMachines(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v6(a1);
}

uint64_t dispatch thunk of KDSRegistrationPersister.deleteRegistration(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v8(a1, a2);
}

uint64_t sub_26533C4E0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8E8](v8, 40, 7);
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhoneNumberProvider.__allocating_init()()
{
  v0 = type metadata accessor for LogCategory();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  (*(v1 + 104))(v4, *MEMORY[0x277D4C908], v0);
  secureMessagingLogger(category:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t PhoneNumberInfo.init(uri:credential:credentialType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for URI();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PhoneNumberInfo(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CredentialType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0x7373654C534D53;
  if (a1 != 2)
  {
    v2 = 0x6E656B6F54534352;
  }

  if (a1)
  {
    v1 = 5459283;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneNumberInfo.uri.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URI();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PhoneNumberInfo.credential.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhoneNumberInfo(0) + 20));

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CredentialType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x7373654C534D53;
  if (v3 != 2)
  {
    v6 = 0x6E656B6F54534352;
    v5 = 0xE800000000000000;
  }

  v7 = 5459283;
  if (*a1)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v7 = 0x6E776F6E6B6E55;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE700000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x7373654C534D53;
  if (*a2 != 2)
  {
    v12 = 0x6E656B6F54534352;
    v11 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 5459283;
    v10 = 0xE300000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CredentialType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CredentialType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CredentialType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CredentialType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CredentialType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CredentialType(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  v4 = 0xE700000000000000;
  v5 = 0x7373654C534D53;
  if (*v1 != 2)
  {
    v5 = 0x6E656B6F54534352;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 5459283;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t PhoneNumberProvider.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore19PhoneNumberProvider_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6863746546534449;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746546534449 && a2 == 0xED0000726F727245;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534D0B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys(uint64_t a1)
{
  found = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();

  return MEMORY[0x2821FE718](a1, found);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys(uint64_t a1)
{
  found = lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();

  return MEMORY[0x2821FE720](a1, found);
}

uint64_t PhoneNumberProvider.PhoneNumberProviderError.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - v5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = (v12 + 8);
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v18);
  }

  return (*v16)(v15, v11);
}

Swift::Int PhoneNumberProvider.PhoneNumberProviderError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneNumberProvider.PhoneNumberProviderError@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized PhoneNumberProvider.PhoneNumberProviderError.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t PhoneNumberProvider.obtainPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for URI();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](PhoneNumberProvider.obtainPhoneNumberInfo(for:), 0, 0);
}

uint64_t PhoneNumberProvider.obtainPhoneNumberInfo(for:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[27] = [objc_allocWithZone(MEMORY[0x277D18748]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D18748]) init];
  v0[28] = v3;
  v4 = MEMORY[0x266756A10](v2, v1);
  v0[29] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = PhoneNumberProvider.obtainPhoneNumberInfo(for:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo24IDSPhoneNumberCredentialCs5Error_pGMd, &_sSccySo24IDSPhoneNumberCredentialCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPhoneNumberCredential?, @unowned NSError?) -> () with result type IDSPhoneNumberCredential;
  v0[13] = &block_descriptor_10;
  v0[14] = v5;
  [v3 requestPhoneNumberCredentialForService:2 simLabelID:v4 requestOption:1 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = PhoneNumberProvider.obtainPhoneNumberInfo(for:);
  }

  else
  {
    v2 = PhoneNumberProvider.obtainPhoneNumberInfo(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v42 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);

  v3 = [v2 telURI];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URI.init(unprefixedTelURI:)();
  v4 = [v2 credential];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v39 = v2;
  v8 = [v2 credentialType];
  if (v8 >= 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 152);
  v14 = *(*(v0 + 192) + 16);
  v14(v13, v10, v12);
  v15 = type metadata accessor for PhoneNumberInfo(0);
  v16 = (v13 + *(v15 + 20));
  v37 = v5;
  *v16 = v5;
  v16[1] = v7;
  *(v13 + *(v15 + 24)) = v9;
  v14(v11, v10, v12);
  v40 = v7;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v24 = *(v0 + 184);
  if (v19)
  {
    v25 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v25 = 136315394;
    lazy protocol witness table accessor for type URI and conformance URI();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v21;
    v28 = v27;
    v36 = v20;
    v29 = *(v23 + 8);
    v29(v22, v24);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v41);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v41);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_26524C000, v17, v18, "Received phone number information. { uri: %s, credential: %s }", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v35, -1, -1);
    MEMORY[0x2667577B0](v25, -1, -1);

    v32 = v38;
  }

  else
  {

    v29 = *(v23 + 8);
    v29(v22, v24);
    v32 = v21;
  }

  v29(v32, v24);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t PhoneNumberProvider.obtainPhoneNumberInfo(for:)(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[28];
  swift_willThrow();

  v4 = v1[30];
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26524C000, v6, v7, "Hit an error fetching phone number information. %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x2667577B0](v9, -1, -1);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  v12 = v1[27];

  lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError();
  swift_allocError();
  *v13 = 0;
  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPhoneNumberCredential?, @unowned NSError?) -> () with result type IDSPhoneNumberCredential(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t PhoneNumberProvider.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore19PhoneNumberProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhoneNumberProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore19PhoneNumberProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t PhoneNumberProvider.init()()
{
  v1 = type metadata accessor for LogCategory();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D4C908], v1);
  secureMessagingLogger(category:)();
  (*(v2 + 8))(v5, v1);
  return v0;
}

unint64_t specialized CredentialType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CredentialType.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys);
  }

  return result;
}

uint64_t specialized PhoneNumberProvider.PhoneNumberProviderError.init(from:)(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO27NoCredentialFoundCodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v2);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO08IDSFetchK10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19PhoneNumberProviderC0hiJ5ErrorO10CodingKeys33_26E767F536B977ADC5A81AD7FB343DB2LLOGMR);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.CodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.CodingKeys();
  v13 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v40 = v5;
  v45 = a1;
  v15 = v42;
  v14 = v43;
  v16 = v12;
  v17 = KeyedDecodingContainer.allKeys.getter();
  if (*v17->clientXPCServer != 1)
  {
    v19 = v17;
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v22 = &type metadata for PhoneNumberProvider.PhoneNumberProviderError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v44 + 8))(v16, v9);
    swift_unknownObjectRelease(v19, v23, v24, v25, v26, v27, v28, v29);
    a1 = v45;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v39 = v17;
  v46 = v17->_anon_0_2[0];
  if (v46)
  {
    v48 = 1;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.NoCredentialFoundCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v44;
    (*(v41 + 8))(v4, v14);
  }

  else
  {
    v47 = 0;
    lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys and conformance PhoneNumberProvider.PhoneNumberProviderError.IDSFetchErrorCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v44;
    (*(v15 + 8))(v8, v40);
  }

  (*(v18 + 8))(v12, v9);
  swift_unknownObjectRelease(v39, v31, v32, v33, v34, v35, v36, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return v46;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError()
{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError;
  if (!lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberProvider.PhoneNumberProviderError and conformance PhoneNumberProvider.PhoneNumberProviderError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URI and conformance URI()
{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    type metadata accessor for URI();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CredentialType and conformance CredentialType()
{
  result = lazy protocol witness table cache variable for type CredentialType and conformance CredentialType;
  if (!lazy protocol witness table cache variable for type CredentialType and conformance CredentialType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CredentialType and conformance CredentialType);
  }

  return result;
}

uint64_t sub_26533E784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URI();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26533E858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URI();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for PhoneNumberInfo(uint64_t a1)
{
  result = type metadata accessor for URI();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CredentialType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for PhoneNumberProvider(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of PhoneNumberProvider.obtainPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 88) + **(*v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}