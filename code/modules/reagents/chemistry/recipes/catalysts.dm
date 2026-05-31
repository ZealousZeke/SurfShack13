
///////////////////////////CATALYST////////////////////////////

/datum/chemical_reaction/speed_catalyst
	results = list(/datum/reagent/catalyst_agent/speed/palladium = 4)
	required_reagents = list(/datum/reagent/medicine/c2/libital = 1, /datum/reagent/medicine/c2/probital = 2, /datum/reagent/prefactor_a = 1)
	mix_message = "The reaction evaporates slightly as the mixture solidifies"
	mix_sound = 'sound/effects/chemistry/catalyst.ogg'
	reaction_tags = REACTION_TAG_MODERATE | REACTION_TAG_UNIQUE | REACTION_TAG_CHEMICAL
	required_temp = 100
	optimal_temp = 300
	overheat_temp = 999
	optimal_ph_min = 0
	optimal_ph_max = 14
	determin_ph_range = 0
	temp_exponent_factor = 0.5
	ph_exponent_factor = 4
	thermic_constant = 400
	H_ion_release = -0.25
	rate_up_lim = 1
	purity_min = 0

/datum/chemical_reaction/speed_catalyst/overheated(datum/reagents/holder, datum/equilibrium/equilibrium, step_volume_added)
	explode_invert_smoke(holder, equilibrium) //Will be better when the inputs have proper invert chems

/datum/chemical_reaction/speed_catalyst/overly_impure(datum/reagents/holder, datum/equilibrium/equilibrium, step_volume_added)
	explode_invert_smoke(holder, equilibrium)

/datum/chemical_reaction/prefactor_b/tempomyocin
	results = list(/datum/reagent/catalyst_agent/speed/tempomyocin = 10)
	required_reagents = list(/datum/reagent/prefactor_b = 5, /datum/reagent/stable_plasma = 5)
	required_temp = 100
	optimal_temp = 300
	overheat_temp = 999
	optimal_ph_min = 0
	optimal_ph_max = 14
	determin_ph_range = 0
	temp_exponent_factor = 0.5
	ph_exponent_factor = 4
	thermic_constant = 200
	H_ion_release = -0.15
	rate_up_lim = 30
	thermic_constant = 0
	reaction_tags = REACTION_TAG_HARD | REACTION_TAG_DANGEROUS | REACTION_TAG_CHEMICAL
