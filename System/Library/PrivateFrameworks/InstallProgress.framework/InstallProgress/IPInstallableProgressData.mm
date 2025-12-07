@interface IPInstallableProgressData
- (IPInstallableProgressData)init;
- (IPInstallableProgressData)initWithCoder:(id)coder;
- (id)_findOrCreatePhaseState:(unint64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)completedUnitCountForPhase:(unint64_t)phase;
- (unint64_t)totalUnitCountForPhase:(unint64_t)phase;
- (void)_recalculateCurrentFractionCompleted;
- (void)encodeWithCoder:(id)coder;
- (void)setCompletedUnitCount:(unint64_t)count forPhase:(unint64_t)phase;
- (void)setInstallPhase:(unint64_t)phase;
- (void)setTotalUnitCount:(unint64_t)count forPhase:(unint64_t)phase;
- (void)setTotalUnitCountsForPhases:(id)phases;
@end

@implementation IPInstallableProgressData

- (id)_findOrCreatePhaseState:(unint64_t)state
{
  phaseStates = self->_phaseStates;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)phaseStates objectForKey:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(IPPhaseState);
    v8 = self->_phaseStates;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
  }

  return v7;
}

- (IPInstallableProgressData)init
{
  v8.receiver = self;
  v8.super_class = IPInstallableProgressData;
  v2 = [(IPInstallableProgressData *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = 0;
    *(v2 + 24) = xmmword_254C7A050;
    *(v2 + 2) = 0;
    do
    {
      v6 = [v2 _findOrCreatePhaseState:orderedPhases[v5++]];
    }

    while (v5 != 5);
  }

  return v2;
}

- (void)_recalculateCurrentFractionCompleted
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_phaseStates;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {

LABEL_18:
    v16 = 0.0;
    goto LABEL_19;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v18;
  do
  {
    v9 = 0;
    do
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_phaseStates objectForKeyedSubscript:v10, v17];
      if (v11)
      {
        v12 = v11[1];
      }

      else
      {
        v12 = 0;
      }

      v13 = [(NSMutableDictionary *)self->_phaseStates objectForKeyedSubscript:v10];
      if (v13)
      {
        v14 = v13[2];
      }

      else
      {
        v14 = 0;
      }

      v7 += v12;
      v6 += v14;

      ++v9;
    }

    while (v5 != v9);
    v15 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v5 = v15;
  }

  while (v15);

  if (!v7)
  {
    goto LABEL_18;
  }

  v16 = v6 / v7;
LABEL_19:
  self->_currentFractionCompleted = v16;
}

- (void)setTotalUnitCount:(unint64_t)count forPhase:(unint64_t)phase
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:phase];
  v9 = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:count];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(IPInstallableProgressData *)self setTotalUnitCountsForPhases:v8];
}

- (void)setTotalUnitCountsForPhases:(id)phases
{
  v18 = *MEMORY[0x277D85DE8];
  phasesCopy = phases;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [phasesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(phasesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [phasesCopy objectForKeyedSubscript:v9];
        v11 = -[IPInstallableProgressData _findOrCreatePhaseState:](self, "_findOrCreatePhaseState:", [v9 unsignedIntegerValue]);
        unsignedLongLongValue = [v10 unsignedLongLongValue];
        if (v11)
        {
          v11[1] = unsignedLongLongValue;
        }
      }

      v6 = [phasesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(IPInstallableProgressData *)self _recalculateCurrentFractionCompleted];
}

- (void)setInstallPhase:(unint64_t)phase
{
  v4 = 0;
  self->_installPhase = phase;
  while (orderedPhases[v4] != phase)
  {
    if (++v4 == 5)
    {
      goto LABEL_7;
    }
  }

  if (v4)
  {
    [(IPInstallableProgressData *)v4 setInstallPhase:?];
  }

LABEL_7:

  [(IPInstallableProgressData *)self _recalculateCurrentFractionCompleted];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@: %p {P %llu PTUC %llu PCUC %llu FC %f}>", objc_opt_class(), self, self->_installPhase, -[IPInstallableProgressData totalUnitCountForPhase:](self, "totalUnitCountForPhase:", self->_installPhase), -[IPInstallableProgressData completedUnitCountForPhase:](self, "completedUnitCountForPhase:", self->_installPhase), *&self->_currentFractionCompleted];

  return v2;
}

- (IPInstallableProgressData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IPInstallableProgressData;
  v5 = [(IPInstallableProgressData *)&v12 init];
  if (v5)
  {
    v5->_installPhase = [coderCopy decodeIntegerForKey:@"installPhase"];
    v5->_finalPhase = [coderCopy decodeIntegerForKey:@"finalPhase"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = IPDecodeDictionaryWithKeyClassAndValueClass(coderCopy, @"phaseStates", v6, v7);
    v9 = [v8 mutableCopy];
    phaseStates = v5->_phaseStates;
    v5->_phaseStates = v9;

    if (v5->_installPhase && v5->_finalPhase && v5->_phaseStates)
    {
      [(IPInstallableProgressData *)v5 _recalculateCurrentFractionCompleted];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  installPhase = self->_installPhase;
  coderCopy = coder;
  [coderCopy encodeInteger:installPhase forKey:@"installPhase"];
  [coderCopy encodeInteger:self->_finalPhase forKey:@"finalPhase"];
  [coderCopy encodeObject:self->_phaseStates forKey:@"phaseStates"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(IPInstallableProgressData);
  v4->_installPhase = self->_installPhase;
  v4->_finalPhase = self->_finalPhase;
  v5 = [(NSMutableDictionary *)self->_phaseStates mutableCopy];
  phaseStates = v4->_phaseStates;
  v4->_phaseStates = v5;

  [(IPInstallableProgressData *)v4 _recalculateCurrentFractionCompleted];
  return v4;
}

- (unint64_t)completedUnitCountForPhase:(unint64_t)phase
{
  v3 = [(IPInstallableProgressData *)self _findOrCreatePhaseState:phase];
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCompletedUnitCount:(unint64_t)count forPhase:(unint64_t)phase
{
  v6 = [(IPInstallableProgressData *)self _findOrCreatePhaseState:phase];
  if (v6)
  {
    v6[2] = count;
  }

  [(IPInstallableProgressData *)self _recalculateCurrentFractionCompleted];
}

- (unint64_t)totalUnitCountForPhase:(unint64_t)phase
{
  v3 = [(IPInstallableProgressData *)self _findOrCreatePhaseState:phase];
  if (v3)
  {
    v4 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setInstallPhase:(unsigned int)a1 .cold.1(unsigned int a1, void *a2)
{
  v3 = a1;
  v4 = orderedPhases;
  do
  {
    v5 = *v4++;
    v6 = [a2 _findOrCreatePhaseState:v5];
    if (v6)
    {
      v6[2] = v6[1];
    }

    --v3;
  }

  while (v3);
}

@end