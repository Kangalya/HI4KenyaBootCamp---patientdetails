package org.openmrs.module.patientdetails.fragments.controller;

import org.openmrs.Patient;
import org.openmrs.api.context.Context;
import org.openmrs.ui.framework.fragment.FragmentModel;

import java.util.List;

/**
 * Created by Kangalya on 5/15/14.
 */
public class HelloWorldFragmentController {
    public void controller(FragmentModel fragmentModel){
        List<Patient> all = Context.getPatientService().getAllPatients().subList(0,5);
        fragmentModel.addAttribute("patients", all);
    }
}
