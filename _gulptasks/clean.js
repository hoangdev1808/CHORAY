import del from "del";

export const cleanDist = () => {
	return del("dist")
}

export const cleanImage = () => {
	return del("dist/assets")
}

module.exports = {
	cleanDist,
	cleanImage
};
