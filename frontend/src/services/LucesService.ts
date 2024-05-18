import axios from "axios";

export default {
    async $GetLightResponse(lights: string[]) {
        return axios.get<string>(`http:localhost:3000/?light=${lights}`); 
    }
}