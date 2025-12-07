uint64_t specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v3 = a2[1];
  v15 = *a2;
  v16 = v3;
  v17[0] = a2[2];
  *(v17 + 13) = *(a2 + 45);
  v4 = *a3;
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, &v12);
  v6 = *(&v13 + 1);
  v7 = *&v14[0];
  __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v12 = v15;
  v13 = v16;
  v14[0] = v17[0];
  *(v14 + 13) = *(v17 + 13);
  type metadata accessor for REAudioFileAssetConfigurationWrapper();
  swift_initStackObject();
  outlined init with copy of AudioBufferResource.Configuration(&v15, v11);
  REAudioFileAssetConfigurationWrapper.init(configuration:)(&v12);
  if (v4 != 3)
  {
    REAudioFileAssetConfigurationSetInputMode();
  }

  v8 = REAudioFileAssetCreateWithBufferAndConfiguration();
  if (!v8)
  {
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type AudioBufferResource and conformance AudioResource()
{
  result = lazy protocol witness table cache variable for type AudioBufferResource and conformance AudioResource;
  if (!lazy protocol witness table cache variable for type AudioBufferResource and conformance AudioResource)
  {
    v3 = type metadata accessor for AudioBufferResource();
    result = swift_getWitnessTable(protocol conformance descriptor for AudioResource, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource and conformance AudioResource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors()
{
  result = lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors;
  if (!lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVAudioPCMBuffer.AVAudioPCMBufferErrors, &type metadata for AVAudioPCMBuffer.AVAudioPCMBufferErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors;
  if (!lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVAudioPCMBuffer.AVAudioPCMBufferErrors, &type metadata for AVAudioPCMBuffer.AVAudioPCMBufferErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors()
{
  result = lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors;
  if (!lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVAudioFormat.AudioFormatErrors, &type metadata for AVAudioFormat.AudioFormatErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors;
  if (!lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVAudioFormat.AudioFormatErrors, &type metadata for AVAudioFormat.AudioFormatErrors, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E55;
  if (a1 > 3u)
  {
    v4 = 0x80000001C18DD290;
    v10 = 0xD000000000000019;
    if (a1 != 6)
    {
      v10 = 0x6567616D49776F4CLL;
      v4 = 0xEF7974696C617551;
    }

    v11 = 0xD000000000000017;
    if (a1 == 4)
    {
      v11 = 0x54737463656A624FLL;
      v7 = 0xEF65736F6C436F6FLL;
    }

    else
    {
      v7 = 0x80000001C18DD270;
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x80000001C18DD220;
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v4 = 0x80000001C18DD240;
    }

    v6 = 0x6C63634F736E654CLL;
    v7 = 0xED00006E6F697375;
    if (!a1)
    {
      v6 = 0x6669636570736E55;
      v7 = 0xEB00000000646569;
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v12 = v7;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001C18DD290;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xEF7974696C617551;
        if (v9 != 0x6567616D49776F4CLL)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF65736F6C436F6FLL;
      if (v9 != 0x54737463656A624FLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x80000001C18DD270;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001C18DD220;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v3 = 0xD000000000000015;
      v2 = 0x80000001C18DD240;
    }

    else if (a2)
    {
      v2 = 0xED00006E6F697375;
      if (v9 != 0x6C63634F736E654CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (v9 != v3)
    {
LABEL_45:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x65727574786574;
    v15 = 0x6F4C797469746E65;
    v16 = 0xEA00000000006461;
    if (a1 != 8)
    {
      v15 = 0x6F65646976;
      v16 = 0xE500000000000000;
    }

    if (a1 != 7)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0xE400000000000000;
    v18 = 1752393069;
    if (a1 != 5)
    {
      v18 = 0x73636973796870;
      v17 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
    v7 = 0x4D6E49746C697562;
    v8 = 0xEF6C616972657461;
    if (a1 != 3)
    {
      v7 = 0xD000000000000013;
      v8 = 0x80000001C18DDAF0;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xE500000000000000;
    v10 = 0x6F69647561;
    if (!a1)
    {
      v10 = 0x6F6974616D696E61;
      v9 = 0xE90000000000006ELL;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1752393069)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x73636973796870)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x65727574786574)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0xEA00000000006461;
      if (v11 != 0x6F4C797469746E65)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0xE500000000000000;
    v3 = 0x6F65646976;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000746E65;
        if (v11 != 0x6D6E6F7269766E65)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xEF6C616972657461;
        if (v11 != 0x4D6E49746C697562)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0x80000001C18DDAF0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x6F69647561)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x536C616974617073;
    }

    else
    {
      v3 = 1869508461;
    }

    if (v2)
    {
      v4 = 0xED00006F65726574;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001C18DDB40;
    v3 = 0xD000000000000016;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x336C616974617073;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000044;
    }

    else
    {
      v4 = 0x80000001C18DDB70;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x536C616974617073;
    }

    else
    {
      v9 = 1869508461;
    }

    if (a2)
    {
      v8 = 0xED00006F65726574;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x336C616974617073;
    v6 = 0x80000001C18DDB70;
    if (a2 == 3)
    {
      v6 = 0xE900000000000044;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001C18DDB40;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xE300000000000000;
    v12 = 6778732;
    v13 = 0xE500000000000000;
    v14 = 0x7265776F70;
    if (a1 != 8)
    {
      v14 = 1701734771;
      v13 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0x746E656E6F707865;
    v16 = 0xEB000000006C6169;
    if (a1 != 5)
    {
      v15 = 0x6574696D726568;
      v16 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x65636E756F62;
    v6 = 0xE600000000000000;
    v7 = 0x656C63726963;
    if (a1 != 3)
    {
      v7 = 0x63697473616C65;
      v6 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 1801675106;
    if (a1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v8 = 0x7261656E696CLL;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xEB000000006C6169;
        if (v9 != 0x746E656E6F707865)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6574696D726568)
        {
LABEL_57:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xE300000000000000;
      if (v9 != 6778732)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x7265776F70)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1701734771)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xE400000000000000;
      if (v9 != 1801675106)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x7261656E696CLL)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE600000000000000;
    if (v9 != 0x65636E756F62)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE600000000000000;
    if (v9 != 0x656C63726963)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x63697473616C65)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65736C7570;
  if (a1 != 6)
  {
    v5 = 1852403827;
    v4 = 0xE400000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x74616F6C66;
  if (a1 != 4)
  {
    v7 = 0x656C6767696ALL;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x65636E756F62;
  if (a1 != 2)
  {
    v9 = 1885957222;
    v8 = 0xE400000000000000;
  }

  v10 = 0x6B6E696C62;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 7368560;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x65736C7570)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v11 != 1852403827)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x74616F6C66)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C6767696ALL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x65636E756F62)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1885957222)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x6B6E696C62)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368560)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0xE300000000000000;
    v13 = 7368560;
    v14 = 0xE800000000000000;
    v15 = 0x707520656C616373;
    if (a1 != 8)
    {
      v15 = 0x6F6420656C616373;
      v14 = 0xEA00000000006E77;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0x80000001C18DDCD0;
    if (a1 != 5)
    {
      v16 = 0x80000001C18DDCF0;
    }

    if (a1 <= 6u)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 0x80000001C18DDC70;
    v6 = 0x80000001C18DDC90;
    v7 = 0xD000000000000011;
    if (a1 == 3)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v6 = 0x80000001C18DDCB0;
    }

    if (a1 == 2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = v8;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x80000001C18DDC50;
    }

    else
    {
      v7 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = "move in from above";
      }

      else
      {
        v17 = "move in from below";
      }

      goto LABEL_53;
    }

    if (a2 == 7)
    {
      v18 = 0xE300000000000000;
      v2 = 7368560;
    }

    else if (a2 == 8)
    {
      v18 = 0xE800000000000000;
      v2 = 0x707520656C616373;
    }

    else
    {
      v2 = 0x6F6420656C616373;
      v18 = 0xEA00000000006E77;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = "move in from right";
        goto LABEL_53;
      }

      if (a2 == 3)
      {
        v17 = "move in from front";
LABEL_53:
        v18 = (v17 - 32) | 0x8000000000000000;
        v2 = 0xD000000000000012;
        goto LABEL_54;
      }

      v19 = "move in from rear";
      goto LABEL_51;
    }

    if (a2)
    {
      v19 = "move in from left";
LABEL_51:
      v18 = (v19 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000011;
      goto LABEL_54;
    }

    v18 = 0xE400000000000000;
  }

LABEL_54:
  if (v10 == v2 && v11 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0xE300000000000000;
    v13 = 7368560;
    v14 = 0x6F6420656C616373;
    v15 = 0xEA00000000006E77;
    if (a1 != 8)
    {
      v14 = 0x707520656C616373;
      v15 = 0xE800000000000000;
    }

    if (a1 != 7)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0x80000001C18DDDA0;
    if (a1 != 5)
    {
      v16 = 0x80000001C18DDDC0;
    }

    if (a1 <= 6u)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 0x80000001C18DDD40;
    v6 = 0x80000001C18DDD60;
    v7 = 0xD000000000000010;
    if (a1 == 3)
    {
      v8 = 0xD000000000000011;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v6 = 0x80000001C18DDD80;
    }

    if (a1 == 2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = v8;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x80000001C18DDD20;
    }

    else
    {
      v7 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = "move out to above";
      }

      else
      {
        v17 = "move out to below";
      }

      goto LABEL_53;
    }

    if (a2 == 7)
    {
      v18 = 0xE300000000000000;
      v2 = 7368560;
    }

    else if (a2 == 8)
    {
      v2 = 0x6F6420656C616373;
      v18 = 0xEA00000000006E77;
    }

    else
    {
      v18 = 0xE800000000000000;
      v2 = 0x707520656C616373;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = "move out to right";
        goto LABEL_53;
      }

      if (a2 == 3)
      {
        v17 = "move out to front";
LABEL_53:
        v18 = (v17 - 32) | 0x8000000000000000;
        v2 = 0xD000000000000011;
        goto LABEL_54;
      }

      v19 = "move out to rear";
      goto LABEL_51;
    }

    if (a2)
    {
      v19 = "move out to left";
LABEL_51:
      v18 = (v19 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000010;
      goto LABEL_54;
    }

    v18 = 0xE400000000000000;
  }

LABEL_54:
  if (v10 == v2 && v11 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

{
  v2 = 0xEB00000000746E65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v3 == 2)
    {
      v4 = 0x80000001C18DDBC0;
    }

    else
    {
      v4 = 0x80000001C18DDBE0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xED00005241746E65;
    }

    else
    {
      v4 = 0xEB00000000746E65;
    }

    v5 = 0x726170736E617254;
  }

  v6 = 0xD00000000000001ALL;
  v7 = 0x80000001C18DDBE0;
  if (a2 == 2)
  {
    v7 = 0x80000001C18DDBC0;
  }

  else
  {
    v6 = 0xD00000000000001CLL;
  }

  if (a2)
  {
    v2 = 0xED00005241746E65;
  }

  if (a2 <= 1u)
  {
    v8 = 0x726170736E617254;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x524165757161704FLL;
    }

    else
    {
      v4 = 0x65757161704FLL;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001C18DDC10;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001C18DDC30;
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x776F64616853;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x524165757161704FLL;
    }

    else
    {
      v6 = 0x65757161704FLL;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001C18DDC10;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001C18DDC30;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v4 != 0x776F64616853)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

{
  v2 = 0x65636166727573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1701011814;
    }

    else
    {
      v4 = 0x7463656A626FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567616D69;
    }

    else
    {
      v4 = 0x65636166727573;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1701011814;
  if (a2 != 2)
  {
    v8 = 0x7463656A626FLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6567616D69;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  v6 = 0x6C61636973796870;
  v7 = 0xED00006874646957;
  if (a1 != 4)
  {
    v6 = 0x747265566873656DLL;
    v7 = 0xEA00000000007865;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6E656D6E67696C61;
  v9 = 0xE900000000000074;
  if (a1 != 1)
  {
    v8 = 0x6966697373616C63;
    v9 = 0xEE006E6F69746163;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00006874646957;
      if (v10 != 0x6C61636973796870)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000007865;
      if (v10 != 0x747265566873656DLL)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E656D6E67696C61)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE006E6F69746163;
      if (v10 != 0x6966697373616C63)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v6 = 0xE300000000000000;
      v7 = 5459817;
      if (a4 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (a2 != 1)
    {
      goto LABEL_21;
    }

    v6 = 0xE500000000000000;
    v7 = 0x534F63616DLL;
    if (a4 > 1)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (!a4)
    {
      v8 = 0xE300000000000000;
      if (v7 != 5459817)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (a4 == 1)
    {
      v8 = 0xE500000000000000;
      if (v7 != 0x534F63616DLL)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a2 == 2 || a2 == 3)
  {
    v6 = 0xE800000000000000;
    v7 = 0x534F6E6F69736976;
    if (a4 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (a2 != 4)
  {
LABEL_21:
    v7 = a1;
    v6 = a2;
    if (a4 <= 1)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v6 = 0xE400000000000000;
  v7 = 1397716596;
  if (a4 <= 1)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (a4 == 2 || a4 == 3)
  {
    v8 = 0xE800000000000000;
    if (v7 != 0x534F6E6F69736976)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (a4 == 4)
  {
    v8 = 0xE400000000000000;
    if (v7 != 1397716596)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = a4;
  if (v7 != a3)
  {
LABEL_31:
    v10 = a1;
    v11 = a2;
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v11;
    v9 = v12;
    a1 = v10;
    goto LABEL_32;
  }

LABEL_29:
  if (v6 != v8)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a3, a4);

  return v9 & 1;
}

void __swiftcall ImagePresentationComponent.aspectRatio(for:)(Swift::Float_optional *__return_ptr retstr, RealityFoundation::ImagePresentationComponent::ViewingMode a2)
{
  v3 = *a2._viewingMode;
  v4 = v2[3];
  v5 = v2[6];
  v6 = v2[9];
  if ((v3 - 1) < 2)
  {
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v5 = *(v4 + 40);
      }
    }

    else if (!v7)
    {
      return;
    }

    if (!v5)
    {

      return;
    }

    RETextureAssetGetSize();
    RETextureAssetGetSize();

LABEL_20:

    return;
  }

  if ((v3 - 3) >= 2)
  {
    if (!(v6 >> 62))
    {
      return;
    }

    RETextureAssetGetSize();
    RETextureAssetGetSize();

    goto LABEL_20;
  }

  if ((v6 >> 62) >= 2 && (v6 >> 62 != 2 || *(v4 + 88)))
  {

    swift_beginAccess();
  }
}

__n64 ImagePresentationComponent.presentationScreenSize.getter()
{
  v6 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v12 = *(v0 + 22);
  v13 = *(v0 + 38);
  *v14 = *(v0 + 54);
  *&v14[10] = *(v0 + 64);
  v11 = *(v0 + 6);
  v8 = v6;
  v9 = v1;
  v10 = v2;
  v7 = v2;
  ImagePresentationComponent.aspectRatio(for:)(v1, &v7);
  v4 = *&v3;
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 1.0;
  }

  result.n64_f32[0] = v6 * v4;
  result.n64_f32[1] = v6;
  return result;
}

void ImagePresentationComponent.screenImageDimension.getter()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 24);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 72) >> 62;
  if (v5 > 1)
  {
    v19 = *(v0 + 16);
    if (v5 == 2)
    {
      LODWORD(v4) = *(v2 + 32);
      v3 = *(v2 + 40);
      v20 = *(v2 + 48);
      goto LABEL_7;
    }
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v19 = *(v0 + 16);
  }

  v20 = *(v0 + 56);
LABEL_7:

  if (v1 <= 1)
  {
    if (v1)
    {
LABEL_19:

      goto LABEL_20;
    }

    v18 = v4;
  }

  else
  {
    v18 = v4;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    if (v1 != 2)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {

        RETextureAssetGetSize();
        v9 = v8;
        RETextureAssetGetSize();
        v11 = vcvt_f32_s32(vext_s8(v10, v9, 4uLL));
        if (v18 <= 3)
        {
          if (v18 != 1 && v18 != 2 && v18 != 3)
          {
            goto LABEL_41;
          }

LABEL_39:

          return;
        }

        if ((v18 - 5) < 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C1897FC0;
          *(inited + 32) = v11;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(inited);
          swift_setDeallocating();
          goto LABEL_39;
        }

        if (v18 == 4)
        {
          goto LABEL_39;
        }

LABEL_41:
        type metadata accessor for CGImagePropertyOrientation(0);
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:
  if (v3)
  {

    RETextureAssetGetSize();
    v13 = v12;
    RETextureAssetGetSize();
    v15 = vcvt_f32_s32(vext_s8(v14, v13, 4uLL));
    if (v20 > 3)
    {
      if ((v20 - 5) >= 4)
      {
        if (v20 != 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v16 = swift_initStackObject();
        *(v16 + 16) = xmmword_1C1897FC0;
        *(v16 + 32) = v15;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(v16);
        swift_setDeallocating();
      }
    }

    else if (v20 != 1 && v20 != 2 && v20 != 3)
    {
      goto LABEL_41;
    }

    return;
  }

  if (v5)
  {
    if (v19)
    {

      RETextureAssetGetSize();
      RETextureAssetGetSize();
    }

    else if (one-time initialization token for defaultScreenImageDimensions != -1)
    {
      swift_once();
    }
  }
}

uint64_t ImagePresentationComponent.availableViewingModes.getter()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[9];
  v11 = MEMORY[0x1E69E7CD0];
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    specialized Set._Variant.insert(_:)(&v10, 0);
    if (v4 == 2)
    {
      v2 = *(v1 + 40);
    }

    if (v2)
    {

      specialized Set._Variant.insert(_:)(&v7, 1);
      specialized Set._Variant.insert(_:)(&v6, 2);
    }

    if (v4 != 1 && (v4 == 3 || *(v1 + 88)))
    {
      specialized Set._Variant.insert(_:)(&v9, 3);
      specialized Set._Variant.insert(_:)(&v8, 4);
    }
  }

  return v11;
}

Swift::Int static ImagePresentationComponent.supportedViewingModes(for:)(void *a1)
{
  SpatialStereoImageMetadata.init(source:)(a1, v2);
  outlined destroy of SpatialStereoImageMetadata(v2);
  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_Tt0g5Tf4g_n(&outlined read-only object #0 of static ImagePresentationComponent.supportedViewingModes(for:));
}

uint64_t static ImagePresentationComponent.supportedViewingModes(for:)(uint64_t a1)
{
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of static ImagePresentationComponent.supportedViewingModes(for:));
  if (*(a1 + 40))
  {
    specialized Set._Variant.insert(_:)(&v4, 1);
    specialized Set._Variant.insert(_:)(&v3, 2);
  }

  if (*(a1 + 88))
  {
    specialized Set._Variant.insert(_:)(&v6, 3);
    specialized Set._Variant.insert(_:)(&v5, 4);
  }

  return v7;
}

uint64_t ImagePresentationComponent.loadingTextureResource.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void ImagePresentationComponent.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    swift_retain_n();
    REImagePresentationComponentGetDefaultCornerRadiusInPoints();
    v5 = v4;
    v6 = one-time initialization token for networkSystemObserver;

    if (v6 != -1)
    {
      swift_once();
    }

    ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

    v7 = 0x4000000000000000;
    v8 = 1;
  }

  else
  {
    if (one-time initialization token for defaultScreenImageDimensions != -1)
    {
      swift_once();
    }

    v3 = static ImagePresentationComponent.defaultScreenImageDimensions;
    REImagePresentationComponentGetDefaultCornerRadiusInPoints();
    v5 = v9;
    if (one-time initialization token for networkSystemObserver != -1)
    {
      swift_once();
    }

    ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
    v8 = 0;
    v7 = 0;
  }

  *a2 = 1065353216;
  *(a2 + 4) = 0;
  *(a2 + 6) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v7;
}

double ImagePresentationComponent.init(contentDimensionsHint:horizontalFoVHint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for defaultScreenImageDimensions != -1)
  {
    swift_once();
  }

  v10 = static ImagePresentationComponent.defaultScreenImageDimensions;
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v12 = v11;
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  if (a3)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  *&v13.i32[1] = a2;
  *v13.i32 = a1;
  v15 = vbsl_s8(vdup_n_s32(v14), v10, v13);
  if ((a4 & 0x100000000) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = a4;
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  *a5 = 1065353216;
  *(a5 + 4) = 0;
  *(a5 + 6) = 1;
  *(a5 + 8) = 0;
  *(a5 + 12) = v12;
  *(a5 + 16) = 0;
  *(a5 + 24) = v15;
  *(a5 + 32) = v16;
  result = 0.0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0;
  return result;
}

uint64_t ImagePresentationComponent.init(imageSource:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 1512) = a2;
  *(v2 + 760) = a1;
  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.init(imageSource:), 0, 0);
}

uint64_t ImagePresentationComponent.init(imageSource:)()
{
  v1 = *(v0 + 1512);
  *(v0 + 1580) = 0;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 1520) = v3;
  *v3 = v0;
  v3[1] = ImagePresentationComponent.init(imageSource:);
  v4 = *(v0 + 1512);

  return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v0 + 16, v4, (v0 + 1580));
}

{
  v2 = *v1;
  v3 = *v1;
  v3[191] = v0;
  v4 = v2[2];
  v3[192] = v4;
  v5 = v2[3];
  v3[193] = v5;
  v6 = *(v3 + 8);
  *(v3 + 394) = v6;
  v55 = *(v3 + 7);
  v56 = *(v3 + 5);
  *(v3 + 97) = v56;
  v3[196] = v55;
  v7 = *(v3 + 72);
  v8 = *(v3 + 76);
  v40 = *(v3 + 84);
  v24 = *(v3 + 9);
  v25 = *(v3 + 7);
  v18 = *(v3 + 8);
  v19 = *(v3 + 6);
  v22 = *(v3 + 13);
  v23 = *(v3 + 11);
  v16 = *(v3 + 12);
  v17 = *(v3 + 10);
  v20 = *(v3 + 17);
  v21 = *(v3 + 15);
  v14 = *(v3 + 16);
  v15 = *(v3 + 14);
  v54 = *(v3 + 19);
  v39 = *(v3 + 18);
  v53 = *(v3 + 21);
  v38 = *(v3 + 20);
  v52 = *(v3 + 23);
  v37 = *(v3 + 22);
  v51 = *(v3 + 25);
  v36 = *(v3 + 24);
  v50 = *(v3 + 27);
  v35 = *(v3 + 26);
  v49 = *(v3 + 29);
  v34 = *(v3 + 28);
  v48 = *(v3 + 31);
  v33 = *(v3 + 30);
  v47 = *(v3 + 33);
  v31 = *(v3 + 34);
  v32 = *(v3 + 32);
  v45 = *(v3 + 37);
  v46 = *(v3 + 35);
  v29 = *(v3 + 38);
  v30 = *(v3 + 36);
  v43 = *(v3 + 41);
  v44 = *(v3 + 39);
  v27 = *(v3 + 42);
  v28 = *(v3 + 40);
  v41 = *(v3 + 45);
  v42 = *(v3 + 43);
  v26 = *(v3 + 44);
  v9 = v2[92];
  v10 = v2[93];
  v11 = v2[94];

  if (v0)
  {
    v12 = ImagePresentationComponent.init(imageSource:);
  }

  else
  {
    *(v3 + 53) = v19;
    *(v3 + 54) = v25;
    *(v3 + 55) = v18;
    *(v3 + 56) = v24;
    *(v3 + 57) = v17;
    *(v3 + 58) = v23;
    *(v3 + 59) = v16;
    *(v3 + 60) = v22;
    *(v3 + 61) = v15;
    *(v3 + 62) = v21;
    *(v3 + 63) = v14;
    *(v3 + 64) = v20;
    v3[96] = v4;
    v3[97] = v5;
    *(v3 + 196) = v6;
    *(v3 + 99) = v56;
    *(v3 + 101) = v55;
    *(v3 + 824) = v7;
    *(v3 + 828) = v8;
    *(v3 + 836) = v40;
    *(v3 + 65) = v39;
    *(v3 + 66) = v54;
    *(v3 + 67) = v38;
    *(v3 + 68) = v53;
    *(v3 + 69) = v37;
    *(v3 + 70) = v52;
    *(v3 + 71) = v36;
    *(v3 + 72) = v51;
    *(v3 + 73) = v35;
    *(v3 + 74) = v50;
    *(v3 + 75) = v34;
    *(v3 + 76) = v49;
    *(v3 + 77) = v33;
    *(v3 + 78) = v48;
    *(v3 + 79) = v32;
    *(v3 + 80) = v47;
    *(v3 + 81) = v31;
    *(v3 + 82) = v46;
    *(v3 + 83) = v30;
    *(v3 + 84) = v45;
    *(v3 + 85) = v29;
    *(v3 + 86) = v44;
    *(v3 + 87) = v28;
    *(v3 + 88) = v43;
    *(v3 + 89) = v27;
    *(v3 + 90) = v42;
    *(v3 + 91) = v26;
    *(v3 + 92) = v41;
    v3[186] = v9;
    v3[187] = v10;
    v3[188] = v11;
    outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair((v3 + 102));
    v12 = ImagePresentationComponent.init(imageSource:);
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t ImagePresentationComponent.init(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for URL();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.init(contentsOf:), 0, 0);
}

uint64_t ImagePresentationComponent.init(contentsOf:)()
{
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  *(v0 + 260) = 0;
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = ImagePresentationComponent.init(contentsOf:);
  v2 = *(v0 + 192);

  return specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)(v0 + 16, v2, (v0 + 260));
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = ImagePresentationComponent.init(contentsOf:);
  }

  else
  {
    v4 = *(v2 + 24);
    *(v2 + 216) = *(v2 + 16);
    *(v2 + 224) = v4;
    *(v2 + 256) = *(v2 + 32);
    *(v2 + 232) = *(v2 + 40);
    *(v2 + 248) = *(v2 + 56);
    v3 = ImagePresentationComponent.init(contentsOf:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

double ImagePresentationComponent.init(spatial3DImage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v5 = v4;
  v6 = one-time initialization token for networkSystemObserver;

  if (v6 != -1)
  {
    swift_once();
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

  *a2 = 1065353216;
  *(a2 + 4) = 0;
  *(a2 + 6) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = a1;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x8000000000000000;
  return result;
}

void ImagePresentationComponent.init(imageSource:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = 0;
  v3 = a1;
  specialized ImagePresentationComponent.ImagePair.init(imageSource:options:)(v3, v12, v13);
  v4 = v13[0];
  v5 = v13[1];
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  outlined init with copy of ImagePresentationComponent.ImagePair(v13, v12);
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v11 = v10;
  outlined init with copy of ImagePresentationComponent.ImagePair(v13, v12);
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  outlined destroy of ImagePresentationComponent.ImagePair(v13);
  outlined destroy of ImagePresentationComponent.ImagePair(v13);

  *a2 = 1065353216;
  *(a2 + 4) = 0;
  *(a2 + 6) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0x4000000000000000;
}

uint64_t ImagePresentationComponent.init(imageSource:options:)(uint64_t a1, void *a2, _BYTE *a3)
{
  *(v3 + 1512) = a2;
  *(v3 + 760) = a1;
  *(v3 + 1580) = *a3;
  v4 = a2;
  v5 = swift_task_alloc();
  *(v3 + 1520) = v5;
  *v5 = v3;
  v5[1] = ImagePresentationComponent.init(imageSource:options:);

  return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v3 + 16, v4, (v3 + 1580));
}

uint64_t ImagePresentationComponent.init(imageSource:options:)()
{
  v2 = *v1;
  v3 = *v1;
  v3[191] = v0;
  v4 = v2[2];
  v3[192] = v4;
  v5 = v2[3];
  v3[193] = v5;
  v6 = *(v3 + 8);
  *(v3 + 394) = v6;
  v55 = *(v3 + 7);
  v56 = *(v3 + 5);
  *(v3 + 97) = v56;
  v3[196] = v55;
  v7 = *(v3 + 72);
  v8 = *(v3 + 76);
  v40 = *(v3 + 84);
  v24 = *(v3 + 9);
  v25 = *(v3 + 7);
  v18 = *(v3 + 8);
  v19 = *(v3 + 6);
  v22 = *(v3 + 13);
  v23 = *(v3 + 11);
  v16 = *(v3 + 12);
  v17 = *(v3 + 10);
  v20 = *(v3 + 17);
  v21 = *(v3 + 15);
  v14 = *(v3 + 16);
  v15 = *(v3 + 14);
  v54 = *(v3 + 19);
  v39 = *(v3 + 18);
  v53 = *(v3 + 21);
  v38 = *(v3 + 20);
  v52 = *(v3 + 23);
  v37 = *(v3 + 22);
  v51 = *(v3 + 25);
  v36 = *(v3 + 24);
  v50 = *(v3 + 27);
  v35 = *(v3 + 26);
  v49 = *(v3 + 29);
  v34 = *(v3 + 28);
  v48 = *(v3 + 31);
  v33 = *(v3 + 30);
  v47 = *(v3 + 33);
  v31 = *(v3 + 34);
  v32 = *(v3 + 32);
  v45 = *(v3 + 37);
  v46 = *(v3 + 35);
  v29 = *(v3 + 38);
  v30 = *(v3 + 36);
  v43 = *(v3 + 41);
  v44 = *(v3 + 39);
  v27 = *(v3 + 42);
  v28 = *(v3 + 40);
  v41 = *(v3 + 45);
  v42 = *(v3 + 43);
  v26 = *(v3 + 44);
  v9 = v2[92];
  v10 = v2[93];
  v11 = v2[94];

  if (v0)
  {
    v12 = ImagePresentationComponent.init(imageSource:options:);
  }

  else
  {
    *(v3 + 53) = v19;
    *(v3 + 54) = v25;
    *(v3 + 55) = v18;
    *(v3 + 56) = v24;
    *(v3 + 57) = v17;
    *(v3 + 58) = v23;
    *(v3 + 59) = v16;
    *(v3 + 60) = v22;
    *(v3 + 61) = v15;
    *(v3 + 62) = v21;
    *(v3 + 63) = v14;
    *(v3 + 64) = v20;
    v3[96] = v4;
    v3[97] = v5;
    *(v3 + 196) = v6;
    *(v3 + 99) = v56;
    *(v3 + 101) = v55;
    *(v3 + 824) = v7;
    *(v3 + 828) = v8;
    *(v3 + 836) = v40;
    *(v3 + 65) = v39;
    *(v3 + 66) = v54;
    *(v3 + 67) = v38;
    *(v3 + 68) = v53;
    *(v3 + 69) = v37;
    *(v3 + 70) = v52;
    *(v3 + 71) = v36;
    *(v3 + 72) = v51;
    *(v3 + 73) = v35;
    *(v3 + 74) = v50;
    *(v3 + 75) = v34;
    *(v3 + 76) = v49;
    *(v3 + 77) = v33;
    *(v3 + 78) = v48;
    *(v3 + 79) = v32;
    *(v3 + 80) = v47;
    *(v3 + 81) = v31;
    *(v3 + 82) = v46;
    *(v3 + 83) = v30;
    *(v3 + 84) = v45;
    *(v3 + 85) = v29;
    *(v3 + 86) = v44;
    *(v3 + 87) = v28;
    *(v3 + 88) = v43;
    *(v3 + 89) = v27;
    *(v3 + 90) = v42;
    *(v3 + 91) = v26;
    *(v3 + 92) = v41;
    v3[186] = v9;
    v3[187] = v10;
    v3[188] = v11;
    outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair((v3 + 102));
    v12 = ImagePresentationComponent.init(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

{

  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v2 = v1;
  v3 = one-time initialization token for networkSystemObserver;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 1568);
  v12 = *(v0 + 1552);
  v5 = *(v0 + 1576);
  v6 = *(v0 + 1544);
  v7 = *(v0 + 1536);
  v8 = *(v0 + 1512);
  v9 = *(v0 + 760);
  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

  *v9 = 1065353216;
  *(v9 + 4) = 0;
  *(v9 + 6) = 1;
  *(v9 + 8) = 0;
  *(v9 + 12) = v2;
  *(v9 + 16) = 0;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v12;
  *(v9 + 64) = v4;
  *(v9 + 72) = 0x4000000000000000;
  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 1512);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ImagePresentationComponent.init(contentsOf:options:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;
  v5 = type metadata accessor for URL();
  *(v3 + 176) = v5;
  *(v3 + 184) = *(v5 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 261) = *a3;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.init(contentsOf:options:), 0, 0);
}

uint64_t ImagePresentationComponent.init(contentsOf:options:)()
{
  v1 = *(v0 + 261);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  *(v0 + 260) = v1;
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = ImagePresentationComponent.init(contentsOf:options:);
  v3 = *(v0 + 192);

  return specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)(v0 + 16, v3, (v0 + 260));
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = ImagePresentationComponent.init(contentsOf:options:);
  }

  else
  {
    v4 = *(v2 + 24);
    *(v2 + 216) = *(v2 + 16);
    *(v2 + 224) = v4;
    *(v2 + 256) = *(v2 + 32);
    *(v2 + 232) = *(v2 + 40);
    *(v2 + 248) = *(v2 + 56);
    v3 = ImagePresentationComponent.init(contentsOf:options:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined init with copy of ImagePresentationComponent.ImagePair(v0 + 16, v0 + 64);
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v2 = v1;
  outlined init with copy of ImagePresentationComponent.ImagePair(v0 + 16, v0 + 112);
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 248);
  v12 = *(v0 + 232);
  v3 = *(v0 + 256);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 184);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 160);
  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  outlined destroy of ImagePresentationComponent.ImagePair(v0 + 16);
  outlined destroy of ImagePresentationComponent.ImagePair(v0 + 16);
  (*(v6 + 8))(v8, v7);
  *v9 = 1065353216;
  *(v9 + 4) = 0;
  *(v9 + 6) = 1;
  *(v9 + 8) = 0;
  *(v9 + 12) = v2;
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v12;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0x4000000000000000;

  v10 = *(v0 + 8);

  return v10();
}

{
  (*(v0[23] + 8))(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

void static ImagePresentationComponent.createDataSourceFromCoreImagePair(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(uint64_t a1@<X8>, uint64_t a2@<D0>, unsigned int a3@<S1>, unsigned __int8 a4@<W1>)
{
  specialized static ImagePresentationComponent.createImagePairFromCoreMonoAndStereoImages(coreComponent:imageContentType:horizontalFoV:)(a4, v22, a3);
  v7 = v22[0];
  if (v22[0])
  {
    v8 = v22[1];
    v9 = v23;
    v21 = v24;
    v10 = v25;
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, ImageLogger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C1358000, v12, v13, "ImagePresentationComponent: Successfully retrieved DataSource from core-stored ImagePair content", v14, 2u);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    v15 = 0x4000000000000000;
    v16 = v21;
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, ImageLogger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C1358000, v18, v19, "ImagePresentationComponent: Could not retrieve ImagePair content from stored Core data, defaulting to empty DataSource", v20, 2u);
      MEMORY[0x1C6902A30](v20, -1, -1);
      outlined destroy of ImagePresentationComponent.ImagePair?(v22);
    }

    v9 = 0;
    v10 = 0;
    v15 = 0;
    v7 = a2;
    v8 = a3;
    v16 = 0uLL;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v16;
  *(a1 + 40) = v10;
  *(a1 + 48) = v15;
}

uint64_t static ImagePresentationComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REImagePresentationComponentGetScreenHeight();
  v5 = v4;
  ImageContentType = REImagePresentationComponentGetImageContentType();
  REImagePresentationComponentGetContentDimensionHint();
  v8 = v7;
  LoadingImageTextureAsset = REImagePresentationComponentGetLoadingImageTextureAsset();
  if (LoadingImageTextureAsset)
  {
    v10 = LoadingImageTextureAsset;
    type metadata accessor for TextureResource();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    v11 = 0;
  }

  REImagePresentationComponentGetHorizontalFOV();
  v13 = v12;
  REComponentGetEntity();
  REImagePresentationStatusComponentGetComponentType();
  v59 = v11;
  if (!REEntityGetComponentByClass())
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, ImageLogger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C1358000, v19, v20, "Missing ImagePresentationStatusComponent for ImagePresentationComponent", v21, 2u);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    goto LABEL_13;
  }

  CurrentViewingMode = REImagePresentationStatusComponentGetCurrentViewingMode();
  CurrentImmersiveViewingMode = REImagePresentationStatusComponentGetCurrentImmersiveViewingMode();
  if (CurrentViewingMode == 2)
  {
    v16 = CurrentImmersiveViewingMode == 2;
    v17 = 3;
    goto LABEL_15;
  }

  if (CurrentViewingMode != 1)
  {
LABEL_13:
    v58 = 0;
    goto LABEL_18;
  }

  v16 = CurrentImmersiveViewingMode == 2;
  v17 = 1;
LABEL_15:
  if (v16)
  {
    ++v17;
  }

  v58 = v17;
LABEL_18:
  if (REImagePresentationComponentGetSpatial3DImage())
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with copy of Any(v62, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26ImagePresentationComponentV14Spatial3DImageCSgMd, &_s17RealityFoundation26ImagePresentationComponentV14Spatial3DImageCSgMR);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v62);
      v22 = v60;
      if (v60)
      {
        v23 = one-time initialization token for ImageLogger;

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, ImageLogger);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1C1358000, v25, v26, "ImagePresentationComponent: Retrieving ImagePresentationComponent _fromCore using stored Spatial3DImage", v27, 2u);
          MEMORY[0x1C6902A30](v27, -1, -1);
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0x8000000000000000;
        goto LABEL_43;
      }
    }

    else
    {
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, ImageLogger);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1C1358000, v35, v36, "ImagePresentationComponent: Stored Spatial3DImage on ImagePresentationComponent cannot be cast as a Spatial3DImage", v37, 2u);
        MEMORY[0x1C6902A30](v37, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(v62);
    }
  }

  if (REImagePresentationComponentGetHasGeneratedSpatial3DImageContent())
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, ImageLogger);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C1358000, v39, v40, "ImagePresentationComponent: Retrieving ImagePresentationComponent _fromCore using stored MXIData and ImagePair (this occurs if the core layer IPC contained already generated Spatial3DImage content)", v41, 2u);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

    specialized static ImagePresentationComponent.createDataSourceFromCoreMXIData(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(v3, ImageContentType, v62, v8, v13);
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, ImageLogger);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C1358000, v43, v44, "ImagePresentationComponent: Retrieving ImagePresentationComponent _fromCore using stored ImagePair content)", v45, 2u);
      MEMORY[0x1C6902A30](v45, -1, -1);
    }

    static ImagePresentationComponent.createDataSourceFromCoreImagePair(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(v62, v8, v13, ImageContentType);
  }

  v22 = v62[0];
  v28 = v62[1];
  v29 = v62[2];
  v30 = v62[3];
  v31 = v62[4];
  v32 = v62[5];
  v33 = v62[6];
LABEL_43:
  ShouldLockMeshToImageAspectRatio = REImagePresentationComponentGetShouldLockMeshToImageAspectRatio();
  REImagePresentationComponentGetCornerRadiusInPoints();
  v47 = v46;
  REImagePresentationComponentGetSpatial3DCollapseStrength();
  v49 = v48;
  DesiredViewingMode = REImagePresentationComponentGetDesiredViewingMode();
  DesiredImmersiveViewingMode = REImagePresentationComponentGetDesiredImmersiveViewingMode();
  if (DesiredViewingMode == 2)
  {
    v52 = DesiredImmersiveViewingMode == 2;
    v53 = 3;
  }

  else
  {
    if (DesiredViewingMode != 1)
    {
      v56 = 0;
      goto LABEL_51;
    }

    v52 = DesiredImmersiveViewingMode == 2;
    v53 = 1;
  }

  if (v52)
  {
    ++v53;
  }

  v56 = v53;
LABEL_51:
  *(a2 + 4) = 0;
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v31;
  *(a2 + 64) = v32;
  *(a2 + 72) = v33;
  *(a2 + 24) = v22;
  *(a2 + 16) = v59;
  outlined copy of ImagePresentationComponent.DataSource(v22, v28, v29, v30, v31, v32, v33);
  v54 = one-time initialization token for networkSystemObserver;

  if (v54 != -1)
  {
    swift_once();
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

  outlined consume of ImagePresentationComponent.DataSource(v22, v28, v29, v30, v31, v32, v33);

  *a2 = v5;
  *(a2 + 4) = v56;
  *(a2 + 5) = v58;
  *(a2 + 6) = ShouldLockMeshToImageAspectRatio;
  *(a2 + 8) = v49;
  *(a2 + 12) = v47;
  return result;
}

uint64_t ImagePresentationComponent.__toCore(_:)(void **a1)
{
  v2._rawValue = *a1;
  v3 = v1[3];
  v4 = v1[5];
  v79 = v1[4];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v76 = v7;
  v77 = v5;
  REImagePresentationComponentSetScreenHeight();
  v75 = v8;
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1 || v9)
  {

    REImagePresentationComponentSetImageContentType();
  }

  else
  {
    REImagePresentationComponentSetImageContentType();
  }

  REImagePresentationComponentSetContentDimensionHint();
  REImagePresentationComponentSetLoadingImageTextureAsset();
  v74 = v4;
  if (v9 > 1)
  {
    v78 = v8 >> 62;
    if (v9 == 2)
    {
      v14 = v6;
      v15 = v3;
      goto LABEL_16;
    }
  }

  else
  {
    if (!v9)
    {
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, ImageLogger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1C1358000, v11, v12, "ImagePresentationComponent: Setting Core's MonoImage to nil", v13, 2u);
        MEMORY[0x1C6902A30](v13, -1, -1);
      }

      REImagePresentationComponentSetMonoImageTextureAsset();
      REImagePresentationComponentSetMonoImageTextureIndex();
      REImagePresentationComponentSetMonoImageOrientation();
LABEL_26:
      v24 = &static ComponentInfo.Platform.macOS;
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, ImageLogger);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1C1358000, v26, v27, "ImagePresentationComponent: Setting Core's SpatialStereoImage to nil", v28, 2u);
        v29 = v28;
        v24 = &static ComponentInfo.Platform.macOS;
        MEMORY[0x1C6902A30](v29, -1, -1);
      }

      REImagePresentationComponentSetStereoBaseline();
      REImagePresentationComponentSetDisparityAdjustment();
      REImagePresentationComponentSetHorizontalFOV();
      REImagePresentationComponentSetStereoImageTextureAsset();
      REImagePresentationComponentSetStereoImageOrientation();
      goto LABEL_31;
    }

    v78 = v8 >> 62;
  }

  v14 = v6;
  v15 = v3;
LABEL_16:

  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, ImageLogger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C1358000, v17, v18, "ImagePresentationComponent: Setting Core's MonoImage to the DataStore's MonoImage", v19, 2u);
    MEMORY[0x1C6902A30](v19, -1, -1);
  }

  REImagePresentationComponentSetMonoImageTextureAsset();
  REImagePresentationComponentSetMonoImageTextureIndex();
  REImagePresentationComponentSetMonoImageOrientation();

  v20 = v14;
  if (v78 == 2)
  {
    v20 = *(v15 + 40);
  }

  v3 = v15;
  v6 = v14;
  v9 = v78;
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C1358000, v21, v22, "ImagePresentationComponent: Setting Core's SpatialStereoImage to the DataStore's SpatialStereoImage", v23, 2u);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  REImagePresentationComponentSetStereoBaseline();
  REImagePresentationComponentSetDisparityAdjustment();
  REImagePresentationComponentSetHorizontalFOV();
  REImagePresentationComponentSetStereoImageTextureAsset();
  REImagePresentationComponentSetStereoImageOrientation();

  v24 = &static ComponentInfo.Platform.macOS;
LABEL_31:
  if (REImagePresentationComponentGetSpatial3DImage())
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with copy of Any(v82, v80);
    type metadata accessor for ImagePresentationComponent.Spatial3DImage();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v82);
      v30 = v81;
      if (v9 == 3)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    }

    if (v24[474] != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, ImageLogger);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1C1358000, v38, v39, "ImagePresentationComponent: Stored Spatial3DImage on ImagePresentationComponent cannot be cast as a Spatial3DImage", v40, 2u);
      v41 = v40;
      v24 = &static ComponentInfo.Platform.macOS;
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v30 = 0;
  if (v9 == 3)
  {
LABEL_34:
    v31 = v75 & 0x3FFFFFFFFFFFFFFFLL;
    v32 = v24[474];

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, ImageLogger);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C1358000, v34, v35, "ImagePresentationComponent: Converting _toCore using an already generated MXI content, so we are storing it directly in Core without reference to a Spatial3DImage", v36, 2u);
      MEMORY[0x1C6902A30](v36, -1, -1);
    }

    swift_retain_n();
    REImagePresentationComponentSetSpatial3DImage();
    REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
    if (REImagePresentationComponentGetIsSpatial3DImageGenerating())
    {
      REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
    }

    v24 = &static ComponentInfo.Platform.macOS;
    if (!v30)
    {
      goto LABEL_83;
    }

LABEL_78:
    v62 = v24[474];

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, ImageLogger);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1C1358000, v64, v65, "ImagePresentationComponent: We pass the ownership of the IPC from the previously registered Spatial3DImage to the new one, so we unregister the old one here", v66, 2u);
      MEMORY[0x1C6902A30](v66, -1, -1);
    }

    ImagePresentationComponent.Spatial3DImage.unregisterComponent(component:)(v2);

    goto LABEL_83;
  }

LABEL_48:
  if (v9 == 2)
  {
    v42 = *(v3 + 88);
    v43 = v24[474];

    if (v42)
    {
      if (v43 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, ImageLogger);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1C1358000, v45, v46, "ImagePresentationComponent: Converting _toCore using a generated Spatial3DImage, so we pass its MXI scene resources without storing it directly in Core", v47, 2u);
        v48 = v47;
        v24 = &static ComponentInfo.Platform.macOS;
        MEMORY[0x1C6902A30](v48, -1, -1);
      }

      if (REImagePresentationComponentGetIsSpatial3DImageGenerating())
      {
        REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
      }

      if (!v30)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v43 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, ImageLogger);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1C1358000, v54, v55, "ImagePresentationComponent: Converting _toCore using an ungenerated Spatial3DImage, so we are storing it directly in Core", v56, 2u);
        v57 = v56;
        v24 = &static ComponentInfo.Platform.macOS;
        MEMORY[0x1C6902A30](v57, -1, -1);
      }

      REImagePresentationComponentSetSpatial3DImage();
      if (!v30 || v30 != v3)
      {
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1C1358000, v58, v59, "ImagePresentationComponent: Registering self in Spatial3DImage's registered components", v60, 2u);
          v61 = v60;
          v24 = &static ComponentInfo.Platform.macOS;
          MEMORY[0x1C6902A30](v61, -1, -1);
        }

        ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(v2);
        if (!v30)
        {
LABEL_77:
          REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
          v31 = *(v3 + 88);

          outlined consume of ImagePresentationComponent.DataSource(v3, v79, v74, v6, v77, v76, v75);

          if (!v30)
          {
            goto LABEL_83;
          }

          goto LABEL_78;
        }
      }
    }

    if (v30 == v3)
    {

      v30 = 0;
    }

    goto LABEL_77;
  }

  if (v24[474] != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, ImageLogger);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1C1358000, v50, v51, "ImagePresentationComponent: Converting _toCore without using MXI content, so we tell core not to use any MXI", v52, 2u);
    MEMORY[0x1C6902A30](v52, -1, -1);
  }

  REImagePresentationComponentSetSpatial3DImage();
  REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
  if (REImagePresentationComponentGetIsSpatial3DImageGenerating())
  {
    REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
  }

  v31 = 0;
  if (v30)
  {
    goto LABEL_78;
  }

LABEL_83:
  if (v31)
  {
    if (v24[474] != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, ImageLogger);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1C1358000, v68, v69, "ImagePresentationComponent: Setting Core's MXI content", v70, 2u);
      MEMORY[0x1C6902A30](v70, -1, -1);
    }

    REImagePresentationComponentSetMXIMeshAsset();
    REImagePresentationComponentSetMXITextureAsset();

    v72 = specialized static MXISceneResource.toCFArray(_:)(v71);

    REImagePresentationComponentSetMXITextureAssets();

    REImagePresentationComponentSetMXIBackgroundTextureAsset();
    swift_beginAccess();
    REImagePresentationComponentSetMXIVerticalFOV();
    swift_beginAccess();
    REImagePresentationComponentSetMXIAspectRatio();
    swift_beginAccess();
    REImagePresentationComponentSetMXINearDistance();
    swift_beginAccess();
    REImagePresentationComponentSetMXIFarDistance();
    swift_beginAccess();
    REImagePresentationComponentSetMXILayerCount();
    swift_beginAccess();
    REImagePresentationComponentSetMXIResolutionWidth();
    swift_beginAccess();
    REImagePresentationComponentSetMXIResolutionHeight();
    swift_beginAccess();
    REImagePresentationComponentSetMXIPremultipliedAlpha();
  }

  REImagePresentationComponentSetShouldLockMeshToImageAspectRatio();
  REImagePresentationComponentSetCornerRadiusInPoints();
  REImagePresentationComponentSetSpatial3DCollapseStrength();
  REImagePresentationComponentSetDesiredViewingMode();
  REImagePresentationComponentSetDesiredImmersiveViewingMode();
  REComponentGetEntity();
  REImagePresentationStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RENetworkMarkComponentDirty();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImagePresentationComponent.ViewingMode.Mode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ImagePresentationComponent.ViewingMode.Mode@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ImagePresentationComponent.ViewingMode.Mode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImagePresentationComponent.ViewingMode.Mode(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869508461;
  v5 = 0x80000001C18DDB40;
  v6 = 0xD000000000000016;
  v7 = 0xE900000000000044;
  v8 = 0x336C616974617073;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001C18DDB70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x536C616974617073;
    v3 = 0xED00006F65726574;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

double ImagePresentationComponent.ViewingMode.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int ImagePresentationComponent.ViewingMode.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance ImagePresentationComponent.ViewingMode.Mode(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImagePresentationComponent.ViewingMode.Mode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Void __swiftcall ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v3 = v2;
    swift_beginAccess();
    v4 = *(v3 + 24);
    swift_unownedRetainStrong();

    swift_beginAccess();
    v5 = *(v4 + 40);

    if (!v5)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    outlined init with copy of __REAssetService(v5 + 80, v18);

    v6 = v19;
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v7 + 32))(v17, v6, v7);
    if (REECSManagerSceneCount() < 1)
    {
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, ImageLogger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_16;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "App ImagePresentation+Component: setupRENetworkCallbacks failed - scene count is zero";
    }

    else
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      *(v1 + 16) = MEMORY[0x1C68FE270](ServiceLocator);
      v9 = RENetworkSystemObserverCreateEx();
      *(v1 + 24) = v9;
      if (*(v1 + 16) && v9)
      {
        v17[4] = specialized implicit closure #1 in ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks();
        v17[5] = 0;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 1107296256;
        v17[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v17[3] = &block_descriptor_49;
        v10 = _Block_copy(v17);

        RENetworkSystemObserverOnComponentDidUpdate();
        _Block_release(v10);
        RENetworkSystemAddObserver();
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(v18);
        return;
      }

      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, ImageLogger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
LABEL_16:

        goto LABEL_17;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "App ImagePresentation+Component: setupRENetworkCallbacks failed - no network system or observer";
    }

    _os_log_impl(&dword_1C1358000, v12, v13, v15, v14, 2u);
    MEMORY[0x1C6902A30](v14, -1, -1);
    goto LABEL_16;
  }
}

uint64_t specialized implicit closure #1 in ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()(uint64_t a1)
{
  REComponentGetEntity();
  REImagePresentationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass && ComponentByClass == a1 || (REImagePresentationStatusComponentGetComponentType(), (result = REEntityGetComponentByClass()) != 0) && result == a1)
  {
    REImagePresentationStatusComponentGetComponentType();
    result = REEntityGetComponentByClass();
    if (result)
    {

      return MEMORY[0x1EEDFC550]();
    }
  }

  return result;
}

uint64_t specialized static ImagePresentationComponent.createMXISceneResourceFromCoreMXIData(coreComponent:)(uint64_t a1)
{
  MXIMeshAsset = REImagePresentationComponentGetMXIMeshAsset();
  MXITextureAsset = REImagePresentationComponentGetMXITextureAsset();
  v3 = REImagePresentationComponentGetMXITextureAssets();
  v4 = specialized static MXISceneResource.fromCFArray(_:)(v3);

  MXIBackgroundTextureAsset = REImagePresentationComponentGetMXIBackgroundTextureAsset();
  REImagePresentationComponentGetMXIVerticalFOV();
  v7 = v6;
  REImagePresentationComponentGetMXIAspectRatio();
  v9 = v8;
  REImagePresentationComponentGetMXINearDistance();
  v11 = v10;
  REImagePresentationComponentGetMXIFarDistance();
  v13 = v12;
  MXILayerCount = REImagePresentationComponentGetMXILayerCount();
  MXIResolutionWidth = REImagePresentationComponentGetMXIResolutionWidth();
  MXIResolutionHeight = REImagePresentationComponentGetMXIResolutionHeight();
  MXIPremultipliedAlpha = REImagePresentationComponentGetMXIPremultipliedAlpha();
  if (MXIMeshAsset)
  {
    v32 = MXIResolutionWidth;
    v33 = MXIResolutionHeight;
    v34 = MXIPremultipliedAlpha;
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, ImageLogger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C1358000, v19, v20, "ImagePresentationComponent: Successfully retrieved MXI Data from core-stored MXI content", v21, 2u);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    type metadata accessor for MXISceneResource();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 20) = xmmword_1C18C2760;
    *(v22 + 36) = 0x80000000010;
    *(v22 + 44) = 2048;
    *(v22 + 48) = 1;
    RERetain();
    *(v22 + 56) = MXIMeshAsset;
    if (MXIBackgroundTextureAsset)
    {
      if (MXITextureAsset)
      {
        RERetain();
      }

      *(v22 + 64) = MXITextureAsset;
      v23 = *(v4 + 2);
      if (v23)
      {
        v24 = v4 + 32;
        do
        {
          v24 += 8;
          RERetain();
          --v23;
        }

        while (v23);
      }

      *(v22 + 72) = v4;
      RERetain();
      *(v22 + 80) = MXIBackgroundTextureAsset;
    }

    else
    {
      if (MXITextureAsset)
      {
        RERetain();
      }

      *(v22 + 64) = MXITextureAsset;
      v29 = *(v4 + 2);
      if (v29)
      {
        v30 = v4 + 32;
        do
        {
          v30 += 8;
          RERetain();
          --v29;
        }

        while (v29);
      }

      *(v22 + 72) = v4;
      *(v22 + 80) = 0;
    }

    swift_beginAccess();
    *(v22 + 16) = 0;
    swift_beginAccess();
    *(v22 + 20) = v7;
    swift_beginAccess();
    *(v22 + 24) = v9;
    swift_beginAccess();
    *(v22 + 28) = v11;
    swift_beginAccess();
    *(v22 + 32) = v13;
    swift_beginAccess();
    *(v22 + 36) = MXILayerCount;
    swift_beginAccess();
    *(v22 + 40) = v32;
    swift_beginAccess();
    *(v22 + 44) = v33;
    swift_beginAccess();
    *(v22 + 48) = v34;
  }

  else
  {

    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, ImageLogger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C1358000, v26, v27, "ImagePresentationComponent: Missing MXI Mesh or Texture when initializing MXISceneResource from core data", v28, 2u);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    return 0;
  }

  return v22;
}

uint64_t specialized static ImagePresentationComponent.createImagePairFromCoreMonoAndStereoImages(coreComponent:imageContentType:horizontalFoV:)@<X0>(unsigned __int8 a2@<W1>, uint64_t *a3@<X8>, unsigned int a4@<S0>)
{
  v5 = a2;
  if (a2 - 1 > 1)
  {
    MonoImageOrientation = 0;
    MonoImageTextureIndex = 0;
    v21 = 0;
LABEL_17:
    v20 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v21;
    goto LABEL_18;
  }

  MonoImageTextureAsset = REImagePresentationComponentGetMonoImageTextureAsset();
  if (!MonoImageTextureAsset)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, ImageLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C1358000, v23, v24, "ImagePresentationComponent: Missing mono texture asset on ImagePresentationComponent", v25, 2u);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v27 = v26;
    swift_beginAccess();
    outlined init with copy of __REAssetService(v27 + 120, v48);

    v28 = closure #1 in static TextureResource.builtinTexture(named:)(v48, 0xD000000000000013, 0x80000001C18EF580);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v13 = v28;

    MonoImageTextureIndex = 0;
    MonoImageOrientation = 1;
    if (v5 == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v8 = MonoImageTextureAsset;
  type metadata accessor for TextureResource();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  MonoImageTextureIndex = REImagePresentationComponentGetMonoImageTextureIndex();
  MonoImageOrientation = REImagePresentationComponentGetMonoImageOrientation();
  v12 = one-time initialization token for ImageLogger;
  v13 = v9;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, ImageLogger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1C1358000, v15, v16, "ImagePresentationComponent: Successfully retrieved MonoImage from core-stored data", v17, 2u);
    MEMORY[0x1C6902A30](v17, -1, -1);
  }

  if (v5 != 2)
  {
LABEL_16:
    v21 = v13;
    goto LABEL_17;
  }

LABEL_8:
  StereoImageTextureAsset = REImagePresentationComponentGetStereoImageTextureAsset();
  if (StereoImageTextureAsset)
  {
    v19 = StereoImageTextureAsset;
    type metadata accessor for TextureResource();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, ImageLogger);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C1358000, v35, v36, "ImagePresentationComponent: Missing stereo texture asset on ImagePresentationComponent", v37, 2u);
      MEMORY[0x1C6902A30](v37, -1, -1);
    }

    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v39 = v38;
    swift_beginAccess();
    outlined init with copy of __REAssetService(v39 + 120, v48);

    v20 = closure #1 in static TextureResource.builtinTexture(named:)(v48, 0xD000000000000013, 0x80000001C18EF580);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  REImagePresentationComponentGetStereoBaseline();
  v41 = v40;
  REImagePresentationComponentGetDisparityAdjustment();
  v43 = v42;
  v29 = REImagePresentationComponentGetStereoImageOrientation() | (v41 << 32);
  v30 = v43 | (a4 << 32);
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, ImageLogger);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1C1358000, v45, v46, "ImagePresentationComponent: Successfully retrieved SpatialStereoImage from core-stored data", v47, 2u);
    MEMORY[0x1C6902A30](v47, -1, -1);

    v31 = v13;
  }

  else
  {
    v31 = v13;
  }

LABEL_18:

  if (v31)
  {
    v33 = MonoImageOrientation;
  }

  else
  {

    MonoImageTextureIndex = 0;
    v33 = 0;
    v20 = 0;
    v29 = 0;
    v30 = 0;
  }

  *a3 = v31;
  a3[1] = MonoImageTextureIndex;
  a3[2] = v33;
  a3[3] = v20;
  a3[4] = v29;
  a3[5] = v30;
  return result;
}

void specialized static ImagePresentationComponent.createDataSourceFromCoreMXIData(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>, uint64_t a4@<D0>, unsigned int a5@<S1>)
{
  v9 = specialized static ImagePresentationComponent.createMXISceneResourceFromCoreMXIData(coreComponent:)(a1);
  if (!v9)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, ImageLogger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C1358000, v22, v23, "ImagePresentationComponent: Missing MXI Mesh or Texture when initializing MXISceneResource from core data", v24, 2u);
      MEMORY[0x1C6902A30](v24, -1, -1);
    }

    goto LABEL_18;
  }

  v10 = v9;
  specialized static ImagePresentationComponent.createImagePairFromCoreMonoAndStereoImages(coreComponent:imageContentType:horizontalFoV:)(a2, v30, a5);
  v11 = v30[0];
  if (!v30[0])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, ImageLogger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C1358000, v26, v27, "ImagePresentationComponent: Missing image pair when initializing Spatial3DImage from core data", v28, 2u);
      MEMORY[0x1C6902A30](v28, -1, -1);
      outlined destroy of ImagePresentationComponent.ImagePair?(v30);
    }

LABEL_18:
    v13 = 0;
    v14 = 0;
    v19 = 0;
    v11 = a4;
    v12 = a5;
    v20 = 0uLL;
    goto LABEL_19;
  }

  v12 = v30[1];
  v13 = v31;
  v29 = v32;
  v14 = v33;
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, ImageLogger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C1358000, v16, v17, "ImagePresentationComponent: Successfully retrieved DataSource from core-stored MXI and ImagePair content", v18, 2u);
    MEMORY[0x1C6902A30](v18, -1, -1);
  }

  v19 = v10 | 0xC000000000000000;
  v20 = v29;
LABEL_19:
  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v20;
  *(a3 + 40) = v14;
  *(a3 + 48) = v19;
}

double outlined copy of ImagePresentationComponent.DataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) <= 1)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v7 != 2)
  {

LABEL_6:
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePresentationComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ImagePresentationComponent(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = -a2 << 32;
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePresentationComponent.DataSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ImagePresentationComponent.DataSource(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 32;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ImagePresentationComponent.DataSource(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *(result + 16) = *(result + 16);
  *(result + 48) = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ImagePresentationComponent.ViewingMode.Mode, &type metadata for ImagePresentationComponent.ViewingMode.Mode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode);
  }

  return result;
}

unint64_t specialized ImagePresentationComponent.ViewingMode.Mode.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImagePresentationComponent.ViewingMode.Mode.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of ImagePresentationComponent.ImagePair?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26ImagePresentationComponentV0C4PairVSgMd, &_s17RealityFoundation26ImagePresentationComponentV0C4PairVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

RealityFoundation::AmbientAudioComponent __swiftcall AmbientAudioComponent.init(gain:)(Swift::Double gain)
{
  *v1 = gain;
  *(v1 + 8) = gain;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  result.gain = gain;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AmbientAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AmbientAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void (*Entity.ambientAudio.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012AmbientAudioD0V_Tt0B5(v3);
  return Entity.ambientAudio.modify;
}

void Entity.ambientAudio.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012AmbientAudioD0V_TtB5Tf4ndn_n(**a1, v1[1], v1[2], *(v1 + 24), (*a1)[4]);

  free(v1);
}

double static AmbientAudioComponent.__fromCore(_:)@<D0>(uint64_t a2@<X8>)
{
  REAmbientAudioComponentGetDecibelGain();
  result = v3;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t AmbientAudioComponent.__toCore(_:)(void *a1)
{
  v2 = *(v1 + 24);
  REAmbientAudioComponentSetDecibelGain();
  if (v2 == 1)
  {
    REAmbientAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

double protocol witness for static Component.__fromCore(_:) in conformance AmbientAudioComponent@<D0>(uint64_t a2@<X8>)
{
  REAmbientAudioComponentGetDecibelGain();
  result = v3;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance AmbientAudioComponent(void *a1)
{
  v2 = *(v1 + 24);
  REAmbientAudioComponentSetDecibelGain();
  if (v2 == 1)
  {
    REAmbientAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t AmbientAudioComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void AmbientAudioComponent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1C68F4C50](*&v6);
  Hasher._combine(_:)(v4);
}

Swift::Int AmbientAudioComponent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1C68F4C50](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1C68F4C50](*&v7);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t AmbientAudioComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v17[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v17[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v17[12] = 3;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Void __swiftcall AmbientAudioComponent._proto_fadeComponentGain(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *v2 = to;
  *(v2 + 8) = to;
  *(v2 + 16) = duration;
  *(v2 + 24) = 1;
}

unint64_t lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AmbientAudioComponent.CodingKeys, &unk_1F4120A58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AmbientAudioComponent.CodingKeys, &unk_1F4120A58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AmbientAudioComponent.CodingKeys, &unk_1F4120A58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AmbientAudioComponent.CodingKeys, &unk_1F4120A58, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AmbientAudioComponent and conformance AmbientAudioComponent()
{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent and conformance AmbientAudioComponent;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent and conformance AmbientAudioComponent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AmbientAudioComponent, &type metadata for AmbientAudioComponent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent and conformance AmbientAudioComponent);
  }

  return result;
}

RealityFoundation::SkeletalPoseSet __swiftcall SkeletalPoseSet.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];

  *v1 = v2;
  return result;
}

void SkeletalPoseSet.default.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    v7 = *(v3 + 56);
    v6 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = *(v3 + 80);
    *a1 = *(v3 + 32);
    *(a1 + 16) = v5;
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
}

double key path getter for SkeletalPoseSet.default : SkeletalPoseSet@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  SkeletalPoseSet.default.getter(v6);
  v3 = v8;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  return result;
}

void key path setter for SkeletalPoseSet.default : SkeletalPoseSet(__int128 *a1, char **a2)
{
  v2 = *(a1 + 4);
  v3 = *a2;
  if (*(*a2 + 2))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v11 = *a1;
    v6 = *(a1 + 3);
    v7 = *(a1 + 5);
    v8 = *(a1 + 6);
    v9 = *(a1 + 4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v3 + 2))
      {
LABEL_7:
        *(v3 + 2) = v11;
        v3[48] = v9 & 1;
        *(v3 + 7) = v6;
        *(v3 + 8) = v2;
        *(v3 + 9) = v7;
        *(v3 + 10) = v8;

        *a2 = v3;
        return;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      *a2 = v3;
      if (*(v3 + 2))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void SkeletalPoseSet.default.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *v1;
  if (*(*v1 + 2))
  {
    if (!v7)
    {
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v9 + 2))
      {
LABEL_5:
        *(v9 + 4) = v3;
        *(v9 + 5) = v2;
        v9[48] = v5 & 1;
        *(v9 + 7) = v4;
        *(v9 + 8) = v7;
        *(v9 + 9) = v6;
        *(v9 + 10) = v8;

        *v1 = v9;
        return;
      }
    }

    else
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      *v1 = v9;
      if (*(v9 + 2))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    return;
  }

  v11 = *a1;

  outlined consume of SkeletalPose?(v11, v2, v5, v4, v7, v6, v8);
}

void (*SkeletalPoseSet.default.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  *(v3 + 64) = *v1;
  if (*(v5 + 16))
  {
    v12 = *(v5 + 32);
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
    v8 = *(v5 + 72);
    v9 = *(v5 + 80);
    *(v3 + 16) = *(v5 + 48);

    v10 = v12;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    *(v3 + 16) = 0;
    v10 = 0uLL;
  }

  *v4 = v10;
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  return SkeletalPoseSet.default.modify;
}

void SkeletalPoseSet.default.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[8];
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    if (*(v5 + 16))
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_9;
    }

    v10 = v2[6];
    v11 = v2[7];
    v12 = *(v2 + 4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v5;
    v14 = v2[8];
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v14 + 2))
      {
LABEL_8:
        v15 = v10;
        v16 = v2[7];
        *(v14 + 4) = v4;
        *(v14 + 5) = v3;
        v14[48] = v12 & 1;
        *(v14 + 7) = v6;
        *(v14 + 8) = v7;
        *(v14 + 9) = v8;
        *(v14 + 10) = v15;

        *v16 = v14;
        v4 = *v2;
        v3 = v2[1];
        v6 = v2[3];
        v7 = v2[4];
        v8 = v2[5];
LABEL_9:
        v17 = v2[2];
        v18 = v2[6];
        v19 = v4;
        v20 = v3;
        v21 = v6;
        v22 = v7;
        v23 = v8;
LABEL_16:
        outlined consume of SkeletalPose?(v19, v20, v17, v21, v22, v23, v18);
        goto LABEL_17;
      }
    }

    else
    {
      v11 = v2[7];
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v2[8]);
      *v11 = v14;
      if (*(v14 + 2))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v11 = v2[2];
  v10 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v6 = v2[6];
  if (!*(v5 + 16))
  {
    v19 = **a1;
    v20 = v3;
    v17 = v2[2];
    v21 = v2[3];
    v22 = v2[4];
    v23 = v2[5];
    v18 = v2[6];
    goto LABEL_16;
  }

  if (v8)
  {
    v24 = v2[7];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v5;
    v14 = v2[8];
    if (v25)
    {
      if (!*(v14 + 2))
      {
LABEL_23:
        __break(1u);
        return;
      }

      goto LABEL_14;
    }

LABEL_22:
    v26 = v2[7];
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    *v26 = v14;
    if (!*(v14 + 2))
    {
      goto LABEL_23;
    }

LABEL_14:
    v27 = v2[7];
    *(v14 + 4) = v4;
    *(v14 + 5) = v3;
    v14[48] = v11 & 1;
    *(v14 + 7) = v10;
    *(v14 + 8) = v8;
    *(v14 + 9) = v7;
    *(v14 + 10) = v6;

    *v27 = v14;
  }

LABEL_17:

  free(v2);
}

double SkeletalPoseSet.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 16);
  v8 = (*v3 + 80);
  v9 = v7 + 1;
  while (1)
  {
    if (!--v9)
    {
      *(a3 + 48) = 0;
      result = 0.0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    v17 = *(v8 - 3);
    v10 = *(v8 - 32);
    v12 = *(v8 - 3);
    v11 = *(v8 - 2);
    v14 = *(v8 - 1);
    v13 = *v8;
    if (v12 == a1 && v11 == a2)
    {
      break;
    }

    v8 += 7;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_11;
    }
  }

  v12 = a1;
LABEL_11:
  *a3 = v17;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;

  return result;
}

double key path getter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v13 = v4;
  SkeletalPoseSet.subscript.getter(v5, v6, v10);
  v7 = v12;
  v8 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v8;
  result = *&v11;
  *(a3 + 32) = v11;
  *(a3 + 48) = v7;
  return result;
}

double key path setter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[6] = v10;

  outlined copy of SkeletalPose?(v12[0], v5, v6, v7, v8, v9, v10);
  return SkeletalPoseSet.subscript.setter(v12, v3, v4);
}

double SkeletalPoseSet.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *v3;
  v11 = *(*v3 + 2);
  if (!v11)
  {
    outlined consume of SkeletalPose?(*a1, a1[1], a1[2], a1[3], v8, v7, v9);
    goto LABEL_20;
  }

  if (!v8)
  {
LABEL_20:

    return result;
  }

  v17 = a1[3];
  v18 = a1[2];
  v19 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v10;
  v20 = v6;
  v21 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v13 = 0;
  v14 = 0;
  *v3 = v10;
  do
  {
    if (v11 == v14)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v14 >= *(v10 + 2))
    {
      goto LABEL_24;
    }

    v15 = *&v10[v13 + 56] == a2 && *&v10[v13 + 64] == a3;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(*&v10[v13 + 80] + 16) == *(v9 + 16))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      }

      if (v14 >= *(v10 + 2))
      {
        goto LABEL_25;
      }

      *&v10[v13 + 80] = v9;
    }

    ++v14;
    v13 += 56;
  }

  while (v11 != v14);

  result = outlined consume of SkeletalPose?(v20, v19, v18, v17, v8, v21, v9);
  *v3 = v10;
  return result;
}

void (*SkeletalPoseSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  *a1 = v7;
  v7[8] = a3;
  v7[9] = v3;
  v7[7] = a2;
  SkeletalPoseSet.subscript.getter(a2, a3, v7);
  return SkeletalPoseSet.subscript.modify;
}

void SkeletalPoseSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[8];
  v11 = (*a1)[6];
  v10 = (*a1)[7];
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v11;
  if (a2)
  {

    outlined copy of SkeletalPose?(v3, v4, v6, v5, v8, v7, v11);
    SkeletalPoseSet.subscript.setter(v12, v10, v9);
    outlined consume of SkeletalPose?(*v2, v2[1], v2[2], v2[3], v2[4], v2[5], v2[6]);
  }

  else
  {

    SkeletalPoseSet.subscript.setter(v12, v10, v9);
  }

  free(v2);
}

{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v9 = (*a1)[5];
  v8 = (*a1)[6];
  v11 = (*a1)[8];
  v10 = (*a1)[9];
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v10;
    v13 = v2[9];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = v2[8];
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v2[9]);
      *v23 = v13;
    }

    v14 = v2[7];
    if (*(v13 + 2) > v14)
    {
      v15 = v5;
      v16 = v2[8];
      v17 = &v13[56 * v14];
      *(v17 + 4) = v3;
      *(v17 + 5) = v4;
      v17[48] = v15;
      *(v17 + 7) = v7;
      *(v17 + 8) = v6;
      *(v17 + 9) = v9;
      *(v17 + 10) = v8;

      *v16 = v13;

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v10;
  v13 = v2[9];
  if ((v18 & 1) == 0)
  {
LABEL_13:
    v24 = v2[8];
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *v24 = v13;
  }

  v19 = v2[7];
  if (*(v13 + 2) <= v19)
  {
    __break(1u);
    return;
  }

  v20 = v5;
  v21 = v2[8];
  v22 = &v13[56 * v19];
  *(v22 + 4) = v3;
  *(v22 + 5) = v4;
  v22[48] = v20;
  *(v22 + 7) = v7;
  *(v22 + 8) = v6;
  *(v22 + 9) = v9;
  *(v22 + 10) = v8;

  *v21 = v13;
LABEL_9:

  free(v2);
}

Swift::Bool __swiftcall SkeletalPoseSet.contains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(*v1 + 16);
  v5 = (*v1 + 64);
  v6 = v4 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    if (*(v5 - 1) == countAndFlagsBits && *v5 == object)
    {
      break;
    }

    v5 += 7;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
  return v6 != 0;
}

void SkeletalPoseSet.set(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v32 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *v2;
  v12._countAndFlagsBits = v7;
  v12._object = v8;
  v33 = SkeletalPoseSet.index(of:)(v12);
  if (v33.is_nil)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  value = v33.value;
  if (v33.value < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v33.value >= *(v11 + 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v5;
  v14 = &v11[56 * v33.value];
  v28 = *(v14 + 5);
  v29 = *(v14 + 4);
  v30 = v14[48];
  v31 = v6;
  v15 = *(v14 + 8);
  v26 = *(v14 + 7);
  v16 = v9;
  v18 = *(v14 + 9);
  v17 = *(v14 + 10);
  v22 = v16;

  v27 = v15;

  v25 = v18;

  v23 = v17;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    v20 = v24;
    v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    *v3 = v11;
    goto LABEL_7;
  }

  v20 = v24;
LABEL_7:
  v21 = &v11[56 * value];
  *(v21 + 4) = v20;
  *(v21 + 5) = v31;
  v21[48] = v32;
  *(v21 + 7) = v7;
  *(v21 + 8) = v8;
  *(v21 + 9) = v22;
  *(v21 + 10) = v10;

  *v3 = v11;
  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30;
  *(a2 + 24) = v26;
  *(a2 + 32) = v27;
  *(a2 + 40) = v25;
  *(a2 + 48) = v23;
}

Swift::Int_optional __swiftcall SkeletalPoseSet.index(of:)(Swift::String of)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 == 0;
  if (v3)
  {
    object = of._object;
    countAndFlagsBits = of._countAndFlagsBits;
    v7 = 0;
    v8 = (v2 + 64);
    while (1)
    {
      v9 = *(v8 - 1) == countAndFlagsBits && *v8 == object;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 7;
      v4 = v3 == v7;
      if (v3 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v10 = v4;
  v11 = v7;
  result.value = v11;
  result.is_nil = v10;
  return result;
}

void SkeletalPoseSet.Iterator.next()(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 56 * v2;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = *(v4 + 80);
    *a1 = *(v4 + 32);
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    v1[1] = v2 + 1;
  }
}

double SkeletalPoseSet.makeIterator()@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SkeletalPoseSet()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

void SkeletalPoseSet.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = *v2 + 56 * a1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  *a2 = *(v3 + 32);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
}

void key path getter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= *(*a1 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *a1 + 56 * v4;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v5 + 72);
  v10 = *(v5 + 80);
  *a3 = *(v5 + 32);
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
}

void key path setter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet(uint64_t *a1, char **a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v9 = a1[3];
  v8 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
  *a2 = v12;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v12 + 2))
  {
    v14 = &v12[56 * v4];
    *(v14 + 4) = v5;
    *(v14 + 5) = v6;
    v14[48] = v7;
    *(v14 + 7) = v9;
    *(v14 + 8) = v8;
    *(v14 + 9) = v10;
    *(v14 + 10) = v11;

    *a2 = v12;
    return;
  }

LABEL_7:
  __break(1u);
}

void SkeletalPoseSet.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v10 = a1[5];
  v9 = a1[6];
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  *v2 = v11;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v11 + 2) > a2)
  {
    v13 = &v11[56 * a2];
    *(v13 + 4) = v4;
    *(v13 + 5) = v5;
    v13[48] = v6;
    *(v13 + 7) = v7;
    *(v13 + 8) = v8;
    *(v13 + 9) = v10;
    *(v13 + 10) = v9;

    *v2 = v11;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*SkeletalPoseSet.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x50uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 7) = a2;
  *(result + 8) = v2;
  v7 = *v2;
  *(result + 9) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v7 + 16) > a2)
  {
    v8 = v7 + 56 * a2;
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 80);
    *v6 = *(v8 + 32);
    *(v6 + 16) = v9;
    *(v6 + 3) = v10;
    *(v6 + 4) = v11;
    *(v6 + 5) = v12;
    *(v6 + 6) = v13;

    return SkeletalPoseSet.subscript.modify;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall SkeletalPoseSet.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance SkeletalPoseSet(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x38uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = *v2 + 56 * v7;
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 80);
    *v6 = *(v8 + 32);
    *(v6 + 16) = v9;
    *(v6 + 3) = v10;
    *(v6 + 4) = v11;
    *(v6 + 5) = v12;
    *(v6 + 6) = v13;

    return protocol witness for Collection.subscript.read in conformance SkeletalPoseSet;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance SkeletalPoseSet(void **a1)
{
  v1 = *a1;

  free(v1);
}

double outlined consume of SkeletalPose?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
  }

  return result;
}

double outlined copy of SkeletalPose?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator()
{
  result = lazy protocol witness table cache variable for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator;
  if (!lazy protocol witness table cache variable for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkeletalPoseSet.Iterator, &type metadata for SkeletalPoseSet.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SkeletalPoseSet and conformance SkeletalPoseSet()
{
  result = lazy protocol witness table cache variable for type SkeletalPoseSet and conformance SkeletalPoseSet;
  if (!lazy protocol witness table cache variable for type SkeletalPoseSet and conformance SkeletalPoseSet)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkeletalPoseSet, &type metadata for SkeletalPoseSet, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SkeletalPoseSet and conformance SkeletalPoseSet);
  }

  return result;
}

Swift::Int CollisionCastQueryType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

_DWORD *CollisionFilter.init(group:mask:)@<X0>(_DWORD *result@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

double static CollisionFilter.sensor.getter@<D0>(void *a1@<X0>, double *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

double one-time initialization function for sensor()
{
  result = NAN;
  static CollisionFilter.sensor = -1;
  return result;
}

__n128 CollisionCastHit.triangleHit.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

char *Scene.raycast(origin:direction:length:query:mask:relativeTo:)(char *a1, int *a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  v6 = *a2;
  v7 = vmuls_lane_f32(a6, a5, 2);
  v8.i64[0] = vaddq_f32(vmulq_n_f32(a5, a6), a4).u64[0];
  v8.f32[2] = a4.f32[2] + v7;
  v8.i32[3] = 0;
  v11 = *a1;
  v10 = v6;
  return Scene.raycast(from:to:query:mask:relativeTo:)(&v11, &v10, a3, a4, v8);
}

char *Scene.raycast(from:to:query:mask:relativeTo:)(unsigned __int8 *a1, unsigned int *a2, uint64_t a3, float32x4_t a4, float32x4_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = vsubq_f32(a5, a4);
  v8 = v7.f32[2];
  v9 = vmul_f32(*v7.f32, *v7.f32);
  v75 = *v7.f32;
  v9.f32[0] = sqrtf(vmuls_lane_f32(v7.f32[2], v7, 2) + vaddv_f32(v9));
  v68 = v9;
  specialized static __ServiceLocator.shared.getter();
  if (a3)
  {
    *v81.columns[0].i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, a3);
    v63 = v81.columns[0];
    v64 = v81.columns[1];
    v65 = v81.columns[2];
    v59 = v81.columns[3];
    v82 = __invert_f4(v81);
    v69 = v82.columns[1];
    v71 = v82.columns[0];
    v67 = v82.columns[2];
    v61 = v82.columns[3];
    *v10.i64 = simd_float4x4.transform(position:)(a4, v82.columns[0], v82.columns[1], v82.columns[2], v82.columns[3]);
    v76 = v10;
    *v11.i64 = simd_float4x4.transform(position:)(a5, v71, v69, v67, v61);
    v12 = vsubq_f32(v11, v76);
    v13 = vmulq_f32(v12, v12);
    *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
    v15 = vrsqrte_f32(v14);
    v16 = vmul_f32(v15, vrsqrts_f32(v14, vmul_f32(v15, v15)));
    v74 = vmulq_n_f32(v12, vmul_f32(v16, vrsqrts_f32(v14, vmul_f32(v16, v16))).f32[0]);
    v17 = sqrtf(v13.f32[2] + (v13.f32[0] + vmuls_lane_f32(v12.f32[1], *v12.f32, 1)));
  }

  else
  {
    *v18.f32 = vdiv_f32(v75, vdup_lane_s32(v68, 0));
    v18.f32[2] = v8 / *v68.i32;
    v18.i32[3] = 0;
    v74 = v18;
    v59 = *&zmmword_1C1887630[48];
    v65 = *&zmmword_1C1887630[32];
    v64 = *&zmmword_1C1887630[16];
    v63 = *zmmword_1C1887630;
    v17 = *v68.i32;
    v76 = a4;
  }

  RECollisionCastConfigurationInitToDefault();
  RECollisionCastConfigurationSetQueryType();
  RECollisionCastConfigurationSetFilter();
  RECollisionCastHitCollectionCreate();
  v78[0] = v76;
  v78[1] = v74;
  v79 = v17;
  if (a3)
  {
    RECollisionCastRayVsEntitySimulation();
  }

  else
  {
    RECollisionCastRayVsScene();
  }

  v19 = RECollisionCastHitCollectionCount();
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v19 < 0)
  {
    goto LABEL_36;
  }

  v21 = v20;
  v62 = a3;
  v60 = v6;
  if (v19)
  {
    v22 = 0;
    while (1)
    {
      if (RECollisionCastHitCollectionGetByIndex())
      {
        v77 = 1;
        RECollisionCastHitGetObject();
        Entity = RECollisionObjectGetEntity();
        if (Entity)
        {
          break;
        }
      }

LABEL_14:
      if (v19 == ++v22)
      {
        goto LABEL_26;
      }
    }

    v35 = Entity;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v36 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_35;
      }

      specialized static Entity.entityInfoType(_:)(v35);
      if (v38)
      {
        v37 = (*(v38 + 232))();
        v39 = *(v37 + 16);

        MEMORY[0x1C68F9740](v39, 0);
        *(v37 + 16) = v35;
        MEMORY[0x1C68F9740](v35, v37);

        goto LABEL_23;
      }

      v36 = makeEntity(for:)(v35);
    }

    v37 = v36;
LABEL_23:
    RECollisionCastHitGetPosition();
    v72 = v40;
    RECollisionCastHitGetNormal();
    v70 = v41;
    RECollisionCastHitGetHitPercentage();
    v43 = v42;
    ShapeIndex = RECollisionCastHitGetShapeIndex();
    if (RECollisionCastHitHasTriangleMeshHitInfo())
    {
      FaceIndex = RECollisionCastHitGetFaceIndex();
      RECollisionCastHitGetFaceUV();
      v24 = v45;
      v77 = 0;
    }

    else
    {
      FaceIndex = 0;
      v24 = 0;
    }

    v25 = *v68.i32;
    v27 = v74.i32[3];
    v26 = v76.i32[3];
    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v21);
      v27 = v74.i32[3];
      v26 = v76.i32[3];
      v25 = *v68.i32;
      v21 = v46;
    }

    v30 = v72;
    HIDWORD(v30) = v26;
    v31 = v70;
    HIDWORD(v31) = v27;
    *(v21 + 2) = v29 + 1;
    v32 = &v21[96 * v29];
    *(v32 + 4) = v37;
    *(v32 + 3) = v30;
    *(v32 + 4) = v31;
    *(v32 + 20) = v25 * v43;
    *(v32 + 11) = FaceIndex;
    *(v32 + 12) = v24;
    v32[104] = v77;
    v33 = *(v78 + 3);
    *(v32 + 105) = v78[0];
    *(v32 + 27) = v33;
    *(v32 + 14) = ShapeIndex;
    v74.i32[3] = v27;
    v76.i32[3] = HIDWORD(v30);
    goto LABEL_14;
  }

LABEL_26:
  RECollisionCastHitCollectionDestroy();
  v47.columns[2] = v65;
  v47.columns[1] = v64;
  if (v62)
  {
    v48 = *(v21 + 2);
    if (v48)
    {
      v47.columns[0] = v63;
      v47.columns[0].i32[3] = 0;
      v47.columns[1].i32[3] = 0;
      v47.columns[2].i32[3] = 0;
      v52 = __invert_f3(v47);
      v49 = 0;
      v50 = vzip1q_s32(v52.columns[0], v52.columns[1]);
      v50.i32[2] = v52.columns[2].i32[0];
      v51 = vtrn2q_s32(v52.columns[0], v52.columns[1]);
      v51.i32[2] = v52.columns[2].i32[1];
      v52.columns[0] = vzip2q_s32(v52.columns[0], v52.columns[1]);
      v52.columns[0].i32[2] = v52.columns[2].i32[2];
      v53 = *(v21 + 2);
      v54 = (v21 + 48);
      while (v49 < v53)
      {
        ++v49;
        v52.columns[2] = vaddq_f32(v59, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*v54->f32)), v64, *v54, 1), v65, *v54->f32, 2));
        *&v55 = vdiv_f32(*v52.columns[2].f32, vdup_laneq_s32(v52.columns[2], 3));
        v56 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*v54[2].f32)), v51, v54[2], 1), v52.columns[0], *v54[2].f32, 2);
        v57 = vsub_f32(*&v55, *a4.f32);
        *(&v55 + 2) = v52.columns[2].f32[2] / *&v52.columns[2].i32[3];
        HIDWORD(v55) = 0;
        v56.i32[3] = v52.columns[1].i32[3];
        *v54->f32 = v55;
        *v54[2].f32 = v56;
        v54[4].f32[0] = sqrtf((((v52.columns[2].f32[2] / *&v52.columns[2].i32[3]) - a4.f32[2]) * ((v52.columns[2].f32[2] / *&v52.columns[2].i32[3]) - a4.f32[2])) + vaddv_f32(vmul_f32(v57, v57)));
        v54 += 12;
        if (v48 == v49)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

LABEL_31:
  if (v60 == 1)
  {
    *&v78[0] = v21;

    specialized MutableCollection<>.sort(by:)(v78);

    return *&v78[0];
  }

  return v21;
}

char *Scene.convexCast(convexShape:fromPosition:fromOrientation:toPosition:toOrientation:query:mask:relativeTo:)(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, void *a4, __n128 a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v71[1] = *MEMORY[0x1E69E9840];
  v9 = *a2;
  specialized static __ServiceLocator.shared.getter();
  if (a4)
  {
    *v72.columns[0].i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, a4);
    v60 = v72.columns[0];
    v61 = v72.columns[1];
    v62 = v72.columns[2];
    v57 = v72.columns[3];
    __invert_f4(v72);
  }

  else
  {
    v60 = *zmmword_1C1887630;
    v61 = *&zmmword_1C1887630[16];
    v62 = *&zmmword_1C1887630[32];
    v57 = *&zmmword_1C1887630[48];
  }

  v10 = a5;
  if (one-time initialization token for identity == -1)
  {
    if (a4)
    {
LABEL_6:
      specialized simd_float4x4.init(translation:rotation:scale:)(v10.n128_f64[0], a6, 1.0);
      specialized simd_float4x4.init(translation:rotation:scale:)(*a7.i64, a8, 1.0);
      REMakeSRTFromMatrix();
      v64 = v11;
      REMakeSRTFromMatrix();
      a8.i32[3] = v12;
      a7 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    v10 = a5;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v64 = v10;
LABEL_9:
  RECollisionCastConfigurationInitToDefault();
  RECollisionCastConfigurationSetQueryType();
  RECollisionCastConfigurationSetFilter();
  CollisionShape = RECollisionShapeAssetGetCollisionShape();
  RECollisionCastHitCollectionCreate();
  if (!a4)
  {
    if (CollisionShape)
    {
      RECollisionCastConvexVsScene();
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);

    __break(1u);
    return result;
  }

  if (!CollisionShape)
  {
    __break(1u);
    goto LABEL_45;
  }

  RECollisionCastConvexVsEntitySimulation();
LABEL_14:
  v15 = RECollisionCastHitCollectionCount();
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v15 < 0)
  {
    goto LABEL_43;
  }

  v17 = v16;
  v59 = a4;
  v58 = v9;
  if (v15)
  {
    v18 = 0;
    v19 = vsubq_f32(a7, v64);
    v20 = vmulq_f32(v19, v19);
    v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
    while (1)
    {
      if (RECollisionCastHitCollectionGetByIndex())
      {
        v70 = 1;
        RECollisionCastHitGetObject();
        Entity = RECollisionObjectGetEntity();
        if (Entity)
        {
          break;
        }
      }

LABEL_21:
      if (v15 == ++v18)
      {
        goto LABEL_33;
      }
    }

    v33 = Entity;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v34 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_42;
      }

      specialized static Entity.entityInfoType(_:)(v33);
      if (v36)
      {
        v35 = (*(v36 + 232))();
        v37 = *(v35 + 16);

        MEMORY[0x1C68F9740](v37, 0);
        *(v35 + 16) = v33;
        MEMORY[0x1C68F9740](v33, v35);

        goto LABEL_30;
      }

      v34 = makeEntity(for:)(v33);
    }

    v35 = v34;
LABEL_30:
    RECollisionCastHitGetPosition();
    v67 = v38;
    RECollisionCastHitGetNormal();
    v65 = v39;
    RECollisionCastHitGetHitPercentage();
    v41 = v40;
    ShapeIndex = RECollisionCastHitGetShapeIndex();
    if (RECollisionCastHitHasTriangleMeshHitInfo())
    {
      FaceIndex = RECollisionCastHitGetFaceIndex();
      RECollisionCastHitGetFaceUV();
      v23 = v43;
      v70 = 0;
    }

    else
    {
      FaceIndex = 0;
      v23 = 0;
    }

    v25 = a8.i32[3];
    v24 = a7.u32[3];
    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v17);
      v25 = a8.i32[3];
      v24 = a7.u32[3];
      v17 = v44;
    }

    v28 = v67;
    HIDWORD(v28) = v25;
    v29 = v65;
    HIDWORD(v29) = v24;
    *(v17 + 2) = v27 + 1;
    v30 = &v17[96 * v27];
    *(v30 + 4) = v35;
    *(v30 + 3) = v28;
    *(v30 + 4) = v29;
    *(v30 + 20) = v21 * v41;
    *(v30 + 11) = FaceIndex;
    *(v30 + 12) = v23;
    v30[104] = v70;
    v31 = *(v71 + 3);
    *(v30 + 105) = v71[0];
    *(v30 + 27) = v31;
    *(v30 + 14) = ShapeIndex;
    a8.i32[3] = HIDWORD(v28);
    a7.i32[3] = v24;
    goto LABEL_21;
  }

LABEL_33:
  RECollisionCastHitCollectionDestroy();
  v45.columns[2] = v62;
  v45.columns[1] = v61;
  if (v59)
  {
    v46 = *(v17 + 2);
    if (v46)
    {
      v45.columns[0] = v60;
      v45.columns[0].i32[3] = 0;
      v45.columns[1].i32[3] = 0;
      v45.columns[2].i32[3] = 0;
      v50 = __invert_f3(v45);
      v47 = 0;
      v48 = vzip1q_s32(v50.columns[0], v50.columns[1]);
      v48.i32[2] = v50.columns[2].i32[0];
      v49 = vtrn2q_s32(v50.columns[0], v50.columns[1]);
      v49.i32[2] = v50.columns[2].i32[1];
      v50.columns[0] = vzip2q_s32(v50.columns[0], v50.columns[1]);
      v50.columns[0].i32[2] = v50.columns[2].i32[2];
      v51 = *(v17 + 2);
      v52 = (v17 + 48);
      while (v47 < v51)
      {
        ++v47;
        v50.columns[2] = vaddq_f32(v57, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*v52->f32)), v61, *v52, 1), v62, *v52->f32, 2));
        *&v53 = vdiv_f32(*v50.columns[2].f32, vdup_laneq_s32(v50.columns[2], 3));
        v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*v52[2].f32)), v49, v52[2], 1), v50.columns[0], *v52[2].f32, 2);
        v55 = vsub_f32(*&v53, a5.n128_u64[0]);
        *(&v53 + 2) = v50.columns[2].f32[2] / *&v50.columns[2].i32[3];
        HIDWORD(v53) = 0;
        v54.i32[3] = v50.columns[1].i32[3];
        *v52->f32 = v53;
        *v52[2].f32 = v54;
        v52[4].f32[0] = sqrtf((((v50.columns[2].f32[2] / *&v50.columns[2].i32[3]) - a5.n128_f32[2]) * ((v50.columns[2].f32[2] / *&v50.columns[2].i32[3]) - a5.n128_f32[2])) + vaddv_f32(vmul_f32(v55, v55)));
        v52 += 12;
        if (v46 == v47)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }
  }

LABEL_38:
  if (v58 == 1)
  {
    v71[0] = v17;

    specialized MutableCollection<>.sort(by:)(v71);

    return v71[0];
  }

  return v17;
}

char *Scene.contact(position:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (a1)
  {
    *v74.columns[0].i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, a1);
    *v65 = v74.columns[0];
    *&v65[16] = v74.columns[1];
    *&v65[32] = v74.columns[2];
    v75 = __invert_f4(v74);
    simd_float4x4.transform(position:)(a2, v75.columns[0], v75.columns[1], v75.columns[2], v75.columns[3]);
  }

  else
  {
    *&v65[32] = *&zmmword_1C1887630[32];
    *&v65[16] = *&zmmword_1C1887630[16];
    *v65 = *zmmword_1C1887630;
  }

  RESphereShapeCreate();
  RECollisionObjectCreate();
  if (one-time initialization token for identity != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    RECollisionObjectSetPose();
    REContactSetCollectionCreate();
    if (a1)
    {
      RECollisionWorldGetContactsObjectVsEntitySimulationAdHoc();
    }

    else if (REServiceLocatorGetECSService())
    {
      RECollisionWorldGetContactsObjectVsSceneAdHoc();
    }

    REContactSetCollectionGetIterator();
    if (!REContactSetCollectionIteratorCurrent())
    {
      break;
    }

    v3 = *v65;
    HIDWORD(v3) = 0;
    *v65 = v3;
    v4 = *&v65[16];
    HIDWORD(v4) = 0;
    *&v65[16] = v4;
    v5 = *&v65[32];
    HIDWORD(v5) = 0;
    *&v65[32] = v5;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!REContactSetHasContact())
      {
        goto LABEL_12;
      }

      REContactSetObjectB();
      if (REContactSetObjectA())
      {
        Entity = RECollisionObjectGetEntity();
        if (Entity)
        {
          break;
        }
      }

      v22 = RECollisionObjectGetEntity();
      if (v22)
      {
        v23 = v22;
        REContactSetGetNormal();
        v25 = v24;
        v25.i32[3] = v66.i32[3];
        v70 = v66.i32[3];
        if (a1)
        {
          v67 = v24;
          v73 = __invert_f3(*v65);
          v26.i64[0] = vzip2q_s32(v73.columns[0], v73.columns[1]).u64[0];
          v73.columns[0].i32[3] = v49;
          v73.columns[1].i32[3] = v50;
          v26.i64[1] = __PAIR64__(v54, v73.columns[2].u32[2]);
          v73.columns[2].i32[3] = v51;
          v27 = vzip1q_s32(v73.columns[0], v73.columns[2]);
          v28 = vzip1q_s32(v73.columns[1], 0);
          v29.i64[0] = vzip1q_s32(v27, v28).u64[0];
          v27.i64[0] = vzip2q_s32(v27, v28).u64[0];
          v29.i64[1] = __PAIR64__(v52, vdupq_lane_s32(*(&v73 + 32), 0).u32[2]);
          v27.i64[1] = __PAIR64__(v53, vdupq_lane_s32(*(&v73 + 32), 1).u32[2]);
          v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v67.f32[0]), v27, *v67.f32, 1), v26, v67, 2);
          v30.i32[3] = v55;
          v66 = v30;
          v52 = v29.i32[3];
          v53 = v27.i32[3];
        }

        else
        {
          v66 = v25;
        }

        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v38 = swift_dynamicCastClassUnconditional();
          goto LABEL_34;
        }

        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_48;
        }

        specialized static Entity.entityInfoType(_:)(v23);
        if (v40)
        {
          v39 = (*(v40 + 232))();
          v41 = *(v39 + 16);

          MEMORY[0x1C68F9740](v41, 0);
          *(v39 + 16) = v23;
          MEMORY[0x1C68F9740](v23, v39);
        }

        else
        {
          v38 = makeEntity(for:)(v23);
LABEL_34:
          v39 = v38;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v43 = *(v6 + 2);
        v42 = *(v6 + 3);
        v44 = a2;
        v45 = v70;
        if (v43 >= v42 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v6);
          v44 = a2;
          v45 = v70;
          v6 = v47;
        }

        *(v6 + 2) = v43 + 1;
        v46 = &v6[96 * v43];
        *(v46 + 4) = v39;
        *(v46 + 3) = v44;
        *(v46 + 4) = v66;
        *(v46 + 20) = 0;
        *(v46 + 11) = 0;
        *(v46 + 12) = 0;
        v46[104] = 1;
        *(v46 + 105) = *v71;
        *(v46 + 27) = *&v71[3];
        *(v46 + 14) = -1;
        v66.i32[3] = v45;
      }

LABEL_12:
      REContactSetCollectionIteratorNext();
      if (!REContactSetCollectionIteratorCurrent())
      {
        goto LABEL_46;
      }
    }

    v9 = Entity;
    REContactSetGetNormal();
    v12 = COERCE_UNSIGNED_INT(0.0 - v10);
    v12.f32[1] = 0.0 - v11;
    v13 = v12;
    v13.f32[2] = 0.0 - v14;
    v69 = v13;
    if (a1)
    {
      v56 = 0.0 - v10;
      v57 = *v12.f32;
      v72 = __invert_f3(*v65);
      v15.i64[0] = vzip2q_s32(v72.columns[0], v72.columns[1]).u64[0];
      v72.columns[0].i32[3] = v58;
      v72.columns[1].i32[3] = v59;
      v15.i64[1] = __PAIR64__(v63, v72.columns[2].u32[2]);
      v72.columns[2].i32[3] = v60;
      v16 = vzip1q_s32(v72.columns[0], v72.columns[2]);
      v17 = vzip1q_s32(v72.columns[1], 0);
      v18.i64[0] = vzip1q_s32(v16, v17).u64[0];
      v16.i64[0] = vzip2q_s32(v16, v17).u64[0];
      v18.i64[1] = __PAIR64__(v61, vdupq_lane_s32(*(&v72 + 32), 0).u32[2]);
      v16.i64[1] = __PAIR64__(v62, vdupq_lane_s32(*(&v72 + 32), 1).u32[2]);
      v19 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v56), v16, v57, 1), v15, v69, 2);
      v62 = v16.i32[3];
      v19.i32[3] = v64;
      v61 = v18.i32[3];
      v69 = v19;
    }

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v20 = swift_dynamicCastClassUnconditional();
      goto LABEL_20;
    }

    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v9);
      if (v31)
      {
        v21 = (*(v31 + 232))();
        v32 = *(v21 + 16);

        MEMORY[0x1C68F9740](v32, 0);
        *(v21 + 16) = v9;
        MEMORY[0x1C68F9740](v9, v21);
      }

      else
      {
        v20 = makeEntity(for:)(v9);
LABEL_20:
        v21 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v34 = *(v6 + 2);
      v33 = *(v6 + 3);
      v35 = a2;
      v36 = v69;
      if (v34 >= v33 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v6);
        v35 = a2;
        v36 = v69;
        v6 = v37;
      }

      *(v6 + 2) = v34 + 1;
      v7 = &v6[96 * v34];
      *(v7 + 4) = v21;
      *(v7 + 3) = v35;
      *(v7 + 4) = v36;
      *(v7 + 20) = 0;
      *(v7 + 11) = 0;
      *(v7 + 12) = 0;
      v7[104] = 1;
      *(v7 + 105) = *v71;
      *(v7 + 27) = *&v71[3];
      *(v7 + 14) = -1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_46:
  REContactSetCollectionDestroy();
  RECollisionObjectDestroy();
  RECollisionShapeDestroy();
  return v6;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v80 = v7 + 16;
    v81 = *(v7 + 2);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[16 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 96 * *v82), (*a3 + 96 * *v84), (*a3 + 96 * v85), v89);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6 + 48);
      v10 = 96 * v8;
      v11 = *a3 + 96 * v8;
      v12 = *(v11 + 48);
      v13 = v8 + 2;
      v14 = (v11 + 144);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[24];
        v14 += 24;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 96 * v6 - 96;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v94 = *(v21 + v10 + 32);
            v96 = *(v21 + v10 + 48);
            v98 = *(v21 + v10 + 64);
            v100 = *(v21 + v10 + 80);
            v90 = *(v21 + v10);
            v92 = *(v21 + v10 + 16);
            memmove((v21 + v10), (v21 + v17), 0x60uLL);
            *(v20 + 32) = v94;
            *(v20 + 48) = v96;
            *(v20 + 64) = v98;
            *(v20 + 80) = v100;
            *v20 = v90;
            *(v20 + 16) = v92;
          }

          ++v19;
          v17 -= 96;
          v10 += 96;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v7);
    }

    *(v7 + 2) = v34;
    v35 = v7 + 32;
    v36 = &v7[16 * v33 + 32];
    *v36 = v8;
    *(v36 + 1) = v6;
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 4);
          v39 = *(v7 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[16 * v37];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
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

        v75 = &v35[16 * v37 - 16];
        v76 = *v75;
        v77 = &v35[16 * v37];
        v78 = *(v77 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 96 * *v75), (*a3 + 96 * *v77), (*a3 + 96 * v78), v89);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        *(v75 + 1) = v78;
        v79 = *(v7 + 2);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        memmove(&v35[16 * v37], v77 + 16, 16 * (v79 - 1 - v37));
        *(v7 + 2) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[16 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[16 * v37];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 96 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 + 48) >= *(v26 - 48))
    {
LABEL_29:
      ++v6;
      v23 += 96;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 96;
    v95 = *(v26 + 32);
    v97 = *(v26 + 48);
    v99 = *(v26 + 64);
    v101 = *(v26 + 80);
    v91 = *v26;
    v93 = *(v26 + 16);
    v28 = *(v26 - 48);
    *(v26 + 32) = *(v26 - 64);
    *(v26 + 48) = v28;
    v29 = *(v26 - 16);
    *(v26 + 64) = *(v26 - 32);
    *(v26 + 80) = v29;
    v30 = *(v26 - 80);
    *v26 = *(v26 - 96);
    *(v26 + 16) = v30;
    *(v27 + 32) = v95;
    *(v27 + 48) = v97;
    *(v27 + 64) = v99;
    *(v27 + 80) = v101;
    v26 -= 96;
    *v27 = v91;
    *(v27 + 16) = v93;
    if (__CFADD__(v25++, 1))
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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[12] < v4[12])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x60uLL);
    goto LABEL_9;
  }

  v16 = 24 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v17 = v5 + 24;
      if (*(v13 - 12) < *(v6 - 12))
      {
        v19 = v6 - 24;
        if (v17 != v6)
        {
          memmove(v5, v6 - 24, 0x60uLL);
        }

        if (v13 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = (v13 - 24);
      if (v17 != v13)
      {
        memmove(v5, v13 - 24, 0x60uLL);
      }

      v5 -= 24;
      v13 -= 24;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v20 = 24 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 4);
  }

  return 1;
}

uint64_t specialized static CollisionCastHit.TriangleHit.== infix(_:_:)(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  if (*a1 == *a2)
  {
    v3 = vceq_f32(a1[1], a2[1]);
    if (v3.i8[0])
    {
      v2 = v3.i8[4];
    }
  }

  return v2 & 1;
}

BOOL specialized static CollisionCastHit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(*a1 + 16) == *(*a2 + 16))
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (vmovn_s32(vceqq_f32(v4, v5)).u8[0])
    {
      v6 = *(a1 + 32);
      v7 = *(a2 + 32);
      result = 0;
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v4, v4, 0xCuLL), v6, 8uLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v7, 8uLL)))) & 1) != 0 && (vmovn_s32(vceqq_f32(*&v6, *&v7)).i32[1] & 1) != 0 && *(a1 + 48) == *(a2 + 48))
      {
        if (*(a1 + 72))
        {
          if (!*(a2 + 72))
          {
            return 0;
          }

          return *(a1 + 80) == *(a2 + 80);
        }

        result = 0;
        if ((*(a2 + 72) & 1) == 0 && *(a1 + 56) == *(a2 + 56))
        {
          v8 = vceq_f32(*(a1 + 64), *(a2 + 64));
          if (v8.i8[0] & 1) != 0 && (v8.i8[4])
          {
            return *(a1 + 80) == *(a2 + 80);
          }
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionCastQueryType and conformance CollisionCastQueryType()
{
  result = lazy protocol witness table cache variable for type CollisionCastQueryType and conformance CollisionCastQueryType;
  if (!lazy protocol witness table cache variable for type CollisionCastQueryType and conformance CollisionCastQueryType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionCastQueryType, &type metadata for CollisionCastQueryType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionCastQueryType and conformance CollisionCastQueryType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionGroup and conformance CollisionGroup()
{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionGroup, &type metadata for CollisionGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionGroup, &type metadata for CollisionGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionGroup, &type metadata for CollisionGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollisionGroup, &type metadata for CollisionGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

__n128 __swift_memcpy88_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t static AudioFileResource.url(forAssetNamed:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &unk_1F40E5C80;
  v12 = 8;
  do
  {
    v14 = *(v11 - 1);
    v13 = *v11;

    v15 = MEMORY[0x1C68F3280](a1, a2);
    if (v13)
    {
      v16 = MEMORY[0x1C68F3280](v14, v13);
    }

    else
    {
      v16 = 0;
    }

    v17 = [a3 URLForResource:v15 withExtension:v16];

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      swift_arrayDestroy();
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v26;
      v23 = v25;
      (*(v27 + 32))(v25, v10, v26);
      return (*(v27 + 56))(v23, 0, 1, v22);
    }

    v11 += 2;
    --v12;
  }

  while (v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  swift_arrayDestroy();
  v18 = v26;
  v19 = *(v27 + 56);
  v20 = v25;

  return v19(v20, 1, 1, v18);
}

uint64_t static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned __int8 *a5)
{
  v81 = a3;
  v64 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for URL();
  v62 = *(v11 - 1);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a4[1];
  v78 = *a4;
  v79 = v17;
  *v80 = a4[2];
  *&v80[13] = *(a4 + 45);
  v18 = *a5;
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  LOBYTE(a5) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (a5)
  {
    v60 = v18;
    v20 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v20 + 120, &v67);
    v21 = *(&v68 + 1);
    v22 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    v23 = (*(v22 + 32))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    if (a1)
    {
      v24 = a1;
    }

    else
    {
      v24 = [objc_opt_self() mainBundle];
    }

    v25 = v63;
    v26 = a1;
    v27 = [v24 resourcePath];
    if (v27)
    {
      v58 = v23;

      v74 = v78;
      v75 = v79;
      v76 = *v80;
      v77 = *&v80[16];
      v28 = *&v80[24];
      v29 = v80[28];
      v73 = v80[28];
      v63 = v24;
      if (a1)
      {
        outlined init with copy of AudioFileResource.Configuration(&v78, &v67);
        v30 = v26;
      }

      else
      {
        v38 = objc_opt_self();
        outlined init with copy of AudioFileResource.Configuration(&v78, &v67);
        v30 = [v38 mainBundle];
      }

      v39 = v26;
      static AudioFileResource.url(forAssetNamed:in:)(v64, v81, v30, v10);

      v40 = v62;
      if ((*(v62 + 48))(v10, 1, v25) == 1)
      {
        outlined destroy of URL?(v10);
      }

      else
      {
        v35 = *&v80[24];
        v41 = v80[28];
        v42 = v59;
        (*(v40 + 32))(v59, v10, v25);
        LOBYTE(v67) = v41;
        v43 = v42;
        v44 = v61;
        v45 = specialized static AudioFileResource.layoutTag(for:layoutTagOverride:)(v42, v35 | (v67 << 32));
        v29 = v44;
        if (v44)
        {

          (*(v40 + 8))(v43, v25);
          v67 = v74;
          v68 = v75;
          v69 = v76;
          v70 = v77;
          v71 = v28;
          v72 = v73;
          outlined destroy of AudioFileResource.Configuration(&v67);
          return v35;
        }

        v46 = v45;
        v61 = 0;
        (*(v40 + 8))(v43, v25);
        v73 = 0;
        v28 = v46;
      }

      v67 = v74;
      v68 = v75;
      v69 = v76;
      v70 = v77;
      v71 = v28;
      v72 = v29;
      type metadata accessor for REAudioFileAssetConfigurationWrapper();
      swift_initStackObject();
      REAudioFileAssetConfigurationWrapper.init(configuration:)(&v67);
      REAudioFileAssetConfigurationSetInputMode();
      v47 = v64;
      v48 = v81;
      v49 = MEMORY[0x1C68F3280](v64, v81);
      v24 = v63;
      v50 = REAudioFileAssetDescriptorCreateWithBundleResource();

      if (v50)
      {
        v35 = REAudioFileAssetCreateWithDescriptor();
        RERelease();
        if (v35)
        {

          return v35;
        }

        v65 = 0;
        v66 = 0xE000000000000000;
        _StringGuts.grow(_:)(66);
        MEMORY[0x1C68F3410](0xD000000000000032, 0x80000001C18EF6A0);
        MEMORY[0x1C68F3410](v47, v48);
        MEMORY[0x1C68F3410](0x646E7562206E6920, 0xEB0000000020656CLL);
        v51 = [v24 description];
      }

      else
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        MEMORY[0x1C68F3410](0xD000000000000037, 0x80000001C18EF660);
        MEMORY[0x1C68F3410](v47, v48);
        MEMORY[0x1C68F3410](0x646E7562206E6920, 0xEB0000000020656CLL);
        v51 = [v24 description];
      }

      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      MEMORY[0x1C68F3410](v53, v55);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v35 = v65;
      v56 = v66;
      lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
      swift_allocError();
      *v57 = v35;
      v57[1] = v56;
      swift_willThrow();
    }

    else
    {
      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      *&v67 = 0xD00000000000001DLL;
      *(&v67 + 1) = 0x80000001C18EF640;
      MEMORY[0x1C68F3410](v64, v81);
      MEMORY[0x1C68F3410](0x646E7562206E6920, 0xEB0000000020656CLL);
      v31 = [v24 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      MEMORY[0x1C68F3410](v32, v34);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v36 = *(&v67 + 1);
      v35 = v67;
      lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
      swift_allocError();
      *v37 = v35;
      v37[1] = v36;
      swift_willThrow();
    }

    return v35;
  }

  __break(1u);
  return result;
}

void static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, unsigned __int8 *a5)
{
  v56 = type metadata accessor for DispatchPredicate();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50[-v12];
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v50[-v18];
  v19 = a4[1];
  v63 = *a4;
  v64 = v19;
  v65[0] = a4[2];
  *(v65 + 13) = *(a4 + 45);
  v20 = *a5;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = [objc_opt_self() mainBundle];
  }

  v22 = a3;
  static AudioFileResource.url(forAssetNamed:in:)(a1, a2, v21, v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of URL?(v13);
    v23 = v57;
    _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZ0A3Kit05AudiohD0C_APTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxV38_0B03URLVtKcfu_0A3Kit05AudiogD0C_Tt2G5Tf1nnc_n(a1, a2, a3);
    if (v23)
    {
      lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error();
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = 0;
      swift_willThrow();
    }

    return;
  }

  v51 = v20;
  (*(v15 + 32))(v66, v13, v14);
  v25 = URL.pathExtension.getter();
  v27 = v26;
  v53 = a1;
  v28 = MEMORY[0x1C68F3280](a1, a2);
  v29 = [v28 pathExtension];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v25 == v30 && v27 == v32)
  {

LABEL_11:

    v34 = v53;
    v35 = a2;
    goto LABEL_13;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_11;
  }

  *&v60 = v53;
  *(&v60 + 1) = a2;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v36 = v60;
  v37 = URL.pathExtension.getter();
  v39 = v38;
  v60 = v36;

  MEMORY[0x1C68F3410](v37, v39);

  v35 = *(&v60 + 1);
  v34 = v60;
LABEL_13:
  v60 = v63;
  v61 = v64;
  v62[0] = v65[0];
  *(v62 + 13) = *(v65 + 13);
  v59[0] = v51;
  v40 = v57;
  v41 = static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(a3, v34, v35, &v60, v59);
  if (v40)
  {
    (*(v15 + 8))(v66, v14);
  }

  else
  {
    v57 = v41;

    outlined init with copy of AudioFileResource.Configuration(&v63, &v60);
    v42 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v43 = *(v42 + 24);
    swift_unownedRetainStrong();
    v44 = *(v43 + 32);

    v45 = v54;
    *v54 = v44;
    v46 = v55;
    v47 = v56;
    (*(v55 + 104))(v45, *MEMORY[0x1E69E8020], v56);
    LOBYTE(v43) = _dispatchPreconditionTest(_:)();
    (*(v46 + 8))(v45, v47);
    if (v43)
    {
      v48 = v52;
      v49 = v66;
      (*(v15 + 16))(v52, v66, v14);
      v60 = v63;
      v61 = v64;
      v62[0] = v65[0];
      *(v62 + 13) = *(v65 + 13);
      v58 = v51;
      type metadata accessor for AudioFileResource();
      swift_allocObject();

      AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v57, v48, v53, a2, &v60, &v58);
      RERelease();
      (*(v15 + 8))(v49, v14);
    }

    else
    {
      __break(1u);
    }
  }
}

__int128 *static AudioFileResource.load(contentsOf:withName:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for URL();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a4[1];
  v42 = *a4;
  v43 = v14;
  v16 = *a4;
  v15 = a4[1];
  v44[0] = a4[2];
  *(v44 + 13) = *(a4 + 45);
  v39 = v16;
  v40 = v15;
  v41[0] = a4[2];
  *(v41 + 13) = *(a4 + 45);
  v37[0] = 1;
  v17 = v45;
  v18 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(a1, a2, a3, &v39, v37);
  if (v17)
  {
    return a4;
  }

  v31 = v18;
  v34 = v10;
  v45 = a1;
  v33 = 0;
  v19 = a3;
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    v19 = v20;
  }

  v32 = a2;

  v21 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v22 = *(v21 + 24);
  swift_unownedRetainStrong();
  v23 = *(v22 + 32);

  *v13 = v23;
  v24 = v35;
  (*(v35 + 104))(v13, *MEMORY[0x1E69E8020], v11);
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v13, v11);
  v26 = v34;
  if (v22)
  {
    (*(v36 + 16))(v34, v45, v8);
    v39 = v42;
    v40 = v43;
    v41[0] = v44[0];
    *(v41 + 13) = *(v44 + 13);
    v38[0] = 1;
    v27 = type metadata accessor for AudioFileResource();
    a4 = swift_allocObject();
    outlined init with copy of AudioFileResource.Configuration(&v42, v37);
    v28 = v33;
    v29 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v31, v26, v32, v19, &v39, v38);
    if (v28)
    {
      RERelease();
    }

    else
    {
      a4 = v29;
      RERelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      *(inited + 32) = a4;
      *(inited + 56) = v27;
      *(inited + 64) = &protocol witness table for AudioFileResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t static AudioFileResource.load(named:in:configuration:)(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
  }

  v16 = 1;
  v10 = a3;
  static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(a1, a2, v9, a4, &v16);
  v12 = v11;

  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v14 = type metadata accessor for AudioFileResource();
    *(inited + 32) = v12;
    *(inited + 56) = v14;
    *(inited + 64) = &protocol witness table for AudioFileResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v12;
}

uint64_t static AudioFileResource.load(named:from:in:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v32 = a3;
  *&v28 = a3;
  *(&v28 + 1) = a4;

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](a1, a2);

  v10 = v28;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v31 = 1;
  LOWORD(v28) = 1;
  BYTE2(v28) = 0;
  *(&v28 + 1) = 0;
  LOBYTE(v29) = -1;
  *(&v29 + 1) = 0;
  v30[0] = -1;
  memset(&v30[8], 0, 20);
  v30[28] = 1;
  v27 = 1;
  v12 = a5;
  static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(v10, *(&v10 + 1), v11, &v28, &v27);
  v14 = v13;
  if (v5)
  {
    v24 = v28;
    v25 = v29;
    v26[0] = *v30;
    *(v26 + 13) = *&v30[13];
    outlined destroy of AudioFileResource.Configuration(&v24);
  }

  else
  {
    v24 = v28;
    v25 = v29;
    v26[0] = *v30;
    *(v26 + 13) = *&v30[13];
    outlined destroy of AudioFileResource.Configuration(&v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v16 = type metadata accessor for AudioFileResource();
    *(inited + 32) = v14;
    *(inited + 56) = v16;
    *(inited + 64) = &protocol witness table for AudioFileResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.audio);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v20 = 136315906;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v23);
      *(v20 + 12) = 2048;
      *(v20 + 14) = REAudioFileAssetGetAudioAssetID();
      *(v20 + 22) = 2048;
      *(v20 + 24) = REAssetGetAssetId();

      *(v20 + 32) = 2080;
      *(v20 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a4, &v23);
      _os_log_impl(&dword_1C1358000, v18, v19, "[API/RealityKit] Loading AudioFileResource %s with audioAssetID: %llu and REAssetID: %llu from scene: %s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v22, -1, -1);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    else
    {
    }
  }

  return v14;
}

id @nonobjc AVAudioFile.init(forReading:)(uint64_t a1)
{
  v2 = v1;
  v15 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReading:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t specialized static AudioFileResource.layoutTag(for:layoutTagOverride:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v11 = @nonobjc AVAudioFile.init(forReading:)(v8);
  if (v2)
  {
    return a2;
  }

  v13 = v11;
  v14 = [v11 fileFormat];

  if ((a2 & 0x100000000) != 0)
  {
    specialized static AudioResource.supportedChannelLayoutTag(for:)(v14);
    a2 = v15;

    return a2;
  }

  if (a2 != 1668116578 && a2)
  {
    if ([v14 channelCount] != a2)
    {
      lazy protocol witness table accessor for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError();
      a2 = swift_allocError();
      *v16 = 1;
      swift_willThrow();
    }

    return a2;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned __int8 *a5)
{
  v8 = a4[1];
  v39 = *a4;
  v40 = v8;
  *v41 = a4[2];
  *&v41[13] = *(a4 + 45);
  v42 = *a5;
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, &v28);
  v10 = *(&v29 + 1);
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
  (*(v11 + 32))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v28);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  REEngineGetServiceLocator();
  if (URL.isFileURL.getter())
  {
    if (URL.pathExtension.getter() == 0xD000000000000011 && 0x80000001C18EF5C0 == v12)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        if (a3)
        {
          URL._bridgeToObjectiveC()(v14);
          v20 = v19;
          String.utf8CString.getter();
          FileNameAliasAssetDescriptor = REAssetManagerRegisterAndCreateFileNameAliasAssetDescriptor();
        }

        else
        {
          v22 = *&v41[24];
          v23 = v41[28];
          v35 = v39;
          v36 = v40;
          v37 = *v41;
          v38 = *&v41[16];
          outlined init with copy of AudioFileResource.Configuration(&v39, &v28);
          LOBYTE(v28) = v23;
          v24 = specialized static AudioFileResource.layoutTag(for:layoutTagOverride:)(a1, v22 | (v23 << 32));
          if (v5)
          {
            v28 = v35;
            v29 = v36;
            v30 = v37;
            v31 = v38;
            v32 = v22;
            v33 = v23;
            outlined destroy of AudioFileResource.Configuration(&v28);
            return a1;
          }

          v34 = 0;
          v28 = v35;
          v29 = v36;
          v30 = v37;
          v31 = v38;
          v32 = v24;
          v33 = 0;
          type metadata accessor for REAudioFileAssetConfigurationWrapper();
          swift_initStackObject();
          REAudioFileAssetConfigurationWrapper.init(configuration:)(&v28);
          REAudioFileAssetConfigurationSetInputMode();
          URL._bridgeToObjectiveC()(v25);
          v27 = v26;
          FileNameAliasAssetDescriptor = REAudioFileAssetDescriptorCreateWithURL();
        }

        if (FileNameAliasAssetDescriptor)
        {
          REAssetRegistrationOptionsCreate();
          REAssetRegistrationOptionsSetIsMutable();
          a1 = REAssetHandleCreateFromAssetRegistrationOptions();
          RERelease();
          RERelease();
          return a1;
        }
      }
    }
  }

  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  *&v28 = 0xD00000000000001BLL;
  *(&v28 + 1) = 0x80000001C18EF5A0;
  v15 = URL.path.getter();
  MEMORY[0x1C68F3410](v15);

  a1 = *(&v28 + 1);
  v16 = v28;
  lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
  swift_allocError();
  *v17 = v16;
  v17[1] = a1;
  swift_willThrow();
  return a1;
}

void specialized EnumeratedSequence.Iterator.next()(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 8 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      a1[1] = v4;

      return;
    }
  }

  __break(1u);
}

void specialized EnumeratedSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for __RKEntityTriggerSpecification(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v13, v7 + v14, type metadata accessor for __RKEntityTriggerSpecification);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v7, a1, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C68F41F0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 path];

    ++v4;
    if (v9)
    {
      MEMORY[0x1C68F3650]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v11;
      v4 = v8;
    }
  }

  return v5;
}

void setInfoId(_:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69DEE28];
  v7 = objc_allocWithZone(MEMORY[0x1E69DED80]);
  v8 = MEMORY[0x1C68F3280](a1, a2);
  v9 = [v7 initWithString_];

  v10 = MEMORY[0x1C68F3280](0x64693A6F666E69, 0xE700000000000000);
  v11 = [a3 newPropertyWithName:v10 type:v6 role:0];

  if (v11)
  {
    if (v9)
    {
      [v11 setTokenValue_];

      return;
    }

    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0;
    swift_willThrow();
    v9 = v11;
  }

  else
  {
    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v12 = xmmword_1C18D1600;
    *(v12 + 16) = v6;
    *(v12 + 24) = 0;
    *(v12 + 32) = a3;
    swift_willThrow();
    v13 = v6;
    v14 = a3;
  }
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __USDEncoder.resolveResourcePath(path:)(Swift::String path)
{
  countAndFlagsBits = path._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *v1;
  if (!*v1)
  {
    goto LABEL_4;
  }

  v30 = v12;
  v31 = v5;
  v16 = *(v1 + 8);

  URL.init(string:)();
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15, v16);
    outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_4:
    v18 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  countAndFlagsBits = v2;
  v29 = *(v10 + 32);
  v29(v14, v8, v9);
  v20 = v31;
  v21 = countAndFlagsBits;
  v15(v14);
  countAndFlagsBits = v21;
  if (v21)
  {
    (*(v10 + 8))(v14, v9);
    v18 = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15, v16);
  }

  else
  {
    v28 = v16;
    if (v17(v20, 1, v9) == 1)
    {
      (*(v10 + 8))(v14, v9);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15, v28);
      outlined destroy of BodyTrackingComponent?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v22 = v30;
      v29(v30, v20, v9);
      v23 = URL.path.getter();
      v25 = v24;
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15, v28);
      v26 = *(v10 + 8);
      v26(v22, v9);
      v26(v14, v9);
      v19 = v25;
      v18 = v23;
    }
  }

LABEL_10:
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

void setInherits(from:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
  v7 = objc_allocWithZone(MEMORY[0x1E69DED68]);
  v8 = MEMORY[0x1C68F3280](a1, a2);
  v9 = [v7 initWithString_];

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

    [a3 setMetadataWithKey:v6 value:v10];
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:)()
{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Error #1 in __RKEntityInteractionSpecification.encode(to:at:), &unk_1F4121050, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:);
  if (!lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Error #1 in __RKEntityInteractionSpecification.encode(to:at:), &unk_1F4121050, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in __RKEntityInteractionSpecification.encode(to:at:) and conformance Error #1 in __RKEntityInteractionSpecification.encode(to:at:));
  }

  return result;
}

id __RKEntityInteractionSpecification.encode(to:at:)(uint64_t *a1, void *a2)
{
  v91 = type metadata accessor for __RKEntityActionSpecification(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - v10;
  v99 = type metadata accessor for __RKEntityTriggerSpecification(0);
  MEMORY[0x1EEE9AC00](v99);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v88 - v15);
  v17 = *a1;
  v97 = a1[1];
  v98 = v17;
  v18 = a1[2];
  v96 = a1[3];
  v19 = v18;
  v20 = a2;
  v21 = MEMORY[0x1C68F3280](0xD000000000000014, 0x80000001C18EF880);
  v22 = [v19 newNodeAtPath:a2 type:v21];
  if (!v22)
  {
    lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
    swift_allocError();
    *v32 = v20;
    v32[1] = v21;
    swift_willThrow();
    v33 = v20;

    return v22;
  }

  v93 = v20;
  v95 = v19;

  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v94, v16, type metadata accessor for __RKEntityTriggerSpecification);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    USKObjectPath.appendingPathComponent(_:)(0x5272656767697254, 0xEB00000000746F6FLL);
    v35 = v34;
    v104 = v98;
    v105 = v97;
    v36 = v95;
    v106 = v95;
    v107 = v96;
    __RKEntityTriggerSpecification.encode(to:at:)(&v104, v34);
    if (v2)
    {

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v16, type metadata accessor for __RKEntityTriggerSpecification);
      return v22;
    }

    v49 = v37;
    v99 = v16;
    v40 = *MEMORY[0x1E69DEE08];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1C1898160;
    *(v50 + 32) = [v49 path];
    v51 = MEMORY[0x1C68F3280](0x7372656767697274, 0xE800000000000000);
    v45 = v22;
    v52 = [v22 newPropertyWithName:v51 type:v40 role:0];

    if (!v52)
    {
      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v73 = xmmword_1C18D1610;
      *(v73 + 16) = v40;
      *(v73 + 24) = 0;
      *(v73 + 32) = v45;
      swift_willThrow();
      v74 = v45;
      v75 = v40;

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v99, type metadata accessor for __RKEntityTriggerSpecification);
      return v45;
    }

    v90 = 0;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v53 = v52;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v53 setObjectPathArray_];

    swift_bridgeObjectRelease_n();
    _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v99, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_31:
    USKObjectPath.appendingPathComponent(_:)(0x6F526E6F69746341, 0xEA0000000000746FLL);
    v56 = v55;
    v57 = *(type metadata accessor for __RKEntityInteractionSpecification(0) + 20);
    v104 = v98;
    v105 = v97;
    v106 = v36;
    v107 = v96;
    v58 = v94;
    v59 = v90;
    __RKEntityActionSpecification.encode(to:at:)(&v104, v56);
    v99 = v60;
    v90 = v59;
    v22 = v45;
    if (v59)
    {

      return v22;
    }

    v61 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1C1898160;
    *(v62 + 32) = [v99 path];
    v63 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000);
    v64 = v22;
    v65 = [v22 newPropertyWithName:v63 type:v40 role:0];

    if (v65)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

      v66 = v65;
      v67 = Array._bridgeToObjectiveC()().super.isa;
      [v66 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v68 = v61 + v57;
      v69 = v92;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v68, v92, type metadata accessor for __RKEntityActionSpecification);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v70 = *(v69 + 16);
      }

      else
      {
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v69, type metadata accessor for __RKEntityActionSpecification);
        v70 = 0;
      }

      v80 = *MEMORY[0x1E69DED90];
      v81 = MEMORY[0x1C68F3280](0x766973756C637865, 0xE900000000000065);
      v82 = [v64 newPropertyWithName:v81 type:v80 role:0];

      v83 = v95;
      if (v82)
      {
        v84 = v82;
        [v84 setBoolValue_];

        return v64;
      }

      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v85 = xmmword_1C18D1620;
      *(v85 + 16) = v80;
      *(v85 + 24) = 0;
      *(v85 + 32) = v64;
      swift_willThrow();
      v86 = v80;

      v79 = v99;
    }

    else
    {
      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v76 = xmmword_1C18D1630;
      *(v76 + 16) = v40;
      *(v76 + 24) = 0;
      *(v76 + 32) = v64;
      swift_willThrow();
      v77 = v64;
      v78 = v40;

      v79 = v95;
    }

    return v64;
  }

  v23 = *v16;
  v108 = MEMORY[0x1E69E7CC0];
  v102 = 0;
  v103 = 0;
  v101 = v23;
  v99 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()(v8);
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v8, v11, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
    if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
    {
      break;
    }

    v25 = *v11;
    _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v11 + *(v24 + 48), v13, type metadata accessor for __RKEntityTriggerSpecification);
    v26 = v22;
    v27 = [v22 path];
    v104 = 0x5F72656767697254;
    v105 = 0xE800000000000000;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v28 = v27;
    v100 = v25 + 1;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v29);

    USKObjectPath.appendingPathComponent(_:)(v104, v105);
    v31 = v30;

    v104 = v98;
    v105 = v97;
    v106 = v95;
    v107 = v96;
    __RKEntityTriggerSpecification.encode(to:at:)(&v104, v31);
    if (v2)
    {
      v22 = v26;

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v13, type metadata accessor for __RKEntityTriggerSpecification);

      return v22;
    }

    MEMORY[0x1C68F3650]();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v13, type metadata accessor for __RKEntityTriggerSpecification);
    v99 = v108;
    v22 = v26;
  }

  v25 = MEMORY[0x1E69DEE08];
  v104 = MEMORY[0x1E69E7CC0];
  v11 = v99;
  v89 = v22;
  v90 = v2;
  v8 = (v99 & 0xFFFFFFFFFFFFFF8);
  if (!(v99 >> 62))
  {
    v38 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_49:
  v38 = __CocoaSet.count.getter();
LABEL_15:
  v39 = 0;
  v40 = *v25;
  v41 = v11 & 0xC000000000000001;
  while (v38 != v39)
  {
    if (v41)
    {
      v42 = MEMORY[0x1C68F41F0](v39, v11);
    }

    else
    {
      if (v39 >= *(v8 + 2))
      {
        goto LABEL_48;
      }

      v42 = *(v11 + 8 * v39 + 32);
    }

    v11 = v42;
    v25 = (v39 + 1);
    if (__OFADD__(v39, 1))
    {
      goto LABEL_47;
    }

    v43 = [v42 path];

    v39 = (v39 + 1);
    v11 = v99;
    if (v43)
    {
      MEMORY[0x1C68F3650]();
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v39 = v25;
    }
  }

  v44 = MEMORY[0x1C68F3280](0x7372656767697274, 0xE800000000000000);
  v45 = v89;
  v46 = [v89 newPropertyWithName:v44 type:v40 role:0];

  if (v46)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v47 = v46;
    v48 = Array._bridgeToObjectiveC()().super.isa;
    [v47 setObjectPathArray_];
    swift_bridgeObjectRelease_n();

    v36 = v95;
    goto LABEL_31;
  }

  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
  swift_allocError();
  *v71 = xmmword_1C18D1610;
  *(v71 + 16) = v40;
  *(v71 + 24) = 0;
  *(v71 + 32) = v45;
  swift_willThrow();
  v72 = v40;

  return v45;
}

void __RKEntityTriggerSpecification.encode(to:at:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v177 = type metadata accessor for UUID();
  v174 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v168 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v169 = &v165 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v165 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v170 = &v165 - v12;
  v13 = type metadata accessor for __RKEntityTriggerSpecification(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v171 = a1[3];
  v19 = v18;
  v20 = MEMORY[0x1C68F3280](0xD000000000000013, 0x80000001C18EF7E0);
  v176 = [v19 newNodeAtPath:a2 type:v20];
  if (!v176)
  {
    lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
    swift_allocError();
    *v29 = a2;
    v29[1] = v20;
    swift_willThrow();
    v30 = a2;

    return;
  }

  v172 = v19;

  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v3, v15, type metadata accessor for __RKEntityTriggerSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v68 = *v15;
        v67 = v15[1];
        v69 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
        v70 = objc_allocWithZone(MEMORY[0x1E69DED68]);
        v71 = MEMORY[0x1C68F3280](0xD000000000000014, 0x80000001C18EF860);
        v72 = [v70 initWithString_];

        if (v72)
        {
          v73 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

          v74 = v176;
          [v176 setMetadataWithKey:v69 value:v73];

          v75 = v173;
          setInfoId(_:on:)(0x6163696669746F4ELL, 0xEC0000006E6F6974, v74);
          v76 = v172;
          if (v75)
          {

            return;
          }

          v89 = *MEMORY[0x1E69DEE20];
          v90 = MEMORY[0x1C68F3280](0x696669746E656469, 0xEA00000000007265);
          v91 = [v74 newPropertyWithName:v90 type:v89 role:0];

          if (v91)
          {

            v92 = v91;
            v93 = MEMORY[0x1C68F3280](v68, v67);
            [v92 setStringValue_];
            swift_bridgeObjectRelease_n();

            return;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v136 = xmmword_1C18D1650;
          *(v136 + 16) = v89;
          *(v136 + 24) = 0;
          *(v136 + 32) = v74;
          swift_willThrow();
          v137 = v74;
          v138 = v89;

          goto LABEL_57;
        }

        __break(1u);
        goto LABEL_75;
      }

      if (EnumCaseMultiPayload == 12)
      {
        v22 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
        v23 = objc_allocWithZone(MEMORY[0x1E69DED68]);
        v24 = MEMORY[0x1C68F3280](0xD000000000000017, 0x80000001C18EF820);
        v25 = [v23 initWithString_];

        if (v25)
        {
          v26 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

          v27 = v176;
          [v176 setMetadataWithKey:v22 value:v26];

          v28 = v173;
          setInfoId(_:on:)(0x617254656E656353, 0xEF6E6F697469736ELL, v27);
          if (v28)
          {

            return;
          }

          v94 = *MEMORY[0x1E69DEE28];
          v95 = objc_allocWithZone(MEMORY[0x1E69DED80]);
          v96 = MEMORY[0x1C68F3280](0x7265746E65, 0xE500000000000000);
          v97 = [v95 initWithString_];

          v98 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
          v99 = [v27 newPropertyWithName:v98 type:v94 role:0];

          if (v99)
          {
            v100 = v172;
            if (v97)
            {
              v101 = v97;
              v102 = v99;
              [v102 setTokenValue_];
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v149 = 0u;
              *(v149 + 16) = 0u;
              *(v149 + 32) = 0;
              swift_willThrow();
            }

            return;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v139 = xmmword_1C18D1640;
          *(v139 + 16) = v94;
          *(v139 + 24) = 0;
          *(v139 + 32) = v27;
          swift_willThrow();
          v140 = v27;
          v141 = v94;

LABEL_57:
          return;
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_30:
      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v86 = 1;
      swift_willThrow();

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v15, type metadata accessor for __RKEntityTriggerSpecification);
      return;
    }

    v52 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR) + 48));

    v53 = v174;
    v54 = v170;
    v55 = v177;
    (*(v174 + 32))(v170, v15, v177);
    v180 = v16;
    v181 = v17;
    v57 = v171;
    v56 = v172;
    v182 = v172;
    v183 = v171;
    v58 = __USDExportContext.pathTo(_:)(v54);
    if (!v58)
    {

      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();

      (*(v53 + 8))(v54, v55);
      return;
    }

    v59 = v58;
    v167 = v52;
    v60 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
    v61 = objc_allocWithZone(MEMORY[0x1E69DED68]);
    v62 = MEMORY[0x1C68F3280](0x6564696C6C6F432FLL, 0xEF72656767697254);
    v63 = [v61 initWithString_];

    v64 = v176;
    if (!v63)
    {
      goto LABEL_76;
    }

    v65 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

    [v64 setMetadataWithKey:v60 value:v65];
    v66 = v173;
    setInfoId(_:on:)(0x6564696C6C6F43, 0xE700000000000000, v64);
    if (v66)
    {

LABEL_21:

      (*(v174 + 8))(v54, v177);
      return;
    }

    v103 = *MEMORY[0x1E69DEE08];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1C1898160;
    *(v104 + 32) = v59;
    v166 = v59;
    v105 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
    v106 = [v64 newPropertyWithName:v105 type:v103 role:0];

    if (!v106)
    {

      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v144 = xmmword_1C18D1670;
      *(v144 + 16) = v103;
      *(v144 + 24) = 0;
      *(v144 + 32) = v64;
      swift_willThrow();
      v145 = v103;

      goto LABEL_21;
    }

    v165 = v103;
    v107 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v108 = v106;
    v173 = v107;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v108 setObjectPathArray_];
    swift_bridgeObjectRelease_n();

    v179 = MEMORY[0x1E69E7CC0];
    v110 = *(v167 + 16);
    if (v110)
    {
      v111 = v174;
      v112 = v167 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
      swift_beginAccess();
      v114 = *(v111 + 16);
      v113 = v111 + 16;
      v169 = v114;
      v115 = *(v113 + 56);
      v168 = MEMORY[0x1E69E7CC0];
      v116 = v175;
      (v114)(v175, v112, v177);
      while (1)
      {
        v118 = v116;
        v119 = *(v57 + 16);
        if (*(v119 + 16) && (v120 = specialized __RawDictionaryStorage.find<A>(_:)(v118), (v121 & 1) != 0))
        {
          v122 = *(*(v119 + 56) + 8 * v120);
          v123 = v122;
        }

        else
        {
          v122 = 0;
        }

        v178[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13USKObjectPathCSgMd, &_sSo13USKObjectPathCSgMR);
        v178[0] = v122;
        v116 = v175;
        v117 = v177;
        (*(v113 - 8))(v175, v177);
        outlined init with copy of Any(v178, &v180);
        outlined destroy of __USKObjectPathWrapper(v178);
        if (swift_dynamicCast())
        {
          MEMORY[0x1C68F3650]();
          if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v168 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v168 = v179;
          v117 = v177;
          v116 = v175;
        }

        v112 += v115;
        if (!--v110)
        {
          break;
        }

        (v169)(v116, v112, v117);
      }

      v64 = v176;
      v56 = v172;
      v54 = v170;
      v142 = v166;
      v143 = v168;
    }

    else
    {

      v143 = MEMORY[0x1E69E7CC0];
      v117 = v177;
      v142 = v166;
    }

    v153 = v174;
    v154 = v165;
    if (v143 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_66;
      }
    }

    else if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_66:
      v155 = MEMORY[0x1C68F3280](0x726564696C6C6F63, 0xE900000000000073);
      v156 = [v64 newPropertyWithName:v155 type:v154 role:0];

      if (v156)
      {

        v157 = v156;
        v158 = Array._bridgeToObjectiveC()().super.isa;
        [v157 setObjectPathArray_];

        swift_bridgeObjectRelease_n();
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v162 = xmmword_1C18D1660;
        *(v162 + 16) = v154;
        *(v162 + 24) = 0;
        *(v162 + 32) = v64;
        swift_willThrow();
        v163 = v154;
      }

      (*(v153 + 8))(v54, v177);
      return;
    }

    lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
    swift_allocError();
    *v164 = 0;
    swift_willThrow();

    (*(v153 + 8))(v54, v117);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    v31 = v174;
    v32 = v177;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_30;
    }

    v33 = v168;
    (*(v174 + 32))(v168, v15, v177);
    v180 = v16;
    v181 = v17;
    v34 = v172;
    v182 = v172;
    v183 = v171;
    v35 = v33;
    v36 = __USDExportContext.pathTo(_:)(v33);
    if (v36)
    {
      v37 = v36;
      v38 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
      v39 = objc_allocWithZone(MEMORY[0x1E69DED68]);
      v40 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF800);
      v41 = [v39 initWithString_];

      v42 = v176;
      if (!v41)
      {
LABEL_78:
        __break(1u);
        return;
      }

      v43 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

      [v42 setMetadataWithKey:v38 value:v43];
      v44 = v173;
      setInfoId(_:on:)(0x7574736547706154, 0xEA00000000006572, v42);
      if (!v44)
      {
        v45 = *MEMORY[0x1E69DEE08];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1C1898160;
        *(v46 + 32) = v37;
        v47 = v37;
        v48 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
        v49 = [v42 newPropertyWithName:v48 type:v45 role:0];

        if (v49)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

          v50 = v49;
          v51 = Array._bridgeToObjectiveC()().super.isa;
          [v50 setObjectPathArray_];

          swift_bridgeObjectRelease_n();
        }

        else
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v150 = xmmword_1C18D1670;
          *(v150 + 16) = v45;
          *(v150 + 24) = 0;
          *(v150 + 32) = v42;
          swift_willThrow();
          v151 = v42;
          v152 = v45;
        }

        goto LABEL_29;
      }

LABEL_28:

LABEL_29:
      (*(v31 + 8))(v35, v177);
      return;
    }

LABEL_31:
    lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
    swift_allocError();
    *v87 = 0;
    swift_willThrow();

    (*(v31 + 8))(v35, v32);
    return;
  }

  v77 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR) + 48));
  v31 = v174;
  v78 = v169;
  v32 = v177;
  (*(v174 + 32))(v169, v15, v177);
  v180 = v16;
  v181 = v17;
  v34 = v172;
  v182 = v172;
  v183 = v171;
  v35 = v78;
  v79 = __USDExportContext.pathTo(_:)(v78);
  if (!v79)
  {
    goto LABEL_31;
  }

  v37 = v79;
  v80 = MEMORY[0x1C68F3280](0x7374697265686E69, 0xED00007368746150);
  v81 = objc_allocWithZone(MEMORY[0x1E69DED68]);
  v82 = MEMORY[0x1C68F3280](0xD000000000000019, 0x80000001C18EF840);
  v83 = [v81 initWithString_];

  v42 = v176;
  if (!v83)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v84 = [objc_allocWithZone(MEMORY[0x1E69DED58]) initWithObjectPath_];

  [v42 setMetadataWithKey:v80 value:v84];
  v85 = v173;
  setInfoId(_:on:)(0xD000000000000011, 0x80000001C18DCF10, v42);
  if (v85)
  {
    goto LABEL_28;
  }

  v124 = *MEMORY[0x1E69DEE08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1C1898160;
  *(v125 + 32) = v37;
  v126 = v37;
  v127 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
  v128 = [v42 newPropertyWithName:v127 type:v124 role:0];

  if (v128)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);

    v129 = v128;
    v130 = Array._bridgeToObjectiveC()().super.isa;
    [v129 setObjectPathArray_];
    swift_bridgeObjectRelease_n();

    v131 = *MEMORY[0x1E69DED98];
    v132 = MEMORY[0x1C68F3280](0x65636E6174736964, 0xE800000000000000);
    v133 = [v42 newPropertyWithName:v132 type:v131 role:0];

    v134 = v172;
    if (v133)
    {
      v135 = v133;
      [v135 setDoubleValue_];
    }

    else
    {
      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      *v159 = xmmword_1C18D1680;
      *(v159 + 16) = v131;
      *(v159 + 24) = 0;
      *(v159 + 32) = v42;
      swift_willThrow();
      v160 = v42;
      v161 = v131;
    }

    (*(v174 + 8))(v35, v177);
  }

  else
  {
    lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
    swift_allocError();
    *v146 = xmmword_1C18D1670;
    *(v146 + 16) = v124;
    *(v146 + 24) = 0;
    *(v146 + 32) = v42;
    swift_willThrow();
    v147 = v42;
    v148 = v124;

    (*(v174 + 8))(v35, v177);
  }
}

void __RKEntityActionSpecification.encode(to:at:)(double *a1, uint64_t a2)
{
  *&v915 = a2;
  v883 = type metadata accessor for __RKEntityHideActionArguments(0);
  MEMORY[0x1EEE9AC00](v883);
  v904 = &v876 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v882 = type metadata accessor for __RKEntityShowActionArguments(0);
  MEMORY[0x1EEE9AC00](v882);
  v903 = &v876 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v877 = &v876 - v6;
  v881 = type metadata accessor for __RKEntityTransformActionArguments(0);
  MEMORY[0x1EEE9AC00](v881);
  v905 = (&v876 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](started);
  v894 = &v876 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v911 = (&v876 - v10);
  v884 = type metadata accessor for __RKEntitySpinActionArguments(0);
  MEMORY[0x1EEE9AC00](v884);
  v906 = &v876 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v887 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v887);
  v908 = &v876 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v880 = type metadata accessor for __RKEntityCustomActionArguments(0);
  MEMORY[0x1EEE9AC00](v880);
  v901 = &v876 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v886 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  MEMORY[0x1EEE9AC00](v886);
  v902 = &v876 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v879 = type metadata accessor for __RKEntityForceActionArguments(0);
  MEMORY[0x1EEE9AC00](v879);
  v900 = &v876 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
  v878 = *(v891 - 8);
  MEMORY[0x1EEE9AC00](v891);
  v888 = (&v876 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v890 = &v876 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v889 = (&v876 - v20);
  v885 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  MEMORY[0x1EEE9AC00](v885);
  v907 = &v876 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for __RKChangeSceneActionArguments(0);
  MEMORY[0x1EEE9AC00](v22);
  v896 = &v876 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v909 = type metadata accessor for UUID();
  v897 = *(v909 - 1);
  MEMORY[0x1EEE9AC00](v909);
  v876 = &v876 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v876 - v26;
  v899 = type metadata accessor for __RKEntityAudioActionArguments(0);
  MEMORY[0x1EEE9AC00](v899);
  v893 = &v876 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v912 = &v876 - v30;
  v31 = type metadata accessor for __RKEntityActionSpecification(0);
  v895 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v876 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v876 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v892 = &v876 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v876 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v876 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v876 - v46;
  v48 = a1[1];
  v910.f64[0] = *a1;
  v910.f64[1] = v48;
  v49 = *(a1 + 2);
  v50 = a1[3];
  v914 = v49;
  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(*&v916.f64[0], &v876 - v46, type metadata accessor for __RKEntityActionSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v51 = v912;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v47, v912, type metadata accessor for __RKEntityAudioActionArguments);
      v52 = v899;
      v53 = v51[v899[8]];
      if (v53 != 2 && (v53 & 1) != 0)
      {
        (*(v897 + 16))(v27, v51, v909);
        v54 = v52[6];
        v55 = v51[v54];
        if (v55 == 3)
        {
          goto LABEL_495;
        }

        if (v51[v52[9]] != 3)
        {
          v56 = &v51[v52[7]];
          if (v56[8])
          {
            goto LABEL_497;
          }

          LODWORD(v908) = v51[v52[9]];
          LODWORD(v911) = v55;
          v916.f64[0] = v50;
          LODWORD(v907) = v51[v52[10]];
          if (v907 != 3)
          {
            v57 = &v51[v52[5]];
            v59 = *v57;
            v58 = v57[1];
            v906 = v59;
            v905 = v58;
            v904 = *v56;
            v60 = v893;
            *(v893 + v54) = 3;
            v61 = v52[7];
            v903 = v52[8];
            v62 = v60 + v61;
            v63 = v52[9];
            *(v60 + v63) = 3;
            (*(v897 + 32))(v60, v27, v909);
            v64 = (v60 + v52[5]);
            v65 = v905;
            *v64 = v906;
            v64[1] = v65;
            *(v60 + v54) = v911;
            *(v60 + v63) = v908;
            *v62 = v904;
            *(v62 + 8) = 0;
            v903[v60] = 0;
            *(v60 + v52[10]) = v907;
            _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v60, v44, type metadata accessor for __RKEntityAudioActionArguments);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
            v66 = (*(v895 + 80) + 32) & ~*(v895 + 80);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1C1887600;
            _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v44, v67 + v66, type metadata accessor for __RKEntityActionSpecification);
            *v41 = 0;
            *(v41 + 1) = v67;
            v41[16] = 0;
            *(v41 + 3) = 0;
            *(v41 + 16) = 0;
            swift_storeEnumTagMultiPayload();
            v68 = v914;

            v69 = v913;
            makeParentNode #1 (from:baseName:) in __RKEntityActionSpecification.encode(to:at:)(v915, 0x756F7247706F6F4CLL, 0xE900000000000070, v68);
            if (v69)
            {

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v41, type metadata accessor for __RKEntityActionSpecification);
              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v44, type metadata accessor for __RKEntityActionSpecification);
              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v60, type metadata accessor for __RKEntityAudioActionArguments);
              v239 = v912;
              v240 = type metadata accessor for __RKEntityAudioActionArguments;
              goto LABEL_176;
            }

            v238 = v70;
            v920 = v910;
            *&v921 = v68;
            *(&v921 + 1) = *&v916.f64[0];
            __RKEntityActionSpecification.encode(to:at:)(v920.f64, v70);

            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v41, type metadata accessor for __RKEntityActionSpecification);
            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v44, type metadata accessor for __RKEntityActionSpecification);
            v451 = type metadata accessor for __RKEntityAudioActionArguments;
            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v893, type metadata accessor for __RKEntityAudioActionArguments);
            v452 = &v928;
LABEL_206:
            _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(*(v452 - 32), v451);
            return;
          }

          goto LABEL_498;
        }

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
        return;
      }

      v191 = v914;
      v192 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v193 = v915;
      v194 = [v191 newNodeAtPath:v915 type:v192];
      if (!v194)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v230 = v193;
        v230[1] = v192;
        swift_willThrow();
        v231 = v193;

        v232 = type metadata accessor for __RKEntityAudioActionArguments;
        goto LABEL_94;
      }

      v195 = v194;

      v196 = v195;
      v197 = v913;
      setInfoId(_:on:)(0x6F69647541, 0xE500000000000000, v196);
      if (v197)
      {

LABEL_105:
        v240 = type metadata accessor for __RKEntityAudioActionArguments;
        v239 = v912;
        goto LABEL_176;
      }

      setInherits(from:on:)(0x63416F696475412FLL, 0xEC0000006E6F6974, v196);
      v920 = v910;
      *&v921 = v191;
      *(&v921 + 1) = v50;
      v139 = v912;
      v453 = __USDExportContext.pathTo(_:)(v912);
      if (!v453)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v497 = 0;
        swift_willThrow();

        v233 = type metadata accessor for __RKEntityAudioActionArguments;
LABEL_90:
        v240 = v233;
        v239 = v139;
        goto LABEL_176;
      }

      v454 = v453;
      v916.f64[0] = v50;
      v913 = 0;
      v455 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v456 = swift_allocObject();
      *(v456 + 16) = xmmword_1C1898160;
      *(v456 + 32) = v454;
      v457 = v454;
      v458 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v459 = v196;
      v460 = [v196 newPropertyWithName:v458 type:v455 role:0];

      if (!v460)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v530 = xmmword_1C18D1670;
        *(v530 + 16) = v455;
        *(v530 + 24) = 0;
        *(v530 + 32) = v195;
        swift_willThrow();
        v531 = v459;
LABEL_232:
        v532 = v531;
        v533 = v455;

        goto LABEL_105;
      }

      v914 = v459;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v461 = v460;

      isa = Array._bridgeToObjectiveC()().super.isa;
      [v461 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v920 = v910;
      *&v921 = v191;
      *(&v921 + 1) = *&v916.f64[0];
      v463 = v912;
      v464 = &v912[v899[5]];
      countAndFlagsBits = *v464;
      v466 = v464[1];
      v467._countAndFlagsBits = *v464;
      v467._object = v466;
      v468 = __USDEncoder.resolveResourcePath(path:)(v467);
      v913 = v469;
      if (v469)
      {

        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v463, type metadata accessor for __RKEntityAudioActionArguments);
        return;
      }

      object = v468.value._object;
      if (v468.value._object)
      {
        countAndFlagsBits = v468.value._countAndFlagsBits;
      }

      else
      {

        object = v466;
      }

      v455 = *MEMORY[0x1E69DEE18];
      v691 = MEMORY[0x1C68F3280](0x6F69647561, 0xE500000000000000);
      v692 = [v914 newPropertyWithName:v691 type:v455 role:0];

      if (!v692)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v699 = xmmword_1C18D17D0;
        *(v699 + 16) = v455;
        *(v699 + 24) = 0;
        *(v699 + 32) = v195;
        swift_willThrow();
        v531 = v914;
        goto LABEL_232;
      }

      v693 = v692;

      v694 = MEMORY[0x1C68F3280](countAndFlagsBits, object);
      [v693 setResourcePath_];
      swift_bridgeObjectRelease_n();

      v695 = *MEMORY[0x1E69DEE28];
      v696 = v912[v899[6]];
      if (v696 <= 1)
      {
        if (v912[v899[6]])
        {
          v697 = 0xE500000000000000;
          v698 = 0x6573756170;
        }

        else
        {
          v697 = 0xE400000000000000;
          v698 = 2036427888;
        }

        goto LABEL_370;
      }

      if (v696 == 2)
      {
        v697 = 0xE400000000000000;
        v698 = 1886352499;
LABEL_370:
        v736 = objc_allocWithZone(MEMORY[0x1E69DED80]);
        v737 = MEMORY[0x1C68F3280](v698, v697);

        v738 = [v736 initWithString_];

        goto LABEL_372;
      }

      v738 = 0;
LABEL_372:
      v739 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v740 = [v914 newPropertyWithName:v739 type:v695 role:0];

      if (!v740)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v751 = xmmword_1C18D1640;
        *(v751 + 16) = v695;
        *(v751 + 24) = 0;
        *(v751 + 32) = v195;
        swift_willThrow();
        v752 = v914;
        v753 = v695;

LABEL_382:
        v191 = v738;
        goto LABEL_105;
      }

      if (!v738)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v754 = 0u;
        *(v754 + 16) = 0u;
        *(v754 + 32) = 0;
        swift_willThrow();

LABEL_384:
        goto LABEL_105;
      }

      v741 = v738;
      [v740 setTokenValue_];

      v743 = &v912[v899[7]];
      v744 = 1.0;
      if ((v743[8] & 1) == 0)
      {
        v742.n128_u64[0] = *v743;
        v744 = 0.0;
        if (*v743 >= 0.0)
        {
          v744 = *v743;
        }
      }

      v745 = *MEMORY[0x1E69DED98];
      v746 = MEMORY[0x1C68F3280](1852399975, 0xE400000000000000, v742);
      v747 = [v914 newPropertyWithName:v746 type:v745 role:0];

      if (!v747)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v763 = xmmword_1C18D17C0;
        *(v763 + 16) = v745;
        *(v763 + 24) = 0;
        *(v763 + 32) = v195;
        swift_willThrow();
        v764 = v914;
        v765 = v745;

        goto LABEL_105;
      }

      *&v916.f64[0] = v457;
      [v747 setDoubleValue_];

      v748 = v912[v899[9]];
      if (v748 <= 1)
      {
        v749 = 0xE700000000000000;
        if (v912[v899[9]])
        {
          v750 = 0x746E6569626D61;
        }

        else
        {
          v750 = 0x6C616974617073;
        }

        goto LABEL_426;
      }

      if (v748 == 2)
      {
        v749 = 0xEA00000000006C61;
        v750 = 0x69746170536E6F6ELL;
LABEL_426:
        v791 = objc_allocWithZone(MEMORY[0x1E69DED80]);
        v792 = MEMORY[0x1C68F3280](v750, v749);

        v738 = [v791 initWithString_];

        goto LABEL_428;
      }

      v738 = 0;
LABEL_428:
      v793 = MEMORY[0x1C68F3280](0x646F4D6C61727561, 0xE900000000000065);
      v794 = [v914 newPropertyWithName:v793 type:v695 role:0];

      if (!v794)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v799 = xmmword_1C18D17B0;
        *(v799 + 16) = v695;
        *(v799 + 24) = 0;
        *(v799 + 32) = v195;
        swift_willThrow();
        v752 = v914;
        v800 = v695;

        goto LABEL_382;
      }

      if (!v738)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v801 = 0u;
        *(v801 + 16) = 0u;
        *(v801 + 32) = 0;
        swift_willThrow();

        goto LABEL_384;
      }

      v795 = v738;
      [v794 &selRef:v795 newComputePipelineStateWithDescriptor:? options:? completionHandler:? + 6];

      v796 = v912[v899[10]];
      if (v796 > 1)
      {
        if (v796 != 2)
        {
          v850 = 0;
          goto LABEL_470;
        }

        v798 = 0xE400000000000000;
        v797 = 1886352499;
      }

      else if (v912[v899[10]])
      {
        v798 = 0xE600000000000000;
        v797 = 0x65726F6E6769;
      }

      else
      {
        v797 = 0x776F6C6C61;
        v798 = 0xE500000000000000;
      }

      v848 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v849 = MEMORY[0x1C68F3280](v797, v798);

      v850 = [v848 initWithString_];

LABEL_470:
      v851 = MEMORY[0x1C68F3280](0xD000000000000018, 0x80000001C18DEA50);
      v852 = [v914 newPropertyWithName:v851 type:v695 role:0];

      if (v852)
      {
        if (v850)
        {
          v853 = v852;
          v854 = v850;
          [v853 &selRef:v854 newComputePipelineStateWithDescriptor:? options:? completionHandler:? + 6];

          v240 = type metadata accessor for __RKEntityAudioActionArguments;
          v239 = v912;
          goto LABEL_176;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v859 = 0u;
        *(v859 + 16) = 0u;
        *(v859 + 32) = 0;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v855 = 0xD000000000000018;
        v855[1] = 0x80000001C18DEA50;
        v855[2] = v695;
        v855[3] = 0;
        v855[4] = v195;
        swift_willThrow();
        v856 = v914;
        v857 = v695;

        v191 = v850;
      }

      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v912, type metadata accessor for __RKEntityAudioActionArguments);
      return;
    case 1u:
      v139 = v896;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v47, v896, type metadata accessor for __RKChangeSceneActionArguments);
      v140 = v914;
      v141 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v142 = v915;
      v143 = [v140 newNodeAtPath:v915 type:v141];
      if (v143)
      {
        v144 = v143;

        v145 = v144;
        v146 = v913;
        setInfoId(_:on:)(0x635365676E616843, 0xEB00000000656E65, v145);
        if (!v146)
        {

          setInherits(from:on:)(0xD000000000000012, 0x80000001C18EF7C0, v145);
          v920 = v910;
          *&v921 = v140;
          *(&v921 + 1) = v50;
          v394 = __USDExportContext.pathTo(_:)(&v139[*(v22 + 20)]);
          if (v394)
          {
            v395 = *MEMORY[0x1E69DEE00];
            v396 = v394;
            v397 = MEMORY[0x1C68F3280](0x656E656373, 0xE500000000000000);
            v398 = [v145 newPropertyWithName:v397 type:v395 role:0];

            if (!v398)
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v517 = xmmword_1C18D17A0;
              *(v517 + 16) = v395;
              *(v517 + 24) = 0;
              *(v517 + 32) = v144;
              swift_willThrow();
              v518 = v145;
              v519 = v395;

              goto LABEL_89;
            }

            v399 = v396;
            v400 = v398;
            [v400 setObjectPath_];
          }

          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v139, type metadata accessor for __RKChangeSceneActionArguments);
          return;
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v222 = v142;
        v222[1] = v141;
        swift_willThrow();
        v223 = v142;
      }

LABEL_89:

      v233 = type metadata accessor for __RKChangeSceneActionArguments;
      goto LABEL_90;
    case 2u:
      v129 = v47;
      v47 = v901;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v129, v901, type metadata accessor for __RKEntityCustomActionArguments);
      v130 = v914;
      v131 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v132 = v915;
      v133 = [v130 newNodeAtPath:v915 type:v131];
      if (v133)
      {
        v134 = v133;
        v135 = v50;

        v136 = v134;
        v137 = v913;
        setInfoId(_:on:)(0x6163696669746F4ELL, 0xEC0000006E6F6974, v136);
        if (v137)
        {

          v138 = type metadata accessor for __RKEntityCustomActionArguments;
          goto LABEL_98;
        }

        setInherits(from:on:)(0xD000000000000013, 0x80000001C18EF760, v136);
        v920 = v910;
        *&v921 = v130;
        *(&v921 + 1) = v135;
        v375 = __USDExportContext.pathTo(_:)(v47);
        if (v375)
        {
          v376 = v375;
          v377 = *MEMORY[0x1E69DEE08];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v378 = swift_allocObject();
          *(v378 + 16) = xmmword_1C1898160;
          *(v378 + 32) = v376;
          v379 = v376;
          v380 = v136;
          v381 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
          v382 = [v136 newPropertyWithName:v381 type:v377 role:0];

          if (!v382)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v514 = xmmword_1C18D1670;
            *(v514 + 16) = v377;
            *(v514 + 24) = 0;
            *(v514 + 32) = v134;
            swift_willThrow();
            v515 = v380;
            v516 = v377;

            v240 = type metadata accessor for __RKEntityCustomActionArguments;
            v239 = v901;
            goto LABEL_176;
          }

          *&v916.f64[0] = v379;
          v913 = 0;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
          v383 = v382;

          v384 = Array._bridgeToObjectiveC()().super.isa;
          [v383 setObjectPathArray_];
          swift_bridgeObjectRelease_n();

          v385 = *MEMORY[0x1E69DEE20];
          v139 = v901;
          v386 = &v901[*(v880 + 20)];
          v388 = *v386;
          v387 = *(v386 + 1);
          v389 = MEMORY[0x1C68F3280](0x696669746E656469, 0xEA00000000007265);
          v914 = v380;
          v390 = [v380 newPropertyWithName:v389 type:v385 role:0];

          if (!v390)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v548 = xmmword_1C18D1650;
            *(v548 + 16) = v385;
            *(v548 + 24) = 0;
            *(v548 + 32) = v134;
            swift_willThrow();
            v549 = v385;

            v233 = type metadata accessor for __RKEntityCustomActionArguments;
            goto LABEL_90;
          }

          v391 = v390;

          v392 = MEMORY[0x1C68F3280](v388, v387);
          [v391 setStringValue_];

          v393 = type metadata accessor for __RKEntityCustomActionArguments;
LABEL_175:
          v240 = v393;
          v239 = v139;
          goto LABEL_176;
        }

        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v493 = 0;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v220 = v132;
        v220[1] = v131;
        swift_willThrow();
        v221 = v132;
      }

      v138 = type metadata accessor for __RKEntityCustomActionArguments;
      goto LABEL_98;
    case 3u:
      v120 = v47;
      v47 = v907;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v120, v907, type metadata accessor for __RKEntityEmphasisActionArguments);
      v121 = v914;
      v122 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v123 = v915;
      v124 = [v121 newNodeAtPath:v915 type:v122];
      if (!v124)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v218 = v123;
        v218[1] = v122;
        swift_willThrow();
        v219 = v123;
LABEL_85:

        v138 = type metadata accessor for __RKEntityEmphasisActionArguments;
        goto LABEL_98;
      }

      v125 = v124;
      v126 = v50;

      v127 = v125;
      v128 = v913;
      setInfoId(_:on:)(0x7A69736168706D45, 0xE900000000000065, v127);
      if (v128)
      {

LABEL_84:
        goto LABEL_85;
      }

      setInherits(from:on:)(0xD000000000000010, 0x80000001C18EF7A0, v127);
      v920 = v910;
      *&v921 = v121;
      *(&v921 + 1) = v126;
      v358 = __USDExportContext.pathTo(_:)(v47);
      if (!v358)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v492 = 0;
        swift_willThrow();
        goto LABEL_84;
      }

      v359 = v358;
      v360 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v361 = swift_allocObject();
      *(v361 + 16) = xmmword_1C1898160;
      *(v361 + 32) = v359;
      v362 = v359;
      v363 = v127;
      v364 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v365 = [v127 newPropertyWithName:v364 type:v360 role:0];

      if (!v365)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v511 = xmmword_1C18D1670;
        *(v511 + 16) = v360;
        *(v511 + 24) = 0;
        *(v511 + 32) = v125;
        swift_willThrow();
        v512 = v363;
        v513 = v360;

LABEL_242:

        v240 = type metadata accessor for __RKEntityEmphasisActionArguments;
        v239 = v907;
        goto LABEL_176;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v366 = v365;

      v367 = Array._bridgeToObjectiveC()().super.isa;
      [v366 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v368 = *MEMORY[0x1E69DED98];
      v369 = &v907[v885[5]];
      v370 = *v369;
      v371 = v369[4];
      v372 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v914 = v363;
      v373 = [v363 newPropertyWithName:v372 type:v368 role:0];

      if (!v373)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v546 = xmmword_1C18D16A0;
        *(v546 + 16) = v368;
        *(v546 + 24) = 0;
        *(v546 + 32) = v125;
        swift_willThrow();
        v547 = v368;
        goto LABEL_241;
      }

      if (v371)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v374 = 0u;
        *(v374 + 16) = 0u;
        *(v374 + 32) = 0;
        swift_willThrow();

        v362 = v373;
LABEL_241:

        goto LABEL_242;
      }

      [v373 setDoubleValue_];

      v588 = *MEMORY[0x1E69DEE28];
      v589 = v907[v885[7]];
      if (v589 > 1)
      {
        v590 = &selRef_localTransform;
        if (v589 != 2)
        {
          v704 = 0;
LABEL_332:
          v705 = MEMORY[0x1C68F3280](0x656C797473, 0xE500000000000000);
          v706 = [v914 v590[81]];

          if (v706)
          {
            v539 = v907;
            if (!v704)
            {
LABEL_352:
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v727 = 0u;
              *(v727 + 16) = 0u;
              *(v727 + 32) = 0;
              swift_willThrow();

LABEL_363:
              v540 = type metadata accessor for __RKEntityEmphasisActionArguments;
              goto LABEL_364;
            }

            v707 = v704;
            [v706 setTokenValue_];

            v708 = *(v539 + v885[8]);
            v913 = 0;
            if (v708 == 8)
            {
              v704 = 0;
            }

            else
            {
              LOBYTE(v920.f64[0]) = v708;
              v719 = __RKEntityEmphasisAnimationType.rawValue.getter();
              v721 = v720;
              v722 = objc_allocWithZone(MEMORY[0x1E69DED80]);
              v723 = MEMORY[0x1C68F3280](v719, v721);

              v704 = [v722 initWithString_];
            }

            v724 = MEMORY[0x1C68F3280](0x79546E6F69746F6DLL, 0xEA00000000006570);
            v706 = [v914 newPropertyWithName:v724 type:v588 role:0];

            if (v706)
            {
              v539 = v907;
              if (v704)
              {
                v725 = v706;
                v726 = v704;
                [v725 setTokenValue_];

                v240 = type metadata accessor for __RKEntityEmphasisActionArguments;
                v239 = v539;
                goto LABEL_176;
              }

              goto LABEL_352;
            }

            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v710 = xmmword_1C18D1750;
          }

          else
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v710 = xmmword_1C18D1760;
          }

          *v709 = v710;
          *(v709 + 16) = v588;
          *(v709 + 24) = 0;
          *(v709 + 32) = v125;
          swift_willThrow();
          v731 = v914;
          v732 = v588;

          v121 = v704;
          v539 = v907;
          goto LABEL_363;
        }

        v592 = 0xE400000000000000;
        v591 = 1684826487;
      }

      else
      {
        v590 = &selRef_localTransform;
        if (v907[v885[7]])
        {
          v592 = 0xE700000000000000;
          v591 = 0x6C756679616C70;
        }

        else
        {
          v591 = 0x6369736162;
          v592 = 0xE500000000000000;
        }
      }

      v702 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v703 = MEMORY[0x1C68F3280](v591, v592);

      v704 = [v702 initWithString_];

      goto LABEL_332;
    case 6u:
      v916.f64[0] = v50;
      v86 = *v47;
      v87 = *(v47 + 1);
      v88 = *(v47 + 3);
      v89 = v47[32];
      v90 = v914;
      v91 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v92 = v915;
      v93 = [v90 newNodeAtPath:v915 type:v91];
      if (!v93)
      {

        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v210 = v92;
        v210[1] = v91;
        swift_willThrow();
        v211 = v92;

        return;
      }

      v94 = v93;

      v95 = v94;
      v96 = v913;
      setInfoId(_:on:)(0x70756F7247, 0xE500000000000000, v95);
      if (v96)
      {

        return;
      }

      setInherits(from:on:)(0x634170756F72472FLL, 0xEC0000006E6F6974, v95);
      *&v915 = v87;
      v912 = v90;
      v913 = 0;
      v263 = *MEMORY[0x1E69DEE28];
      v264 = v86 == 0;
      if (v86)
      {
        v265 = 0x6C6169726573;
      }

      else
      {
        v265 = 0x6C656C6C61726170;
      }

      if (v264)
      {
        v266 = 0xE800000000000000;
      }

      else
      {
        v266 = 0xE600000000000000;
      }

      v267 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v268 = MEMORY[0x1C68F3280](v265, v266);

      v269 = [v267 initWithString_];

      v270 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v271 = [v95 newPropertyWithName:v270 type:v263 role:0];

      if (!v271)
      {

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v486 = xmmword_1C18D1640;
        *(v486 + 16) = v263;
        *(v486 + 24) = 0;
        *(v486 + 32) = v94;
        swift_willThrow();
        v487 = v95;
        v488 = v263;

        goto LABEL_293;
      }

      v914 = v95;
      if (!v269)
      {

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v501 = 0u;
        *(v501 + 16) = 0u;
        *(v501 + 32) = 0;
        swift_willThrow();

        goto LABEL_293;
      }

      v272 = v269;
      [v271 setTokenValue_];

      if (v89)
      {
        goto LABEL_500;
      }

      v106 = *MEMORY[0x1E69DED90];
      v273 = MEMORY[0x1C68F3280](0x73706F6F6CLL, 0xE500000000000000);
      v274 = [v914 newPropertyWithName:v273 type:v106 role:0];

      v275 = v913;
      v276 = v892;
      if (v274)
      {
        [v274 setBoolValue_];

        if (v88 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v88 <= 0x7FFFFFFF)
        {
          v106 = *MEMORY[0x1E69DEDF0];
          v277 = MEMORY[0x1C68F3280](0x436D726F66726570, 0xEC000000746E756FLL);
          v278 = [v914 newPropertyWithName:v277 type:v106 role:0];

          if (v278)
          {
            [v278 setIntValue_];

            v279 = 0;
            v908 = MEMORY[0x1E69E7CC0];
            v919[0] = MEMORY[0x1E69E7CC0];
            v911 = (v878 + 56);
            v909 = (v878 + 48);
            v280 = v914;
            while (1)
            {
              v281 = *(v915 + 16);
              v282 = v891;
              v283 = v890;
              v164 = v889;
              if (v279 == v281)
              {
                v913 = v279;
                v284 = 1;
              }

              else
              {
                if (v279 >= v281)
                {
                  __break(1u);
LABEL_490:
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v871 = *&v916.f64[0];
                  v871[1] = v275;
                  v872 = v915;
                  v871[2] = v915;
                  v871[3] = 0;
                  v871[4] = v89;
                  swift_willThrow();
                  v873 = v914;
                  v874 = v872;

                  v164 = v282;
LABEL_492:

                  (*(v897 + 8))(v876, v909);
LABEL_287:
                  v240 = type metadata accessor for __RKEntityTransformActionArguments;
                  v239 = v905;
                  goto LABEL_176;
                }

                v285 = v279 + 1;
                v286 = v915 + ((*(v895 + 80) + 32) & ~*(v895 + 80)) + *(v895 + 72) * v279;
                v287 = *(v891 + 48);
                v106 = v888;
                *v888 = v279;
                _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v286, v106 + v287, type metadata accessor for __RKEntityActionSpecification);
                outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v106, v283, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
                v284 = 0;
                v913 = v285;
              }

              (*v911)(v283, v284, 1, v282);
              outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v283, v164, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
              if ((*v909)(v164, 1, v282) == 1)
              {

                v641 = *MEMORY[0x1E69DEE08];
                specialized Sequence.compactMap<A>(_:)(v908);

                v642 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000);
                v643 = [v280 newPropertyWithName:v642 type:v641 role:0];

                if (v643)
                {
                  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
                  v644 = v643;

                  v645 = Array._bridgeToObjectiveC()().super.isa;
                  [v644 setObjectPathArray_];
                  swift_bridgeObjectRelease_n();

                  return;
                }

                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v711 = xmmword_1C18D1630;
                *(v711 + 16) = v641;
                *(v711 + 24) = 0;
                *(v711 + 32) = v94;
                swift_willThrow();
                v712 = v280;
                v713 = v641;

LABEL_293:

                return;
              }

              v288 = v275;
              v89 = *v164;
              _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v164 + v282[12], v276, type metadata accessor for __RKEntityActionSpecification);
              v289 = [v280 path];
              v920.f64[0] = 6.99371587e-307;
              v920.f64[1] = -1.39234638e188;
              if (__OFADD__(v89, 1))
              {
                __break(1u);
LABEL_483:
                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v866 = xmmword_1C18D1740;
                *(v866 + 16) = v282;
                *(v866 + 24) = 0;
                *(v866 + 32) = v94;
LABEL_238:
                swift_willThrow();
                v542 = v282;

LABEL_342:
                v240 = type metadata accessor for __RKEntityHideActionArguments;
                v239 = v904;
LABEL_176:
                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v239, v240);
                return;
              }

              v290 = v289;
              v917 = v89 + 1;
              v291 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1C68F3410](v291);

              v292 = v920;
              v293 = [v290 stringValue];
              if (v293)
              {
                v294 = v293;
                v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v297 = v296;
              }

              else
              {
                v295 = 0;
                v297 = 0xE000000000000000;
              }

              *&v920.f64[0] = v295;
              *&v920.f64[1] = v297;
              MEMORY[0x1C68F3410](47, 0xE100000000000000);
              MEMORY[0x1C68F3410](*&v292.f64[0], *&v292.f64[1]);
              v298 = v920;
              v299 = objc_allocWithZone(MEMORY[0x1E69DED68]);
              v300 = MEMORY[0x1C68F3280](*&v298.f64[0], *&v298.f64[1]);

              v301 = [v299 initWithString_];

              if (!v301)
              {
                goto LABEL_499;
              }

              v920 = v910;
              *&v921 = v912;
              *(&v921 + 1) = *&v916.f64[0];
              v276 = v892;
              __RKEntityActionSpecification.encode(to:at:)(v920.f64, v301);
              v106 = v288;
              v280 = v914;
              if (v288)
              {

                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v276, type metadata accessor for __RKEntityActionSpecification);

                return;
              }

              MEMORY[0x1C68F3650]();
              if (*((v919[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v919[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v89 = *((v919[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v908 = v919[0];

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v276, type metadata accessor for __RKEntityActionSpecification);
              v275 = 0;
              v279 = v913;
            }
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          v557 = xmmword_1C18D1780;
LABEL_292:
          *v556 = v557;
          *(v556 + 16) = v106;
          *(v556 + 24) = 0;
          *(v556 + 32) = v94;
          swift_willThrow();
          v640 = v106;
          goto LABEL_293;
        }

        __break(1u);
LABEL_495:
        __break(1u);
        goto LABEL_496;
      }

      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
      swift_allocError();
      v557 = xmmword_1C18D1790;
      goto LABEL_292;
    case 7u:
      v105 = v47;
      v47 = v904;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v105, v904, type metadata accessor for __RKEntityHideActionArguments);
      v106 = v914;
      v107 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v108 = v915;
      v109 = [v106 newNodeAtPath:v915 type:v107];
      if (!v109)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v214 = v108;
        v214[1] = v107;
        swift_willThrow();
        v215 = v108;
LABEL_79:

        v138 = type metadata accessor for __RKEntityHideActionArguments;
        goto LABEL_98;
      }

      v94 = v109;
      v110 = v50;

      v111 = v94;
      v112 = v913;
      setInfoId(_:on:)(0x696C696269736956, 0xEA00000000007974, v111);
      if (v112)
      {

LABEL_78:
        goto LABEL_79;
      }

      setInherits(from:on:)(0xD000000000000011, 0x80000001C18EF700, v111);
      v920 = v910;
      *&v921 = v106;
      *(&v921 + 1) = v110;
      v318 = __USDExportContext.pathTo(_:)(v47);
      if (!v318)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v490 = 0;
        swift_willThrow();
        goto LABEL_78;
      }

      v319 = v318;
      v320 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v321 = swift_allocObject();
      *(v321 + 16) = xmmword_1C1898160;
      *(v321 + 32) = v319;
      v276 = v319;
      v322 = v111;
      v323 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v324 = [v111 newPropertyWithName:v323 type:v320 role:0];

      if (!v324)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v505 = xmmword_1C18D1670;
        *(v505 + 16) = v320;
        *(v505 + 24) = 0;
        *(v505 + 32) = v94;
        swift_willThrow();
        v506 = v322;
        v507 = v320;

        goto LABEL_342;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v325 = v324;

      v326 = Array._bridgeToObjectiveC()().super.isa;
      [v325 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v282 = *MEMORY[0x1E69DED98];
      v327 = &v904[v883[5]];
      v328 = *v327;
      v329 = v327[4];
      v330 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v914 = v322;
      v331 = [v322 newPropertyWithName:v330 type:v282 role:0];

      if (!v331)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v541 = xmmword_1C18D16A0;
        *(v541 + 16) = v282;
        *(v541 + 24) = 0;
        *(v541 + 32) = v94;
        goto LABEL_238;
      }

      if (v329)
      {
        goto LABEL_156;
      }

      v913 = 0;
      [v331 setDoubleValue_];

      v576 = *MEMORY[0x1E69DEE28];
      v577 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v578 = MEMORY[0x1C68F3280](1701079400, 0xE400000000000000);
      v579 = [v577 initWithString_];

      v580 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v581 = [v914 newPropertyWithName:v580 type:v576 role:0];

      if (v581)
      {
        if (v579)
        {
          v582 = v579;
          [v581 setTokenValue_];

          v583 = v883;
          v584 = v883[8];
          v585 = v904;
          LOBYTE(v920.f64[0]) = v904[v883[7]];
          LOBYTE(v919[0]) = v904[v584];
          v586 = v914;
          v587 = v913;
          __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(&v920, v919, v914);
          if (v587)
          {

            v240 = type metadata accessor for __RKEntityHideActionArguments;
            v239 = v585;
            goto LABEL_176;
          }

          v913 = 0;
          if (*(v585 + v583[14]) > 1u)
          {
            if (*(v585 + v583[14]) != 2)
            {
              v773 = 0;
              goto LABEL_406;
            }

            v729 = 0xE400000000000000;
            v728 = 1684826487;
          }

          else if (*(v585 + v583[14]))
          {
            v729 = 0xE700000000000000;
            v728 = 0x6C756679616C70;
          }

          else
          {
            v728 = 0x6369736162;
            v729 = 0xE500000000000000;
          }

          v771 = objc_allocWithZone(MEMORY[0x1E69DED80]);
          v772 = MEMORY[0x1C68F3280](v728, v729);

          v773 = [v771 initWithString_];

LABEL_406:
          v774 = MEMORY[0x1C68F3280](0x656C797473, 0xE500000000000000);
          v775 = [v914 newPropertyWithName:v774 type:v576 role:0];

          if (!v775)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v778 = xmmword_1C18D1760;
            *(v778 + 16) = v576;
            *(v778 + 24) = 0;
            *(v778 + 32) = v94;
            swift_willThrow();
            v779 = v914;
            v780 = v576;

            v106 = v773;
            goto LABEL_342;
          }

          if (!v773)
          {
            goto LABEL_466;
          }

          v776 = v773;
          [v775 setTokenValue_];

          if (v904[v883[15]] == 10)
          {
            v777 = 0;
          }

          else
          {
            LOBYTE(v920.f64[0]) = v904[v883[15]];
            v809 = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(&v920);
            v810 = __RKEntityActionVisibilityTypeUSD.rawValue.getter(v809);
            v812 = v811;
            v813 = objc_allocWithZone(MEMORY[0x1E69DED80]);
            v814 = MEMORY[0x1C68F3280](v810, v812);

            v777 = [v813 initWithString_];
          }

          v815 = MEMORY[0x1C68F3280](0x79546E6F69746F6DLL, 0xEA00000000006570);
          v775 = [v914 newPropertyWithName:v815 type:v576 role:0];

          if (!v775)
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v838 = xmmword_1C18D1750;
            *(v838 + 16) = v576;
            *(v838 + 24) = 0;
            *(v838 + 32) = v94;
            swift_willThrow();
            v839 = v914;
            v840 = v576;

            v106 = v777;
            goto LABEL_342;
          }

          if (!v777)
          {
LABEL_466:
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v847 = 0u;
            *(v847 + 16) = 0u;
            *(v847 + 32) = 0;
            swift_willThrow();

            goto LABEL_342;
          }

          v816 = v777;
          [v775 setTokenValue_];

          v817 = &v904[v883[6]];
          v818 = *v817;
          v819 = v817[4];
          v820 = MEMORY[0x1C68F3280](0x7473694465766F6DLL, 0xEC00000065636E61);
          v331 = [v914 newPropertyWithName:v820 type:v282 role:0];

          if (!v331)
          {
            goto LABEL_483;
          }

          if ((v819 & 1) == 0)
          {
            v869 = v331;
            [v869 setDoubleValue_];

            v240 = type metadata accessor for __RKEntityHideActionArguments;
            v239 = v904;
            goto LABEL_176;
          }

LABEL_156:
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v332 = 0u;
          *(v332 + 16) = 0u;
          *(v332 + 32) = 0;
          swift_willThrow();

          goto LABEL_342;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v715 = 0u;
        *(v715 + 16) = 0u;
        *(v715 + 32) = 0;
        swift_willThrow();
        v579 = v581;
        v685 = v914;
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v684 = xmmword_1C18D1640;
        *(v684 + 16) = v576;
        *(v684 + 24) = 0;
        *(v684 + 32) = v94;
        swift_willThrow();
        v685 = v914;
        v686 = v576;
      }

      goto LABEL_342;
    case 8u:
      v51 = v900;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v47, v900, type metadata accessor for __RKEntityForceActionArguments);
      v147 = v914;
      v148 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v149 = v915;
      v150 = [v147 newNodeAtPath:v915 type:v148];
      if (v150)
      {
        v151 = v150;

        v152 = v151;
        v153 = v913;
        setInfoId(_:on:)(0x65736C75706D49, 0xE700000000000000, v152);
        if (v153)
        {
        }

        else
        {

          setInherits(from:on:)(0x65736C75706D492FLL, 0xEE006E6F69746341, v152);
          v920 = v910;
          *&v921 = v147;
          *(&v921 + 1) = v50;
          v401 = __USDExportContext.pathTo(_:)(v51);
          if (v401)
          {
            v402 = v401;
            v913 = 0;
            v403 = *MEMORY[0x1E69DEE08];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v404 = swift_allocObject();
            *(v404 + 16) = xmmword_1C1898160;
            *(v404 + 32) = v402;
            v405 = v402;
            v406 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
            v407 = [v152 newPropertyWithName:v406 type:v403 role:0];

            if (!v407)
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v520 = xmmword_1C18D1670;
              *(v520 + 16) = v403;
              *(v520 + 24) = 0;
              *(v520 + 32) = v151;
              swift_willThrow();
              v521 = v152;
              v522 = v403;

              v240 = type metadata accessor for __RKEntityForceActionArguments;
              v239 = v900;
              goto LABEL_176;
            }

            v408 = v152;
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
            v409 = v407;

            v410 = Array._bridgeToObjectiveC()().super.isa;
            [v409 setObjectPathArray_];
            swift_bridgeObjectRelease_n();

            v411 = *MEMORY[0x1E69DEDA0];
            v139 = v900;
            v412 = &v900[*(v879 + 24)];
            v413 = 0uLL;
            v414 = 0uLL;
            if ((v412[2].i8[0] & 1) == 0)
            {
              v413 = vcvtq_f64_f32(*v412);
              *(&v414 + 1) = 0;
              *&v414 = COERCE_FLOAT(*&v412[1]);
            }

            v915 = v414;
            v916 = v413;
            v415 = MEMORY[0x1C68F3280](0x797469636F6C6576, 0xE800000000000000);
            v416 = [v408 newPropertyWithName:v415 type:v411 role:0];

            if (v416)
            {
              v417 = v416;
              v921 = v915;
              v920 = v916;
              [v417 setDouble3Value_];

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v139, type metadata accessor for __RKEntityForceActionArguments);
              return;
            }

            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v550 = xmmword_1C18D1770;
            *(v550 + 16) = v411;
            *(v550 + 24) = 0;
            *(v550 + 32) = v151;
            swift_willThrow();
            v551 = v411;

            v233 = type metadata accessor for __RKEntityForceActionArguments;
            goto LABEL_90;
          }

          lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
          swift_allocError();
          *v494 = 0;
          swift_willThrow();
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v224 = v149;
        v224[1] = v148;
        swift_willThrow();
        v225 = v149;
      }

      v232 = type metadata accessor for __RKEntityForceActionArguments;
      goto LABEL_94;
    case 9u:
      v154 = v47;
      v47 = v903;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v154, v903, type metadata accessor for __RKEntityShowActionArguments);
      v155 = v914;
      v156 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v157 = v915;
      v158 = [v155 newNodeAtPath:v915 type:v156];
      if (!v158)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v226 = v157;
        v226[1] = v156;
        swift_willThrow();
        v227 = v157;
LABEL_97:

        v138 = type metadata accessor for __RKEntityShowActionArguments;
        goto LABEL_98;
      }

      v159 = v158;

      v160 = v159;
      v161 = v913;
      setInfoId(_:on:)(0x696C696269736956, 0xEA00000000007974, v160);
      if (v161)
      {

LABEL_96:
        goto LABEL_97;
      }

      setInherits(from:on:)(0xD000000000000011, 0x80000001C18EF700, v160);
      v920 = v910;
      *&v921 = v155;
      *(&v921 + 1) = v50;
      v418 = __USDExportContext.pathTo(_:)(v47);
      if (!v418)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v495 = 0;
        swift_willThrow();
        goto LABEL_96;
      }

      v419 = v418;
      v420 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v421 = swift_allocObject();
      *(v421 + 16) = xmmword_1C1898160;
      *(v421 + 32) = v419;
      v422 = v419;
      v423 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v424 = [v160 newPropertyWithName:v423 type:v420 role:0];

      if (!v424)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v523 = xmmword_1C18D1670;
        *(v523 + 16) = v420;
        *(v523 + 24) = 0;
        *(v523 + 32) = v159;
        swift_willThrow();
        v524 = v160;
        v525 = v420;

        goto LABEL_346;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v425 = v424;

      v426 = Array._bridgeToObjectiveC()().super.isa;
      [v425 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v427 = *MEMORY[0x1E69DED98];
      v428 = &v903[v882[5]];
      v429 = *v428;
      v430 = v428[4];
      v431 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v914 = v160;
      v432 = [v160 newPropertyWithName:v431 type:v427 role:0];

      if (!v432)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v552 = xmmword_1C18D16A0;
        *(v552 + 16) = v427;
        *(v552 + 24) = 0;
        *(v552 + 32) = v159;
        swift_willThrow();
        v553 = v427;

        goto LABEL_346;
      }

      if (v430)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v433 = 0u;
        *(v433 + 16) = 0u;
        *(v433 + 32) = 0;
        swift_willThrow();

LABEL_346:
        v240 = type metadata accessor for __RKEntityShowActionArguments;
        v239 = v903;
        goto LABEL_176;
      }

      v913 = 0;
      [v432 setDoubleValue_];

      v593 = *MEMORY[0x1E69DEE28];
      v594 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v595 = MEMORY[0x1C68F3280](2003789939, 0xE400000000000000);
      v596 = [v594 initWithString_];

      v597 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
      v598 = [v914 newPropertyWithName:v597 type:v593 role:0];

      if (v598)
      {
        if (v596)
        {
          v599 = v596;
          [v598 setTokenValue_];

          v600 = v882;
          v601 = v882[8];
          v47 = v903;
          LOBYTE(v920.f64[0]) = v903[v882[7]];
          LOBYTE(v919[0]) = v903[v601];
          v602 = v914;
          v603 = v913;
          __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(&v920, v919, v914);
          if (v603)
          {

            goto LABEL_97;
          }

          v913 = 0;
          *&v916.f64[0] = v422;
          if (v47[v600[14]] > 1u)
          {
            if (v47[v600[14]] != 2)
            {
              v783 = 0;
LABEL_414:
              v784 = MEMORY[0x1C68F3280](0x656C797473, 0xE500000000000000);
              v596 = [v914 newPropertyWithName:v784 type:v593 role:0];

              if (v596)
              {
                if (!v783)
                {
LABEL_474:
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v858 = 0u;
                  *(v858 + 16) = 0u;
                  *(v858 + 32) = 0;
                  swift_willThrow();

                  goto LABEL_345;
                }

                v785 = v783;
                [v596 setTokenValue_];

                if (v903[v882[15]] == 10)
                {
                  v783 = 0;
                }

                else
                {
                  LOBYTE(v920.f64[0]) = v903[v882[15]];
                  v821 = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(&v920);
                  v822 = __RKEntityActionVisibilityTypeUSD.rawValue.getter(v821);
                  v824 = v823;
                  v825 = objc_allocWithZone(MEMORY[0x1E69DED80]);
                  v826 = MEMORY[0x1C68F3280](v822, v824);

                  v783 = [v825 initWithString_];
                }

                v827 = MEMORY[0x1C68F3280](0x79546E6F69746F6DLL, 0xEA00000000006570);
                v596 = [v914 newPropertyWithName:v827 type:v593 role:0];

                if (v596)
                {
                  if (v783)
                  {
                    v828 = v783;
                    [v596 setTokenValue_];

                    v829 = &v903[v882[6]];
                    v830 = *v829;
                    v831 = v829[4];
                    v832 = MEMORY[0x1C68F3280](0x7473694465766F6DLL, 0xEC00000065636E61);
                    v833 = [v914 newPropertyWithName:v832 type:v427 role:0];

                    if (v833)
                    {
                      if ((v831 & 1) == 0)
                      {
                        v870 = v833;
                        [v870 setDoubleValue_];

                        v240 = type metadata accessor for __RKEntityShowActionArguments;
                        v239 = v903;
                        goto LABEL_176;
                      }

                      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                      swift_allocError();
                      *v834 = 0u;
                      *(v834 + 16) = 0u;
                      *(v834 + 32) = 0;
                      swift_willThrow();

                      *&v916.f64[0] = v833;
                    }

                    else
                    {
                      lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                      swift_allocError();
                      *v867 = xmmword_1C18D1740;
                      *(v867 + 16) = v427;
                      *(v867 + 24) = 0;
                      *(v867 + 32) = v159;
                      swift_willThrow();
                      v868 = v427;
                    }

                    goto LABEL_346;
                  }

                  goto LABEL_474;
                }

                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v841 = xmmword_1C18D1750;
                *(v841 + 16) = v593;
                *(v841 + 24) = 0;
                *(v841 + 32) = v159;
              }

              else
              {
                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                *v786 = xmmword_1C18D1760;
                *(v786 + 16) = v593;
                *(v786 + 24) = 0;
                *(v786 + 32) = v159;
              }

              swift_willThrow();
              v842 = v914;
              v843 = v593;

              v155 = v783;
              goto LABEL_346;
            }

            v734 = 0xE400000000000000;
            v733 = 1684826487;
          }

          else if (v47[v600[14]])
          {
            v734 = 0xE700000000000000;
            v733 = 0x6C756679616C70;
          }

          else
          {
            v733 = 0x6369736162;
            v734 = 0xE500000000000000;
          }

          v781 = objc_allocWithZone(MEMORY[0x1E69DED80]);
          v782 = MEMORY[0x1C68F3280](v733, v734);

          v783 = [v781 initWithString_];

          goto LABEL_414;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v716 = 0u;
        *(v716 + 16) = 0u;
        *(v716 + 32) = 0;
        swift_willThrow();
        v596 = v598;
        v688 = v914;
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v687 = xmmword_1C18D1640;
        *(v687 + 16) = v593;
        *(v687 + 24) = 0;
        *(v687 + 32) = v159;
        swift_willThrow();
        v688 = v914;
        v689 = v593;
      }

LABEL_345:
      goto LABEL_346;
    case 0xAu:
      v163 = v911;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v47, v911, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v170 = started;
      v171 = *(v163 + started[5]);
      if (v171 >= 2)
      {
        v916.f64[0] = v50;
        v172 = v897;
        v912 = v171;
        v173 = v894;
        v174 = v909;
        (*(v897 + 16))(v894, v163, v909);
        v175 = v170[7];
        LODWORD(v908) = *(v163 + v170[6]);
        v176 = *(v163 + v175);
        v177 = v170[9];
        v178 = *(v163 + v170[8]);
        v179 = v170[11];
        LODWORD(v906) = *(v163 + v170[10]);
        v180 = *(v163 + v179);
        LODWORD(v907) = *(v163 + v177);
        v181 = v170[14];
        v182 = *(v172 + 56);
        v182(v173 + v181, 1, 1, v174);
        *(v173 + v170[5]) = 0;
        *(v173 + v170[6]) = v908;
        *(v173 + v170[10]) = v906;
        *(v173 + v170[8]) = v178;
        *(v173 + v170[7]) = v176;
        *(v173 + v170[11]) = v180;
        *(v173 + v170[9]) = v907;
        *(v173 + v170[12]) = 0;
        v183 = v173 + v170[13];
        *v183 = 0x3FF0000000000000;
        *(v183 + 8) = 0;
        v184 = v914;
        outlined destroy of BodyTrackingComponent?(v173 + v181, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v182(v173 + v181, 1, 1, v909);
        v185 = v184;
        _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v173, v36, type metadata accessor for __RKEntityStartAnimateActionArguments);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
        v186 = (*(v895 + 80) + 32) & ~*(v895 + 80);
        v187 = swift_allocObject();
        *(v187 + 16) = xmmword_1C1887600;
        _s10RealityKit29__RKEntityActionSpecificationOWOcTm_1(v36, v187 + v186, type metadata accessor for __RKEntityActionSpecification);
        *v33 = 0;
        *(v33 + 1) = v187;
        v33[16] = 0;
        *(v33 + 3) = v912;
        *(v33 + 16) = 0;
        swift_storeEnumTagMultiPayload();
        v188 = v913;
        makeParentNode #1 (from:baseName:) in __RKEntityActionSpecification.encode(to:at:)(v915, 0x756F7247706F6F4CLL, 0xE900000000000070, v185);
        if (v188)
        {

          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v33, type metadata accessor for __RKEntityActionSpecification);
          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v36, type metadata accessor for __RKEntityActionSpecification);
          _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v911, type metadata accessor for __RKEntityStartAnimateActionArguments);
          v239 = v173;
          v240 = type metadata accessor for __RKEntityStartAnimateActionArguments;
          goto LABEL_176;
        }

        v235 = v189;
        v920 = v910;
        *&v921 = v185;
        *(&v921 + 1) = *&v916.f64[0];
        __RKEntityActionSpecification.encode(to:at:)(v920.f64, v189);

        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v33, type metadata accessor for __RKEntityActionSpecification);
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v36, type metadata accessor for __RKEntityActionSpecification);
        v451 = type metadata accessor for __RKEntityStartAnimateActionArguments;
        _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v911, type metadata accessor for __RKEntityStartAnimateActionArguments);
        v452 = &v921;
        goto LABEL_206;
      }

      v198 = v914;
      v199 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v200 = v915;
      v201 = [v198 newNodeAtPath:v915 type:v199];
      if (!v201)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v236 = v200;
        v236[1] = v199;
        swift_willThrow();
        v237 = v200;
LABEL_108:

        v234 = type metadata accessor for __RKEntityStartAnimateActionArguments;
        goto LABEL_109;
      }

      v202 = v201;
      v203 = v50;

      v204 = v202;
      v205 = v913;
      setInfoId(_:on:)(0x696E417472617453, 0xEE006E6F6974616DLL, v204);
      if (v205)
      {

LABEL_107:
        goto LABEL_108;
      }

      setInherits(from:on:)(0xD000000000000015, 0x80000001C18EF740, v204);
      v920 = v910;
      *&v921 = v198;
      *(&v921 + 1) = v203;
      v470 = __USDExportContext.pathTo(_:)(v163);
      if (!v470)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v529 = 0;
        swift_willThrow();
        goto LABEL_107;
      }

      v471 = v470;
      v472 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v473 = swift_allocObject();
      *(v473 + 16) = xmmword_1C1898160;
      *(v473 + 32) = v471;
      *&v916.f64[0] = v471;
      v474 = v204;
      v475 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v476 = [v204 newPropertyWithName:v475 type:v472 role:0];

      if (!v476)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v633 = xmmword_1C18D1670;
        *(v633 + 16) = v472;
        *(v633 + 24) = 0;
        *(v633 + 32) = v202;
        swift_willThrow();
        v634 = v474;
        v635 = v472;

        goto LABEL_422;
      }

      v914 = v474;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v477 = v476;

      v478 = Array._bridgeToObjectiveC()().super.isa;
      [v477 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v479 = *MEMORY[0x1E69DEE28];
      v480 = *(v911 + started[6]);
      v913 = 0;
      if (v480)
      {
        if (v480 == 1)
        {
          v481 = 0x65726F6E6769;
          v482 = 0xE600000000000000;
        }

        else
        {
          v482 = 0xE400000000000000;
          v481 = 1886352499;
        }
      }

      else
      {
        v482 = 0xE500000000000000;
        v481 = 0x776F6C6C61;
      }

      v646 = objc_allocWithZone(MEMORY[0x1E69DED80]);
      v647 = MEMORY[0x1C68F3280](v481, v482);

      v648 = [v646 initWithString_];

      v649 = MEMORY[0x1C68F3280](0xD000000000000018, 0x80000001C18DEA50);
      v650 = v914;
      v651 = [v914 newPropertyWithName:v649 type:v479 role:0];

      if (v651)
      {
        if (v648)
        {
          v652 = v648;
          [v651 setTokenValue_];

          v653 = *MEMORY[0x1E69DED98];
          v654 = started;
          v258 = v911;
          v655 = *(v911 + started[7]);
          v656 = MEMORY[0x1C68F3280](0x7472617473, 0xE500000000000000);
          v657 = v914;
          v658 = [v914 newPropertyWithName:v656 type:v653 role:0];

          if (v658)
          {
            [v658 setDoubleValue_];

            v659 = *&v258[v654[8]];
            v660 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
            v661 = [v657 newPropertyWithName:v660 type:v653 role:0];

            if (v661)
            {
              [v661 setDoubleValue_];

              v662 = *MEMORY[0x1E69DED90];
              v663 = *(v911 + v654[10]);
              v664 = v654;
              v665 = MEMORY[0x1C68F3280](0x6465737265766572, 0xE800000000000000);
              *&v915 = v662;
              v666 = v657;
              v667 = [v657 newPropertyWithName:v665 type:v662 role:0];

              if (v667)
              {
                [v667 setBoolValue_];

                v163 = v911;
                v668 = *(v911 + v664[11]);
                v669 = MEMORY[0x1C68F3280](0x6F6974616D696E61, 0xEE0064656570536ELL);
                v670 = [v666 newPropertyWithName:v669 type:v653 role:0];

                if (!v670)
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v766 = xmmword_1C18D1710;
                  *(v766 + 16) = v653;
                  *(v766 + 24) = 0;
                  *(v766 + 32) = v202;
                  swift_willThrow();
                  v767 = v653;

                  goto LABEL_108;
                }

                [v670 setDoubleValue_];

                v671 = *(v163 + v664[9]);
                v672 = MEMORY[0x1C68F3280](0x7365737265766572, 0xE800000000000000);
                v673 = [v666 newPropertyWithName:v672 type:v915 role:0];

                if (v673)
                {
                  v674 = v673;
                  [v674 setBoolValue_];

                  v240 = type metadata accessor for __RKEntityStartAnimateActionArguments;
                  v239 = v911;
                  goto LABEL_176;
                }

                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                v758 = xmmword_1C18D1700;
              }

              else
              {
                lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                swift_allocError();
                v758 = xmmword_1C18D1720;
              }

              *v735 = v758;
              v653 = v915;
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v735 = xmmword_1C18D16A0;
            }

            *(v735 + 16) = v653;
            *(v735 + 24) = 0;
            *(v735 + 32) = v202;
            swift_willThrow();
            v787 = v653;

LABEL_422:
            v240 = type metadata accessor for __RKEntityStartAnimateActionArguments;
            v239 = v911;
            goto LABEL_176;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v717 = xmmword_1C18D1730;
          *(v717 + 16) = v653;
          *(v717 + 24) = 0;
          *(v717 + 32) = v202;
          swift_willThrow();
          v718 = v653;

          v536 = type metadata accessor for __RKEntityStartAnimateActionArguments;
LABEL_290:
          v240 = v536;
          v239 = v258;
          goto LABEL_176;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v690 = 0u;
        *(v690 + 16) = 0u;
        *(v690 + 32) = 0;
        swift_willThrow();
        v648 = v651;
        v676 = v914;
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v675 = 0xD000000000000018;
        v675[1] = 0x80000001C18DEA50;
        v675[2] = v479;
        v675[3] = 0;
        v675[4] = v202;
        swift_willThrow();
        v676 = v650;
        v677 = v479;
      }

      goto LABEL_422;
    case 0xEu:
      v162 = v50;
      v163 = v905;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v47, v905, type metadata accessor for __RKEntityTransformActionArguments);
      v164 = v914;
      v165 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v166 = v915;
      v167 = [v164 newNodeAtPath:v915 type:v165];
      if (!v167)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v228 = v166;
        v228[1] = v165;
        swift_willThrow();
        v229 = v166;
        goto LABEL_101;
      }

      v89 = v167;

      v168 = v89;
      v169 = v913;
      setInfoId(_:on:)(0x726F66736E617254, 0xE90000000000006DLL, v168);
      if (v169)
      {

LABEL_100:
LABEL_101:

        v234 = type metadata accessor for __RKEntityTransformActionArguments;
LABEL_109:
        v240 = v234;
        v239 = v163;
        goto LABEL_176;
      }

      setInherits(from:on:)(0xD000000000000010, 0x80000001C18EF720, v168);
      v916.f64[0] = -2.31584178e77;
      v920 = v910;
      *&v921 = v164;
      *(&v921 + 1) = v162;
      v434 = __USDExportContext.pathTo(_:)(v163);
      if (!v434)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v496 = 0;
        swift_willThrow();
        goto LABEL_100;
      }

      v435 = v434;
      v913 = 0;
      v436 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v437 = swift_allocObject();
      *(v437 + 16) = xmmword_1C1898160;
      *(v437 + 32) = v435;
      v438 = v435;
      v439 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v440 = [v168 newPropertyWithName:v439 type:v436 role:0];
      v914 = v168;
      v441 = v440;

      if (!v441)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v526 = xmmword_1C18D1670;
        *(v526 + 16) = v436;
        *(v526 + 24) = 0;
        *(v526 + 32) = v89;
        swift_willThrow();
        v527 = v914;
        v528 = v436;

LABEL_286:

        goto LABEL_287;
      }

      v912 = v438;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v442 = v441;

      v443 = Array._bridgeToObjectiveC()().super.isa;
      [v442 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v444 = *MEMORY[0x1E69DED98];
      v445 = (v905 + v881[8]);
      v446 = *v445;
      v447 = *(v445 + 4);
      v448 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
      v449 = [v914 newPropertyWithName:v448 type:v444 role:0];

      if (!v449)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v554 = xmmword_1C18D16A0;
        *(v554 + 16) = v444;
        *(v554 + 24) = 0;
        *(v554 + 32) = v89;
        swift_willThrow();
        v555 = v444;
        v449 = v912;
        goto LABEL_247;
      }

      if (v447)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v450 = 0u;
        *(v450 + 16) = 0u;
        *(v450 + 32) = 0;
        swift_willThrow();

LABEL_247:
        goto LABEL_286;
      }

      v604 = v446;
      [v449 setDoubleValue_];

      v605 = [v915 tokenValue];
      if (v605)
      {
        v606 = v605;
        v607 = [v605 stringValue];

        if (v607)
        {
          v608 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v610 = v609;

          *&v920.f64[0] = v608;
          v920.f64[1] = v610;
          v919[0] = 47;
          v919[1] = 0xE100000000000000;
          v917 = 95;
          v918 = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v611 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v613 = v612;

          *&v920.f64[0] = 47;
          v920.f64[1] = -1.7573882e159;
          *&v915 = v613;
          MEMORY[0x1C68F3410](v611, v613);
          v614 = v920;
          v615 = objc_allocWithZone(MEMORY[0x1E69DED68]);
          v616 = MEMORY[0x1C68F3280](*&v614.f64[0], *&v614.f64[1]);

          v617 = [v615 initWithString_];

          if (!v617)
          {
            goto LABEL_501;
          }

          v94 = [v164 newNodeAtPath:v617 type:*MEMORY[0x1E69DEE98]];

          if (v94)
          {
            v618 = (v905 + v881[7]);
            v619 = *(v618 + 4);
            v620 = 0.0;
            if ((v619 & 1) == 0)
            {
              v620 = *v618;
            }

            *&v924 = v620;
            *(&v924 + 1) = v620;
            v925 = v620;
            v926 = 0;
            v927 = v619;
            v621 = v905;
            closure #18 in __RKEntityActionSpecification.encode(to:at:)(v905, &v922);
            closure #19 in __RKEntityActionSpecification.encode(to:at:)(v621, &v923);
            v622 = USKNode.setTransform(scale:orientation:translation:)(&v924, &v922, &v923);
            v623 = *MEMORY[0x1E69DEE00];
            v624 = [v94 path];
            v625 = MEMORY[0x1C68F3280](0x7261546D726F6678, 0xEB00000000746567);
            *&v915 = v623;
            v626 = [v914 newPropertyWithName:v625 type:v623 role:0];

            if (v626)
            {
              if (v624)
              {
                v627 = v624;
                [v626 setObjectPath_];

                v628 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
                v629 = [v914 newPropertyWithName:v628 type:v444 role:0];

                if (!v629)
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v788 = xmmword_1C18D16A0;
                  *(v788 + 16) = v444;
                  *(v788 + 24) = 0;
                  *(v788 + 32) = v89;
                  swift_willThrow();
                  v789 = v914;
                  v790 = v444;

                  goto LABEL_286;
                }

                [v629 setDoubleValue_];

                v630 = *MEMORY[0x1E69DEE28];
                v631 = *(v905 + v881[9]);
                if (v631 == 2)
                {
                  v632 = 0;
                }

                else
                {
                  if (v631)
                  {
                    v802 = 0x6574756C6F736261;
                  }

                  else
                  {
                    v802 = 0x65766974616C6572;
                  }

                  v803 = objc_allocWithZone(MEMORY[0x1E69DED80]);
                  v804 = MEMORY[0x1C68F3280](v802, 0xE800000000000000);
                  v632 = [v803 initWithString_];
                }

                v805 = MEMORY[0x1C68F3280](1701869940, 0xE400000000000000);
                v806 = [v914 newPropertyWithName:v805 type:v630 role:0];

                if (v806)
                {
                  if (v632)
                  {
                    v807 = v632;
                    [v806 setTokenValue_];

                    v808 = v877;
                    outlined init with copy of UUID?(v905 + v881[15], v877);
                    if ((*(v897 + 48))(v808, 1, v909) == 1)
                    {
                      outlined destroy of BodyTrackingComponent?(v877, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    }

                    else
                    {
                      v860 = v876;
                      (*(v897 + 32))(v876, v877, v909);
                      v920 = v910;
                      v275 = 0x80000001C18DEAC0;
                      *&v921 = v164;
                      *(&v921 + 1) = v162;
                      v282 = __USDExportContext.pathTo(_:)(v860);
                      v861 = MEMORY[0x1C68F3280](*&v916.f64[0], 0x80000001C18DEAC0);
                      v862 = [v914 newPropertyWithName:v861 type:v915 role:0];

                      if (!v862)
                      {
                        goto LABEL_490;
                      }

                      if (!v282)
                      {
                        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                        swift_allocError();
                        *v875 = 0u;
                        *(v875 + 16) = 0u;
                        *(v875 + 32) = 0;
                        swift_willThrow();

                        goto LABEL_492;
                      }

                      v863 = v282;
                      [v862 setObjectPath_];

                      (*(v897 + 8))(v876, v909);
                    }

                    v864 = v881[11];
                    LOBYTE(v920.f64[0]) = *(v905 + v881[10]);
                    LOBYTE(v919[0]) = *(v905 + v864);
                    v865 = v913;
                    __RKEntityActionSpecification.setEaseType(ease:easeType:on:)(&v920, v919, v914);
                    if (!v865)
                    {

                      _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v905, type metadata accessor for __RKEntityTransformActionArguments);
                      return;
                    }

                    v638 = &v928;
                    goto LABEL_285;
                  }

                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v846 = 0u;
                  *(v846 + 16) = 0u;
                  *(v846 + 32) = 0;
                  swift_willThrow();
                }

                else
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  *v835 = xmmword_1C18D1640;
                  *(v835 + 16) = v630;
                  *(v835 + 24) = 0;
                  *(v835 + 32) = v89;
                  swift_willThrow();
                  v836 = v914;
                  v837 = v630;

                  v164 = v632;
                }

                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v905, type metadata accessor for __RKEntityTransformActionArguments);
                return;
              }

              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v768 = 0u;
              *(v768 + 16) = 0u;
              *(v768 + 32) = 0;
              swift_willThrow();
              v624 = v626;
              v761 = v914;
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v759 = xmmword_1C18D16F0;
              v760 = v915;
              *(v759 + 16) = v915;
              *(v759 + 24) = 0;
              *(v759 + 32) = v89;
              swift_willThrow();
              v761 = v914;
              v762 = v760;
            }

            goto LABEL_286;
          }
        }
      }

      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v637 = 2;
      swift_willThrow();

      v638 = &v929;
LABEL_285:

      goto LABEL_286;
    case 0xFu:
      v78 = *v47;
      v79 = v914;
      v80 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v81 = v915;
      v82 = [v79 newNodeAtPath:v915 type:v80];
      if (v82)
      {
        v83 = v82;

        v84 = v83;
        v85 = v913;
        setInfoId(_:on:)(1953063255, 0xE400000000000000, v84);
        if (v85)
        {
        }

        else
        {

          setInherits(from:on:)(0x746341746961572FLL, 0xEB000000006E6F69, v84);
          v259 = *MEMORY[0x1E69DED98];
          v260 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
          v261 = [v84 newPropertyWithName:v260 type:v259 role:0];

          if (v261)
          {
            v262 = v261;
            [v262 setDoubleValue_];
          }

          else
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            *v484 = xmmword_1C18D16A0;
            *(v484 + 16) = v259;
            *(v484 + 24) = 0;
            *(v484 + 32) = v83;
            swift_willThrow();
            v485 = v259;
          }
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v208 = v81;
        v208[1] = v80;
        swift_willThrow();
        v209 = v81;
      }

      return;
    case 0x10u:
      v51 = v908;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v47, v908, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v113 = v914;
      v114 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v115 = v915;
      v116 = [v113 newNodeAtPath:v915 type:v114];
      if (!v116)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v216 = v115;
        v216[1] = v114;
        swift_willThrow();
        v217 = v115;
LABEL_82:

        v232 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
        goto LABEL_94;
      }

      v117 = v116;

      v118 = v117;
      v119 = v913;
      setInfoId(_:on:)(0x746962724FLL, 0xE500000000000000, v118);
      if (v119)
      {

LABEL_81:
        goto LABEL_82;
      }

      setInherits(from:on:)(0x6341746962724F2FLL, 0xEC0000006E6F6974, v118);
      v920 = v910;
      *&v921 = v113;
      *(&v921 + 1) = v50;
      v333 = __USDExportContext.pathTo(_:)(v51);
      if (!v333)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v491 = 0;
        swift_willThrow();
        goto LABEL_81;
      }

      v334 = v333;
      v916.f64[0] = v50;
      v913 = 0;
      v335 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v336 = swift_allocObject();
      *(v336 + 16) = xmmword_1C1898160;
      *(v336 + 32) = v334;
      v337 = v334;
      v338 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v339 = [v118 newPropertyWithName:v338 type:v335 role:0];

      if (!v339)
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v508 = xmmword_1C18D1670;
        *(v508 + 16) = v335;
        *(v508 + 24) = 0;
        *(v508 + 32) = v117;
        swift_willThrow();
        v509 = v118;
        v510 = v335;

LABEL_360:

        v240 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
        v239 = v908;
        goto LABEL_176;
      }

      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
      v340 = v339;

      v341 = Array._bridgeToObjectiveC()().super.isa;
      [v340 setObjectPathArray_];
      swift_bridgeObjectRelease_n();

      v342 = *MEMORY[0x1E69DEE00];
      v920 = v910;
      *&v921 = v113;
      *(&v921 + 1) = *&v916.f64[0];
      v343 = __USDExportContext.pathTo(_:)(v908 + v887[5]);
      v344 = MEMORY[0x1C68F3280](0x7265746E6563, 0xE600000000000000);
      v345 = [v118 newPropertyWithName:v344 type:v342 role:0];

      if (v345)
      {
        v914 = v118;
        if (v343)
        {
          v346 = v343;
          [v345 setObjectPath_];

          v347 = *MEMORY[0x1E69DED98];
          v348 = v908 + v887[6];
          v349 = *v348;
          v350 = *(v348 + 4);
          v351 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
          v352 = [v914 newPropertyWithName:v351 type:v347 role:0];

          if (v352)
          {
            if (v350)
            {
LABEL_165:
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v357 = 0u;
              *(v357 + 16) = 0u;
              *(v357 + 32) = 0;
              swift_willThrow();

              v337 = v352;
LABEL_359:

              goto LABEL_360;
            }

            [v352 setDoubleValue_];

            v353 = v908 + v887[7];
            v354 = *v353;
            v355 = *(v353 + 4);
            v356 = MEMORY[0x1C68F3280](0x6974756C6F766572, 0xEB00000000736E6FLL);
            v352 = [v914 newPropertyWithName:v356 type:v347 role:0];

            if (v352)
            {
              if (v355)
              {
                goto LABEL_165;
              }

              [v352 setDoubleValue_];

              v755 = v908;
              LOBYTE(v920.f64[0]) = *(v908 + v887[10]);
              v756 = v914;
              v757 = v913;
              __RKEntityActionSpecification.setRotationAxis(direction:axis:on:)(&v920, *(v908 + v887[8]), *(v908 + v887[8] + 8), *(v908 + v887[8] + 16), v914);
              if (v757)
              {

                _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v755, type metadata accessor for __RKEntityOrbitEntityActionArguments);
                return;
              }

              v347 = *MEMORY[0x1E69DED90];
              v769 = *(v755 + v887[9]);
              v770 = MEMORY[0x1C68F3280](0x506F546E67696C61, 0xEB00000000687461);
              v352 = [v756 newPropertyWithName:v770 type:v347 role:0];

              if (v352)
              {
                if (v769 != 2)
                {
                  v845 = v352;
                  [v845 setBoolValue_];

                  _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v908, type metadata accessor for __RKEntityOrbitEntityActionArguments);
                  return;
                }

                goto LABEL_165;
              }

              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v844 = xmmword_1C18D16D0;
              *(v844 + 16) = v347;
              *(v844 + 24) = 0;
              *(v844 + 32) = v117;
LABEL_358:
              swift_willThrow();
              v730 = v347;
              goto LABEL_359;
            }

            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v679 = xmmword_1C18D1690;
          }

          else
          {
            lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
            swift_allocError();
            v679 = xmmword_1C18D16A0;
          }

          *v678 = v679;
          *(v678 + 16) = v347;
          *(v678 + 24) = 0;
          *(v678 + 32) = v117;
          goto LABEL_358;
        }

        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v639 = 0u;
        *(v639 + 16) = 0u;
        *(v639 + 32) = 0;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v543 = xmmword_1C18D16E0;
        *(v543 + 16) = v342;
        *(v543 + 24) = 0;
        *(v543 + 32) = v117;
        swift_willThrow();
        v544 = v118;
        v545 = v342;

        v113 = v343;
      }

      v258 = v908;

      v536 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
      goto LABEL_290;
    case 0x11u:
      v97 = v47;
      v47 = v902;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v97, v902, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      v98 = v914;
      v99 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v100 = v915;
      v101 = [v98 newNodeAtPath:v915 type:v99];
      if (v101)
      {
        v102 = v101;

        v103 = v102;
        v104 = v913;
        setInfoId(_:on:)(0x614374416B6F6F4CLL, 0xEC0000006172656DLL, v103);
        if (v104)
        {
        }

        else
        {

          setInherits(from:on:)(0xD000000000000013, 0x80000001C18EF780, v103);
          v920 = v910;
          *&v921 = v98;
          *(&v921 + 1) = v50;
          v302 = __USDExportContext.pathTo(_:)(v47);
          if (v302)
          {
            v303 = v302;
            v913 = 0;
            v304 = *MEMORY[0x1E69DEE08];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v305 = swift_allocObject();
            *(v305 + 16) = xmmword_1C1898160;
            *(v305 + 32) = v303;
            v306 = v303;
            v307 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
            v308 = [v103 newPropertyWithName:v307 type:v304 role:0];

            if (!v308)
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v502 = xmmword_1C18D1670;
              *(v502 + 16) = v304;
              *(v502 + 24) = 0;
              *(v502 + 32) = v102;
              swift_willThrow();
              v503 = v103;
              v504 = v304;

              v240 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
              v239 = v902;
              goto LABEL_176;
            }

            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
            v309 = v308;

            v310 = Array._bridgeToObjectiveC()().super.isa;
            [v309 setObjectPathArray_];
            swift_bridgeObjectRelease_n();

            v311 = *MEMORY[0x1E69DED98];
            v312 = &v902[v886[5]];
            v313 = *v312;
            v314 = v312[4];
            v315 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
            v914 = v103;
            v316 = [v103 newPropertyWithName:v315 type:v311 role:0];

            if (v316)
            {
              if ((v314 & 1) == 0)
              {
                [v316 setDoubleValue_];

                v564 = *MEMORY[0x1E69DEDA0];
                v139 = v902;
                v565 = &v902[v886[7]];
                v566 = 0uLL;
                v567 = 0uLL;
                if ((v565[2].i8[0] & 1) == 0)
                {
                  v566 = vcvtq_f64_f32(*v565);
                  *(&v567 + 1) = 0;
                  *&v567 = COERCE_FLOAT(*&v565[1]);
                }

                v915 = v567;
                v916 = v566;
                v568 = MEMORY[0x1C68F3280](0x746E6F7266, 0xE500000000000000);
                v569 = [v914 newPropertyWithName:v568 type:v564 role:0];

                if (v569)
                {
                  v921 = v915;
                  v920 = v916;
                  [v569 setDouble3Value_];

                  v570 = &v139[v886[9]];
                  v571 = 0uLL;
                  v572 = 0uLL;
                  if ((v570[2].i8[0] & 1) == 0)
                  {
                    v571 = vcvtq_f64_f32(*v570);
                    *(&v572 + 1) = 0;
                    *&v572 = COERCE_FLOAT(*&v570[1]);
                  }

                  v915 = v572;
                  v916 = v571;
                  v573 = MEMORY[0x1C68F3280](0x726F746365567075, 0xE800000000000000);
                  v574 = [v914 newPropertyWithName:v573 type:v564 role:0];

                  if (v574)
                  {
                    v575 = v574;
                    v921 = v915;
                    v920 = v916;
                    [v575 setDouble3Value_];

                    v393 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
                    goto LABEL_175;
                  }

                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  v683 = xmmword_1C18D16B0;
                }

                else
                {
                  lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
                  swift_allocError();
                  v683 = xmmword_1C18D16C0;
                }

                *v682 = v683;
                *(v682 + 16) = v564;
                *(v682 + 24) = 0;
                *(v682 + 32) = v102;
                swift_willThrow();
                v714 = v564;

                v233 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
                goto LABEL_90;
              }

              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v317 = 0u;
              *(v317 + 16) = 0u;
              *(v317 + 32) = 0;
              swift_willThrow();

              v306 = v316;
            }

            else
            {
              lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
              swift_allocError();
              *v537 = xmmword_1C18D16A0;
              *(v537 + 16) = v311;
              *(v537 + 24) = 0;
              *(v537 + 32) = v102;
              swift_willThrow();
              v538 = v311;
            }

            v539 = v902;

            v540 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
            goto LABEL_364;
          }

          lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
          swift_allocError();
          *v489 = 0;
          swift_willThrow();
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v212 = v100;
        v212[1] = v99;
        swift_willThrow();
        v213 = v100;
      }

      v138 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
LABEL_98:
      v240 = v138;
      v239 = v47;
      goto LABEL_176;
    case 0x13u:
      v51 = v906;
      _s10RealityKit29__RKEntityHideActionArgumentsVWObTm_0(v47, v906, type metadata accessor for __RKEntitySpinActionArguments);
      v71 = v914;
      v72 = MEMORY[0x1C68F3280](0xD000000000000012, 0x80000001C18EF6E0);
      v73 = v915;
      v74 = [v71 newNodeAtPath:v915 type:v72];
      if (!v74)
      {
        lazy protocol witness table accessor for type USKScene.NewNodeError and conformance USKScene.NewNodeError();
        swift_allocError();
        *v206 = v73;
        v206[1] = v72;
        swift_willThrow();
        v207 = v73;
        goto LABEL_71;
      }

      v75 = v74;

      v76 = v75;
      v77 = v913;
      setInfoId(_:on:)(1852403795, 0xE400000000000000, v76);
      if (v77)
      {

LABEL_70:
LABEL_71:

        v232 = type metadata accessor for __RKEntitySpinActionArguments;
LABEL_94:
        v240 = v232;
        v239 = v51;
        goto LABEL_176;
      }

      setInherits(from:on:)(0x7463416E6970532FLL, 0xEB000000006E6F69, v76);
      v920 = v910;
      *&v921 = v71;
      *(&v921 + 1) = v50;
      v241 = __USDExportContext.pathTo(_:)(v51);
      if (!v241)
      {
        lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
        swift_allocError();
        *v483 = 0;
        swift_willThrow();
        goto LABEL_70;
      }

      v242 = v241;
      v913 = 0;
      v243 = *MEMORY[0x1E69DEE08];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v244 = swift_allocObject();
      *(v244 + 16) = xmmword_1C1898160;
      *(v244 + 32) = v242;
      v245 = v242;
      v246 = MEMORY[0x1C68F3280](0x6465746365666661, 0xEF737463656A624FLL);
      v247 = [v76 newPropertyWithName:v246 type:v243 role:0];

      if (v247)
      {
        *&v916.f64[0] = v245;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
        v248 = v247;

        v249 = Array._bridgeToObjectiveC()().super.isa;
        [v248 setObjectPathArray_];
        swift_bridgeObjectRelease_n();

        v250 = *MEMORY[0x1E69DED98];
        v251 = &v906[v884[5]];
        v252 = *v251;
        v253 = *(v251 + 4);
        v254 = MEMORY[0x1C68F3280](0x6E6F697461727564, 0xE800000000000000);
        v255 = v76;
        v256 = COERCE_DOUBLE([v76 newPropertyWithName:v254 type:v250 role:0]);

        if (v256 == 0.0)
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v534 = xmmword_1C18D16A0;
          *(v534 + 16) = v250;
          *(v534 + 24) = 0;
          *(v534 + 32) = v75;
          swift_willThrow();
          v535 = v250;
          v258 = v906;
          v256 = v916.f64[0];
          goto LABEL_234;
        }

        if (v253)
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v257 = 0u;
          *(v257 + 16) = 0u;
          *(v257 + 32) = 0;
          swift_willThrow();

          v258 = v906;
LABEL_234:

          v536 = type metadata accessor for __RKEntitySpinActionArguments;
          goto LABEL_290;
        }

        [*&v256 setDoubleValue_];

        v558 = &v906[v884[6]];
        v559 = *v558;
        v560 = *(v558 + 4);
        v561 = MEMORY[0x1C68F3280](0x6974756C6F766572, 0xEB00000000736E6FLL);
        v562 = COERCE_DOUBLE([v255 newPropertyWithName:v561 type:v250 role:0]);

        if (v562 == 0.0)
        {
          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v680 = xmmword_1C18D1690;
          *(v680 + 16) = v250;
          *(v680 + 24) = 0;
          *(v680 + 32) = v75;
          swift_willThrow();
          v681 = v250;
          v562 = v916.f64[0];
        }

        else
        {
          if ((v560 & 1) == 0)
          {
            [*&v562 setDoubleValue_];

            v700 = v884[8];
            v539 = v906;
            LOBYTE(v920.f64[0]) = v906[v884[7]];
            v701 = v913;
            __RKEntityActionSpecification.setRotationAxis(direction:axis:on:)(&v920, *&v906[v700], *&v906[v700 + 8], v906[v700 + 16], v255);
            if (!v701)
            {

              _s10RealityKit29__RKEntityActionSpecificationOWOhTm_1(v539, type metadata accessor for __RKEntitySpinActionArguments);
              return;
            }

            v540 = type metadata accessor for __RKEntitySpinActionArguments;
LABEL_364:
            v240 = v540;
            v239 = v539;
            goto LABEL_176;
          }

          lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
          swift_allocError();
          *v563 = 0u;
          *(v563 + 16) = 0u;
          *(v563 + 32) = 0;
          swift_willThrow();
        }
      }

      else
      {
        lazy protocol witness table accessor for type USKNode.NewPropertyError and conformance USKNode.NewPropertyError();
        swift_allocError();
        *v498 = xmmword_1C18D1670;
        *(v498 + 16) = v243;
        *(v498 + 24) = 0;
        *(v498 + 32) = v75;
        swift_willThrow();
        v499 = v76;
        v500 = v243;
      }

      v240 = type metadata accessor for __RKEntitySpinActionArguments;
      v239 = v906;
      goto LABEL_176;
    default:
      lazy protocol witness table accessor for type InteractionSpecificationsUSDEncodingErrors and conformance InteractionSpecificationsUSDEncodingErrors();
      swift_allocError();
      *v190 = 1;
      swift_willThrow();
      v138 = type metadata accessor for __RKEntityActionSpecification;
      goto LABEL_98;
  }
}