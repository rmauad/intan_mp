
// Plots of intangible/assets, investment/assets and employment change over time.


//bysort year: egen avr_intan_at = mean(intan_at)
gen intan_ppe = org_cap_comp/ppentq

label variable intan_ppe " "


forval y = 1990/2019 {
    if mod(`y', 3) {
        label def yearz `y' `"{c 0xa0}"', add 
    }
}

	   label value year yearz
	   label li yearz
	   // tab year

	   graph box intan_at, title("Intangible/assets") ylabel(0[0.05].2) yscale(range(0 0.2)) nooutside over(year)
//graph export /homes/nber/mauadr/bulk/orbis.work/intan_mp/graphs/intan_at.eps

	   graph box intan_ppe, title("Intangible/tangible") ylabel(0[0.5]2) yscale(range(0 2)) nooutside over(year)
