-- Osiris event listeners
Ext.Osiris.RegisterListener('CastedSpell', 5, 'after', function(caster, spell, spellType, spellElement, storyActionID)
    print("hello")
	if spell == 'Shout_DualShield' then
		shield = Osi.GetEquippedShield(caster)
		Ext.Entity.Get(shield).Equipable.Slot = 'MeleeMainHand'
        Ext.Entity.Get(shield):Replicate("Equipable")
	end
end)
