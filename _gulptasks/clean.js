import del from "del";

export const cleanDist = () => {
	return del("dist")
}

export const cleanImage = () => {
	return del("_dist/assets")
}

module.exports = {
	cleanDist,
	cleanImage
};
