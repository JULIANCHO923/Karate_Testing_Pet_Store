package petStore.pet;


import com.intuit.karate.junit5.Karate;

class GetPetRunner {

    @Karate.Test
    Karate testGetPet() {
        return Karate.run("getPet").relativeTo(getClass());
    }

}
