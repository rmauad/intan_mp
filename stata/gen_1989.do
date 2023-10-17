// This code prepares the database from Orbis to run the regressions
ssc install egenmore //install this to use xtile with egen

// Creating Fama and French industry classification, quantiles of intangible capital and other variables
use cnty bvdidnumber using addinfo.dta
append using dfind.dta, keep(netsales totalassets)
append using hindgfr.dta, keep(operatingplebit)
append using indclass.dta, keep(ussicprimarycodes)
append using cfnusind.dta, keep(year)

keep if cnty == "USA"
gen intan = netsales - operatingplebit
gen intan_at = intan/totalassets

gen ff_indust = 1 if ussicprimarycodes >= 100 & ussicprimarycodes <= 999 | ussicprimarycodes >= 2000 & ussicprimarycodes <= 2399 | /*
		   */ussicprimarycodes >= 2700 & ussicprimarycodes <= 2749 | ussicprimarycodes >= 3100 & ussicprimarycodes <= 3199 |/*
		   */ussicprimarycodes >= 3940 & ussicprimarycodes <= 3989
replace ff_indust = 2 if ussicprimarycodes >= 2500 & ussicprimarycodes <= 2519 | ussicprimarycodes >= 2590 & ussicprimarycodes <= 2599 | /*
           */ussicprimarycodes >= 3630 & ussicprimarycodes <= 3659 | ussicprimarycodes >= 3710 & ussicprimarycodes <= 3711 | /*
           */ussicprimarycodes == 3714 | ussicprimarycodes == 3716 | ussicprimarycodes >= 3750 & ussicprimarycodes <= 3751 | /*
           */ussicprimarycodes == 3792 | ussicprimarycodes >= 3900 & ussicprimarycodes <= 3939 | ussicprimarycodes >= 3990 & ussicprimarycodes <= 3999
replace ff_indust = 3 if ussicprimarycodes >= 2520 & ussicprimarycodes <= 2589 | ussicprimarycodes >= 2600 & ussicprimarycodes <= 2699 | ussicprimarycodes >= 2750 & ussicprimarycodes <= 2769 | /*
           */ussicprimarycodes >= 3000 & ussicprimarycodes <= 3099 | ussicprimarycodes >= 3200 & ussicprimarycodes <= 3569 | ussicprimarycodes >= 3580 & ussicprimarycodes <= 3629 | /*
           */ussicprimarycodes >= 3700 & ussicprimarycodes <= 3709 | ussicprimarycodes >= 3712 & ussicprimarycodes <= 3713 | ussicprimarycodes == 3715 | ussicprimarycodes >= 3717 & ussicprimarycodes <= 3749 | /*
           */ussicprimarycodes >= 3752 & ussicprimarycodes <= 3791 | ussicprimarycodes >= 3793 & ussicprimarycodes <= 3799 | ussicprimarycodes >= 3830 & ussicprimarycodes <= 3839 | /*
           */ussicprimarycodes >= 3860 & ussicprimarycodes <= 3899
replace ff_indust = 4 if ussicprimarycodes >= 1200 & ussicprimarycodes <= 1399 | ussicprimarycodes >= 2900 & ussicprimarycodes <= 2999
replace ff_indust = 5 if ussicprimarycodes >= 2800 & ussicprimarycodes <= 2829 | ussicprimarycodes >= 2840 & ussicprimarycodes <= 2899
replace ff_indust = 6 if ussicprimarycodes >= 3570 & ussicprimarycodes <= 3579 | ussicprimarycodes >= 3660 & ussicprimarycodes <= 3692 | ussicprimarycodes >= 3694 & ussicprimarycodes <= 3699 | /*
           */ussicprimarycodes >= 3810 & ussicprimarycodes <= 3829 | ussicprimarycodes >= 7370 & ussicprimarycodes <= 7379
replace ff_indust = 7 if ussicprimarycodes >= 4800 & ussicprimarycodes <= 4899
replace ff_indust = 8 if ussicprimarycodes >= 4900 & ussicprimarycodes <= 4949
replace ff_indust = 9 if ussicprimarycodes >= 5000 & ussicprimarycodes <= 5999 | ussicprimarycodes >= 7200 & ussicprimarycodes <= 7299 | ussicprimarycodes >= 7600 & ussicprimarycodes <= 7699
replace ff_indust = 10 if ussicprimarycodes >= 2830 & ussicprimarycodes <= 2839 | ussicprimarycodes == 3693 | ussicprimarycodes >= 3840 & ussicprimarycodes <= 3859 | ussicprimarycodes >= 8000 & ussicprimarycodes <= 8099
replace ff_indust = 12 if ff_indust ==.

egen med = xtile(intan_at), by(year ff_indust) n(2)
egen tercile = xtile(intan_at), by(year ff_indust) n(3)
egen quartile = xtile(intan_at), by(year ff_indust) n(4)
egen quintile = xtile(intan_at), by(year ff_indust) n(5)
egen decile = xtile(intan_at), by(year ff_indust) n(10)

gen d_med_only_1989 = 1 if year == 1989 & med == 2
replace d_med_only_1989 = 0 if d_med_only_1989 ==.
gen d_terc_only_1989 = 1 if year == 1989 & tercile == 3
replace d_terc_only_1989 = 0 if d_terc_only_1989 ==.
gen d_quar_only_1989 = 1 if year == 1989 & quartile == 4
replace d_quar_only_1989 = 0 if d_quar_only_1989 ==.
gen d_quin_only_1989 = 1 if year == 1989 & quintile == 5
replace d_quin_only_1989 = 0 if d_quin_only_1989 ==.
gen d_dec_only_1989 = 1 if year == 1989 & decile == 10
replace d_dec_only_1989 = 0 if d_dec_only_1989 ==.

gen med_only_1989 = med if year == 1989
replace med_only_1989 = 0 if med_only_1989 ==.
gen terc_only_1989 = tercile if year == 1989
replace terc_only_1989 = 0 if terc_only_1989 ==.
gen quar_only_1989 = quartile if year == 1989
replace quar_only_1989 = 0 if quar_only_1989 ==.
gen quin_only_1989 = quintile if year == 1989
replace quin_only_1989 = 0 if quin_only_1989 ==.
gen dec_only_1989 = decile if year == 1989
replace dec_only_1989 = 0 if dec_only_1989 ==.

keep if year == 1989
duplicates drop bvdidnumber, force
keep bvdidnumber med_only_1989 terc_only_1989 quar_only_1989 quin_only_1989 dec_only_1989 /*
         */d_med_only_1989 d_terc_only_1989 d_quar_only_1989 d_quin_only_1989 d_dec_only_1989
rename (med_only_1989 terc_only_1989 quar_only_1989 quin_only_1989 dec_only_1989 /*
         */d_med_only_1989 d_terc_only_1989 d_quar_only_1989 d_quin_only_1989 d_dec_only_1989) /*
		 */(med_1989 terc_1989 quar_1989 quin_1989 dec_1989 /*
		 */d_med_1989 d_terc_1989 d_quar_1989 d_quin_1989 d_dec_1989)
		 
save "df_1989.dta"


