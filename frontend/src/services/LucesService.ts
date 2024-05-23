import axios from "axios";

export default {
    async $GetLightResponse(lights: string[]) {
        return axios.get<object[]>(`http:localhost:3000/?light=${lights}`); 
    }
}