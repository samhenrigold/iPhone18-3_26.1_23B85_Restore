@interface PRErrorModel
- (BOOL)hasCustomInsertionErrorScores;
- (BOOL)hasCustomOmissionErrorScores;
- (BOOL)hasCustomReplacementErrorScores;
- (BOOL)hasCustomTranspositionErrorScores;
- (PRErrorModel)initWithCustomErrorModel:(id)model;
- (double)errorScoreForType:(unint64_t)type;
- (double)insertionErrorScoreForIntendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter;
- (double)omissionErrorScoreForIntendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter;
- (double)replacementErrorScoreForIntendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter;
- (double)transpositionErrorScoreForIntendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter;
- (void)dealloc;
@end

@implementation PRErrorModel

- (PRErrorModel)initWithCustomErrorModel:(id)model
{
  v6.receiver = self;
  v6.super_class = PRErrorModel;
  v4 = [(PRErrorModel *)&v6 init];
  if (v4)
  {
    v4->_customErrorModel = model;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRErrorModel;
  [(PRErrorModel *)&v3 dealloc];
}

- (double)errorScoreForType:(unint64_t)type
{
  result = -5.0;
  if (type <= 0xD)
  {
    return errorScoreForType__errorScores[type];
  }

  return result;
}

- (BOOL)hasCustomReplacementErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

- (BOOL)hasCustomTranspositionErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

- (BOOL)hasCustomInsertionErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

- (BOOL)hasCustomOmissionErrorScores
{
  customErrorModel = self->_customErrorModel;
  if (customErrorModel)
  {
    LOBYTE(customErrorModel) = objc_opt_respondsToSelector();
  }

  return customErrorModel & 1;
}

- (double)replacementErrorScoreForIntendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter
{
  actualCharacterCopy = actualCharacter;
  characterCopy = character;
  [(PRErrorModel *)self errorScoreForType:8];
  v8 = v7;
  if ([(PRErrorModel *)self hasCustomReplacementErrorScores])
  {
    customErrorModel = self->_customErrorModel;

    [(PRErrorModeling *)customErrorModel replacementErrorScoreForIntendedCharacter:characterCopy actualCharacter:actualCharacterCopy];
    return result;
  }

  if ((characterCopy - 65) < 0x1A || (characterCopy - 192) < 0x17)
  {
    if (characterCopy - 138 > 0x15 || ((1 << (characterCopy + 118)) & 0x200015) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (characterCopy == 159)
    {
      LODWORD(characterCopy) = 255;
    }

    else
    {
      LODWORD(characterCopy) = characterCopy + 16;
    }

    goto LABEL_17;
  }

  if ((characterCopy - 216) < 7)
  {
LABEL_8:
    LODWORD(characterCopy) = characterCopy + 32;
    goto LABEL_17;
  }

  if ((characterCopy - 138) <= 0x15 && ((1 << (characterCopy + 118)) & 0x200015) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((actualCharacterCopy - 65) < 0x1A || (actualCharacterCopy - 192) < 0x17)
  {
    if (actualCharacterCopy - 138 > 0x15 || ((1 << (actualCharacterCopy + 118)) & 0x200015) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    if (actualCharacterCopy == 159)
    {
      LODWORD(actualCharacterCopy) = 255;
    }

    else
    {
      LODWORD(actualCharacterCopy) = actualCharacterCopy + 16;
    }

    goto LABEL_29;
  }

  if ((actualCharacterCopy - 216) >= 7)
  {
    if ((actualCharacterCopy - 138) > 0x15 || ((1 << (actualCharacterCopy + 118)) & 0x200015) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_20:
  LODWORD(actualCharacterCopy) = actualCharacterCopy + 32;
LABEL_29:
  if ((characterCopy - 97) <= 0x19 && (actualCharacterCopy - 97) <= 0x19)
  {
    v11 = replacementScores[26 * (actualCharacterCopy - 97) + (characterCopy - 97)];
    if (v11 >= 2)
    {
      return v8 + log10(v11);
    }
  }

  return v8;
}

- (double)transpositionErrorScoreForIntendedFirstCharacter:(unsigned __int16)character intendedSecondCharacter:(unsigned __int16)secondCharacter
{
  secondCharacterCopy = secondCharacter;
  characterCopy = character;
  [(PRErrorModel *)self errorScoreForType:9];
  v8 = v7;
  if ([(PRErrorModel *)self hasCustomTranspositionErrorScores])
  {
    customErrorModel = self->_customErrorModel;

    [(PRErrorModeling *)customErrorModel transpositionErrorScoreForIntendedFirstCharacter:characterCopy intendedSecondCharacter:secondCharacterCopy];
    return result;
  }

  if ((characterCopy - 65) < 0x1A || (characterCopy - 192) < 0x17)
  {
    if (characterCopy - 138 > 0x15 || ((1 << (characterCopy + 118)) & 0x200015) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (characterCopy == 159)
    {
      LODWORD(characterCopy) = 255;
    }

    else
    {
      LODWORD(characterCopy) = characterCopy + 16;
    }

    goto LABEL_17;
  }

  if ((characterCopy - 216) < 7)
  {
LABEL_8:
    LODWORD(characterCopy) = characterCopy + 32;
    goto LABEL_17;
  }

  if ((characterCopy - 138) <= 0x15 && ((1 << (characterCopy + 118)) & 0x200015) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((secondCharacterCopy - 65) < 0x1A || (secondCharacterCopy - 192) < 0x17)
  {
    if (secondCharacterCopy - 138 > 0x15 || ((1 << (secondCharacterCopy + 118)) & 0x200015) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    if (secondCharacterCopy == 159)
    {
      LODWORD(secondCharacterCopy) = 255;
    }

    else
    {
      LODWORD(secondCharacterCopy) = secondCharacterCopy + 16;
    }

    goto LABEL_29;
  }

  if ((secondCharacterCopy - 216) >= 7)
  {
    if ((secondCharacterCopy - 138) > 0x15 || ((1 << (secondCharacterCopy + 118)) & 0x200015) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_20:
  LODWORD(secondCharacterCopy) = secondCharacterCopy + 32;
LABEL_29:
  if ((characterCopy - 97) <= 0x19 && (secondCharacterCopy - 97) <= 0x19)
  {
    v11 = transpositionScores[26 * (secondCharacterCopy - 97) + (characterCopy - 97)];
    if (v11 >= 2)
    {
      return v8 + log10(v11);
    }
  }

  return v8;
}

- (double)insertionErrorScoreForIntendedPrecedingCharacter:(unsigned __int16)character insertedCharacter:(unsigned __int16)insertedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter
{
  followingCharacterCopy = followingCharacter;
  insertedCharacterCopy = insertedCharacter;
  characterCopy = character;
  [(PRErrorModel *)self errorScoreForType:11];
  v10 = v9;
  if (![(PRErrorModel *)self hasCustomInsertionErrorScores])
  {
    return v10;
  }

  customErrorModel = self->_customErrorModel;

  [(PRErrorModeling *)customErrorModel insertionErrorScoreForIntendedPrecedingCharacter:characterCopy insertedCharacter:insertedCharacterCopy intendedFollowingCharacter:followingCharacterCopy];
  return result;
}

- (double)omissionErrorScoreForIntendedPrecedingCharacter:(unsigned __int16)character omittedCharacter:(unsigned __int16)omittedCharacter intendedFollowingCharacter:(unsigned __int16)followingCharacter
{
  followingCharacterCopy = followingCharacter;
  omittedCharacterCopy = omittedCharacter;
  characterCopy = character;
  [(PRErrorModel *)self errorScoreForType:10];
  v10 = v9;
  if (![(PRErrorModel *)self hasCustomOmissionErrorScores])
  {
    return v10;
  }

  customErrorModel = self->_customErrorModel;

  [(PRErrorModeling *)customErrorModel omissionErrorScoreForIntendedPrecedingCharacter:characterCopy omittedCharacter:omittedCharacterCopy intendedFollowingCharacter:followingCharacterCopy];
  return result;
}

@end